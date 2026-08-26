Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/dims_create?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_communicator_t = type { %struct.ompi_communicator_t, [128 x i8] }
%struct.ompi_communicator_t = type { %struct.opal_infosubscriber_t, %struct.opal_mutex_t, ptr, %struct.ompi_comm_extended_cid_t, %struct.ompi_comm_extended_cid_block_t, i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8 }
%struct.opal_infosubscriber_t = type { %struct.opal_object_t, %struct.opal_hash_table_t, ptr }
%struct.opal_object_t = type { ptr, i32 }
%struct.opal_hash_table_t = type { %struct.opal_object_t, ptr, i64, i64, i64, i32, i32, i32, i32, ptr }
%struct.opal_mutex_t = type { %struct.opal_object_t, %union.pthread_mutex_t, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.ompi_comm_extended_cid_t = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.ompi_comm_extended_cid_block_t = type { %struct.ompi_comm_extended_cid_t, i64, i8, i8 }

@ompi_mpi_param_check = external local_unnamed_addr global i8, align 1
@ompi_instance_count = external global i32, align 4
@FUNC_NAME = internal constant [16 x i8] c"MPI_Dims_create\00", align 16
@ompi_mpi_comm_world = external global %struct.ompi_predefined_communicator_t, align 8

@MPI_Dims_create = weak alias i32 (i32, i32, ptr), ptr @PMPI_Dims_create

; Function Attrs: nounwind uwtable
define i32 @PMPI_Dims_create(i32 noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2) #0 {
bb.a:
  %i.a = load i8, ptr @ompi_mpi_param_check, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = load volatile i32, ptr @ompi_instance_count, align 4, !tbaa !12
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = icmp slt i32 %1, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 312), align 8, !tbaa !14
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 320), align 8, !tbaa !42
  %i.i = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.g, ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.h, i32 noundef 12, ptr noundef nonnull @FUNC_NAME) #7
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp ne i32 %1, 0
  %i.k = icmp eq ptr %2, null
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 312), align 8, !tbaa !14
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 320), align 8, !tbaa !42
  %i.n = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.l, ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.m, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #7
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.o = icmp slt i32 %0, 1
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 312), align 8, !tbaa !14
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 320), align 8, !tbaa !42
  %i.r = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.p, ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.q, i32 noundef 12, ptr noundef nonnull @FUNC_NAME) #7
  br label %.loopexit

bb.j:                                             ; preds = %bb.h, %bb.a
  %i.s = icmp sgt i32 %1, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.j, %bb.p
  %.086 = phi ptr [ %i.ad, %bb.p ], [ %2, %bb.j ] ; 2 uses
  %.03885 = phi i32 [ %.139, %bb.p ], [ 0, %bb.j ] ; 2 uses
  %.04084 = phi i32 [ %.141, %bb.p ], [ %0, %bb.j ] ; 2 uses
  %.04283 = phi i32 [ %i.ac, %bb.p ], [ 0, %bb.j ]
  %i.t = load i32, ptr %.086, align 4, !tbaa !12  ; 4 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.v = add nsw i32 %.03885, 1
  br label %bb.p

bb.l:                                             ; preds = %.lr.ph
  %i.w = icmp slt i32 %i.t, 0
  br i1 %i.w, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = srem i32 %0, %i.t
  %.not53 = icmp eq i32 %i.x, 0
  br i1 %.not53, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 312), align 8, !tbaa !14
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 320), align 8, !tbaa !42
  %i.aa = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.y, ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.z, i32 noundef 12, ptr noundef nonnull @FUNC_NAME) #7
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.ab = sdiv i32 %.04084, %i.t
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.o
  %.141 = phi i32 [ %.04084, %bb.k ], [ %i.ab, %bb.o ] ; 8 uses
  %.139 = phi i32 [ %i.v, %bb.k ], [ %.03885, %bb.o ] ; 14 uses
  %i.ac = add nuw nsw i32 %.04283, 1              ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.086, i64 4
  %exitcond.not = icmp eq i32 %i.ac, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.p
  %i.ae = icmp eq i32 %.139, 0
  br i1 %i.ae, label %._crit_edge.thread, label %bb.r

._crit_edge.thread:                               ; preds = %bb.j, %._crit_edge
  %.040.lcssa116 = phi i32 [ %.141, %._crit_edge ], [ %0, %bb.j ]
  %i.af = icmp eq i32 %.040.lcssa116, 1
  br i1 %i.af, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %._crit_edge.thread
  %i.ag = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 12, ptr noundef nonnull @FUNC_NAME) #7
  br label %.loopexit

bb.r:                                             ; preds = %._crit_edge
  %i.ah = icmp eq i32 %.141, 1
  br i1 %i.ah, label %.preheader, label %bb.u

.preheader:                                       ; preds = %bb.r
  %i.ai = zext nneg i32 %1 to i64                 ; 2 uses
  %min.iters.check136 = icmp ult i32 %1, 8
  br i1 %min.iters.check136, label %.lr.ph96.preheader, label %vector.ph137

