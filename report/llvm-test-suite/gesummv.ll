inline.NumInlined: 14
inline.NumDeleted: 6
begin_hunk_0_@polybench_prepare_instruments:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #3 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_start, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #3 {
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
  tail call void @free(ptr noundef %0) #11
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = sext i32 %1 to i64
  %i.c = mul i64 %0, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #11
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store ptr null, ptr %i.e, align 8, !tbaa !10
  %i.f = call i32 @posix_memalign(ptr noundef nonnull %i.e, i64 noundef 4096, i64 noundef 64800) #11
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !10   ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = icmp eq ptr %i.g, null
  %i.j = icmp ne i32 %i.f, 0
  %or.cond.i.i = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.l = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.k) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store ptr null, ptr %i.d, align 8, !tbaa !10
  %i.m = call i32 @posix_memalign(ptr noundef nonnull %i.d, i64 noundef 4096, i64 noundef 64800) #11
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !10   ; 5 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = icmp eq ptr %i.n, null
  %i.q = icmp ne i32 %i.m, 0
  %or.cond.i.i16 = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond.i.i16, label %bb.c, label %polybench_alloc_data.exit17

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.s = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.r) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit17:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.t = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 720) #11
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !10   ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = icmp ne i32 %i.t, 0
  %or.cond.i.i18 = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i.i18, label %bb.d, label %polybench_alloc_data.exit19

bb.d:                                             ; preds = %polybench_alloc_data.exit17
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.y = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.x) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit19:                      ; preds = %polybench_alloc_data.exit17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.z = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 720) #11
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !10  ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  %i.ac = icmp ne i32 %i.z, 0
  %or.cond.i.i20 = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond.i.i20, label %bb.e, label %polybench_alloc_data.exit21

bb.e:                                             ; preds = %polybench_alloc_data.exit19
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ae = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.ad) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit21:                      ; preds = %polybench_alloc_data.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.af = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 720) #11
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !10  ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  %i.ai = icmp ne i32 %i.af, 0
  %or.cond.i.i22 = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %or.cond.i.i22, label %bb.f, label %polybench_alloc_data.exit23

bb.f:                                             ; preds = %polybench_alloc_data.exit21
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ak = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.aj) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit23:                      ; preds = %polybench_alloc_data.exit21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.al = sub i64 %i.h, %i.o
  %diff.check = icmp ugt i64 %i.al, -16
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %middle.block, %polybench_alloc_data.exit23
  %indvars.iv31.i = phi i64 [ 0, %polybench_alloc_data.exit23 ], [ %indvars.iv.next32.i, %middle.block ] ; 7 uses
  %i.am = trunc nuw nsw i64 %indvars.iv31.i to i32
  %i.an = uitofp nneg i32 %i.am to double
  %i.ao = fdiv double %i.an, 9.000000e+01
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv31.i
  store double %i.ao, ptr %i.ap, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw [720 x i8], ptr %i.g, i64 %indvars.iv31.i ; 2 uses
  %i.ar = getelementptr inbounds nuw [720 x i8], ptr %i.n, i64 %indvars.iv31.i ; 2 uses
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv31.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.as = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.at = trunc <2 x i64> %i.as to <2 x i32>      ; 2 uses
  %i.au = add <2 x i32> %i.at, splat (i32 1)
  %i.av = urem <2 x i32> %i.au, splat (i32 90)
  %i.aw = uitofp nneg <2 x i32> %i.av to <2 x double>
  %i.ax = fdiv <2 x double> %i.aw, splat (double 9.000000e+01)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index
  store <2 x double> %i.ax, ptr %i.ay, align 8, !tbaa !8
  %i.az = add <2 x i32> %i.at, splat (i32 2)
  %i.ba = urem <2 x i32> %i.az, splat (i32 90)
  %i.bb = uitofp nneg <2 x i32> %i.ba to <2 x double>
  %i.bc = fdiv <2 x double> %i.bb, splat (double 9.000000e+01)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %index
  store <2 x double> %i.bc, ptr %i.bd, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.be = icmp eq i64 %index.next, 90
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !14

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %vector.memcheck ] ; 4 uses
  %i.bf = mul nuw nsw i64 %indvars.iv.i, %indvars.iv31.i
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i
  %2 = insertelement <2 x i32> poison, i32 %i.bg, i64 0
  %3 = shufflevector <2 x i32> %2, <2 x i32> poison, <2 x i32> zeroinitializer
  %4 = add <2 x i32> %3, <i32 1, i32 2>
  %5 = urem <2 x i32> %4, splat (i32 90)
  %6 = uitofp nneg <2 x i32> %5 to <2 x double>
  %i.bi = fdiv <2 x double> %6, splat (double 9.000000e+01) ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0
  store double %i.bj, ptr %i.bh, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i
  %i.bl = extractelement <2 x double> %i.bi, i64 1
  store double %i.bl, ptr %i.bk, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 90
  br i1 %exitcond.not.i, label %middle.block, label %scalar.ph, !llvm.loop !18

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next32.i, 90
  br i1 %exitcond34.not.i, label %init_array.exit, label %vector.memcheck, !llvm.loop !19

