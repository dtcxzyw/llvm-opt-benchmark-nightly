Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/test_pvar_access?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_communicator_t = type opaque
%struct.ompi_predefined_datatype_t = type opaque
%struct.ompi_status_public_t = type { i32, i32, i32, i32, i64 }

@ompi_mpi_comm_world = external global %struct.ompi_predefined_communicator_t, align 1
@world_size = internal unnamed_addr global i32 0, align 4
@world_rank = internal unnamed_addr global i32 0, align 4
@count_pvar_name = internal constant [30 x i8] c"pml_monitoring_messages_count\00", align 16
@count_pvar_idx = internal global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"cannot find monitoring MPI_T \22%s\22 pvar, check that you have monitoring pml\0A\00", align 1
@msize_pvar_name = internal constant [29 x i8] c"pml_monitoring_messages_size\00", align 16
@msize_pvar_idx = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot create a session for \22%s\22 and \22%s\22 pvars\0A\00", align 1
@count_handle = internal global ptr null, align 8
@.str.2 = private unnamed_addr constant [76 x i8] c"failed to allocate handle on \22%s\22 pvar, check that you have monitoring pml\0A\00", align 1
@msize_handle = internal global ptr null, align 8
@.str.3 = private unnamed_addr constant [73 x i8] c"failed to start handle on \22%s\22 pvar, check that you have monitoring pml\0A\00", align 1
@ompi_mpi_int = external global %struct.ompi_predefined_datatype_t, align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"failed to stop handle on \22%s\22 pvar, check that you have monitoring pml\0A\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"failed to fetch handle on \22%s\22 pvar, check that you have monitoring pml\0A\00", align 1
@ompi_mpi_byte = external global %struct.ompi_predefined_datatype_t, align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"failed to free handle on \22%s\22 pvar, check that you have monitoring pml\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"cannot close a session for \22%s\22 and \22%s\22 pvars\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"I\09%d\09%d\09%zu bytes\09%zu msgs sent\0A\00", align 1
@str = private unnamed_addr constant [18 x i8] c"Flushing phase 1:\00", align 1
@str.1 = private unnamed_addr constant [18 x i8] c"Flushing phase 2:\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 15 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 19 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 20 uses
  %2 = alloca %struct.ompi_status_public_t, align 8 ; 8 uses
  %i.i = alloca ptr, align 8                      ; 14 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca ptr, align 8                      ; 6 uses
  %i.l = alloca [10240 x i32], align 16           ; 3 uses
  %i.m = alloca [10240 x i32], align 16           ; 3 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !17
  store ptr %1, ptr %i.b, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  store ptr @ompi_mpi_comm_world, ptr %i.j, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  store i32 -1, ptr %i.e, align 4, !tbaa !17
  %i.n = call i32 @MPI_Init(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.o = call i32 @MPI_Comm_rank(ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.p = call i32 @MPI_Comm_size(ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.d) #7 ; 0 uses
  %i.q = load i32, ptr %i.d, align 4, !tbaa !17   ; 3 uses
  store i32 %i.q, ptr @world_size, align 4, !tbaa !17
  %i.r = load i32, ptr %i.c, align 4, !tbaa !17   ; 3 uses
  store i32 %i.r, ptr @world_rank, align 4, !tbaa !17
  %3 = add nsw i32 %i.r, 1
  %4 = srem i32 %3, %i.q                          ; 2 uses
  %5 = add nsw i32 %i.r, -1
  %6 = srem i32 %5, %i.q
  %i.s = call i32 @MPI_T_init_thread(i32 noundef 0, ptr noundef nonnull %i.f) #7 ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.s) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = call i32 @MPI_T_pvar_get_index(ptr noundef nonnull @count_pvar_name, i32 noundef 2, ptr noundef nonnull @count_pvar_idx) #7 ; 2 uses
  %.not110 = icmp eq i32 %i.u, 0
  br i1 %.not110, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @count_pvar_name) ; 0 uses
  %i.w = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.u) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = call i32 @MPI_T_pvar_get_index(ptr noundef nonnull @msize_pvar_name, i32 noundef 2, ptr noundef nonnull @msize_pvar_idx) #7 ; 2 uses
  %.not111 = icmp eq i32 %i.x, 0
  br i1 %.not111, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @msize_pvar_name) ; 0 uses
  %i.z = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.x) #7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = call i32 @MPI_T_pvar_session_create(ptr noundef nonnull %i.h) #7 ; 2 uses
  %.not112 = icmp eq i32 %i.aa, 0
  br i1 %.not112, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @count_pvar_name, ptr noundef nonnull @msize_pvar_name) ; 0 uses
  %i.ac = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.aa) #7 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ae = load i32, ptr @count_pvar_idx, align 4, !tbaa !17
  %i.af = call i32 @MPI_T_pvar_handle_alloc(ptr noundef %i.ad, i32 noundef %i.ae, ptr noundef nonnull %i.j, ptr noundef nonnull @count_handle, ptr noundef nonnull %i.g) #7 ; 2 uses
  %.not113 = icmp eq i32 %i.af, 0
  br i1 %.not113, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @count_pvar_name) ; 0 uses
  %i.ah = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.af) #7 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.aj = load i32, ptr @msize_pvar_idx, align 4, !tbaa !17
  %i.ak = call i32 @MPI_T_pvar_handle_alloc(ptr noundef %i.ai, i32 noundef %i.aj, ptr noundef nonnull %i.j, ptr noundef nonnull @msize_handle, ptr noundef nonnull %i.g) #7 ; 2 uses
  %.not114 = icmp eq i32 %i.ak, 0
  br i1 %.not114, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @msize_pvar_name) ; 0 uses
  %i.am = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.ak) #7 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.an = load i32, ptr %i.g, align 4, !tbaa !17  ; 4 uses
  %i.ao = shl nsw i32 %i.an, 2
  %i.ap = sext i32 %i.ao to i64
  %i.aq = call noalias ptr @calloc(i64 noundef %i.ap, i64 noundef 8) #8 ; 18 uses
  %i.ar = sext i32 %i.an to i64                   ; 2 uses
  %i.as = getelementptr [8 x i8], ptr %i.aq, i64 %i.ar ; 10 uses
  %i.at = shl i32 %i.an, 1
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.aq, i64 %i.au ; 10 uses
  %i.aw = mul i32 %i.an, 3
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %i.aq, i64 %i.ax ; 10 uses
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ba = load ptr, ptr @count_handle, align 8, !tbaa !27
  %i.bb = call i32 @MPI_T_pvar_start(ptr noundef %i.az, ptr noundef %i.ba) #7 ; 2 uses
  %.not115 = icmp eq i32 %i.bb, 0
  br i1 %.not115, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @count_pvar_name) ; 0 uses
  %i.bd = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.bb) #7 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.bf = load ptr, ptr @msize_handle, align 8, !tbaa !27
  %i.bg = call i32 @MPI_T_pvar_start(ptr noundef %i.be, ptr noundef %i.bf) #7 ; 2 uses
  %.not116 = icmp eq i32 %i.bg, 0
  br i1 %.not116, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @msize_pvar_name) ; 0 uses
  %i.bi = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.bg) #7 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bj = load i32, ptr %i.c, align 4, !tbaa !17
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.r, label %.preheader231

