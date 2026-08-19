inline.NumInlined: 13
inline.NumDeleted: 9
begin_hunk_0_@H5D_get_create_plist:bb.a
  store i64 -1, ptr %i.bl, align 8, !tbaa !62
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 2208
  store i64 0, ptr %i.bm, align 8, !tbaa !62
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %bb.x, %bb.w, %bb.s, %bb.r
  %i.bn = call i32 @H5P_poke(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.6, ptr noundef nonnull %1) #11
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bp = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.bq = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !13
  %i.br = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D_get_create_plist, i32 noundef 3705, i64 noundef %i.bp, i64 noundef %i.bq, ptr noundef nonnull @.str.146) #11 ; 0 uses
  br label %.thread112

bb.aa:                                            ; preds = %bb.y
  %i.bs = call i32 @H5P_peek(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.10, ptr noundef nonnull %2) #11
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bu = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.bv = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !13
  %i.bw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D_get_create_plist, i32 noundef 3709, i64 noundef %i.bu, i64 noundef %i.bv, ptr noundef nonnull @.str.147) #11 ; 0 uses
  br label %.thread112

bb.ac:                                            ; preds = %bb.aa
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !92
  %i.bz = icmp ne ptr %i.by, null
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = icmp eq ptr %i.cb, null
  %or.cond = select i1 %i.bz, i1 %i.cc, i1 false
  br i1 %or.cond, label %bb.ad, label %.thread101

bb.ad:                                            ; preds = %bb.ac
  %i.cd = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !73
  %i.cg = call ptr @H5T_copy(ptr noundef %i.cf, i32 noundef 0) #11 ; 3 uses
  store ptr %i.cg, ptr %i.ca, align 8, !tbaa !101
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ci = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.cj = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !13
  %i.ck = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D_get_create_plist, i32 noundef 3717, i64 noundef %i.ci, i64 noundef %i.cj, ptr noundef nonnull @.str.148) #11 ; 0 uses
  br label %.thread112

bb.af:                                            ; preds = %bb.ad
  %i.cl = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !73
  %i.co = call ptr @H5T_path_find(ptr noundef %i.cn, ptr noundef nonnull %i.cg) #11 ; 4 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cq = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.cr = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !13
  %i.cs = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D_get_create_plist, i32 noundef 3722, i64 noundef %i.cq, i64 noundef %i.cr, ptr noundef nonnull @.str.149) #11 ; 0 uses
  br label %.thread112

bb.ah:                                            ; preds = %bb.af
  %i.ct = call zeroext i1 @H5T_path_noop(ptr noundef nonnull %i.co) #11
  br i1 %i.ct, label %.thread101, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cu = load ptr, ptr %i.ca, align 8, !tbaa !101 ; 4 uses
  %i.cv = call i32 @H5T_detect_class(ptr noundef %i.cu, i32 noundef 9, i1 noundef zeroext false) #11
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cx = call i32 @H5T_detect_class(ptr noundef %i.cu, i32 noundef 7, i1 noundef zeroext false) #11
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cz = call ptr @H5T_copy(ptr noundef %i.cu, i32 noundef 0) #11 ; 3 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.thread120, label %bb.al

