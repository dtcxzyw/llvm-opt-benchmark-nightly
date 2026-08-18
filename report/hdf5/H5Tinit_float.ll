inline.NumInlined: 13
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@H5T__init_native_float_types:bb.a
  %.not.i.2 = icmp sgt i8 %i.cd, -1
  br i1 %.not.i.2, label %.preheader.i.3, label %H5T__byte_cmp.exit

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !20
  %i.cg = and i8 %i.cf, 63
  %.not.i.3 = icmp eq i8 %i.cg, 0
  br i1 %.not.i.3, label %.preheader.i.1.1, label %H5T__byte_cmp.exit

H5T__byte_cmp.exit:                               ; preds = %.preheader.i.3, %.preheader.i.2
  %indvars.iv.i.lcssa = phi i32 [ 3, %.preheader.i.3 ], [ 2, %.preheader.i.2 ]
  store i32 %indvars.iv.i.lcssa, ptr %i.cb, align 4, !tbaa !13
  br label %.preheader.i.1.1

.preheader.i.1.1:                                 ; preds = %H5T__byte_cmp.exit, %.preheader.i.3
  %.1211.ph = phi i32 [ -1, %.preheader.i.3 ], [ 0, %H5T__byte_cmp.exit ]
  store float f0x3F808000, ptr %i.e, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !20
  %.not.i.1.1 = icmp sgt i8 %i.ci, -1
  br i1 %.not.i.1.1, label %.preheader.i.preheader.2, label %H5T__byte_cmp.exit.1

H5T__byte_cmp.exit.1:                             ; preds = %.preheader.i.1.1
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.cj, align 8, !tbaa !13
  br label %.preheader.i.preheader.2

.preheader.i.preheader.2:                         ; preds = %.preheader.i.1.1, %H5T__byte_cmp.exit.1
  %.1211.1.ph = phi i32 [ %.1211.ph, %.preheader.i.1.1 ], [ 1, %H5T__byte_cmp.exit.1 ] ; 2 uses
  %i.ck = load i8, ptr %i.f, align 4, !tbaa !20
  %.not.i.2396 = icmp sgt i8 %i.ck, -1            ; 2 uses
  br i1 %.not.i.2396, label %bb.v, label %.thread696

bb.v:                                             ; preds = %.preheader.i.preheader.2
  %i.cl = icmp slt i32 %.1211.1.ph, 1
  br i1 %i.cl, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 2 uses
  %i.cn = zext nneg i32 %.1211.1.ph to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cn ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !13 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.co, i64 -4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !13 ; 2 uses
  %i.cs = icmp slt i32 %i.cp, %i.cr
  br i1 %i.cs, label %.loopexit327.loopexit, label %bb.x

.thread696:                                       ; preds = %.preheader.i.preheader.2
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.ct, align 4, !tbaa !13
  store float f0x3F808080, ptr %i.e, align 4
  store float f0x2F800000, ptr %i.d, align 4, !tbaa !18
  store float f0x3F808080, ptr %i.c, align 4, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !13 ; 3 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = icmp slt i32 %i.cx, %i.da
  %or.cond770 = select i1 %i.cy, i1 %i.db, i1 false
  br i1 %or.cond770, label %.loopexit327.loopexit, label %bb.x

.loopexit327.loopexit:                            ; preds = %.thread696, %bb.w
  %i.dc = phi ptr [ %i.cu, %.thread696 ], [ %i.cm, %bb.w ] ; 2 uses
  store i32 0, ptr %i.dc, align 4, !tbaa !13
  br label %bb.ab

bb.x:                                             ; preds = %.thread696, %bb.w
  %i.dd = phi i32 [ %i.cx, %.thread696 ], [ %i.cr, %bb.w ] ; 2 uses
  %i.de = phi i32 [ 0, %.thread696 ], [ %i.cp, %bb.w ]
  %i.df = phi ptr [ %i.cv, %.thread696 ], [ %i.co, %bb.w ]
  %i.dg = phi ptr [ %i.cu, %.thread696 ], [ %i.cm, %bb.w ] ; 4 uses
  %i.dh = icmp sgt i32 %i.de, %i.dd
  br i1 %i.dh, label %bb.y, label %.loopexit327.loopexit373

