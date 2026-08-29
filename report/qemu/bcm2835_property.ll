Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/bcm2835_property?download=true
inline.NumInlined: 97
inline.NumDeleted: 18
begin_hunk_0_@bcm2835_property_write:bb.a
  br label %.loopexit.i

bb.ab:                                            ; preds = %bb.e
  %i.ch = add i32 %.0313.i, 16
  %i.ci = zext i32 %i.ch to i64
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %i.ci, i32 noundef 99000, i64 4294967296, ptr noundef null) #6
  br label %.loopexit.i

bb.ac:                                            ; preds = %bb.e
  %i.cj = add i32 %.0313.i, 12
  %i.ck = zext i32 %i.cj to i64
  %i.cl = load i32, ptr %i.aa, align 4
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %i.ck, i32 noundef %i.cl, i64 4294967296, ptr noundef null) #6
  %i.cm = add i32 %.0313.i, 16
  %i.cn = zext i32 %i.cm to i64
  %i.co = load i32, ptr %i.z, align 4
  %i.cp = load i32, ptr %i.y, align 4
  %i.cq = call i32 @llvm.umax.i32(i32 %i.co, i32 %i.cp)
  %i.cr = load i32, ptr %4, align 4
  %i.cs = load i32, ptr %i.u, align 4
  %i.ct = call i32 @llvm.umax.i32(i32 %i.cr, i32 %i.cs)
  %i.cu = load i32, ptr %i.v, align 4
  %i.cv = lshr i32 %i.cu, 3
  %i.cw = mul i32 %i.ct, %i.cq
  %i.cx = mul i32 %i.cw, %i.cv
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %i.cn, i32 noundef %i.cx, i64 4294967296, ptr noundef null) #6
  br label %.loopexit.i

bb.ad:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  br label %.loopexit.i

bb.ae:                                            ; preds = %bb.e, %bb.e, %bb.e
  br label %.loopexit.i

bb.af:                                            ; preds = %bb.e
  %i.cy = add i32 %.0313.i, 12
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %i.da = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.cz, i64 4294967296, ptr noundef null) #6
  store i32 %i.da, ptr %4, align 4
  %i.db = add i32 %.0313.i, 16
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.dc, i64 4294967296, ptr noundef null) #6
  store i32 %i.dd, ptr %i.z, align 4
  call void @bcm2835_fb_validate_config(ptr noundef nonnull %4) #6
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge344.i
  %.pre-phi350.i = phi i64 [ %.pre349.i, %._crit_edge344.i ], [ %i.dc, %bb.af ]
  %.pre-phi346.i = phi i64 [ %.pre345.i, %._crit_edge344.i ], [ %i.cz, %bb.af ]
  %.1267.i = phi i1 [ %.0266312.i, %._crit_edge344.i ], [ true, %bb.af ]
  %i.de = load i32, ptr %4, align 4
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %.pre-phi346.i, i32 noundef %i.de, i64 4294967296, ptr noundef null) #6
  %i.df = load i32, ptr %i.z, align 4
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %.pre-phi350.i, i32 noundef %i.df, i64 4294967296, ptr noundef null) #6
  br label %.loopexit.i

bb.ah:                                            ; preds = %bb.e
  %i.dg = add i32 %.0313.i, 12
  %i.dh = zext i32 %i.dg to i64                   ; 2 uses
  %i.di = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.dh, i64 4294967296, ptr noundef null) #6
  store i32 %i.di, ptr %i.u, align 4
  %i.dj = add i32 %.0313.i, 16
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.dk, i64 4294967296, ptr noundef null) #6
  store i32 %i.dl, ptr %i.y, align 4
  call void @bcm2835_fb_validate_config(ptr noundef nonnull %4) #6
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge343.i
  %.pre-phi358.i = phi i64 [ %.pre357.i, %._crit_edge343.i ], [ %i.dk, %bb.ah ]
  %.pre-phi354.i = phi i64 [ %.pre353.i, %._crit_edge343.i ], [ %i.dh, %bb.ah ]
  %.2.i = phi i1 [ %.0266312.i, %._crit_edge343.i ], [ true, %bb.ah ]
  %i.dm = load i32, ptr %i.u, align 4
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %.pre-phi354.i, i32 noundef %i.dm, i64 4294967296, ptr noundef null) #6
  %i.dn = load i32, ptr %i.y, align 4
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %.pre-phi358.i, i32 noundef %i.dn, i64 4294967296, ptr noundef null) #6
  br label %.loopexit.i