vector.ph137:                                     ; preds = %.preheader
  %n.vec138 = and i64 %i.ai, 2147483640           ; 4 uses
  %i.aj = trunc nuw nsw i64 %n.vec138 to i32
  %i.ak = shl nuw nsw i64 %n.vec138, 2
  %i.al = getelementptr i8, ptr %2, i64 %i.ak
  br label %vector.body139

vector.body139:                                   ; preds = %pred.store.continue164, %vector.ph137
  %index140 = phi i64 [ 0, %vector.ph137 ], [ %index.next165, %pred.store.continue164 ] ; 2 uses
  %i.am = shl i64 %index140, 2                    ; 8 uses
  %next.gep141.a = getelementptr i8, ptr %2, i64 %i.am ; 3 uses
  %i.an = getelementptr i8, ptr %2, i64 %i.am
  %next.gep142.a = getelementptr i8, ptr %i.an, i64 4
  %i.ao = getelementptr i8, ptr %2, i64 %i.am
  %next.gep143.a = getelementptr i8, ptr %i.ao, i64 8
  %i.ap = getelementptr i8, ptr %2, i64 %i.am
  %next.gep144.a = getelementptr i8, ptr %i.ap, i64 12
  %i.aq = getelementptr i8, ptr %2, i64 %i.am
  %next.gep145.a = getelementptr i8, ptr %i.aq, i64 16
  %i.ar = getelementptr i8, ptr %2, i64 %i.am
  %next.gep146.a = getelementptr i8, ptr %i.ar, i64 20
  %i.as = getelementptr i8, ptr %2, i64 %i.am
  %next.gep147.a = getelementptr i8, ptr %i.as, i64 24
  %i.at = getelementptr i8, ptr %2, i64 %i.am
  %next.gep148 = getelementptr i8, ptr %i.at, i64 28
  %i.au = getelementptr i8, ptr %next.gep141.a, i64 16
  %wide.load149.a = load <4 x i32>, ptr %next.gep141.a, align 4, !tbaa !12
  %wide.load150 = load <4 x i32>, ptr %i.au, align 4, !tbaa !12
  %i.av = icmp eq <4 x i32> %wide.load149.a, zeroinitializer ; 4 uses
  %i.aw = icmp eq <4 x i32> %wide.load150, zeroinitializer ; 4 uses
  %i.ax = extractelement <4 x i1> %i.av, i64 0
  br i1 %i.ax, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body139
  store i32 1, ptr %next.gep141.a, align 4, !tbaa !12
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body139
  %i.ay = extractelement <4 x i1> %i.av, i64 1
  br i1 %i.ay, label %pred.store.if151, label %pred.store.continue152

pred.store.if151:                                 ; preds = %pred.store.continue
  store i32 1, ptr %next.gep142.a, align 4, !tbaa !12
  br label %pred.store.continue152

pred.store.continue152:                           ; preds = %pred.store.if151, %pred.store.continue
  %i.az = extractelement <4 x i1> %i.av, i64 2
  br i1 %i.az, label %pred.store.if153, label %pred.store.continue154

pred.store.if153:                                 ; preds = %pred.store.continue152
  store i32 1, ptr %next.gep143.a, align 4, !tbaa !12
  br label %pred.store.continue154

pred.store.continue154:                           ; preds = %pred.store.if153, %pred.store.continue152
  %i.ba = extractelement <4 x i1> %i.av, i64 3
  br i1 %i.ba, label %pred.store.if155, label %pred.store.continue156

pred.store.if155:                                 ; preds = %pred.store.continue154
  store i32 1, ptr %next.gep144.a, align 4, !tbaa !12
  br label %pred.store.continue156

pred.store.continue156:                           ; preds = %pred.store.if155, %pred.store.continue154
  %i.bb = extractelement <4 x i1> %i.aw, i64 0
  br i1 %i.bb, label %pred.store.if157, label %pred.store.continue158

pred.store.if157:                                 ; preds = %pred.store.continue156
  store i32 1, ptr %next.gep145.a, align 4, !tbaa !12
  br label %pred.store.continue158

pred.store.continue158:                           ; preds = %pred.store.if157, %pred.store.continue156
  %i.bc = extractelement <4 x i1> %i.aw, i64 1
  br i1 %i.bc, label %pred.store.if159, label %pred.store.continue160

pred.store.if159:                                 ; preds = %pred.store.continue158
  store i32 1, ptr %next.gep146.a, align 4, !tbaa !12
  br label %pred.store.continue160

pred.store.continue160:                           ; preds = %pred.store.if159, %pred.store.continue158
  %i.bd = extractelement <4 x i1> %i.aw, i64 2
  br i1 %i.bd, label %pred.store.if161, label %pred.store.continue162

pred.store.if161:                                 ; preds = %pred.store.continue160
  store i32 1, ptr %next.gep147.a, align 4, !tbaa !12
  br label %pred.store.continue162

pred.store.continue162:                           ; preds = %pred.store.if161, %pred.store.continue160
  %i.be = extractelement <4 x i1> %i.aw, i64 3
  br i1 %i.be, label %pred.store.if163, label %pred.store.continue164

