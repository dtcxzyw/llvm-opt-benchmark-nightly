Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaTruth?download=true
inline.NumInlined: 491
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Gia_ObjComputeTruthTableCut:bb.a
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %.lr.ph.i171
  %.val1319.i = phi i32 [ %.val1316.i, %.lr.ph.i171 ], [ %.val13.i, %bb.ah ]
  %indvars.iv.i172 = phi i64 [ 0, %.lr.ph.i171 ], [ %indvars.iv.next.i173, %bb.ah ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %indvars.iv.i172
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !33
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %.val14.val.i, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !33
  %i.da = icmp slt i32 %i.cz, -999999999
  br i1 %i.da, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.db = trunc i64 %indvars.iv.i172 to i32
  %i.dc = sub i32 0, %i.db
  store i32 %i.dc, ptr %i.cy, align 4, !tbaa !33
  %.val13.pre.i = load i32, ptr %i.g, align 4, !tbaa !38
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.val13.i = phi i32 [ %.val1319.i, %bb.af ], [ %.val13.pre.i, %bb.ag ] ; 2 uses
  %indvars.iv.next.i173 = add nuw nsw i64 %indvars.iv.i172, 1 ; 2 uses
  %i.dd = sext i32 %.val13.i to i64
  %i.de = icmp slt i64 %indvars.iv.next.i173, %i.dd
  br i1 %i.de, label %bb.af, label %.critedge.i, !llvm.loop !112

.critedge.i:                                      ; preds = %bb.ah, %bb.ae
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !59 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 3 uses
  store i32 0, ptr %i.dh, align 4, !tbaa !38
  %i.di = load i32, ptr %i.dg, align 8, !tbaa !39
  %i.dj = icmp eq i32 %i.di, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !32 ; 3 uses
  br i1 %i.dj, label %bb.ai, label %Gia_ObjCollectInternalCut.exit

bb.ai:                                            ; preds = %.critedge.i
  %.not9.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not9.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dm = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dl, i64 noundef 64) #26
  %.pre21.pre.i = load i32, ptr %i.dh, align 4, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dn = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.ak, %bb.aj
  %.pre21.i = phi i32 [ %.pre21.pre.i, %bb.aj ], [ 0, %bb.ak ]
  %i.do = phi ptr [ %i.dm, %bb.aj ], [ %i.dn, %bb.ak ] ; 2 uses
  store ptr %i.do, ptr %i.dk, align 8, !tbaa !32
  store i32 16, ptr %i.dg, align 8, !tbaa !39
  br label %Gia_ObjCollectInternalCut.exit

Gia_ObjCollectInternalCut.exit:                   ; preds = %.critedge.i, %Vec_IntGrow.exit11.sink.split.i.i
  %i.dp = phi i32 [ %.pre21.i, %Vec_IntGrow.exit11.sink.split.i.i ], [ 0, %.critedge.i ] ; 2 uses
  %i.dq = phi ptr [ %i.do, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.dl, %.critedge.i ]
  %i.dr = add nsw i32 %i.dp, 1
  store i32 %i.dr, ptr %i.dh, align 4, !tbaa !38
  %i.ds = sext i32 %i.dp to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.ds
  store i32 -1, ptr %i.dt, align 4, !tbaa !33
  tail call void @Gia_ObjCollectInternalCut_rec(ptr noundef nonnull %0, i32 noundef %.pre-phi258)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !61 ; 7 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 4      ; 3 uses
  %.val136 = load i32, ptr %i.dw, align 4, !tbaa !56 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 948 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !64
  %i.dz = load ptr, ptr %i.df, align 8, !tbaa !59 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 4
  %.val134 = load i32, ptr %i.ea, align 4, !tbaa !38 ; 2 uses
  %i.eb = add nsw i32 %.val134, 2
  %i.ec = mul nsw i32 %i.eb, %i.dy                ; 8 uses
  %i.ed = icmp slt i32 %.val136, %i.ec
  br i1 %i.ed, label %bb.al, label %bb.ax

bb.al:                                            ; preds = %Gia_ObjCollectInternalCut.exit
  %i.ee = load i32, ptr %i.dv, align 8, !tbaa !57 ; 4 uses
  %i.ef = shl nsw i32 %i.ee, 1                    ; 2 uses
  %i.eg = icmp sgt i32 %i.ec, %i.ef
  %.not.i.i175 = icmp slt i32 %i.ee, %i.ec        ; 2 uses
  br i1 %i.eg, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  br i1 %.not.i.i175, label %bb.an, label %Vec_WrdGrow.exit.i176

bb.an:                                            ; preds = %bb.am
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !46 ; 2 uses
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
  store ptr %i.en, ptr %i.eh, align 8, !tbaa !46
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
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !46 ; 2 uses
  %.not9.i23.i182 = icmp eq ptr %i.eq, null
  %i.er = sext i32 %spec.select.i180 to i64
  %i.es = shl nsw i64 %i.er, 3                    ; 2 uses
  br i1 %.not9.i23.i182, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.et = tail call ptr @realloc(ptr noundef nonnull %i.eq, i64 noundef %i.es) #26
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.eu = tail call noalias ptr @malloc(i64 noundef %i.es) #25
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ev = phi ptr [ %i.et, %bb.au ], [ %i.eu, %bb.av ]
  store ptr %i.ev, ptr %i.ep, align 8, !tbaa !46
  br label %Vec_WrdGrow.exit.sink.split.i183

Vec_WrdGrow.exit.sink.split.i183:                 ; preds = %bb.aw, %bb.aq
  %spec.select.sink.i184 = phi i32 [ %spec.select.i180, %bb.aw ], [ %i.ec, %bb.aq ]
  store i32 %spec.select.sink.i184, ptr %i.dv, align 8, !tbaa !57
  %.pre235 = load i32, ptr %i.dw, align 4, !tbaa !56
  br label %Vec_WrdGrow.exit.i176

