Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/reduce_scatter?download=true
inline.NumInlined: 23
inline.NumDeleted: 18
begin_hunk_0

%struct.ompi_predefined_op_t = type { %struct.ompi_op_t, [576 x i8] }
%struct.ompi_op_t = type { %struct.opal_object_t, [64 x i8], i32, i32, i32, %union.anon, %struct.ompi_op_base_op_3buff_fns_1_0_0_t }
%struct.opal_object_t = type { ptr, i32 }
%union.anon = type { %struct.ompi_op_base_op_fns_1_0_0_t }
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
@FUNC_NAME = internal constant [19 x i8] c"MPI_Reduce_scatter\00", align 16
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

@MPI_Reduce_scatter = weak alias i32 (ptr, ptr, ptr, ptr, ptr, ptr), ptr @PMPI_Reduce_scatter

; Function Attrs: nounwind uwtable
define i32 @PMPI_Reduce_scatter(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.d = load volatile i32, ptr @ompi_instance_count, align 4, !tbaa !12
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

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
  %i.j = load i32, ptr %i.i, align 8, !tbaa !49
  %i.k = and i32 %i.j, 48
  %or.cond7.i.not = icmp eq i32 %i.k, 0
  br i1 %or.cond7.i.not, label %bb.e, label %ompi_comm_invalid.exit.thread

ompi_comm_invalid.exit.thread:                    ; preds = %bb.d, %ompi_comm_invalid.exit
  %i.l = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 5, ptr noundef nonnull @FUNC_NAME) #8
  br label %.thread112

bb.e:                                             ; preds = %ompi_comm_invalid.exit
  %i.m = icmp eq ptr %4, @ompi_mpi_op_null
  %i.n = icmp eq ptr %4, null
  %or.cond = or i1 %i.m, %i.n
  br i1 %or.cond, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %4, i64 84
  %.val.i = load i32, ptr %i.o, align 4, !tbaa !52
  %i.p = trunc i32 %.val.i to i1
  br i1 %i.p, label %bb.g, label %ompi_op_is_valid.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %3, i64 16
  %.val20.i = load i16, ptr %i.q, align 8, !tbaa !58
  %i.r = and i16 %.val20.i, 512
  %.not.i = icmp eq i16 %i.r, 0
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.t = load i32, ptr %i.s, align 8, !tbaa !59
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr @ompi_op_ddt_map, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !12   ; 2 uses
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !60
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %ompi_op_is_valid.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.af = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @FUNC_NAME, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae) #8 ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !60
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
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !62
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.aq = call i32 @ompi_errhandler_invoke(ptr noundef %i.am, ptr noundef nonnull %5, i32 noundef %i.ao, i32 noundef 10, ptr noundef %i.ap) #8
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !63
  call void @free(ptr noundef %i.ar) #8
  br label %.thread112

ompi_op_is_valid.exit:                            ; preds = %bb.i, %bb.f
  %i.as = icmp eq ptr %2, null
  br i1 %i.as, label %bb.p, label %bb.o

bb.o:                                             ; preds = %ompi_op_is_valid.exit
  %i.at = icmp eq ptr %1, inttoptr (i64 1 to ptr)
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.e, %ompi_op_is_valid.exit
  %.098.ph = phi i32 [ 2, %ompi_op_is_valid.exit ], [ 10, %bb.e ], [ 13, %bb.o ]
  %i.au = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.098.ph) ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !61
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !62
  %i.az = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.aw, ptr noundef nonnull %5, i32 noundef %i.ay, i32 noundef %i.au, ptr noundef nonnull @FUNC_NAME) #8 ; 0 uses
  br label %.thread112