bb.r:                                             ; preds = %bb.q
  store i32 25, ptr %i.e, align 4, !tbaa !17
  %i.bl = call i32 @MPI_Isend(ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %4, i32 noundef 201, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.k) #7 ; 0 uses
  br label %.preheader231

.preheader231:                                    ; preds = %bb.r, %bb.q
  br label %bb.s

bb.s:                                             ; preds = %.preheader231, %thread-pre-split
  %.085 = phi i32 [ %.2, %thread-pre-split ], [ 201, %.preheader231 ] ; 3 uses
  %i.bm = call i32 @MPI_Irecv(ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %6, i32 noundef %.085, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.k) #7 ; 0 uses
  %i.bn = call i32 @MPI_Wait(ptr noundef nonnull %i.k, ptr noundef nonnull %2) #7 ; 0 uses
  %i.bo = load i32, ptr %i.c, align 4, !tbaa !17
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bq = load i32, ptr %i.e, align 4, !tbaa !17
  %i.br = add nsw i32 %i.bq, -1
  store i32 %i.br, ptr %i.e, align 4, !tbaa !17
  %i.bs = add nsw i32 %.085, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1 = phi i32 [ %i.bs, %bb.t ], [ %.085, %bb.s ] ; 3 uses
  %i.bt = call i32 @MPI_Isend(ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %4, i32 noundef %.1, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.k) #7 ; 0 uses
  %i.bu = load i32, ptr %i.c, align 4, !tbaa !17
  %.not117 = icmp eq i32 %i.bu, 0
  %.pr = load i32, ptr %i.e, align 4, !tbaa !17   ; 2 uses
  br i1 %.not117, label %thread-pre-split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = add nsw i32 %.pr, -1                    ; 2 uses
  store i32 %i.bv, ptr %i.e, align 4, !tbaa !17
  %i.bw = add nsw i32 %.1, 1
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.u, %bb.v
  %i.bx = phi i32 [ %i.bv, %bb.v ], [ %.pr, %bb.u ]
  %.2 = phi i32 [ %i.bw, %bb.v ], [ %.1, %bb.u ]
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %bb.w, label %bb.s