bb.aj:                                            ; preds = %bb.e
  %i.do = add i32 %.0313.i, 12
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.dp, i64 4294967296, ptr noundef null) #6
  store i32 %i.dq, ptr %i.v, align 4
  call void @bcm2835_fb_validate_config(ptr noundef nonnull %4) #6
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge342.i
  %.pre-phi362.i = phi i64 [ %.pre361.i, %._crit_edge342.i ], [ %i.dp, %bb.aj ]
  %.3.i = phi i1 [ %.0266312.i, %._crit_edge342.i ], [ true, %bb.aj ]
  %i.dr = load i32, ptr %i.v, align 4
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %.pre-phi362.i, i32 noundef %i.dr, i64 4294967296, ptr noundef null) #6
  br label %.loopexit.i

bb.al:                                            ; preds = %bb.e
  %i.ds = add i32 %.0313.i, 12
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.dt, i64 4294967296, ptr noundef null) #6
  store i32 %i.du, ptr %i.x, align 4
  call void @bcm2835_fb_validate_config(ptr noundef nonnull %4) #6
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge341.i
  %.pre-phi366.i = phi i64 [ %.pre365.i, %._crit_edge341.i ], [ %i.dt, %bb.al ]
  %.4.i = phi i1 [ %.0266312.i, %._crit_edge341.i ], [ true, %bb.al ]
  %i.dv = load i32, ptr %i.x, align 4
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %.pre-phi366.i, i32 noundef %i.dv, i64 4294967296, ptr noundef null) #6
  br label %.loopexit.i

bb.an:                                            ; preds = %bb.e
  %i.dw = add i32 %.0313.i, 12
  %i.dx = zext i32 %i.dw to i64                   ; 2 uses
  %i.dy = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.dx, i64 4294967296, ptr noundef null) #6
  store i32 %i.dy, ptr %i.w, align 4
  call void @bcm2835_fb_validate_config(ptr noundef nonnull %4) #6
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge340.i
  %.pre-phi370.i = phi i64 [ %.pre369.i, %._crit_edge340.i ], [ %i.dx, %bb.an ]
  %.5.i = phi i1 [ %.0266312.i, %._crit_edge340.i ], [ true, %bb.an ]
  %i.dz = load i32, ptr %i.w, align 4
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %.pre-phi370.i, i32 noundef %i.dz, i64 4294967296, ptr noundef null) #6
  br label %.loopexit.i

bb.ap:                                            ; preds = %bb.e
  %i.ea = add i32 %.0313.i, 12
  %i.eb = zext i32 %i.ea to i64
  %i.ec = load i32, ptr %4, align 4
  %i.ed = load i32, ptr %i.u, align 4
  %i.ee = call i32 @llvm.umax.i32(i32 %i.ec, i32 %i.ed)
  %i.ef = load i32, ptr %i.v, align 4
  %i.eg = lshr i32 %i.ef, 3
  %i.eh = mul i32 %i.eg, %i.ee
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %i.eb, i32 noundef %i.eh, i64 4294967296, ptr noundef null) #6
  br label %.loopexit.i

bb.aq:                                            ; preds = %bb.e
  %i.ei = add i32 %.0313.i, 12
  %i.ej = zext i32 %i.ei to i64                   ; 2 uses
  %i.ek = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.ej, i64 4294967296, ptr noundef null) #6
  store i32 %i.ek, ptr %i.s, align 4
  %i.el = add i32 %.0313.i, 16
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  %i.en = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.em, i64 4294967296, ptr noundef null) #6
  store i32 %i.en, ptr %i.t, align 4
  call void @bcm2835_fb_validate_config(ptr noundef nonnull %4) #6
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge.i
  %.pre-phi378.i = phi i64 [ %.pre377.i, %._crit_edge.i ], [ %i.em, %bb.aq ]
  %.pre-phi374.i = phi i64 [ %.pre373.i, %._crit_edge.i ], [ %i.ej, %bb.aq ]
  %.6.i = phi i1 [ %.0266312.i, %._crit_edge.i ], [ true, %bb.aq ]
  %i.eo = load i32, ptr %i.s, align 4
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %.pre-phi374.i, i32 noundef %i.eo, i64 4294967296, ptr noundef null) #6
  %i.ep = load i32, ptr %i.t, align 4
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %.pre-phi378.i, i32 noundef %i.ep, i64 4294967296, ptr noundef null) #6
  br label %.loopexit.i

