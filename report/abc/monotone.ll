inline.NumInlined: 137
inline.NumDeleted: 34
begin_hunk_0_@createMonotoneTester:bb.a
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !59
  %i.dd = and i64 %i.cy, 1
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = xor i64 %i.dd, %i.de
  %i.dg = inttoptr i64 %i.df to ptr
  br label %Aig_ObjChild1Copy.exit

Aig_ObjChild1Copy.exit:                           ; preds = %Aig_ObjChild0Copy.exit, %bb.o
  %i.dh = phi ptr [ %i.dg, %bb.o ], [ null, %Aig_ObjChild0Copy.exit ]
  %i.di = tail call ptr @Aig_And(ptr noundef nonnull %i.i, ptr noundef %i.cw, ptr noundef %i.dh) #17
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !59
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !47
  br label %bb.p

bb.p:                                             ; preds = %Aig_ObjChild1Copy.exit, %bb.l, %.lr.ph331
  %i.dk = phi ptr [ %.pre, %Aig_ObjChild1Copy.exit ], [ %i.cd, %bb.l ], [ %i.cd, %.lr.ph331 ] ; 2 uses
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 4
  %.val218 = load i32, ptr %i.dl, align 4, !tbaa !26
  %i.dm = sext i32 %.val218 to i64
  %i.dn = icmp slt i64 %indvars.iv.next366, %i.dm
  br i1 %i.dn, label %.lr.ph331, label %.critedge6, !llvm.loop !69

.critedge6:                                       ; preds = %bb.p, %.critedge4
  %i.do = getelementptr i8, ptr %0, i64 24        ; 5 uses
  %.val258 = load ptr, ptr %i.do, align 8, !tbaa !70
  %i.dp = getelementptr i8, ptr %.val258, i64 8
  %.val258.val = load ptr, ptr %i.dp, align 8, !tbaa !29
  %i.dq = sext i32 %i.a to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %.val258.val, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !30
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %.val248 = load ptr, ptr %i.dt, align 8, !tbaa !67 ; 2 uses
  %i.du = ptrtoint ptr %.val248 to i64            ; 2 uses
  %i.dv = and i64 %i.du, 1
  %.not = icmp eq i64 %i.dv, 0
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.critedge6
  %i.dw = getelementptr inbounds nuw i8, ptr %.val248, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !59
  br label %bb.s

bb.r:                                             ; preds = %.critedge6
  %i.dy = and i64 %i.du, -2
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !59
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = xor i64 %i.ec, 1
  %i.ee = inttoptr i64 %i.ed to ptr
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ef = phi ptr [ %i.dx, %bb.q ], [ %i.ee, %bb.r ] ; 2 uses
  %i.eg = tail call ptr @Aig_And(ptr noundef nonnull %i.i, ptr noundef %i.ef, ptr noundef %i.ar) #17 ; 2 uses
  %i.eh = getelementptr i8, ptr %0, i64 140
  %.val259 = load i32, ptr %i.eh, align 4, !tbaa !34
  %.val260 = load i32, ptr %i.w, align 8, !tbaa !61
  %.neg = sub i32 %.val260, %.val259
  %.val238 = load ptr, ptr %i.r, align 8, !tbaa !58 ; 2 uses
  %.not212 = icmp eq ptr %i.d, null               ; 2 uses
  br i1 %.not212, label %bb.x, label %.preheader

.preheader:                                       ; preds = %bb.s
  %i.ei = getelementptr i8, ptr %i.d, i64 4       ; 2 uses
  %.val231332 = load i32, ptr %i.ei, align 4, !tbaa !33
  %i.ej = icmp sgt i32 %.val231332, 0
  br i1 %i.ej, label %.lr.ph335, label %.critedge8

