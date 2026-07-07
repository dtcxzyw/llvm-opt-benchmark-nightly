inline.NumInlined: 15
inline.NumDeleted: 8
loop-unroll.NumUnrolled: 2
begin_hunk_0_@polybench_flush_cache
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 {
bb.a:
  ret void
}

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
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store ptr null, ptr %i.d, align 8, !tbaa !10
  %i.e = call i32 @posix_memalign(ptr noundef nonnull %i.d, i64 noundef 4096, i64 noundef 11520000) #12
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !10   ; 8 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = icmp eq ptr %i.f, null
  %i.i = icmp ne i32 %i.e, 0
  %or.cond.i.i = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.k = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.j) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.l = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 11520000) #12
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !10   ; 9 uses
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = icmp eq ptr %i.m, null
  %i.p = icmp ne i32 %i.l, 0
  %or.cond.i.i25 = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond.i.i25, label %bb.c, label %polybench_alloc_data.exit26

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.r = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.q) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit26:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.s = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 9600000) #12
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !10   ; 14 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = icmp eq ptr %i.t, null
  %i.w = icmp ne i32 %i.s, 0
  %or.cond.i.i27 = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i.i27, label %bb.d, label %polybench_alloc_data.exit28

bb.d:                                             ; preds = %polybench_alloc_data.exit26
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.y = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.x) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit28:                      ; preds = %polybench_alloc_data.exit26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.z = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 9600000) #12
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !10  ; 14 uses
  %i.ab = icmp eq ptr %i.aa, null
  %i.ac = icmp ne i32 %i.z, 0
  %or.cond.i.i29 = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond.i.i29, label %bb.e, label %polybench_alloc_data.exit30

bb.e:                                             ; preds = %polybench_alloc_data.exit28
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ae = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.ad) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit30:                      ; preds = %polybench_alloc_data.exit28
  %i.af = ptrtoaddr ptr %i.aa to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ag = sub i64 %i.u, %i.af
  %diff.check = icmp ugt i64 %i.ag, -16
  br label %.preheader43.i

.preheader43.i:                                   ; preds = %middle.block, %polybench_alloc_data.exit30
  %indvars.iv49.i = phi i64 [ 0, %polybench_alloc_data.exit30 ], [ %indvars.iv.next50.i, %middle.block ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [8000 x i8], ptr %i.t, i64 %indvars.iv49.i ; 2 uses
  %i.ai = getelementptr inbounds nuw [8000 x i8], ptr %i.aa, i64 %indvars.iv49.i ; 2 uses
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader43.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv49.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.aj = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.ak = trunc <2 x i64> %i.aj to <2 x i32>      ; 2 uses
  %i.al = add <2 x i32> %i.ak, splat (i32 1)
  %i.am = urem <2 x i32> %i.al, splat (i32 1200)
  %i.an = uitofp nneg <2 x i32> %i.am to <2 x double>
  %i.ao = fdiv <2 x double> %i.an, splat (double 1.200000e+03)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index
  store <2 x double> %i.ao, ptr %i.ap, align 8, !tbaa !8
  %i.aq = add <2 x i32> %i.ak, splat (i32 2)
  %i.ar = urem <2 x i32> %i.aq, splat (i32 1000)
  %i.as = uitofp nneg <2 x i32> %i.ar to <2 x double>
  %i.at = fdiv <2 x double> %i.as, splat (double 1.000000e+03)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index
  store <2 x double> %i.at, ptr %i.au, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.av = icmp eq i64 %index.next, 1000
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !14

scalar.ph:                                        ; preds = %.preheader43.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %.preheader43.i ] ; 4 uses
  %i.aw = mul nuw nsw i64 %indvars.iv.i, %indvars.iv49.i
  %i.ax = trunc i64 %i.aw to i32                  ; 2 uses
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i
  %3 = add i32 %i.ax, 2
  %i.ay = add i32 %i.ax, 1
  %4 = urem i32 %3, 1000
  %i.az = urem i32 %i.ay, 1200
  %i.ba = uitofp nneg i32 %4 to double
  %5 = uitofp nneg i32 %i.az to double
  %6 = insertelement <2 x double> poison, double %5, i64 0
  %7 = insertelement <2 x double> %6, double %i.ba, i64 1
  %8 = fdiv <2 x double> %7, <double 1.200000e+03, double 1.000000e+03> ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0
  store double %9, ptr %2, align 8, !tbaa !8
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i
  %11 = extractelement <2 x double> %8, i64 1
  store double %11, ptr %10, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 1000
  br i1 %exitcond.not.i, label %middle.block, label %scalar.ph, !llvm.loop !18

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next50.i, 1200
  br i1 %exitcond52.not.i, label %.preheader.i.preheader, label %.preheader43.i, !llvm.loop !19