Vec_WrdGrow.exit.i176:                            ; preds = %Vec_WrdGrow.exit.sink.split.i183, %bb.as, %bb.ar, %bb.am
  %i.ew = phi i32 [ %.pre235, %Vec_WrdGrow.exit.sink.split.i183 ], [ %.val136, %bb.as ], [ %.val136, %bb.ar ], [ %.val136, %bb.am ] ; 3 uses
  %i.ex = icmp slt i32 %i.ew, %i.ec
  br i1 %i.ex, label %.lr.ph.i178, label %Vec_WrdFillExtra.exit186

.lr.ph.i178:                                      ; preds = %Vec_WrdGrow.exit.i176
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !46
  %i.fa = sext i32 %i.ew to i64
  %i.fb = shl nsw i64 %i.fa, 3
  %scevgep.i179 = getelementptr i8, ptr %i.ez, i64 %i.fb
  %i.fc = xor i32 %i.ew, -1
  %i.fd = add i32 %i.ec, %i.fc
  %i.fe = zext i32 %i.fd to i64
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = add nuw nsw i64 %i.ff, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i179, i8 0, i64 %i.fg, i1 false), !tbaa !30
  br label %Vec_WrdFillExtra.exit186

Vec_WrdFillExtra.exit186:                         ; preds = %Vec_WrdGrow.exit.i176, %.lr.ph.i178
  store i32 %i.ec, ptr %i.dw, align 4, !tbaa !56
  %.pre236 = load ptr, ptr %i.df, align 8, !tbaa !59 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre236, i64 4
  %.val132.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !38
  %.pre238.pre = load ptr, ptr %i.du, align 8, !tbaa !61
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
  %.val.i187.pre = load ptr, ptr %.phi.trans.insert239, align 8, !tbaa !46
  %.pre241 = load i32, ptr %i.dx, align 4, !tbaa !64
  %.val4.i.pre = load ptr, ptr %i.a, align 8, !tbaa !8
  %.val5.i.pre = load ptr, ptr %i.bl, align 8, !tbaa !60
  %.phi.trans.insert244 = getelementptr i8, ptr %.val5.i.pre, i64 8
  %.val5.val.i.pre = load ptr, ptr %.phi.trans.insert244, align 8, !tbaa !32
  br label %.critedge