bb.y:                                             ; preds = %bb.x
  br i1 %.not.i.2396, label %.loopexit327.loopexit372, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = getelementptr i8, ptr %i.df, i64 -8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !13
  %i.dk = icmp sgt i32 %i.dd, %i.dj
  br i1 %i.dk, label %.loopexit327.loopexit372, label %.loopexit327.loopexit373

.loopexit327.loopexit372:                         ; preds = %bb.z, %bb.y
  store i32 1, ptr %i.dg, align 4, !tbaa !13
  br label %bb.ab

.loopexit327.loopexit373:                         ; preds = %bb.z, %bb.x
  store i32 2, ptr %i.dg, align 4, !tbaa !13
  br label %bb.ab

bb.aa:                                            ; preds = %bb.v
  %i.dl = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !14
  %i.dm = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.dn = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__fix_order, i32 noundef 308, i64 noundef %i.dl, i64 noundef %i.dm, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %bb.ai

.loopexit327:                                     ; preds = %bb.u
  store float f0x3F808080, ptr %i.e, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  br label %bb.ae

bb.ab:                                            ; preds = %.loopexit327.loopexit373, %.loopexit327.loopexit372, %.loopexit327.loopexit
  %.ph703 = phi ptr [ %i.dg, %.loopexit327.loopexit373 ], [ %i.dg, %.loopexit327.loopexit372 ], [ %i.dc, %.loopexit327.loopexit ]
  %i.dq = phi <4 x i32> [ <i32 2, i32 3, i32 0, i32 1>, %.loopexit327.loopexit373 ], [ <i32 3, i32 2, i32 1, i32 0>, %.loopexit327.loopexit372 ], [ <i32 0, i32 1, i32 2, i32 3>, %.loopexit327.loopexit ]
  store <4 x i32> %i.dq, ptr %i.cb, align 4, !tbaa !13
  store float 5.000000e-01, ptr %i.c, align 4, !tbaa !18
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.dr = call fastcc i32 @H5T__bit_cmp(i32 noundef 4, ptr noundef nonnull readonly %i.cb, ptr noundef nonnull readonly %i.c, ptr noundef nonnull readonly %i.d, ptr noundef nonnull readonly %i.f, ptr noundef %i.b)
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 156 ; 2 uses
  %i.du = load i32, ptr %i.b, align 4, !tbaa !13
  %i.dv = add i32 %i.du, -1                       ; 2 uses
  %i.dw = lshr i32 %i.dv, 3
  %i.dx = and i32 %i.dv, 7
  %i.dy = zext nneg i32 %i.dw to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !13
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %i.c, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !20
  %i.ee = zext i8 %i.ed to i32
  %i.ef = xor i32 %i.ee, -1
  %i.eg = lshr i32 %i.ef, %i.dx
  %i.eh = and i32 %i.eg, 1                        ; 2 uses
  store i32 %i.eh, ptr %i.dt, align 4, !tbaa !13
  %i.ei = shl nuw nsw i32 %i.eh, 1
  %i.ej = xor i32 %i.ei, 2
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ek = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !14
  %i.el = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.em = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__imp_bit, i32 noundef 387, i64 noundef %i.ek, i64 noundef %i.el, ptr noundef nonnull @.str.12) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.ai

