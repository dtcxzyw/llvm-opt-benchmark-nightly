Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/heat-3d?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
loop-unroll.NumUnrolled: 2
begin_hunk_0_@polybench_timer_stop:bb.a
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
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !11
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 13824000) #12
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !11   ; 11 uses
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
  %i.j = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 13824000) #12
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  %i.m = icmp ne i32 %i.j, 0
  %or.cond.i.i11 = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i.i11, label %bb.c, label %polybench_alloc_data.exit13

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i12 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.n) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit13:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.o = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 13824000) #12
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !11   ; 10 uses
  %i.q = icmp eq ptr %i.p, null
  %i.r = icmp ne i32 %i.o, 0
  %or.cond.i.i14 = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond.i.i14, label %bb.d, label %polybench_alloc_data.exit16

bb.d:                                             ; preds = %polybench_alloc_data.exit13
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i15 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.s) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit16:                      ; preds = %polybench_alloc_data.exit13
  %i.t = ptrtoaddr ptr %i.p to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.u = sub i64 %i.t, %i.f
  %diff.check = icmp ugt i64 %i.u, -16
  br label %.preheader24.i

.preheader24.i:                                   ; preds = %bb.e, %polybench_alloc_data.exit16
  %indvars.iv34.i = phi i64 [ 0, %polybench_alloc_data.exit16 ], [ %indvars.iv.next35.i, %bb.e ] ; 4 uses
  %i.v = add nuw nsw i64 %indvars.iv34.i, 120
  %i.w = getelementptr inbounds nuw [115200 x i8], ptr %i.p, i64 %indvars.iv34.i
  %i.x = getelementptr inbounds nuw [115200 x i8], ptr %i.e, i64 %indvars.iv34.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %.preheader24.i
  %indvars.iv29.i = phi i64 [ 0, %.preheader24.i ], [ %indvars.iv.next30.i, %middle.block ] ; 4 uses
  %i.y = add nuw nsw i64 %i.v, %indvars.iv29.i    ; 3 uses
  %i.z = getelementptr inbounds nuw [960 x i8], ptr %i.w, i64 %indvars.iv29.i ; 4 uses
  %i.aa = getelementptr inbounds nuw [960 x i8], ptr %i.x, i64 %indvars.iv29.i ; 4 uses
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.y, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next.1, %vector.body ] ; 3 uses
  %i.ab = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.ac = trunc nuw nsw <2 x i64> %i.ab to <2 x i32>
  %i.ad = sitofp <2 x i32> %i.ac to <2 x double>
  %i.ae = fmul nnan <2 x double> %i.ad, splat (double 1.000000e+01)
  %i.af = fdiv <2 x double> %i.ae, splat (double 1.200000e+02) ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index
  store <2 x double> %i.af, ptr %i.ag, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index
  store <2 x double> %i.af, ptr %i.ah, align 8, !tbaa !9
  %index.next = or disjoint i64 %index, 2         ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ai = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind.next
  %i.aj = trunc nuw nsw <2 x i64> %i.ai to <2 x i32>
  %i.ak = sitofp <2 x i32> %i.aj to <2 x double>
  %i.al = fmul nnan <2 x double> %i.ak, splat (double 1.000000e+01)
  %i.am = fdiv <2 x double> %i.al, splat (double 1.200000e+02) ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index.next
  store <2 x double> %i.am, ptr %i.an, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index.next
  store <2 x double> %i.am, ptr %i.ao, align 8, !tbaa !9
  %index.next.1 = add nuw nsw i64 %index, 4       ; 2 uses
  %vec.ind.next.1 = add nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.ap = icmp eq i64 %index.next.1, 120
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !14

