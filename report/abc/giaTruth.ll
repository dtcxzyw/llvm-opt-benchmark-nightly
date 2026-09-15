Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaTruth?download=true
inline.NumInlined: 491
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Gia_ManIsoNpnReduce:bb.a
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
  %.1 = phi i32 [ %.val109, %Vec_WecPushLevel.exit135 ], [ %.0233, %bb.am ] ; 2 uses
  %i.fq = trunc nuw nsw i64 %indvars.iv249 to i32
  call fastcc void @Vec_WecPush(ptr noundef %i.e, i32 noundef %.1, i32 noundef %i.fq)
  br label %bb.cl

bb.ax:                                            ; preds = %bb.al
  %i.fr = call ptr @Gia_ObjComputeTruthTableCut(ptr noundef nonnull %0, ptr noundef nonnull %i.ds, ptr noundef nonnull %i.i) ; 16 uses
  %i.fs = ptrtoaddr ptr %i.fr to i64              ; 3 uses
  %.val100 = load i32, ptr %i.j, align 4, !tbaa !42 ; 10 uses
  %i.ft = icmp sgt i32 %.val100, 0
  br i1 %i.ft, label %.lr.ph.i, label %Abc_TtMinimumBase.exit.thread

.lr.ph.i:                                         ; preds = %bb.ax
  %i.fu = icmp samesign ult i32 %.val100, 7       ; 2 uses
  %i.fv = add nsw i32 %.val100, -6                ; 2 uses
  %i.fw = shl nuw i32 1, %i.fv
  %.fr.i.i = freeze i32 %i.fw                     ; 3 uses
  %i.fx = sext i32 %.fr.i.i to i64
  %.idx.i.i = shl nsw i64 %i.fx, 3
  %i.fy = getelementptr inbounds i8, ptr %i.fr, i64 %.idx.i.i
  %smax56.i.i = call i32 @llvm.smax.i32(i32 %.fr.i.i, i32 1)
  %wide.trip.count57.i.i = zext nneg i32 %smax56.i.i to i64
  br i1 %i.fu, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.fz = load i64, ptr %i.fr, align 8, !tbaa !36 ; 12 uses
  %i.ga = lshr i64 %i.fz, 1
  %i.gb = xor i64 %i.ga, %i.fz
  %i.gc = and i64 %i.gb, 6148914691236517205
  %.not1.us.i = icmp ne i64 %i.gc, 0              ; 2 uses
  %i.gd = zext i1 %.not1.us.i to i32              ; 2 uses
  %i.ge = zext i1 %.not1.us.i to i32              ; 2 uses
  %exitcond42.not.i = icmp eq i32 %.val100, 1
  br i1 %exitcond42.not.i, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.1

Abc_TtHasVar.exit.us.i.1:                         ; preds = %.lr.ph.split.us.i
  %i.gf = lshr i64 %i.fz, 2
  %i.gg = xor i64 %i.gf, %i.fz
  %i.gh = and i64 %i.gg, 3689348814741910323
  %.not1.us.i.1 = icmp ne i64 %i.gh, 0            ; 2 uses
  %i.gi = zext i1 %.not1.us.i.1 to i32
  %.124.us.i.1 = add nuw nsw i32 %i.gd, %i.gi     ; 2 uses
  %i.gj = select i1 %.not1.us.i.1, i32 2, i32 0
  %.1.us.i.1 = or disjoint i32 %i.gj, %i.ge       ; 2 uses
  %exitcond42.not.i.1 = icmp eq i32 %.val100, 2
  br i1 %exitcond42.not.i.1, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.2

Abc_TtHasVar.exit.us.i.2:                         ; preds = %Abc_TtHasVar.exit.us.i.1
  %i.gk = lshr i64 %i.fz, 4
  %i.gl = xor i64 %i.gk, %i.fz
  %i.gm = and i64 %i.gl, 1085102592571150095
  %.not1.us.i.2 = icmp ne i64 %i.gm, 0            ; 2 uses
  %i.gn = zext i1 %.not1.us.i.2 to i32
  %.124.us.i.2 = add nuw nsw i32 %.124.us.i.1, %i.gn ; 2 uses
  %i.go = select i1 %.not1.us.i.2, i32 4, i32 0
  %.1.us.i.2 = or disjoint i32 %i.go, %.1.us.i.1  ; 2 uses
  %exitcond42.not.i.2 = icmp eq i32 %.val100, 3
  br i1 %exitcond42.not.i.2, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.3

Abc_TtHasVar.exit.us.i.3:                         ; preds = %Abc_TtHasVar.exit.us.i.2
  %i.gp = lshr i64 %i.fz, 8
  %i.gq = xor i64 %i.gp, %i.fz
  %i.gr = and i64 %i.gq, 71777214294589695
  %.not1.us.i.3 = icmp ne i64 %i.gr, 0            ; 2 uses
  %i.gs = zext i1 %.not1.us.i.3 to i32
  %.124.us.i.3 = add nuw nsw i32 %.124.us.i.2, %i.gs ; 2 uses
  %i.gt = select i1 %.not1.us.i.3, i32 8, i32 0
  %.1.us.i.3 = or disjoint i32 %i.gt, %.1.us.i.2  ; 2 uses
  %exitcond42.not.i.3 = icmp eq i32 %.val100, 4
  br i1 %exitcond42.not.i.3, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.4

Abc_TtHasVar.exit.us.i.4:                         ; preds = %Abc_TtHasVar.exit.us.i.3
  %i.gu = lshr i64 %i.fz, 16
  %i.gv = xor i64 %i.gu, %i.fz
  %i.gw = and i64 %i.gv, 281470681808895
  %.not1.us.i.4 = icmp ne i64 %i.gw, 0            ; 2 uses
  %i.gx = zext i1 %.not1.us.i.4 to i32
  %.124.us.i.4 = add nuw nsw i32 %.124.us.i.3, %i.gx ; 2 uses
  %i.gy = select i1 %.not1.us.i.4, i32 16, i32 0
  %.1.us.i.4 = or disjoint i32 %i.gy, %.1.us.i.3  ; 2 uses
  %exitcond42.not.i.4 = icmp eq i32 %.val100, 5
  br i1 %exitcond42.not.i.4, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.5

