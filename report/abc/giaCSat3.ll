Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaCSat3?download=true
inline.NumInlined: 322
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Cbs3_ManSolveMiterNc:bb.a
  %i.fh = sext i32 %i.fe to i64                   ; 2 uses
  br i1 %.not9.i.i19.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fi = call ptr @realloc(ptr noundef nonnull %i.fg, i64 noundef %i.fh) #25
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.fj = call noalias ptr @malloc(i64 noundef %i.fh) #24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fk = phi ptr [ %i.fi, %bb.z ], [ %i.fj, %bb.aa ]
  store ptr %i.fk, ptr %i.aq, align 8, !tbaa !47
  store i32 %i.fe, ptr %i.ap, align 8, !tbaa !46
  br label %Vec_StrGrow.exit.i15.i.i

Vec_StrGrow.exit.i15.i.i:                         ; preds = %bb.ab, %Vec_StrFill.exit.i.i
  store i32 %i.fe, ptr %i.ar, align 4, !tbaa !48
  %i.fl = icmp sgt i32 %i.fe, 0
  br i1 %i.fl, label %.lr.ph.i16.i.i, label %Vec_StrFill.exit20.i.i

.lr.ph.i16.i.i:                                   ; preds = %Vec_StrGrow.exit.i15.i.i, %.lr.ph.i16.i.i
  %indvars.iv.i17.i.i = phi i64 [ %indvars.iv.next.i18.i.i, %.lr.ph.i16.i.i ], [ 0, %Vec_StrGrow.exit.i15.i.i ] ; 2 uses
  %i.fm = load ptr, ptr %i.aq, align 8, !tbaa !47
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv.i17.i.i
  store i8 0, ptr %i.fn, align 1, !tbaa !49
  %indvars.iv.next.i18.i.i = add nuw nsw i64 %indvars.iv.i17.i.i, 1 ; 2 uses
  %i.fo = load i32, ptr %i.ar, align 4, !tbaa !48
  %i.fp = sext i32 %i.fo to i64
  %i.fq = icmp slt i64 %indvars.iv.next.i18.i.i, %i.fp
  br i1 %i.fq, label %.lr.ph.i16.i.i, label %Vec_StrFill.exit20.i.i, !llvm.loop !130

Vec_StrFill.exit20.i.i:                           ; preds = %.lr.ph.i16.i.i, %Vec_StrGrow.exit.i15.i.i
  %i.fr = load i32, ptr %i.al, align 4, !tbaa !45 ; 2 uses
  %i.fs = mul nsw i32 %i.fr, 3                    ; 5 uses
  %i.ft = load i32, ptr %i.as, align 8, !tbaa !35
  %.not.i.i21.i.i = icmp slt i32 %i.ft, %i.fs
  br i1 %.not.i.i21.i.i, label %bb.ac, label %Vec_IntGrow.exit.i.i.i

bb.ac:                                            ; preds = %Vec_StrFill.exit20.i.i
  %i.fu = load ptr, ptr %i.at, align 8, !tbaa !36 ; 2 uses
  %.not9.i.i25.i.i = icmp eq ptr %i.fu, null
  %i.fv = sext i32 %i.fs to i64
  %i.fw = shl nsw i64 %i.fv, 2                    ; 2 uses
  br i1 %.not9.i.i25.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fx = call ptr @realloc(ptr noundef nonnull %i.fu, i64 noundef %i.fw) #25
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.fy = call noalias ptr @malloc(i64 noundef %i.fw) #24
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fz = phi ptr [ %i.fx, %bb.ad ], [ %i.fy, %bb.ae ]
  store ptr %i.fz, ptr %i.at, align 8, !tbaa !36
  store i32 %i.fs, ptr %i.as, align 8, !tbaa !35
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %bb.af, %Vec_StrFill.exit20.i.i
  %i.ga = icmp sgt i32 %i.fr, 0
  br i1 %i.ga, label %.lr.ph.i22.i.i, label %Vec_IntFill.exit.i.i

.lr.ph.i22.i.i:                                   ; preds = %Vec_IntGrow.exit.i.i.i
  %i.gb = load ptr, ptr %i.at, align 8, !tbaa !36
  %wide.trip.count.i.i12.i = zext nneg i32 %i.fs to i64
  %i.gc = shl nuw nsw i64 %wide.trip.count.i.i12.i, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gb, i8 -1, i64 %i.gc, i1 false), !tbaa !40
  br label %Vec_IntFill.exit.i.i

Vec_IntFill.exit.i.i:                             ; preds = %.lr.ph.i22.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.fs, ptr %i.au, align 4, !tbaa !34
  %i.gd = load i32, ptr %i.al, align 4, !tbaa !45 ; 6 uses
  %i.ge = load i32, ptr %i.av, align 8, !tbaa !35
  %.not.i.i26.i.i = icmp slt i32 %i.ge, %i.gd
  br i1 %.not.i.i26.i.i, label %bb.ag, label %Vec_IntGrow.exit.i27.i.i

bb.ag:                                            ; preds = %Vec_IntFill.exit.i.i
  %i.gf = load ptr, ptr %i.aw, align 8, !tbaa !36 ; 2 uses
  %.not9.i.i33.i.i = icmp eq ptr %i.gf, null
  %i.gg = sext i32 %i.gd to i64
  %i.gh = shl nsw i64 %i.gg, 2                    ; 2 uses
  br i1 %.not9.i.i33.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gi = call ptr @realloc(ptr noundef nonnull %i.gf, i64 noundef %i.gh) #25
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.gj = call noalias ptr @malloc(i64 noundef %i.gh) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gk = phi ptr [ %i.gi, %bb.ah ], [ %i.gj, %bb.ai ]
  store ptr %i.gk, ptr %i.aw, align 8, !tbaa !36
  store i32 %i.gd, ptr %i.av, align 8, !tbaa !35
  br label %Vec_IntGrow.exit.i27.i.i

Vec_IntGrow.exit.i27.i.i:                         ; preds = %bb.aj, %Vec_IntFill.exit.i.i
  %i.gl = icmp sgt i32 %i.gd, 0
  br i1 %i.gl, label %.lr.ph.i28.i.i, label %Vec_IntFill.exit34.i.i