.lr.ph335:                                        ; preds = %.preheader
  %i.ek = getelementptr i8, ptr %i.d, i64 8
  %i.el = add i32 %i.a, 1
  %i.em = sub i32 %i.el, %i.c
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph335, %bb.w
  %indvars.iv368 = phi i64 [ 0, %.lr.ph335 ], [ %indvars.iv.next369, %bb.w ] ; 2 uses
  %.0206333 = phi ptr [ %.val238, %.lr.ph335 ], [ %i.fv, %bb.w ]
  %.val235 = load ptr, ptr %i.ek, align 8, !tbaa !31
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.val235, i64 %indvars.iv368
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !34
  %i.ep = add i32 %i.em, %i.eo                    ; 3 uses
  %i.eq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ep) ; 0 uses
  %.val257 = load ptr, ptr %i.do, align 8, !tbaa !70
  %i.er = getelementptr i8, ptr %.val257, i64 8
  %.val257.val = load ptr, ptr %i.er, align 8, !tbaa !29
  %i.es = sext i32 %i.ep to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %.val257.val, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !30
  %i.ev = getelementptr i8, ptr %i.eu, i64 8
  %.val247 = load ptr, ptr %i.ev, align 8, !tbaa !67 ; 2 uses
  %i.ew = ptrtoint ptr %.val247 to i64            ; 2 uses
  %i.ex = and i64 %i.ew, 1
  %.not215 = icmp eq i64 %i.ex, 0
  br i1 %.not215, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ey = getelementptr inbounds nuw i8, ptr %.val247, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !59
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.fa = and i64 %i.ew, -2
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !59
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = xor i64 %i.fe, 1
  %i.fg = inttoptr i64 %i.ff to ptr
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fh = phi ptr [ %i.ez, %bb.u ], [ %i.fg, %bb.v ] ; 2 uses
  %i.fi = add i32 %.neg, %i.ep
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %.val224, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !30 ; 2 uses
  %i.fm = tail call ptr @Aig_And(ptr noundef nonnull %i.i, ptr noundef %i.fh, ptr noundef %i.fl) #17
  %i.fn = ptrtoint ptr %i.fh to i64
  %i.fo = xor i64 %i.fn, 1
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = ptrtoint ptr %i.fl to i64
  %i.fr = xor i64 %i.fq, 1
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = tail call ptr @Aig_And(ptr noundef nonnull %i.i, ptr noundef %i.fp, ptr noundef %i.fs) #17
  %i.fu = tail call ptr @Aig_Or(ptr noundef nonnull %i.i, ptr noundef %i.fm, ptr noundef %i.ft) #17
  %i.fv = tail call ptr @Aig_And(ptr noundef nonnull %i.i, ptr noundef %.0206333, ptr noundef %i.fu) #17 ; 2 uses
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1 ; 2 uses
  %.val231 = load i32, ptr %i.ei, align 4, !tbaa !33
  %i.fw = sext i32 %.val231 to i64
  %i.fx = icmp slt i64 %indvars.iv.next369, %i.fw
  br i1 %i.fx, label %bb.t, label %.critedge8, !llvm.loop !71

.critedge8:                                       ; preds = %bb.w, %.preheader
  %.0206.lcssa = phi ptr [ %.val238, %.preheader ], [ %i.fv, %bb.w ]
  %i.fy = tail call ptr @Aig_And(ptr noundef nonnull %i.i, ptr noundef %i.eg, ptr noundef %.0206.lcssa) #17
  br label %bb.x

bb.x:                                             ; preds = %.critedge8, %bb.s
  %.0208 = phi ptr [ %i.fy, %.critedge8 ], [ %i.eg, %bb.s ]
  %.val230 = load i32, ptr %i.as, align 4, !tbaa !33 ; 4 uses
  %i.fz = add i32 %.val230, -1
  %or.cond.i266 = icmp ult i32 %i.fz, 7
  %spec.store.select.i267 = select i1 %or.cond.i266, i32 8, i32 %.val230 ; 7 uses
  %.not.i268 = icmp eq i32 %spec.store.select.i267, 0
  br i1 %.not.i268, label %Vec_PtrAlloc.exit269.thread, label %bb.y