.thread120:                                       ; preds = %bb.ak
  %i.db = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.dc = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !13
  %i.dd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D_get_create_plist, i32 noundef 3733, i64 noundef %i.db, i64 noundef %i.dc, ptr noundef nonnull @.str.150) #11 ; 0 uses
  br label %.thread112

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.077 = phi ptr [ %i.cu, %bb.aj ], [ %i.cz, %bb.ak ]
  %.071 = phi ptr [ null, %bb.aj ], [ %i.cz, %bb.ak ] ; 4 uses
  %i.de = load ptr, ptr %i.ca, align 8, !tbaa !101
  %i.df = call i64 @H5T_get_size(ptr noundef %i.de) #11
  %i.dg = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !73
  %i.dj = call i64 @H5T_get_size(ptr noundef %i.di) #11
  %i.dk = icmp ugt i64 %i.df, %i.dj
  br i1 %i.dk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dl = load ptr, ptr %i.ca, align 8, !tbaa !101
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.dm = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !73
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sink = phi ptr [ %i.do, %bb.an ], [ %i.dl, %bb.am ]
  %i.dp = call i64 @H5T_get_size(ptr noundef %.sink) #11
  %i.dq = call i32 @H5T_path_bkg(ptr noundef nonnull %i.co) #11
  %.not90 = icmp eq i32 %i.dq, 0
  br i1 %.not90, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dr = call noalias ptr @H5FL_blk_calloc(ptr noundef nonnull @H5_type_conv_blk_free_list, i64 noundef %i.dp) #11 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dt = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.du = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !13
  %i.dv = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D_get_create_plist, i32 noundef 3740, i64 noundef %i.dt, i64 noundef %i.du, ptr noundef nonnull @.str.21) #11 ; 0 uses
  br label %.thread

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %.067 = phi ptr [ %i.dr, %bb.ap ], [ null, %bb.ao ] ; 4 uses
  %i.dw = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !73
  %i.dz = load ptr, ptr %i.bx, align 8, !tbaa !92
  %i.ea = call i32 @H5T_convert(ptr noundef nonnull %i.co, ptr noundef %i.dy, ptr noundef %.077, i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %i.dz, ptr noundef %.067) #11
  %i.eb = icmp slt i32 %i.ea, 0
  %.not92 = icmp eq ptr %.067, null               ; 2 uses
  br i1 %i.eb, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  br i1 %.not92, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ec = call ptr @H5FL_blk_free(ptr noundef nonnull @H5_type_conv_blk_free_list, ptr noundef nonnull %.067) #11 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.ed = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.ee = load i64, ptr @H5E_CANTCONVERT_g, align 8, !tbaa !13
  %i.ef = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D_get_create_plist, i32 noundef 3747, i64 noundef %i.ed, i64 noundef %i.ee, ptr noundef nonnull @.str.151) #11 ; 0 uses
  br label %.thread

bb.av:                                            ; preds = %bb.ar
  br i1 %.not92, label %.thread101, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eg = call ptr @H5FL_blk_free(ptr noundef nonnull @H5_type_conv_blk_free_list, ptr noundef nonnull %.067) #11 ; 0 uses
  br label %.thread101

.thread101:                                       ; preds = %bb.av, %bb.aw, %bb.ah, %bb.ac
  %.475 = phi ptr [ null, %bb.ac ], [ %.071, %bb.aw ], [ %.071, %bb.av ], [ null, %bb.ah ] ; 4 uses
  %i.eh = call i32 @H5P_poke(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.10, ptr noundef nonnull %2) #11
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.thread101
  %i.ej = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.ek = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !13
  %i.el = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D_get_create_plist, i32 noundef 3758, i64 noundef %i.ej, i64 noundef %i.ek, ptr noundef nonnull @.str.152) #11 ; 0 uses
  br label %.thread

bb.ay:                                            ; preds = %.thread101
  %i.em = call i32 @H5P_peek(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.8, ptr noundef nonnull %3) #11
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.eo = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.ep = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !13
  %i.eq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D_get_create_plist, i32 noundef 3762, i64 noundef %i.eo, i64 noundef %i.ep, ptr noundef nonnull @.str.153) #11 ; 0 uses
  br label %.thread

bb.ba:                                            ; preds = %bb.ay
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !188 ; 2 uses
  %.not93 = icmp eq ptr %i.es, null
  br i1 %.not93, label %.loopexit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i64 -1, ptr %3, align 8, !tbaa !189
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !190 ; 2 uses
  %.not126 = icmp eq i64 %i.eu, 0
  br i1 %.not126, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bb, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.bb ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [32 x i8], ptr %i.es, i64 %indvars.iv
  store i64 0, ptr %i.ev, align 8, !tbaa !191
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %4 = and i64 %indvars.iv.next, 4294967295
  %i.ew = icmp ugt i64 %i.eu, %4
  br i1 %i.ew, label %.lr.ph, label %.loopexit, !llvm.loop !193