.lr.ph.i28.i.i:                                   ; preds = %Vec_IntGrow.exit.i27.i.i
  %i.gm = load ptr, ptr %i.aw, align 8, !tbaa !36
  %wide.trip.count.i29.i.i = zext nneg i32 %i.gd to i64
  %i.gn = shl nuw nsw i64 %wide.trip.count.i29.i.i, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gm, i8 0, i64 %i.gn, i1 false), !tbaa !40
  br label %Vec_IntFill.exit34.i.i

Vec_IntFill.exit34.i.i:                           ; preds = %.lr.ph.i28.i.i, %Vec_IntGrow.exit.i27.i.i
  store i32 %i.gd, ptr %i.ax, align 4, !tbaa !34
  %i.go = load i32, ptr %i.al, align 4, !tbaa !45 ; 2 uses
  %i.gp = shl nsw i32 %i.go, 1                    ; 5 uses
  %i.gq = load i32, ptr %i.ay, align 8, !tbaa !35
  %.not.i.i35.i.i = icmp slt i32 %i.gq, %i.gp
  br i1 %.not.i.i35.i.i, label %bb.ak, label %Vec_IntGrow.exit.i36.i.i

bb.ak:                                            ; preds = %Vec_IntFill.exit34.i.i
  %i.gr = load ptr, ptr %i.az, align 8, !tbaa !36 ; 2 uses
  %.not9.i.i42.i.i = icmp eq ptr %i.gr, null
  %i.gs = sext i32 %i.gp to i64
  %i.gt = shl nsw i64 %i.gs, 2                    ; 2 uses
  br i1 %.not9.i.i42.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gu = call ptr @realloc(ptr noundef nonnull %i.gr, i64 noundef %i.gt) #25
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.gv = call noalias ptr @malloc(i64 noundef %i.gt) #24
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gw = phi ptr [ %i.gu, %bb.al ], [ %i.gv, %bb.am ]
  store ptr %i.gw, ptr %i.az, align 8, !tbaa !36
  store i32 %i.gp, ptr %i.ay, align 8, !tbaa !35
  br label %Vec_IntGrow.exit.i36.i.i

Vec_IntGrow.exit.i36.i.i:                         ; preds = %bb.an, %Vec_IntFill.exit34.i.i
  %i.gx = icmp sgt i32 %i.go, 0
  br i1 %i.gx, label %.lr.ph.i37.i.i, label %Vec_IntFill.exit43.i.i

.lr.ph.i37.i.i:                                   ; preds = %Vec_IntGrow.exit.i36.i.i
  %i.gy = load ptr, ptr %i.az, align 8, !tbaa !36
  %wide.trip.count.i38.i.i = zext nneg i32 %i.gp to i64
  %i.gz = shl nuw nsw i64 %wide.trip.count.i38.i.i, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gy, i8 0, i64 %i.gz, i1 false), !tbaa !40
  br label %Vec_IntFill.exit43.i.i

Vec_IntFill.exit43.i.i:                           ; preds = %.lr.ph.i37.i.i, %Vec_IntGrow.exit.i36.i.i
  store i32 %i.gp, ptr %i.ba, align 4, !tbaa !34
  %.pre.i = load i32, ptr %i.ak, align 8, !tbaa !44
  br label %Cbs3_ManGrow.exit.i

Cbs3_ManGrow.exit.i:                              ; preds = %Vec_IntFill.exit43.i.i, %Cbs3_ManReset.exit.i
  %i.ha = phi i32 [ %i.ep, %Cbs3_ManReset.exit.i ], [ %.pre.i, %Vec_IntFill.exit43.i.i ]
  %i.hb = shl nsw i32 %i.ha, 1                    ; 5 uses
  %i.hc = load i32, ptr %i.bb, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i16.i = icmp slt i32 %i.hc, %i.hb
  br i1 %.not.i.i.i16.i, label %bb.ao, label %Vec_WecInit.exit.i.i

bb.ao:                                            ; preds = %Cbs3_ManGrow.exit.i
  %i.hd = load ptr, ptr %i.aj, align 8, !tbaa !43 ; 2 uses
  %.not13.i.i.i.i = icmp eq ptr %i.hd, null
  %i.he = sext i32 %i.hb to i64
  %i.hf = shl nsw i64 %i.he, 4                    ; 2 uses
  br i1 %.not13.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hg = call ptr @realloc(ptr noundef nonnull %i.hd, i64 noundef %i.hf) #25
  %.pre.i.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !42
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.hh = call noalias ptr @malloc(i64 noundef %i.hf) #24
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.hi = phi i32 [ %.pre.i.i.i.i, %bb.ap ], [ %i.hc, %bb.aq ] ; 2 uses
  %i.hj = phi ptr [ %i.hg, %bb.ap ], [ %i.hh, %bb.aq ] ; 2 uses
  store ptr %i.hj, ptr %i.aj, align 8, !tbaa !43
  %i.hk = sext i32 %i.hi to i64
  %i.hl = getelementptr inbounds [16 x i8], ptr %i.hj, i64 %i.hk
  %i.hm = sub nsw i32 %i.hb, %i.hi
  %i.hn = sext i32 %i.hm to i64
  %i.ho = shl nsw i64 %i.hn, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.hl, i8 0, i64 %i.ho, i1 false)
  store i32 %i.hb, ptr %i.bb, align 8, !tbaa !42
  br label %Vec_WecInit.exit.i.i

Vec_WecInit.exit.i.i:                             ; preds = %bb.ar, %Cbs3_ManGrow.exit.i
  store i32 %i.hb, ptr %i.ai, align 4, !tbaa !41
  %.val1618.i.i = load i32, ptr %i.ah, align 4, !tbaa !34 ; 2 uses
  %i.hp = icmp sgt i32 %.val1618.i.i, 3
  br i1 %i.hp, label %.critedge.i.i, label %Cbs3_ManToSolver2.exit