.lr.ph214:                                        ; preds = %bb.ax
  %i.fk = getelementptr i8, ptr %i.fh, i64 8
  %.val127 = load ptr, ptr %i.fk, align 8, !tbaa !32
  %.val = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %.val150 = load i32, ptr %i.dx, align 4, !tbaa !64 ; 8 uses
  %i.fl = getelementptr i8, ptr %.pre238, i64 8
  %.val151.val = load ptr, ptr %i.fl, align 8, !tbaa !46 ; 5 uses
  %.val151.val289 = ptrtoaddr ptr %.val151.val to i64 ; 13 uses
  %i.fm = sext i32 %.val150 to i64                ; 18 uses
  %.val153 = load ptr, ptr %i.bl, align 8, !tbaa !60
  %i.fn = getelementptr i8, ptr %.val153, i64 8
  %.val153.val = load ptr, ptr %i.fn, align 8, !tbaa !32 ; 3 uses
  %i.fo = getelementptr i8, ptr %0, i64 968       ; 2 uses
  %wide.trip.count = zext nneg i32 %.val132 to i64
  %.idx = shl nsw i64 %i.fm, 3                    ; 10 uses
  %i.fp = icmp sgt i32 %.val150, 0
  %i.fq = icmp sgt i32 %.val150, 0
  %i.fr = icmp sgt i32 %.val150, 0
  %i.fs = icmp sgt i32 %.val150, 0
  %i.ft = add i64 %.idx, %.val151.val289
  %3 = shl nsw i64 %i.fm, 3
  %4 = xor i64 %.val151.val289, -1
  %5 = sub i64 %4, %.idx
  %6 = mul nsw i64 %i.fm, -8
  %i.fu = shl nsw i64 %i.fm, 4
  %i.fv = add i64 %i.fu, %.val151.val289
  %i.fw = shl nsw i64 %i.fm, 3
  %7 = add i64 %.idx, %.val151.val289             ; 2 uses
  %i.fx = add i64 %7, 8
  %8 = shl nsw i64 %i.fm, 3
  %i.fy = xor i64 %.val151.val289, -1
  %i.fz = sub i64 %i.fy, %.idx
  %i.ga = mul nsw i64 %i.fm, -8
  %9 = shl nsw i64 %i.fm, 4
  %i.gb = add i64 %9, %.val151.val289
  %i.gc = shl nsw i64 %i.fm, 3
  %i.gd = add i64 %.idx, %.val151.val289          ; 2 uses
  %10 = add i64 %i.gd, 8
  %i.ge = shl nsw i64 %i.fm, 3
  %i.gf = xor i64 %.val151.val289, -1
  %i.gg = sub i64 %i.gf, %.idx
  %i.gh = mul nsw i64 %i.fm, -8
  %11 = shl nsw i64 %i.fm, 4
  %i.gi = add i64 %11, %.val151.val289
  %i.gj = shl nsw i64 %i.fm, 3
  %i.gk = add i64 %.idx, %.val151.val289          ; 2 uses
  %12 = add i64 %i.gk, 8
  %i.gl = shl nsw i64 %i.fm, 3
  %i.gm = xor i64 %.val151.val289, -1
  %i.gn = sub i64 %i.gm, %.idx
  %i.go = mul nsw i64 %i.fm, -8
  %i.gp = shl nsw i64 %i.fm, 4
  %i.gq = add i64 %i.gp, %.val151.val289
  %i.gr = shl nsw i64 %i.fm, 3
  %i.gs = add i64 %.idx, %.val151.val289
  %13 = add i64 %i.gs, 8
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph214, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph214 ], [ %indvar.next, %.loopexit ] ; 13 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph214 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.gt = mul i64 %i.go, %indvar
  %i.gu = add i64 %i.gn, %i.gt
  %i.gv = mul i64 %i.gr, %indvar                  ; 2 uses
  %i.gw = add i64 %i.gq, %i.gv
  %i.gx = add i64 %13, %i.gv
  %i.gy = mul i64 %i.gl, %indvar
  %i.gz = add i64 %i.gk, %i.gy                    ; 2 uses
  %i.ha = mul i64 %i.gh, %indvar
  %i.hb = add i64 %i.gg, %i.ha
  %i.hc = mul i64 %i.gj, %indvar                  ; 2 uses
  %i.hd = add i64 %i.gi, %i.hc
  %i.he = add i64 %12, %i.hc
  %i.hf = mul i64 %i.ge, %indvar
  %i.hg = add i64 %i.gd, %i.hf                    ; 2 uses
  %i.hh = mul i64 %i.ga, %indvar
  %i.hi = add i64 %i.fz, %i.hh
  %i.hj = mul i64 %i.gc, %indvar                  ; 2 uses
  %i.hk = add i64 %i.gb, %i.hj
  %i.hl = add i64 %10, %i.hj
  %i.hm = mul i64 %8, %indvar
  %i.hn = add i64 %7, %i.hm                       ; 2 uses
  %i.ho = mul i64 %6, %indvar
  %i.hp = add i64 %5, %i.ho
  %i.hq = mul i64 %i.fw, %indvar                  ; 2 uses
  %i.hr = add i64 %i.fv, %i.hq
  %i.hs = add i64 %i.fx, %i.hq
  %i.ht = mul i64 %3, %indvar
  %i.hu = add i64 %i.ft, %i.ht                    ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.val127, i64 %indvars.iv
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !33 ; 3 uses
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.hx
  %i.hz = mul nsw i64 %indvars.iv, %i.fm
  %i.ia = getelementptr inbounds [8 x i8], ptr %.val151.val, i64 %i.hz ; 17 uses
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 %.idx ; 4 uses
  %.val120 = load i64, ptr %i.hy, align 4         ; 3 uses
  %i.ic = trunc i64 %.val120 to i32               ; 2 uses
  %i.id = and i32 %i.ic, 536870911
  %i.ie = sub nsw i32 %i.hw, %i.id
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %.val153.val, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !33 ; 3 uses
  %i.ii = lshr i64 %.val120, 32
  %i.ij = trunc nuw i64 %i.ii to i32
  %i.ik = and i32 %i.ij, 536870911
  %i.il = sub nsw i32 %i.hw, %i.ik
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %.val153.val, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !33 ; 3 uses
  %i.ip = icmp sgt i32 %i.ih, 0
  br i1 %i.ip, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.iq = mul nsw i32 %i.ih, %.val150
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [8 x i8], ptr %.val151.val, i64 %i.ir
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.it = sub nsw i32 0, %i.ih
  %.val141 = load ptr, ptr %i.fo, align 8, !tbaa !82
  %i.iu = getelementptr i8, ptr %.val141, i64 8
  %.val141.val = load ptr, ptr %i.iu, align 8, !tbaa !74
  %i.iv = zext nneg i32 %i.it to i64
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.val141.val, i64 %i.iv
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !66
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.iy = phi ptr [ %i.is, %bb.az ], [ %i.ix, %bb.ba ] ; 17 uses
  %i.iz = ptrtoaddr ptr %i.iy to i64              ; 4 uses
  %i.ja = icmp sgt i32 %i.io, 0
  br i1 %i.ja, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.jb = mul nsw i32 %i.io, %.val150
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %.val151.val, i64 %i.jc
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.je = sub nsw i32 0, %i.io
  %.val140 = load ptr, ptr %i.fo, align 8, !tbaa !82
  %i.jf = getelementptr i8, ptr %.val140, i64 8
  %.val140.val = load ptr, ptr %i.jf, align 8, !tbaa !74
  %i.jg = zext nneg i32 %i.je to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %.val140.val, i64 %i.jg
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !66
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.jj = phi ptr [ %i.jd, %bb.bc ], [ %i.ji, %bb.bd ] ; 17 uses
  %i.jk = ptrtoaddr ptr %i.jj to i64              ; 4 uses
  %i.jl = and i32 %i.ic, 536870912
  %.not116 = icmp eq i32 %i.jl, 0
  %i.jm = and i64 %.val120, 2305843009213693952
  %.not117 = icmp eq i64 %i.jm, 0                 ; 2 uses
  br i1 %.not116, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %.not117, label %.preheader191, label %.preheader193

.preheader193:                                    ; preds = %bb.bf
  br i1 %i.fp, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader193
  %14 = tail call i64 @llvm.umax.i64(i64 %i.gx, i64 %i.gw)
  %15 = add i64 %14, %i.gu                        ; 2 uses
  %16 = lshr i64 %15, 3
  %17 = add nuw nsw i64 %16, 1                    ; 2 uses
  %min.iters.check362 = icmp ult i64 %15, 40
  br i1 %min.iters.check362, label %.lr.ph.preheader385, label %vector.memcheck356

