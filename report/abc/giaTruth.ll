Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaTruth?download=true
inline.NumInlined: 491
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Gia_ObjComputeTruthTableCut:bb.a

bb.af:                                            ; preds = %bb.ah, %.lr.ph.i171
  %.val1319.i = phi i32 [ %.val1316.i, %.lr.ph.i171 ], [ %.val13.i, %bb.ah ]
  %indvars.iv.i172 = phi i64 [ 0, %.lr.ph.i171 ], [ %indvars.iv.next.i173, %bb.ah ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %indvars.iv.i172
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !39
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %.val14.val.i, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !39
  %i.da = icmp slt i32 %i.cz, -999999999
  br i1 %i.da, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.db = trunc i64 %indvars.iv.i172 to i32
  %i.dc = sub i32 0, %i.db
  store i32 %i.dc, ptr %i.cy, align 4, !tbaa !39
  %.val13.pre.i = load i32, ptr %i.g, align 4, !tbaa !42
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.val13.i = phi i32 [ %.val1319.i, %bb.af ], [ %.val13.pre.i, %bb.ag ] ; 2 uses
  %indvars.iv.next.i173 = add nuw nsw i64 %indvars.iv.i172, 1 ; 2 uses
  %i.dd = sext i32 %.val13.i to i64
  %i.de = icmp slt i64 %indvars.iv.next.i173, %i.dd
  br i1 %i.de, label %bb.af, label %.critedge.i, !llvm.loop !3

.critedge.i:                                      ; preds = %bb.ah, %bb.ae
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !55 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 3 uses
  store i32 0, ptr %i.dh, align 4, !tbaa !42
  %i.di = load i32, ptr %i.dg, align 8, !tbaa !43
  %i.dj = icmp eq i32 %i.di, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !38 ; 3 uses
  br i1 %i.dj, label %bb.ai, label %Gia_ObjCollectInternalCut.exit

bb.ai:                                            ; preds = %.critedge.i
  %.not9.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not9.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dm = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dl, i64 noundef 64) #26
  %.pre21.pre.i = load i32, ptr %i.dh, align 4, !tbaa !42
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dn = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.ak, %bb.aj
  %.pre21.i = phi i32 [ %.pre21.pre.i, %bb.aj ], [ 0, %bb.ak ]
  %i.do = phi ptr [ %i.dm, %bb.aj ], [ %i.dn, %bb.ak ] ; 2 uses
  store ptr %i.do, ptr %i.dk, align 8, !tbaa !38
  store i32 16, ptr %i.dg, align 8, !tbaa !43
  br label %Gia_ObjCollectInternalCut.exit

Gia_ObjCollectInternalCut.exit:                   ; preds = %.critedge.i, %Vec_IntGrow.exit11.sink.split.i.i
  %i.dp = phi i32 [ %.pre21.i, %Vec_IntGrow.exit11.sink.split.i.i ], [ 0, %.critedge.i ] ; 2 uses
  %i.dq = phi ptr [ %i.do, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.dl, %.critedge.i ]
  %i.dr = add nsw i32 %i.dp, 1
  store i32 %i.dr, ptr %i.dh, align 4, !tbaa !42
  %i.ds = sext i32 %i.dp to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.ds
  store i32 -1, ptr %i.dt, align 4, !tbaa !39
  tail call void @Gia_ObjCollectInternalCut_rec(ptr noundef nonnull %0, i32 noundef %.pre-phi258)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !57 ; 7 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 4      ; 3 uses
  %.val136 = load i32, ptr %i.dw, align 4, !tbaa !53 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 948 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !60
  %i.dz = load ptr, ptr %i.df, align 8, !tbaa !55 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 4
  %.val134 = load i32, ptr %i.ea, align 4, !tbaa !42 ; 2 uses
  %i.eb = add nsw i32 %.val134, 2
  %i.ec = mul nsw i32 %i.eb, %i.dy                ; 8 uses
  %i.ed = icmp slt i32 %.val136, %i.ec
  br i1 %i.ed, label %bb.al, label %bb.ax

bb.al:                                            ; preds = %Gia_ObjCollectInternalCut.exit
  %i.ee = load i32, ptr %i.dv, align 8, !tbaa !54 ; 4 uses
  %i.ef = shl nsw i32 %i.ee, 1                    ; 2 uses
  %i.eg = icmp sgt i32 %i.ec, %i.ef
  %.not.i.i175 = icmp slt i32 %i.ee, %i.ec        ; 2 uses
  br i1 %i.eg, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  br i1 %.not.i.i175, label %bb.an, label %Vec_WrdGrow.exit.i176

bb.an:                                            ; preds = %bb.am
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !49 ; 2 uses
  %.not9.i.i185 = icmp eq ptr %i.ei, null
  %i.ej = sext i32 %i.ec to i64
  %i.ek = shl nsw i64 %i.ej, 3                    ; 2 uses
  br i1 %.not9.i.i185, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.el = tail call ptr @realloc(ptr noundef nonnull %i.ei, i64 noundef %i.ek) #26
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.em = tail call noalias ptr @malloc(i64 noundef %i.ek) #25
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.en = phi ptr [ %i.el, %bb.ao ], [ %i.em, %bb.ap ]
  store ptr %i.en, ptr %i.eh, align 8, !tbaa !49
  br label %Vec_WrdGrow.exit.sink.split.i183

bb.ar:                                            ; preds = %bb.al
  br i1 %.not.i.i175, label %bb.as, label %Vec_WrdGrow.exit.i176

bb.as:                                            ; preds = %bb.ar
  %i.eo = icmp slt i32 %i.ee, 1073741823
  %spec.select.i180 = select i1 %i.eo, i32 %i.ef, i32 2147483647 ; 3 uses
  %.not.i22.i181 = icmp slt i32 %i.ee, %spec.select.i180
  br i1 %.not.i22.i181, label %bb.at, label %Vec_WrdGrow.exit.i176

