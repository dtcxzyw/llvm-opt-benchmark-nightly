inline.NumInlined: 7
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@render_bin_output_region_data_blocks:bb.a
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader203
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader203 ], [ %i.ba, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader203 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.095150.unr = phi i64 [ %.095150.ph, %.lr.ph.preheader203 ], [ %i.ba, %.lr.ph.prol ]
  %i.bb = add nsw i64 %i.p, -1
  %i.bc = icmp eq i64 %indvars.iv.ph, %i.bb
  br i1 %i.bc, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.bd = load i32, ptr @enable_error_stack, align 4, !tbaa !8
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.bf = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !9 ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, -1
  %i.bh = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, -1
  %or.cond3 = select i1 %i.bg, i1 %i.bi, i1 false
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = load i64, ptr @H5E_tools_g, align 8, !tbaa !9
  %i.bk = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !9
  %i.bl = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.bf, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.render_bin_output_region_data_blocks, i32 noundef 2070, i64 noundef %i.bh, i64 noundef %i.bj, i64 noundef %i.bk, ptr noundef nonnull @.str.109) #17 ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bn = tail call i64 @fwrite(ptr nonnull @.str.109, i64 34, i64 1, ptr %i.bm) #18 ; 0 uses
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc138 = tail call i32 @fputc(i32 10, ptr %i.bo) ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.095150 = phi i64 [ %i.ck, %.lr.ph ], [ %.095150.unr, %.lr.ph.prol.loopexit ]
  %i.bp = trunc nuw i64 %indvars.iv to i32
  %i.bq = add i32 %3, %i.bp
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !9
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !9
  %i.bw = sub i64 %i.bt, %i.bv
  %i.bx = add i64 %i.bw, 1                        ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !9
  %i.bz = mul i64 %i.bx, %.095150
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ca = trunc nuw i64 %indvars.iv.next to i32
  %i.cb = add i32 %3, %i.ca
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !9
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !9
  %i.ch = sub i64 %i.ce, %i.cg
  %i.ci = add i64 %i.ch, 1                        ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !9
  %i.ck = mul i64 %i.ci, %i.bz                    ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.p
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !90

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader149
  %.095.lcssa = phi i64 [ 1, %.preheader149 ], [ %i.ap, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ck, %.lr.ph ] ; 2 uses
  %i.cl = tail call i64 @H5Screate_simple(i32 noundef %3, ptr noundef nonnull %i.r, ptr noundef null) #17 ; 20 uses
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %bb.k, label %bb.o

bb.k:                                             ; preds = %._crit_edge
  %i.cn = load i32, ptr @enable_error_stack, align 4, !tbaa !8
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.cp = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !9 ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, -1
  %i.cr = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, -1
  %or.cond5 = select i1 %i.cq, i1 %i.cs, i1 false
  br i1 %or.cond5, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ct = load i64, ptr @H5E_tools_g, align 8, !tbaa !9
  %i.cu = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !9
  %i.cv = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.cp, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.render_bin_output_region_data_blocks, i32 noundef 2081, i64 noundef %i.cr, i64 noundef %i.ct, i64 noundef %i.cu, ptr noundef nonnull @.str.110) #17 ; 0 uses
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.cw = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.cx = tail call i64 @fwrite(ptr nonnull @.str.110, i64 23, i64 1, ptr %i.cw) #18 ; 0 uses
  %i.cy = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc137 = tail call i32 @fputc(i32 10, ptr %i.cy) ; 0 uses
  br label %.loopexit

bb.o:                                             ; preds = %._crit_edge
  %i.cz = tail call i64 @H5Tget_size(i64 noundef %4) #17 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.db = load i32, ptr @enable_error_stack, align 4, !tbaa !8
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.dd = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !9 ; 2 uses
  %i.de = icmp sgt i64 %i.dd, -1
  %i.df = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.dg = icmp sgt i64 %i.df, -1
  %or.cond7 = select i1 %i.de, i1 %i.dg, i1 false
  br i1 %or.cond7, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dh = load i64, ptr @H5E_tools_g, align 8, !tbaa !9
  %i.di = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !9
  %i.dj = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.dd, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.render_bin_output_region_data_blocks, i32 noundef 2084, i64 noundef %i.df, i64 noundef %i.dh, i64 noundef %i.di, ptr noundef nonnull @.str.96) #17 ; 0 uses
  br label %.loopexit