.critedge.i.i:                                    ; preds = %Vec_WecInit.exit.i.i, %bb.cc
  %.val1625.i.i = phi i32 [ %.val16.i.i, %bb.cc ], [ %.val1618.i.i, %Vec_WecInit.exit.i.i ]
  %indvars.iv20.i.i = phi i64 [ %indvars.iv.next21.i.i, %bb.cc ], [ 2, %Vec_WecInit.exit.i.i ] ; 11 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.cc ], [ 3, %Vec_WecInit.exit.i.i ] ; 2 uses
  %.val15.i.i = load ptr, ptr %i.bc, align 8, !tbaa !36 ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.val15.i.i, i64 %indvars.iv20.i.i
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !40 ; 6 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.val15.i.i, i64 %indvars.iv.i.i
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !40 ; 5 uses
  %.not.i.i = icmp eq i32 %i.hr, 0
  br i1 %.not.i.i, label %.critedge.i._crit_edge.i, label %bb.as

.critedge.i._crit_edge.i:                         ; preds = %.critedge.i.i
  %.pre17.i = trunc i64 %indvars.iv20.i.i to i32
  br label %bb.cc

bb.as:                                            ; preds = %.critedge.i.i
  %i.hu = load i32, ptr %i.ai, align 4, !tbaa !41 ; 2 uses
  %i.hv = sext i32 %i.hu to i64
  %.not.i.i17.i.i = icmp slt i64 %indvars.iv20.i.i, %i.hv
  br i1 %.not.i.i17.i.i, label %Vec_WecPushTwo.exit.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hw = shl nsw i32 %i.hu, 1
  %i.hx = trunc i64 %indvars.iv20.i.i to i32
  %i.hy = or disjoint i32 %i.hx, 1                ; 2 uses
  %i.hz = call noundef i32 @llvm.smax.i32(i32 %i.hw, i32 %i.hy) ; 4 uses
  %i.ia = load i32, ptr %i.bb, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i.i.i = icmp slt i32 %i.ia, %i.hz
  br i1 %.not.i.i.i.i.i, label %bb.au, label %Vec_WecGrow.exit.i.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.ib = load ptr, ptr %i.aj, align 8, !tbaa !43 ; 2 uses
  %.not13.i.i.i.i.i = icmp eq ptr %i.ib, null
  %i.ic = zext nneg i32 %i.hz to i64
  %i.id = shl nuw nsw i64 %i.ic, 4                ; 2 uses
  br i1 %.not13.i.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ie = call ptr @realloc(ptr noundef nonnull %i.ib, i64 noundef %i.id) #25
  %.pre.i.i.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !42
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.if = call noalias ptr @malloc(i64 noundef %i.id) #24
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ig = phi i32 [ %.pre.i.i.i.i.i, %bb.av ], [ %i.ia, %bb.aw ] ; 2 uses
  %i.ih = phi ptr [ %i.ie, %bb.av ], [ %i.if, %bb.aw ] ; 2 uses
  store ptr %i.ih, ptr %i.aj, align 8, !tbaa !43
  %i.ii = sext i32 %i.ig to i64
  %i.ij = getelementptr inbounds [16 x i8], ptr %i.ih, i64 %i.ii
  %i.ik = sub nsw i32 %i.hz, %i.ig
  %i.il = sext i32 %i.ik to i64
  %i.im = shl nsw i64 %i.il, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.ij, i8 0, i64 %i.im, i1 false)
  store i32 %i.hz, ptr %i.bb, align 8, !tbaa !42
  br label %Vec_WecGrow.exit.i.i.i.i

Vec_WecGrow.exit.i.i.i.i:                         ; preds = %bb.ax, %bb.at
  store i32 %i.hy, ptr %i.ai, align 4, !tbaa !41
  br label %Vec_WecPushTwo.exit.i.i.i

Vec_WecPushTwo.exit.i.i.i:                        ; preds = %Vec_WecGrow.exit.i.i.i.i, %bb.as
  %.val.i.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.in = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i, i64 %indvars.iv20.i.i
  call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.in, i32 noundef range(i32 1, 0) %i.hr, i32 noundef 0)
  %i.io = load i32, ptr %i.ai, align 4, !tbaa !41 ; 2 uses
  %i.ip = sext i32 %i.io to i64
  %.not.i23.i.i.i = icmp slt i64 %indvars.iv20.i.i, %i.ip
  %.pre.i.i = or disjoint i64 %indvars.iv20.i.i, 1 ; 4 uses
  br i1 %.not.i23.i.i.i, label %Vec_WecPushTwo.exit29.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %Vec_WecPushTwo.exit.i.i.i
  %i.iq = shl nsw i32 %i.io, 1
  %i.ir = trunc nuw nsw i64 %.pre.i.i to i32      ; 2 uses
  %i.is = call noundef i32 @llvm.smax.i32(i32 %i.iq, i32 %i.ir) ; 4 uses
  %i.it = load i32, ptr %i.bb, align 8, !tbaa !42 ; 2 uses
  %.not.i.i24.i.i.i = icmp slt i32 %i.it, %i.is
  br i1 %.not.i.i24.i.i.i, label %bb.az, label %Vec_WecGrow.exit.i25.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.iu = load ptr, ptr %i.aj, align 8, !tbaa !43 ; 2 uses
  %.not13.i.i27.i.i.i = icmp eq ptr %i.iu, null
  %i.iv = zext nneg i32 %i.is to i64
  %i.iw = shl nuw nsw i64 %i.iv, 4                ; 2 uses
  br i1 %.not13.i.i27.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ix = call ptr @realloc(ptr noundef nonnull %i.iu, i64 noundef %i.iw) #25
  %.pre.i.i28.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !42
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.iy = call noalias ptr @malloc(i64 noundef %i.iw) #24
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.iz = phi i32 [ %.pre.i.i28.i.i.i, %bb.ba ], [ %i.it, %bb.bb ] ; 2 uses
  %i.ja = phi ptr [ %i.ix, %bb.ba ], [ %i.iy, %bb.bb ] ; 2 uses
  store ptr %i.ja, ptr %i.aj, align 8, !tbaa !43
  %i.jb = sext i32 %i.iz to i64
  %i.jc = getelementptr inbounds [16 x i8], ptr %i.ja, i64 %i.jb
  %i.jd = sub nsw i32 %i.is, %i.iz
  %i.je = sext i32 %i.jd to i64
  %i.jf = shl nsw i64 %i.je, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.jc, i8 0, i64 %i.jf, i1 false)
  store i32 %i.is, ptr %i.bb, align 8, !tbaa !42
  br label %Vec_WecGrow.exit.i25.i.i.i

