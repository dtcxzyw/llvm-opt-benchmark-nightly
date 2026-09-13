Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/common_ompio_file_write?download=true
inline.NumInlined: 18
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
@.str.2 = private unnamed_addr constant [15 x i8] c"OUT OF MEMORY\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"cycle_buffer_size\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"pipeline_buffer_size\00", align 1
@ompi_request_functions = external local_unnamed_addr global %struct.ompi_request_fns_t, align 8

; Function Attrs: nounwind uwtable
define i32 @mca_common_ompio_file_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = alloca i64, align 8                      ; 7 uses
  %i.j = alloca i64, align 8                      ; 7 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %i.m = alloca i64, align 8                      ; 7 uses
  %i.n = alloca ptr, align 8                      ; 9 uses
  %i.o = alloca ptr, align 8                      ; 6 uses
  %5 = alloca %struct.opal_convertor_t, align 8   ; 16 uses
  %6 = alloca %struct.ompi_status_public_t, align 8 ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !31
  %i.t = and i32 %i.s, 2
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.b, label %bb.al

bb.b:                                             ; preds = %bb.a
  %i.u = icmp eq i32 %2, 0
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.w = load i32, ptr %i.v, align 8, !tbaa !32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not34 = icmp eq ptr %4, null
  br i1 %.not34, label %bb.al, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.y, align 8, !tbaa !34
  br label %bb.al

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #8
  call void @mca_common_ompio_check_gpu_buf(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q) #8
  %i.z = load i32, ptr %i.p, align 4, !tbaa !35
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = load i32, ptr %i.q, align 4
  %i.ac = icmp eq i32 %i.ab, 0
  %or.cond.not = select i1 %i.aa, i1 %i.ac, i1 false
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !36
  %i.af = and i32 %i.ae, 1024
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = icmp ne ptr %3, @ompi_mpi_byte
  %or.cond3.not43 = and i1 %i.ah, %i.ag
  %i.ai = icmp ne ptr %3, @ompi_mpi_char
  %or.cond5.not40 = and i1 %i.ai, %or.cond3.not43
  %brmerge = select i1 %or.cond5.not40, i1 true, i1 %or.cond.not
  br i1 %brmerge, label %.critedge, label %bb.af

.critedge:                                        ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  store i32 0, ptr %i.h, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  store i64 0, ptr %i.i, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #8
  store i64 0, ptr %i.j, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #8
  store i32 0, ptr %i.k, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #8
  store i32 0, ptr %i.l, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #8
  store i64 0, ptr %i.m, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #8
  store ptr null, ptr %i.n, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #8
  store ptr null, ptr %i.o, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 5 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42
  %.not.i = icmp eq ptr %i.am, null               ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !84
  %i.ap = call i32 %i.ao(ptr noundef nonnull @.str.4, i32 noundef 21) #8, !inline_history !79 ; 2 uses
  %i.aq = sext i32 %i.ap to i64                   ; 7 uses
  %i.ar = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !35
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_convertor_t_class, i64 32), align 8, !tbaa !46
  %.not93.i = icmp eq i32 %i.ar, %i.as
  br i1 %.not93.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @opal_class_initialize(ptr noundef nonnull @opal_convertor_t_class) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  store ptr @opal_convertor_t_class, ptr %5, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  store volatile i32 1, ptr %i.at, align 8, !tbaa !49
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_convertor_t_class, i64 40), align 8, !tbaa !50 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !51 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.av, null
  br i1 %.not6.i.i, label %opal_obj_run_constructors.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %i.aw = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %i.av, %bb.h ]
  %.07.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %i.au, %bb.h ]
  call void %i.aw(ptr noundef nonnull %5) #8, !inline_history !80
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !51 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %opal_obj_run_constructors.exit.i, label %.lr.ph.i.i, !llvm.loop !0