init_array.exit:                                  ; preds = %middle.block, %bb.h
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %bb.h ], [ 0, %middle.block ] ; 5 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv40.i ; 4 uses
  store double 0.000000e+00, ptr %i.bm, align 8, !tbaa !8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv40.i ; 4 uses
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !8
  %i.bo = getelementptr inbounds nuw [720 x i8], ptr %i.g, i64 %indvars.iv40.i
  %i.bp = getelementptr inbounds nuw [720 x i8], ptr %i.n, i64 %indvars.iv40.i
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %init_array.exit
  %indvars.iv.i24 = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next.i25, %bb.g ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i24
  %i.br = load double, ptr %i.bq, align 8, !tbaa !8
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i24 ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !8
  %i.bu = fmul double %i.br, %i.bt
  %i.bv = load double, ptr %i.bm, align 8, !tbaa !8
  %i.bw = fadd double %i.bu, %i.bv
  store double %i.bw, ptr %i.bm, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i24
  %i.by = load double, ptr %i.bx, align 8, !tbaa !8
  %i.bz = load double, ptr %i.bs, align 8, !tbaa !8
  %i.ca = fmul double %i.by, %i.bz
  %i.cb = load double, ptr %i.bn, align 8, !tbaa !8
  %i.cc = fadd double %i.ca, %i.cb                ; 2 uses
  store double %i.cc, ptr %i.bn, align 8, !tbaa !8
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i24, 1 ; 2 uses
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next.i25, 90
  br i1 %exitcond.not.i26, label %bb.h, label %bb.g, !llvm.loop !20

bb.h:                                             ; preds = %bb.g
  %i.cd = load double, ptr %i.bm, align 8, !tbaa !8
  %i.ce = fmul double %i.cd, 1.500000e+00
  %i.cf = fmul double %i.cc, 1.200000e+00
  %i.cg = fadd double %i.cf, %i.ce
  store double %i.cg, ptr %i.bn, align 8, !tbaa !8
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next41.i, 90
  br i1 %exitcond43.not.i, label %kernel_gesummv.exit, label %init_array.exit, !llvm.loop !21

kernel_gesummv.exit:                              ; preds = %bb.h
  %i.ch = call noalias dereferenceable_or_null(1441) ptr @malloc(i64 noundef 1441) #14 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1440
  store i8 0, ptr %i.ci, align 1, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %kernel_gesummv.exit
  %indvars.iv.i27 = phi i64 [ 0, %kernel_gesummv.exit ], [ %indvars.iv.next.i28, %bb.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i27
  %i.ck = shl nuw nsw i64 %indvars.iv.i27, 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck
  %i.cm = load i64, ptr %i.cj, align 8, !tbaa !8  ; 4 uses
  %i.cn = lshr i64 %i.cm, 56
  %i.co = trunc nuw i64 %i.cn to i8
  %i.cp = insertelement <2 x i64> poison, i64 %i.cm, i64 0
  %i.cq = shufflevector <2 x i64> %i.cp, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cr = lshr <2 x i64> %i.cq, <i64 40, i64 48>
  %i.cs = trunc <2 x i64> %i.cr to <2 x i8>
  %i.ct = insertelement <4 x i64> poison, i64 %i.cm, i64 0
  %i.cu = shufflevector <4 x i64> %i.ct, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cv = lshr <4 x i64> %i.cu, <i64 8, i64 16, i64 24, i64 32>
  %i.cw = trunc <4 x i64> %i.cv to <4 x i8>
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.cm to i8
  %i.cx = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i.i, i64 0
  %i.cy = shufflevector <4 x i8> %i.cw, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cz = shufflevector <8 x i8> %i.cx, <8 x i8> %i.cy, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.da = shufflevector <2 x i8> %i.cs, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.db = shufflevector <8 x i8> %i.cz, <8 x i8> %i.da, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %i.dc = insertelement <8 x i8> %i.db, i8 %i.co, i64 7
  %i.dd = and <8 x i8> %i.dc, splat (i8 15)
  %i.de = or disjoint <8 x i8> %i.dd, splat (i8 48)
  %i.df = shufflevector <8 x i8> %i.de, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.df, ptr %i.cl, align 1, !tbaa !22
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1 ; 2 uses
  %exitcond.not.i29 = icmp eq i64 %indvars.iv.next.i28, 90
  br i1 %exitcond.not.i29, label %print_array.exit, label %bb.i, !llvm.loop !23

print_array.exit:                                 ; preds = %bb.i
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.dh = call i32 @fputs(ptr noundef nonnull %i.ch, ptr noundef %i.dg) #12 ; 0 uses
  call void @free(ptr noundef nonnull %i.ch) #11
  call void @free(ptr noundef nonnull %i.g) #11
  call void @free(ptr noundef nonnull %i.n) #11
  call void @free(ptr noundef nonnull %i.u) #11
  call void @free(ptr noundef nonnull %i.aa) #11
  call void @free(ptr noundef nonnull %i.ag) #11
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
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }

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
!18 = distinct !{!18, !15, !16}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = !{!6, !6, i64 0}
!23 = distinct !{!23, !15}
end_hunk_0
