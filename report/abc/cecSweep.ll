inline.NumInlined: 113
inline.NumDeleted: 42
begin_hunk_0_@Cec_ManFraSpecReduction:bb.a
  %narrow.i.not = icmp eq i64 %i.an, 2684354559
  br i1 %narrow.i.not, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef nonnull %i.m) ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 4
  %i.aq = or i64 %i.ap, 2684354559                ; 2 uses
  store i64 %i.aq, ptr %i.ao, align 4
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !42
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  %.val.i = load i32, ptr %i.as, align 4, !tbaa !16
  %i.at = and i32 %.val.i, 536870911
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 32
  %i.aw = and i64 %i.aq, -2305843004918726657
  %i.ax = or disjoint i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.ao, align 4
  %i.ay = load ptr, ptr %i.ai, align 8, !tbaa !42 ; 6 uses
  %.val11.i = load ptr, ptr %i.aj, align 8, !tbaa !41 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !16 ; 7 uses
  %i.bb = load i32, ptr %i.ay, align 8, !tbaa !43
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.h, label %Gia_ManAppendCi.exit

bb.h:                                             ; preds = %bb.g
  %i.bd = icmp slt i32 %i.ba, 16
  br i1 %i.bd, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !44 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not9.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bf, i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.bh = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.k, %bb.j
  %i.bi = phi ptr [ %i.bg, %bb.j ], [ %i.bh, %bb.k ]
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !44
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.l:                                             ; preds = %bb.h
  %i.bj = icmp samesign ult i32 %i.ba, 1073741823
  %i.bk = shl nuw nsw i32 %i.ba, 1
  %spec.select.i.i = select i1 %i.bj, i32 %i.bk, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.ba, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.m, label %Gia_ManAppendCi.exit

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !44 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.bm, null
  %i.bn = zext nneg i32 %spec.select.i.i to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = tail call ptr @realloc(ptr noundef nonnull %i.bm, i64 noundef %i.bo) #24
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bq = tail call noalias ptr @malloc(i64 noundef %i.bo) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.br = phi ptr [ %i.bp, %bb.n ], [ %i.bq, %bb.o ]
  store ptr %i.br, ptr %i.bl, align 8, !tbaa !44
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.p, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.p ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.ay, align 8, !tbaa !43
  %.pre.i = load i32, ptr %i.az, align 4, !tbaa !16
  %.val10.pre.i = load ptr, ptr %i.aj, align 8, !tbaa !41
  br label %Gia_ManAppendCi.exit

