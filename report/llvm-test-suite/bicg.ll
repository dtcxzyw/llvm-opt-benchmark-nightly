inline.NumInlined: 15
inline.NumDeleted: 6
begin_hunk_0_@main:bb.a
  store ptr null, ptr %i.e, align 8, !tbaa !10
  %i.f = call i32 @posix_memalign(ptr noundef nonnull %i.e, i64 noundef 4096, i64 noundef 31920000) #12
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !10   ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = icmp ne i32 %i.f, 0
  %or.cond.i.i = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.k = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.j) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store ptr null, ptr %i.d, align 8, !tbaa !10
  %i.l = call i32 @posix_memalign(ptr noundef nonnull %i.d, i64 noundef 4096, i64 noundef 15200) #12
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !10   ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = icmp ne i32 %i.l, 0
  %or.cond.i.i20 = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i.i20, label %bb.c, label %polybench_alloc_data.exit21

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.q = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.p) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit21:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.r = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 16800) #12
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !10   ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = icmp ne i32 %i.r, 0
  %or.cond.i.i22 = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.i.i22, label %bb.d, label %polybench_alloc_data.exit23

bb.d:                                             ; preds = %polybench_alloc_data.exit21
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.w = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.v) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit23:                      ; preds = %polybench_alloc_data.exit21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.x = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 15200) #12
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !10   ; 5 uses
  %i.z = icmp eq ptr %i.y, null
  %i.aa = icmp ne i32 %i.x, 0
  %or.cond.i.i24 = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond.i.i24, label %bb.e, label %polybench_alloc_data.exit25

bb.e:                                             ; preds = %polybench_alloc_data.exit23
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ac = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.ab) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit25:                      ; preds = %polybench_alloc_data.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.ad = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 16800) #12
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !10  ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  %i.ag = icmp ne i32 %i.ad, 0
  %or.cond.i.i26 = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond.i.i26, label %bb.f, label %polybench_alloc_data.exit27

bb.f:                                             ; preds = %polybench_alloc_data.exit25
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ai = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.ah) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit27:                      ; preds = %polybench_alloc_data.exit25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %polybench_alloc_data.exit27
  %index = phi i64 [ 0, %polybench_alloc_data.exit27 ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %polybench_alloc_data.exit27 ], [ %vec.ind.next.1, %vector.body ] ; 3 uses
  %i.aj = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.ak = fdiv <2 x double> %i.aj, splat (double 1.900000e+03)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index
  store <2 x double> %i.ak, ptr %i.al, align 8, !tbaa !8
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.am = uitofp nneg <2 x i32> %vec.ind.next to <2 x double>
  %i.an = fdiv <2 x double> %i.am, splat (double 1.900000e+03)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x double> %i.an, ptr %i.ap, align 8, !tbaa !8
  %index.next.1 = add nuw nsw i64 %index, 4       ; 2 uses
  %vec.ind.next.1 = add <2 x i32> %vec.ind, splat (i32 4)
  %i.aq = icmp eq i64 %index.next.1, 1900
  br i1 %i.aq, label %.preheader.i, label %vector.body, !llvm.loop !14

.preheader.i:                                     ; preds = %vector.body, %middle.block48
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %middle.block48 ], [ 0, %vector.body ] ; 5 uses
  %i.ar = trunc nuw nsw i64 %indvars.iv37.i to i32
  %i.as = uitofp nneg i32 %i.ar to double
  %i.at = fdiv double %i.as, 2.100000e+03
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv37.i
  store double %i.at, ptr %i.au, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw [15200 x i8], ptr %i.g, i64 %indvars.iv37.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv37.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %.preheader.i
  %index44 = phi i64 [ 0, %.preheader.i ], [ %index.next46, %vector.body43 ] ; 2 uses
  %vec.ind45 = phi <2 x i64> [ <i64 0, i64 1>, %.preheader.i ], [ %vec.ind.next47, %vector.body43 ] ; 2 uses
  %i.aw = add nuw nsw <2 x i64> %vec.ind45, splat (i64 1)
  %i.ax = mul nuw nsw <2 x i64> %i.aw, %broadcast.splat
  %i.ay = trunc nuw nsw <2 x i64> %i.ax to <2 x i32>
  %i.az = urem <2 x i32> %i.ay, splat (i32 2100)
  %i.ba = uitofp nneg <2 x i32> %i.az to <2 x double>
  %i.bb = fdiv <2 x double> %i.ba, splat (double 2.100000e+03)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index44
  store <2 x double> %i.bb, ptr %i.bc, align 8, !tbaa !8
  %index.next46 = add nuw i64 %index44, 2         ; 2 uses
  %vec.ind.next47 = add nuw nsw <2 x i64> %vec.ind45, splat (i64 2)
  %i.bd = icmp eq i64 %index.next46, 1900
  br i1 %i.bd, label %middle.block48, label %vector.body43, !llvm.loop !18

