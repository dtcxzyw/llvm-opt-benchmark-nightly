inline.NumInlined: 30
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@newkey:bb.a
  %i.r = xor i32 %notmask.i.i, -1
  %i.s = or i32 %i.r, 1
  %i.t = urem i32 %.sroa.0.0.extract.trunc10.i.i, %i.s
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.u
  br label %mainposition.exit

bb.d:                                             ; preds = %tailrecurse
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !10
  %i.aa = load i8, ptr %i.d, align 8, !tbaa !19
  %i.ab = zext nneg i8 %i.aa to i32
  %notmask17.i = shl nsw i32 -1, %i.ab
  %i.ac = xor i32 %notmask17.i, -1
  %i.ad = and i32 %i.z, %i.ac
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %i.ae
  br label %mainposition.exit

bb.e:                                             ; preds = %tailrecurse
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %i.ah = load i32, ptr %2, align 8, !tbaa !10
  %i.ai = load i8, ptr %i.d, align 8, !tbaa !19
  %i.aj = zext nneg i8 %i.ai to i32
  %notmask16.i = shl nsw i32 -1, %i.aj
  %i.ak = xor i32 %notmask16.i, -1
  %i.al = and i32 %i.ah, %i.ak
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.am
  br label %mainposition.exit

bb.f:                                             ; preds = %tailrecurse
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %i.ap = load ptr, ptr %2, align 8, !tbaa !10
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = trunc i64 %i.aq to i32
  %i.as = load i8, ptr %i.d, align 8, !tbaa !19
  %i.at = zext nneg i8 %i.as to i32
  %notmask.i = shl nsw i32 -1, %i.at
  %i.au = xor i32 %notmask.i, -1
  %i.av = or i32 %i.au, 1
  %i.aw = urem i32 %i.ar, %i.av
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.ao, i64 %i.ax
  br label %mainposition.exit

bb.g:                                             ; preds = %tailrecurse
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %i.ba = load ptr, ptr %2, align 8, !tbaa !10
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = load i8, ptr %i.d, align 8, !tbaa !19
  %i.be = zext nneg i8 %i.bd to i32
  %notmask18.i = shl nsw i32 -1, %i.be
  %i.bf = xor i32 %notmask18.i, -1
  %i.bg = or i32 %i.bf, 1
  %i.bh = urem i32 %i.bc, %i.bg
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %i.az, i64 %i.bi
  br label %mainposition.exit

mainposition.exit:                                ; preds = %bb.c, %.preheader.i.i, %bb.d, %bb.e, %bb.f, %bb.g
  %i.bk = phi ptr [ %i.az, %bb.g ], [ %i.ao, %bb.f ], [ %i.w, %bb.d ], [ %i.ag, %bb.e ], [ %i.l, %bb.c ], [ %i.o, %.preheader.i.i ] ; 7 uses
  %.0.i = phi ptr [ %i.bj, %bb.g ], [ %i.ay, %bb.f ], [ %i.af, %bb.d ], [ %i.an, %bb.e ], [ %i.l, %bb.c ], [ %i.v, %.preheader.i.i ] ; 12 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !25
  %i.bn = icmp ne i32 %i.bm, 0
  %i.bo = icmp eq ptr %.0.i, @dummynode_
  %or.cond = or i1 %i.bo, %i.bn
  br i1 %or.cond, label %bb.h, label %luaH_set.exit

bb.h:                                             ; preds = %mainposition.exit
  %.promoted.i = load ptr, ptr %i.e, align 8, !tbaa !41
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.bp = phi ptr [ %i.bq, %bb.j ], [ %.promoted.i, %bb.h ] ; 4 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -40 ; 6 uses
  store ptr %i.bq, ptr %i.e, align 8, !tbaa !41
  %i.br = icmp ugt ptr %i.bp, %i.bk
  br i1 %i.br, label %bb.j, label %rehash.exit

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds i8, ptr %i.bp, i64 -16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !10
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %getfreepos.exit, label %bb.i, !llvm.loop !44