bb.s:                                             ; preds = %bb.q
  %i.dk = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dl = tail call i64 @fwrite(ptr nonnull @.str.96, i64 18, i64 1, ptr %i.dk) #18 ; 0 uses
  %i.dm = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc136 = tail call i32 @fputc(i32 10, ptr %i.dm) ; 0 uses
  br label %.loopexit

bb.t:                                             ; preds = %bb.o
  %i.dn = mul i64 %i.cz, %.095.lcssa
  %i.do = tail call noalias ptr @malloc(i64 noundef %i.dn) #21 ; 11 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.dq = load i32, ptr @enable_error_stack, align 4, !tbaa !8
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.ds = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !9 ; 2 uses
  %i.dt = icmp sgt i64 %i.ds, -1
  %i.du = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.dv = icmp sgt i64 %i.du, -1
  %or.cond9 = select i1 %i.dt, i1 %i.dv, i1 false
  br i1 %or.cond9, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dw = load i64, ptr @H5E_tools_g, align 8, !tbaa !9
  %i.dx = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !9
  %i.dy = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.ds, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.render_bin_output_region_data_blocks, i32 noundef 2087, i64 noundef %i.du, i64 noundef %i.dw, i64 noundef %i.dx, ptr noundef nonnull @.str.111) #17 ; 0 uses
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ea = tail call i64 @fwrite(ptr nonnull @.str.111, i64 32, i64 1, ptr %i.dz) #18 ; 0 uses
  %i.eb = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc135 = tail call i32 @fputc(i32 10, ptr %i.eb) ; 0 uses
  br label %.loopexit

bb.y:                                             ; preds = %bb.t
  %i.ec = tail call noalias ptr @malloc(i64 noundef %i.q) #21 ; 8 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.ee = load i32, ptr @enable_error_stack, align 4, !tbaa !8
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.eg = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !9 ; 2 uses
  %i.eh = icmp sgt i64 %i.eg, -1
  %i.ei = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ej = icmp sgt i64 %i.ei, -1
  %or.cond11 = select i1 %i.eh, i1 %i.ej, i1 false
  br i1 %or.cond11, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ek = load i64, ptr @H5E_tools_g, align 8, !tbaa !9
  %i.el = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !9
  %i.em = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.eg, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.render_bin_output_region_data_blocks, i32 noundef 2092, i64 noundef %i.ei, i64 noundef %i.ek, i64 noundef %i.el, ptr noundef nonnull @.str.112) #17 ; 0 uses
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  %i.en = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.eo = tail call i64 @fwrite(ptr nonnull @.str.112, i64 35, i64 1, ptr %i.en) #18 ; 0 uses
  %i.ep = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc134 = tail call i32 @fputc(i32 10, ptr %i.ep) ; 0 uses
  br label %.loopexit

bb.ad:                                            ; preds = %bb.y
  %i.eq = tail call noalias ptr @malloc(i64 noundef %i.q) #21 ; 5 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.ae, label %.preheader148

.preheader148:                                    ; preds = %bb.ad
  %.not157 = icmp eq i64 %5, 0
  br i1 %.not157, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader148
  %7 = shl nuw nsw i64 %i.p, 4
  br label %.preheader

bb.ae:                                            ; preds = %bb.ad
  %i.es = load i32, ptr @enable_error_stack, align 4, !tbaa !8
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.eu = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !9 ; 2 uses
  %i.ev = icmp sgt i64 %i.eu, -1
  %i.ew = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  %or.cond13 = select i1 %i.ev, i1 %i.ex, i1 false
  br i1 %or.cond13, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ey = load i64, ptr @H5E_tools_g, align 8, !tbaa !9
  %i.ez = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !9
  %i.fa = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.eu, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.render_bin_output_region_data_blocks, i32 noundef 2095, i64 noundef %i.ew, i64 noundef %i.ey, i64 noundef %i.ez, ptr noundef nonnull @.str.113) #17 ; 0 uses
  br label %.loopexit

bb.ah:                                            ; preds = %bb.af
  %i.fb = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fc = tail call i64 @fwrite(ptr nonnull @.str.113, i64 35, i64 1, ptr %i.fb) #18 ; 0 uses
  %i.fd = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc133 = tail call i32 @fputc(i32 10, ptr %i.fd) ; 0 uses
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.ba
  %.090156 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.hj, %bb.ba ] ; 2 uses
  br i1 %.not, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %.preheader
  %i.fe = mul i64 %7, %.090156
  %scevgep = getelementptr i8, ptr %6, i64 %i.fe
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr align 8 %scevgep, i64 %i.q, i1 false), !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eq, ptr nonnull align 8 %i.r, i64 %i.q, i1 false), !tbaa !9
  br label %._crit_edge154

