Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/syrk?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@polybench_timer_stop:bb.a
bb.a:
  store double 0.000000e+00, ptr @polybench_t_end, align 8, !tbaa !8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #4 {
bb.a:
  %i.a = load double, ptr @polybench_t_end, align 8, !tbaa !8
  %i.b = load double, ptr @polybench_t_start, align 8, !tbaa !8
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
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #12
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #13 ; 0 uses
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
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 11520000) #12
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !10   ; 7 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = icmp eq ptr %i.e, null
  %i.h = icmp ne i32 %i.d, 0
  %or.cond.i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.j = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.i) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.k = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 11520000) #12
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !10   ; 8 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = icmp eq ptr %i.l, null
  %i.o = icmp ne i32 %i.k, 0
  %or.cond.i.i21 = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i.i21, label %bb.c, label %polybench_alloc_data.exit22

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.q = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.p) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit22:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.r = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 9600000) #12
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !10   ; 10 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = icmp ne i32 %i.r, 0
  %or.cond.i.i23 = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.i.i23, label %bb.d, label %polybench_alloc_data.exit24

bb.d:                                             ; preds = %polybench_alloc_data.exit22
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.w = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.v) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit24:                      ; preds = %polybench_alloc_data.exit22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.preheader35.i

.preheader35.i:                                   ; preds = %middle.block, %polybench_alloc_data.exit24
  %indvars.iv41.i = phi i64 [ 0, %polybench_alloc_data.exit24 ], [ %indvars.iv.next42.i, %middle.block ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8000 x i8], ptr %i.s, i64 %indvars.iv41.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv41.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader35.i
  %index = phi i64 [ 0, %.preheader35.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.preheader35.i ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.y = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.z = trunc <2 x i64> %i.y to <2 x i32>
  %i.aa = add <2 x i32> %i.z, splat (i32 1)
  %i.ab = urem <2 x i32> %i.aa, splat (i32 1200)
  %i.ac = uitofp nneg <2 x i32> %i.ab to <2 x double>
  %i.ad = fdiv <2 x double> %i.ac, splat (double 1.200000e+03)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index
  store <2 x double> %i.ad, ptr %i.ae, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.af = icmp eq i64 %index.next, 1000
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond44.not.i = icmp eq i64 %indvars.iv.next42.i, 1200
  br i1 %exitcond44.not.i, label %.preheader.i.preheader, label %.preheader35.i, !llvm.loop !18

.preheader.i.preheader:                           ; preds = %middle.block
  %i.ag = sub i64 %i.f, %i.m
  %diff.check = icmp ugt i64 %i.ag, -16
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %middle.block92
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %middle.block92 ], [ 0, %.preheader.i.preheader ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [9600 x i8], ptr %i.e, i64 %indvars.iv49.i ; 2 uses
  %i.ai = getelementptr inbounds nuw [9600 x i8], ptr %i.l, i64 %indvars.iv49.i ; 2 uses
  br i1 %diff.check, label %scalar.ph, label %vector.ph84

vector.ph84:                                      ; preds = %.preheader.i
  %broadcast.splatinsert85 = insertelement <2 x i64> poison, i64 %indvars.iv49.i, i64 0
  %broadcast.splat86 = shufflevector <2 x i64> %broadcast.splatinsert85, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph84
  %index88 = phi i64 [ 0, %vector.ph84 ], [ %index.next90, %vector.body87 ] ; 3 uses
  %vec.ind89 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph84 ], [ %vec.ind.next91, %vector.body87 ] ; 2 uses
  %i.aj = mul nuw nsw <2 x i64> %vec.ind89, %broadcast.splat86
  %i.ak = trunc <2 x i64> %i.aj to <2 x i32>
  %i.al = add <2 x i32> %i.ak, splat (i32 2)
  %i.am = urem <2 x i32> %i.al, splat (i32 1000)
  %i.an = uitofp nneg <2 x i32> %i.am to <2 x double>
  %i.ao = fdiv <2 x double> %i.an, splat (double 1.000000e+03) ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index88
  store <2 x double> %i.ao, ptr %i.ap, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index88
  store <2 x double> %i.ao, ptr %i.aq, align 8, !tbaa !8
  %index.next90 = add nuw i64 %index88, 2         ; 2 uses
  %vec.ind.next91 = add nuw nsw <2 x i64> %vec.ind89, splat (i64 2)
  %i.ar = icmp eq i64 %index.next90, 1200
  br i1 %i.ar, label %middle.block92, label %vector.body87, !llvm.loop !19