bb.w:                                             ; preds = %thread-pre-split
  %i.bz = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ca = load ptr, ptr @count_handle, align 8, !tbaa !27
  %i.cb = call i32 @MPI_T_pvar_stop(ptr noundef %i.bz, ptr noundef %i.ca) #7 ; 2 uses
  %.not118 = icmp eq i32 %i.cb, 0
  br i1 %.not118, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @count_pvar_name) ; 0 uses
  %i.cd = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.cb) #7 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ce = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.cf = load ptr, ptr @msize_handle, align 8, !tbaa !27
  %i.cg = call i32 @MPI_T_pvar_stop(ptr noundef %i.ce, ptr noundef %i.cf) #7 ; 2 uses
  %.not119 = icmp eq i32 %i.cg, 0
  br i1 %.not119, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @msize_pvar_name) ; 0 uses
  %i.ci = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.cg) #7 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cj = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ck = load ptr, ptr @count_handle, align 8, !tbaa !27
  %i.cl = call i32 @MPI_T_pvar_read(ptr noundef %i.cj, ptr noundef %i.ck, ptr noundef %i.aq) #7 ; 2 uses
  %.not120 = icmp eq i32 %i.cl, 0
  br i1 %.not120, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @count_pvar_name) ; 0 uses
  %i.cn = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.cl) #7 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.cp = load ptr, ptr @msize_handle, align 8, !tbaa !27
  %i.cq = call i32 @MPI_T_pvar_read(ptr noundef %i.co, ptr noundef %i.cp, ptr noundef %i.as) #7 ; 2 uses
  %.not121 = icmp eq i32 %i.cq, 0
  br i1 %.not121, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @msize_pvar_name) ; 0 uses
  %i.cs = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.cq) #7 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ct = load i32, ptr @world_rank, align 4, !tbaa !17 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.cv = load i32, ptr @world_rank, align 4, !tbaa !17 ; 2 uses
  %i.cw = load i32, ptr @world_size, align 4, !tbaa !17 ; 3 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.preheader.i, label %print_vars.exit

.lr.ph.preheader.i:                               ; preds = %bb.af
  %wide.trip.count.i = zext nneg i32 %i.cw to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ah, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ah ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !29 ; 2 uses
  %.not.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i
  %i.db = load i64, ptr %i.da, align 8, !tbaa !29
  %i.dc = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.dd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.cv, i32 noundef %i.dc, i64 noundef %i.cz, i64 noundef %i.db) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %print_vars.exit.loopexit, label %.lr.ph.i, !llvm.loop !9

print_vars.exit.loopexit:                         ; preds = %bb.ah
  %.pre163 = load i32, ptr @world_rank, align 4, !tbaa !17
  %.pre164 = load i32, ptr @world_size, align 4, !tbaa !17
  br label %print_vars.exit

