Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj9?download=true
inline.NumInlined: 239
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Exa9_ManAddOneHot:bb.a
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !50
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 8, !tbaa !50
  br label %Exa9_KissatAddClause.exit.i33

Exa9_KissatAddClause.exit.i33:                    ; preds = %bb.ah, %bb.ag, %bb.af
  %i.fl = load ptr, ptr %i.eq, align 8, !tbaa !40
  %i.fm = tail call i32 @kissat_is_inconsistent(ptr noundef %i.fl) #19
  %.not13.i.not.i34 = icmp eq i32 %i.fm, 0
  br i1 %.not13.i.not.i34, label %.lr.ph14.i, label %Exa9_ManAddOneHotSeq.exit

.lr.ph14.i:                                       ; preds = %Exa9_KissatAddClause.exit.i33
  %i.fn = add nuw i32 %.val, 5
  %i.fo = udiv i32 %i.fn, 6                       ; 2 uses
  %i.fp = add nsw i32 %i.fo, -1
  %i.fq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fp, i1 true)
  %i.fr = sub nuw nsw i32 32, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %wide.trip.count32.i = zext nneg i32 %i.fr to i64
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i36, %.lr.ph14.i
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %._crit_edge.i36 ], [ 6, %.lr.ph14.i ] ; 3 uses
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %._crit_edge.i36 ], [ 0, %.lr.ph14.i ] ; 4 uses
  %.06412.i = phi i32 [ %i.ia, %._crit_edge.i36 ], [ 0, %.lr.ph14.i ] ; 3 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv.a, i64 %wide.trip.count.i.i43)
  %i.fv = mul nuw nsw i32 %.06412.i, 6            ; 2 uses
  %i.fw = icmp sgt i32 %.val, %i.fv
  br i1 %i.fw, label %.lr.ph8.preheader.i, label %._crit_edge.i36

.lr.ph8.preheader.i:                              ; preds = %bb.ai
  %indvars110 = trunc i64 %indvars.iv.a to i32
  %i.fx = add nuw nsw i32 %i.fv, 6
  %i.fy = tail call i32 @llvm.umin.i32(i32 %i.fx, i32 %.val)
  %smin.i = tail call i32 @llvm.smin.i32(i32 %.val, i32 %indvars110)
  %i.fz = zext nneg i32 %i.fy to i64              ; 2 uses
  %wide.trip.count.i38 = zext i32 %smin.i to i64
  %indvars.iv.next27.i86 = or disjoint i64 %indvars.iv24.i, 1 ; 2 uses
  %i.ga = icmp samesign ult i64 %indvars.iv.next27.i86, %i.fz
  br i1 %i.ga, label %.lr.ph.i40, label %.preheader.i39.preheader

.preheader.i39.preheader:                         ; preds = %.loopexit.i, %.lr.ph8.preheader.i
  br label %.preheader.i39

.loopexit.i:                                      ; preds = %bb.aj
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv.next27.i89, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next27.i, %umin
  br i1 %exitcond109.not, label %.preheader.i39.preheader, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph8.preheader.i, %.loopexit.i
  %indvars.iv.next27.i89 = phi i64 [ %indvars.iv.next27.i, %.loopexit.i ], [ %indvars.iv.next27.i86, %.lr.ph8.preheader.i ] ; 3 uses
  %indvars.iv26.i87 = phi i64 [ %indvars.iv.next27.i89, %.loopexit.i ], [ %indvars.iv24.i, %.lr.ph8.preheader.i ]
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.val82.i, i64 %indvars.iv26.i87
  br label %._crit_edge.i92.i

bb.aj:                                            ; preds = %Exa9_KissatAddClause.exit96.i
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next20.i, %wide.trip.count.i38
  br i1 %exitcond.not.i41, label %.loopexit.i, label %._crit_edge.i92.i, !llvm.loop !129

._crit_edge.i92.i:                                ; preds = %bb.aj, %.lr.ph.i40
  %indvars.iv19.i = phi i64 [ %indvars.iv.next27.i89, %.lr.ph.i40 ], [ %indvars.iv.next20.i, %bb.aj ] ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !51 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.val82.i, i64 %indvars.iv19.i
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !51 ; 2 uses
  %i.gf = load ptr, ptr %i.eq, align 8, !tbaa !40
  %i.gg = ashr i32 %i.gc, 1                       ; 2 uses
  %i.gh = and i32 %i.gc, 1
  %.not.i.i89.not.i = icmp eq i32 %i.gh, 0
  %i.gi = sub nsw i32 0, %i.gg
  %i.gj = select i1 %.not.i.i89.not.i, i32 %i.gi, i32 %i.gg
  tail call void @kissat_add(ptr noundef %i.gf, i32 noundef %i.gj) #19
  %i.gk = load ptr, ptr %i.eq, align 8, !tbaa !40
  %i.gl = ashr i32 %i.ge, 1                       ; 2 uses
  %i.gm = and i32 %i.ge, 1
  %.not.i.i89.1.not.i = icmp eq i32 %i.gm, 0
  %i.gn = sub nsw i32 0, %i.gl
  %i.go = select i1 %.not.i.i89.1.not.i, i32 %i.gn, i32 %i.gl
  tail call void @kissat_add(ptr noundef %i.gk, i32 noundef %i.go) #19
  %i.gp = load ptr, ptr %i.eq, align 8, !tbaa !40
  tail call void @kissat_add(ptr noundef %i.gp, i32 noundef 0) #19
  %i.gq = load i32, ptr %i.ez, align 4, !tbaa !42
  %.not.i93.i = icmp eq i32 %i.gq, 0
  br i1 %.not.i93.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i92.i
  %i.gr = load i32, ptr %i.b, align 8, !tbaa !47
  %.not12.i94.i = icmp eq i32 %i.gr, 0
  br i1 %.not12.i94.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gs = load i32, ptr %i.fs, align 4, !tbaa !48
  %i.gt = add nsw i32 %i.gs, 1
  store i32 %i.gt, ptr %i.fs, align 4, !tbaa !48
  br label %Exa9_KissatAddClause.exit96.i

bb.am:                                            ; preds = %bb.ak
  %i.gu = load i32, ptr %i.ft, align 8, !tbaa !49
  %i.gv = add nsw i32 %i.gu, 1
  store i32 %i.gv, ptr %i.ft, align 8, !tbaa !49
  br label %Exa9_KissatAddClause.exit96.i

bb.an:                                            ; preds = %._crit_edge.i92.i
  %i.gw = load i32, ptr %i.fu, align 8, !tbaa !50
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.fu, align 8, !tbaa !50
  br label %Exa9_KissatAddClause.exit96.i

Exa9_KissatAddClause.exit96.i:                    ; preds = %bb.an, %bb.am, %bb.al
  %i.gy = load ptr, ptr %i.eq, align 8, !tbaa !40
  %i.gz = tail call i32 @kissat_is_inconsistent(ptr noundef %i.gy) #19
  %.not13.i95.not.i = icmp eq i32 %i.gz, 0
  br i1 %.not13.i95.not.i, label %bb.aj, label %Exa9_ManAddOneHotSeq.exit

.preheader.i39:                                   ; preds = %.preheader.i39.preheader, %.critedge.i
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i, %.critedge.i ], [ %indvars.iv24.i, %.preheader.i39.preheader ] ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.val82.i, i64 %indvars.iv34.i
  br label %._crit_edge.i102.i

