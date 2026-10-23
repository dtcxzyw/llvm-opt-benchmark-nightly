Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/reduce_scatter_init?download=true
inline.NumInlined: 16
inline.NumDeleted: 12
begin_hunk_0
%struct.ompi_op_base_op_fns_1_0_0_t = type { [43 x ptr], [43 x ptr] }
%struct.ompi_op_base_op_3buff_fns_1_0_0_t = type { [43 x ptr], [43 x ptr] }
%struct.ompi_predefined_datatype_t = type { %struct.ompi_datatype_t, [208 x i8] }
%struct.ompi_datatype_t = type { %struct.opal_datatype_t, i32, i32, ptr, ptr, i64, i64, [64 x i8] }
%struct.opal_datatype_t = type { %struct.opal_object_t, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, [64 x i8], %struct.dt_type_desc_t, %struct.dt_type_desc_t, ptr }
%struct.dt_type_desc_t = type { i64, i64, ptr }
%struct.opal_pointer_array_t = type { %struct.opal_object_t, %struct.opal_mutex_t, i32, i32, i32, i32, i32, ptr, ptr }
%struct.opal_mutex_t = type { %struct.opal_object_t, %union.pthread_mutex_t, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.ompi_predefined_communicator_t = type { %struct.ompi_communicator_t, [128 x i8] }
%struct.ompi_communicator_t = type { %struct.opal_infosubscriber_t, %struct.opal_mutex_t, ptr, %struct.ompi_comm_extended_cid_t, %struct.ompi_comm_extended_cid_block_t, i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8 }
%struct.opal_infosubscriber_t = type { %struct.opal_object_t, %struct.opal_hash_table_t, ptr }
%struct.opal_hash_table_t = type { %struct.opal_object_t, ptr, i64, i64, i64, i32, i32, i32, i32, ptr }
%struct.ompi_comm_extended_cid_t = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.ompi_comm_extended_cid_block_t = type { %struct.ompi_comm_extended_cid_t, i64, i8, i8 }

@ompi_mpi_param_check = external local_unnamed_addr global i8, align 1
@ompi_instance_count = external global i32, align 4
@FUNC_NAME = internal constant [24 x i8] c"MPI_Reduce_scatter_init\00", align 16
@ompi_mpi_op_null = external global %struct.ompi_predefined_op_t, align 8
@ompi_mpi_datatype_null = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_errcode_intern_lastused = external local_unnamed_addr global i32, align 4
@ompi_errcodes_intern = external global %struct.opal_pointer_array_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1
@ompi_mpi_comm_null = external global %struct.ompi_predefined_communicator_t, align 8
@ompi_op_ddt_map = external local_unnamed_addr global [52 x i32], align 16
@.str = private unnamed_addr constant [65 x i8] c"%s: the reduction operation %s is not defined on the %s datatype\00", align 1
@.str.1 = private unnamed_addr constant [111 x i8] c"%s: the reduction operation %s is not defined for non-intrinsic datatypes (attempted with datatype named \22%s\22)\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"%s: the reduction operation %s is not defined for non-intrinsic datatypes\00", align 1

@MPI_Reduce_scatter_init = weak alias i32 (ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @PMPI_Reduce_scatter_init

; Function Attrs: nounwind uwtable
define i32 @PMPI_Reduce_scatter_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %._crit_edge137

._crit_edge137:                                   ; preds = %bb.a
  %.phi.trans.insert = getelementptr i8, ptr %5, i64 264
  %.val.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !46
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.d = load volatile i32, ptr @ompi_instance_count, align 4, !tbaa !17
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = icmp eq ptr %5, null
  %i.h = icmp eq ptr %5, @ompi_mpi_comm_null
  %or.cond.i = or i1 %i.g, %i.h
  br i1 %or.cond.i, label %ompi_comm_invalid.exit.thread, label %ompi_comm_invalid.exit

ompi_comm_invalid.exit:                           ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.j = load i32, ptr %i.i, align 8, !tbaa !47
  %i.k = and i32 %i.j, 48
  %or.cond7.i.not = icmp eq i32 %i.k, 0
  br i1 %or.cond7.i.not, label %bb.e, label %ompi_comm_invalid.exit.thread

ompi_comm_invalid.exit.thread:                    ; preds = %bb.d, %ompi_comm_invalid.exit
  %i.l = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 5, ptr noundef nonnull @FUNC_NAME) #8
  br label %.thread116

bb.e:                                             ; preds = %ompi_comm_invalid.exit
  %i.m = icmp eq ptr %4, @ompi_mpi_op_null
  %i.n = icmp eq ptr %4, null
  %or.cond = or i1 %i.m, %i.n
  br i1 %or.cond, label %.thread, label %bb.f, !prof !48

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %4, i64 84
  %.val.i = load i32, ptr %i.o, align 4, !tbaa !51
  %i.p = trunc i32 %.val.i to i1
  br i1 %i.p, label %bb.g, label %ompi_op_is_valid.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %3, i64 16
  %.val20.i = load i16, ptr %i.q, align 8, !tbaa !57
  %i.r = and i16 %.val20.i, 512
  %.not.i = icmp eq i16 %i.r, 0
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.t = load i32, ptr %i.s, align 8, !tbaa !58
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr @ompi_op_ddt_map, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !17   ; 2 uses
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !59
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %ompi_op_is_valid.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.af = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @FUNC_NAME, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae) #8 ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !59
  %.not19.i = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %.not19.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1, ptr noundef nonnull @FUNC_NAME, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ag) #8 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ak = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.2, ptr noundef nonnull @FUNC_NAME, ptr noundef nonnull %i.ai) #8 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.l, %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !60
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !61
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.aq = call i32 @ompi_errhandler_invoke(ptr noundef %i.am, ptr noundef nonnull %5, i32 noundef %i.ao, i32 noundef 10, ptr noundef %i.ap) #8
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !62
  call void @free(ptr noundef %i.ar) #8
  br label %.thread116

