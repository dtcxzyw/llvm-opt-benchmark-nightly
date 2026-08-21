inline.NumInlined: 159
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 41
begin_hunk_0_@vp3_decode_flush:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.d) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.e) #11
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @vp3_decode_init(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 47 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !168  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %switch.selectcmp = icmp ne i32 %i.d, 808669270
  %switch.select = zext i1 %switch.selectcmp to i32
  %switch.selectcmp300 = icmp eq i32 %i.d, 808734806
  %switch.select301 = select i1 %switch.selectcmp300, i32 3, i32 %switch.select
  store i32 %switch.select301, ptr %i.e, align 4, !tbaa !67
  store ptr %0, ptr %i.b, align 16, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.h = load <2 x i32>, ptr %i.f, align 8, !tbaa !29
  %i.i = add nsw <2 x i32> %i.h, splat (i32 15)
  %i.j = and <2 x i32> %i.i, splat (i32 -16)      ; 2 uses
  store <2 x i32> %i.j, ptr %i.g, align 8, !tbaa !29
  %i.k = extractelement <2 x i32> %i.j, i64 0
  %i.l = icmp slt i32 %i.k, 18
  br i1 %i.l, label %.thread246, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !169
  %.not = icmp eq i32 %i.n, 30
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.o, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 2, ptr %i.p, align 8, !tbaa !170
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !171
  %i.t = or i32 %i.s, 8388608
  tail call void @ff_hpeldsp_init(ptr noundef nonnull %i.q, i32 noundef %i.t) #11
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  tail call void @ff_videodsp_init(ptr noundef nonnull %i.u, i32 noundef 8) #11
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  tail call void @ff_vp3dsp_init(ptr noundef nonnull %i.v) #11
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  br label %bb.e

.preheader255:                                    ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 828
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.y, i8 -1, i64 12, i1 false), !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.ad = tail call i32 @av_pix_fmt_get_chroma_sub_sample(i32 noundef %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac) #11 ; 2 uses
  %.not226 = icmp eq i32 %i.ad, 0
  br i1 %.not226, label %bb.f, label %.thread246

bb.e:                                             ; preds = %bb.d, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.e ] ; 6 uses
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %i.af = lshr i32 %i.ae, 3
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ag = shl i32 %indvars.iv.tr, 3
  %i.ah = and i32 %i.ag, 56
  %i.ai = or disjoint i32 %i.ah, %i.af
  %i.aj = trunc nuw nsw i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %indvars.iv
  %i.am = load i8, ptr %i.al, align 1, !tbaa !51  ; 2 uses
  %i.an = lshr i8 %i.am, 3
  %i.ao = shl i8 %i.am, 3
  %i.ap = and i8 %i.ao, 56
  %i.aq = or i8 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.preheader255, label %bb.e, !llvm.loop !172

