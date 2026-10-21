Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5T?download=true
inline.NumInlined: 12
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@H5T_close:bb.a
  %i.cb = call i32 @H5T_close_real(ptr noundef nonnull %0)
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cd = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.ce = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !16
  %i.cf = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T_close, i32 noundef 4889, i64 noundef %i.cd, i64 noundef %i.ce, ptr noundef nonnull @.str.415) #17 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.d, %bb.y, %bb.z, %bb.x, %bb.v, %bb.h, %bb.c
  %.2 = phi i32 [ -1, %bb.c ], [ -1, %bb.h ], [ -1, %bb.z ], [ 0, %bb.y ], [ -1, %.thread ], [ -1, %bb.v ], [ -1, %bb.x ], [ 0, %bb.d ]
  ret i32 %.2
}

declare i32 @H5FO_top_decr(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5AC_cork(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5FO_delete(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5O_close(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5O_loc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @H5T_get_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @H5T__path_find_real(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.H5_user_cb_state_t, align 8 ; 5 uses
  %5 = alloca %struct.H5_user_cb_state_t, align 8 ; 5 uses
  %6 = alloca %struct.H5T_conv_ctx_t, align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  %i.a = load i8, ptr @H5T_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread290, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @H5CX_pushed() #17
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = call i32 @H5CX_get_dt_conv_cb(ptr noundef nonnull %6) #17
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.k = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !16
  %i.l = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_real, i32 noundef 5783, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.424) #17 ; 0 uses
  br label %.thread290

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.m = load i32, ptr @H5T_g.0, align 8, !tbaa !54 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %H5T__init_path_table.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = load i8, ptr @H5T_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = xor i1 %i.r, true
  %i.t = select i1 %i.p, i1 true, i1 %i.s
  br i1 %i.t, label %bb.g, label %H5T__init_path_table.exit.thread, !prof !14

bb.g:                                             ; preds = %bb.f
  %i.u = call noalias dereferenceable_or_null(1024) ptr @calloc(i64 noundef 1, i64 noundef 1024) #20 ; 2 uses
  store ptr %i.u, ptr @H5T_g.2, align 8, !tbaa !53
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.x = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !16
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__init_path_table, i32 noundef 5930, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.482) #17 ; 0 uses
  br label %.critedge.i

bb.i:                                             ; preds = %bb.g
  store i64 128, ptr @H5T_g.1, align 8, !tbaa !55
  %i.z = call noalias ptr @H5FL_reg_calloc(ptr noundef nonnull @H5_H5T_path_t_reg_free_list) #17 ; 6 uses
  %i.aa = load ptr, ptr @H5T_g.2, align 8, !tbaa !53
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !60
  %i.ab = icmp eq ptr %i.z, null
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.ad = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !16
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__init_path_table, i32 noundef 5938, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.483) #17 ; 0 uses
  br label %.critedge.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.z, ptr noundef nonnull align 1 dereferenceable(6) @.str.321, i64 6, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i8 0, ptr %i.af, align 8, !tbaa !64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store ptr @H5T__conv_noop, ptr %i.ag, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 72 ; 2 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !63
  %i.ai = call i32 @H5T__conv_noop(ptr noundef null, ptr noundef null, ptr noundef nonnull %i.ah, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef null, ptr noundef null) #17
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ak = call i32 @H5E_clear_stack() #17
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.an = load i64, ptr @H5E_CANTRESET_g, align 8, !tbaa !16
  %i.ao = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__init_path_table, i32 noundef 5953, i64 noundef %i.am, i64 noundef %i.an, ptr noundef nonnull @.str.450) #17 ; 0 uses
  br label %.critedge.i

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.ap = load ptr, ptr @H5T_g.2, align 8, !tbaa !53
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !60
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 65
  store i8 1, ptr %i.ar, align 1, !tbaa !84
  store i32 1, ptr @H5T_g.0, align 8, !tbaa !54
  br label %H5T__init_path_table.exit.thread

.critedge.i:                                      ; preds = %bb.m, %bb.j, %bb.h
  %i.as = load ptr, ptr @H5T_g.2, align 8, !tbaa !53 ; 2 uses
  %.not7.i = icmp eq ptr %i.as, null
  br i1 %.not7.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.critedge.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !60
  %i.au = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5T_path_t_reg_free_list, ptr noundef %i.at) #17 ; 0 uses
  %.pre.i = load ptr, ptr @H5T_g.2, align 8, !tbaa !53
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.critedge.i
  %i.av = phi ptr [ %.pre.i, %bb.o ], [ null, %.critedge.i ]
  call void @free(ptr noundef %i.av) #17
  %i.aw = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.ax = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.ay = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_real, i32 noundef 5787, i64 noundef %i.aw, i64 noundef %i.ax, ptr noundef nonnull @.str.475) #17 ; 0 uses
  br label %.thread290

