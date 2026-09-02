Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Tconv_vlen?download=true
begin_hunk_0
@H5E_CANTCONVERT_g = external local_unnamed_addr global i64, align 8
@.str.19 = private unnamed_addr constant [27 x i8] c"datatype conversion failed\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"can't write VL data\00", align 1
@H5E_CANTREMOVE_g = external local_unnamed_addr global i64, align 8
@.str.21 = private unnamed_addr constant [29 x i8] c"unable to remove heap object\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"unknown conversion command\00", align 1
@H5E_CANTDEC_g = external local_unnamed_addr global i64, align 8
@.str.23 = private unnamed_addr constant [42 x i8] c"can't decrement reference on temporary ID\00", align 1
@H5E_CANTCLOSEOBJ_g = external local_unnamed_addr global i64, align 8
@.str.24 = private unnamed_addr constant [31 x i8] c"can't close temporary datatype\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"vlen_seq_blk\00", align 1
@H5_vlen_seq_blk_free_list = internal global { i8, [3 x i8], i32, i32, [4 x i8], i64, ptr, ptr } { i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @.str.25, ptr null }, align 8
@__func__.H5T__conv_vlen_nested_free = private unnamed_addr constant [27 x i8] c"H5T__conv_vlen_nested_free\00", align 1
@H5E_CANTFREE_g = external local_unnamed_addr global i64, align 8
@.str.27 = private unnamed_addr constant [23 x i8] c"can't free nested vlen\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"can't free compound member\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"can't free array data\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"invalid datatype class\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5T__conv_vlen(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.H5T_vlen_alloc_info_t, align 8 ; 4 uses
  %10 = alloca %struct.H5T_conv_ctx_t, align 8    ; 8 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !9
  %i.d = load i8, ptr @H5T_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %.thread, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %2, align 8, !tbaa !39
  switch i32 %i.j, label %bb.cv [
    i32 0, label %bb.c
    i32 2, label %.thread
    i32 1, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq ptr %0, null
  %i.l = icmp eq ptr %1, null
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.n = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !9
  %i.o = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 189, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.1) #5 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27
  %.not472 = icmp eq i32 %i.s, 9
  br i1 %.not472, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.u = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !9
  %i.v = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 191, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.2) #5 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !24   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !27
  %.not473 = icmp eq i32 %i.z, 9
  br i1 %.not473, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.ab = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !9
  %i.ac = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 193, i64 noundef %i.aa, i64 noundef %i.ab, ptr noundef nonnull @.str.2) #5 ; 0 uses
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !28
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.j, label %.thread487

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !28
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.k, label %.thread487

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !28 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.an = load i32, ptr %i.am, align 8, !tbaa !28 ; 2 uses
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.n, label %.thread487

bb.m:                                             ; preds = %bb.k
  %i.ap = icmp eq i32 %i.an, 0
  %i.aq = icmp eq i32 %i.ak, 1
  %or.cond656 = and i1 %i.aq, %i.ap
  br i1 %or.cond656, label %bb.n, label %.thread487

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !9
  %i.as = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !9
  %i.at = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 199, i64 noundef %i.ar, i64 noundef %i.as, ptr noundef nonnull @.str.3) #5 ; 0 uses
  br label %.thread

.thread487:                                       ; preds = %bb.l, %bb.m, %bb.j, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.au, align 4, !tbaa !40
  br label %.thread

bb.o:                                             ; preds = %bb.b
  %i.av = icmp eq ptr %0, null
  %i.aw = icmp eq ptr %1, null
  %or.cond5 = or i1 %i.av, %i.aw
  br i1 %or.cond5, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ax = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !9
  %i.ay = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !9
  %i.az = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 216, i64 noundef %i.ax, i64 noundef %i.ay, ptr noundef nonnull @.str.1) #5 ; 0 uses
  br label %.thread

bb.q:                                             ; preds = %bb.o
  %i.ba = icmp eq ptr %3, null
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.bc = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !9
  %i.bd = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 218, i64 noundef %i.bb, i64 noundef %i.bc, ptr noundef nonnull @.str.4) #5 ; 0 uses
  br label %.thread

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !tbaa.struct !41
  %.not463 = icmp eq i64 %5, 0
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !24 ; 2 uses
  br i1 %.not463, label %bb.t, label %._crit_edge

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %bb.t
  %.0389 = phi i64 [ %i.bh, %bb.t ], [ %5, %bb.s ] ; 2 uses
  %.0385 = phi i64 [ %i.bl, %bb.t ], [ %5, %bb.s ] ; 7 uses
  %i.bm = icmp ne ptr %8, null                    ; 4 uses
  %.not464 = icmp eq i64 %6, 0
  %.0385. = select i1 %.not464, i64 %.0385, i64 %6
  %.0382 = select i1 %i.bm, i64 %.0385., i64 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !30
  %i.bq = tail call i64 @H5T_get_size(ptr noundef %i.bp) #5 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 11 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !30
  %i.bv = tail call i64 @H5T_get_size(ptr noundef %i.bu) #5 ; 9 uses
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !30
  %i.bz = load ptr, ptr %i.br, align 8, !tbaa !24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !30
  %i.cc = tail call ptr @H5T_path_find(ptr noundef %i.by, ptr noundef %i.cb) #5 ; 5 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge
  %i.ce = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.cf = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !9
  %i.cg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 252, i64 noundef %i.ce, i64 noundef %i.cf, ptr noundef nonnull @.str.5) #5 ; 0 uses
  br label %.thread

bb.v:                                             ; preds = %._crit_edge
  %i.ch = tail call zeroext i1 @H5T_path_noop(ptr noundef nonnull %i.cc) #5
  br i1 %i.ch, label %bb.am, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = load ptr, ptr %i.bn, align 8, !tbaa !24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !30
  %i.cl = tail call ptr @H5T_copy(ptr noundef %i.ck, i32 noundef 1) #5 ; 9 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cn = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.co = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !9
  %i.cp = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 256, i64 noundef %i.cn, i64 noundef %i.co, ptr noundef nonnull @.str.6) #5 ; 0 uses
  br label %.thread

bb.y:                                             ; preds = %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !27
  %i.cu = icmp eq i32 %i.ct, 7
  br i1 %i.cu, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cv = load ptr, ptr %i.bn, align 8, !tbaa !24 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !28
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 52
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !28
  %i.da = tail call i32 @H5T_set_loc(ptr noundef nonnull %i.cl, ptr noundef %i.cx, i32 noundef %i.cz) #5
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dc = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.dd = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !9
  %i.de = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 260, i64 noundef %i.dc, i64 noundef %i.dd, ptr noundef nonnull @.str.7) #5 ; 0 uses
  br label %.thread534.thread.thread612

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.df = load ptr, ptr %i.br, align 8, !tbaa !24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !30
  %i.di = tail call ptr @H5T_copy(ptr noundef %i.dh, i32 noundef 1) #5 ; 8 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dk = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.dl = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !9
  %i.dm = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 264, i64 noundef %i.dk, i64 noundef %i.dl, ptr noundef nonnull @.str.8) #5 ; 0 uses
  br label %.thread534.thread.thread612

