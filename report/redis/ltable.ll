inline.NumInlined: 30
inline.NumDeleted: 12
begin_hunk_0_@luaH_get:bb.a
  ret ptr %.2
}

declare hidden i32 @luaO_rawequalObj(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @luaH_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @luaH_get(ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 0, ptr %i.b, align 2, !tbaa !34
  %.not = icmp eq ptr %i.a, @luaO_nilobject_
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8
  switch i32 %i.d, label %bb.d [
    i32 0, label %.sink.split
    i32 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load double, ptr %2, align 8, !tbaa !10
  %i.f = fcmp ord double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.str.1.sink = phi ptr [ @.str, %bb.b ], [ @.str.1, %bb.c ]
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull %.str.1.sink) #7
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b, %bb.c
  %i.g = tail call fastcc ptr @newkey(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.g, %bb.d ], [ %i.a, %bb.a ]
  ret ptr %.0
}

declare hidden void @luaG_runerror(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @newkey(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [27 x i32], align 16              ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 10
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %i.i = load i32, ptr %i.b, align 8, !tbaa !8
  switch i32 %i.i, label %bb.g [
    i32 3, label %bb.b
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.j = load double, ptr %2, align 8, !tbaa !10  ; 2 uses
  %i.k = fcmp oeq double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.c, label %.preheader.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  br label %mainposition.exit

.preheader.i.i:                                   ; preds = %bb.b
  %i.m = bitcast double %i.j to i64               ; 2 uses
  %.sroa.0.4.extract.shift.i.i = lshr i64 %i.m, 32
  %i.n = add i64 %.sroa.0.4.extract.shift.i.i, %i.m
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %.sroa.0.0.extract.trunc10.i.i = trunc i64 %i.n to i32
  %i.p = load i8, ptr %i.d, align 8, !tbaa !19
  %i.q = zext nneg i8 %i.p to i32
  %notmask.i.i = shl nsw i32 -1, %i.q
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
  %.02542.i = phi i32 [ 0, %rehash.exit ], [ %i.ea, %._crit_edge.i ] ; 2 uses
  %.02841.i = phi i32 [ 1, %rehash.exit ], [ %i.eb, %._crit_edge.i ] ; 3 uses
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
  %3 = add nsw i64 %i.ca, 1
  %4 = sub nsw i64 %3, %i.bz                      ; 3 uses
  %min.iters.check = icmp ult i64 %4, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i73
  %n.vec = and i64 %4, -8                         ; 3 uses
  %i.cb = add nsw i64 %n.vec, %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %vec.phi144 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.do, %vector.body ]
  %i.cc = add i64 %index, %i.bz                   ; 8 uses
  %i.cd = getelementptr [16 x i8], ptr %i.by, i64 %i.cc
  %i.ce = getelementptr [16 x i8], ptr %i.by, i64 %i.cc
  %i.cf = getelementptr [16 x i8], ptr %i.by, i64 %i.cc
  %i.cg = getelementptr [16 x i8], ptr %i.by, i64 %i.cc
  %i.ch = getelementptr [16 x i8], ptr %i.by, i64 %i.cc
  %i.ci = getelementptr [16 x i8], ptr %i.by, i64 %i.cc
  %i.cj = getelementptr [16 x i8], ptr %i.by, i64 %i.cc
  %i.ck = getelementptr [16 x i8], ptr %i.by, i64 %i.cc
  %i.cl = getelementptr i8, ptr %i.cd, i64 -8
  %i.cm = getelementptr i8, ptr %i.ce, i64 8
  %i.cn = getelementptr i8, ptr %i.cf, i64 24
  %i.co = getelementptr i8, ptr %i.cg, i64 40
  %i.cp = getelementptr i8, ptr %i.ch, i64 56
  %i.cq = getelementptr i8, ptr %i.ci, i64 72
  %i.cr = getelementptr i8, ptr %i.cj, i64 88
  %i.cs = getelementptr i8, ptr %i.ck, i64 104
  %i.ct = load i32, ptr %i.cl, align 8, !tbaa !8
  %i.cu = load i32, ptr %i.cm, align 8, !tbaa !8
  %i.cv = load i32, ptr %i.cn, align 8, !tbaa !8
  %i.cw = load i32, ptr %i.co, align 8, !tbaa !8
  %i.cx = insertelement <4 x i32> poison, i32 %i.ct, i64 0
  %i.cy = insertelement <4 x i32> %i.cx, i32 %i.cu, i64 1
  %i.cz = insertelement <4 x i32> %i.cy, i32 %i.cv, i64 2
  %i.da = insertelement <4 x i32> %i.cz, i32 %i.cw, i64 3
  %i.db = load i32, ptr %i.cp, align 8, !tbaa !8
  %i.dc = load i32, ptr %i.cq, align 8, !tbaa !8
  %i.dd = load i32, ptr %i.cr, align 8, !tbaa !8
  %i.de = load i32, ptr %i.cs, align 8, !tbaa !8
  %i.df = insertelement <4 x i32> poison, i32 %i.db, i64 0
  %i.dg = insertelement <4 x i32> %i.df, i32 %i.dc, i64 1
  %i.dh = insertelement <4 x i32> %i.dg, i32 %i.dd, i64 2
  %i.di = insertelement <4 x i32> %i.dh, i32 %i.de, i64 3
  %i.dj = icmp ne <4 x i32> %i.da, zeroinitializer
  %i.dk = icmp ne <4 x i32> %i.di, zeroinitializer
  %i.dl = zext <4 x i1> %i.dj to <4 x i32>
  %i.dm = zext <4 x i1> %i.dk to <4 x i32>
  %i.dn = add <4 x i32> %vec.phi, %i.dl           ; 2 uses
  %i.do = add <4 x i32> %vec.phi144, %i.dm        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.do, %i.dn
  %i.dq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i73, %middle.block
  %indvars.iv.i74.ph = phi i64 [ %i.bz, %.lr.ph.i73 ], [ %i.cb, %middle.block ]
  %.02238.i.ph = phi i32 [ 0, %.lr.ph.i73 ], [ %i.dq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i74 = phi i64 [ %indvars.iv.next.i75, %scalar.ph ], [ %indvars.iv.i74.ph, %scalar.ph.preheader ] ; 3 uses
  %.02238.i = phi i32 [ %spec.select.i, %scalar.ph ], [ %.02238.i.ph, %scalar.ph.preheader ]
  %i.dr = getelementptr [16 x i8], ptr %i.by, i64 %indvars.iv.i74
  %i.ds = getelementptr i8, ptr %i.dr, i64 -8
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !8
  %i.du = icmp ne i32 %i.dt, 0
  %i.dv = zext i1 %i.du to i32
  %spec.select.i = add nuw nsw i32 %.02238.i, %i.dv ; 2 uses
  %indvars.iv.next.i75 = add nsw i64 %indvars.iv.i74, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i74, %i.ca
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %scalar.ph, !llvm.loop !48

._crit_edge.loopexit.i:                           ; preds = %scalar.ph, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.dq, %middle.block ], [ %spec.select.i, %scalar.ph ]
  %i.dw = add nsw i32 %.021.i, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.m
  %.124.lcssa.i = phi i32 [ %.02343.i, %bb.m ], [ %i.dw, %._crit_edge.loopexit.i ]
  %.022.lcssa.i = phi i32 [ 0, %bb.m ], [ %spec.select.i.lcssa, %._crit_edge.loopexit.i ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv45.i ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4
  %i.dz = add nsw i32 %i.dy, %.022.lcssa.i
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !4
  %i.ea = add nuw nsw i32 %.022.lcssa.i, %.02542.i ; 2 uses
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %i.eb = shl nsw i32 %.02841.i, 1
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next46.i, 27
  br i1 %exitcond48.not.i, label %numusearray.exit, label %bb.k, !llvm.loop !49

numusearray.exit:                                 ; preds = %bb.l, %._crit_edge.i
  %.025.lcssa.i = phi i32 [ %.02542.i, %bb.l ], [ %i.ea, %._crit_edge.i ] ; 2 uses
  %i.ec = load i8, ptr %i.d, align 8, !tbaa !19
  %i.ed = zext nneg i8 %i.ec to i32
  %notmask.i69 = shl nsw i32 -1, %i.ed
  %i.ee = xor i32 %notmask.i69, -1
  %i.ef = zext nneg i32 %i.ee to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %numusearray.exit
  %indvars.iv.i70 = phi i64 [ %i.ef, %numusearray.exit ], [ %indvars.iv.next.i72, %bb.r ] ; 3 uses
  %.015.i = phi i32 [ 0, %numusearray.exit ], [ %.1.i71, %bb.r ] ; 2 uses
  %.01214.i = phi i32 [ 0, %numusearray.exit ], [ %.113.i, %bb.r ] ; 2 uses
  %i.eg = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.eh = getelementptr inbounds [40 x i8], ptr %i.eg, i64 %indvars.iv.i70 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !25
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.em = load i32, ptr %i.el, align 8, !tbaa !8
  %i.en = icmp eq i32 %i.em, 3
  br i1 %i.en, label %bb.p, label %countint.exit.i

bb.p:                                             ; preds = %bb.o
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !10 ; 2 uses
  %i.eq = fptosi double %i.ep to i32              ; 2 uses
  %i.er = sitofp i32 %i.eq to double
  %i.es = fcmp une double %i.ep, %i.er
  br i1 %i.es, label %countint.exit.i, label %arrayindex.exit.i.i

arrayindex.exit.i.i:                              ; preds = %bb.p
  %i.et = add i32 %i.eq, -1                       ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.et, 67108864
  br i1 %or.cond.i.i, label %bb.q, label %countint.exit.i

bb.q:                                             ; preds = %arrayindex.exit.i.i
  %i.eu = tail call i32 @luaO_log2(i32 noundef %i.et) #7
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr [4 x i8], ptr %i.a, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 4      ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !4
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !4
  br label %countint.exit.i

countint.exit.i:                                  ; preds = %bb.q, %arrayindex.exit.i.i, %bb.p, %bb.o
  %.0.i.i = phi i32 [ 1, %bb.q ], [ 0, %arrayindex.exit.i.i ], [ 0, %bb.o ], [ 0, %bb.p ]
  %i.fa = add nsw i32 %.0.i.i, %.01214.i
  %i.fb = add nsw i32 %.015.i, 1
  br label %bb.r

bb.r:                                             ; preds = %countint.exit.i, %bb.n
  %.113.i = phi i32 [ %.01214.i, %bb.n ], [ %i.fa, %countint.exit.i ] ; 2 uses
  %.1.i71 = phi i32 [ %.015.i, %bb.n ], [ %i.fb, %countint.exit.i ] ; 2 uses
  %indvars.iv.next.i72 = add nsw i64 %indvars.iv.i70, -1
  %i.fc = icmp eq i64 %indvars.iv.i70, 0
  br i1 %i.fc, label %numusehash.exit, label %bb.n, !llvm.loop !50

numusehash.exit:                                  ; preds = %bb.r
  %i.fd = add nsw i32 %.113.i, %.025.lcssa.i
  %i.fe = load i32, ptr %i.b, align 8, !tbaa !8
  %i.ff = icmp eq i32 %i.fe, 3
  br i1 %i.ff, label %bb.s, label %countint.exit

bb.s:                                             ; preds = %numusehash.exit
  %i.fg = load double, ptr %2, align 8, !tbaa !10 ; 2 uses
  %i.fh = fptosi double %i.fg to i32              ; 2 uses
  %i.fi = sitofp i32 %i.fh to double
  %i.fj = fcmp une double %i.fg, %i.fi
  br i1 %i.fj, label %countint.exit, label %arrayindex.exit.i

arrayindex.exit.i:                                ; preds = %bb.s
  %i.fk = add i32 %i.fh, -1                       ; 2 uses
  %or.cond.i = icmp ult i32 %i.fk, 67108864
  br i1 %or.cond.i, label %bb.t, label %countint.exit

bb.t:                                             ; preds = %arrayindex.exit.i
  %i.fl = tail call i32 @luaO_log2(i32 noundef %i.fk) #7
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr [4 x i8], ptr %i.a, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 4      ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !4
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !4
  br label %countint.exit

countint.exit:                                    ; preds = %numusehash.exit, %bb.s, %arrayindex.exit.i, %bb.t
  %.0.i68 = phi i32 [ 1, %bb.t ], [ 0, %arrayindex.exit.i ], [ 0, %numusehash.exit ], [ 0, %bb.s ]
  %i.fr = add nsw i32 %i.fd, %.0.i68              ; 3 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %.lr.ph.i, label %computesizes.exit

.lr.ph.i:                                         ; preds = %countint.exit, %bb.u
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.u ], [ 0, %countint.exit ] ; 2 uses
  %i.ft = phi i32 [ %i.gc, %bb.u ], [ 0, %countint.exit ]
  %.033.i = phi i32 [ %.1.i, %bb.u ], [ 0, %countint.exit ]
  %.01732.i = phi i32 [ %.118.i, %bb.u ], [ 0, %countint.exit ]
  %.02031.i = phi i32 [ %.121.i, %bb.u ], [ 0, %countint.exit ] ; 2 uses
  %.02230.i = phi i32 [ %i.gb, %bb.u ], [ 1, %countint.exit ] ; 3 uses
end_hunk_0
