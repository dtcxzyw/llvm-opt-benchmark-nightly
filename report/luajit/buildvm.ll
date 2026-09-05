Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/buildvm?download=true
inline.NumInlined: 25
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@dasm_encode:bb.a

.lr.ph271.preheader:                              ; preds = %bb.w
  %.0289 = ptrtoaddr ptr %.0 to i64
  %i.cm = xor i64 %.0289, -1
  %i.cn = add i64 %i.cm, %.2198288
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0, ptr nonnull align 1 %i.ck, i64 %i.cn, i1 false), !tbaa !41
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph271.preheader, %bb.w
  %.not227 = icmp eq ptr %.0171, null
  %i.co = getelementptr inbounds i8, ptr %.0171, i64 -1
  %spec.select235 = select i1 %.not227, ptr null, ptr %i.co
  %i.cp = getelementptr inbounds i8, ptr %.2198, i64 -1
  %i.cq = and i32 %i.ai, 7
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %._crit_edge
  %.5201 = phi ptr [ %.2198, %bb.t ], [ %i.cp, %._crit_edge ] ; 2 uses
  %.8 = phi ptr [ %.0171, %bb.t ], [ %spec.select235, %._crit_edge ] ; 2 uses
  %.2168 = phi i32 [ %i.ai, %bb.t ], [ %i.cq, %._crit_edge ] ; 2 uses
  %i.cr = icmp ugt i8 %i.bl, -65
  br i1 %i.cr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cs = shl i32 %.2168, 4
  br label %bb.ad

bb.z:                                             ; preds = %.thread243, %bb.x
  %.2168250 = phi i32 [ %i.cb, %.thread243 ], [ %.2168, %bb.x ] ; 3 uses
  %.8249 = phi ptr [ %.0171, %.thread243 ], [ %.8, %bb.x ] ; 3 uses
  %.5201247 = phi ptr [ %.2198, %.thread243 ], [ %.5201, %bb.x ] ; 5 uses
  %i.ct = icmp ugt i8 %i.bl, 63
  br i1 %i.ct, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cu = shl i32 %.2168250, 3
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.cv = icmp eq i32 %.2168250, 4
  %i.cw = icmp samesign ult i8 %i.bl, 32
  %or.cond5 = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond5, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cx = getelementptr inbounds i8, ptr %.5201247, i64 -1 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !41
  %i.cz = xor i8 %i.cy, 4
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !41
  %i.da = getelementptr inbounds nuw i8, ptr %.5201247, i64 1
  store i8 32, ptr %.5201247, align 1, !tbaa !41
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac, %bb.ab, %bb.y
  %.8248 = phi ptr [ %.8, %bb.y ], [ %.8249, %bb.aa ], [ %.8249, %bb.ac ], [ %.8249, %bb.ab ]
  %.6202 = phi ptr [ %.5201, %bb.y ], [ %.5201247, %bb.aa ], [ %i.da, %bb.ac ], [ %.5201247, %bb.ab ] ; 2 uses
  %.3169 = phi i32 [ %i.cs, %bb.y ], [ %i.cu, %bb.aa ], [ 4, %bb.ac ], [ %.2168250, %bb.ab ]
  %i.db = getelementptr inbounds i8, ptr %.6202, i64 -1 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !41
  %i.dd = trunc i32 %.3169 to i8
  %i.de = xor i8 %i.dc, %i.dd
  store i8 %i.de, ptr %i.db, align 1, !tbaa !41
  br label %.loopexit

bb.ae:                                            ; preds = %bb.e
  %i.df = getelementptr inbounds nuw i8, ptr %.0178, i64 2 ; 2 uses
  %i.dg = icmp sgt i32 %i.ai, -1
  br i1 %i.dg, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %.2189, i64 4
  %i.di = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.dj = sub nsw i32 -10, %i.ai
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !43
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = trunc i64 %i.dn to i32
  br label %bb.ag

