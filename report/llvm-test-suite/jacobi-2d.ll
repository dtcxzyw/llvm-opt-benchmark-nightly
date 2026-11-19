Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/jacobi-2d?download=true
inline.NumInlined: 15
inline.NumDeleted: 8
loop-unroll.NumUnrolled: 5
begin_hunk_0_@free

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 !guid !24 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #3 !guid !25 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_start, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #3 !guid !26 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_end, align 8, !tbaa !18
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #4 !guid !27 {
bb.a:
  %i.a = load double, ptr @polybench_t_end, align 8, !tbaa !18
  %i.b = load double, ptr @polybench_t_start, align 8, !tbaa !18
  %i.c = fsub double %i.a, %i.b
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %0) local_unnamed_addr #6 !guid !28 {
bb.a:
  tail call void @free(ptr noundef %0) #13
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 !guid !29 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = sext i32 %1 to i64
  %i.c = mul i64 %0, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !20
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #13
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = or i1 %i.g, %i.f
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 !guid !65 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !20
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 13520000) #13
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !20   ; 11 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = icmp eq ptr %i.e, null
  %i.h = icmp ne i32 %i.d, 0
  %or.cond.i.i = or i1 %i.h, %i.g
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.i) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !20
  %i.j = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 13520000) #13
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !20   ; 12 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = icmp eq ptr %i.k, null
  %i.n = icmp ne i32 %i.j, 0
  %or.cond.i.i22 = or i1 %i.n, %i.m
  br i1 %or.cond.i.i22, label %bb.c, label %polybench_alloc_data.exit24

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i.i23 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.o) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit24:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !20
  %i.p = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 13520000) #13
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !20   ; 17 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %i.s = icmp eq ptr %i.q, null
  %i.t = icmp ne i32 %i.p, 0
  %or.cond.i.i25 = or i1 %i.t, %i.s
  br i1 %or.cond.i.i25, label %bb.d, label %polybench_alloc_data.exit27

bb.d:                                             ; preds = %polybench_alloc_data.exit24
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i.i26 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.u) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit27:                      ; preds = %polybench_alloc_data.exit24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.v = sub i64 %i.f, %i.r
  %diff.check = icmp ugt i64 %i.v, -16
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %polybench_alloc_data.exit27
  %indvars.iv22.i = phi i64 [ 0, %polybench_alloc_data.exit27 ], [ %indvars.iv.next23.i, %middle.block ] ; 6 uses
  %i.w = getelementptr inbounds nuw [10400 x i8], ptr %i.e, i64 %indvars.iv22.i ; 2 uses
  %i.x = getelementptr inbounds nuw [10400 x i8], ptr %i.q, i64 %indvars.iv22.i ; 2 uses
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv22.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.y = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.z = mul nuw nsw <2 x i64> %i.y, %broadcast.splat
  %i.aa = trunc <2 x i64> %i.z to <2 x i32>
  %i.ab = add <2 x i32> %i.aa, splat (i32 2)
  %i.ac = uitofp nneg <2 x i32> %i.ab to <2 x double>
  %i.ad = fdiv <2 x double> %i.ac, splat (double 1.300000e+03)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index
  store <2 x double> %i.ad, ptr %i.ae, align 8, !tbaa !18
  %i.af = add nuw nsw <2 x i64> %vec.ind, splat (i64 3)
  %i.ag = mul nuw nsw <2 x i64> %i.af, %broadcast.splat
  %i.ah = trunc <2 x i64> %i.ag to <2 x i32>
  %i.ai = add <2 x i32> %i.ah, splat (i32 3)
  %i.aj = uitofp nneg <2 x i32> %i.ai to <2 x double>
  %i.ak = fdiv <2 x double> %i.aj, splat (double 1.300000e+03)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index
  store <2 x double> %i.ak, ptr %i.al, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.am = icmp eq i64 %index.next, 1300
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !30