Abc_TtHasVar.exit.us.i.5:                         ; preds = %Abc_TtHasVar.exit.us.i.4
  %i.gz = lshr i64 %i.fz, 32
  %.masked = and i64 %i.fz, 4294967295
  %.not1.us.i.5 = icmp ne i64 %i.gz, %.masked     ; 2 uses
  %i.ha = zext i1 %.not1.us.i.5 to i32
  %.124.us.i.5 = add nuw nsw i32 %.124.us.i.4, %i.ha
  %i.hb = select i1 %.not1.us.i.5, i32 32, i32 0
  %.1.us.i.5 = or disjoint i32 %i.hb, %.1.us.i.4
  br label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %.not48.i.i = icmp eq i32 %i.fv, 31
  br i1 %.not48.i.i, label %Abc_TtMinimumBase.exit.thread, label %.lr.ph.split.split.preheader.i

.lr.ph.split.split.preheader.i:                   ; preds = %.lr.ph.split.i
  %wide.trip.count.i = zext nneg i32 %.val100 to i64
  br label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %.loopexit.i, %.lr.ph.split.split.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.split.preheader.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 6 uses
  %.08.i = phi i32 [ 0, %.lr.ph.split.split.preheader.i ], [ %.1.i, %.loopexit.i ] ; 4 uses
  %.0237.i = phi i32 [ 0, %.lr.ph.split.split.preheader.i ], [ %.124.i, %.loopexit.i ]
  %i.hc = icmp samesign ult i64 %indvars.iv.i, 6
  br i1 %i.hc, label %.lr.ph.i.i137, label %.preheader.lr.ph.i.i

.lr.ph.i.i137:                                    ; preds = %.lr.ph.split.split.i
  %i.hd = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.he = shl nuw nsw i32 1, %i.hd                ; 2 uses
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !36
  br label %bb.az

bb.ay:                                            ; preds = %bb.az
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %exitcond58.not.i.i = icmp eq i64 %indvars.iv.next54.i.i, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i, label %.loopexit.i, label %bb.az, !llvm.loop !147