vector.memcheck356:                               ; preds = %.lr.ph.preheader
  %i.jn = sub i64 %i.iz, %i.gz
  %diff.check357 = icmp ugt i64 %i.jn, -32
  %i.jo = sub i64 %i.jk, %i.gz
  %diff.check358 = icmp ugt i64 %i.jo, -32
  %conflict.rdx359 = or i1 %diff.check357, %diff.check358
  br i1 %conflict.rdx359, label %.lr.ph.preheader385, label %vector.ph363

vector.ph363:                                     ; preds = %vector.memcheck356
  %n.vec364 = and i64 %17, 4611686018427387900    ; 3 uses
  %i.jp = shl i64 %n.vec364, 3                    ; 3 uses
  %i.jq = getelementptr i8, ptr %i.jj, i64 %i.jp
  %i.jr = getelementptr i8, ptr %i.iy, i64 %i.jp
  %i.js = getelementptr i8, ptr %i.ia, i64 %i.jp
  br label %vector.body365

vector.body365:                                   ; preds = %vector.body365, %vector.ph363
  %index366 = phi i64 [ 0, %vector.ph363 ], [ %index.next374, %vector.body365 ] ; 2 uses
  %i.jt = shl i64 %index366, 3                    ; 3 uses
  %next.gep367 = getelementptr i8, ptr %i.jj, i64 %i.jt ; 2 uses
  %next.gep368 = getelementptr i8, ptr %i.iy, i64 %i.jt ; 2 uses
  %next.gep369 = getelementptr i8, ptr %i.ia, i64 %i.jt ; 2 uses
  %i.ju = getelementptr i8, ptr %next.gep368, i64 16
  %wide.load370.a = load <2 x i64>, ptr %next.gep368, align 8, !tbaa !30
  %wide.load371 = load <2 x i64>, ptr %i.ju, align 8, !tbaa !30
  %i.jv = getelementptr i8, ptr %next.gep367, i64 16
  %wide.load372 = load <2 x i64>, ptr %next.gep367, align 8, !tbaa !30
  %wide.load373 = load <2 x i64>, ptr %i.jv, align 8, !tbaa !30
  %i.jw = or <2 x i64> %wide.load372, %wide.load370.a
  %i.jx = or <2 x i64> %wide.load373, %wide.load371
  %i.jy = xor <2 x i64> %i.jw, splat (i64 -1)
  %i.jz = xor <2 x i64> %i.jx, splat (i64 -1)
  %i.ka = getelementptr i8, ptr %next.gep369, i64 16
  store <2 x i64> %i.jy, ptr %next.gep369, align 8, !tbaa !30
  store <2 x i64> %i.jz, ptr %i.ka, align 8, !tbaa !30
  %index.next374 = add nuw i64 %index366, 4       ; 2 uses
  %i.kb = icmp eq i64 %index.next374, %n.vec364
  br i1 %i.kb, label %middle.block375, label %vector.body365, !llvm.loop !116

middle.block375:                                  ; preds = %vector.body365
  %cmp.n376 = icmp eq i64 %17, %n.vec364
  br i1 %cmp.n376, label %.loopexit, label %.lr.ph.preheader385

.lr.ph.preheader385:                              ; preds = %vector.memcheck356, %.lr.ph.preheader, %middle.block375
  %.098199.ph = phi ptr [ %i.jj, %vector.memcheck356 ], [ %i.jj, %.lr.ph.preheader ], [ %i.jq, %middle.block375 ]
  %.0101198.ph = phi ptr [ %i.iy, %vector.memcheck356 ], [ %i.iy, %.lr.ph.preheader ], [ %i.jr, %middle.block375 ]
  %.0105197.ph = phi ptr [ %i.ia, %vector.memcheck356 ], [ %i.ia, %.lr.ph.preheader ], [ %i.js, %middle.block375 ]
  br label %.lr.ph

.preheader191:                                    ; preds = %bb.bf
  br i1 %i.fq, label %.lr.ph203.preheader, label %.loopexit

.lr.ph203.preheader:                              ; preds = %.preheader191
  %18 = tail call i64 @llvm.umax.i64(i64 %i.he, i64 %i.hd)
  %19 = add i64 %18, %i.hb                        ; 2 uses
  %20 = lshr i64 %19, 3
  %21 = add nuw nsw i64 %20, 1                    ; 2 uses
  %min.iters.check338 = icmp ult i64 %19, 40
  br i1 %min.iters.check338, label %.lr.ph203.preheader383, label %vector.memcheck332

vector.memcheck332:                               ; preds = %.lr.ph203.preheader
  %i.kc = sub i64 %i.iz, %i.hg
  %diff.check333.a = icmp ugt i64 %i.kc, -32
  %i.kd = sub i64 %i.jk, %i.hg
  %diff.check334 = icmp ugt i64 %i.kd, -32
  %conflict.rdx335 = or i1 %diff.check333.a, %diff.check334
  br i1 %conflict.rdx335, label %.lr.ph203.preheader383, label %vector.ph339

vector.ph339:                                     ; preds = %vector.memcheck332
  %n.vec340 = and i64 %21, 4611686018427387900    ; 3 uses
  %i.ke = shl i64 %n.vec340, 3                    ; 3 uses
  %i.kf = getelementptr i8, ptr %i.jj, i64 %i.ke
  %i.kg = getelementptr i8, ptr %i.iy, i64 %i.ke
  %i.kh = getelementptr i8, ptr %i.ia, i64 %i.ke
  br label %vector.body341