ompi_op_is_valid.exit:                            ; preds = %bb.i, %bb.f
  %i.as = icmp eq ptr %2, null
  br i1 %i.as, label %.thread, label %bb.o, !prof !48

bb.o:                                             ; preds = %ompi_op_is_valid.exit
  %.not = icmp eq ptr %1, inttoptr (i64 1 to ptr)
  br i1 %.not, label %.thread, label %bb.p, !prof !63

.thread:                                          ; preds = %ompi_op_is_valid.exit, %bb.e, %bb.o
  %.079109 = phi i32 [ 13, %bb.o ], [ 2, %ompi_op_is_valid.exit ], [ 10, %bb.e ]
  %i.at = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.079109) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !60
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !61
  %i.ay = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.av, ptr noundef nonnull %5, i32 noundef %i.ax, i32 noundef %i.at, ptr noundef nonnull @FUNC_NAME) #8 ; 0 uses
  br label %.thread116

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr i8, ptr %5, i64 264
  %.val100 = load ptr, ptr %i.az, align 8, !tbaa !46 ; 2 uses
  %i.ba = getelementptr i8, ptr %.val100, i64 16
  %.val100.val = load i32, ptr %i.ba, align 8, !tbaa !66 ; 2 uses
  %i.bb = icmp sgt i32 %.val100.val, 0
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p
  %i.bc = icmp eq ptr %3, null
  %i.bd = icmp eq ptr %3, @ompi_mpi_datatype_null
  %or.cond3 = or i1 %i.bc, %i.bd
  %i.be = getelementptr i8, ptr %3, i64 16
  br i1 %or.cond3, label %.thread111, label %.lr.ph.split.preheader, !prof !48

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %.val100.val to i64
  br label %.lr.ph.split

