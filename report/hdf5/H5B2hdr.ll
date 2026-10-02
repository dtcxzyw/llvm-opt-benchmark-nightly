Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5B2hdr?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
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
  %i.ar = load i8, ptr %i.j, align 8, !tbaa !62
  %i.as = zext i8 %i.ar to i32
  %i.at = mul i32 %i.ap, %i.as
  %i.au = load i8, ptr %i.m, align 1, !tbaa !64
  %i.av = zext i8 %i.au to i32
  %i.aw = mul i32 %i.ap, %i.av
  %i.ax = insertelement <2 x i32> poison, i32 %i.at, i64 0
  %i.ay = insertelement <2 x i32> %i.ax, i32 %i.aw, i64 1
  %i.az = udiv <2 x i32> %i.ay, splat (i32 100)
  store <2 x i32> %i.az, ptr %i.aq, align 4, !tbaa !65
  %i.ba = zext i32 %i.ap to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !71
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i8 0, ptr %i.bc, align 8, !tbaa !72
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !73
  %i.bg = mul i64 %i.bf, %i.ba
  %i.bh = tail call ptr @H5FL_fac_init(i64 noundef %i.bg) #5 ; 2 uses
  %i.bi = load ptr, ptr %i.ah, align 8, !tbaa !34 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !38
  %i.bk = icmp eq ptr %i.bh, null
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bl = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.bm = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !33
  %i.bn = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 148, i64 noundef %i.bl, i64 noundef %i.bm, ptr noundef nonnull @.str.3) #5 ; 0 uses
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store ptr null, ptr %i.bo, align 8, !tbaa !39
  %i.bp = load i32, ptr %i.bi, align 8, !tbaa !70
  %i.bq = zext i32 %i.bp to i64
  %i.br = tail call noalias ptr @H5FL_seq_malloc(ptr noundef nonnull @H5_size_t_seq_free_list, i64 noundef %i.bq) #5 ; 10 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !40
  %i.bt = icmp eq ptr %i.br, null
  br i1 %i.bt, label %bb.i, label %.preheader136

.preheader136:                                    ; preds = %bb.h
  %i.bu = load ptr, ptr %i.ah, align 8, !tbaa !34 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !70 ; 3 uses
  %.not139 = icmp eq i32 %i.bv, 0
  br i1 %.not139, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader136
  %i.bw = load ptr, ptr %i.t, align 8, !tbaa !31  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 7 uses
  %wide.trip.count = zext i32 %i.bv to i64        ; 10 uses
  %min.iters.check = icmp ult i32 %i.bv, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.by = shl nuw nsw i64 %wide.trip.count, 3
  %i.bz = getelementptr i8, ptr %i.br, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bw, i64 24
  %bound0 = icmp ult ptr %i.br, %i.ca
  %bound1 = icmp ult ptr %i.bx, %i.bz
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %i.cb = load i64, ptr %i.bx, align 8, !tbaa !73, !alias.scope !74
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cb, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.cc = mul <2 x i64> %broadcast.splat, %vec.ind
  %i.cd = mul <2 x i64> %broadcast.splat, %step.add
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <2 x i64> %i.cc, ptr %i.ce, align 8, !tbaa !33, !alias.scope !75, !noalias !74
  store <2 x i64> %i.cd, ptr %i.cf, align 8, !tbaa !33, !alias.scope !75, !noalias !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !56

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
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !73
  %i.ci = mul i64 %i.ch, %indvars.iv.prol
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.prol
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !33
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !57

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ck = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cl = icmp ugt i64 %i.ck, -4
  br i1 %i.cl, label %._crit_edge, label %scalar.ph

bb.i:                                             ; preds = %bb.h
  %i.cm = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.cn = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !33
  %i.co = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 154, i64 noundef %i.cm, i64 noundef %i.cn, ptr noundef nonnull @.str.2) #5 ; 0 uses
  br label %.critedge

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cp = load i64, ptr %i.bx, align 8, !tbaa !73
  %i.cq = mul i64 %i.cp, %indvars.iv
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cs = load i64, ptr %i.bx, align 8, !tbaa !73
  %i.ct = mul i64 %i.cs, %indvars.iv.next
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !33
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cv = load i64, ptr %i.bx, align 8, !tbaa !73
  %i.cw = mul i64 %i.cv, %indvars.iv.next.1
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next.1
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !33
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cy = load i64, ptr %i.bx, align 8, !tbaa !73
  %i.cz = mul i64 %i.cy, %indvars.iv.next.2
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next.2
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !33
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !58

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.db = lshr i64 %wide.trip.count, 16           ; 2 uses
  %.not23.i.i = icmp eq i64 %i.db, 0
  br i1 %.not23.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.dc = lshr i64 %wide.trip.count, 24           ; 2 uses
  %.not25.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not25.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !79
  %i.df = zext i8 %i.de to i16
  %i.dg = add nuw nsw i16 %i.df, 24
  br label %H5VM_limit_enc_size.exit

