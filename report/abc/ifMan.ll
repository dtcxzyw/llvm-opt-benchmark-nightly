Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifMan?download=true
inline.NumInlined: 290
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@If_ManStart:bb.a
  %i.cm = urem i32 %i.ci, %.01116.i.i.i
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %.critedge.i.i.i.backedge, label %bb.c

Abc_PrimeCudd.exit.i.i:                           ; preds = %.preheader.i.i.i, %bb.c
  %i.co = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 4 uses
  %or.cond.i.i.i.i = icmp samesign ult i32 %.012.i.i.i, 15
  %spec.store.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i32 16, i32 %i.ci ; 2 uses
  store i32 %spec.store.select.i.i.i.i, ptr %i.co, align 8, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = zext nneg i32 %spec.store.select.i.i.i.i to i64
  %i.cr = shl nuw nsw i64 %i.cq, 2
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.cr) #22 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !61
  store i32 %i.ci, ptr %i.cp, align 4, !tbaa !62
  %.not.i3.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i3.i.i, label %Vec_MemHashAlloc.exit.i, label %bb.d

bb.d:                                             ; preds = %Abc_PrimeCudd.exit.i.i
  %i.cu = zext nneg i32 %i.ci to i64
  %i.cv = shl nuw nsw i64 %i.cu, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cs, i8 -1, i64 %i.cv, i1 false)
  br label %Vec_MemHashAlloc.exit.i

Vec_MemHashAlloc.exit.i:                          ; preds = %bb.d, %Abc_PrimeCudd.exit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  store ptr %i.co, ptr %i.cw, align 8, !tbaa !63
  %i.cx = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 0, ptr %i.cy, align 4, !tbaa !62
  store i32 10000, ptr %i.cx, align 8, !tbaa !60
  %i.cz = tail call noalias dereferenceable_or_null(40000) ptr @malloc(i64 noundef 40000) #22
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !61
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  store ptr %i.cx, ptr %i.db, align 8, !tbaa !64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, i8 0, i64 %i.cc, i1 false)
  tail call fastcc void @Vec_MemHashInsert(ptr noundef nonnull %i.ce, ptr noundef nonnull %i.cd)
  %.not.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %Vec_MemHashAlloc.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, i8 85, i64 %i.cc, i1 false)
  br label %Vec_MemAllocForTT.exit

bb.f:                                             ; preds = %Vec_MemHashAlloc.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, i8 -86, i64 %i.cc, i1 false)
  br label %Vec_MemAllocForTT.exit

Vec_MemAllocForTT.exit:                           ; preds = %bb.e, %bb.f
  tail call fastcc void @Vec_MemHashInsert(ptr noundef nonnull %i.ce, ptr noundef nonnull %i.cd)
  tail call void @free(ptr noundef nonnull %i.cd) #24
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv338
  store ptr %i.ce, ptr %i.dc, align 8, !tbaa !50
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !31  ; 5 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !46 ; 3 uses
  %i.df = tail call noundef i32 @llvm.smax.i32(i32 %i.de, i32 6) ; 2 uses
  %i.dg = zext nneg i32 %i.df to i64
  %.not182.not = icmp samesign ult i64 %indvars.iv338, %i.dg
  br i1 %.not182.not, label %bb.b, label %.preheader278, !llvm.loop !126

bb.g:                                             ; preds = %.preheader278
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !140
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %bb.h, label %.loopexit276

bb.h:                                             ; preds = %bb.g, %.preheader278
  %i.dk = getelementptr inbounds nuw i8, ptr %calloc417, i64 1192 ; 3 uses
  %i.dl = add nuw i32 %i.df, 1
  %wide.trip.count348 = zext i32 %i.dl to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.i
  %indvars.iv345 = phi i64 [ 6, %bb.h ], [ %indvars.iv.next346, %bb.i ] ; 2 uses
  %i.dm = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store i32 0, ptr %i.dn, align 4, !tbaa !66
  store i32 1000, ptr %i.dm, align 8, !tbaa !67
  %i.do = tail call noalias dereferenceable_or_null(16000) ptr @calloc(i64 noundef 1000, i64 noundef 16) #23
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !68
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv345
  store ptr %i.dm, ptr %i.dq, align 8, !tbaa !70
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1 ; 2 uses
  %exitcond349.not = icmp eq i64 %indvars.iv.next346, %wide.trip.count348
  br i1 %exitcond349.not, label %.preheader277, label %bb.i, !llvm.loop !127

