Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaTruth?download=true
inline.NumInlined: 491
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Gia_ManIsoNpnReduce:bb.a
  %i.dg = call noalias ptr @malloc(i64 noundef %i.de) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dh = phi ptr [ %i.df, %bb.w ], [ %i.dg, %bb.x ]
  store ptr %i.dh, ptr %i.db, align 8, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.y, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.y ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.co, align 8, !tbaa !43
  %.pre257 = load i32, ptr %i.cp, align 4, !tbaa !42
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_WecPushLevel.exit, %bb.u, %Vec_IntGrow.exit11.sink.split.i
  %i.di = phi i32 [ %i.cq, %Vec_WecPushLevel.exit ], [ %i.cq, %bb.u ], [ %.pre257, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.cn, i64 -8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !38
  %i.dl = add nsw i32 %i.di, 1
  store i32 %i.dl, ptr %i.cp, align 4, !tbaa !42
  %i.dm = sext i32 %i.di to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.dm
  %i.do = trunc nuw nsw i64 %indvars.iv247 to i32
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !39
  br label %bb.cl

bb.z:                                             ; preds = %bb.g
  %i.dp = load i64, ptr %i.bl, align 4
  %i.dq = and i64 %i.dp, 536870911
  %i.dr = sub nsw i64 0, %i.dq
  %i.ds = getelementptr inbounds [12 x i8], ptr %i.bl, i64 %i.dr ; 2 uses
  %.val = load i64, ptr %i.ds, align 4            ; 2 uses
  %i.dt = and i64 %.val, 2305843005455597567
  %narrow.i.not = icmp eq i64 %i.dt, 2305843005455597567
  br i1 %narrow.i.not, label %bb.aa, label %bb.al

bb.aa:                                            ; preds = %bb.z
  %i.du = icmp eq i32 %.079231, -1
  br i1 %i.du, label %bb.ab, label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  %.val110 = load i32, ptr %i.f, align 4, !tbaa !75 ; 9 uses
  %i.dv = load i32, ptr %i.e, align 8, !tbaa !76
  %i.dw = icmp eq i32 %.val110, %i.dv
  br i1 %i.dw, label %bb.ac, label %Vec_WecPushLevel.exit124

bb.ac:                                            ; preds = %bb.ab
  %i.dx = icmp slt i32 %.val110, 16
  br i1 %i.dx, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.dy = load ptr, ptr %i.h, align 8, !tbaa !77  ; 2 uses
  %.not13.i.i121 = icmp eq ptr %i.dy, null
  br i1 %.not13.i.i121, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dz = call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.dy, i64 noundef 256) #26
  br label %Vec_WecGrow.exit.i123

bb.af:                                            ; preds = %bb.ad
  %i.ea = call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #25
  br label %Vec_WecGrow.exit.i123

Vec_WecGrow.exit.i123:                            ; preds = %bb.af, %bb.ae
  %i.eb = phi ptr [ %i.dz, %bb.ae ], [ %i.ea, %bb.af ] ; 2 uses
  store ptr %i.eb, ptr %i.h, align 8, !tbaa !77
  %i.ec = sext i32 %.val110 to i64
  %i.ed = getelementptr inbounds [16 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = sub nsw i32 16, %.val110
  br label %Vec_WecPushLevel.exit124.sink.split

bb.ag:                                            ; preds = %bb.ac
  %i.ef = shl nuw nsw i32 %.val110, 1             ; 2 uses
  %i.eg = load ptr, ptr %i.h, align 8, !tbaa !77  ; 2 uses
  %.not13.i10.i119 = icmp eq ptr %i.eg, null
  %i.eh = zext nneg i32 %i.ef to i64
  %i.ei = shl nuw nsw i64 %i.eh, 4                ; 2 uses
  br i1 %.not13.i10.i119, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ej = call ptr @realloc(ptr noundef nonnull %i.eg, i64 noundef %i.ei) #26
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ek = call noalias ptr @malloc(i64 noundef %i.ei) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.el = phi ptr [ %i.ej, %bb.ah ], [ %i.ek, %bb.ai ] ; 2 uses
  store ptr %i.el, ptr %i.h, align 8, !tbaa !77
  %i.em = zext nneg i32 %.val110 to i64
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.em
  br label %Vec_WecPushLevel.exit124.sink.split

Vec_WecPushLevel.exit124.sink.split:              ; preds = %bb.aj, %Vec_WecGrow.exit.i123
  %.sink316 = phi i32 [ %i.ee, %Vec_WecGrow.exit.i123 ], [ %.val110, %bb.aj ]
  %.sink313 = phi ptr [ %i.ed, %Vec_WecGrow.exit.i123 ], [ %i.en, %bb.aj ]
  %.sink = phi i32 [ 16, %Vec_WecGrow.exit.i123 ], [ %i.ef, %bb.aj ]
  %i.eo = zext nneg i32 %.sink316 to i64
  %i.ep = shl nuw nsw i64 %i.eo, 4
  call void @llvm.memset.p0.i64(ptr align 8 %.sink313, i8 0, i64 %i.ep, i1 false)
  store i32 %.sink, ptr %i.e, align 8, !tbaa !76
  br label %Vec_WecPushLevel.exit124

Vec_WecPushLevel.exit124:                         ; preds = %Vec_WecPushLevel.exit124.sink.split, %bb.ab
  %i.eq = add nsw i32 %.val110, 1
  store i32 %i.eq, ptr %i.f, align 4, !tbaa !75
  br label %bb.ak

bb.ak:                                            ; preds = %Vec_WecPushLevel.exit124, %bb.aa
  %.180 = phi i32 [ %.val110, %Vec_WecPushLevel.exit124 ], [ %.079231, %bb.aa ] ; 2 uses
  %i.er = trunc nuw nsw i64 %indvars.iv247 to i32
  call fastcc void @Vec_WecPush(ptr noundef %i.e, i32 noundef %.180, i32 noundef %i.er)
  br label %bb.cl

bb.al:                                            ; preds = %bb.z
  %i.es = and i64 %.val, 2684354559
  %narrow.i125.not = icmp eq i64 %i.es, 2684354559
  br i1 %narrow.i125.not, label %bb.am, label %bb.ax

bb.am:                                            ; preds = %bb.al
  %i.et = icmp eq i32 %.0232, -1
  br i1 %i.et, label %bb.an, label %bb.aw

bb.an:                                            ; preds = %bb.am
  %.val109 = load i32, ptr %i.f, align 4, !tbaa !75 ; 9 uses
  %i.eu = load i32, ptr %i.e, align 8, !tbaa !76
  %i.ev = icmp eq i32 %.val109, %i.eu
  br i1 %i.ev, label %bb.ao, label %Vec_WecPushLevel.exit135

bb.ao:                                            ; preds = %bb.an
  %i.ew = icmp slt i32 %.val109, 16
  br i1 %i.ew, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ex = load ptr, ptr %i.h, align 8, !tbaa !77  ; 2 uses
  %.not13.i.i132 = icmp eq ptr %i.ex, null
  br i1 %.not13.i.i132, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ey = call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.ex, i64 noundef 256) #26
  br label %Vec_WecGrow.exit.i134