Vec_PtrAlloc.exit269.thread:                      ; preds = %bb.x
  %i.ga = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 2 uses
  store i32 0, ptr %i.gb, align 4, !tbaa !26
  store i32 %spec.store.select.i267, ptr %i.ga, align 8, !tbaa !65
  br label %Vec_PtrAlloc.exit273

bb.y:                                             ; preds = %bb.x
  %i.gc = sext i32 %spec.store.select.i267 to i64
  %i.gd = shl nsw i64 %i.gc, 3
  %i.ge = tail call noalias ptr @malloc(i64 noundef %i.gd) #16
  %i.gf = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 2 uses
  store i32 0, ptr %i.gg, align 4, !tbaa !26
  store i32 %spec.store.select.i267, ptr %i.gf, align 8, !tbaa !65
  %i.gh = sext i32 %spec.store.select.i267 to i64
  %i.gi = shl nsw i64 %i.gh, 3
  %i.gj = tail call noalias ptr @malloc(i64 noundef %i.gi) #16
  br label %Vec_PtrAlloc.exit273

Vec_PtrAlloc.exit273:                             ; preds = %Vec_PtrAlloc.exit269.thread, %bb.y
  %i.gk = phi ptr [ %i.gg, %bb.y ], [ %i.gb, %Vec_PtrAlloc.exit269.thread ] ; 3 uses
  %i.gl = phi ptr [ %i.gf, %bb.y ], [ %i.ga, %Vec_PtrAlloc.exit269.thread ] ; 3 uses
  %i.gm = phi ptr [ %i.ge, %bb.y ], [ null, %Vec_PtrAlloc.exit269.thread ] ; 3 uses
  %i.gn = phi ptr [ %i.gj, %bb.y ], [ null, %Vec_PtrAlloc.exit269.thread ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 6 uses
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !29
  %i.gp = icmp sgt i32 %.val230, 0
  br i1 %i.gp, label %.lr.ph340, label %.critedge10.preheader

.lr.ph340:                                        ; preds = %Vec_PtrAlloc.exit273
  %i.gq = getelementptr i8, ptr %i.f, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.z

.critedge10.preheader:                            ; preds = %bb.bg, %Vec_PtrAlloc.exit273
  %.val219 = phi ptr [ %i.gm, %Vec_PtrAlloc.exit273 ], [ %i.ke, %bb.bg ]
  %.val = phi i32 [ 0, %Vec_PtrAlloc.exit273 ], [ %i.ki, %bb.bg ] ; 3 uses
  %i.gt = getelementptr i8, ptr %0, i64 112       ; 3 uses
  %.val263341 = load i32, ptr %i.gt, align 8, !tbaa !72
  %i.gu = icmp sgt i32 %.val263341, 0
  br i1 %i.gu, label %.lr.ph344, label %.critedge12

bb.z:                                             ; preds = %.lr.ph340, %bb.bg
  %i.gv = phi ptr [ %i.gm, %.lr.ph340 ], [ %i.ke, %bb.bg ] ; 4 uses
  %i.gw = phi i32 [ %spec.store.select.i267, %.lr.ph340 ], [ %i.kf, %bb.bg ] ; 9 uses
  %i.gx = phi ptr [ %i.gm, %.lr.ph340 ], [ %i.kg, %bb.bg ] ; 10 uses
  %i.gy = phi i32 [ %spec.store.select.i267, %.lr.ph340 ], [ %i.kh, %bb.bg ] ; 7 uses
  %i.gz = phi i32 [ 0, %.lr.ph340 ], [ %i.ki, %bb.bg ] ; 5 uses
  %indvars.iv371 = phi i64 [ 0, %.lr.ph340 ], [ %indvars.iv.next372, %bb.bg ] ; 2 uses
  %.val228339 = phi i32 [ %.val230, %.lr.ph340 ], [ %.val228, %bb.bg ]
  %.val234 = load ptr, ptr %i.gq, align 8, !tbaa !31 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.val234, i64 %indvars.iv371
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !34 ; 3 uses
  %.val256 = load ptr, ptr %i.do, align 8, !tbaa !70
  %i.hc = getelementptr i8, ptr %.val256, i64 8
  %.val256.val = load ptr, ptr %i.hc, align 8, !tbaa !29
  %i.hd = sext i32 %i.hb to i64
  %i.he = getelementptr inbounds [8 x i8], ptr %.val256.val, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !30
  %i.hg = getelementptr i8, ptr %i.hf, i64 8
  %.val246 = load ptr, ptr %i.hg, align 8, !tbaa !67 ; 2 uses
  %i.hh = ptrtoint ptr %.val246 to i64            ; 2 uses
  %i.hi = and i64 %i.hh, 1
  %.not213 = icmp eq i64 %i.hi, 0
  br i1 %.not213, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hj = getelementptr inbounds nuw i8, ptr %.val246, i64 40
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !59
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.hl = and i64 %i.hh, -2
  %i.hm = inttoptr i64 %i.hl to ptr
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !59
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = xor i64 %i.hp, 1
  %i.hr = inttoptr i64 %i.hq to ptr
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.hs = phi ptr [ %i.hk, %bb.aa ], [ %i.hr, %bb.ab ] ; 3 uses
  br i1 %.not212, label %.lr.ph.i283, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ht = load i32, ptr %i.gr, align 4, !tbaa !33 ; 2 uses
  %i.hu = icmp sgt i32 %i.ht, 0
  br i1 %i.hu, label %.lr.ph.i, label %.lr.ph.i283

.lr.ph.i:                                         ; preds = %bb.ad
  %i.hv = load ptr, ptr %i.gs, align 8, !tbaa !31
  %wide.trip.count.i = zext nneg i32 %i.ht to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.af ] ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv.i
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !34
  %i.hy = icmp eq i32 %i.hx, %i.hb
  br i1 %i.hy, label %Vec_IntFind.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i283, label %bb.ae, !llvm.loop !73