scalar.ph:                                        ; preds = %.preheader.i, %scalar.ph
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %scalar.ph ], [ 0, %.preheader.i ] ; 4 uses
  %i.as = mul nuw nsw i64 %indvars.iv45.i, %indvars.iv49.i
  %i.at = trunc i64 %i.as to i32
  %i.au = add i32 %i.at, 2
  %i.av = urem i32 %i.au, 1000
  %i.aw = uitofp nneg i32 %i.av to double
  %i.ax = fdiv double %i.aw, 1.000000e+03         ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv45.i
  store double %i.ax, ptr %i.ay, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv45.i
  store double %i.ax, ptr %i.az, align 8, !tbaa !8
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next46.i, 1200
  br i1 %exitcond48.not.i, label %middle.block92, label %scalar.ph, !llvm.loop !20

middle.block92:                                   ; preds = %vector.body87, %scalar.ph
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next50.i, 1200
  br i1 %exitcond52.not.i, label %.preheader29.i.preheader, label %.preheader.i, !llvm.loop !21

.preheader29.i.preheader:                         ; preds = %middle.block92
  %i.ba = insertelement <2 x ptr> poison, ptr %i.s, i64 0 ; 2 uses
  br label %.preheader29.i

.preheader29.i:                                   ; preds = %.preheader29.i.preheader, %bb.e
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %bb.e ], [ 0, %.preheader29.i.preheader ] ; 5 uses
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %bb.e ], [ 1, %.preheader29.i.preheader ] ; 11 uses
  %i.bb = mul nuw nsw i64 %indvars.iv48.i, 9608
  %i.bc = getelementptr i8, ptr %i.e, i64 %i.bb
  %scevgep = getelementptr i8, ptr %i.bc, i64 8
  %i.bd = mul nuw nsw i64 %indvars.iv46.i, 8000
  %scevgep94 = getelementptr i8, ptr %i.s, i64 %i.bd
  %i.be = getelementptr inbounds nuw [9600 x i8], ptr %i.e, i64 %indvars.iv48.i ; 7 uses
  %min.iters.check108 = icmp samesign ult i64 %indvars.iv46.i, 4
  br i1 %min.iters.check108, label %scalar.ph107.preheader, label %vector.ph109

vector.ph109:                                     ; preds = %.preheader29.i
  %n.vec110 = and i64 %indvars.iv46.i, 9223372036854775804 ; 3 uses
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next115, %vector.body111 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index112 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %wide.load113 = load <2 x double>, ptr %i.bf, align 8, !tbaa !8
  %wide.load114 = load <2 x double>, ptr %i.bg, align 8, !tbaa !8
  %i.bh = fmul <2 x double> %wide.load113, splat (double 1.200000e+00)
  %i.bi = fmul <2 x double> %wide.load114, splat (double 1.200000e+00)
  store <2 x double> %i.bh, ptr %i.bf, align 8, !tbaa !8
  store <2 x double> %i.bi, ptr %i.bg, align 8, !tbaa !8
  %index.next115 = add nuw i64 %index112, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.bj, label %middle.block116, label %vector.body111, !llvm.loop !22

middle.block116:                                  ; preds = %vector.body111
  %cmp.n117 = icmp eq i64 %indvars.iv46.i, %n.vec110
  br i1 %cmp.n117, label %.preheader28.i, label %scalar.ph107.preheader

scalar.ph107.preheader:                           ; preds = %.preheader29.i, %middle.block116
  %indvars.iv.i25.ph = phi i64 [ 0, %.preheader29.i ], [ %n.vec110, %middle.block116 ]
  br label %scalar.ph107