bb.as:                                            ; preds = %bb.e, %bb.e, %bb.e
  %i.eq = add i32 %.0313.i, 12
  %i.er = zext i32 %i.eq to i64
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %i.er, i32 noundef 0, i64 4294967296, ptr noundef null) #6
  %i.es = add i32 %.0313.i, 16
  %i.et = zext i32 %i.es to i64
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %i.et, i32 noundef 0, i64 4294967296, ptr noundef null) #6
  %i.eu = add i32 %.0313.i, 20
  %i.ev = zext i32 %i.eu to i64
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %i.ev, i32 noundef 0, i64 4294967296, ptr noundef null) #6
  %i.ew = add i32 %.0313.i, 24
  %i.ex = zext i32 %i.ew to i64
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %i.ex, i32 noundef 0, i64 4294967296, ptr noundef null) #6
  br label %.loopexit.i

bb.at:                                            ; preds = %bb.e
  %i.ey = add i32 %.0313.i, 12
  %i.ez = zext i32 %i.ey to i64                   ; 3 uses
  %i.fa = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.ez, i64 4294967296, ptr noundef null) #6 ; 2 uses
  %i.fb = add i32 %.0313.i, 16
  %i.fc = zext i32 %i.fb to i64
  %i.fd = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.fc, i64 4294967296, ptr noundef null) #6 ; 2 uses
  %i.fe = icmp ugt i32 %i.fa, 255
  %i.ff = add i32 %i.fd, -257
  %i.fg = icmp ult i32 %i.ff, -256
  %or.cond3.i = select i1 %i.fe, i1 true, i1 %i.fg
  br i1 %or.cond3.i, label %.split275.i, label %.lr.ph310.i

.lr.ph310.i:                                      ; preds = %bb.at
  %i.fh = add i32 %.0313.i, 20
  %wide.trip.count.i = zext nneg i32 %i.fd to i64
  br label %bb.au

.split275.i:                                      ; preds = %bb.at
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %i.ez, i32 noundef 1, i64 4294967296, ptr noundef null) #6
  br label %.loopexit.i

.split.i:                                         ; preds = %bb.au
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %i.ez, i32 noundef 0, i64 4294967296, ptr noundef null) #6
  br label %.loopexit.i

bb.au:                                            ; preds = %bb.au, %.lr.ph310.i
  %indvars.iv336.i = phi i64 [ 0, %.lr.ph310.i ], [ %indvars.iv.next337.i, %bb.au ] ; 2 uses
  %indvars.iv336.tr.i = trunc i64 %indvars.iv336.i to i32 ; 2 uses
  %i.fi = shl i32 %indvars.iv336.tr.i, 2
  %i.fj = add i32 %i.fh, %i.fi
  %i.fk = zext i32 %i.fj to i64
  %i.fl = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.fk, i64 4294967296, ptr noundef null) #6
  %i.fm = load ptr, ptr %i.e, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 808
  %i.fo = load i32, ptr %i.fn, align 8
  %.tr390.i = add i32 %i.fa, %indvars.iv336.tr.i
  %i.fp = shl i32 %.tr390.i, 2
  %i.fq = add i32 %i.fo, %i.fp
  %i.fr = zext i32 %i.fq to i64
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %i.fr, i32 noundef %i.fl, i64 4294967296, ptr noundef null) #6
  %indvars.iv.next337.i = add nuw nsw i64 %indvars.iv336.i, 1 ; 2 uses
  %exitcond339.not.i = icmp eq i64 %indvars.iv.next337.i, %wide.trip.count.i
  br i1 %exitcond339.not.i, label %.split.i, label %bb.au, !llvm.loop !11

bb.av:                                            ; preds = %bb.e
  %i.fs = add i32 %.0313.i, 12
  %i.ft = zext i32 %i.fs to i64
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %i.ft, i32 noundef 1, i64 4294967296, ptr noundef null) #6
  br label %.loopexit.i

bb.aw:                                            ; preds = %bb.e
  %i.fu = add i32 %.0313.i, 12
  %i.fv = zext i32 %i.fu to i64
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %i.fv, i32 noundef 60, i64 4294967296, ptr noundef null) #6
  br label %.loopexit.i