bb.ar:                                            ; preds = %bb.ap
  %i.ez = call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #25
  br label %Vec_WecGrow.exit.i134

Vec_WecGrow.exit.i134:                            ; preds = %bb.ar, %bb.aq
  %i.fa = phi ptr [ %i.ey, %bb.aq ], [ %i.ez, %bb.ar ] ; 2 uses
  store ptr %i.fa, ptr %i.h, align 8, !tbaa !77
  %i.fb = sext i32 %.val109 to i64
  %i.fc = getelementptr inbounds [16 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = sub nsw i32 16, %.val109
  br label %Vec_WecPushLevel.exit135.sink.split

bb.as:                                            ; preds = %bb.ao
  %i.fe = shl nuw nsw i32 %.val109, 1             ; 2 uses
  %i.ff = load ptr, ptr %i.h, align 8, !tbaa !77  ; 2 uses
  %.not13.i10.i130 = icmp eq ptr %i.ff, null
  %i.fg = zext nneg i32 %i.fe to i64
  %i.fh = shl nuw nsw i64 %i.fg, 4                ; 2 uses
  br i1 %.not13.i10.i130, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fi = call ptr @realloc(ptr noundef nonnull %i.ff, i64 noundef %i.fh) #26
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.fj = call noalias ptr @malloc(i64 noundef %i.fh) #25
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fk = phi ptr [ %i.fi, %bb.at ], [ %i.fj, %bb.au ] ; 2 uses
  store ptr %i.fk, ptr %i.h, align 8, !tbaa !77
  %i.fl = zext nneg i32 %.val109 to i64
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %i.fl
  br label %Vec_WecPushLevel.exit135.sink.split

Vec_WecPushLevel.exit135.sink.split:              ; preds = %bb.av, %Vec_WecGrow.exit.i134
  %.sink321 = phi i32 [ %i.fd, %Vec_WecGrow.exit.i134 ], [ %.val109, %bb.av ]
  %.sink318 = phi ptr [ %i.fc, %Vec_WecGrow.exit.i134 ], [ %i.fm, %bb.av ]
  %.sink317 = phi i32 [ 16, %Vec_WecGrow.exit.i134 ], [ %i.fe, %bb.av ]
  %i.fn = zext nneg i32 %.sink321 to i64
  %i.fo = shl nuw nsw i64 %i.fn, 4
  call void @llvm.memset.p0.i64(ptr align 8 %.sink318, i8 0, i64 %i.fo, i1 false)
  store i32 %.sink317, ptr %i.e, align 8, !tbaa !76
  br label %Vec_WecPushLevel.exit135

Vec_WecPushLevel.exit135:                         ; preds = %Vec_WecPushLevel.exit135.sink.split, %bb.an
  %i.fp = add nsw i32 %.val109, 1
  store i32 %i.fp, ptr %i.f, align 4, !tbaa !75
  br label %bb.aw

bb.aw:                                            ; preds = %Vec_WecPushLevel.exit135, %bb.am
  %.1 = phi i32 [ %.val109, %Vec_WecPushLevel.exit135 ], [ %.0232, %bb.am ] ; 2 uses
  %i.fq = trunc nuw nsw i64 %indvars.iv247 to i32
  call fastcc void @Vec_WecPush(ptr noundef %i.e, i32 noundef %.1, i32 noundef %i.fq)
  br label %bb.cl

bb.ax:                                            ; preds = %bb.al
  %i.fr = call ptr @Gia_ObjComputeTruthTableCut(ptr noundef nonnull %0, ptr noundef nonnull %i.ds, ptr noundef nonnull %i.i) ; 15 uses
  %.val100 = load i32, ptr %i.j, align 4, !tbaa !42 ; 10 uses
  %i.fs = icmp sgt i32 %.val100, 0
  br i1 %i.fs, label %.lr.ph.i, label %Abc_TtMinimumBase.exit.thread

.lr.ph.i:                                         ; preds = %bb.ax
  %i.ft = icmp samesign ult i32 %.val100, 7       ; 2 uses
  %i.fu = add nsw i32 %.val100, -6                ; 2 uses
  %i.fv = shl nuw i32 1, %i.fu
  %.fr.i.i = freeze i32 %i.fv                     ; 3 uses
  %i.fw = sext i32 %.fr.i.i to i64
  %.idx.i.i = shl nsw i64 %i.fw, 3
  %i.fx = getelementptr inbounds i8, ptr %i.fr, i64 %.idx.i.i
  %smax56.i.i = call i32 @llvm.smax.i32(i32 %.fr.i.i, i32 1)
  %wide.trip.count57.i.i = zext nneg i32 %smax56.i.i to i64
  br i1 %i.ft, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.fy = load i64, ptr %i.fr, align 8, !tbaa !36 ; 12 uses
  %i.fz = lshr i64 %i.fy, 1
  %i.ga = xor i64 %i.fz, %i.fy
  %i.gb = and i64 %i.ga, 6148914691236517205
  %.not1.us.i = icmp ne i64 %i.gb, 0              ; 2 uses
  %i.gc = zext i1 %.not1.us.i to i32              ; 2 uses
  %i.gd = zext i1 %.not1.us.i to i32              ; 2 uses
  %exitcond42.not.i = icmp eq i32 %.val100, 1
  br i1 %exitcond42.not.i, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.1

Abc_TtHasVar.exit.us.i.1:                         ; preds = %.lr.ph.split.us.i
  %i.ge = lshr i64 %i.fy, 2
  %i.gf = xor i64 %i.ge, %i.fy
  %i.gg = and i64 %i.gf, 3689348814741910323
  %.not1.us.i.1 = icmp ne i64 %i.gg, 0            ; 2 uses
  %i.gh = zext i1 %.not1.us.i.1 to i32
  %.124.us.i.1 = add nuw nsw i32 %i.gc, %i.gh     ; 2 uses
  %i.gi = select i1 %.not1.us.i.1, i32 2, i32 0
  %.1.us.i.1 = or disjoint i32 %i.gi, %i.gd       ; 2 uses
  %exitcond42.not.i.1 = icmp eq i32 %.val100, 2
  br i1 %exitcond42.not.i.1, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.2

Abc_TtHasVar.exit.us.i.2:                         ; preds = %Abc_TtHasVar.exit.us.i.1
  %i.gj = lshr i64 %i.fy, 4
  %i.gk = xor i64 %i.gj, %i.fy
  %i.gl = and i64 %i.gk, 1085102592571150095
  %.not1.us.i.2 = icmp ne i64 %i.gl, 0            ; 2 uses
  %i.gm = zext i1 %.not1.us.i.2 to i32
  %.124.us.i.2 = add nuw nsw i32 %.124.us.i.1, %i.gm ; 2 uses
  %i.gn = select i1 %.not1.us.i.2, i32 4, i32 0
  %.1.us.i.2 = or disjoint i32 %i.gn, %.1.us.i.1  ; 2 uses
  %exitcond42.not.i.2 = icmp eq i32 %.val100, 3
  br i1 %exitcond42.not.i.2, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.3

Abc_TtHasVar.exit.us.i.3:                         ; preds = %Abc_TtHasVar.exit.us.i.2
  %i.go = lshr i64 %i.fy, 8
  %i.gp = xor i64 %i.go, %i.fy
  %i.gq = and i64 %i.gp, 71777214294589695
  %.not1.us.i.3 = icmp ne i64 %i.gq, 0            ; 2 uses
  %i.gr = zext i1 %.not1.us.i.3 to i32
  %.124.us.i.3 = add nuw nsw i32 %.124.us.i.2, %i.gr ; 2 uses
  %i.gs = select i1 %.not1.us.i.3, i32 8, i32 0
  %.1.us.i.3 = or disjoint i32 %i.gs, %.1.us.i.2  ; 2 uses
  %exitcond42.not.i.3 = icmp eq i32 %.val100, 4
  br i1 %exitcond42.not.i.3, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.4

Abc_TtHasVar.exit.us.i.4:                         ; preds = %Abc_TtHasVar.exit.us.i.3
  %i.gt = lshr i64 %i.fy, 16
  %i.gu = xor i64 %i.gt, %i.fy
  %i.gv = and i64 %i.gu, 281470681808895
  %.not1.us.i.4 = icmp ne i64 %i.gv, 0            ; 2 uses
  %i.gw = zext i1 %.not1.us.i.4 to i32
  %.124.us.i.4 = add nuw nsw i32 %.124.us.i.3, %i.gw ; 2 uses
  %i.gx = select i1 %.not1.us.i.4, i32 16, i32 0
  %.1.us.i.4 = or disjoint i32 %i.gx, %.1.us.i.3  ; 2 uses
  %exitcond42.not.i.4 = icmp eq i32 %.val100, 5
  br i1 %exitcond42.not.i.4, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.5

Abc_TtHasVar.exit.us.i.5:                         ; preds = %Abc_TtHasVar.exit.us.i.4
  %i.gy = lshr i64 %i.fy, 32
  %.masked = and i64 %i.fy, 4294967295
  %.not1.us.i.5 = icmp ne i64 %i.gy, %.masked     ; 2 uses
  %i.gz = zext i1 %.not1.us.i.5 to i32
  %.124.us.i.5 = add nuw nsw i32 %.124.us.i.4, %i.gz
  %i.ha = select i1 %.not1.us.i.5, i32 32, i32 0
  %.1.us.i.5 = or disjoint i32 %i.ha, %.1.us.i.4
  br label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %.not48.i.i = icmp eq i32 %i.fu, 31
  br i1 %.not48.i.i, label %Abc_TtMinimumBase.exit.thread, label %.lr.ph.split.split.preheader.i

.lr.ph.split.split.preheader.i:                   ; preds = %.lr.ph.split.i
  %wide.trip.count.i = zext nneg i32 %.val100 to i64
  br label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %.loopexit.i, %.lr.ph.split.split.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.split.preheader.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 6 uses
  %.08.i = phi i32 [ 0, %.lr.ph.split.split.preheader.i ], [ %.1.i, %.loopexit.i ] ; 4 uses
  %.0237.i = phi i32 [ 0, %.lr.ph.split.split.preheader.i ], [ %.124.i, %.loopexit.i ]
  %i.hb = icmp samesign ult i64 %indvars.iv.i, 6
  br i1 %i.hb, label %.lr.ph.i.i137, label %.preheader.lr.ph.i.i

.lr.ph.i.i137:                                    ; preds = %.lr.ph.split.split.i
  %i.hc = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.hd = shl nuw nsw i32 1, %i.hc                ; 2 uses
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !36
  br label %bb.az

bb.ay:                                            ; preds = %bb.az
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %exitcond58.not.i.i = icmp eq i64 %indvars.iv.next54.i.i, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i, label %.loopexit.i, label %bb.az, !llvm.loop !147

bb.az:                                            ; preds = %bb.ay, %.lr.ph.i.i137
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph.i.i137 ], [ %indvars.iv.next54.i.i, %bb.ay ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv53.i.i
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !36 ; 2 uses
  %i.hj = lshr i64 %i.hi, %i.he
  %i.hk = xor i64 %i.hj, %i.hi
  %i.hl = and i64 %i.hk, %i.hg
  %.not39.i.i = icmp eq i64 %i.hl, 0
  br i1 %.not39.i.i, label %bb.ay, label %Abc_TtHasVar.exit.i

.preheader.lr.ph.i.i:                             ; preds = %.lr.ph.split.split.i
  %i.hm = add nsw i64 %indvars.iv.i, -6           ; 2 uses
  %i.hn = icmp eq i64 %i.hm, 31
  %i.ho = trunc nuw nsw i64 %i.hm to i32          ; 2 uses
  %i.hp = shl i32 2, %i.ho
  %i.hq = sext i32 %i.hp to i64
  br i1 %i.hn, label %.loopexit.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.hr = shl nuw nsw i32 1, %i.ho                ; 2 uses
  %i.hs = zext nneg i32 %i.hr to i64
  %wide.trip.count.i.i = zext nneg i32 %i.hr to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.03343.us.i.i = phi ptr [ %i.hw, %._crit_edge.us.i.i ], [ %i.fr, %.preheader.us.preheader.i.i ] ; 3 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.03343.us.i.i, i64 %i.hs
  br label %bb.bb

bb.ba:                                            ; preds = %bb.bb
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.bb, !llvm.loop !148

bb.bb:                                            ; preds = %bb.ba, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.ba ] ; 3 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i, i64 %indvars.iv.i.i
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !36
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.hv = load i64, ptr %gep.i.i, align 8, !tbaa !36
  %.not.us.i.i = icmp eq i64 %i.hu, %i.hv
  br i1 %.not.us.i.i, label %bb.ba, label %Abc_TtHasVar.exit.i.loopexit

