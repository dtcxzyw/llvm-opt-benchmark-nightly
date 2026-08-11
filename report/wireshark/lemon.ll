inline.NumInlined: 160
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 27
begin_hunk_0_@translate_code:bb.a

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.ds = load i32, ptr %i.d, align 8             ; 4 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph273, label %.loopexit260

.lr.ph273:                                        ; preds = %bb.aa
  %i.du = load ptr, ptr %i.ci, align 8            ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ds to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph273, %bb.am
  %indvars.iv = phi i64 [ 0, %.lr.ph273 ], [ %indvars.iv.next, %bb.am ] ; 6 uses
  %i.dv = getelementptr [8 x i8], ptr %i.du, i64 %indvars.iv
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %.not211 = icmp eq ptr %i.dw, null
  br i1 %.not211, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = call i32 @strcmp(ptr noundef %.0164279, ptr noundef nonnull dereferenceable(1) %i.dw) #44
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.dz = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ea = icmp eq i64 %indvars.iv, 0
  %i.eb = icmp ne i32 %.0172275, 0
  %or.cond = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ec = load ptr, ptr %i.ck, align 8
  %i.ed = load i32, ptr %i.cl, align 4
  %i.ee = load ptr, ptr %i.du, align 8
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.ec, i32 noundef %i.ed, ptr noundef nonnull @.str.144, ptr noundef %i.ee, ptr noundef nonnull %i.c)
  %i.ef = load i32, ptr %i.cm, align 8
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr %i.cm, align 8
  br label %bb.al

bb.af:                                            ; preds = %bb.ad
  %i.eh = load ptr, ptr %i.h, align 8
  %.not212 = icmp eq ptr %.0164279, %i.eh
  br i1 %.not212, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ei = getelementptr i8, ptr %.0164279, i64 -1
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = icmp eq i8 %i.ej, 64
  br i1 %i.ek, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.el = add i32 %i.dz, 1
  %i.em = sub i32 %i.el, %i.ds
  %i.en = call ptr @append_str(ptr noundef nonnull @.str.145, i32 noundef -1, i32 noundef %i.em, i32 noundef 0) ; 0 uses
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.eo = load ptr, ptr %i.cj, align 8
  %i.ep = getelementptr [8 x i8], ptr %i.eo, i64 %indvars.iv
  %i.eq = load ptr, ptr %i.ep, align 8            ; 3 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 12
  %i.es = load i32, ptr %i.er, align 4
  %i.et = icmp eq i32 %i.es, 2
  br i1 %i.et, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.eu = getelementptr i8, ptr %i.eq, i64 96
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = load ptr, ptr %i.ev, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.pn = phi ptr [ %i.ew, %bb.aj ], [ %i.eq, %bb.ai ]
  %.0163.in = getelementptr i8, ptr %.pn, i64 80
  %.0163 = load i32, ptr %.0163.in, align 8
  %i.ex = add i32 %i.dz, 1
  %i.ey = sub i32 %i.ex, %i.ds
  %i.ez = call ptr @append_str(ptr noundef nonnull @.str.142, i32 noundef 0, i32 noundef %i.ey, i32 noundef %.0163) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %bb.ak, %bb.ae
  %i.fa = getelementptr i8, ptr %i.a, i64 %indvars.iv
  store i8 1, ptr %i.fa, align 1
  br label %.loopexit260

bb.am:                                            ; preds = %bb.ab, %bb.ac
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit260, label %bb.ab, !llvm.loop !295

.loopexit260:                                     ; preds = %bb.am, %bb.aa, %bb.al, %bb.z
  %.2169 = phi i8 [ 1, %bb.z ], [ %.1168278, %bb.al ], [ %.1168278, %bb.aa ], [ %.1168278, %bb.am ]
  %.1 = phi ptr [ %.0165, %bb.z ], [ %.0165, %bb.al ], [ %.0164279, %bb.aa ], [ %.0164279, %bb.am ]
  store i8 %i.di, ptr %.0165, align 1
  br label %bb.an