bb.ax:                                            ; preds = %bb.e
  %i.fw = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.fx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fw) #8 ; 4 uses
  %i.fy = zext i32 %i.ai to i64
  %.not286.i = icmp ugt i64 %i.fx, %i.fy
  br i1 %.not286.i, label %.loopexit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fz = add i32 %.0313.i, 12
  %i.ga = zext i32 %i.fz to i64
  %i.gb = call i32 @address_space_write(ptr noundef nonnull %i.j, i64 noundef %i.ga, i64 4294967296, ptr noundef nonnull %i.fw, i64 noundef %i.fx) #6 ; 0 uses
  br label %.loopexit.i

bb.az:                                            ; preds = %bb.e
  %i.gc = add i32 %.0313.i, 12
  %i.gd = zext i32 %i.gc to i64
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %i.gd, i32 noundef 0, i64 4294967296, ptr noundef null) #6
  br label %.loopexit.i

bb.ba:                                            ; preds = %bb.e
  %i.ge = add nuw nsw i64 %i.ae, 12
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %i.ge, i32 noundef 0, i64 4294967296, ptr noundef null) #6
  br label %.loopexit.i

bb.bb:                                            ; preds = %bb.e
  %i.gf = add i32 %.0313.i, 12
  %i.gg = zext i32 %i.gf to i64
  %i.gh = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.gg, i64 4294967296, ptr noundef null) #6 ; 4 uses
  %i.gi = add i32 %.0313.i, 16
  %i.gj = zext i32 %i.gi to i64
  %i.gk = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.gj, i64 4294967296, ptr noundef null) #6 ; 2 uses
  %i.gl = shl i32 %i.gk, 2
  %i.gm = add i32 %i.gl, 8
  %i.gn = zext i32 %i.gm to i64                   ; 2 uses
  %i.go = add i32 %i.gk, %i.gh
  %invariant.umin306.i = call i32 @llvm.umin.i32(i32 %i.go, i32 8) ; 2 uses
  %i.gp = icmp ult i32 %i.gh, %invariant.umin306.i
  br i1 %i.gp, label %.lr.ph308.i, label %.loopexit.i

.lr.ph308.i:                                      ; preds = %bb.bb
  %i.gq = add i32 %.0313.i, 20
  %i.gr = zext nneg i32 %i.gh to i64
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.lr.ph308.i
  %indvars.iv331.i = phi i64 [ %i.gr, %.lr.ph308.i ], [ %indvars.iv.next332.i, %bb.bc ] ; 2 uses
  %i.gs = load ptr, ptr %i.q, align 16
  %i.gt = trunc i64 %indvars.iv331.i to i32       ; 2 uses
  %i.gu = add i32 %i.gt, 36
  %i.gv = call i32 @bcm2835_otp_get_row(ptr noundef %i.gs, i32 noundef %i.gu) #6
  %.tr389.i = sub i32 %i.gt, %i.gh
  %i.gw = shl i32 %.tr389.i, 2
  %i.gx = add i32 %i.gq, %i.gw
  %i.gy = zext i32 %i.gx to i64
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %i.gy, i32 noundef %i.gv, i64 4294967296, ptr noundef null) #6
  %indvars.iv.next332.i = add nuw nsw i64 %indvars.iv331.i, 1 ; 2 uses
  %lftr.wideiv334.i = trunc i64 %indvars.iv.next332.i to i32
  %exitcond335.not.i = icmp eq i32 %invariant.umin306.i, %lftr.wideiv334.i
  br i1 %exitcond335.not.i, label %.loopexit.i, label %bb.bc, !llvm.loop !13

bb.bd:                                            ; preds = %bb.e
  %i.gz = add i32 %.0313.i, 12
  %i.ha = zext i32 %i.gz to i64
  %i.hb = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.ha, i64 4294967296, ptr noundef null) #6 ; 5 uses
  %i.hc = add i32 %.0313.i, 16
  %i.hd = zext i32 %i.hc to i64
  %i.he = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.hd, i64 4294967296, ptr noundef null) #6 ; 2 uses
  %i.hf = icmp eq i32 %i.hb, -1
  %i.hg = icmp eq i32 %i.he, -1342308352
  %or.cond5.i = select i1 %i.hf, i1 %i.hg, i1 false
  %i.hh = load ptr, ptr %i.q, align 16            ; 2 uses
  br i1 %or.cond5.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @bcm2835_otp_set_row(ptr noundef %i.hh, i32 noundef 32, i32 noundef 64) #6
  br label %.loopexit.i