bb.q:                                             ; preds = %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !21

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !17
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %.thread111, label %bb.r, !prof !48

bb.r:                                             ; preds = %.lr.ph.split
  %.val101 = load i16, ptr %i.be, align 8, !tbaa !67
  %i.bi = and i16 %.val101, 5
  %or.cond144 = icmp eq i16 %i.bi, 4
  br i1 %or.cond144, label %bb.q, label %.thread111, !prof !68

.thread111:                                       ; preds = %.lr.ph.split, %bb.r, %.lr.ph
  %.2114 = phi i32 [ 3, %.lr.ph ], [ 3, %bb.r ], [ 2, %.lr.ph.split ]
  %8 = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.2114) ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !61
  %i.bn = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bk, ptr noundef %5, i32 noundef %i.bm, i32 noundef %8, ptr noundef nonnull @FUNC_NAME) #8 ; 0 uses
  br label %.thread116

.thread116:                                       ; preds = %ompi_comm_invalid.exit.thread, %.thread, %.thread111, %bb.n
  %.0.ph = phi i32 [ %i.aq, %bb.n ], [ %8, %.thread111 ], [ %i.at, %.thread ], [ %i.l, %ompi_comm_invalid.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.y

._crit_edge:                                      ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge137, %._crit_edge
  %.val = phi ptr [ %.val.pre, %._crit_edge137 ], [ %.val100, %._crit_edge ]
  %i.bo = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.bo, align 8, !tbaa !66 ; 4 uses
  %i.bp = icmp sgt i32 %.val.val, 0
  br i1 %i.bp, label %.lr.ph129.preheader, label %._crit_edge130

.lr.ph129.preheader:                              ; preds = %bb.s
  %wide.trip.count135 = zext nneg i32 %.val.val to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val.val, 8
  br i1 %min.iters.check, label %.lr.ph129.preheader147, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph129.preheader
  %n.vec = and i64 %wide.trip.count135, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bw, %vector.body ]
  %vec.phi145 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bx, %vector.body ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load = load <4 x i32>, ptr %i.bq, align 4, !tbaa !17
  %wide.load146 = load <4 x i32>, ptr %i.br, align 4, !tbaa !17
  %i.bs = icmp eq <4 x i32> %wide.load, zeroinitializer
  %i.bt = icmp eq <4 x i32> %wide.load146, zeroinitializer
  %i.bu = zext <4 x i1> %i.bs to <4 x i32>
  %i.bv = zext <4 x i1> %i.bt to <4 x i32>
  %i.bw = add <4 x i32> %vec.phi, %i.bu           ; 2 uses
  %i.bx = add <4 x i32> %vec.phi145, %i.bv        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bx, %i.bw
  %i.bz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count135
  br i1 %cmp.n, label %._crit_edge130, label %.lr.ph129.preheader147

.lr.ph129.preheader147:                           ; preds = %.lr.ph129.preheader, %middle.block
  %indvars.iv132.ph = phi i64 [ 0, %.lr.ph129.preheader ], [ %n.vec, %middle.block ]
  %.081126.ph = phi i32 [ 0, %.lr.ph129.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph129

.lr.ph129:                                        ; preds = %.lr.ph129.preheader147, %.lr.ph129
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %.lr.ph129 ], [ %indvars.iv132.ph, %.lr.ph129.preheader147 ] ; 2 uses
  %.081126 = phi i32 [ %spec.select98, %.lr.ph129 ], [ %.081126.ph, %.lr.ph129.preheader147 ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv132
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !17
  %i.cc = icmp eq i32 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %spec.select98 = add nuw nsw i32 %.081126, %i.cd ; 2 uses
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %._crit_edge130, label %.lr.ph129, !llvm.loop !23

._crit_edge130:                                   ; preds = %.lr.ph129, %middle.block, %bb.s
  %.081.lcssa = phi i32 [ 0, %bb.s ], [ %i.bz, %middle.block ], [ %spec.select98, %.lr.ph129 ]
  %i.ce = icmp eq i32 %.val.val, %.081.lcssa
  br i1 %i.ce, label %bb.t, label %bb.v

bb.t:                                             ; preds = %._crit_edge130
  %i.cf = tail call i32 @ompi_request_persistent_noop_create(ptr noundef %7) #8 ; 2 uses
  %.not94 = icmp eq i32 %i.cf, 0
  br i1 %.not94, label %bb.y, label %bb.u, !prof !71

bb.u:                                             ; preds = %bb.t
  %i.cg = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %i.cf) ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !60
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !61
  %i.cl = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.ci, ptr noundef %5, i32 noundef %i.ck, i32 noundef %i.cg, ptr noundef nonnull @FUNC_NAME) #8 ; 0 uses
  br label %bb.y

