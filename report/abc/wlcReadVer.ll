inline.NumInlined: 357
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Wlc_PrsDerive:bb.a
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !39
  %.val1129 = load ptr, ptr %i.af, align 8, !tbaa !17 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %.val1129, i64 %i.ch ; 4 uses
  %.not1037 = icmp eq ptr %.val1129, null
  br i1 %.not1037, label %.critedge13, label %bb.k

bb.k:                                             ; preds = %.lr.ph2496
  %i.cj = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ci, ptr noundef nonnull dereferenceable(8) @.str.28, i64 noundef 7) #30
  %.not.i1145.not = icmp eq i32 %i.cj, 0
  br i1 %.not.i1145.not, label %.critedge13, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = load i8, ptr %i.ci, align 1, !tbaa !42  ; 2 uses
  %.not15.i = icmp eq i8 %i.ck, 0
  br i1 %.not15.i, label %Wlc_PrsFindSymbol.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.m
  %i.cl = phi i8 [ %i.cq, %bb.m ], [ %i.ck, %bb.l ] ; 3 uses
  %.017.i = phi i1 [ %.1.v.i, %bb.m ], [ true, %bb.l ] ; 2 uses
  %.01016.i = phi ptr [ %i.cp, %bb.m ], [ %i.ci, %bb.l ] ; 2 uses
  %i.cm = icmp eq i8 %i.cl, 39
  %or.cond.i = and i1 %.017.i, %i.cm
  br i1 %or.cond.i, label %Wlc_PrsFindSymbol.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.cn = icmp ne i8 %i.cl, 92
  %i.co = icmp eq i8 %i.cl, 32
  %.1.v.i = select i1 %.017.i, i1 %i.cn, i1 %i.co
  %i.cp = getelementptr inbounds nuw i8, ptr %.01016.i, i64 1 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !42  ; 2 uses
  %.not.i1146 = icmp eq i8 %i.cq, 0
  br i1 %.not.i1146, label %Wlc_PrsFindSymbol.exit.thread, label %.lr.ph.i, !llvm.loop !49

Wlc_PrsFindSymbol.exit:                           ; preds = %.lr.ph.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.01016.i, i64 2 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !42  ; 2 uses
  %.not15.i1147 = icmp eq i8 %i.cs, 0
  br i1 %.not15.i1147, label %Wlc_PrsFindSymbol.exit.thread, label %.lr.ph.i1148

.lr.ph.i1148:                                     ; preds = %Wlc_PrsFindSymbol.exit, %bb.n
  %i.ct = phi i8 [ %i.cy, %bb.n ], [ %i.cs, %Wlc_PrsFindSymbol.exit ] ; 3 uses
  %.017.i1149 = phi i1 [ %.1.v.i1152, %bb.n ], [ true, %Wlc_PrsFindSymbol.exit ] ; 2 uses
  %.01016.i1150 = phi ptr [ %i.cx, %bb.n ], [ %i.cr, %Wlc_PrsFindSymbol.exit ] ; 4 uses
  %i.cu = icmp eq i8 %i.ct, 39
  %or.cond.i1151 = and i1 %.017.i1149, %i.cu
  br i1 %or.cond.i1151, label %Wlc_PrsFindSymbol.exit1155, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i1148
  %i.cv = icmp ne i8 %i.ct, 92
  %i.cw = icmp eq i8 %i.ct, 32
  %.1.v.i1152 = select i1 %.017.i1149, i1 %i.cv, i1 %i.cw
  %i.cx = getelementptr inbounds nuw i8, ptr %.01016.i1150, i64 1 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !42  ; 2 uses
  %.not.i1153 = icmp eq i8 %i.cy, 0
  br i1 %.not.i1153, label %Wlc_PrsFindSymbol.exit.thread, label %.lr.ph.i1148, !llvm.loop !49