._crit_edge.us.i.i:                               ; preds = %bb.ba
  %i.hw = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i, i64 %i.hq ; 2 uses
  %i.hx = icmp ult ptr %i.hw, %i.fx
  br i1 %i.hx, label %.preheader.us.i.i, label %.loopexit.i, !llvm.loop !149

Abc_TtHasVar.exit.i.loopexit:                     ; preds = %bb.bb
  %.pre259 = trunc nuw nsw i64 %indvars.iv.i to i32
  %.pre261 = shl nuw i32 1, %.pre259
  br label %Abc_TtHasVar.exit.i

Abc_TtHasVar.exit.i:                              ; preds = %bb.az, %Abc_TtHasVar.exit.i.loopexit
  %.pre-phi262 = phi i32 [ %.pre261, %Abc_TtHasVar.exit.i.loopexit ], [ %i.hd, %bb.az ]
  %i.hy = or i32 %.pre-phi262, %.08.i
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %._crit_edge.us.i.i, %bb.ay, %Abc_TtHasVar.exit.i, %.preheader.lr.ph.i.i
  %.sink.i = phi i32 [ 1, %Abc_TtHasVar.exit.i ], [ 0, %bb.ay ], [ 0, %.preheader.lr.ph.i.i ], [ 0, %._crit_edge.us.i.i ]
  %.1.i = phi i32 [ %i.hy, %Abc_TtHasVar.exit.i ], [ %.08.i, %bb.ay ], [ %.08.i, %.preheader.lr.ph.i.i ], [ %.08.i, %._crit_edge.us.i.i ] ; 2 uses
  %.124.i = add nuw nsw i32 %.sink.i, %.0237.i    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.split.i, !llvm.loop !150