Vec_IntFind.exit:                                 ; preds = %bb.ae
  %i.hz = icmp eq i32 %i.gz, %i.gy
  br i1 %i.hz, label %bb.ag, label %Vec_PtrPush.exit281

bb.ag:                                            ; preds = %Vec_IntFind.exit
  %i.ia = icmp slt i32 %i.gy, 16
  br i1 %i.ia, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %.not9.i.i279 = icmp eq ptr %i.gx, null
  br i1 %.not9.i.i279, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ib = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.gx, i64 noundef 128) #19 ; 2 uses
  br label %Vec_PtrPush.exit281

bb.aj:                                            ; preds = %bb.ah
  %i.ic = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #16 ; 2 uses
  br label %Vec_PtrPush.exit281

bb.ak:                                            ; preds = %bb.ag
  %i.id = icmp samesign ult i32 %i.gy, 1073741823
  %i.ie = shl nuw nsw i32 %i.gy, 1
  %spec.select.i274 = select i1 %i.id, i32 %i.ie, i32 2147483647 ; 6 uses
  %.not.i10.i275 = icmp samesign ult i32 %i.gy, %spec.select.i274
  br i1 %.not.i10.i275, label %bb.al, label %Vec_PtrPush.exit281

bb.al:                                            ; preds = %bb.ak
  %.not9.i11.i276 = icmp eq ptr %i.gx, null
  %i.if = zext nneg i32 %spec.select.i274 to i64
  %i.ig = shl nuw nsw i64 %i.if, 3                ; 2 uses
  br i1 %.not9.i11.i276, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ih = tail call ptr @realloc(ptr noundef nonnull %i.gx, i64 noundef %i.ig) #19 ; 2 uses
  br label %Vec_PtrPush.exit281

bb.an:                                            ; preds = %bb.al
  %i.ii = tail call noalias ptr @malloc(i64 noundef %i.ig) #16 ; 2 uses
  br label %Vec_PtrPush.exit281