bb.ad:                                            ; preds = %bb.ab
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !27
  %i.dr = icmp eq i32 %i.dq, 7
  br i1 %i.dr, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ds = load ptr, ptr %i.br, align 8, !tbaa !24 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 52
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !28
  %i.dx = tail call i32 @H5T_set_loc(ptr noundef nonnull %i.di, ptr noundef %i.du, i32 noundef %i.dw) #5
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dz = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.ea = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !9
  %i.eb = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 268, i64 noundef %i.dz, i64 noundef %i.ea, ptr noundef nonnull @.str.7) #5 ; 0 uses
  br label %.thread534.thread.thread612

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !44, !range !12, !noundef !13
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ef = load ptr, ptr %3, align 8, !tbaa !28
  %.not465 = icmp eq ptr %i.ef, null
  br i1 %.not465, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.eg = tail call i64 @H5I_register(i32 noundef 3, ptr noundef nonnull %i.cl, i1 noundef zeroext false) #5 ; 3 uses
  %i.eh = icmp slt i64 %i.eg, 0
  br i1 %i.eh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ei = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.ej = load i64, ptr @H5E_CANTREGISTER_g, align 8, !tbaa !9
  %i.ek = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 277, i64 noundef %i.ei, i64 noundef %i.ej, ptr noundef nonnull @.str.9) #5 ; 0 uses
  br label %.thread534.thread.thread612

bb.ak:                                            ; preds = %bb.ai
  %i.el = tail call i64 @H5I_register(i32 noundef 3, ptr noundef nonnull %i.di, i1 noundef zeroext false) #5 ; 3 uses
  %i.em = icmp slt i64 %i.el, 0
  br i1 %i.em, label %.thread534.thread584, label %bb.al

.thread534.thread584:                             ; preds = %bb.ak
  %i.en = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.eo = load i64, ptr @H5E_CANTREGISTER_g, align 8, !tbaa !9
  %i.ep = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 280, i64 noundef %i.en, i64 noundef %i.eo, ptr noundef nonnull @.str.10) #5 ; 0 uses
  br label %bb.cy

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.0411 = phi i64 [ %i.eg, %bb.ak ], [ -1, %bb.ah ] ; 2 uses
  %.0408 = phi i64 [ %i.el, %bb.ak ], [ -1, %bb.ah ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %.0411, ptr %i.eq, align 8, !tbaa !28
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %.0408, ptr %i.er, align 8, !tbaa !28
  br label %bb.am

bb.am:                                            ; preds = %bb.v, %bb.al
  %.0420 = phi i8 [ 0, %bb.al ], [ 1, %bb.v ]     ; 5 uses
  %.0416 = phi ptr [ %i.cl, %bb.al ], [ null, %bb.v ] ; 3 uses
  %.0414 = phi ptr [ %i.di, %bb.al ], [ null, %bb.v ] ; 4 uses
  %.1412 = phi i64 [ %.0411, %bb.al ], [ -1, %bb.v ] ; 2 uses
  %.1409 = phi i64 [ %.0408, %bb.al ], [ -1, %bb.v ] ; 3 uses
  %i.es = load ptr, ptr %i.br, align 8, !tbaa !24
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !30
  %i.ev = tail call i32 @H5T_detect_class(ptr noundef %i.eu, i32 noundef 9, i1 noundef zeroext false) #5 ; 3 uses
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ex = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.ey = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !9
  %i.ez = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 293, i64 noundef %i.ex, i64 noundef %i.ey, ptr noundef nonnull @.str.11) #5 ; 0 uses
  br label %.thread534

bb.ao:                                            ; preds = %bb.am
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cc, i64 76
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !45
  %i.fc = icmp ne i32 %i.ev, 0
  %i.fd = or i32 %i.fb, %i.ev
  %or.cond7.not = icmp eq i32 %i.fd, 0
  br i1 %or.cond7.not, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fe = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 %i.bv) ; 2 uses
  %i.ff = tail call noalias ptr @H5FL_blk_calloc(ptr noundef nonnull @H5_vlen_seq_blk_free_list, i64 noundef %i.fe) #5 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fh = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !9
  %i.fi = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !9
  %i.fj = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 299, i64 noundef %i.fh, i64 noundef %i.fi, ptr noundef nonnull @.str.12) #5 ; 0 uses
  br label %.thread534

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %.0349 = phi ptr [ %i.ff, %bb.ap ], [ null, %bb.ao ] ; 3 uses
  %.0338 = phi i64 [ %i.fe, %bb.ap ], [ 0, %bb.ao ]
  %i.fk = call i32 @H5CX_get_vlen_alloc_info(ptr noundef nonnull %9) #5
  %i.fl = icmp slt i32 %i.fk, 0
  br i1 %i.fl, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fm = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.fn = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !9
  %i.fo = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 304, i64 noundef %i.fm, i64 noundef %i.fn, ptr noundef nonnull @.str.13) #5 ; 0 uses
  br label %.thread534

bb.at:                                            ; preds = %bb.ar
  %i.fp = load ptr, ptr %i.br, align 8, !tbaa !24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 64
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !28
  %.not466 = icmp ne ptr %i.fr, null              ; 2 uses
  %spec.select = zext i1 %.not466 to i8           ; 6 uses
  %or.cond9 = and i1 %i.fc, %.not466
  %or.cond11 = and i1 %i.bm, %or.cond9            ; 2 uses
  %i.fs = icmp sle i64 %.0385, %.0389             ; 4 uses
  %.not467934.not = icmp eq i64 %4, 0
  br i1 %.not467934.not, label %.thread534, label %.lr.ph946