._crit_edge.i:                                    ; preds = %.loopexit.i, %.lr.ph.split.us.i, %Abc_TtHasVar.exit.us.i.1, %Abc_TtHasVar.exit.us.i.2, %Abc_TtHasVar.exit.us.i.3, %Abc_TtHasVar.exit.us.i.4, %Abc_TtHasVar.exit.us.i.5
  %.023.lcssa.i = phi i32 [ %.124.us.i.5, %Abc_TtHasVar.exit.us.i.5 ], [ %i.gc, %.lr.ph.split.us.i ], [ %.124.us.i.1, %Abc_TtHasVar.exit.us.i.1 ], [ %.124.us.i.2, %Abc_TtHasVar.exit.us.i.2 ], [ %.124.us.i.3, %Abc_TtHasVar.exit.us.i.3 ], [ %.124.us.i.4, %Abc_TtHasVar.exit.us.i.4 ], [ %.124.i, %.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %.1.us.i.5, %Abc_TtHasVar.exit.us.i.5 ], [ %i.gd, %.lr.ph.split.us.i ], [ %.1.us.i.1, %Abc_TtHasVar.exit.us.i.1 ], [ %.1.us.i.2, %Abc_TtHasVar.exit.us.i.2 ], [ %.1.us.i.3, %Abc_TtHasVar.exit.us.i.3 ], [ %.1.us.i.4, %Abc_TtHasVar.exit.us.i.4 ], [ %.1.i, %.loopexit.i ] ; 4 uses
  %i.hz = icmp eq i32 %.0.lcssa.i, 0
  br i1 %i.hz, label %Abc_TtMinimumBase.exit, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge.i
  %i.ia = add nsw i32 %.0.lcssa.i, 1
  %i.ib = and i32 %i.ia, %.0.lcssa.i
  %.not.i136.not = icmp eq i32 %i.ib, 0
  br i1 %.not.i136.not, label %Abc_TtMinimumBase.exit, label %.lr.ph61.i.i