bb.bf:                                            ; preds = %bb.bd
  %i.hi = call i32 @bcm2835_otp_get_row(ptr noundef %i.hh, i32 noundef 32) #6
  %i.hj = and i32 %i.hi, 64
  %.not285.i = icmp eq i32 %i.hj, 0
  br i1 %.not285.i, label %.preheader294.i, label %.loopexit.i

.preheader294.i:                                  ; preds = %bb.bf
  %i.hk = add i32 %i.he, %i.hb
  %invariant.umin303.i = call i32 @llvm.umin.i32(i32 %i.hk, i32 8) ; 2 uses
  %i.hl = icmp ult i32 %i.hb, %invariant.umin303.i
  br i1 %i.hl, label %.lr.ph305.i, label %.loopexit.i

.lr.ph305.i:                                      ; preds = %.preheader294.i
  %i.hm = add i32 %.0313.i, 20
  %i.hn = zext nneg i32 %i.hb to i64
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.lr.ph305.i
  %indvars.iv326.i = phi i64 [ %i.hn, %.lr.ph305.i ], [ %indvars.iv.next327.i, %bb.bg ] ; 2 uses
  %i.ho = trunc i64 %indvars.iv326.i to i32       ; 2 uses
  %.tr388.i = sub i32 %i.ho, %i.hb
  %i.hp = shl i32 %.tr388.i, 2
  %i.hq = add i32 %i.hm, %i.hp
  %i.hr = zext i32 %i.hq to i64
  %i.hs = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.hr, i64 4294967296, ptr noundef null) #6
  %i.ht = load ptr, ptr %i.q, align 16
  %i.hu = add i32 %i.ho, 36
  call void @bcm2835_otp_set_row(ptr noundef %i.ht, i32 noundef %i.hu, i32 noundef %i.hs) #6
  %indvars.iv.next327.i = add nuw nsw i64 %indvars.iv326.i, 1 ; 2 uses
  %lftr.wideiv329.i = trunc i64 %indvars.iv.next327.i to i32
  %exitcond330.not.i = icmp eq i32 %invariant.umin303.i, %lftr.wideiv329.i
  br i1 %exitcond330.not.i, label %.loopexit.i, label %bb.bg, !llvm.loop !14

bb.bh:                                            ; preds = %bb.e
  %i.hv = add i32 %.0313.i, 12
  %i.hw = zext i32 %i.hv to i64
  %i.hx = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.hw, i64 4294967296, ptr noundef null) #6 ; 4 uses
  %i.hy = add i32 %.0313.i, 16
  %i.hz = zext i32 %i.hy to i64
  %i.ia = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.hz, i64 4294967296, ptr noundef null) #6 ; 2 uses
  %i.ib = shl i32 %i.ia, 2
  %i.ic = add i32 %i.ib, 8
  %i.id = zext i32 %i.ic to i64                   ; 2 uses
  %i.ie = add i32 %i.ia, %i.hx
  %invariant.umin300.i = call i32 @llvm.umin.i32(i32 %i.ie, i32 8) ; 2 uses
  %i.if = icmp ult i32 %i.hx, %invariant.umin300.i
  br i1 %i.if, label %.lr.ph302.i, label %.loopexit.i

.lr.ph302.i:                                      ; preds = %bb.bh
  %i.ig = add i32 %.0313.i, 20
  %i.ih = zext nneg i32 %i.hx to i64
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.lr.ph302.i
  %indvars.iv321.i = phi i64 [ %i.ih, %.lr.ph302.i ], [ %indvars.iv.next322.i, %bb.bi ] ; 2 uses
  %i.ii = load ptr, ptr %i.q, align 16
  %i.ij = trunc i64 %indvars.iv321.i to i32       ; 2 uses
  %i.ik = or i32 %i.ij, 56
  %i.il = call i32 @bcm2835_otp_get_row(ptr noundef %i.ii, i32 noundef %i.ik) #6
  %.tr387.i = sub i32 %i.ij, %i.hx
  %i.im = shl i32 %.tr387.i, 2
  %i.in = add i32 %i.ig, %i.im
  %i.io = zext i32 %i.in to i64
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %i.io, i32 noundef %i.il, i64 4294967296, ptr noundef null) #6
  %indvars.iv.next322.i = add nuw nsw i64 %indvars.iv321.i, 1 ; 2 uses
  %lftr.wideiv324.i = trunc i64 %indvars.iv.next322.i to i32
  %exitcond325.not.i = icmp eq i32 %invariant.umin300.i, %lftr.wideiv324.i
  br i1 %exitcond325.not.i, label %.loopexit.i, label %bb.bi, !llvm.loop !15