opal_obj_run_constructors.exit.i:                 ; preds = %.lr.ph.i.i, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !53 ; 2 uses
  %i.bb = sext i32 %2 to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bf = load <2 x i32>, ptr %i.bc, align 8, !tbaa !35
  %i.bg = or <2 x i32> %i.bf, <i32 0, i32 65536>
  store <2 x i32> %i.bg, ptr %i.bd, align 8, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !60
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 96
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !60
  %i.bk = call i32 @opal_convertor_prepare_for_send(ptr noundef nonnull %5, ptr noundef %3, i64 noundef range(i64 -2147483648, 2147483648) %i.bb, ptr noundef %1) #8 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !61
  %i.bn = load i32, ptr %i.be, align 4, !tbaa !62 ; 4 uses
  %i.bo = and i32 %i.bn, 524288
  %.not.i99.i = icmp ne i32 %i.bo, 0
  %i.bp = and i32 %i.bn, 327680
  %or.cond.i.i = icmp eq i32 %i.bp, 262144
  %or.cond16.i.i = or i1 %.not.i99.i, %or.cond.i.i
  %i.bq = and i32 %i.bn, 196608
  %or.cond15.not.i.i = icmp eq i32 %i.bq, 196608
  %or.cond17.i.i = or i1 %or.cond15.not.i.i, %or.cond16.i.i
  br i1 %or.cond17.i.i, label %opal_convertor_get_packed_size.exit.i, label %bb.i

bb.i:                                             ; preds = %opal_obj_run_constructors.exit.i
  %i.br = and i32 %i.bn, 536870912
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = call i64 @opal_convertor_compute_remote_size(ptr noundef nonnull %5) #8 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !63
  br label %opal_convertor_get_packed_size.exit.i

opal_convertor_get_packed_size.exit.i:            ; preds = %bb.k, %opal_obj_run_constructors.exit.i
  %.0101.i = phi i64 [ %i.bm, %opal_obj_run_constructors.exit.i ], [ %i.bv, %bb.k ] ; 3 uses
  %i.bw = icmp eq i32 %i.ap, 0
  %i.bx = select i1 %i.bw, i64 %.0101.i, i64 %i.aq
  %i.by = call ptr @mca_common_ompio_alloc_buf(ptr noundef nonnull %0, i64 noundef %i.bx) #8 ; 9 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %opal_convertor_get_packed_size.exit.i
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str) #8
  br label %mca_common_ompio_file_write_pipelined.exit

bb.m:                                             ; preds = %opal_convertor_get_packed_size.exit.i
  %i.ca = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #9 ; 11 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.1) #8
  br label %mca_common_ompio_file_write_pipelined.exit

bb.o:                                             ; preds = %bb.m
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !65
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  store i64 %.0101.i, ptr %i.cc, align 8, !tbaa !66
  store i32 1, ptr %i.h, align 4, !tbaa !35
  %i.cd = uitofp i64 %.0101.i to double
  %i.ce = uitofp i64 %i.aq to double
  %i.cf = fdiv double %i.cd, %i.ce
  %i.cg = call double @llvm.ceil.f64(double %i.cf)
  %i.ch = fptosi double %i.cg to i32              ; 6 uses
  br i1 %.not.i, label %.thread.i, label %bb.p

.thread.i:                                        ; preds = %bb.o
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %8 = load i32, ptr %7, align 8, !tbaa !67
  store i32 %8, ptr %i.l, align 4, !tbaa !35
  br label %9

bb.p:                                             ; preds = %bb.o
  %i.ci = call ptr @mca_common_ompio_alloc_buf(ptr noundef nonnull %0, i64 noundef %i.aq) #8 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str) #8
  call void @free(ptr noundef nonnull %i.ca) #8
  br label %mca_common_ompio_file_write_pipelined.exit

bb.r:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !67
  store i32 %i.cl, ptr %i.l, align 4, !tbaa !35
  call void @mca_common_ompio_register_progress() #8
  br label %9