.loopexit:                                        ; preds = %.lr.ph, %bb.bb, %bb.ba
  %i.ex = call i32 @H5P_poke(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.8, ptr noundef nonnull %3) #11
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %bb.bc, label %.thread

bb.bc:                                            ; preds = %.loopexit
  %i.ez = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.fa = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !13
  %i.fb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D_get_create_plist, i32 noundef 3775, i64 noundef %i.ez, i64 noundef %i.fa, ptr noundef nonnull @.str.154) #11 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.au, %bb.aq, %.loopexit, %bb.bc, %bb.az, %bb.ax
  %.576 = phi ptr [ %.475, %bb.az ], [ %.475, %bb.bc ], [ %.475, %bb.ax ], [ %.475, %.loopexit ], [ %.071, %bb.au ], [ %.071, %bb.aq ] ; 2 uses
  %.3 = phi i64 [ -1, %bb.az ], [ -1, %bb.bc ], [ -1, %bb.ax ], [ %i.aa, %.loopexit ], [ -1, %bb.au ], [ -1, %bb.aq ] ; 2 uses
  %.not94 = icmp eq ptr %.576, null
  br i1 %.not94, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %.thread
  %i.fc = call i32 @H5T_close(ptr noundef nonnull %.576) #11
  %i.fd = icmp slt i32 %i.fc, 0
  br i1 %i.fd, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fe = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.ff = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !13
  %i.fg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D_get_create_plist, i32 noundef 3782, i64 noundef %i.fe, i64 noundef %i.ff, ptr noundef nonnull @.str.155) #11 ; 0 uses
  br label %.thread112

bb.bf:                                            ; preds = %bb.bd, %.thread
  %i.fh = icmp slt i64 %.3, 0
  br i1 %i.fh, label %.thread112, label %bb.bk

.thread112:                                       ; preds = %.thread120, %bb.ag, %bb.ae, %bb.v, %bb.ab, %bb.z, %bb.p, %bb.n, %bb.l, %bb.be, %bb.bf
  %.not124 = icmp eq i64 %i.aa, 0
  br i1 %.not124, label %.thread112.thread, label %bb.bg

bb.bg:                                            ; preds = %.thread112
  %i.fi = call i32 @H5I_dec_app_ref(i64 noundef %i.aa) #11
  %i.fj = icmp slt i32 %i.fi, 0
  br i1 %i.fj, label %bb.bh, label %.thread112.thread

bb.bh:                                            ; preds = %bb.bg
  %i.fk = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.fl = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !13
  %i.fm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D_get_create_plist, i32 noundef 3787, i64 noundef %i.fk, i64 noundef %i.fl, ptr noundef nonnull @.str.156) #11 ; 0 uses
  br label %.thread112.thread

