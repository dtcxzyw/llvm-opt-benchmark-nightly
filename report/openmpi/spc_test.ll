Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/spc_test?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_communicator_t = type opaque
%struct.ompi_predefined_datatype_t = type opaque
%struct.ompi_status_public_t = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [37 x i8] c"runtime_spc_OMPI_SPC_BYTES_SENT_USER\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"runtime_spc_OMPI_SPC_BYTES_RECEIVED_USER\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to initialize MPI_T thread.\0A\00", align 1
@ompi_mpi_comm_world = external global %struct.ompi_predefined_communicator_t, align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"ERROR: This test should be run with two MPI processes.\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to get the number of pvars.\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to get pvar info.\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"[%d] %s -> %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"ERROR: Couldn't find the appropriate SPC counter in the MPI_T pvars.\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Failed to create MPI_T pvar session.\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Failed to allocate the pvar handle.\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Failed to start the pvar session.\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Failed to read the pvar.\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"[%d] Value Read: %lld\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [68 x i8] c"The counter value is inaccurate!  It is '%lld'.  It should be '%d'\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Failed to stop the pvar session.\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Failed to free the pvar handle.\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Failed to free the pvar session.\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Failed to finalize MPI_T.\0A\00", align 1
@ompi_mpi_byte = external global %struct.ompi_predefined_datatype_t, align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 28 uses
  %2 = alloca %struct.ompi_status_public_t, align 8 ; 21 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %i.i = alloca i32, align 4                      ; 3 uses
  %i.j = alloca i32, align 4                      ; 3 uses
  %i.k = alloca i32, align 4                      ; 3 uses
  %i.l = alloca i32, align 4                      ; 3 uses
  %i.m = alloca i32, align 4                      ; 3 uses
  %i.n = alloca i32, align 4                      ; 3 uses
  %i.o = alloca ptr, align 8                      ; 3 uses
  %i.p = alloca ptr, align 8                      ; 3 uses
  %i.q = alloca [256 x i8], align 16              ; 5 uses
  %i.r = alloca [256 x i8], align 16              ; 4 uses
  %i.s = alloca i64, align 8                      ; 7 uses
  %i.t = alloca ptr, align 8                      ; 9 uses
  %i.u = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #8
  %i.v = tail call i32 @MPI_Init(ptr noundef null, ptr noundef null) #8 ; 0 uses
  %i.w = call i32 @MPI_T_init_thread(i32 noundef 0, ptr noundef nonnull %i.d) #8 ; 2 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite = call i64 @fwrite(ptr nonnull @.str.2, i64 35, i64 1, ptr %i.x) #9 ; 0 uses
  %i.y = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.w) #8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.z = call i32 @MPI_Comm_rank(ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.b) #8 ; 0 uses
  %i.aa = call i32 @MPI_Comm_size(ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.c) #8 ; 0 uses
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !13
  %.not63 = icmp eq i32 %i.ab, 2
  br i1 %.not63, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite64 = call i64 @fwrite(ptr nonnull @.str.3, i64 55, i64 1, ptr %i.ac) #9 ; 0 uses
  %i.ad = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef -1) #8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = call i32 @MPI_T_pvar_get_num(ptr noundef nonnull %i.e) #8 ; 2 uses
  %.not65 = icmp eq i32 %i.ae, 0
  br i1 %.not65, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite66 = call i64 @fwrite(ptr nonnull @.str.4, i64 35, i64 1, ptr %i.af) #9 ; 0 uses
  %i.ag = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.ae) #8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = load i32, ptr %i.e, align 4, !tbaa !13
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.g, %bb.j
  %.04989 = phi i32 [ %i.ap, %bb.j ], [ 0, %bb.g ] ; 3 uses
  store i32 256, ptr %i.g, align 4, !tbaa !13
  store i32 256, ptr %i.f, align 4, !tbaa !13
  %i.aj = call i32 @MPI_T_pvar_get_info(i32 noundef %.04989, ptr noundef nonnull %i.q, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m) #8 ; 2 uses
  switch i32 %i.aj, label %bb.h [
    i32 72, label %bb.j
    i32 0, label %bb.i
  ]