bb.bj:                                            ; preds = %bb.e
  %i.ip = add i32 %.0313.i, 12
  %i.iq = zext i32 %i.ip to i64
  %i.ir = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.iq, i64 4294967296, ptr noundef null) #6 ; 4 uses
  %i.is = add i32 %.0313.i, 16
  %i.it = zext i32 %i.is to i64
  %i.iu = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.it, i64 4294967296, ptr noundef null) #6
  %i.iv = load ptr, ptr %i.q, align 16
  %i.iw = call i32 @bcm2835_otp_get_row(ptr noundef %i.iv, i32 noundef 32) #6
  %i.ix = and i32 %i.iw, 64
  %.not284.i = icmp eq i32 %i.ix, 0
  br i1 %.not284.i, label %.preheader297.i, label %.loopexit.i

.preheader297.i:                                  ; preds = %bb.bj
  %i.iy = add i32 %i.iu, %i.ir
  %invariant.umin.i = call i32 @llvm.umin.i32(i32 %i.iy, i32 8) ; 2 uses
  %i.iz = icmp ult i32 %i.ir, %invariant.umin.i
  br i1 %i.iz, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader297.i
  %i.ja = add i32 %.0313.i, 20
  %i.jb = zext nneg i32 %i.ir to i64
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.jb, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.bk ] ; 2 uses
  %i.jc = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %.tr.i = sub i32 %i.jc, %i.ir
  %i.jd = shl i32 %.tr.i, 2
  %i.je = add i32 %i.ja, %i.jd
  %i.jf = zext i32 %i.je to i64
  %i.jg = call i32 @address_space_ldl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967296) %i.jf, i64 4294967296, ptr noundef null) #6
  %i.jh = load ptr, ptr %i.q, align 16
  %i.ji = or i32 %i.jc, 56
  call void @bcm2835_otp_set_row(ptr noundef %i.jh, i32 noundef %i.ji, i32 noundef %i.jg) #6
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %invariant.umin.i, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.bk, !llvm.loop !16

bb.bl:                                            ; preds = %bb.e
  %i.jj = load i32, ptr @qemu_loglevel, align 4
  %i.jk = and i32 %i.jj, 1024
  %.not293.i = icmp eq i32 %i.jk, 0
  br i1 %.not293.i, label %.loopexit.i, label %bb.bm, !prof !9