bb.ag:                                            ; preds = %.thread255, %bb.e, %bb.af
  %.5192 = phi ptr [ %i.dt, %.thread255 ], [ %i.dh, %bb.af ], [ %.2189, %bb.e ]
  %.3181 = phi ptr [ %.4182, %.thread255 ], [ %i.df, %bb.af ], [ %i.ad, %bb.e ]
  %.4 = phi i32 [ %i.ed, %.thread255 ], [ %i.do, %bb.af ], [ %i.ai, %bb.e ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.2198, i64 4
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = sub i32 %.4, %i.dr
  br label %bb.m

bb.ah:                                            ; preds = %bb.e, %bb.ae
  %.4182 = phi ptr [ %i.df, %bb.ae ], [ %i.ad, %bb.e ] ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.2189, i64 4 ; 4 uses
  %i.du = ashr i32 %i.ai, 24
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [40 x i8], ptr %i.f, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !38
  %i.dy = sext i32 %i.ai to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !40 ; 2 uses
  %i.eb = icmp slt i32 %i.ea, 0
  br i1 %i.eb, label %.thread255, label %bb.ai

.thread255:                                       ; preds = %bb.ah
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !40
  br label %bb.ag

bb.ai:                                            ; preds = %bb.ah
  %i.ee = load i32, ptr %.2189, align 4, !tbaa !40 ; 2 uses
  %i.ef = ptrtoint ptr %.2198 to i64
  %.neg222 = sub i64 %i.n, %i.ef
  %.neg223 = trunc i64 %.neg222 to i32
  %.neg224 = add i32 %.neg223, -4
  %.neg = add i32 %.neg224, %i.ea
  %i.eg = add i32 %.neg, %i.ee                    ; 3 uses
  switch i32 %i.ee, label %bb.ak [
    i32 0, label %bb.m
    i32 4, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.eh = getelementptr inbounds i8, ptr %.2198, i64 -1 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !41
  %i.ej = add i8 %i.ei, -16
  %i.ek = getelementptr inbounds i8, ptr %.2198, i64 -2
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !41
  br label %.thread251

bb.ak:                                            ; preds = %bb.ai
  %i.el = getelementptr inbounds i8, ptr %.2198, i64 -1
  store i8 -21, ptr %i.el, align 1, !tbaa !41
  br label %.thread251

bb.al:                                            ; preds = %bb.e
  %i.em = getelementptr inbounds nuw i8, ptr %.0178, i64 2 ; 2 uses
  %i.en = icmp slt i32 %i.ai, 0
  br i1 %i.en, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eo = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.ep = sub nsw i32 -10, %i.ai
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !43
  %i.et = ptrtoint ptr %i.es to i64
  store i64 %i.et, ptr %.2198, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %.2198, i64 8
  br label %.loopexit

bb.an:                                            ; preds = %bb.al, %bb.e
  %.5183 = phi ptr [ %i.em, %bb.al ], [ %i.ad, %bb.e ]
  %i.ev = ashr i32 %i.ai, 24
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [40 x i8], ptr %i.f, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !38
  %i.ez = sext i32 %i.ai to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.ez ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !40 ; 2 uses
  %i.fc = icmp slt i32 %i.fb, 0
  br i1 %i.fc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !40
  %i.ff = sext i32 %i.fe to i64
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.fg = zext nneg i32 %i.fb to i64
  %i.fh = add nsw i64 %i.fg, %i.n
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fi = phi i64 [ %i.ff, %bb.ao ], [ %i.fh, %bb.ap ]
  store i64 %i.fi, ptr %.2198, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %.2198, i64 8
  br label %.loopexit

bb.ar:                                            ; preds = %bb.e
  %i.fk = getelementptr inbounds nuw i8, ptr %.0178, i64 2 ; 3 uses
  %i.fl = load i8, ptr %i.ad, align 1, !tbaa !41  ; 2 uses
  %i.fm = zext i8 %i.fl to i64
  %i.fn = icmp ugt i8 %i.fl, 9
  br i1 %i.fn, label %bb.as, label %.loopexit

bb.as:                                            ; preds = %bb.ar
  %i.fo = load i8, ptr %i.fk, align 1, !tbaa !41
  %i.fp = icmp eq i8 %i.fo, -14
  br i1 %i.fp, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fq = load i32, ptr %.2189, align 4, !tbaa !40
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.fr = phi i32 [ %i.fq, %bb.at ], [ %i.ai, %bb.as ]
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds i8, ptr %1, i64 %i.fs
  %i.fu = load ptr, ptr %i.o, align 8, !tbaa !31
  %2 = getelementptr [8 x i8], ptr %i.fu, i64 %i.fm
  %3 = getelementptr i8, ptr %2, i64 -80
  store ptr %i.ft, ptr %3, align 8, !tbaa !43
  br label %.loopexit

bb.av:                                            ; preds = %bb.e
  %i.fv = getelementptr inbounds nuw i8, ptr %.0178, i64 2 ; 2 uses
  %.not221265 = icmp eq i32 %i.ai, 0
  br i1 %.not221265, label %.loopexit, label %.lr.ph268.preheader

.lr.ph268.preheader:                              ; preds = %bb.av
  %i.fw = load i8, ptr %i.ad, align 1, !tbaa !41
  %i.fx = zext i32 %i.ai to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.2198, i8 %i.fw, i64 %i.fx, i1 false), !tbaa !41
  %scevgep = getelementptr i8, ptr %.2198, i64 1
  %i.fy = add i32 %i.ai, -1
  %i.fz = zext i32 %i.fy to i64
  %scevgep287 = getelementptr i8, ptr %scevgep, i64 %i.fz
  br label %.loopexit

bb.aw:                                            ; preds = %bb.e
  %i.ga = getelementptr inbounds nuw i8, ptr %.0178, i64 2 ; 2 uses
  %i.gb = load i8, ptr %i.ad, align 1, !tbaa !41
  %i.gc = zext i8 %i.gb to i64                    ; 2 uses
  %i.gd = ptrtoint ptr %.2198 to i64
  %i.ge = sub i64 %i.gd, %i.n
  %i.gf = and i64 %i.ge, %i.gc
  %.not220263 = icmp eq i64 %i.gf, 0
  br i1 %.not220263, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aw, %.lr.ph
  %.11264 = phi ptr [ %i.gg, %.lr.ph ], [ %.2198, %bb.aw ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.11264, i64 1 ; 3 uses
  store i8 -112, ptr %.11264, align 1, !tbaa !41
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = sub i64 %i.gh, %i.n
  %i.gj = and i64 %i.gi, %i.gc
  %.not220 = icmp eq i64 %i.gj, 0
  br i1 %.not220, label %.loopexit, label %.lr.ph, !llvm.loop !74

bb.ax:                                            ; preds = %bb.e
  %i.gk = load i8, ptr %i.ad, align 1, !tbaa !41
  %i.gl = zext i8 %i.gk to i32
  %i.gm = load i32, ptr %i.h, align 4, !tbaa !44  ; 2 uses
  %i.gn = icmp sgt i32 %i.gm, 199
  br i1 %i.gn, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.go = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.gp = call i64 @fwrite(ptr nonnull @.str.362, i64 55, i64 1, ptr %i.go) #27 ; 0 uses
  call void @exit(i32 noundef 1) #24
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.gq = getelementptr inbounds nuw i8, ptr %.0178, i64 2
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !41
  %i.gs = zext i8 %i.gr to i64                    ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr @relocmap, i64 %i.gs ; 3 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !40 ; 2 uses
  %i.gv = icmp slt i32 %i.gu, 0
  br i1 %i.gv, label %bb.ba, label %collect_reloc.exit

bb.ba:                                            ; preds = %bb.az
  %i.gw = load i32, ptr %i.i, align 8, !tbaa !46
  store i32 %i.gw, ptr %i.gt, align 4, !tbaa !40
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr @extnames, i64 %i.gs
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !47
  %.val.i = load i32, ptr %i.j, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.gz = icmp eq i32 %.val.i, 2
  %i.ha = select i1 %i.gz, ptr @.str.364, ptr @.str.363
  %i.hb = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.365, ptr noundef nonnull %i.ha, ptr noundef nonnull @.str.363, ptr noundef %i.gy) #25 ; 0 uses
  %i.hc = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 64) #28 ; 2 uses
  %.not.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i, label %sym_decorate.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i8 0, ptr %i.hc, align 1, !tbaa !41
  br label %sym_decorate.exit.i