scalar.ph:                                        ; preds = %.preheader.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ 0, %.preheader.i ] ; 5 uses
  %i.aq = sub nuw nsw i64 %i.y, %indvars.iv.i
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = sitofp i32 %i.ar to double
  %i.at = fmul nnan double %i.as, 1.000000e+01
  %i.au = fdiv double %i.at, 1.200000e+02         ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i
  store double %i.au, ptr %i.av, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i
  store double %i.au, ptr %i.aw, align 8, !tbaa !9
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.ax = sub nuw nsw i64 %i.y, %indvars.iv.next.i
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = sitofp i32 %i.ay to double
  %i.ba = fmul nnan double %i.az, 1.000000e+01
  %i.bb = fdiv double %i.ba, 1.200000e+02         ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next.i
  store double %i.bb, ptr %i.bc, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i
  store double %i.bb, ptr %i.bd, align 8, !tbaa !9
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 120
  br i1 %exitcond.not.i.1, label %middle.block, label %scalar.ph, !llvm.loop !15

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next30.i, 120
  br i1 %exitcond33.not.i, label %bb.e, label %.preheader.i, !llvm.loop !16

bb.e:                                             ; preds = %middle.block
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next35.i, 120
  br i1 %exitcond37.not.i, label %.preheader117.i, label %.preheader24.i, !llvm.loop !17

.preheader117.i:                                  ; preds = %bb.e, %bb.h
  %.0111124.i = phi i32 [ %i.gi, %bb.h ], [ 1, %bb.e ]
  br label %.preheader115.i

.preheader115.i:                                  ; preds = %bb.f, %.preheader117.i
  %indvar45 = phi i64 [ %indvar.next46, %bb.f ], [ 0, %.preheader117.i ] ; 2 uses
  %indvars.iv130.i = phi i64 [ %indvars.iv.next131.i, %bb.f ], [ 1, %.preheader117.i ] ; 3 uses
  %i.be = mul nuw nsw i64 %indvar45, 115200       ; 4 uses
  %i.bf = getelementptr i8, ptr %i.p, i64 %i.be
  %scevgep47 = getelementptr i8, ptr %i.bf, i64 116168
  %i.bg = getelementptr i8, ptr %i.p, i64 %i.be
  %scevgep48 = getelementptr i8, ptr %i.bg, i64 229432
  %i.bh = getelementptr i8, ptr %i.e, i64 %i.be
  %scevgep49 = getelementptr i8, ptr %i.bh, i64 968
  %i.bi = getelementptr i8, ptr %i.e, i64 %i.be
  %scevgep50 = getelementptr i8, ptr %i.bi, i64 344632
  %i.bj = getelementptr inbounds nuw [115200 x i8], ptr %i.e, i64 %indvars.iv130.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 115200
  %i.bl = getelementptr i8, ptr %i.bj, i64 -115200
  %i.bm = getelementptr inbounds nuw [115200 x i8], ptr %i.p, i64 %indvars.iv130.i
  %bound051 = icmp ult ptr %scevgep47, %scevgep50
  %bound152 = icmp ult ptr %scevgep49, %scevgep48
  %found.conflict53 = and i1 %bound051, %bound152
  br label %.preheader113.i

.preheader113.i:                                  ; preds = %middle.block66, %.preheader115.i
  %indvars.iv126.i = phi i64 [ 1, %.preheader115.i ], [ %indvars.iv.next127.i, %middle.block66 ] ; 5 uses
  %i.bn = getelementptr inbounds nuw [960 x i8], ptr %i.bk, i64 %indvars.iv126.i ; 2 uses
  %i.bo = getelementptr inbounds nuw [960 x i8], ptr %i.bj, i64 %indvars.iv126.i ; 5 uses
  %i.bp = getelementptr inbounds nuw [960 x i8], ptr %i.bl, i64 %indvars.iv126.i ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 960 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bo, i64 -960   ; 2 uses
  %i.bs = getelementptr inbounds nuw [960 x i8], ptr %i.bm, i64 %indvars.iv126.i ; 2 uses
  br i1 %found.conflict53, label %scalar.ph54, label %vector.body56

