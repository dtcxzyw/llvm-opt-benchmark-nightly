Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5B2hdr?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.H5C_class_t = type { i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.H5B2_hdr_cache_ud_t = type { ptr, i64, ptr }

@.str = private unnamed_addr constant [21 x i8] c"H5B2_node_info_t_seq\00", align 1
@H5_H5B2_node_info_t_seq_free_list = global { { i8, [3 x i8], i32, i32, [4 x i8], i64, ptr, ptr }, i64 } { { i8, [3 x i8], i32, i32, [4 x i8], i64, ptr, ptr } { i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @.str, ptr null }, i64 48 }, align 8
@H5B2_init_g = external local_unnamed_addr global i8, align 1
@H5_libterm_g = external local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"/opt-bench/work/hdf5/hdf5/src/H5B2hdr.c\00", align 1
@__func__.H5B2__hdr_init = private unnamed_addr constant [15 x i8] c"H5B2__hdr_init\00", align 1
@H5E_BTREE_g = external local_unnamed_addr global i64, align 8
@H5E_NOSPACE_g = external local_unnamed_addr global i64, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"memory allocation failed\00", align 1
@H5E_CANTINIT_g = external local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"can't create node native key block factory\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"can't create internal 'branch' node node pointer block factory\00", align 1
@H5E_CANTCREATE_g = external local_unnamed_addr global i64, align 8
@.str.5 = private unnamed_addr constant [51 x i8] c"unable to create v2 B-tree client callback context\00", align 1
@H5E_CANTFREE_g = external local_unnamed_addr global i64, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"unable to free shared v2 B-tree info\00", align 1
@__func__.H5B2__hdr_alloc = private unnamed_addr constant [16 x i8] c"H5B2__hdr_alloc\00", align 1
@H5E_CANTALLOC_g = external local_unnamed_addr global i64, align 8
@.str.7 = private unnamed_addr constant [43 x i8] c"memory allocation failed for B-tree header\00", align 1
@__func__.H5B2__hdr_create = private unnamed_addr constant [17 x i8] c"H5B2__hdr_create\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"allocation failed for B-tree header\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"can't create shared B-tree info\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"file allocation failed for B-tree header\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"can't create v2 B-tree proxy\00", align 1
@H5AC_BT2_HDR = external constant [1 x %struct.H5C_class_t], align 16
@H5E_CANTINSERT_g = external local_unnamed_addr global i64, align 8
@.str.12 = private unnamed_addr constant [33 x i8] c"can't add B-tree header to cache\00", align 1
@H5E_CANTSET_g = external local_unnamed_addr global i64, align 8
@.str.13 = private unnamed_addr constant [55 x i8] c"unable to add v2 B-tree header as child of array proxy\00", align 1
@H5E_CANTREMOVE_g = external local_unnamed_addr global i64, align 8
@.str.14 = private unnamed_addr constant [45 x i8] c"unable to remove v2 B-tree header from cache\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"unable to free v2 B-tree header\00", align 1
@H5E_CANTRELEASE_g = external local_unnamed_addr global i64, align 8
@.str.16 = private unnamed_addr constant [35 x i8] c"unable to release v2 B-tree header\00", align 1
@__func__.H5B2__hdr_incr = private unnamed_addr constant [15 x i8] c"H5B2__hdr_incr\00", align 1
@H5E_CANTPIN_g = external local_unnamed_addr global i64, align 8
@.str.17 = private unnamed_addr constant [31 x i8] c"unable to pin v2 B-tree header\00", align 1
@__func__.H5B2__hdr_decr = private unnamed_addr constant [15 x i8] c"H5B2__hdr_decr\00", align 1
@H5E_CANTUNPIN_g = external local_unnamed_addr global i64, align 8
@.str.18 = private unnamed_addr constant [33 x i8] c"unable to unpin v2 B-tree header\00", align 1
@__func__.H5B2__hdr_dirty = private unnamed_addr constant [16 x i8] c"H5B2__hdr_dirty\00", align 1
@H5E_CANTMARKDIRTY_g = external local_unnamed_addr global i64, align 8
@.str.19 = private unnamed_addr constant [41 x i8] c"unable to mark v2 B-tree header as dirty\00", align 1
@__func__.H5B2__hdr_protect = private unnamed_addr constant [18 x i8] c"H5B2__hdr_protect\00", align 1
@H5E_CANTPROTECT_g = external local_unnamed_addr global i64, align 8
@.str.20 = private unnamed_addr constant [48 x i8] c"unable to load v2 B-tree header, address = %llu\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"unable to add v2 B-tree header as child of proxy\00", align 1
@H5E_CANTUNPROTECT_g = external local_unnamed_addr global i64, align 8
@.str.22 = private unnamed_addr constant [53 x i8] c"unable to unprotect v2 B-tree header, address = %llu\00", align 1
@__func__.H5B2__hdr_unprotect = private unnamed_addr constant [20 x i8] c"H5B2__hdr_unprotect\00", align 1
@__func__.H5B2__hdr_free = private unnamed_addr constant [15 x i8] c"H5B2__hdr_free\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"can't destroy v2 B-tree client callback context\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"can't destroy node's native record block factory\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"can't destroy node's node pointer block factory\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"unable to destroy v2 B-tree 'top' proxy\00", align 1
@__func__.H5B2__hdr_delete = private unnamed_addr constant [17 x i8] c"H5B2__hdr_delete\00", align 1
@H5E_CANTDELETE_g = external local_unnamed_addr global i64, align 8
@.str.27 = private unnamed_addr constant [30 x i8] c"unable to delete B-tree nodes\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"node_page_blk\00", align 1
@H5_node_page_blk_free_list = internal global { i8, [3 x i8], i32, i32, [4 x i8], i64, ptr, ptr } { i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @.str.28, ptr null }, align 8
@.str.30 = private unnamed_addr constant [11 x i8] c"size_t_seq\00", align 1
@H5_size_t_seq_free_list = internal global { { i8, [3 x i8], i32, i32, [4 x i8], i64, ptr, ptr }, i64 } { { i8, [3 x i8], i32, i32, [4 x i8], i64, ptr, ptr } { i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @.str.30, ptr null }, i64 8 }, align 8
@LogTable256 = internal unnamed_addr constant [256 x i8] c"\00\00\01\01\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07", align 16
@.str.32 = private unnamed_addr constant [11 x i8] c"H5B2_hdr_t\00", align 1
@H5_H5B2_hdr_t_reg_free_list = internal global { i8, [3 x i8], i32, i32, [4 x i8], ptr, i64, ptr } { i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, ptr @.str.32, i64 440, ptr null }, align 8

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__hdr_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.an, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  store i16 %3, ptr %i.g, align 4, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  store i8 %i.i, ptr %i.j, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.l = load i8, ptr %i.k, align 1, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 273 ; 3 uses
  store i8 %i.l, ptr %i.m, align 1, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.q = load <2 x i32>, ptr %i.n, align 8, !tbaa !65
  %i.r = load i32, ptr %i.n, align 8, !tbaa !66
  store <2 x i32> %i.q, ptr %i.o, align 4, !tbaa !65
  %i.s = load ptr, ptr %1, align 8, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !31
  %i.u = zext i32 %i.r to i64
  %i.v = tail call noalias ptr @H5FL_blk_malloc(ptr noundef nonnull @H5_node_page_blk_free_list, i64 noundef %i.u) #5 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.v, ptr %i.w, align 8, !tbaa !32
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.z = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !33
  %i.aa = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 132, i64 noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.2) #5 ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %i.o, align 4, !tbaa !68
  %i.ac = zext i32 %i.ab to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.v, i8 0, i64 %i.ac, i1 false)
  %i.ad = load i16, ptr %i.g, align 4, !tbaa !30
  %i.ae = zext i16 %i.ad to i64
  %i.af = add nuw nsw i64 %i.ae, 1
  %i.ag = tail call noalias ptr @H5FL_seq_malloc(ptr noundef nonnull @H5_H5B2_node_info_t_seq_free_list, i64 noundef %i.af) #5 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 5 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !34
  %i.ai = icmp eq ptr %i.ag, null
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.ak = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !33
  %i.al = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 137, i64 noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull @.str.2) #5 ; 0 uses
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.am = load i32, ptr %i.o, align 4, !tbaa !68
  %i.an = add i32 %i.am, -10
  %i.ao = load i32, ptr %i.p, align 8, !tbaa !69
  %i.ap = udiv i32 %i.an, %i.ao                   ; 4 uses
  store i32 %i.ap, ptr %i.ag, align 8, !tbaa !70
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ar = load i8, ptr %i.m, align 1, !tbaa !64
  %4 = load i8, ptr %i.j, align 8, !tbaa !62
  %5 = zext i8 %i.ar to i32
  %6 = zext i8 %4 to i32
  %7 = mul i32 %i.ap, %5
  %i.as = mul i32 %i.ap, %6
  %i.at = insertelement <2 x i32> poison, i32 %i.as, i64 0
  %i.au = insertelement <2 x i32> %i.at, i32 %7, i64 1
  %i.av = udiv <2 x i32> %i.au, splat (i32 100)
  store <2 x i32> %i.av, ptr %i.aq, align 4, !tbaa !65
  %i.aw = zext i32 %i.ap to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !71
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i8 0, ptr %i.ay, align 8, !tbaa !72
  %i.az = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !73
  %i.bc = mul i64 %i.bb, %i.aw
  %i.bd = tail call ptr @H5FL_fac_init(i64 noundef %i.bc) #5 ; 2 uses
  %i.be = load ptr, ptr %i.ah, align 8, !tbaa !34 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !38
  %i.bg = icmp eq ptr %i.bd, null
  br i1 %i.bg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bh = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.bi = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !33
  %i.bj = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 148, i64 noundef %i.bh, i64 noundef %i.bi, ptr noundef nonnull @.str.3) #5 ; 0 uses
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr null, ptr %i.bk, align 8, !tbaa !39
  %i.bl = load i32, ptr %i.be, align 8, !tbaa !70
  %i.bm = zext i32 %i.bl to i64
  %i.bn = tail call noalias ptr @H5FL_seq_malloc(ptr noundef nonnull @H5_size_t_seq_free_list, i64 noundef %i.bm) #5 ; 10 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !40
  %i.bp = icmp eq ptr %i.bn, null
  br i1 %i.bp, label %bb.i, label %.preheader136