H5T__init_path_table.exit.thread:                 ; preds = %bb.f, %bb.n, %bb.e
  %.pre491497 = phi i32 [ 0, %bb.f ], [ 1, %bb.n ], [ %i.m, %bb.e ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !35, !range !12, !noundef !13
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.q, label %.thread

bb.q:                                             ; preds = %H5T__init_path_table.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !35, !range !12, !noundef !13
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bj = call i32 @H5T_cmp(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext true)
  %i.bk = icmp eq i32 %i.bj, 0
  %.pre491.pre = load i32, ptr @H5T_g.0, align 8, !tbaa !54 ; 3 uses
  br i1 %i.bk, label %.thread173, label %.thread

.thread:                                          ; preds = %H5T__init_path_table.exit.thread, %bb.q, %bb.r
  %.pre491 = phi i32 [ %.pre491497, %H5T__init_path_table.exit.thread ], [ %.pre491497, %bb.q ], [ %.pre491.pre, %bb.r ] ; 4 uses
  %i.bl = load i8, ptr @H5T_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = xor i1 %i.bo, true
  %i.bq = select i1 %i.bm, i1 true, i1 %i.bp
  br i1 %i.bq, label %bb.s, label %.thread173.thread, !prof !14

bb.s:                                             ; preds = %.thread
  %i.br = icmp sgt i32 %.pre491, 1
  br i1 %i.br, label %.lr.ph, label %.thread173.thread

.lr.ph:                                           ; preds = %bb.s, %bb.u
  %.022.i409 = phi i32 [ %.123.i, %bb.u ], [ %.pre491, %bb.s ] ; 2 uses
  %.024.i408 = phi i32 [ %.125.i, %bb.u ], [ 1, %bb.s ] ; 2 uses
  %i.bs = add nuw nsw i32 %.022.i409, %.024.i408
  %i.bt = lshr i32 %i.bs, 1                       ; 11 uses
  %i.bu = load ptr, ptr @H5T_g.2, align 8, !tbaa !53
  %i.bv = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !60
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !65
  %i.ca = call i32 @H5T_cmp(ptr noundef %0, ptr noundef %i.bz, i1 noundef zeroext false), !inline_history !0 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph
  %i.cc = load ptr, ptr @H5T_g.2, align 8, !tbaa !53
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.bv
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !60
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !66
  %i.ch = call i32 @H5T_cmp(ptr noundef %1, ptr noundef %i.cg, i1 noundef zeroext false), !inline_history !0
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph
  %.120.i = phi i32 [ %i.ch, %bb.t ], [ %i.ca, %.lr.ph ] ; 4 uses
  %i.ci = icmp slt i32 %.120.i, 0
  %.not28.i.not = icmp eq i32 %.120.i, 0          ; 2 uses
  %i.cj = add nuw nsw i32 %i.bt, 1
  %i.ck = icmp slt i32 %.120.i, 1
  %.125.i = select i1 %i.ck, i32 %.024.i408, i32 %i.cj ; 2 uses
  %.123.i = select i1 %i.ci, i32 %i.bt, i32 %.022.i409 ; 2 uses
  %i.cl = icmp sge i32 %.125.i, %.123.i
  %.not527 = select i1 %.not28.i.not, i1 true, i1 %i.cl
  br i1 %.not527, label %H5T__path_table_search.exit, label %.lr.ph, !llvm.loop !1

H5T__path_table_search.exit:                      ; preds = %bb.u
  %.pre492.pre = load i32, ptr @H5T_g.0, align 8, !tbaa !54 ; 7 uses
  br i1 %.not28.i.not, label %bb.v, label %.thread173.thread

bb.v:                                             ; preds = %H5T__path_table_search.exit
  %i.cm = load ptr, ptr @H5T_g.2, align 8, !tbaa !53
  %i.cn = zext nneg i32 %i.bt to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !60 ; 10 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.thread173.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = load i8, ptr %3, align 8, !tbaa !46, !range !12, !noundef !13
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !31
  %.not640 = icmp eq ptr %i.cu, null              ; 2 uses
  br i1 %i.cs, label %.thread535, label %bb.x

.thread535:                                       ; preds = %bb.w
  br i1 %.not640, label %.thread194, label %.thread173.thread

.thread173:                                       ; preds = %bb.r
  %i.cv = load ptr, ptr @H5T_g.2, align 8, !tbaa !53
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !60 ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %.thread173.thread, label %.thread194

bb.x:                                             ; preds = %bb.w
  br i1 %.not640, label %.thread194, label %.split

.split:                                           ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !80, !range !12, !noundef !13
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %.thread194, label %.thread173.thread

.thread173.thread:                                ; preds = %bb.s, %.thread, %H5T__path_table_search.exit, %bb.v, %.thread535, %.thread173, %.split
  %.0133147163180189 = phi i32 [ 0, %.split ], [ 0, %bb.v ], [ 0, %.thread173 ], [ 0, %.thread535 ], [ %.120.i, %H5T__path_table_search.exit ], [ 0, %.thread ], [ -1, %bb.s ] ; 2 uses
  %.0130148161181187 = phi i32 [ %i.bt, %.split ], [ %i.bt, %bb.v ], [ 0, %.thread173 ], [ %i.bt, %.thread535 ], [ %i.bt, %H5T__path_table_search.exit ], [ 0, %.thread ], [ 1, %bb.s ] ; 2 uses
  %.086149159182185 = phi ptr [ %i.cp, %.split ], [ null, %bb.v ], [ null, %.thread173 ], [ %i.cp, %.thread535 ], [ null, %H5T__path_table_search.exit ], [ null, %.thread ], [ null, %bb.s ] ; 2 uses
  %i.db = phi i32 [ %.pre492.pre, %.split ], [ %.pre492.pre, %bb.v ], [ %.pre491.pre, %.thread173 ], [ %.pre492.pre, %.thread535 ], [ %.pre492.pre, %H5T__path_table_search.exit ], [ %.pre491, %.thread ], [ %.pre491, %bb.s ] ; 2 uses
  %i.dc = call noalias ptr @H5FL_reg_calloc(ptr noundef nonnull @H5_H5T_path_t_reg_free_list) #17 ; 20 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread173.thread
  %i.de = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !16
  %i.df = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !16
  %i.dg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_real, i32 noundef 5823, i64 noundef %i.de, i64 noundef %i.df, ptr noundef nonnull @.str.476) #17 ; 0 uses
  br label %.thread290

bb.z:                                             ; preds = %.thread173.thread
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dh = load i8, ptr %2, align 1, !tbaa !31
  %.not96 = icmp eq i8 %i.dh, 0
  br i1 %.not96, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.di = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.dc, ptr noundef nonnull dereferenceable(1) %2, i64 noundef 31) #17 ; 0 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 31
  store i8 0, ptr %i.dj, align 1, !tbaa !31
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.dc, ptr noundef nonnull align 1 dereferenceable(7) @.str.477, i64 7, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dk = call ptr @H5T_copy(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 32 ; 4 uses
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !65
  %i.dm = icmp eq ptr %i.dk, null
  br i1 %i.dm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dn = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.do = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.dp = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_real, i32 noundef 5831, i64 noundef %i.dn, i64 noundef %i.do, ptr noundef nonnull @.str.478) #17 ; 0 uses
  br label %bb.cv

bb.af:                                            ; preds = %bb.ad
  %i.dq = call ptr @H5T_copy(ptr noundef %1, i32 noundef 1) ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dc, i64 40 ; 4 uses
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !66
  %i.ds = icmp eq ptr %i.dq, null
  br i1 %i.ds, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dt = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.du = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.dv = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_real, i32 noundef 5833, i64 noundef %i.dt, i64 noundef %i.du, ptr noundef nonnull @.str.478) #17 ; 0 uses
  br label %bb.cv

bb.ah:                                            ; preds = %bb.af
  %i.dw = load i8, ptr @H5T_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.dz = trunc nuw i8 %i.dy to i1
  %i.ea = xor i1 %i.dz, true
  %i.eb = select i1 %i.dx, i1 true, i1 %i.ea
  br i1 %i.eb, label %bb.ai, label %.thread194, !prof !14

bb.ai:                                            ; preds = %bb.ah
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !31 ; 2 uses
  %.not.i105 = icmp eq ptr %i.ed, null
  br i1 %.not.i105, label %bb.ba, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dc, i64 72 ; 3 uses
  store i32 0, ptr %i.ee, align 8, !tbaa !63
  %i.ef = load i8, ptr %3, align 8, !tbaa !46, !range !12, !noundef !13
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = load ptr, ptr %i.dl, align 8, !tbaa !65 ; 3 uses
  br i1 %i.eg, label %bb.ak, label %.thread208

bb.ak:                                            ; preds = %bb.aj
  %.not170.i = icmp eq ptr %i.eh, null
  br i1 %.not170.i, label %.thread546, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ei = call ptr @H5T_copy(ptr noundef nonnull %i.eh, i32 noundef 1), !inline_history !145 ; 3 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %H5T__path_find_init_new_path.exit.thread338, label %bb.am

H5T__path_find_init_new_path.exit.thread338:      ; preds = %bb.al
  %i.ek = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.el = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !16
  %i.em = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_init_new_path, i32 noundef 6010, i64 noundef %i.ek, i64 noundef %i.el, ptr noundef nonnull @.str.484) #17, !inline_history !145 ; 0 uses
  br label %H5T__path_find_init_new_path.exit.thread

bb.am:                                            ; preds = %bb.al
  %.pre493 = load ptr, ptr %i.dr, align 8, !tbaa !66 ; 2 uses
  %.not171.i = icmp eq ptr %.pre493, null
  br i1 %.not171.i, label %.thread551, label %.thread546

.thread546:                                       ; preds = %bb.ak, %bb.am
  %.0141.i549 = phi ptr [ %i.ei, %bb.am ], [ null, %bb.ak ] ; 3 uses
  %i.en = phi ptr [ %.pre493, %bb.am ], [ %i.dq, %bb.ak ]
  %i.eo = call ptr @H5T_copy(ptr noundef nonnull %i.en, i32 noundef 1), !inline_history !145 ; 3 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.thread546
  %i.eq = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.er = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !16
  %i.es = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_init_new_path, i32 noundef 6012, i64 noundef %i.eq, i64 noundef %i.er, ptr noundef nonnull @.str.485) #17, !inline_history !145 ; 0 uses
  br label %.critedge.i106.thread