vector.body56:                                    ; preds = %.preheader113.i, %vector.body56
  %index57 = phi i64 [ %index.next65, %vector.body56 ], [ 0, %.preheader113.i ] ; 3 uses
  %i.bt = or disjoint i64 %index57, 1             ; 6 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bt
  %wide.load58 = load <2 x double>, ptr %i.bu, align 8, !tbaa !9, !alias.scope !39
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bt ; 2 uses
  %wide.load59 = load <2 x double>, ptr %i.bv, align 8, !tbaa !9, !alias.scope !39 ; 4 uses
  %i.bw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load59, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load58)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bt
  %wide.load60 = load <2 x double>, ptr %i.bx, align 8, !tbaa !9, !alias.scope !39
  %i.by = fadd <2 x double> %i.bw, %wide.load60
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bt
  %wide.load61 = load <2 x double>, ptr %i.bz, align 8, !tbaa !9, !alias.scope !39
  %i.ca = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load59, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load61)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %wide.load62 = load <2 x double>, ptr %i.cb, align 8, !tbaa !9, !alias.scope !39
  %i.cc = fadd <2 x double> %i.ca, %wide.load62
  %i.cd = fmul <2 x double> %i.cc, splat (double 1.250000e-01)
  %i.ce = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> splat (double 1.250000e-01), <2 x double> %i.cd)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index57
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load63 = load <2 x double>, ptr %i.cg, align 8, !tbaa !9, !alias.scope !39
  %i.ch = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load59, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load63)
  %i.ci = getelementptr i8, ptr %i.bv, i64 -8
  %wide.load64 = load <2 x double>, ptr %i.ci, align 8, !tbaa !9, !alias.scope !39
  %i.cj = fadd <2 x double> %i.ch, %wide.load64
  %i.ck = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> splat (double 1.250000e-01), <2 x double> %i.ce)
  %i.cl = fadd <2 x double> %wide.load59, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt
  store <2 x double> %i.cl, ptr %i.cm, align 8, !tbaa !9, !alias.scope !40, !noalias !39
  %index.next65 = add nuw i64 %index57, 2         ; 2 uses
  %i.cn = icmp eq i64 %index.next65, 118
  br i1 %i.cn, label %middle.block66, label %vector.body56, !llvm.loop !21

scalar.ph54:                                      ; preds = %.preheader113.i, %scalar.ph54
  %indvars.iv.i17 = phi i64 [ %indvars.iv.next.i18, %scalar.ph54 ], [ 1, %.preheader113.i ] ; 7 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i17
  %i.cp = load double, ptr %i.co, align 8, !tbaa !9
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i17 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i17
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !9
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i17
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !9
  %i.cv = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.cu, i64 1
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i17
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !9
  %indvars.iv.next.i18 = add nuw nsw i64 %indvars.iv.i17, 1 ; 2 uses
  %i.cz = load <2 x double>, ptr %i.cq, align 8, !tbaa !9 ; 4 uses
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> splat (double -2.000000e+00), <2 x double> %i.cw)
  %i.dc = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.cy, i64 1
  %i.de = fadd <2 x double> %i.db, %i.dd          ; 2 uses
  %i.df = extractelement <2 x double> %i.de, i64 1
  %i.dg = fmul double %i.df, 1.250000e-01
  %i.dh = shufflevector <2 x double> %i.de, <2 x double> %i.cz, <2 x i32> <i32 0, i32 2>
  %i.di = insertelement <2 x double> %i.cz, double %i.dg, i64 0
  %i.dj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> <double 1.250000e-01, double -2.000000e+00>, <2 x double> %i.di) ; 2 uses
  %i.dk = getelementptr i8, ptr %i.cq, i64 -8
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !9
  %i.dm = extractelement <2 x double> %i.dj, i64 1
  %i.dn = fadd double %i.dm, %i.dl
  %i.do = extractelement <2 x double> %i.dj, i64 0
  %i.dp = call double @llvm.fmuladd.f64(double %i.dn, double 1.250000e-01, double %i.do)
  %i.dq = extractelement <2 x double> %i.cz, i64 0
  %i.dr = fadd double %i.dq, %i.dp
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i17
  store double %i.dr, ptr %i.ds, align 8, !tbaa !9
  %exitcond.not.i19 = icmp eq i64 %indvars.iv.next.i18, 119
  br i1 %exitcond.not.i19, label %middle.block66, label %scalar.ph54, !llvm.loop !22