Vec_WecGrow.exit.i25.i.i.i:                       ; preds = %bb.bc, %bb.ay
  store i32 %i.ir, ptr %i.ai, align 4, !tbaa !41
  br label %Vec_WecPushTwo.exit29.i.i.i

Vec_WecPushTwo.exit29.i.i.i:                      ; preds = %Vec_WecGrow.exit.i25.i.i.i, %Vec_WecPushTwo.exit.i.i.i
  %.val.i26.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %.val.i26.i.i.i, i64 %indvars.iv20.i.i
  call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.jg, i32 noundef %i.ht, i32 noundef 0)
  %i.jh = xor i32 %i.hr, 1                        ; 5 uses
  %i.ji = load i32, ptr %i.ai, align 4, !tbaa !41 ; 2 uses
  %.not.i30.i.i.i = icmp sgt i32 %i.ji, %i.jh
  br i1 %.not.i30.i.i.i, label %Vec_WecPushTwo.exit36.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %Vec_WecPushTwo.exit29.i.i.i
  %i.jj = add nsw i32 %i.jh, 1                    ; 2 uses
  %i.jk = shl nsw i32 %i.ji, 1
  %i.jl = call noundef i32 @llvm.smax.i32(i32 %i.jk, i32 %i.jj) ; 4 uses
  %i.jm = load i32, ptr %i.bb, align 8, !tbaa !42 ; 2 uses
  %.not.i.i31.i.i.i = icmp slt i32 %i.jm, %i.jl
  br i1 %.not.i.i31.i.i.i, label %bb.be, label %Vec_WecGrow.exit.i32.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.jn = load ptr, ptr %i.aj, align 8, !tbaa !43 ; 2 uses
  %.not13.i.i34.i.i.i = icmp eq ptr %i.jn, null
  %i.jo = sext i32 %i.jl to i64
  %i.jp = shl nsw i64 %i.jo, 4                    ; 2 uses
  br i1 %.not13.i.i34.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jq = call ptr @realloc(ptr noundef nonnull %i.jn, i64 noundef %i.jp) #25
  %.pre.i.i35.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !42
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.jr = call noalias ptr @malloc(i64 noundef %i.jp) #24
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.js = phi i32 [ %.pre.i.i35.i.i.i, %bb.bf ], [ %i.jm, %bb.bg ] ; 2 uses
  %i.jt = phi ptr [ %i.jq, %bb.bf ], [ %i.jr, %bb.bg ] ; 2 uses
  store ptr %i.jt, ptr %i.aj, align 8, !tbaa !43
  %i.ju = sext i32 %i.js to i64
  %i.jv = getelementptr inbounds [16 x i8], ptr %i.jt, i64 %i.ju
  %i.jw = sub nsw i32 %i.jl, %i.js
  %i.jx = sext i32 %i.jw to i64
  %i.jy = shl nsw i64 %i.jx, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.jv, i8 0, i64 %i.jy, i1 false)
  store i32 %i.jl, ptr %i.bb, align 8, !tbaa !42
  br label %Vec_WecGrow.exit.i32.i.i.i

Vec_WecGrow.exit.i32.i.i.i:                       ; preds = %bb.bh, %bb.bd
  store i32 %i.jj, ptr %i.ai, align 4, !tbaa !41
  br label %Vec_WecPushTwo.exit36.i.i.i

Vec_WecPushTwo.exit36.i.i.i:                      ; preds = %Vec_WecGrow.exit.i32.i.i.i, %Vec_WecPushTwo.exit29.i.i.i
  %.val.i33.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.jz = sext i32 %i.jh to i64
  %i.ka = getelementptr inbounds [16 x i8], ptr %.val.i33.i.i.i, i64 %i.jz
  %i.kb = trunc nuw nsw i64 %.pre.i.i to i32      ; 2 uses
  call fastcc void @Vec_IntPushTwo(ptr noundef %i.ka, i32 noundef %i.kb, i32 noundef 0)
  %i.kc = xor i32 %i.ht, 1                        ; 5 uses
  %i.kd = load i32, ptr %i.ai, align 4, !tbaa !41 ; 2 uses
  %.not.i37.i.i.i = icmp sgt i32 %i.kd, %i.kc
  br i1 %.not.i37.i.i.i, label %Vec_WecPushTwo.exit43.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %Vec_WecPushTwo.exit36.i.i.i
  %i.ke = add nsw i32 %i.kc, 1                    ; 2 uses
  %i.kf = shl nsw i32 %i.kd, 1
  %i.kg = call noundef i32 @llvm.smax.i32(i32 %i.kf, i32 %i.ke) ; 4 uses
  %i.kh = load i32, ptr %i.bb, align 8, !tbaa !42 ; 2 uses
  %.not.i.i38.i.i.i = icmp slt i32 %i.kh, %i.kg
  br i1 %.not.i.i38.i.i.i, label %bb.bj, label %Vec_WecGrow.exit.i39.i.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.ki = load ptr, ptr %i.aj, align 8, !tbaa !43 ; 2 uses
  %.not13.i.i41.i.i.i = icmp eq ptr %i.ki, null
  %i.kj = sext i32 %i.kg to i64
  %i.kk = shl nsw i64 %i.kj, 4                    ; 2 uses
  br i1 %.not13.i.i41.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kl = call ptr @realloc(ptr noundef nonnull %i.ki, i64 noundef %i.kk) #25
  %.pre.i.i42.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !42
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.km = call noalias ptr @malloc(i64 noundef %i.kk) #24
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.kn = phi i32 [ %.pre.i.i42.i.i.i, %bb.bk ], [ %i.kh, %bb.bl ] ; 2 uses
  %i.ko = phi ptr [ %i.kl, %bb.bk ], [ %i.km, %bb.bl ] ; 2 uses
  store ptr %i.ko, ptr %i.aj, align 8, !tbaa !43
  %i.kp = sext i32 %i.kn to i64
  %i.kq = getelementptr inbounds [16 x i8], ptr %i.ko, i64 %i.kp
  %i.kr = sub nsw i32 %i.kg, %i.kn
  %i.ks = sext i32 %i.kr to i64
  %i.kt = shl nsw i64 %i.ks, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.kq, i8 0, i64 %i.kt, i1 false)
  store i32 %i.kg, ptr %i.bb, align 8, !tbaa !42
  br label %Vec_WecGrow.exit.i39.i.i.i