.lr.ph946:                                        ; preds = %bb.at
  %i.ft = trunc nuw i8 %.0420 to i1               ; 2 uses
  %11 = and i8 %.0420, %spec.select
  %or.cond13.not = icmp eq i8 %11, 0
  %i.fu = call i64 @llvm.umax.i64(i64 %i.bq, i64 %i.bv)
  %i.fv = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %.not = xor i1 %i.ft, true
  %or.cond21 = and i1 %or.cond11, %.not
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph946, %bb.cu
  %.0328944 = phi i1 [ false, %.lr.ph946 ], [ true, %bb.cu ]
  %.1339943 = phi i64 [ %.0338, %.lr.ph946 ], [ %.9347, %bb.cu ]
  %.1350942 = phi ptr [ %.0349, %.lr.ph946 ], [ %.9358, %bb.cu ]
  %.0361941 = phi i64 [ 0, %.lr.ph946 ], [ %.6367, %bb.cu ]
  %.0369940 = phi ptr [ null, %.lr.ph946 ], [ %.6375, %bb.cu ]
  %.1383939 = phi i64 [ %.0382, %.lr.ph946 ], [ %.2384, %bb.cu ] ; 6 uses
  %.1386938 = phi i64 [ %.0385, %.lr.ph946 ], [ %.2387, %bb.cu ] ; 9 uses
  %.1390937 = phi i64 [ %.0389, %.lr.ph946 ], [ %.2391, %bb.cu ] ; 8 uses
  %.0392936 = phi ptr [ null, %.lr.ph946 ], [ %spec.select481, %bb.cu ] ; 2 uses
  %.0423935 = phi i64 [ %4, %.lr.ph946 ], [ %i.na, %bb.cu ] ; 10 uses
  %i.fw = icmp sgt i64 %.1386938, %.1390937
  br i1 %i.fw, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.fx = mul i64 %.1390937, %.0423935
  %i.fy = add nsw i64 %.1386938, -1
  %i.fz = add i64 %i.fy, %i.fx
  %i.ga = udiv i64 %i.fz, %.1386938               ; 4 uses
  %i.gb = sub i64 %.0423935, %i.ga                ; 3 uses
  %i.gc = icmp ult i64 %i.gb, 2
  br i1 %i.gc, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gd = add i64 %.0423935, -1                   ; 3 uses
  %i.ge = mul i64 %.1390937, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 %i.ge
  %i.gg = mul i64 %.1386938, %i.gd
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 %i.gg
  %i.gi = mul i64 %.1383939, %i.gd
  %i.gj = getelementptr inbounds nuw i8, ptr %8, i64 %i.gi
  %.1393 = select i1 %i.bm, ptr %i.gj, ptr %.0392936
  %i.gk = sub nsw i64 0, %.1390937
  %i.gl = sub nsw i64 0, %.1386938
  %i.gm = sub nsw i64 0, %.1383939
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.gn = mul i64 %i.ga, %.1390937
  %i.go = getelementptr inbounds nuw i8, ptr %7, i64 %i.gn ; 2 uses
  %i.gp = mul nuw i64 %i.ga, %.1386938
  %i.gq = getelementptr inbounds nuw i8, ptr %7, i64 %i.gp ; 2 uses
  br i1 %i.bm, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gr = mul i64 %i.ga, %.1383939
  %i.gs = getelementptr inbounds nuw i8, ptr %8, i64 %i.gr
  br label %bb.az

bb.az:                                            ; preds = %bb.au, %bb.aw, %bb.ay, %bb.ax
  %.0405 = phi ptr [ %i.gf, %bb.aw ], [ %i.go, %bb.ay ], [ %i.go, %bb.ax ], [ %7, %bb.au ]
  %.0398 = phi ptr [ %i.gh, %bb.aw ], [ %i.gq, %bb.ay ], [ %i.gq, %bb.ax ], [ %7, %bb.au ]
  %.2394 = phi ptr [ %.1393, %bb.aw ], [ %i.gs, %bb.ay ], [ %.0392936, %bb.ax ], [ %8, %bb.au ]
  %.2391 = phi i64 [ %i.gk, %bb.aw ], [ %.1390937, %bb.ay ], [ %.1390937, %bb.ax ], [ %.1390937, %bb.au ] ; 2 uses
  %.2387 = phi i64 [ %i.gl, %bb.aw ], [ %.1386938, %bb.ay ], [ %.1386938, %bb.ax ], [ %.1386938, %bb.au ] ; 3 uses
  %.2384 = phi i64 [ %i.gm, %bb.aw ], [ %.1383939, %bb.ay ], [ %.1383939, %bb.ax ], [ %.1383939, %bb.au ] ; 2 uses
  %.1380 = phi i64 [ %.0423935, %bb.aw ], [ %i.gb, %bb.ay ], [ %i.gb, %bb.ax ], [ %.0423935, %bb.au ] ; 4 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ct
  %.1329933 = phi i1 [ %.0328944, %bb.az ], [ true, %bb.ct ]
  %.1335930 = phi i64 [ 0, %bb.az ], [ %i.mz, %bb.ct ] ; 6 uses
  %.2340929 = phi i64 [ %.1339943, %bb.az ], [ %.9347, %bb.ct ] ; 5 uses
  %.2351928 = phi ptr [ %.1350942, %bb.az ], [ %.9358, %bb.ct ] ; 12 uses
  %.1362927 = phi i64 [ %.0361941, %bb.az ], [ %.6367, %bb.ct ] ; 4 uses
  %.1370926 = phi ptr [ %.0369940, %bb.az ], [ %.6375, %bb.ct ] ; 7 uses
  %.3395925 = phi ptr [ %.2394, %bb.az ], [ %spec.select481, %bb.ct ] ; 6 uses
  %.1399924 = phi ptr [ %.0398, %bb.az ], [ %i.mx, %bb.ct ] ; 3 uses
  %.1406922 = phi ptr [ %.0405, %bb.az ], [ %i.mw, %bb.ct ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.gt = load ptr, ptr %i.bn, align 8, !tbaa !24 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 72
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !28
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !46
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 64
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !28
  %i.ha = call i32 %i.gx(ptr noundef %i.gz, ptr noundef %.1406922, ptr noundef nonnull %i.b) #5
  %i.hb = icmp slt i32 %i.ha, 0
  br i1 %i.hb, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hc = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.hd = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !9
  %i.he = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 366, i64 noundef %i.hc, i64 noundef %i.hd, ptr noundef nonnull @.str.14) #5 ; 0 uses
  br label %.loopexit658

bb.bc:                                            ; preds = %bb.ba
  %i.hf = load i8, ptr %i.b, align 1, !tbaa !11, !range !12, !noundef !13
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.hh = load ptr, ptr %i.br, align 8, !tbaa !24 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 72
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !28
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !47
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !28
  %i.ho = call i32 %i.hl(ptr noundef %i.hn, ptr noundef %.1399924, ptr noundef %.3395925) #5
  %i.hp = icmp slt i32 %i.ho, 0
  br i1 %i.hp, label %bb.be, label %bb.ct

bb.be:                                            ; preds = %bb.bd
  %i.hq = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.hr = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !9
  %i.hs = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 370, i64 noundef %i.hq, i64 noundef %i.hr, ptr noundef nonnull @.str.15) #5 ; 0 uses
  br label %.loopexit658

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.ht = load ptr, ptr %i.bn, align 8, !tbaa !24 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 72
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !28
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !48
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 64
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !28
  %i.hz = call i32 %i.hw(ptr noundef %i.hy, ptr noundef %.1406922, ptr noundef nonnull %i.c) #5
  %i.ia = icmp slt i32 %i.hz, 0
  br i1 %i.ia, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ib = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.ic = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !9
  %i.id = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 377, i64 noundef %i.ib, i64 noundef %i.ic, ptr noundef nonnull @.str.16) #5 ; 0 uses
  br label %.thread495

bb.bh:                                            ; preds = %bb.bf
  br i1 %or.cond13.not, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ie = load ptr, ptr %i.bn, align 8, !tbaa !24
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 72
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !28
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !49
  %i.ij = call ptr %i.ii(ptr noundef %.1406922) #5 ; 2 uses
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %bb.bj, label %bb.bt