bb.at:                                            ; preds = %bb.as
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !49 ; 2 uses
  %.not9.i23.i182 = icmp eq ptr %i.eq, null
  %i.er = sext i32 %spec.select.i180 to i64
  %i.es = shl nuw nsw i64 %i.er, 3                ; 2 uses
  br i1 %.not9.i23.i182, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.et = tail call ptr @realloc(ptr noundef nonnull %i.eq, i64 noundef %i.es) #26
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.eu = tail call noalias ptr @malloc(i64 noundef %i.es) #25
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ev = phi ptr [ %i.et, %bb.au ], [ %i.eu, %bb.av ]
  store ptr %i.ev, ptr %i.ep, align 8, !tbaa !49
  br label %Vec_WrdGrow.exit.sink.split.i183

Vec_WrdGrow.exit.sink.split.i183:                 ; preds = %bb.aw, %bb.aq
  %spec.select.sink.i184 = phi i32 [ %spec.select.i180, %bb.aw ], [ %i.ec, %bb.aq ]
  store i32 %spec.select.sink.i184, ptr %i.dv, align 8, !tbaa !54
  %.pre235 = load i32, ptr %i.dw, align 4, !tbaa !53
  br label %Vec_WrdGrow.exit.i176

Vec_WrdGrow.exit.i176:                            ; preds = %Vec_WrdGrow.exit.sink.split.i183, %bb.as, %bb.ar, %bb.am
  %i.ew = phi i32 [ %.pre235, %Vec_WrdGrow.exit.sink.split.i183 ], [ %.val136, %bb.as ], [ %.val136, %bb.ar ], [ %.val136, %bb.am ] ; 3 uses
  %i.ex = icmp slt i32 %i.ew, %i.ec
  br i1 %i.ex, label %.lr.ph.i178, label %Vec_WrdFillExtra.exit186

.lr.ph.i178:                                      ; preds = %Vec_WrdGrow.exit.i176
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !49
  %i.fa = sext i32 %i.ew to i64
  %i.fb = shl nsw i64 %i.fa, 3
  %scevgep.i179 = getelementptr i8, ptr %i.ez, i64 %i.fb
  %i.fc = xor i32 %i.ew, -1
  %i.fd = add i32 %i.ec, %i.fc
  %i.fe = zext i32 %i.fd to i64
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = add nuw nsw i64 %i.ff, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i179, i8 0, i64 %i.fg, i1 false), !tbaa !36
  br label %Vec_WrdFillExtra.exit186

Vec_WrdFillExtra.exit186:                         ; preds = %Vec_WrdGrow.exit.i176, %.lr.ph.i178
  store i32 %i.ec, ptr %i.dw, align 4, !tbaa !53
  %.pre236 = load ptr, ptr %i.df, align 8, !tbaa !55 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre236, i64 4
  %.val132.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !42
  %.pre238.pre = load ptr, ptr %i.du, align 8, !tbaa !57
  br label %bb.ax

bb.ax:                                            ; preds = %Vec_WrdFillExtra.exit186, %Gia_ObjCollectInternalCut.exit
  %.pre238 = phi ptr [ %.pre238.pre, %Vec_WrdFillExtra.exit186 ], [ %i.dv, %Gia_ObjCollectInternalCut.exit ] ; 2 uses
  %.val132 = phi i32 [ %.val132.pre, %Vec_WrdFillExtra.exit186 ], [ %.val134, %Gia_ObjCollectInternalCut.exit ] ; 3 uses
  %i.fh = phi ptr [ %.pre236, %Vec_WrdFillExtra.exit186 ], [ %i.dz, %Gia_ObjCollectInternalCut.exit ] ; 3 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 4      ; 2 uses
  %i.fj = icmp sgt i32 %.val132, 1
  br i1 %i.fj, label %.lr.ph214, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.ax
  %.phi.trans.insert239 = getelementptr i8, ptr %.pre238, i64 8
  %.val.i187.pre = load ptr, ptr %.phi.trans.insert239, align 8, !tbaa !49
  %.pre241 = load i32, ptr %i.dx, align 4, !tbaa !60
  %.val4.i.pre = load ptr, ptr %i.a, align 8, !tbaa !35
  %.val5.i.pre = load ptr, ptr %i.bl, align 8, !tbaa !56
  %.phi.trans.insert244 = getelementptr i8, ptr %.val5.i.pre, i64 8
  %.val5.val.i.pre = load ptr, ptr %.phi.trans.insert244, align 8, !tbaa !38
  br label %.critedge