bb.bm:                                            ; preds = %bb.bl
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12, i32 noundef %i.af) #6
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bk, %bb.bi, %bb.bg, %bb.bc, %bb.bm, %bb.bl, %.preheader297.i, %bb.bj, %bb.bh, %.preheader294.i, %bb.bf, %bb.be, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %.split.i, %.split275.i, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.e
  %.0271.i = phi i64 [ 0, %bb.bm ], [ 0, %bb.bl ], [ 0, %bb.e ], [ 4, %bb.f ], [ %i.gn, %bb.bb ], [ 4, %bb.i ], [ 6, %bb.j ], [ 4, %bb.g ], [ 8, %bb.m ], [ 8, %bb.n ], [ 8, %bb.o ], [ 8, %bb.p ], [ 8, %bb.k ], [ 8, %bb.q ], [ 8, %bb.x ], [ 8, %bb.t ], [ 8, %bb.aa ], [ 8, %bb.ab ], [ 8, %bb.ac ], [ 8, %bb.y ], [ 4, %bb.ad ], [ 8, %bb.ae ], [ 8, %bb.ag ], [ 8, %bb.ai ], [ 0, %bb.e ], [ 4, %bb.ak ], [ 8, %bb.z ], [ 4, %bb.am ], [ 8, %bb.u ], [ 4, %bb.ao ], [ 4, %bb.ap ], [ 8, %bb.v ], [ 8, %bb.ar ], [ 16, %bb.as ], [ 8, %bb.w ], [ 4, %bb.av ], [ 4, %bb.aw ], [ %i.fx, %bb.ay ], [ %i.fx, %bb.ax ], [ 4, %bb.az ], [ 4, %bb.ba ], [ 4, %.split275.i ], [ 4, %bb.bj ], [ 4, %bb.be ], [ 4, %bb.h ], [ 8, %bb.l ], [ 8, %bb.r ], [ 4, %.split.i ], [ %i.id, %bb.bh ], [ 4, %bb.bf ], [ 4, %.preheader294.i ], [ 4, %.preheader297.i ], [ %i.id, %bb.bi ], [ %i.gn, %bb.bc ], [ 4, %bb.bg ], [ 4, %bb.bk ] ; 2 uses
  %.7.i = phi i1 [ %.0266312.i, %bb.bm ], [ %.0266312.i, %bb.bl ], [ %.0266312.i, %bb.e ], [ %.0266312.i, %bb.f ], [ %.0266312.i, %bb.bb ], [ %.0266312.i, %bb.i ], [ %.0266312.i, %bb.j ], [ %.0266312.i, %bb.g ], [ %.0266312.i, %bb.m ], [ %.0266312.i, %bb.n ], [ %.0266312.i, %bb.o ], [ %.0266312.i, %bb.p ], [ %.0266312.i, %bb.k ], [ %.0266312.i, %bb.q ], [ %.0266312.i, %bb.x ], [ %.0266312.i, %bb.t ], [ %.0266312.i, %bb.aa ], [ %.0266312.i, %bb.ab ], [ %.0266312.i, %bb.ac ], [ %.0266312.i, %bb.y ], [ %.0266312.i, %bb.ad ], [ %.0266312.i, %bb.ae ], [ %.1267.i, %bb.ag ], [ %.2.i, %bb.ai ], [ %.0266312.i, %bb.e ], [ %.3.i, %bb.ak ], [ %.0266312.i, %bb.z ], [ %.4.i, %bb.am ], [ %.0266312.i, %bb.u ], [ %.5.i, %bb.ao ], [ %.0266312.i, %bb.ap ], [ %.0266312.i, %bb.v ], [ %.6.i, %bb.ar ], [ %.0266312.i, %bb.as ], [ %.0266312.i, %bb.w ], [ %.0266312.i, %bb.av ], [ %.0266312.i, %bb.aw ], [ %.0266312.i, %bb.ay ], [ %.0266312.i, %bb.ax ], [ %.0266312.i, %bb.az ], [ %.0266312.i, %bb.ba ], [ %.0266312.i, %.split275.i ], [ %.0266312.i, %bb.bj ], [ %.0266312.i, %bb.be ], [ %.0266312.i, %bb.h ], [ %.0266312.i, %bb.l ], [ %.0266312.i, %bb.r ], [ %.0266312.i, %.split.i ], [ %.0266312.i, %bb.bh ], [ %.0266312.i, %bb.bf ], [ %.0266312.i, %.preheader294.i ], [ %.0266312.i, %.preheader297.i ], [ %.0266312.i, %bb.bi ], [ %.0266312.i, %bb.bc ], [ %.0266312.i, %bb.bg ], [ %.0266312.i, %bb.bk ] ; 2 uses
  %i.jl = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.jl, 0
  br i1 %.not.i.i, label %trace_bcm2835_mbox_property.exit.i, label %bb.bn, !prof !9

bb.bn:                                            ; preds = %.loopexit.i
  %i.jm = load i16, ptr @_TRACE_BCM2835_MBOX_PROPERTY_DSTATE, align 2
  %.not3.i.i = icmp eq i16 %i.jm, 0
  br i1 %.not3.i.i, label %trace_bcm2835_mbox_property.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jn = load i32, ptr @qemu_loglevel, align 4
  %i.jo = and i32 %i.jn, 32768
  %.not4.i.i = icmp eq i32 %i.jo, 0
  br i1 %.not4.i.i, label %trace_bcm2835_mbox_property.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.13, i32 noundef %i.af, i32 noundef %i.ai, i64 noundef %.0271.i) #6
  br label %trace_bcm2835_mbox_property.exit.i