bb.v:                                             ; preds = %._crit_edge130
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 344
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !72 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 736
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !76
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 744
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !77
  %i.cs = tail call i32 %i.cp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %i.cr) #8 ; 2 uses
  %cond99 = icmp eq i32 %i.cs, 0
  br i1 %cond99, label %bb.w, label %bb.x, !prof !78

bb.w:                                             ; preds = %bb.v
  %i.ct = load ptr, ptr %7, align 8, !tbaa !80
  %i.cu = tail call i32 @ompi_coll_base_retain_op(ptr noundef %i.ct, ptr noundef %4, ptr noundef %3) #8 ; 0 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cv = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %i.cs) ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !60
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !61
  %i.da = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.cx, ptr noundef nonnull %5, i32 noundef %i.cz, i32 noundef %i.cv, ptr noundef nonnull @FUNC_NAME) #8 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %.thread116, %bb.w, %bb.t, %bb.x, %bb.u
  %.1 = phi i32 [ %i.cg, %bb.u ], [ %.0.ph, %.thread116 ], [ %i.cv, %bb.x ], [ 0, %bb.t ], [ 0, %bb.w ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ompi_errhandler_invoke(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef range(i32 1, 0) %0) unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !17 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.d = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.lr.ph.split, label %.lr.ph.split.us, !prof !18

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !84
  %i.h = sext i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.b, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.not.us = icmp slt i64 %indvars.iv, %i.h
  tail call void @llvm.assume(i1 %.not.us)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !85   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !87
  %i.m = icmp eq i32 %i.l, %0
  br i1 %i.m, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.thread.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.thread.i.us, !llvm.loop !81

bb.c:                                             ; preds = %opal_pointer_array_get_item.exit
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.n = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !17
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next19, %i.o
  br i1 %i.p, label %.lr.ph.split, label %.loopexit, !llvm.loop !82

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.c
  %i.q = phi i8 [ %i.ad, %bb.c ], [ 1, %.lr.ph ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %bb.c ], [ 0, %.lr.ph ] ; 4 uses
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.s = sext i32 %i.r to i64
  %.not = icmp slt i64 %indvars.iv18, %i.s
  tail call void @llvm.assume(i1 %.not)
  %i.t = trunc nuw i8 %i.q to i1
  br i1 %i.t, label %bb.d, label %.thread.i, !prof !18

.thread.i:                                        ; preds = %.lr.ph.split
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !84
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv18
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !85
  br label %opal_pointer_array_get_item.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.x = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #8 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  %i.y = trunc nuw i8 %.pre.i to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !84
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv18
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !85 ; 2 uses
  br i1 %i.y, label %bb.e, label %opal_pointer_array_get_item.exit, !prof !89

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #8 ; 0 uses
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i, %bb.d, %bb.e
  %i.ad = phi i8 [ 0, %.thread.i ], [ %.pre, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi ptr [ %i.w, %.thread.i ], [ %i.ab, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !87
  %i.ag = icmp eq i32 %i.af, %0
end_hunk_0