.lr.ph214:                                        ; preds = %bb.ax
  %i.fk = getelementptr i8, ptr %i.fh, i64 8
  %.val127 = load ptr, ptr %i.fk, align 8, !tbaa !38
  %.val = load ptr, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %.val150 = load i32, ptr %i.dx, align 4, !tbaa !60 ; 8 uses
  %i.fl = getelementptr i8, ptr %.pre238, i64 8
  %.val151.val = load ptr, ptr %i.fl, align 8, !tbaa !49 ; 5 uses
  %.val151.val289 = ptrtoaddr ptr %.val151.val to i64 ; 13 uses
  %i.fm = sext i32 %.val150 to i64                ; 14 uses
  %.val153 = load ptr, ptr %i.bl, align 8, !tbaa !56
  %i.fn = getelementptr i8, ptr %.val153, i64 8
  %.val153.val = load ptr, ptr %i.fn, align 8, !tbaa !38 ; 3 uses
  %i.fo = getelementptr i8, ptr %0, i64 968       ; 2 uses
  %wide.trip.count = zext nneg i32 %.val132 to i64
  %.idx = shl nsw i64 %i.fm, 3                    ; 14 uses
  %i.fp = icmp sgt i32 %.val150, 0
  %i.fq = icmp sgt i32 %.val150, 0
  %i.fr = icmp sgt i32 %.val150, 0
  %i.fs = icmp sgt i32 %.val150, 0
  %i.ft = add i64 %.idx, %.val151.val289          ; 4 uses
  %i.fu = shl nsw i64 %i.fm, 3
  %3 = shl nsw i64 %i.fm, 3
  %4 = shl nsw i64 %i.fm, 3
  %i.fv = shl nsw i64 %i.fm, 3
  %i.fw = add i64 %.idx, %.val151.val289
  %i.fx = add i64 %i.fw, 8
  %5 = shl nuw nsw i64 %i.fm, 4
  %6 = add i64 %5, %.val151.val289
  %i.fy = xor i64 %.val151.val289, -1
  %i.fz = sub i64 %i.fy, %.idx
  %i.ga = mul nsw i64 %i.fm, -8
  %7 = add i64 %.idx, %.val151.val289
  %i.gb = add i64 %7, 8
  %i.gc = shl nuw nsw i64 %i.fm, 4
  %i.gd = add i64 %i.gc, %.val151.val289
  %i.ge = xor i64 %.val151.val289, -1
  %i.gf = sub i64 %i.ge, %.idx
  %i.gg = mul nsw i64 %i.fm, -8
  %8 = add i64 %.idx, %.val151.val289
  %i.gh = add i64 %8, 8
  %i.gi = shl nuw nsw i64 %i.fm, 4
  %i.gj = add i64 %i.gi, %.val151.val289
  %9 = xor i64 %.val151.val289, -1
  %10 = sub i64 %9, %.idx
  %11 = mul nsw i64 %i.fm, -8
  %12 = add i64 %.idx, %.val151.val289
  %13 = add i64 %12, 8
  %i.gk = shl nuw nsw i64 %i.fm, 4
  %i.gl = add i64 %i.gk, %.val151.val289
  %14 = xor i64 %.val151.val289, -1
  %15 = sub i64 %14, %.idx
  %16 = mul nsw i64 %i.fm, -8
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph214, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph214 ], [ %indvar.next, %.loopexit ] ; 13 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph214 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.gm = mul i64 %i.fv, %indvar
  %i.gn = add i64 %i.ft, %i.gm                    ; 2 uses
  %i.go = mul i64 %4, %indvar
  %i.gp = add i64 %i.ft, %i.go                    ; 2 uses
  %i.gq = mul i64 %3, %indvar
  %i.gr = add i64 %i.ft, %i.gq                    ; 2 uses
  %i.gs = mul i64 %i.fu, %indvar
  %i.gt = add i64 %i.ft, %i.gs                    ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.val127, i64 %indvars.iv
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !39 ; 3 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.gw
  %i.gy = mul nsw i64 %indvars.iv, %i.fm
  %i.gz = getelementptr inbounds [8 x i8], ptr %.val151.val, i64 %i.gy ; 17 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 %.idx ; 4 uses
  %.val120 = load i64, ptr %i.gx, align 4         ; 3 uses
  %i.hb = trunc i64 %.val120 to i32               ; 2 uses
  %i.hc = and i32 %i.hb, 536870911
  %i.hd = sub nsw i32 %i.gv, %i.hc
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %.val153.val, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !39 ; 3 uses
  %i.hh = lshr i64 %.val120, 32
  %i.hi = trunc nuw i64 %i.hh to i32
  %i.hj = and i32 %i.hi, 536870911
  %i.hk = sub nsw i32 %i.gv, %i.hj
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %.val153.val, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !39 ; 3 uses
  %i.ho = icmp sgt i32 %i.hg, 0
  br i1 %i.ho, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hp = mul nsw i32 %i.hg, %.val150
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %.val151.val, i64 %i.hq
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.hs = sub nsw i32 0, %i.hg
  %.val141 = load ptr, ptr %i.fo, align 8, !tbaa !71
  %i.ht = getelementptr i8, ptr %.val141, i64 8
  %.val141.val = load ptr, ptr %i.ht, align 8, !tbaa !68
  %i.hu = zext nneg i32 %i.hs to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val141.val, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !62
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.hx = phi ptr [ %i.hr, %bb.az ], [ %i.hw, %bb.ba ] ; 17 uses
  %i.hy = ptrtoaddr ptr %i.hx to i64              ; 4 uses
  %i.hz = icmp sgt i32 %i.hn, 0
  br i1 %i.hz, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ia = mul nsw i32 %i.hn, %.val150
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [8 x i8], ptr %.val151.val, i64 %i.ib
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.id = sub nsw i32 0, %i.hn
  %.val140 = load ptr, ptr %i.fo, align 8, !tbaa !71
  %i.ie = getelementptr i8, ptr %.val140, i64 8
  %.val140.val = load ptr, ptr %i.ie, align 8, !tbaa !68
  %i.if = zext nneg i32 %i.id to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.val140.val, i64 %i.if
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !62
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ii = phi ptr [ %i.ic, %bb.bc ], [ %i.ih, %bb.bd ] ; 17 uses
  %i.ij = ptrtoaddr ptr %i.ii to i64              ; 4 uses
  %i.ik = and i32 %i.hb, 536870912
  %.not116 = icmp eq i32 %i.ik, 0
  %i.il = and i64 %.val120, 2305843009213693952
  %.not117 = icmp eq i64 %i.il, 0                 ; 2 uses
  br i1 %.not116, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %.not117, label %.preheader191, label %.preheader193

