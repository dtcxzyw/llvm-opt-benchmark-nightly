Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/monitoring_test?download=true
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_communicator_t = type opaque
%struct.ompi_predefined_datatype_t = type opaque
%struct.ompi_predefined_info_t = type opaque

@ompi_mpi_comm_world = external global %struct.ompi_predefined_communicator_t, align 1
@.str = private unnamed_addr constant [12 x i8] c"--with-mpit\00", align 1
@with_mpit = internal unnamed_addr global i1 false, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"--without-rma\00", align 1
@with_rma = internal unnamed_addr global i1 false, align 4
@flush_pvar_name = internal constant [21 x i8] c"pml_monitoring_flush\00", align 16
@flush_pvar_idx = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [76 x i8] c"cannot find monitoring MPI_T \22%s\22 pvar, check that you have monitoring pml\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"cannot create a session for \22%s\22 pvar\0A\00", align 1
@flush_handle = internal global ptr null, align 8
@.str.6 = private unnamed_addr constant [76 x i8] c"failed to allocate handle on \22%s\22 pvar, check that you have monitoring pml\0A\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"failed to start handle on \22%s\22 pvar, check that you have monitoring pml\0A\00", align 1
@ompi_mpi_int = external global %struct.ompi_predefined_datatype_t, align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"prof/phase_1\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [49 x i8] c"Process %d cannot save monitoring in %s.%d.prof\0A\00", align 1
@.str.10 = private unnamed_addr constant [72 x i8] c"failed to stop handle on \22%s\22 pvar, check that you have monitoring pml\0A\00", align 1
@nullbuf = internal global ptr null, align 8
@.str.11 = private unnamed_addr constant [41 x i8] c"Process %d cannot save monitoring in %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"prof/phase_2\00", align 1
@ompi_mpi_info_null = external global %struct.ompi_predefined_info_t, align 1
@.str.13 = private unnamed_addr constant [69 x i8] c"Error on checking exchanged values: %s_buff[%d] == %d instead of %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"win\00", align 1
@.str.16 = private unnamed_addr constant [70 x i8] c"Error on checking exchanged values: win_buff[%d] == %d instead of %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"prof/phase_3\00", align 1
@.str.18 = private unnamed_addr constant [72 x i8] c"failed to free handle on \22%s\22 pvar, check that you have monitoring pml\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"cannot close a session for \22%s\22 pvar\0A\00", align 1
@str = private unnamed_addr constant [20 x i8] c"disable RMA testing\00", align 1
@str.1 = private unnamed_addr constant [20 x i8] c"enable MPIT support\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 20 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 19 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %i.g = alloca ptr, align 8                      ; 17 uses
  %i.h = alloca ptr, align 8                      ; 14 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca [1024 x i8], align 16             ; 13 uses
  %i.k = alloca [10240 x i32], align 16           ; 3 uses
  %i.l = alloca [10240 x i32], align 16           ; 3 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %i.n = alloca ptr, align 8                      ; 16 uses
  %i.o = alloca [10240 x i32], align 16           ; 14 uses
  %i.p = alloca [10240 x i32], align 16           ; 8 uses
  %i.q = alloca ptr, align 8                      ; 5 uses
  %i.r = alloca ptr, align 8                      ; 5 uses
  %i.s = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  store ptr @ompi_mpi_comm_world, ptr %i.i, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  %i.t = icmp sgt i32 %0, 1
  br i1 %i.t, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.c, %bb.a
  store i32 -1, ptr %i.c, align 4, !tbaa !18
  %i.u = tail call i32 @MPI_Init(ptr noundef null, ptr noundef null) #6 ; 0 uses
  %i.v = call i32 @MPI_Comm_rank(ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.f) #6 ; 0 uses
  %i.w = call i32 @MPI_Comm_size(ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.x = load i32, ptr %i.f, align 4, !tbaa !18   ; 3 uses
  store i32 %i.x, ptr %i.a, align 4, !tbaa !18
  %2 = add nsw i32 %i.x, 1
  %3 = load i32, ptr %i.b, align 4, !tbaa !18     ; 2 uses
  %4 = srem i32 %2, %3                            ; 2 uses
  %5 = add nsw i32 %i.x, -1
  %6 = srem i32 %5, %3
  %.b110 = load i1, ptr @with_mpit, align 4
  br i1 %.b110, label %bb.d, label %bb.n

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.c
  %indvars.iv = phi i64 [ 1, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20   ; 2 uses
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(12) @.str) #7
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(14) @.str.2) #7
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %.lr.ph.split
  %with_mpit.sink = phi ptr [ @with_mpit, %.lr.ph.split ], [ @with_rma, %bb.b ]
  %str.1.sink = phi ptr [ @str.1, %.lr.ph.split ], [ @str, %bb.b ]
  store i1 true, ptr %with_mpit.sink, align 4
  %puts141 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.1.sink) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !9