Vec_WecGrow.exit.i39.i.i.i:                       ; preds = %bb.bm, %bb.bi
  store i32 %i.ke, ptr %i.ai, align 4, !tbaa !41
  br label %Vec_WecPushTwo.exit43.i.i.i

Vec_WecPushTwo.exit43.i.i.i:                      ; preds = %Vec_WecGrow.exit.i39.i.i.i, %Vec_WecPushTwo.exit36.i.i.i
  %.val.i40.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.ku = sext i32 %i.kc to i64
  %i.kv = getelementptr inbounds [16 x i8], ptr %.val.i40.i.i.i, i64 %i.ku
  call fastcc void @Vec_IntPushTwo(ptr noundef %i.kv, i32 noundef %i.kb, i32 noundef 0)
  %i.kw = load i32, ptr %i.ai, align 4, !tbaa !41 ; 2 uses
  %i.kx = sext i32 %i.kw to i64
  %.not.i44.i.i.i = icmp slt i64 %.pre.i.i, %i.kx
  br i1 %.not.i44.i.i.i, label %Vec_WecPushTwo.exit50.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %Vec_WecPushTwo.exit43.i.i.i
  %i.ky = shl nsw i32 %i.kw, 1
  %i.kz = trunc i64 %indvars.iv20.i.i to i32
  %i.la = add i32 %i.kz, 2                        ; 2 uses
  %i.lb = call noundef i32 @llvm.smax.i32(i32 %i.ky, i32 %i.la) ; 4 uses
  %i.lc = load i32, ptr %i.bb, align 8, !tbaa !42 ; 2 uses
  %.not.i.i45.i.i.i = icmp slt i32 %i.lc, %i.lb
  br i1 %.not.i.i45.i.i.i, label %bb.bo, label %Vec_WecGrow.exit.i46.i.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.ld = load ptr, ptr %i.aj, align 8, !tbaa !43 ; 2 uses
  %.not13.i.i48.i.i.i = icmp eq ptr %i.ld, null
  %i.le = zext nneg i32 %i.lb to i64
  %i.lf = shl nuw nsw i64 %i.le, 4                ; 2 uses
  br i1 %.not13.i.i48.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lg = call ptr @realloc(ptr noundef nonnull %i.ld, i64 noundef %i.lf) #25
  %.pre.i.i49.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !42
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.lh = call noalias ptr @malloc(i64 noundef %i.lf) #24
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.li = phi i32 [ %.pre.i.i49.i.i.i, %bb.bp ], [ %i.lc, %bb.bq ] ; 2 uses
  %i.lj = phi ptr [ %i.lg, %bb.bp ], [ %i.lh, %bb.bq ] ; 2 uses
  store ptr %i.lj, ptr %i.aj, align 8, !tbaa !43
  %i.lk = sext i32 %i.li to i64
  %i.ll = getelementptr inbounds [16 x i8], ptr %i.lj, i64 %i.lk
  %i.lm = sub nsw i32 %i.lb, %i.li
  %i.ln = sext i32 %i.lm to i64
  %i.lo = shl nsw i64 %i.ln, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.ll, i8 0, i64 %i.lo, i1 false)
  store i32 %i.lb, ptr %i.bb, align 8, !tbaa !42
  br label %Vec_WecGrow.exit.i46.i.i.i

Vec_WecGrow.exit.i46.i.i.i:                       ; preds = %bb.br, %bb.bn
  store i32 %i.la, ptr %i.ai, align 4, !tbaa !41
  br label %Vec_WecPushTwo.exit50.i.i.i

Vec_WecPushTwo.exit50.i.i.i:                      ; preds = %Vec_WecGrow.exit.i46.i.i.i, %Vec_WecPushTwo.exit43.i.i.i
  %.val.i47.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.lp = getelementptr inbounds nuw [16 x i8], ptr %.val.i47.i.i.i, i64 %.pre.i.i
  call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.lp, i32 noundef %i.jh, i32 noundef %i.kc)
  %i.lq = load i32, ptr %i.ai, align 4, !tbaa !41 ; 2 uses
  %.not.i51.i.i.i = icmp sgt i32 %i.lq, %i.hr
  br i1 %.not.i51.i.i.i, label %Vec_WecPushTwo.exit57.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %Vec_WecPushTwo.exit50.i.i.i
  %i.lr = add nsw i32 %i.hr, 1                    ; 2 uses
  %i.ls = shl nsw i32 %i.lq, 1
  %i.lt = call noundef i32 @llvm.smax.i32(i32 %i.ls, i32 %i.lr) ; 4 uses
  %i.lu = load i32, ptr %i.bb, align 8, !tbaa !42 ; 2 uses
  %.not.i.i52.i.i.i = icmp slt i32 %i.lu, %i.lt
  br i1 %.not.i.i52.i.i.i, label %bb.bt, label %Vec_WecGrow.exit.i53.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.lv = load ptr, ptr %i.aj, align 8, !tbaa !43 ; 2 uses
  %.not13.i.i55.i.i.i = icmp eq ptr %i.lv, null
  %i.lw = sext i32 %i.lt to i64
  %i.lx = shl nsw i64 %i.lw, 4                    ; 2 uses
  br i1 %.not13.i.i55.i.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ly = call ptr @realloc(ptr noundef nonnull %i.lv, i64 noundef %i.lx) #25
  %.pre.i.i56.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !42
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.lz = call noalias ptr @malloc(i64 noundef %i.lx) #24
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ma = phi i32 [ %.pre.i.i56.i.i.i, %bb.bu ], [ %i.lu, %bb.bv ] ; 2 uses
  %i.mb = phi ptr [ %i.ly, %bb.bu ], [ %i.lz, %bb.bv ] ; 2 uses
  store ptr %i.mb, ptr %i.aj, align 8, !tbaa !43
  %i.mc = sext i32 %i.ma to i64
  %i.md = getelementptr inbounds [16 x i8], ptr %i.mb, i64 %i.mc
  %i.me = sub nsw i32 %i.lt, %i.ma
  %i.mf = sext i32 %i.me to i64
  %i.mg = shl nsw i64 %i.mf, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.md, i8 0, i64 %i.mg, i1 false)
  store i32 %i.lt, ptr %i.bb, align 8, !tbaa !42
  br label %Vec_WecGrow.exit.i53.i.i.i