bb.an:                                            ; preds = %.loopexit260, %bb.w, %bb.u
  %.3170 = phi i8 [ %.2169, %.loopexit260 ], [ %.1168278, %bb.w ], [ %.1168278, %bb.u ]
  %.2 = phi ptr [ %.1, %.loopexit260 ], [ %.0164279, %bb.w ], [ %.0164279, %bb.u ] ; 2 uses
  %i.fb = call ptr @append_str(ptr noundef %.2, i32 noundef 1, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.t
  %.1173 = phi i32 [ 1, %bb.t ], [ %.0172275, %bb.an ]
  %.4 = phi i8 [ %.1168278, %bb.t ], [ %.3170, %bb.an ] ; 2 uses
  %.3 = phi ptr [ %i.ct, %bb.t ], [ %.2, %bb.an ]
  %i.fc = getelementptr i8, ptr %.3, i64 1        ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1             ; 2 uses
  %.not196 = icmp eq i8 %i.fd, 0
  br i1 %.not196, label %._crit_edge281.loopexit, label %bb.s, !llvm.loop !296

._crit_edge281.loopexit:                          ; preds = %bb.ao
  %.pre310 = load i32, ptr @append_str.used, align 4
  %.pre311 = load ptr, ptr @append_str.z, align 8
  %i.fe = icmp eq i32 %.pre310, 0
  br label %._crit_edge281

._crit_edge281:                                   ; preds = %._crit_edge281.loopexit, %append_str.exit222
  %i.ff = phi ptr [ %i.cd, %append_str.exit222 ], [ %.pre311, %._crit_edge281.loopexit ] ; 7 uses
  %i.fg = phi i1 [ true, %append_str.exit222 ], [ %i.fe, %._crit_edge281.loopexit ]
  %.1168.lcssa = phi i8 [ %.0167244, %append_str.exit222 ], [ %.4, %._crit_edge281.loopexit ]
  %i.fh = icmp ne ptr %i.ff, null
  %or.cond.i223 = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %or.cond.i223, label %.thread249, label %append_str.exit225

.thread249:                                       ; preds = %._crit_edge281
  store i8 0, ptr %i.ff, align 1
  br label %bb.ar

append_str.exit225:                               ; preds = %._crit_edge281
  store i32 0, ptr @append_str.used, align 4
  %.not197 = icmp eq ptr %i.ff, null
  br i1 %.not197, label %append_str.exit228, label %bb.ap

bb.ap:                                            ; preds = %append_str.exit225
  %.pr = load i8, ptr %i.ff, align 1
  %.not198 = icmp eq i8 %.pr, 0
  br i1 %.not198, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fi = call ptr @Strsafe(ptr noundef nonnull %i.ff)
  store ptr %i.fi, ptr %i.h, align 8
  %.pre312 = load i32, ptr @append_str.used, align 4
  %.pre313 = load ptr, ptr @append_str.z, align 8
  %i.fj = icmp eq i32 %.pre312, 0
  br label %bb.ar

bb.ar:                                            ; preds = %.thread249, %bb.aq, %bb.ap
  %i.fk = phi ptr [ %i.ff, %.thread249 ], [ %.pre313, %bb.aq ], [ %i.ff, %bb.ap ] ; 2 uses
  %i.fl = phi i1 [ true, %.thread249 ], [ %i.fj, %bb.aq ], [ true, %bb.ap ]
  %i.fm = icmp ne ptr %i.fk, null
  %or.cond.i226 = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %or.cond.i226, label %bb.as, label %append_str.exit228

bb.as:                                            ; preds = %bb.ar
  store i8 0, ptr %i.fk, align 1
  br label %append_str.exit228

append_str.exit228:                               ; preds = %append_str.exit225, %bb.ar, %bb.as
  store i32 0, ptr @append_str.used, align 4
  %i.fn = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8            ; 3 uses
  %i.fp = icmp eq ptr %i.fo, null
  %i.fq = icmp ne i8 %.1168.lcssa, 0
  %or.cond3 = select i1 %i.fp, i1 true, i1 %i.fq
  br i1 %or.cond3, label %bb.au, label %bb.at

bb.at:                                            ; preds = %append_str.exit228
  %i.fr = getelementptr i8, ptr %0, i64 224
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = getelementptr i8, ptr %1, i64 20
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = load ptr, ptr %1, align 8
  %i.fw = load ptr, ptr %i.fv, align 8
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.fs, i32 noundef %i.fu, ptr noundef nonnull @.str.146, ptr noundef nonnull %i.fo, ptr noundef %i.fw, ptr noundef nonnull %i.fo)
  %i.fx = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 8
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %append_str.exit228
  %i.ga = load i32, ptr %i.d, align 8             ; 3 uses
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.lr.ph290, label %._crit_edge291