Wlc_PrsFindSymbol.exit1155:                       ; preds = %.lr.ph.i1148
  %i.cz = getelementptr inbounds i8, ptr %.01016.i1150, i64 -1
  %i.da = call i64 @strtol(ptr noundef nonnull captures(none) %i.cz, ptr noundef null, i32 noundef 10) #28, !inline_history !82
  %i.db = trunc i64 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %.01016.i1150, i64 2 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !42  ; 2 uses
  %i.de = add i8 %i.dd, -58
  %or.cond.i16.i = icmp ult i8 %i.de, -10
  %i.df = and i8 %i.dd, -33
  %i.dg = add i8 %i.df, -71
  %i.dh = icmp ult i8 %i.dg, -6
  %narrow.i.not17.i = and i1 %or.cond.i16.i, %i.dh
  br i1 %narrow.i.not17.i, label %Abc_TtReadHexNumber.exit, label %.lr.ph.i1156

.lr.ph.i1156:                                     ; preds = %Wlc_PrsFindSymbol.exit1155, %.lr.ph.i1156
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i1156 ], [ 0, %Wlc_PrsFindSymbol.exit1155 ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv.next.i
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !42  ; 2 uses
  %i.dk = add i8 %i.dj, -58
  %or.cond.i.i = icmp ult i8 %i.dk, -10
  %i.dl = and i8 %i.dj, -33
  %i.dm = add i8 %i.dl, -71
  %i.dn = icmp ult i8 %i.dm, -6
  %narrow.i.not.i = and i1 %or.cond.i.i, %i.dn
  br i1 %narrow.i.not.i, label %Abc_TtReadHexNumber.exit, label %.lr.ph.i1156, !llvm.loop !85

Abc_TtReadHexNumber.exit:                         ; preds = %.lr.ph.i1156, %Wlc_PrsFindSymbol.exit1155
  %i.do = icmp eq i32 %i.cd, %i.cc
  br i1 %i.do, label %bb.o, label %Vec_IntPush.exit

bb.o:                                             ; preds = %Abc_TtReadHexNumber.exit
  %i.dp = icmp slt i32 %i.cc, 16
  br i1 %i.dp, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %.not9.i.i = icmp eq ptr %i.cb, null
  br i1 %.not9.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dq = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cb, i64 noundef 64) #32
  br label %Vec_IntPush.exit

bb.r:                                             ; preds = %bb.p
  %i.dr = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.o
  %i.ds = icmp samesign ult i32 %i.cc, 1073741823
  %i.dt = shl nuw nsw i32 %i.cc, 1
  %spec.select.i = select i1 %i.ds, i32 %i.dt, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.cc, %spec.select.i
  br i1 %.not.i9.i, label %bb.t, label %Vec_IntPush.exit

bb.t:                                             ; preds = %bb.s
  %.not9.i10.i = icmp eq ptr %i.cb, null
  %i.du = zext nneg i32 %spec.select.i to i64
  %i.dv = shl nuw nsw i64 %i.du, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dw = call ptr @realloc(ptr noundef nonnull %i.cb, i64 noundef %i.dv) #32
  br label %Vec_IntPush.exit

bb.v:                                             ; preds = %bb.t
  %i.dx = call noalias ptr @malloc(i64 noundef %i.dv) #31
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.r, %bb.q, %bb.v, %bb.u, %Abc_TtReadHexNumber.exit, %bb.s
  %i.dy = phi ptr [ %i.ca, %Abc_TtReadHexNumber.exit ], [ %i.ca, %bb.s ], [ %i.dr, %bb.r ], [ %i.dq, %bb.q ], [ %i.dw, %bb.u ], [ %i.dx, %bb.v ] ; 3 uses
  %i.dz = phi i32 [ %i.cc, %Abc_TtReadHexNumber.exit ], [ %i.cc, %bb.s ], [ 16, %bb.r ], [ 16, %bb.q ], [ %spec.select.i, %bb.u ], [ %spec.select.i, %bb.v ]
  %i.ea = add nsw i32 %i.cd, 1
  %i.eb = sext i32 %i.cd to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.eb
  store i32 0, ptr %i.ec, align 4, !tbaa !39
  %.pre2987 = load ptr, ptr %i.ab, align 8, !tbaa !25
  br label %Wlc_PrsFindSymbol.exit.thread