.preheader193:                                    ; preds = %bb.bf
  br i1 %i.fp, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader193
  %17 = mul i64 %indvar, %.idx                    ; 2 uses
  %18 = add i64 %17, %i.fx
  %19 = add i64 %17, %6
  %i.im = tail call i64 @llvm.umax.i64(i64 %18, i64 %19)
  %20 = mul i64 %indvar, %i.ga
  %21 = add i64 %20, %i.fz
  %i.in = add i64 %i.im, %21                      ; 2 uses
  %i.io = lshr i64 %i.in, 3
  %i.ip = add nuw nsw i64 %i.io, 1                ; 2 uses
  %min.iters.check359 = icmp ult i64 %i.in, 40
  br i1 %min.iters.check359, label %.lr.ph.preheader382, label %vector.memcheck354

vector.memcheck354:                               ; preds = %.lr.ph.preheader
  %i.iq = sub i64 %i.hy, %i.gn
  %diff.check355 = icmp ugt i64 %i.iq, -32
  %i.ir = sub i64 %i.ij, %i.gn
  %diff.check356 = icmp ugt i64 %i.ir, -32
  %conflict.rdx357 = or i1 %diff.check355, %diff.check356
  br i1 %conflict.rdx357, label %.lr.ph.preheader382, label %vector.ph360

vector.ph360:                                     ; preds = %vector.memcheck354
  %n.vec361 = and i64 %i.ip, 4611686018427387900  ; 3 uses
  %i.is = shl i64 %n.vec361, 3                    ; 3 uses
  %i.it = getelementptr i8, ptr %i.ii, i64 %i.is
  %i.iu = getelementptr i8, ptr %i.hx, i64 %i.is
  %i.iv = getelementptr i8, ptr %i.gz, i64 %i.is
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph360
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next371, %vector.body362 ] ; 2 uses
  %i.iw = shl i64 %index363, 3                    ; 3 uses
  %next.gep364 = getelementptr i8, ptr %i.ii, i64 %i.iw ; 2 uses
  %next.gep365 = getelementptr i8, ptr %i.hx, i64 %i.iw ; 2 uses
  %next.gep366 = getelementptr i8, ptr %i.gz, i64 %i.iw ; 2 uses
  %i.ix = getelementptr i8, ptr %next.gep365, i64 16
  %wide.load367 = load <2 x i64>, ptr %next.gep365, align 8, !tbaa !36
  %wide.load368 = load <2 x i64>, ptr %i.ix, align 8, !tbaa !36
  %i.iy = getelementptr i8, ptr %next.gep364, i64 16
  %wide.load369 = load <2 x i64>, ptr %next.gep364, align 8, !tbaa !36
  %wide.load370 = load <2 x i64>, ptr %i.iy, align 8, !tbaa !36
  %i.iz = or <2 x i64> %wide.load369, %wide.load367
  %i.ja = or <2 x i64> %wide.load370, %wide.load368
  %i.jb = xor <2 x i64> %i.iz, splat (i64 -1)
  %i.jc = xor <2 x i64> %i.ja, splat (i64 -1)
  %i.jd = getelementptr i8, ptr %next.gep366, i64 16
  store <2 x i64> %i.jb, ptr %next.gep366, align 8, !tbaa !36
  store <2 x i64> %i.jc, ptr %i.jd, align 8, !tbaa !36
  %index.next371 = add nuw i64 %index363, 4       ; 2 uses
  %i.je = icmp eq i64 %index.next371, %n.vec361
  br i1 %i.je, label %middle.block372, label %vector.body362, !llvm.loop !135

middle.block372:                                  ; preds = %vector.body362
  %cmp.n373 = icmp eq i64 %i.ip, %n.vec361
  br i1 %cmp.n373, label %.loopexit, label %.lr.ph.preheader382

.lr.ph.preheader382:                              ; preds = %vector.memcheck354, %.lr.ph.preheader, %middle.block372
  %.098199.ph = phi ptr [ %i.ii, %vector.memcheck354 ], [ %i.ii, %.lr.ph.preheader ], [ %i.it, %middle.block372 ]
  %.0101198.ph = phi ptr [ %i.hx, %vector.memcheck354 ], [ %i.hx, %.lr.ph.preheader ], [ %i.iu, %middle.block372 ]
  %.0105197.ph = phi ptr [ %i.gz, %vector.memcheck354 ], [ %i.gz, %.lr.ph.preheader ], [ %i.iv, %middle.block372 ]
  br label %.lr.ph

.preheader191:                                    ; preds = %bb.bf
  br i1 %i.fq, label %.lr.ph203.preheader, label %.loopexit

.lr.ph203.preheader:                              ; preds = %.preheader191
  %22 = mul i64 %indvar, %.idx                    ; 2 uses
  %23 = add i64 %22, %i.gb
  %24 = add i64 %22, %i.gd
  %i.jf = tail call i64 @llvm.umax.i64(i64 %23, i64 %24)
  %25 = mul i64 %indvar, %i.gg
  %26 = add i64 %25, %i.gf
  %i.jg = add i64 %i.jf, %26                      ; 2 uses
  %i.jh = lshr i64 %i.jg, 3
  %i.ji = add nuw nsw i64 %i.jh, 1                ; 2 uses
  %min.iters.check336 = icmp ult i64 %i.jg, 40
  br i1 %min.iters.check336, label %.lr.ph203.preheader380, label %vector.memcheck331

vector.memcheck331:                               ; preds = %.lr.ph203.preheader
  %i.jj = sub i64 %i.hy, %i.gp
  %diff.check332 = icmp ugt i64 %i.jj, -32
  %i.jk = sub i64 %i.ij, %i.gp
  %diff.check333 = icmp ugt i64 %i.jk, -32
  %conflict.rdx334 = or i1 %diff.check332, %diff.check333
  br i1 %conflict.rdx334, label %.lr.ph203.preheader380, label %vector.ph337