bb.bj:                                            ; preds = %bb.bi
  %i.il = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !9
  %i.im = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !9
  %i.in = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 384, i64 noundef %i.il, i64 noundef %i.im, ptr noundef nonnull @.str.17) #5 ; 0 uses
  br label %.thread495

bb.bk:                                            ; preds = %bb.bh
  %i.io = load i64, ptr %i.c, align 8, !tbaa !9   ; 3 uses
  %i.ip = mul i64 %i.io, %i.bq                    ; 2 uses
  %i.iq = icmp ne i64 %i.io, 0
  %i.ir = icmp ne ptr %.1370926, null
  %or.cond15 = select i1 %i.iq, i1 true, i1 %i.ir
  br i1 %or.cond15, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.is = call noalias ptr @H5FL_blk_calloc(ptr noundef nonnull @H5_vlen_seq_blk_free_list, i64 noundef 4096) #5 ; 2 uses
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %bb.bm, label %bb.br

bb.bm:                                            ; preds = %bb.bl
  %i.iu = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !9
  %i.iv = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !9
  %i.iw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 399, i64 noundef %i.iu, i64 noundef %i.iv, ptr noundef nonnull @.str.12) #5 ; 0 uses
  br label %.thread495

bb.bn:                                            ; preds = %bb.bk
  %i.ix = mul i64 %i.io, %i.bv
  %i.iy = call i64 @llvm.umax.i64(i64 %i.ip, i64 %i.ix) ; 2 uses
  %i.iz = icmp ult i64 %.1362927, %i.iy
  br i1 %i.iz, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.ja = and i64 %i.iy, -4096
  %i.jb = add i64 %i.ja, 4096                     ; 3 uses
  %i.jc = call ptr @H5FL_blk_realloc(ptr noundef nonnull @H5_vlen_seq_blk_free_list, ptr noundef %.1370926, i64 noundef %i.jb) #5 ; 3 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.je = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !9
  %i.jf = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !9
  %i.jg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 407, i64 noundef %i.je, i64 noundef %i.jf, ptr noundef nonnull @.str.12) #5 ; 0 uses
  br label %.thread495

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jc, i8 0, i64 %i.jb, i1 false)
  br label %bb.br

bb.br:                                            ; preds = %bb.bn, %bb.bq, %bb.bl
  %.2371 = phi ptr [ %i.jc, %bb.bq ], [ %.1370926, %bb.bn ], [ %i.is, %bb.bl ] ; 3 uses
  %.2363 = phi i64 [ %i.jb, %bb.bq ], [ %.1362927, %bb.bn ], [ 4096, %bb.bl ]
  %i.jh = load ptr, ptr %i.bn, align 8, !tbaa !24 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 72
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !28
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !50
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 64
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !28
  %i.jo = call i32 %i.jl(ptr noundef %i.jn, ptr noundef %.1406922, ptr noundef %.2371, i64 noundef %i.ip) #5
  %i.jp = icmp slt i32 %i.jo, 0
  br i1 %i.jp, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.jq = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.jr = load i64, ptr @H5E_READERROR_g, align 8, !tbaa !9
  %i.js = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 414, i64 noundef %i.jq, i64 noundef %i.jr, ptr noundef nonnull @.str.18) #5 ; 0 uses
  br label %.thread495

bb.bt:                                            ; preds = %bb.br, %bb.bi
  %.4373 = phi ptr [ %i.ij, %bb.bi ], [ %.2371, %bb.br ] ; 10 uses
  %.4365 = phi i64 [ %.1362927, %bb.bi ], [ %.2363, %bb.br ] ; 5 uses
  br i1 %i.ft, label %bb.co, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.not468 = icmp eq ptr %.2351928, null
  br i1 %.not468, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jt = icmp ult i64 %.2340929, %.4365
  br i1 %i.jt, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.ju = call ptr @H5FL_blk_realloc(ptr noundef nonnull @H5_vlen_seq_blk_free_list, ptr noundef nonnull %.2351928, i64 noundef %.4365) #5 ; 3 uses
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.jw = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !9
  %i.jx = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !9
  %i.jy = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 425, i64 noundef %i.jw, i64 noundef %i.jx, ptr noundef nonnull @.str.12) #5 ; 0 uses
  br label %.thread495

bb.by:                                            ; preds = %bb.bw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ju, i8 0, i64 %.4365, i1 false)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bv, %bb.bu
  %.3352 = phi ptr [ %i.ju, %bb.by ], [ %.2351928, %bb.bv ], [ null, %bb.bu ] ; 5 uses
  %.3341 = phi i64 [ %.4365, %bb.by ], [ %.2340929, %bb.bv ], [ %.2340929, %bb.bu ] ; 4 uses
  br i1 %or.cond11, label %bb.ca, label %bb.cl

bb.ca:                                            ; preds = %bb.bz
  %i.jz = load ptr, ptr %i.br, align 8, !tbaa !24 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 72
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !28
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !48
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 64
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !28
  %i.kf = call i32 %i.kc(ptr noundef %i.ke, ptr noundef %.3395925, ptr noundef nonnull %i.a) #5
  %i.kg = icmp slt i32 %i.kf, 0
  br i1 %i.kg, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.kh = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.ki = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !9
  %i.kj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 438, i64 noundef %i.kh, i64 noundef %i.ki, ptr noundef nonnull @.str.16) #5 ; 0 uses
  br label %.thread495

bb.cc:                                            ; preds = %bb.ca
  %i.kk = load i64, ptr %i.a, align 8, !tbaa !9   ; 3 uses
  %.not469 = icmp eq i64 %i.kk, 0
  br i1 %.not469, label %bb.cj, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kl = mul i64 %i.kk, %i.fu                    ; 4 uses
  %i.km = icmp ult i64 %.3341, %i.kl
  br i1 %i.km, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  %i.kn = call ptr @H5FL_blk_realloc(ptr noundef nonnull @H5_vlen_seq_blk_free_list, ptr noundef %.3352, i64 noundef %i.kl) #5 ; 3 uses
  %i.ko = icmp eq ptr %i.kn, null
  br i1 %i.ko, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.kp = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !9
  %i.kq = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !9
  %i.kr = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 447, i64 noundef %i.kp, i64 noundef %i.kq, ptr noundef nonnull @.str.12) #5 ; 0 uses
  br label %.thread495

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.kn, i8 0, i64 %i.kl, i1 false)
  %.pre1081 = load i64, ptr %i.a, align 8, !tbaa !9
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cd
  %i.ks = phi i64 [ %.pre1081, %bb.cg ], [ %i.kk, %bb.cd ]
  %.4353 = phi ptr [ %i.kn, %bb.cg ], [ %.3352, %bb.cd ] ; 3 uses
  %.4342 = phi i64 [ %i.kl, %bb.cg ], [ %.3341, %bb.cd ]
  %i.kt = load ptr, ptr %i.br, align 8, !tbaa !24 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 72
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !28
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !50
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 64
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !28
  %i.la = mul i64 %i.ks, %i.bv
  %i.lb = call i32 %i.kx(ptr noundef %i.kz, ptr noundef %.3395925, ptr noundef %.4353, i64 noundef %i.la) #5
  %i.lc = icmp slt i32 %i.lb, 0
  br i1 %i.lc, label %bb.ci, label %._crit_edge1082