Wlc_PrsFindSymbol.exit.thread:                    ; preds = %bb.m, %bb.n, %Wlc_PrsFindSymbol.exit, %bb.l, %Vec_IntPush.exit
  %i.ed = phi ptr [ %i.bz, %bb.l ], [ %i.bz, %Wlc_PrsFindSymbol.exit ], [ %.pre2987, %Vec_IntPush.exit ], [ %i.bz, %bb.n ], [ %i.bz, %bb.m ] ; 2 uses
  %i.ee = phi ptr [ %i.ca, %bb.l ], [ %i.ca, %Wlc_PrsFindSymbol.exit ], [ %i.dy, %Vec_IntPush.exit ], [ %i.ca, %bb.n ], [ %i.ca, %bb.m ] ; 2 uses
  %i.ef = phi ptr [ %i.cb, %bb.l ], [ %i.cb, %Wlc_PrsFindSymbol.exit ], [ %i.dy, %Vec_IntPush.exit ], [ %i.cb, %bb.n ], [ %i.cb, %bb.m ]
  %i.eg = phi i32 [ %i.cc, %bb.l ], [ %i.cc, %Wlc_PrsFindSymbol.exit ], [ %i.dz, %Vec_IntPush.exit ], [ %i.cc, %bb.n ], [ %i.cc, %bb.m ]
  %i.eh = phi i32 [ %i.cd, %bb.l ], [ %i.cd, %Wlc_PrsFindSymbol.exit ], [ %i.ea, %Vec_IntPush.exit ], [ %i.cd, %bb.n ], [ %i.cd, %bb.m ] ; 2 uses
  %.1802 = phi i32 [ %.08012494, %bb.l ], [ %.08012494, %Wlc_PrsFindSymbol.exit ], [ %i.db, %Vec_IntPush.exit ], [ %.08012494, %bb.n ], [ %.08012494, %bb.m ] ; 2 uses
  %.2754 = phi ptr [ null, %bb.l ], [ null, %Wlc_PrsFindSymbol.exit ], [ %.01016.i1150, %Vec_IntPush.exit ], [ null, %bb.n ], [ null, %bb.m ]
  %indvars.iv.next2933 = add nsw i64 %indvars.iv2932, 1 ; 3 uses
  %i.ei = getelementptr i8, ptr %i.ed, i64 4
  %.val1074 = load i32, ptr %i.ei, align 4, !tbaa !19
  %i.ej = sext i32 %.val1074 to i64
  %i.ek = icmp slt i64 %indvars.iv.next2933, %i.ej
  br i1 %i.ek, label %.lr.ph2496, label %.critedge13, !llvm.loop !86