print_vars.exit:                                  ; preds = %print_vars.exit.loopexit, %bb.af
  %i.de = phi i32 [ %.pre164, %print_vars.exit.loopexit ], [ %i.cw, %bb.af ]
  %i.df = phi i32 [ %.pre163, %print_vars.exit.loopexit ], [ %i.cv, %bb.af ]
  %i.dg = add nsw i32 %i.df, 1
  %i.dh = srem i32 %i.dg, %i.de
  %i.di = call i32 @MPI_Send(ptr noundef null, i32 noundef 0, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.dh, i32 noundef 300, ptr noundef nonnull @ompi_mpi_comm_world) #7 ; 0 uses
  %i.dj = load i32, ptr @world_rank, align 4, !tbaa !17
  %i.dk = add nsw i32 %i.dj, -1
  %i.dl = load i32, ptr @world_size, align 4, !tbaa !17
  %i.dm = srem i32 %i.dk, %i.dl
  %i.dn = call i32 @MPI_Recv(ptr noundef null, i32 noundef 0, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.dm, i32 noundef 300, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %2) #7 ; 0 uses
  br label %bb.al

bb.ai:                                            ; preds = %bb.ae
  %i.do = add nsw i32 %i.ct, -1
  %i.dp = load i32, ptr @world_size, align 4, !tbaa !17
  %i.dq = srem i32 %i.do, %i.dp
  %i.dr = call i32 @MPI_Recv(ptr noundef null, i32 noundef 0, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.dq, i32 noundef 300, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %2) #7 ; 0 uses
  %i.ds = load i32, ptr @world_rank, align 4, !tbaa !17 ; 2 uses
  %i.dt = load i32, ptr @world_size, align 4, !tbaa !17 ; 3 uses
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %.lr.ph.preheader.i134, label %print_vars.exit141

.lr.ph.preheader.i134:                            ; preds = %bb.ai
  %wide.trip.count.i135 = zext nneg i32 %i.dt to i64
  br label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %bb.ak, %.lr.ph.preheader.i134
  %indvars.iv.i137 = phi i64 [ 0, %.lr.ph.preheader.i134 ], [ %indvars.iv.next.i139, %bb.ak ] ; 4 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i137
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !29 ; 2 uses
  %.not.i138 = icmp eq i64 %i.dw, 0
  br i1 %.not.i138, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i136
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i137
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !29
  %i.dz = trunc nuw nsw i64 %indvars.iv.i137 to i32
  %i.ea = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.ds, i32 noundef %i.dz, i64 noundef %i.dw, i64 noundef %i.dy) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph.i136
  %indvars.iv.next.i139 = add nuw nsw i64 %indvars.iv.i137, 1 ; 2 uses
  %exitcond.not.i140 = icmp eq i64 %indvars.iv.next.i139, %wide.trip.count.i135
  br i1 %exitcond.not.i140, label %print_vars.exit141.loopexit, label %.lr.ph.i136, !llvm.loop !9

print_vars.exit141.loopexit:                      ; preds = %bb.ak
  %.pre = load i32, ptr @world_rank, align 4, !tbaa !17
  %.pre162 = load i32, ptr @world_size, align 4, !tbaa !17
  br label %print_vars.exit141