bb.az:                                            ; preds = %bb.ay, %.lr.ph.i.i137
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph.i.i137 ], [ %indvars.iv.next54.i.i, %bb.ay ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv53.i.i
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !36 ; 2 uses
  %i.hk = lshr i64 %i.hj, %i.hf
  %i.hl = xor i64 %i.hk, %i.hj
  %i.hm = and i64 %i.hl, %i.hh
  %.not39.i.i = icmp eq i64 %i.hm, 0
  br i1 %.not39.i.i, label %bb.ay, label %Abc_TtHasVar.exit.i

.preheader.lr.ph.i.i:                             ; preds = %.lr.ph.split.split.i
  %i.hn = add nsw i64 %indvars.iv.i, -6           ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 31
  %i.hp = trunc nuw nsw i64 %i.hn to i32          ; 2 uses
  %i.hq = shl i32 2, %i.hp
  %i.hr = sext i32 %i.hq to i64
  br i1 %i.ho, label %.loopexit.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.hs = shl nuw nsw i32 1, %i.hp                ; 2 uses
  %3 = zext nneg i32 %i.hs to i64
  %wide.trip.count.i.i = zext nneg i32 %i.hs to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.03343.us.i.i = phi ptr [ %i.hw, %._crit_edge.us.i.i ], [ %i.fr, %.preheader.us.preheader.i.i ] ; 3 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.03343.us.i.i, i64 %3
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
  %i.hw = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i, i64 %i.hr ; 2 uses
  %i.hx = icmp ult ptr %i.hw, %i.fy
  br i1 %i.hx, label %.preheader.us.i.i, label %.loopexit.i, !llvm.loop !149

Abc_TtHasVar.exit.i.loopexit:                     ; preds = %bb.bb
  %.pre259 = trunc nuw nsw i64 %indvars.iv.i to i32
  %.pre261 = shl nuw i32 1, %.pre259
  br label %Abc_TtHasVar.exit.i

Abc_TtHasVar.exit.i:                              ; preds = %bb.az, %Abc_TtHasVar.exit.i.loopexit
  %.pre-phi262 = phi i32 [ %.pre261, %Abc_TtHasVar.exit.i.loopexit ], [ %i.he, %bb.az ]
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
  %.023.lcssa.i = phi i32 [ %.124.us.i.5, %Abc_TtHasVar.exit.us.i.5 ], [ %i.gd, %.lr.ph.split.us.i ], [ %.124.us.i.1, %Abc_TtHasVar.exit.us.i.1 ], [ %.124.us.i.2, %Abc_TtHasVar.exit.us.i.2 ], [ %.124.us.i.3, %Abc_TtHasVar.exit.us.i.3 ], [ %.124.us.i.4, %Abc_TtHasVar.exit.us.i.4 ], [ %.124.i, %.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %.1.us.i.5, %Abc_TtHasVar.exit.us.i.5 ], [ %i.ge, %.lr.ph.split.us.i ], [ %.1.us.i.1, %Abc_TtHasVar.exit.us.i.1 ], [ %.1.us.i.2, %Abc_TtHasVar.exit.us.i.2 ], [ %.1.us.i.3, %Abc_TtHasVar.exit.us.i.3 ], [ %.1.us.i.4, %Abc_TtHasVar.exit.us.i.4 ], [ %.1.i, %.loopexit.i ] ; 4 uses
  %i.hz = icmp eq i32 %.0.lcssa.i, 0
  br i1 %i.hz, label %Abc_TtMinimumBase.exit, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge.i
  %i.ia = add nsw i32 %.0.lcssa.i, 1
  %i.ib = and i32 %i.ia, %.0.lcssa.i
  %.not.i136.not = icmp eq i32 %i.ib, 0
  br i1 %.not.i136.not, label %Abc_TtMinimumBase.exit, label %.lr.ph61.i.i

.lr.ph61.i.i:                                     ; preds = %bb.bc
  %i.ic = select i1 %i.fu, i32 1, i32 %.fr.i.i    ; 4 uses
  %i.id = sext i32 %i.ic to i64
  %.idx65.i.i.i = shl nsw i64 %i.id, 3            ; 2 uses
  %i.ie = getelementptr inbounds i8, ptr %i.fr, i64 %.idx65.i.i.i ; 2 uses
  %i.if = icmp sgt i32 %i.ic, 0
  %wide.trip.count73.i.i.i = zext i32 %i.ic to i64 ; 3 uses
  br i1 %i.if, label %.lr.ph61.split.us.split.us.preheader.i.i, label %Abc_TtMinimumBase.exit

.lr.ph61.split.us.split.us.preheader.i.i:         ; preds = %.lr.ph61.i.i
  %wide.trip.count106.i.i = zext nneg i32 %.val100 to i64
  %i.ig = add i64 %.idx65.i.i.i, %i.fs
  %min.iters.check = icmp ult i32 %i.ic, 4
  %n.vec = and i64 %wide.trip.count73.i.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73.i.i.i
  br label %.lr.ph61.split.us.split.us.i.i

.lr.ph61.split.us.split.us.i.i:                   ; preds = %bb.be, %.lr.ph61.split.us.split.us.preheader.i.i
  %indvars.iv100.i.i = phi i64 [ 0, %.lr.ph61.split.us.split.us.preheader.i.i ], [ %indvars.iv.next101.i.i, %bb.be ] ; 3 uses
  %.056.us.us.i.i = phi i32 [ 0, %.lr.ph61.split.us.split.us.preheader.i.i ], [ %.1.us.us.i.i, %bb.be ] ; 4 uses
  %indvars105.i.i = trunc i64 %indvars.iv100.i.i to i32 ; 2 uses
  %i.ih = shl nuw i32 1, %indvars105.i.i
  %i.ii = and i32 %i.ih, %.0.lcssa.i
  %.not.us.us.i.i = icmp eq i32 %i.ii, 0
  br i1 %.not.us.us.i.i, label %bb.be, label %.preheader.us.us.i.i

.preheader.us.us.i.i:                             ; preds = %.lr.ph61.split.us.split.us.i.i
  %.not15.not18.us.us.i.i = icmp slt i32 %.056.us.us.i.i, %indvars105.i.i
  br i1 %.not15.not18.us.us.i.i, label %.lr.ph.us.us.preheader.i.i, label %._crit_edge.split.us.us.split.us.us.i.i

.lr.ph.us.us.preheader.i.i:                       ; preds = %.preheader.us.us.i.i
  %i.ij = sext i32 %.056.us.us.i.i to i64
  br label %.lr.ph.us.us.i.i

.lr.ph.us.us.i.i:                                 ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i, %.lr.ph.us.us.preheader.i.i
  %indvars.iv102.i.i = phi i64 [ %indvars.iv100.i.i, %.lr.ph.us.us.preheader.i.i ], [ %indvars.iv.next103.i.i, %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i ] ; 4 uses
  %indvars.iv.next103.i.i = add nsw i64 %indvars.iv102.i.i, -1 ; 5 uses
  %i.ik = icmp slt i64 %indvars.iv102.i.i, 6
  br i1 %i.ik, label %.lr.ph64.i.us.us.us.us.i.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.us.us.i.i
  %i.il = icmp eq i64 %indvars.iv.next103.i.i, 5
  br i1 %i.il, label %.lr.ph.i.us.us.us.us.i.i, label %.preheader.lr.ph.i.us.us.us.us.i.i

.preheader.lr.ph.i.us.us.us.us.i.i:               ; preds = %bb.bd
  %i.im = icmp samesign ult i64 %indvars.iv102.i.i, 8
  %i.in = trunc i64 %indvars.iv102.i.i to i32
  %i.io = add i32 %i.in, -7
  %i.ip = shl nuw i32 1, %i.io
  %i.iq = select i1 %i.im, i32 1, i32 %i.ip       ; 7 uses
  %i.ir = icmp sgt i32 %i.iq, 0
  %i.is = shl i32 %i.iq, 2                        ; 2 uses
  %i.it = sext i32 %i.is to i64                   ; 3 uses
  br i1 %i.ir, label %.preheader.us.preheader.i.us.us.us.us.i.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i.i

.preheader.us.preheader.i.us.us.us.us.i.i:        ; preds = %.preheader.lr.ph.i.us.us.us.us.i.i
  %i.iu = shl nuw nsw i32 %i.iq, 1
  %i.iv = zext nneg i32 %i.iq to i64              ; 6 uses
  %i.iw = zext nneg i32 %i.iu to i64              ; 2 uses
  %i.ix = shl nuw nsw i64 %i.iv, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.fr, i64 %i.ix
  %i.iy = shl nsw i64 %i.it, 3                    ; 4 uses
  %i.iz = add i64 %i.iy, %i.fs
  %umax = call i64 @llvm.umax.i64(i64 %i.ig, i64 %i.iz)
  %i.ja = sub i64 %umax, %i.fs                    ; 2 uses
  %i.jb = icmp ne i64 %i.ja, %i.iy
  %umin = zext i1 %i.jb to i64                    ; 2 uses
  %i.jc = or disjoint i64 %i.iy, %umin
  %i.jd = sub i64 %i.ja, %i.jc
  %umax354 = call i64 @llvm.umax.i64(i64 %i.iy, i64 1)
  %i.je = udiv i64 %i.jd, %umax354
  %i.jf = add i64 %i.je, %umin
  %i.jg = shl i64 %i.jf, 3
  %i.jh = mul i64 %i.jg, %i.it                    ; 2 uses
  %i.ji = shl nuw nsw i64 %i.iv, 4
  %i.jj = getelementptr i8, ptr %i.fr, i64 %i.jh
  %scevgep355 = getelementptr i8, ptr %i.jj, i64 %i.ji
  %i.jk = shl nuw nsw i64 %i.iw, 3                ; 2 uses
  %scevgep356 = getelementptr i8, ptr %i.fr, i64 %i.jk
  %i.jl = getelementptr i8, ptr %i.fr, i64 %i.jh
  %i.jm = getelementptr i8, ptr %i.jl, i64 %i.ix
  %scevgep357 = getelementptr i8, ptr %i.jm, i64 %i.jk
  %min.iters.check360 = icmp ult i32 %i.iq, 6
  %bound0 = icmp ult ptr %scevgep, %scevgep357
  %bound1 = icmp ult ptr %scevgep356, %scevgep355
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.is, 0
  %i.jn = or i1 %found.conflict, %stride.check
  %n.vec362 = and i64 %i.iv, 2147483644
  %xtraiter = and i64 %i.iv, 1
  %i.jo = icmp eq i32 %i.iq, 1
  %unroll_iter = and i64 %i.iv, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod384 = trunc i32 %i.iq to i1
  br label %.preheader.us.i.us.us.us.us.i.i

.preheader.us.i.us.us.us.us.i.i:                  ; preds = %._crit_edge.us.i.us.us.us.us.i.i, %.preheader.us.preheader.i.us.us.us.us.i.i
  %.061.us.i.us.us.us.us.i.i = phi ptr [ %i.ka, %._crit_edge.us.i.us.us.us.us.i.i ], [ %i.fr, %.preheader.us.preheader.i.us.us.us.us.i.i ] ; 3 uses
  %invariant.gep.i.us.us.us.us.i.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i.i, i64 %i.iv ; 4 uses
  %invariant.gep80.i.us.us.us.us.i.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i.i, i64 %i.iw ; 4 uses
  %brmerge = select i1 %min.iters.check360, i1 true, i1 %i.jn
  br i1 %brmerge, label %scalar.ph359.preheader, label %vector.body363

scalar.ph359.preheader:                           ; preds = %.preheader.us.i.us.us.us.us.i.i
  br i1 %i.jo, label %scalar.ph359.epil.preheader, label %scalar.ph359

vector.body363:                                   ; preds = %.preheader.us.i.us.us.us.us.i.i, %vector.body363
  %index364 = phi i64 [ %index.next369, %vector.body363 ], [ 0, %.preheader.us.i.us.us.us.us.i.i ] ; 3 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i.i, i64 %index364 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16 ; 2 uses
  %wide.load365 = load <2 x i64>, ptr %i.jp, align 8, !tbaa !36, !alias.scope !171, !noalias !172
  %wide.load366 = load <2 x i64>, ptr %i.jq, align 8, !tbaa !36, !alias.scope !171, !noalias !172
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i.i, i64 %index364 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 2 uses
  %wide.load367 = load <2 x i64>, ptr %i.jr, align 8, !tbaa !36, !alias.scope !172
  %wide.load368 = load <2 x i64>, ptr %i.js, align 8, !tbaa !36, !alias.scope !172
  store <2 x i64> %wide.load367, ptr %i.jp, align 8, !tbaa !36, !alias.scope !171, !noalias !172
  store <2 x i64> %wide.load368, ptr %i.jq, align 8, !tbaa !36, !alias.scope !171, !noalias !172
  store <2 x i64> %wide.load365, ptr %i.jr, align 8, !tbaa !36, !alias.scope !172
  store <2 x i64> %wide.load366, ptr %i.js, align 8, !tbaa !36, !alias.scope !172
  %index.next369 = add nuw i64 %index364, 4       ; 2 uses
  %i.jt = icmp eq i64 %index.next369, %n.vec362
  br i1 %i.jt, label %._crit_edge.us.i.us.us.us.us.i.i, label %vector.body363, !llvm.loop !154

scalar.ph359:                                     ; preds = %scalar.ph359.preheader, %scalar.ph359
  %indvars.iv.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next.i.us.us.us.us.i.i.1, %scalar.ph359 ], [ 0, %scalar.ph359.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph359 ], [ 0, %scalar.ph359.preheader ]
  %gep.i.us.us.us.us.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i.i, i64 %indvars.iv.i.us.us.us.us.i.i ; 2 uses
  %i.ju = load i64, ptr %gep.i.us.us.us.us.i.i, align 8, !tbaa !36
  %gep81.i.us.us.us.us.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i.i, i64 %indvars.iv.i.us.us.us.us.i.i ; 2 uses
  %i.jv = load i64, ptr %gep81.i.us.us.us.us.i.i, align 8, !tbaa !36
  store i64 %i.jv, ptr %gep.i.us.us.us.us.i.i, align 8, !tbaa !36
  store i64 %i.ju, ptr %gep81.i.us.us.us.us.i.i, align 8, !tbaa !36
  %indvars.iv.next.i.us.us.us.us.i.i = or disjoint i64 %indvars.iv.i.us.us.us.us.i.i, 1 ; 2 uses
  %gep.i.us.us.us.us.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i.i, i64 %indvars.iv.next.i.us.us.us.us.i.i ; 2 uses
  %i.jw = load i64, ptr %gep.i.us.us.us.us.i.i.1, align 8, !tbaa !36
  %gep81.i.us.us.us.us.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i.i, i64 %indvars.iv.next.i.us.us.us.us.i.i ; 2 uses
  %i.jx = load i64, ptr %gep81.i.us.us.us.us.i.i.1, align 8, !tbaa !36
  store i64 %i.jx, ptr %gep.i.us.us.us.us.i.i.1, align 8, !tbaa !36
  store i64 %i.jw, ptr %gep81.i.us.us.us.us.i.i.1, align 8, !tbaa !36
  %indvars.iv.next.i.us.us.us.us.i.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.us.us.us.us.i.i.loopexit.unr-lcssa, label %scalar.ph359, !llvm.loop !155