.preheader.i.preheader:                           ; preds = %middle.block
  %i.bb = sub i64 %i.g, %i.n
  %diff.check96 = icmp ugt i64 %i.bb, -16
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %middle.block106
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %middle.block106 ], [ 0, %.preheader.i.preheader ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [9600 x i8], ptr %i.f, i64 %indvars.iv57.i ; 3 uses
  %i.bd = getelementptr inbounds nuw [9600 x i8], ptr %i.m, i64 %indvars.iv57.i ; 3 uses
  br i1 %diff.check96, label %scalar.ph97, label %vector.ph98

vector.ph98:                                      ; preds = %.preheader.i
  %broadcast.splatinsert99 = insertelement <2 x i64> poison, i64 %indvars.iv57.i, i64 0
  %broadcast.splat100 = shufflevector <2 x i64> %broadcast.splatinsert99, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph98
  %index102 = phi i64 [ 0, %vector.ph98 ], [ %index.next104, %vector.body101 ] ; 3 uses
  %vec.ind103 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph98 ], [ %vec.ind.next105, %vector.body101 ] ; 2 uses
  %i.be = mul nuw nsw <2 x i64> %vec.ind103, %broadcast.splat100
  %i.bf = trunc <2 x i64> %i.be to <2 x i32>
  %i.bg = add <2 x i32> %i.bf, splat (i32 3)
  %i.bh = urem <2 x i32> %i.bg, splat (i32 1200)
  %i.bi = uitofp nneg <2 x i32> %i.bh to <2 x double>
  %i.bj = fdiv <2 x double> %i.bi, splat (double 1.000000e+03) ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index102
  store <2 x double> %i.bj, ptr %i.bk, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index102
  store <2 x double> %i.bj, ptr %i.bl, align 8, !tbaa !8
  %index.next104 = add nuw i64 %index102, 2       ; 2 uses
  %vec.ind.next105 = add nuw nsw <2 x i64> %vec.ind103, splat (i64 2)
  %i.bm = icmp eq i64 %index.next104, 1200
  br i1 %i.bm, label %middle.block106, label %vector.body101, !llvm.loop !20

scalar.ph97:                                      ; preds = %.preheader.i, %scalar.ph97
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i.1, %scalar.ph97 ], [ 0, %.preheader.i ] ; 5 uses
  %i.bn = mul nuw nsw i64 %indvars.iv53.i, %indvars.iv57.i
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bo, 3
  %i.bq = urem i32 %i.bp, 1200
  %i.br = uitofp nneg i32 %i.bq to double
  %i.bs = fdiv double %i.br, 1.000000e+03         ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv53.i
  store double %i.bs, ptr %i.bt, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv53.i
  store double %i.bs, ptr %i.bu, align 8, !tbaa !8
  %indvars.iv.next54.i = or disjoint i64 %indvars.iv53.i, 1 ; 3 uses
  %i.bv = mul nuw nsw i64 %indvars.iv.next54.i, %indvars.iv57.i
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = add nuw nsw i32 %i.bw, 3
  %i.by = urem i32 %i.bx, 1200
  %i.bz = uitofp nneg i32 %i.by to double
  %i.ca = fdiv double %i.bz, 1.000000e+03         ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next54.i
  store double %i.ca, ptr %i.cb, align 8, !tbaa !8
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next54.i
  store double %i.ca, ptr %i.cc, align 8, !tbaa !8
  %indvars.iv.next54.i.1 = add nuw nsw i64 %indvars.iv53.i, 2 ; 2 uses
  %exitcond56.not.i.1 = icmp eq i64 %indvars.iv.next54.i.1, 1200
  br i1 %exitcond56.not.i.1, label %middle.block106, label %scalar.ph97, !llvm.loop !21