bb.l:                                             ; preds = %bb.j
  %i.dh = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.db
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !79
  %i.dj = zext i8 %i.di to i16
  %i.dk = add nuw nsw i16 %i.dj, 16
  br label %H5VM_limit_enc_size.exit

bb.m:                                             ; preds = %._crit_edge
  %i.dl = lshr i64 %wide.trip.count, 8            ; 2 uses
  %.not24.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not24.i.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !79
  %i.do = zext i8 %i.dn to i16
  %i.dp = add nuw nsw i16 %i.do, 8
  br label %H5VM_limit_enc_size.exit

.thread:                                          ; preds = %.preheader136, %bb.m
  %.pre-phi165168 = phi i64 [ %wide.trip.count, %bb.m ], [ 0, %.preheader136 ]
  %i.dq = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %.pre-phi165168
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !79
  %i.ds = zext i8 %i.dr to i16
  br label %H5VM_limit_enc_size.exit

H5VM_limit_enc_size.exit:                         ; preds = %bb.k, %bb.l, %bb.n, %.thread
  %.0.i.i = phi i16 [ %i.dk, %bb.l ], [ %i.dp, %bb.n ], [ %i.dg, %bb.k ], [ %i.ds, %.thread ]
  %i.dt = lshr i16 %.0.i.i, 3
  %i.du = trunc nuw nsw i16 %i.dt to i8
  %i.dv = add nuw nsw i8 %i.du, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 286 ; 2 uses
  store i8 %i.dv, ptr %i.dw, align 2, !tbaa !80
  %.not = icmp eq i16 %3, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %H5VM_limit_enc_size.exit
  %i.dx = zext i16 %3 to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 330
  br label %bb.p

bb.o:                                             ; preds = %bb.af
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  %exitcond145.not = icmp eq i64 %indvars.iv141, %i.dx
  br i1 %exitcond145.not, label %.loopexit, label %bb.p, !llvm.loop !59

bb.p:                                             ; preds = %.preheader, %bb.o
  %i.dz = phi ptr [ %i.bu, %.preheader ], [ %i.hp, %bb.o ] ; 2 uses
  %indvars.iv141 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next142, %bb.o ] ; 6 uses
  %i.ea = load i32, ptr %i.o, align 4, !tbaa !68
  %i.eb = load i8, ptr %i.dy, align 2, !tbaa !42
  %i.ec = zext i8 %i.eb to i32
  %i.ed = load i8, ptr %i.dw, align 2, !tbaa !80
  %i.ee = zext i8 %i.ed to i32
  %i.ef = add nuw nsw i32 %i.ee, %i.ec
  %i.eg = getelementptr [48 x i8], ptr %i.dz, i64 %indvars.iv141 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 -24
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !72
  %i.ej = zext i8 %i.ei to i32
  %i.ek = add nuw nsw i32 %i.ef, %i.ej            ; 2 uses
  %.neg135 = add i32 %i.ea, -10
  %i.el = sub i32 %.neg135, %i.ek
  %i.em = load i32, ptr %i.p, align 8, !tbaa !69
  %i.en = add i32 %i.ek, %i.em
  %i.eo = udiv i32 %i.el, %i.en                   ; 5 uses
  %i.ep = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv141 ; 4 uses
  store i32 %i.eo, ptr %i.ep, align 8, !tbaa !70
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load i8, ptr %i.j, align 8, !tbaa !62
  %i.es = zext i8 %i.er to i32
  %i.et = mul i32 %i.eo, %i.es
  %i.eu = load i8, ptr %i.m, align 1, !tbaa !64
  %i.ev = zext i8 %i.eu to i32
  %i.ew = mul i32 %i.eo, %i.ev
  %i.ex = insertelement <2 x i32> poison, i32 %i.et, i64 0
  %i.ey = insertelement <2 x i32> %i.ex, i32 %i.ew, i64 1
  %i.ez = udiv <2 x i32> %i.ey, splat (i32 100)
  store <2 x i32> %i.ez, ptr %i.eq, align 4, !tbaa !65
  %i.fa = add i32 %i.eo, 1
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr i8, ptr %i.eg, i64 -32
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !71
  %i.fe = mul i64 %i.fd, %i.fb
  %i.ff = zext i32 %i.eo to i64                   ; 2 uses
  %i.fg = add i64 %i.fe, %i.ff                    ; 9 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !71
  %i.fi = lshr i64 %i.fg, 32                      ; 2 uses
  %.not.i.i126 = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i126, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fj = lshr i64 %i.fg, 48                      ; 2 uses
  %.not26.i.i127 = icmp eq i64 %i.fj, 0
  br i1 %.not26.i.i127, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fk = lshr i64 %i.fg, 56                      ; 2 uses
  %.not28.i.i128 = icmp eq i64 %i.fk, 0
  br i1 %.not28.i.i128, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fl = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !79
  %i.fn = zext i8 %i.fm to i16
  %i.fo = add nuw nsw i16 %i.fn, 56
  br label %H5VM_limit_enc_size.exit134