bb.h:                                             ; preds = %.lr.ph
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite68 = call i64 @fwrite(ptr nonnull @.str.5, i64 25, i64 1, ptr %i.ak) #9 ; 0 uses
  %i.al = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.aj) #8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %i.am = load i32, ptr %i.b, align 4, !tbaa !13  ; 2 uses
  %.sroa.idx = icmp eq i32 %i.am, 1
  %.sroa.speculated = select i1 %.sroa.idx, ptr @.str.1, ptr @.str
  %i.an = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(1) %.sroa.speculated) #10
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %i.ap = add nuw nsw i32 %.04989, 1              ; 2 uses
  %i.aq = load i32, ptr %i.e, align 4, !tbaa !13
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph, label %.thread, !llvm.loop !9

bb.k:                                             ; preds = %bb.i
  %i.as = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.am, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r) ; 0 uses
  br label %bb.l

.thread:                                          ; preds = %bb.j, %bb.g
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite69 = call i64 @fwrite(ptr nonnull @.str.7, i64 69, i64 1, ptr %i.at) #9 ; 0 uses
  %i.au = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef -1) #8 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  %.04886 = phi i32 [ -1, %.thread ], [ %.04989, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #8
  %i.av = call i32 @MPI_T_pvar_session_create(ptr noundef nonnull %i.t) #8 ; 2 uses
  %.not70 = icmp eq i32 %i.av, 0
  br i1 %.not70, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite71 = call i64 @fwrite(ptr nonnull @.str.8, i64 37, i64 1, ptr %i.aw) #9 ; 0 uses
  %i.ax = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.av) #8 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ay = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.az = call i32 @MPI_T_pvar_handle_alloc(ptr noundef %i.ay, i32 noundef %.04886, ptr noundef null, ptr noundef nonnull %i.u, ptr noundef nonnull %i.n) #8 ; 2 uses
  %.not72 = icmp eq i32 %i.az, 0
  br i1 %.not72, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite73 = call i64 @fwrite(ptr nonnull @.str.9, i64 36, i64 1, ptr %i.ba) #9 ; 0 uses
  %i.bb = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.az) #8 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bc = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.bd = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.be = call i32 @MPI_T_pvar_start(ptr noundef %i.bc, ptr noundef %i.bd) #8 ; 2 uses
  switch i32 %i.be, label %bb.q [
    i32 65, label %bb.r
    i32 0, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite74 = call i64 @fwrite(ptr nonnull @.str.10, i64 34, i64 1, ptr %i.bf) #9 ; 0 uses
  %i.bg = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.be) #8 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.bh = call noalias dereferenceable_or_null(1) ptr @calloc(i64 noundef 1, i64 noundef 1) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.bi = call i32 @MPI_Comm_rank(ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.bj = load i32, ptr %i.a, align 4, !tbaa !13
  switch i32 %i.bj, label %message_exchange.exit [
    i32 0, label %.preheader.i
    i32 1, label %.preheader12.i
  ]

.preheader.i:                                     ; preds = %bb.r
  %i.bk = call i32 @MPI_Send(ptr noundef %i.bh, i32 noundef range(i32 -2147483648, 1000001) 1, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 1, i32 noundef 123, ptr noundef nonnull @ompi_mpi_comm_world) #8 ; 0 uses
  br label %message_exchange.exit

.preheader12.i:                                   ; preds = %bb.r
  %i.bl = call i32 @MPI_Recv(ptr noundef %i.bh, i32 noundef range(i32 -2147483648, 1000001) 1, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 0, i32 noundef 123, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %2) #8 ; 0 uses
  br label %message_exchange.exit