.critedge13:                                      ; preds = %.lr.ph2496, %bb.k, %Wlc_PrsFindSymbol.exit.thread
  %i.el = phi ptr [ %i.ca, %.lr.ph2496 ], [ %i.ca, %bb.k ], [ %i.ee, %Wlc_PrsFindSymbol.exit.thread ] ; 4 uses
  %.val10732989 = phi i32 [ %i.cd, %.lr.ph2496 ], [ %i.cd, %bb.k ], [ %i.eh, %Wlc_PrsFindSymbol.exit.thread ]
  %.0801.lcssa.ph = phi i32 [ %.08012494, %.lr.ph2496 ], [ %.08012494, %bb.k ], [ %.1802, %Wlc_PrsFindSymbol.exit.thread ] ; 4 uses
  %.3771.lcssa.ph.in = phi i64 [ %indvars.iv2932, %.lr.ph2496 ], [ %indvars.iv2932, %bb.k ], [ %indvars.iv.next2933, %Wlc_PrsFindSymbol.exit.thread ]
  %.3755.ph = phi ptr [ null, %.lr.ph2496 ], [ %i.ci, %bb.k ], [ %.2754, %Wlc_PrsFindSymbol.exit.thread ]
  %.val10732989.fr = freeze i32 %.val10732989     ; 7 uses
  %.3771.lcssa.ph = trunc i64 %.3771.lcssa.ph.in to i32 ; 2 uses
  %i.em = icmp ult i32 %.val10732989.fr, 2
  %i.en = add i32 %.val10732989.fr, -1
  %i.eo = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.en, i1 true)
  %i.ep = sub nuw nsw i32 32, %i.eo
  %spec.select3545 = select i1 %i.em, i32 %.val10732989.fr, i32 %i.ep
  %i.eq = shl nuw i32 1, %spec.select3545
  %.not1039 = icmp eq i32 %.val10732989.fr, %i.eq
  br i1 %.not1039, label %bb.x, label %.thread3150

.thread3150:                                      ; preds = %bb.j, %.critedge13
  %i.er = phi ptr [ %i.el, %.critedge13 ], [ %i.bu, %bb.j ] ; 2 uses
  %.375531483156 = phi ptr [ %.3755.ph, %.critedge13 ], [ %.0752.lcssa, %bb.j ]
  %.not.i1161 = icmp eq ptr %i.er, null
  br i1 %.not.i1161, label %.thread, label %bb.w

bb.w:                                             ; preds = %.thread3150
  call void @free(ptr noundef nonnull %i.er) #28
  br label %.thread

.thread:                                          ; preds = %bb.w, %.thread3150
  %i.es = call i32 (ptr, ptr, ptr, ...) @Wlc_PrsWriteErrorMessage(ptr noundef nonnull %0, ptr noundef %.375531483156, ptr noundef nonnull @.str.29, ptr noundef nonnull %.129.i) ; 0 uses
  br label %.loopexit2030

bb.x:                                             ; preds = %.critedge13
  %i.et = mul nsw i32 %.val10732989.fr, %.0801.lcssa.ph ; 2 uses
  %i.eu = ashr i32 %i.et, 5
  %i.ev = and i32 %i.et, 31
  %i.ew = icmp ne i32 %i.ev, 0
  %i.ex = zext i1 %i.ew to i32
  %i.ey = add nsw i32 %i.eu, %i.ex
  %i.ez = load ptr, ptr %i.ai, align 8, !tbaa !33
  %i.fa = sext i32 %i.ey to i64
  %i.fb = shl nsw i64 %i.fa, 2                    ; 2 uses
  %i.fc = trunc nsw i64 %i.fb to i32
  %i.fd = call ptr @Mem_FlexEntryFetch(ptr noundef %i.ez, i32 noundef %i.fc) #28 ; 3 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.fd, i8 0, i64 %i.fb, i1 false)
  %i.fe = icmp sgt i32 %.val10732989.fr, 0
  br i1 %i.fe, label %.lr.ph2514, label %.critedge15

.lr.ph2514:                                       ; preds = %bb.x
  %i.ff = icmp sgt i32 %.0801.lcssa.ph, 0
  %wide.trip.count = zext nneg i32 %.val10732989.fr to i64
  br i1 %i.ff, label %bb.y, label %.critedge15