vector.body341:                                   ; preds = %vector.body341, %vector.ph339
  %index342 = phi i64 [ 0, %vector.ph339 ], [ %index.next350, %vector.body341 ] ; 2 uses
  %i.ki = shl i64 %index342, 3                    ; 3 uses
  %next.gep343.a = getelementptr i8, ptr %i.jj, i64 %i.ki ; 2 uses
  %next.gep344 = getelementptr i8, ptr %i.iy, i64 %i.ki ; 2 uses
  %next.gep345 = getelementptr i8, ptr %i.ia, i64 %i.ki ; 2 uses
  %i.kj = getelementptr i8, ptr %next.gep344, i64 16
  %wide.load346.a = load <2 x i64>, ptr %next.gep344, align 8, !tbaa !30
  %wide.load347.a = load <2 x i64>, ptr %i.kj, align 8, !tbaa !30
  %i.kk = xor <2 x i64> %wide.load346.a, splat (i64 -1)
  %i.kl = xor <2 x i64> %wide.load347.a, splat (i64 -1)
  %i.km = getelementptr i8, ptr %next.gep343.a, i64 16
  %wide.load348 = load <2 x i64>, ptr %next.gep343.a, align 8, !tbaa !30
  %wide.load349 = load <2 x i64>, ptr %i.km, align 8, !tbaa !30
  %i.kn = and <2 x i64> %wide.load348, %i.kk
  %i.ko = and <2 x i64> %wide.load349, %i.kl
  %i.kp = getelementptr i8, ptr %next.gep345, i64 16
  store <2 x i64> %i.kn, ptr %next.gep345, align 8, !tbaa !30
  store <2 x i64> %i.ko, ptr %i.kp, align 8, !tbaa !30
  %index.next350 = add nuw i64 %index342, 4       ; 2 uses
  %i.kq = icmp eq i64 %index.next350, %n.vec340
  br i1 %i.kq, label %middle.block351, label %vector.body341, !llvm.loop !117

middle.block351:                                  ; preds = %vector.body341
  %cmp.n352 = icmp eq i64 %21, %n.vec340
  br i1 %cmp.n352, label %.loopexit, label %.lr.ph203.preheader383

.lr.ph203.preheader383:                           ; preds = %vector.memcheck332, %.lr.ph203.preheader, %middle.block351
  %.199202.ph = phi ptr [ %i.jj, %vector.memcheck332 ], [ %i.jj, %.lr.ph203.preheader ], [ %i.kf, %middle.block351 ]
  %.1102201.ph = phi ptr [ %i.iy, %vector.memcheck332 ], [ %i.iy, %.lr.ph203.preheader ], [ %i.kg, %middle.block351 ]
  %.1106200.ph = phi ptr [ %i.ia, %vector.memcheck332 ], [ %i.ia, %.lr.ph203.preheader ], [ %i.kh, %middle.block351 ]
  br label %.lr.ph203

.lr.ph:                                           ; preds = %.lr.ph.preheader385, %.lr.ph
  %.098199 = phi ptr [ %i.kt, %.lr.ph ], [ %.098199.ph, %.lr.ph.preheader385 ] ; 2 uses
  %.0101198 = phi ptr [ %i.kr, %.lr.ph ], [ %.0101198.ph, %.lr.ph.preheader385 ] ; 2 uses
  %.0105197 = phi ptr [ %i.kw, %.lr.ph ], [ %.0105197.ph, %.lr.ph.preheader385 ] ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.0101198, i64 8
  %i.ks = load i64, ptr %.0101198, align 8, !tbaa !30
  %i.kt = getelementptr inbounds nuw i8, ptr %.098199, i64 8
  %i.ku = load i64, ptr %.098199, align 8, !tbaa !30
  %.demorgan = or i64 %i.ku, %i.ks
  %i.kv = xor i64 %.demorgan, -1
  %i.kw = getelementptr inbounds nuw i8, ptr %.0105197, i64 8 ; 2 uses
  store i64 %i.kv, ptr %.0105197, align 8, !tbaa !30
  %i.kx = icmp ult ptr %i.kw, %i.ib
  br i1 %i.kx, label %.lr.ph, label %.loopexit, !llvm.loop !118

.lr.ph203:                                        ; preds = %.lr.ph203.preheader383, %.lr.ph203
  %.199202 = phi ptr [ %i.lb, %.lr.ph203 ], [ %.199202.ph, %.lr.ph203.preheader383 ] ; 2 uses
  %.1102201 = phi ptr [ %i.ky, %.lr.ph203 ], [ %.1102201.ph, %.lr.ph203.preheader383 ] ; 2 uses
  %.1106200 = phi ptr [ %i.le, %.lr.ph203 ], [ %.1106200.ph, %.lr.ph203.preheader383 ] ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.1102201, i64 8
  %i.kz = load i64, ptr %.1102201, align 8, !tbaa !30
  %i.la = xor i64 %i.kz, -1
  %i.lb = getelementptr inbounds nuw i8, ptr %.199202, i64 8
  %i.lc = load i64, ptr %.199202, align 8, !tbaa !30
  %i.ld = and i64 %i.lc, %i.la
  %i.le = getelementptr inbounds nuw i8, ptr %.1106200, i64 8 ; 2 uses
  store i64 %i.ld, ptr %.1106200, align 8, !tbaa !30
  %i.lf = icmp ult ptr %i.le, %i.ib
  br i1 %i.lf, label %.lr.ph203, label %.loopexit, !llvm.loop !119

bb.bg:                                            ; preds = %bb.be
  br i1 %.not117, label %.preheader, label %.preheader189

.preheader189:                                    ; preds = %bb.bg
  br i1 %i.fr, label %.lr.ph207.preheader, label %.loopexit

.lr.ph207.preheader:                              ; preds = %.preheader189
  %22 = tail call i64 @llvm.umax.i64(i64 %i.hl, i64 %i.hk)
  %23 = add i64 %22, %i.hi                        ; 2 uses
  %24 = lshr i64 %23, 3
  %25 = add nuw nsw i64 %24, 1                    ; 2 uses
  %min.iters.check314 = icmp ult i64 %23, 40
  br i1 %min.iters.check314, label %.lr.ph207.preheader381, label %vector.memcheck308