message_exchange.exit:                            ; preds = %bb.r, %.preheader.i, %.preheader12.i
  call void @free(ptr noundef %i.bh) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.bm = call noalias dereferenceable_or_null(10) ptr @calloc(i64 noundef 10, i64 noundef 1) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.bn = call i32 @MPI_Comm_rank(ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !13
  switch i32 %i.bo, label %message_exchange.exit.1 [
    i32 0, label %.preheader.i.1
    i32 1, label %.preheader12.i.1
  ]

.preheader12.i.1:                                 ; preds = %message_exchange.exit
  %i.bp = call i32 @MPI_Recv(ptr noundef %i.bm, i32 noundef range(i32 -2147483648, 1000001) 10, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 0, i32 noundef 123, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %2) #8 ; 0 uses
  br label %message_exchange.exit.1

.preheader.i.1:                                   ; preds = %message_exchange.exit
  %i.bq = call i32 @MPI_Send(ptr noundef %i.bm, i32 noundef range(i32 -2147483648, 1000001) 10, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 1, i32 noundef 123, ptr noundef nonnull @ompi_mpi_comm_world) #8 ; 0 uses
  br label %message_exchange.exit.1

message_exchange.exit.1:                          ; preds = %.preheader.i.1, %.preheader12.i.1, %message_exchange.exit
  call void @free(ptr noundef %i.bm) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.br = call noalias dereferenceable_or_null(100) ptr @calloc(i64 noundef 100, i64 noundef 1) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.bs = call i32 @MPI_Comm_rank(ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.bt = load i32, ptr %i.a, align 4, !tbaa !13
  switch i32 %i.bt, label %message_exchange.exit.2 [
    i32 0, label %.preheader.i.2
    i32 1, label %.preheader12.i.2
  ]

.preheader12.i.2:                                 ; preds = %message_exchange.exit.1
  %i.bu = call i32 @MPI_Recv(ptr noundef %i.br, i32 noundef range(i32 -2147483648, 1000001) 100, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 0, i32 noundef 123, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %2) #8 ; 0 uses
  br label %message_exchange.exit.2

.preheader.i.2:                                   ; preds = %message_exchange.exit.1
  %i.bv = call i32 @MPI_Send(ptr noundef %i.br, i32 noundef range(i32 -2147483648, 1000001) 100, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 1, i32 noundef 123, ptr noundef nonnull @ompi_mpi_comm_world) #8 ; 0 uses
  br label %message_exchange.exit.2

message_exchange.exit.2:                          ; preds = %.preheader.i.2, %.preheader12.i.2, %message_exchange.exit.1
  call void @free(ptr noundef %i.br) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.bw = call noalias dereferenceable_or_null(1000) ptr @calloc(i64 noundef 1000, i64 noundef 1) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.bx = call i32 @MPI_Comm_rank(ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.by = load i32, ptr %i.a, align 4, !tbaa !13
  switch i32 %i.by, label %message_exchange.exit.3 [
    i32 0, label %.preheader.i.3
    i32 1, label %.preheader12.i.3
  ]

.preheader12.i.3:                                 ; preds = %message_exchange.exit.2
  %i.bz = call i32 @MPI_Recv(ptr noundef %i.bw, i32 noundef range(i32 -2147483648, 1000001) 1000, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 0, i32 noundef 123, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %2) #8 ; 0 uses
  br label %message_exchange.exit.3

.preheader.i.3:                                   ; preds = %message_exchange.exit.2
  %i.ca = call i32 @MPI_Send(ptr noundef %i.bw, i32 noundef range(i32 -2147483648, 1000001) 1000, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 1, i32 noundef 123, ptr noundef nonnull @ompi_mpi_comm_world) #8 ; 0 uses
  br label %message_exchange.exit.3

message_exchange.exit.3:                          ; preds = %.preheader.i.3, %.preheader12.i.3, %message_exchange.exit.2
  call void @free(ptr noundef %i.bw) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.cb = call noalias dereferenceable_or_null(10000) ptr @calloc(i64 noundef 10000, i64 noundef 1) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.cc = call i32 @MPI_Comm_rank(ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.cd = load i32, ptr %i.a, align 4, !tbaa !13
  switch i32 %i.cd, label %message_exchange.exit.4 [
    i32 0, label %.preheader.i.4
    i32 1, label %.preheader12.i.4
  ]

.preheader12.i.4:                                 ; preds = %message_exchange.exit.3
  %i.ce = call i32 @MPI_Recv(ptr noundef %i.cb, i32 noundef range(i32 -2147483648, 1000001) 10000, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 0, i32 noundef 123, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %2) #8 ; 0 uses
  br label %message_exchange.exit.4

.preheader.i.4:                                   ; preds = %message_exchange.exit.3
  %i.cf = call i32 @MPI_Send(ptr noundef %i.cb, i32 noundef range(i32 -2147483648, 1000001) 10000, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 1, i32 noundef 123, ptr noundef nonnull @ompi_mpi_comm_world) #8 ; 0 uses
  br label %message_exchange.exit.4

message_exchange.exit.4:                          ; preds = %.preheader.i.4, %.preheader12.i.4, %message_exchange.exit.3
  call void @free(ptr noundef %i.cb) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.cg = call noalias dereferenceable_or_null(100000) ptr @calloc(i64 noundef 100000, i64 noundef 1) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.ch = call i32 @MPI_Comm_rank(ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !13
  switch i32 %i.ci, label %message_exchange.exit.5 [
    i32 0, label %.preheader.i.5
    i32 1, label %.preheader12.i.5
  ]

.preheader12.i.5:                                 ; preds = %message_exchange.exit.4
  %i.cj = call i32 @MPI_Recv(ptr noundef %i.cg, i32 noundef range(i32 -2147483648, 1000001) 100000, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 0, i32 noundef 123, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %2) #8 ; 0 uses
  br label %message_exchange.exit.5

.preheader.i.5:                                   ; preds = %message_exchange.exit.4
  %i.ck = call i32 @MPI_Send(ptr noundef %i.cg, i32 noundef range(i32 -2147483648, 1000001) 100000, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 1, i32 noundef 123, ptr noundef nonnull @ompi_mpi_comm_world) #8 ; 0 uses
  br label %message_exchange.exit.5

message_exchange.exit.5:                          ; preds = %.preheader.i.5, %.preheader12.i.5, %message_exchange.exit.4
  call void @free(ptr noundef %i.cg) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.cl = call noalias dereferenceable_or_null(1000000) ptr @calloc(i64 noundef 1000000, i64 noundef 1) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.cm = call i32 @MPI_Comm_rank(ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.cn = load i32, ptr %i.a, align 4, !tbaa !13
  switch i32 %i.cn, label %message_exchange.exit.6 [
    i32 0, label %.preheader.i.6
    i32 1, label %.preheader12.i.6
  ]

.preheader12.i.6:                                 ; preds = %message_exchange.exit.5
  %i.co = call i32 @MPI_Recv(ptr noundef %i.cl, i32 noundef range(i32 -2147483648, 1000001) 1000000, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 0, i32 noundef 123, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %2) #8 ; 0 uses
  br label %message_exchange.exit.6

.preheader.i.6:                                   ; preds = %message_exchange.exit.5
  %i.cp = call i32 @MPI_Send(ptr noundef %i.cl, i32 noundef range(i32 -2147483648, 1000001) 1000000, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 1, i32 noundef 123, ptr noundef nonnull @ompi_mpi_comm_world) #8 ; 0 uses
  br label %message_exchange.exit.6

message_exchange.exit.6:                          ; preds = %.preheader.i.6, %.preheader12.i.6, %message_exchange.exit.5
  call void @free(ptr noundef %i.cl) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.cq = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.cr = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.cs = call i32 @MPI_T_pvar_read(ptr noundef %i.cq, ptr noundef %i.cr, ptr noundef nonnull %i.s) #8 ; 2 uses
  %.not75 = icmp eq i32 %i.cs, 0
  br i1 %.not75, label %bb.t, label %bb.s

bb.s:                                             ; preds = %message_exchange.exit.6
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite76 = call i64 @fwrite(ptr nonnull @.str.11, i64 25, i64 1, ptr %i.ct) #9 ; 0 uses
  %i.cu = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.cs) #8 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %message_exchange.exit.6
  %i.cv = load i32, ptr %i.b, align 4, !tbaa !13
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cx = load i64, ptr %i.s, align 8, !tbaa !20
  %i.cy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef 0, i64 noundef %i.cx) ; 0 uses
  %i.cz = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.da = call i32 @fflush(ptr noundef %i.cz)     ; 0 uses
  %i.db = load i64, ptr %i.s, align 8, !tbaa !20  ; 2 uses
  %.not84 = icmp eq i64 %i.db, 1111111
  br i1 %.not84, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.dd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dc, ptr noundef nonnull @.str.13, i64 noundef %i.db, i32 noundef 1111111) #12 ; 0 uses
  %i.de = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef 16) #8 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %i.df = call i32 @MPI_Barrier(ptr noundef nonnull @ompi_mpi_comm_world) #8 ; 0 uses
  %i.dg = load i32, ptr %i.b, align 4, !tbaa !13
  %i.dh = icmp eq i32 %i.dg, 1
  br i1 %i.dh, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = load i64, ptr %i.s, align 8, !tbaa !20
  %i.dj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef 1, i64 noundef %i.di) ; 0 uses
  %i.dk = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.dl = call i32 @fflush(ptr noundef %i.dk)     ; 0 uses
  %i.dm = load i64, ptr %i.s, align 8, !tbaa !20  ; 2 uses
  %.not84.1 = icmp eq i64 %i.dm, 1111111
  br i1 %.not84.1, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.do = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dn, ptr noundef nonnull @.str.13, i64 noundef %i.dm, i32 noundef 1111111) #12 ; 0 uses
  %i.dp = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef 16) #8 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.dq = call i32 @MPI_Barrier(ptr noundef nonnull @ompi_mpi_comm_world) #8 ; 0 uses
  %i.dr = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.ds = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.dt = call i32 @MPI_T_pvar_stop(ptr noundef %i.dr, ptr noundef %i.ds) #8 ; 2 uses
  switch i32 %i.dt, label %bb.aa [
    i32 65, label %bb.ab
    i32 0, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.du = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite77 = call i64 @fwrite(ptr nonnull @.str.14, i64 33, i64 1, ptr %i.du) #9 ; 0 uses
  %i.dv = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.dt) #8 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.z, %bb.aa
  %i.dw = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.dx = call i32 @MPI_T_pvar_handle_free(ptr noundef %i.dw, ptr noundef nonnull %i.u) #8 ; 2 uses
  %.not78 = icmp eq i32 %i.dx, 0
  br i1 %.not78, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dy = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite79 = call i64 @fwrite(ptr nonnull @.str.15, i64 32, i64 1, ptr %i.dy) #9 ; 0 uses
  %i.dz = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.dx) #8 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ea = call i32 @MPI_T_pvar_session_free(ptr noundef nonnull %i.t) #8 ; 2 uses
  %.not80 = icmp eq i32 %i.ea, 0
  br i1 %.not80, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite81 = call i64 @fwrite(ptr nonnull @.str.16, i64 33, i64 1, ptr %i.eb) #9 ; 0 uses
  %i.ec = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.ea) #8 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ed = call i32 @MPI_T_finalize() #8           ; 2 uses
  %.not82 = icmp eq i32 %i.ed, 0
  br i1 %.not82, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ee = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite83 = call i64 @fwrite(ptr nonnull @.str.17, i64 26, i64 1, ptr %i.ee) #9 ; 0 uses
  %i.ef = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.ed) #8 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.eg = call i32 @MPI_Finalize() #8             ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @MPI_Init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_T_init_thread(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @MPI_Abort(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @MPI_Comm_rank(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Comm_size(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_T_pvar_get_num(ptr noundef) local_unnamed_addr #2

declare i32 @MPI_T_pvar_get_info(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @MPI_T_pvar_session_create(ptr noundef) local_unnamed_addr #2

declare i32 @MPI_T_pvar_handle_alloc(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_T_pvar_start(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_T_pvar_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @MPI_Barrier(ptr noundef) local_unnamed_addr #2

declare i32 @MPI_T_pvar_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_T_pvar_handle_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_T_pvar_session_free(ptr noundef) local_unnamed_addr #2

declare i32 @MPI_T_finalize() local_unnamed_addr #2

declare i32 @MPI_Finalize() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @MPI_Send(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPI_Recv(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { cold nounwind }

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
!9 = distinct !{!9, !14}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"p1 _ZTS23mca_base_pvar_session_t", !10, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 _ZTS22mca_base_pvar_handle_t", !10, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"long long", !5, i64 0}
!20 = !{!19, !19, i64 0}
end_hunk_0