middle.block48:                                   ; preds = %vector.body43
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next38.i, 2100
  br i1 %exitcond40.not.i, label %init_array.exit, label %.preheader.i, !llvm.loop !19

init_array.exit:                                  ; preds = %middle.block48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15200) %i.m, i8 0, i64 15200, i1 false), !tbaa !8
  br label %.preheader.i28

.preheader.i28:                                   ; preds = %bb.h, %init_array.exit
  %indvars.iv37.i29 = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next38.i33, %bb.h ] ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv37.i29 ; 3 uses
  store double 0.000000e+00, ptr %i.be, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv37.i29
  %i.bg = getelementptr inbounds nuw [15200 x i8], ptr %i.g, i64 %indvars.iv37.i29
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i28
  %indvars.iv.i30 = phi i64 [ 0, %.preheader.i28 ], [ %indvars.iv.next.i31, %bb.g ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i30 ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !8
  %i.bj = load double, ptr %i.bf, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i30 ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !8
  %i.bm = fmul double %i.bj, %i.bl
  %i.bn = fadd double %i.bi, %i.bm
  store double %i.bn, ptr %i.bh, align 8, !tbaa !8
  %i.bo = load double, ptr %i.be, align 8, !tbaa !8
  %i.bp = load double, ptr %i.bk, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i30
  %i.br = load double, ptr %i.bq, align 8, !tbaa !8
  %i.bs = fmul double %i.bp, %i.br
  %i.bt = fadd double %i.bo, %i.bs
  store double %i.bt, ptr %i.be, align 8, !tbaa !8
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i30, 1 ; 2 uses
  %exitcond.not.i32 = icmp eq i64 %indvars.iv.next.i31, 1900
  br i1 %exitcond.not.i32, label %bb.h, label %bb.g, !llvm.loop !20

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next38.i33 = add nuw nsw i64 %indvars.iv37.i29, 1 ; 2 uses
  %exitcond40.not.i34 = icmp eq i64 %indvars.iv.next38.i33, 2100
  br i1 %exitcond40.not.i34, label %kernel_bicg.exit, label %.preheader.i28, !llvm.loop !21

kernel_bicg.exit:                                 ; preds = %bb.h
  %i.bu = call noalias dereferenceable_or_null(33601) ptr @malloc(i64 noundef 33601) #15 ; 8 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 33600
  store i8 0, ptr %i.bv, align 1, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %kernel_bicg.exit
  %indvars.iv.i35 = phi i64 [ 0, %kernel_bicg.exit ], [ %indvars.iv.next.i36, %bb.i ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i35
  %i.bx = shl nuw nsw i64 %indvars.iv.i35, 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx
  %i.bz = load i64, ptr %i.bw, align 8, !tbaa !8  ; 8 uses
  %i.ca = lshr i64 %i.bz, 56
  %.sroa.0.6.extract.shift.i.i = lshr i64 %i.bz, 48
  %.sroa.0.5.extract.shift.i.i = lshr i64 %i.bz, 40
  %.sroa.0.4.extract.shift.i.i = lshr i64 %i.bz, 32
  %i.cb = lshr i64 %i.bz, 24
  %i.cc = lshr i64 %i.bz, 16
  %i.cd = lshr i64 %i.bz, 8
  %i.ce = trunc nuw i64 %i.ca to i8
  %.sroa.0.6.extract.trunc.i.i = trunc i64 %.sroa.0.6.extract.shift.i.i to i8
  %.sroa.0.5.extract.trunc.i.i = trunc i64 %.sroa.0.5.extract.shift.i.i to i8
  %.sroa.0.4.extract.trunc.i.i = trunc i64 %.sroa.0.4.extract.shift.i.i to i8
  %i.cf = trunc i64 %i.cb to i8
  %i.cg = trunc i64 %i.cc to i8
  %2 = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %3 = insertelement <2 x i64> %2, i64 %i.cd, i64 1
  %4 = trunc <2 x i64> %3 to <2 x i8>
  %5 = shufflevector <2 x i8> %4, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ch = insertelement <8 x i8> %5, i8 %i.cg, i64 2
  %i.ci = insertelement <8 x i8> %i.ch, i8 %i.cf, i64 3
  %i.cj = insertelement <8 x i8> %i.ci, i8 %.sroa.0.4.extract.trunc.i.i, i64 4
  %i.ck = insertelement <8 x i8> %i.cj, i8 %.sroa.0.5.extract.trunc.i.i, i64 5
  %i.cl = insertelement <8 x i8> %i.ck, i8 %.sroa.0.6.extract.trunc.i.i, i64 6
  %i.cm = insertelement <8 x i8> %i.cl, i8 %i.ce, i64 7
  %i.cn = and <8 x i8> %i.cm, splat (i8 15)
  %i.co = or disjoint <8 x i8> %i.cn, splat (i8 48)
  %i.cp = shufflevector <8 x i8> %i.co, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.cp, ptr %i.by, align 1, !tbaa !22
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1 ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %indvars.iv.next.i36, 1900
  br i1 %exitcond.not.i37, label %bb.j, label %bb.i, !llvm.loop !23

bb.j:                                             ; preds = %bb.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bu, i64 1900
  store i8 0, ptr %i.cq, align 1, !tbaa !22
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.cs = call i32 @fputs(ptr noundef nonnull %i.bu, ptr noundef %i.cr) #13 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %indvars.iv38.i = phi i64 [ 0, %bb.j ], [ %indvars.iv.next39.i, %bb.k ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv38.i
  %i.cu = shl nuw nsw i64 %indvars.iv38.i, 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.cu
  %i.cw = load i64, ptr %i.ct, align 8, !tbaa !8  ; 8 uses
  %i.cx = lshr i64 %i.cw, 56
  %.sroa.0.6.extract.shift.i32.i = lshr i64 %i.cw, 48
  %.sroa.0.5.extract.shift.i30.i = lshr i64 %i.cw, 40
  %.sroa.0.4.extract.shift.i28.i = lshr i64 %i.cw, 32
  %i.cy = lshr i64 %i.cw, 24
  %i.cz = lshr i64 %i.cw, 16
  %i.da = lshr i64 %i.cw, 8
  %i.db = trunc nuw i64 %i.cx to i8
  %.sroa.0.6.extract.trunc.i33.i = trunc i64 %.sroa.0.6.extract.shift.i32.i to i8
  %.sroa.0.5.extract.trunc.i31.i = trunc i64 %.sroa.0.5.extract.shift.i30.i to i8
  %.sroa.0.4.extract.trunc.i29.i = trunc i64 %.sroa.0.4.extract.shift.i28.i to i8
  %i.dc = trunc i64 %i.cy to i8
  %i.dd = trunc i64 %i.cz to i8
  %6 = insertelement <2 x i64> poison, i64 %i.cw, i64 0
  %7 = insertelement <2 x i64> %6, i64 %i.da, i64 1
  %8 = trunc <2 x i64> %7 to <2 x i8>
  %9 = shufflevector <2 x i8> %8, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.de = insertelement <8 x i8> %9, i8 %i.dd, i64 2
  %i.df = insertelement <8 x i8> %i.de, i8 %i.dc, i64 3
  %i.dg = insertelement <8 x i8> %i.df, i8 %.sroa.0.4.extract.trunc.i29.i, i64 4
  %i.dh = insertelement <8 x i8> %i.dg, i8 %.sroa.0.5.extract.trunc.i31.i, i64 5
  %i.di = insertelement <8 x i8> %i.dh, i8 %.sroa.0.6.extract.trunc.i33.i, i64 6
  %i.dj = insertelement <8 x i8> %i.di, i8 %i.db, i64 7
  %i.dk = and <8 x i8> %i.dj, splat (i8 15)
  %i.dl = or disjoint <8 x i8> %i.dk, splat (i8 48)
  %i.dm = shufflevector <8 x i8> %i.dl, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.dm, ptr %i.cv, align 1, !tbaa !22
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next39.i, 2100
  br i1 %exitcond41.not.i, label %print_array.exit, label %bb.k, !llvm.loop !24

print_array.exit:                                 ; preds = %bb.k
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bu, i64 2100
  store i8 0, ptr %i.dn, align 1, !tbaa !22
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.dp = call i32 @fputs(ptr noundef nonnull %i.bu, ptr noundef %i.do) #13 ; 0 uses
  call void @free(ptr noundef nonnull %i.bu) #12
  call void @free(ptr noundef nonnull %i.g) #12
  call void @free(ptr noundef nonnull %i.m) #12
  call void @free(ptr noundef nonnull %i.s) #12
  call void @free(ptr noundef nonnull %i.y) #12
  call void @free(ptr noundef nonnull %i.ae) #12
  ret i32 0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !15, !16, !17}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = !{!6, !6, i64 0}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
end_hunk_0