bb.ae:                                            ; preds = %.loopexit327, %bb.ac
  %i.en = phi ptr [ %i.dt, %bb.ac ], [ %i.dp, %.loopexit327 ] ; 10 uses
  %i.eo = phi ptr [ %.ph703, %bb.ac ], [ %i.do, %.loopexit327 ] ; 8 uses
  %.not224 = phi i32 [ %i.ej, %bb.ac ], [ 2, %.loopexit327 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 8 uses
  store i32 %.not224, ptr %i.ep, align 8, !tbaa !23
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !18
  store float -1.000000e+00, ptr %i.d, align 4, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 12 uses
  %i.er = call fastcc i32 @H5T__bit_cmp(i32 noundef 4, ptr noundef %i.cb, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.eq)
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 12 uses
  store i32 0, ptr %i.et, align 4, !tbaa !24
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !18
  store float 1.500000e+00, ptr %i.d, align 4, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 16 uses
  %i.ev = call fastcc i32 @H5T__bit_cmp(i32 noundef 4, ptr noundef %i.cb, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.eu)
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ex = load i32, ptr %i.en, align 4, !tbaa !25
  %.not225 = icmp eq i32 %i.ex, 0
  %i.ey = select i1 %.not225, i32 2, i32 1        ; 2 uses
  %i.ez = load i32, ptr %i.et, align 4, !tbaa !24 ; 2 uses
  %i.fa = sub i32 %i.ey, %i.ez
  %i.fb = load i32, ptr %i.eu, align 8, !tbaa !26 ; 2 uses
  %i.fc = add i32 %i.fa, %i.fb                    ; 2 uses
  store i32 %i.fc, ptr %i.eu, align 8, !tbaa !26
  %i.fd = add i32 %i.fb, %i.ey                    ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 164 ; 8 uses
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !27
  %i.ff = load i32, ptr %i.eq, align 8, !tbaa !28 ; 2 uses
  %i.fg = sub i32 %i.ff, %i.fd                    ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 8 uses
  store i32 %i.fg, ptr %i.fh, align 8, !tbaa !29
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !18
  %i.fi = load i8, ptr @H5T_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.fj = trunc nuw i8 %i.fi to i1
  %i.fk = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = xor i1 %i.fl, true
  %i.fn = select i1 %i.fj, i1 true, i1 %i.fm      ; 2 uses
  %i.fo = icmp ne i32 %i.fg, 0
  %or.cond.i = and i1 %i.fo, %i.fn
  br i1 %or.cond.i, label %.preheader.i249, label %H5T__find_bias.exit, !prof !30

.preheader.i249:                                  ; preds = %bb.ag, %.preheader.i249
  %.025.i = phi i32 [ %i.gg, %.preheader.i249 ], [ %i.fg, %bb.ag ] ; 2 uses
  %.024.i = phi i32 [ %i.gf, %.preheader.i249 ], [ 0, %bb.ag ] ; 2 uses
  %.023.i = phi i32 [ %i.gh, %.preheader.i249 ], [ %i.fd, %bb.ag ] ; 3 uses
  %.0.i250 = phi i32 [ %i.ge, %.preheader.i249 ], [ 0, %bb.ag ]
  %i.fp = and i32 %.023.i, 7                      ; 2 uses
  %i.fq = sub nuw nsw i32 8, %i.fp
  %i.fr = call i32 @llvm.umin.i32(i32 %.025.i, i32 %i.fq) ; 4 uses
  %notmask.i = shl nsw i32 -1, %i.fr
  %i.fs = lshr i32 %.023.i, 3
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !13
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds i8, ptr %i.c, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !20
  %i.fz = zext i8 %i.fy to i32
  %i.ga = lshr i32 %i.fz, %i.fp
  %i.gb = xor i32 %notmask.i, -1
  %i.gc = and i32 %i.ga, %i.gb
  %i.gd = shl i32 %i.gc, %.024.i
  %i.ge = or i32 %i.gd, %.0.i250                  ; 2 uses
  %i.gf = add i32 %i.fr, %.024.i
  %i.gg = sub i32 %.025.i, %i.fr                  ; 2 uses
  %i.gh = add i32 %i.fr, %.023.i
  %.old1.not.i = icmp eq i32 %i.gg, 0
  br i1 %.old1.not.i, label %H5T__find_bias.exit.loopexit, label %.preheader.i249

H5T__find_bias.exit.loopexit:                     ; preds = %.preheader.i249
  %i.gi = zext i32 %i.ge to i64
  br label %H5T__find_bias.exit

H5T__find_bias.exit:                              ; preds = %H5T__find_bias.exit.loopexit, %bb.ag
  %.1.i248 = phi i64 [ 0, %bb.ag ], [ %i.gi, %H5T__find_bias.exit.loopexit ]
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 8 uses
  store i64 %.1.i248, ptr %i.gj, align 8, !tbaa !31
  br i1 %i.fn, label %bb.ah, label %bb.aj, !prof !12

bb.ah:                                            ; preds = %H5T__find_bias.exit
  %..i = call i32 @llvm.umin.i32(i32 %i.fd, i32 %i.ff)
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.ez, i32 %..i)
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %spec.select.i, ptr %i.gk, align 8, !tbaa !32
  %i.gl = add i32 %i.fc, 1
  %i.gm = add i32 %i.gl, %i.fg
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !33
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.aa
  %.str.6.sink = phi ptr [ @.str.5, %bb.ae ], [ @.str.3, %bb.aa ], [ @.str.4, %bb.ad ], [ @.str.6, %bb.af ]
  %i.go = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !14
  %i.gp = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.gq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__init_native_float_types, i32 noundef 483, i64 noundef %i.go, i64 noundef %i.gp, ptr noundef nonnull %.str.6.sink) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.preheader