Vec_WecGrow.exit.i53.i.i.i:                       ; preds = %bb.bw, %bb.bs
  store i32 %i.lr, ptr %i.ai, align 4, !tbaa !41
  br label %Vec_WecPushTwo.exit57.i.i.i

Vec_WecPushTwo.exit57.i.i.i:                      ; preds = %Vec_WecGrow.exit.i53.i.i.i, %Vec_WecPushTwo.exit50.i.i.i
  %.val.i54.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.mh = sext i32 %i.hr to i64
  %i.mi = getelementptr inbounds [16 x i8], ptr %.val.i54.i.i.i, i64 %i.mh
  %i.mj = trunc i64 %indvars.iv20.i.i to i32      ; 3 uses
  call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.mi, i32 noundef %i.mj, i32 noundef %i.kc)
  %i.mk = load i32, ptr %i.ai, align 4, !tbaa !41 ; 2 uses
  %.not.i58.i.i.i = icmp sgt i32 %i.mk, %i.ht
  br i1 %.not.i58.i.i.i, label %Cbs3_ManAddConstr.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %Vec_WecPushTwo.exit57.i.i.i
  %i.ml = add nsw i32 %i.ht, 1                    ; 2 uses
  %i.mm = shl nsw i32 %i.mk, 1
  %i.mn = call noundef i32 @llvm.smax.i32(i32 %i.mm, i32 %i.ml) ; 4 uses
  %i.mo = load i32, ptr %i.bb, align 8, !tbaa !42 ; 2 uses
  %.not.i.i59.i.i.i = icmp slt i32 %i.mo, %i.mn
  br i1 %.not.i.i59.i.i.i, label %bb.by, label %Vec_WecGrow.exit.i60.i.i.i

bb.by:                                            ; preds = %bb.bx
  %i.mp = load ptr, ptr %i.aj, align 8, !tbaa !43 ; 2 uses
  %.not13.i.i62.i.i.i = icmp eq ptr %i.mp, null
  %i.mq = sext i32 %i.mn to i64
  %i.mr = shl nsw i64 %i.mq, 4                    ; 2 uses
  br i1 %.not13.i.i62.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ms = call ptr @realloc(ptr noundef nonnull %i.mp, i64 noundef %i.mr) #25
  %.pre.i.i63.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !42
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.mt = call noalias ptr @malloc(i64 noundef %i.mr) #24
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.mu = phi i32 [ %.pre.i.i63.i.i.i, %bb.bz ], [ %i.mo, %bb.ca ] ; 2 uses
  %i.mv = phi ptr [ %i.ms, %bb.bz ], [ %i.mt, %bb.ca ] ; 2 uses
  store ptr %i.mv, ptr %i.aj, align 8, !tbaa !43
  %i.mw = sext i32 %i.mu to i64
  %i.mx = getelementptr inbounds [16 x i8], ptr %i.mv, i64 %i.mw
  %i.my = sub nsw i32 %i.mn, %i.mu
  %i.mz = sext i32 %i.my to i64
  %i.na = shl nsw i64 %i.mz, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.mx, i8 0, i64 %i.na, i1 false)
  store i32 %i.mn, ptr %i.bb, align 8, !tbaa !42
  br label %Vec_WecGrow.exit.i60.i.i.i

Vec_WecGrow.exit.i60.i.i.i:                       ; preds = %bb.cb, %bb.bx
  store i32 %i.ml, ptr %i.ai, align 4, !tbaa !41
  br label %Cbs3_ManAddConstr.exit.i.i

Cbs3_ManAddConstr.exit.i.i:                       ; preds = %Vec_WecGrow.exit.i60.i.i.i, %Vec_WecPushTwo.exit57.i.i.i
  %.val.i61.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.nb = sext i32 %i.ht to i64
  %i.nc = getelementptr inbounds [16 x i8], ptr %.val.i61.i.i.i, i64 %i.nb
  call fastcc void @Vec_IntPushTwo(ptr noundef %i.nc, i32 noundef %i.mj, i32 noundef %i.jh)
  %.val16.pre.i.i = load i32, ptr %i.ah, align 4, !tbaa !34
  br label %bb.cc

bb.cc:                                            ; preds = %Cbs3_ManAddConstr.exit.i.i, %.critedge.i._crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre17.i, %.critedge.i._crit_edge.i ], [ %i.mj, %Cbs3_ManAddConstr.exit.i.i ]
  %.val16.i.i = phi i32 [ %.val1625.i.i, %.critedge.i._crit_edge.i ], [ %.val16.pre.i.i, %Cbs3_ManAddConstr.exit.i.i ] ; 2 uses
  %indvars.iv.next21.i.i = add nuw nsw i64 %indvars.iv20.i.i, 2
  %11 = add i32 %.pre-phi.i, 3
  %i.nd = icmp slt i32 %11, %.val16.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 2
  br i1 %i.nd, label %.critedge.i.i, label %Cbs3_ManToSolver2.exit, !llvm.loop !131

Cbs3_ManToSolver2.exit:                           ; preds = %bb.cc, %Vec_WecInit.exit.i.i
  %i.ne = load i64, ptr %i.cb, align 4            ; 2 uses
  %i.nf = and i64 %i.ne, 536870911
  %i.ng = sub nsw i64 0, %i.nf
  %i.nh = getelementptr inbounds [12 x i8], ptr %i.cb, i64 %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !93
  %i.nk = trunc i64 %i.ne to i32
  %i.nl = lshr i32 %i.nk, 29
  %i.nm = and i32 %i.nl, 1
  %i.nn = xor i32 %i.nm, %i.nj
  %i.no = call range(i32 -1, 2) i32 @Cbs3_ManSolve(ptr noundef nonnull %i.f, i32 noundef %i.nn, i32 noundef %i.di) ; 2 uses
  %i.np = trunc nsw i32 %i.no to i8
  %i.nq = icmp eq i32 %i.bv, %i.bu
  br i1 %i.nq, label %bb.cd, label %Vec_StrPush.exit93