bb.ao:                                            ; preds = %.thread546
  %.not172.i = icmp eq ptr %.0141.i549, null
  br i1 %.not172.i, label %.thread559, label %.thread551

.thread551:                                       ; preds = %bb.am, %bb.ao
  %.0131.i557 = phi ptr [ %i.eo, %bb.ao ], [ null, %bb.am ] ; 3 uses
  %.0141.i550555 = phi ptr [ %.0141.i549, %bb.ao ], [ %i.ei, %bb.am ] ; 4 uses
  %i.et = call i64 @H5I_register(i32 noundef 3, ptr noundef nonnull %.0141.i550555, i1 noundef zeroext false) #17, !inline_history !145 ; 3 uses
  %i.eu = icmp slt i64 %i.et, 0
  br i1 %i.eu, label %.critedge.i106.thread.thread318, label %bb.ap

.critedge.i106.thread.thread318:                  ; preds = %.thread551
  %i.ev = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.ew = load i64, ptr @H5E_CANTREGISTER_g, align 8, !tbaa !16
  %i.ex = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_init_new_path, i32 noundef 6016, i64 noundef %i.ev, i64 noundef %i.ew, ptr noundef nonnull @.str.425) #17, !inline_history !145 ; 0 uses
  br label %bb.bz

bb.ap:                                            ; preds = %.thread551
  %.not173.i = icmp eq ptr %.0131.i557, null
  br i1 %.not173.i, label %bb.ar, label %.thread559

.thread559:                                       ; preds = %bb.ao, %bb.ap
  %.0121.i568 = phi i64 [ %i.et, %bb.ap ], [ -1, %bb.ao ] ; 2 uses
  %.0141.i550556566 = phi ptr [ %.0141.i550555, %bb.ap ], [ null, %bb.ao ] ; 2 uses
  %.0131.i558564 = phi ptr [ %.0131.i557, %bb.ap ], [ %i.eo, %bb.ao ] ; 3 uses
  %i.ey = call i64 @H5I_register(i32 noundef 3, ptr noundef nonnull %.0131.i558564, i1 noundef zeroext false) #17, !inline_history !145 ; 3 uses
  %i.ez = icmp slt i64 %i.ey, 0
  br i1 %i.ez, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.thread559
  %i.fa = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.fb = load i64, ptr @H5E_CANTREGISTER_g, align 8, !tbaa !16
  %i.fc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_init_new_path, i32 noundef 6019, i64 noundef %i.fa, i64 noundef %i.fb, ptr noundef nonnull @.str.426) #17, !inline_history !145 ; 0 uses
  br label %.critedge.i106

bb.ar:                                            ; preds = %.thread559, %bb.ap
  %.0121.i569 = phi i64 [ %.0121.i568, %.thread559 ], [ %i.et, %bb.ap ] ; 6 uses
  %.0141.i550556567 = phi ptr [ %.0141.i550556566, %.thread559 ], [ %.0141.i550555, %bb.ap ] ; 3 uses
  %.0131.i558565 = phi ptr [ %.0131.i558564, %.thread559 ], [ null, %bb.ap ] ; 5 uses
  %.0111.i = phi i64 [ %i.ey, %.thread559 ], [ -1, %bb.ap ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.fd = call i32 @H5_user_cb_prepare(ptr noundef nonnull %4) #17, !inline_history !145
  %i.fe = icmp slt i32 %i.fd, 0
  br i1 %i.fe, label %.thread204, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ff = load ptr, ptr %i.ec, align 8, !tbaa !31
  %i.fg = call i64 @H5CX_get_dxpl() #17, !inline_history !145
  %i.fh = call i32 %i.ff(i64 noundef %.0121.i569, i64 noundef %.0111.i, ptr noundef nonnull %i.ee, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef null, ptr noundef null, i64 noundef %i.fg) #17, !inline_history !145
  %i.fi = call i32 @H5_user_cb_restore(ptr noundef nonnull %4) #17, !inline_history !145
  %i.fj = icmp slt i32 %i.fi, 0
  br i1 %i.fj, label %.thread204, label %bb.at

.thread204:                                       ; preds = %bb.as, %bb.ar
  %H5E_CANTSET_g.sink = phi ptr [ @H5E_CANTSET_g, %bb.ar ], [ @H5E_CANTRESTORE_g, %bb.as ]
  %.sink = phi i32 [ 6022, %bb.ar ], [ 6027, %bb.as ]
  %i.fk = load i64, ptr @H5E_LIB_g, align 8, !tbaa !16
  %i.fl = load i64, ptr %H5E_CANTSET_g.sink, align 8, !tbaa !16
  %i.fm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_init_new_path, i32 noundef %.sink, i64 noundef %i.fk, i64 noundef %i.fl, ptr noundef nonnull @.str.429) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.critedge.i106

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.fn = icmp slt i32 %i.fh, 0
  br i1 %i.fn, label %bb.au, label %bb.av

.thread208:                                       ; preds = %bb.aj
  %i.fo = call i32 %i.ed(ptr noundef %i.eh, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.ee, ptr noundef nonnull %6, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef null, ptr noundef null) #17, !inline_history !145
  %i.fp = icmp slt i32 %i.fo, 0
  br i1 %i.fp, label %bb.au, label %.thread236

bb.au:                                            ; preds = %.thread208, %bb.at
  %.1112.i222 = phi i64 [ -1, %.thread208 ], [ %.0111.i, %bb.at ]
  %.1122.i220 = phi i64 [ -1, %.thread208 ], [ %.0121.i569, %bb.at ]
  %.1132.i218 = phi ptr [ null, %.thread208 ], [ %.0131.i558565, %bb.at ]
  %.1142.i216 = phi ptr [ null, %.thread208 ], [ %.0141.i550556567, %bb.at ]
  %i.fq = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.fr = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.fs = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_init_new_path, i32 noundef 6033, i64 noundef %i.fq, i64 noundef %i.fr, ptr noundef nonnull @.str.486) #17, !inline_history !145 ; 0 uses
  br label %.critedge.i106

bb.av:                                            ; preds = %bb.at
  %i.ft = icmp sgt i64 %.0121.i569, -1
  br i1 %i.ft, label %bb.aw, label %bb.ax

end_hunk_0
begin_hunk_1_@H5T__path_find_real:bb.a
  %i.ic = call i32 @H5_user_cb_prepare(ptr noundef nonnull %5) #17, !inline_history !145
  %i.id = icmp slt i32 %i.ic, 0
  br i1 %i.id, label %.thread246, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ie = load ptr, ptr @H5T_g.5, align 8, !tbaa !56
  %i.if = getelementptr inbounds nuw [56 x i8], ptr %i.ie, i64 %indvars.iv.next
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 48
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !31
  %i.ii = call i64 @H5CX_get_dxpl() #17, !inline_history !145
  %i.ij = call i32 %i.ih(i64 noundef %i.hs, i64 noundef %i.hx, ptr noundef nonnull %i.gm, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef null, ptr noundef null, i64 noundef %i.ii) #17, !inline_history !145
  %i.ik = call i32 @H5_user_cb_restore(ptr noundef nonnull %5) #17, !inline_history !145
  %i.il = icmp slt i32 %i.ik, 0
  br i1 %i.il, label %.thread246, label %bb.bm