.preheader136:                                    ; preds = %bb.h
  %i.bq = load ptr, ptr %i.ah, align 8, !tbaa !34 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !70 ; 3 uses
  %.not139 = icmp eq i32 %i.br, 0
  br i1 %.not139, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader136
  %i.bs = load ptr, ptr %i.t, align 8, !tbaa !31  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 7 uses
  %wide.trip.count = zext i32 %i.br to i64        ; 10 uses
  %min.iters.check = icmp ult i32 %i.br, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bu = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep = getelementptr i8, ptr %i.bn, i64 %i.bu
  %scevgep169 = getelementptr i8, ptr %i.bs, i64 24
  %bound0 = icmp ult ptr %i.bn, %scevgep169
  %bound1 = icmp ult ptr %i.bt, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !73, !alias.scope !74
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bv, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bw = mul <2 x i64> %broadcast.splat, %vec.ind
  %i.bx = mul <2 x i64> %broadcast.splat, %step.add
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <2 x i64> %i.bw, ptr %i.by, align 8, !tbaa !33, !alias.scope !75, !noalias !74
  store <2 x i64> %i.bx, ptr %i.bz, align 8, !tbaa !33, !alias.scope !75, !noalias !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cb = load i64, ptr %i.bt, align 8, !tbaa !73
  %i.cc = mul i64 %i.cb, %indvars.iv.prol
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.prol
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !33
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !57

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ce = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cf = icmp ugt i64 %i.ce, -4
  br i1 %i.cf, label %._crit_edge, label %scalar.ph

