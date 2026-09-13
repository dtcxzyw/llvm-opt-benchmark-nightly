Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/common_ompio_file_read?download=true
inline.NumInlined: 25
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_datatype_t = type { %struct.ompi_datatype_t, [208 x i8] }
%struct.ompi_datatype_t = type { %struct.opal_datatype_t, i32, i32, ptr, ptr, i64, i64, [64 x i8] }
%struct.opal_datatype_t = type { %struct.opal_object_t, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, [64 x i8], %struct.dt_type_desc_t, %struct.dt_type_desc_t, ptr }
%struct.opal_object_t = type { ptr, i32 }
%struct.dt_type_desc_t = type { i64, i64, ptr }
%struct.opal_class_t = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }
%struct.ompi_request_fns_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.opal_convertor_t = type { %struct.opal_object_t, i32, i32, i64, i64, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, i32, i64, i64, i32, i32, i64, [5 x %struct.dt_stack_t], ptr, ptr }
%struct.dt_stack_t = type { i32, i16, i16, i64, i64 }
%struct.ompi_status_public_t = type { i32, i32, i32, i32, i64 }

@ompi_mpi_byte = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_mpi_char = external global %struct.ompi_predefined_datatype_t, align 8
@opal_class_init_epoch = external local_unnamed_addr global i32, align 4
@opal_convertor_t_class = external global %struct.opal_class_t, align 8
@.str = private unnamed_addr constant [39 x i8] c"common_ompio: error allocating memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"common_ompio: could not allocate memory.\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"cycle_buffer_size\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"pipeline_buffer_size\00", align 1
@ompi_request_functions = external local_unnamed_addr global %struct.ompi_request_fns_t, align 8

; Function Attrs: nounwind uwtable
define i32 @mca_common_ompio_file_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 7 uses
  %i.j = alloca i64, align 8                      ; 7 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %i.m = alloca ptr, align 8                      ; 9 uses
  %i.n = alloca ptr, align 8                      ; 6 uses
  %5 = alloca %struct.opal_convertor_t, align 8   ; 19 uses
  %6 = alloca %struct.ompi_status_public_t, align 8 ; 5 uses
  %i.o = alloca i64, align 8                      ; 8 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !32
  %i.t = and i32 %i.s, 4
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.b, label %bb.al

bb.b:                                             ; preds = %bb.a
  %i.u = icmp eq i32 %2, 0
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.w = load i32, ptr %i.v, align 8, !tbaa !33
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not31 = icmp eq ptr %4, null
  br i1 %.not31, label %bb.al, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.y, align 8, !tbaa !35
  br label %bb.al

bb.f:                                             ; preds = %bb.c
  call void @mca_common_ompio_check_gpu_buf(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q) #7
  %i.z = load i32, ptr %i.p, align 4, !tbaa !36
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = load i32, ptr %i.q, align 4
  %i.ac = icmp eq i32 %i.ab, 0
  %or.cond.not = select i1 %i.aa, i1 %i.ac, i1 false
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !37
  %i.af = and i32 %i.ae, 1024
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = icmp ne ptr %3, @ompi_mpi_byte
  %or.cond3.not39 = and i1 %i.ah, %i.ag
  %i.ai = icmp ne ptr %3, @ompi_mpi_char
  %or.cond5.not36 = and i1 %i.ai, %or.cond3.not39
  %brmerge = select i1 %or.cond5.not36, i1 true, i1 %or.cond.not
  br i1 %brmerge, label %.critedge, label %bb.ag

.critedge:                                        ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  store i64 0, ptr %i.h, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  store i32 0, ptr %i.i, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  store i64 0, ptr %i.j, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  store i32 0, ptr %i.k, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  store i32 0, ptr %i.l, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #7
  store ptr null, ptr %i.m, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #7
  store ptr null, ptr %i.n, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 5 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !43
  %.not144.i = icmp eq ptr %i.am, null            ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !95
  %i.ap = call i32 %i.ao(ptr noundef nonnull @.str.3, i32 noundef 21) #7, !inline_history !90 ; 2 uses
  %i.aq = sext i32 %i.ap to i64                   ; 10 uses
  %i.ar = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !36
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_convertor_t_class, i64 32), align 8, !tbaa !47
  %.not.i = icmp eq i32 %i.ar, %i.as
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @opal_class_initialize(ptr noundef nonnull @opal_convertor_t_class) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  store ptr @opal_convertor_t_class, ptr %5, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  store volatile i32 1, ptr %i.at, align 8, !tbaa !50
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_convertor_t_class, i64 40), align 8, !tbaa !51 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !52 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.av, null
  br i1 %.not6.i.i, label %opal_obj_run_constructors.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %i.aw = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %i.av, %bb.h ]
  %.07.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %i.au, %bb.h ]
  call void %i.aw(ptr noundef nonnull %5) #7, !inline_history !91
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !52 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %opal_obj_run_constructors.exit.i, label %.lr.ph.i.i, !llvm.loop !0