9:                                                ; preds = %bb.r, %.thread.i
  %spec.select98.peel.i = phi ptr [ null, %.thread.i ], [ %i.by, %bb.r ]
  %spec.select.peel.i = phi ptr [ %i.by, %.thread.i ], [ %i.ci, %bb.r ]
  %.073103.i = phi ptr [ null, %.thread.i ], [ %i.ci, %bb.r ] ; 2 uses
  %.not94127.i = icmp slt i32 %i.ch, 0
  br i1 %.not94127.i, label %._crit_edge.i.a, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %9
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.not153.i = icmp eq i32 %i.ch, 0               ; 2 uses
  br i1 %.not153.i, label %10, label %bb.s

10:                                               ; preds = %.lr.ph.i.a
  br i1 %.not.i, label %.thread104.peel.i, label %._crit_edge139.i

bb.s:                                             ; preds = %.lr.ph.i.a
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !65
  store i64 %i.aq, ptr %i.cc, align 8, !tbaa !66
  store i32 1, ptr %i.h, align 4, !tbaa !35
  %i.cp = call i32 @opal_convertor_pack(ptr noundef nonnull %5, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.h, ptr noundef nonnull %i.m) #8 ; 0 uses
  store i64 0, ptr %i.j, align 8, !tbaa !37
  store i64 0, ptr %i.i, align 8, !tbaa !37
  store i32 0, ptr %i.k, align 4, !tbaa !35
  %i.cq = load i64, ptr %i.m, align 8, !tbaa !37
  %i.cr = call i32 @mca_common_ompio_build_io_array(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.ch, i64 noundef %i.aq, i64 noundef %i.cq, i32 poison, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cn) ; 0 uses
  %i.cs = load i32, ptr %i.cn, align 8, !tbaa !68
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %._crit_edge.i.a, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.not.i, label %bb.u, label %.thread107.peel.i

.thread107.peel.i:                                ; preds = %bb.t
  call void @mca_common_ompio_request_alloc(ptr noundef nonnull %i.n, i32 noundef 0) #8
  %i.cu = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !42
  %i.cx = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.cy = call i64 %i.cw(ptr noundef nonnull %0, ptr noundef %i.cx) #8, !inline_history !79 ; 0 uses
  %.pre.i.pre = load ptr, ptr %i.n, align 8, !tbaa !39
  br label %._crit_edge139.i

._crit_edge139.i:                                 ; preds = %.thread107.peel.i, %10
  %.pre.i.a = phi ptr [ %.pre.i.pre, %.thread107.peel.i ], [ null, %10 ]
  store ptr %.pre.i.a, ptr %i.o, align 8, !tbaa !39
  br label %.thread104.peel.i

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !85
  %i.dc = call i64 %i.db(ptr noundef nonnull %0) #8, !inline_history !79 ; 3 uses
  %i.dd = icmp sgt i64 %i.dc, -1
  br i1 %i.dd, label %.thread104.peel.i, label %.sink.split.i

.thread104.peel.i:                                ; preds = %bb.u, %._crit_edge139.i, %10
  %.484.peel.i = phi i64 [ 0, %._crit_edge139.i ], [ 0, %10 ], [ %i.dc, %bb.u ] ; 2 uses
  store i32 0, ptr %i.cn, align 8, !tbaa !68
  %i.de = load ptr, ptr %i.cm, align 8, !tbaa !69
  call void @free(ptr noundef %i.de) #8
  store ptr null, ptr %i.cm, align 8, !tbaa !69
  br i1 %.not153.i, label %._crit_edge.i.a, label %.peel.next.i