middle.block106:                                  ; preds = %vector.body101, %scalar.ph97
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next58.i, 1200
  br i1 %exitcond60.not.i, label %.preheader36.i, label %.preheader.i, !llvm.loop !22

.preheader36.i:                                   ; preds = %middle.block106, %bb.f
  %indvars.iv57.i31 = phi i64 [ %indvars.iv.next58.i36, %bb.f ], [ 0, %middle.block106 ] ; 7 uses
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %bb.f ], [ 1, %middle.block106 ] ; 9 uses
  %i.cd = mul nuw nsw i64 %indvars.iv57.i31, 9600
  %scevgep = getelementptr nuw i8, ptr %i.f, i64 %i.cd
  %i.ce = mul nuw nsw i64 %indvars.iv57.i31, 9608
  %i.cf = getelementptr i8, ptr %i.f, i64 %i.ce
  %scevgep108 = getelementptr i8, ptr %i.cf, i64 8
  %i.cg = mul nuw nsw i64 %indvars.iv57.i31, 8000 ; 3 uses
  %scevgep109 = getelementptr i8, ptr %i.t, i64 %i.cg
  %i.ch = add nuw i64 %i.cg, 8000                 ; 2 uses
  %scevgep110 = getelementptr i8, ptr %i.t, i64 %i.ch
  %scevgep111 = getelementptr i8, ptr %i.aa, i64 %i.ch
  %scevgep112 = getelementptr i8, ptr %i.aa, i64 %i.cg
  %i.ci = getelementptr inbounds nuw [9600 x i8], ptr %i.f, i64 %indvars.iv57.i31 ; 4 uses
  %min.iters.check135 = icmp samesign ult i64 %indvars.iv55.i, 4
  br i1 %min.iters.check135, label %scalar.ph134.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %.preheader36.i
  %n.vec138 = and i64 %indvars.iv55.i, 9223372036854775804 ; 3 uses
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next143, %vector.body139 ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index140 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %wide.load141 = load <2 x double>, ptr %i.cj, align 8, !tbaa !8
  %wide.load142 = load <2 x double>, ptr %i.ck, align 8, !tbaa !8
  %i.cl = fmul <2 x double> %wide.load141, splat (double 1.200000e+00)
  %i.cm = fmul <2 x double> %wide.load142, splat (double 1.200000e+00)
  store <2 x double> %i.cl, ptr %i.cj, align 8, !tbaa !8
  store <2 x double> %i.cm, ptr %i.ck, align 8, !tbaa !8
  %index.next143 = add nuw i64 %index140, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next143, %n.vec138
  br i1 %i.cn, label %middle.block144, label %vector.body139, !llvm.loop !23

middle.block144:                                  ; preds = %vector.body139
  %cmp.n145 = icmp eq i64 %indvars.iv55.i, %n.vec138
  br i1 %cmp.n145, label %.preheader35.i, label %scalar.ph134.preheader

scalar.ph134.preheader:                           ; preds = %.preheader36.i, %middle.block144
  %indvars.iv.i32.ph = phi i64 [ 0, %.preheader36.i ], [ %n.vec138, %middle.block144 ]
  br label %scalar.ph134

.preheader35.i:                                   ; preds = %scalar.ph134, %middle.block144
  %i.co = getelementptr inbounds nuw [8000 x i8], ptr %i.aa, i64 %indvars.iv57.i31
  %i.cp = getelementptr inbounds nuw [8000 x i8], ptr %i.t, i64 %indvars.iv57.i31
  %i.cq = insertelement <4 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.cr = insertelement <4 x ptr> %i.cq, ptr %i.t, i64 1
  %i.cs = insertelement <4 x ptr> %i.cr, ptr %i.aa, i64 2
  %i.ct = insertelement <4 x ptr> %i.cs, ptr %scevgep112, i64 3
  %i.cu = insertelement <4 x ptr> poison, ptr %scevgep110, i64 0
  %i.cv = insertelement <4 x ptr> %i.cu, ptr %scevgep108, i64 1 ; 2 uses
  %i.cw = shufflevector <4 x ptr> %i.cv, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cx = shufflevector <4 x ptr> %i.cq, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.cy = insertelement <4 x ptr> %i.cx, ptr %scevgep109, i64 0
  %i.cz = insertelement <4 x ptr> poison, ptr %scevgep111, i64 0
  %i.da = shufflevector <4 x ptr> %i.cv, <4 x ptr> %i.cz, <4 x i32> <i32 1, i32 0, i32 4, i32 4>
  %min.iters.check = icmp samesign ult i64 %indvars.iv55.i, 2
  %i.db = icmp ult <4 x ptr> %i.ct, %i.cw
  %i.dc = icmp ult <4 x ptr> %i.cy, %i.da
  %i.dd = and <4 x i1> %i.dc, %i.db
  %i.de = bitcast <4 x i1> %i.dd to i4
  %.not = icmp eq i4 %i.de, 0
  %n.vec = and i64 %indvars.iv55.i, 9223372036854775806 ; 3 uses
  %cmp.n = icmp eq i64 %indvars.iv55.i, %n.vec
  br label %.preheader.i35