pred.store.if163:                                 ; preds = %pred.store.continue162
  store i32 1, ptr %next.gep148, align 4, !tbaa !12
  br label %pred.store.continue164

pred.store.continue164:                           ; preds = %pred.store.if163, %pred.store.continue162
  %index.next165 = add nuw i64 %index140, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next165, %n.vec138
  br i1 %i.bf, label %middle.block166, label %vector.body139, !llvm.loop !45

middle.block166:                                  ; preds = %pred.store.continue164
  %cmp.n167 = icmp eq i64 %n.vec138, %i.ai
  br i1 %cmp.n167, label %.loopexit, label %.lr.ph96.preheader

.lr.ph96.preheader:                               ; preds = %.preheader, %middle.block166
  %.14395.ph = phi i32 [ 0, %.preheader ], [ %i.aj, %middle.block166 ]
  %.04594.ph = phi ptr [ %2, %.preheader ], [ %i.al, %middle.block166 ]
  br label %.lr.ph96

.lr.ph96:                                         ; preds = %.lr.ph96.preheader, %bb.t
  %.14395 = phi i32 [ %i.bi, %bb.t ], [ %.14395.ph, %.lr.ph96.preheader ]
  %.04594 = phi ptr [ %i.bj, %bb.t ], [ %.04594.ph, %.lr.ph96.preheader ] ; 3 uses
  %i.bg = load i32, ptr %.04594, align 4, !tbaa !12
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph96
  store i32 1, ptr %.04594, align 4, !tbaa !12
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph96, %bb.s
  %i.bi = add nuw nsw i32 %.14395, 1              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.04594, i64 4
  %exitcond100.not = icmp eq i32 %i.bi, %1
  br i1 %exitcond100.not, label %.loopexit, label %.lr.ph96, !llvm.loop !48

bb.u:                                             ; preds = %bb.r
  %i.bk = icmp slt i32 %.141, 2
  br i1 %i.bk, label %getfactors.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = uitofp nneg i32 %.141 to double         ; 2 uses
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.bl)
  %i.bm = tail call double @llvm.ceil.f64(double %sqrt.i)
  %i.bn = fptosi double %i.bm to i32              ; 2 uses
  %i.bo = tail call double @log(double noundef %i.bl) #7
  %i.bp = fdiv double %i.bo, f0x3FE62E42FEFA39EF
  %i.bq = tail call double @llvm.ceil.f64(double %i.bp)
  %i.br = fptosi double %i.bq to i32
  %i.bs = zext i32 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bt) #8 ; 5 uses
  %i.bv = and i32 %.141, 1
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.i, label %.preheader34.i

.preheader34.loopexit.i:                          ; preds = %.lr.ph.i
  %i.bx = trunc nuw i64 %indvars.iv.next.i to i32
  br label %.preheader34.i

.preheader34.i:                                   ; preds = %.preheader34.loopexit.i, %bb.v
  %.030.lcssa.i = phi i32 [ %.141, %bb.v ], [ %i.cb, %.preheader34.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.bx, %.preheader34.loopexit.i ] ; 2 uses
  %i.by = icmp samesign ugt i32 %.030.lcssa.i, 1
  %i.bz = icmp sgt i32 %i.bn, 2
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %i.ca, label %.preheader.i, label %._crit_edge46.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.v ] ; 2 uses
  %.03035.i = phi i32 [ %i.cb, %.lr.ph.i ], [ %.141, %bb.v ] ; 2 uses
  %i.cb = lshr exact i32 %.03035.i, 1             ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.i
  store i32 2, ptr %i.cc, align 4, !tbaa !12
  %i.cd = and i32 %.03035.i, 2
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.i, label %.preheader34.loopexit.i, !llvm.loop !49

.preheader.i:                                     ; preds = %.preheader34.i, %._crit_edge.i
  %.145.i = phi i32 [ %.2.lcssa.i, %._crit_edge.i ], [ %.0.lcssa.i, %.preheader34.i ] ; 2 uses
  %.02844.i = phi i32 [ %i.cn, %._crit_edge.i ], [ 3, %.preheader34.i ] ; 5 uses
  %.13143.i = phi i32 [ %.232.lcssa.i, %._crit_edge.i ], [ %.030.lcssa.i, %.preheader34.i ] ; 3 uses
  %i.cf = srem i32 %.13143.i, %.02844.i
  %i.cg = icmp eq i32 %i.cf, 0
end_hunk_0
begin_hunk_1_@PMPI_Dims_create:bb.a

vector.ph:                                        ; preds = %.lr.ph.i54.preheader
  %n.vec = and i64 %i.cz, 2147483640              ; 4 uses
  %i.da = shl nuw nsw i64 %n.vec, 2
  %i.db = getelementptr i8, ptr %i.cx, i64 %i.da
  %i.dc = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dd = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cx, i64 %i.dd ; 2 uses
  %i.de = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 1), ptr %next.gep, align 4, !tbaa !12
  store <4 x i32> splat (i32 1), ptr %i.de, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cz
  br i1 %cmp.n, label %.preheader59.i, label %.lr.ph.i54.preheader173