bb.q:                                             ; preds = %bb.o
  %i.ba = getelementptr i8, ptr %5, i64 264
  %.val85 = load ptr, ptr %i.ba, align 8, !tbaa !64
  %i.bb = getelementptr i8, ptr %.val85, i64 16
  %.val85.val = load i32, ptr %i.bb, align 8, !tbaa !67 ; 2 uses
  %i.bc = icmp sgt i32 %.val85.val, 0
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.q
  %i.bd = icmp eq ptr %3, null
  %i.be = icmp eq ptr %3, @ompi_mpi_datatype_null
  %or.cond3 = or i1 %i.bd, %i.be
  %i.bf = getelementptr i8, ptr %3, i64 16
  br i1 %or.cond3, label %.split, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %.val85.val to i64
  br label %.lr.ph.split

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !22

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !12
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %.split, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split
  %.val86 = load i16, ptr %i.bf, align 8, !tbaa !68
  %i.bj = and i16 %.val86, 5
  %or.cond119 = icmp eq i16 %i.bj, 4
  br i1 %or.cond119, label %bb.r, label %.split

.split:                                           ; preds = %bb.s, %.lr.ph.split, %.lr.ph
  %.2.ph.split = phi i32 [ 3, %.lr.ph ], [ 3, %bb.s ], [ 2, %.lr.ph.split ]
  %6 = icmp eq i32 %.2.ph.split, 2
  %.finite142 = select i1 %6, i32 2, i32 3        ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !61
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !62
  %i.bo = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bl, ptr noundef %5, i32 noundef %i.bn, i32 noundef %.finite142, ptr noundef nonnull @FUNC_NAME) #8 ; 0 uses
  br label %.thread112

.thread112:                                       ; preds = %ompi_comm_invalid.exit.thread, %bb.p, %.split, %bb.n
  %.0.ph = phi i32 [ %i.aq, %bb.n ], [ %.finite142, %.split ], [ %i.au, %bb.p ], [ %i.l, %ompi_comm_invalid.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.af

._crit_edge:                                      ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.a
  %i.bp = getelementptr i8, ptr %5, i64 377
  %.val.i89 = load i8, ptr %i.bp, align 1, !tbaa !69, !range !10, !noundef !11
  %i.bq = trunc nuw i8 %.val.i89 to i1
  br i1 %i.bq, label %bb.w, label %bb.u, !prof !13

bb.u:                                             ; preds = %bb.t
  %i.br = getelementptr i8, ptr %5, i64 378
  %.val5.i = load i8, ptr %i.br, align 2, !tbaa !70, !range !10, !noundef !11
  %i.bs = trunc nuw i8 %.val5.i to i1
  br i1 %i.bs, label %bb.v, label %ompi_comm_iface_coll_check.exit, !prof !13

bb.v:                                             ; preds = %bb.u
  %i.bt = tail call i32 @opal_progress() #8       ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.v
  %.5.ph = phi i32 [ 77, %bb.t ], [ 75, %bb.v ]   ; 2 uses
  %7 = icmp eq i32 %.5.ph, 76
  %.finite = select i1 %7, i32 76, i32 77
  %8 = icmp eq i32 %.5.ph, 75
  %.finite141 = select i1 %8, i32 75, i32 %.finite ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !61
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !62
  %i.by = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bv, ptr noundef nonnull %5, i32 noundef %i.bx, i32 noundef %.finite141, ptr noundef nonnull @FUNC_NAME) #8 ; 0 uses
  br label %bb.af

ompi_comm_iface_coll_check.exit:                  ; preds = %bb.u
  %i.bz = getelementptr i8, ptr %5, i64 264
  %.val = load ptr, ptr %i.bz, align 8, !tbaa !64
  %i.ca = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.ca, align 8, !tbaa !67 ; 4 uses
  %i.cb = icmp sgt i32 %.val.val, 0
  br i1 %i.cb, label %.lr.ph123.preheader, label %._crit_edge124