vector.memcheck308:                               ; preds = %.lr.ph207.preheader
  %i.lg = sub i64 %i.iz, %i.hn
  %diff.check309 = icmp ugt i64 %i.lg, -32
  %i.lh = sub i64 %i.jk, %i.hn
  %diff.check310 = icmp ugt i64 %i.lh, -32
  %conflict.rdx311 = or i1 %diff.check309, %diff.check310
  br i1 %conflict.rdx311, label %.lr.ph207.preheader381, label %vector.ph315

vector.ph315:                                     ; preds = %vector.memcheck308
  %n.vec316 = and i64 %25, 4611686018427387900    ; 3 uses
  %i.li = shl i64 %n.vec316, 3                    ; 3 uses
  %i.lj = getelementptr i8, ptr %i.jj, i64 %i.li
  %i.lk = getelementptr i8, ptr %i.iy, i64 %i.li
  %i.ll = getelementptr i8, ptr %i.ia, i64 %i.li
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph315
  %index318 = phi i64 [ 0, %vector.ph315 ], [ %index.next326, %vector.body317 ] ; 2 uses
  %i.lm = shl i64 %index318, 3                    ; 3 uses
  %next.gep319.a = getelementptr i8, ptr %i.jj, i64 %i.lm ; 2 uses
  %next.gep320.a = getelementptr i8, ptr %i.iy, i64 %i.lm ; 2 uses
  %next.gep321 = getelementptr i8, ptr %i.ia, i64 %i.lm ; 2 uses
  %i.ln = getelementptr i8, ptr %next.gep320.a, i64 16
  %wide.load322.a = load <2 x i64>, ptr %next.gep320.a, align 8, !tbaa !30
  %wide.load323.a = load <2 x i64>, ptr %i.ln, align 8, !tbaa !30
  %i.lo = getelementptr i8, ptr %next.gep319.a, i64 16
  %wide.load324.a = load <2 x i64>, ptr %next.gep319.a, align 8, !tbaa !30
  %wide.load325 = load <2 x i64>, ptr %i.lo, align 8, !tbaa !30
  %i.lp = xor <2 x i64> %wide.load324.a, splat (i64 -1)
  %i.lq = xor <2 x i64> %wide.load325, splat (i64 -1)
  %i.lr = and <2 x i64> %wide.load322.a, %i.lp
  %i.ls = and <2 x i64> %wide.load323.a, %i.lq
  %i.lt = getelementptr i8, ptr %next.gep321, i64 16
  store <2 x i64> %i.lr, ptr %next.gep321, align 8, !tbaa !30
  store <2 x i64> %i.ls, ptr %i.lt, align 8, !tbaa !30
  %index.next326 = add nuw i64 %index318, 4       ; 2 uses
  %i.lu = icmp eq i64 %index.next326, %n.vec316
  br i1 %i.lu, label %middle.block327, label %vector.body317, !llvm.loop !120

middle.block327:                                  ; preds = %vector.body317
  %cmp.n328 = icmp eq i64 %25, %n.vec316
  br i1 %cmp.n328, label %.loopexit, label %.lr.ph207.preheader381

.lr.ph207.preheader381:                           ; preds = %vector.memcheck308, %.lr.ph207.preheader, %middle.block327
  %.2100206.ph = phi ptr [ %i.jj, %vector.memcheck308 ], [ %i.jj, %.lr.ph207.preheader ], [ %i.lj, %middle.block327 ]
  %.2103205.ph = phi ptr [ %i.iy, %vector.memcheck308 ], [ %i.iy, %.lr.ph207.preheader ], [ %i.lk, %middle.block327 ]
  %.2107204.ph = phi ptr [ %i.ia, %vector.memcheck308 ], [ %i.ia, %.lr.ph207.preheader ], [ %i.ll, %middle.block327 ]
  br label %.lr.ph207

.preheader:                                       ; preds = %bb.bg
  br i1 %i.fs, label %.lr.ph211.preheader, label %.loopexit

.lr.ph211.preheader:                              ; preds = %.preheader
  %26 = tail call i64 @llvm.umax.i64(i64 %i.hs, i64 %i.hr)
  %27 = add i64 %26, %i.hp                        ; 2 uses
  %28 = lshr i64 %27, 3
  %29 = add nuw nsw i64 %28, 1                    ; 2 uses
  %min.iters.check292 = icmp ult i64 %27, 40
  br i1 %min.iters.check292, label %.lr.ph211.preheader380, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph211.preheader
  %i.lv = sub i64 %i.iz, %i.hu
  %diff.check = icmp ugt i64 %i.lv, -32
  %i.lw = sub i64 %i.jk, %i.hu
  %diff.check290 = icmp ugt i64 %i.lw, -32
  %conflict.rdx = or i1 %diff.check, %diff.check290
  br i1 %conflict.rdx, label %.lr.ph211.preheader380, label %vector.ph293