.lr.ph290:                                        ; preds = %bb.au
  %i.gc = getelementptr i8, ptr %1, i64 40        ; 3 uses
  %i.gd = getelementptr i8, ptr %0, i64 224       ; 3 uses
  %i.ge = getelementptr i8, ptr %1, i64 20        ; 3 uses
  %i.gf = getelementptr i8, ptr %1, i64 32        ; 3 uses
  %i.gg = getelementptr i8, ptr %0, i64 80        ; 6 uses
  %i.gh = getelementptr i8, ptr %0, i64 216
  %i.gi = getelementptr i8, ptr %0, i64 208
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph290, %bb.bj
  %indvars.iv305 = phi i64 [ 0, %.lr.ph290 ], [ %indvars.iv.next306, %bb.bj ] ; 11 uses
  %i.gj = phi i32 [ %i.ga, %.lr.ph290 ], [ %i.ik, %bb.bj ]
  %i.gk = load ptr, ptr %i.gc, align 8
  %i.gl = getelementptr [8 x i8], ptr %i.gk, i64 %indvars.iv305
  %i.gm = load ptr, ptr %i.gl, align 8            ; 3 uses
  %.not201 = icmp eq ptr %i.gm, null
  %.not339 = icmp eq i64 %indvars.iv305, 0        ; 2 uses
  br i1 %.not201, label %bb.bf, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %.not339, label %.loopexit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gn = load ptr, ptr %i.fn, align 8            ; 2 uses
  %.not203 = icmp eq ptr %i.gn, null
  br i1 %.not203, label %.lr.ph285, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.go = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gn, ptr noundef nonnull dereferenceable(1) %i.gm) #44
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %bb.az, label %.lr.ph285

bb.az:                                            ; preds = %bb.ay
  %i.gq = load ptr, ptr %i.gd, align 8
  %i.gr = load i32, ptr %i.ge, align 4
  %i.gs = load ptr, ptr %i.gf, align 8
  %i.gt = getelementptr [8 x i8], ptr %i.gs, i64 %indvars.iv305
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = load ptr, ptr %i.gu, align 8
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.gq, i32 noundef %i.gr, ptr noundef nonnull @.str.147, ptr noundef %i.gv, ptr noundef nonnull %i.gm)
  %i.gw = load i32, ptr %i.gg, align 8
  %i.gx = add i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gg, align 8
  br label %.lr.ph285

.lr.ph285:                                        ; preds = %bb.ax, %bb.ay, %bb.az
  %i.gy = load ptr, ptr %i.gc, align 8            ; 2 uses
  %i.gz = getelementptr [8 x i8], ptr %i.gy, i64 %indvars.iv305
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph285, %bb.bd
  %indvars.iv300 = phi i64 [ 0, %.lr.ph285 ], [ %indvars.iv.next301, %bb.bd ] ; 2 uses
  %i.ha = getelementptr [8 x i8], ptr %i.gy, i64 %indvars.iv300
  %i.hb = load ptr, ptr %i.ha, align 8            ; 2 uses
  %.not204 = icmp eq ptr %i.hb, null
  br i1 %.not204, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hc = load ptr, ptr %i.gz, align 8            ; 2 uses
  %i.hd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hb, ptr noundef %i.hc) #44
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.hf = load ptr, ptr %i.gd, align 8
  %i.hg = load i32, ptr %i.ge, align 4
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.hf, i32 noundef %i.hg, ptr noundef nonnull @.str.148, ptr noundef %i.hc)
  %i.hh = load i32, ptr %i.gg, align 8
  %i.hi = add i32 %i.hh, 1
  store i32 %i.hi, ptr %i.gg, align 8
  br label %.loopexit

bb.bd:                                            ; preds = %bb.ba, %bb.bb
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1 ; 2 uses
  %exitcond304.not = icmp eq i64 %indvars.iv.next301, %indvars.iv305
  br i1 %exitcond304.not, label %.loopexit, label %bb.ba, !llvm.loop !297