.lr.ph61.i.i:                                     ; preds = %bb.bc
  %i.ic = select i1 %i.ft, i32 1, i32 %.fr.i.i    ; 4 uses
  %i.id = sext i32 %i.ic to i64
  %.idx65.i.i.i = shl nsw i64 %i.id, 3
  %i.ie = getelementptr inbounds i8, ptr %i.fr, i64 %.idx65.i.i.i ; 2 uses
  %i.if = icmp sgt i32 %i.ic, 0
  %wide.trip.count73.i.i.i = zext i32 %i.ic to i64 ; 3 uses
  br i1 %i.if, label %.lr.ph61.split.us.split.us.preheader.i.i, label %Abc_TtMinimumBase.exit

.lr.ph61.split.us.split.us.preheader.i.i:         ; preds = %.lr.ph61.i.i
  %wide.trip.count106.i.i = zext nneg i32 %.val100 to i64
  %min.iters.check = icmp ult i32 %i.ic, 4
  %n.vec = and i64 %wide.trip.count73.i.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73.i.i.i
  br label %.lr.ph61.split.us.split.us.i.i

.lr.ph61.split.us.split.us.i.i:                   ; preds = %bb.be, %.lr.ph61.split.us.split.us.preheader.i.i
  %indvars.iv100.i.i = phi i64 [ 0, %.lr.ph61.split.us.split.us.preheader.i.i ], [ %indvars.iv.next101.i.i, %bb.be ] ; 3 uses
  %.056.us.us.i.i = phi i32 [ 0, %.lr.ph61.split.us.split.us.preheader.i.i ], [ %.1.us.us.i.i, %bb.be ] ; 4 uses
  %indvars105.i.i = trunc i64 %indvars.iv100.i.i to i32 ; 2 uses
  %i.ig = shl nuw i32 1, %indvars105.i.i
  %i.ih = and i32 %i.ig, %.0.lcssa.i
  %.not.us.us.i.i = icmp eq i32 %i.ih, 0
  br i1 %.not.us.us.i.i, label %bb.be, label %.preheader.us.us.i.i

.preheader.us.us.i.i:                             ; preds = %.lr.ph61.split.us.split.us.i.i
  %.not15.not18.us.us.i.i = icmp slt i32 %.056.us.us.i.i, %indvars105.i.i
  br i1 %.not15.not18.us.us.i.i, label %.lr.ph.us.us.preheader.i.i, label %._crit_edge.split.us.us.split.us.us.i.i

.lr.ph.us.us.preheader.i.i:                       ; preds = %.preheader.us.us.i.i
  %i.ii = sext i32 %.056.us.us.i.i to i64
  br label %.lr.ph.us.us.i.i

.lr.ph.us.us.i.i:                                 ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i, %.lr.ph.us.us.preheader.i.i
  %indvars.iv102.i.i = phi i64 [ %indvars.iv100.i.i, %.lr.ph.us.us.preheader.i.i ], [ %indvars.iv.next103.i.i, %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i ] ; 4 uses
  %indvars.iv.next103.i.i = add nsw i64 %indvars.iv102.i.i, -1 ; 5 uses
  %i.ij = icmp slt i64 %indvars.iv102.i.i, 6
  br i1 %i.ij, label %.lr.ph64.i.us.us.us.us.i.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.us.us.i.i
  %i.ik = icmp eq i64 %indvars.iv.next103.i.i, 5
  br i1 %i.ik, label %.lr.ph.i.us.us.us.us.i.i, label %.preheader.lr.ph.i.us.us.us.us.i.i

.preheader.lr.ph.i.us.us.us.us.i.i:               ; preds = %bb.bd
  %i.il = icmp samesign ult i64 %indvars.iv102.i.i, 8
  %i.im = trunc i64 %indvars.iv102.i.i to i32
  %i.in = add i32 %i.im, -7
  %i.io = shl nuw i32 1, %i.in
  %i.ip = select i1 %i.il, i32 1, i32 %i.io       ; 7 uses
  %i.iq = icmp sgt i32 %i.ip, 0
  %i.ir = shl nsw i32 %i.ip, 2
  %i.is = sext i32 %i.ir to i64
  br i1 %i.iq, label %.preheader.us.preheader.i.us.us.us.us.i.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i

