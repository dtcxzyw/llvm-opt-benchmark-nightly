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
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 13824000) #12
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !10   ; 11 uses
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
  %i.k = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 13824000) #12
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = icmp ne i32 %i.k, 0
  %or.cond.i.i11 = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond.i.i11, label %bb.c, label %polybench_alloc_data.exit12

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.p = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.o) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit12:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.q = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 13824000) #12
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !10   ; 10 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = icmp ne i32 %i.q, 0
  %or.cond.i.i13 = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond.i.i13, label %bb.d, label %polybench_alloc_data.exit14

bb.d:                                             ; preds = %polybench_alloc_data.exit12
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.v = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.u) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit14:                      ; preds = %polybench_alloc_data.exit12
  %i.w = ptrtoaddr ptr %i.r to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.x = sub i64 %i.w, %i.f
  %diff.check = icmp ugt i64 %i.x, -16
  br label %.preheader24.i

.preheader24.i:                                   ; preds = %bb.e, %polybench_alloc_data.exit14
  %indvars.iv34.i = phi i64 [ 0, %polybench_alloc_data.exit14 ], [ %indvars.iv.next35.i, %bb.e ] ; 4 uses
  %i.y = add nuw nsw i64 %indvars.iv34.i, 120
  %i.z = getelementptr inbounds nuw [115200 x i8], ptr %i.r, i64 %indvars.iv34.i
  %i.aa = getelementptr inbounds nuw [115200 x i8], ptr %i.e, i64 %indvars.iv34.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %.preheader24.i
  %indvars.iv29.i = phi i64 [ 0, %.preheader24.i ], [ %indvars.iv.next30.i, %middle.block ] ; 4 uses
  %i.ab = add nuw nsw i64 %i.y, %indvars.iv29.i   ; 3 uses
  %i.ac = getelementptr inbounds nuw [960 x i8], ptr %i.z, i64 %indvars.iv29.i ; 4 uses
  %i.ad = getelementptr inbounds nuw [960 x i8], ptr %i.aa, i64 %indvars.iv29.i ; 4 uses
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next.1, %vector.body ] ; 3 uses
  %i.ae = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.af = trunc nuw nsw <2 x i64> %i.ae to <2 x i32>
  %i.ag = sitofp <2 x i32> %i.af to <2 x double>
  %i.ah = fmul nnan <2 x double> %i.ag, splat (double 1.000000e+01)
  %i.ai = fdiv <2 x double> %i.ah, splat (double 1.200000e+02) ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index
  store <2 x double> %i.ai, ptr %i.aj, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index
  store <2 x double> %i.ai, ptr %i.ak, align 8, !tbaa !8
  %index.next = or disjoint i64 %index, 2         ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.al = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind.next
  %i.am = trunc nuw nsw <2 x i64> %i.al to <2 x i32>
  %i.an = sitofp <2 x i32> %i.am to <2 x double>
  %i.ao = fmul nnan <2 x double> %i.an, splat (double 1.000000e+01)
  %i.ap = fdiv <2 x double> %i.ao, splat (double 1.200000e+02) ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index.next
  store <2 x double> %i.ap, ptr %i.aq, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index.next
  store <2 x double> %i.ap, ptr %i.ar, align 8, !tbaa !8
  %index.next.1 = add nuw nsw i64 %index, 4       ; 2 uses
  %vec.ind.next.1 = add nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.as = icmp eq i64 %index.next.1, 120
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !14

scalar.ph:                                        ; preds = %.preheader.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ 0, %.preheader.i ] ; 5 uses
  %i.at = sub nuw nsw i64 %i.ab, %indvars.iv.i
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = sitofp i32 %i.au to double
  %i.aw = fmul nnan double %i.av, 1.000000e+01
  %i.ax = fdiv double %i.aw, 1.200000e+02         ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  store double %i.ax, ptr %i.ay, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i
  store double %i.ax, ptr %i.az, align 8, !tbaa !8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.ba = sub nuw nsw i64 %i.ab, %indvars.iv.next.i
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = sitofp i32 %i.bb to double
  %i.bd = fmul nnan double %i.bc, 1.000000e+01
  %i.be = fdiv double %i.bd, 1.200000e+02         ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i
  store double %i.be, ptr %i.bf, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i
  store double %i.be, ptr %i.bg, align 8, !tbaa !8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 120
  br i1 %exitcond.not.i.1, label %middle.block, label %scalar.ph, !llvm.loop !18

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next30.i, 120
  br i1 %exitcond33.not.i, label %bb.e, label %.preheader.i, !llvm.loop !19