.preheader275:                                    ; preds = %Vec_WecInit.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %calloc417, i64 1240
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !70 ; 3 uses
  %i.dt = insertelement <4 x ptr> poison, ptr %i.ds, i64 0
  %i.du = shufflevector <4 x ptr> %i.dt, <4 x ptr> poison, <4 x i32> zeroinitializer
  store <4 x ptr> %i.du, ptr %i.dk, align 8, !tbaa !70
  %i.dv = getelementptr inbounds nuw i8, ptr %calloc417, i64 1224
  store ptr %i.ds, ptr %i.dv, align 8, !tbaa !70
  %i.dw = getelementptr inbounds nuw i8, ptr %calloc417, i64 1232
  store ptr %i.ds, ptr %i.dw, align 8, !tbaa !70
  br label %.loopexit276

.preheader277:                                    ; preds = %bb.i, %Vec_WecInit.exit
  %.pre397 = phi ptr [ %.pre398, %Vec_WecInit.exit ], [ %i.dd, %bb.i ] ; 2 uses
  %i.dx = phi i32 [ %i.en, %Vec_WecInit.exit ], [ %i.de, %bb.i ]
  %i.dy = phi ptr [ %i.eo, %Vec_WecInit.exit ], [ %i.dd, %bb.i ]
  %indvars.iv350 = phi i64 [ %indvars.iv.next351, %Vec_WecInit.exit ], [ 6, %bb.i ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv350
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !70 ; 5 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !67 ; 2 uses
  %.not.i.i = icmp slt i32 %i.eb, 2
  br i1 %.not.i.i, label %bb.j, label %Vec_WecInit.exit

bb.j:                                             ; preds = %.preheader277
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !68 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.ed, null
  br i1 %.not13.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ee = tail call dereferenceable_or_null(32) ptr @realloc(ptr noundef nonnull %i.ed, i64 noundef 32) #25
  %.pre.i.i = load i32, ptr %i.ea, align 8, !tbaa !67
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ef = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre = phi ptr [ %.pre.pre, %bb.k ], [ %.pre397, %bb.l ] ; 3 uses
  %i.eg = phi i32 [ %.pre.i.i, %bb.k ], [ %i.eb, %bb.l ] ; 2 uses
  %i.eh = phi ptr [ %i.ee, %bb.k ], [ %i.ef, %bb.l ] ; 2 uses
  store ptr %i.eh, ptr %i.ec, align 8, !tbaa !68
  %i.ei = sext i32 %i.eg to i64
  %i.ej = getelementptr inbounds [16 x i8], ptr %i.eh, i64 %i.ei
  %i.ek = sub nsw i32 2, %i.eg
  %i.el = sext i32 %i.ek to i64
  %i.em = shl nsw i64 %i.el, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ej, i8 0, i64 %i.em, i1 false)
  store i32 2, ptr %i.ea, align 8, !tbaa !67
  %.pre393 = load i32, ptr %.pre, align 8, !tbaa !46
  br label %Vec_WecInit.exit