._crit_edge154:                                   ; preds = %.lr.ph153, %.preheader
  %i.ff = call i32 @H5Sselect_hyperslab(i64 noundef %i.b, i32 noundef 0, ptr noundef nonnull %i.ec, ptr noundef null, ptr noundef nonnull %i.eq, ptr noundef null) #17
  %i.fg = icmp slt i32 %i.ff, 0
  br i1 %i.fg, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %._crit_edge154
  %i.fh = load i32, ptr @enable_error_stack, align 4, !tbaa !8
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %bb.aj, label %bb.ba

bb.aj:                                            ; preds = %bb.ai
  %i.fj = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !9 ; 2 uses
  %i.fk = icmp sgt i64 %i.fj, -1
  %i.fl = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.fm = icmp sgt i64 %i.fl, -1
  %or.cond15 = select i1 %i.fk, i1 %i.fm, i1 false
  br i1 %or.cond15, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fn = load i64, ptr @H5E_tools_g, align 8, !tbaa !9
  %i.fo = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !9
  %i.fp = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.fj, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.render_bin_output_region_data_blocks, i32 noundef 2104, i64 noundef %i.fl, i64 noundef %i.fn, i64 noundef %i.fo, ptr noundef nonnull @.str.114) #17 ; 0 uses
  br label %bb.ba

bb.al:                                            ; preds = %bb.aj
  %i.fq = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fr = call i64 @fwrite(ptr nonnull @.str.114, i64 26, i64 1, ptr %i.fq) #18 ; 0 uses
  %i.fs = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc132 = call i32 @fputc(i32 10, ptr %i.fs)  ; 0 uses
  br label %bb.ba

bb.am:                                            ; preds = %._crit_edge154
  %i.ft = call i32 @H5Dread(i64 noundef %0, i64 noundef %4, i64 noundef %i.cl, i64 noundef %i.b, i64 noundef 0, ptr noundef nonnull %i.do) #17
  %i.fu = icmp slt i32 %i.ft, 0
  br i1 %i.fu, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.fv = load i32, ptr @enable_error_stack, align 4, !tbaa !8
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %bb.ao, label %bb.ba

bb.ao:                                            ; preds = %bb.an
  %i.fx = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !9 ; 2 uses
  %i.fy = icmp sgt i64 %i.fx, -1
  %i.fz = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ga = icmp sgt i64 %i.fz, -1
  %or.cond17 = select i1 %i.fy, i1 %i.ga, i1 false
  br i1 %or.cond17, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gb = load i64, ptr @H5E_tools_g, align 8, !tbaa !9
  %i.gc = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !9
  %i.gd = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.fx, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.render_bin_output_region_data_blocks, i32 noundef 2107, i64 noundef %i.fz, i64 noundef %i.gb, i64 noundef %i.gc, ptr noundef nonnull @.str.115) #17 ; 0 uses
  br label %bb.ba

bb.aq:                                            ; preds = %bb.ao
  %i.ge = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gf = call i64 @fwrite(ptr nonnull @.str.115, i64 14, i64 1, ptr %i.ge) #18 ; 0 uses
  %i.gg = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc131 = call i32 @fputc(i32 10, ptr %i.gg)  ; 0 uses
  br label %bb.ba

bb.ar:                                            ; preds = %bb.am
  %i.gh = call i32 @H5Sget_simple_extent_dims(i64 noundef %i.cl, ptr noundef nonnull %i.a, ptr noundef null) #17
  %i.gi = icmp slt i32 %i.gh, 0
  br i1 %i.gi, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.gj = load i32, ptr @enable_error_stack, align 4, !tbaa !8
  %i.gk = icmp sgt i32 %i.gj, 0
  br i1 %i.gk, label %bb.at, label %bb.ba

bb.at:                                            ; preds = %bb.as
  %i.gl = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !9 ; 2 uses
  %i.gm = icmp sgt i64 %i.gl, -1
  %i.gn = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.go = icmp sgt i64 %i.gn, -1
  %or.cond19 = select i1 %i.gm, i1 %i.go, i1 false
  br i1 %or.cond19, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gp = load i64, ptr @H5E_tools_g, align 8, !tbaa !9
  %i.gq = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !9
  %i.gr = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.gl, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.render_bin_output_region_data_blocks, i32 noundef 2110, i64 noundef %i.gn, i64 noundef %i.gp, i64 noundef %i.gq, ptr noundef nonnull @.str.116) #17 ; 0 uses
  br label %bb.ba