.thread246:                                       ; preds = %bb.bl, %bb.bk
  %H5E_CANTSET_g.sink639 = phi ptr [ @H5E_CANTSET_g, %bb.bk ], [ @H5E_CANTRESTORE_g, %bb.bl ]
  %.sink636 = phi i32 [ 6082, %bb.bk ], [ 6087, %bb.bl ]
  %i.im = load i64, ptr @H5E_LIB_g, align 8, !tbaa !16
  %i.in = load i64, ptr %H5E_CANTSET_g.sink639, align 8, !tbaa !16
  %i.io = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_init_new_path, i32 noundef %.sink636, i64 noundef %i.im, i64 noundef %i.in, ptr noundef nonnull @.str.429) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.critedge.i106.thread297

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.bo

bb.bn:                                            ; preds = %bb.be
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gv, i64 48
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !31
  %i.ir = load ptr, ptr %i.dl, align 8, !tbaa !65
  %i.is = load ptr, ptr %i.dr, align 8, !tbaa !66
  %i.it = call i32 %i.iq(ptr noundef %i.ir, ptr noundef %i.is, ptr noundef nonnull %i.gm, ptr noundef nonnull %6, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef null, ptr noundef null) #17, !inline_history !145
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %.5146.i = phi ptr [ %i.hh, %bb.bm ], [ %.4145.i414, %bb.bn ] ; 2 uses
  %.5136.i = phi ptr [ %i.hn, %bb.bm ], [ %.4135.i415, %bb.bn ] ; 4 uses
  %.5126.i = phi i64 [ %i.hs, %bb.bm ], [ -1, %bb.bn ] ; 4 uses
  %.5116.i = phi i64 [ %i.hx, %bb.bm ], [ -1, %bb.bn ] ; 5 uses
  %.5109.i = phi i32 [ %i.ij, %bb.bm ], [ %i.it, %bb.bn ]
  %i.iu = icmp slt i32 %.5109.i, 0
  br i1 %i.iu, label %bb.bp, label %.critedge180.i

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, i8 0, i64 24, i1 false)
  %i.iv = call i32 @H5E_clear_stack() #17, !inline_history !145
  %i.iw = icmp slt i32 %i.iv, 0
  br i1 %i.iw, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ix = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.iy = load i64, ptr @H5E_CANTRESET_g, align 8, !tbaa !16
  %i.iz = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_init_new_path, i32 noundef 6097, i64 noundef %i.ix, i64 noundef %i.iy, ptr noundef nonnull @.str.450) #17, !inline_history !145 ; 0 uses
  br label %.critedge.i106

.critedge180.i:                                   ; preds = %bb.bo
  %i.ja = load ptr, ptr @H5T_g.5, align 8, !tbaa !56
  %i.jb = getelementptr inbounds nuw [56 x i8], ptr %i.ja, i64 %indvars.iv.next ; 2 uses
  %i.jc = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.dc, ptr noundef nonnull dereferenceable(1) %i.jb, i64 noundef 32) #17, !inline_history !145 ; 0 uses
  store i8 0, ptr %i.gn, align 1, !tbaa !31
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, ptr noundef nonnull align 8 dereferenceable(16) %i.jd, i64 16, i1 false), !tbaa.struct !79
  store i8 0, ptr %i.go, align 8, !tbaa !80
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %.critedge180.i
  %i.je = icmp sgt i64 %.5126.i, -1
  br i1 %i.je, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.jf = call i32 @H5I_dec_ref(i64 noundef %.5126.i) #17, !inline_history !145
  %i.jg = icmp slt i32 %i.jf, 0
  br i1 %i.jg, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.jh = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.ji = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !16
  %i.jj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_init_new_path, i32 noundef 6111, i64 noundef %i.jh, i64 noundef %i.ji, ptr noundef nonnull @.str.452) #17, !inline_history !145 ; 0 uses
  br label %.critedge.i106.thread297

bb.bu:                                            ; preds = %bb.bs, %bb.br
  %.6147.i = phi ptr [ %.5146.i, %bb.br ], [ null, %bb.bs ] ; 3 uses
  %i.jk = icmp sgt i64 %.5116.i, -1
  br i1 %i.jk, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.jl = call i32 @H5I_dec_ref(i64 noundef %.5116.i) #17, !inline_history !145
  %i.jm = icmp slt i32 %i.jl, 0
  br i1 %i.jm, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.jn = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.jo = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !16
  %i.jp = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_init_new_path, i32 noundef 6117, i64 noundef %i.jn, i64 noundef %i.jo, ptr noundef nonnull @.str.452) #17, !inline_history !145 ; 0 uses
  br label %.critedge.i106.thread

bb.bx:                                            ; preds = %bb.bc, %bb.bd, %bb.bu, %bb.bv
  %.7148.i = phi ptr [ %.4145.i414, %bb.bc ], [ %.4145.i414, %bb.bd ], [ %.6147.i, %bb.bv ], [ %.6147.i, %bb.bu ] ; 2 uses
  %.7138.i = phi ptr [ %.4135.i415, %bb.bc ], [ %.4135.i415, %bb.bd ], [ null, %bb.bv ], [ %.5136.i, %bb.bu ] ; 2 uses
  %i.jq = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.jq, label %bb.bb, label %.critedge.i106.thread, !llvm.loop !146

.critedge.i106:                                   ; preds = %bb.bq, %.thread204, %bb.au, %bb.aq
  %.9150.i = phi ptr [ %.0141.i550556567, %.thread204 ], [ %.1142.i216, %bb.au ], [ %.5146.i, %bb.bq ], [ %.0141.i550556566, %bb.aq ]
  %.9140.i = phi ptr [ %.0131.i558565, %.thread204 ], [ %.1132.i218, %bb.au ], [ %.5136.i, %bb.bq ], [ %.0131.i558564, %bb.aq ] ; 2 uses
  %.9130.i = phi i64 [ %.0121.i569, %.thread204 ], [ %.1122.i220, %bb.au ], [ %.5126.i, %bb.bq ], [ %.0121.i568, %bb.aq ] ; 2 uses
  %.9120.i = phi i64 [ %.0111.i, %.thread204 ], [ %.1112.i222, %bb.au ], [ %.5116.i, %bb.bq ], [ %i.ey, %bb.aq ] ; 2 uses
  %i.jr = icmp sgt i64 %.9130.i, -1
  br i1 %i.jr, label %.critedge.i106.thread297, label %.critedge.i106.thread

.critedge.i106.thread297:                         ; preds = %.thread246, %bb.bj, %bb.bt, %.critedge.i106.thread271, %.critedge.i106
  %.9120.i279 = phi i64 [ %.0111.i, %.critedge.i106.thread271 ], [ %.9120.i, %.critedge.i106 ], [ %.5116.i, %bb.bt ], [ %i.hx, %bb.bj ], [ %i.hx, %.thread246 ] ; 2 uses
  %.9130.i278 = phi i64 [ %.0121.i569, %.critedge.i106.thread271 ], [ %.9130.i, %.critedge.i106 ], [ %.5126.i, %bb.bt ], [ %i.hs, %bb.bj ], [ %i.hs, %.thread246 ]
  %.9140.i277 = phi ptr [ %.0131.i558565, %.critedge.i106.thread271 ], [ %.9140.i, %.critedge.i106 ], [ %.5136.i, %bb.bt ], [ %i.hn, %bb.bj ], [ %i.hn, %.thread246 ] ; 2 uses
  %i.js = call i32 @H5I_dec_ref(i64 noundef %.9130.i278) #17, !inline_history !145
  %i.jt = icmp slt i32 %i.js, 0
  br i1 %i.jt, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %.critedge.i106.thread297
  %i.ju = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.jv = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !16
  %i.jw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_init_new_path, i32 noundef 6126, i64 noundef %i.ju, i64 noundef %i.jv, ptr noundef nonnull @.str.452) #17, !inline_history !145 ; 0 uses
  br label %bb.cb