opal_obj_run_constructors.exit.i:                 ; preds = %.lr.ph.i.i, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !54 ; 2 uses
  %i.bb = sext i32 %2 to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.bc, align 8, !tbaa !36
  store <2 x i32> %i.bf, ptr %i.bd, align 8, !tbaa !36
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !61
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 96
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !61
  %i.bj = call i32 @opal_convertor_prepare_for_recv(ptr noundef nonnull %5, ptr noundef %3, i64 noundef range(i64 -2147483648, 2147483648) %i.bb, ptr noundef %1) #7 ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !62
  %i.bm = load i32, ptr %i.be, align 4, !tbaa !63 ; 4 uses
  %i.bn = and i32 %i.bm, 524288
  %.not.i122.i = icmp ne i32 %i.bn, 0
  %i.bo = and i32 %i.bm, 327680
  %or.cond.i.i = icmp eq i32 %i.bo, 262144
  %or.cond16.i.i = or i1 %.not.i122.i, %or.cond.i.i
  %i.bp = and i32 %i.bm, 196608
  %or.cond15.not.i.i = icmp eq i32 %i.bp, 196608
  %or.cond17.i.i = or i1 %or.cond15.not.i.i, %or.cond16.i.i
  br i1 %or.cond17.i.i, label %opal_convertor_get_packed_size.exit.i, label %bb.i

bb.i:                                             ; preds = %opal_obj_run_constructors.exit.i
  %i.bq = and i32 %i.bm, 536870912
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bs = call i64 @opal_convertor_compute_remote_size(ptr noundef nonnull %5) #7 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !64
  br label %opal_convertor_get_packed_size.exit.i

opal_convertor_get_packed_size.exit.i:            ; preds = %bb.k, %opal_obj_run_constructors.exit.i
  %.0125.i = phi i64 [ %i.bl, %opal_obj_run_constructors.exit.i ], [ %i.bu, %bb.k ] ; 5 uses
  %i.bv = icmp eq i32 %i.ap, 0
  %i.bw = select i1 %i.bv, i64 %.0125.i, i64 %i.aq
  %i.bx = call ptr @mca_common_ompio_alloc_buf(ptr noundef nonnull %0, i64 noundef %i.bw) #7 ; 7 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.l, label %bb.m

bb.l:                                             ; preds = %opal_convertor_get_packed_size.exit.i
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str) #7
  br label %mca_common_ompio_file_read_pipelined.exit

bb.m:                                             ; preds = %opal_convertor_get_packed_size.exit.i
  %i.bz = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #8 ; 13 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.1) #7
  br label %mca_common_ompio_file_read_pipelined.exit

bb.o:                                             ; preds = %bb.m
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !66
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 5 uses
  store i64 %.0125.i, ptr %i.cb, align 8, !tbaa !67
  store i32 1, ptr %i.i, align 4, !tbaa !36
  %i.cc = uitofp i64 %.0125.i to double
  %i.cd = uitofp i64 %i.aq to double
  %i.ce = fdiv double %i.cc, %i.cd
  %i.cf = call double @llvm.ceil.f64(double %i.ce)
  %i.cg = fptosi double %i.cf to i32              ; 8 uses
  br i1 %.not144.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = call ptr @mca_common_ompio_alloc_buf(ptr noundef nonnull %0, i64 noundef %i.aq) #7 ; 5 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.q, label %.lr.ph.i.a

bb.q:                                             ; preds = %bb.p
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str) #7
  call void @free(ptr noundef nonnull %i.bz) #7
  br label %mca_common_ompio_file_read_pipelined.exit

