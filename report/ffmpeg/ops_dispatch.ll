Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ops_dispatch?download=true
inline.NumInlined: 28
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@compile_subpass:bb.a
  %i.ai = extractelement <4 x i1> %i.v, i64 3
  br i1 %i.ai, label %ff_sws_comp_mask_print.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %.1.2.i67, i64 1
  store i8 119, ptr %.1.2.i67, align 1, !tbaa !37
  br label %ff_sws_comp_mask_print.exit

ff_sws_comp_mask_print.exit:                      ; preds = %bb.l, %bb.m
  %.1.3.i69 = phi ptr [ %i.aj, %bb.m ], [ %.1.2.i67, %bb.l ]
  store i8 0, ptr %.1.3.i69, align 1, !tbaa !37
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.g, i32 noundef 48, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.d) #10
  %i.ak = call fastcc i32 @compile_subpass(ptr noundef %0, ptr noundef %i.a, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.c) ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.thread, label %bb.n

bb.n:                                             ; preds = %ff_sws_comp_mask_print.exit
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.an = call fastcc i32 @compile_subpass(ptr noundef %0, ptr noundef %i.b, ptr noundef %i.am, ptr noundef %3, ptr noundef %4) ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.thread, label %.thread74

bb.o:                                             ; preds = %._crit_edge, %bb.a
  %i.ap = phi ptr [ %.pre104, %._crit_edge ], [ %i.g, %bb.a ] ; 4 uses
  %i.aq = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.a ] ; 2 uses
  %i.ar = call noalias ptr @av_mallocz(i64 noundef 752) #10 ; 51 uses
  %.not.i70 = icmp eq ptr %i.ar, null
  br i1 %.not.i70, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = load ptr, ptr %0, align 8, !tbaa !59    ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %bb.q, label %ff_sws_ops_compile.exit.i

bb.q:                                             ; preds = %bb.p
  %i.at = call i32 @ff_sws_enabled_backends(ptr noundef %i.ap) #10
  %i.au = load ptr, ptr @ff_sws_op_backends, align 8, !tbaa !9 ; 2 uses
  %.not2832.i.i = icmp eq ptr %i.au, null
  br i1 %.not2832.i.i, label %ff_sws_ops_compile.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 172
  br label %bb.r

bb.r:                                             ; preds = %.critedge.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.critedge.i.i ]
  %i.ax = phi ptr [ %i.au, %.lr.ph.i.i ], [ %i.bi, %.critedge.i.i ] ; 3 uses
  %i.ay = load i32, ptr %i.av, align 4, !tbaa !12 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !22
  %.not29.i.i = icmp eq i32 %i.ay, %i.ba
  br i1 %.not29.i.i, label %bb.s, label %.critedge.i.i

bb.s:                                             ; preds = %bb.r
  %i.bb = load i32, ptr %i.aw, align 4, !tbaa !25
  %.not30.i.i = icmp eq i32 %i.bb, %i.ay
  br i1 %.not30.i.i, label %bb.t, label %.critedge.i.i

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !26
  %i.be = and i32 %i.bd, %i.at
  %.not31.i.i = icmp eq i32 %i.be, 0
  br i1 %.not31.i.i, label %.critedge.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = call fastcc i32 @compile_backend(ptr noundef %i.ap, ptr noundef %i.ax, ptr noundef nonnull %i.h, ptr noundef %i.ar)
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %.critedge.i.i, label %ff_sws_ops_compile.exit.thread241.i

.critedge.i.i:                                    ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @ff_sws_op_backends, i64 %indvars.iv.next.i.i
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !9  ; 2 uses
  %.not28.i.i = icmp eq ptr %i.bi, null
  br i1 %.not28.i.i, label %ff_sws_ops_compile.exit.thread.i, label %bb.r, !llvm.loop !27

ff_sws_ops_compile.exit.i:                        ; preds = %bb.p
  %i.bj = call fastcc i32 @compile_backend(ptr noundef %i.ap, ptr noundef %i.as, ptr noundef %i.h, ptr noundef nonnull %i.ar) ; 3 uses
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %ff_sws_ops_compile.exit.thread.i, label %ff_sws_ops_compile.exit.thread241.i

ff_sws_ops_compile.exit.thread241.i:              ; preds = %bb.u, %ff_sws_ops_compile.exit.i
  %.4.i243.i = phi i32 [ %i.bj, %ff_sws_ops_compile.exit.i ], [ 0, %bb.u ]
  %i.bl = load i32, ptr %i.i, align 8, !tbaa !63
  %i.bm = and i32 %i.bl, 2
  %.not226.i = icmp eq i32 %i.bm, 0
  br i1 %.not226.i, label %bb.v, label %ff_sws_ops_compile.exit.thread.i