._crit_edge.i102.i:                               ; preds = %bb.as, %.preheader.i39
  %indvars.iv29.i = phi i64 [ 0, %.preheader.i39 ], [ %indvars.iv.next30.i, %bb.as ] ; 2 uses
  %.0629.i = phi i32 [ %.06412.i, %.preheader.i39 ], [ %i.hy, %bb.as ] ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !51 ; 2 uses
  %i.hc = and i32 %.0629.i, 1
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val29, i64 %indvars.iv29.i
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !51 ; 2 uses
  %i.hf = load ptr, ptr %i.eq, align 8, !tbaa !40
  %i.hg = ashr i32 %i.hb, 1                       ; 2 uses
  %i.hh = and i32 %i.hb, 1
  %.not.i.i99.not.i = icmp eq i32 %i.hh, 0
  %i.hi = sub nsw i32 0, %i.hg
  %i.hj = select i1 %.not.i.i99.not.i, i32 %i.hi, i32 %i.hg
  tail call void @kissat_add(ptr noundef %i.hf, i32 noundef %i.hj) #19
  %i.hk = load ptr, ptr %i.eq, align 8, !tbaa !40
  %.not.i.i99.1.not.i = icmp eq i32 %i.hc, 0
  %i.hl = sub nsw i32 0, %i.he
  %i.hm = select i1 %.not.i.i99.1.not.i, i32 %i.hl, i32 %i.he
  tail call void @kissat_add(ptr noundef %i.hk, i32 noundef %i.hm) #19
  %i.hn = load ptr, ptr %i.eq, align 8, !tbaa !40
  tail call void @kissat_add(ptr noundef %i.hn, i32 noundef 0) #19
  %i.ho = load i32, ptr %i.ez, align 4, !tbaa !42
  %.not.i103.i = icmp eq i32 %i.ho, 0
  br i1 %.not.i103.i, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.i102.i
  %i.hp = load i32, ptr %i.b, align 8, !tbaa !47
  %.not12.i104.i = icmp eq i32 %i.hp, 0
  br i1 %.not12.i104.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hq = load i32, ptr %i.fs, align 4, !tbaa !48
  %i.hr = add nsw i32 %i.hq, 1
  store i32 %i.hr, ptr %i.fs, align 4, !tbaa !48
  br label %Exa9_KissatAddClause.exit106.i

bb.aq:                                            ; preds = %bb.ao
  %i.hs = load i32, ptr %i.ft, align 8, !tbaa !49
  %i.ht = add nsw i32 %i.hs, 1
  store i32 %i.ht, ptr %i.ft, align 8, !tbaa !49
  br label %Exa9_KissatAddClause.exit106.i

bb.ar:                                            ; preds = %._crit_edge.i102.i
  %i.hu = load i32, ptr %i.fu, align 8, !tbaa !50
  %i.hv = add nsw i32 %i.hu, 1
  store i32 %i.hv, ptr %i.fu, align 8, !tbaa !50
  br label %Exa9_KissatAddClause.exit106.i

Exa9_KissatAddClause.exit106.i:                   ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.hw = load ptr, ptr %i.eq, align 8, !tbaa !40
  %i.hx = tail call i32 @kissat_is_inconsistent(ptr noundef %i.hw) #19
  %.not13.i105.not.i = icmp eq i32 %i.hx, 0
  br i1 %.not13.i105.not.i, label %bb.as, label %Exa9_ManAddOneHotSeq.exit

bb.as:                                            ; preds = %Exa9_KissatAddClause.exit106.i
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %i.hy = lshr i32 %.0629.i, 1
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next30.i, %wide.trip.count32.i
  br i1 %exitcond33.not.i, label %.critedge.i, label %._crit_edge.i102.i, !llvm.loop !130

.critedge.i:                                      ; preds = %bb.as
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %i.hz = icmp samesign ult i64 %indvars.iv.next35.i, %i.fz
  br i1 %i.hz, label %.preheader.i39, label %._crit_edge.i36, !llvm.loop !131

._crit_edge.i36:                                  ; preds = %.critedge.i, %bb.ai
  %i.ia = add nuw nsw i32 %.06412.i, 1            ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 6
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 6
  %exitcond37.not.i = icmp eq i32 %i.ia, %i.fo
  br i1 %exitcond37.not.i, label %Exa9_ManAddOneHotSeq.exit, label %bb.ai, !llvm.loop !132

.lr.ph.i.i64:                                     ; preds = %bb.c
  %i.ib = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.val106.i = load ptr, ptr %i.ib, align 8, !tbaa !45 ; 5 uses
  %i.ic = getelementptr i8, ptr %2, i64 8
  %.val105.i = load ptr, ptr %i.ic, align 8, !tbaa !45
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 18 uses
  %wide.trip.count.i.i65 = zext nneg i32 %.val to i64 ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph.i.i64
  %indvars.iv.i.i66 = phi i64 [ 0, %.lr.ph.i.i64 ], [ %indvars.iv.next.i.i68, %bb.at ] ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !40
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.val106.i, i64 %indvars.iv.i.i66
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !51 ; 2 uses
  %i.ih = ashr i32 %i.ig, 1                       ; 2 uses
  %i.ii = and i32 %i.ig, 1
  %.not.i.i.i67 = icmp eq i32 %i.ii, 0
  %i.ij = sub nsw i32 0, %i.ih
  %i.ik = select i1 %.not.i.i.i67, i32 %i.ih, i32 %i.ij
  tail call void @kissat_add(ptr noundef %i.ie, i32 noundef %i.ik) #19
  %indvars.iv.next.i.i68 = add nuw nsw i64 %indvars.iv.i.i66, 1 ; 2 uses
  %exitcond.not.i.i69 = icmp eq i64 %indvars.iv.next.i.i68, %wide.trip.count.i.i65
  br i1 %exitcond.not.i.i69, label %._crit_edge.i.i48, label %bb.at, !llvm.loop !1

._crit_edge.i.i48:                                ; preds = %bb.at
  %i.il = load ptr, ptr %i.id, align 8, !tbaa !40
  tail call void @kissat_add(ptr noundef %i.il, i32 noundef 0) #19
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !42
  %.not.i.i49 = icmp eq i32 %i.in, 0
  br i1 %.not.i.i49, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %._crit_edge.i.i48
  %i.io = load i32, ptr %i.b, align 8, !tbaa !47
  %.not12.i.i50 = icmp eq i32 %i.io, 0
  br i1 %.not12.i.i50, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !48
  %i.ir = add nsw i32 %i.iq, 1
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !48
  br label %Exa9_KissatAddClause.exit.i51

bb.aw:                                            ; preds = %bb.au
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !49
  %i.iu = add nsw i32 %i.it, 1
  store i32 %i.iu, ptr %i.is, align 8, !tbaa !49
  br label %Exa9_KissatAddClause.exit.i51

bb.ax:                                            ; preds = %._crit_edge.i.i48
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !50
  %i.ix = add nsw i32 %i.iw, 1
  store i32 %i.ix, ptr %i.iv, align 8, !tbaa !50
  br label %Exa9_KissatAddClause.exit.i51