.preheader28.i:                                   ; preds = %scalar.ph107, %middle.block116
  %i.bk = getelementptr inbounds nuw [8000 x i8], ptr %i.s, i64 %indvars.iv48.i ; 2 uses
  %i.bl = insertelement <2 x ptr> poison, ptr %i.be, i64 0
  %i.bm = insertelement <2 x ptr> poison, ptr %scevgep94, i64 0
  %i.bn = insertelement <2 x ptr> %i.ba, ptr %i.bk, i64 1
  %i.bo = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.bp = shufflevector <2 x ptr> %i.bo, <2 x ptr> poison, <2 x i32> zeroinitializer
  %min.iters.check = icmp samesign ult i64 %indvars.iv46.i, 4
  %i.bq = icmp ult <2 x ptr> %i.bl, %i.bm
  %i.br = shufflevector <2 x i1> %i.bq, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bs = icmp ult <2 x ptr> %i.bn, %i.bp
  %i.bt = and <2 x i1> %i.br, %i.bs
  %i.bu = bitcast <2 x i1> %i.bt to i2
  %conflict.rdx.not = icmp eq i2 %i.bu, 0
  %n.vec = and i64 %indvars.iv46.i, 9223372036854775804 ; 3 uses
  %cmp.n = icmp eq i64 %indvars.iv46.i, %n.vec
  %xtraiter = and i64 %indvars.iv46.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i28

scalar.ph107:                                     ; preds = %scalar.ph107.preheader, %scalar.ph107
  %indvars.iv.i25 = phi i64 [ %indvars.iv.next.i26, %scalar.ph107 ], [ %indvars.iv.i25.ph, %scalar.ph107.preheader ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i25 ; 2 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !8
  %i.bx = fmul double %i.bw, 1.200000e+00
  store double %i.bx, ptr %i.bv, align 8, !tbaa !8
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i25, 1 ; 2 uses
  %exitcond.not.i27 = icmp eq i64 %indvars.iv.next.i26, %indvars.iv46.i
  br i1 %exitcond.not.i27, label %.preheader28.i, label %scalar.ph107, !llvm.loop !23

.preheader.i28:                                   ; preds = %.loopexit155, %.preheader28.i
  %indvars.iv42.i = phi i64 [ 0, %.preheader28.i ], [ %indvars.iv.next43.i, %.loopexit155 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv42.i ; 4 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv42.i ; 7 uses
  %conflict.rdx.not.not = xor i1 %conflict.rdx.not, true
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx.not.not
  br i1 %brmerge, label %scalar.ph98.preheader, label %vector.ph99

vector.ph99:                                      ; preds = %.preheader.i28
  %i.bz = load double, ptr %i.by, align 8, !tbaa !8, !alias.scope !24
  %i.ca = fmul double %i.bz, 1.500000e+00
  %broadcast.splatinsert103 = insertelement <2 x double> poison, double %i.ca, i64 0
  %broadcast.splat104 = shufflevector <2 x double> %broadcast.splatinsert103, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph99
  %index101 = phi i64 [ 0, %vector.ph99 ], [ %index.next105, %vector.body100 ] ; 6 uses
  %i.cb = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index101
  %i.cc = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index101
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8000
  %i.ce = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index101
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16000
  %i.cg = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index101
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24000
  %i.ci = load double, ptr %i.cb, align 8, !tbaa !8, !alias.scope !27
  %i.cj = load double, ptr %i.cd, align 8, !tbaa !8, !alias.scope !27
  %i.ck = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.cj, i64 1
  %i.cm = load double, ptr %i.cf, align 8, !tbaa !8, !alias.scope !27
  %i.cn = load double, ptr %i.ch, align 8, !tbaa !8, !alias.scope !27
  %i.co = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.cn, i64 1
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index101 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cq, align 8, !tbaa !8, !alias.scope !29, !noalias !31
  %wide.load102 = load <2 x double>, ptr %i.cr, align 8, !tbaa !8, !alias.scope !29, !noalias !31
  %i.cs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat104, <2 x double> %i.cl, <2 x double> %wide.load)
  %i.ct = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat104, <2 x double> %i.cp, <2 x double> %wide.load102)
  store <2 x double> %i.cs, ptr %i.cq, align 8, !tbaa !8, !alias.scope !29, !noalias !31
  store <2 x double> %i.ct, ptr %i.cr, align 8, !tbaa !8, !alias.scope !29, !noalias !31
  %index.next105 = add nuw i64 %index101, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next105, %n.vec
  br i1 %i.cu, label %middle.block106, label %vector.body100, !llvm.loop !32

middle.block106:                                  ; preds = %vector.body100
  br i1 %cmp.n, label %.loopexit155, label %scalar.ph98.preheader