bb.y:                                             ; preds = %.lr.ph2514, %._crit_edge
  %indvars.iv2935 = phi i64 [ %indvars.iv.next2936, %._crit_edge ], [ 0, %.lr.ph2514 ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv2935
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !39
  %2 = trunc i64 %indvars.iv2935 to i32
  %3 = mul i32 %.0801.lcssa.ph, %2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.ab
  %.08102508 = phi i32 [ 0, %bb.y ], [ %i.fs, %bb.ab ] ; 3 uses
  %i.fi = shl nuw i32 1, %.08102508
  %i.fj = and i32 %i.fi, %i.fh
  %.not1040 = icmp eq i32 %i.fj, 0
  br i1 %.not1040, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fk = add nuw nsw i32 %.08102508, %3          ; 2 uses
  %i.fl = and i32 %i.fk, 31
  %i.fm = shl nuw i32 1, %i.fl
  %i.fn = lshr i32 %i.fk, 5
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fo ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !39
  %i.fr = or i32 %i.fq, %i.fm
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !39
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.fs = add nuw nsw i32 %.08102508, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.fs, %.0801.lcssa.ph
  br i1 %exitcond.not, label %._crit_edge, label %bb.z, !llvm.loop !87

._crit_edge:                                      ; preds = %bb.ab
  %indvars.iv.next2936 = add nuw nsw i64 %indvars.iv2935, 1 ; 2 uses
  %exitcond2939.not = icmp eq i64 %indvars.iv.next2936, %wide.trip.count
  br i1 %exitcond2939.not, label %.critedge15, label %bb.y, !llvm.loop !88

.critedge15:                                      ; preds = %._crit_edge, %.lr.ph2514, %bb.x
  %i.ft = load ptr, ptr %i.aj, align 8, !tbaa !32 ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4 ; 3 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !27 ; 7 uses
  %i.fw = load i32, ptr %i.ft, align 8, !tbaa !30
  %i.fx = icmp eq i32 %i.fv, %i.fw
  br i1 %i.fx, label %bb.ac, label %Vec_PtrPush.exit

bb.ac:                                            ; preds = %.critedge15
  %i.fy = icmp slt i32 %i.fv, 16
  br i1 %i.fy, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i1164 = icmp eq ptr %i.ga, null
  br i1 %.not9.i.i1164, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gb = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ga, i64 noundef 128) #32
  br label %Vec_PtrGrow.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.gc = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #31
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.af, %bb.ae
  %i.gd = phi ptr [ %i.gb, %bb.ae ], [ %i.gc, %bb.af ]
  store ptr %i.gd, ptr %i.fz, align 8, !tbaa !31
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.ag:                                            ; preds = %bb.ac
  %i.ge = icmp samesign ult i32 %i.fv, 1073741823
  %i.gf = shl nuw nsw i32 %i.fv, 1
  %spec.select.i1162 = select i1 %i.ge, i32 %i.gf, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.fv, %spec.select.i1162
  br i1 %.not.i10.i, label %bb.ah, label %Vec_PtrPush.exit