bb.d:                                             ; preds = %._crit_edge
  %i.ae = call i32 @MPI_T_init_thread(i32 noundef 0, ptr noundef nonnull %i.d) #6 ; 2 uses
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.ae) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = call i32 @MPI_T_pvar_get_index(ptr noundef nonnull @flush_pvar_name, i32 noundef 9, ptr noundef nonnull @flush_pvar_idx) #6 ; 2 uses
  %.not112 = icmp eq i32 %i.ag, 0
  br i1 %.not112, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @flush_pvar_name) ; 0 uses
  %i.ai = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.ag) #6 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = call i32 @MPI_T_pvar_session_create(ptr noundef nonnull %i.g) #6 ; 2 uses
  %.not113 = icmp eq i32 %i.aj, 0
  br i1 %.not113, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @flush_pvar_name) ; 0 uses
  %i.al = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.aj) #6 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.an = load i32, ptr @flush_pvar_idx, align 4, !tbaa !18
  %i.ao = call i32 @MPI_T_pvar_handle_alloc(ptr noundef %i.am, i32 noundef %i.an, ptr noundef nonnull %i.i, ptr noundef nonnull @flush_handle, ptr noundef nonnull %i.e) #6 ; 2 uses
  %.not114 = icmp eq i32 %i.ao, 0
  br i1 %.not114, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @flush_pvar_name) ; 0 uses
  %i.aq = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.ao) #6 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.as = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.at = call i32 @MPI_T_pvar_start(ptr noundef %i.ar, ptr noundef %i.as) #6 ; 2 uses
  %.not115 = icmp eq i32 %i.at, 0
  br i1 %.not115, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @flush_pvar_name) ; 0 uses
  %i.av = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.at) #6 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %._crit_edge
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !18
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.o, label %.preheader199

bb.o:                                             ; preds = %bb.n
  store i32 25, ptr %i.c, align 4, !tbaa !18
  %i.ay = call i32 @MPI_Send(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %4, i32 noundef 201, ptr noundef nonnull @ompi_mpi_comm_world) #6 ; 0 uses
  br label %.preheader199

.preheader199:                                    ; preds = %bb.o, %bb.n
  br label %bb.p

bb.p:                                             ; preds = %.preheader199, %thread-pre-split
  %.089 = phi i32 [ %.2, %thread-pre-split ], [ 201, %.preheader199 ] ; 3 uses
  %i.az = call i32 @MPI_Recv(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %6, i32 noundef %.089, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef null) #6 ; 0 uses
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !18
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bc = load i32, ptr %i.c, align 4, !tbaa !18
  %i.bd = add nsw i32 %i.bc, -1
  store i32 %i.bd, ptr %i.c, align 4, !tbaa !18
  %i.be = add nsw i32 %.089, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1 = phi i32 [ %i.be, %bb.q ], [ %.089, %bb.p ] ; 3 uses
  %i.bf = call i32 @MPI_Send(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %4, i32 noundef %.1, ptr noundef nonnull @ompi_mpi_comm_world) #6 ; 0 uses
  %i.bg = load i32, ptr %i.a, align 4, !tbaa !18
  %.not116 = icmp eq i32 %i.bg, 0
  %.pr = load i32, ptr %i.c, align 4, !tbaa !18   ; 2 uses
  br i1 %.not116, label %thread-pre-split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = add nsw i32 %.pr, -1                    ; 2 uses
  store i32 %i.bh, ptr %i.c, align 4, !tbaa !18
  %i.bi = add nsw i32 %.1, 1
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.r, %bb.s
  %i.bj = phi i32 [ %i.bh, %bb.s ], [ %.pr, %bb.r ]
  %.2 = phi i32 [ %i.bi, %bb.s ], [ %.1, %bb.r ]
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %bb.t, label %bb.p