scalar.ph98.preheader:                            ; preds = %.preheader.i28, %middle.block106
  %indvars.iv37.i.ph = phi i64 [ %n.vec, %middle.block106 ], [ 0, %.preheader.i28 ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph98.prol.loopexit, label %scalar.ph98.prol

scalar.ph98.prol:                                 ; preds = %scalar.ph98.preheader
  %i.cv = load double, ptr %i.by, align 8, !tbaa !8
  %i.cw = fmul double %i.cv, 1.500000e+00
  %gep.i.prol = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv37.i.ph
  %i.cx = load double, ptr %gep.i.prol, align 8, !tbaa !8
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv37.i.ph ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !8
  %i.da = call double @llvm.fmuladd.f64(double %i.cw, double %i.cx, double %i.cz)
  store double %i.da, ptr %i.cy, align 8, !tbaa !8
  %indvars.iv.next38.i.prol = or disjoint i64 %indvars.iv37.i.ph, 1
  br label %scalar.ph98.prol.loopexit

scalar.ph98.prol.loopexit:                        ; preds = %scalar.ph98.prol, %scalar.ph98.preheader
  %indvars.iv37.i.unr = phi i64 [ %indvars.iv37.i.ph, %scalar.ph98.preheader ], [ %indvars.iv.next38.i.prol, %scalar.ph98.prol ]
  %i.db = icmp eq i64 %indvars.iv48.i, %indvars.iv37.i.ph
  br i1 %i.db, label %.loopexit155, label %scalar.ph98

scalar.ph98:                                      ; preds = %scalar.ph98.prol.loopexit, %scalar.ph98
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i.1, %scalar.ph98 ], [ %indvars.iv37.i.unr, %scalar.ph98.prol.loopexit ] ; 4 uses
  %i.dc = load double, ptr %i.by, align 8, !tbaa !8
  %i.dd = fmul double %i.dc, 1.500000e+00
  %gep.i = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv37.i
  %i.de = load double, ptr %gep.i, align 8, !tbaa !8
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv37.i ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !8
  %i.dh = call double @llvm.fmuladd.f64(double %i.dd, double %i.de, double %i.dg)
  store double %i.dh, ptr %i.df, align 8, !tbaa !8
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %i.di = load double, ptr %i.by, align 8, !tbaa !8
  %i.dj = fmul double %i.di, 1.500000e+00
  %gep.i.1 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next38.i
  %i.dk = load double, ptr %gep.i.1, align 8, !tbaa !8
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next38.i ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !8
  %i.dn = call double @llvm.fmuladd.f64(double %i.dj, double %i.dk, double %i.dm)
  store double %i.dn, ptr %i.dl, align 8, !tbaa !8
  %indvars.iv.next38.i.1 = add nuw nsw i64 %indvars.iv37.i, 2 ; 2 uses
  %exitcond41.not.i.1 = icmp eq i64 %indvars.iv.next38.i.1, %indvars.iv46.i
  br i1 %exitcond41.not.i.1, label %.loopexit155, label %scalar.ph98, !llvm.loop !33

.loopexit155:                                     ; preds = %scalar.ph98.prol.loopexit, %scalar.ph98, %middle.block106
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next43.i, 1000
  br i1 %exitcond45.not.i, label %bb.e, label %.preheader.i28, !llvm.loop !34

bb.e:                                             ; preds = %.loopexit155
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next49.i, 1200
  br i1 %exitcond53.not.i, label %.preheader29.i29, label %.preheader29.i, !llvm.loop !35

.preheader29.i29:                                 ; preds = %bb.e, %bb.f
  %indvars.iv48.i30 = phi i64 [ %indvars.iv.next49.i45, %bb.f ], [ 0, %bb.e ] ; 5 uses
  %indvars.iv46.i31 = phi i64 [ %indvars.iv.next47.i46, %bb.f ], [ 1, %bb.e ] ; 11 uses
  %i.do = mul nuw nsw i64 %indvars.iv48.i30, 9608
  %i.dp = getelementptr i8, ptr %i.l, i64 %i.do
  %scevgep120 = getelementptr i8, ptr %i.dp, i64 8
  %i.dq = mul nuw nsw i64 %indvars.iv46.i31, 8000
  %scevgep121 = getelementptr i8, ptr %i.s, i64 %i.dq
  %i.dr = getelementptr inbounds nuw [9600 x i8], ptr %i.l, i64 %indvars.iv48.i30 ; 7 uses
  %min.iters.check144 = icmp samesign ult i64 %indvars.iv46.i31, 4
  br i1 %min.iters.check144, label %scalar.ph143.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %.preheader29.i29
  %n.vec146 = and i64 %indvars.iv46.i31, 9223372036854775804 ; 3 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next151, %vector.body147 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %index148 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %wide.load149 = load <2 x double>, ptr %i.ds, align 8, !tbaa !8
  %wide.load150 = load <2 x double>, ptr %i.dt, align 8, !tbaa !8
  %i.du = fmul <2 x double> %wide.load149, splat (double 1.200000e+00)
  %i.dv = fmul <2 x double> %wide.load150, splat (double 1.200000e+00)
  store <2 x double> %i.du, ptr %i.ds, align 8, !tbaa !8
  store <2 x double> %i.dv, ptr %i.dt, align 8, !tbaa !8
  %index.next151 = add nuw i64 %index148, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next151, %n.vec146
  br i1 %i.dw, label %middle.block152, label %vector.body147, !llvm.loop !36