Vec_PtrPush.exit281:                              ; preds = %bb.aj, %bb.ai, %bb.an, %bb.am, %Vec_IntFind.exit, %bb.ak
  %i.ij = phi ptr [ %i.gv, %Vec_IntFind.exit ], [ %i.gv, %bb.ak ], [ %i.ic, %bb.aj ], [ %i.ib, %bb.ai ], [ %i.ih, %bb.am ], [ %i.ii, %bb.an ]
  %i.ik = phi i32 [ %i.gw, %Vec_IntFind.exit ], [ %i.gw, %bb.ak ], [ 16, %bb.aj ], [ 16, %bb.ai ], [ %spec.select.i274, %bb.am ], [ %spec.select.i274, %bb.an ]
  %i.il = phi ptr [ %i.gx, %Vec_IntFind.exit ], [ %i.gx, %bb.ak ], [ %i.ic, %bb.aj ], [ %i.ib, %bb.ai ], [ %i.ih, %bb.am ], [ %i.ii, %bb.an ] ; 2 uses
  %i.im = phi i32 [ %i.gy, %Vec_IntFind.exit ], [ %i.gy, %bb.ak ], [ 16, %bb.aj ], [ 16, %bb.ai ], [ %spec.select.i274, %bb.am ], [ %spec.select.i274, %bb.an ]
  %i.in = zext nneg i32 %i.gz to i64
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.in
  store ptr %i.hs, ptr %i.io, align 8, !tbaa !30
  br label %bb.bg

.lr.ph.i283:                                      ; preds = %bb.af, %bb.ad, %bb.ac
  %wide.trip.count.i284 = zext nneg i32 %.val228339 to i64
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %.lr.ph.i283
  %indvars.iv.i285 = phi i64 [ 0, %.lr.ph.i283 ], [ %indvars.iv.next.i286, %bb.ap ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.val234, i64 %indvars.iv.i285
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !34
  %i.ir = icmp eq i32 %i.iq, %i.hb
  br i1 %i.ir, label %Vec_IntFind.exit289, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %indvars.iv.next.i286 = add nuw nsw i64 %indvars.iv.i285, 1 ; 2 uses
  %exitcond.not.i287 = icmp eq i64 %indvars.iv.next.i286, %wide.trip.count.i284
  br i1 %exitcond.not.i287, label %Vec_IntFind.exit289, label %bb.ao, !llvm.loop !73

Vec_IntFind.exit289:                              ; preds = %bb.ap, %bb.ao
  %.07.i282.ph = phi i64 [ %indvars.iv.i285, %bb.ao ], [ -1, %bb.ap ]
  %.val223 = load ptr, ptr %i.ba, align 8, !tbaa !29
  %i.is = getelementptr inbounds [8 x i8], ptr %.val223, i64 %.07.i282.ph
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !30
  %i.iu = tail call ptr @Aig_And(ptr noundef nonnull %i.i, ptr noundef %.0208, ptr noundef %i.it) #17
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = xor i64 %i.iv, 1
  %i.ix = inttoptr i64 %i.iw to ptr
  %i.iy = tail call ptr @Aig_Or(ptr noundef nonnull %i.i, ptr noundef %i.ix, ptr noundef %i.hs) #17
  %i.iz = icmp eq i32 %i.gz, %i.gw
  br i1 %i.iz, label %bb.aq, label %Vec_PtrPush.exit297

bb.aq:                                            ; preds = %Vec_IntFind.exit289
  %i.ja = icmp slt i32 %i.gw, 16
  br i1 %i.ja, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %.not9.i.i295 = icmp eq ptr %i.gx, null
  br i1 %.not9.i.i295, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jb = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.gx, i64 noundef 128) #19
  br label %Vec_PtrPush.exit297

bb.at:                                            ; preds = %bb.ar
  %i.jc = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #16
  br label %Vec_PtrPush.exit297