.lr.ph.i54.preheader173:                          ; preds = %.lr.ph.i54.preheader, %middle.block
  %.04561.i.ph = phi ptr [ %i.cx, %.lr.ph.i54.preheader ], [ %i.db, %middle.block ]
  %.05060.i.ph = phi i32 [ 0, %.lr.ph.i54.preheader ], [ %i.dc, %middle.block ]
  br label %.lr.ph.i54

.preheader59.i:                                   ; preds = %.lr.ph.i54, %middle.block
  %.04866.i = add i32 %.073, -1                   ; 2 uses
  %i.dg = icmp sgt i32 %.073, 0
  br i1 %i.dg, label %.lr.ph68.i, label %.preheader.i55

.lr.ph68.i:                                       ; preds = %.preheader59.i
  %.not.i56 = icmp eq i32 %.139, 1
  br i1 %.not.i56, label %.lr.ph68.split.i, label %.lr.ph65.us.preheader.i

.lr.ph65.us.preheader.i:                          ; preds = %.lr.ph68.i
  %i.dh = zext nneg i32 %.04866.i to i64
  %i.di = add nsw i32 %.139, -1                   ; 2 uses
  %i.dj = add nsw i32 %.139, -2
  %xtraiter = and i32 %i.di, 3                    ; 3 uses
  %i.dk = icmp ult i32 %i.dj, 3
  %unroll_iter = and i32 %i.di, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod178 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph65.us.i