sym_decorate.exit.i:                              ; preds = %bb.bb, %bb.ba
  %i.hd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #28
  %i.he = add i64 %i.hd, 1
  %i.hf = call noalias noundef ptr @malloc(i64 noundef %i.he) #29 ; 2 uses
  %i.hg = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.hf, ptr noundef nonnull dereferenceable(1) %i.a) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.hh = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.hi = load i32, ptr %i.i, align 8, !tbaa !46  ; 2 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.hj
  store ptr %i.hf, ptr %i.hk, align 8, !tbaa !47
  %i.hl = add nsw i32 %i.hi, 1
  store i32 %i.hl, ptr %i.i, align 8, !tbaa !46
  %.pre.i = load i32, ptr %i.h, align 4, !tbaa !44
  %.pre19.i = load i32, ptr %i.gt, align 4, !tbaa !40
  br label %collect_reloc.exit

collect_reloc.exit:                               ; preds = %bb.az, %sym_decorate.exit.i
  %i.hm = phi i32 [ %.pre19.i, %sym_decorate.exit.i ], [ %i.gu, %bb.az ]
  %i.hn = phi i32 [ %.pre.i, %sym_decorate.exit.i ], [ %i.gm, %bb.az ] ; 2 uses
  %i.ho = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.hp = ptrtoint ptr %.2198 to i64
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = trunc i64 %i.hr to i32
  %i.ht = sext i32 %i.hn to i64
  %i.hu = getelementptr inbounds [12 x i8], ptr %i.m, i64 %i.ht ; 3 uses
  store i32 %i.hs, ptr %i.hu, align 4, !tbaa !77
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  store i32 %i.hm, ptr %i.hv, align 4, !tbaa !78
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store i32 %i.gl, ptr %i.hw, align 4, !tbaa !79
  %i.hx = add nsw i32 %i.hn, 1
  store i32 %i.hx, ptr %i.h, align 4, !tbaa !44
  %i.hy = getelementptr inbounds nuw i8, ptr %.0178, i64 3
  br label %bb.m