bb.e:                                             ; preds = %middle.block
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next35.i, 120
  br i1 %exitcond37.not.i, label %.preheader117.i, label %.preheader24.i, !llvm.loop !20

.preheader117.i:                                  ; preds = %bb.e, %bb.h
  %.0111124.i = phi i32 [ %i.gl, %bb.h ], [ 1, %bb.e ]
  br label %.preheader115.i

.preheader115.i:                                  ; preds = %bb.f, %.preheader117.i
  %indvar43 = phi i64 [ %indvar.next44, %bb.f ], [ 0, %.preheader117.i ] ; 2 uses
  %indvars.iv130.i = phi i64 [ %indvars.iv.next131.i, %bb.f ], [ 1, %.preheader117.i ] ; 3 uses
  %i.bh = mul nuw nsw i64 %indvar43, 115200       ; 4 uses
  %i.bi = getelementptr i8, ptr %i.r, i64 %i.bh
  %scevgep45 = getelementptr i8, ptr %i.bi, i64 116168
  %i.bj = getelementptr i8, ptr %i.r, i64 %i.bh
  %scevgep46 = getelementptr i8, ptr %i.bj, i64 229432
  %i.bk = getelementptr i8, ptr %i.e, i64 %i.bh
  %scevgep47 = getelementptr i8, ptr %i.bk, i64 968
  %i.bl = getelementptr i8, ptr %i.e, i64 %i.bh
  %scevgep48 = getelementptr i8, ptr %i.bl, i64 344632
  %i.bm = getelementptr inbounds nuw [115200 x i8], ptr %i.e, i64 %indvars.iv130.i ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 115200
  %i.bo = getelementptr i8, ptr %i.bm, i64 -115200
  %i.bp = getelementptr inbounds nuw [115200 x i8], ptr %i.r, i64 %indvars.iv130.i
  %bound049 = icmp ult ptr %scevgep45, %scevgep48
  %bound150 = icmp ult ptr %scevgep47, %scevgep46
  %found.conflict51 = and i1 %bound049, %bound150
  br label %.preheader113.i

.preheader113.i:                                  ; preds = %middle.block64, %.preheader115.i
  %indvars.iv126.i = phi i64 [ 1, %.preheader115.i ], [ %indvars.iv.next127.i, %middle.block64 ] ; 5 uses
  %i.bq = getelementptr inbounds nuw [960 x i8], ptr %i.bn, i64 %indvars.iv126.i ; 2 uses
  %i.br = getelementptr inbounds nuw [960 x i8], ptr %i.bm, i64 %indvars.iv126.i ; 5 uses
  %i.bs = getelementptr inbounds nuw [960 x i8], ptr %i.bo, i64 %indvars.iv126.i ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 960 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.br, i64 -960   ; 2 uses
  %i.bv = getelementptr inbounds nuw [960 x i8], ptr %i.bp, i64 %indvars.iv126.i ; 2 uses
  br i1 %found.conflict51, label %scalar.ph52, label %vector.body54