end_hunk_0
begin_hunk_1_@Gia_ManIsoNpnReduce:bb.a
  %.val.i = load ptr, ptr %i.ra, align 8, !tbaa !38
  %i.rb = load i32, ptr %.val.i, align 4, !tbaa !39
  %i.rc = icmp eq i32 %i.qw, %i.qv
  br i1 %i.rc, label %bb.cz, label %Vec_IntPush.exit.i

bb.cz:                                            ; preds = %bb.cy
  %i.rd = icmp slt i32 %i.qv, 16
  br i1 %i.rd, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %bb.cz
  %.not9.i.i.i = icmp eq ptr %i.qu, null
  br i1 %.not9.i.i.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.re = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.qu, i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.dc:                                            ; preds = %bb.da
  %i.rf = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.dd:                                            ; preds = %bb.cz
  %i.rg = icmp samesign ult i32 %i.qv, 1073741823
  %i.rh = shl nuw nsw i32 %i.qv, 1
  %spec.select.i.i = select i1 %i.rg, i32 %i.rh, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.qv, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.de, label %Vec_IntPush.exit.i

bb.de:                                            ; preds = %bb.dd
  %.not9.i10.i.i = icmp eq ptr %i.qu, null
  %i.ri = zext nneg i32 %spec.select.i.i to i64
  %i.rj = shl nuw nsw i64 %i.ri, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.rk = call ptr @realloc(ptr noundef nonnull %i.qu, i64 noundef %i.rj) #26
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.dg:                                            ; preds = %bb.de
  %i.rl = call noalias ptr @malloc(i64 noundef %i.rj) #25
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.dg, %bb.df, %bb.dc, %bb.db
  %storemerge.i = phi ptr [ %i.rf, %bb.dc ], [ %i.re, %bb.db ], [ %i.rk, %bb.df ], [ %i.rl, %bb.dg ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.dc ], [ 16, %bb.db ], [ %spec.select.i.i, %bb.df ], [ %spec.select.i.i, %bb.dg ] ; 2 uses
  store ptr %storemerge.i, ptr %i.qr, align 8, !tbaa !38
  store i32 %spec.select.sink.i.i, ptr %i.qk, align 8, !tbaa !43
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.dd, %bb.cy
  %i.rm = phi ptr [ %i.qt, %bb.cy ], [ %i.qt, %bb.dd ], [ %storemerge.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 3 uses
  %i.rn = phi i32 [ %i.qv, %bb.cy ], [ %i.qv, %bb.dd ], [ %spec.select.sink.i.i, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.ro = add nsw i32 %i.qw, 1                    ; 2 uses
  store i32 %i.ro, ptr %i.qm, align 4, !tbaa !42
  %i.rp = sext i32 %i.qw to i64
  %i.rq = getelementptr inbounds [4 x i8], ptr %i.rm, i64 %i.rp
  store i32 %i.rb, ptr %i.rq, align 4, !tbaa !39
  %.val10.pre.i = load i32, ptr %i.f, align 4, !tbaa !75
  br label %bb.dh

bb.dh:                                            ; preds = %Vec_IntPush.exit.i, %.lr.ph.i183
  %.val10.i = phi i32 [ %.val1016.i, %.lr.ph.i183 ], [ %.val10.pre.i, %Vec_IntPush.exit.i ] ; 2 uses
  %.val113.pr = phi ptr [ %i.qt, %.lr.ph.i183 ], [ %i.rm, %Vec_IntPush.exit.i ] ; 2 uses
  %i.rr = phi ptr [ %i.qu, %.lr.ph.i183 ], [ %i.rm, %Vec_IntPush.exit.i ]
  %i.rs = phi i32 [ %i.qv, %.lr.ph.i183 ], [ %i.rn, %Vec_IntPush.exit.i ]
  %i.rt = phi i32 [ %i.qw, %.lr.ph.i183 ], [ %i.ro, %Vec_IntPush.exit.i ]
  %indvars.iv.next.i185 = add nuw nsw i64 %indvars.iv.i184, 1 ; 2 uses
  %i.ru = sext i32 %.val10.i to i64
  %i.rv = icmp slt i64 %indvars.iv.next.i185, %i.ru
  br i1 %i.rv, label %.lr.ph.i183, label %Vec_WecCollectFirsts.exitthread-pre-split, !llvm.loop !164

Vec_WecCollectFirsts.exitthread-pre-split:        ; preds = %bb.dh
  %.val99.pre = load i32, ptr %i.qm, align 4, !tbaa !42
  br label %Vec_WecCollectFirsts.exit

Vec_WecCollectFirsts.exit:                        ; preds = %Vec_WecCollectFirsts.exitthread-pre-split, %Vec_IntAlloc.exit.i182
  %.val99 = phi i32 [ %.val99.pre, %Vec_WecCollectFirsts.exitthread-pre-split ], [ 0, %Vec_IntAlloc.exit.i182 ]
  %.val113 = phi ptr [ %.val113.pr, %Vec_WecCollectFirsts.exitthread-pre-split ], [ %i.qq, %Vec_IntAlloc.exit.i182 ] ; 3 uses
  %i.rw = call ptr @Gia_ManDupCones(ptr noundef nonnull %0, ptr noundef %.val113, i32 noundef %.val99, i32 noundef 0) #24
  %.not.i186 = icmp eq ptr %.val113, null
  br i1 %.not.i186, label %Vec_IntFree.exit187, label %bb.di

bb.di:                                            ; preds = %Vec_WecCollectFirsts.exit
  call void @free(ptr noundef nonnull %.val113) #24
  br label %Vec_IntFree.exit187

Vec_IntFree.exit187:                              ; preds = %Vec_WecCollectFirsts.exit, %bb.di
  call void @free(ptr noundef nonnull %i.qk) #24
  %.not89 = icmp eq i32 %2, 0
  br i1 %.not89, label %Vec_WecPrint.exit, label %bb.dj

bb.dj:                                            ; preds = %Vec_IntFree.exit187
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.val1822.i = load i32, ptr %i.f, align 4, !tbaa !75 ; 2 uses
  %i.rx = icmp sgt i32 %.val1822.i, 0
  br i1 %i.rx, label %.lr.ph24.i.preheader, label %Vec_WecPrint.exit

.lr.ph24.i.preheader:                             ; preds = %bb.dj
  %.val19.i = load ptr, ptr %i.h, align 8, !tbaa !77
  %i.ry = zext nneg i32 %.val1822.i to i64
  br label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %.lr.ph24.i.preheader, %bb.dm
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %bb.dm ], [ 0, %.lr.ph24.i.preheader ] ; 3 uses
  %i.rz = getelementptr inbounds nuw [16 x i8], ptr %.val19.i, i64 %indvars.iv26.i ; 2 uses
  %i.sa = getelementptr i8, ptr %i.rz, i64 4      ; 3 uses
  %.val17.i = load i32, ptr %i.sa, align 4, !tbaa !42
  %i.sb = icmp eq i32 %.val17.i, 1
  br i1 %i.sb, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph24.i
  %i.sc = trunc nuw nsw i64 %indvars.iv26.i to i32
  %i.sd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.sc) ; 0 uses
  %.val1620.i = load i32, ptr %i.sa, align 4, !tbaa !42
  %i.se = icmp sgt i32 %.val1620.i, 0
  br i1 %i.se, label %.lr.ph.i188, label %.critedge2.i