.critedge.i106.thread:                            ; preds = %bb.bb, %bb.bx, %bb.ba, %bb.bw, %bb.az, %bb.an, %.critedge.i106
  %.8.i270 = phi i32 [ -1, %.critedge.i106 ], [ -1, %bb.az ], [ -1, %bb.an ], [ -1, %bb.bw ], [ 0, %bb.ba ], [ 0, %bb.bx ], [ 0, %bb.bb ] ; 2 uses
  %.9120.i269 = phi i64 [ %.9120.i, %.critedge.i106 ], [ %.0111.i, %bb.az ], [ -1, %bb.an ], [ %.5116.i, %bb.bw ], [ -1, %bb.ba ], [ -1, %bb.bx ], [ -1, %bb.bb ] ; 2 uses
  %.9140.i267 = phi ptr [ %.9140.i, %.critedge.i106 ], [ %.0131.i558565, %bb.az ], [ null, %bb.an ], [ %.5136.i, %bb.bw ], [ %.3134.i, %bb.ba ], [ %.4135.i415, %bb.bb ], [ %.7138.i, %bb.bx ] ; 2 uses
  %.9150.i265 = phi ptr [ %.9150.i, %.critedge.i106 ], [ %.2143.i, %bb.az ], [ %.0141.i549, %bb.an ], [ %.6147.i, %bb.bw ], [ %.3144.i, %bb.ba ], [ %.4145.i414, %bb.bb ], [ %.7148.i, %bb.bx ] ; 2 uses
  %.not177.i = icmp eq ptr %.9150.i265, null
  br i1 %.not177.i, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %.critedge.i106.thread.thread585, %.critedge.i106.thread.thread340, %.critedge.i106.thread.thread318, %.critedge.i106.thread
  %.9150.i265327 = phi ptr [ %.0141.i550555, %.critedge.i106.thread.thread318 ], [ %.9150.i265, %.critedge.i106.thread ], [ %i.hh, %.critedge.i106.thread.thread340 ], [ %i.hh, %.critedge.i106.thread.thread585 ]
  %.9140.i267326 = phi ptr [ %.0131.i557, %.critedge.i106.thread.thread318 ], [ %.9140.i267, %.critedge.i106.thread ], [ %i.hn, %.critedge.i106.thread.thread340 ], [ null, %.critedge.i106.thread.thread585 ] ; 2 uses
  %.9120.i269325 = phi i64 [ -1, %.critedge.i106.thread.thread318 ], [ %.9120.i269, %.critedge.i106.thread ], [ -1, %.critedge.i106.thread.thread340 ], [ -1, %.critedge.i106.thread.thread585 ] ; 2 uses
  %.8.i270324 = phi i32 [ -1, %.critedge.i106.thread.thread318 ], [ %.8.i270, %.critedge.i106.thread ], [ -1, %.critedge.i106.thread.thread340 ], [ -1, %.critedge.i106.thread.thread585 ]
  %i.jx = call i32 @H5T_close(ptr noundef nonnull %.9150.i265327), !inline_history !145
  %i.jy = icmp slt i32 %i.jx, 0
  br i1 %i.jy, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.jz = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.ka = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !16
  %i.kb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_init_new_path, i32 noundef 6130, i64 noundef %i.jz, i64 noundef %i.ka, ptr noundef nonnull @.str.453) #17, !inline_history !145 ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %.critedge.i106.thread, %bb.by, %.critedge.i106.thread297
  %.9120.i268 = phi i64 [ %.9120.i279, %bb.by ], [ %.9120.i279, %.critedge.i106.thread297 ], [ %.9120.i269325, %bb.ca ], [ %.9120.i269325, %bb.bz ], [ %.9120.i269, %.critedge.i106.thread ] ; 2 uses
  %.9140.i266 = phi ptr [ %.9140.i277, %bb.by ], [ %.9140.i277, %.critedge.i106.thread297 ], [ %.9140.i267326, %bb.ca ], [ %.9140.i267326, %bb.bz ], [ %.9140.i267, %.critedge.i106.thread ]
  %.9.i = phi i32 [ -1, %bb.by ], [ -1, %.critedge.i106.thread297 ], [ -1, %bb.ca ], [ %.8.i270324, %bb.bz ], [ %.8.i270, %.critedge.i106.thread ] ; 2 uses
  %i.kc = icmp sgt i64 %.9120.i268, -1
  br i1 %i.kc, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.kd = call i32 @H5I_dec_ref(i64 noundef %.9120.i268) #17, !inline_history !145
  %i.ke = icmp slt i32 %i.kd, 0
  br i1 %i.ke, label %bb.cd, label %H5T__path_find_init_new_path.exit

bb.cd:                                            ; preds = %bb.cc
  %i.kf = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.kg = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !16
  %i.kh = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_init_new_path, i32 noundef 6134, i64 noundef %i.kf, i64 noundef %i.kg, ptr noundef nonnull @.str.452) #17, !inline_history !145 ; 0 uses
  br label %H5T__path_find_init_new_path.exit.thread

bb.ce:                                            ; preds = %.thread591, %bb.cb
  %.9.i597 = phi i32 [ -1, %.thread591 ], [ %.9.i, %bb.cb ] ; 2 uses
  %.9140.i266595 = phi ptr [ %.4135.i415, %.thread591 ], [ %.9140.i266, %bb.cb ] ; 2 uses
  %.not178.i = icmp eq ptr %.9140.i266595, null
  br i1 %.not178.i, label %H5T__path_find_init_new_path.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ki = call i32 @H5T_close(ptr noundef nonnull %.9140.i266595), !inline_history !145
  %i.kj = icmp slt i32 %i.ki, 0
  br i1 %i.kj, label %bb.cg, label %H5T__path_find_init_new_path.exit

bb.cg:                                            ; preds = %bb.cf
  %i.kk = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.kl = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !16
  %i.km = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_init_new_path, i32 noundef 6138, i64 noundef %i.kk, i64 noundef %i.kl, ptr noundef nonnull @.str.453) #17, !inline_history !145 ; 0 uses
  br label %H5T__path_find_init_new_path.exit.thread

H5T__path_find_init_new_path.exit:                ; preds = %bb.cc, %bb.ce, %bb.cf
  %.9.i596 = phi i32 [ %.9.i, %bb.cc ], [ %.9.i597, %bb.ce ], [ %.9.i597, %bb.cf ]
  %i.kn = icmp slt i32 %.9.i596, 0
  br i1 %i.kn, label %H5T__path_find_init_new_path.exit.thread, label %.thread194

H5T__path_find_init_new_path.exit.thread:         ; preds = %H5T__path_find_init_new_path.exit.thread338, %bb.cg, %bb.cd, %H5T__path_find_init_new_path.exit
  %i.ko = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.kp = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.kq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_real, i32 noundef 5840, i64 noundef %i.ko, i64 noundef %i.kp, ptr noundef nonnull @.str.479) #17 ; 0 uses
  br label %bb.cv