bb.t:                                             ; preds = %thread-pre-split
  %.b109 = load i1, ptr @with_mpit, align 4
  br i1 %.b109, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %i.j, ptr noundef nonnull align 1 dereferenceable(13) @.str.8, i64 13, i1 false)
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.bm = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.bn = call i32 @MPI_T_pvar_write(ptr noundef %i.bl, ptr noundef %i.bm, ptr noundef nonnull %i.j) #6
  %.not117 = icmp eq i32 %i.bn, 0
  br i1 %.not117, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.bp = load i32, ptr %i.f, align 4, !tbaa !18  ; 2 uses
  %i.bq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bo, ptr noundef nonnull @.str.9, i32 noundef %i.bp, ptr noundef nonnull %i.j, i32 noundef %i.bp) #8 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.bs = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.bt = call i32 @MPI_T_pvar_stop(ptr noundef %i.br, ptr noundef %i.bs) #6 ; 2 uses
  %.not118 = icmp eq i32 %i.bt, 0
  br i1 %.not118, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @flush_pvar_name) ; 0 uses
  %i.bv = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.bt) #6 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.bx = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.by = call i32 @MPI_T_pvar_start(ptr noundef %i.bw, ptr noundef %i.bx) #6 ; 2 uses
  %.not119 = icmp eq i32 %i.by, 0
  br i1 %.not119, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @flush_pvar_name) ; 0 uses
  %i.ca = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.by) #6 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.cc = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.cd = call i32 @MPI_T_pvar_write(ptr noundef %i.cb, ptr noundef %i.cc, ptr noundef nonnull @nullbuf) #6
  %.not120 = icmp eq i32 %i.cd, 0
  br i1 %.not120, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.cf = load i32, ptr %i.f, align 4, !tbaa !18
  %i.cg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ce, ptr noundef nonnull @.str.11, i32 noundef %i.cf, ptr noundef nonnull %i.j) #8 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.t
  %i.ch = load i32, ptr %i.a, align 4, !tbaa !18  ; 2 uses
  %i.ci = srem i32 %i.ch, 2
  %i.cj = call i32 @MPI_Comm_split(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.ci, i32 noundef %i.ch, ptr noundef nonnull %i.h) #6 ; 0 uses
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !18
  %i.cl = and i32 %i.ck, 1
  %.not121 = icmp eq i32 %i.cl, 0
  br i1 %.not121, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.cn = call i32 @MPI_Comm_rank(ptr noundef %i.cm, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.cp = call i32 @MPI_Comm_size(ptr noundef %i.co, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.cq = load i32, ptr %i.b, align 4, !tbaa !18  ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.ae, label %.loopexit146

bb.ae:                                            ; preds = %bb.ad
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !18  ; 3 uses
  %7 = add nsw i32 %i.cs, 1
  %8 = srem i32 %7, %i.cq                         ; 2 uses
  %9 = add nsw i32 %i.cs, -1
  %10 = srem i32 %9, %i.cq
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.af, label %.preheader

bb.af:                                            ; preds = %bb.ae
  store i32 50, ptr %i.c, align 4, !tbaa !18
  %i.cu = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.cv = call i32 @MPI_Send(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %8, i32 noundef 201, ptr noundef %i.cu) #6 ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.af, %bb.ae
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader, %thread-pre-split142
  %.3 = phi i32 [ %.5, %thread-pre-split142 ], [ 201, %.preheader ] ; 3 uses
  %i.cw = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.cx = call i32 @MPI_Recv(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %10, i32 noundef %.3, ptr noundef %i.cw, ptr noundef null) #6 ; 0 uses
  %i.cy = load i32, ptr %i.a, align 4, !tbaa !18
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.da = load i32, ptr %i.c, align 4, !tbaa !18
  %i.db = add nsw i32 %i.da, -1
  store i32 %i.db, ptr %i.c, align 4, !tbaa !18
  %i.dc = add nsw i32 %.3, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.4 = phi i32 [ %i.dc, %bb.ah ], [ %.3, %bb.ag ] ; 3 uses
  %i.dd = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.de = call i32 @MPI_Send(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %8, i32 noundef %.4, ptr noundef %i.dd) #6 ; 0 uses
  %i.df = load i32, ptr %i.a, align 4, !tbaa !18
  %.not122 = icmp eq i32 %i.df, 0
  %.pr143 = load i32, ptr %i.c, align 4, !tbaa !18 ; 2 uses
  br i1 %.not122, label %thread-pre-split142, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dg = add nsw i32 %.pr143, -1                 ; 2 uses
  store i32 %i.dg, ptr %i.c, align 4, !tbaa !18
  %i.dh = add nsw i32 %.4, 1
  br label %thread-pre-split142

thread-pre-split142:                              ; preds = %bb.ai, %bb.aj
  %i.di = phi i32 [ %i.dg, %bb.aj ], [ %.pr143, %bb.ai ]
  %.5 = phi i32 [ %i.dh, %bb.aj ], [ %.4, %bb.ai ]
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %.loopexit146, label %bb.ag

bb.ak:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #6
  %i.dk = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.dl = call i32 @MPI_Comm_rank(ptr noundef %i.dk, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.dm = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.dn = call i32 @MPI_Comm_size(ptr noundef %i.dm, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.do = load i32, ptr %i.b, align 4, !tbaa !18
  %i.dp = sdiv i32 10240, %i.do                   ; 2 uses
  %i.dq = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.dr = call i32 @MPI_Alltoall(ptr noundef nonnull %i.k, i32 noundef %i.dp, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull %i.l, i32 noundef %i.dp, ptr noundef nonnull @ompi_mpi_int, ptr noundef %i.dq) #6 ; 0 uses
  %i.ds = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.dt = load i32, ptr %i.a, align 4, !tbaa !18  ; 2 uses
  %i.du = srem i32 %i.dt, 2
  %i.dv = call i32 @MPI_Comm_split(ptr noundef %i.ds, i32 noundef %i.du, i32 noundef %i.dt, ptr noundef nonnull %i.m) #6 ; 0 uses
  %i.dw = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.dx = call i32 @MPI_Barrier(ptr noundef %i.dw) #6 ; 0 uses
  %i.dy = call i32 @MPI_Comm_free(ptr noundef nonnull %i.m) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  br label %.loopexit146

.loopexit146:                                     ; preds = %thread-pre-split142, %bb.ad, %bb.ak
  %.b108 = load i1, ptr @with_mpit, align 4
  br i1 %.b108, label %bb.al, label %bb.at

bb.al:                                            ; preds = %.loopexit146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %i.j, ptr noundef nonnull align 1 dereferenceable(13) @.str.12, i64 13, i1 false)
  %i.dz = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.ea = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.eb = call i32 @MPI_T_pvar_write(ptr noundef %i.dz, ptr noundef %i.ea, ptr noundef nonnull %i.j) #6
  %.not123 = icmp eq i32 %i.eb, 0
  br i1 %.not123, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ec = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ed = load i32, ptr %i.f, align 4, !tbaa !18  ; 2 uses
  %i.ee = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ec, ptr noundef nonnull @.str.9, i32 noundef %i.ed, ptr noundef nonnull %i.j, i32 noundef %i.ed) #8 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ef = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.eg = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.eh = call i32 @MPI_T_pvar_stop(ptr noundef %i.ef, ptr noundef %i.eg) #6 ; 2 uses
  %.not124 = icmp eq i32 %i.eh, 0
  br i1 %.not124, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @flush_pvar_name) ; 0 uses
  %i.ej = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.eh) #6 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ek = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.el = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.em = call i32 @MPI_T_pvar_start(ptr noundef %i.ek, ptr noundef %i.el) #6 ; 2 uses
  %.not125 = icmp eq i32 %i.em, 0
  br i1 %.not125, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.en = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull @flush_pvar_name) ; 0 uses
  %i.eo = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.em) #6 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ep = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.eq = load ptr, ptr @flush_handle, align 8, !tbaa !25
  %i.er = call i32 @MPI_T_pvar_write(ptr noundef %i.ep, ptr noundef %i.eq, ptr noundef nonnull @nullbuf) #6
  %.not126 = icmp eq i32 %i.er, 0
  br i1 %.not126, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.es = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.et = load i32, ptr %i.f, align 4, !tbaa !18
  %i.eu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.es, ptr noundef nonnull @.str.11, i32 noundef %i.et, ptr noundef nonnull %i.j) #8 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %.loopexit146
  %.b111 = load i1, ptr @with_rma, align 4
  br i1 %.b111, label %bb.bl, label %vector.ph