.lr.ph.i188:                                      ; preds = %bb.dk
  %i.sf = getelementptr i8, ptr %i.rz, i64 8
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dl, %.lr.ph.i188
  %indvars.iv.i189 = phi i64 [ 0, %.lr.ph.i188 ], [ %indvars.iv.next.i191, %bb.dl ] ; 2 uses
  %.val.i190 = load ptr, ptr %i.sf, align 8, !tbaa !38
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.val.i190, i64 %indvars.iv.i189
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !39
  %i.si = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.sh) ; 0 uses
  %indvars.iv.next.i191 = add nuw nsw i64 %indvars.iv.i189, 1 ; 2 uses
  %.val16.i = load i32, ptr %i.sa, align 4, !tbaa !42
  %i.sj = sext i32 %.val16.i to i64
  %i.sk = icmp slt i64 %indvars.iv.next.i191, %i.sj
  br i1 %i.sk, label %bb.dl, label %.critedge2.i, !llvm.loop !165

.critedge2.i:                                     ; preds = %bb.dl, %bb.dk
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.dm

bb.dm:                                            ; preds = %.critedge2.i, %.lr.ph24.i
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %i.sl = icmp samesign ult i64 %indvars.iv.next27.i, %i.ry
  br i1 %i.sl, label %.lr.ph24.i, label %Vec_WecPrint.exit, !llvm.loop !166