.thread194:                                       ; preds = %bb.x, %.thread535, %bb.ah, %.thread173, %.split, %H5T__path_find_init_new_path.exit
  %.084202 = phi ptr [ %i.cp, %.thread535 ], [ %i.dc, %H5T__path_find_init_new_path.exit ], [ %i.cw, %.thread173 ], [ %i.cp, %.split ], [ %i.dc, %bb.ah ], [ %i.cp, %bb.x ] ; 11 uses
  %i.kr = phi i32 [ %.pre492.pre, %.thread535 ], [ %i.db, %H5T__path_find_init_new_path.exit ], [ %.pre491.pre, %.thread173 ], [ %.pre492.pre, %.split ], [ %i.db, %bb.ah ], [ %.pre492.pre, %bb.x ]
  %.086149159182184201 = phi ptr [ %i.cp, %.thread535 ], [ %.086149159182185, %H5T__path_find_init_new_path.exit ], [ %i.cw, %.thread173 ], [ %i.cp, %.split ], [ %.086149159182185, %bb.ah ], [ %i.cp, %bb.x ] ; 4 uses
  %.0130148161181186200 = phi i32 [ %i.bt, %.thread535 ], [ %.0130148161181187, %H5T__path_find_init_new_path.exit ], [ 0, %.thread173 ], [ %i.bt, %.split ], [ %.0130148161181187, %bb.ah ], [ %i.bt, %bb.x ] ; 2 uses
  %.0133147163180188199 = phi i32 [ 0, %.thread535 ], [ %.0133147163180189, %H5T__path_find_init_new_path.exit ], [ 0, %.thread173 ], [ 0, %.split ], [ %.0133147163180189, %bb.ah ], [ 0, %bb.x ] ; 2 uses
  %i.ks = phi i1 [ false, %.thread535 ], [ true, %H5T__path_find_init_new_path.exit ], [ false, %.thread173 ], [ false, %.split ], [ true, %bb.ah ], [ false, %bb.x ] ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.084202, i64 56
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !31
  %.not97 = icmp eq ptr %i.ku, null
  br i1 %.not97, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.thread194
  %i.kv = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.kw = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.kx = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_real, i32 noundef 5844, i64 noundef %i.kv, i64 noundef %i.kw, ptr noundef nonnull @.str.480) #17 ; 0 uses
  br label %bb.cv

bb.ci:                                            ; preds = %.thread194
  %i.ky = load i32, ptr @H5T_g.0, align 8, !tbaa !54 ; 3 uses
  %.not98 = icmp eq i32 %i.kr, %i.ky
  br i1 %.not98, label %H5T__path_table_search.exit123.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kz = load i8, ptr @H5T_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.la = trunc nuw i8 %i.kz to i1
  %i.lb = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.lc = trunc nuw i8 %i.lb to i1
  %i.ld = xor i1 %i.lc, true
  %i.le = select i1 %i.la, i1 true, i1 %i.ld
  br i1 %i.le, label %.preheader, label %H5T__path_table_search.exit123.thread, !prof !14

.preheader:                                       ; preds = %bb.cj
  %i.lf = icmp sgt i32 %i.ky, 1
  br i1 %i.lf, label %.lr.ph432, label %H5T__path_table_search.exit123.thread

.lr.ph432:                                        ; preds = %.preheader, %bb.cl
  %.022.i111430 = phi i32 [ %.123.i121, %bb.cl ], [ %i.ky, %.preheader ] ; 2 uses
  %.024.i110429 = phi i32 [ %.125.i120, %bb.cl ], [ 1, %.preheader ] ; 2 uses
  %i.lg = add nuw nsw i32 %.022.i111430, %.024.i110429
  %i.lh = lshr i32 %i.lg, 1                       ; 6 uses
  %i.li = load ptr, ptr @H5T_g.2, align 8, !tbaa !53
  %i.lj = zext nneg i32 %i.lh to i64              ; 2 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.lj
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !60
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !65
  %i.lo = call i32 @H5T_cmp(ptr noundef %0, ptr noundef %i.ln, i1 noundef zeroext false), !inline_history !0 ; 2 uses
  %i.lp = icmp eq i32 %i.lo, 0
  br i1 %i.lp, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.lr.ph432
  %i.lq = load ptr, ptr @H5T_g.2, align 8, !tbaa !53
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %i.lj
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !60
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 40
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !66
  %i.lv = call i32 @H5T_cmp(ptr noundef %1, ptr noundef %i.lu, i1 noundef zeroext false), !inline_history !0
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.lr.ph432
  %.120.i116 = phi i32 [ %i.lv, %bb.ck ], [ %i.lo, %.lr.ph432 ] ; 5 uses
  %i.lw = icmp slt i32 %.120.i116, 0
  %.not28.i117.not = icmp eq i32 %.120.i116, 0    ; 2 uses
  %i.lx = add nuw nsw i32 %i.lh, 1
  %i.ly = icmp slt i32 %.120.i116, 1
  %.125.i120 = select i1 %i.ly, i32 %.024.i110429, i32 %i.lx ; 2 uses
  %.123.i121 = select i1 %i.lw, i32 %i.lh, i32 %.022.i111430 ; 2 uses
  %i.lz = icmp sge i32 %.125.i120, %.123.i121
  %.not529 = select i1 %.not28.i117.not, i1 true, i1 %i.lz
  br i1 %.not529, label %H5T__path_table_search.exit123, label %.lr.ph432, !llvm.loop !1

H5T__path_table_search.exit123:                   ; preds = %bb.cl
  br i1 %.not28.i117.not, label %bb.cm, label %H5T__path_table_search.exit123.thread

bb.cm:                                            ; preds = %H5T__path_table_search.exit123
  %i.ma = load ptr, ptr @H5T_g.2, align 8, !tbaa !53
  %i.mb = zext nneg i32 %i.lh to i64
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.mb
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !60
  br label %H5T__path_table_search.exit123.thread

H5T__path_table_search.exit123.thread:            ; preds = %.preheader, %bb.cj, %H5T__path_table_search.exit123, %bb.cm, %bb.ci
  %.1134 = phi i32 [ %.0133147163180188199, %bb.ci ], [ %.120.i116, %bb.cm ], [ %.120.i116, %H5T__path_table_search.exit123 ], [ %.0133147163180188199, %bb.cj ], [ -1, %.preheader ]
  %.1131 = phi i32 [ %.0130148161181186200, %bb.ci ], [ %i.lh, %bb.cm ], [ %i.lh, %H5T__path_table_search.exit123 ], [ %.0130148161181186200, %bb.cj ], [ 1, %.preheader ] ; 2 uses
  %.187 = phi ptr [ %.086149159182184201, %bb.ci ], [ %i.md, %bb.cm ], [ %.086149159182184201, %H5T__path_table_search.exit123 ], [ %.086149159182184201, %bb.cj ], [ %.086149159182184201, %.preheader ] ; 2 uses
  %i.me = icmp ne ptr %.187, null
  %or.cond7 = and i1 %i.ks, %i.me
  br i1 %or.cond7, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %H5T__path_table_search.exit123.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 -1, i64 16, i1 false)
  %i.mf = call fastcc i32 @H5T__path_free(ptr noundef nonnull %.187, ptr noundef %6)
  %i.mg = icmp slt i32 %i.mf, 0
  br i1 %i.mg, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.mh = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.mi = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !16
  %i.mj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_real, i32 noundef 5860, i64 noundef %i.mh, i64 noundef %i.mi, ptr noundef nonnull @.str.368) #17 ; 0 uses
  br label %bb.cv