vector.body54:                                    ; preds = %.preheader113.i, %vector.body54
  %index55 = phi i64 [ %index.next63, %vector.body54 ], [ 0, %.preheader113.i ] ; 3 uses
  %i.bw = or disjoint i64 %index55, 1             ; 6 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bw
  %wide.load56 = load <2 x double>, ptr %i.bx, align 8, !tbaa !8, !alias.scope !21
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bw ; 2 uses
  %wide.load57 = load <2 x double>, ptr %i.by, align 8, !tbaa !8, !alias.scope !21 ; 4 uses
  %i.bz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load57, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load56)
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bw
  %wide.load58 = load <2 x double>, ptr %i.ca, align 8, !tbaa !8, !alias.scope !21
  %i.cb = fadd <2 x double> %i.bz, %wide.load58
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bw
  %wide.load59 = load <2 x double>, ptr %i.cc, align 8, !tbaa !8, !alias.scope !21
  %i.cd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load57, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load59)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bw
  %wide.load60 = load <2 x double>, ptr %i.ce, align 8, !tbaa !8, !alias.scope !21
  %i.cf = fadd <2 x double> %i.cd, %wide.load60
  %i.cg = fmul <2 x double> %i.cf, splat (double 1.250000e-01)
  %i.ch = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> splat (double 1.250000e-01), <2 x double> %i.cg)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index55
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load61 = load <2 x double>, ptr %i.cj, align 8, !tbaa !8, !alias.scope !21
  %i.ck = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load57, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load61)
  %i.cl = getelementptr i8, ptr %i.by, i64 -8
  %wide.load62 = load <2 x double>, ptr %i.cl, align 8, !tbaa !8, !alias.scope !21
  %i.cm = fadd <2 x double> %i.ck, %wide.load62
  %i.cn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> splat (double 1.250000e-01), <2 x double> %i.ch)
  %i.co = fadd <2 x double> %wide.load57, %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw
  store <2 x double> %i.co, ptr %i.cp, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  %index.next63 = add nuw i64 %index55, 2         ; 2 uses
  %i.cq = icmp eq i64 %index.next63, 118
  br i1 %i.cq, label %middle.block64, label %vector.body54, !llvm.loop !26

scalar.ph52:                                      ; preds = %.preheader113.i, %scalar.ph52
  %indvars.iv.i15 = phi i64 [ %indvars.iv.next.i16, %scalar.ph52 ], [ 1, %.preheader113.i ] ; 7 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i15
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i15 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i15
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !8
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i15
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !8
  %i.cy = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.cx, i64 1
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i15
  %i.db = load double, ptr %i.da, align 8, !tbaa !8
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i15, 1 ; 2 uses
  %i.dc = load <2 x double>, ptr %i.ct, align 8, !tbaa !8 ; 4 uses
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> splat (double -2.000000e+00), <2 x double> %i.cz)
  %i.df = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.dg = insertelement <2 x double> %i.df, double %i.db, i64 1
  %i.dh = fadd <2 x double> %i.de, %i.dg          ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 1
  %i.dj = fmul double %i.di, 1.250000e-01
  %i.dk = shufflevector <2 x double> %i.dh, <2 x double> %i.dc, <2 x i32> <i32 0, i32 2>
  %i.dl = insertelement <2 x double> %i.dc, double %i.dj, i64 0
  %i.dm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> <double 1.250000e-01, double -2.000000e+00>, <2 x double> %i.dl) ; 2 uses
  %i.dn = getelementptr i8, ptr %i.ct, i64 -8
  %i.do = load double, ptr %i.dn, align 8, !tbaa !8
  %i.dp = extractelement <2 x double> %i.dm, i64 1
  %i.dq = fadd double %i.dp, %i.do
  %i.dr = extractelement <2 x double> %i.dm, i64 0
  %i.ds = call double @llvm.fmuladd.f64(double %i.dq, double 1.250000e-01, double %i.dr)
  %i.dt = extractelement <2 x double> %i.dc, i64 0
  %i.du = fadd double %i.dt, %i.ds
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i15
  store double %i.du, ptr %i.dv, align 8, !tbaa !8
  %exitcond.not.i17 = icmp eq i64 %indvars.iv.next.i16, 119
  br i1 %exitcond.not.i17, label %middle.block64, label %scalar.ph52, !llvm.loop !27

middle.block64:                                   ; preds = %vector.body54, %scalar.ph52
  %indvars.iv.next127.i = add nuw nsw i64 %indvars.iv126.i, 1 ; 2 uses
  %exitcond129.not.i = icmp eq i64 %indvars.iv.next127.i, 119
  br i1 %exitcond129.not.i, label %bb.f, label %.preheader113.i, !llvm.loop !28