Vec_WecPrint.exit:                                ; preds = %bb.dm, %bb.dj, %Vec_IntFree.exit187
  %.not90 = icmp eq ptr %1, null
  br i1 %.not90, label %bb.dy, label %bb.dn

bb.dn:                                            ; preds = %Vec_WecPrint.exit
  %.val8.i192 = load i32, ptr %i.f, align 4, !tbaa !75 ; 3 uses
  %i.sm = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 5 uses
  %i.sn = add i32 %.val8.i192, -1
  %or.cond.i.i193 = icmp ult i32 %i.sn, 7
  %spec.store.select.i.i194 = select i1 %or.cond.i.i193, i32 8, i32 %.val8.i192 ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 4 ; 2 uses
  store i32 0, ptr %i.so, align 4, !tbaa !66
  store i32 %spec.store.select.i.i194, ptr %i.sm, align 8, !tbaa !67
  %.not.i.i195 = icmp eq i32 %spec.store.select.i.i194, 0
  br i1 %.not.i.i195, label %Vec_PtrAlloc.exit.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.sp = sext i32 %spec.store.select.i.i194 to i64
  %i.sq = shl nsw i64 %i.sp, 3
  %i.sr = call noalias ptr @malloc(i64 noundef %i.sq) #25
  br label %Vec_PtrAlloc.exit.i

Vec_PtrAlloc.exit.i:                              ; preds = %bb.do, %bb.dn
  %.promoted16.i = phi ptr [ %i.sr, %bb.do ], [ null, %bb.dn ] ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sm, i64 8 ; 2 uses
  store ptr %.promoted16.i, ptr %i.ss, align 8, !tbaa !68
  %i.st = icmp sgt i32 %.val8.i192, 0
  br i1 %i.st, label %.lr.ph.i196, label %Vec_WecConvertToVecPtr.exit