bb.cp:                                            ; preds = %bb.cn
  %i.mk = load ptr, ptr @H5T_g.2, align 8, !tbaa !53
  %i.ml = zext nneg i32 %.1131 to i64
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %i.ml
  store ptr %.084202, ptr %i.mm, align 8, !tbaa !60
  br label %bb.cv

bb.cq:                                            ; preds = %H5T__path_table_search.exit123.thread
  br i1 %i.ks, label %bb.cr, label %.thread290

bb.cr:                                            ; preds = %bb.cq
  %i.mn = load i32, ptr @H5T_g.0, align 8, !tbaa !54 ; 2 uses
  %i.mo = sext i32 %i.mn to i64
  %i.mp = load i64, ptr @H5T_g.1, align 8, !tbaa !55 ; 2 uses
  %.not99 = icmp ugt i64 %i.mp, %i.mo
  %.pre494 = load ptr, ptr @H5T_g.2, align 8, !tbaa !53 ; 2 uses
  br i1 %.not99, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.mq = shl i64 %i.mp, 1
  %i.mr = call i64 @llvm.umax.i64(i64 %i.mq, i64 128) ; 2 uses
  %i.ms = shl i64 %i.mr, 3
  %i.mt = call ptr @H5MM_realloc(ptr noundef %.pre494, i64 noundef %i.ms) #17 ; 3 uses
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %bb.ct, label %.thread287

.thread287:                                       ; preds = %bb.cs
  store i64 %i.mr, ptr @H5T_g.1, align 8, !tbaa !55
  store ptr %i.mt, ptr @H5T_g.2, align 8, !tbaa !53
  %.pre495 = load i32, ptr @H5T_g.0, align 8, !tbaa !54
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.mv = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !16
  %i.mw = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !16
  %i.mx = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_real, i32 noundef 5871, i64 noundef %i.mv, i64 noundef %i.mw, ptr noundef nonnull @.str.11) #17 ; 0 uses
  br label %bb.cv

bb.cu:                                            ; preds = %.thread287, %bb.cr
  %i.my = phi i32 [ %.pre495, %.thread287 ], [ %i.mn, %bb.cr ] ; 2 uses
  %i.mz = phi ptr [ %i.mt, %.thread287 ], [ %.pre494, %bb.cr ]
  %i.na = icmp sgt i32 %.1134, 0
  %i.nb = zext i1 %i.na to i32
  %spec.select = add nuw nsw i32 %.1131, %i.nb    ; 2 uses
  %i.nc = zext nneg i32 %spec.select to i64
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %i.nc ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = sub nsw i32 %i.my, %spec.select
  %i.ng = sext i32 %i.nf to i64
  %i.nh = shl nsw i64 %i.ng, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ne, ptr align 8 %i.nd, i64 %i.nh, i1 false)
  %i.ni = add nsw i32 %i.my, 1
  store i32 %i.ni, ptr @H5T_g.0, align 8, !tbaa !54
  store ptr %.084202, ptr %i.nd, align 8, !tbaa !60
  br label %bb.cv

bb.cv:                                            ; preds = %bb.ct, %bb.cp, %bb.cu, %bb.co, %bb.ch, %H5T__path_find_init_new_path.exit.thread, %bb.ag, %bb.ae
  %.185 = phi ptr [ %.084202, %bb.ct ], [ %.084202, %bb.cp ], [ %.084202, %bb.cu ], [ %i.dc, %bb.ae ], [ %i.dc, %bb.ag ], [ %i.dc, %H5T__path_find_init_new_path.exit.thread ], [ %.084202, %bb.co ], [ %.084202, %bb.ch ] ; 3 uses
  %.083.shrunk = phi i1 [ true, %bb.ct ], [ true, %bb.cp ], [ true, %bb.cu ], [ true, %bb.ae ], [ true, %bb.ag ], [ true, %H5T__path_find_init_new_path.exit.thread ], [ true, %bb.co ], [ %i.ks, %bb.ch ]
  %.1 = phi ptr [ null, %bb.ct ], [ %.084202, %bb.cp ], [ %.084202, %bb.cu ], [ null, %bb.ae ], [ null, %bb.ag ], [ null, %H5T__path_find_init_new_path.exit.thread ], [ null, %bb.co ], [ null, %bb.ch ] ; 2 uses
  %i.nj = icmp eq ptr %.1, null
  %or.cond11 = and i1 %.083.shrunk, %i.nj
  br i1 %or.cond11, label %bb.cw, label %.thread290

bb.cw:                                            ; preds = %bb.cv
  %i.nk = getelementptr inbounds nuw i8, ptr %.185, i64 32
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !65 ; 2 uses
  %.not100 = icmp eq ptr %i.nl, null
  br i1 %.not100, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.nm = call i32 @H5T_close_real(ptr noundef nonnull %i.nl)
  %i.nn = icmp slt i32 %i.nm, 0
  br i1 %i.nn, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.no = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.np = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !16
  %i.nq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_real, i32 noundef 5896, i64 noundef %i.no, i64 noundef %i.np, ptr noundef nonnull @.str.433) #17 ; 0 uses
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw
  %i.nr = getelementptr inbounds nuw i8, ptr %.185, i64 40
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !66 ; 2 uses
  %.not101 = icmp eq ptr %i.ns, null
  br i1 %.not101, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.nt = call i32 @H5T_close_real(ptr noundef nonnull %i.ns)
  %i.nu = icmp slt i32 %i.nt, 0
  br i1 %i.nu, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.nv = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.nw = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !16
  %i.nx = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T__path_find_real, i32 noundef 5898, i64 noundef %i.nv, i64 noundef %i.nw, ptr noundef nonnull @.str.433) #17 ; 0 uses
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz
  %i.ny = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5T_path_t_reg_free_list, ptr noundef nonnull %.185) #17 ; 0 uses
  br label %.thread290

.thread290:                                       ; preds = %bb.cq, %bb.y, %bb.p, %bb.d, %bb.a, %bb.dc, %bb.cv
  %.4 = phi ptr [ null, %bb.dc ], [ %.1, %bb.cv ], [ null, %bb.a ], [ %.084202, %bb.cq ], [ null, %bb.y ], [ null, %bb.p ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define zeroext i1 @H5T_path_noop(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.b = load i8, ptr %i.a, align 1, !tbaa !84, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i8, ptr %i.d, align 8, !tbaa !80, !range !12, !noundef !13
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.k = tail call i32 @H5T_cmp(ptr noundef %i.h, ptr noundef %i.j, i1 noundef zeroext false)
  %i.l = icmp eq i32 %i.k, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.m = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.l, %bb.c ]
  ret i1 %i.m
}