._crit_edge1082:                                  ; preds = %bb.ch
  %.pre1083 = load i64, ptr %i.a, align 8, !tbaa !9
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ld = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.le = load i64, ptr @H5E_READERROR_g, align 8, !tbaa !9
  %i.lf = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 455, i64 noundef %i.ld, i64 noundef %i.le, ptr noundef nonnull @.str.18) #5 ; 0 uses
  br label %.thread495

bb.cj:                                            ; preds = %._crit_edge1082, %bb.cc
  %i.lg = phi i64 [ %.pre1083, %._crit_edge1082 ], [ 0, %bb.cc ] ; 3 uses
  %.5354 = phi ptr [ %.4353, %._crit_edge1082 ], [ %.3352, %bb.cc ] ; 3 uses
  %.5343 = phi i64 [ %.4342, %._crit_edge1082 ], [ %.3341, %bb.cc ] ; 2 uses
  %i.lh = load i64, ptr %i.c, align 8, !tbaa !9   ; 2 uses
  %i.li = icmp ult i64 %i.lg, %i.lh
  br i1 %i.li, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.lj = mul i64 %i.lg, %i.bv
  %i.lk = getelementptr inbounds nuw i8, ptr %.5354, i64 %i.lj
  %i.ll = sub nuw i64 %i.lh, %i.lg
  %i.lm = mul i64 %i.ll, %i.bv
  call void @llvm.memset.p0.i64(ptr align 1 %i.lk, i8 0, i64 %i.lm, i1 false)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck, %bb.bz
  %.6355 = phi ptr [ %.5354, %bb.ck ], [ %.5354, %bb.cj ], [ %.3352, %bb.bz ] ; 3 uses
  %.6344 = phi i64 [ %.5343, %bb.ck ], [ %.5343, %bb.cj ], [ %.3341, %bb.bz ]
  store i8 1, ptr %i.fv, align 8, !tbaa !28
  %i.ln = load i64, ptr %i.c, align 8, !tbaa !9
  %i.lo = call i32 @H5T_convert_with_ctx(ptr noundef nonnull %i.cc, ptr noundef %.0416, ptr noundef %.0414, ptr noundef nonnull %10, i64 noundef %i.ln, i64 noundef 0, i64 noundef 0, ptr noundef %.4373, ptr noundef %.6355) #5
  %i.lp = icmp slt i32 %i.lo, 0
  br i1 %i.lp, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.lq = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.lr = load i64, ptr @H5E_CANTCONVERT_g, align 8, !tbaa !9
  %i.ls = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 469, i64 noundef %i.lq, i64 noundef %i.lr, ptr noundef nonnull @.str.19) #5 ; 0 uses
  br label %.thread495

bb.cn:                                            ; preds = %bb.cl
  store i8 0, ptr %i.fv, align 8, !tbaa !28
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.bt
  %.7356 = phi ptr [ %.2351928, %bb.bt ], [ %.6355, %bb.cn ] ; 4 uses
  %.7345 = phi i64 [ %.2340929, %bb.bt ], [ %.6344, %bb.cn ]
  %i.lt = load ptr, ptr %i.br, align 8, !tbaa !24 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 72
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !28
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 40
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !51
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lt, i64 64
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !28
  %i.ma = load i64, ptr %i.c, align 8, !tbaa !9
  %i.mb = call i32 %i.lx(ptr noundef %i.lz, ptr noundef nonnull %9, ptr noundef %.1399924, ptr noundef %.4373, ptr noundef %.3395925, i64 noundef %i.ma, i64 noundef %i.bv) #5
  %i.mc = icmp slt i32 %i.mb, 0
  br i1 %i.mc, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.md = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.me = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !9
  %i.mf = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 476, i64 noundef %i.md, i64 noundef %i.me, ptr noundef nonnull @.str.20) #5 ; 0 uses
  br label %.thread495

bb.cq:                                            ; preds = %bb.co
  br i1 %or.cond21, label %bb.cr, label %.thread504

bb.cr:                                            ; preds = %bb.cq
  %i.mg = load i64, ptr %i.c, align 8, !tbaa !9   ; 3 uses
  %i.mh = load i64, ptr %i.a, align 8, !tbaa !9
  %i.mi = icmp ult i64 %i.mg, %i.mh
  br i1 %i.mi, label %.lr.ph.preheader, label %.thread504

.lr.ph.preheader:                                 ; preds = %bb.cr
  %i.mj = mul i64 %i.mg, %i.bv
  %i.mk = getelementptr inbounds nuw i8, ptr %.7356, i64 %i.mj
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.cs
  %.0319921 = phi i64 [ %i.mq, %bb.cs ], [ %i.mg, %.lr.ph.preheader ]
  %.0320920 = phi ptr [ %i.mr, %bb.cs ], [ %i.mk, %.lr.ph.preheader ] ; 2 uses
  %i.ml = load ptr, ptr %i.br, align 8, !tbaa !24
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 32
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !30
  %i.mo = call fastcc i32 @H5T__conv_vlen_nested_free(ptr noundef %.0320920, ptr noundef %i.mn)
  %i.mp = icmp slt i32 %i.mo, 0
  br i1 %i.mp, label %.thread517, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph
  %i.mq = add nuw i64 %.0319921, 1                ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.0320920, i64 %i.bv
  %i.ms = load i64, ptr %i.a, align 8, !tbaa !9
  %.not470 = icmp ult i64 %i.mq, %i.ms
  br i1 %.not470, label %.lr.ph, label %.thread504, !llvm.loop !33

.thread517:                                       ; preds = %.lr.ph
  %i.mt = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.mu = load i64, ptr @H5E_CANTREMOVE_g, align 8, !tbaa !9
  %i.mv = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 493, i64 noundef %i.mt, i64 noundef %i.mu, ptr noundef nonnull @.str.21) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  br label %.loopexit658