.lr.ph123.preheader:                              ; preds = %ompi_comm_iface_coll_check.exit
  %wide.trip.count129 = zext nneg i32 %.val.val to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val.val, 8
  br i1 %min.iters.check, label %.lr.ph123.preheader138, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph123.preheader
  %n.vec = and i64 %wide.trip.count129, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ci, %vector.body ]
  %vec.phi136 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cj, %vector.body ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load = load <4 x i32>, ptr %i.cc, align 4, !tbaa !12
  %wide.load137 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !12
  %i.ce = icmp eq <4 x i32> %wide.load, zeroinitializer
  %i.cf = icmp eq <4 x i32> %wide.load137, zeroinitializer
  %i.cg = zext <4 x i1> %i.ce to <4 x i32>
  %i.ch = zext <4 x i1> %i.cf to <4 x i32>
  %i.ci = add <4 x i32> %vec.phi, %i.cg           ; 2 uses
  %i.cj = add <4 x i32> %vec.phi136, %i.ch        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cj, %i.ci
  %i.cl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count129
  br i1 %cmp.n, label %._crit_edge124, label %.lr.ph123.preheader138

.lr.ph123.preheader138:                           ; preds = %.lr.ph123.preheader, %middle.block
  %indvars.iv126.ph = phi i64 [ 0, %.lr.ph123.preheader ], [ %n.vec, %middle.block ]
  %.069121.ph = phi i32 [ 0, %.lr.ph123.preheader ], [ %i.cl, %middle.block ]
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.preheader138, %.lr.ph123
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %.lr.ph123 ], [ %indvars.iv126.ph, %.lr.ph123.preheader138 ] ; 2 uses
  %.069121 = phi i32 [ %spec.select, %.lr.ph123 ], [ %.069121.ph, %.lr.ph123.preheader138 ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv126
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !12
  %i.co = icmp eq i32 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %spec.select = add nuw nsw i32 %.069121, %i.cp  ; 2 uses
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %._crit_edge124, label %.lr.ph123, !llvm.loop !24

._crit_edge124:                                   ; preds = %.lr.ph123, %middle.block, %ompi_comm_iface_coll_check.exit
  %.069.lcssa = phi i32 [ 0, %ompi_comm_iface_coll_check.exit ], [ %i.cl, %middle.block ], [ %spec.select, %.lr.ph123 ]
  %i.cq = icmp eq i32 %.val.val, %.069.lcssa
  br i1 %i.cq, label %bb.af, label %bb.x

bb.x:                                             ; preds = %._crit_edge124
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.cs = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10, !noundef !11
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.y, label %bb.z, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.cu = atomicrmw volatile add ptr %i.cr, i32 1 monotonic, align 4 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

bb.z:                                             ; preds = %bb.x
  %i.cv = load volatile i32, ptr %i.cr, align 4, !tbaa !12
  %i.cw = add nsw i32 %i.cv, 1
  store volatile i32 %i.cw, ptr %i.cr, align 4, !tbaa !12
  %i.cx = load volatile i32, ptr %i.cr, align 4, !tbaa !12 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.y, %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 344
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !73 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 192
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !77
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 200
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !78
  %i.de = tail call i32 %i.db(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %i.dd) #8 ; 2 uses
  %i.df = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10, !noundef !11
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.aa, label %bb.ab, !prof !13

bb.aa:                                            ; preds = %opal_thread_add_fetch_32.exit
  %i.dh = atomicrmw volatile add ptr %i.cr, i32 -1 monotonic, align 4
  %i.di = add i32 %i.dh, -1
  br label %opal_thread_add_fetch_32.exit93

bb.ab:                                            ; preds = %opal_thread_add_fetch_32.exit
  %i.dj = load volatile i32, ptr %i.cr, align 4, !tbaa !12
  %i.dk = add nsw i32 %i.dj, -1
  store volatile i32 %i.dk, ptr %i.cr, align 4, !tbaa !12
  %i.dl = load volatile i32, ptr %i.cr, align 4, !tbaa !12
  br label %opal_thread_add_fetch_32.exit93

opal_thread_add_fetch_32.exit93:                  ; preds = %bb.aa, %bb.ab
  %.0.i92 = phi i32 [ %i.di, %bb.aa ], [ %i.dl, %bb.ab ]
  %i.dm = icmp eq i32 %.0.i92, 0
  br i1 %i.dm, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %opal_thread_add_fetch_32.exit93
  %i.dn = load ptr, ptr %4, align 8, !tbaa !79
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !81 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !21 ; 2 uses
  %.not6.i = icmp eq ptr %i.dq, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ac, %.lr.ph.i
  %i.dr = phi ptr [ %i.dt, %.lr.ph.i ], [ %i.dq, %bb.ac ]
  %.07.i = phi ptr [ %i.ds, %.lr.ph.i ], [ %i.dp, %bb.ac ]
  tail call void %i.dr(ptr noundef nonnull %4) #8, !inline_history !25
  %i.ds = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !21 ; 2 uses
  %.not.i94 = icmp eq ptr %i.dt, null
  br i1 %.not.i94, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !26

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.ac
  tail call void @free(ptr noundef nonnull %4) #8
  br label %bb.ad

bb.ad:                                            ; preds = %opal_obj_run_destructors.exit, %opal_thread_add_fetch_32.exit93
  %.not83 = icmp eq i32 %i.de, 0
  br i1 %.not83, label %bb.af, label %bb.ae, !prof !82

bb.ae:                                            ; preds = %bb.ad
  %i.du = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %i.de) ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !61
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !62
  %i.dz = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.dw, ptr noundef nonnull %5, i32 noundef %i.dy, i32 noundef %i.du, ptr noundef nonnull @FUNC_NAME) #8 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %.thread112, %bb.ad, %._crit_edge124, %bb.ae, %bb.w
  %.1 = phi i32 [ %.finite141, %bb.w ], [ %.0.ph, %.thread112 ], [ 0, %bb.ad ], [ %i.du, %bb.ae ], [ 0, %._crit_edge124 ]
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
  %i.b = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.d = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.lr.ph.split, label %.lr.ph.split.us, !prof !13

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !86
  %i.h = sext i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.b, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.not.us = icmp slt i64 %indvars.iv, %i.h
  tail call void @llvm.assume(i1 %.not.us)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !88
  %i.m = icmp eq i32 %i.l, %0
  br i1 %i.m, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.thread.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.thread.i.us, !llvm.loop !83