scalar.ph:                                        ; preds = %.preheader.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %.preheader.i ] ; 5 uses
  %i.an = add nuw nsw i64 %indvars.iv.i, 2
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.ap = add nuw nsw i64 %indvars.iv.i, 3
  %i.aq = mul nuw nsw i64 %i.an, %indvars.iv22.i
  %i.ar = trunc i64 %i.aq to i32
  %i.as = add i32 %i.ar, 2
  %i.at = uitofp nneg i32 %i.as to double
  %i.au = mul nuw nsw i64 %i.ap, %indvars.iv22.i
  %i.av = trunc i64 %i.au to i32
  %i.aw = add i32 %i.av, 3
  %i.ax = uitofp nneg i32 %i.aw to double
  %i.ay = insertelement <2 x double> poison, double %i.at, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ax, i64 1
  %i.ba = fdiv <2 x double> %i.az, splat (double 1.300000e+03) ; 2 uses
  %i.bb = extractelement <2 x double> %i.ba, i64 0
  store double %i.bb, ptr %i.ao, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.bd = extractelement <2 x double> %i.ba, i64 1
  store double %i.bd, ptr %i.bc, align 8, !tbaa !18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 1300
  br i1 %exitcond.not.i, label %middle.block, label %scalar.ph, !llvm.loop !31

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1 ; 2 uses
  %exitcond25.not.i = icmp eq i64 %indvars.iv.next23.i, 1300
  br i1 %exitcond25.not.i, label %.preheader57.i.preheader, label %.preheader.i, !llvm.loop !32

.preheader57.i.preheader:                         ; preds = %middle.block
  %scevgep = getelementptr i8, ptr %i.q, i64 31192
  %scevgep96 = getelementptr i8, ptr %i.q, i64 8
  %scevgep97 = getelementptr i8, ptr %i.e, i64 20792
  %scevgep98 = getelementptr i8, ptr %i.e, i64 10408
  %scevgep118 = getelementptr i8, ptr %i.e, i64 31192
  %scevgep119 = getelementptr i8, ptr %i.e, i64 8
  %scevgep120 = getelementptr i8, ptr %i.q, i64 20792
  %scevgep121 = getelementptr i8, ptr %i.q, i64 10408
  %bound0124 = icmp ult ptr %scevgep121, %scevgep118
  %bound1125 = icmp ult ptr %scevgep119, %scevgep120
  %found.conflict126 = and i1 %bound0124, %bound1125
  %bound0 = icmp ult ptr %scevgep98, %scevgep
  %bound1 = icmp ult ptr %scevgep96, %scevgep97
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader57.i

.preheader57.i:                                   ; preds = %.preheader57.i.preheader, %bb.e
  %.05262.i = phi i32 [ %i.fa, %bb.e ], [ 0, %.preheader57.i.preheader ]
  br label %.preheader55.i

.preheader55.i:                                   ; preds = %middle.block136, %.preheader57.i
  %indvars.iv64.i = phi i64 [ 1, %.preheader57.i ], [ %indvars.iv.next65.i, %middle.block136 ] ; 3 uses
  %i.be = getelementptr inbounds nuw [10400 x i8], ptr %i.e, i64 %indvars.iv64.i ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 10400 ; 3 uses
  %i.bg = getelementptr i8, ptr %i.be, i64 -10400 ; 3 uses
  %i.bh = getelementptr inbounds nuw [10400 x i8], ptr %i.q, i64 %indvars.iv64.i ; 3 uses
  br i1 %found.conflict126, label %scalar.ph122, label %vector.body128

vector.body128:                                   ; preds = %.preheader55.i, %vector.body128
  %index129 = phi i64 [ %index.next135, %vector.body128 ], [ 0, %.preheader55.i ] ; 3 uses
  %i.bi = or disjoint i64 %index129, 1            ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bi ; 2 uses
  %wide.load130 = load <2 x double>, ptr %i.bj, align 8, !tbaa !18, !alias.scope !69
  %i.bk = getelementptr i8, ptr %i.bj, i64 -8
  %wide.load131 = load <2 x double>, ptr %i.bk, align 8, !tbaa !18, !alias.scope !69
  %i.bl = fadd <2 x double> %wide.load130, %wide.load131
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index129
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load132 = load <2 x double>, ptr %i.bn, align 8, !tbaa !18, !alias.scope !69
  %i.bo = fadd <2 x double> %i.bl, %wide.load132
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bi
  %wide.load133 = load <2 x double>, ptr %i.bp, align 8, !tbaa !18, !alias.scope !69
  %i.bq = fadd <2 x double> %i.bo, %wide.load133
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bi
  %wide.load134 = load <2 x double>, ptr %i.br, align 8, !tbaa !18, !alias.scope !69
  %i.bs = fadd <2 x double> %i.bq, %wide.load134
  %i.bt = fmul <2 x double> %i.bs, splat (double 2.000000e-01)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  store <2 x double> %i.bt, ptr %i.bu, align 8, !tbaa !18, !alias.scope !70, !noalias !69
  %index.next135 = add nuw i64 %index129, 2       ; 2 uses
  %i.bv = icmp eq i64 %index.next135, 1298
  br i1 %i.bv, label %middle.block136, label %vector.body128, !llvm.loop !36