bb.aj:                                            ; preds = %bb.ah, %H5T__find_bias.exit
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 8 uses
  store i32 4, ptr %i.gr, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %i.gs = call ptr @H5T__alloc() #8               ; 5 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gu = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !14
  %i.gv = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !14
  %i.gw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__init_native_float_types, i32 noundef 487, i64 noundef %i.gu, i64 noundef %i.gv, ptr noundef nonnull @.str.7) #8 ; 0 uses
  br label %.preheader

bb.al:                                            ; preds = %bb.aj
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 40 ; 13 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !35 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i32 2, ptr %i.gz, align 8, !tbaa !45
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  store i32 1, ptr %i.ha, align 4, !tbaa !48
  %i.hb = load i32, ptr %1, align 8, !tbaa !16
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store i64 %i.hc, ptr %i.hd, align 8, !tbaa !49
  %i.he = load i32, ptr %i.eo, align 4, !tbaa !50
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  store i32 %i.he, ptr %i.hf, align 8, !tbaa !20
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !32
  %i.hi = zext i32 %i.hh to i64
  %i.hj = load ptr, ptr %i.gx, align 8, !tbaa !35
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 64
  store i64 %i.hi, ptr %i.hk, align 8, !tbaa !20
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 7 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !33
  %i.hn = zext i32 %i.hm to i64
  %i.ho = load ptr, ptr %i.gx, align 8, !tbaa !35
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  store i64 %i.hn, ptr %i.hp, align 8, !tbaa !20
  %i.hq = load ptr, ptr %i.gx, align 8, !tbaa !35
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 72
  store i32 0, ptr %i.hr, align 8, !tbaa !20
  %i.hs = load ptr, ptr %i.gx, align 8, !tbaa !35
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 76
  store i32 0, ptr %i.ht, align 4, !tbaa !20
  %i.hu = load i32, ptr %i.eq, align 8, !tbaa !28
  %i.hv = zext i32 %i.hu to i64
  %i.hw = load ptr, ptr %i.gx, align 8, !tbaa !35
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 80
  store i64 %i.hv, ptr %i.hx, align 8, !tbaa !20
  %i.hy = load i32, ptr %i.fe, align 4, !tbaa !27
  %i.hz = zext i32 %i.hy to i64
  %i.ia = load ptr, ptr %i.gx, align 8, !tbaa !35
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 88
  store i64 %i.hz, ptr %i.ib, align 8, !tbaa !20
  %i.ic = load i32, ptr %i.fh, align 8, !tbaa !29
  %i.id = zext i32 %i.ic to i64
  %i.ie = load ptr, ptr %i.gx, align 8, !tbaa !35
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 96
  store i64 %i.id, ptr %i.if, align 8, !tbaa !20
  %i.ig = load i64, ptr %i.gj, align 8, !tbaa !31
  %i.ih = load ptr, ptr %i.gx, align 8, !tbaa !35
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 104
  store i64 %i.ig, ptr %i.ii, align 8, !tbaa !20
  %i.ij = load i32, ptr %i.et, align 4, !tbaa !24
  %i.ik = zext i32 %i.ij to i64
  %i.il = load ptr, ptr %i.gx, align 8, !tbaa !35
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 112
  store i64 %i.ik, ptr %i.im, align 8, !tbaa !20
  %i.in = load i32, ptr %i.eu, align 8, !tbaa !26
  %i.io = zext i32 %i.in to i64
  %i.ip = load ptr, ptr %i.gx, align 8, !tbaa !35
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 120
  store i64 %i.io, ptr %i.iq, align 8, !tbaa !20
  %i.ir = load i32, ptr %i.ep, align 8, !tbaa !23
  %i.is = load ptr, ptr %i.gx, align 8, !tbaa !35
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 128
  store i32 %i.ir, ptr %i.it, align 8, !tbaa !20
  %i.iu = load ptr, ptr %i.gx, align 8, !tbaa !35
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 132
  store i32 0, ptr %i.iv, align 4, !tbaa !20
  %i.iw = call i64 @H5I_register(i32 noundef 3, ptr noundef nonnull %i.gs, i1 noundef zeroext false) #8 ; 2 uses
  store i64 %i.iw, ptr @H5T_NATIVE_FLOAT_g, align 8, !tbaa !14
  %i.ix = icmp slt i64 %i.iw, 0
  br i1 %i.ix, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.iy = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !14
  %i.iz = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.ja = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__init_native_float_types, i32 noundef 507, i64 noundef %i.iy, i64 noundef %i.iz, ptr noundef nonnull @.str.8) #8 ; 0 uses
  br label %.preheader