bb.t:                                             ; preds = %bb.r
  %i.fp = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.fj
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !79
  %i.fr = zext i8 %i.fq to i16
  %i.fs = add nuw nsw i16 %i.fr, 48
  br label %H5VM_limit_enc_size.exit134

bb.u:                                             ; preds = %bb.q
  %i.ft = lshr i64 %i.fg, 40                      ; 2 uses
  %.not27.i.i130 = icmp eq i64 %i.ft, 0
  br i1 %.not27.i.i130, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fu = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !79
  %i.fw = zext i8 %i.fv to i16
  %i.fx = add nuw nsw i16 %i.fw, 40
  br label %H5VM_limit_enc_size.exit134

bb.w:                                             ; preds = %bb.u
  %i.fy = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.fi
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !79
  %i.ga = zext i8 %i.fz to i16
  %i.gb = add nuw nsw i16 %i.ga, 32
  br label %H5VM_limit_enc_size.exit134

bb.x:                                             ; preds = %bb.p
  %i.gc = lshr i64 %i.fg, 16                      ; 2 uses
  %.not23.i.i131 = icmp eq i64 %i.gc, 0
  br i1 %.not23.i.i131, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gd = lshr i64 %i.fg, 24                      ; 2 uses
  %.not25.i.i132 = icmp eq i64 %i.gd, 0
  br i1 %.not25.i.i132, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ge = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !79
  %i.gg = zext i8 %i.gf to i16
  %i.gh = add nuw nsw i16 %i.gg, 24
  br label %H5VM_limit_enc_size.exit134

bb.aa:                                            ; preds = %bb.y
  %i.gi = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.gc
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !79
  %i.gk = zext i8 %i.gj to i16
  %i.gl = add nuw nsw i16 %i.gk, 16
  br label %H5VM_limit_enc_size.exit134

bb.ab:                                            ; preds = %bb.x
  %i.gm = lshr i64 %i.fg, 8                       ; 2 uses
  %.not24.i.i133 = icmp eq i64 %i.gm, 0
  br i1 %.not24.i.i133, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gn = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !79
  %i.gp = zext i8 %i.go to i16
  %i.gq = add nuw nsw i16 %i.gp, 8
  br label %H5VM_limit_enc_size.exit134

bb.ad:                                            ; preds = %bb.ab
  %i.gr = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.fg
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !79
  %i.gt = zext i8 %i.gs to i16
  br label %H5VM_limit_enc_size.exit134

H5VM_limit_enc_size.exit134:                      ; preds = %bb.s, %bb.t, %bb.v, %bb.w, %bb.z, %bb.aa, %bb.ac, %bb.ad
  %.0.i.i129 = phi i16 [ %i.gl, %bb.aa ], [ %i.fs, %bb.t ], [ %i.gb, %bb.w ], [ %i.fo, %bb.s ], [ %i.fx, %bb.v ], [ %i.gh, %bb.z ], [ %i.gq, %bb.ac ], [ %i.gt, %bb.ad ]
  %i.gu = lshr i16 %.0.i.i129, 3
  %i.gv = trunc nuw nsw i16 %i.gu to i8
  %i.gw = add nuw nsw i8 %i.gv, 1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store i8 %i.gw, ptr %i.gx, align 8, !tbaa !72
  %i.gy = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !73
  %i.hb = mul i64 %i.ha, %i.ff
  %i.hc = tail call ptr @H5FL_fac_init(i64 noundef %i.hb) #5 ; 2 uses
  %i.hd = load ptr, ptr %i.ah, align 8, !tbaa !34
  %i.he = getelementptr inbounds nuw [48 x i8], ptr %i.hd, i64 %indvars.iv141 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store ptr %i.hc, ptr %i.hf, align 8, !tbaa !38
  %i.hg = icmp eq ptr %i.hc, null
  br i1 %i.hg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %H5VM_limit_enc_size.exit134
  %i.hh = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.hi = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !33
  %i.hj = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 185, i64 noundef %i.hh, i64 noundef %i.hi, ptr noundef nonnull @.str.3) #5 ; 0 uses
  br label %.critedge

bb.af:                                            ; preds = %H5VM_limit_enc_size.exit134
  %i.hk = load i32, ptr %i.he, align 8, !tbaa !70
  %i.hl = add i32 %i.hk, 1
  %i.hm = zext i32 %i.hl to i64
  %i.hn = mul nuw nsw i64 %i.hm, 24
  %i.ho = tail call ptr @H5FL_fac_init(i64 noundef %i.hn) #5 ; 2 uses
  %i.hp = load ptr, ptr %i.ah, align 8, !tbaa !34 ; 2 uses
  %i.hq = getelementptr inbounds nuw [48 x i8], ptr %i.hp, i64 %indvars.iv141
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 40
  store ptr %i.ho, ptr %i.hr, align 8, !tbaa !39
  %i.hs = icmp eq ptr %i.ho, null
  br i1 %i.hs, label %bb.ag, label %bb.o