rehash.exit:                                      ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) %i.a, i8 0, i64 108, i1 false), !tbaa !4
  %i.bv = load i32, ptr %i.f, align 8, !tbaa !11  ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %rehash.exit
  %indvars.iv45.i = phi i64 [ 0, %rehash.exit ], [ %indvars.iv.next46.i, %._crit_edge.i ] ; 2 uses
  %.02343.i = phi i32 [ 1, %rehash.exit ], [ %.124.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.02542.i = phi i32 [ 0, %rehash.exit ], [ %i.ec, %._crit_edge.i ] ; 2 uses
  %.02841.i = phi i32 [ 1, %rehash.exit ], [ %i.ed, %._crit_edge.i ] ; 3 uses
  %i.bw = icmp sgt i32 %.02841.i, %i.bv
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bx = icmp sgt i32 %.02343.i, %i.bv
  br i1 %i.bx, label %numusearray.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.021.i = phi i32 [ %i.bv, %bb.l ], [ %.02841.i, %bb.k ] ; 3 uses
  %.not36.i = icmp sgt i32 %.02343.i, %.021.i
  br i1 %.not36.i, label %._crit_edge.i, label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %bb.m
  %i.by = load ptr, ptr %i.g, align 8, !tbaa !22  ; 9 uses
  %i.bz = sext i32 %.02343.i to i64               ; 4 uses
  %i.ca = sext i32 %.021.i to i64                 ; 2 uses
  %i.cb = sub nsw i64 %i.ca, %i.bz
  %i.cc = add nsw i64 %i.cb, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cc, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i73
  %n.vec = and i64 %i.cc, -8                      ; 3 uses
  %i.cd = add nsw i64 %n.vec, %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dp, %vector.body ]
  %vec.phi144 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dq, %vector.body ]
  %i.ce = add i64 %index, %i.bz                   ; 8 uses
  %i.cf = getelementptr [16 x i8], ptr %i.by, i64 %i.ce
  %i.cg = getelementptr [16 x i8], ptr %i.by, i64 %i.ce
  %i.ch = getelementptr [16 x i8], ptr %i.by, i64 %i.ce
  %i.ci = getelementptr [16 x i8], ptr %i.by, i64 %i.ce
  %i.cj = getelementptr [16 x i8], ptr %i.by, i64 %i.ce
  %i.ck = getelementptr [16 x i8], ptr %i.by, i64 %i.ce
  %i.cl = getelementptr [16 x i8], ptr %i.by, i64 %i.ce
  %i.cm = getelementptr [16 x i8], ptr %i.by, i64 %i.ce
  %i.cn = getelementptr i8, ptr %i.cf, i64 -8
  %i.co = getelementptr i8, ptr %i.cg, i64 8
  %i.cp = getelementptr i8, ptr %i.ch, i64 24
  %i.cq = getelementptr i8, ptr %i.ci, i64 40
  %i.cr = getelementptr i8, ptr %i.cj, i64 56
  %i.cs = getelementptr i8, ptr %i.ck, i64 72
  %i.ct = getelementptr i8, ptr %i.cl, i64 88
  %i.cu = getelementptr i8, ptr %i.cm, i64 104
  %i.cv = load i32, ptr %i.cn, align 8, !tbaa !8
  %i.cw = load i32, ptr %i.co, align 8, !tbaa !8
  %i.cx = load i32, ptr %i.cp, align 8, !tbaa !8
  %i.cy = load i32, ptr %i.cq, align 8, !tbaa !8
  %i.cz = insertelement <4 x i32> poison, i32 %i.cv, i64 0
  %i.da = insertelement <4 x i32> %i.cz, i32 %i.cw, i64 1
  %i.db = insertelement <4 x i32> %i.da, i32 %i.cx, i64 2
  %i.dc = insertelement <4 x i32> %i.db, i32 %i.cy, i64 3
  %i.dd = load i32, ptr %i.cr, align 8, !tbaa !8
  %i.de = load i32, ptr %i.cs, align 8, !tbaa !8
  %i.df = load i32, ptr %i.ct, align 8, !tbaa !8
  %i.dg = load i32, ptr %i.cu, align 8, !tbaa !8
  %i.dh = insertelement <4 x i32> poison, i32 %i.dd, i64 0
  %i.di = insertelement <4 x i32> %i.dh, i32 %i.de, i64 1
  %i.dj = insertelement <4 x i32> %i.di, i32 %i.df, i64 2
  %i.dk = insertelement <4 x i32> %i.dj, i32 %i.dg, i64 3
  %i.dl = icmp ne <4 x i32> %i.dc, zeroinitializer
  %i.dm = icmp ne <4 x i32> %i.dk, zeroinitializer
  %i.dn = zext <4 x i1> %i.dl to <4 x i32>
  %i.do = zext <4 x i1> %i.dm to <4 x i32>
  %i.dp = add <4 x i32> %vec.phi, %i.dn           ; 2 uses
  %i.dq = add <4 x i32> %vec.phi144, %i.do        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dq, %i.dp
  %i.ds = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i73, %middle.block
  %indvars.iv.i74.ph = phi i64 [ %i.bz, %.lr.ph.i73 ], [ %i.cd, %middle.block ]
  %.02238.i.ph = phi i32 [ 0, %.lr.ph.i73 ], [ %i.ds, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i74 = phi i64 [ %indvars.iv.next.i75, %scalar.ph ], [ %indvars.iv.i74.ph, %scalar.ph.preheader ] ; 3 uses
  %.02238.i = phi i32 [ %spec.select.i, %scalar.ph ], [ %.02238.i.ph, %scalar.ph.preheader ]
  %i.dt = getelementptr [16 x i8], ptr %i.by, i64 %indvars.iv.i74
  %i.du = getelementptr i8, ptr %i.dt, i64 -8
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !8
  %i.dw = icmp ne i32 %i.dv, 0
  %i.dx = zext i1 %i.dw to i32
  %spec.select.i = add nuw nsw i32 %.02238.i, %i.dx ; 2 uses
  %indvars.iv.next.i75 = add nsw i64 %indvars.iv.i74, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i74, %i.ca
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %scalar.ph, !llvm.loop !48

._crit_edge.loopexit.i:                           ; preds = %scalar.ph, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.ds, %middle.block ], [ %spec.select.i, %scalar.ph ]
  %i.dy = add nsw i32 %.021.i, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.m
  %.124.lcssa.i = phi i32 [ %.02343.i, %bb.m ], [ %i.dy, %._crit_edge.loopexit.i ]
  %.022.lcssa.i = phi i32 [ 0, %bb.m ], [ %spec.select.i.lcssa, %._crit_edge.loopexit.i ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv45.i ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !4
  %i.eb = add nsw i32 %i.ea, %.022.lcssa.i
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !4
  %i.ec = add nuw nsw i32 %.022.lcssa.i, %.02542.i ; 2 uses
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %i.ed = shl nsw i32 %.02841.i, 1
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next46.i, 27
  br i1 %exitcond48.not.i, label %numusearray.exit, label %bb.k, !llvm.loop !49

numusearray.exit:                                 ; preds = %bb.l, %._crit_edge.i
  %.025.lcssa.i = phi i32 [ %.02542.i, %bb.l ], [ %i.ec, %._crit_edge.i ] ; 2 uses
  %i.ee = load i8, ptr %i.d, align 8, !tbaa !19
  %i.ef = zext nneg i8 %i.ee to i32
  %notmask.i69 = shl nsw i32 -1, %i.ef
  %i.eg = xor i32 %notmask.i69, -1
  %i.eh = zext nneg i32 %i.eg to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %numusearray.exit
  %indvars.iv.i70 = phi i64 [ %i.eh, %numusearray.exit ], [ %indvars.iv.next.i72, %bb.r ] ; 3 uses
  %.015.i = phi i32 [ 0, %numusearray.exit ], [ %.1.i71, %bb.r ] ; 2 uses
  %.01214.i = phi i32 [ 0, %numusearray.exit ], [ %.113.i, %bb.r ] ; 2 uses
  %i.ei = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.ej = getelementptr inbounds [40 x i8], ptr %i.ei, i64 %indvars.iv.i70 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !25
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !8
  %i.ep = icmp eq i32 %i.eo, 3
  br i1 %i.ep, label %bb.p, label %countint.exit.i

bb.p:                                             ; preds = %bb.o
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.er = load double, ptr %i.eq, align 8, !tbaa !10 ; 2 uses
  %i.es = fptosi double %i.er to i32              ; 2 uses
  %i.et = sitofp i32 %i.es to double
  %i.eu = fcmp une double %i.er, %i.et
  br i1 %i.eu, label %countint.exit.i, label %arrayindex.exit.i.i

arrayindex.exit.i.i:                              ; preds = %bb.p
  %i.ev = add i32 %i.es, -1                       ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.ev, 67108864
  br i1 %or.cond.i.i, label %bb.q, label %countint.exit.i

bb.q:                                             ; preds = %arrayindex.exit.i.i
  %i.ew = tail call i32 @luaO_log2(i32 noundef %i.ev) #7
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr [4 x i8], ptr %i.a, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 4      ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !4
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !4
  br label %countint.exit.i

countint.exit.i:                                  ; preds = %bb.q, %arrayindex.exit.i.i, %bb.p, %bb.o
  %.0.i.i = phi i32 [ 1, %bb.q ], [ 0, %arrayindex.exit.i.i ], [ 0, %bb.o ], [ 0, %bb.p ]
  %i.fc = add nsw i32 %.0.i.i, %.01214.i
  %i.fd = add nsw i32 %.015.i, 1
  br label %bb.r

bb.r:                                             ; preds = %countint.exit.i, %bb.n
  %.113.i = phi i32 [ %.01214.i, %bb.n ], [ %i.fc, %countint.exit.i ] ; 2 uses
  %.1.i71 = phi i32 [ %.015.i, %bb.n ], [ %i.fd, %countint.exit.i ] ; 2 uses
  %indvars.iv.next.i72 = add nsw i64 %indvars.iv.i70, -1
  %i.fe = icmp eq i64 %indvars.iv.i70, 0
  br i1 %i.fe, label %numusehash.exit, label %bb.n, !llvm.loop !50

numusehash.exit:                                  ; preds = %bb.r
  %i.ff = add nsw i32 %.113.i, %.025.lcssa.i
  %i.fg = load i32, ptr %i.b, align 8, !tbaa !8
  %i.fh = icmp eq i32 %i.fg, 3
  br i1 %i.fh, label %bb.s, label %countint.exit

bb.s:                                             ; preds = %numusehash.exit
  %i.fi = load double, ptr %2, align 8, !tbaa !10 ; 2 uses
  %i.fj = fptosi double %i.fi to i32              ; 2 uses
  %i.fk = sitofp i32 %i.fj to double
  %i.fl = fcmp une double %i.fi, %i.fk
  br i1 %i.fl, label %countint.exit, label %arrayindex.exit.i

arrayindex.exit.i:                                ; preds = %bb.s
  %i.fm = add i32 %i.fj, -1                       ; 2 uses
  %or.cond.i = icmp ult i32 %i.fm, 67108864
  br i1 %or.cond.i, label %bb.t, label %countint.exit

bb.t:                                             ; preds = %arrayindex.exit.i
  %i.fn = tail call i32 @luaO_log2(i32 noundef %i.fm) #7
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr [4 x i8], ptr %i.a, i64 %i.fo
  %i.fq = getelementptr i8, ptr %i.fp, i64 4      ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !4
  %i.fs = add nsw i32 %i.fr, 1
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !4
  br label %countint.exit

countint.exit:                                    ; preds = %numusehash.exit, %bb.s, %arrayindex.exit.i, %bb.t
  %.0.i68 = phi i32 [ 1, %bb.t ], [ 0, %arrayindex.exit.i ], [ 0, %numusehash.exit ], [ 0, %bb.s ]
  %i.ft = add nsw i32 %i.ff, %.0.i68              ; 3 uses
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %.lr.ph.i, label %computesizes.exit

.lr.ph.i:                                         ; preds = %countint.exit, %bb.u
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.u ], [ 0, %countint.exit ] ; 2 uses
  %i.fv = phi i32 [ %i.ge, %bb.u ], [ 0, %countint.exit ]
  %.033.i = phi i32 [ %.1.i, %bb.u ], [ 0, %countint.exit ]
  %.01732.i = phi i32 [ %.118.i, %bb.u ], [ 0, %countint.exit ]
  %.02031.i = phi i32 [ %.121.i, %bb.u ], [ 0, %countint.exit ] ; 2 uses
  %.02230.i = phi i32 [ %i.gd, %bb.u ], [ 1, %countint.exit ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !4  ; 2 uses
  %i.fy = icmp sgt i32 %i.fx, 0                   ; 2 uses
  %i.fz = add nuw nsw i32 %i.fx, %.02031.i        ; 3 uses
  %i.ga = icmp sgt i32 %i.fz, %i.fv
  %.121.i = select i1 %i.fy, i32 %i.fz, i32 %.02031.i ; 2 uses
  %i.gb = select i1 %i.fy, i1 %i.ga, i1 false     ; 2 uses
  %.118.i = select i1 %i.gb, i32 %i.fz, i32 %.01732.i ; 3 uses
  %.1.i = select i1 %i.gb, i32 %.02230.i, i32 %.033.i ; 3 uses
  %i.gc = icmp eq i32 %.121.i, %i.ft
  br i1 %i.gc, label %computesizes.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.gd = shl nsw i32 %.02230.i, 1
  %i.ge = and i32 %.02230.i, 2147483647           ; 2 uses
  %i.gf = icmp samesign ult i32 %i.ge, %i.ft
  br i1 %i.gf, label %.lr.ph.i, label %computesizes.exit, !llvm.loop !51

computesizes.exit:                                ; preds = %.lr.ph.i, %bb.u, %countint.exit
  %.219.i = phi i32 [ 0, %countint.exit ], [ %.118.i, %bb.u ], [ %.118.i, %.lr.ph.i ]
  %.2.i = phi i32 [ 0, %countint.exit ], [ %.1.i, %bb.u ], [ %.1.i, %.lr.ph.i ]
  %i.gg = add i32 %.025.lcssa.i, 1
  %i.gh = add i32 %i.gg, %.1.i71
  %i.gi = sub i32 %i.gh, %.219.i
  tail call fastcc void @resize(ptr noundef %0, ptr noundef %1, i32 noundef %.2.i, i32 noundef %i.gi), !inline_history !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.gj = tail call ptr @luaH_get(ptr noundef %1, ptr noundef %2), !inline_history !33 ; 2 uses
  store i8 0, ptr %i.h, align 2, !tbaa !34
  %.not.i = icmp eq ptr %i.gj, @luaO_nilobject_
  br i1 %.not.i, label %bb.v, label %luaH_set.exit.thread

bb.v:                                             ; preds = %computesizes.exit
  %i.gk = load i32, ptr %i.b, align 8, !tbaa !8
  switch i32 %i.gk, label %tailrecurse.backedge [
    i32 0, label %.sink.split
    i32 3, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.gl = load double, ptr %2, align 8, !tbaa !10
  %i.gm = fcmp ord double %i.gl, 0.000000e+00
  br i1 %i.gm, label %tailrecurse.backedge, label %.sink.split

.sink.split:                                      ; preds = %bb.w, %bb.v
  %.str.1.sink = phi ptr [ @.str, %bb.v ], [ @.str.1, %bb.w ]
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull %.str.1.sink) #7
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %.sink.split, %bb.w, %bb.v
  br label %tailrecurse

getfreepos.exit:                                  ; preds = %bb.j
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !8
  switch i32 %i.gq, label %bb.ab [
    i32 3, label %bb.x
    i32 4, label %bb.y
    i32 1, label %bb.z
    i32 2, label %bb.aa
  ]

bb.x:                                             ; preds = %getfreepos.exit
  %i.gr = load double, ptr %i.go, align 8, !tbaa !10 ; 2 uses
  %i.gs = fcmp oeq double %i.gr, 0.000000e+00
  br i1 %i.gs, label %mainposition.exit67, label %.preheader.i.i62

.preheader.i.i62:                                 ; preds = %bb.x
  %i.gt = bitcast double %i.gr to i64             ; 2 uses
  %.sroa.0.4.extract.shift.i.i63 = lshr i64 %i.gt, 32
  %i.gu = add i64 %.sroa.0.4.extract.shift.i.i63, %i.gt
  %.sroa.0.0.extract.trunc10.i.i64 = trunc i64 %i.gu to i32
  %i.gv = load i8, ptr %i.d, align 8, !tbaa !19
  %i.gw = zext nneg i8 %i.gv to i32
  %notmask.i.i65 = shl nsw i32 -1, %i.gw
  %i.gx = xor i32 %notmask.i.i65, -1
  %i.gy = or i32 %i.gx, 1
  %i.gz = urem i32 %.sroa.0.0.extract.trunc10.i.i64, %i.gy
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [40 x i8], ptr %i.bk, i64 %i.ha
  br label %mainposition.exit67

bb.y:                                             ; preds = %getfreepos.exit
  %i.hc = load ptr, ptr %i.go, align 8, !tbaa !10
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !10
  %i.hf = load i8, ptr %i.d, align 8, !tbaa !19
  %i.hg = zext nneg i8 %i.hf to i32
  %notmask17.i61 = shl nsw i32 -1, %i.hg
  %i.hh = xor i32 %notmask17.i61, -1
  %i.hi = and i32 %i.he, %i.hh
  %i.hj = zext nneg i32 %i.hi to i64
end_hunk_0