; Function Attrs: nounwind uwtable
define zeroext i1 @H5T_noop_conv(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5T_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1                  ; 3 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true                        ; 3 uses
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %H5T_path_noop.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.j = load i8, ptr %i.i, align 4, !tbaa !35, !range !12, !noundef !13
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.o = load i8, ptr %i.n, align 4, !tbaa !35, !range !12, !noundef !13
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @H5T_cmp(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext true)
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %H5T_path_noop.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i8, ptr @H5T_init_g, align 1, !tbaa !11, !range !12
  %.pre10 = load i8, ptr @H5_libterm_g, align 1, !range !12
  %.pre11 = trunc nuw i8 %.pre to i1
  %.pre12 = trunc nuw i8 %.pre10 to i1
  %.pre14 = xor i1 %.pre12, true
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c, %bb.b
  %.pre-phi15 = phi i1 [ %.pre14, %._crit_edge ], [ %i.e, %bb.c ], [ %i.e, %bb.b ]
  %.pre-phi = phi i1 [ %.pre11, %._crit_edge ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  %i.s = select i1 %.pre-phi, i1 true, i1 %.pre-phi15
  %i.t = load i32, ptr @H5T_g.0, align 8          ; 2 uses
  %i.u = icmp sgt i32 %i.t, 1
  %or.cond = select i1 %i.s, i1 %i.u, i1 false, !prof !48
  br i1 %or.cond, label %.lr.ph.i, label %H5T_path_noop.exit, !prof !48

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.02231.i = phi i32 [ %.123.i, %bb.g ], [ %i.t, %bb.e ] ; 2 uses
  %.02430.i = phi i32 [ %.125.i, %bb.g ], [ 1, %bb.e ] ; 2 uses
  %i.v = add nuw nsw i32 %.02430.i, %.02231.i
  %i.w = lshr i32 %i.v, 1                         ; 3 uses
  %i.x = load ptr, ptr @H5T_g.2, align 8, !tbaa !53
  %i.y = zext nneg i32 %i.w to i64                ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !65
  %i.ad = tail call i32 @H5T_cmp(ptr noundef readonly %0, ptr noundef %i.ac, i1 noundef zeroext false), !inline_history !0 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.af = load ptr, ptr @H5T_g.2, align 8, !tbaa !53
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.y
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !60
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !66
  %i.ak = tail call i32 @H5T_cmp(ptr noundef readonly %1, ptr noundef %i.aj, i1 noundef zeroext false), !inline_history !0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %.120.i = phi i32 [ %i.ak, %bb.f ], [ %i.ad, %.lr.ph.i ] ; 3 uses
  %i.al = icmp slt i32 %.120.i, 0
  %.not28.not.i = icmp eq i32 %.120.i, 0          ; 2 uses
  %i.am = add nuw nsw i32 %i.w, 1
  %i.an = icmp slt i32 %.120.i, 1
  %.125.i = select i1 %i.an, i32 %.02430.i, i32 %i.am ; 2 uses
  %.123.i = select i1 %i.al, i32 %i.w, i32 %.02231.i ; 2 uses
  %i.ao = icmp sge i32 %.125.i, %.123.i
  %.not38.i = select i1 %.not28.not.i, i1 true, i1 %i.ao
  br i1 %.not38.i, label %H5T__path_table_search.exit, label %.lr.ph.i, !llvm.loop !1

H5T__path_table_search.exit:                      ; preds = %bb.g
  br i1 %.not28.not.i, label %bb.h, label %H5T_path_noop.exit

bb.h:                                             ; preds = %H5T__path_table_search.exit
  %i.ap = load ptr, ptr @H5T_g.2, align 8, !tbaa !53
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.y
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !60 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 65
  %i.at = load i8, ptr %i.as, align 1, !tbaa !84, !range !12, !noundef !13
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %H5T_path_noop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !80, !range !12, !noundef !13
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.j, label %H5T_path_noop.exit

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !65
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !66
  %i.bc = tail call i32 @H5T_cmp(ptr noundef %i.az, ptr noundef %i.bb, i1 noundef zeroext false)
  %i.bd = icmp eq i32 %i.bc, 0
  br label %H5T_path_noop.exit

H5T_path_noop.exit:                               ; preds = %bb.e, %H5T__path_table_search.exit, %bb.h, %bb.i, %bb.j, %bb.d, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.d ], [ %i.bd, %bb.j ], [ false, %H5T__path_table_search.exit ], [ true, %bb.h ], [ false, %bb.i ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define ptr @H5T_path_compound_subset(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5T_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i8, ptr %i.g, align 8, !tbaa !64, !range !12, !noundef !13
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.l = icmp eq ptr %i.k, @H5T__conv_struct
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = tail call ptr @H5T__conv_struct_subset(ptr noundef nonnull %i.m) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.b ], [ %i.n, %bb.d ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @H5T__conv_struct_subset(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @H5T_path_bkg(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !148
  ret i32 %i.b
}

declare i32 @H5CX_get_dt_conv_cb(ptr noundef) local_unnamed_addr #2

declare i64 @H5CX_get_dxpl() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @H5T_convert_with_ctx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.H5_user_cb_state_t, align 8 ; 5 uses
  %i.a = load i8, ptr @H5T_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5T_init_g, align 1, !tbaa !11
  %i.f = tail call i32 @H5T__init_package()
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5T_init_g, align 1, !tbaa !11, !range !12
  %.pre35 = load i8, ptr @H5_libterm_g, align 1, !range !12
  %.pre36 = trunc nuw i8 %.pre to i1
  %.pre37 = trunc nuw i8 %.pre35 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5T_init_g, align 1, !tbaa !11
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T_convert_with_ctx, i32 noundef 6590, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.3) #17 ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi38 = phi i1 [ %.pre37, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre36, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi38, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %bb.l, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i32 1, ptr %i.m, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i8, ptr %i.n, align 8, !tbaa !64, !range !12, !noundef !13
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.q = call i32 @H5_user_cb_prepare(ptr noundef nonnull %9) #17
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !31
  %i.aa = call i32 %i.t(i64 noundef %i.v, i64 noundef %i.x, ptr noundef nonnull %i.m, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %i.z) #17 ; 2 uses
  %i.ab = call i32 @H5_user_cb_restore(ptr noundef nonnull %9) #17
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g, %bb.f
  %H5E_CANTSET_g.sink = phi ptr [ @H5E_CANTSET_g, %bb.f ], [ @H5E_CANTRESTORE_g, %bb.g ]
  %.sink = phi i32 [ 6596, %bb.f ], [ 6602, %bb.g ]
  %i.ad = load i64, ptr @H5E_LIB_g, align 8, !tbaa !16
  %i.ae = load i64, ptr %H5E_CANTSET_g.sink, align 8, !tbaa !16
  %i.af = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T_convert_with_ctx, i32 noundef %.sink, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.429) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.ag = icmp slt i32 %i.aa, 0
  br i1 %i.ag, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ah = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.ai = load i64, ptr @H5E_CANTCONVERT_g, align 8, !tbaa !16
  %i.aj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T_convert_with_ctx, i32 noundef 6604, i64 noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.427) #17 ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  %i.am = tail call i32 %i.al(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.m, ptr noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %8) #17
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.ap = load i64, ptr @H5E_CANTCONVERT_g, align 8, !tbaa !16
  %i.aq = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5T_convert_with_ctx, i32 noundef 6608, i64 noundef %i.ao, i64 noundef %i.ap, ptr noundef nonnull @.str.427) #17 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.d, %bb.j, %bb.k, %bb.i, %bb.c, %bb.h
  %.1 = phi i32 [ -1, %bb.c ], [ -1, %bb.i ], [ 0, %bb.d ], [ %i.aa, %bb.h ], [ -1, %bb.k ], [ 0, %bb.j ], [ -1, %.thread ]
  ret i32 %.1
}

declare ptr @H5I_remove(i64 noundef) local_unnamed_addr #2

declare i32 @H5_user_cb_prepare(ptr noundef) local_unnamed_addr #2

declare i32 @H5_user_cb_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @H5T_oloc(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5T_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5T_init_g, align 1, !tbaa !11
  %i.f = tail call i32 @H5T__init_package()
end_hunk_1
