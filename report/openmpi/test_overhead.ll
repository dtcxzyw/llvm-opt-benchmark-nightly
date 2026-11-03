Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/test_overhead?download=true
inline.NumInlined: 21
inline.NumDeleted: 3
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
  %i.df = icmp slt i32 %.046, %i.de
  %i.dg = add nsw i32 %.046, 1
  %i.dh = sitofp i32 %i.dg to double
  %i.di = select i1 %i.df, double %i.dd, double %i.dh
  %i.dj = fptosi double %i.di to i32              ; 3 uses
  %i.dk = sitofp i32 %i.dj to double
  %i.dl = icmp slt i32 %i.dj, 1468007
  br i1 %i.dl, label %bb.k, label %bb.t, !llvm.loop !22

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef %.2) #13
  %i.dm = add nuw nsw i32 %.03747, 1              ; 2 uses
  %exitcond49.not = icmp eq i32 %i.dm, 6
  br i1 %exitcond49.not, label %bb.u, label %bb.b, !llvm.loop !23

bb.u:                                             ; preds = %bb.t
  %i.dn = call i32 @MPI_Finalize() #13            ; 0 uses
  call void @llvm.stackrestore.p0(ptr %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @MPI_Init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Comm_rank(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Comm_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @op_send(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.b = load i32, ptr @from, align 4, !tbaa !9
  %i.c = call i32 @MPI_Irecv(ptr noundef %4, i32 noundef %2, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.b, i32 noundef %3, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.d = load i32, ptr @rank_world, align 4, !tbaa !9
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @from, align 4, !tbaa !9
  %i.g = call i32 @MPI_Send(ptr noundef null, i32 noundef 0, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.f, i32 noundef 100, ptr noundef nonnull @ompi_mpi_comm_world) #13 ; 0 uses
  %i.h = load i32, ptr @to, align 4, !tbaa !9
  %i.i = call i32 @MPI_Recv(ptr noundef null, i32 noundef 0, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.h, i32 noundef 100, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef null) #13 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = load i32, ptr @to, align 4, !tbaa !9
  %i.k = call i32 @MPI_Recv(ptr noundef null, i32 noundef 0, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.j, i32 noundef 100, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef null) #13 ; 0 uses
  %i.l = load i32, ptr @from, align 4, !tbaa !9
  %i.m = call i32 @MPI_Send(ptr noundef null, i32 noundef 0, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.l, i32 noundef 100, ptr noundef nonnull @ompi_mpi_comm_world) #13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %5) #13 ; 0 uses
  %i.o = load i32, ptr @to, align 4, !tbaa !9
  %i.p = call i32 @MPI_Send(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.o, i32 noundef %3, ptr noundef nonnull @ompi_mpi_comm_world) #13 ; 0 uses
  %i.q = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %6) #13 ; 0 uses
  %i.r = call i32 @MPI_Wait(ptr noundef nonnull %i.a, ptr noundef null) #13 ; 0 uses
  %.val = load i64, ptr %5, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val6 = load i64, ptr %i.s, align 8, !tbaa !18
  %.val7 = load i64, ptr %6, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val8 = load i64, ptr %i.t, align 8, !tbaa !18
  %i.u = sub nsw i64 %.val7, %.val
  %i.v = sitofp i64 %i.u to double
  %i.w = sub nsw i64 %.val8, %.val6
  %i.x = sitofp i64 %i.w to double
  %i.y = fdiv double %i.x, 1.000000e+03
  %i.z = call double @llvm.fmuladd.f64(double %i.v, double 1.000000e+06, double %i.y)
  store double %i.z, ptr %0, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @op_coll(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1, i32 noundef %2, i32 %3, ptr nofree readnone captures(none) %4) unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.a = tail call i32 @MPI_Barrier(ptr noundef nonnull @ompi_mpi_comm_world) #13 ; 0 uses
  %i.b = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %5) #13 ; 0 uses
  %i.c = call i32 @MPI_Bcast(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 0, ptr noundef nonnull @ompi_mpi_comm_world) #13 ; 0 uses
  %i.d = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %6) #13 ; 0 uses
  %.val = load i64, ptr %5, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val2 = load i64, ptr %i.e, align 8, !tbaa !18
  %.val3 = load i64, ptr %6, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val4 = load i64, ptr %i.f, align 8, !tbaa !18
  %i.g = sub nsw i64 %.val3, %.val
  %i.h = sitofp i64 %i.g to double
  %i.i = sub nsw i64 %.val4, %.val2
  %i.j = sitofp i64 %i.i to double
  %i.k = fdiv double %i.j, 1.000000e+03
  %i.l = call double @llvm.fmuladd.f64(double %i.h, double 1.000000e+06, double %i.k)
  store double %i.l, ptr %0, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @op_a2a(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1, i32 noundef %2, i32 %3, ptr noundef %4) unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.a = tail call i32 @MPI_Barrier(ptr noundef nonnull @ompi_mpi_comm_world) #13 ; 0 uses
  %i.b = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %5) #13 ; 0 uses
  %i.c = call i32 @MPI_Alltoall(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @ompi_mpi_byte, ptr noundef %4, i32 noundef %2, ptr noundef nonnull @ompi_mpi_byte, ptr noundef nonnull @ompi_mpi_comm_world) #13 ; 0 uses
  %i.d = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %6) #13 ; 0 uses
  %.val = load i64, ptr %5, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val4 = load i64, ptr %i.e, align 8, !tbaa !18
  %.val5 = load i64, ptr %6, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val6 = load i64, ptr %i.f, align 8, !tbaa !18
  %i.g = sub nsw i64 %.val5, %.val
  %i.h = sitofp i64 %i.g to double
  %i.i = sub nsw i64 %.val6, %.val4
  %i.j = sitofp i64 %i.i to double
  %i.k = fdiv double %i.j, 1.000000e+03
  %i.l = call double @llvm.fmuladd.f64(double %i.h, double 1.000000e+06, double %i.k)
  store double %i.l, ptr %0, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @op_send_pingpong(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 6 uses
  %6 = alloca %struct.timespec, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.a = tail call i32 @MPI_Barrier(ptr noundef nonnull @ompi_mpi_comm_world) #13 ; 0 uses
  %i.b = load i32, ptr @rank_world, align 4, !tbaa !9
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @from, align 4, !tbaa !9
  %i.e = tail call i32 @MPI_Recv(ptr noundef %4, i32 noundef %2, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.d, i32 noundef %3, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef null) #13 ; 0 uses
  %i.f = load i32, ptr @from, align 4, !tbaa !9
  %i.g = tail call i32 @MPI_Send(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.f, i32 noundef %3, ptr noundef nonnull @ompi_mpi_comm_world) #13 ; 0 uses
  %i.h = tail call i32 @MPI_Barrier(ptr noundef nonnull @ompi_mpi_comm_world) #13 ; 0 uses
  %i.i = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %5) #13 ; 0 uses
  %i.j = load i32, ptr @from, align 4, !tbaa !9
  %i.k = call i32 @MPI_Send(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.j, i32 noundef %3, ptr noundef nonnull @ompi_mpi_comm_world) #13 ; 0 uses
  %i.l = load i32, ptr @from, align 4, !tbaa !9
  %i.m = call i32 @MPI_Recv(ptr noundef %4, i32 noundef %2, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.l, i32 noundef %3, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef null) #13 ; 0 uses
  %i.n = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %6) #13 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %5) #13 ; 0 uses
  %i.p = load i32, ptr @to, align 4, !tbaa !9
  %i.q = call i32 @MPI_Send(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.p, i32 noundef %3, ptr noundef nonnull @ompi_mpi_comm_world) #13 ; 0 uses
  %i.r = load i32, ptr @to, align 4, !tbaa !9
  %i.s = call i32 @MPI_Recv(ptr noundef %4, i32 noundef %2, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.r, i32 noundef %3, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef null) #13 ; 0 uses
  %i.t = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %6) #13 ; 0 uses
  %i.u = call i32 @MPI_Barrier(ptr noundef nonnull @ompi_mpi_comm_world) #13 ; 0 uses
  %i.v = load i32, ptr @to, align 4, !tbaa !9
  %i.w = call i32 @MPI_Recv(ptr noundef %4, i32 noundef %2, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.v, i32 noundef %3, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef null) #13 ; 0 uses
  %i.x = load i32, ptr @to, align 4, !tbaa !9
  %i.y = call i32 @MPI_Send(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.x, i32 noundef %3, ptr noundef nonnull @ompi_mpi_comm_world) #13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.val = load i64, ptr %5, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val24 = load i64, ptr %i.z, align 8, !tbaa !18
  %.val25 = load i64, ptr %6, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val26 = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.ab = sub nsw i64 %.val25, %.val
  %i.ac = sitofp i64 %i.ab to double
  %i.ad = sub nsw i64 %.val26, %.val24
  %i.ae = sitofp i64 %i.ad to double
  %i.af = fdiv nnan double %i.ae, 1.000000e+03
  %i.ag = call double @llvm.fmuladd.f64(double %i.ac, double 1.000000e+06, double %i.af)
  %i.ah = fmul double %i.ag, 5.000000e-01
  store double %i.ah, ptr %0, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @op_put(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1, i32 noundef %2, i32 %3, ptr nofree readnone captures(none) %4) unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.a = load i32, ptr @to, align 4, !tbaa !9
  %i.b = load ptr, ptr @win, align 8, !tbaa !12
  %i.c = tail call i32 @MPI_Win_lock(i32 noundef 1, i32 noundef %i.a, i32 noundef 0, ptr noundef %i.b) #13 ; 0 uses
  %i.d = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %5) #13 ; 0 uses
  %i.e = load i32, ptr @to, align 4, !tbaa !9
  %i.f = load ptr, ptr @win, align 8, !tbaa !12
  %i.g = call i32 @MPI_Put(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.e, i64 noundef 0, i32 noundef %2, ptr noundef nonnull @ompi_mpi_byte, ptr noundef %i.f) #13 ; 0 uses
  %i.h = load i32, ptr @to, align 4, !tbaa !9
  %i.i = load ptr, ptr @win, align 8, !tbaa !12
  %i.j = call i32 @MPI_Win_unlock(i32 noundef %i.h, ptr noundef %i.i) #13 ; 0 uses
  %i.k = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %6) #13 ; 0 uses
  %.val = load i64, ptr %5, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val3 = load i64, ptr %i.l, align 8, !tbaa !18
  %.val4 = load i64, ptr %6, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val5 = load i64, ptr %i.m, align 8, !tbaa !18
  %i.n = sub nsw i64 %.val4, %.val
  %i.o = sitofp i64 %i.n to double
  %i.p = sub nsw i64 %.val5, %.val3
  %i.q = sitofp i64 %i.p to double
  %i.r = fdiv double %i.q, 1.000000e+03
  %i.s = call double @llvm.fmuladd.f64(double %i.o, double 1.000000e+06, double %i.r)
  store double %i.s, ptr %0, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @op_get(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1, i32 noundef %2, i32 %3, ptr nofree readnone captures(none) %4) unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.a = load i32, ptr @to, align 4, !tbaa !9
  %i.b = load ptr, ptr @win, align 8, !tbaa !12
  %i.c = tail call i32 @MPI_Win_lock(i32 noundef 2, i32 noundef %i.a, i32 noundef 0, ptr noundef %i.b) #13 ; 0 uses
  %i.d = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %5) #13 ; 0 uses
  %i.e = load i32, ptr @to, align 4, !tbaa !9
  %i.f = load ptr, ptr @win, align 8, !tbaa !12
  %i.g = call i32 @MPI_Get(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.e, i64 noundef 0, i32 noundef %2, ptr noundef nonnull @ompi_mpi_byte, ptr noundef %i.f) #13 ; 0 uses
  %i.h = load i32, ptr @to, align 4, !tbaa !9
  %i.i = load ptr, ptr @win, align 8, !tbaa !12
  %i.j = call i32 @MPI_Win_unlock(i32 noundef %i.h, ptr noundef %i.i) #13 ; 0 uses
  %i.k = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %6) #13 ; 0 uses
  %.val = load i64, ptr %5, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val3 = load i64, ptr %i.l, align 8, !tbaa !18
  %.val4 = load i64, ptr %6, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val5 = load i64, ptr %i.m, align 8, !tbaa !18
  %i.n = sub nsw i64 %.val4, %.val
  %i.o = sitofp i64 %i.n to double
  %i.p = sub nsw i64 %.val5, %.val3
  %i.q = sitofp i64 %i.p to double
  %i.r = fdiv double %i.q, 1.000000e+03
  %i.s = call double @llvm.fmuladd.f64(double %i.o, double 1.000000e+06, double %i.r)
  store double %i.s, ptr %0, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #6

declare i32 @MPI_Gather(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @comp_double(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !14  ; 2 uses
  %i.b = load double, ptr %1, align 8, !tbaa !14  ; 2 uses
  %i.c = fcmp olt double %i.a, %i.b
  %i.d = fcmp ogt double %i.a, %i.b
  %. = zext i1 %i.d to i32
  %.0 = select i1 %i.c, i32 -1, i32 %.
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare i32 @MPI_Finalize() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

declare i32 @MPI_Irecv(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Send(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Recv(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

declare i32 @MPI_Barrier(ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Bcast(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Alltoall(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Win_lock(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Put(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Win_unlock(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Get(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Win_create(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Win_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS10ompi_win_t", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"double", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"timespec", !15, i64 0, !15, i64 8}
!17 = !{!16, !15, i64 0}
!18 = !{!16, !15, i64 8}
!19 = distinct !{null}
!20 = distinct !{!20, !27}
!21 = distinct !{!21, !27}
!22 = distinct !{!22, !27}
!23 = distinct !{!23, !27}
!24 = !{!"any p2 pointer", !10, i64 0}
!25 = !{!"p2 omnipotent char", !24, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
end_hunk_0