bb.ag:                                            ; preds = %bb.af
  %i.ht = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.hu = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !33
  %i.hv = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 189, i64 noundef %i.ht, i64 noundef %i.hu, ptr noundef nonnull @.str.4) #5 ; 0 uses
  br label %.critedge

.loopexit:                                        ; preds = %bb.o, %H5VM_limit_enc_size.exit
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !43
  %i.hy = tail call i32 @H5F_get_intent(ptr noundef %i.hx) #5
  %i.hz = and i32 %i.hy, 32
  %.not124 = icmp eq i32 %i.hz, 0
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !31  ; 2 uses
  br i1 %.not124, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  %i.ia = load i32, ptr %.pre, align 8, !tbaa !81 ; 2 uses
  %i.ib = icmp eq i32 %i.ia, 10
  br i1 %i.ib, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ic = icmp eq i32 %i.ia, 11
  %i.id = zext i1 %i.ic to i8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %.loopexit
  %i.ie = phi i8 [ 0, %.loopexit ], [ 1, %bb.ah ], [ %i.id, %bb.ai ]
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i8 %i.ie, ptr %i.if, align 8, !tbaa !44
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 0, ptr %i.ig, align 8, !tbaa !82
  %i.ih = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !83 ; 2 uses
  %.not125 = icmp eq ptr %i.ii, null
  br i1 %.not125, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ij = tail call ptr %i.ii(ptr noundef %2) #5  ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !45
  %i.il = icmp eq ptr %i.ij, null
  br i1 %i.il, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.im = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.in = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !33
  %i.io = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 204, i64 noundef %i.im, i64 noundef %i.in, ptr noundef nonnull @.str.5) #5 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.al, %bb.ag, %bb.ae, %bb.i, %bb.g, %bb.e, %bb.c
  %i.ip = tail call i32 @H5B2__hdr_free(ptr noundef nonnull %0)
  %i.iq = icmp slt i32 %i.ip, 0
  br i1 %i.iq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.critedge
  %i.ir = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.is = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !33
  %i.it = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_init, i32 noundef 209, i64 noundef %i.ir, i64 noundef %i.is, ptr noundef nonnull @.str.6) #5 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.aj, %bb.am, %.critedge, %bb.a
  %.1 = phi i32 [ -1, %bb.am ], [ -1, %.critedge ], [ 0, %bb.a ], [ 0, %bb.aj ], [ 0, %bb.ak ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noalias ptr @H5FL_blk_malloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noalias ptr @H5FL_seq_malloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @H5FL_fac_init(i64 noundef) local_unnamed_addr #2

declare i32 @H5F_get_intent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__hdr_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !85
  %i.m = tail call i32 %i.l(ptr noundef nonnull %i.h) #5
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.p = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !33
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_free, i32 noundef 581, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.23) #5 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %i.g, align 8, !tbaa !45
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32   ; 2 uses
  %.not51 = icmp eq ptr %i.s, null
  br i1 %.not51, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call ptr @H5FL_blk_free(ptr noundef nonnull @H5_node_page_blk_free_list, ptr noundef nonnull %i.s) #5
  store ptr %i.t, ptr %i.r, align 8, !tbaa !32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40   ; 2 uses
  %.not52 = icmp eq ptr %i.v, null
  br i1 %.not52, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = tail call ptr @H5FL_seq_free(ptr noundef nonnull @H5_size_t_seq_free_list, ptr noundef nonnull %i.v) #5
  store ptr %i.w, ptr %i.u, align 8, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34
  %.not53 = icmp eq ptr %i.y, null
  br i1 %.not53, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 284
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.q
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.q ] ; 4 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !34  ; 2 uses
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 2 uses
  %.not55 = icmp eq ptr %i.ad, null
  br i1 %.not55, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call i32 @H5FL_fac_term(ptr noundef nonnull %i.ad) #5
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !34
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.ah = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !33
  %i.ai = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_free, i32 noundef 602, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull @.str.24) #5 ; 0 uses
  br label %.thread

bb.n:                                             ; preds = %._crit_edge, %bb.k
  %i.aj = phi ptr [ %.pre, %._crit_edge ], [ %i.aa, %bb.k ]
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !39 ; 2 uses
  %.not56 = icmp eq ptr %i.am, null
  br i1 %.not56, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = tail call i32 @H5FL_fac_term(ptr noundef nonnull %i.am) #5
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ap = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.aq = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !33
  %i.ar = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_free, i32 noundef 606, i64 noundef %i.ap, i64 noundef %i.aq, ptr noundef nonnull @.str.25) #5 ; 0 uses
  br label %.thread