bb.i:                                             ; preds = %bb.h
  %i.cg = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.ch = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !33
  %i.ci = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 154, i64 noundef %i.cg, i64 noundef %i.ch, ptr noundef nonnull @.str.2) #5 ; 0 uses
  br label %.critedge

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cj = load i64, ptr %i.bt, align 8, !tbaa !73
  %i.ck = mul i64 %i.cj, %indvars.iv
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = load i64, ptr %i.bt, align 8, !tbaa !73
  %i.cn = mul i64 %i.cm, %indvars.iv.next
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !33
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cp = load i64, ptr %i.bt, align 8, !tbaa !73
  %i.cq = mul i64 %i.cp, %indvars.iv.next.1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.1
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !33
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cs = load i64, ptr %i.bt, align 8, !tbaa !73
  %i.ct = mul i64 %i.cs, %indvars.iv.next.2
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.2
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !33
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !58

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cv = lshr i64 %wide.trip.count, 16           ; 2 uses
  %.not23.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not23.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.cw = lshr i64 %wide.trip.count, 24           ; 2 uses
  %.not25.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not25.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cx = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !79
  %i.cz = zext i8 %i.cy to i16
  %i.da = add nuw nsw i16 %i.cz, 24
  br label %H5VM_limit_enc_size.exit