vector.ph337:                                     ; preds = %vector.memcheck331
  %n.vec338 = and i64 %i.ji, 4611686018427387900  ; 3 uses
  %i.jl = shl i64 %n.vec338, 3                    ; 3 uses
  %i.jm = getelementptr i8, ptr %i.ii, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.hx, i64 %i.jl
  %i.jo = getelementptr i8, ptr %i.gz, i64 %i.jl
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body339, %vector.ph337
  %index340 = phi i64 [ 0, %vector.ph337 ], [ %index.next348, %vector.body339 ] ; 2 uses
  %i.jp = shl i64 %index340, 3                    ; 3 uses
  %next.gep341 = getelementptr i8, ptr %i.ii, i64 %i.jp ; 2 uses
  %next.gep342 = getelementptr i8, ptr %i.hx, i64 %i.jp ; 2 uses
  %next.gep343 = getelementptr i8, ptr %i.gz, i64 %i.jp ; 2 uses
  %i.jq = getelementptr i8, ptr %next.gep342, i64 16
  %wide.load344 = load <2 x i64>, ptr %next.gep342, align 8, !tbaa !36
  %wide.load345 = load <2 x i64>, ptr %i.jq, align 8, !tbaa !36
  %i.jr = xor <2 x i64> %wide.load344, splat (i64 -1)
  %i.js = xor <2 x i64> %wide.load345, splat (i64 -1)
  %i.jt = getelementptr i8, ptr %next.gep341, i64 16
  %wide.load346 = load <2 x i64>, ptr %next.gep341, align 8, !tbaa !36
  %wide.load347 = load <2 x i64>, ptr %i.jt, align 8, !tbaa !36
  %i.ju = and <2 x i64> %wide.load346, %i.jr
  %i.jv = and <2 x i64> %wide.load347, %i.js
  %i.jw = getelementptr i8, ptr %next.gep343, i64 16
  store <2 x i64> %i.ju, ptr %next.gep343, align 8, !tbaa !36
  store <2 x i64> %i.jv, ptr %i.jw, align 8, !tbaa !36
  %index.next348 = add nuw i64 %index340, 4       ; 2 uses
  %i.jx = icmp eq i64 %index.next348, %n.vec338
  br i1 %i.jx, label %middle.block349, label %vector.body339, !llvm.loop !136

middle.block349:                                  ; preds = %vector.body339
  %cmp.n350 = icmp eq i64 %i.ji, %n.vec338
  br i1 %cmp.n350, label %.loopexit, label %.lr.ph203.preheader380

.lr.ph203.preheader380:                           ; preds = %vector.memcheck331, %.lr.ph203.preheader, %middle.block349
  %.199202.ph = phi ptr [ %i.ii, %vector.memcheck331 ], [ %i.ii, %.lr.ph203.preheader ], [ %i.jm, %middle.block349 ]
  %.1102201.ph = phi ptr [ %i.hx, %vector.memcheck331 ], [ %i.hx, %.lr.ph203.preheader ], [ %i.jn, %middle.block349 ]
  %.1106200.ph = phi ptr [ %i.gz, %vector.memcheck331 ], [ %i.gz, %.lr.ph203.preheader ], [ %i.jo, %middle.block349 ]
  br label %.lr.ph203

.lr.ph:                                           ; preds = %.lr.ph.preheader382, %.lr.ph
  %.098199 = phi ptr [ %i.ka, %.lr.ph ], [ %.098199.ph, %.lr.ph.preheader382 ] ; 2 uses
  %.0101198 = phi ptr [ %i.jy, %.lr.ph ], [ %.0101198.ph, %.lr.ph.preheader382 ] ; 2 uses
  %.0105197 = phi ptr [ %i.kd, %.lr.ph ], [ %.0105197.ph, %.lr.ph.preheader382 ] ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.0101198, i64 8
  %i.jz = load i64, ptr %.0101198, align 8, !tbaa !36
  %i.ka = getelementptr inbounds nuw i8, ptr %.098199, i64 8
  %i.kb = load i64, ptr %.098199, align 8, !tbaa !36
  %.demorgan = or i64 %i.kb, %i.jz
  %i.kc = xor i64 %.demorgan, -1
  %i.kd = getelementptr inbounds nuw i8, ptr %.0105197, i64 8 ; 2 uses
  store i64 %i.kc, ptr %.0105197, align 8, !tbaa !36
  %i.ke = icmp ult ptr %i.kd, %i.ha
  br i1 %i.ke, label %.lr.ph, label %.loopexit, !llvm.loop !137

.lr.ph203:                                        ; preds = %.lr.ph203.preheader380, %.lr.ph203
  %.199202 = phi ptr [ %i.ki, %.lr.ph203 ], [ %.199202.ph, %.lr.ph203.preheader380 ] ; 2 uses
  %.1102201 = phi ptr [ %i.kf, %.lr.ph203 ], [ %.1102201.ph, %.lr.ph203.preheader380 ] ; 2 uses
  %.1106200 = phi ptr [ %i.kl, %.lr.ph203 ], [ %.1106200.ph, %.lr.ph203.preheader380 ] ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.1102201, i64 8
  %i.kg = load i64, ptr %.1102201, align 8, !tbaa !36
  %i.kh = xor i64 %i.kg, -1
  %i.ki = getelementptr inbounds nuw i8, ptr %.199202, i64 8
  %i.kj = load i64, ptr %.199202, align 8, !tbaa !36
  %i.kk = and i64 %i.kj, %i.kh
  %i.kl = getelementptr inbounds nuw i8, ptr %.1106200, i64 8 ; 2 uses
  store i64 %i.kk, ptr %.1106200, align 8, !tbaa !36
  %i.km = icmp ult ptr %i.kl, %i.ha
  br i1 %i.km, label %.lr.ph203, label %.loopexit, !llvm.loop !138

bb.bg:                                            ; preds = %bb.be
  br i1 %.not117, label %.preheader, label %.preheader189