bb.av:                                            ; preds = %bb.at
  %i.gs = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gt = call i64 @fwrite(ptr nonnull @.str.116, i64 32, i64 1, ptr %i.gs) #18 ; 0 uses
  %i.gu = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc130 = call i32 @fputc(i32 10, ptr %i.gu)  ; 0 uses
  br label %bb.ba

bb.aw:                                            ; preds = %bb.ar
  %i.gv = call i32 @render_bin_output(ptr noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef nonnull %i.do, i64 noundef %.095.lcssa)
  %i.gw = icmp slt i32 %i.gv, 0
  %i.gx = load i32, ptr @enable_error_stack, align 4
  %i.gy = icmp sgt i32 %i.gx, 0
  %or.cond143 = select i1 %i.gw, i1 %i.gy, i1 false
  br i1 %or.cond143, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.gz = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !9 ; 2 uses
  %i.ha = icmp sgt i64 %i.gz, -1
  %i.hb = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.hc = icmp sgt i64 %i.hb, -1
  %or.cond21 = select i1 %i.ha, i1 %i.hc, i1 false
  br i1 %or.cond21, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hd = load i64, ptr @H5E_tools_g, align 8, !tbaa !9
  %i.he = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !9
  %i.hf = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.gz, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.render_bin_output_region_data_blocks, i32 noundef 2113, i64 noundef %i.hb, i64 noundef %i.hd, i64 noundef %i.he, ptr noundef nonnull @.str.117) #17 ; 0 uses
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.hg = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hh = call i64 @fwrite(ptr nonnull @.str.117, i64 39, i64 1, ptr %i.hg) #18 ; 0 uses
  %i.hi = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc = call i32 @fputc(i32 10, ptr %i.hi)     ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az, %bb.au, %bb.av, %bb.as, %bb.ap, %bb.aq, %bb.an, %bb.ak, %bb.al, %bb.ai, %bb.aw
  %i.hj = add nuw i64 %.090156, 1                 ; 2 uses
  %exitcond163.not = icmp eq i64 %i.hj, %5
  br i1 %exitcond163.not, label %.loopexit, label %.preheader, !llvm.loop !91