bb.r:                                             ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !68
  store i32 %i.ck, ptr %i.l, align 4, !tbaa !36
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %.not221.i = icmp eq i32 %i.cg, 0
  br i1 %.not221.i, label %.thread140.peel.thread.i, label %bb.s

.lr.ph.i.a:                                       ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 232
  %10 = load i32, ptr %i.cl, align 8, !tbaa !68
  store i32 %10, ptr %i.l, align 4, !tbaa !36
  call void @mca_common_ompio_register_progress() #7
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %.not191.i = icmp eq i32 %i.cg, 0
  br i1 %.not191.i, label %._crit_edge164.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.a, %bb.r
  %14 = phi ptr [ %13, %.lr.ph.i.a ], [ %9, %bb.r ] ; 2 uses
  %15 = phi ptr [ %12, %.lr.ph.i.a ], [ %8, %bb.r ] ; 4 uses
  %16 = phi ptr [ %11, %.lr.ph.i.a ], [ %7, %bb.r ] ; 3 uses
  %.095128186.i = phi ptr [ %i.ch, %.lr.ph.i.a ], [ null, %bb.r ] ; 4 uses
  %.093130180.i = phi ptr [ %i.ch, %.lr.ph.i.a ], [ %i.bx, %bb.r ] ; 3 uses
  %17 = add nsw i32 %i.cg, -1                     ; 2 uses
  %18 = zext i32 %17 to i64                       ; 2 uses
  %19 = zext nneg i32 %i.cg to i64                ; 2 uses
  %wide.trip.count190.in.i = add nuw i32 %i.cg, 1
  %wide.trip.count190.i = zext i32 %wide.trip.count190.in.i to i64 ; 2 uses
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !66
  store i64 %i.aq, ptr %i.cb, align 8, !tbaa !67
  %i.cm = icmp eq i32 %17, 0
  %i.cn = select i1 %i.cm, i64 %.0125.i, i64 %i.aq ; 4 uses
  store i32 0, ptr %i.k, align 4, !tbaa !36
  store i64 0, ptr %i.j, align 8, !tbaa !38
  store i64 0, ptr %i.h, align 8, !tbaa !38
  %i.co = call i32 @mca_common_ompio_build_io_array(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.cg, i64 noundef %i.aq, i64 noundef %i.cn, i32 noundef 1, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j, ptr noundef nonnull %16, ptr noundef nonnull %15) #7 ; 0 uses
  %i.cp = load i32, ptr %15, align 8, !tbaa !69
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %.split.loop.exit145.loopexit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.not144.i, label %bb.u, label %.thread132.peel.i

.thread132.peel.i:                                ; preds = %bb.t
  call void @mca_common_ompio_request_alloc(ptr noundef nonnull %i.m, i32 noundef 1) #7
  %i.cr = load ptr, ptr %i.aj, align 8, !tbaa !41
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !43
  %i.cu = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.cv = call i64 %i.ct(ptr noundef nonnull %0, ptr noundef %i.cu) #7, !inline_history !90 ; 0 uses
  br label %._crit_edge164.i

bb.u:                                             ; preds = %bb.t
  %i.cw = load ptr, ptr %i.aj, align 8, !tbaa !41
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !96
  %i.cz = call i64 %i.cy(ptr noundef nonnull %0) #7, !inline_history !90 ; 3 uses
  %i.da = icmp sgt i64 %i.cz, -1
  br i1 %i.da, label %.thread140.peel.i, label %.split.loop.exit145.loopexit.i

._crit_edge164.i:                                 ; preds = %.thread132.peel.i, %.lr.ph.i.a
  %wide.trip.count187.i = phi i64 [ %wide.trip.count190.i, %.thread132.peel.i ], [ 1, %.lr.ph.i.a ]
  %20 = phi i64 [ %19, %.thread132.peel.i ], [ 0, %.lr.ph.i.a ]
  %21 = phi i64 [ %18, %.thread132.peel.i ], [ 4294967295, %.lr.ph.i.a ]
  %22 = phi ptr [ %14, %.thread132.peel.i ], [ %13, %.lr.ph.i.a ]
  %23 = phi ptr [ %15, %.thread132.peel.i ], [ %12, %.lr.ph.i.a ]
  %24 = phi ptr [ %16, %.thread132.peel.i ], [ %11, %.lr.ph.i.a ]
  %.095128181.i = phi ptr [ %.095128186.i, %.thread132.peel.i ], [ %i.ch, %.lr.ph.i.a ]
  %.pre.i.a = phi ptr [ %.093130180.i, %.thread132.peel.i ], [ %i.ch, %.lr.ph.i.a ]
  %.1107137.peel.i = phi i64 [ %i.cn, %.thread132.peel.i ], [ 0, %.lr.ph.i.a ]
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !40
  store ptr %.pre.i, ptr %i.n, align 8, !tbaa !40
  br label %.thread140.peel.thread.i