Exa9_KissatAddClause.exit.i51:                    ; preds = %bb.ax, %bb.aw, %bb.av
  %i.iy = load ptr, ptr %i.id, align 8, !tbaa !40
  %i.iz = tail call i32 @kissat_is_inconsistent(ptr noundef %i.iy) #19
  %.not13.i.not.i52 = icmp eq i32 %i.iz, 0
  br i1 %.not13.i.not.i52, label %bb.ay, label %Exa9_ManAddOneHotSeq.exit

bb.ay:                                            ; preds = %Exa9_KissatAddClause.exit.i51
  %i.ja = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 12 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4 ; 5 uses
  store i32 0, ptr %i.jb, align 4, !tbaa !46
  store i32 16, ptr %i.ja, align 8, !tbaa !44
  %i.jc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 5 uses
  store ptr %i.jc, ptr %i.jd, align 8, !tbaa !45
  %i.je = add nuw nsw i32 %.val, 3
  %i.jf = lshr i32 %i.je, 2                       ; 3 uses
  %i.jg = getelementptr i8, ptr %2, i64 4
  %.val.i53 = load i32, ptr %i.jg, align 4, !tbaa !46
  %i.jh = icmp sgt i32 %i.jf, %.val.i53
  br i1 %i.jh, label %bb.az, label %.lr.ph177.i

.lr.ph177.i:                                      ; preds = %bb.ay
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %scevgep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %wide.trip.count.i54 = zext nneg i32 %i.jf to i64 ; 4 uses
  %3 = zext nneg i32 %.val to i64
  br label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %.not.i113.i = icmp eq ptr %i.jc, null
  br i1 %.not.i113.i, label %Vec_IntFree.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @free(ptr noundef nonnull %i.jc) #19
  br label %Vec_IntFree.exit.i

Vec_IntFree.exit.i:                               ; preds = %bb.ba, %bb.az
  tail call void @free(ptr noundef nonnull %i.ja) #19
  %.val107.i = load i32, ptr %i.d, align 4, !tbaa !46
  %.val108.i = load ptr, ptr %i.ib, align 8, !tbaa !45
  %i.jl = tail call fastcc i32 @Exa9_ManAddOneHotQuad(ptr noundef nonnull %0, i32 %.val107.i, ptr %.val108.i)
  br label %Exa9_ManAddOneHotSeq.exit

bb.bb:                                            ; preds = %._crit_edge175.i, %.lr.ph177.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge175.i ], [ 1, %.lr.ph177.i ] ; 2 uses
  %indvars.iv227.i = phi i64 [ %indvars.iv.next228.i, %._crit_edge175.i ], [ 0, %.lr.ph177.i ] ; 9 uses
  %indvars.iv221.i = phi i32 [ %indvars.iv.next222.i, %._crit_edge175.i ], [ 4, %.lr.ph177.i ] ; 3 uses
  %indvars.iv214.i = phi i64 [ %indvars.iv.next215.i, %._crit_edge175.i ], [ 1, %.lr.ph177.i ] ; 2 uses
  %indvars.iv204.i = phi i64 [ %indvars.iv.next205.i, %._crit_edge175.i ], [ 0, %.lr.ph177.i ] ; 4 uses
  %storemerge188.i = phi ptr [ %storemerge189.i, %._crit_edge175.i ], [ %i.jc, %.lr.ph177.i ] ; 6 uses
  %spec.select.sink.i183.i = phi i32 [ %spec.select.sink.i182.i, %._crit_edge175.i ], [ 16, %.lr.ph177.i ] ; 4 uses
  %4 = sext i32 %indvars.iv221.i to i64
  %smin102 = tail call i64 @llvm.smin.i64(i64 %3, i64 %4) ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %smin102, i64 %indvars.iv214.i)
  %5 = add i64 %smax, %indvars.iv
  %smin223.i = tail call i32 @llvm.smin.i32(i32 %.val, i32 %indvars.iv221.i)
  %i.jm = shl nuw nsw i64 %indvars.iv227.i, 4
  %scevgep203.i = getelementptr i8, ptr %.val106.i, i64 %i.jm
  %6 = shl nuw nsw i64 %indvars.iv227.i, 2        ; 2 uses
  %7 = trunc i64 %6 to i32                        ; 2 uses
  %i.jn = add i32 %7, 4
  %smin.i55 = tail call i32 @llvm.smin.i32(i32 %.val, i32 %i.jn) ; 2 uses
  %i.jo = or disjoint i32 %7, 1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %smin.i55, i32 %i.jo)
  %indvar.tr.i = trunc i64 %indvars.iv227.i to i32 ; 2 uses
  %8 = shl i32 %indvar.tr.i, 2
  %i.jp = xor i32 %8, -1
  %i.jq = add i32 %smax.i, %i.jp
  %i.jr = zext i32 %i.jq to i64
  %i.js = shl nuw nsw i64 %i.jr, 2
  %i.jt = add nuw nsw i64 %i.js, 4
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.val105.i, i64 %indvars.iv227.i
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !51 ; 2 uses
  %i.jw = shl nsw i32 %i.jv, 1                    ; 2 uses
  %i.jx = icmp eq i32 %spec.select.sink.i183.i, %indvar.tr.i
  br i1 %i.jx, label %bb.bc, label %Vec_IntPush.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.jy = icmp samesign ult i64 %indvars.iv227.i, 16
  br i1 %i.jy, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %.not9.i.i.i = icmp eq ptr %storemerge188.i, null
  br i1 %.not9.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge188.i, i64 noundef 64) #22
  br label %Vec_IntPush.exit.i

bb.bf:                                            ; preds = %bb.bd
  %i.ka = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntPush.exit.i

bb.bg:                                            ; preds = %bb.bc
  %i.kb = icmp samesign ult i64 %indvars.iv227.i, 1073741823
  %i.kc = shl nuw nsw i32 %spec.select.sink.i183.i, 1
  %spec.select.i.i = select i1 %i.kb, i32 %i.kc, i32 2147483647 ; 3 uses
  %i.kd = zext nneg i32 %spec.select.i.i to i64   ; 2 uses
  %.not.i9.i.i = icmp samesign ult i64 %indvars.iv227.i, %i.kd
  br i1 %.not.i9.i.i, label %bb.bh, label %Vec_IntPush.exit.i

bb.bh:                                            ; preds = %bb.bg
  %.not9.i10.i.i = icmp eq ptr %storemerge188.i, null
  %i.ke = shl nuw nsw i64 %i.kd, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kf = tail call ptr @realloc(ptr noundef nonnull %storemerge188.i, i64 noundef %i.ke) #22
  br label %Vec_IntPush.exit.i

bb.bj:                                            ; preds = %bb.bh
  %i.kg = tail call noalias ptr @malloc(i64 noundef %i.ke) #21
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %bb.bj, %bb.bi, %bb.bg, %bb.bf, %bb.be, %bb.bb
  %storemerge189.i = phi ptr [ %storemerge188.i, %bb.bb ], [ %storemerge188.i, %bb.bg ], [ %i.ka, %bb.bf ], [ %i.jz, %bb.be ], [ %i.kf, %bb.bi ], [ %i.kg, %bb.bj ] ; 14 uses
  %spec.select.sink.i182.i = phi i32 [ %spec.select.sink.i183.i, %bb.bb ], [ %spec.select.sink.i183.i, %bb.bg ], [ 16, %bb.bf ], [ 16, %bb.be ], [ %spec.select.i.i, %bb.bi ], [ %spec.select.i.i, %bb.bj ] ; 5 uses
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 5 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %storemerge189.i, i64 %indvars.iv227.i
  store i32 %i.jw, ptr %i.kh, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ki = or disjoint i32 %i.jw, 1
  store i32 %i.ki, ptr %i.a, align 16, !tbaa !51
  %9 = icmp samesign ult i64 %6, %wide.trip.count.i.i65 ; 2 uses
  br i1 %9, label %.lr.ph.preheader.i, label %._crit_edge.i56