Gia_ManAppendCi.exit:                             ; preds = %bb.g, %bb.l, %Vec_IntGrow.exit11.sink.split.i.i
  %.val10.i = phi ptr [ %.val11.i, %bb.g ], [ %.val11.i, %bb.l ], [ %.val10.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.bs = phi i32 [ %i.ba, %bb.g ], [ %i.ba, %bb.l ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.bt = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.bu = ptrtoint ptr %.val11.i to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = sdiv exact i64 %i.bv, 12
  %i.bx = trunc i64 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !44
  %i.ca = add nsw i32 %i.bs, 1
  store i32 %i.ca, ptr %i.az, align 4, !tbaa !16
  %i.cb = sext i32 %i.bs to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cb
  store i32 %i.bx, ptr %i.cc, align 4, !tbaa !40
  %i.cd = ptrtoint ptr %.val10.i to i64
  %i.ce = sub i64 %i.bt, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 12
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = shl i32 %i.cg, 1
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !40
  br label %bb.aq

bb.q:                                             ; preds = %bb.f
  %i.cj = and i64 %.val143, 2147483648
  %.not.i168 = icmp eq i64 %i.cj, 0
  %i.ck = and i64 %.val143, 536870911
  %i.cl = icmp eq i64 %i.ck, 536870911
  %narrow.i169.not = or i1 %.not.i168, %i.cl
  br i1 %narrow.i169.not, label %bb.r, label %bb.aq

bb.r:                                             ; preds = %bb.q
  %i.cm = trunc i64 %.val143 to i32
  %i.cn = and i64 %.val143, 536870911
  %i.co = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.cp = sub nsw i64 %indvars.iv, %i.cn
  %sext = shl i64 %i.cp, 32
  %i.cq = ashr exact i64 %sext, 30
  %i.cr = getelementptr inbounds i8, ptr %i.af, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !40 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, -1
  br i1 %i.ct, label %bb.aq, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = lshr i64 %.val143, 32
  %i.cv = and i64 %i.cu, 536870911
  %i.cw = sub nsw i64 %indvars.iv, %i.cv
  %sext208 = shl i64 %i.cw, 32
  %i.cx = ashr exact i64 %sext208, 30
  %i.cy = getelementptr inbounds i8, ptr %i.af, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !40 ; 2 uses
  %i.da = icmp eq i32 %i.cz, -1
  br i1 %i.da, label %bb.aq, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = lshr i32 %i.cm, 29
  %i.dc = and i32 %i.db, 1
  %i.dd = xor i32 %i.cs, %i.dc
  %i.de = lshr i64 %.val143, 61
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = and i32 %i.df, 1
  %i.dh = xor i32 %i.cz, %i.dg
  %i.di = tail call i32 @Gia_ManHashAnd(ptr noundef nonnull %i.m, i32 noundef %i.dd, i32 noundef %i.dh) #20 ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv ; 3 uses
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !40
  %.val145 = load i64, ptr %i.am, align 4         ; 2 uses
  %i.dk = and i64 %.val145, 536870911
  %i.dl = sub nsw i64 %indvars.iv, %i.dk
  %sext209 = shl i64 %i.dl, 32
  %i.dm = ashr exact i64 %sext209, 30
  %i.dn = getelementptr inbounds i8, ptr %i.ag, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !40
  %i.dp = lshr i64 %.val145, 32
  %i.dq = and i64 %i.dp, 536870911
  %i.dr = sub nsw i64 %indvars.iv, %i.dq
  %sext210 = shl i64 %i.dr, 32
  %i.ds = ashr exact i64 %sext210, 30
  %i.dt = getelementptr inbounds i8, ptr %i.ag, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !40
  %i.dv = tail call noundef i32 @llvm.smax.i32(i32 %i.do, i32 %i.du) ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !40
  %i.dx = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 192
  %.val159 = load ptr, ptr %i.dy, align 8, !tbaa !45
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.val159, i64 %indvars.iv
  %i.ea = load i32, ptr %i.dz, align 4            ; 2 uses
  %i.eb = and i32 %i.ea, 268435455                ; 2 uses
  %i.ec = icmp ne i32 %i.eb, 268435455
  %i.ed = and i32 %i.ea, 536870912
  %.not129 = icmp eq i32 %i.ed, 0
  %or.cond176 = and i1 %i.ec, %.not129
  br i1 %or.cond176, label %bb.u, label %bb.aq

bb.u:                                             ; preds = %bb.t
  %i.ee = zext nneg i32 %i.eb to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !40 ; 4 uses
  %i.eh = icmp eq i32 %i.eg, -1
  %i.ei = xor i32 %i.eg, %i.di
  %i.ej = icmp ult i32 %i.ei, 2
  %or.cond178 = select i1 %i.eh, i1 true, i1 %i.ej
  br i1 %or.cond178, label %bb.aq, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ek = load ptr, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 28
  %i.em = load i32, ptr %i.el, align 4, !tbaa !20 ; 2 uses
  %.not130 = icmp eq i32 %i.em, 0
  br i1 %.not130, label %bb.aj, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.en = getelementptr i8, ptr %i.dx, i64 160
  %.val162 = load ptr, ptr %i.en, align 8, !tbaa !46 ; 7 uses
  %i.eo = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val162, i64 4 ; 3 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !16 ; 4 uses
  %i.er = sext i32 %i.eq to i64                   ; 4 uses
  %.not.i.not.i.i = icmp slt i64 %indvars.iv, %i.er
  br i1 %.not.i.not.i.i, label %Gia_ObjLevelId.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.es = load i32, ptr %.val162, align 8, !tbaa !43 ; 4 uses
  %i.et = shl nsw i32 %i.es, 1                    ; 2 uses
  %1 = sext i32 %i.et to i64
  %.not.i.i = icmp slt i64 %indvars.iv, %1
  %i.eu = sext i32 %i.es to i64
  %.not.i.i.not.i.i.a = icmp slt i64 %indvars.iv, %i.eu ; 2 uses
  br i1 %.not.i.i, label %bb.ac, label %2

2:                                                ; preds = %bb.x
  br i1 %.not.i.i.not.i.i.a, label %Vec_IntGrow.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %2
  %i.ev = getelementptr inbounds nuw i8, ptr %.val162, i64 8 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !44 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ew, null
  %i.ex = shl nuw nsw i64 %i.eo, 2                ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ey = tail call ptr @realloc(ptr noundef nonnull %i.ew, i64 noundef %i.ex) #24
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ez = tail call noalias ptr @malloc(i64 noundef %i.ex) #22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fa = phi ptr [ %i.ey, %bb.z ], [ %i.ez, %bb.aa ]
  store ptr %i.fa, ptr %i.ev, align 8, !tbaa !44
  %i.fb = trunc nuw nsw i64 %i.eo to i32
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.ac:                                            ; preds = %bb.x
  br i1 %.not.i.i.not.i.i.a, label %Vec_IntGrow.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fc = icmp slt i32 %i.es, 1073741823
  %spec.select.i.i.i = select i1 %i.fc, i32 %i.et, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.es, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.ae, label %Vec_IntGrow.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.fd = getelementptr inbounds nuw i8, ptr %.val162, i64 8 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !44 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.fe, null
  %i.ff = sext i32 %spec.select.i.i.i to i64
  %i.fg = shl nsw i64 %i.ff, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fh = tail call ptr @realloc(ptr noundef nonnull %i.fe, i64 noundef %i.fg) #24
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.fi = tail call noalias ptr @malloc(i64 noundef %i.fg) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fj = phi ptr [ %i.fh, %bb.af ], [ %i.fi, %bb.ag ]
  store ptr %i.fj, ptr %i.fd, align 8, !tbaa !44
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.ah, %bb.ab
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.ah ], [ %i.fb, %bb.ab ]
  store i32 %spec.select.sink.i.i.i, ptr %.val162, align 8, !tbaa !43
  %.pre.i.i = load i32, ptr %i.ep, align 4, !tbaa !16 ; 2 uses
  %.pre193 = sext i32 %.pre.i.i to i64
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.ad, %bb.ac, %2
  %.pre-phi194 = phi i64 [ %.pre193, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.er, %bb.ad ], [ %i.er, %bb.ac ], [ %i.er, %2 ] ; 2 uses
  %3 = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.eq, %bb.ad ], [ %i.eq, %bb.ac ], [ %i.eq, %2 ]
  %.not3.i.i = icmp sgt i64 %.pre-phi194, %indvars.iv
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.val162, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !44
  %i.fm = shl nsw i64 %.pre-phi194, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.fl, i64 %i.fm
  %i.fn = sub i32 %i.co, %3
  %i.fo = zext i32 %i.fn to i64
  %i.fp = shl nuw nsw i64 %i.fo, 2
  %i.fq = add nuw nsw i64 %i.fp, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.fq, i1 false), !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  %i.fr = trunc nuw nsw i64 %i.eo to i32
  store i32 %i.fr, ptr %i.ep, align 4, !tbaa !16
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 28
  %.pre184 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !20
  br label %Gia_ObjLevelId.exit