.loopexit:                                        ; preds = %bb.bd, %bb.bc, %bb.aw
  %i.hj = getelementptr i8, ptr %i.a, i64 %indvars.iv305
  %i.hk = load i8, ptr %i.hj, align 1
  %.not205 = icmp eq i8 %i.hk, 0
  br i1 %.not205, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %.loopexit
  %i.hl = load ptr, ptr %i.gd, align 8
  %i.hm = load i32, ptr %i.ge, align 4
  %i.hn = load ptr, ptr %i.gc, align 8
  %i.ho = getelementptr [8 x i8], ptr %i.hn, i64 %indvars.iv305
  %i.hp = load ptr, ptr %i.ho, align 8            ; 2 uses
  %i.hq = load ptr, ptr %i.gf, align 8
  %i.hr = getelementptr [8 x i8], ptr %i.hq, i64 %indvars.iv305
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = load ptr, ptr %i.hs, align 8
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.hl, i32 noundef %i.hm, ptr noundef nonnull @.str.149, ptr noundef %i.hp, ptr noundef %i.ht, ptr noundef %i.hp)
  %i.hu = load i32, ptr %i.gg, align 8
  %i.hv = add i32 %i.hu, 1
  store i32 %i.hv, ptr %i.gg, align 8
  br label %bb.bj

bb.bf:                                            ; preds = %bb.av
  br i1 %.not339, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hw = load ptr, ptr %i.gf, align 8
  %i.hx = getelementptr [8 x i8], ptr %i.hw, i64 %indvars.iv305
  %i.hy = load ptr, ptr %i.hx, align 8            ; 3 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 12
  %i.ia = load i32, ptr %i.hz, align 4
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %has_destructor.exit232, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ic = load ptr, ptr %i.gh, align 8
  %.not.i229 = icmp eq ptr %i.ic, null
  br i1 %.not.i229, label %bb.bi, label %has_destructor.exit232.thread

bb.bi:                                            ; preds = %bb.bh
  %i.id = getelementptr i8, ptr %i.hy, i64 56
  br label %has_destructor.exit232

has_destructor.exit232:                           ; preds = %bb.bg, %bb.bi
  %.0.shrunk.i230.in.in = phi ptr [ %i.id, %bb.bi ], [ %i.gi, %bb.bg ]
  %.0.shrunk.i230.in = load ptr, ptr %.0.shrunk.i230.in.in, align 8
  %.0.shrunk.i230.not = icmp eq ptr %.0.shrunk.i230.in, null
  br i1 %.0.shrunk.i230.not, label %bb.bj, label %has_destructor.exit232.thread

has_destructor.exit232.thread:                    ; preds = %bb.bh, %has_destructor.exit232
  %i.ie = getelementptr i8, ptr %i.hy, i64 8
  %i.if = load i32, ptr %i.ie, align 8
  %i.ig = trunc i64 %indvars.iv305 to i32
  %i.ih = add i32 %i.ig, 1
  %i.ii = sub i32 %i.ih, %i.gj
  %i.ij = call ptr @append_str(ptr noundef nonnull @.str.139, i32 noundef 0, i32 noundef %i.if, i32 noundef %i.ii) ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.be, %.loopexit, %has_destructor.exit232.thread, %has_destructor.exit232, %bb.bf
  %indvars.iv.next306 = add nuw nsw i64 %indvars.iv305, 1 ; 2 uses
  %i.ik = load i32, ptr %i.d, align 8             ; 3 uses
  %i.il = sext i32 %i.ik to i64
  %i.im = icmp slt i64 %indvars.iv.next306, %i.il
  br i1 %i.im, label %bb.av, label %._crit_edge291, !llvm.loop !298