.peel.next.i:                                     ; preds = %.thread104.peel.i, %bb.ab
  %.1131.i = phi ptr [ %spec.select98.i, %bb.ab ], [ %spec.select98.peel.i, %.thread104.peel.i ] ; 2 uses
  %.074130.i = phi ptr [ %spec.select.i, %bb.ab ], [ %spec.select.peel.i, %.thread104.peel.i ] ; 3 uses
  %.080129.i = phi i64 [ %.484.i, %bb.ab ], [ %.484.peel.i, %.thread104.peel.i ] ; 6 uses
  %.085128.i = phi i32 [ %i.ec, %bb.ab ], [ 1, %.thread104.peel.i ] ; 4 uses
  %11 = icmp slt i32 %.085128.i, %i.ch
  br i1 %11, label %bb.v, label %bb.y

bb.v:                                             ; preds = %.peel.next.i
  store ptr %.074130.i, ptr %i.ca, align 8, !tbaa !65
  store i64 %i.aq, ptr %i.cc, align 8, !tbaa !66
  store i32 1, ptr %i.h, align 4, !tbaa !35
  %i.df = call i32 @opal_convertor_pack(ptr noundef nonnull %5, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.h, ptr noundef nonnull %i.m) #8 ; 0 uses
  store i64 0, ptr %i.j, align 8, !tbaa !37
  store i64 0, ptr %i.i, align 8, !tbaa !37
  store i32 0, ptr %i.k, align 4, !tbaa !35
  %i.dg = load i64, ptr %i.m, align 8, !tbaa !37
  %i.dh = call i32 @mca_common_ompio_build_io_array(ptr noundef nonnull %0, i32 noundef %.085128.i, i32 noundef %i.ch, i64 noundef %i.aq, i64 noundef %i.dg, i32 poison, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cn) ; 0 uses
  %i.di = load i32, ptr %i.cn, align 8, !tbaa !68
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %._crit_edge.i.a, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not.i, label %bb.x, label %.thread107.i

.thread107.i:                                     ; preds = %bb.w
  call void @mca_common_ompio_request_alloc(ptr noundef nonnull %i.n, i32 noundef 0) #8
  %i.dk = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !42
  %i.dn = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.do = call i64 %i.dm(ptr noundef nonnull %0, ptr noundef %i.dn) #8, !inline_history !79 ; 0 uses
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dp = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !85
  %i.ds = call i64 %i.dr(ptr noundef nonnull %0) #8, !inline_history !79 ; 3 uses
  %i.dt = icmp sgt i64 %i.ds, -1
  br i1 %i.dt, label %.thread104.i, label %.sink.split.i

.thread104.i:                                     ; preds = %bb.x
  %i.du = add i64 %i.ds, %.080129.i
  br label %bb.ab

bb.y:                                             ; preds = %.peel.next.i
  br i1 %.not.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread107.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !87
  %i.dw = call i32 %i.dv(ptr noundef nonnull %i.o, ptr noundef nonnull %6) #8, !inline_history !79 ; 2 uses
  %.not96.i = icmp eq i32 %i.dw, 0
  %i.dx = load i64, ptr %i.co, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br i1 %.not96.i, label %bb.aa, label %.thread117.i

.thread117.i:                                     ; preds = %bb.z
  %i.dy = zext i32 %i.dw to i64
  call void @mca_common_ompio_release_buf(ptr noundef nonnull %0, ptr noundef nonnull %i.by) #8
  br label %.sink.split.i

bb.aa:                                            ; preds = %bb.z
  %i.dz = add i64 %i.dx, %.080129.i
  %i.ea = load ptr, ptr %i.n, align 8, !tbaa !39
  store ptr %i.ea, ptr %i.o, align 8, !tbaa !39
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y, %.thread104.i
  %.484.i = phi i64 [ %i.dz, %bb.aa ], [ %.080129.i, %bb.y ], [ %i.du, %.thread104.i ] ; 2 uses
  store i32 0, ptr %i.cn, align 8, !tbaa !68
  %i.eb = load ptr, ptr %i.cm, align 8, !tbaa !69
  call void @free(ptr noundef %i.eb) #8
  store ptr null, ptr %i.cm, align 8, !tbaa !69
  %spec.select.i = select i1 %.not.i, ptr %.074130.i, ptr %.1131.i
  %spec.select98.i = select i1 %.not.i, ptr %.1131.i, ptr %.074130.i
  %i.ec = add nuw i32 %.085128.i, 1
  %exitcond.not.i = icmp eq i32 %.085128.i, %i.ch
  br i1 %exitcond.not.i, label %._crit_edge.i.a, label %.peel.next.i, !llvm.loop !81