middle.block66:                                   ; preds = %vector.body56, %scalar.ph54
  %indvars.iv.next127.i = add nuw nsw i64 %indvars.iv126.i, 1 ; 2 uses
  %exitcond129.not.i = icmp eq i64 %indvars.iv.next127.i, 119
  br i1 %exitcond129.not.i, label %bb.f, label %.preheader113.i, !llvm.loop !23

bb.f:                                             ; preds = %middle.block66
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %exitcond133.not.i = icmp eq i64 %indvars.iv.next131.i, 119
  %indvar.next46 = add i64 %indvar45, 1
  br i1 %exitcond133.not.i, label %.preheader114.i, label %.preheader115.i, !llvm.loop !24

.preheader114.i:                                  ; preds = %bb.f, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %bb.g ], [ 1, %bb.f ] ; 3 uses
  %i.dt = mul nuw nsw i64 %indvar, 115200         ; 4 uses
  %i.du = getelementptr i8, ptr %i.e, i64 %i.dt
  %scevgep = getelementptr i8, ptr %i.du, i64 116168
  %i.dv = getelementptr i8, ptr %i.e, i64 %i.dt
  %scevgep29 = getelementptr i8, ptr %i.dv, i64 229432
  %i.dw = getelementptr i8, ptr %i.p, i64 %i.dt
  %scevgep30 = getelementptr i8, ptr %i.dw, i64 968
  %i.dx = getelementptr i8, ptr %i.p, i64 %i.dt
  %scevgep31 = getelementptr i8, ptr %i.dx, i64 344632
  %i.dy = getelementptr inbounds nuw [115200 x i8], ptr %i.p, i64 %indvars.iv142.i ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 115200
  %i.ea = getelementptr i8, ptr %i.dy, i64 -115200
  %i.eb = getelementptr inbounds nuw [115200 x i8], ptr %i.e, i64 %indvars.iv142.i
  %bound0 = icmp ult ptr %scevgep, %scevgep31
  %bound1 = icmp ult ptr %scevgep30, %scevgep29
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader.i20

.preheader.i20:                                   ; preds = %middle.block43, %.preheader114.i
  %indvars.iv138.i = phi i64 [ 1, %.preheader114.i ], [ %indvars.iv.next139.i, %middle.block43 ] ; 5 uses
  %i.ec = getelementptr inbounds nuw [960 x i8], ptr %i.dz, i64 %indvars.iv138.i ; 2 uses
  %i.ed = getelementptr inbounds nuw [960 x i8], ptr %i.dy, i64 %indvars.iv138.i ; 5 uses
  %i.ee = getelementptr inbounds nuw [960 x i8], ptr %i.ea, i64 %indvars.iv138.i ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 960 ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ed, i64 -960   ; 2 uses
  %i.eh = getelementptr inbounds nuw [960 x i8], ptr %i.eb, i64 %indvars.iv138.i ; 2 uses
  br i1 %found.conflict, label %scalar.ph32, label %vector.body34