print_vars.exit141:                               ; preds = %print_vars.exit141.loopexit, %bb.ai
  %i.eb = phi i32 [ %.pre162, %print_vars.exit141.loopexit ], [ %i.dt, %bb.ai ]
  %i.ec = phi i32 [ %.pre, %print_vars.exit141.loopexit ], [ %i.ds, %bb.ai ]
  %i.ed = add nsw i32 %i.ec, 1
  %i.ee = srem i32 %i.ed, %i.eb
  %i.ef = call i32 @MPI_Send(ptr noundef null, i32 noundef 0, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.ee, i32 noundef 300, ptr noundef nonnull @ompi_mpi_comm_world) #7 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %print_vars.exit141, %print_vars.exit
  %i.eg = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.eh = load ptr, ptr @count_handle, align 8, !tbaa !27
  %i.ei = call i32 @MPI_T_pvar_read(ptr noundef %i.eg, ptr noundef %i.eh, ptr noundef %i.aq) #7 ; 2 uses
  %.not122 = icmp eq i32 %i.ei, 0
  br i1 %.not122, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ej = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @count_pvar_name) ; 0 uses
  %i.ek = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.ei) #7 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.el = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.em = load ptr, ptr @msize_handle, align 8, !tbaa !27
  %i.en = call i32 @MPI_T_pvar_read(ptr noundef %i.el, ptr noundef %i.em, ptr noundef %i.as) #7 ; 2 uses
  %.not123 = icmp eq i32 %i.en, 0
  br i1 %.not123, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @msize_pvar_name) ; 0 uses
  %i.ep = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.en) #7 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.eq = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.er = load ptr, ptr @count_handle, align 8, !tbaa !27
  %i.es = call i32 @MPI_T_pvar_start(ptr noundef %i.eq, ptr noundef %i.er) #7 ; 2 uses
  %.not124 = icmp eq i32 %i.es, 0
  br i1 %.not124, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.et = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @count_pvar_name) ; 0 uses
  %i.eu = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.es) #7 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ev = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ew = load ptr, ptr @msize_handle, align 8, !tbaa !27
  %i.ex = call i32 @MPI_T_pvar_start(ptr noundef %i.ev, ptr noundef %i.ew) #7 ; 2 uses
  %.not125 = icmp eq i32 %i.ex, 0
  br i1 %.not125, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ey = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @msize_pvar_name) ; 0 uses
  %i.ez = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.ex) #7 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fa = load i32, ptr %i.c, align 4, !tbaa !17  ; 2 uses
  %i.fb = srem i32 %i.fa, 2
  %i.fc = call i32 @MPI_Comm_split(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.fb, i32 noundef %i.fa, ptr noundef nonnull %i.i) #7 ; 0 uses
  %i.fd = load i32, ptr %i.c, align 4, !tbaa !17
  %i.fe = and i32 %i.fd, 1
  %.not126 = icmp eq i32 %i.fe, 0
  br i1 %.not126, label %bb.bb, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ff = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.fg = call i32 @MPI_Comm_rank(ptr noundef %i.ff, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.fi = call i32 @MPI_Comm_size(ptr noundef %i.fh, ptr noundef nonnull %i.d) #7 ; 0 uses
  %i.fj = load i32, ptr %i.d, align 4, !tbaa !17  ; 3 uses
  %i.fk = icmp sgt i32 %i.fj, 1
  br i1 %i.fk, label %bb.av, label %.loopexit

bb.av:                                            ; preds = %bb.au
  %i.fl = load i32, ptr %i.c, align 4, !tbaa !17  ; 3 uses
  %7 = add nsw i32 %i.fl, 1
  %8 = srem i32 %7, %i.fj                         ; 2 uses
  %9 = add nsw i32 %i.fl, -1
  %10 = srem i32 %9, %i.fj
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.aw, label %.preheader

bb.aw:                                            ; preds = %bb.av
  store i32 50, ptr %i.e, align 4, !tbaa !17
  %i.fn = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.fo = call i32 @MPI_Send(ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %8, i32 noundef 201, ptr noundef %i.fn) #7 ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.aw, %bb.av
  br label %bb.ax

bb.ax:                                            ; preds = %.preheader, %thread-pre-split158
  %.3 = phi i32 [ %.5, %thread-pre-split158 ], [ 201, %.preheader ] ; 3 uses
  %i.fp = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.fq = call i32 @MPI_Recv(ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %10, i32 noundef %.3, ptr noundef %i.fp, ptr noundef nonnull %2) #7 ; 0 uses
  %i.fr = load i32, ptr %i.c, align 4, !tbaa !17
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ft = load i32, ptr %i.e, align 4, !tbaa !17
  %i.fu = add nsw i32 %i.ft, -1
  store i32 %i.fu, ptr %i.e, align 4, !tbaa !17
  %i.fv = add nsw i32 %.3, 1
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.4 = phi i32 [ %i.fv, %bb.ay ], [ %.3, %bb.ax ] ; 3 uses
  %i.fw = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.fx = call i32 @MPI_Send(ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %8, i32 noundef %.4, ptr noundef %i.fw) #7 ; 0 uses
  %i.fy = load i32, ptr %i.c, align 4, !tbaa !17
  %.not127 = icmp eq i32 %i.fy, 0
  %.pr159 = load i32, ptr %i.e, align 4, !tbaa !17 ; 2 uses
  br i1 %.not127, label %thread-pre-split158, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fz = add nsw i32 %.pr159, -1                 ; 2 uses
  store i32 %i.fz, ptr %i.e, align 4, !tbaa !17
  %i.ga = add nsw i32 %.4, 1
  br label %thread-pre-split158

thread-pre-split158:                              ; preds = %bb.az, %bb.ba
  %i.gb = phi i32 [ %i.fz, %bb.ba ], [ %.pr159, %bb.az ]
  %.5 = phi i32 [ %i.ga, %bb.ba ], [ %.4, %bb.az ]
  %i.gc = icmp slt i32 %i.gb, 0
  br i1 %i.gc, label %.loopexit, label %bb.ax

bb.bb:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #7
  %i.gd = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.ge = call i32 @MPI_Comm_rank(ptr noundef %i.gd, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.gf = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.gg = call i32 @MPI_Comm_size(ptr noundef %i.gf, ptr noundef nonnull %i.d) #7 ; 0 uses
  %i.gh = load i32, ptr %i.d, align 4, !tbaa !17
  %i.gi = sdiv i32 10240, %i.gh                   ; 2 uses
  %i.gj = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.gk = call i32 @MPI_Alltoall(ptr noundef nonnull %i.l, i32 noundef %i.gi, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull %i.m, i32 noundef %i.gi, ptr noundef nonnull @ompi_mpi_int, ptr noundef %i.gj) #7 ; 0 uses
  %i.gl = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.gm = load i32, ptr %i.c, align 4, !tbaa !17  ; 2 uses
  %i.gn = srem i32 %i.gm, 2
  %i.go = call i32 @MPI_Comm_split(ptr noundef %i.gl, i32 noundef %i.gn, i32 noundef %i.gm, ptr noundef nonnull %i.i) #7 ; 0 uses
  %i.gp = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.gq = call i32 @MPI_Barrier(ptr noundef %i.gp) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  br label %.loopexit

.loopexit:                                        ; preds = %thread-pre-split158, %bb.au, %bb.bb
  %i.gr = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.gs = load ptr, ptr @count_handle, align 8, !tbaa !27
  %i.gt = call i32 @MPI_T_pvar_read(ptr noundef %i.gr, ptr noundef %i.gs, ptr noundef %i.av) #7 ; 2 uses
  %.not128 = icmp eq i32 %i.gt, 0
  br i1 %.not128, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.loopexit
  %i.gu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @count_pvar_name) ; 0 uses
  %i.gv = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.gt) #7 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.loopexit
  %i.gw = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.gx = load ptr, ptr @msize_handle, align 8, !tbaa !27
  %i.gy = call i32 @MPI_T_pvar_read(ptr noundef %i.gw, ptr noundef %i.gx, ptr noundef %i.ay) #7 ; 2 uses
  %.not129 = icmp eq i32 %i.gy, 0
  br i1 %.not129, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @msize_pvar_name) ; 0 uses
  %i.ha = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.gy) #7 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.hb = load i32, ptr %i.d, align 4, !tbaa !17  ; 3 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  br i1 %i.hc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.bf
  %wide.trip.count = zext nneg i32 %i.hb to i64   ; 9 uses
  %min.iters.check = icmp ult i32 %i.hb, 26
  br i1 %min.iters.check, label %.lr.ph.preheader230, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.hd = shl nuw nsw i64 %wide.trip.count, 3
  %i.he = add nsw i64 %i.au, %wide.trip.count
  %i.hf = shl nsw i64 %i.he, 3
  %scevgep = getelementptr i8, ptr %i.aq, i64 %i.hf ; 3 uses
  %i.hg = add nsw i64 %i.ax, %wide.trip.count
  %i.hh = shl nsw i64 %i.hg, 3
  %scevgep205 = getelementptr i8, ptr %i.aq, i64 %i.hh ; 3 uses
  %scevgep206 = getelementptr i8, ptr %i.aq, i64 %i.hd ; 2 uses
  %i.hi = add nsw i64 %i.ar, %wide.trip.count
  %i.hj = shl nsw i64 %i.hi, 3
  %scevgep207 = getelementptr i8, ptr %i.aq, i64 %i.hj ; 2 uses
  %bound0 = icmp ult ptr %i.av, %scevgep205
  %bound1 = icmp ult ptr %i.ay, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0208 = icmp ult ptr %i.av, %scevgep206
  %bound1209 = icmp ult ptr %i.aq, %scevgep
  %found.conflict210 = and i1 %bound0208, %bound1209
  %conflict.rdx = or i1 %found.conflict, %found.conflict210
  %bound0211 = icmp ult ptr %i.av, %scevgep207
  %bound1212 = icmp ult ptr %i.as, %scevgep
  %found.conflict213 = and i1 %bound0211, %bound1212
  %conflict.rdx214 = or i1 %conflict.rdx, %found.conflict213
  %bound0215 = icmp ult ptr %i.ay, %scevgep206
  %bound1216 = icmp ult ptr %i.aq, %scevgep205
  %found.conflict217 = and i1 %bound0215, %bound1216
  %conflict.rdx218 = or i1 %conflict.rdx214, %found.conflict217
  %bound0219 = icmp ult ptr %i.ay, %scevgep207
  %bound1220 = icmp ult ptr %i.as, %scevgep205
  %found.conflict221 = and i1 %bound0219, %bound1220
  %conflict.rdx222 = or i1 %conflict.rdx218, %found.conflict221
  br i1 %conflict.rdx222, label %.lr.ph.preheader230, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %wide.load = load <2 x i64>, ptr %i.hk, align 8, !tbaa !29, !alias.scope !31
  %wide.load223 = load <2 x i64>, ptr %i.hl, align 8, !tbaa !29, !alias.scope !31
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %wide.load224 = load <2 x i64>, ptr %i.hm, align 8, !tbaa !29, !alias.scope !32, !noalias !33
  %wide.load225 = load <2 x i64>, ptr %i.hn, align 8, !tbaa !29, !alias.scope !32, !noalias !33
  %i.ho = sub <2 x i64> %wide.load224, %wide.load
  %i.hp = sub <2 x i64> %wide.load225, %wide.load223
  store <2 x i64> %i.ho, ptr %i.hm, align 8, !tbaa !29, !alias.scope !32, !noalias !33
  store <2 x i64> %i.hp, ptr %i.hn, align 8, !tbaa !29, !alias.scope !32, !noalias !33
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %wide.load226 = load <2 x i64>, ptr %i.hq, align 8, !tbaa !29, !alias.scope !34
  %wide.load227 = load <2 x i64>, ptr %i.hr, align 8, !tbaa !29, !alias.scope !34
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 2 uses
  %wide.load228 = load <2 x i64>, ptr %i.hs, align 8, !tbaa !29, !alias.scope !35, !noalias !36
  %wide.load229 = load <2 x i64>, ptr %i.ht, align 8, !tbaa !29, !alias.scope !35, !noalias !36
  %i.hu = sub <2 x i64> %wide.load228, %wide.load226
  %i.hv = sub <2 x i64> %wide.load229, %wide.load227
  store <2 x i64> %i.hu, ptr %i.hs, align 8, !tbaa !29, !alias.scope !35, !noalias !36
  store <2 x i64> %i.hv, ptr %i.ht, align 8, !tbaa !29, !alias.scope !35, !noalias !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hw = icmp eq i64 %index.next, %n.vec
  br i1 %i.hw, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader230