scalar.ph122:                                     ; preds = %.preheader55.i, %scalar.ph122
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i29.1, %scalar.ph122 ], [ 1, %.preheader55.i ] ; 6 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i28 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !18
  %i.by = getelementptr i8, ptr %i.bw, i64 -8
  %i.bz = load double, ptr %i.by, align 8, !tbaa !18
  %i.ca = fadd double %i.bx, %i.bz
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i28, 1 ; 5 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i29
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !18
  %i.cd = fadd double %i.ca, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i28
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !18
  %i.cg = fadd double %i.cd, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i28
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !18
  %i.cj = fadd double %i.cg, %i.ci
  %i.ck = fmul double %i.cj, 2.000000e-01
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i28
  store double %i.ck, ptr %i.cl, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i29 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !18
  %i.co = getelementptr i8, ptr %i.cm, i64 -8
  %i.cp = load double, ptr %i.co, align 8, !tbaa !18
  %i.cq = fadd double %i.cn, %i.cp
  %indvars.iv.next.i29.1 = add nuw nsw i64 %indvars.iv.i28, 2 ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i29.1
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !18
  %i.ct = fadd double %i.cq, %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i29
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !18
  %i.cw = fadd double %i.ct, %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i29
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !18
  %i.cz = fadd double %i.cw, %i.cy
  %i.da = fmul double %i.cz, 2.000000e-01
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i29
  store double %i.da, ptr %i.db, align 8, !tbaa !18
  %exitcond.not.i30.1 = icmp eq i64 %indvars.iv.next.i29.1, 1299
  br i1 %exitcond.not.i30.1, label %middle.block136, label %scalar.ph122, !llvm.loop !37

middle.block136:                                  ; preds = %vector.body128, %scalar.ph122
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next65.i, 1299
  br i1 %exitcond67.not.i, label %.preheader.i31, label %.preheader55.i, !llvm.loop !38