._crit_edge.i.a:                                  ; preds = %bb.ab, %bb.v, %.thread104.peel.i, %bb.s, %9
  %.080.lcssa.i = phi i64 [ 0, %9 ], [ 0, %bb.s ], [ %.484.peel.i, %.thread104.peel.i ], [ %.080129.i, %bb.v ], [ %.484.i, %bb.ab ] ; 2 uses
  call void @mca_common_ompio_release_buf(ptr noundef nonnull %0, ptr noundef nonnull %i.by) #8
  br i1 %.not.i, label %bb.ac, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.x, %._crit_edge.i.a, %.thread117.i, %bb.u
  %.sink.i = phi ptr [ %i.by, %bb.u ], [ %.073103.i, %._crit_edge.i.a ], [ %.073103.i, %.thread117.i ], [ %i.by, %bb.x ]
  %.080124.ph.i = phi i64 [ 0, %bb.u ], [ %.080.lcssa.i, %._crit_edge.i.a ], [ %.080129.i, %.thread117.i ], [ %.080129.i, %bb.x ]
  %.4116.ph.i = phi i64 [ %i.dc, %bb.u ], [ 0, %._crit_edge.i.a ], [ %i.dy, %.thread117.i ], [ %i.ds, %bb.x ]
  call void @mca_common_ompio_release_buf(ptr noundef nonnull %0, ptr noundef %.sink.i) #8
  %i.ed = trunc i64 %.4116.ph.i to i32
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split.i, %._crit_edge.i.a
  %.080124.i = phi i64 [ %.080.lcssa.i, %._crit_edge.i.a ], [ %.080124.ph.i, %.sink.split.i ]
  %.4116.i = phi i32 [ 0, %._crit_edge.i.a ], [ %i.ed, %.sink.split.i ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !70
  %i.eg = icmp ugt i32 %i.ef, 5
  br i1 %i.eg, label %bb.ad, label %opal_convertor_cleanup.exit.i, !prof !71

bb.ad:                                            ; preds = %bb.ac
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !72
  call void @free(ptr noundef %i.ei) #8
  br label %opal_convertor_cleanup.exit.i

opal_convertor_cleanup.exit.i:                    ; preds = %bb.ad, %bb.ac
  call void @free(ptr noundef %i.ca) #8
  %.not97.i = icmp eq ptr %4, null
  br i1 %.not97.i, label %mca_common_ompio_file_write_pipelined.exit, label %bb.ae

bb.ae:                                            ; preds = %opal_convertor_cleanup.exit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.080124.i, ptr %i.ej, align 8, !tbaa !34
  br label %mca_common_ompio_file_write_pipelined.exit

mca_common_ompio_file_write_pipelined.exit:       ; preds = %opal_convertor_cleanup.exit.i, %bb.ae, %bb.l, %bb.n, %bb.q
  %.0.i = phi i32 [ -2, %bb.l ], [ -2, %bb.n ], [ -2, %bb.q ], [ %.4116.i, %bb.ae ], [ %.4116.i, %opal_convertor_cleanup.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  br label %bb.ak

bb.af:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr null, ptr %i.b, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i64 0, ptr %i.c, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i64 0, ptr %i.d, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i64 0, ptr %i.e, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i32 0, ptr %i.f, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !74
  %i.em = call i32 @mca_common_ompio_decode_datatype(ptr noundef nonnull %0, ptr noundef %3, i32 noundef range(i32 1, 0) %2, ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef %i.el, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !84
  %i.ep = call i32 %i.eo(ptr noundef nonnull @.str.3, i32 noundef 18) #8, !inline_history !82
  %i.eq = sext i32 %i.ep to i64                   ; 2 uses
  %i.er = load i64, ptr %i.d, align 8, !tbaa !37
  %i.es = uitofp i64 %i.er to double
  %i.et = uitofp i64 %i.eq to double
  %i.eu = fdiv double %i.es, %i.et
  %i.ev = call double @llvm.ceil.f64(double %i.eu)
  %i.ew = fptosi double %i.ev to i32              ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !67
  store i32 %i.ey, ptr %i.g, align 4, !tbaa !35
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 352
  %12 = icmp sgt i32 %i.ew, 0
  br i1 %12, label %.lr.ph.i37, label %._crit_edge.i35

.lr.ph.i37:                                       ; preds = %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %.lr.ph.i37
  %.02935.i = phi i64 [ 0, %.lr.ph.i37 ], [ %i.fm, %bb.ai ] ; 3 uses
  %.03034.i = phi i32 [ 0, %.lr.ph.i37 ], [ %i.fo, %bb.ai ] ; 2 uses
  %i.fc = load i64, ptr %i.d, align 8, !tbaa !37
  %i.fd = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.fe = call i32 @mca_common_ompio_build_io_array(ptr noundef nonnull %0, i32 noundef %.03034.i, i32 noundef %i.ew, i64 noundef %i.eq, i64 noundef %i.fc, i32 poison, ptr noundef %i.fd, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.fa, ptr noundef nonnull %i.fb) ; 0 uses
  %i.ff = load i32, ptr %i.fb, align 8, !tbaa !68
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %._crit_edge.loopexit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fh = load ptr, ptr %i.ez, align 8, !tbaa !40
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !85
  %i.fk = call i64 %i.fj(ptr noundef nonnull %0) #8, !inline_history !82 ; 3 uses
  %i.fl = icmp sgt i64 %i.fk, -1
  br i1 %i.fl, label %bb.ai, label %._crit_edge.loopexit.i

bb.ai:                                            ; preds = %bb.ah
  %i.fm = add i64 %i.fk, %.02935.i                ; 2 uses
  store i32 0, ptr %i.fb, align 8, !tbaa !68
  %i.fn = load ptr, ptr %i.fa, align 8, !tbaa !69
  call void @free(ptr noundef %i.fn) #8
  store ptr null, ptr %i.fa, align 8, !tbaa !69
  %i.fo = add nuw nsw i32 %.03034.i, 1            ; 2 uses
  %exitcond.not.i38 = icmp eq i32 %i.fo, %i.ew
  br i1 %exitcond.not.i38, label %._crit_edge.loopexit.i, label %bb.ag, !llvm.loop !83

._crit_edge.loopexit.i:                           ; preds = %bb.ai, %bb.ah, %bb.ag
  %.029.lcssa.ph.i = phi i64 [ %.02935.i, %bb.ah ], [ %i.fm, %bb.ai ], [ %.02935.i, %bb.ag ]
  %.1.ph.i = phi i64 [ %i.fk, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.ag ]
  %i.fp = trunc i64 %.1.ph.i to i32
  br label %._crit_edge.i35

._crit_edge.i35:                                  ; preds = %._crit_edge.loopexit.i, %bb.af
  %.029.lcssa.i = phi i64 [ 0, %bb.af ], [ %.029.lcssa.ph.i, %._crit_edge.loopexit.i ]
  %.1.i = phi i32 [ 0, %bb.af ], [ %i.fp, %._crit_edge.loopexit.i ]
  %i.fq = load ptr, ptr %i.b, align 8, !tbaa !73
  call void @free(ptr noundef %i.fq) #8
  %.not.i36 = icmp eq ptr %4, null
  br i1 %.not.i36, label %mca_common_ompio_file_write_default.exit, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i35
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.029.lcssa.i, ptr %i.fr, align 8, !tbaa !34
  br label %mca_common_ompio_file_write_default.exit

mca_common_ompio_file_write_default.exit:         ; preds = %._crit_edge.i35, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.ak

bb.ak:                                            ; preds = %mca_common_ompio_file_write_default.exit, %mca_common_ompio_file_write_pipelined.exit
  %.028 = phi i32 [ %.0.i, %mca_common_ompio_file_write_pipelined.exit ], [ %.1.i, %mca_common_ompio_file_write_default.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #8
  br label %bb.al

bb.al:                                            ; preds = %bb.d, %bb.e, %bb.a, %bb.ak
  %.129 = phi i32 [ %.028, %bb.ak ], [ 45, %bb.a ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.129
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @mca_common_ompio_check_gpu_buf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @mca_common_ompio_file_write_at(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = call i32 @mca_common_ompio_file_get_position(ptr noundef %0, ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.c = call i32 @mca_common_ompio_set_explicit_offset(ptr noundef %0, i64 noundef %1) #8 ; 0 uses
  %i.d = call i32 @mca_common_ompio_file_write(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  %i.e = load i64, ptr %i.a, align 8, !tbaa !75
  %i.f = call i32 @mca_common_ompio_set_explicit_offset(ptr noundef %0, i64 noundef %i.e) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %i.d
}

declare i32 @mca_common_ompio_file_get_position(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mca_common_ompio_set_explicit_offset(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @mca_common_ompio_file_iwrite(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %5 = alloca %struct.opal_convertor_t, align 8   ; 16 uses
  %6 = alloca %struct.ompi_status_public_t, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i64 0, ptr %i.b, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !31
  %i.n = and i32 %i.m, 2
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  call void @mca_common_ompio_request_alloc(ptr noundef nonnull %i.a, i32 noundef 0) #8
  %i.o = icmp eq i32 %2, 0
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !39   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store i32 0, ptr %i.q, align 8, !tbaa !96
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  store i64 0, ptr %i.r, align 8, !tbaa !97
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 136 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !98   ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.s, align 8, !tbaa !98
  %i.u = call i32 %i.t(ptr noundef nonnull %i.p) #8, !inline_history !89
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.critedge.i, label %ompi_request_complete.exit

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store ptr inttoptr (i64 1 to ptr), ptr %i.w, align 8, !tbaa !99
  br label %ompi_request_complete.exit

ompi_request_complete.exit:                       ; preds = %bb.d, %.critedge.i
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !39
  store ptr %i.x, ptr %4, align 8, !tbaa !100
  br label %bb.ae

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42
  %.not63 = icmp eq ptr %i.ab, null
  br i1 %.not63, label %bb.ab, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 0, ptr %i.c, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store ptr null, ptr %i.d, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i64 0, ptr %i.e, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i64 0, ptr %i.f, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  store i32 0, ptr %i.g, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #8
  call void @mca_common_ompio_check_gpu_buf(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #8
  %i.ac = load i32, ptr %i.i, align 4, !tbaa !35
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = load i32, ptr %i.j, align 4
  %i.af = icmp eq i32 %i.ae, 0
  %or.cond.not = select i1 %i.ad, i1 %i.af, i1 false
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !36
  %i.ai = and i32 %i.ah, 1024
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = icmp ne ptr %3, @ompi_mpi_byte
  %or.cond4.not88 = and i1 %i.ak, %i.aj
  %i.al = icmp ne ptr %3, @ompi_mpi_char
  %or.cond6.not85 = and i1 %i.al, %or.cond4.not88
  %brmerge = select i1 %or.cond6.not85, i1 true, i1 %or.cond.not
  br i1 %brmerge, label %.critedge, label %bb.o

.critedge:                                        ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #8
  store i64 0, ptr %i.k, align 8, !tbaa !37
end_hunk_0