.thread495:                                       ; preds = %bb.bg, %bb.bj, %bb.cp, %bb.bx, %bb.cb, %bb.cf, %bb.ci, %bb.cm, %bb.bp, %bb.bs, %bb.bm
  %.5374.ph = phi ptr [ %.4373, %bb.cm ], [ %.4373, %bb.ci ], [ %.4373, %bb.cf ], [ %.4373, %bb.cb ], [ %.4373, %bb.bx ], [ %.1370926, %bb.bg ], [ %.4373, %bb.cp ], [ null, %bb.bj ], [ null, %bb.bm ], [ %.2371, %bb.bs ], [ null, %bb.bp ]
  %.8357.ph = phi ptr [ %.6355, %bb.cm ], [ %.4353, %bb.ci ], [ null, %bb.cf ], [ %.3352, %bb.cb ], [ null, %bb.bx ], [ %.2351928, %bb.bg ], [ %.7356, %bb.cp ], [ %.2351928, %bb.bj ], [ %.2351928, %bb.bm ], [ %.2351928, %bb.bs ], [ %.2351928, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  br label %.loopexit658

.thread504:                                       ; preds = %bb.cs, %bb.cq, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  br label %bb.ct

bb.ct:                                            ; preds = %.thread504, %bb.bd
  %.6375 = phi ptr [ %.1370926, %bb.bd ], [ %.4373, %.thread504 ] ; 3 uses
  %.6367 = phi i64 [ %.1362927, %bb.bd ], [ %.4365, %.thread504 ] ; 2 uses
  %.9358 = phi ptr [ %.2351928, %bb.bd ], [ %.7356, %.thread504 ] ; 3 uses
  %.9347 = phi i64 [ %.2340929, %bb.bd ], [ %.7345, %.thread504 ] ; 2 uses
  %i.mw = getelementptr inbounds i8, ptr %.1406922, i64 %.2391
  %i.mx = getelementptr inbounds i8, ptr %.1399924, i64 %.2387
  %.not471 = icmp eq ptr %.3395925, null
  %i.my = getelementptr inbounds i8, ptr %.3395925, i64 %.2384
  %spec.select481 = select i1 %.not471, ptr null, ptr %i.my ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  %i.mz = add nuw i64 %.1335930, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.mz, %.1380
  br i1 %exitcond.not, label %bb.cu, label %bb.ba, !llvm.loop !34

bb.cu:                                            ; preds = %bb.ct
  %i.na = sub i64 %.0423935, %.1380               ; 2 uses
  %.not467.not = icmp eq i64 %i.na, 0
  br i1 %.not467.not, label %.thread534, label %bb.au, !llvm.loop !35

bb.cv:                                            ; preds = %bb.b
  %i.nb = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.nc = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !9
  %i.nd = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 517, i64 noundef %i.nb, i64 noundef %i.nc, ptr noundef nonnull @.str.22) #5 ; 0 uses
  br label %.thread

.loopexit658:                                     ; preds = %.thread495, %.thread517, %bb.be, %bb.bb
  %.7376.ph = phi ptr [ %.5374.ph, %.thread495 ], [ %.4373, %.thread517 ], [ %.1370926, %bb.be ], [ %.1370926, %bb.bb ] ; 3 uses
  %.10359.ph = phi ptr [ %.8357.ph, %.thread495 ], [ %.7356, %.thread517 ], [ %.2351928, %bb.be ], [ %.2351928, %bb.bb ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br i1 %.1329933, label %bb.cw, label %.thread534

bb.cw:                                            ; preds = %.loopexit658
  %i.ne = icmp ult i64 %.0423935, %4
  %i.nf = icmp ult i64 %.1335930, %.1380          ; 2 uses
  %or.cond482 = and i1 %i.fs, %i.nf
  %or.cond486 = select i1 %i.ne, i1 true, i1 %or.cond482
  br i1 %or.cond486, label %bb.cx, label %.loopexit

bb.cx:                                            ; preds = %bb.cw
  %i.ng = sub i64 %4, %.0423935
  %i.nh = select i1 %i.fs, i64 %.1335930, i64 0
  %.0 = add i64 %i.ng, %i.nh                      ; 2 uses
  %.not474954 = icmp eq i64 %.0, 0
  br i1 %.not474954, label %.loopexit, label %.lr.ph957.preheader

.lr.ph957.preheader:                              ; preds = %bb.cx
  %i.ni = mul i64 %.0423935, %.0385
  %.3401.idx = select i1 %i.fs, i64 0, i64 %i.ni
  %.3401 = getelementptr inbounds nuw i8, ptr %7, i64 %.3401.idx
  br label %.lr.ph957

.lr.ph957:                                        ; preds = %.lr.ph957.preheader, %.lr.ph957
  %.1956 = phi i64 [ %i.nl, %.lr.ph957 ], [ %.0, %.lr.ph957.preheader ]
  %.4402955 = phi ptr [ %i.nk, %.lr.ph957 ], [ %.3401, %.lr.ph957.preheader ] ; 2 uses
  %i.nj = call i32 @H5T_vlen_reclaim_elmt(ptr noundef %.4402955, ptr noundef %1) #5 ; 0 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.4402955, i64 %.0385
  %i.nl = add i64 %.1956, -1                      ; 2 uses
  %.not474 = icmp eq i64 %i.nl, 0
  br i1 %.not474, label %.loopexit, label %.lr.ph957, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph957, %bb.cx, %bb.cw
  %.not1256 = xor i1 %i.nf, true
  %.not476958 = icmp eq i64 %.1335930, 0
  %i.nm = or i1 %.not476958, %.not1256
  %or.cond1255 = or i1 %i.nm, %i.fs
  br i1 %or.cond1255, label %.thread534, label %.lr.ph961.preheader

.lr.ph961.preheader:                              ; preds = %.loopexit
  %i.nn = icmp sgt i64 %.2387, 0
  %.2381..2336 = select i1 %i.nn, i64 %.1380, i64 %.1335930
  %.pn475 = sub i64 %.0423935, %.2381..2336
  %.pn = mul i64 %.pn475, %.0385
  %.5403 = getelementptr inbounds nuw i8, ptr %7, i64 %.pn
  br label %.lr.ph961

.lr.ph961:                                        ; preds = %.lr.ph961.preheader, %.lr.ph961
  %.2960 = phi i64 [ %i.nq, %.lr.ph961 ], [ %.1335930, %.lr.ph961.preheader ]
  %.6404959 = phi ptr [ %i.np, %.lr.ph961 ], [ %.5403, %.lr.ph961.preheader ] ; 2 uses
  %i.no = call i32 @H5T_vlen_reclaim_elmt(ptr noundef %.6404959, ptr noundef %1) #5 ; 0 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.6404959, i64 %.0385
  %i.nq = add i64 %.2960, -1                      ; 2 uses
  %.not476 = icmp eq i64 %i.nq, 0
  br i1 %.not476, label %.thread534, label %.lr.ph961, !llvm.loop !37

.thread534:                                       ; preds = %bb.cu, %.lr.ph961, %bb.at, %bb.as, %bb.aq, %bb.an, %.loopexit, %.loopexit658
  %.9560 = phi i32 [ -1, %.loopexit658 ], [ -1, %.loopexit ], [ -1, %bb.an ], [ -1, %bb.as ], [ -1, %bb.aq ], [ -1, %.lr.ph961 ], [ 0, %bb.at ], [ 0, %bb.cu ] ; 3 uses
  %.11360559 = phi ptr [ %.10359.ph, %.loopexit658 ], [ %.10359.ph, %.loopexit ], [ null, %bb.an ], [ %.0349, %bb.as ], [ null, %bb.aq ], [ %.10359.ph, %.lr.ph961 ], [ %.0349, %bb.at ], [ %.9358, %bb.cu ] ; 3 uses
  %.8377558 = phi ptr [ %.7376.ph, %.loopexit658 ], [ %.7376.ph, %.loopexit ], [ null, %bb.an ], [ null, %bb.as ], [ null, %bb.aq ], [ %.7376.ph, %.lr.ph961 ], [ null, %bb.at ], [ %.6375, %bb.cu ] ; 3 uses
  %.1419553 = phi i8 [ %spec.select, %.loopexit658 ], [ %spec.select, %.loopexit ], [ 0, %bb.an ], [ 0, %bb.as ], [ 0, %bb.aq ], [ %spec.select, %.lr.ph961 ], [ %spec.select, %bb.at ], [ %spec.select, %bb.cu ] ; 3 uses
  %i.nr = icmp sgt i64 %.1412, -1
  br i1 %i.nr, label %bb.cy, label %.thread534.thread

bb.cy:                                            ; preds = %.thread534.thread584, %.thread534
  %.1421552601 = phi i8 [ 0, %.thread534.thread584 ], [ %.0420, %.thread534 ] ; 2 uses
  %.1419553600 = phi i8 [ 0, %.thread534.thread584 ], [ %.1419553, %.thread534 ] ; 2 uses
  %.1415555599 = phi ptr [ %i.di, %.thread534.thread584 ], [ %.0414, %.thread534 ] ; 2 uses
  %.2413556598 = phi i64 [ %i.eg, %.thread534.thread584 ], [ %.1412, %.thread534 ]
  %.2410557597 = phi i64 [ %i.el, %.thread534.thread584 ], [ %.1409, %.thread534 ] ; 2 uses
  %.8377558596 = phi ptr [ null, %.thread534.thread584 ], [ %.8377558, %.thread534 ] ; 2 uses
  %.11360559595 = phi ptr [ null, %.thread534.thread584 ], [ %.11360559, %.thread534 ] ; 2 uses
  %.9560594 = phi i32 [ -1, %.thread534.thread584 ], [ %.9560, %.thread534 ]
  %i.ns = call i32 @H5I_dec_ref(i64 noundef %.2413556598) #5
  %i.nt = icmp slt i32 %i.ns, 0
  br i1 %i.nt, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.nu = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.nv = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !9
  %i.nw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 566, i64 noundef %i.nu, i64 noundef %i.nv, ptr noundef nonnull @.str.23) #5 ; 0 uses
  br label %bb.db