bb.an:                                            ; preds = %bb.al
  %i.jb = load i32, ptr %i.gr, align 8, !tbaa !34
  %i.jc = zext i32 %i.jb to i64
  store i64 %i.jc, ptr @H5T_NATIVE_FLOAT_ALIGN_g, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %1, i8 0, i64 192, i1 false)
  store i32 8, ptr %1, align 8, !tbaa !16
  store i64 0, ptr %i.j, align 8
  store double 4.000000e+00, ptr %i.g, align 8, !tbaa !51
  store i64 4616189618054758400, ptr %i.i, align 8
  br label %.preheader326

.preheader326:                                    ; preds = %bb.an, %bb.bd
  %indvars.iv400 = phi i64 [ 0, %bb.an ], [ %indvars.iv.next401, %bb.bd ] ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv400 ; 10 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv400 ; 16 uses
  %i.jf = load i8, ptr %i.jd, align 1, !tbaa !20  ; 9 uses
  %i.jg = xor i8 %i.jf, 1
  store i8 %i.jg, ptr %i.jd, align 1, !tbaa !20
  %i.jh = load double, ptr %i.i, align 8
  %i.ji = fcmp une double %i.jh, 4.000000e+00
  br i1 %i.ji, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.preheader326
  %i.jj = load i8, ptr %i.je, align 1, !tbaa !20
  %i.jk = or i8 %i.jj, 1
  store i8 %i.jk, ptr %i.je, align 1, !tbaa !20
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.preheader326
  %i.jl = xor i8 %i.jf, 2
  store i8 %i.jl, ptr %i.jd, align 1, !tbaa !20
  %i.jm = load double, ptr %i.i, align 8
  %i.jn = fcmp une double %i.jm, 4.000000e+00
  br i1 %i.jn, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.jo = load i8, ptr %i.je, align 1, !tbaa !20
  %i.jp = or i8 %i.jo, 2
  store i8 %i.jp, ptr %i.je, align 1, !tbaa !20
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.jq = xor i8 %i.jf, 4
  store i8 %i.jq, ptr %i.jd, align 1, !tbaa !20
  %i.jr = load double, ptr %i.i, align 8
  %i.js = fcmp une double %i.jr, 4.000000e+00
  br i1 %i.js, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.jt = load i8, ptr %i.je, align 1, !tbaa !20
  %i.ju = or i8 %i.jt, 4
  store i8 %i.ju, ptr %i.je, align 1, !tbaa !20
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.jv = xor i8 %i.jf, 8
  store i8 %i.jv, ptr %i.jd, align 1, !tbaa !20
  %i.jw = load double, ptr %i.i, align 8
  %i.jx = fcmp une double %i.jw, 4.000000e+00
  br i1 %i.jx, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jy = load i8, ptr %i.je, align 1, !tbaa !20
  %i.jz = or i8 %i.jy, 8
  store i8 %i.jz, ptr %i.je, align 1, !tbaa !20