.preheader189:                                    ; preds = %bb.bg
  br i1 %i.fr, label %.lr.ph207.preheader, label %.loopexit

.lr.ph207.preheader:                              ; preds = %.preheader189
  %27 = mul i64 %indvar, %.idx                    ; 2 uses
  %28 = add i64 %27, %i.gh
  %29 = add i64 %27, %i.gj
  %i.kn = tail call i64 @llvm.umax.i64(i64 %28, i64 %29)
  %30 = mul i64 %indvar, %11
  %31 = add i64 %30, %10
  %i.ko = add i64 %i.kn, %31                      ; 2 uses
  %i.kp = lshr i64 %i.ko, 3
  %i.kq = add nuw nsw i64 %i.kp, 1                ; 2 uses
  %min.iters.check313 = icmp ult i64 %i.ko, 40
  br i1 %min.iters.check313, label %.lr.ph207.preheader378, label %vector.memcheck308

vector.memcheck308:                               ; preds = %.lr.ph207.preheader
  %i.kr = sub i64 %i.hy, %i.gr
  %diff.check309 = icmp ugt i64 %i.kr, -32
  %i.ks = sub i64 %i.ij, %i.gr
  %diff.check310 = icmp ugt i64 %i.ks, -32
  %conflict.rdx311 = or i1 %diff.check309, %diff.check310
  br i1 %conflict.rdx311, label %.lr.ph207.preheader378, label %vector.ph314

vector.ph314:                                     ; preds = %vector.memcheck308
  %n.vec315 = and i64 %i.kq, 4611686018427387900  ; 3 uses
  %i.kt = shl i64 %n.vec315, 3                    ; 3 uses
  %i.ku = getelementptr i8, ptr %i.ii, i64 %i.kt
  %i.kv = getelementptr i8, ptr %i.hx, i64 %i.kt
  %i.kw = getelementptr i8, ptr %i.gz, i64 %i.kt
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph314
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next325, %vector.body316 ] ; 2 uses
  %i.kx = shl i64 %index317, 3                    ; 3 uses
  %next.gep318 = getelementptr i8, ptr %i.ii, i64 %i.kx ; 2 uses
  %next.gep319 = getelementptr i8, ptr %i.hx, i64 %i.kx ; 2 uses
  %next.gep320 = getelementptr i8, ptr %i.gz, i64 %i.kx ; 2 uses
  %i.ky = getelementptr i8, ptr %next.gep319, i64 16
  %wide.load321 = load <2 x i64>, ptr %next.gep319, align 8, !tbaa !36
  %wide.load322 = load <2 x i64>, ptr %i.ky, align 8, !tbaa !36
  %i.kz = getelementptr i8, ptr %next.gep318, i64 16
  %wide.load323 = load <2 x i64>, ptr %next.gep318, align 8, !tbaa !36
  %wide.load324 = load <2 x i64>, ptr %i.kz, align 8, !tbaa !36
  %i.la = xor <2 x i64> %wide.load323, splat (i64 -1)
  %i.lb = xor <2 x i64> %wide.load324, splat (i64 -1)
  %i.lc = and <2 x i64> %wide.load321, %i.la
  %i.ld = and <2 x i64> %wide.load322, %i.lb
  %i.le = getelementptr i8, ptr %next.gep320, i64 16
  store <2 x i64> %i.lc, ptr %next.gep320, align 8, !tbaa !36
  store <2 x i64> %i.ld, ptr %i.le, align 8, !tbaa !36
  %index.next325 = add nuw i64 %index317, 4       ; 2 uses
  %i.lf = icmp eq i64 %index.next325, %n.vec315
  br i1 %i.lf, label %middle.block326, label %vector.body316, !llvm.loop !139

middle.block326:                                  ; preds = %vector.body316
  %cmp.n327 = icmp eq i64 %i.kq, %n.vec315
  br i1 %cmp.n327, label %.loopexit, label %.lr.ph207.preheader378

.lr.ph207.preheader378:                           ; preds = %vector.memcheck308, %.lr.ph207.preheader, %middle.block326
  %.2100206.ph = phi ptr [ %i.ii, %vector.memcheck308 ], [ %i.ii, %.lr.ph207.preheader ], [ %i.ku, %middle.block326 ]
  %.2103205.ph = phi ptr [ %i.hx, %vector.memcheck308 ], [ %i.hx, %.lr.ph207.preheader ], [ %i.kv, %middle.block326 ]
  %.2107204.ph = phi ptr [ %i.gz, %vector.memcheck308 ], [ %i.gz, %.lr.ph207.preheader ], [ %i.kw, %middle.block326 ]
  br label %.lr.ph207

.preheader:                                       ; preds = %bb.bg
  br i1 %i.fs, label %.lr.ph211.preheader, label %.loopexit

.lr.ph211.preheader:                              ; preds = %.preheader
  %32 = mul i64 %indvar, %.idx                    ; 2 uses
  %33 = add i64 %32, %13
  %34 = add i64 %32, %i.gl
  %i.lg = tail call i64 @llvm.umax.i64(i64 %33, i64 %34)
  %35 = mul i64 %indvar, %16
  %36 = add i64 %35, %15
  %i.lh = add i64 %i.lg, %36                      ; 2 uses
  %i.li = lshr i64 %i.lh, 3
  %i.lj = add nuw nsw i64 %i.li, 1                ; 2 uses
  %min.iters.check292 = icmp ult i64 %i.lh, 56
  br i1 %min.iters.check292, label %.lr.ph211.preheader377, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph211.preheader
  %i.lk = sub i64 %i.hy, %i.gt
  %diff.check = icmp ugt i64 %i.lk, -32
  %i.ll = sub i64 %i.ij, %i.gt
  %diff.check290 = icmp ugt i64 %i.ll, -32
  %conflict.rdx = or i1 %diff.check, %diff.check290
  br i1 %conflict.rdx, label %.lr.ph211.preheader377, label %vector.ph293