.lr.ph.preheader.i:                               ; preds = %Vec_IntPush.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep203.i, i64 %i.jt, i1 false), !tbaa !51
  br label %._crit_edge.i56

._crit_edge.i56:                                  ; preds = %.lr.ph.preheader.i, %Vec_IntPush.exit.i
  %.0.lcssa.i = phi i64 [ 1, %Vec_IntPush.exit.i ], [ %5, %.lr.ph.preheader.i ]
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %._crit_edge.i56
  %indvars.iv.i120.i = phi i64 [ 0, %._crit_edge.i56 ], [ %indvars.iv.next.i122.i, %bb.bk ] ; 2 uses
  %i.kj = load ptr, ptr %i.id, align 8, !tbaa !40
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i120.i
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !51 ; 2 uses
  %i.km = ashr i32 %i.kl, 1                       ; 2 uses
  %i.kn = and i32 %i.kl, 1
  %.not.i.i121.i = icmp eq i32 %i.kn, 0
  %i.ko = sub nsw i32 0, %i.km
  %i.kp = select i1 %.not.i.i121.i, i32 %i.km, i32 %i.ko
  tail call void @kissat_add(ptr noundef %i.kj, i32 noundef %i.kp) #19
  %indvars.iv.next.i122.i = add nuw nsw i64 %indvars.iv.i120.i, 1 ; 2 uses
  %exitcond.not.i123.i = icmp eq i64 %indvars.iv.next.i122.i, %.0.lcssa.i
  br i1 %exitcond.not.i123.i, label %._crit_edge.i114.i, label %bb.bk, !llvm.loop !1

._crit_edge.i114.i:                               ; preds = %bb.bk
  %i.kq = load ptr, ptr %i.id, align 8, !tbaa !40
  tail call void @kissat_add(ptr noundef %i.kq, i32 noundef 0) #19
  %i.kr = load i32, ptr %i.im, align 4, !tbaa !42
  %.not.i115.i = icmp eq i32 %i.kr, 0
  br i1 %.not.i115.i, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge.i114.i
  %i.ks = load i32, ptr %i.b, align 8, !tbaa !47
  %.not12.i116.i = icmp eq i32 %i.ks, 0
  br i1 %.not12.i116.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kt = load i32, ptr %i.ji, align 4, !tbaa !48
  %i.ku = add nsw i32 %i.kt, 1
  store i32 %i.ku, ptr %i.ji, align 4, !tbaa !48
  br label %Exa9_KissatAddClause.exit124.i

bb.bn:                                            ; preds = %bb.bl
  %i.kv = load i32, ptr %i.jj, align 8, !tbaa !49
  %i.kw = add nsw i32 %i.kv, 1
  store i32 %i.kw, ptr %i.jj, align 8, !tbaa !49
  br label %Exa9_KissatAddClause.exit124.i

bb.bo:                                            ; preds = %._crit_edge.i114.i
  %i.kx = load i32, ptr %i.jk, align 8, !tbaa !50
  %i.ky = add nsw i32 %i.kx, 1
  store i32 %i.ky, ptr %i.jk, align 8, !tbaa !50
  br label %Exa9_KissatAddClause.exit124.i

Exa9_KissatAddClause.exit124.i:                   ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.kz = load ptr, ptr %i.id, align 8, !tbaa !40
  %i.la = tail call i32 @kissat_is_inconsistent(ptr noundef %i.kz) #19
  %.not13.i117.not.i = icmp eq i32 %i.la, 0
  br i1 %.not13.i117.not.i, label %.critedge.i57, label %bb.bp

bb.bp:                                            ; preds = %Exa9_KissatAddClause.exit124.i
  %i.lb = trunc nuw nsw i64 %indvars.iv.next228.i to i32
  store i32 %i.lb, ptr %i.jb, align 4, !tbaa !46
  store i32 %spec.select.sink.i182.i, ptr %i.ja, align 8
  store ptr %storemerge189.i, ptr %i.jd, align 8
  tail call fastcc void @Vec_IntFree(ptr noundef nonnull %i.ja)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %Exa9_ManAddOneHotSeq.exit

.critedge.i57:                                    ; preds = %Exa9_KissatAddClause.exit124.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %9, label %.lr.ph169.preheader.i, label %._crit_edge175.i

.lr.ph169.preheader.i:                            ; preds = %.critedge.i57
  %sext.i = sext i32 %smin.i55 to i64             ; 2 uses
  br label %.lr.ph169.i

.preheader.i57:                                   ; preds = %.critedge99.i
  %wide.trip.count.i58 = zext i32 %smin223.i to i64
  %indvars.iv.next225.i82 = or disjoint i64 %indvars.iv204.i, 1 ; 2 uses
  %10 = icmp slt i64 %indvars.iv.next225.i82, %sext.i
  br i1 %10, label %.lr.ph172.i, label %._crit_edge175.i

.lr.ph169.i:                                      ; preds = %.critedge99.i, %.lr.ph169.preheader.i
  %indvars.iv211.i = phi i64 [ %indvars.iv204.i, %.lr.ph169.preheader.i ], [ %indvars.iv.next212.i, %.critedge99.i ] ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.val106.i, i64 %indvars.iv211.i
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !51 ; 2 uses
  %i.le = load ptr, ptr %i.id, align 8, !tbaa !40
  %i.lf = ashr i32 %i.ld, 1                       ; 2 uses
  %i.lg = and i32 %i.ld, 1
  %.not.i.i127.not.i = icmp eq i32 %i.lg, 0
  %i.lh = sub nsw i32 0, %i.lf
  %i.li = select i1 %.not.i.i127.not.i, i32 %i.lh, i32 %i.lf
  tail call void @kissat_add(ptr noundef %i.le, i32 noundef %i.li) #19
  %i.lj = load ptr, ptr %i.id, align 8, !tbaa !40
  tail call void @kissat_add(ptr noundef %i.lj, i32 noundef %i.jv) #19
  %i.lk = load ptr, ptr %i.id, align 8, !tbaa !40
  tail call void @kissat_add(ptr noundef %i.lk, i32 noundef 0) #19
  %i.ll = load i32, ptr %i.im, align 4, !tbaa !42
  %.not.i131.i = icmp eq i32 %i.ll, 0
  br i1 %.not.i131.i, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph169.i
  %i.lm = load i32, ptr %i.b, align 8, !tbaa !47
  %.not12.i132.i = icmp eq i32 %i.lm, 0
  br i1 %.not12.i132.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ln = load i32, ptr %i.ji, align 4, !tbaa !48
  %i.lo = add nsw i32 %i.ln, 1
  store i32 %i.lo, ptr %i.ji, align 4, !tbaa !48
  br label %Exa9_KissatAddClause.exit134.i