.lr.ph.preheader230:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader230
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.ph
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !29
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.ph ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !29
  %i.ib = sub i64 %i.ia, %i.hy
  store i64 %i.ib, ptr %i.hz, align 8, !tbaa !29
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.ph
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !29
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.ph ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !29
  %i.ig = sub i64 %i.if, %i.id
  store i64 %i.ig, ptr %i.ie, align 8, !tbaa !29
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader230
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader230 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ih = add nsw i64 %wide.trip.count, -1
  %i.ii = icmp eq i64 %indvars.iv.ph, %i.ih
  br i1 %i.ii, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.bf
  %i.ij = load i32, ptr @world_rank, align 4, !tbaa !17 ; 2 uses
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.bg, label %bb.bj

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.im = load i64, ptr %i.il, align 8, !tbaa !29
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !29
  %i.ip = sub i64 %i.io, %i.im
  store i64 %i.ip, ptr %i.in, align 8, !tbaa !29
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !29
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !29
  %i.iu = sub i64 %i.it, %i.ir
  store i64 %i.iu, ptr %i.is, align 8, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !29
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !29
  %i.iz = sub i64 %i.iy, %i.iw
  store i64 %i.iz, ptr %i.ix, align 8, !tbaa !29
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !29
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next ; 2 uses
end_hunk_0