bb.l:                                             ; preds = %bb.j
  %i.db = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.cv
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !79
  %i.dd = zext i8 %i.dc to i16
  %i.de = add nuw nsw i16 %i.dd, 16
  br label %H5VM_limit_enc_size.exit

bb.m:                                             ; preds = %._crit_edge
  %i.df = lshr i64 %wide.trip.count, 8            ; 2 uses
  %.not24.i.i = icmp eq i64 %i.df, 0
  br i1 %.not24.i.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dg = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !79
  %i.di = zext i8 %i.dh to i16
  %i.dj = add nuw nsw i16 %i.di, 8
  br label %H5VM_limit_enc_size.exit

.thread:                                          ; preds = %.preheader136, %bb.m
  %.pre-phi165168 = phi i64 [ %wide.trip.count, %bb.m ], [ 0, %.preheader136 ]
  %i.dk = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %.pre-phi165168
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !79
  %i.dm = zext i8 %i.dl to i16
  br label %H5VM_limit_enc_size.exit

H5VM_limit_enc_size.exit:                         ; preds = %bb.k, %bb.l, %bb.n, %.thread
  %.0.i.i = phi i16 [ %i.de, %bb.l ], [ %i.dj, %bb.n ], [ %i.da, %bb.k ], [ %i.dm, %.thread ]
  %i.dn = lshr i16 %.0.i.i, 3
  %i.do = trunc nuw nsw i16 %i.dn to i8
  %i.dp = add nuw nsw i8 %i.do, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 286 ; 2 uses
  store i8 %i.dp, ptr %i.dq, align 2, !tbaa !80
  %.not = icmp eq i16 %3, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %H5VM_limit_enc_size.exit
  %i.dr = zext i16 %3 to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 330
  br label %bb.p

bb.o:                                             ; preds = %bb.af
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  %exitcond145.not = icmp eq i64 %indvars.iv141, %i.dr
  br i1 %exitcond145.not, label %.loopexit, label %bb.p, !llvm.loop !59

bb.p:                                             ; preds = %.preheader, %bb.o
  %i.dt = phi ptr [ %i.bq, %.preheader ], [ %i.hf, %bb.o ] ; 2 uses
  %indvars.iv141 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next142, %bb.o ] ; 6 uses
  %i.du = load i32, ptr %i.o, align 4, !tbaa !68
  %i.dv = load i8, ptr %i.ds, align 2, !tbaa !42
  %i.dw = zext i8 %i.dv to i32
  %i.dx = load i8, ptr %i.dq, align 2, !tbaa !80
  %i.dy = zext i8 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dy, %i.dw
  %i.ea = getelementptr [48 x i8], ptr %i.dt, i64 %indvars.iv141 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 -24
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !72
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nuw nsw i32 %i.dz, %i.ed            ; 2 uses
  %.neg135 = add i32 %i.du, -10
  %i.ef = sub i32 %.neg135, %i.ee
  %i.eg = load i32, ptr %i.p, align 8, !tbaa !69
  %i.eh = add i32 %i.ee, %i.eg
  %i.ei = udiv i32 %i.ef, %i.eh                   ; 5 uses
  %i.ej = getelementptr inbounds nuw [48 x i8], ptr %i.dt, i64 %indvars.iv141 ; 4 uses
  store i32 %i.ei, ptr %i.ej, align 8, !tbaa !70
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i8, ptr %i.m, align 1, !tbaa !64
  %8 = load i8, ptr %i.j, align 8, !tbaa !62
  %9 = zext i8 %i.el to i32
  %10 = zext i8 %8 to i32
  %11 = mul i32 %i.ei, %9
  %i.em = mul i32 %i.ei, %10
  %i.en = insertelement <2 x i32> poison, i32 %i.em, i64 0
  %i.eo = insertelement <2 x i32> %i.en, i32 %11, i64 1
  %i.ep = udiv <2 x i32> %i.eo, splat (i32 100)
  store <2 x i32> %i.ep, ptr %i.ek, align 4, !tbaa !65
  %i.eq = add i32 %i.ei, 1
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr i8, ptr %i.ea, i64 -32
  %i.et = load i64, ptr %i.es, align 8, !tbaa !71
  %i.eu = mul i64 %i.et, %i.er
  %i.ev = zext i32 %i.ei to i64                   ; 2 uses
  %i.ew = add i64 %i.eu, %i.ev                    ; 9 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !71
  %i.ey = lshr i64 %i.ew, 32                      ; 2 uses
  %.not.i.i126 = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i126, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ez = lshr i64 %i.ew, 48                      ; 2 uses
  %.not26.i.i127 = icmp eq i64 %i.ez, 0
  br i1 %.not26.i.i127, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fa = lshr i64 %i.ew, 56                      ; 2 uses
  %.not28.i.i128 = icmp eq i64 %i.fa, 0
  br i1 %.not28.i.i128, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fb = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !79
  %i.fd = zext i8 %i.fc to i16
  %i.fe = add nuw nsw i16 %i.fd, 56
  br label %H5VM_limit_enc_size.exit134