bb.bs:                                            ; preds = %bb.bq
  %i.lp = load i32, ptr %i.jj, align 8, !tbaa !49
  %i.lq = add nsw i32 %i.lp, 1
  store i32 %i.lq, ptr %i.jj, align 8, !tbaa !49
  br label %Exa9_KissatAddClause.exit134.i

bb.bt:                                            ; preds = %.lr.ph169.i
  %i.lr = load i32, ptr %i.jk, align 8, !tbaa !50
  %i.ls = add nsw i32 %i.lr, 1
  store i32 %i.ls, ptr %i.jk, align 8, !tbaa !50
  br label %Exa9_KissatAddClause.exit134.i

Exa9_KissatAddClause.exit134.i:                   ; preds = %bb.bt, %bb.bs, %bb.br
  %i.lt = load ptr, ptr %i.id, align 8, !tbaa !40
  %i.lu = tail call i32 @kissat_is_inconsistent(ptr noundef %i.lt) #19
  %.not13.i133.not.i = icmp eq i32 %i.lu, 0
  br i1 %.not13.i133.not.i, label %.critedge99.i, label %bb.bu

bb.bu:                                            ; preds = %Exa9_KissatAddClause.exit134.i
  %i.lv = trunc nuw nsw i64 %indvars.iv.next228.i to i32
  store i32 %i.lv, ptr %i.jb, align 4, !tbaa !46
  store i32 %spec.select.sink.i182.i, ptr %i.ja, align 8
  store ptr %storemerge189.i, ptr %i.jd, align 8
  %.not.i135.i = icmp eq ptr %storemerge189.i, null
  br i1 %.not.i135.i, label %Vec_IntFree.exit136.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void @free(ptr noundef nonnull %storemerge189.i) #19
  br label %Vec_IntFree.exit136.i

Vec_IntFree.exit136.i:                            ; preds = %bb.bv, %bb.bu
  tail call void @free(ptr noundef nonnull %i.ja) #19
  br label %Exa9_ManAddOneHotSeq.exit

.critedge99.i:                                    ; preds = %Exa9_KissatAddClause.exit134.i
  %indvars.iv.next212.i = add nuw nsw i64 %indvars.iv211.i, 1 ; 2 uses
  %11 = icmp slt i64 %indvars.iv.next212.i, %sext.i
  br i1 %11, label %.lr.ph169.i, label %.preheader.i57, !llvm.loop !133

.loopexit.i60:                                    ; preds = %.critedge101.i
  %indvars.iv.next225.i = add nuw nsw i64 %indvars.iv.next225.i85, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next225.i, %smin102
  br i1 %exitcond107.not, label %._crit_edge175.i, label %.lr.ph172.i

.lr.ph172.i:                                      ; preds = %.preheader.i57, %.loopexit.i60
  %indvars.iv.next225.i85 = phi i64 [ %indvars.iv.next225.i, %.loopexit.i60 ], [ %indvars.iv.next225.i82, %.preheader.i57 ] ; 3 uses
  %indvars.iv224.i83 = phi i64 [ %indvars.iv.next225.i85, %.loopexit.i60 ], [ %indvars.iv204.i, %.preheader.i57 ]
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.val106.i, i64 %indvars.iv224.i83
  br label %._crit_edge.i142.i

._crit_edge.i142.i:                               ; preds = %.critedge101.i, %.lr.ph172.i
  %indvars.iv218.i = phi i64 [ %indvars.iv.next225.i85, %.lr.ph172.i ], [ %indvars.iv.next219.i, %.critedge101.i ] ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !51 ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.val106.i, i64 %indvars.iv218.i
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !51 ; 2 uses
  %i.ma = load ptr, ptr %i.id, align 8, !tbaa !40
  %i.mb = ashr i32 %i.lx, 1                       ; 2 uses
  %i.mc = and i32 %i.lx, 1
  %.not.i.i139.not.i = icmp eq i32 %i.mc, 0
  %i.md = sub nsw i32 0, %i.mb
  %i.me = select i1 %.not.i.i139.not.i, i32 %i.md, i32 %i.mb
  tail call void @kissat_add(ptr noundef %i.ma, i32 noundef %i.me) #19
  %i.mf = load ptr, ptr %i.id, align 8, !tbaa !40
  %i.mg = ashr i32 %i.lz, 1                       ; 2 uses
  %i.mh = and i32 %i.lz, 1
  %.not.i.i139.1.not.i = icmp eq i32 %i.mh, 0
  %i.mi = sub nsw i32 0, %i.mg
  %i.mj = select i1 %.not.i.i139.1.not.i, i32 %i.mi, i32 %i.mg
  tail call void @kissat_add(ptr noundef %i.mf, i32 noundef %i.mj) #19
  %i.mk = load ptr, ptr %i.id, align 8, !tbaa !40
  tail call void @kissat_add(ptr noundef %i.mk, i32 noundef 0) #19
  %i.ml = load i32, ptr %i.im, align 4, !tbaa !42
  %.not.i143.i = icmp eq i32 %i.ml, 0
  br i1 %.not.i143.i, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %._crit_edge.i142.i
  %i.mm = load i32, ptr %i.b, align 8, !tbaa !47
  %.not12.i144.i = icmp eq i32 %i.mm, 0
  br i1 %.not12.i144.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.mn = load i32, ptr %i.ji, align 4, !tbaa !48
  %i.mo = add nsw i32 %i.mn, 1
  store i32 %i.mo, ptr %i.ji, align 4, !tbaa !48
  br label %Exa9_KissatAddClause.exit146.i

bb.by:                                            ; preds = %bb.bw
  %i.mp = load i32, ptr %i.jj, align 8, !tbaa !49
  %i.mq = add nsw i32 %i.mp, 1
  store i32 %i.mq, ptr %i.jj, align 8, !tbaa !49
  br label %Exa9_KissatAddClause.exit146.i

bb.bz:                                            ; preds = %._crit_edge.i142.i
  %i.mr = load i32, ptr %i.jk, align 8, !tbaa !50
  %i.ms = add nsw i32 %i.mr, 1
  store i32 %i.ms, ptr %i.jk, align 8, !tbaa !50
  br label %Exa9_KissatAddClause.exit146.i

Exa9_KissatAddClause.exit146.i:                   ; preds = %bb.bz, %bb.by, %bb.bx
  %i.mt = load ptr, ptr %i.id, align 8, !tbaa !40
  %i.mu = tail call i32 @kissat_is_inconsistent(ptr noundef %i.mt) #19
  %.not13.i145.not.i = icmp eq i32 %i.mu, 0
  br i1 %.not13.i145.not.i, label %.critedge101.i, label %bb.ca

bb.ca:                                            ; preds = %Exa9_KissatAddClause.exit146.i
  %i.mv = trunc nuw nsw i64 %indvars.iv.next228.i to i32
  store i32 %i.mv, ptr %i.jb, align 4, !tbaa !46
  store i32 %spec.select.sink.i182.i, ptr %i.ja, align 8
  store ptr %storemerge189.i, ptr %i.jd, align 8
  %.not.i147.i = icmp eq ptr %storemerge189.i, null
  br i1 %.not.i147.i, label %Vec_IntFree.exit148.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @free(ptr noundef nonnull %storemerge189.i) #19
  br label %Vec_IntFree.exit148.i

Vec_IntFree.exit148.i:                            ; preds = %bb.cb, %bb.ca
  tail call void @free(ptr noundef nonnull %i.ja) #19
  br label %Exa9_ManAddOneHotSeq.exit