bb.f:                                             ; preds = %middle.block64
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %exitcond133.not.i = icmp eq i64 %indvars.iv.next131.i, 119
  %indvar.next44 = add i64 %indvar43, 1
  br i1 %exitcond133.not.i, label %.preheader114.i, label %.preheader115.i, !llvm.loop !29

.preheader114.i:                                  ; preds = %bb.f, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %bb.g ], [ 1, %bb.f ] ; 3 uses
  %i.dw = mul nuw nsw i64 %indvar, 115200         ; 4 uses
  %i.dx = getelementptr i8, ptr %i.e, i64 %i.dw
  %scevgep = getelementptr i8, ptr %i.dx, i64 116168
  %i.dy = getelementptr i8, ptr %i.e, i64 %i.dw
  %scevgep27 = getelementptr i8, ptr %i.dy, i64 229432
  %i.dz = getelementptr i8, ptr %i.r, i64 %i.dw
  %scevgep28 = getelementptr i8, ptr %i.dz, i64 968
  %i.ea = getelementptr i8, ptr %i.r, i64 %i.dw
  %scevgep29 = getelementptr i8, ptr %i.ea, i64 344632
  %i.eb = getelementptr inbounds nuw [115200 x i8], ptr %i.r, i64 %indvars.iv142.i ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 115200
  %i.ed = getelementptr i8, ptr %i.eb, i64 -115200
  %i.ee = getelementptr inbounds nuw [115200 x i8], ptr %i.e, i64 %indvars.iv142.i
  %bound0 = icmp ult ptr %scevgep, %scevgep29
  %bound1 = icmp ult ptr %scevgep28, %scevgep27
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader.i18

.preheader.i18:                                   ; preds = %middle.block41, %.preheader114.i
  %indvars.iv138.i = phi i64 [ 1, %.preheader114.i ], [ %indvars.iv.next139.i, %middle.block41 ] ; 5 uses
  %i.ef = getelementptr inbounds nuw [960 x i8], ptr %i.ec, i64 %indvars.iv138.i ; 2 uses
  %i.eg = getelementptr inbounds nuw [960 x i8], ptr %i.eb, i64 %indvars.iv138.i ; 5 uses
  %i.eh = getelementptr inbounds nuw [960 x i8], ptr %i.ed, i64 %indvars.iv138.i ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 960 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.eg, i64 -960   ; 2 uses
  %i.ek = getelementptr inbounds nuw [960 x i8], ptr %i.ee, i64 %indvars.iv138.i ; 2 uses
  br i1 %found.conflict, label %scalar.ph30, label %vector.body32

vector.body32:                                    ; preds = %.preheader.i18, %vector.body32
  %index33 = phi i64 [ %index.next40, %vector.body32 ], [ 0, %.preheader.i18 ] ; 3 uses
  %i.el = or disjoint i64 %index33, 1             ; 6 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.el
  %wide.load = load <2 x double>, ptr %i.em, align 8, !tbaa !8, !alias.scope !30
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.el ; 2 uses
  %wide.load34 = load <2 x double>, ptr %i.en, align 8, !tbaa !8, !alias.scope !30 ; 4 uses
  %i.eo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load34, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load)
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.el
  %wide.load35 = load <2 x double>, ptr %i.ep, align 8, !tbaa !8, !alias.scope !30
  %i.eq = fadd <2 x double> %i.eo, %wide.load35
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.el
  %wide.load36 = load <2 x double>, ptr %i.er, align 8, !tbaa !8, !alias.scope !30
  %i.es = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load34, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load36)
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.el
  %wide.load37 = load <2 x double>, ptr %i.et, align 8, !tbaa !8, !alias.scope !30
  %i.eu = fadd <2 x double> %i.es, %wide.load37
  %i.ev = fmul <2 x double> %i.eu, splat (double 1.250000e-01)
  %i.ew = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> splat (double 1.250000e-01), <2 x double> %i.ev)
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %index33
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %wide.load38 = load <2 x double>, ptr %i.ey, align 8, !tbaa !8, !alias.scope !30
  %i.ez = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load34, <2 x double> splat (double -2.000000e+00), <2 x double> %wide.load38)
  %i.fa = getelementptr i8, ptr %i.en, i64 -8
  %wide.load39 = load <2 x double>, ptr %i.fa, align 8, !tbaa !8, !alias.scope !30
  %i.fb = fadd <2 x double> %i.ez, %wide.load39
  %i.fc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fb, <2 x double> splat (double 1.250000e-01), <2 x double> %i.ew)
  %i.fd = fadd <2 x double> %wide.load34, %i.fc
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.el
  store <2 x double> %i.fd, ptr %i.fe, align 8, !tbaa !8, !alias.scope !33, !noalias !30
  %index.next40 = add nuw i64 %index33, 2         ; 2 uses
  %i.ff = icmp eq i64 %index.next40, 118
  br i1 %i.ff, label %middle.block41, label %vector.body32, !llvm.loop !35