.lr.ph65.us.i:                                    ; preds = %._crit_edge.us.i, %.lr.ph65.us.preheader.i
  %indvars.iv.i57 = phi i64 [ %i.dh, %.lr.ph65.us.preheader.i ], [ %indvars.iv.next.i58, %._crit_edge.us.i ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.072, i64 %indvars.iv.i57
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !12
  %.pre.i = load i32, ptr %i.cx, align 4, !tbaa !12 ; 2 uses
  br i1 %i.dk, label %.epil.preheader, label %.lr.ph65.us.i.new

.lr.ph65.us.i.new:                                ; preds = %.lr.ph65.us.i, %.lr.ph65.us.i.new
  %i.dn = phi i32 [ %i.dz, %.lr.ph65.us.i.new ], [ %.pre.i, %.lr.ph65.us.i ] ; 2 uses
  %.064.us.i = phi ptr [ %spec.select.us.i.3, %.lr.ph65.us.i.new ], [ %i.cx, %.lr.ph65.us.i ]
  %.pn63.us.i = phi ptr [ %.146.us.i.3, %.lr.ph65.us.i.new ], [ %i.cx, %.lr.ph65.us.i ] ; 4 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph65.us.i.new ], [ 0, %.lr.ph65.us.i ]
  %.146.us.i = getelementptr inbounds nuw i8, ptr %.pn63.us.i, i64 4 ; 2 uses
  %i.do = load i32, ptr %.146.us.i, align 4, !tbaa !12 ; 2 uses
  %i.dp = icmp slt i32 %i.do, %i.dn
  %spec.select.us.i = select i1 %i.dp, ptr %.146.us.i, ptr %.064.us.i
  %i.dq = tail call i32 @llvm.smin.i32(i32 %i.do, i32 %i.dn) ; 2 uses
  %.146.us.i.1 = getelementptr inbounds nuw i8, ptr %.pn63.us.i, i64 8 ; 2 uses
  %i.dr = load i32, ptr %.146.us.i.1, align 4, !tbaa !12 ; 2 uses
  %i.ds = icmp slt i32 %i.dr, %i.dq
  %spec.select.us.i.1 = select i1 %i.ds, ptr %.146.us.i.1, ptr %spec.select.us.i
  %i.dt = tail call i32 @llvm.smin.i32(i32 %i.dr, i32 %i.dq) ; 2 uses
  %.146.us.i.2 = getelementptr inbounds nuw i8, ptr %.pn63.us.i, i64 12 ; 2 uses
  %i.du = load i32, ptr %.146.us.i.2, align 4, !tbaa !12 ; 2 uses
  %i.dv = icmp slt i32 %i.du, %i.dt
  %spec.select.us.i.2 = select i1 %i.dv, ptr %.146.us.i.2, ptr %spec.select.us.i.1
  %i.dw = tail call i32 @llvm.smin.i32(i32 %i.du, i32 %i.dt) ; 2 uses
  %.146.us.i.3 = getelementptr inbounds nuw i8, ptr %.pn63.us.i, i64 16 ; 4 uses
  %i.dx = load i32, ptr %.146.us.i.3, align 4, !tbaa !12 ; 2 uses
  %i.dy = icmp slt i32 %i.dx, %i.dw
  %spec.select.us.i.3 = select i1 %i.dy, ptr %.146.us.i.3, ptr %spec.select.us.i.2 ; 3 uses
  %i.dz = tail call i32 @llvm.smin.i32(i32 %i.dx, i32 %i.dw) ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph65.us.i.new, !llvm.loop !53

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph65.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph65.us.i
  %.epil.init = phi i32 [ %.pre.i, %.lr.ph65.us.i ], [ %i.dz, %._crit_edge.us.i.unr-lcssa ]
  %.064.us.i.epil.init = phi ptr [ %i.cx, %.lr.ph65.us.i ], [ %spec.select.us.i.3, %._crit_edge.us.i.unr-lcssa ]
  %.pn63.us.i.epil.init = phi ptr [ %i.cx, %.lr.ph65.us.i ], [ %.146.us.i.3, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod178)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %i.ea = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.ed, %bb.y ] ; 2 uses
  %.064.us.i.epil = phi ptr [ %.064.us.i.epil.init, %.epil.preheader ], [ %spec.select.us.i.epil, %bb.y ]
  %.pn63.us.i.epil = phi ptr [ %.pn63.us.i.epil.init, %.epil.preheader ], [ %.146.us.i.epil, %bb.y ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  %.146.us.i.epil = getelementptr inbounds nuw i8, ptr %.pn63.us.i.epil, i64 4 ; 3 uses
  %i.eb = load i32, ptr %.146.us.i.epil, align 4, !tbaa !12 ; 2 uses
  %i.ec = icmp slt i32 %i.eb, %i.ea
  %spec.select.us.i.epil = select i1 %i.ec, ptr %.146.us.i.epil, ptr %.064.us.i.epil ; 2 uses
  %i.ed = tail call i32 @llvm.smin.i32(i32 %i.eb, i32 %i.ea)
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.y, !llvm.loop !54

._crit_edge.us.i:                                 ; preds = %bb.y, %._crit_edge.us.i.unr-lcssa
  %spec.select.us.i.lcssa = phi ptr [ %spec.select.us.i.3, %._crit_edge.us.i.unr-lcssa ], [ %spec.select.us.i.epil, %bb.y ] ; 2 uses
  %i.ee = load i32, ptr %spec.select.us.i.lcssa, align 4, !tbaa !12
  %i.ef = mul nsw i32 %i.ee, %i.dm
  store i32 %i.ef, ptr %spec.select.us.i.lcssa, align 4, !tbaa !12
  %indvars.iv.next.i58 = add nsw i64 %indvars.iv.i57, -1
  %i.eg = icmp sgt i64 %indvars.iv.i57, 0
  br i1 %i.eg, label %.lr.ph65.us.i, label %.preheader.i55, !llvm.loop !56

.lr.ph68.split.i:                                 ; preds = %.lr.ph68.i
  %.promoted.i = load i32, ptr %i.cx, align 4, !tbaa !12 ; 2 uses
  %i.eh = zext i32 %.04866.i to i64               ; 3 uses
  %i.ei = zext nneg i32 %.073 to i64              ; 2 uses
  %min.iters.check123 = icmp ult i32 %.073, 8
  br i1 %min.iters.check123, label %scalar.ph122.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %.lr.ph68.split.i
  %n.vec125 = and i64 %i.ei, 2147483640           ; 3 uses
  %i.ej = sub nsw i64 %i.eh, %n.vec125
  %i.ek = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %.promoted.i, i64 0
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next131, %vector.body126 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ek, %vector.ph124 ], [ %i.ep, %vector.body126 ]
  %vec.phi128 = phi <4 x i32> [ splat (i32 1), %vector.ph124 ], [ %i.eq, %vector.body126 ]
  %i.el = sub i64 %i.eh, %index127
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.072, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -12
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 -28
  %wide.load = load <4 x i32>, ptr %i.en, align 4, !tbaa !12
  %wide.load129 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !12
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse130 = shufflevector <4 x i32> %wide.load129, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ep = mul <4 x i32> %reverse, %vec.phi        ; 2 uses
  %i.eq = mul <4 x i32> %reverse130, %vec.phi128  ; 2 uses
  %index.next131 = add nuw i64 %index127, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next131, %n.vec125
  br i1 %i.er, label %middle.block132, label %vector.body126, !llvm.loop !57

middle.block132:                                  ; preds = %vector.body126
  %bin.rdx = mul <4 x i32> %i.eq, %i.ep
  %i.es = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n133 = icmp eq i64 %n.vec125, %i.ei
  br i1 %cmp.n133, label %.preheader.thread.i, label %scalar.ph122.preheader

scalar.ph122.preheader:                           ; preds = %.lr.ph68.split.i, %middle.block132
  %indvars.iv78.i.ph = phi i64 [ %i.eh, %.lr.ph68.split.i ], [ %i.ej, %middle.block132 ]
  %.ph = phi i32 [ %.promoted.i, %.lr.ph68.split.i ], [ %i.es, %middle.block132 ]
  br label %scalar.ph122

.lr.ph.i54:                                       ; preds = %.lr.ph.i54.preheader173, %.lr.ph.i54
  %.04561.i = phi ptr [ %i.eu, %.lr.ph.i54 ], [ %.04561.i.ph, %.lr.ph.i54.preheader173 ] ; 2 uses
  %.05060.i = phi i32 [ %i.et, %.lr.ph.i54 ], [ %.05060.i.ph, %.lr.ph.i54.preheader173 ]
  store i32 1, ptr %.04561.i, align 4, !tbaa !12
  %i.et = add nuw nsw i32 %.05060.i, 1            ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.04561.i, i64 4
  %exitcond.not.i = icmp eq i32 %i.et, %.139
  br i1 %exitcond.not.i, label %.preheader59.i, label %.lr.ph.i54, !llvm.loop !58