trace_bcm2835_mbox_property.exit.i:               ; preds = %bb.bp, %bb.bo, %bb.bn, %.loopexit.i
  %i.jp = icmp eq i32 %i.af, 0
  br i1 %i.jp, label %.thread.i, label %bb.bq

bb.bq:                                            ; preds = %trace_bcm2835_mbox_property.exit.i
  %i.jq = zext i32 %i.ad to i64
  %i.jr = trunc i64 %.0271.i to i32
  %i.js = or i32 %i.jr, -2147483648
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %i.jq, i32 noundef %i.js, i64 4294967296, ptr noundef null) #6
  %i.jt = add i32 %.0313.i, 12
  %i.ju = add i32 %i.jt, %i.ai                    ; 2 uses
  %i.jv = add i32 %i.ju, 8                        ; 2 uses
  %i.jw = load i32, ptr %i.i, align 4
  %i.jx = add i32 %i.jw, %i.l
  %.not.i = icmp ugt i32 %i.jv, %i.jx
  br i1 %.not.i, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.bq, %trace_bcm2835_mbox_property.exit.i
  br i1 %.7.i, label %bb.br, label %bcm2835_property_mbox_push.exit

bb.br:                                            ; preds = %.thread.i
  %i.jy = load ptr, ptr %i.e, align 8
  call void @bcm2835_fb_reconfigure(ptr noundef %i.jy, ptr noundef nonnull %4) #6
  br label %bcm2835_property_mbox_push.exit

bcm2835_property_mbox_push.exit:                  ; preds = %bb.d, %.thread.i, %bb.br
  %i.jz = load i32, ptr %i.i, align 4
  %i.ka = add i32 %i.jz, 4
  %i.kb = zext i32 %i.ka to i64
  call void @address_space_stl_le(ptr noundef nonnull %i.j, i64 noundef range(i64 0, 4294967308) %i.kb, i32 noundef -2147483648, i64 4294967296, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.kd = load ptr, ptr %i.kc, align 16
  call void @qemu_set_irq(ptr noundef %i.kd, i32 noundef 1) #6
  br label %bb.bu

bb.bs:                                            ; preds = %bb.a
  %i.ke = load i32, ptr @qemu_loglevel, align 4
  %i.kf = and i32 %i.ke, 2048
  %.not = icmp eq i32 %i.kf, 0
  br i1 %.not, label %bb.bu, label %bb.bt, !prof !9

bb.bt:                                            ; preds = %bb.bs
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.bcm2835_property_write, i64 noundef %1) #6
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt, %bcm2835_property_mbox_push.exit
  ret void
}

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @bcm2835_fb_validate_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @address_space_write(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @bcm2835_otp_get_row(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @bcm2835_otp_set_row(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @bcm2835_fb_reconfigure(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @address_space_ldl_le(ptr noundef, i64 noundef, i64, ptr noundef) local_unnamed_addr #1

declare void @address_space_stl_le(ptr noundef, i64 noundef, i32 noundef, i64, ptr noundef) local_unnamed_addr #1

declare i32 @address_space_rw(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @bcm2835_property_realize(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 18, ptr noundef nonnull @__func__.BCM2835_PROPERTY) #6 ; 5 uses
  %i.b = tail call ptr @object_property_get_link(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @error_abort) #6
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 21, ptr noundef nonnull @__func__.BCM2835_FB) #6
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1256
  store ptr %i.c, ptr %i.d, align 8
  %i.e = tail call ptr @object_property_get_link(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @error_abort) #6
  %i.f = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.e, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 42, ptr noundef nonnull @__func__.MEMORY_REGION) #6 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  tail call void @address_space_init(ptr noundef nonnull %i.h, ptr noundef %i.f, ptr noundef nonnull @.str.22) #6
  %i.i = tail call ptr @object_property_get_link(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @error_abort) #6
  %i.j = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 16, ptr noundef nonnull @__func__.BCM2835_OTP) #6
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1264
  store ptr %i.j, ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1272
  tail call void @qemu_macaddr_default_if_unset(ptr noundef nonnull %i.l) #6
  %i.m = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 18, ptr noundef nonnull @__func__.BCM2835_PROPERTY) #6
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1296
  store i8 0, ptr %i.n, align 16
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_property_get_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @address_space_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_macaddr_default_if_unset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{i64 2152492050}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
end_hunk_0