.lr.ph.i196:                                      ; preds = %Vec_PtrAlloc.exit.i, %Vec_PtrPush.exit.i
  %indvars.iv19.i = phi i64 [ %indvars.iv.next20.i, %Vec_PtrPush.exit.i ], [ 0, %Vec_PtrAlloc.exit.i ] ; 7 uses
  %storemerge17.i = phi ptr [ %storemerge18.i, %Vec_PtrPush.exit.i ], [ %.promoted16.i, %Vec_PtrAlloc.exit.i ] ; 6 uses
  %spec.select.sink.i15.i = phi i32 [ %spec.select.sink.i14.i, %Vec_PtrPush.exit.i ], [ %spec.store.select.i.i194, %Vec_PtrAlloc.exit.i ] ; 4 uses
  %.val9.i198 = load ptr, ptr %i.h, align 8, !tbaa !77
  %i.su = getelementptr inbounds nuw [16 x i8], ptr %.val9.i198, i64 %indvars.iv19.i ; 2 uses
  %i.sv = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 4 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !42 ; 4 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 4
  store i32 %i.sx, ptr %i.sy, align 4, !tbaa !42
  store i32 %i.sx, ptr %i.sv, align 8, !tbaa !43
  %.not.i10.i = icmp eq i32 %i.sx, 0
  br i1 %.not.i10.i, label %Vec_IntDup.exit.i, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph.i196
  %i.sz = sext i32 %i.sx to i64
  %i.ta = shl nsw i64 %i.sz, 2                    ; 2 uses
  %i.tb = call noalias ptr @malloc(i64 noundef %i.ta) #25
  br label %Vec_IntDup.exit.i

Vec_IntDup.exit.i:                                ; preds = %bb.dp, %.lr.ph.i196
  %.pre-phi12.i.i = phi i64 [ %i.ta, %bb.dp ], [ 0, %.lr.ph.i196 ]
  %i.tc = phi ptr [ %i.tb, %bb.dp ], [ null, %.lr.ph.i196 ] ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  store ptr %i.tc, ptr %i.td, align 8, !tbaa !38
  %i.te = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.tc, ptr align 4 %i.tf, i64 %.pre-phi12.i.i, i1 false)
  %i.tg = trunc nuw nsw i64 %indvars.iv19.i to i32
  %i.th = icmp eq i32 %spec.select.sink.i15.i, %i.tg
  br i1 %i.th, label %bb.dq, label %Vec_PtrPush.exit.i

bb.dq:                                            ; preds = %Vec_IntDup.exit.i
  %i.ti = icmp samesign ult i64 %indvars.iv19.i, 16
  br i1 %i.ti, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %bb.dq
  %.not9.i.i.i202 = icmp eq ptr %storemerge17.i, null
  br i1 %.not9.i.i.i202, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.tj = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge17.i, i64 noundef 128) #26
  br label %Vec_PtrPush.exit.i

bb.dt:                                            ; preds = %bb.dr
  %i.tk = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #25
  br label %Vec_PtrPush.exit.i

bb.du:                                            ; preds = %bb.dq
  %i.tl = icmp samesign ult i64 %indvars.iv19.i, 1073741823
  %i.tm = shl nuw nsw i32 %spec.select.sink.i15.i, 1
  %spec.select.i.i201 = select i1 %i.tl, i32 %i.tm, i32 2147483647 ; 3 uses
  %i.tn = zext nneg i32 %spec.select.i.i201 to i64 ; 2 uses
  %.not.i10.i.i = icmp samesign ult i64 %indvars.iv19.i, %i.tn
  br i1 %.not.i10.i.i, label %bb.dv, label %Vec_PtrPush.exit.i

bb.dv:                                            ; preds = %bb.du
  %.not9.i11.i.i = icmp eq ptr %storemerge17.i, null
  %i.to = shl nuw nsw i64 %i.tn, 3                ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.tp = call ptr @realloc(ptr noundef nonnull %storemerge17.i, i64 noundef %i.to) #26
  br label %Vec_PtrPush.exit.i

bb.dx:                                            ; preds = %bb.dv
  %i.tq = call noalias ptr @malloc(i64 noundef %i.to) #25
  br label %Vec_PtrPush.exit.i

Vec_PtrPush.exit.i:                               ; preds = %bb.dx, %bb.dw, %bb.du, %bb.dt, %bb.ds, %Vec_IntDup.exit.i
  %storemerge18.i = phi ptr [ %storemerge17.i, %Vec_IntDup.exit.i ], [ %storemerge17.i, %bb.du ], [ %i.tk, %bb.dt ], [ %i.tj, %bb.ds ], [ %i.tp, %bb.dw ], [ %i.tq, %bb.dx ] ; 3 uses
  %spec.select.sink.i14.i = phi i32 [ %spec.select.sink.i15.i, %Vec_IntDup.exit.i ], [ %spec.select.sink.i15.i, %bb.du ], [ 16, %bb.dt ], [ 16, %bb.ds ], [ %spec.select.i.i201, %bb.dw ], [ %spec.select.i.i201, %bb.dx ] ; 2 uses
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 3 uses
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %storemerge18.i, i64 %indvars.iv19.i
  store ptr %i.sv, ptr %i.tr, align 8, !tbaa !62
  %.val.i200 = load i32, ptr %i.f, align 4, !tbaa !75
  %i.ts = sext i32 %.val.i200 to i64
  %i.tt = icmp slt i64 %indvars.iv.next20.i, %i.ts
  br i1 %i.tt, label %.lr.ph.i196, label %..critedge_crit_edge.i, !llvm.loop !167

..critedge_crit_edge.i:                           ; preds = %Vec_PtrPush.exit.i
  %i.tu = trunc nuw nsw i64 %indvars.iv.next20.i to i32
  store i32 %i.tu, ptr %i.so, align 4, !tbaa !66
  store i32 %spec.select.sink.i14.i, ptr %i.sm, align 8
  store ptr %storemerge18.i, ptr %i.ss, align 8
  br label %Vec_WecConvertToVecPtr.exit