vector.ph293:                                     ; preds = %vector.memcheck
  %n.vec294 = and i64 %i.lj, 4611686018427387900  ; 3 uses
  %i.lm = shl i64 %n.vec294, 3                    ; 3 uses
  %i.ln = getelementptr i8, ptr %i.ii, i64 %i.lm
  %i.lo = getelementptr i8, ptr %i.hx, i64 %i.lm
  %i.lp = getelementptr i8, ptr %i.gz, i64 %i.lm
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph293
  %index296 = phi i64 [ 0, %vector.ph293 ], [ %index.next302, %vector.body295 ] ; 2 uses
  %i.lq = shl i64 %index296, 3                    ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ii, i64 %i.lq ; 2 uses
  %next.gep297 = getelementptr i8, ptr %i.hx, i64 %i.lq ; 2 uses
  %next.gep298 = getelementptr i8, ptr %i.gz, i64 %i.lq ; 2 uses
  %i.lr = getelementptr i8, ptr %next.gep297, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep297, align 8, !tbaa !36
  %wide.load299 = load <2 x i64>, ptr %i.lr, align 8, !tbaa !36
  %i.ls = getelementptr i8, ptr %next.gep, i64 16
  %wide.load300 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !36
  %wide.load301 = load <2 x i64>, ptr %i.ls, align 8, !tbaa !36
  %i.lt = and <2 x i64> %wide.load300, %wide.load
  %i.lu = and <2 x i64> %wide.load301, %wide.load299
  %i.lv = getelementptr i8, ptr %next.gep298, i64 16
  store <2 x i64> %i.lt, ptr %next.gep298, align 8, !tbaa !36
  store <2 x i64> %i.lu, ptr %i.lv, align 8, !tbaa !36
  %index.next302 = add nuw i64 %index296, 4       ; 2 uses
  %i.lw = icmp eq i64 %index.next302, %n.vec294
  br i1 %i.lw, label %middle.block303, label %vector.body295, !llvm.loop !140

middle.block303:                                  ; preds = %vector.body295
  %cmp.n304 = icmp eq i64 %i.lj, %n.vec294
  br i1 %cmp.n304, label %.loopexit, label %.lr.ph211.preheader377

.lr.ph211.preheader377:                           ; preds = %vector.memcheck, %.lr.ph211.preheader, %middle.block303
  %.3210.ph = phi ptr [ %i.ii, %vector.memcheck ], [ %i.ii, %.lr.ph211.preheader ], [ %i.ln, %middle.block303 ]
  %.3104209.ph = phi ptr [ %i.hx, %vector.memcheck ], [ %i.hx, %.lr.ph211.preheader ], [ %i.lo, %middle.block303 ]
  %.3108208.ph = phi ptr [ %i.gz, %vector.memcheck ], [ %i.gz, %.lr.ph211.preheader ], [ %i.lp, %middle.block303 ]
  br label %.lr.ph211

.lr.ph207:                                        ; preds = %.lr.ph207.preheader378, %.lr.ph207
  %.2100206 = phi ptr [ %i.lz, %.lr.ph207 ], [ %.2100206.ph, %.lr.ph207.preheader378 ] ; 2 uses
  %.2103205 = phi ptr [ %i.lx, %.lr.ph207 ], [ %.2103205.ph, %.lr.ph207.preheader378 ] ; 2 uses
  %.2107204 = phi ptr [ %i.md, %.lr.ph207 ], [ %.2107204.ph, %.lr.ph207.preheader378 ] ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.2103205, i64 8
  %i.ly = load i64, ptr %.2103205, align 8, !tbaa !36
  %i.lz = getelementptr inbounds nuw i8, ptr %.2100206, i64 8
  %i.ma = load i64, ptr %.2100206, align 8, !tbaa !36
  %i.mb = xor i64 %i.ma, -1
  %i.mc = and i64 %i.ly, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %.2107204, i64 8 ; 2 uses
  store i64 %i.mc, ptr %.2107204, align 8, !tbaa !36
  %i.me = icmp ult ptr %i.md, %i.ha
  br i1 %i.me, label %.lr.ph207, label %.loopexit, !llvm.loop !141

.lr.ph211:                                        ; preds = %.lr.ph211.preheader377, %.lr.ph211
  %.3210 = phi ptr [ %i.mh, %.lr.ph211 ], [ %.3210.ph, %.lr.ph211.preheader377 ] ; 2 uses
  %.3104209 = phi ptr [ %i.mf, %.lr.ph211 ], [ %.3104209.ph, %.lr.ph211.preheader377 ] ; 2 uses
  %.3108208 = phi ptr [ %i.mk, %.lr.ph211 ], [ %.3108208.ph, %.lr.ph211.preheader377 ] ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.3104209, i64 8
  %i.mg = load i64, ptr %.3104209, align 8, !tbaa !36
  %i.mh = getelementptr inbounds nuw i8, ptr %.3210, i64 8
  %i.mi = load i64, ptr %.3210, align 8, !tbaa !36
  %i.mj = and i64 %i.mi, %i.mg
  %i.mk = getelementptr inbounds nuw i8, ptr %.3108208, i64 8 ; 2 uses
  store i64 %i.mj, ptr %.3108208, align 8, !tbaa !36
  %i.ml = icmp ult ptr %i.mk, %i.ha
  br i1 %i.ml, label %.lr.ph211, label %.loopexit, !llvm.loop !142

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph203, %.lr.ph207, %.lr.ph211, %middle.block372, %middle.block349, %middle.block326, %middle.block303, %.preheader193, %.preheader191, %.preheader189, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %.critedge, label %bb.ay, !llvm.loop !143