vector.ph:                                        ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #6
  %i.ev = call i32 @MPI_Comm_rank(ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.ew = call i32 @MPI_Comm_size(ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.ex = load i32, ptr %i.a, align 4, !tbaa !18  ; 3 uses
  %i.ey = load i32, ptr %i.b, align 4, !tbaa !18  ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ex, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ez, align 16, !tbaa !18
  store <4 x i32> %broadcast.splat, ptr %i.fa, align 16, !tbaa !18
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.fb, align 16, !tbaa !18
  store <4 x i32> %broadcast.splat, ptr %i.fc, align 16, !tbaa !18
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index.next ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.fd, align 16, !tbaa !18
  store <4 x i32> %broadcast.splat, ptr %i.fe, align 16, !tbaa !18
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index.next ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ff, align 16, !tbaa !18
  store <4 x i32> %broadcast.splat, ptr %i.fg, align 16, !tbaa !18
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.fh = icmp eq i64 %index.next.1, 10240
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %i.fi = add nsw i32 %i.ex, 1
  %i.fj = srem i32 %i.fi, %i.ey                   ; 5 uses
  %i.fk = add i32 %i.ex, -1
  %i.fl = add i32 %i.fk, %i.ey
  %i.fm = srem i32 %i.fl, %i.ey                   ; 6 uses
  %i.fn = call i32 @MPI_Win_create(ptr noundef nonnull %i.p, i64 noundef 40960, i32 noundef 4, ptr noundef nonnull @ompi_mpi_info_null, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.n) #6 ; 0 uses
  %i.fo = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.fp = call i32 @MPI_Win_fence(i32 noundef 2, ptr noundef %i.fo) #6 ; 0 uses
  %i.fq = load i32, ptr %i.a, align 4, !tbaa !18
  %i.fr = and i32 %i.fq, 1
  %.not127 = icmp eq i32 %i.fr, 0
  %i.fs = load ptr, ptr %i.n, align 8, !tbaa !31  ; 2 uses
  br i1 %.not127, label %bb.av, label %bb.au

bb.au:                                            ; preds = %middle.block
  %i.ft = call i32 @MPI_Win_fence(i32 noundef 12, ptr noundef %i.fs) #6 ; 0 uses
  %i.fu = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.fv = call i32 @MPI_Get(ptr noundef nonnull %i.o, i32 noundef 10240, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.fm, i64 noundef 0, i32 noundef 10240, ptr noundef nonnull @ompi_mpi_int, ptr noundef %i.fu) #6 ; 0 uses
  br label %bb.aw

bb.av:                                            ; preds = %middle.block
  %i.fw = call i32 @MPI_Put(ptr noundef nonnull %i.o, i32 noundef 10240, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.fj, i64 noundef 0, i32 noundef 10240, ptr noundef nonnull @ompi_mpi_int, ptr noundef %i.fs) #6 ; 0 uses
  %i.fx = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.fy = call i32 @MPI_Win_fence(i32 noundef 12, ptr noundef %i.fx) #6 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fz = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.ga = call i32 @MPI_Win_fence(i32 noundef 16, ptr noundef %i.fz) #6 ; 0 uses
  br label %bb.ay

bb.ax:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #6
  %i.gb = call i32 @MPI_Comm_group(ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %i.q) #6 ; 0 uses
  %i.gc = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.gd = call i32 @MPI_Comm_group(ptr noundef %i.gc, ptr noundef nonnull %i.r) #6 ; 0 uses
  %i.ge = load ptr, ptr %i.q, align 8, !tbaa !33
  %i.gf = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.gg = call i32 @MPI_Group_difference(ptr noundef %i.ge, ptr noundef %i.gf, ptr noundef nonnull %i.s) #6 ; 0 uses
  %i.gh = load i32, ptr %i.a, align 4, !tbaa !18
  %i.gi = and i32 %i.gh, 1
  %.not128 = icmp eq i32 %i.gi, 0
  %i.gj = load ptr, ptr %i.s, align 8, !tbaa !33  ; 2 uses
  %i.gk = load ptr, ptr %i.n, align 8, !tbaa !31  ; 2 uses
  br i1 %.not128, label %bb.bg, label %bb.bc

bb.ay:                                            ; preds = %bb.aw, %bb.bb
  %indvars.iv158 = phi i64 [ 0, %bb.aw ], [ %indvars.iv.next159, %bb.bb ] ; 4 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv158
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !18 ; 3 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv158
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !18
  %.not135 = icmp eq i32 %i.gm, %i.go
  br i1 %.not135, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gp = load i32, ptr %i.a, align 4, !tbaa !18  ; 2 uses
  %i.gq = and i32 %i.gp, 1
  %.not136 = icmp eq i32 %i.gq, 0                 ; 2 uses
  %or.cond145.v = select i1 %.not136, i32 %i.gp, i32 %i.fm ; 2 uses
  %or.cond145.not = icmp eq i32 %i.gm, %or.cond145.v
  br i1 %or.cond145.not, label %bb.bb, label %bb.ba
end_hunk_0