.preheader.i31:                                   ; preds = %middle.block136, %middle.block109
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %middle.block109 ], [ 1, %middle.block136 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [10400 x i8], ptr %i.q, i64 %indvars.iv72.i ; 8 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 10400 ; 3 uses
  %i.de = getelementptr i8, ptr %i.dc, i64 -10400 ; 3 uses
  %i.df = getelementptr inbounds nuw [10400 x i8], ptr %i.e, i64 %indvars.iv72.i ; 3 uses
  br i1 %found.conflict, label %scalar.ph99, label %vector.body102

vector.body102:                                   ; preds = %.preheader.i31, %vector.body102
  %index103 = phi i64 [ %index.next108, %vector.body102 ], [ 0, %.preheader.i31 ] ; 3 uses
  %i.dg = or disjoint i64 %index103, 1            ; 4 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dg ; 2 uses
  %wide.load = load <2 x double>, ptr %i.dh, align 8, !tbaa !18, !alias.scope !71
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %wide.load104 = load <2 x double>, ptr %i.di, align 8, !tbaa !18, !alias.scope !71
  %i.dj = fadd <2 x double> %wide.load, %wide.load104
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %index103
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load105 = load <2 x double>, ptr %i.dl, align 8, !tbaa !18, !alias.scope !71
  %i.dm = fadd <2 x double> %i.dj, %wide.load105
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dg
  %wide.load106 = load <2 x double>, ptr %i.dn, align 8, !tbaa !18, !alias.scope !71
  %i.do = fadd <2 x double> %i.dm, %wide.load106
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dg
  %wide.load107 = load <2 x double>, ptr %i.dp, align 8, !tbaa !18, !alias.scope !71
  %i.dq = fadd <2 x double> %i.do, %wide.load107
  %i.dr = fmul <2 x double> %i.dq, splat (double 2.000000e-01)
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dg
  store <2 x double> %i.dr, ptr %i.ds, align 8, !tbaa !18, !alias.scope !72, !noalias !71
  %index.next108 = add nuw i64 %index103, 2       ; 2 uses
  %i.dt = icmp eq i64 %index.next108, 1298
  br i1 %i.dt, label %middle.block109, label %vector.body102, !llvm.loop !42

scalar.ph99:                                      ; preds = %.preheader.i31, %scalar.ph99
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i.1, %scalar.ph99 ], [ 1, %.preheader.i31 ] ; 6 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv68.i ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !18
  %i.dw = getelementptr i8, ptr %i.du, i64 -8
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !18
  %i.dy = fadd double %i.dv, %i.dx
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 5 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next69.i
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !18
  %i.eb = fadd double %i.dy, %i.ea
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv68.i
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !18
  %i.ee = fadd double %i.eb, %i.ed
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv68.i
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !18
  %i.eh = fadd double %i.ee, %i.eg
  %i.ei = fmul double %i.eh, 2.000000e-01
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv68.i
  store double %i.ei, ptr %i.ej, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next69.i ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !18
  %i.em = getelementptr i8, ptr %i.ek, i64 -8
  %i.en = load double, ptr %i.em, align 8, !tbaa !18
  %i.eo = fadd double %i.el, %i.en
  %indvars.iv.next69.i.1 = add nuw nsw i64 %indvars.iv68.i, 2 ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next69.i.1
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !18
  %i.er = fadd double %i.eo, %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next69.i
  %i.et = load double, ptr %i.es, align 8, !tbaa !18
  %i.eu = fadd double %i.er, %i.et
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.next69.i
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !18
  %i.ex = fadd double %i.eu, %i.ew
  %i.ey = fmul double %i.ex, 2.000000e-01
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next69.i
  store double %i.ey, ptr %i.ez, align 8, !tbaa !18
  %exitcond71.not.i.1 = icmp eq i64 %indvars.iv.next69.i.1, 1299
  br i1 %exitcond71.not.i.1, label %middle.block109, label %scalar.ph99, !llvm.loop !43

middle.block109:                                  ; preds = %vector.body102, %scalar.ph99
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next73.i, 1299
  br i1 %exitcond75.not.i, label %bb.e, label %.preheader.i31, !llvm.loop !44

bb.e:                                             ; preds = %middle.block109
  %i.fa = add nuw nsw i32 %.05262.i, 1            ; 2 uses
  %exitcond76.not.i = icmp eq i32 %i.fa, 500
  br i1 %exitcond76.not.i, label %.preheader.i32.preheader, label %.preheader57.i, !llvm.loop !45

.preheader.i32.preheader:                         ; preds = %bb.e
  %i.fb = sub i64 %i.l, %i.r
  %diff.check141 = icmp ugt i64 %i.fb, -16
  br label %.preheader.i32

.preheader.i32:                                   ; preds = %.preheader.i32.preheader, %middle.block150
  %indvars.iv22.i33 = phi i64 [ %indvars.iv.next23.i37, %middle.block150 ], [ 0, %.preheader.i32.preheader ] ; 6 uses
  %i.fc = getelementptr inbounds nuw [10400 x i8], ptr %i.k, i64 %indvars.iv22.i33 ; 2 uses
  %i.fd = getelementptr inbounds nuw [10400 x i8], ptr %i.q, i64 %indvars.iv22.i33 ; 2 uses
  br i1 %diff.check141, label %scalar.ph139, label %vector.ph142