.thread140.peel.i:                                ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #7
  store i64 0, ptr %i.o, align 8, !tbaa !38
  store ptr %.093130180.i, ptr %i.bz, align 8, !tbaa !66
  store i64 %i.cn, ptr %i.cb, align 8, !tbaa !67
  %i.db = call i32 @opal_convertor_unpack(ptr noundef nonnull %5, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.i, ptr noundef nonnull %i.o) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  br label %.thread140.peel.thread.i

.thread140.peel.thread.i:                         ; preds = %.thread140.peel.i, %._crit_edge164.i, %bb.r
  %.4103.peel181.i = phi i64 [ 0, %bb.r ], [ %i.cz, %.thread140.peel.i ], [ 0, %._crit_edge164.i ] ; 2 uses
  %.1107136.peel208.i = phi i64 [ 0, %bb.r ], [ %i.cn, %.thread140.peel.i ], [ %.1107137.peel.i, %._crit_edge164.i ]
  %.093130178207.i = phi ptr [ %i.bx, %bb.r ], [ %.093130180.i, %.thread140.peel.i ], [ %.pre.i.a, %._crit_edge164.i ]
  %.095128184206.i = phi ptr [ null, %bb.r ], [ %.095128186.i, %.thread140.peel.i ], [ %.095128181.i, %._crit_edge164.i ] ; 5 uses
  %25 = phi ptr [ %7, %bb.r ], [ %16, %.thread140.peel.i ], [ %24, %._crit_edge164.i ] ; 5 uses
  %26 = phi ptr [ %8, %bb.r ], [ %15, %.thread140.peel.i ], [ %23, %._crit_edge164.i ] ; 4 uses
  %27 = phi ptr [ %9, %bb.r ], [ %14, %.thread140.peel.i ], [ %22, %._crit_edge164.i ]
  %28 = phi i64 [ 4294967295, %bb.r ], [ %18, %.thread140.peel.i ], [ %21, %._crit_edge164.i ]
  %29 = phi i64 [ 0, %bb.r ], [ %19, %.thread140.peel.i ], [ %20, %._crit_edge164.i ]
  %.1107136.peel180.i = phi i64 [ 1, %bb.r ], [ %wide.trip.count190.i, %.thread140.peel.i ], [ %wide.trip.count187.i, %._crit_edge164.i ]
  store i32 0, ptr %26, align 8, !tbaa !69
  %i.dc = load ptr, ptr %25, align 8, !tbaa !70
  call void @free(ptr noundef %i.dc) #7
  store ptr null, ptr %25, align 8, !tbaa !70
  %exitcond.peel.not.i = icmp eq i32 %i.cg, 0
  br i1 %exitcond.peel.not.i, label %.split.loop.exit145.loopexit.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %.thread140.peel.thread.i, %bb.ab
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ab ], [ 1, %.thread140.peel.thread.i ] ; 5 uses
  %.092159.i = phi ptr [ %spec.select120.i, %bb.ab ], [ %.093130178207.i, %.thread140.peel.thread.i ] ; 3 uses
  %.194158.i = phi ptr [ %spec.select.i, %bb.ab ], [ %i.bx, %.thread140.peel.thread.i ] ; 3 uses
  %.099157.i = phi i64 [ %.4103188.i, %bb.ab ], [ %.4103.peel181.i, %.thread140.peel.thread.i ] ; 5 uses
  %.0105155.i = phi i64 [ %.1107136186.i, %bb.ab ], [ %.1107136.peel208.i, %.thread140.peel.thread.i ] ; 3 uses
  %.not192.i = icmp samesign ult i64 %indvars.iv.i, %29
  br i1 %.not192.i, label %bb.v, label %bb.y