bb.f:                                             ; preds = %.preheader255
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 848
  %i.at = load <2 x i32>, ptr %i.g, align 8, !tbaa !29 ; 4 uses
  %i.au = add nsw <2 x i32> %i.at, splat (i32 31)
  %i.av = sdiv <2 x i32> %i.au, splat (i32 32)    ; 3 uses
  store <2 x i32> %i.av, ptr %i.as, align 16, !tbaa !29
  %i.aw = extractelement <2 x i32> %i.av, i64 0
  %i.ax = extractelement <2 x i32> %i.av, i64 1
  %i.ay = mul nsw i32 %i.ax, %i.aw                ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 856
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !173
  %i.ba = load i32, ptr %i.ab, align 16, !tbaa !119 ; 2 uses
  %i.bb = extractelement <2 x i32> %i.at, i64 0   ; 2 uses
  %i.bc = ashr i32 %i.bb, %i.ba                   ; 2 uses
  %i.bd = load i32, ptr %i.ac, align 4, !tbaa !118 ; 2 uses
  %i.be = extractelement <2 x i32> %i.at, i64 1   ; 2 uses
  %i.bf = ashr i32 %i.be, %i.bd                   ; 2 uses
  %i.bg = add nsw i32 %i.bc, 31
  %i.bh = sdiv i32 %i.bg, 32                      ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 860
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !174
  %i.bj = add nsw i32 %i.bf, 31
  %i.bk = sdiv i32 %i.bj, 32                      ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 864
  store i32 %i.bk, ptr %i.bl, align 16, !tbaa !132
  %i.bm = mul nsw i32 %i.bk, %i.bh                ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 868
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !175
  %i.bo = shl nsw i32 %i.bm, 1
  %i.bp = add nsw i32 %i.bo, %i.ay
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 844
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !91
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 872
  store i32 %i.ay, ptr %i.br, align 8, !tbaa !176
  %i.bs = add nsw i32 %i.bm, %i.ay
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 876
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !177
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 892
  %i.bv = add nsw <2 x i32> %i.at, splat (i32 15)
  %i.bw = sdiv <2 x i32> %i.bv, splat (i32 16)    ; 3 uses
  store <2 x i32> %i.bw, ptr %i.bu, align 4, !tbaa !29
  %i.bx = extractelement <2 x i32> %i.bw, i64 0
  %i.by = extractelement <2 x i32> %i.bw, i64 1
  %i.bz = mul nsw i32 %i.by, %i.bx                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 888
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !97
  %i.cb = add nsw i32 %i.bc, 15
  %i.cc = sdiv i32 %i.cb, 16                      ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 904
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !178
  %i.ce = add nsw i32 %i.bf, 15
  %i.cf = sdiv i32 %i.ce, 16                      ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 908
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !179
  %i.ch = mul nsw i32 %i.cf, %i.cc                ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 900
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !180
  %i.cj = shl nsw i32 %i.ch, 1
  %i.ck = add nsw i32 %i.cj, %i.bz
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  store i32 %i.ck, ptr %i.cl, align 16, !tbaa !105
  %i.cm = sdiv i32 %i.bb, 8                       ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 920
  store i32 %i.cm, ptr %i.cn, align 8, !tbaa !29
  %i.co = sdiv i32 %i.be, 8                       ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 928
  store i32 %i.co, ptr %i.cp, align 16, !tbaa !29
  %i.cq = ashr i32 %i.cm, %i.ba                   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 924
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !29
  %i.cs = ashr i32 %i.co, %i.bd                   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 932
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !29
  %i.cu = mul nsw i32 %i.co, %i.cm                ; 3 uses
  %i.cv = mul nsw i32 %i.cs, %i.cq                ; 2 uses
  %i.cw = shl nsw i32 %i.cv, 1
  %i.cx = add nsw i32 %i.cw, %i.cu
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 916
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !89
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 948
  store i32 %i.cu, ptr %i.cz, align 4, !tbaa !29
  %i.da = add nsw i32 %i.cv, %i.cu
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 952
  store i32 %i.da, ptr %i.db, align 8, !tbaa !29
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !167
  %.not227 = icmp eq i32 %i.dd, 0
  br i1 %.not227, label %.preheader254, label %.loopexit

.preheader254:                                    ; preds = %bb.f
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 992
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 1120
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 1248
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 1504
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 1632
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 37160
  %.pre = load i32, ptr %i.de, align 4, !tbaa !67
  %i.dm = icmp slt i32 %.pre, 2                   ; 7 uses
  %.in231.in.v = select i1 %i.dm, ptr @vp31_ac_scale_factor, ptr @vp4_ac_scale_factor
  %.in235.in.v = select i1 %i.dm, ptr @vp31_filter_limit_values, ptr @vp4_filter_limit_values
  br label %bb.g

.preheader253:                                    ; preds = %bb.g
  %i.dn = getelementptr i8, ptr %i.b, i64 26080
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 26086
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 26470
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.dn, i8 1, i64 6, i1 false), !tbaa !51
  br label %.preheader252