vector.ph142:                                     ; preds = %.preheader.i32
  %broadcast.splatinsert143 = insertelement <2 x i64> poison, i64 %indvars.iv22.i33, i64 0
  %broadcast.splat144 = shufflevector <2 x i64> %broadcast.splatinsert143, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph142
  %index146 = phi i64 [ 0, %vector.ph142 ], [ %index.next148, %vector.body145 ] ; 3 uses
  %vec.ind147 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph142 ], [ %vec.ind.next149, %vector.body145 ] ; 3 uses
  %i.fe = add nuw nsw <2 x i64> %vec.ind147, splat (i64 2)
  %i.ff = mul nuw nsw <2 x i64> %i.fe, %broadcast.splat144
  %i.fg = trunc <2 x i64> %i.ff to <2 x i32>
  %i.fh = add <2 x i32> %i.fg, splat (i32 2)
  %i.fi = uitofp nneg <2 x i32> %i.fh to <2 x double>
  %i.fj = fdiv <2 x double> %i.fi, splat (double 1.300000e+03)
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %index146
  store <2 x double> %i.fj, ptr %i.fk, align 8, !tbaa !18
  %i.fl = add nuw nsw <2 x i64> %vec.ind147, splat (i64 3)
  %i.fm = mul nuw nsw <2 x i64> %i.fl, %broadcast.splat144
  %i.fn = trunc <2 x i64> %i.fm to <2 x i32>
  %i.fo = add <2 x i32> %i.fn, splat (i32 3)
  %i.fp = uitofp nneg <2 x i32> %i.fo to <2 x double>
  %i.fq = fdiv <2 x double> %i.fp, splat (double 1.300000e+03)
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %index146
  store <2 x double> %i.fq, ptr %i.fr, align 8, !tbaa !18
  %index.next148 = add nuw i64 %index146, 2       ; 2 uses
  %vec.ind.next149 = add nuw nsw <2 x i64> %vec.ind147, splat (i64 2)
  %i.fs = icmp eq i64 %index.next148, 1300
  br i1 %i.fs, label %middle.block150, label %vector.body145, !llvm.loop !46

scalar.ph139:                                     ; preds = %.preheader.i32, %scalar.ph139
  %indvars.iv.i34 = phi i64 [ %indvars.iv.next.i35, %scalar.ph139 ], [ 0, %.preheader.i32 ] ; 5 uses
  %i.ft = add nuw nsw i64 %indvars.iv.i34, 2
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.i34
  %i.fv = add nuw nsw i64 %indvars.iv.i34, 3
  %i.fw = mul nuw nsw i64 %i.ft, %indvars.iv22.i33
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = add i32 %i.fx, 2
  %i.fz = uitofp nneg i32 %i.fy to double
  %i.ga = mul nuw nsw i64 %i.fv, %indvars.iv22.i33
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = add i32 %i.gb, 3
  %i.gd = uitofp nneg i32 %i.gc to double
  %i.ge = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.gd, i64 1
  %i.gg = fdiv <2 x double> %i.gf, splat (double 1.300000e+03) ; 2 uses
  %i.gh = extractelement <2 x double> %i.gg, i64 0
  store double %i.gh, ptr %i.fu, align 8, !tbaa !18
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv.i34
  %i.gj = extractelement <2 x double> %i.gg, i64 1
  store double %i.gj, ptr %i.gi, align 8, !tbaa !18
  %indvars.iv.next.i35 = add nuw nsw i64 %indvars.iv.i34, 1 ; 2 uses
  %exitcond.not.i36 = icmp eq i64 %indvars.iv.next.i35, 1300
  br i1 %exitcond.not.i36, label %middle.block150, label %scalar.ph139, !llvm.loop !47

middle.block150:                                  ; preds = %vector.body145, %scalar.ph139
  %indvars.iv.next23.i37 = add nuw nsw i64 %indvars.iv22.i33, 1 ; 2 uses
  %exitcond25.not.i38 = icmp eq i64 %indvars.iv.next23.i37, 1300
  br i1 %exitcond25.not.i38, label %.preheader57.i40.preheader, label %.preheader.i32, !llvm.loop !32