bb.q:                                             ; preds = %bb.n, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.as = load i16, ptr %i.z, align 4, !tbaa !30
  %i.at = zext i16 %i.as to i64
  %.not54.not = icmp samesign ult i64 %indvars.iv, %i.at
  br i1 %.not54.not, label %bb.k, label %bb.r, !llvm.loop !84

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.av = tail call ptr @H5FL_seq_free(ptr noundef nonnull @H5_H5B2_node_info_t_seq_free_list, ptr noundef %i.au) #5
  store ptr %i.av, ptr %i.x, align 8, !tbaa !34
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !86 ; 2 uses
  %.not57 = icmp eq ptr %i.ax, null
  br i1 %.not57, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = tail call ptr @H5MM_xfree(ptr noundef nonnull %i.ax) #5
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !86
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !87 ; 2 uses
  %.not58 = icmp eq ptr %i.ba, null
  br i1 %.not58, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = tail call ptr @H5MM_xfree(ptr noundef nonnull %i.ba) #5
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !87
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !46 ; 2 uses
  %.not59 = icmp eq ptr %i.bd, null
  br i1 %.not59, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = tail call i32 @H5AC_proxy_entry_dest(ptr noundef nonnull %i.bd) #5
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bg = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.bh = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !33
  %i.bi = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_free, i32 noundef 622, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.26) #5 ; 0 uses
  br label %.thread

bb.z:                                             ; preds = %bb.x
  store ptr null, ptr %i.bc, align 8, !tbaa !46
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %i.bj = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5B2_hdr_t_reg_free_list, ptr noundef nonnull %0) #5 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.m, %bb.a, %bb.aa, %bb.y, %bb.d
  %.2 = phi i32 [ -1, %bb.d ], [ -1, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.a ], [ -1, %bb.m ], [ -1, %bb.p ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noalias ptr @H5B2__hdr_alloc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @H5FL_reg_calloc(ptr noundef nonnull @H5_H5B2_hdr_t_reg_free_list) #5 ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.j = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !33
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_alloc, i32 noundef 238, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.7) #5 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  store ptr %0, ptr %i.l, align 8, !tbaa !43
  %i.m = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 330
  store i8 %i.m, ptr %i.n, align 2, !tbaa !42
  %i.o = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #5 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 329
  store i8 %i.o, ptr %i.p, align 1, !tbaa !47
  %i.q = zext i8 %i.m to i64
  %i.r = zext i8 %i.o to i64
  %i.s = add nuw nsw i64 %i.q, 22
  %i.t = add nuw nsw i64 %i.s, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  store i64 %i.t, ptr %i.u, align 8, !tbaa !48
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  store i64 -1, ptr %i.v, align 8, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.c ], [ %i.g, %bb.d ], [ null, %bb.a ]
  ret ptr %.0
}

declare noalias ptr @H5FL_reg_calloc(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @H5F_sizeof_addr(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @H5F_sizeof_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i64 @H5B2__hdr_create(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.u, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @H5FL_reg_calloc(ptr noundef nonnull @H5_H5B2_hdr_t_reg_free_list) #5 ; 16 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.i = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.j = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !33
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_alloc, i32 noundef 238, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.7) #5 ; 0 uses
  %i.l = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.m = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !33
  %i.n = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_create, i32 noundef 281, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.8) #5 ; 0 uses
  br label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  store ptr %0, ptr %i.o, align 8, !tbaa !43
  %i.p = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 330
  store i8 %i.p, ptr %i.q, align 2, !tbaa !42
  %i.r = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 329
  store i8 %i.r, ptr %i.s, align 1, !tbaa !47
  %i.t = zext i8 %i.p to i64
  %i.u = zext i8 %i.r to i64
  %i.v = add nuw nsw i64 %i.t, 22
  %i.w = add nuw nsw i64 %i.v, %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 304 ; 3 uses
  store i64 %i.w, ptr %i.x, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  store i64 -1, ptr %i.y, align 8, !tbaa !49
  %i.z = tail call i32 @H5B2__hdr_init(ptr noundef nonnull %i.g, ptr noundef %1, ptr noundef %2, i16 noundef zeroext 0)
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.ac = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !33
  %i.ad = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_create, i32 noundef 285, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str.9) #5 ; 0 uses
  br label %.thread60

bb.e:                                             ; preds = %bb.c
  %i.ae = load i64, ptr %i.x, align 8, !tbaa !48
  %i.af = tail call i64 @H5MF_alloc(ptr noundef %0, i32 noundef 2, i64 noundef %i.ae) #5 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 296 ; 3 uses
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !50
  %i.ah = icmp eq i64 %i.af, -1
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.aj = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !33
  %i.ak = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_create, i32 noundef 289, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.10) #5 ; 0 uses
  br label %.thread60

bb.g:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  %i.am = load i8, ptr %i.al, align 8, !tbaa !44, !range !10, !noundef !11
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call ptr @H5AC_proxy_entry_create() #5 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !46
  %i.aq = icmp eq ptr %i.ao, null
  br i1 %i.aq, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i64, ptr %i.ag, align 8, !tbaa !50
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.as = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !33
  %i.at = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_create, i32 noundef 294, i64 noundef %i.ar, i64 noundef %i.as, ptr noundef nonnull @.str.11) #5 ; 0 uses
  br label %.thread60