.preheader.thread.i:                              ; preds = %scalar.ph122, %middle.block132
  %.lcssa = phi i32 [ %i.es, %middle.block132 ], [ %i.fa, %scalar.ph122 ]
  store i32 %.lcssa, ptr %i.cx, align 4, !tbaa !12
  br label %.lr.ph92.preheader

.lr.ph92.preheader:                               ; preds = %.loopexit.i, %.preheader.i55, %.preheader.thread.i
  %xtraiter183 = and i32 %1, 1
  %i.ev = icmp eq i32 %1, 1
  br i1 %i.ev, label %.lr.ph92.epil.preheader, label %.lr.ph92.preheader.new

.lr.ph92.preheader.new:                           ; preds = %.lr.ph92.preheader
  %unroll_iter187 = and i32 %1, 2147483646
  br label %.lr.ph92

.preheader.i55:                                   ; preds = %._crit_edge.us.i, %.preheader59.i
  %.not75.i = icmp eq i32 %.139, 1
  br i1 %.not75.i, label %.lr.ph92.preheader, label %.lr.ph74.preheader.i

.lr.ph74.preheader.i:                             ; preds = %.preheader.i55
  %i.ew = add nsw i32 %.139, -2                   ; 2 uses
  br label %.lr.ph74.i

scalar.ph122:                                     ; preds = %scalar.ph122.preheader, %scalar.ph122
  %indvars.iv78.i = phi i64 [ %indvars.iv.next79.i, %scalar.ph122 ], [ %indvars.iv78.i.ph, %scalar.ph122.preheader ] ; 3 uses
  %i.ex = phi i32 [ %i.fa, %scalar.ph122 ], [ %.ph, %scalar.ph122.preheader ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.072, i64 %indvars.iv78.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !12
  %i.fa = mul nsw i32 %i.ez, %i.ex                ; 2 uses
  %indvars.iv.next79.i = add nsw i64 %indvars.iv78.i, -1
  %.not92.i = icmp eq i64 %indvars.iv78.i, 0
  br i1 %.not92.i, label %.preheader.thread.i, label %scalar.ph122, !llvm.loop !59

.loopexit.i:                                      ; preds = %bb.ac, %.lr.ph71.i.prol.loopexit
  %exitcond83.not.i = icmp eq i32 %.25272.i, %i.ew
  br i1 %exitcond83.not.i, label %.lr.ph92.preheader, label %.lr.ph74.i, !llvm.loop !60

.lr.ph74.i:                                       ; preds = %.loopexit.i, %.lr.ph74.preheader.i
  %.273.i = phi ptr [ %i.fc, %.loopexit.i ], [ %i.cx, %.lr.ph74.preheader.i ] ; 6 uses
  %.25272.i = phi i32 [ %i.fb, %.loopexit.i ], [ 0, %.lr.ph74.preheader.i ] ; 5 uses
  %i.fb = add nuw nsw i32 %.25272.i, 1            ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.273.i, i64 4 ; 4 uses
  %.pre84.i = load i32, ptr %.273.i, align 4, !tbaa !12 ; 4 uses
  %3 = sub nsw i32 %.25272.i, %.139
  %4 = and i32 %3, 1
  %lcmp.mod180.not.not = icmp eq i32 %4, 0
  br i1 %lcmp.mod180.not.not, label %.lr.ph71.i.prol, label %.lr.ph71.i.prol.loopexit

.lr.ph71.i.prol:                                  ; preds = %.lr.ph74.i
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !12 ; 3 uses
  %i.fe = icmp sgt i32 %i.fd, %.pre84.i
  br i1 %i.fe, label %bb.z, label %.lr.ph71.i.prol.loopexit.unr-lcssa

bb.z:                                             ; preds = %.lr.ph71.i.prol
  store i32 %.pre84.i, ptr %i.fc, align 4, !tbaa !12
  store i32 %i.fd, ptr %.273.i, align 4, !tbaa !12
  br label %.lr.ph71.i.prol.loopexit.unr-lcssa

.lr.ph71.i.prol.loopexit.unr-lcssa:               ; preds = %bb.z, %.lr.ph71.i.prol
  %i.ff = phi i32 [ %.pre84.i, %.lr.ph71.i.prol ], [ %i.fd, %bb.z ]
  %i.fg = add nuw nsw i32 %.25272.i, 2
  %i.fh = getelementptr inbounds nuw i8, ptr %.273.i, i64 8
  br label %.lr.ph71.i.prol.loopexit

.lr.ph71.i.prol.loopexit:                         ; preds = %.lr.ph71.i.prol.loopexit.unr-lcssa, %.lr.ph74.i
  %.unr182 = phi i32 [ %.pre84.i, %.lr.ph74.i ], [ %i.ff, %.lr.ph71.i.prol.loopexit.unr-lcssa ]
  %.24770.i.unr = phi ptr [ %i.fc, %.lr.ph74.i ], [ %i.fh, %.lr.ph71.i.prol.loopexit.unr-lcssa ]
  %.14969.i.unr = phi i32 [ %i.fb, %.lr.ph74.i ], [ %i.fg, %.lr.ph71.i.prol.loopexit.unr-lcssa ]
  %i.fi = icmp eq i32 %i.ew, %.25272.i
  br i1 %i.fi, label %.loopexit.i, label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %.lr.ph71.i.prol.loopexit, %bb.ac
  %i.fj = phi i32 [ %i.fq, %bb.ac ], [ %.unr182, %.lr.ph71.i.prol.loopexit ] ; 3 uses
  %.24770.i = phi ptr [ %i.fs, %bb.ac ], [ %.24770.i.unr, %.lr.ph71.i.prol.loopexit ] ; 4 uses
  %.14969.i = phi i32 [ %i.fr, %bb.ac ], [ %.14969.i.unr, %.lr.ph71.i.prol.loopexit ]
  %i.fk = load i32, ptr %.24770.i, align 4, !tbaa !12 ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, %i.fj
  br i1 %i.fl, label %bb.aa, label %.lr.ph71.i.1

bb.aa:                                            ; preds = %.lr.ph71.i
  store i32 %i.fj, ptr %.24770.i, align 4, !tbaa !12
  store i32 %i.fk, ptr %.273.i, align 4, !tbaa !12
  br label %.lr.ph71.i.1

.lr.ph71.i.1:                                     ; preds = %bb.aa, %.lr.ph71.i
  %i.fm = phi i32 [ %i.fj, %.lr.ph71.i ], [ %i.fk, %bb.aa ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.24770.i, i64 4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !12 ; 3 uses
  %i.fp = icmp sgt i32 %i.fo, %i.fm
  br i1 %i.fp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph71.i.1
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !12
  store i32 %i.fo, ptr %.273.i, align 4, !tbaa !12
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph71.i.1
  %i.fq = phi i32 [ %i.fm, %.lr.ph71.i.1 ], [ %i.fo, %bb.ab ]
  %i.fr = add nuw nsw i32 %.14969.i, 2            ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.24770.i, i64 8
  %exitcond81.not.i.1 = icmp eq i32 %i.fr, %.139
  br i1 %exitcond81.not.i.1, label %.loopexit.i, label %.lr.ph71.i, !llvm.loop !61

assignnodes.exit:                                 ; preds = %bb.x, %getfactors.exit
  %.053.i = phi i32 [ 39, %bb.x ], [ 12, %getfactors.exit ]
  tail call void @free(ptr noundef %.072) #7
  %i.ft = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef %.053.i, ptr noundef nonnull @FUNC_NAME) #7
  br label %.loopexit

.lr.ph92:                                         ; preds = %bb.af, %.lr.ph92.preheader.new
  %.190 = phi ptr [ %i.cx, %.lr.ph92.preheader.new ], [ %.2.1, %bb.af ] ; 3 uses
  %.14688 = phi ptr [ %2, %.lr.ph92.preheader.new ], [ %i.gd, %bb.af ] ; 4 uses
  %niter188 = phi i32 [ 0, %.lr.ph92.preheader.new ], [ %niter188.next.1, %bb.af ]
  %i.fu = load i32, ptr %.14688, align 4, !tbaa !12
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.ad, label %.lr.ph92.1

bb.ad:                                            ; preds = %.lr.ph92
  %i.fw = getelementptr inbounds nuw i8, ptr %.190, i64 4
  %i.fx = load i32, ptr %.190, align 4, !tbaa !12
  store i32 %i.fx, ptr %.14688, align 4, !tbaa !12
  br label %.lr.ph92.1

.lr.ph92.1:                                       ; preds = %.lr.ph92, %bb.ad
  %.2 = phi ptr [ %i.fw, %bb.ad ], [ %.190, %.lr.ph92 ] ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.14688, i64 4 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !12
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph92.1
  %i.gb = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.gc = load i32, ptr %.2, align 4, !tbaa !12
  store i32 %i.gc, ptr %i.fy, align 4, !tbaa !12
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph92.1
  %.2.1 = phi ptr [ %i.gb, %bb.ae ], [ %.2, %.lr.ph92.1 ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.14688, i64 8 ; 2 uses
  %niter188.next.1 = add i32 %niter188, 2         ; 2 uses
  %niter188.ncmp.1 = icmp eq i32 %niter188.next.1, %unroll_iter187
  br i1 %niter188.ncmp.1, label %._crit_edge93.unr-lcssa, label %.lr.ph92, !llvm.loop !62

._crit_edge93.unr-lcssa:                          ; preds = %bb.af
  %lcmp.mod185.not = icmp eq i32 %xtraiter183, 0
  br i1 %lcmp.mod185.not, label %._crit_edge93, label %.lr.ph92.epil.preheader

.lr.ph92.epil.preheader:                          ; preds = %._crit_edge93.unr-lcssa, %.lr.ph92.preheader
  %.190.epil.init = phi ptr [ %i.cx, %.lr.ph92.preheader ], [ %.2.1, %._crit_edge93.unr-lcssa ]
  %.14688.epil.init = phi ptr [ %2, %.lr.ph92.preheader ], [ %i.gd, %._crit_edge93.unr-lcssa ] ; 2 uses
  %lcmp.mod186 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod186)
  %i.ge = load i32, ptr %.14688.epil.init, align 4, !tbaa !12
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %bb.ag, label %._crit_edge93

bb.ag:                                            ; preds = %.lr.ph92.epil.preheader
  %i.gg = load i32, ptr %.190.epil.init, align 4, !tbaa !12
  store i32 %i.gg, ptr %.14688.epil.init, align 4, !tbaa !12
  br label %._crit_edge93

._crit_edge93:                                    ; preds = %.lr.ph92.epil.preheader, %bb.ag, %._crit_edge93.unr-lcssa
  tail call void @free(ptr noundef %.072) #7
  tail call void @free(ptr noundef %i.cx) #7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %middle.block166, %._crit_edge.thread, %._crit_edge93, %assignnodes.exit, %bb.q, %bb.n, %bb.i, %bb.g, %bb.e
  %.047 = phi i32 [ %i.i, %bb.e ], [ %i.n, %bb.g ], [ %i.r, %bb.i ], [ %i.aa, %bb.n ], [ %i.ft, %assignnodes.exit ], [ %i.ag, %bb.q ], [ 0, %._crit_edge.thread ], [ 0, %._crit_edge93 ], [ 0, %middle.block166 ], [ 0, %bb.t ]
  ret i32 %.047
}