.preheader57.i40.preheader:                       ; preds = %middle.block150
  %scevgep159 = getelementptr i8, ptr %i.q, i64 31192
  %scevgep160 = getelementptr i8, ptr %i.q, i64 8
  %scevgep161 = getelementptr i8, ptr %i.k, i64 20792
  %scevgep162 = getelementptr i8, ptr %i.k, i64 10408
  %scevgep186 = getelementptr i8, ptr %i.k, i64 31192
  %scevgep187 = getelementptr i8, ptr %i.k, i64 8
  %scevgep188 = getelementptr i8, ptr %i.q, i64 20792
  %scevgep189 = getelementptr i8, ptr %i.q, i64 10408
  %bound0192 = icmp ult ptr %scevgep189, %scevgep186
  %bound1193 = icmp ult ptr %scevgep187, %scevgep188
  %found.conflict194 = and i1 %bound0192, %bound1193
  %bound0165 = icmp ult ptr %scevgep162, %scevgep159
  %bound1166 = icmp ult ptr %scevgep160, %scevgep161
  %found.conflict167 = and i1 %bound0165, %bound1166
  br label %.preheader57.i40

.preheader57.i40:                                 ; preds = %.preheader57.i40.preheader, %bb.f
  %.05262.i41 = phi i32 [ %i.kg, %bb.f ], [ 0, %.preheader57.i40.preheader ]
  br label %.preheader55.i42