bb.j:                                             ; preds = %._crit_edge, %bb.g
  %i.au = phi i64 [ %.pre, %._crit_edge ], [ %i.af, %bb.g ]
  %i.av = tail call i32 @H5AC_insert_entry(ptr noundef %0, ptr noundef nonnull @H5AC_BT2_HDR, i64 noundef %i.au, ptr noundef nonnull %i.g, i32 noundef 0) #5
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.ay = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !33
  %i.az = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_create, i32 noundef 298, i64 noundef %i.ax, i64 noundef %i.ay, ptr noundef nonnull @.str.12) #5 ; 0 uses
  br label %.thread60

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !46 ; 2 uses
  %.not = icmp eq ptr %i.bb, null
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = tail call i32 @H5AC_proxy_entry_add_child(ptr noundef nonnull %i.bb, ptr noundef %0, ptr noundef nonnull %i.g) #5
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
end_hunk_0
begin_hunk_1_@H5B2__hdr_create:bb.a
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.thread60
  %i.bw = tail call i32 @H5B2__hdr_free(ptr noundef nonnull %i.g)
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.by = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.bz = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !33
  %i.ca = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_create, i32 noundef 326, i64 noundef %i.by, i64 noundef %i.bz, ptr noundef nonnull @.str.16) #5 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %.thread, %bb.n, %bb.s, %bb.t, %bb.a
  %.3 = phi i64 [ -1, %bb.t ], [ -1, %bb.s ], [ %i.be, %bb.n ], [ -1, %bb.a ], [ -1, %.thread ]
  ret i64 %.3
}