bb.v:                                             ; preds = %ff_sws_ops_compile.exit.thread241.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 152 ; 3 uses
  %.not227.i = icmp eq ptr %2, null
  br i1 %.not227.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !66
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !69
  %i.bs = icmp eq i32 %i.bp, %i.br
  br i1 %i.bs, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.7, i32 noundef 545) #10
  call void @abort() #11
  unreachable

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !70, !range !75, !noundef !76
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.sroa.096.0.copyload.i = load ptr, ptr %i.ar, align 8, !tbaa !37
  %.sroa.498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.498.0.copyload.i = load ptr, ptr %.sroa.498.0..sroa_idx.i, align 8, !tbaa !9
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !39
  %.sroa.699.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %.sroa.699.0.copyload.i = load ptr, ptr %.sroa.699.0..sroa_idx.i, align 8, !tbaa !40
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !40
  call void @av_free(ptr noundef nonnull %i.ar) #10
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !69
  %i.by = load i32, ptr %i.bn, align 8, !tbaa !77
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 156
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !78
  %i.cb = call i32 @ff_sws_graph_add_pass(ptr noundef nonnull %i.aq, i32 noundef %i.bx, i32 noundef %i.by, i32 noundef %i.ca, ptr noundef %3, i32 noundef 0, i32 noundef %.sroa.5.0.copyload.i, ptr noundef %.sroa.096.0.copyload.i, ptr noundef null, ptr noundef %.sroa.699.0.copyload.i, ptr noundef %.sroa.7.0.copyload.i, ptr noundef %4) #10 ; 3 uses
  %i.cc = icmp sgt i32 %i.cb, -1
  br i1 %i.cc, label %bb.aa, label %compile_single.exit

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.498.0.copyload.i, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !26
  %i.cf = load ptr, ptr %4, align 8, !tbaa !58    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i32 %i.ce, ptr %i.cg, align 8, !tbaa !79
  call void @ff_sws_pass_link_output(ptr noundef %i.cf, ptr noundef %2) #10
  br label %.thread

bb.ab:                                            ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !69
  %i.cj = call ptr @av_pix_fmt_desc_get(i32 noundef %i.ci) #10 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 168 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !69
  %i.cm = call ptr @av_pix_fmt_desc_get(i32 noundef %i.cl) #10 ; 2 uses
  %i.cn = call ptr @ff_sws_op_list_output(ptr noundef %i.h) #10 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !37
  %i.cq = icmp eq i32 %i.cp, 2
  br i1 %i.cq, label %rw_data_planes.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cr = call i32 @ff_sws_rw_op_planes(ptr noundef nonnull %i.cn) #10
  br label %rw_data_planes.exit.i