bb.t:                                             ; preds = %bb.r
  %i.ff = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ez
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !79
  %i.fh = zext i8 %i.fg to i16
  %i.fi = add nuw nsw i16 %i.fh, 48
  br label %H5VM_limit_enc_size.exit134

bb.u:                                             ; preds = %bb.q
  %i.fj = lshr i64 %i.ew, 40                      ; 2 uses
  %.not27.i.i130 = icmp eq i64 %i.fj, 0
  br i1 %.not27.i.i130, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fk = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !79
  %i.fm = zext i8 %i.fl to i16
  %i.fn = add nuw nsw i16 %i.fm, 40
  br label %H5VM_limit_enc_size.exit134

bb.w:                                             ; preds = %bb.u
  %i.fo = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ey
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !79
  %i.fq = zext i8 %i.fp to i16
  %i.fr = add nuw nsw i16 %i.fq, 32
  br label %H5VM_limit_enc_size.exit134

bb.x:                                             ; preds = %bb.p
  %i.fs = lshr i64 %i.ew, 16                      ; 2 uses
  %.not23.i.i131 = icmp eq i64 %i.fs, 0
  br i1 %.not23.i.i131, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ft = lshr i64 %i.ew, 24                      ; 2 uses
  %.not25.i.i132 = icmp eq i64 %i.ft, 0
  br i1 %.not25.i.i132, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !79
  %i.fw = zext i8 %i.fv to i16
  %i.fx = add nuw nsw i16 %i.fw, 24
  br label %H5VM_limit_enc_size.exit134

bb.aa:                                            ; preds = %bb.y
  %i.fy = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.fs
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !79
  %i.ga = zext i8 %i.fz to i16
  %i.gb = add nuw nsw i16 %i.ga, 16
  br label %H5VM_limit_enc_size.exit134

bb.ab:                                            ; preds = %bb.x
  %i.gc = lshr i64 %i.ew, 8                       ; 2 uses
  %.not24.i.i133 = icmp eq i64 %i.gc, 0
  br i1 %.not24.i.i133, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gd = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !79
  %i.gf = zext i8 %i.ge to i16
  %i.gg = add nuw nsw i16 %i.gf, 8
  br label %H5VM_limit_enc_size.exit134

bb.ad:                                            ; preds = %bb.ab
  %i.gh = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ew
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !79
  %i.gj = zext i8 %i.gi to i16
  br label %H5VM_limit_enc_size.exit134