vector.ph293:                                     ; preds = %vector.memcheck
  %n.vec294 = and i64 %29, 4611686018427387900    ; 3 uses
  %i.lx = shl i64 %n.vec294, 3                    ; 3 uses
  %i.ly = getelementptr i8, ptr %i.jj, i64 %i.lx
  %i.lz = getelementptr i8, ptr %i.iy, i64 %i.lx
  %i.ma = getelementptr i8, ptr %i.ia, i64 %i.lx
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph293
  %index296 = phi i64 [ 0, %vector.ph293 ], [ %index.next302, %vector.body295 ] ; 2 uses
  %i.mb = shl i64 %index296, 3                    ; 3 uses
  %next.gep = getelementptr i8, ptr %i.jj, i64 %i.mb ; 2 uses
  %next.gep297 = getelementptr i8, ptr %i.iy, i64 %i.mb ; 2 uses
  %next.gep298 = getelementptr i8, ptr %i.ia, i64 %i.mb ; 2 uses
  %i.mc = getelementptr i8, ptr %next.gep297, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep297, align 8, !tbaa !30
  %wide.load299 = load <2 x i64>, ptr %i.mc, align 8, !tbaa !30
  %i.md = getelementptr i8, ptr %next.gep, i64 16
  %wide.load300 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !30
  %wide.load301 = load <2 x i64>, ptr %i.md, align 8, !tbaa !30
  %i.me = and <2 x i64> %wide.load300, %wide.load
  %i.mf = and <2 x i64> %wide.load301, %wide.load299
  %i.mg = getelementptr i8, ptr %next.gep298, i64 16
  store <2 x i64> %i.me, ptr %next.gep298, align 8, !tbaa !30
  store <2 x i64> %i.mf, ptr %i.mg, align 8, !tbaa !30
  %index.next302 = add nuw i64 %index296, 4       ; 2 uses
  %i.mh = icmp eq i64 %index.next302, %n.vec294
  br i1 %i.mh, label %middle.block303, label %vector.body295, !llvm.loop !121

middle.block303:                                  ; preds = %vector.body295
  %cmp.n304 = icmp eq i64 %29, %n.vec294
  br i1 %cmp.n304, label %.loopexit, label %.lr.ph211.preheader380

.lr.ph211.preheader380:                           ; preds = %vector.memcheck, %.lr.ph211.preheader, %middle.block303
  %.3210.ph = phi ptr [ %i.jj, %vector.memcheck ], [ %i.jj, %.lr.ph211.preheader ], [ %i.ly, %middle.block303 ]
  %.3104209.ph = phi ptr [ %i.iy, %vector.memcheck ], [ %i.iy, %.lr.ph211.preheader ], [ %i.lz, %middle.block303 ]
  %.3108208.ph = phi ptr [ %i.ia, %vector.memcheck ], [ %i.ia, %.lr.ph211.preheader ], [ %i.ma, %middle.block303 ]
  br label %.lr.ph211

.lr.ph207:                                        ; preds = %.lr.ph207.preheader381, %.lr.ph207
  %.2100206 = phi ptr [ %i.mk, %.lr.ph207 ], [ %.2100206.ph, %.lr.ph207.preheader381 ] ; 2 uses
  %.2103205 = phi ptr [ %i.mi, %.lr.ph207 ], [ %.2103205.ph, %.lr.ph207.preheader381 ] ; 2 uses
  %.2107204 = phi ptr [ %i.mo, %.lr.ph207 ], [ %.2107204.ph, %.lr.ph207.preheader381 ] ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.2103205, i64 8
  %i.mj = load i64, ptr %.2103205, align 8, !tbaa !30
  %i.mk = getelementptr inbounds nuw i8, ptr %.2100206, i64 8
  %i.ml = load i64, ptr %.2100206, align 8, !tbaa !30
  %i.mm = xor i64 %i.ml, -1
  %i.mn = and i64 %i.mj, %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %.2107204, i64 8 ; 2 uses
  store i64 %i.mn, ptr %.2107204, align 8, !tbaa !30
  %i.mp = icmp ult ptr %i.mo, %i.ib
  br i1 %i.mp, label %.lr.ph207, label %.loopexit, !llvm.loop !122

.lr.ph211:                                        ; preds = %.lr.ph211.preheader380, %.lr.ph211
  %.3210 = phi ptr [ %i.ms, %.lr.ph211 ], [ %.3210.ph, %.lr.ph211.preheader380 ] ; 2 uses
  %.3104209 = phi ptr [ %i.mq, %.lr.ph211 ], [ %.3104209.ph, %.lr.ph211.preheader380 ] ; 2 uses
  %.3108208 = phi ptr [ %i.mv, %.lr.ph211 ], [ %.3108208.ph, %.lr.ph211.preheader380 ] ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.3104209, i64 8
  %i.mr = load i64, ptr %.3104209, align 8, !tbaa !30
  %i.ms = getelementptr inbounds nuw i8, ptr %.3210, i64 8
  %i.mt = load i64, ptr %.3210, align 8, !tbaa !30
  %i.mu = and i64 %i.mt, %i.mr
  %i.mv = getelementptr inbounds nuw i8, ptr %.3108208, i64 8 ; 2 uses
  store i64 %i.mu, ptr %.3108208, align 8, !tbaa !30
  %i.mw = icmp ult ptr %i.mv, %i.ib
  br i1 %i.mw, label %.lr.ph211, label %.loopexit, !llvm.loop !123

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph203, %.lr.ph207, %.lr.ph211, %middle.block375, %middle.block351, %middle.block327, %middle.block303, %.preheader193, %.preheader191, %.preheader189, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %.critedge, label %bb.ay, !llvm.loop !124

.critedge:                                        ; preds = %.loopexit, %..critedge_crit_edge
  %.val5.val.i = phi ptr [ %.val5.val.i.pre, %..critedge_crit_edge ], [ %.val153.val, %.loopexit ] ; 3 uses
  %.val4.i = phi ptr [ %.val4.i.pre, %..critedge_crit_edge ], [ %.val, %.loopexit ]
  %i.mx = phi i32 [ %.pre241, %..critedge_crit_edge ], [ %.val150, %.loopexit ]
  %.val.i187 = phi ptr [ %.val.i187.pre, %..critedge_crit_edge ], [ %.val151.val, %.loopexit ]
  %i.my = ptrtoint ptr %.val4.i to i64
  %i.mz = sub i64 %i.b, %i.my
  %i.na = sdiv exact i64 %i.mz, 12
  %sext.i.i = shl i64 %i.na, 32
  %i.nb = ashr exact i64 %sext.i.i, 30
  %i.nc = getelementptr inbounds i8, ptr %.val5.val.i, i64 %i.nb
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !33
  %i.ne = mul nsw i32 %i.nd, %i.mx
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [8 x i8], ptr %.val.i187, i64 %i.nf ; 2 uses
  %.val131216 = load i32, ptr %i.g, align 4, !tbaa !38
  %i.nh = icmp sgt i32 %.val131216, 0
  br i1 %i.nh, label %.lr.ph218, label %.critedge2.preheader