._crit_edge291:                                   ; preds = %bb.bj, %bb.au
  %.lcssa261 = phi i32 [ %i.ga, %bb.au ], [ %i.ik, %bb.bj ]
  br i1 %.not195246, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %._crit_edge291
  %i.in = sub i32 1, %.lcssa261
  %i.io = load ptr, ptr %1, align 8
  %i.ip = getelementptr i8, ptr %i.io, i64 80
  %i.iq = load i32, ptr %i.ip, align 8
  %i.ir = call ptr @append_str(ptr noundef nonnull @.str.150, i32 noundef 0, i32 noundef %i.in, i32 noundef %i.iq) ; 0 uses
  %i.is = call ptr @append_str(ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.it = call ptr @append_str(ptr noundef nonnull @.str.151, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %._crit_edge291
  %i.iu = load i32, ptr @append_str.used, align 4
  %i.iv = icmp eq i32 %i.iu, 0
  %i.iw = load ptr, ptr @append_str.z, align 8    ; 5 uses
  %i.ix = icmp ne ptr %i.iw, null
  %or.cond.i233 = select i1 %i.iv, i1 %i.ix, i1 false
  br i1 %or.cond.i233, label %.thread257, label %append_str.exit235

.thread257:                                       ; preds = %bb.bl
  store i8 0, ptr %i.iw, align 1
  store i32 0, ptr @append_str.used, align 4
  br label %bb.bo

append_str.exit235:                               ; preds = %bb.bl
  store i32 0, ptr @append_str.used, align 4
  %.not199 = icmp eq ptr %i.iw, null
  br i1 %.not199, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %append_str.exit235
  %.pr256 = load i8, ptr %i.iw, align 1
  %.not200 = icmp eq i8 %.pr256, 0
  br i1 %.not200, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iy = call ptr @Strsafe(ptr noundef nonnull %i.iw)
  %i.iz = getelementptr i8, ptr %1, i64 72
  store ptr %i.iy, ptr %i.iz, align 8
  store i32 0, ptr %i.n, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %.thread257, %bb.bn, %bb.bm, %append_str.exit235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  ret i32 %.0174
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef ptr @Strsafe(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @x1a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Strsafe_find.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %0, align 1                 ; 2 uses
  %.not5.i.i = icmp eq i8 %i.d, 0
  br i1 %.not5.i.i, label %strhash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.e = phi i8 [ %i.j, %.lr.ph.i.i ], [ %i.d, %bb.c ]
  %.07.i.i = phi i32 [ %i.i, %.lr.ph.i.i ], [ 0, %bb.c ]
  %.036.i.i = phi ptr [ %i.g, %.lr.ph.i.i ], [ %0, %bb.c ]
  %i.f = mul i32 %.07.i.i, 13
  %i.g = getelementptr i8, ptr %.036.i.i, i64 1   ; 2 uses
  %i.h = sext i8 %i.e to i32
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  %i.j = load i8, ptr %i.g, align 1               ; 2 uses
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %strhash.exit.i, label %.lr.ph.i.i, !llvm.loop !35

strhash.exit.i:                                   ; preds = %.lr.ph.i.i, %bb.c
  %.0.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.i, %.lr.ph.i.i ]
  %i.k = load i32, ptr %i.b, align 8
  %i.l = add i32 %i.k, -1
  %i.m = and i32 %i.l, %.0.lcssa.i.i
  %i.n = getelementptr i8, ptr %i.b, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = zext i32 %i.m to i64
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %i.p
  %.09.i = load ptr, ptr %i.q, align 8            ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %Strsafe_find.exit.thread, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr i8, ptr %.011.i, i64 8
  %.0.i = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %Strsafe_find.exit.thread, label %.lr.ph.i, !llvm.loop !299

.lr.ph.i:                                         ; preds = %strhash.exit.i, %bb.d
  %.011.i = phi ptr [ %.0.i, %bb.d ], [ %.09.i, %strhash.exit.i ] ; 2 uses
  %i.s = load ptr, ptr %.011.i, align 8           ; 3 uses
  %i.t = tail call i32 @strcmp(ptr noundef %i.s, ptr noundef nonnull readonly dereferenceable(1) %0) #44
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %Strsafe_find.exit, label %bb.d

Strsafe_find.exit:                                ; preds = %.lr.ph.i
  %i.v = icmp eq ptr %i.s, null
  br i1 %i.v, label %Strsafe_find.exit.thread, label %.thread

Strsafe_find.exit.thread:                         ; preds = %bb.d, %strhash.exit.i, %bb.b, %Strsafe_find.exit
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #44
  %i.x = shl i64 %i.w, 32
  %sext = add i64 %i.x, 4294967296
  %i.y = ashr exact i64 %sext, 32
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.y) #45 ; 4 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %Strsafe_find.exit.thread, %.preheader
  %.02.i = phi ptr [ %i.ac, %.preheader ], [ %i.z, %Strsafe_find.exit.thread ] ; 2 uses
  %.0.i15 = phi ptr [ %i.aa, %.preheader ], [ %0, %Strsafe_find.exit.thread ] ; 2 uses
  %i.aa = getelementptr i8, ptr %.0.i15, i64 1
  %i.ab = load i8, ptr %.0.i15, align 1           ; 2 uses
  %i.ac = getelementptr i8, ptr %.02.i, i64 1
  store i8 %i.ab, ptr %.02.i, align 1
  %.not.i16 = icmp eq i8 %i.ab, 0
  br i1 %.not.i16, label %lemon_strcpy.exit, label %.preheader, !llvm.loop !121

lemon_strcpy.exit:                                ; preds = %.preheader
  %i.ad = tail call i32 @Strsafe_insert(ptr noundef nonnull %i.z) ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %Strsafe_find.exit.thread
end_hunk_0
begin_hunk_1_@eval_preprocessor_boolean:bb.a
bb.d:                                             ; preds = %bb.c
  %.not127 = icmp eq i32 %.090158, 0
  br i1 %.not127, label %.thread131, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not128 = icmp eq i32 %.0100156, 0
  %i.j = zext i1 %.not128 to i32
  br label %bb.x

bb.f:                                             ; preds = %bb.c
  %i.k = add i32 %.088159, 1                      ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp eq i8 %i.n, 124
  br i1 %i.o, label %bb.g, label %.thread129

bb.g:                                             ; preds = %bb.f
  %.not125 = icmp eq i32 %.090158, 0
  br i1 %.not125, label %bb.h, label %.thread131

bb.h:                                             ; preds = %bb.g
  %.not126 = icmp eq i32 %.094157, 0
  br i1 %.not126, label %bb.x, label %.loopexit143

bb.i:                                             ; preds = %bb.c
  %i.p = add i32 %.088159, 1                      ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 38
  br i1 %i.t, label %bb.j, label %.thread129

bb.j:                                             ; preds = %bb.i
  %.not123 = icmp eq i32 %.090158, 0
  br i1 %.not123, label %bb.k, label %.thread131

bb.k:                                             ; preds = %bb.j
  %.not124 = icmp eq i32 %.094157, 0
  br i1 %.not124, label %.loopexit143, label %bb.x

bb.l:                                             ; preds = %bb.c
  %.not119 = icmp eq i32 %.090158, 0
  br i1 %.not119, label %.thread131, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = add i32 %.088159, 1                      ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %bb.m
  %.085 = phi i32 [ %i.u, %bb.m ], [ %i.ah, %bb.s ] ; 3 uses
  %.084 = phi i32 [ 1, %bb.m ], [ %.1, %bb.s ]    ; 3 uses
  %i.v = sext i32 %.085 to i64                    ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1
  switch i8 %i.x, label %bb.s [
    i8 0, label %.loopexit
    i8 41, label %bb.o
    i8 40, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n
  %i.y = add i32 %.084, -1                        ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr i8, ptr %0, i64 %i.v      ; 2 uses
  store i8 0, ptr %i.aa, align 1
  %i.ab = sext i32 %i.u to i64
  %i.ac = getelementptr i8, ptr %0, i64 %i.ab
  %i.ad = tail call fastcc i32 @eval_preprocessor_boolean(ptr noundef %i.ac, i32 noundef -1) ; 3 uses
  store i8 41, ptr %i.aa, align 1
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.af = sub i32 %.088159, %i.ad
  br label %.thread131

bb.r:                                             ; preds = %bb.n
  %i.ag = add i32 %.084, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.o, %bb.r
  %.1 = phi i32 [ %i.y, %bb.o ], [ %i.ag, %bb.r ], [ %.084, %bb.n ]
  %i.ah = add i32 %.085, 1
  br label %bb.n, !llvm.loop !317

.loopexit:                                        ; preds = %bb.n, %bb.p
  %.195 = phi i32 [ %i.ad, %bb.p ], [ %.094157, %bb.n ] ; 2 uses
  %.189 = phi i32 [ %.085, %bb.p ], [ %.088159, %bb.n ]
  %.not121 = icmp eq i32 %.0100156, 0
  %.not122 = icmp eq i32 %.195, 0
  %i.ai = zext i1 %.not122 to i32
  %.296 = select i1 %.not121, i32 %.195, i32 %i.ai
  br label %bb.x

.thread129:                                       ; preds = %bb.c, %bb.f, %bb.i
  %i.aj = and i16 %i.h, 1024
  %.not114 = icmp eq i16 %i.aj, 0
  %.not115 = icmp eq i32 %.090158, 0
  %or.cond142 = select i1 %.not114, i1 true, i1 %.not115
  br i1 %or.cond142, label %.thread131, label %.critedge

.critedge:                                        ; preds = %.thread129, %.critedge
  %.082.in = phi i32 [ %.082, %.critedge ], [ %.088159, %.thread129 ] ; 2 uses
  %.082 = add i32 %.082.in, 1                     ; 3 uses
  %i.ak = sext i32 %.082 to i64
  %i.al = getelementptr i8, ptr %0, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1             ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr [2 x i8], ptr %i.e, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = and i16 %i.ap, 8
  %.not116 = icmp ne i16 %i.aq, 0
  %i.ar = icmp eq i8 %i.am, 95
  %or.cond = or i1 %i.ar, %.not116
  br i1 %or.cond, label %.critedge, label %bb.t, !llvm.loop !318

bb.t:                                             ; preds = %.critedge
  %i.as = load i32, ptr @nDefine, align 4         ; 2 uses
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %.thread137, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.au = sub i32 %.082, %.088159
  %i.av = load ptr, ptr @azDefine, align 8
  %i.aw = sext i32 %i.au to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.as to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = tail call i32 @strncmp(ptr noundef %i.ay, ptr noundef %i.d, i64 noundef %i.aw) #44
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bb = getelementptr i8, ptr %i.ay, i64 %i.aw
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %.thread137, label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread137, label %bb.u, !llvm.loop !319

.thread137:                                       ; preds = %bb.v, %bb.w, %bb.t
  %.lcssa = phi i32 [ 1, %bb.t ], [ 1, %bb.w ], [ 0, %bb.v ]
  %.498 = phi i32 [ 0, %bb.t ], [ 0, %bb.w ], [ 1, %bb.v ]
  %.not117 = icmp eq i32 %.0100156, 0
  %spec.select = select i1 %.not117, i32 %.498, i32 %.lcssa
  br label %bb.x

bb.x:                                             ; preds = %.thread137, %.loopexit, %bb.k, %bb.h, %bb.b, %bb.e
  %.5105 = phi i32 [ %.0100156, %bb.b ], [ %i.j, %bb.e ], [ 0, %.thread137 ], [ %.0100156, %bb.h ], [ 0, %.loopexit ], [ %.0100156, %bb.k ]
  %.7 = phi i32 [ %.094157, %bb.b ], [ %.094157, %bb.e ], [ %spec.select, %.thread137 ], [ 0, %bb.h ], [ %.296, %.loopexit ], [ %.094157, %bb.k ] ; 2 uses
  %.393 = phi i32 [ %.090158, %bb.b ], [ 1, %bb.e ], [ 0, %.thread137 ], [ 1, %bb.h ], [ 0, %.loopexit ], [ 1, %bb.k ]
  %.4 = phi i32 [ %.088159, %bb.b ], [ %.088159, %bb.e ], [ %.082.in, %.thread137 ], [ %i.k, %bb.h ], [ %.189, %.loopexit ], [ %i.p, %bb.k ]
  %i.be = add i32 %.4, 1                          ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr i8, ptr %0, i64 %i.bf     ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1             ; 2 uses
  %.not = icmp eq i8 %i.bh, 0
  br i1 %.not, label %.loopexit143, label %bb.b, !llvm.loop !320

.thread131:                                       ; preds = %bb.l, %.thread129, %bb.j, %bb.g, %bb.d, %bb.q
  %.5 = phi i32 [ %i.af, %bb.q ], [ %.088159, %bb.d ], [ %.088159, %bb.g ], [ %.088159, %bb.j ], [ %.088159, %.thread129 ], [ %.088159, %bb.l ] ; 2 uses
  %i.bi = icmp sgt i32 %1, 0
  br i1 %i.bi, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread131
  %i.bj = load ptr, ptr @stderr, align 8
  %i.bk = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bj, i32 noundef 2, ptr noundef nonnull @.str.277, i32 noundef %1) ; 0 uses
  %i.bl = load ptr, ptr @stderr, align 8
  %i.bm = add i32 %.5, 1
  %i.bn = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bl, i32 noundef 2, ptr noundef nonnull @.str.278, i32 noundef %i.bm, ptr noundef %0) ; 0 uses
  tail call void @exit(i32 noundef 1) #41
  unreachable