H5VM_limit_enc_size.exit134:                      ; preds = %bb.s, %bb.t, %bb.v, %bb.w, %bb.z, %bb.aa, %bb.ac, %bb.ad
  %.0.i.i129 = phi i16 [ %i.gb, %bb.aa ], [ %i.fi, %bb.t ], [ %i.fr, %bb.w ], [ %i.fe, %bb.s ], [ %i.fn, %bb.v ], [ %i.fx, %bb.z ], [ %i.gg, %bb.ac ], [ %i.gj, %bb.ad ]
  %i.gk = lshr i16 %.0.i.i129, 3
  %i.gl = trunc nuw nsw i16 %i.gk to i8
  %i.gm = add nuw nsw i8 %i.gl, 1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store i8 %i.gm, ptr %i.gn, align 8, !tbaa !72
  %i.go = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !73
  %i.gr = mul i64 %i.gq, %i.ev
  %i.gs = tail call ptr @H5FL_fac_init(i64 noundef %i.gr) #5 ; 2 uses
  %i.gt = load ptr, ptr %i.ah, align 8, !tbaa !34
  %i.gu = getelementptr inbounds nuw [48 x i8], ptr %i.gt, i64 %indvars.iv141 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  store ptr %i.gs, ptr %i.gv, align 8, !tbaa !38
  %i.gw = icmp eq ptr %i.gs, null
  br i1 %i.gw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %H5VM_limit_enc_size.exit134
  %i.gx = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.gy = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !33
  %i.gz = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 185, i64 noundef %i.gx, i64 noundef %i.gy, ptr noundef nonnull @.str.3) #5 ; 0 uses
  br label %.critedge

bb.af:                                            ; preds = %H5VM_limit_enc_size.exit134
  %i.ha = load i32, ptr %i.gu, align 8, !tbaa !70
  %i.hb = add i32 %i.ha, 1
  %i.hc = zext i32 %i.hb to i64
  %i.hd = mul nuw nsw i64 %i.hc, 24
  %i.he = tail call ptr @H5FL_fac_init(i64 noundef %i.hd) #5 ; 2 uses
  %i.hf = load ptr, ptr %i.ah, align 8, !tbaa !34 ; 2 uses
  %i.hg = getelementptr inbounds nuw [48 x i8], ptr %i.hf, i64 %indvars.iv141
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  store ptr %i.he, ptr %i.hh, align 8, !tbaa !39
  %i.hi = icmp eq ptr %i.he, null
  br i1 %i.hi, label %bb.ag, label %bb.o

bb.ag:                                            ; preds = %bb.af
  %i.hj = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.hk = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !33
  %i.hl = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 189, i64 noundef %i.hj, i64 noundef %i.hk, ptr noundef nonnull @.str.4) #5 ; 0 uses
  br label %.critedge

.loopexit:                                        ; preds = %bb.o, %H5VM_limit_enc_size.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !43
  %i.ho = tail call i32 @H5F_get_intent(ptr noundef %i.hn) #5
  %i.hp = and i32 %i.ho, 32
  %.not124 = icmp eq i32 %i.hp, 0
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !31  ; 2 uses
  br i1 %.not124, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  %i.hq = load i32, ptr %.pre, align 8, !tbaa !81 ; 2 uses
  %i.hr = icmp eq i32 %i.hq, 10
  br i1 %i.hr, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hs = icmp eq i32 %i.hq, 11
  %i.ht = zext i1 %i.hs to i8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %.loopexit
  %i.hu = phi i8 [ 0, %.loopexit ], [ 1, %bb.ah ], [ %i.ht, %bb.ai ]
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i8 %i.hu, ptr %i.hv, align 8, !tbaa !44
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 0, ptr %i.hw, align 8, !tbaa !82
  %i.hx = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !83 ; 2 uses
  %.not125 = icmp eq ptr %i.hy, null
  br i1 %.not125, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hz = tail call ptr %i.hy(ptr noundef %2) #5  ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !45
  %i.ib = icmp eq ptr %i.hz, null
  br i1 %i.ib, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.ic = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.id = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !33
  %i.ie = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 204, i64 noundef %i.ic, i64 noundef %i.id, ptr noundef nonnull @.str.5) #5 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.al, %bb.ag, %bb.ae, %bb.i, %bb.g, %bb.e, %bb.c
  %i.if = tail call i32 @H5B2__hdr_free(ptr noundef nonnull %0)
  %i.ig = icmp slt i32 %i.if, 0
  br i1 %i.ig, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.critedge
  %i.ih = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.ii = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !33
  %i.ij = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 209, i64 noundef %i.ih, i64 noundef %i.ii, ptr noundef nonnull @.str.6) #5 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.aj, %bb.am, %.critedge, %bb.a
  %.1 = phi i32 [ -1, %bb.am ], [ -1, %.critedge ], [ 0, %bb.a ], [ 0, %bb.aj ], [ 0, %bb.ak ]
end_hunk_0