rw_data_planes.exit.i:                            ; preds = %bb.ac, %bb.ab
  %i.cs = phi i32 [ %i.cr, %bb.ac ], [ 1, %bb.ab ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ar, i64 660 ; 3 uses
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !80
  %i.cu = load i32, ptr %i.co, align 8, !tbaa !37
  switch i32 %i.cu, label %bb.af [
    i32 2, label %rw_pixel_bits.exit.i
    i32 0, label %bb.ad
    i32 1, label %bb.ae
  ]

bb.ad:                                            ; preds = %rw_data_planes.exit.i
  br label %bb.af

bb.ae:                                            ; preds = %rw_data_planes.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cw = load i8, ptr %i.cv, align 4, !tbaa !37
  %i.cx = zext i8 %i.cw to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %rw_data_planes.exit.i
  %.08.i.i = phi i32 [ 0, %rw_data_planes.exit.i ], [ 1, %bb.ad ], [ %i.cx, %bb.ae ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !81
  %i.da = call i32 @ff_sws_pixel_type_size(i32 noundef %i.cz) #12
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 13
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !37
  %i.dd = zext nneg i8 %i.dc to i32
  %i.de = lshr i32 8, %i.dd
  %i.df = mul nsw i32 %i.da, %.08.i.i
  %i.dg = mul nsw i32 %i.df, %i.de
  br label %rw_pixel_bits.exit.i

rw_pixel_bits.exit.i:                             ; preds = %bb.af, %rw_data_planes.exit.i
  %.0.i.i = phi i32 [ %i.dg, %bb.af ], [ 8, %rw_data_planes.exit.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ar, i64 668 ; 3 uses
  store i32 %.0.i.i, ptr %i.dh, align 4, !tbaa !83
  %i.di = getelementptr inbounds nuw i8, ptr %i.ar, i64 704 ; 2 uses
  store i32 -1, ptr %i.di, align 8, !tbaa !84
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %5 = getelementptr inbounds nuw i8, ptr %i.h, i64 156
  %.sroa.2.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.ar, i64 280
  %6 = load <2 x i32>, ptr %i.bn, align 8, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.dj, i8 0, i64 192, i1 false)
  store <2 x i32> %6, ptr %.sroa.2.0..sroa_idx.i.a, align 8, !tbaa !39
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i, i8 0, i64 72, i1 false)
  %i.dk = call ptr @ff_sws_op_list_input(ptr noundef nonnull %i.h) #10 ; 8 uses
  %.not228.i = icmp eq ptr %i.dk, null            ; 3 uses
  br i1 %.not228.i, label %rw_pixel_bits.exit._crit_edge.i, label %bb.ag

rw_pixel_bits.exit._crit_edge.i:                  ; preds = %rw_pixel_bits.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 664
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !85
  br label %bb.am

bb.ag:                                            ; preds = %rw_pixel_bits.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !37
  %i.dn = icmp eq i32 %i.dm, 2
  br i1 %i.dn, label %rw_data_planes.exit235.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.do = call i32 @ff_sws_rw_op_planes(ptr noundef nonnull %i.dk) #10
  br label %rw_data_planes.exit235.i

rw_data_planes.exit235.i:                         ; preds = %bb.ah, %bb.ag
  %i.dp = phi i32 [ %i.do, %bb.ah ], [ 1, %bb.ag ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ar, i64 656
  store i32 %i.dp, ptr %i.dq, align 8, !tbaa !86
  %i.dr = load i32, ptr %i.dl, align 8, !tbaa !37
  switch i32 %i.dr, label %bb.ak [
    i32 2, label %rw_pixel_bits.exit238.i
    i32 0, label %bb.ai
    i32 1, label %bb.aj
  ]

bb.ai:                                            ; preds = %rw_data_planes.exit235.i
  br label %bb.ak

bb.aj:                                            ; preds = %rw_data_planes.exit235.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.dt = load i8, ptr %i.ds, align 4, !tbaa !37
  %i.du = zext i8 %i.dt to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %rw_data_planes.exit235.i
  %.08.i236.i = phi i32 [ 0, %rw_data_planes.exit235.i ], [ 1, %bb.ai ], [ %i.du, %bb.aj ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !81
  %i.dx = call i32 @ff_sws_pixel_type_size(i32 noundef %i.dw) #12
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 13
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !37
  %i.ea = zext nneg i8 %i.dz to i32
  %i.eb = lshr i32 8, %i.ea
  %i.ec = mul nsw i32 %i.dx, %.08.i236.i
  %i.ed = mul nsw i32 %i.ec, %i.eb
  br label %rw_pixel_bits.exit238.i

rw_pixel_bits.exit238.i:                          ; preds = %bb.ak, %rw_data_planes.exit235.i
  %.0.i237.i = phi i32 [ %i.ed, %bb.ak ], [ 8, %rw_data_planes.exit235.i ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ar, i64 664
  store i32 %.0.i237.i, ptr %i.ee, align 8, !tbaa !85
  %i.ef = load i32, ptr %i.dl, align 8, !tbaa !37
  %i.eg = icmp eq i32 %i.ef, 2
  br i1 %i.eg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %rw_pixel_bits.exit238.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.h, i64 289
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !37
  %i.ej = zext i8 %i.ei to i32
  store i32 %i.ej, ptr %i.di, align 8, !tbaa !84
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %rw_pixel_bits.exit238.i, %rw_pixel_bits.exit._crit_edge.i
  %i.ek = phi i32 [ %.pre.i, %rw_pixel_bits.exit._crit_edge.i ], [ %.0.i237.i, %rw_pixel_bits.exit238.i ], [ %.0.i237.i, %bb.al ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !41 ; 3 uses
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ar, i64 664 ; 2 uses
  %i.ep = sext i32 %i.ek to i64
  %i.eq = mul nsw i64 %i.en, %i.ep                ; 2 uses
  %i.er = load i32, ptr %i.dh, align 4, !tbaa !83
  %i.es = sext i32 %i.er to i64
  %i.et = mul nsw i64 %i.es, %i.en                ; 2 uses
  %i.eu = and i64 %i.eq, 7
  %.not229.i = icmp eq i64 %i.eu, 0
  %i.ev = and i64 %i.et, 7
  %.not230.i = icmp eq i64 %i.ev, 0
  %or.cond.i = select i1 %.not229.i, i1 %.not230.i, i1 false
  br i1 %or.cond.i, label %.preheader263.i, label %bb.an

.preheader263.i:                                  ; preds = %bb.am
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ar, i64 688
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ar, i64 672 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ar, i64 656 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ex, i8 -1, i64 32, i1 false)
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !86
  %i.fa = icmp sgt i32 %i.ez, 0
  br i1 %i.fa, label %.lr.ph.i, label %.preheader261.i

bb.an:                                            ; preds = %bb.am
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ap, i32 noundef 16, ptr noundef nonnull @.str.12) #10
  br label %ff_sws_ops_compile.exit.thread.i

.lr.ph.i:                                         ; preds = %.preheader263.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cj, i64 9
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cj, i64 10
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ar, i64 336
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ar, i64 328
  %i.fg = lshr exact i64 %i.eq, 3
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ar, i64 296
  br label %bb.ao

.preheader261.i:                                  ; preds = %bb.aq, %.preheader263.i
  %i.fj = load i32, ptr %i.ct, align 4, !tbaa !80
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %.lr.ph268.i, label %._crit_edge.i

.lr.ph268.i:                                      ; preds = %.preheader261.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 292
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cm, i64 9
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cm, i64 10
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ar, i64 340
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ar, i64 332
  %i.fq = lshr exact i64 %i.et, 3
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ar, i64 312
  br label %bb.ar

bb.ao:                                            ; preds = %bb.aq, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.aq ] ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv.i
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !37  ; 2 uses
  %i.fv = zext i8 %i.fu to i32
  %i.fw = add i8 %i.fu, -1
  %i.fx = icmp ult i8 %i.fw, 2
  br i1 %i.fx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fy = load i8, ptr %i.fc, align 1, !tbaa !87
  %i.fz = load i8, ptr %i.fd, align 2, !tbaa !89
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ga = phi i8 [ %i.fy, %bb.ap ], [ 0, %bb.ao ]
  %i.gb = phi i8 [ %i.fz, %bb.ap ], [ 0, %bb.ao ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fe, i64 %indvars.iv.i
  store i8 %i.ga, ptr %i.gc, align 1, !tbaa !37
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ff, i64 %indvars.iv.i
  store i8 %i.gb, ptr %i.gd, align 1, !tbaa !37
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.i
  store i32 %i.fh, ptr %i.ge, align 4, !tbaa !39
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.i
  store i32 %i.fv, ptr %i.gf, align 4, !tbaa !39
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gg = load i32, ptr %i.ey, align 8, !tbaa !86
  %i.gh = sext i32 %i.gg to i64
  %i.gi = icmp slt i64 %indvars.iv.next.i, %i.gh
  br i1 %i.gi, label %bb.ao, label %.preheader261.i, !llvm.loop !90

._crit_edge.i:                                    ; preds = %bb.at, %.preheader261.i
  br i1 %.not228.i, label %.critedge.i, label %bb.au

bb.ar:                                            ; preds = %bb.at, %.lr.ph268.i
  %indvars.iv285.i = phi i64 [ 0, %.lr.ph268.i ], [ %indvars.iv.next286.i, %bb.at ] ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv285.i
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !37  ; 2 uses
  %i.gl = zext i8 %i.gk to i32
  %i.gm = add i8 %i.gk, -1
  %i.gn = icmp ult i8 %i.gm, 2
  br i1 %i.gn, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.go = load i8, ptr %i.fm, align 1, !tbaa !87
  %i.gp = load i8, ptr %i.fn, align 2, !tbaa !89
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gq = phi i8 [ %i.go, %bb.as ], [ 0, %bb.ar ]
  %i.gr = phi i8 [ %i.gp, %bb.as ], [ 0, %bb.ar ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fo, i64 %indvars.iv285.i
  store i8 %i.gq, ptr %i.gs, align 1, !tbaa !37
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fp, i64 %indvars.iv285.i
  store i8 %i.gr, ptr %i.gt, align 1, !tbaa !37
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv285.i
  store i32 %i.fr, ptr %i.gu, align 4, !tbaa !39
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv285.i
  store i32 %i.gl, ptr %i.gv, align 4, !tbaa !39
  %indvars.iv.next286.i = add nuw nsw i64 %indvars.iv285.i, 1 ; 2 uses
  %i.gw = load i32, ptr %i.ct, align 4, !tbaa !80
  %i.gx = sext i32 %i.gw to i64
  %i.gy = icmp slt i64 %indvars.iv.next286.i, %i.gx
  br i1 %i.gy, label %bb.ar, label %._crit_edge.i, !llvm.loop !91

bb.au:                                            ; preds = %._crit_edge.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !37 ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !37
  switch i32 %i.hc, label %.critedge.i [
    i32 17, label %bb.av
    i32 16, label %bb.ax
  ]

end_hunk_0