declare i32 @ompi_errhandler_invoke(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"_Bool", !6, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!5, !5, i64 0}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!15, !36, i64 312}
!15 = !{!"ompi_communicator_t", !16, i64 0, !25, i64 96, !26, i64 160, !27, i64 168, !28, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !29, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !30, i64 264, !30, i64 272, !31, i64 280, !32, i64 288, !33, i64 296, !34, i64 304, !36, i64 312, !5, i64 320, !37, i64 328, !38, i64 336, !39, i64 344, !40, i64 352, !41, i64 360, !5, i64 368, !5, i64 372, !9, i64 376, !9, i64 377, !9, i64 378}
!16 = !{!"opal_infosubscriber_t", !17, i64 0, !20, i64 16, !24, i64 88}
!17 = !{!"opal_object_t", !18, i64 0, !5, i64 8}
!18 = !{!"p1 _ZTS12opal_class_t", !19, i64 0}
!19 = !{!"any pointer", !6, i64 0}
!20 = !{!"opal_hash_table_t", !17, i64 0, !21, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !23, i64 64}
!21 = !{!"p1 _ZTS19opal_hash_element_t", !19, i64 0}
!22 = !{!"long", !6, i64 0}
!23 = !{!"p1 _ZTS24opal_hash_type_methods_t", !19, i64 0}
!24 = !{!"p1 _ZTS11opal_info_t", !19, i64 0}
!25 = !{!"opal_mutex_t", !17, i64 0, !6, i64 16, !5, i64 56}
!26 = !{!"p1 omnipotent char", !19, i64 0}
!27 = !{!"ompi_comm_extended_cid_t", !22, i64 0, !6, i64 8}
!28 = !{!"ompi_comm_extended_cid_block_t", !27, i64 0, !22, i64 16, !6, i64 24, !6, i64 25}
!29 = !{!"p1 int", !19, i64 0}
!30 = !{!"p1 _ZTS12ompi_group_t", !19, i64 0}
!31 = !{!"p1 _ZTS19ompi_communicator_t", !19, i64 0}
!32 = !{!"p1 _ZTS17opal_hash_table_t", !19, i64 0}
!33 = !{!"p1 _ZTS22mca_topo_base_module_t", !19, i64 0}
!34 = !{!"p2 _ZTS20ompi_peruse_handle_t", !35, i64 0}
!35 = !{!"any p2 pointer", !19, i64 0}
!36 = !{!"p1 _ZTS17ompi_errhandler_t", !19, i64 0}
!37 = !{!"p1 _ZTS14mca_pml_comm_t", !19, i64 0}
!38 = !{!"p1 _ZTS14mca_mtl_comm_t", !19, i64 0}
!39 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !19, i64 0}
!40 = !{!"p1 _ZTS15ompi_instance_t", !19, i64 0}
!41 = !{!"p1 _ZTS13opal_object_t", !19, i64 0}
!42 = !{!15, !5, i64 320}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = distinct !{!45, !44, !46, !47}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = distinct !{!48, !44, !47, !46}
!49 = distinct !{!49, !44}
!50 = distinct !{!50, !44}
!51 = distinct !{!51, !44}
!52 = distinct !{!52, !44, !46, !47}
!53 = distinct !{!53, !44}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = distinct !{!56, !44}
end_hunk_1