.preheader55.i42:                                 ; preds = %middle.block204, %.preheader57.i40
  %indvars.iv64.i43 = phi i64 [ 1, %.preheader57.i40 ], [ %indvars.iv.next65.i47, %middle.block204 ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [10400 x i8], ptr %i.k, i64 %indvars.iv64.i43 ; 8 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 10400 ; 3 uses
  %i.gm = getelementptr i8, ptr %i.gk, i64 -10400 ; 3 uses
  %i.gn = getelementptr inbounds nuw [10400 x i8], ptr %i.q, i64 %indvars.iv64.i43 ; 3 uses
  br i1 %found.conflict194, label %scalar.ph190, label %vector.body196

vector.body196:                                   ; preds = %.preheader55.i42, %vector.body196
  %index197 = phi i64 [ %index.next203, %vector.body196 ], [ 0, %.preheader55.i42 ] ; 3 uses
  %i.go = or disjoint i64 %index197, 1            ; 4 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.go ; 2 uses
  %wide.load198 = load <2 x double>, ptr %i.gp, align 8, !tbaa !18, !alias.scope !73
  %i.gq = getelementptr i8, ptr %i.gp, i64 -8
  %wide.load199 = load <2 x double>, ptr %i.gq, align 8, !tbaa !18, !alias.scope !73
  %i.gr = fadd <2 x double> %wide.load198, %wide.load199
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %index197
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %wide.load200 = load <2 x double>, ptr %i.gt, align 8, !tbaa !18, !alias.scope !73
  %i.gu = fadd <2 x double> %i.gr, %wide.load200
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.go
  %wide.load201 = load <2 x double>, ptr %i.gv, align 8, !tbaa !18, !alias.scope !73
  %i.gw = fadd <2 x double> %i.gu, %wide.load201
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.go
  %wide.load202 = load <2 x double>, ptr %i.gx, align 8, !tbaa !18, !alias.scope !73
  %i.gy = fadd <2 x double> %i.gw, %wide.load202
  %i.gz = fmul <2 x double> %i.gy, splat (double 2.000000e-01)
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.go
  store <2 x double> %i.gz, ptr %i.ha, align 8, !tbaa !18, !alias.scope !74, !noalias !73
  %index.next203 = add nuw i64 %index197, 2       ; 2 uses
  %i.hb = icmp eq i64 %index.next203, 1298
  br i1 %i.hb, label %middle.block204, label %vector.body196, !llvm.loop !51

scalar.ph190:                                     ; preds = %.preheader55.i42, %scalar.ph190
  %indvars.iv.i44 = phi i64 [ %indvars.iv.next.i45.1, %scalar.ph190 ], [ 1, %.preheader55.i42 ] ; 6 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.i44 ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !18
  %i.he = getelementptr i8, ptr %i.hc, i64 -8
  %i.hf = load double, ptr %i.he, align 8, !tbaa !18
  %i.hg = fadd double %i.hd, %i.hf
  %indvars.iv.next.i45 = add nuw nsw i64 %indvars.iv.i44, 1 ; 5 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next.i45
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !18
  %i.hj = fadd double %i.hg, %i.hi
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv.i44
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !18
  %i.hm = fadd double %i.hj, %i.hl
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.i44
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !18
  %i.hp = fadd double %i.hm, %i.ho
  %i.hq = fmul double %i.hp, 2.000000e-01
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.i44
  store double %i.hq, ptr %i.hr, align 8, !tbaa !18
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next.i45 ; 2 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !18
  %i.hu = getelementptr i8, ptr %i.hs, i64 -8
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !18
  %i.hw = fadd double %i.ht, %i.hv
  %indvars.iv.next.i45.1 = add nuw nsw i64 %indvars.iv.i44, 2 ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next.i45.1
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !18
  %i.hz = fadd double %i.hw, %i.hy
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv.next.i45
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !18
  %i.ic = fadd double %i.hz, %i.ib
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.next.i45
  %i.ie = load double, ptr %i.id, align 8, !tbaa !18
  %i.if = fadd double %i.ic, %i.ie
  %i.ig = fmul double %i.if, 2.000000e-01
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next.i45
  store double %i.ig, ptr %i.ih, align 8, !tbaa !18
  %exitcond.not.i46.1 = icmp eq i64 %indvars.iv.next.i45.1, 1299
  br i1 %exitcond.not.i46.1, label %middle.block204, label %scalar.ph190, !llvm.loop !52

middle.block204:                                  ; preds = %vector.body196, %scalar.ph190
  %indvars.iv.next65.i47 = add nuw nsw i64 %indvars.iv64.i43, 1 ; 2 uses
  %exitcond67.not.i48 = icmp eq i64 %indvars.iv.next65.i47, 1299
  br i1 %exitcond67.not.i48, label %.preheader.i49, label %.preheader55.i42, !llvm.loop !53

.preheader.i49:                                   ; preds = %middle.block204, %middle.block177
  %indvars.iv72.i50 = phi i64 [ %indvars.iv.next73.i54, %middle.block177 ], [ 1, %middle.block204 ] ; 3 uses
  %i.ii = getelementptr inbounds nuw [10400 x i8], ptr %i.q, i64 %indvars.iv72.i50 ; 8 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 10400 ; 3 uses
  %i.ik = getelementptr i8, ptr %i.ii, i64 -10400 ; 3 uses
  %i.il = getelementptr inbounds nuw [10400 x i8], ptr %i.k, i64 %indvars.iv72.i50 ; 3 uses
  br i1 %found.conflict167, label %scalar.ph163, label %vector.body169

vector.body169:                                   ; preds = %.preheader.i49, %vector.body169
  %index170 = phi i64 [ %index.next176, %vector.body169 ], [ 0, %.preheader.i49 ] ; 3 uses
  %i.im = or disjoint i64 %index170, 1            ; 4 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.im ; 2 uses
  %wide.load171 = load <2 x double>, ptr %i.in, align 8, !tbaa !18, !alias.scope !75
  %i.io = getelementptr i8, ptr %i.in, i64 -8
  %wide.load172 = load <2 x double>, ptr %i.io, align 8, !tbaa !18, !alias.scope !75
  %i.ip = fadd <2 x double> %wide.load171, %wide.load172
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %index170
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %wide.load173 = load <2 x double>, ptr %i.ir, align 8, !tbaa !18, !alias.scope !75
  %i.is = fadd <2 x double> %i.ip, %wide.load173
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.im
  %wide.load174 = load <2 x double>, ptr %i.it, align 8, !tbaa !18, !alias.scope !75
  %i.iu = fadd <2 x double> %i.is, %wide.load174
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.im
  %wide.load175 = load <2 x double>, ptr %i.iv, align 8, !tbaa !18, !alias.scope !75
  %i.iw = fadd <2 x double> %i.iu, %wide.load175
  %i.ix = fmul <2 x double> %i.iw, splat (double 2.000000e-01)
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.im
  store <2 x double> %i.ix, ptr %i.iy, align 8, !tbaa !18, !alias.scope !76, !noalias !75
  %index.next176 = add nuw i64 %index170, 2       ; 2 uses
  %i.iz = icmp eq i64 %index.next176, 1298
  br i1 %i.iz, label %middle.block177, label %vector.body169, !llvm.loop !57

scalar.ph163:                                     ; preds = %.preheader.i49, %scalar.ph163
  %indvars.iv68.i51 = phi i64 [ %indvars.iv.next69.i52.1, %scalar.ph163 ], [ 1, %.preheader.i49 ] ; 6 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv68.i51 ; 2 uses
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !18
  %i.jc = getelementptr i8, ptr %i.ja, i64 -8
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !18
  %i.je = fadd double %i.jb, %i.jd
  %indvars.iv.next69.i52 = add nuw nsw i64 %indvars.iv68.i51, 1 ; 5 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.next69.i52
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !18
  %i.jh = fadd double %i.je, %i.jg
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv68.i51
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !18
  %i.jk = fadd double %i.jh, %i.jj
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv68.i51
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !18
  %i.jn = fadd double %i.jk, %i.jm
  %i.jo = fmul double %i.jn, 2.000000e-01
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv68.i51
  store double %i.jo, ptr %i.jp, align 8, !tbaa !18
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.next69.i52 ; 2 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !18
  %i.js = getelementptr i8, ptr %i.jq, i64 -8
  %i.jt = load double, ptr %i.js, align 8, !tbaa !18
  %i.ju = fadd double %i.jr, %i.jt
  %indvars.iv.next69.i52.1 = add nuw nsw i64 %indvars.iv68.i51, 2 ; 3 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.next69.i52.1
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !18
  %i.jx = fadd double %i.ju, %i.jw
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.next69.i52
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !18
  %i.ka = fadd double %i.jx, %i.jz
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.next69.i52
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !18
  %i.kd = fadd double %i.ka, %i.kc
  %i.ke = fmul double %i.kd, 2.000000e-01
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv.next69.i52
  store double %i.ke, ptr %i.kf, align 8, !tbaa !18
  %exitcond71.not.i53.1 = icmp eq i64 %indvars.iv.next69.i52.1, 1299
  br i1 %exitcond71.not.i53.1, label %middle.block177, label %scalar.ph163, !llvm.loop !58

middle.block177:                                  ; preds = %vector.body169, %scalar.ph163
  %indvars.iv.next73.i54 = add nuw nsw i64 %indvars.iv72.i50, 1 ; 2 uses
  %exitcond75.not.i55 = icmp eq i64 %indvars.iv.next73.i54, 1299
  br i1 %exitcond75.not.i55, label %bb.f, label %.preheader.i49, !llvm.loop !59

bb.f:                                             ; preds = %middle.block177
  %i.kg = add nuw nsw i32 %.05262.i41, 1          ; 2 uses
  %exitcond76.not.i56 = icmp eq i32 %i.kg, 500
  br i1 %exitcond76.not.i56, label %.preheader.i57, label %.preheader57.i40, !llvm.loop !60

.preheader.i57:                                   ; preds = %bb.f, %bb.h
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.h ], [ 0, %bb.f ] ; 4 uses
  %i.kh = getelementptr inbounds nuw [10400 x i8], ptr %i.e, i64 %indvars.iv39.i ; 2 uses
  %i.ki = getelementptr inbounds nuw [10400 x i8], ptr %i.k, i64 %indvars.iv39.i ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i.1, %.preheader.i57
  %indvars.iv.i58 = phi i64 [ 0, %.preheader.i57 ], [ %indvars.iv.next.i59.1, %.critedge.i.1 ] ; 5 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %indvars.iv.i58
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !18 ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv.i58
  %i.km = load double, ptr %i.kl, align 8, !tbaa !18 ; 2 uses
  %i.kn = fsub double %i.kk, %i.km
  %i.ko = tail call double @llvm.fabs.f64(double %i.kn)
  %i.kp = fcmp ule double %i.ko, 1.000000e-05
  br i1 %i.kp, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i, %bb.g
  %indvars.iv.i58.lcssa = phi i64 [ %indvars.iv.i58, %bb.g ], [ %indvars.iv.next.i59, %.critedge.i ]
  %.lcssa212 = phi double [ %i.kk, %bb.g ], [ %i.kv, %.critedge.i ]
  %.lcssa = phi double [ %i.km, %bb.g ], [ %i.kx, %.critedge.i ]
  %i.kq = trunc nuw nsw i64 %indvars.iv39.i to i32 ; 2 uses
  %i.kr = trunc nuw nsw i64 %indvars.iv.i58.lcssa to i32 ; 2 uses
  %i.ks = load ptr, ptr @stderr, align 8, !tbaa !22
end_hunk_0