bb.ah:                                            ; preds = %bb.ag
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !31 ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.gh, null
  %i.gi = zext nneg i32 %spec.select.i1162 to i64
  %i.gj = shl nuw nsw i64 %i.gi, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gk = call ptr @realloc(ptr noundef nonnull %i.gh, i64 noundef %i.gj) #32
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.gl = call noalias ptr @malloc(i64 noundef %i.gj) #31
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gm = phi ptr [ %i.gk, %bb.ai ], [ %i.gl, %bb.aj ]
  store ptr %i.gm, ptr %i.gg, align 8, !tbaa !31
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.ak, %Vec_PtrGrow.exit.i
  %spec.select.sink.i1163 = phi i32 [ %spec.select.i1162, %bb.ak ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i1163, ptr %i.ft, align 8, !tbaa !30
  %.pre2990 = load i32, ptr %i.fu, align 4, !tbaa !27
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %.critedge15, %bb.ag, %Vec_PtrGrow.exit12.sink.split.i
  %i.gn = phi i32 [ %i.fv, %.critedge15 ], [ %i.fv, %bb.ag ], [ %.pre2990, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !31
  %i.gq = add nsw i32 %i.gn, 1
  store i32 %i.gq, ptr %i.fu, align 4, !tbaa !27
  %i.gr = sext i32 %i.gn to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.gr
  store ptr %i.fd, ptr %i.gs, align 8, !tbaa !89
  %.not.i1165 = icmp eq ptr %i.el, null
  br i1 %.not.i1165, label %.loopexit2029, label %bb.al

bb.al:                                            ; preds = %Vec_PtrPush.exit
  call void @free(ptr noundef nonnull %i.el) #28
  br label %.loopexit2029

bb.am:                                            ; preds = %bb.i
  %i.gt = load ptr, ptr %i.ag, align 8, !tbaa !34
  %.not1029 = icmp eq ptr %i.gt, null
  br i1 %.not1029, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gu = call i32 (ptr, ptr, ptr, ...) @Wlc_PrsWriteErrorMessage(ptr noundef nonnull %0, ptr noundef nonnull %.0752.lcssa, ptr noundef nonnull @.str.30) ; 0 uses
  br label %.loopexit2030

bb.ao:                                            ; preds = %bb.am
  %i.gv = load ptr, ptr %i.ab, align 8, !tbaa !25
  %i.gw = getelementptr i8, ptr %i.gv, i64 4
  %.val1069 = load i32, ptr %i.gw, align 4, !tbaa !19
  %i.gx = call ptr @Wlc_NtkAlloc(ptr noundef nonnull %.129.i, i32 noundef %.val1069) #28
  store ptr %i.gx, ptr %i.ag, align 8, !tbaa !34
  %i.gy = load ptr, ptr %i.ab, align 8, !tbaa !25
  %i.gz = getelementptr i8, ptr %i.gy, i64 4
  %.val1068 = load i32, ptr %i.gz, align 4, !tbaa !19
  %i.ha = call ptr @Abc_NamStart(i32 noundef %.val1068, i32 noundef 20) #28
  %i.hb = load ptr, ptr %i.ag, align 8, !tbaa !34 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 688
  store ptr %i.ha, ptr %i.hc, align 8, !tbaa !81
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 664
  %i.he = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !89
  store ptr null, ptr %i.ai, align 8, !tbaa !33
  store <2 x ptr> %i.he, ptr %i.hd, align 8, !tbaa !89
  store ptr null, ptr %i.aj, align 8, !tbaa !32
  %i.hf = load ptr, ptr @Wlc_PrsStrtok.last, align 8, !tbaa !60 ; 2 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %Wlc_PrsStrtok.exit1185.thread, label %.preheader1995

Wlc_PrsStrtok.exit1185.thread:                    ; preds = %bb.ay, %bb.ao
  store ptr null, ptr %i.a, align 8, !tbaa !60
  br label %.loopexit2029

.loopexit41.i1170:                                ; preds = %.preheader1995, %.preheader1995, %.preheader1995
  %i.hh = getelementptr inbounds nuw i8, ptr %.129.i1167, i64 1
  br label %.preheader1995.backedge

.preheader1995.backedge:                          ; preds = %.loopexit41.i1170, %bb.ay
  %.129.i1167.be = phi ptr [ %i.hh, %.loopexit41.i1170 ], [ %i.hy, %bb.ay ]
  br label %.preheader1995, !llvm.loop !90

.preheader1995:                                   ; preds = %bb.ao, %.preheader1995.backedge
  %.129.i1167 = phi ptr [ %.129.i1167.be, %.preheader1995.backedge ], [ %i.hf, %bb.ao ] ; 5 uses
  %i.hi = load i8, ptr %.129.i1167, align 1, !tbaa !42 ; 2 uses
  switch i8 %i.hi, label %.preheader40.i1172 [
    i8 40, label %.loopexit41.i1170
    i8 44, label %.loopexit41.i1170
    i8 41, label %.loopexit41.i1170
    i8 0, label %Wlc_PrsStrtok.exit1185
  ]

.preheader40.i1172:                               ; preds = %.preheader1995, %.loopexit.i1178
  %i.hj = phi i8 [ %.pre.i1179, %.loopexit.i1178 ], [ %i.hi, %.preheader1995 ] ; 2 uses
  %.2.i1173 = phi ptr [ %.4.i1174, %.loopexit.i1178 ], [ %.129.i1167, %.preheader1995 ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.2.i1173, i64 1 ; 2 uses
  %i.hl = icmp eq i8 %i.hj, 92
  br i1 %i.hl, label %.preheader.i1182, label %bb.aq

.preheader.i1182:                                 ; preds = %.preheader40.i1172, %.preheader.i1182
  %.342.i1183 = phi ptr [ %i.hm, %.preheader.i1182 ], [ %i.hk, %.preheader40.i1172 ] ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.342.i1183, i64 1 ; 2 uses
  %i.hn = load i8, ptr %.342.i1183, align 1, !tbaa !42
  %.not38.i1184 = icmp eq i8 %i.hn, 32
  br i1 %.not38.i1184, label %bb.ap, label %.preheader.i1182, !llvm.loop !63

bb.ap:                                            ; preds = %.preheader.i1182
  %i.ho = getelementptr inbounds nuw i8, ptr %.342.i1183, i64 2
  %i.hp = load i8, ptr %i.hm, align 1, !tbaa !42
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.preheader40.i1172
  %.4.i1174 = phi ptr [ %i.ho, %bb.ap ], [ %i.hk, %.preheader40.i1172 ] ; 4 uses
  %.1.in.i1175 = phi i8 [ %i.hp, %bb.ap ], [ %i.hj, %.preheader40.i1172 ]
  switch i8 %.1.in.i1175, label %.loopexit.i1178 [
    i8 0, label %.loopexit
    i8 40, label %bb.ar
    i8 41, label %bb.ar
    i8 44, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq, %bb.aq
  %i.hq = getelementptr inbounds i8, ptr %.4.i1174, i64 -1
  store i8 0, ptr %i.hq, align 1, !tbaa !42
  br label %.loopexit

.loopexit.i1178:                                  ; preds = %bb.aq
  %.pre.i1179 = load i8, ptr %.4.i1174, align 1, !tbaa !42
  br label %.preheader40.i1172, !llvm.loop !62

Wlc_PrsStrtok.exit1185:                           ; preds = %.preheader1995
  store ptr null, ptr @Wlc_PrsStrtok.last, align 8, !tbaa !60
  store ptr null, ptr %i.a, align 8, !tbaa !60
  br label %.loopexit2029

.loopexit:                                        ; preds = %bb.aq, %bb.ar
  %.5.sink.i1180.ph = phi ptr [ %.4.i1174, %bb.ar ], [ null, %bb.aq ] ; 2 uses
  store ptr %.5.sink.i1180.ph, ptr @Wlc_PrsStrtok.last, align 8, !tbaa !60
  store ptr %.129.i1167, ptr %i.a, align 8, !tbaa !60
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.loopexit
  %.0.i = phi ptr [ %.129.i1167, %.loopexit ], [ %i.hs, %bb.as ] ; 8 uses
  %i.hr = load i8, ptr %.0.i, align 1, !tbaa !42
  %cond.i1186 = icmp eq i8 %i.hr, 32
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %cond.i1186, label %bb.as, label %Wlc_PrsSkipSpaces.exit, !llvm.loop !58

Wlc_PrsSkipSpaces.exit:                           ; preds = %bb.as
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !60
  br i1 %.not997, label %bb.au, label %bb.at

bb.at:                                            ; preds = %Wlc_PrsSkipSpaces.exit
  %i.ht = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %.0.i, ptr noundef nonnull dereferenceable(5) @.str.18, i64 noundef 4) #30
  %.not.i1187.not = icmp eq i32 %i.ht, 0
  br i1 %.not.i1187.not, label %.loopexit2030, label %bb.au

bb.au:                                            ; preds = %bb.at, %Wlc_PrsSkipSpaces.exit
  %i.hu = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %.0.i, ptr noundef nonnull dereferenceable(6) @.str.16, i64 noundef 5) #30
end_hunk_0