scalar.ph30:                                      ; preds = %.preheader.i18, %scalar.ph30
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %scalar.ph30 ], [ 1, %.preheader.i18 ] ; 7 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv134.i
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !8
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv134.i ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv134.i
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !8
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv134.i
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !8
  %i.fn = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fo = insertelement <2 x double> %i.fn, double %i.fm, i64 1
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv134.i
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !8
  %indvars.iv.next135.i = add nuw nsw i64 %indvars.iv134.i, 1 ; 2 uses
  %i.fr = load <2 x double>, ptr %i.fi, align 8, !tbaa !8 ; 4 uses
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ft = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> splat (double -2.000000e+00), <2 x double> %i.fo)
  %i.fu = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.fq, i64 1
  %i.fw = fadd <2 x double> %i.ft, %i.fv          ; 2 uses
  %i.fx = extractelement <2 x double> %i.fw, i64 1
  %i.fy = fmul double %i.fx, 1.250000e-01
  %i.fz = shufflevector <2 x double> %i.fw, <2 x double> %i.fr, <2 x i32> <i32 0, i32 2>
  %i.ga = insertelement <2 x double> %i.fr, double %i.fy, i64 0
  %i.gb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> <double 1.250000e-01, double -2.000000e+00>, <2 x double> %i.ga) ; 2 uses
  %i.gc = getelementptr i8, ptr %i.fi, i64 -8
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !8
  %i.ge = extractelement <2 x double> %i.gb, i64 1
  %i.gf = fadd double %i.ge, %i.gd
  %i.gg = extractelement <2 x double> %i.gb, i64 0
  %i.gh = call double @llvm.fmuladd.f64(double %i.gf, double 1.250000e-01, double %i.gg)
  %i.gi = extractelement <2 x double> %i.fr, i64 0
  %i.gj = fadd double %i.gi, %i.gh
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv134.i
  store double %i.gj, ptr %i.gk, align 8, !tbaa !8
  %exitcond137.not.i = icmp eq i64 %indvars.iv.next135.i, 119
  br i1 %exitcond137.not.i, label %middle.block41, label %scalar.ph30, !llvm.loop !36

middle.block41:                                   ; preds = %vector.body32, %scalar.ph30
  %indvars.iv.next139.i = add nuw nsw i64 %indvars.iv138.i, 1 ; 2 uses
  %exitcond141.not.i = icmp eq i64 %indvars.iv.next139.i, 119
  br i1 %exitcond141.not.i, label %bb.g, label %.preheader.i18, !llvm.loop !37

bb.g:                                             ; preds = %middle.block41
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond145.not.i = icmp eq i64 %indvars.iv.next143.i, 119
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond145.not.i, label %bb.h, label %.preheader114.i, !llvm.loop !38