Vec_WecInit.exit:                                 ; preds = %.preheader277, %bb.m
  %.pre398 = phi ptr [ %.pre397, %.preheader277 ], [ %.pre, %bb.m ]
  %i.en = phi i32 [ %i.dx, %.preheader277 ], [ %.pre393, %bb.m ] ; 3 uses
  %i.eo = phi ptr [ %i.dy, %.preheader277 ], [ %.pre, %bb.m ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  store i32 2, ptr %i.ep, align 4, !tbaa !66
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1
  %i.eq = tail call noundef i32 @llvm.smax.i32(i32 %i.en, i32 6)
  %i.er = zext nneg i32 %i.eq to i64
  %.not185.not = icmp samesign ult i64 %indvars.iv350, %i.er
  br i1 %.not185.not, label %.preheader277, label %.preheader275, !llvm.loop !128

.loopexit276:                                     ; preds = %.preheader275, %bb.g
  %.pre394401 = phi i32 [ %i.en, %.preheader275 ], [ %i.de, %bb.g ] ; 2 uses
  %i.es = phi ptr [ %i.eo, %.preheader275 ], [ %i.dd, %bb.g ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !139
  %.not186 = icmp eq i32 %i.eu, 0
  br i1 %.not186, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.loopexit276
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !140
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !141
  %.not187 = icmp eq i32 %i.ez, 0
  br i1 %.not187, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.loopexit276
  %calloc = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16)
  %i.fa = getelementptr inbounds nuw i8, ptr %calloc417, i64 584
  store ptr %calloc, ptr %i.fa, align 8, !tbaa !142
  %i.fb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store i32 0, ptr %i.fc, align 4, !tbaa !62
  store i32 1000, ptr %i.fb, align 8, !tbaa !60
  %i.fd = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #22
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !61
  %i.ff = getelementptr inbounds nuw i8, ptr %calloc417, i64 592
  store ptr %i.fb, ptr %i.ff, align 8, !tbaa !143
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.o, %bb.p
  %.pre394 = phi i32 [ %.pre394401, %bb.o ], [ %.pre394401, %bb.p ], [ %.pre394.pre, %bb.a ] ; 3 uses
  %i.fg = phi ptr [ %i.es, %bb.o ], [ %i.es, %bb.p ], [ %0, %bb.a ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 236
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !144
  %.not188 = icmp eq i32 %i.fi, 0
  br i1 %.not188, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.fj = and i32 %.pre394, 3
  %i.fk = icmp ne i32 %i.fj, 0
  %1 = zext i1 %i.fk to i32
  %2 = ashr i32 %.pre394, 2
  %3 = add nsw i32 %2, %1
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.q
  %i.fl = phi i32 [ %3, %bb.q ], [ 0, %._crit_edge ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %calloc417, i64 716
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !145
  %i.fn = add nsw i32 %.pre394, %i.fl
  %i.fo = shl i32 %i.fn, 2                        ; 3 uses
  %i.fp = add i32 %i.fo, 128                      ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %calloc417, i64 720 ; 2 uses
  store i32 %i.fp, ptr %i.fq, align 8, !tbaa !71
  %i.fr = add i32 %i.fo, 48
  %i.fs = getelementptr inbounds nuw i8, ptr %calloc417, i64 724 ; 2 uses
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !72
  %i.ft = add i32 %i.fo, 56
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !73
  %i.fw = add nsw i32 %i.fv, 1
  %i.fx = mul i32 %i.fw, %i.ft
  %i.fy = add i32 %i.fx, 24
  %i.fz = getelementptr inbounds nuw i8, ptr %calloc417, i64 728 ; 2 uses
  store i32 %i.fy, ptr %i.fz, align 8, !tbaa !74
  %i.ga = tail call ptr @Mem_FixedStart(i32 noundef %i.fp) #24
  %i.gb = getelementptr inbounds nuw i8, ptr %calloc417, i64 736
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !75
  %i.gc = load ptr, ptr %i.a, align 8, !tbaa !31  ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 200
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !76
  %.not189 = icmp eq i32 %i.ge, 0
  br i1 %.not189, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gf = load i32, ptr %i.gc, align 8, !tbaa !46 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %calloc417, i64 652
  %i.gh = sext i32 %i.gf to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !47
  %i.gk = shl nsw i32 %i.gj, 3
  %i.gl = load i32, ptr %i.fs, align 4, !tbaa !72
  %i.gm = load i32, ptr %i.fq, align 8, !tbaa !71
  %i.gn = load i32, ptr %i.fz, align 8, !tbaa !74
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 84
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !146
  %.not190 = icmp eq i32 %i.gp, 0
  %i.gq = select i1 %.not190, ptr @.str.2, ptr @.str.1
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str, i32 noundef %i.gf, i32 noundef %i.gk, i32 noundef %i.gl, i32 noundef %i.gm, i32 noundef %i.gn, ptr noundef nonnull %i.gq)
  %.pre395 = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.gr = phi ptr [ %.pre395, %bb.s ], [ %i.gc, %bb.r ] ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 232
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !45
  %.not191 = icmp eq i32 %i.gt, 0
  br i1 %.not191, label %.thread263, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gu = getelementptr inbounds nuw i8, ptr %calloc417, i64 652
  %i.gv = load i32, ptr %i.gr, align 8, !tbaa !46
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !47 ; 3 uses
  %i.gz = shl nsw i32 %i.gy, 3
  %i.ha = sext i32 %i.gz to i64
  %i.hb = shl nsw i64 %i.ha, 2
  %i.hc = tail call noalias ptr @malloc(i64 noundef %i.hb) #22 ; 2 uses
  %i.hd = shl nsw i32 %i.gy, 1
  %i.he = sext i32 %i.hd to i64                   ; 3 uses
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.he ; 2 uses
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.he ; 2 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.he
  %i.hi = sext i32 %i.gy to i64
  %i.hj = shl nsw i64 %i.hi, 3
  %i.hk = tail call noalias ptr @malloc(i64 noundef %i.hj) #22
  br label %.thread263

.thread263:                                       ; preds = %bb.t, %bb.u
  %.sink392 = phi ptr [ %i.hc, %bb.u ], [ null, %bb.t ]
  %.sink391 = phi ptr [ %i.hf, %bb.u ], [ null, %bb.t ]
  %.sink390 = phi ptr [ %i.hg, %bb.u ], [ null, %bb.t ]
  %.sink = phi ptr [ %i.hh, %bb.u ], [ null, %bb.t ]
  %i.hl = phi ptr [ %i.hk, %bb.u ], [ null, %bb.t ]
  %i.hm = getelementptr inbounds nuw i8, ptr %calloc417, i64 120
  store ptr %.sink392, ptr %i.hm, align 8, !tbaa !77
  %i.hn = getelementptr inbounds nuw i8, ptr %calloc417, i64 128
  store ptr %.sink391, ptr %i.hn, align 8, !tbaa !77
  %i.ho = getelementptr inbounds nuw i8, ptr %calloc417, i64 136
  store ptr %.sink390, ptr %i.ho, align 8, !tbaa !77
  %i.hp = getelementptr inbounds nuw i8, ptr %calloc417, i64 144
  store ptr %.sink, ptr %i.hp, align 8, !tbaa !77
  %i.hq = getelementptr inbounds nuw i8, ptr %calloc417, i64 152
  store ptr %i.hl, ptr %i.hq, align 8, !tbaa !78
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !79
  %.not196 = icmp eq i32 %i.hs, 0
  br i1 %.not196, label %.loopexit273, label %.preheader274

.preheader274:                                    ; preds = %.thread263
  %i.ht = getelementptr inbounds nuw i8, ptr %calloc417, i64 1320 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %calloc417, i64 1448 ; 2 uses
  br label %Vec_IntPush.exit213

.preheader272:                                    ; preds = %Vec_StrFill.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %calloc417, i64 1368
  %i.hw = getelementptr inbounds nuw i8, ptr %calloc417, i64 1496
  %i.hx = load ptr, ptr %i.hv, align 8, !tbaa !80 ; 3 uses
  %i.hy = load ptr, ptr %i.hw, align 8, !tbaa !81 ; 3 uses
  %i.hz = insertelement <4 x ptr> poison, ptr %i.hx, i64 0
  %i.ia = shufflevector <4 x ptr> %i.hz, <4 x ptr> poison, <4 x i32> zeroinitializer
  store <4 x ptr> %i.ia, ptr %i.ht, align 8, !tbaa !80
  %i.ib = insertelement <4 x ptr> poison, ptr %i.hy, i64 0
  %i.ic = shufflevector <4 x ptr> %i.ib, <4 x ptr> poison, <4 x i32> zeroinitializer
  store <4 x ptr> %i.ic, ptr %i.hu, align 8, !tbaa !81
  %i.id = getelementptr inbounds nuw i8, ptr %calloc417, i64 1352
  store ptr %i.hx, ptr %i.id, align 8, !tbaa !80
  %i.ie = getelementptr inbounds nuw i8, ptr %calloc417, i64 1480
  store ptr %i.hy, ptr %i.ie, align 8, !tbaa !81
  %i.if = getelementptr inbounds nuw i8, ptr %calloc417, i64 1360
  store ptr %i.hx, ptr %i.if, align 8, !tbaa !80
  %i.ig = getelementptr inbounds nuw i8, ptr %calloc417, i64 1488
  store ptr %i.hy, ptr %i.ig, align 8, !tbaa !81
  br label %.loopexit273

Vec_IntPush.exit213:                              ; preds = %Vec_StrFill.exit, %.preheader274
  %indvars.iv357 = phi i64 [ 6, %.preheader274 ], [ %indvars.iv.next358, %Vec_StrFill.exit ] ; 6 uses
  %i.ih = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  store i32 1000, ptr %i.ih, align 8, !tbaa !60
  %i.ij = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #22 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !61
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv357
  store ptr %i.ih, ptr %i.il, align 8, !tbaa !80
  store i32 0, ptr %i.ij, align 4, !tbaa !47
  store i32 2, ptr %i.ii, align 4, !tbaa !62
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  store i32 2, ptr %i.im, align 4, !tbaa !47
  %i.in = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4 ; 2 uses
  store i32 10000, ptr %i.in, align 8, !tbaa !147
  %i.ip = tail call noalias dereferenceable_or_null(10000) ptr @malloc(i64 noundef 10000) #22
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  store ptr %i.ip, ptr %i.iq, align 8, !tbaa !83
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv357 ; 2 uses
  store ptr %i.in, ptr %i.ir, align 8, !tbaa !81
  %indvars.iv357.tr = trunc nuw nsw i64 %indvars.iv357 to i32
  %i.is = shl nuw i32 %indvars.iv357.tr, 1
  store i32 %i.is, ptr %i.io, align 4, !tbaa !148
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %Vec_IntPush.exit213
  %indvars.iv.i = phi i64 [ 0, %Vec_IntPush.exit213 ], [ %indvars.iv.next.i, %bb.v ] ; 2 uses
  %i.it = load ptr, ptr %i.iq, align 8, !tbaa !83
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %indvars.iv.i
  store i8 120, ptr %i.iu, align 1, !tbaa !149
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.iv = load i32, ptr %i.io, align 4, !tbaa !148
  %i.iw = sext i32 %i.iv to i64
  %i.ix = icmp slt i64 %indvars.iv.next.i, %i.iw
  br i1 %i.ix, label %bb.v, label %Vec_StrFill.exit, !llvm.loop !129

Vec_StrFill.exit:                                 ; preds = %bb.v
  %i.iy = load ptr, ptr %i.ir, align 8, !tbaa !81
  %i.iz = getelementptr i8, ptr %i.iy, i64 8
  %.val = load ptr, ptr %i.iz, align 8, !tbaa !83
  %i.ja = getelementptr inbounds nuw i8, ptr %.val, i64 %indvars.iv357
  store i8 0, ptr %i.ja, align 1, !tbaa !149
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1
  %i.jb = load ptr, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !46
  %i.jd = tail call noundef i32 @llvm.smax.i32(i32 %i.jc, i32 6)
  %i.je = zext nneg i32 %i.jd to i64
  %.not197.not = icmp samesign ult i64 %indvars.iv357, %i.je
  br i1 %.not197.not, label %Vec_IntPush.exit213, label %.preheader272, !llvm.loop !130

.loopexit273:                                     ; preds = %.preheader272, %.thread263
  %i.jf = phi ptr [ %i.jb, %.preheader272 ], [ %i.gr, %.thread263 ] ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !51
  %.not198 = icmp eq i32 %i.jh, 0
  br i1 %.not198, label %.loopexit269, label %bb.w

bb.w:                                             ; preds = %.loopexit273
  %i.ji = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #23 ; 4 uses
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %bb.w
  %.012.i.i = phi i32 [ 10099, %bb.w ], [ %i.jj, %.critedge.i.i.backedge ] ; 3 uses
  %i.jj = add i32 %.012.i.i, 1                    ; 7 uses
  %i.jk = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.jk, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
  br label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not15.i.i = icmp ult i32 %i.jj, 9
  br i1 %.not15.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.jl = add nuw nsw i32 %.01116.i.i, 2          ; 3 uses
  %i.jm = mul nuw nsw i32 %i.jl, %i.jl
  %.not.i.i216 = icmp ugt i32 %i.jm, %i.jj
end_hunk_0