bb.cd:                                            ; preds = %Cbs3_ManToSolver2.exit
  %i.nr = icmp slt i32 %i.bu, 16
  br i1 %i.nr, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  %.not9.i.i91 = icmp eq ptr %i.bt, null
  br i1 %.not9.i.i91, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ns = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bt, i64 noundef 16) #25
  br label %Vec_StrGrow.exit11.sink.split.i89

bb.cg:                                            ; preds = %bb.ce
  %i.nt = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24
  br label %Vec_StrGrow.exit11.sink.split.i89

bb.ch:                                            ; preds = %bb.cd
  %i.nu = icmp samesign ult i32 %i.bu, 1073741823
  %i.nv = shl nuw nsw i32 %i.bu, 1
  %spec.select.i86 = select i1 %i.nu, i32 %i.nv, i32 2147483647 ; 4 uses
  %.not.i9.i87 = icmp samesign ult i32 %i.bu, %spec.select.i86
  br i1 %.not.i9.i87, label %bb.ci, label %Vec_StrPush.exit93

bb.ci:                                            ; preds = %bb.ch
  %.not9.i10.i88 = icmp eq ptr %i.bt, null
  %i.nw = zext nneg i32 %spec.select.i86 to i64   ; 2 uses
  br i1 %.not9.i10.i88, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.nx = call ptr @realloc(ptr noundef nonnull %i.bt, i64 noundef %i.nw) #25
  br label %Vec_StrGrow.exit11.sink.split.i89

bb.ck:                                            ; preds = %bb.ci
  %i.ny = call noalias ptr @malloc(i64 noundef %i.nw) #24
  br label %Vec_StrGrow.exit11.sink.split.i89

Vec_StrGrow.exit11.sink.split.i89:                ; preds = %bb.cj, %bb.ck, %bb.cf, %bb.cg
  %storemerge103 = phi ptr [ %i.nt, %bb.cg ], [ %i.ns, %bb.cf ], [ %i.nx, %bb.cj ], [ %i.ny, %bb.ck ] ; 3 uses
  %spec.select.sink.i90 = phi i32 [ 16, %bb.cg ], [ 16, %bb.cf ], [ %spec.select.i86, %bb.cj ], [ %spec.select.i86, %bb.ck ] ; 3 uses
  store ptr %storemerge103, ptr %i.r, align 8, !tbaa !47
  store i32 %spec.select.sink.i90, ptr %i.l, align 8, !tbaa !46
  %.pre = load i32, ptr %i.n, align 4, !tbaa !48
  br label %Vec_StrPush.exit93

Vec_StrPush.exit93:                               ; preds = %Cbs3_ManToSolver2.exit, %bb.ch, %Vec_StrGrow.exit11.sink.split.i89
  %i.nz = phi ptr [ %i.br, %Cbs3_ManToSolver2.exit ], [ %i.br, %bb.ch ], [ %storemerge103, %Vec_StrGrow.exit11.sink.split.i89 ] ; 3 uses
  %i.oa = phi i32 [ %i.bs, %Cbs3_ManToSolver2.exit ], [ %i.bs, %bb.ch ], [ %spec.select.sink.i90, %Vec_StrGrow.exit11.sink.split.i89 ] ; 3 uses
  %i.ob = phi i32 [ %i.bv, %Cbs3_ManToSolver2.exit ], [ %i.bu, %bb.ch ], [ %.pre, %Vec_StrGrow.exit11.sink.split.i89 ] ; 2 uses
  %i.oc = phi ptr [ %i.bt, %Cbs3_ManToSolver2.exit ], [ %i.bt, %bb.ch ], [ %storemerge103, %Vec_StrGrow.exit11.sink.split.i89 ] ; 4 uses
  %i.od = phi i32 [ %i.bu, %Cbs3_ManToSolver2.exit ], [ %i.bu, %bb.ch ], [ %spec.select.sink.i90, %Vec_StrGrow.exit11.sink.split.i89 ] ; 3 uses
  %i.oe = add nsw i32 %i.ob, 1                    ; 4 uses
  store i32 %i.oe, ptr %i.n, align 4, !tbaa !48
  %i.of = sext i32 %i.ob to i64
  %i.og = getelementptr inbounds i8, ptr %i.oc, i64 %i.of
  store i8 %i.np, ptr %i.og, align 1, !tbaa !49
  switch i32 %i.no, label %bb.cp [
    i32 -1, label %bb.cl
    i32 1, label %bb.cn
  ]

bb.cl:                                            ; preds = %Vec_StrPush.exit93
  %i.oh = load i32, ptr %i.bi, align 8, !tbaa !88
  %i.oi = add nsw i32 %i.oh, 1
  store i32 %i.oi, ptr %i.bi, align 8, !tbaa !88
  %i.oj = load i32, ptr %i.be, align 4, !tbaa !63
  %i.ok = load i32, ptr %i.bj, align 8, !tbaa !89
  %i.ol = add nsw i32 %i.ok, %i.oj
  store i32 %i.ol, ptr %i.bj, align 8, !tbaa !89
  %i.om = trunc nuw nsw i64 %indvars.iv to i32
  call void @Cec_ManSatAddToStore(ptr noundef nonnull %i.s, ptr noundef null, i32 noundef %i.om) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.on = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #26
  %i.oo = icmp slt i32 %i.on, 0
  br i1 %i.oo, label %Abc_Clock.exit95, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.op = load i64, ptr %8, align 8, !tbaa !134
  %i.oq = mul nsw i64 %i.op, 1000000
  %i.or = load i64, ptr %i.bk, align 8, !tbaa !135
  %i.os = sdiv i64 %i.or, 1000
  %i.ot = add nsw i64 %i.os, %i.oq
  br label %Abc_Clock.exit95