bb.z:                                             ; preds = %.thread131
  %i.bo = xor i32 %.5, -1
  br label %.loopexit143

.loopexit143:                                     ; preds = %bb.h, %bb.k, %bb.x, %bb.a, %bb.z
  %.0 = phi i32 [ %i.bo, %bb.z ], [ 0, %bb.a ], [ 0, %bb.k ], [ 1, %bb.h ], [ %.7, %bb.x ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #37

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #37

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind null_pointer_is_valid willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind null_pointer_is_valid willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn }
attributes #21 = { cold noreturn null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noreturn null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind null_pointer_is_valid sspstrong memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind null_pointer_is_valid sspstrong memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nounwind null_pointer_is_valid willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree nounwind null_pointer_is_valid memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nofree nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #40 = { nounwind allocsize(0,1) }
attributes #41 = { cold noreturn nounwind }
attributes #42 = { nounwind }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind willreturn memory(read) }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { noreturn nounwind }
attributes #47 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8, !12, !13}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !8, !13, !12}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8, !29}
!29 = !{!"llvm.loop.unswitch.partial.disable"}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8, !29}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !8}
!42 = distinct !{!42, !8}
!43 = distinct !{!43, !8}
!44 = distinct !{!44, !8}
!45 = distinct !{!45, !8}
!46 = distinct !{!46, !8}
!47 = distinct !{!47, !8}
!48 = distinct !{!48, !8}
!49 = distinct !{!49, !8}
!50 = distinct !{!50, !8}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, !8}
!53 = distinct !{!53, !8}
!54 = distinct !{!54, !8}
!55 = distinct !{!55, !8}
!56 = distinct !{!56, !8}
!57 = distinct !{!57, !8}
!58 = distinct !{!58, !8}
!59 = distinct !{!59, !8}
!60 = distinct !{!60, !8}
!61 = distinct !{!61, !8}
!62 = distinct !{!62, !8}
!63 = distinct !{!63, !8}
!64 = distinct !{!64, !8}
!65 = distinct !{!65, !8}
!66 = distinct !{!66, !8}
!67 = distinct !{!67, !8}
!68 = distinct !{!68, !8}
!69 = distinct !{!69, !8}
!70 = distinct !{!70, !8}
!71 = distinct !{!71, !8}
!72 = distinct !{!72, !8}
!73 = distinct !{!73, !8}
!74 = distinct !{!74, !8, !29}
!75 = distinct !{!75, !8}
!76 = distinct !{!76, !8}
!77 = distinct !{!77, !8, !29}
!78 = distinct !{!78, !8}
!79 = distinct !{!79, !8}
!80 = distinct !{!80, !8}
!81 = distinct !{!81, !8}
!82 = distinct !{!82, !8}
!83 = distinct !{!83, !8}
!84 = distinct !{!84, !8}
!85 = distinct !{!85, !8}
!86 = distinct !{!86, !8}
!87 = distinct !{!87, !8}
!88 = distinct !{!88, !8}
!89 = distinct !{!89, !8}
!90 = distinct !{!90, !8}
!91 = distinct !{!91, !8}
!92 = distinct !{!92, !8}
!93 = distinct !{!93, !8}
!94 = !{!95}
!95 = distinct !{!95, !96}
!96 = distinct !{!96, !"LVerDomain"}
!97 = !{!98}
!98 = distinct !{!98, !96}
!99 = distinct !{!99, !8, !12, !13}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = distinct !{!102, !8, !12}
!103 = distinct !{!103, !8}
!104 = distinct !{!104, !8}
!105 = distinct !{!105, !8}
!106 = distinct !{!106, !8}
!107 = distinct !{!107, !8}
!108 = distinct !{!108, !8}
!109 = distinct !{!109, !8}
!110 = distinct !{!110, !8}
!111 = distinct !{!111, !8}
!112 = distinct !{!112, !8}
!113 = !{!114}
!114 = distinct !{!114, !115}
!115 = distinct !{!115, !"LVerDomain"}
!116 = !{!117}
!117 = distinct !{!117, !115}
!118 = distinct !{!118, !8, !12, !13}
!119 = distinct !{!119, !101}
!120 = distinct !{!120, !8, !12}
!121 = distinct !{!121, !8}
!122 = distinct !{!122, !8}
!123 = distinct !{!123, !8}
!124 = distinct !{null}
!125 = distinct !{!125, !8}
!126 = distinct !{null}
!127 = distinct !{!127, !8}
!128 = distinct !{!128, !8, !12, !13}
!129 = !{!"branch_weights", i32 8, i32 24}
!130 = distinct !{!130, !8, !12, !13}
!131 = distinct !{!131, !8, !13, !12}
!132 = distinct !{!132, !8}
!133 = distinct !{!133, !8, !12, !13}
!134 = distinct !{!134, !8, !12, !13}
!135 = distinct !{!135, !8, !13, !12}
!136 = distinct !{!136, !8}
end_hunk_1