Gia_ObjLevelId.exit:                              ; preds = %bb.w, %._crit_edge.i.i.i
  %i.fs = phi i32 [ %i.em, %bb.w ], [ %.pre184, %._crit_edge.i.i.i ]
  %i.ft = getelementptr i8, ptr %.val162, i64 8
  %.val.i.i = load ptr, ptr %i.ft, align 8, !tbaa !44
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %indvars.iv
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !40
  %i.fw = icmp sgt i32 %i.fv, %i.fs
  br i1 %i.fw, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %Gia_ObjLevelId.exit
  %i.fx = load ptr, ptr %0, align 8, !tbaa !8
  %i.fy = ashr i32 %i.eg, 1
  %i.fz = getelementptr i8, ptr %i.fx, i64 160
  %.val161 = load ptr, ptr %i.fz, align 8, !tbaa !46
  %i.ga = tail call fastcc i32 @Gia_ObjLevelId(ptr %.val161, i32 noundef %i.fy)
  %i.gb = load ptr, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 28
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !20
  %i.ge = icmp sgt i32 %i.ga, %i.gd
  br i1 %i.ge, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.v
  %i.gf = phi ptr [ %i.gb, %bb.ai ], [ %i.ek, %bb.v ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !47
  %.not131 = icmp eq i32 %i.gh, 0
  br i1 %.not131, label %._crit_edge, label %bb.ak

._crit_edge:                                      ; preds = %bb.aj
  %.pre185 = load ptr, ptr %0, align 8, !tbaa !8  ; 2 uses
  %.phi.trans.insert186 = getelementptr i8, ptr %.pre185, i64 192
  %.val155.pre = load ptr, ptr %.phi.trans.insert186, align 8, !tbaa !45
  %.phi.trans.insert188 = getelementptr inbounds nuw [4 x i8], ptr %.val155.pre, i64 %indvars.iv
  %.pre189 = load i32, ptr %.phi.trans.insert188, align 4 ; 2 uses
  %.pre190 = and i32 %.pre189, 268435455
  %.pre191 = zext nneg i32 %.pre190 to i64
  br label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 60
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !48
  %.not132 = icmp eq i32 %i.gj, 0
  %i.gk = load ptr, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 192
  %.val156 = load ptr, ptr %i.gl, align 8, !tbaa !45 ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.val156, i64 %indvars.iv
  %i.gn = load i32, ptr %i.gm, align 4            ; 4 uses
  %i.go = and i32 %i.gn, 268435455
  %i.gp = zext nneg i32 %i.go to i64              ; 3 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.val156, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = xor i32 %i.gr, %i.gn                    ; 2 uses
  br i1 %.not132, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not134.not = icmp ugt i32 %i.gs, -1073741825
  br i1 %.not134.not, label %bb.an, label %bb.aq

bb.am:                                            ; preds = %bb.ak
  %.not133 = icmp ult i32 %i.gs, 1073741824
  br i1 %.not133, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %._crit_edge, %bb.al, %bb.am
  %.pre-phi192 = phi i64 [ %.pre191, %._crit_edge ], [ %i.gp, %bb.al ], [ %i.gp, %bb.am ]
  %i.gt = phi i32 [ %.pre189, %._crit_edge ], [ %i.gn, %bb.al ], [ %i.gn, %bb.am ]
  %i.gu = phi ptr [ %.pre185, %._crit_edge ], [ %i.gk, %bb.al ], [ %i.gk, %bb.am ]
  %i.gv = getelementptr i8, ptr %i.gu, i64 32
  %.val141 = load ptr, ptr %i.gv, align 8, !tbaa !41
  %i.gw = getelementptr inbounds nuw [12 x i8], ptr %.val141, i64 %.pre-phi192
  %i.gx = ptrtoint ptr %i.am to i64
  %i.gy = load i64, ptr %i.am, align 4
  %i.gz = lshr i64 %i.gy, 63
  %i.ha = trunc nuw nsw i64 %i.gz to i32
  %i.hb = trunc i64 %i.gx to i32
  %i.hc = and i32 %i.hb, 1
  %i.hd = ptrtoint ptr %i.gw to i64               ; 2 uses
  %i.he = and i64 %i.hd, -2
  %i.hf = inttoptr i64 %i.he to ptr
  %i.hg = load i64, ptr %i.hf, align 4
  %i.hh = lshr i64 %i.hg, 63
  %i.hi = trunc nuw nsw i64 %i.hh to i32
  %i.hj = trunc i64 %i.hd to i32
  %i.hk = and i32 %i.hj, 1
  %i.hl = xor i32 %i.hc, %i.ha
  %i.hm = xor i32 %i.hl, %i.hi
  %i.hn = xor i32 %i.hm, %i.hk
  %i.ho = xor i32 %i.hn, %i.eg                    ; 2 uses
  store i32 %i.ho, ptr %i.dj, align 4, !tbaa !40
  %i.hp = and i32 %i.gt, 268435456
  %.not135 = icmp eq i32 %i.hp, 0
  br i1 %.not135, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.hq = tail call i32 @Gia_ManHashXor(ptr noundef nonnull %i.m, i32 noundef %i.di, i32 noundef %i.ho) #20
  tail call fastcc void @Gia_ManAppendCo(ptr noundef nonnull %i.m, i32 noundef %i.hq)
  %i.hr = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.hs = load ptr, ptr %0, align 8, !tbaa !8
  %i.ht = getelementptr i8, ptr %i.hs, i64 192
  %.val154 = load ptr, ptr %i.ht, align 8, !tbaa !45
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.val154, i64 %indvars.iv
  %i.hv = load i32, ptr %i.hu, align 4
  %i.hw = and i32 %i.hv, 268435455
  tail call fastcc void @Vec_IntPush(ptr noundef %i.hr, i32 noundef %i.hw)
  %i.hx = load ptr, ptr %i.b, align 8, !tbaa !15
  tail call fastcc void @Vec_IntPush(ptr noundef %i.hx, i32 noundef %i.co)
  %i.hy = load ptr, ptr %0, align 8, !tbaa !8
  %i.hz = getelementptr i8, ptr %i.hy, i64 192
  %.val153 = load ptr, ptr %i.hz, align 8, !tbaa !45
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.val153, i64 %indvars.iv
  %i.ib = load i32, ptr %i.ia, align 4
  %i.ic = and i32 %i.ib, 268435455
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !40
  %i.ig = tail call noundef i32 @llvm.smax.i32(i32 %i.dv, i32 %i.if)
  %i.ih = add nsw i32 %i.ig, 1                    ; 2 uses
  store i32 %i.ih, ptr %i.dw, align 4, !tbaa !40
  %i.ii = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !49 ; 2 uses
  %.not136 = icmp eq i32 %i.ik, 0
  %.not137 = icmp slt i32 %i.ih, %i.ik
  %or.cond = select i1 %.not136, i1 true, i1 %.not137
  br i1 %or.cond, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 -1, ptr %i.dj, align 4, !tbaa !40
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.an, %bb.am, %bb.al, %Gia_ObjLevelId.exit, %bb.ai, %bb.u, %bb.t, %bb.r, %bb.s, %bb.q, %Gia_ManAppendCi.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.il = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.in = load i32, ptr %i.im, align 8, !tbaa !23
  %i.io = sext i32 %i.in to i64
  %i.ip = icmp slt i64 %indvars.iv.next, %i.io
  br i1 %i.ip, label %bb.f, label %.critedge, !llvm.loop !50

.critedge:                                        ; preds = %bb.aq, %Abc_UtilStrsav.exit167
  tail call void @free(ptr noundef %i.af) #20
  %.not126 = icmp eq ptr %i.ag, null
  br i1 %.not126, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.ag) #20
  br label %bb.as

bb.as:                                            ; preds = %.critedge, %bb.ar
  tail call void @Gia_ManHashStop(ptr noundef nonnull %i.m) #20
  tail call void @Gia_ManSetRegNum(ptr noundef nonnull %i.m, i32 noundef 0) #20
  %i.iq = tail call ptr @Gia_ManCleanup(ptr noundef nonnull %i.m) #20
  tail call void @Gia_ManStop(ptr noundef nonnull %i.m) #20
  ret ptr %i.iq
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @Gia_ManSetPhase(ptr noundef) local_unnamed_addr #2

declare i32 @Gia_ManLevelNum(ptr noundef) local_unnamed_addr #2

declare ptr @Gia_ManStart(i32 noundef) local_unnamed_addr #2

declare void @Gia_ManHashAlloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @Gia_ManHashAnd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Gia_ObjLevelId(ptr nofree captures(none) %.160.val, i32 noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = add nsw i32 %0, 1                        ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.160.val, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !16   ; 4 uses
  %.not.i.not.i = icmp slt i32 %0, %i.c
  br i1 %.not.i.not.i, label %Vec_IntGetEntry.exit, label %bb.b

end_hunk_0