end_hunk_0
begin_hunk_1_@H5T__fix_order:bb.a
bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bz = add nsw i32 %0, -14
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !13
  %i.ca = add nsw i32 %0, -13
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !13
  %i.cc = icmp samesign ugt i32 %0, 14
  br i1 %i.cc, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ce = add nsw i32 %0, -16
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !13
  %i.cf = add nsw i32 %0, -15
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %scalar.ph, %scalar.ph77, %middle.block, %middle.block87, %bb.c, %bb.m, %bb.a
  %.051 = phi i32 [ -1, %bb.c ], [ 0, %bb.a ], [ 0, %middle.block87 ], [ -1, %bb.m ], [ 0, %middle.block ], [ 0, %scalar.ph77 ], [ 0, %scalar.ph ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ]
  ret i32 %.051
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5T__imp_bit(i32 noundef range(i32 2, 17) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load i8, ptr @H5T_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.e, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = call fastcc i32 @H5T__bit_cmp(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.a)
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !14
  %i.k = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__imp_bit, i32 noundef 387, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.12) #8 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.a, align 4, !tbaa !13
  %i.n = add i32 %i.m, -1                         ; 2 uses
  %i.o = lshr i32 %i.n, 3
  %i.p = and i32 %i.n, 7
  %i.q = zext nneg i32 %i.o to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !13
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %2, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !20
  %i.w = zext i8 %i.v to i32
  %i.x = xor i32 %i.w, -1
  %i.y = lshr i32 %i.x, %i.p
  %i.z = and i32 %i.y, 1
  store i32 %i.z, ptr %5, align 4, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5T__bit_cmp(i32 noundef range(i32 2, 17) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5T_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %5, align 4, !tbaa !13
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13   ; 2 uses
  %.not = icmp slt i32 %i.h, %0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !14
  %i.j = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__bit_cmp, i32 noundef 266, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.13) #8 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.l = sext i32 %i.h to i64                     ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %2, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !20
  %i.o = getelementptr inbounds i8, ptr %4, i64 %i.l
  %i.p = load i8, ptr %i.o, align 1, !tbaa !20    ; 2 uses
  %i.q = and i8 %i.p, %i.n                        ; 9 uses
  %i.r = getelementptr inbounds i8, ptr %3, i64 %i.l
  %i.s = load i8, ptr %i.r, align 1, !tbaa !20
  %i.t = and i8 %i.s, %i.p                        ; 9 uses
  %.not44 = icmp eq i8 %i.q, %i.t
  br i1 %.not44, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e
  %i.u = xor i8 %i.t, %i.q
  %i.v = and i8 %i.u, 1
  %.not45 = icmp eq i8 %i.v, 0
  br i1 %.not45, label %.preheader.1, label %bb.f