bb.au:                                            ; preds = %bb.aq
  %i.jd = icmp samesign ult i32 %i.gw, 1073741823
  %i.je = shl nuw nsw i32 %i.gw, 1
  %spec.select.i290 = select i1 %i.jd, i32 %i.je, i32 2147483647 ; 4 uses
  %.not.i10.i291 = icmp samesign ult i32 %i.gw, %spec.select.i290
  br i1 %.not.i10.i291, label %bb.av, label %Vec_PtrPush.exit297

bb.av:                                            ; preds = %bb.au
  %.not9.i11.i292 = icmp eq ptr %i.gx, null
  %i.jf = zext nneg i32 %spec.select.i290 to i64
  %i.jg = shl nuw nsw i64 %i.jf, 3                ; 2 uses
  br i1 %.not9.i11.i292, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jh = tail call ptr @realloc(ptr noundef nonnull %i.gx, i64 noundef %i.jg) #19
  br label %Vec_PtrPush.exit297

bb.ax:                                            ; preds = %bb.av
  %i.ji = tail call noalias ptr @malloc(i64 noundef %i.jg) #16
  br label %Vec_PtrPush.exit297

Vec_PtrPush.exit297:                              ; preds = %bb.at, %bb.as, %bb.ax, %bb.aw, %Vec_IntFind.exit289, %bb.au
  %i.jj = phi ptr [ %i.gv, %Vec_IntFind.exit289 ], [ %i.gv, %bb.au ], [ %i.jc, %bb.at ], [ %i.jb, %bb.as ], [ %i.jh, %bb.aw ], [ %i.ji, %bb.ax ] ; 3 uses
  %i.jk = phi i32 [ %i.gw, %Vec_IntFind.exit289 ], [ %i.gw, %bb.au ], [ 16, %bb.at ], [ 16, %bb.as ], [ %spec.select.i290, %bb.aw ], [ %spec.select.i290, %bb.ax ] ; 2 uses
  %i.jl = zext nneg i32 %i.gz to i64
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jl
  store ptr %i.hs, ptr %i.jm, align 8, !tbaa !30
  %i.jn = load i32, ptr %i.gk, align 4, !tbaa !26 ; 7 uses
  %i.jo = load i32, ptr %i.gl, align 8, !tbaa !65
  %i.jp = icmp eq i32 %i.jn, %i.jo
  br i1 %i.jp, label %bb.ay, label %Vec_PtrPush.exit297.Vec_PtrPush.exit305_crit_edge

Vec_PtrPush.exit297.Vec_PtrPush.exit305_crit_edge: ; preds = %Vec_PtrPush.exit297
  %.pre390 = load ptr, ptr %i.go, align 8, !tbaa !29
  br label %Vec_PtrPush.exit305

bb.ay:                                            ; preds = %Vec_PtrPush.exit297
  %i.jq = icmp slt i32 %i.jn, 16
  br i1 %i.jq, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.jr = load ptr, ptr %i.go, align 8, !tbaa !29 ; 2 uses
  %.not9.i.i303 = icmp eq ptr %i.jr, null
  br i1 %.not9.i.i303, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.js = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.jr, i64 noundef 128) #19
  br label %Vec_PtrGrow.exit12.sink.split.i301

bb.bb:                                            ; preds = %bb.az
  %i.jt = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #16
  br label %Vec_PtrGrow.exit12.sink.split.i301

bb.bc:                                            ; preds = %bb.ay
  %i.ju = icmp samesign ult i32 %i.jn, 1073741823
  %i.jv = shl nuw nsw i32 %i.jn, 1
  %spec.select.i298 = select i1 %i.ju, i32 %i.jv, i32 2147483647 ; 4 uses
  %.not.i10.i299 = icmp samesign ult i32 %i.jn, %spec.select.i298
  %.pre391 = load ptr, ptr %i.go, align 8, !tbaa !29 ; 3 uses
  br i1 %.not.i10.i299, label %bb.bd, label %Vec_PtrPush.exit305