middle.block152:                                  ; preds = %vector.body147
  %cmp.n153 = icmp eq i64 %indvars.iv46.i31, %n.vec146
  br i1 %cmp.n153, label %.preheader28.i35, label %scalar.ph143.preheader

scalar.ph143.preheader:                           ; preds = %.preheader29.i29, %middle.block152
  %indvars.iv.i32.ph = phi i64 [ 0, %.preheader29.i29 ], [ %n.vec146, %middle.block152 ]
  br label %scalar.ph143

.preheader28.i35:                                 ; preds = %scalar.ph143, %middle.block152
  %i.dx = getelementptr inbounds nuw [8000 x i8], ptr %i.s, i64 %indvars.iv48.i30 ; 2 uses
  %i.dy = insertelement <2 x ptr> poison, ptr %i.dr, i64 0
  %i.dz = insertelement <2 x ptr> poison, ptr %scevgep121, i64 0
  %i.ea = insertelement <2 x ptr> %i.ba, ptr %i.dx, i64 1
  %i.eb = insertelement <2 x ptr> poison, ptr %scevgep120, i64 0
  %i.ec = shufflevector <2 x ptr> %i.eb, <2 x ptr> poison, <2 x i32> zeroinitializer
  %min.iters.check130 = icmp samesign ult i64 %indvars.iv46.i31, 4
  %i.ed = icmp ult <2 x ptr> %i.dy, %i.dz
  %i.ee = shufflevector <2 x i1> %i.ed, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ef = icmp ult <2 x ptr> %i.ea, %i.ec
  %i.eg = and <2 x i1> %i.ee, %i.ef
  %i.eh = bitcast <2 x i1> %i.eg to i2
  %conflict.rdx128.not = icmp eq i2 %i.eh, 0
  %n.vec132 = and i64 %indvars.iv46.i31, 9223372036854775804 ; 3 uses
  %cmp.n141 = icmp eq i64 %indvars.iv46.i31, %n.vec132
  %xtraiter168 = and i64 %indvars.iv46.i31, 1
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br label %.preheader.i36