bb.v:                                             ; preds = %.peel.next.i
  store ptr %.092159.i, ptr %i.bz, align 8, !tbaa !66
  store i64 %i.aq, ptr %i.cb, align 8, !tbaa !67
  %i.dd = icmp eq i64 %indvars.iv.i, %28
  %i.de = mul nsw i64 %indvars.iv.i, %i.aq
  %i.df = sub i64 %.0125.i, %i.de
  %i.dg = select i1 %i.dd, i64 %i.df, i64 %i.aq   ; 3 uses
  store i32 0, ptr %i.k, align 4, !tbaa !36
  store i64 0, ptr %i.j, align 8, !tbaa !38
  store i64 0, ptr %i.h, align 8, !tbaa !38
  %i.dh = load i32, ptr %i.i, align 4, !tbaa !36
  %i.di = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.dj = call i32 @mca_common_ompio_build_io_array(ptr noundef nonnull %0, i32 noundef %i.di, i32 noundef %i.cg, i64 noundef %i.aq, i64 noundef %i.dg, i32 noundef %i.dh, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j, ptr noundef nonnull %25, ptr noundef nonnull %26) #7 ; 0 uses
  %i.dk = load i32, ptr %26, align 8, !tbaa !69
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %.split.loop.exit145.loopexit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not144.i, label %bb.x, label %.thread132.i

.thread132.i:                                     ; preds = %bb.w
  call void @mca_common_ompio_request_alloc(ptr noundef nonnull %i.m, i32 noundef 1) #7
  %i.dm = load ptr, ptr %i.aj, align 8, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !43
  %i.dp = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.dq = call i64 %i.do(ptr noundef nonnull %0, ptr noundef %i.dp) #7, !inline_history !90 ; 0 uses
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dr = load ptr, ptr %i.aj, align 8, !tbaa !41
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !96
  %i.du = call i64 %i.dt(ptr noundef nonnull %0) #7, !inline_history !90 ; 3 uses
  %i.dv = icmp sgt i64 %i.du, -1
  br i1 %i.dv, label %.thread.i, label %.split.loop.exit145.loopexit.i