.thread534.thread:                                ; preds = %.thread534
  %.not477 = icmp eq ptr %.0416, null
  br i1 %.not477, label %bb.db, label %.thread534.thread.thread612

.thread534.thread.thread612:                      ; preds = %bb.aa, %bb.aj, %bb.af, %bb.ac, %.thread534.thread
  %.9560570629 = phi i32 [ %.9560, %.thread534.thread ], [ -1, %bb.ac ], [ -1, %bb.af ], [ -1, %bb.aj ], [ -1, %bb.aa ]
  %.11360559572628 = phi ptr [ %.11360559, %.thread534.thread ], [ null, %bb.ac ], [ null, %bb.af ], [ null, %bb.aj ], [ null, %bb.aa ] ; 2 uses
  %.8377558574627 = phi ptr [ %.8377558, %.thread534.thread ], [ null, %bb.ac ], [ null, %bb.af ], [ null, %bb.aj ], [ null, %bb.aa ] ; 2 uses
  %.2410557576626 = phi i64 [ %.1409, %.thread534.thread ], [ -1, %bb.ac ], [ -1, %bb.af ], [ -1, %bb.aj ], [ -1, %bb.aa ] ; 2 uses
  %.1415555578625 = phi ptr [ %.0414, %.thread534.thread ], [ null, %bb.ac ], [ %i.di, %bb.af ], [ %i.di, %bb.aj ], [ null, %bb.aa ] ; 2 uses
  %.1417554579624 = phi ptr [ %.0416, %.thread534.thread ], [ %i.cl, %bb.ac ], [ %i.cl, %bb.af ], [ %i.cl, %bb.aj ], [ %i.cl, %bb.aa ]
  %.1419553581623 = phi i8 [ %.1419553, %.thread534.thread ], [ 0, %bb.ac ], [ 0, %bb.af ], [ 0, %bb.aj ], [ 0, %bb.aa ] ; 2 uses
  %.1421552583622 = phi i8 [ %.0420, %.thread534.thread ], [ 0, %bb.ac ], [ 0, %bb.af ], [ 0, %bb.aj ], [ 0, %bb.aa ] ; 2 uses
  %i.nx = call i32 @H5T_close(ptr noundef nonnull %.1417554579624) #5
  %i.ny = icmp slt i32 %i.nx, 0
  br i1 %i.ny, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.thread534.thread.thread612
  %i.nz = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.oa = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !9
  %i.ob = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 570, i64 noundef %i.nz, i64 noundef %i.oa, ptr noundef nonnull @.str.24) #5 ; 0 uses
  br label %bb.db

bb.db:                                            ; preds = %.thread534.thread, %bb.da, %.thread534.thread.thread612, %bb.cy, %bb.cz
  %.1421552582 = phi i8 [ %.1421552601, %bb.cz ], [ %.1421552601, %bb.cy ], [ %.1421552583622, %bb.da ], [ %.1421552583622, %.thread534.thread.thread612 ], [ %.0420, %.thread534.thread ]
  %.1419553580 = phi i8 [ %.1419553600, %bb.cz ], [ %.1419553600, %bb.cy ], [ %.1419553581623, %bb.da ], [ %.1419553581623, %.thread534.thread.thread612 ], [ %.1419553, %.thread534.thread ]
  %.1415555577 = phi ptr [ %.1415555599, %bb.cz ], [ %.1415555599, %bb.cy ], [ %.1415555578625, %bb.da ], [ %.1415555578625, %.thread534.thread.thread612 ], [ %.0414, %.thread534.thread ] ; 2 uses
  %.2410557575 = phi i64 [ %.2410557597, %bb.cz ], [ %.2410557597, %bb.cy ], [ %.2410557576626, %bb.da ], [ %.2410557576626, %.thread534.thread.thread612 ], [ %.1409, %.thread534.thread ] ; 2 uses
  %.8377558573 = phi ptr [ %.8377558596, %bb.cz ], [ %.8377558596, %bb.cy ], [ %.8377558574627, %bb.da ], [ %.8377558574627, %.thread534.thread.thread612 ], [ %.8377558, %.thread534.thread ] ; 2 uses
  %.11360559571 = phi ptr [ %.11360559595, %bb.cz ], [ %.11360559595, %bb.cy ], [ %.11360559572628, %bb.da ], [ %.11360559572628, %.thread534.thread.thread612 ], [ %.11360559, %.thread534.thread ] ; 2 uses
  %.10 = phi i32 [ -1, %bb.cz ], [ %.9560594, %bb.cy ], [ -1, %bb.da ], [ %.9560570629, %.thread534.thread.thread612 ], [ %.9560, %.thread534.thread ] ; 3 uses
  %i.oc = icmp sgt i64 %.2410557575, -1
  br i1 %i.oc, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.od = call i32 @H5I_dec_ref(i64 noundef %.2410557575) #5
  %i.oe = icmp slt i32 %i.od, 0
  br i1 %i.oe, label %bb.dd, label %.thread648