.preheader.us.preheader.i.us.us.us.us.i.i:        ; preds = %.preheader.lr.ph.i.us.us.us.us.i.i
  %i.it = shl nuw nsw i32 %i.ip, 1
  %i.iu = zext nneg i32 %i.ip to i64              ; 6 uses
  %umin = zext nneg i32 %i.it to i64              ; 2 uses
  %i.iv = shl nuw nsw i64 %i.iu, 3                ; 2 uses
  %i.iw = shl nuw nsw i64 %umin, 3                ; 2 uses
  %i.ix = getelementptr i8, ptr %i.fr, i64 %i.iv
  %scevgep = getelementptr i8, ptr %i.ix, i64 %i.iw
  %scevgep359.a = getelementptr i8, ptr %i.fr, i64 %i.iw
  %i.iy = shl nuw nsw i64 %i.iu, 4
  %scevgep360 = getelementptr i8, ptr %i.fr, i64 %i.iy
  %scevgep361 = getelementptr i8, ptr %i.fr, i64 %i.iv
  %min.iters.check363 = icmp ult i32 %i.ip, 4
  %bound0 = icmp ult ptr %scevgep361, %scevgep
  %bound1 = icmp ult ptr %scevgep359.a, %scevgep360
  %found.conflict = and i1 %bound0, %bound1
  %n.vec365 = and i64 %i.iu, 2147483644
  %xtraiter = and i64 %i.iu, 1
  %i.iz = icmp eq i32 %i.ip, 1
  %unroll_iter = and i64 %i.iu, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod387 = trunc i32 %i.ip to i1
  br label %.preheader.us.i.us.us.us.us.i.i

.preheader.us.i.us.us.us.us.i.i:                  ; preds = %._crit_edge.us.i.us.us.us.us.i.i, %.preheader.us.preheader.i.us.us.us.us.i.i
  %.061.us.i.us.us.us.us.i.i = phi ptr [ %i.jl, %._crit_edge.us.i.us.us.us.us.i.i ], [ %i.fr, %.preheader.us.preheader.i.us.us.us.us.i.i ] ; 3 uses
  %invariant.gep.i.us.us.us.us.i.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i.i, i64 %i.iu ; 4 uses
  %invariant.gep80.i.us.us.us.us.i.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i.i, i64 %umin ; 4 uses
  %brmerge = select i1 %min.iters.check363, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph362.preheader, label %vector.body366

scalar.ph362.preheader:                           ; preds = %.preheader.us.i.us.us.us.us.i.i
  br i1 %i.iz, label %scalar.ph362.epil.preheader, label %scalar.ph362

vector.body366:                                   ; preds = %.preheader.us.i.us.us.us.us.i.i, %vector.body366
  %index367 = phi i64 [ %index.next372, %vector.body366 ], [ 0, %.preheader.us.i.us.us.us.us.i.i ] ; 3 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i.i, i64 %index367 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16 ; 2 uses
  %wide.load368.a = load <2 x i64>, ptr %i.ja, align 8, !tbaa !36, !alias.scope !171, !noalias !172
  %wide.load369.a = load <2 x i64>, ptr %i.jb, align 8, !tbaa !36, !alias.scope !171, !noalias !172
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i.i, i64 %index367 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 2 uses
  %wide.load370 = load <2 x i64>, ptr %i.jc, align 8, !tbaa !36, !alias.scope !172
  %wide.load371 = load <2 x i64>, ptr %i.jd, align 8, !tbaa !36, !alias.scope !172
  store <2 x i64> %wide.load370, ptr %i.ja, align 8, !tbaa !36, !alias.scope !171, !noalias !172
  store <2 x i64> %wide.load371, ptr %i.jb, align 8, !tbaa !36, !alias.scope !171, !noalias !172
  store <2 x i64> %wide.load368.a, ptr %i.jc, align 8, !tbaa !36, !alias.scope !172
  store <2 x i64> %wide.load369.a, ptr %i.jd, align 8, !tbaa !36, !alias.scope !172
  %index.next372 = add nuw i64 %index367, 4       ; 2 uses
  %i.je = icmp eq i64 %index.next372, %n.vec365
  br i1 %i.je, label %._crit_edge.us.i.us.us.us.us.i.i, label %vector.body366, !llvm.loop !154

scalar.ph362:                                     ; preds = %scalar.ph362.preheader, %scalar.ph362
  %indvars.iv.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next.i.us.us.us.us.i.i.1, %scalar.ph362 ], [ 0, %scalar.ph362.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph362 ], [ 0, %scalar.ph362.preheader ]
  %gep.i.us.us.us.us.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i.i, i64 %indvars.iv.i.us.us.us.us.i.i ; 2 uses
  %i.jf = load i64, ptr %gep.i.us.us.us.us.i.i, align 8, !tbaa !36
  %gep81.i.us.us.us.us.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i.i, i64 %indvars.iv.i.us.us.us.us.i.i ; 2 uses
  %i.jg = load i64, ptr %gep81.i.us.us.us.us.i.i, align 8, !tbaa !36
  store i64 %i.jg, ptr %gep.i.us.us.us.us.i.i, align 8, !tbaa !36
  store i64 %i.jf, ptr %gep81.i.us.us.us.us.i.i, align 8, !tbaa !36
  %indvars.iv.next.i.us.us.us.us.i.i = or disjoint i64 %indvars.iv.i.us.us.us.us.i.i, 1 ; 2 uses
  %gep.i.us.us.us.us.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i.i, i64 %indvars.iv.next.i.us.us.us.us.i.i ; 2 uses
  %i.jh = load i64, ptr %gep.i.us.us.us.us.i.i.1, align 8, !tbaa !36
  %gep81.i.us.us.us.us.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i.i, i64 %indvars.iv.next.i.us.us.us.us.i.i ; 2 uses
  %i.ji = load i64, ptr %gep81.i.us.us.us.us.i.i.1, align 8, !tbaa !36
  store i64 %i.ji, ptr %gep.i.us.us.us.us.i.i.1, align 8, !tbaa !36
  store i64 %i.jh, ptr %gep81.i.us.us.us.us.i.i.1, align 8, !tbaa !36
  %indvars.iv.next.i.us.us.us.us.i.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.us.us.us.us.i.i.loopexit.unr-lcssa, label %scalar.ph362, !llvm.loop !155