bb.bd:                                            ; preds = %bb.bc
  %.not9.i11.i300 = icmp eq ptr %.pre391, null
  %i.jw = zext nneg i32 %spec.select.i298 to i64
  %i.jx = shl nuw nsw i64 %i.jw, 3                ; 2 uses
  br i1 %.not9.i11.i300, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jy = tail call ptr @realloc(ptr noundef nonnull %.pre391, i64 noundef %i.jx) #19
  br label %Vec_PtrGrow.exit12.sink.split.i301

bb.bf:                                            ; preds = %bb.bd
  %i.jz = tail call noalias ptr @malloc(i64 noundef %i.jx) #16
  br label %Vec_PtrGrow.exit12.sink.split.i301

Vec_PtrGrow.exit12.sink.split.i301:               ; preds = %bb.be, %bb.bf, %bb.ba, %bb.bb
  %storemerge313 = phi ptr [ %i.jt, %bb.bb ], [ %i.js, %bb.ba ], [ %i.jy, %bb.be ], [ %i.jz, %bb.bf ] ; 2 uses
  %spec.select.sink.i302 = phi i32 [ 16, %bb.bb ], [ 16, %bb.ba ], [ %spec.select.i298, %bb.be ], [ %spec.select.i298, %bb.bf ]
  store ptr %storemerge313, ptr %i.go, align 8, !tbaa !29
  store i32 %spec.select.sink.i302, ptr %i.gl, align 8, !tbaa !65
  br label %Vec_PtrPush.exit305

Vec_PtrPush.exit305:                              ; preds = %Vec_PtrPush.exit297.Vec_PtrPush.exit305_crit_edge, %bb.bc, %Vec_PtrGrow.exit12.sink.split.i301
  %i.ka = phi ptr [ %.pre390, %Vec_PtrPush.exit297.Vec_PtrPush.exit305_crit_edge ], [ %.pre391, %bb.bc ], [ %storemerge313, %Vec_PtrGrow.exit12.sink.split.i301 ]
  %i.kb = add nsw i32 %i.jn, 1
  store i32 %i.kb, ptr %i.gk, align 4, !tbaa !26
  %i.kc = sext i32 %i.jn to i64
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %i.kc
  store ptr %i.iy, ptr %i.kd, align 8, !tbaa !30
  br label %bb.bg

bb.bg:                                            ; preds = %Vec_PtrPush.exit281, %Vec_PtrPush.exit305
  %i.ke = phi ptr [ %i.ij, %Vec_PtrPush.exit281 ], [ %i.jj, %Vec_PtrPush.exit305 ] ; 2 uses
  %i.kf = phi i32 [ %i.ik, %Vec_PtrPush.exit281 ], [ %i.jk, %Vec_PtrPush.exit305 ]
  %i.kg = phi ptr [ %i.il, %Vec_PtrPush.exit281 ], [ %i.jj, %Vec_PtrPush.exit305 ]
  %i.kh = phi i32 [ %i.im, %Vec_PtrPush.exit281 ], [ %i.jk, %Vec_PtrPush.exit305 ]
  %i.ki = add nuw nsw i32 %i.gz, 1                ; 2 uses
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %.val228 = load i32, ptr %i.as, align 4, !tbaa !33 ; 2 uses
  %i.kj = sext i32 %.val228 to i64
  %i.kk = icmp slt i64 %indvars.iv.next372, %i.kj
  br i1 %i.kk, label %bb.z, label %.critedge10.preheader, !llvm.loop !74