Abc_Clock.exit95:                                 ; preds = %bb.cl, %bb.cm
  %.0.i94 = phi i64 [ %i.ot, %bb.cm ], [ -1, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ou = add i64 %.0.i94, %.0.i84.neg112
  %i.ov = load i64, ptr %i.bl, align 8, !tbaa !90
  %i.ow = add nsw i64 %i.ou, %i.ov
  store i64 %i.ow, ptr %i.bl, align 8, !tbaa !90
  br label %bb.cr

bb.cn:                                            ; preds = %Vec_StrPush.exit93
  %i.ox = load i32, ptr %i.bd, align 8, !tbaa !80
  %i.oy = add nsw i32 %i.ox, 1
  store i32 %i.oy, ptr %i.bd, align 8, !tbaa !80
  %i.oz = load i32, ptr %i.be, align 4, !tbaa !63
  %i.pa = load i32, ptr %i.bf, align 8, !tbaa !82
  %i.pb = add nsw i32 %i.pa, %i.oz
  store i32 %i.pb, ptr %i.bf, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.pc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #26
  %i.pd = icmp slt i32 %i.pc, 0
  br i1 %i.pd, label %Abc_Clock.exit97, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pe = load i64, ptr %7, align 8, !tbaa !134
  %i.pf = mul nsw i64 %i.pe, 1000000
  %i.pg = load i64, ptr %i.bg, align 8, !tbaa !135
  %i.ph = sdiv i64 %i.pg, 1000
  %i.pi = add nsw i64 %i.ph, %i.pf
  br label %Abc_Clock.exit97

Abc_Clock.exit97:                                 ; preds = %bb.cn, %bb.co
  %.0.i96 = phi i64 [ %i.pi, %bb.co ], [ -1, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.pj = add i64 %.0.i96, %.0.i84.neg112
  %i.pk = load i64, ptr %i.bh, align 8, !tbaa !83
  %i.pl = add nsw i64 %i.pj, %i.pk
  store i64 %i.pl, ptr %i.bh, align 8, !tbaa !83
  br label %bb.cr

bb.cp:                                            ; preds = %Vec_StrPush.exit93
  %i.pm = load i32, ptr %i.bm, align 4, !tbaa !85
  %i.pn = add nsw i32 %i.pm, 1
  store i32 %i.pn, ptr %i.bm, align 4, !tbaa !85
  %i.po = load i32, ptr %i.be, align 4, !tbaa !63
  %i.pp = load i32, ptr %i.bn, align 4, !tbaa !86
  %i.pq = add nsw i32 %i.pp, %i.po
  store i32 %i.pq, ptr %i.bn, align 4, !tbaa !86
  %i.pr = trunc nuw nsw i64 %indvars.iv to i32
  call void @Cec_ManSatAddToStore(ptr noundef nonnull %i.s, ptr noundef %i.ab, i32 noundef %i.pr) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ps = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #26
  %i.pt = icmp slt i32 %i.ps, 0
  br i1 %i.pt, label %Abc_Clock.exit99, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.pu = load i64, ptr %6, align 8, !tbaa !134
  %i.pv = mul nsw i64 %i.pu, 1000000
  %i.pw = load i64, ptr %i.bo, align 8, !tbaa !135
  %i.px = sdiv i64 %i.pw, 1000
  %i.py = add nsw i64 %i.px, %i.pv
  br label %Abc_Clock.exit99

Abc_Clock.exit99:                                 ; preds = %bb.cp, %bb.cq
  %.0.i98 = phi i64 [ %i.py, %bb.cq ], [ -1, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.pz = add i64 %.0.i98, %.0.i84.neg112
  %i.qa = load i64, ptr %i.bp, align 8, !tbaa !87
  %i.qb = add nsw i64 %i.pz, %i.qa
  store i64 %i.qb, ptr %i.bp, align 8, !tbaa !87
  br label %bb.cr

bb.cr:                                            ; preds = %Vec_StrPush.exit, %bb.o, %Abc_Clock.exit99, %Abc_Clock.exit97, %Abc_Clock.exit95
  %i.qc = phi ptr [ %i.cx, %Vec_StrPush.exit ], [ %i.cx, %bb.o ], [ %i.nz, %Abc_Clock.exit99 ], [ %i.nz, %Abc_Clock.exit97 ], [ %i.nz, %Abc_Clock.exit95 ]
  %i.qd = phi i32 [ %i.cy, %Vec_StrPush.exit ], [ %i.cy, %bb.o ], [ %i.oa, %Abc_Clock.exit99 ], [ %i.oa, %Abc_Clock.exit97 ], [ %i.oa, %Abc_Clock.exit95 ]
  %i.qe = phi ptr [ %i.cx, %Vec_StrPush.exit ], [ %i.cx, %bb.o ], [ %i.oc, %Abc_Clock.exit99 ], [ %i.oc, %Abc_Clock.exit97 ], [ %i.oc, %Abc_Clock.exit95 ]
  %i.qf = phi i32 [ %i.cy, %Vec_StrPush.exit ], [ %i.cy, %bb.o ], [ %i.od, %Abc_Clock.exit99 ], [ %i.od, %Abc_Clock.exit97 ], [ %i.od, %Abc_Clock.exit95 ]
  %i.qg = phi i32 [ %i.cz, %Vec_StrPush.exit ], [ %i.cz, %bb.o ], [ %i.oe, %Abc_Clock.exit99 ], [ %i.oe, %Abc_Clock.exit97 ], [ %i.oe, %Abc_Clock.exit95 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qh = load ptr, ptr %i.i, align 8, !tbaa !78  ; 3 uses
  %i.qi = getelementptr i8, ptr %i.qh, i64 4
  %.val = load i32, ptr %i.qi, align 4, !tbaa !34
  %i.qj = sext i32 %.val to i64
  %i.qk = icmp slt i64 %indvars.iv.next, %i.qj
  br i1 %i.qk, label %bb.d, label %.critedge.loopexit, !llvm.loop !132

.critedge.loopexit:                               ; preds = %bb.cr, %bb.d
  %.val76118 = phi ptr [ %i.qh, %bb.cr ], [ %i.bw, %bb.d ]
  %.pre115 = load ptr, ptr %i.z, align 8, !tbaa !36
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %Vec_StrAlloc.exit
  %.val76117 = phi ptr [ %.val76118, %.critedge.loopexit ], [ %.val78, %Vec_StrAlloc.exit ]
  %i.ql = phi ptr [ %.pre115, %.critedge.loopexit ], [ %i.y, %Vec_StrAlloc.exit ] ; 2 uses
  %.not.i100 = icmp eq ptr %i.ql, null
  br i1 %.not.i100, label %Vec_IntFree.exit, label %bb.cs

bb.cs:                                            ; preds = %.critedge
  call void @free(ptr noundef nonnull %i.ql) #26
end_hunk_0