Vec_WecConvertToVecPtr.exit:                      ; preds = %Vec_PtrAlloc.exit.i, %..critedge_crit_edge.i
  store ptr %i.sm, ptr %1, align 8, !tbaa !73
  br label %bb.dy

bb.dy:                                            ; preds = %Vec_WecConvertToVecPtr.exit, %Vec_WecPrint.exit
  %i.tv = load i32, ptr %i.e, align 8, !tbaa !76  ; 2 uses
  %i.tw = icmp sgt i32 %i.tv, 0
  %.pre.i.i203 = load ptr, ptr %i.h, align 8, !tbaa !77 ; 4 uses
  br i1 %i.tw, label %.lr.ph.i.i205.preheader, label %._crit_edge.i.i

.lr.ph.i.i205.preheader:                          ; preds = %bb.dy
  %i.tx = zext nneg i32 %i.tv to i64
  br label %.lr.ph.i.i205

.lr.ph.i.i205:                                    ; preds = %.lr.ph.i.i205.preheader, %bb.ea
  %indvars.iv.i.i206 = phi i64 [ %indvars.iv.next.i.i208, %bb.ea ], [ 0, %.lr.ph.i.i205.preheader ] ; 3 uses
  %i.ty = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i203, i64 %indvars.iv.i.i206
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !38 ; 2 uses
  %.not15.i.i207 = icmp eq ptr %i.ua, null
  br i1 %.not15.i.i207, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph.i.i205
  call void @free(ptr noundef nonnull %i.ua) #24
  %i.ub = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i203, i64 %indvars.iv.i.i206
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  store ptr null, ptr %i.uc, align 8, !tbaa !38
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %.lr.ph.i.i205
  %indvars.iv.next.i.i208 = add nuw nsw i64 %indvars.iv.i.i206, 1 ; 2 uses
  %i.ud = icmp samesign ult i64 %indvars.iv.next.i.i208, %i.tx
  br i1 %i.ud, label %.lr.ph.i.i205, label %._crit_edge.thread.i.i, !llvm.loop !168

._crit_edge.i.i:                                  ; preds = %bb.dy
  %.not.i.i204 = icmp eq ptr %.pre.i.i203, null
  br i1 %.not.i.i204, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.ea, %._crit_edge.i.i
  call void @free(ptr noundef nonnull %.pre.i.i203) #24
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  call void @free(ptr noundef nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret ptr %i.rw
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_WecPush(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !75   ; 2 uses
  %.not = icmp sgt i32 %i.b, %1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %1, 1                        ; 2 uses
  %i.d = shl nsw i32 %i.b, 1
  %i.e = tail call noundef i32 @llvm.smax.i32(i32 %i.d, i32 %i.c) ; 4 uses
  %i.f = load i32, ptr %0, align 8, !tbaa !76     ; 2 uses
  %.not.i = icmp slt i32 %i.f, %i.e
  br i1 %.not.i, label %bb.c, label %Vec_WecGrow.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77   ; 2 uses
  %.not13.i = icmp eq ptr %i.h, null
  %i.i = sext i32 %i.e to i64
  %i.j = shl nsw i64 %i.i, 4                      ; 2 uses
  br i1 %.not13.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @realloc(ptr noundef nonnull %i.h, i64 noundef %i.j) #26
  %.pre.i = load i32, ptr %0, align 8, !tbaa !76
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.j) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi i32 [ %.pre.i, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.n = phi ptr [ %i.k, %bb.d ], [ %i.l, %bb.e ] ; 2 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !77
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.o
  %i.q = sub nsw i32 %i.e, %i.m
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  store i32 %i.e, ptr %0, align 8, !tbaa !76
  br label %Vec_WecGrow.exit

Vec_WecGrow.exit:                                 ; preds = %bb.b, %bb.f
  store i32 %i.c, ptr %i.a, align 4, !tbaa !75
  br label %bb.g

bb.g:                                             ; preds = %Vec_WecGrow.exit, %bb.a
  %i.t = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.t, align 8, !tbaa !77
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.u ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !42   ; 7 uses
  %i.y = load i32, ptr %i.v, align 8, !tbaa !43
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i32 %i.x, 16
  br i1 %i.aa, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ae = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.k, %bb.j
  %i.af = phi ptr [ %i.ad, %bb.j ], [ %i.ae, %bb.k ]
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.ag = icmp samesign ult i32 %i.x, 1073741823
  %i.ah = shl nuw nsw i32 %i.x, 1
  %spec.select.i = select i1 %i.ag, i32 %i.ah, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.x, %spec.select.i
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.aj, null
  %i.ak = zext nneg i32 %spec.select.i to i64
  %i.al = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = tail call ptr @realloc(ptr noundef nonnull %i.aj, i64 noundef %i.al) #26
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.al) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ao = phi ptr [ %i.am, %bb.n ], [ %i.an, %bb.o ]
  store ptr %i.ao, ptr %i.ai, align 8, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.p, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.p ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.v, align 8, !tbaa !43
  %.pre = load i32, ptr %i.w, align 4, !tbaa !42
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.g, %bb.l, %Vec_IntGrow.exit11.sink.split.i
  %i.ap = phi i32 [ %i.x, %bb.g ], [ %i.x, %bb.l ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38
  %i.as = add nsw i32 %i.ap, 1
  store i32 %i.as, ptr %i.w, align 4, !tbaa !42
  %i.at = sext i32 %i.ap to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.at
  store i32 %2, ptr %i.au, align 4, !tbaa !39
  ret void
}

declare i32 @Abc_TtCanonicize(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Vec_MemHashInsert(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84   ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4        ; 2 uses
  %.val15 = load i32, ptr %i.e, align 4, !tbaa !42 ; 2 uses
  %i.f = icmp sgt i32 %i.b, %.val15
  br i1 %i.f, label %bb.b, label %Vec_MemHashResize.exit

end_hunk_1