declare i64 @H5MF_alloc(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @H5AC_proxy_entry_create() local_unnamed_addr #2

declare i32 @H5AC_insert_entry(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @H5AC_proxy_entry_add_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5AC_remove_entry(ptr noundef) local_unnamed_addr #2

declare i32 @H5MF_xfree(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__hdr_incr(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.f, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !51   ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @H5AC_pin_protected_entry(ptr noundef nonnull %0) #5
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %i.g, align 8, !tbaa !51
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.m = load i64, ptr @H5E_CANTPIN_g, align 8, !tbaa !33
  %i.n = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_incr, i32 noundef 354, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.17) #5 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %i.o = phi i64 [ %.pre, %._crit_edge ], [ %i.h, %bb.b ]
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.g, align 8, !tbaa !51
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.0 = phi i32 [ -1, %bb.d ], [ 0, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @H5AC_pin_protected_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__hdr_decr(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !51
  %i.i = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !51
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @H5AC_unpin_entry(ptr noundef nonnull %0) #5
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.n = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !33
  %i.o = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_decr, i32 noundef 389, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.18) #5 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @H5AC_unpin_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @H5B2__hdr_fuse_incr(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !52
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @H5B2__hdr_fuse_decr(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !52   ; 2 uses
  br i1 %i.f, label %bb.b, label %._crit_edge, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !52
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.i, %bb.b ], [ %i.h, %bb.a ]
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__hdr_dirty(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @H5AC_mark_entry_dirty(ptr noundef %0) #5
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.j = load i64, ptr @H5E_CANTMARKDIRTY_g, align 8, !tbaa !33
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_dirty, i32 noundef 463, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.19) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @H5AC_mark_entry_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @H5B2__hdr_protect(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.H5B2_hdr_cache_ud_t, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %4, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %i.g, align 8, !tbaa !90
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.h, align 8, !tbaa !91
  %i.i = call ptr @H5AC_protect(ptr noundef %0, ptr noundef nonnull @H5AC_BT2_HDR, i64 noundef %1, ptr noundef nonnull %4, i32 noundef %3) #5 ; 9 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.l = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !33
  %i.m = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_protect, i32 noundef 502, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.20, i64 noundef %1) #5 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 288 ; 2 uses
  store ptr %0, ptr %i.n, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 392
  %i.p = load i8, ptr %i.o, align 8, !tbaa !44, !range !10, !noundef !11
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 400 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.u = call ptr @H5AC_proxy_entry_create() #5   ; 3 uses
  store ptr %i.u, ptr %i.r, align 8, !tbaa !46
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.x = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !33
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_protect, i32 noundef 509, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.11) #5 ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.z = call i32 @H5AC_proxy_entry_add_child(ptr noundef nonnull %i.u, ptr noundef %0, ptr noundef nonnull %i.i) #5
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.ac = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !33
  %i.ad = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_protect, i32 noundef 513, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str.21) #5 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.af = call i32 @H5AC_unprotect(ptr noundef %i.ae, ptr noundef nonnull @H5AC_BT2_HDR, i64 noundef %1, ptr noundef nonnull %i.i, i32 noundef 0) #5
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.ai = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !33
  %i.aj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_protect, i32 noundef 525, i64 noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.22, i64 noundef %1) #5 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.h, %bb.k, %bb.j, %bb.a
  %.1 = phi ptr [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.c ], [ null, %bb.a ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret ptr %.1
}

declare ptr @H5AC_protect(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @H5AC_unprotect(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__hdr_unprotect(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !50
  %i.k = tail call i32 @H5AC_unprotect(ptr noundef %i.h, ptr noundef nonnull @H5AC_BT2_HDR, i64 noundef %i.j, ptr noundef %0, i32 noundef %1) #5
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.n = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !33
  %i.o = load i64, ptr %i.i, align 8, !tbaa !50
  %i.p = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_unprotect, i32 noundef 553, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.22, i64 noundef %i.o) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @H5FL_blk_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @H5FL_seq_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5FL_fac_term(ptr noundef) local_unnamed_addr #2

declare ptr @H5MM_xfree(ptr noundef) local_unnamed_addr #2

declare i32 @H5AC_proxy_entry_dest(ptr noundef) local_unnamed_addr #2

declare ptr @H5FL_reg_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__hdr_delete(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true                        ; 2 uses
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %H5B2__hdr_unprotect.exit.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !49
  %.not = icmp eq i64 %i.h, -1
  br i1 %.not, label %.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.j = load i16, ptr %i.i, align 4, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93
  %i.o = tail call i32 @H5B2__delete_node(ptr noundef nonnull %0, i16 noundef zeroext %i.j, ptr noundef nonnull %i.g, ptr noundef nonnull %0, ptr noundef %i.l, ptr noundef %i.n) #5
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.split14, label %..split_crit_edge

..split_crit_edge:                                ; preds = %bb.c
  %.pre = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10
  %.pre19 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre20 = trunc nuw i8 %.pre to i1
  %.pre21 = trunc nuw i8 %.pre19 to i1
  %.pre23 = xor i1 %.pre21, true
  br label %.split

.split14:                                         ; preds = %bb.c
  %i.q = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.r = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !33
  %i.s = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_delete, i32 noundef 671, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str.27) #5 ; 0 uses
  %i.t = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = xor i1 %i.w, true
  %i.y = select i1 %i.u, i1 true, i1 %i.x
  br i1 %i.y, label %bb.d, label %H5B2__hdr_unprotect.exit.thread, !prof !12

bb.d:                                             ; preds = %.split14
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !50
  %i.ad = tail call i32 @H5AC_unprotect(ptr noundef %i.aa, ptr noundef nonnull @H5AC_BT2_HDR, i64 noundef %i.ac, ptr noundef nonnull %0, i32 noundef 0) #5
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %H5B2__hdr_unprotect.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.af = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.ag = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !33
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !50
  %i.ai = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_unprotect, i32 noundef 553, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.22, i64 noundef %i.ah) #5 ; 0 uses
  br label %H5B2__hdr_unprotect.exit

.split:                                           ; preds = %..split_crit_edge, %bb.b
  %.pre-phi24 = phi i1 [ %.pre23, %..split_crit_edge ], [ %i.e, %bb.b ]
  %.pre-phi = phi i1 [ %.pre20, %..split_crit_edge ], [ %i.b, %bb.b ]
  %i.aj = select i1 %.pre-phi, i1 true, i1 %.pre-phi24
  br i1 %i.aj, label %bb.f, label %H5B2__hdr_unprotect.exit.thread, !prof !12

bb.f:                                             ; preds = %.split
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !50
  %i.ao = tail call i32 @H5AC_unprotect(ptr noundef %i.al, ptr noundef nonnull @H5AC_BT2_HDR, i64 noundef %i.an, ptr noundef nonnull %0, i32 noundef 259) #5
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.g, label %H5B2__hdr_unprotect.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.aq = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.ar = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !33
  %i.as = load i64, ptr %i.am, align 8, !tbaa !50
  %i.at = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_unprotect, i32 noundef 553, i64 noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull @.str.22, i64 noundef %i.as) #5 ; 0 uses
  br label %H5B2__hdr_unprotect.exit

H5B2__hdr_unprotect.exit:                         ; preds = %bb.e, %bb.g
  %i.au = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !33
  %i.av = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !33
  %i.aw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__hdr_delete, i32 noundef 679, i64 noundef %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.16) #5 ; 0 uses
  br label %H5B2__hdr_unprotect.exit.thread

H5B2__hdr_unprotect.exit.thread:                  ; preds = %.split, %bb.f, %bb.d, %.split14, %H5B2__hdr_unprotect.exit, %bb.a
  %.1 = phi i32 [ -1, %H5B2__hdr_unprotect.exit ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %.split ], [ -1, %bb.d ], [ -1, %.split14 ]
  ret i32 %.1
}