._crit_edge.us.i.us.us.us.us.i.i.loopexit.unr-lcssa: ; preds = %scalar.ph362
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.us.us.us.us.i.i, label %scalar.ph362.epil.preheader

scalar.ph362.epil.preheader:                      ; preds = %._crit_edge.us.i.us.us.us.us.i.i.loopexit.unr-lcssa, %scalar.ph362.preheader
  %indvars.iv.i.us.us.us.us.i.i.epil.init = phi i64 [ 0, %scalar.ph362.preheader ], [ %indvars.iv.next.i.us.us.us.us.i.i.1, %._crit_edge.us.i.us.us.us.us.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod387)
  %gep.i.us.us.us.us.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i.i, i64 %indvars.iv.i.us.us.us.us.i.i.epil.init ; 2 uses
  %i.jj = load i64, ptr %gep.i.us.us.us.us.i.i.epil, align 8, !tbaa !36
  %gep81.i.us.us.us.us.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i.i, i64 %indvars.iv.i.us.us.us.us.i.i.epil.init ; 2 uses
  %i.jk = load i64, ptr %gep81.i.us.us.us.us.i.i.epil, align 8, !tbaa !36
  store i64 %i.jk, ptr %gep.i.us.us.us.us.i.i.epil, align 8, !tbaa !36
  store i64 %i.jj, ptr %gep81.i.us.us.us.us.i.i.epil, align 8, !tbaa !36
  br label %._crit_edge.us.i.us.us.us.us.i.i

._crit_edge.us.i.us.us.us.us.i.i:                 ; preds = %vector.body366, %scalar.ph362.epil.preheader, %._crit_edge.us.i.us.us.us.us.i.i.loopexit.unr-lcssa
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i.i, i64 %i.is ; 2 uses
  %i.jm = icmp ult ptr %i.jl, %i.ie
  br i1 %i.jm, label %.preheader.us.i.us.us.us.us.i.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i, !llvm.loop !156

.lr.ph.i.us.us.us.us.i.i:                         ; preds = %bb.bd, %.lr.ph.i.us.us.us.us.i.i
  %.05462.i.us.us.us.us.i.i = phi ptr [ %i.jq, %.lr.ph.i.us.us.us.us.i.i ], [ %i.fr, %bb.bd ] ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i.i, i64 4 ; 2 uses
  %i.jo = load <2 x i32>, ptr %i.jn, align 4, !tbaa !39
  %i.jp = shufflevector <2 x i32> %i.jo, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.jp, ptr %i.jn, align 4, !tbaa !39
  %i.jq = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i.i, i64 16 ; 2 uses
  %i.jr = icmp ult ptr %i.jq, %i.ie
  br i1 %i.jr, label %.lr.ph.i.us.us.us.us.i.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i, !llvm.loop !157