.loopexit:                                        ; preds = %bb.ba, %.preheader148, %bb.ag, %bb.ah, %bb.ae, %bb.ab, %bb.ac, %bb.z, %bb.w, %bb.x, %bb.u, %bb.r, %bb.s, %bb.p, %bb.m, %bb.n, %bb.k, %bb.i, %bb.j, %bb.g, %bb.d, %bb.e, %bb.b
  %.098 = phi ptr [ %i.r, %bb.ag ], [ %i.r, %bb.ab ], [ %i.r, %bb.w ], [ %i.r, %bb.r ], [ %i.r, %bb.m ], [ null, %bb.i ], [ null, %bb.d ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.j ], [ %i.r, %bb.k ], [ %i.r, %bb.n ], [ %i.r, %bb.p ], [ %i.r, %bb.s ], [ %i.r, %bb.u ], [ %i.r, %bb.x ], [ %i.r, %bb.z ], [ %i.r, %bb.ac ], [ %i.r, %bb.ae ], [ %i.r, %bb.ah ], [ %i.r, %.preheader148 ], [ %i.r, %bb.ba ]
  %.097 = phi ptr [ %i.ec, %bb.ag ], [ null, %bb.ab ], [ null, %bb.w ], [ null, %bb.r ], [ null, %bb.m ], [ null, %bb.i ], [ null, %bb.d ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.n ], [ null, %bb.p ], [ null, %bb.s ], [ null, %bb.u ], [ null, %bb.x ], [ null, %bb.z ], [ null, %bb.ac ], [ %i.ec, %bb.ae ], [ %i.ec, %bb.ah ], [ %i.ec, %.preheader148 ], [ %i.ec, %bb.ba ]
  %.096 = phi ptr [ null, %bb.ag ], [ null, %bb.ab ], [ null, %bb.w ], [ null, %bb.r ], [ null, %bb.m ], [ null, %bb.i ], [ null, %bb.d ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.n ], [ null, %bb.p ], [ null, %bb.s ], [ null, %bb.u ], [ null, %bb.x ], [ null, %bb.z ], [ null, %bb.ac ], [ null, %bb.ae ], [ null, %bb.ah ], [ %i.eq, %.preheader148 ], [ %i.eq, %bb.ba ]
  %.092 = phi i64 [ %i.cl, %bb.ag ], [ %i.cl, %bb.ab ], [ %i.cl, %bb.w ], [ %i.cl, %bb.r ], [ %i.cl, %bb.m ], [ -1, %bb.i ], [ -1, %bb.d ], [ -1, %bb.b ], [ -1, %bb.e ], [ -1, %bb.g ], [ -1, %bb.j ], [ %i.cl, %bb.k ], [ %i.cl, %bb.n ], [ %i.cl, %bb.p ], [ %i.cl, %bb.s ], [ %i.cl, %bb.u ], [ %i.cl, %bb.x ], [ %i.cl, %bb.z ], [ %i.cl, %bb.ac ], [ %i.cl, %bb.ae ], [ %i.cl, %bb.ah ], [ %i.cl, %.preheader148 ], [ %i.cl, %bb.ba ]
  %.091 = phi ptr [ %i.do, %bb.ag ], [ %i.do, %bb.ab ], [ null, %bb.w ], [ null, %bb.r ], [ null, %bb.m ], [ null, %bb.i ], [ null, %bb.d ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.n ], [ null, %bb.p ], [ null, %bb.s ], [ null, %bb.u ], [ null, %bb.x ], [ %i.do, %bb.z ], [ %i.do, %bb.ac ], [ %i.do, %bb.ae ], [ %i.do, %bb.ah ], [ %i.do, %.preheader148 ], [ %i.do, %bb.ba ]
  call void @free(ptr noundef %.097) #17
  call void @free(ptr noundef %.096) #17
  call void @free(ptr noundef %.091) #17
  call void @free(ptr noundef %.098) #17
  %i.hk = call i32 @H5Sclose(i64 noundef %.092) #17
  %i.hl = icmp slt i32 %i.hk, 0
  %i.hm = load i32, ptr @enable_error_stack, align 4
  %i.hn = icmp sgt i32 %i.hm, 0
  %or.cond145 = select i1 %i.hl, i1 %i.hn, i1 false
  br i1 %or.cond145, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %.loopexit
  %i.ho = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !9 ; 2 uses
  %i.hp = icmp sgt i64 %i.ho, -1
  %i.hq = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.hr = icmp sgt i64 %i.hq, -1
  %or.cond23 = select i1 %i.hp, i1 %i.hr, i1 false
  br i1 %or.cond23, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.hs = load i64, ptr @H5E_tools_g, align 8, !tbaa !9
  %i.ht = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !9
  %i.hu = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.ho, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.render_bin_output_region_data_blocks, i32 noundef 2125, i64 noundef %i.hq, i64 noundef %i.hs, i64 noundef %i.ht, ptr noundef nonnull @.str.118) #17 ; 0 uses
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.hv = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hw = call i64 @fwrite(ptr nonnull @.str.118, i64 15, i64 1, ptr %i.hv) #18 ; 0 uses
  %i.hx = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc140 = call i32 @fputc(i32 10, ptr %i.hx)  ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %.loopexit
  %i.hy = call i32 @H5Sclose(i64 noundef %i.b) #17
  %i.hz = icmp slt i32 %i.hy, 0
  %i.ia = load i32, ptr @enable_error_stack, align 4
  %i.ib = icmp sgt i32 %i.ia, 0
  %or.cond147 = select i1 %i.hz, i1 %i.ib, i1 false
  br i1 %or.cond147, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.ic = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !9 ; 2 uses
  %i.id = icmp sgt i64 %i.ic, -1
  %i.ie = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.if = icmp sgt i64 %i.ie, -1
  %or.cond25 = select i1 %i.id, i1 %i.if, i1 false
  br i1 %or.cond25, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ig = load i64, ptr @H5E_tools_g, align 8, !tbaa !9
  %i.ih = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !9
  %i.ii = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.ic, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.render_bin_output_region_data_blocks, i32 noundef 2127, i64 noundef %i.ie, i64 noundef %i.ig, i64 noundef %i.ih, ptr noundef nonnull @.str.118) #17 ; 0 uses
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.ij = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ik = call i64 @fwrite(ptr nonnull @.str.118, i64 15, i64 1, ptr %i.ij) #18 ; 0 uses
  %i.il = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc141 = call i32 @fputc(i32 10, ptr %i.il)  ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.be
end_hunk_0