declare i32 @H5B2__delete_node(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_Bool", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTS5H5C_t", !13, i64 0}
!15 = !{!"long", !4, i64 0}
!16 = !{!"p1 _ZTS11H5C_class_t", !13, i64 0}
!17 = !{!"any p2 pointer", !13, i64 0}
!18 = !{!"p2 _ZTS17H5C_cache_entry_t", !17, i64 0}
!19 = !{!"p1 _ZTS17H5C_cache_entry_t", !13, i64 0}
!20 = !{!"p1 long", !13, i64 0}
!21 = !{!"p1 _ZTS14H5C_tag_info_t", !13, i64 0}
!22 = !{!"H5C_cache_entry_t", !14, i64 0, !15, i64 8, !15, i64 16, !13, i64 24, !8, i64 32, !16, i64 40, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !5, i64 52, !8, i64 56, !8, i64 57, !8, i64 58, !8, i64 59, !8, i64 60, !5, i64 64, !18, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !8, i64 100, !8, i64 101, !19, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !19, i64 144, !8, i64 152, !5, i64 156, !8, i64 160, !15, i64 168, !20, i64 176, !15, i64 184, !15, i64 192, !5, i64 200, !8, i64 204, !5, i64 208, !5, i64 212, !8, i64 216, !19, i64 224, !19, i64 232, !21, i64 240}
!23 = !{!"short", !4, i64 0}
!24 = !{!"", !15, i64 0, !23, i64 8, !15, i64 16}
!25 = !{!"p1 _ZTS5H5F_t", !13, i64 0}
!26 = !{!"p1 omnipotent char", !13, i64 0}
!27 = !{!"p1 _ZTS18H5AC_proxy_entry_t", !13, i64 0}
!28 = !{!"p1 _ZTS12H5B2_class_t", !13, i64 0}
!29 = !{!"H5B2_hdr_t", !22, i64 0, !24, i64 248, !4, i64 272, !4, i64 273, !5, i64 276, !5, i64 280, !23, i64 284, !4, i64 286, !25, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !8, i64 328, !4, i64 329, !4, i64 330, !13, i64 336, !13, i64 344, !26, i64 352, !20, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !8, i64 392, !27, i64 400, !13, i64 408, !15, i64 416, !28, i64 424, !13, i64 432}
!30 = !{!29, !23, i64 284}
!31 = !{!29, !28, i64 424}
!32 = !{!29, !26, i64 352}
!33 = !{!15, !15, i64 0}
!34 = !{!29, !13, i64 368}
!35 = !{!"p1 _ZTS15H5FL_fac_head_t", !13, i64 0}
!36 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !15, i64 16, !4, i64 24, !35, i64 32, !35, i64 40}
!37 = !{!"H5B2_class_t", !5, i64 0, !26, i64 8, !15, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72}
!38 = !{!36, !35, i64 32}
!39 = !{!36, !35, i64 40}
!40 = !{!29, !20, i64 360}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!29, !4, i64 330}
!43 = !{!29, !25, i64 288}
!44 = !{!29, !8, i64 392}
!45 = !{!29, !13, i64 432}
!46 = !{!29, !27, i64 400}
!47 = !{!29, !4, i64 329}
!48 = !{!29, !15, i64 304}
!49 = !{!29, !15, i64 248}
!50 = !{!29, !15, i64 296}
!51 = !{!29, !15, i64 312}
!52 = !{!29, !15, i64 320}
!53 = distinct !{!53, i1 false, !"LVerDomain"}
!54 = distinct !{!54, !53}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !41, !76, !77}
!57 = distinct !{!57, !78}
!58 = distinct !{!58, !41, !76}
!59 = distinct !{!59, !41}
!60 = !{!"H5B2_create_t", !28, i64 0, !5, i64 8, !5, i64 12, !4, i64 16, !4, i64 17}
!61 = !{!60, !4, i64 16}
!62 = !{!29, !4, i64 272}
!63 = !{!60, !4, i64 17}
!64 = !{!29, !4, i64 273}
!65 = !{!5, !5, i64 0}
!66 = !{!60, !5, i64 8}
!67 = !{!60, !28, i64 0}
!68 = !{!29, !5, i64 276}
!69 = !{!29, !5, i64 280}
!70 = !{!36, !5, i64 0}
!71 = !{!36, !15, i64 16}
!72 = !{!36, !4, i64 24}
!73 = !{!37, !15, i64 16}
!74 = !{!54}
!75 = !{!55}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = !{!4, !4, i64 0}
!80 = !{!29, !4, i64 286}
!81 = !{!37, !5, i64 0}
!82 = !{!29, !15, i64 416}
!83 = !{!37, !13, i64 24}
!84 = distinct !{!84, !41}
!85 = !{!37, !13, i64 32}
!86 = !{!29, !13, i64 376}
!87 = !{!29, !13, i64 384}
!88 = !{!"H5B2_hdr_cache_ud_t", !25, i64 0, !15, i64 8, !13, i64 16}
!89 = !{!88, !25, i64 0}
!90 = !{!88, !15, i64 8}
!91 = !{!88, !13, i64 16}
!92 = !{!29, !13, i64 336}
!93 = !{!29, !13, i64 344}
end_hunk_1