bb.y:                                             ; preds = %.peel.next.i
  br i1 %.not144.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread132.i
  %.1107137.i = phi i64 [ %i.dg, %.thread132.i ], [ %.0105155.i, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !98
  %i.dx = call i32 %i.dw(ptr noundef nonnull %i.n, ptr noundef nonnull %6) #7, !inline_history !90 ; 2 uses
  %.not117.i = icmp eq i32 %i.dx, 0
  %i.dy = load i64, ptr %27, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br i1 %.not117.i, label %bb.aa, label %.split.loop.exit145.i

bb.aa:                                            ; preds = %bb.z
  %i.dz = load ptr, ptr %i.m, align 8, !tbaa !40
  store ptr %i.dz, ptr %i.n, align 8, !tbaa !40
  br label %.thread.i

.thread.i:                                        ; preds = %bb.x, %bb.aa
  %.pn = phi i64 [ %i.dy, %bb.aa ], [ %i.du, %bb.x ]
  %.1107136185.i = phi i64 [ %.1107137.i, %bb.aa ], [ %i.dg, %bb.x ] ; 2 uses
  %.4103187.i = add i64 %.pn, %.099157.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #7
  store i64 0, ptr %i.o, align 8, !tbaa !38
  store ptr %.194158.i, ptr %i.bz, align 8, !tbaa !66
  %i.ea = select i1 %.not144.i, i64 %.1107136185.i, i64 %.0105155.i
  store i64 %i.ea, ptr %i.cb, align 8, !tbaa !67
  %i.eb = call i32 @opal_convertor_unpack(ptr noundef nonnull %5, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.i, ptr noundef nonnull %i.o) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  %.pre = load ptr, ptr %25, align 8, !tbaa !70
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %.thread.i
  %i.ec = phi ptr [ %.pre, %.thread.i ], [ null, %bb.y ]
  %.4103188.i = phi i64 [ %.4103187.i, %.thread.i ], [ %.099157.i, %bb.y ] ; 2 uses
  %.1107136186.i = phi i64 [ %.1107136185.i, %.thread.i ], [ %.0105155.i, %bb.y ]
  store i32 0, ptr %26, align 8, !tbaa !69
  call void @free(ptr noundef %i.ec) #7
  store ptr null, ptr %25, align 8, !tbaa !70
  %spec.select.i = select i1 %.not144.i, ptr %.194158.i, ptr %.092159.i
  %spec.select120.i = select i1 %.not144.i, ptr %.092159.i, ptr %.194158.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.1107136.peel180.i
  br i1 %exitcond.not.i, label %.split.loop.exit145.loopexit.i, label %.peel.next.i, !llvm.loop !92

.split.loop.exit145.loopexit.i:                   ; preds = %bb.ab, %bb.x, %bb.v, %.thread140.peel.thread.i, %bb.u, %bb.s
  %.095128183.i = phi ptr [ %.095128186.i, %bb.s ], [ %.095128186.i, %bb.u ], [ %.095128184206.i, %.thread140.peel.thread.i ], [ %.095128184206.i, %bb.v ], [ %.095128184206.i, %bb.x ], [ %.095128184206.i, %bb.ab ]
  %.099.lcssa.ph.i = phi i64 [ 0, %bb.s ], [ 0, %bb.u ], [ %.4103.peel181.i, %.thread140.peel.thread.i ], [ %.4103188.i, %bb.ab ], [ %.099157.i, %bb.x ], [ %.099157.i, %bb.v ]
  %.4.ph.i = phi i64 [ 0, %bb.s ], [ %i.cz, %bb.u ], [ 0, %.thread140.peel.thread.i ], [ 0, %bb.ab ], [ %i.du, %bb.x ], [ 0, %bb.v ]
  %i.ed = trunc i64 %.4.ph.i to i32
  br label %.split.loop.exit145.i

.split.loop.exit145.i:                            ; preds = %bb.z, %.split.loop.exit145.loopexit.i
  %.095128182.i = phi ptr [ %.095128183.i, %.split.loop.exit145.loopexit.i ], [ %.095128184206.i, %bb.z ]
  %.099.lcssa.i = phi i64 [ %.099.lcssa.ph.i, %.split.loop.exit145.loopexit.i ], [ %.099157.i, %bb.z ]
  %.4.i = phi i32 [ %i.ed, %.split.loop.exit145.loopexit.i ], [ %i.dx, %bb.z ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !71
  %i.eg = icmp ugt i32 %i.ef, 5
  br i1 %i.eg, label %bb.ac, label %opal_convertor_cleanup.exit.i, !prof !72

bb.ac:                                            ; preds = %.split.loop.exit145.i
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !73
  call void @free(ptr noundef %i.ei) #7
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 144
  store ptr %i.ej, ptr %i.eh, align 8, !tbaa !73
  store i32 5, ptr %i.ee, align 8, !tbaa !71
  br label %opal_convertor_cleanup.exit.i

opal_convertor_cleanup.exit.i:                    ; preds = %bb.ac, %.split.loop.exit145.i
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ek, align 8, !tbaa !74
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i32 0, ptr %i.el, align 8, !tbaa !75
  store i32 134217760, ptr %i.be, align 4, !tbaa !63
  call void @mca_common_ompio_release_buf(ptr noundef nonnull %0, ptr noundef nonnull %i.bx) #7
  br i1 %.not144.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %opal_convertor_cleanup.exit.i
  call void @mca_common_ompio_release_buf(ptr noundef nonnull %0, ptr noundef %.095128182.i) #7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %opal_convertor_cleanup.exit.i
  call void @free(ptr noundef %i.bz) #7
  %.not118.i = icmp eq ptr %4, null
  br i1 %.not118.i, label %mca_common_ompio_file_read_pipelined.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.099.lcssa.i, ptr %i.em, align 8, !tbaa !35
  br label %mca_common_ompio_file_read_pipelined.exit

mca_common_ompio_file_read_pipelined.exit:        ; preds = %bb.l, %bb.n, %bb.q, %bb.ae, %bb.af
  %.0.i = phi i32 [ -2, %bb.l ], [ -2, %bb.n ], [ -2, %bb.q ], [ %.4.i, %bb.af ], [ %.4.i, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  br label %bb.al

bb.ag:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.a, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store ptr null, ptr %i.c, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i64 0, ptr %i.d, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store i64 0, ptr %i.e, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  store i32 0, ptr %i.f, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !77
  %i.ep = call i32 @mca_common_ompio_decode_datatype(ptr noundef nonnull %0, ptr noundef %3, i32 noundef range(i32 1, 0) %2, ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef %i.eo, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !95
  %i.es = call i32 %i.er(ptr noundef nonnull @.str.2, i32 noundef 18) #7, !inline_history !93
  %i.et = sext i32 %i.es to i64                   ; 2 uses
  %i.eu = load i64, ptr %i.d, align 8, !tbaa !38
  %i.ev = uitofp i64 %i.eu to double
  %i.ew = uitofp i64 %i.et to double
  %i.ex = fdiv double %i.ev, %i.ew
  %i.ey = call double @llvm.ceil.f64(double %i.ex)
  %i.ez = fptosi double %i.ey to i32              ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !68
  store i32 %i.fb, ptr %i.g, align 4, !tbaa !36
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.not43.i = icmp eq i32 %i.ez, 0
  br i1 %.not43.i, label %._crit_edge.i, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.ag
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.lr.ph.i33
  %.02935.i = phi i64 [ 0, %.lr.ph.i33 ], [ %i.fq, %bb.aj ] ; 3 uses
  %.03034.i = phi i32 [ 0, %.lr.ph.i33 ], [ %i.fs, %bb.aj ] ; 2 uses
  %i.ff = load i64, ptr %i.d, align 8, !tbaa !38
  %i.fg = load i32, ptr %i.b, align 4, !tbaa !36
  %i.fh = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.fi = call i32 @mca_common_ompio_build_io_array(ptr noundef nonnull %0, i32 noundef %.03034.i, i32 noundef %i.ez, i64 noundef %i.et, i64 noundef %i.ff, i32 noundef %i.fg, ptr noundef %i.fh, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.fd, ptr noundef nonnull %i.fe) #7 ; 0 uses
  %i.fj = load i32, ptr %i.fe, align 8, !tbaa !69
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %._crit_edge.loopexit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fl = load ptr, ptr %i.fc, align 8, !tbaa !41
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !96
  %i.fo = call i64 %i.fn(ptr noundef nonnull %0) #7, !inline_history !93 ; 3 uses
  %i.fp = icmp sgt i64 %i.fo, -1
  br i1 %i.fp, label %bb.aj, label %._crit_edge.loopexit.i

bb.aj:                                            ; preds = %bb.ai
  %i.fq = add i64 %i.fo, %.02935.i                ; 2 uses
  store i32 0, ptr %i.fe, align 8, !tbaa !69
  %i.fr = load ptr, ptr %i.fd, align 8, !tbaa !70
  call void @free(ptr noundef %i.fr) #7
  store ptr null, ptr %i.fd, align 8, !tbaa !70
  %i.fs = add nuw nsw i32 %.03034.i, 1            ; 2 uses
  %exitcond.not.i34 = icmp eq i32 %i.fs, %i.ez
  br i1 %exitcond.not.i34, label %._crit_edge.loopexit.i, label %bb.ah, !llvm.loop !94

._crit_edge.loopexit.i:                           ; preds = %bb.aj, %bb.ai, %bb.ah
  %.029.lcssa.ph.i = phi i64 [ %.02935.i, %bb.ai ], [ %i.fq, %bb.aj ], [ %.02935.i, %bb.ah ]
  %.1.ph.i = phi i64 [ %i.fo, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ah ]
  %i.ft = trunc i64 %.1.ph.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.ag
  %.029.lcssa.i = phi i64 [ 0, %bb.ag ], [ %.029.lcssa.ph.i, %._crit_edge.loopexit.i ]
  %.1.i = phi i32 [ 0, %bb.ag ], [ %i.ft, %._crit_edge.loopexit.i ]
  %i.fu = load ptr, ptr %i.c, align 8, !tbaa !76
  call void @free(ptr noundef %i.fu) #7
  %.not.i32 = icmp eq ptr %4, null
  br i1 %.not.i32, label %mca_common_ompio_file_read_default.exit, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.029.lcssa.i, ptr %i.fv, align 8, !tbaa !35
  br label %mca_common_ompio_file_read_default.exit

mca_common_ompio_file_read_default.exit:          ; preds = %._crit_edge.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.al

bb.al:                                            ; preds = %bb.d, %bb.e, %bb.a, %mca_common_ompio_file_read_default.exit, %mca_common_ompio_file_read_pipelined.exit
  %.026 = phi i32 [ %.1.i, %mca_common_ompio_file_read_default.exit ], [ 20, %bb.a ], [ %.0.i, %mca_common_ompio_file_read_pipelined.exit ], [ 0, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #7
  ret i32 %.026
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @mca_common_ompio_check_gpu_buf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @mca_common_ompio_file_read_at(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 @mca_common_ompio_file_get_position(ptr noundef %0, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !78   ; 3 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %mca_common_ompio_set_explicit_offset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = load i64, ptr %i.e, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = load i64, ptr %i.g, align 8, !tbaa !80
  %i.i = mul i64 %i.h, %1                         ; 2 uses
  %i.j = udiv i64 %i.i, %i.d
  %i.k = mul i64 %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !81
  %i.n = add i64 %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !82
  %i.p = urem i64 %i.i, %i.d                      ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.p, ptr %i.q, align 8, !tbaa !83
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !67   ; 2 uses
  %.not2425.i = icmp ult i64 %i.p, %i.w
  br i1 %.not2425.i, label %mca_common_ompio_set_explicit_offset.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.b ]
  %.026.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %i.w, %bb.b ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv.next.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !67
  %i.aa = add i64 %i.z, %.026.i                   ; 2 uses
  %.not24.i = icmp ult i64 %i.p, %i.aa
  br i1 %.not24.i, label %..loopexit_crit_edge.i, label %.lr.ph.i, !llvm.loop !1

..loopexit_crit_edge.i:                           ; preds = %.lr.ph.i
  %i.ab = trunc nsw i64 %indvars.iv.next.i to i32
  store i64 %.026.i, ptr %i.s, align 8, !tbaa !84
  store i32 %i.ab, ptr %i.r, align 8, !tbaa !68
  br label %mca_common_ompio_set_explicit_offset.exit

mca_common_ompio_set_explicit_offset.exit:        ; preds = %bb.a, %bb.b, %..loopexit_crit_edge.i
  %i.ac = call i32 @mca_common_ompio_file_read(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !78  ; 3 uses
  %.not.i9 = icmp eq i64 %i.ad, 0
  br i1 %.not.i9, label %mca_common_ompio_set_explicit_offset.exit17, label %bb.c

bb.c:                                             ; preds = %mca_common_ompio_set_explicit_offset.exit
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !86
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !79
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !80
  %i.aj = mul i64 %i.ai, %i.ae                    ; 2 uses
  %i.ak = udiv i64 %i.aj, %i.ad
  %i.al = mul i64 %i.ak, %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !81
  %i.ao = add i64 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !82
  %i.aq = urem i64 %i.aj, %i.ad                   ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !83
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i32 0, ptr %i.as, align 8, !tbaa !68
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store i64 0, ptr %i.at, align 8, !tbaa !84
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !85 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !67 ; 2 uses
  %.not2425.i10 = icmp ult i64 %i.aq, %i.ax
  br i1 %.not2425.i10, label %mca_common_ompio_set_explicit_offset.exit17, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %bb.c, %.lr.ph.i11
  %indvars.iv.i12 = phi i64 [ %indvars.iv.next.i14, %.lr.ph.i11 ], [ 0, %bb.c ]
  %.026.i13 = phi i64 [ %i.bb, %.lr.ph.i11 ], [ %i.ax, %bb.c ] ; 2 uses
  %indvars.iv.next.i14 = add nuw nsw i64 %indvars.iv.i12, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv.next.i14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !67
  %i.bb = add i64 %i.ba, %.026.i13                ; 2 uses
  %.not24.i15 = icmp ult i64 %i.aq, %i.bb
  br i1 %.not24.i15, label %..loopexit_crit_edge.i16, label %.lr.ph.i11, !llvm.loop !1

..loopexit_crit_edge.i16:                         ; preds = %.lr.ph.i11
  %i.bc = trunc nsw i64 %indvars.iv.next.i14 to i32
  store i64 %.026.i13, ptr %i.at, align 8, !tbaa !84
  store i32 %i.bc, ptr %i.as, align 8, !tbaa !68
  br label %mca_common_ompio_set_explicit_offset.exit17

mca_common_ompio_set_explicit_offset.exit17:      ; preds = %mca_common_ompio_set_explicit_offset.exit, %bb.c, %..loopexit_crit_edge.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.ac
}

declare i32 @mca_common_ompio_file_get_position(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @mca_common_ompio_set_explicit_offset(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load i64, ptr %i.a, align 8, !tbaa !78   ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

end_hunk_0