bb.g:                                             ; preds = %.preheader254, %bb.g
  %indvars.iv273 = phi i64 [ 0, %.preheader254 ], [ %indvars.iv.next274, %bb.g ] ; 17 uses
  %i.dq = getelementptr inbounds nuw i8, ptr @vp31_dc_scale_factor, i64 %indvars.iv273 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr @vp4_y_dc_scale_factor, i64 %indvars.iv273
  %.in.in = select i1 %i.dm, ptr %i.dq, ptr %i.dr
  %.in = load i8, ptr %.in.in, align 1, !tbaa !51
  %i.ds = zext i8 %.in to i16
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %indvars.iv273
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !68
  %i.du = getelementptr inbounds nuw i8, ptr @vp4_uv_dc_scale_factor, i64 %indvars.iv273
  %.in230.in = select i1 %i.dm, ptr %i.dq, ptr %i.du
  %.in230 = load i8, ptr %.in230.in, align 1, !tbaa !51
  %i.dv = zext i8 %.in230 to i16
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv273
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !68
  %.in231.in = getelementptr inbounds nuw [2 x i8], ptr %.in231.in.v, i64 %indvars.iv273
  %.in231 = load i16, ptr %.in231.in, align 2, !tbaa !68
  %i.dx = zext i16 %.in231 to i32
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv273
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !29
  %i.dz = getelementptr inbounds nuw i8, ptr @vp31_intra_y_dequant, i64 %indvars.iv273
  %i.ea = getelementptr inbounds nuw i8, ptr @vp4_generic_dequant, i64 %indvars.iv273 ; 3 uses
  %.in232.in = select i1 %i.dm, ptr %i.dz, ptr %i.ea
  %.in232 = load i8, ptr %.in232.in, align 1, !tbaa !51
  %i.eb = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv273
  store i8 %.in232, ptr %i.eb, align 1, !tbaa !51
  %i.ec = getelementptr inbounds nuw i8, ptr @ff_mjpeg_std_chrominance_quant_tbl, i64 %indvars.iv273
  %.in233.in = select i1 %i.dm, ptr %i.ec, ptr %i.ea
  %.in233 = load i8, ptr %.in233.in, align 1, !tbaa !51
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv273
  store i8 %.in233, ptr %i.ed, align 1, !tbaa !51
  %i.ee = getelementptr inbounds nuw i8, ptr @vp31_inter_dequant, i64 %indvars.iv273
  %.in234.in = select i1 %i.dm, ptr %i.ee, ptr %i.ea
  %.in234 = load i8, ptr %.in234.in, align 1, !tbaa !51
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv273
  store i8 %.in234, ptr %i.ef, align 1, !tbaa !51
  %.in235.in = getelementptr inbounds nuw i8, ptr %.in235.in.v, i64 %indvars.iv273
  %.in235 = load i8, ptr %.in235.in, align 1, !tbaa !51
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv273
  store i8 %.in235, ptr %i.eg, align 1, !tbaa !51
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next274, 64
  br i1 %exitcond276.not, label %.preheader253, label %bb.g, !llvm.loop !181

.preheader252:                                    ; preds = %.preheader253, %bb.h
  %i.eh = phi i1 [ true, %.preheader253 ], [ false, %bb.h ]
  %indvars.iv281 = phi i64 [ 0, %.preheader253 ], [ 1, %bb.h ] ; 4 uses
  %i.ei = getelementptr inbounds nuw [192 x i8], ptr %i.do, i64 %indvars.iv281
  %i.ej = trunc nuw nsw i64 %indvars.iv281 to i16
  %i.ek = xor i16 %i.ej, 1
  %i.el = getelementptr inbounds nuw [384 x i8], ptr %i.dp, i64 %indvars.iv281
  %indvars.iv281.tr = trunc nuw nsw i64 %indvars.iv281 to i16
  %i.em = shl nuw nsw i16 %indvars.iv281.tr, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  br i1 %i.eh, label %.preheader252, label %.loopexit, !llvm.loop !182