bb.h:                                             ; preds = %bb.g
  %i.gl = add nuw nsw i32 %.0111124.i, 1          ; 2 uses
  %exitcond146.not.i = icmp eq i32 %i.gl, 501
  br i1 %exitcond146.not.i, label %kernel_heat_3d.exit, label %.preheader117.i, !llvm.loop !39

kernel_heat_3d.exit:                              ; preds = %bb.h
  %i.gm = call noalias dereferenceable_or_null(1921) ptr @malloc(i64 noundef 1921) #15 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1920
  store i8 0, ptr %i.gn, align 1, !tbaa !40
  br label %.preheader22.i

.preheader22.i:                                   ; preds = %bb.k, %kernel_heat_3d.exit
  %indvars.iv31.i = phi i64 [ 0, %kernel_heat_3d.exit ], [ %indvars.iv.next32.i, %bb.k ] ; 2 uses
  %i.go = getelementptr inbounds nuw [115200 x i8], ptr %i.e, i64 %indvars.iv31.i
  br label %.preheader.i19

.preheader.i19:                                   ; preds = %bb.j, %.preheader22.i
  %indvars.iv27.i = phi i64 [ 0, %.preheader22.i ], [ %indvars.iv.next28.i, %bb.j ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [960 x i8], ptr %i.go, i64 %indvars.iv27.i
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i19
  %indvars.iv.i20 = phi i64 [ 0, %.preheader.i19 ], [ %indvars.iv.next.i21, %bb.i ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.i20
  %i.gr = shl nuw nsw i64 %indvars.iv.i20, 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gr
  %i.gt = load i64, ptr %i.gq, align 8, !tbaa !8  ; 4 uses
  %i.gu = lshr i64 %i.gt, 56
  %i.gv = trunc nuw i64 %i.gu to i8
  %i.gw = insertelement <2 x i64> poison, i64 %i.gt, i64 0
  %i.gx = shufflevector <2 x i64> %i.gw, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.gy = lshr <2 x i64> %i.gx, <i64 40, i64 48>
  %i.gz = trunc <2 x i64> %i.gy to <2 x i8>
  %i.ha = insertelement <4 x i64> poison, i64 %i.gt, i64 0
  %i.hb = shufflevector <4 x i64> %i.ha, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.hc = lshr <4 x i64> %i.hb, <i64 8, i64 16, i64 24, i64 32>
  %i.hd = trunc <4 x i64> %i.hc to <4 x i8>
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.gt to i8
  %i.he = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i.i, i64 0
  %i.hf = shufflevector <4 x i8> %i.hd, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hg = shufflevector <8 x i8> %i.he, <8 x i8> %i.hf, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.hh = shufflevector <2 x i8> %i.gz, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hi = shufflevector <8 x i8> %i.hg, <8 x i8> %i.hh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %i.hj = insertelement <8 x i8> %i.hi, i8 %i.gv, i64 7
  %i.hk = and <8 x i8> %i.hj, splat (i8 15)
  %i.hl = or disjoint <8 x i8> %i.hk, splat (i8 48)
  %i.hm = shufflevector <8 x i8> %i.hl, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.hm, ptr %i.gs, align 1, !tbaa !40
  %indvars.iv.next.i21 = add nuw nsw i64 %indvars.iv.i20, 1 ; 2 uses
  %exitcond.not.i22 = icmp eq i64 %indvars.iv.next.i21, 120
  br i1 %exitcond.not.i22, label %bb.j, label %bb.i, !llvm.loop !41

bb.j:                                             ; preds = %bb.i
  %i.hn = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ho = call i32 @fputs(ptr noundef nonnull %i.gm, ptr noundef %i.hn) #13 ; 0 uses
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next28.i, 120
  br i1 %exitcond30.not.i, label %bb.k, label %.preheader.i19, !llvm.loop !42

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next32.i, 120
  br i1 %exitcond34.not.i, label %print_array.exit, label %.preheader22.i, !llvm.loop !43

print_array.exit:                                 ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.gm) #12
  call void @free(ptr noundef nonnull %i.e) #12
  call void @free(ptr noundef %i.l) #12
  call void @free(ptr noundef %i.r) #12
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