vector.body34:                                    ; preds = %.preheader.i20, %vector.body34
  %index35 = phi i64 [ %index.next42, %vector.body34 ], [ 0, %.preheader.i20 ] ; 3 uses
  %i.ei = or disjoint i64 %index35, 1             ; 6 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ei
  %wide.load = load <2 x double>, ptr %i.ej, align 8, !tbaa !9, !alias.scope !41
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ei ; 2 uses
  %wide.load36 = load <2 x double>, ptr %i.ek, align 8, !tbaa !9, !alias.scope !41 ; 4 uses
  %i.el = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load36, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load)
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ei
  %wide.load37 = load <2 x double>, ptr %i.em, align 8, !tbaa !9, !alias.scope !41
  %i.en = fadd <2 x double> %i.el, %wide.load37
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ei
  %wide.load38 = load <2 x double>, ptr %i.eo, align 8, !tbaa !9, !alias.scope !41
  %i.ep = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load36, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load38)
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ei
  %wide.load39 = load <2 x double>, ptr %i.eq, align 8, !tbaa !9, !alias.scope !41
  %i.er = fadd <2 x double> %i.ep, %wide.load39
  %i.es = fmul <2 x double> %i.er, splat (double 1.250000e-01)
  %i.et = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> splat (double 1.250000e-01), <2 x double> %i.es)
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %index35
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load40 = load <2 x double>, ptr %i.ev, align 8, !tbaa !9, !alias.scope !41
  %i.ew = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load36, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load40)
  %i.ex = getelementptr i8, ptr %i.ek, i64 -8
  %wide.load41 = load <2 x double>, ptr %i.ex, align 8, !tbaa !9, !alias.scope !41
  %i.ey = fadd <2 x double> %i.ew, %wide.load41
  %i.ez = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> splat (double 1.250000e-01), <2 x double> %i.et)
  %i.fa = fadd <2 x double> %wide.load36, %i.ez
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ei
  store <2 x double> %i.fa, ptr %i.fb, align 8, !tbaa !9, !alias.scope !42, !noalias !41
  %index.next42 = add nuw i64 %index35, 2         ; 2 uses
  %i.fc = icmp eq i64 %index.next42, 118
  br i1 %i.fc, label %middle.block43, label %vector.body34, !llvm.loop !28

scalar.ph32:                                      ; preds = %.preheader.i20, %scalar.ph32
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %scalar.ph32 ], [ 1, %.preheader.i20 ] ; 7 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv134.i
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !9
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv134.i ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv134.i
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !9
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv134.i
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !9
  %i.fk = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.fj, i64 1
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv134.i
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !9
  %indvars.iv.next135.i = add nuw nsw i64 %indvars.iv134.i, 1 ; 2 uses
  %i.fo = load <2 x double>, ptr %i.ff, align 8, !tbaa !9 ; 4 uses
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> splat (double -2.000000e+00), <2 x double> %i.fl)
  %i.fr = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fs = insertelement <2 x double> %i.fr, double %i.fn, i64 1
  %i.ft = fadd <2 x double> %i.fq, %i.fs          ; 2 uses
  %i.fu = extractelement <2 x double> %i.ft, i64 1
  %i.fv = fmul double %i.fu, 1.250000e-01
  %i.fw = shufflevector <2 x double> %i.ft, <2 x double> %i.fo, <2 x i32> <i32 0, i32 2>
  %i.fx = insertelement <2 x double> %i.fo, double %i.fv, i64 0
  %i.fy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> <double 1.250000e-01, double -2.000000e+00>, <2 x double> %i.fx) ; 2 uses
  %i.fz = getelementptr i8, ptr %i.ff, i64 -8
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !9
  %i.gb = extractelement <2 x double> %i.fy, i64 1
  %i.gc = fadd double %i.gb, %i.ga
  %i.gd = extractelement <2 x double> %i.fy, i64 0
  %i.ge = call double @llvm.fmuladd.f64(double %i.gc, double 1.250000e-01, double %i.gd)
  %i.gf = extractelement <2 x double> %i.fo, i64 0
  %i.gg = fadd double %i.gf, %i.ge
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv134.i
  store double %i.gg, ptr %i.gh, align 8, !tbaa !9
  %exitcond137.not.i = icmp eq i64 %indvars.iv.next135.i, 119
  br i1 %exitcond137.not.i, label %middle.block43, label %scalar.ph32, !llvm.loop !29

middle.block43:                                   ; preds = %vector.body34, %scalar.ph32
  %indvars.iv.next139.i = add nuw nsw i64 %indvars.iv138.i, 1 ; 2 uses
  %exitcond141.not.i = icmp eq i64 %indvars.iv.next139.i, 119
  br i1 %exitcond141.not.i, label %bb.g, label %.preheader.i20, !llvm.loop !30

bb.g:                                             ; preds = %middle.block43
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond145.not.i = icmp eq i64 %indvars.iv.next143.i, 119
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond145.not.i, label %bb.h, label %.preheader114.i, !llvm.loop !31