scalar.ph143:                                     ; preds = %scalar.ph143.preheader, %scalar.ph143
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i33, %scalar.ph143 ], [ %indvars.iv.i32.ph, %scalar.ph143.preheader ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.i32 ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !8
  %i.ek = fmul double %i.ej, 1.200000e+00
  store double %i.ek, ptr %i.ei, align 8, !tbaa !8
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, %indvars.iv46.i31
  br i1 %exitcond.not.i34, label %.preheader28.i35, label %scalar.ph143, !llvm.loop !37

.preheader.i36:                                   ; preds = %.loopexit, %.preheader28.i35
  %indvars.iv42.i37 = phi i64 [ 0, %.preheader28.i35 ], [ %indvars.iv.next43.i43, %.loopexit ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv42.i37 ; 4 uses
  %invariant.gep.i38 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv42.i37 ; 7 uses
  %conflict.rdx128.not.not = xor i1 %conflict.rdx128.not, true
  %brmerge172 = select i1 %min.iters.check130, i1 true, i1 %conflict.rdx128.not.not
  br i1 %brmerge172, label %scalar.ph129.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %.preheader.i36
  %i.em = load double, ptr %i.el, align 8, !tbaa !8, !alias.scope !38
  %i.en = fmul double %i.em, 1.500000e+00
  %broadcast.splatinsert135 = insertelement <2 x double> poison, double %i.en, i64 0
  %broadcast.splat136 = shufflevector <2 x double> %broadcast.splatinsert135, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next139, %vector.body133 ] ; 6 uses
  %i.eo = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i38, i64 %index134
  %i.ep = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i38, i64 %index134
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8000
  %i.er = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i38, i64 %index134
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16000
  %i.et = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i38, i64 %index134
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24000
  %i.ev = load double, ptr %i.eo, align 8, !tbaa !8, !alias.scope !41
  %i.ew = load double, ptr %i.eq, align 8, !tbaa !8, !alias.scope !41
  %i.ex = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.ew, i64 1
  %i.ez = load double, ptr %i.es, align 8, !tbaa !8, !alias.scope !41
  %i.fa = load double, ptr %i.eu, align 8, !tbaa !8, !alias.scope !41
  %i.fb = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fc = insertelement <2 x double> %i.fb, double %i.fa, i64 1
  %i.fd = fmul <2 x double> %broadcast.splat136, %i.ey
  %i.fe = fmul <2 x double> %broadcast.splat136, %i.fc
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %index134 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %wide.load137 = load <2 x double>, ptr %i.ff, align 8, !tbaa !8, !alias.scope !43, !noalias !45
  %wide.load138 = load <2 x double>, ptr %i.fg, align 8, !tbaa !8, !alias.scope !43, !noalias !45
  %i.fh = fadd <2 x double> %wide.load137, %i.fd
  %i.fi = fadd <2 x double> %wide.load138, %i.fe
  store <2 x double> %i.fh, ptr %i.ff, align 8, !tbaa !8, !alias.scope !43, !noalias !45
  store <2 x double> %i.fi, ptr %i.fg, align 8, !tbaa !8, !alias.scope !43, !noalias !45
  %index.next139 = add nuw i64 %index134, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next139, %n.vec132
  br i1 %i.fj, label %middle.block140, label %vector.body133, !llvm.loop !46

middle.block140:                                  ; preds = %vector.body133
  br i1 %cmp.n141, label %.loopexit, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %.preheader.i36, %middle.block140
  %indvars.iv37.i39.ph = phi i64 [ %n.vec132, %middle.block140 ], [ 0, %.preheader.i36 ] ; 5 uses
  br i1 %lcmp.mod169.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol

scalar.ph129.prol:                                ; preds = %scalar.ph129.preheader
  %i.fk = load double, ptr %i.el, align 8, !tbaa !8
  %i.fl = fmul double %i.fk, 1.500000e+00
  %gep.i40.prol = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i38, i64 %indvars.iv37.i39.ph
  %i.fm = load double, ptr %gep.i40.prol, align 8, !tbaa !8
  %i.fn = fmul double %i.fl, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv37.i39.ph ; 2 uses
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !8
  %i.fq = fadd double %i.fp, %i.fn
  store double %i.fq, ptr %i.fo, align 8, !tbaa !8
  %indvars.iv.next38.i41.prol = or disjoint i64 %indvars.iv37.i39.ph, 1
  br label %scalar.ph129.prol.loopexit

scalar.ph129.prol.loopexit:                       ; preds = %scalar.ph129.prol, %scalar.ph129.preheader
  %indvars.iv37.i39.unr = phi i64 [ %indvars.iv37.i39.ph, %scalar.ph129.preheader ], [ %indvars.iv.next38.i41.prol, %scalar.ph129.prol ]
  %i.fr = icmp eq i64 %indvars.iv48.i30, %indvars.iv37.i39.ph
  br i1 %i.fr, label %.loopexit, label %scalar.ph129

scalar.ph129:                                     ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129
  %indvars.iv37.i39 = phi i64 [ %indvars.iv.next38.i41.1, %scalar.ph129 ], [ %indvars.iv37.i39.unr, %scalar.ph129.prol.loopexit ] ; 4 uses
  %i.fs = load double, ptr %i.el, align 8, !tbaa !8
  %i.ft = fmul double %i.fs, 1.500000e+00
  %gep.i40 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i38, i64 %indvars.iv37.i39
  %i.fu = load double, ptr %gep.i40, align 8, !tbaa !8
  %i.fv = fmul double %i.ft, %i.fu
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv37.i39 ; 2 uses
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !8
  %i.fy = fadd double %i.fx, %i.fv
  store double %i.fy, ptr %i.fw, align 8, !tbaa !8
  %indvars.iv.next38.i41 = add nuw nsw i64 %indvars.iv37.i39, 1 ; 2 uses
  %i.fz = load double, ptr %i.el, align 8, !tbaa !8
  %i.ga = fmul double %i.fz, 1.500000e+00
  %gep.i40.1 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i38, i64 %indvars.iv.next38.i41
  %i.gb = load double, ptr %gep.i40.1, align 8, !tbaa !8
  %i.gc = fmul double %i.ga, %i.gb
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.next38.i41 ; 2 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !8
  %i.gf = fadd double %i.ge, %i.gc
  store double %i.gf, ptr %i.gd, align 8, !tbaa !8
  %indvars.iv.next38.i41.1 = add nuw nsw i64 %indvars.iv37.i39, 2 ; 2 uses
  %exitcond41.not.i42.1 = icmp eq i64 %indvars.iv.next38.i41.1, %indvars.iv46.i31
  br i1 %exitcond41.not.i42.1, label %.loopexit, label %scalar.ph129, !llvm.loop !47

.loopexit:                                        ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129, %middle.block140
  %indvars.iv.next43.i43 = add nuw nsw i64 %indvars.iv42.i37, 1 ; 2 uses
  %exitcond45.not.i44 = icmp eq i64 %indvars.iv.next43.i43, 1000
  br i1 %exitcond45.not.i44, label %bb.f, label %.preheader.i36, !llvm.loop !48

bb.f:                                             ; preds = %.loopexit
  %indvars.iv.next49.i45 = add nuw nsw i64 %indvars.iv48.i30, 1 ; 2 uses
  %indvars.iv.next47.i46 = add nuw nsw i64 %indvars.iv46.i31, 1
  %exitcond53.not.i47 = icmp eq i64 %indvars.iv.next49.i45, 1200
  br i1 %exitcond53.not.i47, label %.preheader.i48, label %.preheader29.i29, !llvm.loop !49

.preheader.i48:                                   ; preds = %bb.f, %bb.h
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %bb.h ], [ 0, %bb.f ] ; 4 uses
  %i.gg = getelementptr inbounds nuw [9600 x i8], ptr %i.e, i64 %indvars.iv36.i ; 3 uses
  %i.gh = getelementptr inbounds nuw [9600 x i8], ptr %i.l, i64 %indvars.iv36.i ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i.2, %.preheader.i48
  %indvars.iv.i49 = phi i64 [ 0, %.preheader.i48 ], [ %indvars.iv.next.i50.2, %.critedge.i.2 ] ; 6 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.i49
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !8 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.i49
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !8 ; 2 uses
  %i.gm = fsub double %i.gj, %i.gl
  %i.gn = call double @llvm.fabs.f64(double %i.gm)
  %i.go = fcmp ule double %i.gn, 1.000000e-05
  br i1 %i.go, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i.1, %.critedge.i, %bb.g
  %indvars.iv.i49.lcssa = phi i64 [ %indvars.iv.i49, %bb.g ], [ %indvars.iv.next.i50, %.critedge.i ], [ %indvars.iv.next.i50.1, %.critedge.i.1 ]
  %.lcssa162 = phi double [ %i.gj, %bb.g ], [ %i.gu, %.critedge.i ], [ %i.hb, %.critedge.i.1 ]
  %.lcssa = phi double [ %i.gl, %bb.g ], [ %i.gw, %.critedge.i ], [ %i.hd, %.critedge.i.1 ]
  %i.gp = trunc nuw nsw i64 %indvars.iv36.i to i32 ; 2 uses
  %i.gq = trunc nuw nsw i64 %indvars.iv.i49.lcssa to i32 ; 2 uses
  %i.gr = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gr, ptr noundef nonnull @.str.2, i32 noundef %i.gp, i32 noundef %i.gq, double noundef %.lcssa162, i32 noundef %i.gp, i32 noundef %i.gq, double noundef %.lcssa, double noundef 1.000000e-05) #15 ; 0 uses
  br label %bb.k

.critedge.i:                                      ; preds = %bb.g
  %indvars.iv.next.i50 = add nuw nsw i64 %indvars.iv.i49, 1 ; 3 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.next.i50
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !8 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.next.i50
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !8 ; 2 uses
end_hunk_0