.lr.ph64.i.us.us.us.us.i.i:                       ; preds = %.lr.ph.us.us.i.i
  %i.js = trunc nsw i64 %indvars.iv.next103.i.i to i32
  %i.jt = shl nuw nsw i32 1, %i.js
  %i.ju = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %indvars.iv.next103.i.i ; 3 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !36 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !36 ; 2 uses
  %i.jy = zext nneg i32 %i.jt to i64              ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !36 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph64.i.us.us.us.us.i.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.jv, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert347 = insertelement <2 x i64> poison, i64 %i.jx, i64 0
  %broadcast.splat348 = shufflevector <2 x i64> %broadcast.splatinsert347, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert349 = insertelement <2 x i64> poison, i64 %i.jy, i64 0
  %broadcast.splat350 = shufflevector <2 x i64> %broadcast.splatinsert349, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert351 = insertelement <2 x i64> poison, i64 %i.ka, i64 0
  %broadcast.splat352 = shufflevector <2 x i64> %broadcast.splatinsert351, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %index ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.kb, align 8, !tbaa !36 ; 3 uses
  %wide.load353 = load <2 x i64>, ptr %i.kc, align 8, !tbaa !36 ; 3 uses
  %i.kd = and <2 x i64> %wide.load, %broadcast.splat
  %i.ke = and <2 x i64> %wide.load353, %broadcast.splat
  %i.kf = and <2 x i64> %wide.load, %broadcast.splat348
  %i.kg = and <2 x i64> %wide.load353, %broadcast.splat348
  %i.kh = shl <2 x i64> %i.kf, %broadcast.splat350
  %i.ki = shl <2 x i64> %i.kg, %broadcast.splat350
  %i.kj = or <2 x i64> %i.kh, %i.kd
  %i.kk = or <2 x i64> %i.ki, %i.ke
  %i.kl = and <2 x i64> %wide.load, %broadcast.splat352
  %i.km = and <2 x i64> %wide.load353, %broadcast.splat352
  %i.kn = lshr <2 x i64> %i.kl, %broadcast.splat350
  %i.ko = lshr <2 x i64> %i.km, %broadcast.splat350
  %i.kp = or <2 x i64> %i.kj, %i.kn
  %i.kq = or <2 x i64> %i.kk, %i.ko
  store <2 x i64> %i.kp, ptr %i.kb, align 8, !tbaa !36
  store <2 x i64> %i.kq, ptr %i.kc, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kr = icmp eq i64 %index.next, %n.vec
  br i1 %i.kr, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph64.i.us.us.us.us.i.i, %middle.block
  %indvars.iv70.i.us.us.us.us.i.i.ph = phi i64 [ 0, %.lr.ph64.i.us.us.us.us.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv70.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next71.i.us.us.us.us.i.i, %scalar.ph ], [ %indvars.iv70.i.us.us.us.us.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv70.i.us.us.us.us.i.i ; 2 uses
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !36 ; 3 uses
  %i.ku = and i64 %i.kt, %i.jv
  %i.kv = and i64 %i.kt, %i.jx
  %i.kw = shl i64 %i.kv, %i.jy
  %i.kx = or i64 %i.kw, %i.ku
  %i.ky = and i64 %i.kt, %i.ka
  %i.kz = lshr i64 %i.ky, %i.jy
  %i.la = or i64 %i.kx, %i.kz
  store i64 %i.la, ptr %i.ks, align 8, !tbaa !36
  %indvars.iv.next71.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv70.i.us.us.us.us.i.i, 1 ; 2 uses
  %exitcond74.not.i.us.us.us.us.i.i = icmp eq i64 %indvars.iv.next71.i.us.us.us.us.i.i, %wide.trip.count73.i.i.i
  br i1 %exitcond74.not.i.us.us.us.us.i.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i, label %scalar.ph, !llvm.loop !159

Abc_TtSwapAdjacent.exit.us.us.us.us.i.i:          ; preds = %._crit_edge.us.i.us.us.us.us.i.i, %.lr.ph.i.us.us.us.us.i.i, %scalar.ph, %middle.block, %.preheader.lr.ph.i.us.us.us.us.i.i
  %.not15.not.us.us.us.us.i.i = icmp sgt i64 %indvars.iv.next103.i.i, %i.ii
  br i1 %.not15.not.us.us.us.us.i.i, label %.lr.ph.us.us.i.i, label %._crit_edge.split.us.us.split.us.us.i.i, !llvm.loop !160

._crit_edge.split.us.us.split.us.us.i.i:          ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i, %.preheader.us.us.i.i
  %i.lb = add nsw i32 %.056.us.us.i.i, 1
  br label %bb.be

bb.be:                                            ; preds = %._crit_edge.split.us.us.split.us.us.i.i, %.lr.ph61.split.us.split.us.i.i
  %.1.us.us.i.i = phi i32 [ %i.lb, %._crit_edge.split.us.us.split.us.us.i.i ], [ %.056.us.us.i.i, %.lr.ph61.split.us.split.us.i.i ]
  %indvars.iv.next101.i.i = add nuw nsw i64 %indvars.iv100.i.i, 1 ; 2 uses
  %exitcond107.not.i.i = icmp eq i64 %indvars.iv.next101.i.i, %wide.trip.count106.i.i
  br i1 %exitcond107.not.i.i, label %Abc_TtMinimumBase.exit, label %.lr.ph61.split.us.split.us.i.i, !llvm.loop !161

Abc_TtMinimumBase.exit:                           ; preds = %bb.be, %._crit_edge.i, %bb.bc, %.lr.ph61.i.i
  switch i32 %.023.lcssa.i, label %bb.ca [
    i32 0, label %Abc_TtMinimumBase.exit.thread
    i32 1, label %bb.bp
  ]

Abc_TtMinimumBase.exit.thread:                    ; preds = %bb.ax, %.lr.ph.split.i, %Abc_TtMinimumBase.exit
  %i.lc = icmp eq i32 %.079231, -1
  br i1 %i.lc, label %bb.bf, label %bb.bo

bb.bf:                                            ; preds = %Abc_TtMinimumBase.exit.thread
  %.val108 = load i32, ptr %i.f, align 4, !tbaa !75 ; 9 uses
  %i.ld = load i32, ptr %i.e, align 8, !tbaa !76
  %i.le = icmp eq i32 %.val108, %i.ld
  br i1 %i.le, label %bb.bg, label %Vec_WecPushLevel.exit147

bb.bg:                                            ; preds = %bb.bf
  %i.lf = icmp slt i32 %.val108, 16
  br i1 %i.lf, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.lg = load ptr, ptr %i.h, align 8, !tbaa !77  ; 2 uses
  %.not13.i.i144 = icmp eq ptr %i.lg, null
  br i1 %.not13.i.i144, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lh = call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.lg, i64 noundef 256) #26
  br label %Vec_WecGrow.exit.i146

bb.bj:                                            ; preds = %bb.bh
  %i.li = call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #25
  br label %Vec_WecGrow.exit.i146

Vec_WecGrow.exit.i146:                            ; preds = %bb.bj, %bb.bi
  %i.lj = phi ptr [ %i.lh, %bb.bi ], [ %i.li, %bb.bj ] ; 2 uses
  store ptr %i.lj, ptr %i.h, align 8, !tbaa !77
  %i.lk = sext i32 %.val108 to i64
  %i.ll = getelementptr inbounds [16 x i8], ptr %i.lj, i64 %i.lk
  %i.lm = sub nsw i32 16, %.val108
  br label %Vec_WecPushLevel.exit147.sink.split

end_hunk_0