bb.f:                                             ; preds = %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.053.lcssa = phi i32 [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ], [ 2, %.preheader.2 ], [ 3, %.preheader.3 ], [ 4, %.preheader.4 ], [ 5, %.preheader.5 ], [ 6, %.preheader.6 ], [ 7, %.preheader.7 ]
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  %i.x = shl nuw nsw i32 %i.w, 3
  %i.y = or disjoint i32 %.053.lcssa, %i.x
  store i32 %i.y, ptr %5, align 4, !tbaa !13
  br label %.thread

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.z = xor i8 %i.t, %i.q
  %i.aa = and i8 %i.z, 2
  %.not45.1 = icmp eq i8 %i.aa, 0
  br i1 %.not45.1, label %.preheader.2, label %bb.f

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = xor i8 %i.t, %i.q
  %i.ac = and i8 %i.ab, 4
  %.not45.2 = icmp eq i8 %i.ac, 0
  br i1 %.not45.2, label %.preheader.3, label %bb.f

.preheader.3:                                     ; preds = %.preheader.2
  %i.ad = xor i8 %i.t, %i.q
  %i.ae = and i8 %i.ad, 8
  %.not45.3 = icmp eq i8 %i.ae, 0
  br i1 %.not45.3, label %.preheader.4, label %bb.f

.preheader.4:                                     ; preds = %.preheader.3
  %i.af = xor i8 %i.t, %i.q
  %i.ag = and i8 %i.af, 16
  %.not45.4 = icmp eq i8 %i.ag, 0
  br i1 %.not45.4, label %.preheader.5, label %bb.f

.preheader.5:                                     ; preds = %.preheader.4
  %i.ah = xor i8 %i.t, %i.q
  %i.ai = and i8 %i.ah, 32
  %.not45.5 = icmp eq i8 %i.ai, 0
  br i1 %.not45.5, label %.preheader.6, label %bb.f

.preheader.6:                                     ; preds = %.preheader.5
  %i.aj = xor i8 %i.t, %i.q
  %i.ak = and i8 %i.aj, 64
  %.not45.6 = icmp eq i8 %i.ak, 0
  br i1 %.not45.6, label %.preheader.7, label %bb.f

.preheader.7:                                     ; preds = %.preheader.6
  %i.al = xor i8 %i.t, %i.q
  %.not45.7 = icmp sgt i8 %i.al, -1
  br i1 %.not45.7, label %.critedge, label %bb.f

.critedge:                                        ; preds = %.preheader.7, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.g, label %bb.c, !llvm.loop !67