.thread112.thread:                                ; preds = %bb.c, %bb.f, %bb.h, %bb.j, %bb.bg, %bb.bh, %.thread112
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !101 ; 2 uses
  %.not95 = icmp eq ptr %i.fo, null
  br i1 %.not95, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %.thread112.thread
  %i.fp = call i32 @H5T_close_real(ptr noundef nonnull %i.fo) #11
  %i.fq = icmp slt i32 %i.fp, 0
  br i1 %i.fq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.fr = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.fs = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !13
  %i.ft = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D_get_create_plist, i32 noundef 3790, i64 noundef %i.fr, i64 noundef %i.fs, ptr noundef nonnull @.str.157) #11 ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.d, %.thread112.thread, %bb.bi, %bb.bj, %bb.bf
  %.6 = phi i64 [ -1, %bb.bj ], [ -1, %bb.bi ], [ -1, %.thread112.thread ], [ %.3, %bb.bf ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret i64 %.6
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5D_flush_layout_to_dcpl(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5D_init_g, align 1, !tbaa !8
  %i.f = tail call i32 @H5D__init_package()
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10
  %.pre30 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre35 = trunc nuw i8 %.pre to i1
  %.pre36 = trunc nuw i8 %.pre30 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5D_init_g, align 1, !tbaa !8
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !13
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !13
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D_flush_layout_to_dcpl, i32 noundef 4095, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.3) #11 ; 0 uses
  br label %.thread25

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi37 = phi i1 [ %.pre36, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre35, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi37, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %.thread25, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !75
  %i.q = load i64, ptr @H5P_CLS_DATASET_CREATE_ID_g, align 8, !tbaa !13
  %i.r = tail call ptr @H5P_object_verify(i64 noundef %i.p, i64 noundef %i.q, i1 noundef zeroext true) #11 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.u = load i64, ptr @H5E_BADID_g, align 8, !tbaa !13
  %i.v = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D_flush_layout_to_dcpl, i32 noundef 4098, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.193) #11 ; 0 uses
  br label %.thread25

bb.g:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !55   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2832
  %i.y = load i8, ptr %i.x, align 8, !tbaa !90, !range !10, !noundef !11
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.split.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !75
  %i.ac = tail call zeroext i1 @H5P_is_default_plist(i64 noundef %i.ab) #11
  %.pre34 = load ptr, ptr %i.m, align 8, !tbaa !55 ; 4 uses
  br i1 %i.ac, label %.split.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre34, i64 248
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !61
  %i.af = icmp eq i32 %i.ae, 2                    ; 3 uses
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre34, i64 272 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !62
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !62
  %.pre31 = load ptr, ptr %i.m, align 8, !tbaa !55
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aj = phi ptr [ %.pre31, %bb.j ], [ %.pre34, %bb.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 248
  %i.al = tail call i32 @H5P_set(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.ak) #11
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %.split

.split.thread:                                    ; preds = %bb.h, %bb.g
  %i.an = phi ptr [ %.pre34, %bb.h ], [ %i.w, %bb.g ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2832
  store i8 1, ptr %i.ao, align 8, !tbaa !90
  br label %.thread25

.split:                                           ; preds = %bb.k
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !55  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2832
  store i8 1, ptr %i.aq, align 8, !tbaa !90
  br i1 %i.af, label %bb.m, label %.thread25

bb.l:                                             ; preds = %bb.k
  %i.ar = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.as = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !13
  %i.at = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D_flush_layout_to_dcpl, i32 noundef 4115, i64 noundef %i.ar, i64 noundef %i.as, ptr noundef nonnull @.str.194) #11 ; 0 uses
  br i1 %i.af, label %._crit_edge32, label %.thread25

._crit_edge32:                                    ; preds = %bb.l
  %.pre33 = load ptr, ptr %i.m, align 8, !tbaa !55
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge32, %.split
  %i.au = phi ptr [ %i.ap, %.split ], [ %.pre33, %._crit_edge32 ]
  %.0152028 = phi i32 [ 0, %.split ], [ -1, %._crit_edge32 ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 272 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !62
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !62
  br label %.thread25

.thread25:                                        ; preds = %bb.f, %bb.c, %.split.thread, %.split, %bb.l, %bb.m, %bb.d
  %.116 = phi i32 [ %.0152028, %bb.m ], [ -1, %bb.l ], [ 0, %bb.d ], [ 0, %.split.thread ], [ 0, %.split ], [ -1, %bb.c ], [ -1, %bb.f ]
  ret i32 %.116
}

declare i32 @H5O_get_create_plist(ptr noundef, ptr noundef) local_unnamed_addr #2

end_hunk_0