scalar.ph134:                                     ; preds = %scalar.ph134.preheader, %scalar.ph134
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i33, %scalar.ph134 ], [ %indvars.iv.i32.ph, %scalar.ph134.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i32 ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !8
  %i.dh = fmul double %i.dg, 1.200000e+00
  store double %i.dh, ptr %i.df, align 8, !tbaa !8
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, %indvars.iv55.i
  br i1 %exitcond.not.i34, label %.preheader35.i, label %scalar.ph134, !llvm.loop !24

.preheader.i35:                                   ; preds = %.loopexit198, %.preheader35.i
  %indvars.iv51.i = phi i64 [ 0, %.preheader35.i ], [ %indvars.iv.next52.i, %.loopexit198 ] ; 5 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv51.i ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv51.i ; 2 uses
  %invariant.gep38.i = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv51.i ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv51.i ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = select i1 %min.iters.check, i1 true, i1 %.not.not
  br i1 %brmerge, label %scalar.ph124.preheader, label %vector.ph125

vector.ph125:                                     ; preds = %.preheader.i35
  %i.dk = load double, ptr %i.di, align 8, !tbaa !8, !alias.scope !25
  %broadcast.splatinsert130 = insertelement <2 x double> poison, double %i.dk, i64 0
  %broadcast.splat131 = shufflevector <2 x double> %broadcast.splatinsert130, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dl = load double, ptr %i.dj, align 8, !tbaa !8, !alias.scope !28
  %broadcast.splatinsert128 = insertelement <2 x double> poison, double %i.dl, i64 0
  %broadcast.splat129 = shufflevector <2 x double> %broadcast.splatinsert128, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph125
  %index127 = phi i64 [ 0, %vector.ph125 ], [ %index.next132, %vector.body126 ] ; 5 uses
  %i.dm = or disjoint i64 %index127, 1            ; 2 uses
  %i.dn = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index127
  %i.do = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %i.dm
  %i.dp = load double, ptr %i.dn, align 8, !tbaa !8, !alias.scope !30
  %i.dq = load double, ptr %i.do, align 8, !tbaa !8, !alias.scope !30
  %i.dr = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.ds = insertelement <2 x double> %i.dr, double %i.dq, i64 1
  %i.dt = fmul <2 x double> %i.ds, splat (double 1.500000e+00)
  %i.du = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i, i64 %index127
  %i.dv = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i, i64 %i.dm
  %i.dw = load double, ptr %i.du, align 8, !tbaa !8, !alias.scope !32
  %i.dx = load double, ptr %i.dv, align 8, !tbaa !8, !alias.scope !32
  %i.dy = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.dx, i64 1
  %i.ea = fmul <2 x double> %i.dz, splat (double 1.500000e+00)
  %i.eb = fmul <2 x double> %i.ea, %broadcast.splat129
  %i.ec = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %broadcast.splat131, <2 x double> %i.eb)
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index127 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ed, align 8, !tbaa !8, !alias.scope !34, !noalias !36
  %i.ee = fadd <2 x double> %wide.load, %i.ec
  store <2 x double> %i.ee, ptr %i.ed, align 8, !tbaa !8, !alias.scope !34, !noalias !36
  %index.next132 = add nuw i64 %index127, 2       ; 2 uses
  %i.ef = icmp eq i64 %index.next132, %n.vec
  br i1 %i.ef, label %middle.block133, label %vector.body126, !llvm.loop !37

middle.block133:                                  ; preds = %vector.body126
end_hunk_0