bb.g:                                             ; preds = %.critedge
  %i.am = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !14
  %i.an = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.ao = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__bit_cmp, i32 noundef 280, i64 noundef %i.am, i64 noundef %i.an, ptr noundef nonnull @.str.14) #8 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.d, %bb.a, %bb.g
  %.4 = phi i32 [ -1, %bb.g ], [ 0, %bb.a ], [ 0, %bb.f ], [ -1, %bb.d ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @H5T__find_bias(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr @H5T_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  %i.g = icmp ne i32 %1, 0
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %.preheader, label %.loopexit, !prof !30

.preheader:                                       ; preds = %bb.a, %.preheader
  %.025 = phi i32 [ %i.y, %.preheader ], [ %1, %bb.a ] ; 2 uses
  %.024 = phi i32 [ %i.x, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %.023 = phi i32 [ %i.z, %.preheader ], [ %0, %bb.a ] ; 3 uses
  %.0 = phi i32 [ %i.w, %.preheader ], [ 0, %bb.a ]
  %i.h = and i32 %.023, 7                         ; 2 uses
  %i.i = sub nuw nsw i32 8, %i.h
  %i.j = tail call i32 @llvm.umin.i32(i32 %.025, i32 %i.i) ; 4 uses
  %notmask = shl nsw i32 -1, %i.j
  %i.k = lshr i32 %.023, 3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !13
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %3, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !20
  %i.r = zext i8 %i.q to i32
  %i.s = lshr i32 %i.r, %i.h
  %i.t = xor i32 %notmask, -1
  %i.u = and i32 %i.s, %i.t
  %i.v = shl i32 %i.u, %.024
  %i.w = or i32 %i.v, %.0                         ; 2 uses
  %i.x = add i32 %i.j, %.024
  %i.y = sub i32 %.025, %i.j                      ; 2 uses
  %i.z = add i32 %i.j, %.023
  %.old1.not = icmp eq i32 %i.y, 0
  br i1 %.old1.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.w, %.preheader ]
  ret i32 %.1
}

declare ptr @H5T__alloc() local_unnamed_addr #4

declare i64 @H5I_register(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @feclearexcept(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @feupdateenv(ptr noundef) local_unnamed_addr #2

declare ptr @H5FL_reg_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"_Bool", !6, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!17, !5, i64 0}
!17 = !{!"H5T_fpoint_det_t", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !15, i64 176, !5, i64 184}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !6, i64 0}
!20 = !{!6, !6, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!17, !5, i64 160}
!24 = !{!17, !5, i64 148}
!25 = !{!17, !5, i64 156}
!26 = !{!17, !5, i64 152}
!27 = !{!17, !5, i64 164}
!28 = !{!17, !5, i64 144}
!29 = !{!17, !5, i64 168}
!30 = !{!"branch_weights", i32 2000, i32 2002}
!31 = !{!17, !15, i64 176}
!32 = !{!17, !5, i64 8}
!33 = !{!17, !5, i64 4}
!34 = !{!17, !5, i64 184}
!35 = !{!36, !40, i64 40}
!36 = !{!"H5T_t", !37, i64 0, !40, i64 40, !41, i64 48, !42, i64 72, !44, i64 96}
!37 = !{!"H5O_shared_t", !5, i64 0, !38, i64 8, !5, i64 16, !6, i64 24}
!38 = !{!"p1 _ZTS5H5F_t", !39, i64 0}
!39 = !{!"any pointer", !6, i64 0}
!40 = !{!"p1 _ZTS12H5T_shared_t", !39, i64 0}
!41 = !{!"H5O_loc_t", !38, i64 0, !15, i64 8, !9, i64 16}
!42 = !{!"H5G_name_t", !43, i64 0, !43, i64 8, !5, i64 16}
!43 = !{!"p1 _ZTS10H5RS_str_t", !39, i64 0}
!44 = !{!"p1 _ZTS13H5VL_object_t", !39, i64 0}
!45 = !{!46, !5, i64 8}
!46 = !{!"H5T_shared_t", !15, i64 0, !5, i64 8, !5, i64 12, !15, i64 16, !5, i64 24, !9, i64 28, !47, i64 32, !44, i64 40, !6, i64 48}
!47 = !{!"p1 _ZTS5H5T_t", !39, i64 0}
!48 = !{!46, !5, i64 12}
!49 = !{!46, !15, i64 16}
!50 = !{!17, !5, i64 140}
!51 = !{!52, !52, i64 0}
!52 = !{!"double", !6, i64 0}
!53 = distinct !{!53, !22}
!54 = distinct !{!54, !22}
!55 = !{!56, !56, i64 0}
!56 = !{!"long double", !6, i64 0}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, !22}
!59 = !{!60, !60, i64 0}
!60 = !{!"_Float16", !6, i64 0}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.peeled.count", i32 1}
!63 = distinct !{!63, !22, !64, !65}
!64 = !{!"llvm.loop.unroll.runtime.disable"}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = distinct !{!66, !22, !64, !65}
!67 = distinct !{!67, !22}
end_hunk_1