.lr.ph344:                                        ; preds = %.critedge10.preheader, %Aig_ObjChild0Copy.exit307
  %indvars.iv374 = phi i64 [ %indvars.iv.next375, %Aig_ObjChild0Copy.exit307 ], [ 0, %.critedge10.preheader ] ; 2 uses
  %i.kl = load ptr, ptr %i.do, align 8, !tbaa !70
  %i.km = getelementptr i8, ptr %i.kl, i64 8
  %.val222 = load ptr, ptr %i.km, align 8, !tbaa !29
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %.val222, i64 %indvars.iv374
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !30 ; 2 uses
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 3 uses
  %i.kp = getelementptr i8, ptr %i.ko, i64 8
  %.val253 = load ptr, ptr %i.kp, align 8, !tbaa !67
  %i.kq = ptrtoint ptr %.val253 to i64            ; 2 uses
  %i.kr = and i64 %i.kq, -2                       ; 2 uses
  %.not.i306 = icmp eq i64 %i.kr, 0
  br i1 %.not.i306, label %Aig_ObjChild0Copy.exit307, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph344
  %i.ks = inttoptr i64 %i.kr to ptr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 40
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !59
  %i.kv = and i64 %i.kq, 1
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = xor i64 %i.kv, %i.kw
  %i.ky = inttoptr i64 %i.kx to ptr
  br label %Aig_ObjChild0Copy.exit307

Aig_ObjChild0Copy.exit307:                        ; preds = %.lr.ph344, %bb.bh
  %i.kz = phi ptr [ %i.ky, %bb.bh ], [ null, %.lr.ph344 ]
  %i.la = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.i, ptr noundef %i.kz) #17
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ko, i64 40
  store ptr %i.la, ptr %i.lb, align 8, !tbaa !59
  %.val263 = load i32, ptr %i.gt, align 8, !tbaa !72
  %i.lc = sext i32 %.val263 to i64
  %i.ld = icmp slt i64 %indvars.iv.next375, %i.lc
  br i1 %i.ld, label %.lr.ph344, label %.critedge12.loopexit, !llvm.loop !75

.critedge12.loopexit:                             ; preds = %Aig_ObjChild0Copy.exit307
  %indvars377.le = trunc i64 %indvars.iv.next375 to i32
  br label %.critedge12

.critedge12:                                      ; preds = %.critedge12.loopexit, %.critedge10.preheader
  %.0205.lcssa = phi i32 [ 0, %.critedge10.preheader ], [ %indvars377.le, %.critedge12.loopexit ] ; 2 uses
  store i32 %.0205.lcssa, ptr %3, align 4, !tbaa !34
  %.val217 = load i32, ptr %i.gk, align 4, !tbaa !26 ; 3 uses
  %i.le = icmp sgt i32 %.val217, 0
  br i1 %i.le, label %.lr.ph349, label %.critedge14.preheader

.lr.ph349:                                        ; preds = %.critedge12
  %.val221 = load ptr, ptr %i.go, align 8, !tbaa !29
  %wide.trip.count = zext nneg i32 %.val217 to i64
  br label %bb.bi

.critedge14.preheader:                            ; preds = %bb.bi, %.critedge12
  %.0207.lcssa = phi i32 [ 0, %.critedge12 ], [ %.val217, %bb.bi ]
  %.val243351 = load i32, ptr %i.w, align 8, !tbaa !61
  %i.lf = icmp sgt i32 %.val243351, 0
  br i1 %i.lf, label %.lr.ph353, label %.critedge16

bb.bi:                                            ; preds = %.lr.ph349, %bb.bi
  %indvars.iv379 = phi i64 [ 0, %.lr.ph349 ], [ %indvars.iv.next380, %bb.bi ] ; 2 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %.val221, i64 %indvars.iv379
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !30
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %i.li = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.i, ptr noundef %i.lh) #17 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next380, %wide.trip.count
  br i1 %exitcond.not, label %.critedge14.preheader, label %bb.bi, !llvm.loop !76

.lr.ph353:                                        ; preds = %.critedge14.preheader, %Aig_ObjChild0Copy.exit309
  %.8352 = phi i32 [ %i.mb, %Aig_ObjChild0Copy.exit309 ], [ 0, %.critedge14.preheader ] ; 2 uses
  %i.lj = load ptr, ptr %i.do, align 8, !tbaa !70
  %.val262 = load i32, ptr %i.gt, align 8, !tbaa !72
  %i.lk = add nsw i32 %.val262, %.8352
  %i.ll = getelementptr i8, ptr %i.lj, i64 8
end_hunk_0