.critedge101.i:                                   ; preds = %Exa9_KissatAddClause.exit146.i
  %indvars.iv.next219.i = add nuw nsw i64 %indvars.iv218.i, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next219.i, %wide.trip.count.i58
  br i1 %exitcond, label %.loopexit.i60, label %._crit_edge.i142.i, !llvm.loop !134

._crit_edge175.i:                                 ; preds = %.loopexit.i60, %.preheader.i57, %.critedge.i57
  %indvars.iv.next205.i = add nuw nsw i64 %indvars.iv204.i, 4
  %indvars.iv.next215.i = add nuw nsw i64 %indvars.iv214.i, 4
  %indvars.iv.next222.i = add nuw i32 %indvars.iv221.i, 4
  %exitcond232.not.i = icmp eq i64 %indvars.iv.next228.i, %wide.trip.count.i54
  %indvars.iv.next = add i64 %indvars.iv, -4
  br i1 %exitcond232.not.i, label %.lr.ph5.i.i, label %bb.bb, !llvm.loop !135

.lr.ph5.i.i:                                      ; preds = %._crit_edge175.i
  store i32 %i.jf, ptr %i.jb, align 4, !tbaa !46
  store i32 %spec.select.sink.i182.i, ptr %i.ja, align 8
  store ptr %storemerge189.i, ptr %i.jd, align 8
  br label %bb.cc

.loopexit.i.i:                                    ; preds = %bb.cd, %bb.cc
  %indvars.iv.next.i150.i = add nuw nsw i64 %indvars.iv.i149.i, 1
  %exitcond14.not.i.i = icmp eq i64 %indvars.iv.next11.i.i, %wide.trip.count.i54
  br i1 %exitcond14.not.i.i, label %Exa9_ManAddAtMostOnePair.exit.i, label %bb.cc, !llvm.loop !136

bb.cc:                                            ; preds = %.loopexit.i.i, %.lr.ph5.i.i
  %indvars.iv10.i.i = phi i64 [ 0, %.lr.ph5.i.i ], [ %indvars.iv.next11.i.i, %.loopexit.i.i ] ; 2 uses
  %indvars.iv.i149.i = phi i64 [ 1, %.lr.ph5.i.i ], [ %indvars.iv.next.i150.i, %.loopexit.i.i ] ; 2 uses
  %indvars.iv.next11.i.i = add nuw nsw i64 %indvars.iv10.i.i, 1 ; 3 uses
  %i.mw = icmp samesign ult i64 %indvars.iv.next11.i.i, %wide.trip.count.i54
  br i1 %i.mw, label %.lr.ph.i151.i, label %.loopexit.i.i

.lr.ph.i151.i:                                    ; preds = %bb.cc
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %storemerge189.i, i64 %indvars.iv10.i.i
  br label %._crit_edge.i.i.i

bb.cd:                                            ; preds = %Exa9_KissatAddClause.exit.i.i
  %indvars.iv.next8.i.i = add nuw nsw i64 %indvars.iv7.i.i, 1 ; 2 uses
  %exitcond.not.i153.i = icmp eq i64 %indvars.iv.next8.i.i, %wide.trip.count.i54
  br i1 %exitcond.not.i153.i, label %.loopexit.i.i, label %._crit_edge.i.i.i, !llvm.loop !137

._crit_edge.i.i.i:                                ; preds = %bb.cd, %.lr.ph.i151.i
  %indvars.iv7.i.i = phi i64 [ %indvars.iv.i149.i, %.lr.ph.i151.i ], [ %indvars.iv.next8.i.i, %bb.cd ] ; 2 uses
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !51 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %storemerge189.i, i64 %indvars.iv7.i.i
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !51 ; 2 uses
  %i.nb = load ptr, ptr %i.id, align 8, !tbaa !40
  %i.nc = ashr i32 %i.my, 1                       ; 2 uses
  %i.nd = and i32 %i.my, 1
  %.not.i.i.not.i.i = icmp eq i32 %i.nd, 0
  %i.ne = sub nsw i32 0, %i.nc
  %i.nf = select i1 %.not.i.i.not.i.i, i32 %i.ne, i32 %i.nc
  tail call void @kissat_add(ptr noundef %i.nb, i32 noundef %i.nf) #19
  %i.ng = load ptr, ptr %i.id, align 8, !tbaa !40
  %i.nh = ashr i32 %i.na, 1                       ; 2 uses
  %i.ni = and i32 %i.na, 1
  %.not.i.i.1.not.i.i = icmp eq i32 %i.ni, 0
  %i.nj = sub nsw i32 0, %i.nh
  %i.nk = select i1 %.not.i.i.1.not.i.i, i32 %i.nj, i32 %i.nh
  tail call void @kissat_add(ptr noundef %i.ng, i32 noundef %i.nk) #19
  %i.nl = load ptr, ptr %i.id, align 8, !tbaa !40
  tail call void @kissat_add(ptr noundef %i.nl, i32 noundef 0) #19
  %i.nm = load i32, ptr %i.im, align 4, !tbaa !42
  %.not.i.i152.i = icmp eq i32 %i.nm, 0
  br i1 %.not.i.i152.i, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge.i.i.i
  %i.nn = load i32, ptr %i.b, align 8, !tbaa !47
  %.not12.i.i.i = icmp eq i32 %i.nn, 0
  br i1 %.not12.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.no = load i32, ptr %i.ji, align 4, !tbaa !48
  %i.np = add nsw i32 %i.no, 1
  store i32 %i.np, ptr %i.ji, align 4, !tbaa !48
  br label %Exa9_KissatAddClause.exit.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.nq = load i32, ptr %i.jj, align 8, !tbaa !49
  %i.nr = add nsw i32 %i.nq, 1
  store i32 %i.nr, ptr %i.jj, align 8, !tbaa !49
  br label %Exa9_KissatAddClause.exit.i.i

bb.ch:                                            ; preds = %._crit_edge.i.i.i
  %i.ns = load i32, ptr %i.jk, align 8, !tbaa !50
  %i.nt = add nsw i32 %i.ns, 1
  store i32 %i.nt, ptr %i.jk, align 8, !tbaa !50
  br label %Exa9_KissatAddClause.exit.i.i

Exa9_KissatAddClause.exit.i.i:                    ; preds = %bb.ch, %bb.cg, %bb.cf
  %i.nu = load ptr, ptr %i.id, align 8, !tbaa !40
  %i.nv = tail call i32 @kissat_is_inconsistent(ptr noundef %i.nu) #19
  %.not13.i.not.i.i = icmp eq i32 %i.nv, 0
  br i1 %.not13.i.not.i.i, label %bb.cd, label %Exa9_ManAddAtMostOnePair.exit.thread.i

Exa9_ManAddAtMostOnePair.exit.i:                  ; preds = %.loopexit.i.i
  %.not.i154.i = icmp eq ptr %storemerge189.i, null
  br i1 %.not.i154.i, label %Vec_IntFree.exit155.i, label %Exa9_ManAddAtMostOnePair.exit.thread.i

Exa9_ManAddAtMostOnePair.exit.thread.i:           ; preds = %Exa9_KissatAddClause.exit.i.i, %Exa9_ManAddAtMostOnePair.exit.i
  %i.nw = phi i32 [ 1, %Exa9_ManAddAtMostOnePair.exit.i ], [ 0, %Exa9_KissatAddClause.exit.i.i ]
  tail call void @free(ptr noundef nonnull %storemerge189.i) #19
  br label %Vec_IntFree.exit155.i