bb.c:                                             ; preds = %opal_pointer_array_get_item.exit
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.n = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next19, %i.o
  br i1 %i.p, label %.lr.ph.split, label %.loopexit, !llvm.loop !84

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.c
  %i.q = phi i8 [ %i.ad, %bb.c ], [ 1, %.lr.ph ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %bb.c ], [ 0, %.lr.ph ] ; 4 uses
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.s = sext i32 %i.r to i64
  %.not = icmp slt i64 %indvars.iv18, %i.s
  tail call void @llvm.assume(i1 %.not)
  %i.t = trunc nuw i8 %i.q to i1
  br i1 %i.t, label %bb.d, label %.thread.i, !prof !13

.thread.i:                                        ; preds = %.lr.ph.split
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv18
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  br label %opal_pointer_array_get_item.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.x = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #8 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  %i.y = trunc nuw i8 %.pre.i to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !86
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv18
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21 ; 2 uses
  br i1 %i.y, label %bb.e, label %opal_pointer_array_get_item.exit, !prof !90

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #8 ; 0 uses
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i, %bb.d, %bb.e
  %i.ad = phi i8 [ 0, %.thread.i ], [ %.pre, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi ptr [ %i.w, %.thread.i ], [ %i.ab, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !88
  %i.ag = icmp eq i32 %i.af, %0
  br i1 %i.ag, label %.split.us, label %bb.c

.split.us:                                        ; preds = %.thread.i.us, %opal_pointer_array_get_item.exit
  %.us-phi = phi ptr [ %.0.i, %opal_pointer_array_get_item.exit ], [ %i.j, %.thread.i.us ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.us-phi, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !91
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %.split.us, %bb.a
  %.010 = phi i32 [ %0, %bb.a ], [ %i.ai, %.split.us ], [ 14, %bb.c ], [ 14, %.preheader ], [ 14, %bb.b ]
  ret i32 %.010
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare i32 @opal_asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @opal_progress() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_Bool", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!5, !5, i64 0}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"p1 _ZTS12opal_class_t", !14, i64 0}
!16 = !{!"opal_object_t", !15, i64 0, !5, i64 8}
!17 = !{!"opal_mutex_t", !16, i64 0, !4, i64 16, !5, i64 56}
!18 = !{!"any p2 pointer", !14, i64 0}
!19 = !{!"p1 long", !14, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!14, !14, i64 0}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20, !71, !72}
!24 = distinct !{!24, !20, !72, !71}
!25 = distinct !{null}
!26 = distinct !{!26, !20}
!27 = !{!"p1 _ZTS19opal_hash_element_t", !14, i64 0}
!28 = !{!"long", !4, i64 0}
!29 = !{!"p1 _ZTS24opal_hash_type_methods_t", !14, i64 0}
!30 = !{!"opal_hash_table_t", !16, i64 0, !27, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !29, i64 64}
!31 = !{!"p1 _ZTS11opal_info_t", !14, i64 0}
!32 = !{!"opal_infosubscriber_t", !16, i64 0, !30, i64 16, !31, i64 88}
!33 = !{!"p1 omnipotent char", !14, i64 0}
!34 = !{!"ompi_comm_extended_cid_t", !28, i64 0, !4, i64 8}
!35 = !{!"ompi_comm_extended_cid_block_t", !34, i64 0, !28, i64 16, !4, i64 24, !4, i64 25}
!36 = !{!"p1 int", !14, i64 0}
!37 = !{!"p1 _ZTS12ompi_group_t", !14, i64 0}
!38 = !{!"p1 _ZTS19ompi_communicator_t", !14, i64 0}
!39 = !{!"p1 _ZTS17opal_hash_table_t", !14, i64 0}
!40 = !{!"p1 _ZTS22mca_topo_base_module_t", !14, i64 0}
!41 = !{!"p2 _ZTS20ompi_peruse_handle_t", !18, i64 0}
!42 = !{!"p1 _ZTS17ompi_errhandler_t", !14, i64 0}
!43 = !{!"p1 _ZTS14mca_pml_comm_t", !14, i64 0}
!44 = !{!"p1 _ZTS14mca_mtl_comm_t", !14, i64 0}
!45 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !14, i64 0}
!46 = !{!"p1 _ZTS15ompi_instance_t", !14, i64 0}
!47 = !{!"p1 _ZTS13opal_object_t", !14, i64 0}
!48 = !{!"ompi_communicator_t", !32, i64 0, !17, i64 96, !33, i64 160, !34, i64 168, !35, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !36, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !37, i64 264, !37, i64 272, !38, i64 280, !39, i64 288, !40, i64 296, !41, i64 304, !42, i64 312, !5, i64 320, !43, i64 328, !44, i64 336, !45, i64 344, !46, i64 352, !47, i64 360, !5, i64 368, !5, i64 372, !8, i64 376, !8, i64 377, !8, i64 378}
!49 = !{!48, !5, i64 224}
!50 = !{!"ompi_op_base_op_3buff_fns_1_0_0_t", !4, i64 0, !4, i64 344}
!51 = !{!"ompi_op_t", !16, i64 0, !4, i64 16, !5, i64 80, !5, i64 84, !5, i64 88, !4, i64 96, !50, i64 784}
!52 = !{!51, !5, i64 84}
!53 = !{!"short", !4, i64 0}
!54 = !{!"p1 _ZTS12dt_elem_desc", !14, i64 0}
!55 = !{!"dt_type_desc_t", !28, i64 0, !28, i64 8, !54, i64 16}
!56 = !{!"opal_datatype_t", !16, i64 0, !53, i64 16, !53, i64 18, !5, i64 20, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !28, i64 56, !28, i64 64, !5, i64 72, !5, i64 76, !4, i64 80, !55, i64 144, !55, i64 168, !19, i64 192}
!57 = !{!"ompi_datatype_t", !56, i64 0, !5, i64 200, !5, i64 204, !39, i64 208, !14, i64 216, !28, i64 224, !28, i64 232, !4, i64 240}
!58 = !{!57, !53, i64 16}
!59 = !{!57, !5, i64 200}
!60 = !{!4, !4, i64 0}
end_hunk_0