bb.dd:                                            ; preds = %bb.dc
  %i.of = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.og = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !9
  %i.oh = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 574, i64 noundef %i.of, i64 noundef %i.og, ptr noundef nonnull @.str.23) #5 ; 0 uses
  br label %.thread648

bb.de:                                            ; preds = %bb.db
  %.not478 = icmp eq ptr %.1415555577, null
  br i1 %.not478, label %.thread648, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.oi = call i32 @H5T_close(ptr noundef nonnull %.1415555577) #5
  %i.oj = icmp slt i32 %i.oi, 0
  br i1 %i.oj, label %bb.dg, label %.thread648

bb.dg:                                            ; preds = %bb.df
  %i.ok = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.ol = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !9
  %i.om = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen, i32 noundef 578, i64 noundef %i.ok, i64 noundef %i.ol, ptr noundef nonnull @.str.24) #5 ; 0 uses
  br label %.thread648

.thread648:                                       ; preds = %bb.de, %bb.dg, %bb.df, %bb.dc, %bb.dd
  %.11 = phi i32 [ -1, %bb.dd ], [ %.10, %bb.dc ], [ -1, %bb.dg ], [ %.10, %bb.df ], [ %.10, %bb.de ] ; 2 uses
  %12 = and i8 %.1421552582, %.1419553580
  %or.cond19.not = trunc nuw i8 %12 to i1
  %.not479657 = icmp eq ptr %.8377558573, null
  %.not479 = select i1 %or.cond19.not, i1 true, i1 %.not479657
  br i1 %.not479, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %.thread648
  %i.on = call ptr @H5FL_blk_free(ptr noundef nonnull @H5_vlen_seq_blk_free_list, ptr noundef nonnull %.8377558573) #5 ; 0 uses
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %.thread648
  %.not480 = icmp eq ptr %.11360559571, null
  br i1 %.not480, label %.thread, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.oo = call ptr @H5FL_blk_free(ptr noundef nonnull @H5_vlen_seq_blk_free_list, ptr noundef nonnull %.11360559571) #5 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.cv, %bb.d, %bb.f, %bb.h, %bb.n, %.thread487, %bb.b, %bb.p, %bb.r, %bb.u, %bb.x, %bb.a, %bb.dj, %bb.di
  %.12 = phi i32 [ %.11, %bb.dj ], [ %.11, %bb.di ], [ 0, %bb.a ], [ -1, %bb.x ], [ -1, %bb.u ], [ -1, %bb.r ], [ -1, %bb.p ], [ 0, %bb.b ], [ 0, %.thread487 ], [ -1, %bb.n ], [ -1, %bb.h ], [ -1, %bb.f ], [ -1, %bb.d ], [ -1, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  ret i32 %.12
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @H5T_get_size(ptr noundef) local_unnamed_addr #3

declare ptr @H5T_path_find(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @H5T_path_noop(ptr noundef) local_unnamed_addr #3

declare ptr @H5T_copy(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @H5T_set_loc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @H5I_register(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare i32 @H5T_detect_class(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare noalias ptr @H5FL_blk_calloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @H5CX_get_vlen_alloc_info(ptr noundef) local_unnamed_addr #3

declare ptr @H5FL_blk_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @H5T_convert_with_ctx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @H5T__conv_vlen_nested_free(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5T_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27
  switch i32 %i.j, label %bb.i [
    i32 9, label %bb.c
    i32 6, label %.preheader
    i32 10, label %.preheader32
    i32 0, label %.loopexit
    i32 1, label %.loopexit
    i32 2, label %.loopexit
    i32 3, label %.loopexit
    i32 4, label %.loopexit
    i32 5, label %.loopexit
    i32 7, label %.loopexit
    i32 8, label %.loopexit
    i32 11, label %.loopexit
  ]

.preheader32:                                     ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !28
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28
  %.not37 = icmp eq i32 %i.n, 0
  br i1 %.not37, label %.loopexit, label %.lr.ph36

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = tail call i32 %i.r(ptr noundef %i.t, ptr noundef %0) #5
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.x = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !9
  %i.y = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen_nested_free, i32 noundef 77, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.27) #5 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !28
  %i.ac = zext i32 %i.ab to i64
  %i.ad = icmp samesign ult i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %.lr.ph36, label %.loopexit, !llvm.loop !52

.lr.ph36:                                         ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %i.ae = phi ptr [ %i.z, %bb.e ], [ %i.h, %.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !58
  %i.an = tail call fastcc i32 @H5T__conv_vlen_nested_free(ptr noundef %i.ak, ptr noundef %i.am)
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.f, label %bb.e

bb.f:                                             ; preds = %.lr.ph36
  %i.ap = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.aq = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !9
  %i.ar = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen_nested_free, i32 noundef 85, i64 noundef %i.ap, i64 noundef %i.aq, ptr noundef nonnull @.str.28) #5 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %i.as = add i32 %.034, 1                        ; 2 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !24  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !28
  %i.ax = icmp ugt i64 %i.aw, %i.at
  br i1 %i.ax, label %.lr.ph, label %.loopexit, !llvm.loop !53

.lr.ph:                                           ; preds = %.preheader32, %bb.g
  %i.ay = phi ptr [ %i.au, %bb.g ], [ %i.h, %.preheader32 ]
  %i.az = phi i64 [ %i.at, %bb.g ], [ 0, %.preheader32 ]
  %.034 = phi i32 [ %i.as, %bb.g ], [ 0, %.preheader32 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !30 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !29
  %i.bg = mul i64 %i.bf, %i.az
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg
  %i.bi = tail call fastcc i32 @H5T__conv_vlen_nested_free(ptr noundef %i.bh, ptr noundef %i.bb)
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.h, label %bb.g

bb.h:                                             ; preds = %.lr.ph
  %i.bk = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.bl = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !9
  %i.bm = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen_nested_free, i32 noundef 93, i64 noundef %i.bk, i64 noundef %i.bl, ptr noundef nonnull @.str.29) #5 ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.b
  %i.bn = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !9
  %i.bo = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !9
  %i.bp = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_vlen_nested_free, i32 noundef 111, i64 noundef %i.bn, i64 noundef %i.bo, ptr noundef nonnull @.str.30) #5 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.e, %.preheader32, %.preheader, %bb.a, %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.i, %bb.d, %bb.f, %bb.h
  %.2 = phi i32 [ -1, %bb.i ], [ -1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.preheader ], [ -1, %bb.f ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ -1, %bb.h ], [ 0, %.preheader32 ], [ 0, %bb.e ], [ 0, %bb.g ]
  ret i32 %.2
}

declare i32 @H5T_vlen_reclaim_elmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5I_dec_ref(i64 noundef) local_unnamed_addr #3

declare i32 @H5T_close(ptr noundef) local_unnamed_addr #3

declare ptr @H5FL_blk_free(ptr noundef, ptr noundef) local_unnamed_addr #3

end_hunk_0