bb.h:                                             ; preds = %bb.g
  %i.gi = add nuw nsw i32 %.0111124.i, 1          ; 2 uses
  %exitcond146.not.i = icmp eq i32 %i.gi, 501
  br i1 %exitcond146.not.i, label %kernel_heat_3d.exit, label %.preheader117.i, !llvm.loop !32

kernel_heat_3d.exit:                              ; preds = %bb.h
  %i.gj = call noalias dereferenceable_or_null(1921) ptr @malloc(i64 noundef 1921) #15 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1920
  store i8 0, ptr %i.gk, align 1, !tbaa !43
  br label %.preheader22.i

.preheader22.i:                                   ; preds = %bb.k, %kernel_heat_3d.exit
  %indvars.iv31.i = phi i64 [ 0, %kernel_heat_3d.exit ], [ %indvars.iv.next32.i, %bb.k ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [115200 x i8], ptr %i.e, i64 %indvars.iv31.i
  br label %.preheader.i21

.preheader.i21:                                   ; preds = %bb.j, %.preheader22.i
  %indvars.iv27.i = phi i64 [ 0, %.preheader22.i ], [ %indvars.iv.next28.i, %bb.j ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [960 x i8], ptr %i.gl, i64 %indvars.iv27.i
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i21
  %indvars.iv.i22 = phi i64 [ 0, %.preheader.i21 ], [ %indvars.iv.next.i23, %bb.i ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.i22
  %i.go = shl nuw nsw i64 %indvars.iv.i22, 4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.go
  %i.gq = load i64, ptr %i.gn, align 8, !tbaa !9  ; 4 uses
  %i.gr = lshr i64 %i.gq, 56
  %i.gs = trunc nuw i64 %i.gr to i8
  %i.gt = insertelement <2 x i64> poison, i64 %i.gq, i64 0
  %i.gu = shufflevector <2 x i64> %i.gt, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.gv = lshr <2 x i64> %i.gu, <i64 40, i64 48>
  %i.gw = trunc <2 x i64> %i.gv to <2 x i8>
  %i.gx = insertelement <4 x i64> poison, i64 %i.gq, i64 0
  %i.gy = shufflevector <4 x i64> %i.gx, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.gz = lshr <4 x i64> %i.gy, <i64 8, i64 16, i64 24, i64 32>
  %i.ha = trunc <4 x i64> %i.gz to <4 x i8>
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.gq to i8
  %i.hb = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i.i, i64 0
  %i.hc = shufflevector <4 x i8> %i.ha, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hd = shufflevector <8 x i8> %i.hb, <8 x i8> %i.hc, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.he = shufflevector <2 x i8> %i.gw, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = shufflevector <8 x i8> %i.hd, <8 x i8> %i.he, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %i.hg = insertelement <8 x i8> %i.hf, i8 %i.gs, i64 7
  %i.hh = and <8 x i8> %i.hg, splat (i8 15)
  %i.hi = or disjoint <8 x i8> %i.hh, splat (i8 48)
  %i.hj = shufflevector <8 x i8> %i.hi, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.hj, ptr %i.gp, align 1, !tbaa !43
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i22, 1 ; 2 uses
  %exitcond.not.i24 = icmp eq i64 %indvars.iv.next.i23, 120
  br i1 %exitcond.not.i24, label %bb.j, label %bb.i, !llvm.loop !33

bb.j:                                             ; preds = %bb.i
  %i.hk = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.hl = call i32 @fputs(ptr noundef nonnull %i.gj, ptr noundef %i.hk) #13 ; 0 uses
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next28.i, 120
  br i1 %exitcond30.not.i, label %bb.k, label %.preheader.i21, !llvm.loop !34

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next32.i, 120
  br i1 %exitcond34.not.i, label %print_array.exit, label %.preheader22.i, !llvm.loop !35

print_array.exit:                                 ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.gj) #12
  call void @free(ptr noundef nonnull %i.e) #12
  call void @free(ptr noundef %i.k) #12
  call void @free(ptr noundef %i.p) #12
  ret i32 0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