.critedge:                                        ; preds = %.loopexit, %..critedge_crit_edge
  %.val5.val.i = phi ptr [ %.val5.val.i.pre, %..critedge_crit_edge ], [ %.val153.val, %.loopexit ] ; 3 uses
  %.val4.i = phi ptr [ %.val4.i.pre, %..critedge_crit_edge ], [ %.val, %.loopexit ]
  %i.mm = phi i32 [ %.pre241, %..critedge_crit_edge ], [ %.val150, %.loopexit ]
  %.val.i187 = phi ptr [ %.val.i187.pre, %..critedge_crit_edge ], [ %.val151.val, %.loopexit ]
  %i.mn = ptrtoint ptr %.val4.i to i64
  %i.mo = sub i64 %i.b, %i.mn
  %i.mp = sdiv exact i64 %i.mo, 12
  %i.mq = shl i64 %i.mp, 32
  %i.mr = ashr exact i64 %i.mq, 30
  %i.ms = getelementptr inbounds i8, ptr %.val5.val.i, i64 %i.mr
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !39
  %i.mu = mul nsw i32 %i.mt, %i.mm
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr inbounds [8 x i8], ptr %.val.i187, i64 %i.mv ; 2 uses
  %.val131216 = load i32, ptr %i.g, align 4, !tbaa !42
  %i.mx = icmp sgt i32 %.val131216, 0
  br i1 %i.mx, label %.lr.ph218, label %.critedge2.preheader

.lr.ph218:                                        ; preds = %.critedge
  %i.my = getelementptr i8, ptr %2, i64 8
  %.val126 = load ptr, ptr %i.my, align 8, !tbaa !38
  br label %bb.bh

.critedge2.preheader.loopexit:                    ; preds = %bb.bh
  %.val130219.pre = load i32, ptr %i.fi, align 4, !tbaa !42
  br label %.critedge2.preheader

.critedge2.preheader:                             ; preds = %.critedge2.preheader.loopexit, %.critedge
  %.val130219 = phi i32 [ %.val130219.pre, %.critedge2.preheader.loopexit ], [ %.val132, %.critedge ]
  %i.mz = icmp sgt i32 %.val130219, 1
  br i1 %i.mz, label %.lr.ph221, label %.critedge4

.lr.ph221:                                        ; preds = %.critedge2.preheader
  %i.na = getelementptr i8, ptr %i.fh, i64 8
  %.val125 = load ptr, ptr %i.na, align 8, !tbaa !38
  br label %.critedge2

bb.bh:                                            ; preds = %.lr.ph218, %bb.bh
  %indvars.iv227 = phi i64 [ 0, %.lr.ph218 ], [ %indvars.iv.next228, %bb.bh ] ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.val126, i64 %indvars.iv227
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !39
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [4 x i8], ptr %.val5.val.i, i64 %i.nd
  store i32 -1000000000, ptr %i.ne, align 4, !tbaa !39
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %.val131 = load i32, ptr %i.g, align 4, !tbaa !42
  %i.nf = sext i32 %.val131 to i64
  %i.ng = icmp slt i64 %indvars.iv.next228, %i.nf
  br i1 %i.ng, label %bb.bh, label %.critedge2.preheader.loopexit, !llvm.loop !144

.critedge2:                                       ; preds = %.lr.ph221, %.critedge2
  %indvars.iv230 = phi i64 [ 1, %.lr.ph221 ], [ %indvars.iv.next231, %.critedge2 ] ; 2 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %.val125, i64 %indvars.iv230
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !39
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [4 x i8], ptr %.val5.val.i, i64 %i.nj
  store i32 -1000000000, ptr %i.nk, align 4, !tbaa !39
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %.val130 = load i32, ptr %i.fi, align 4, !tbaa !42
  %i.nl = sext i32 %.val130 to i64
  %i.nm = icmp slt i64 %indvars.iv.next231, %i.nl
  br i1 %i.nm, label %.critedge2, label %.critedge4, !llvm.loop !145

.critedge4:                                       ; preds = %.critedge2, %.critedge2.preheader, %.lr.ph.preheader.i, %bb.q, %Vec_IntFind.exit
  %.0109 = phi ptr [ %i.r, %Vec_IntFind.exit ], [ %i.bh, %.lr.ph.preheader.i ], [ %i.bh, %bb.q ], [ %i.mw, %.critedge2.preheader ], [ %i.mw, %.critedge2 ]
  ret ptr %.0109
}

; Function Attrs: nounwind uwtable
define ptr @Gia_ManIsoNpnReduce(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [17 x ptr], align 16              ; 5 uses
  %i.d = alloca [17 x ptr], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 23 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 18 uses
  store i32 0, ptr %i.f, align 4, !tbaa !75
  store i32 100, ptr %i.e, align 8, !tbaa !76
  %i.g = tail call noalias dereferenceable_or_null(1600) ptr @calloc(i64 noundef 100, i64 noundef 16) #27
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 30 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 3 uses
  store i32 0, ptr %i.j, align 4, !tbaa !42
  store i32 16, ptr %i.i, align 8, !tbaa !43
  %i.k = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.m = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %.val102 = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.n = getelementptr i8, ptr %.val102, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %Vec_IntStartFull.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %Vec_IntStartFull.exit ] ; 5 uses
  %i.o = icmp samesign ult i64 %indvars.iv, 7
  %i.p = trunc i64 %indvars.iv to i32
  %i.q = add i32 %i.p, -6
  %i.r = shl nuw nsw i32 1, %i.q
  %i.s = select i1 %i.o, i32 1, i32 %i.r
  %i.t = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #27 ; 7 uses
  store i32 %i.s, ptr %i.t, align 8, !tbaa !80
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 10, ptr %i.u, align 8, !tbaa !81
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 1023, ptr %i.v, align 4, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 20
end_hunk_0