Vec_IntFree.exit155.i:                            ; preds = %Exa9_ManAddAtMostOnePair.exit.thread.i, %Exa9_ManAddAtMostOnePair.exit.i
  %.not97162.i = phi i32 [ 1, %Exa9_ManAddAtMostOnePair.exit.i ], [ %i.nw, %Exa9_ManAddAtMostOnePair.exit.thread.i ]
  tail call void @free(ptr noundef nonnull %i.ja) #19
  br label %Exa9_ManAddOneHotSeq.exit

bb.ci:                                            ; preds = %bb.c
  %i.nx = getelementptr i8, ptr %1, i64 8
  %.val23 = load ptr, ptr %i.nx, align 8, !tbaa !45
  %i.ny = tail call fastcc i32 @Exa9_ManAddOneHotQuad(ptr noundef nonnull %0, i32 %.val, ptr %.val23)
  br label %Exa9_ManAddOneHotSeq.exit

Exa9_ManAddOneHotSeq.exit:                        ; preds = %._crit_edge.i36, %Exa9_KissatAddClause.exit96.i, %Exa9_KissatAddClause.exit106.i, %Exa9_KissatAddClause.exit81.i, %Exa9_KissatAddClause.exit71.i, %Exa9_KissatAddClause.exit61.i, %Vec_IntFree.exit155.i, %Vec_IntFree.exit148.i, %Vec_IntFree.exit136.i, %bb.bp, %Vec_IntFree.exit.i, %Exa9_KissatAddClause.exit.i51, %Exa9_KissatAddClause.exit.i33, %Exa9_KissatAddClause.exit91.i, %Exa9_KissatAddClause.exit51.i, %Exa9_KissatAddClause.exit.i, %bb.ci, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.ny, %bb.ci ], [ 0, %bb.bp ], [ 0, %Exa9_KissatAddClause.exit81.i ], [ 0, %Exa9_KissatAddClause.exit.i ], [ %i.en, %Exa9_KissatAddClause.exit91.i ], [ %.not97162.i, %Vec_IntFree.exit155.i ], [ 0, %Exa9_KissatAddClause.exit51.i ], [ 0, %Vec_IntFree.exit136.i ], [ 0, %Exa9_KissatAddClause.exit96.i ], [ 0, %Exa9_KissatAddClause.exit.i33 ], [ 0, %Exa9_KissatAddClause.exit106.i ], [ %i.jl, %Vec_IntFree.exit.i ], [ 0, %Exa9_KissatAddClause.exit.i51 ], [ 0, %Vec_IntFree.exit148.i ], [ 0, %Exa9_KissatAddClause.exit61.i ], [ 0, %Exa9_KissatAddClause.exit71.i ], [ 1, %._crit_edge.i36 ]
  store i32 %i.c, ptr %i.b, align 8, !tbaa !47
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @Exa9_ManAddOneHotQuad(ptr nofree noundef captures(none) %0, i32 %.4.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %.4.val, 1                  ; 2 uses
  br i1 %i.a, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.trip.count.i = zext nneg i32 %.4.val to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %.8.val, i64 %indvars.iv.i
  %i.e = load i32, ptr %i.d, align 4, !tbaa !51   ; 2 uses
  %i.f = ashr i32 %i.e, 1                         ; 2 uses
  %i.g = and i32 %i.e, 1
  %.not.i.i = icmp eq i32 %i.g, 0
  %i.h = sub nsw i32 0, %i.f
  %i.i = select i1 %.not.i.i, i32 %i.f, i32 %i.h
  tail call void @kissat_add(ptr noundef %i.c, i32 noundef %i.i) #19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40
  tail call void @kissat_add(ptr noundef %i.k, i32 noundef 0) #19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !42
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i32, ptr %i.n, align 8, !tbaa !47
  %.not12.i = icmp eq i32 %i.o, 0
  br i1 %.not12.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !48
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !48
  br label %Exa9_KissatAddClause.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !49
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8, !tbaa !49
  br label %Exa9_KissatAddClause.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !50
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !50
  br label %Exa9_KissatAddClause.exit

Exa9_KissatAddClause.exit:                        ; preds = %bb.d, %bb.e, %bb.f
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.z = tail call i32 @kissat_is_inconsistent(ptr noundef %i.y) #19
  %.not13.i.not = icmp ne i32 %i.z, 0             ; 2 uses
  %brmerge = or i1 %.not13.i.not, %i.a
  %not..not13.i.not = xor i1 %.not13.i.not, true
  %.mux = zext i1 %not..not13.i.not to i32
  br i1 %brmerge, label %.loopexit1, label %.lr.ph5

.lr.ph5:                                          ; preds = %Exa9_KissatAddClause.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = zext nneg i32 %.4.val to i64
  %wide.trip.count13 = zext nneg i32 %.4.val to i64 ; 2 uses
  br label %bb.g

.loopexit:                                        ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond14.not = icmp eq i64 %indvars.iv.next11, %wide.trip.count13
  br i1 %exitcond14.not, label %.loopexit1, label %bb.g, !llvm.loop !138

bb.g:                                             ; preds = %.lr.ph5, %.loopexit
  %indvars.iv10 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next11, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph5 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1 ; 3 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next11, %i.ae
  br i1 %i.af, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.8.val, i64 %indvars.iv10
  br label %._crit_edge.i29

bb.h:                                             ; preds = %Exa9_KissatAddClause.exit33
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next8, %wide.trip.count13
  br i1 %exitcond.not, label %.loopexit, label %._crit_edge.i29, !llvm.loop !139

._crit_edge.i29:                                  ; preds = %.lr.ph, %bb.h
  %indvars.iv7 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next8, %bb.h ] ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !51 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.8.val, i64 %indvars.iv7
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !51 ; 2 uses
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.al = ashr i32 %i.ah, 1                       ; 2 uses
  %i.am = and i32 %i.ah, 1
  %.not.i.i26.not = icmp eq i32 %i.am, 0
  %i.an = sub nsw i32 0, %i.al
  %i.ao = select i1 %.not.i.i26.not, i32 %i.an, i32 %i.al
  tail call void @kissat_add(ptr noundef %i.ak, i32 noundef %i.ao) #19
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.aq = ashr i32 %i.aj, 1                       ; 2 uses
  %i.ar = and i32 %i.aj, 1
  %.not.i.i26.1.not = icmp eq i32 %i.ar, 0
  %i.as = sub nsw i32 0, %i.aq
  %i.at = select i1 %.not.i.i26.1.not, i32 %i.as, i32 %i.aq
  tail call void @kissat_add(ptr noundef %i.ap, i32 noundef %i.at) #19
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !40
  tail call void @kissat_add(ptr noundef %i.au, i32 noundef 0) #19
  %i.av = load i32, ptr %i.l, align 4, !tbaa !42
  %.not.i30 = icmp eq i32 %i.av, 0
  br i1 %.not.i30, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i29
  %i.aw = load i32, ptr %i.aa, align 8, !tbaa !47
  %.not12.i31 = icmp eq i32 %i.aw, 0
  br i1 %.not12.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load i32, ptr %i.ab, align 4, !tbaa !48
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.ab, align 4, !tbaa !48
  br label %Exa9_KissatAddClause.exit33