.lr.ph218:                                        ; preds = %.critedge
  %i.ni = getelementptr i8, ptr %2, i64 8
  %.val126 = load ptr, ptr %i.ni, align 8, !tbaa !32
  br label %bb.bh

.critedge2.preheader.loopexit:                    ; preds = %bb.bh
  %.val130219.pre = load i32, ptr %i.fi, align 4, !tbaa !38
  br label %.critedge2.preheader

.critedge2.preheader:                             ; preds = %.critedge2.preheader.loopexit, %.critedge
  %.val130219 = phi i32 [ %.val130219.pre, %.critedge2.preheader.loopexit ], [ %.val132, %.critedge ]
  %i.nj = icmp sgt i32 %.val130219, 1
  br i1 %i.nj, label %.lr.ph221, label %.critedge4

.lr.ph221:                                        ; preds = %.critedge2.preheader
  %i.nk = getelementptr i8, ptr %i.fh, i64 8
  %.val125 = load ptr, ptr %i.nk, align 8, !tbaa !32
  br label %.critedge2

bb.bh:                                            ; preds = %.lr.ph218, %bb.bh
  %indvars.iv227 = phi i64 [ 0, %.lr.ph218 ], [ %indvars.iv.next228, %bb.bh ] ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %.val126, i64 %indvars.iv227
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !33
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [4 x i8], ptr %.val5.val.i, i64 %i.nn
  store i32 -1000000000, ptr %i.no, align 4, !tbaa !33
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %.val131 = load i32, ptr %i.g, align 4, !tbaa !38
  %i.np = sext i32 %.val131 to i64
  %i.nq = icmp slt i64 %indvars.iv.next228, %i.np
  br i1 %i.nq, label %bb.bh, label %.critedge2.preheader.loopexit, !llvm.loop !125

.critedge2:                                       ; preds = %.lr.ph221, %.critedge2
  %indvars.iv230 = phi i64 [ 1, %.lr.ph221 ], [ %indvars.iv.next231, %.critedge2 ] ; 2 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %.val125, i64 %indvars.iv230
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !33
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds [4 x i8], ptr %.val5.val.i, i64 %i.nt
  store i32 -1000000000, ptr %i.nu, align 4, !tbaa !33
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %.val130 = load i32, ptr %i.fi, align 4, !tbaa !38
  %i.nv = sext i32 %.val130 to i64
  %i.nw = icmp slt i64 %indvars.iv.next231, %i.nv
  br i1 %i.nw, label %.critedge2, label %.critedge4, !llvm.loop !126

.critedge4:                                       ; preds = %.critedge2, %.critedge2.preheader, %.lr.ph.preheader.i, %bb.q, %Vec_IntFind.exit
  %.0109 = phi ptr [ %i.r, %Vec_IntFind.exit ], [ %i.bh, %.lr.ph.preheader.i ], [ %i.bh, %bb.q ], [ %i.ng, %.critedge2.preheader ], [ %i.ng, %.critedge2 ]
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
  store i32 0, ptr %i.f, align 4, !tbaa !127
  store i32 100, ptr %i.e, align 8, !tbaa !129
  %i.g = tail call noalias dereferenceable_or_null(1600) ptr @calloc(i64 noundef 100, i64 noundef 16) #27
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 30 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 3 uses
  store i32 0, ptr %i.j, align 4, !tbaa !38
  store i32 16, ptr %i.i, align 8, !tbaa !39
  %i.k = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.m = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %.val102 = load ptr, ptr %i.m, align 8, !tbaa !31
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
  store i32 %i.s, ptr %i.t, align 8, !tbaa !131
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 10, ptr %i.u, align 8, !tbaa !134
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 1023, ptr %i.v, align 4, !tbaa !135
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store i32 -1, ptr %i.w, align 4, !tbaa !136
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.t, ptr %i.x, align 8, !tbaa !137
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %bb.b
  %.012.i.i = phi i32 [ 999, %bb.b ], [ %i.y, %.critedge.i.i.backedge ] ; 3 uses
  %i.y = add i32 %.012.i.i, 1                     ; 7 uses
  %i.z = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
  br label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not15.i.i = icmp ult i32 %i.y, 9
  br i1 %.not15.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.aa = add nuw nsw i32 %.01116.i.i, 2          ; 3 uses
  %i.ab = mul nuw nsw i32 %i.aa, %i.aa
  %.not.i.i = icmp ugt i32 %i.ab, %i.y
  br i1 %.not.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !139

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.c
  %.01116.i.i = phi i32 [ %i.aa, %bb.c ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.ac = urem i32 %i.y, %.01116.i.i
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.critedge.i.i.backedge, label %bb.c

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.c
  %i.ae = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 4 uses
  %or.cond.i.i.i = icmp samesign ult i32 %.012.i.i, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %i.y ; 2 uses
  store i32 %spec.store.select.i.i.i, ptr %i.ae, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = zext nneg i32 %spec.store.select.i.i.i to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ah) #25 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !32
  store i32 %i.y, ptr %i.af, align 4, !tbaa !38
  %.not.i3.i = icmp eq ptr %i.ai, null
end_hunk_0