bb.i:                                             ; preds = %.preheader252, %bb.i
  %indvars.iv277 = phi i64 [ 0, %.preheader252 ], [ %indvars.iv.next278, %bb.i ] ; 4 uses
  %i.en = getelementptr inbounds nuw [64 x i8], ptr %i.ei, i64 %indvars.iv277
  store i8 63, ptr %i.en, align 2, !tbaa !51
  %.not229 = icmp eq i64 %indvars.iv277, 0
  %i.eo = select i1 %.not229, i16 0, i16 %i.ek
  %i.ep = or disjoint i16 %i.eo, %i.em            ; 2 uses
  %i.eq = getelementptr inbounds nuw [128 x i8], ptr %i.el, i64 %indvars.iv277 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  store i16 %i.ep, ptr %i.er, align 2, !tbaa !68
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !68
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %exitcond280.not = icmp eq i64 %indvars.iv.next278, 3
  br i1 %exitcond280.not, label %bb.h, label %bb.i, !llvm.loop !183

.loopexit:                                        ; preds = %bb.h, %bb.f
  %i.es = tail call i32 @ff_thread_sync_ref(ptr noundef %0, i64 noundef 29616) #11
  %.not236 = icmp eq i32 %i.es, 0
  br i1 %.not236, label %.thread, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.et = tail call ptr @av_refstruct_alloc_ext_c(i64 noundef 2560, i32 noundef 0, ptr null, ptr noundef nonnull @free_vlc_tables) #11 ; 6 uses
  %.not237 = icmp eq ptr %i.et, null
  br i1 %.not237, label %.thread246, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 29616
  store ptr %i.et, ptr %i.eu, align 16, !tbaa !184
  %i.ev = load i32, ptr %i.dc, align 4, !tbaa !167
  %.not238 = icmp eq i32 %i.ev, 0
  br i1 %.not238, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 31960
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 640
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !67
  %i.fa = icmp sgt i32 %i.ez, 1
  %i.fb = select i1 %i.fa, ptr @vp4_bias, ptr @vp3_bias
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 640
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.n
  %indvars.iv288 = phi i64 [ 0, %bb.l ], [ %indvars.iv.next289, %bb.n ] ; 4 uses
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv288 ; 2 uses
  %i.fe = getelementptr inbounds nuw [64 x i8], ptr %i.fb, i64 %indvars.iv288 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  %i.fg = tail call i32 @ff_vlc_init_from_lengths(ptr noundef nonnull %i.fd, i32 noundef 11, i32 noundef 32, ptr noundef nonnull %i.ff, i32 noundef 2, ptr noundef nonnull %i.fe, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %0) #11 ; 2 uses
  %i.fh = icmp slt i32 %i.fg, 0
  br i1 %i.fh, label %.thread246, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !185
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv288
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !108
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond291 = icmp eq i64 %indvars.iv.next289, 80
  br i1 %exitcond291, label %.thread, label %bb.m, !llvm.loop !187

bb.o:                                             ; preds = %.preheader, %bb.p
  %indvars.iv284 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next285, %bb.p ] ; 4 uses
  %i.fl = getelementptr inbounds nuw [65 x i8], ptr %i.ew, i64 %indvars.iv284 ; 3 uses
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.ex, i64 %indvars.iv284 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 64
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !188
  %i.fp = zext i8 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fr = tail call i32 @ff_vlc_init_from_lengths(ptr noundef nonnull %i.fm, i32 noundef 11, i32 noundef %i.fp, ptr noundef nonnull %i.fl, i32 noundef 2, ptr noundef nonnull %i.fq, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %0) #11 ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, -1
  br i1 %i.fs, label %bb.p, label %.thread246

bb.p:                                             ; preds = %bb.o
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !185
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv284
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !108
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond287 = icmp eq i64 %indvars.iv.next285, 80
  br i1 %exitcond287, label %.thread, label %bb.o, !llvm.loop !190

