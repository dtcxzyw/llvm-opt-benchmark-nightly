Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/ad_aggregate_new?download=true
inline.NumInlined: 7
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ADIOI_Calc_file_realms:bb.a

ADIOI_Calc_file_realms_user_size.exit:            ; preds = %ADIOI_Calc_file_realms_user_size.exit.loopexit.unr-lcssa, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.bu = call ptr @ADIOI_Flatten_datatype(ptr noundef %i.az) #9 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.h, %bb.k, %ADIOI_Calc_file_realms_user_size.exit, %bb.l, %bb.j, %bb.g
  %.148 = phi ptr [ %.047, %bb.g ], [ %i.ad, %bb.j ], [ %i.ad, %bb.k ], [ %i.ad, %ADIOI_Calc_file_realms_user_size.exit ], [ %i.ad, %bb.l ], [ null, %bb.h ]
  %.1 = phi ptr [ %.0, %bb.g ], [ %i.ac, %bb.j ], [ %i.ac, %bb.k ], [ %i.ac, %ADIOI_Calc_file_realms_user_size.exit ], [ %i.ac, %bb.l ], [ null, %bb.h ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %.1, ptr %i.bv, align 8, !tbaa !38
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %.148, ptr %i.bw, align 8, !tbaa !39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @ADIOI_Malloc_fn(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Type_contiguous(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Type_commit(ptr noundef) local_unnamed_addr #2

declare ptr @ADIOI_Flatten_datatype(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ADIOI_Calc_file_realms_aar(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef captures(none) initializes((0, 8)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca [9 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = sub i64 %i.d, %3
  %i.f = add i64 %i.e, %4
  %i.g = sdiv i64 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !33   ; 2 uses
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = srem i64 %3, %i.l
  %i.n = sub nsw i64 %3, %i.m                     ; 2 uses
  %sext = shl i64 %i.g, 32
  %i.o = ashr exact i64 %sext, 32
  %i.p = add nsw i64 %i.o, %3                     ; 2 uses
  %i.q = srem i64 %i.p, %i.l                      ; 2 uses
  %i.r = add i64 %i.q, %i.n
  %i.s = sub i64 %i.p, %i.r
  %i.t = trunc i64 %i.s to i32
  %.not.i = icmp eq i64 %i.q, 0
  %i.u = select i1 %.not.i, i32 0, i32 %i.k
  %spec.select.i = add nsw i32 %i.u, %i.t         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.v = mul nsw i32 %spec.select.i, %1
  %i.w = sext i32 %i.v to i64
  %i.x = call i32 @PMPI_Type_contiguous(i32 noundef %spec.select.i, ptr noundef nonnull @ompi_mpi_byte, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.z = call i32 @MPI_Type_create_resized(ptr noundef %i.y, i64 noundef 0, i64 noundef %i.w, ptr noundef nonnull %i.b) #9 ; 0 uses
  %i.aa = call i32 @PMPI_Type_free(ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.ab = call i32 @PMPI_Type_commit(ptr noundef nonnull %i.b) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ac = icmp eq i32 %2, 1
  %storemerge = select i1 %i.ac, i64 0, i64 %i.n
  store i64 %storemerge, ptr %5, align 8, !tbaa !31
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !32  ; 6 uses
  store ptr %i.ad, ptr %6, align 8, !tbaa !32
  %i.ae = icmp sgt i32 %1, 1
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.af = sext i32 %spec.select.i to i64          ; 5 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %load_initial = load i64, ptr %5, align 8       ; 2 uses
  %i.ag = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.ag, 3                    ; 3 uses
  %i.ah = add nsw i32 %1, -2
  %i.ai = icmp ult i32 %i.ah, 3
  br i1 %i.ai, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ag, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph.new ], [ %i.at, %bb.b ]
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.aj = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.ak = add nsw i64 %store_forwarded, %i.af     ; 2 uses
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  store ptr %i.ad, ptr %i.al, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.next
  %i.an = add nsw i64 %i.ak, %i.af                ; 2 uses
  store i64 %i.an, ptr %i.am, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next
  store ptr %i.ad, ptr %i.ao, align 8, !tbaa !32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.next.1
  %i.aq = add nsw i64 %i.an, %i.af                ; 2 uses
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next.1
  store ptr %i.ad, ptr %i.ar, align 8, !tbaa !32
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.as = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.next.2
  %i.at = add nsw i64 %i.aq, %i.af                ; 3 uses
  store i64 %i.at, ptr %i.as, align 8, !tbaa !31
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next.2
  store ptr %i.ad, ptr %i.au, align 8, !tbaa !32
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !40

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod31 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod31)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.epil.preheader ], [ %i.aw, %bb.c ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.av = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.epil
  %i.aw = add nsw i64 %store_forwarded.epil, %i.af ; 2 uses
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.epil
  store ptr %i.ad, ptr %i.ax, align 8, !tbaa !32
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !41

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !30
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.bc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %spec.select.i) #9 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !42
  %i.bf = call i32 @PMPI_Info_set(ptr noundef %i.be, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.c) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void
}

; Function Attrs: nounwind uwtable
define void @ADIOI_Calc_file_realms_fsize(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %5 = alloca %struct.ADIO_Fcntl_t, align 8       ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  call void %i.g(ptr noundef %0, i32 noundef 200, ptr noundef nonnull %5, ptr noundef nonnull %i.b) #9
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !49
  %i.j = add nsw i64 %2, 1
  %i.k = call i64 @llvm.smax.i64(i64 %i.i, i64 %i.j)
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %1, -1
  %i.n = add i32 %i.m, %i.l
  %i.o = sdiv i32 %i.n, %1                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.p = mul nsw i32 %i.o, %1
  %i.q = sext i32 %i.p to i64
  %i.r = call i32 @PMPI_Type_contiguous(i32 noundef %i.o, ptr noundef nonnull @ompi_mpi_byte, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.t = call i32 @MPI_Type_create_resized(ptr noundef %i.s, i64 noundef 0, i64 noundef %i.q, ptr noundef nonnull %i.c) #9 ; 0 uses
  %i.u = call i32 @PMPI_Type_free(ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.v = call i32 @PMPI_Type_commit(ptr noundef nonnull %i.c) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.w = icmp sgt i32 %1, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.y = sext i32 %i.o to i64                     ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.x, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert21 = insertelement <2 x i64> poison, i64 %i.y, i64 0
  %broadcast.splat22 = shufflevector <2 x i64> %broadcast.splatinsert21, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %6 = mul nsw <2 x i64> %vec.ind, %broadcast.splat22
  %7 = mul nsw <2 x i64> %step.add, %broadcast.splat22
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x i64> %6, ptr %i.z, align 8, !tbaa !31
  store <2 x i64> %7, ptr %8, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.aa, align 8, !tbaa !32
  store <2 x ptr> %broadcast.splat, ptr %9, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ac = mul nsw i64 %indvars.iv.a, %i.y
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.a
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.a
  store ptr %i.x, ptr %i.ae, align 8, !tbaa !32
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void
}

; Function Attrs: nounwind uwtable
define void @ADIOI_Calc_file_realms_user_size(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33   ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = sext i32 %1 to i64
  %i.i = srem i64 %i.h, %i.g                      ; 2 uses
  %i.j = trunc nsw i64 %i.i to i32
  %i.k = sub i32 %1, %i.j
  %.not.i = icmp eq i64 %i.i, 0
  %i.l = select i1 %.not.i, i32 0, i32 %i.f
  %spec.select.i = add nsw i32 %i.l, %i.k         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.m = mul nsw i32 %spec.select.i, %2
  %i.n = sext i32 %i.m to i64
  %i.o = call i32 @PMPI_Type_contiguous(i32 noundef %spec.select.i, ptr noundef nonnull @ompi_mpi_byte, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.q = call i32 @MPI_Type_create_resized(ptr noundef %i.p, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull %i.b) #9 ; 0 uses
  %i.r = call i32 @PMPI_Type_free(ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.s = call i32 @PMPI_Type_commit(ptr noundef nonnull %i.b) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  store i64 0, ptr %3, align 8, !tbaa !31
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !32   ; 6 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !32
  %i.u = icmp sgt i32 %2, 1
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.v = sext i32 %spec.select.i to i64           ; 5 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %load_initial = load i64, ptr %3, align 8       ; 2 uses
  %i.w = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.w, 3                     ; 3 uses
  %i.x = add nsw i32 %2, -2
  %i.y = icmp ult i32 %i.x, 3
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.w, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph.new ], [ %i.aj, %bb.b ]
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.z = getelementptr [8 x i8], ptr %3, i64 %indvars.iv
  %i.aa = add nsw i64 %store_forwarded, %i.v      ; 2 uses
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store ptr %i.t, ptr %i.ab, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.ad = add nsw i64 %i.aa, %i.v                 ; 2 uses
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  store ptr %i.t, ptr %i.ae, align 8, !tbaa !32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.ag = add nsw i64 %i.ad, %i.v                 ; 2 uses
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.1
  store ptr %i.t, ptr %i.ah, align 8, !tbaa !32
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.aj = add nsw i64 %i.ag, %i.v                 ; 3 uses
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.2
  store ptr %i.t, ptr %i.ak, align 8, !tbaa !32
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !0

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %store_forwarded.epil.init = phi i64 [ %load_initial, %.lr.ph ], [ %i.aj, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod20)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %store_forwarded.epil = phi i64 [ %store_forwarded.epil.init, %.epil.preheader ], [ %i.am, %bb.c ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.al = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.epil
  %i.am = add nsw i64 %store_forwarded.epil, %i.v ; 2 uses
  store i64 %i.am, ptr %i.al, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.epil
  store ptr %i.t, ptr %i.an, align 8, !tbaa !32
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !52

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @ADIOI_Create_fr_simpletype(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = mul nsw i32 %1, %0
  %i.c = sext i32 %i.b to i64
  %i.d = call i32 @PMPI_Type_contiguous(i32 noundef %0, ptr noundef nonnull @ompi_mpi_byte, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.f = call i32 @MPI_Type_create_resized(ptr noundef %i.e, i64 noundef 0, i64 noundef %i.c, ptr noundef %2) #9 ; 0 uses
  %i.g = call i32 @PMPI_Type_free(ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.h = call i32 @PMPI_Type_commit(ptr noundef %2) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @PMPI_Info_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Type_create_resized(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Type_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @ADIOI_Verify_fr(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483648, 2147483647) i32 @ADIOI_Agg_idx(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !55
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit.split.loop.exit13

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !53

._crit_edge.loopexit.split.loop.exit13:           ; preds = %.lr.ph
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit13, %bb.a
  %.08 = phi i32 [ -1, %bb.a ], [ %i.j, %._crit_edge.loopexit.split.loop.exit13 ], [ -1, %bb.b ]
  ret i32 %.08
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !34}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"long long", !5, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS16ADIOI_Fns_struct", !11, i64 0}
!13 = !{!"p1 _ZTS19ompi_communicator_t", !11, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"p1 _ZTS15ompi_datatype_t", !11, i64 0}
!16 = !{!"p1 _ZTS18ADIOI_Hints_struct", !11, i64 0}
!17 = !{!"p1 _ZTS11ompi_info_t", !11, i64 0}
!18 = !{!"ompi_status_public_t", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !9, i64 16}
!19 = !{!"p1 _ZTS11ADIOI_FileD", !11, i64 0}
!20 = !{!"p1 _ZTS17ompi_errhandler_t", !11, i64 0}
!21 = !{!"p1 long long", !11, i64 0}
!22 = !{!"any p2 pointer", !11, i64 0}
!23 = !{!"p2 _ZTS15ompi_datatype_t", !22, i64 0}
!24 = !{!"p1 _ZTS10ompi_win_t", !11, i64 0}
!25 = !{!"ADIOI_FileD", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !9, i64 32, !10, i64 40, !10, i64 48, !12, i64 56, !13, i64 64, !6, i64 72, !6, i64 76, !14, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !10, i64 104, !15, i64 112, !15, i64 120, !10, i64 128, !16, i64 136, !17, i64 144, !6, i64 152, !18, i64 160, !15, i64 184, !14, i64 192, !19, i64 200, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !20, i64 224, !11, i64 232, !21, i64 240, !23, i64 248, !6, i64 256, !14, i64 264, !24, i64 272, !6, i64 280, !24, i64 288, !6, i64 296}
!26 = !{!25, !16, i64 136}
!27 = !{!"p1 int", !11, i64 0}
!28 = !{!"ADIOI_Hints_struct", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !14, i64 80, !27, i64 88, !5, i64 96}
!29 = !{!28, !6, i64 20}
!30 = !{!28, !6, i64 28}
!31 = !{!10, !10, i64 0}
!32 = !{!15, !15, i64 0}
!33 = !{!28, !6, i64 36}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !35}
!37 = !{!28, !6, i64 32}
!38 = !{!25, !21, i64 240}
!39 = !{!25, !23, i64 248}
!40 = distinct !{!40, !34}
!41 = distinct !{!41, !35}
!42 = !{!25, !17, i64 144}
!43 = distinct !{!43, !34, !50, !51}
!44 = distinct !{!44, !34, !51, !50}
!45 = !{!25, !12, i64 56}
!46 = !{!"ADIOI_Fns_struct", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !14, i64 192, !11, i64 200, !11, i64 208, !11, i64 216}
!47 = !{!46, !11, i64 56}
!48 = !{!"", !10, i64 0, !15, i64 8, !15, i64 16, !17, i64 24, !6, i64 32, !10, i64 40, !10, i64 48}
!49 = !{!48, !10, i64 40}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = distinct !{!52, !35}
!53 = distinct !{!53, !34}
!54 = !{!28, !27, i64 88}
!55 = !{!6, !6, i64 0}
end_hunk_0