bb.bc:                                            ; preds = %bb.e
  br label %.loopexit

bb.bd:                                            ; preds = %bb.e
  %i.hz = getelementptr inbounds nuw i8, ptr %.0178, i64 2
  %i.ia = load i8, ptr %i.ad, align 1, !tbaa !41
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.e
  %.6184 = phi ptr [ %i.ad, %bb.e ], [ %i.hz, %bb.bd ]
  %.0170.in = phi i8 [ %i.ae, %bb.e ], [ %i.ia, %bb.bd ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.2198, i64 1
  store i8 %.0170.in, ptr %.2198, align 1, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.thread251, %bb.m, %bb.o, %bb.ad, %bb.am, %bb.aq, %bb.bc, %bb.be, %bb.e, %bb.e, %bb.au, %bb.ar, %.thread241, %bb.av, %bb.aw, %.lr.ph268.preheader
  %.12 = phi ptr [ %i.ib, %bb.be ], [ %i.az, %.thread251 ], [ %.2198, %.thread241 ], [ %i.bf, %bb.m ], [ %i.bj, %bb.o ], [ %.6202, %bb.ad ], [ %i.eu, %bb.am ], [ %i.fj, %bb.aq ], [ %.2198, %bb.bc ], [ %.2198, %bb.e ], [ %.2198, %bb.e ], [ %.2198, %bb.ar ], [ %scevgep287, %.lr.ph268.preheader ], [ %.2198, %bb.au ], [ %.2198, %bb.av ], [ %.2198, %bb.aw ], [ %i.gg, %.lr.ph ]
  %.6193 = phi ptr [ %.2189, %bb.be ], [ %.3190, %.thread251 ], [ %.2189, %.thread241 ], [ %.4191, %bb.m ], [ %.2189, %bb.o ], [ %.2189, %bb.ad ], [ %.2189, %bb.am ], [ %.2189, %bb.aq ], [ %.2189, %bb.bc ], [ %.2189, %bb.e ], [ %.2189, %bb.e ], [ %.2189, %bb.ar ], [ %.2189, %.lr.ph268.preheader ], [ %.2189, %bb.au ], [ %.2189, %bb.av ], [ %.2189, %bb.aw ], [ %.2189, %.lr.ph ]
  %.7185 = phi ptr [ %.6184, %bb.be ], [ %.1179, %.thread251 ], [ %i.ad, %.thread241 ], [ %.2180, %bb.m ], [ %i.ad, %bb.o ], [ %i.bk, %bb.ad ], [ %i.em, %bb.am ], [ %.5183, %bb.aq ], [ %i.ad, %bb.bc ], [ %i.ad, %bb.e ], [ %i.ad, %bb.e ], [ %i.fk, %bb.ar ], [ %i.fv, %.lr.ph268.preheader ], [ %i.fk, %bb.au ], [ %i.fv, %bb.av ], [ %i.ga, %bb.aw ], [ %i.ga, %.lr.ph ]
  %.9 = phi ptr [ %.0171, %bb.be ], [ %.3174, %.thread251 ], [ %spec.select236, %.thread241 ], [ %.5176, %bb.m ], [ %.6177, %bb.o ], [ %.8248, %bb.ad ], [ %.0171, %bb.am ], [ %.0171, %bb.aq ], [ %.2198, %bb.bc ], [ %.0171, %bb.e ], [ %.0171, %bb.e ], [ %.0171, %bb.ar ], [ %.0171, %.lr.ph268.preheader ], [ %.0171, %bb.au ], [ %.0171, %bb.av ], [ %.0171, %bb.aw ], [ %.0171, %.lr.ph ]
  br label %bb.c, !llvm.loop !73

._crit_edge277.loopexit:                          ; preds = %.loopexit260
  %.pre291 = load i32, ptr %i.c, align 8, !tbaa !26
  br label %._crit_edge277

._crit_edge277:                                   ; preds = %._crit_edge277.loopexit, %bb.b
  %i.ic = phi i32 [ %i.p, %bb.b ], [ %.pre291, %._crit_edge277.loopexit ] ; 2 uses
  %.1197.lcssa = phi ptr [ %.0196279, %bb.b ], [ %.2198, %._crit_edge277.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = icmp slt i64 %indvars.iv.next, %i.id
  br i1 %i.ie, label %bb.b, label %._crit_edge283, !llvm.loop !75

._crit_edge283:                                   ; preds = %._crit_edge277, %bb.a
  %.0196.lcssa = phi ptr [ %1, %bb.a ], [ %.1197.lcssa, %._crit_edge277 ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !42
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 %i.ig
  %.not = icmp eq ptr %i.ih, %.0196.lcssa
  %. = select i1 %.not, i32 0, i32 33554432
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @dasm_getpclabel(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.b
  %i.j = load i32, ptr %i.i, align 4, !tbaa !40   ; 3 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.m = sub nsw i32 0, %i.j                      ; 2 uses
  %i.n = lshr i32 %i.m, 24
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.r = zext nneg i32 %i.m to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !40
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.c, %bb.d
  %.1 = phi i32 [ -2, %bb.d ], [ -1, %bb.c ], [ %i.t, %.thread ]
  ret i32 %.1
}
end_hunk_0