bb.k:                                             ; preds = %bb.i
  %i.az = load i32, ptr %i.ac, align 8, !tbaa !49
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ac, align 8, !tbaa !49
  br label %Exa9_KissatAddClause.exit33

bb.l:                                             ; preds = %._crit_edge.i29
  %i.bb = load i32, ptr %i.ad, align 8, !tbaa !50
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ad, align 8, !tbaa !50
  br label %Exa9_KissatAddClause.exit33

Exa9_KissatAddClause.exit33:                      ; preds = %bb.j, %bb.k, %bb.l
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.be = tail call i32 @kissat_is_inconsistent(ptr noundef %i.bd) #19
  %.not13.i32.not = icmp eq i32 %i.be, 0
  br i1 %.not13.i32.not, label %bb.h, label %.loopexit1

.loopexit1:                                       ; preds = %.loopexit, %Exa9_KissatAddClause.exit33, %Exa9_KissatAddClause.exit
  %.3 = phi i32 [ 0, %Exa9_KissatAddClause.exit33 ], [ %.mux, %Exa9_KissatAddClause.exit ], [ 1, %.loopexit ]
  ret i32 %.3
}

declare void @kissat_add(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @kissat_is_inconsistent(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

declare i32 @kissat_value(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare ptr @Extra_TimeStamp(...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #14

declare void @kissat_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.ctlz.v4i32(<4 x i32>, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(1) }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20}
!3 = distinct !{!3, !20}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"p1 int", !12, i64 0}
!15 = !{!"p1 _ZTS10Vec_Wrd_t_", !12, i64 0}
!16 = !{!"Bmc_EsPar_t_", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !14, i64 160, !14, i64 168, !15, i64 176}
!17 = !{!16, !9, i64 80}
!18 = !{!16, !9, i64 0}
!19 = !{!16, !9, i64 4}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!16, !9, i64 120}
!24 = !{!16, !9, i64 104}
!25 = !{!"long", !8, i64 0}
!26 = !{!"timespec", !25, i64 0, !25, i64 8}
!27 = !{!26, !25, i64 0}
!28 = !{!26, !25, i64 8}
!29 = !{!16, !13, i64 136}
!30 = !{!8, !8, i64 0}
!31 = !{!16, !13, i64 128}
!32 = !{!"p1 _ZTS12Bmc_EsPar_t_", !12, i64 0}
!33 = !{!"p1 long", !12, i64 0}
!34 = !{!"p1 _ZTS6kissat", !12, i64 0}
!35 = !{!"Exa9_Man_t_", !32, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !33, i64 64, !15, i64 72, !34, i64 80, !25, i64 88}
!36 = !{!35, !32, i64 0}
!37 = !{!35, !9, i64 8}
!38 = !{!35, !9, i64 12}
!39 = !{!35, !9, i64 16}
!40 = !{!35, !34, i64 80}
!41 = !{!35, !25, i64 88}
!42 = !{!35, !9, i64 52}
!43 = !{!"Vec_Int_t_", !9, i64 0, !9, i64 4, !14, i64 8}
!44 = !{!43, !9, i64 0}
!45 = !{!43, !14, i64 8}
!46 = !{!43, !9, i64 4}
!47 = !{!35, !9, i64 56}
!48 = !{!35, !9, i64 44}
!49 = !{!35, !9, i64 40}
!50 = !{!35, !9, i64 48}
!51 = !{!9, !9, i64 0}
!52 = distinct !{!52, !20, !106, !107}
!53 = distinct !{!53, !20, !107, !106}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !20}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !20, !106, !107}
!58 = distinct !{!58, !20, !106, !107}
!59 = distinct !{!59, !20, !106, !107}
!60 = distinct !{!60, !20, !107, !106}
!61 = distinct !{!61, !20, !107, !106}
!62 = distinct !{!62, !20, !107, !106}
!63 = distinct !{!63, !20}
!64 = distinct !{!64, !20}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = distinct !{!68, !20}
!69 = distinct !{!69, !20}
!70 = distinct !{!70, !20}
!71 = distinct !{!71, !20}
!72 = distinct !{!72, !20}
!73 = distinct !{!73, !20}
!74 = distinct !{!74, !20}
!75 = distinct !{!75, !20}
!76 = distinct !{!76, !20}
!77 = distinct !{!77, !20}
!78 = distinct !{!78, !20}
!79 = distinct !{!79, !20, !106, !107}
!80 = distinct !{!80, !20, !106, !107}
!81 = distinct !{!81, !20}
!82 = distinct !{!82, !20, !106, !107}
!83 = distinct !{!83, !20, !106, !107}
!84 = distinct !{!84, !20, !106}
!85 = distinct !{!85, !20, !106}
!86 = distinct !{!86, !20, !106, !107}
!87 = distinct !{!87, !20, !106, !107}
!88 = distinct !{!88, !120}
!89 = distinct !{!89, !20, !106}
!90 = distinct !{!90, !20, !106}
!91 = distinct !{!91, !20}
!92 = distinct !{!92, !20, !106, !107}
!93 = distinct !{!93, !20, !107, !106}
!94 = distinct !{!94, !20}
!95 = distinct !{!95, !20, !106, !107}
!96 = distinct !{!96, !20, !107, !106}
!97 = distinct !{!97, !20}
!98 = distinct !{!98, !20}
!99 = !{ptr @Exa9_ManExactSynthesisIter}
!100 = !{!16, !9, i64 116}
!101 = !{!16, !9, i64 100}
!102 = !{!16, !9, i64 88}
!103 = !{!16, !9, i64 20}
!104 = !{!16, !9, i64 24}
!105 = !{!16, !9, i64 108}
!106 = !{!"llvm.loop.isvectorized", i32 1}
!107 = !{!"llvm.loop.unroll.runtime.disable"}
!108 = !{!25, !25, i64 0}
!109 = !{!35, !9, i64 20}
!110 = !{!35, !9, i64 24}
!111 = !{!35, !9, i64 28}
!112 = !{!35, !9, i64 32}
!113 = !{!35, !9, i64 36}
!114 = !{!35, !33, i64 64}
!115 = !{!"Vec_Wrd_t_", !9, i64 0, !9, i64 4, !33, i64 8}
!116 = !{!115, !9, i64 0}
!117 = !{!115, !33, i64 8}
!118 = !{!115, !9, i64 4}
!119 = !{!35, !15, i64 72}
!120 = !{!"llvm.loop.unroll.disable"}
!121 = distinct !{!121, i1 false, !"vprintf"}
!122 = distinct !{!122, !121, !"vprintf: argument 0"}
!123 = distinct !{null}
!124 = !{!122}
!125 = distinct !{!125, !20}
!126 = distinct !{!126, !20}
!127 = !{}
!128 = distinct !{!128, !20}
!129 = distinct !{!129, !20}
!130 = distinct !{!130, !20}
!131 = distinct !{!131, !20}
!132 = distinct !{!132, !20}
!133 = distinct !{!133, !20}
!134 = distinct !{!134, !20}
!135 = distinct !{!135, !20}
!136 = distinct !{!136, !20}
!137 = distinct !{!137, !20}
!138 = distinct !{!138, !20}
!139 = distinct !{!139, !20}
end_hunk_0