.thread:                                          ; preds = %bb.p, %bb.n, %.loopexit
  %i.fw = tail call i32 @pthread_once(ptr noundef nonnull @vp3_decode_init.init_static_once, ptr noundef nonnull @init_tables_once) #11 ; 0 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.fx = tail call fastcc i32 @allocate_tables(ptr %.val) #12
  br label %.thread246

.thread246:                                       ; preds = %bb.o, %bb.m, %bb.j, %.preheader255, %bb.a, %.thread
  %.6 = phi i32 [ %i.ad, %.preheader255 ], [ -1163346256, %bb.a ], [ %i.fx, %.thread ], [ -12, %bb.j ], [ %i.fg, %bb.m ], [ %i.fr, %bb.o ]
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @ff_progress_frame_replace(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @avpriv_split_xiph_headers(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @theora_decode_header(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 8 uses
  %i.c = getelementptr i8, ptr %1, i64 8          ; 23 uses
  %.val = load i32, ptr %i.c, align 8, !tbaa !50  ; 4 uses
  %i.d = getelementptr i8, ptr %1, i64 12
  %.val128 = load i32, ptr %i.d, align 4, !tbaa !48
  %i.e = sub nsw i32 %.val128, %.val
  %i.f = icmp slt i32 %i.e, 206
  br i1 %i.f, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i32 0, ptr %i.g, align 16, !tbaa !191
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !49
  %i.j = load ptr, ptr %1, align 8, !tbaa !46
  %i.k = lshr i32 %.val, 3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 1, !tbaa !51
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  %i.p = and i32 %.val, 7
  %i.q = shl i32 %i.o, %i.p
  %i.r = lshr i32 %i.q, 8                         ; 2 uses
  %i.s = add i32 %.val, 24
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.i, i32 %i.s)
  store i32 %i.t, ptr %i.c, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  store i32 %i.r, ptr %i.u, align 8, !tbaa !42
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.11, i32 noundef %i.r) #11
  %i.v = load i32, ptr %i.u, align 8, !tbaa !42   ; 2 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.u, align 8, !tbaa !42
  %i.w = load ptr, ptr %i.b, align 16, !tbaa !57
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.w, ptr noundef nonnull @.str.12) #11
  %.pr = load i32, ptr %i.u, align 8, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = phi i32 [ %.pr, %bb.c ], [ %i.v, %bb.b ]
  %i.y = icmp slt i32 %i.x, 197120
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 816
  store i32 1, ptr %i.z, align 16, !tbaa !130
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.13) #11
  %.pre = load i32, ptr %i.u, align 8, !tbaa !42
  %i.aa = icmp sgt i32 %.pre, 197119
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = phi i1 [ %i.aa, %bb.e ], [ true, %bb.d ]
  %i.ac = load i32, ptr %i.c, align 8, !tbaa !50  ; 3 uses
  %i.ad = load i32, ptr %i.h, align 8, !tbaa !49  ; 6 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !46    ; 6 uses
  %i.af = lshr i32 %i.ac, 3
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !51
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = and i32 %i.ac, 7
  %i.al = shl i32 %i.aj, %i.ak
  %i.am = add i32 %i.ac, 16
  %i.an = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 %i.am) ; 4 uses
  store i32 %i.an, ptr %i.c, align 8, !tbaa !50
  %i.ao = lshr i32 %i.al, 12
  %i.ap = and i32 %i.ao, 1048560                  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !136
  %i.ar = lshr i32 %i.an, 3
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.as
  %i.au = load i32, ptr %i.at, align 1, !tbaa !51
  %i.av = tail call i32 @llvm.bswap.i32(i32 %i.au)
  %i.aw = and i32 %i.an, 7
  %i.ax = shl i32 %i.av, %i.aw
  %i.ay = add i32 %i.an, 16
  %i.az = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 %i.ay) ; 4 uses
  store i32 %i.az, ptr %i.c, align 8, !tbaa !50
  %i.ba = lshr i32 %i.ax, 12
  %i.bb = and i32 %i.ba, 1048560                  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 5 uses
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !129
  br i1 %i.ab, label %bb.g, label %bb.h

end_hunk_0
