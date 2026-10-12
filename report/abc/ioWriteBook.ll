Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioWriteBook?download=true
inline.NumInlined: 242
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Io_WriteBook:bb.a
  %i.ga = phi i32 [ 0, %.lr.ph109.lr.ph.i.i.i ], [ %i.vq, %Extra_ProgressBarUpdate.exit.i.i.i ] ; 9 uses
  %.043.ph116.i.i.i = phi ptr [ %i.fo, %.lr.ph109.lr.ph.i.i.i ], [ %.1.i.i.i, %Extra_ProgressBarUpdate.exit.i.i.i ] ; 2 uses
  %.044.ph115.i.i.i = phi i1 [ true, %.lr.ph109.lr.ph.i.i.i ], [ %.not5088.i.i.i, %Extra_ProgressBarUpdate.exit.i.i.i ]
  %.045.ph114.i.i.i = phi i32 [ 0, %.lr.ph109.lr.ph.i.i.i ], [ %.2.i.i.i, %Extra_ProgressBarUpdate.exit.i.i.i ] ; 2 uses
  %.047.ph113.i.i.i = phi i32 [ 1, %.lr.ph109.lr.ph.i.i.i ], [ %.148.i.i.i, %Extra_ProgressBarUpdate.exit.i.i.i ] ; 3 uses
  %i.gb = getelementptr i8, ptr %.043.ph116.i.i.i, i64 16
  %.043.val55.peel.i.i.i = load i32, ptr %i.gb, align 8, !tbaa !77 ; 2 uses
  %i.gc = zext i32 %.043.val55.peel.i.i.i to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !27
  %i.gf = icmp eq i32 %i.ge, 0
  %or.cond.peel.i.i.i = or i1 %.044.ph115.i.i.i, %i.gf
  br i1 %or.cond.peel.i.i.i, label %.split.us.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph109.split.preheader.i.i.i
  %i.gg = add nuw i32 %.047.ph113.i.i.i, 1        ; 2 uses
  %.val52.peel.i.i.i = load ptr, ptr %i.cx, align 8, !tbaa !31
  %i.gh = icmp ult i32 %i.gg, %.val.i.i.i
  br i1 %i.gh, label %.lr.ph109.split.i.i.i, label %Io_NtkOrderingPads.exit.i.i

.lr.ph109.split.i.i.i:                            ; preds = %bb.aa, %bb.ab
  %.pn.in.i.i.i = phi i32 [ %.047106.i.i.i, %bb.ab ], [ %.047.ph113.i.i.i, %bb.aa ]
  %.047106.i.i.i = phi i32 [ %i.gn, %bb.ab ], [ %i.gg, %bb.aa ] ; 3 uses
  %.pn.i.i.i = sext i32 %.pn.in.i.i.i to i64
  %.043108.in.i.i.i = getelementptr inbounds [8 x i8], ptr %.val52.peel.i.i.i, i64 %.pn.i.i.i
  %.043108.i.i.i = load ptr, ptr %.043108.in.i.i.i, align 8, !tbaa !32 ; 2 uses
  %i.gi = getelementptr i8, ptr %.043108.i.i.i, i64 16
  %.043.val55.i.i.i = load i32, ptr %i.gi, align 8, !tbaa !77 ; 2 uses
  %i.gj = zext i32 %.043.val55.i.i.i to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !27
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %.split.us.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph109.split.i.i.i
  %i.gn = add i32 %.047106.i.i.i, 1               ; 2 uses
  %exitcond.not.i43.i = icmp eq i32 %i.gn, %.val.i.i.i
  br i1 %exitcond.not.i43.i, label %Io_NtkOrderingPads.exit.i.i, label %.lr.ph109.split.i.i.i, !llvm.loop !55

.split.us.i.i.i:                                  ; preds = %.lr.ph109.split.i.i.i, %.lr.ph109.split.preheader.i.i.i
  %.043.val.i346.i.i = phi i32 [ %.043.val55.peel.i.i.i, %.lr.ph109.split.preheader.i.i.i ], [ %.043.val55.i.i.i, %.lr.ph109.split.i.i.i ] ; 2 uses
  %.043108.lcssa.i.i.i = phi ptr [ %.043.ph116.i.i.i, %.lr.ph109.split.preheader.i.i.i ], [ %.043108.i.i.i, %.lr.ph109.split.i.i.i ] ; 11 uses
  %.047106.lcssa.i.i.i = phi i32 [ %.047.ph113.i.i.i, %.lr.ph109.split.preheader.i.i.i ], [ %.047106.i.i.i, %.lr.ph109.split.i.i.i ] ; 3 uses
  %i.go = getelementptr i8, ptr %.043108.lcssa.i.i.i, i64 16 ; 2 uses
  %i.gp = icmp sgt i32 %i.ga, 0
  br i1 %i.gp, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.us.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.ga to i64
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ad
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.ad, !llvm.loop !56

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.ac ] ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv.i.i.i.i
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !32
  %i.gs = icmp eq ptr %i.gr, %.043108.lcssa.i.i.i
  br i1 %i.gs, label %Vec_PtrAlloc.exit.i.i.i.i, label %bb.ac

._crit_edge.i.i.i.i:                              ; preds = %bb.ac, %.split.us.i.i.i
  %i.gt = load i32, ptr %i.fg, align 8, !tbaa !76
  %i.gu = icmp eq i32 %i.ga, %i.gt
  br i1 %i.gu, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i
  %i.gv = icmp slt i32 %i.ga, 16
  br i1 %i.gv, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not9.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gw = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.fz, i64 noundef 128) #20
  br label %Vec_PtrGrow.exit12.sink.split.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.gx = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #19
  br label %Vec_PtrGrow.exit12.sink.split.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ae
  %i.gy = icmp samesign ult i32 %i.ga, 1073741823
  %i.gz = shl nuw nsw i32 %i.ga, 1
  %spec.select.i.i.i.i.i = select i1 %i.gy, i32 %i.gz, i32 2147483647 ; 4 uses
  %.not.i10.i.i.i.i.i = icmp samesign ult i32 %i.ga, %spec.select.i.i.i.i.i
  br i1 %.not.i10.i.i.i.i.i, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %.not9.i11.i.i.i.i.i = icmp eq ptr %i.fz, null
  %i.ha = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.hb = shl nuw nsw i64 %i.ha, 3                ; 2 uses
  br i1 %.not9.i11.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hc = tail call ptr @realloc(ptr noundef nonnull %i.fz, i64 noundef %i.hb) #20
  br label %Vec_PtrGrow.exit12.sink.split.i.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.hd = tail call noalias ptr @malloc(i64 noundef %i.hb) #19
  br label %Vec_PtrGrow.exit12.sink.split.i.i.i.i.i

Vec_PtrGrow.exit12.sink.split.i.i.i.i.i:          ; preds = %bb.al, %bb.ak, %bb.ah, %bb.ag
  %storemerge.i.i.i = phi ptr [ %i.gx, %bb.ah ], [ %i.gw, %bb.ag ], [ %i.hc, %bb.ak ], [ %i.hd, %bb.al ] ; 2 uses
  %spec.select.sink.i.i.i.i.i = phi i32 [ 16, %bb.ah ], [ 16, %bb.ag ], [ %spec.select.i.i.i.i.i, %bb.ak ], [ %spec.select.i.i.i.i.i, %bb.al ]
  store ptr %storemerge.i.i.i, ptr %i.fn, align 8, !tbaa !31
  store i32 %spec.select.sink.i.i.i.i.i, ptr %i.fg, align 8, !tbaa !76
  %.043.val.i.pre.i.i = load i32, ptr %i.go, align 8, !tbaa !77
  br label %bb.am

bb.am:                                            ; preds = %Vec_PtrGrow.exit12.sink.split.i.i.i.i.i, %bb.ai, %._crit_edge.i.i.i.i
  %.043.val.i.i.i = phi i32 [ %.043.val.i346.i.i, %._crit_edge.i.i.i.i ], [ %.043.val.i346.i.i, %bb.ai ], [ %.043.val.i.pre.i.i, %Vec_PtrGrow.exit12.sink.split.i.i.i.i.i ]
  %i.he = phi ptr [ %i.fz, %._crit_edge.i.i.i.i ], [ %i.fz, %bb.ai ], [ %storemerge.i.i.i, %Vec_PtrGrow.exit12.sink.split.i.i.i.i.i ]
  %i.hf = add nsw i32 %i.ga, 1
  store i32 %i.hf, ptr %i.fi, align 4, !tbaa !30
  %i.hg = sext i32 %i.ga to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.hg
  store ptr %.043108.lcssa.i.i.i, ptr %i.hh, align 8, !tbaa !32
  %i.hi = zext i32 %.043.val.i.i.i to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.hi
  store i32 1, ptr %i.hj, align 4, !tbaa !27
  %i.hk = add i32 %.045.ph114.i.i.i, 1
  br label %Vec_PtrAlloc.exit.i.i.i.i

Vec_PtrAlloc.exit.i.i.i.i:                        ; preds = %bb.ad, %bb.am
  %.146.i.i.i = phi i32 [ %i.hk, %bb.am ], [ %.045.ph114.i.i.i, %bb.ad ] ; 2 uses
  %i.hl = tail call noalias ptr @malloc(i64 noundef %i.ft) #19 ; 4 uses
  %i.hm = load ptr, ptr %i.fu, align 8, !tbaa !79
  %.not.i125.i.i.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i125.i.i.i.i, label %bb.an, label %Abc_NtkIncrementTravId.exit.i.i.i.i

bb.an:                                            ; preds = %Vec_PtrAlloc.exit.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.fw, align 8, !tbaa !38
  %i.hn = getelementptr i8, ptr %.val.i.i.i.i.i, i64 4
  %.val.val.i.i.i.i.i = load i32, ptr %i.hn, align 4, !tbaa !30 ; 2 uses
  %i.ho = add nsw i32 %.val.val.i.i.i.i.i, 500    ; 5 uses
  %i.hp = load i32, ptr %i.fv, align 8, !tbaa !39
  %.not.i.i.i.i.i.i.i = icmp slt i32 %i.hp, %i.ho
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ao, label %Vec_IntGrow.exit.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.hq = sext i32 %i.ho to i64
  %i.hr = shl nsw i64 %i.hq, 2
  %i.hs = tail call noalias ptr @malloc(i64 noundef %i.hr) #19 ; 2 uses
  store ptr %i.hs, ptr %i.fu, align 8, !tbaa !40
  store i32 %i.ho, ptr %i.fv, align 8, !tbaa !39
  br label %Vec_IntGrow.exit.i.i.i.i.i.i

Vec_IntGrow.exit.i.i.i.i.i.i:                     ; preds = %bb.ao, %bb.an
  %i.ht = phi ptr [ %i.hs, %bb.ao ], [ null, %bb.an ]
  %i.hu = icmp sgt i32 %.val.val.i.i.i.i.i, -500
  br i1 %i.hu, label %.lr.ph.i.i.i.i.i.i, label %Vec_IntFill.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %Vec_IntGrow.exit.i.i.i.i.i.i
  %i.hv = zext nneg i32 %i.ho to i64
  %i.hw = shl nuw nsw i64 %i.hv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ht, i8 0, i64 %i.hw, i1 false), !tbaa !27
  br label %Vec_IntFill.exit.i.i.i.i.i

Vec_IntFill.exit.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i.i.i
  store i32 %i.ho, ptr %i.fx, align 4, !tbaa !41
  br label %Abc_NtkIncrementTravId.exit.i.i.i.i

Abc_NtkIncrementTravId.exit.i.i.i.i:              ; preds = %Vec_IntFill.exit.i.i.i.i.i, %Vec_PtrAlloc.exit.i.i.i.i
  %i.hx = load i32, ptr %i.fy, align 8, !tbaa !42
  %i.hy = add nsw i32 %i.hx, 1
  store i32 %i.hy, ptr %i.fy, align 8, !tbaa !42
  %.val123.i.i.i.i = load ptr, ptr %.043108.lcssa.i.i.i, align 8, !tbaa !43
  %.val124.i.i.i.i = load i32, ptr %i.go, align 8, !tbaa !77
  tail call fastcc void @Abc_NodeSetTravIdCurrent(ptr %.val123.i.i.i.i, i32 %.val124.i.i.i.i)
  %i.hz = getelementptr i8, ptr %.043108.lcssa.i.i.i, i64 20
  %.val118.i.i.i.i = load i32, ptr %i.hz, align 4
  %i.ia = and i32 %.val118.i.i.i.i, 15
  %.not.i56.i.i.i = icmp eq i32 %i.ia, 2
  %.val89.i.i.i.i = load ptr, ptr %.043108.lcssa.i.i.i, align 8, !tbaa !43
  %i.ib = getelementptr i8, ptr %.val89.i.i.i.i, i64 32
  %.val89.val.i.i.i.i = load ptr, ptr %i.ib, align 8, !tbaa !38
  %i.ic = getelementptr i8, ptr %.val89.val.i.i.i.i, i64 8
  %.val89.val.val.i.i.i.i = load ptr, ptr %i.ic, align 8, !tbaa !31 ; 2 uses
  br i1 %.not.i56.i.i.i, label %bb.ap, label %bb.az

bb.ap:                                            ; preds = %Abc_NtkIncrementTravId.exit.i.i.i.i
  %i.id = getelementptr i8, ptr %.043108.lcssa.i.i.i, i64 48
  %.val90.i.i.i.i = load ptr, ptr %i.id, align 8, !tbaa !44
  %.val90.val.i.i.i.i = load i32, ptr %.val90.i.i.i.i, align 4, !tbaa !27
  %i.ie = sext i32 %.val90.val.i.i.i.i to i64
  %i.if = getelementptr inbounds [8 x i8], ptr %.val89.val.val.i.i.i.i, i64 %i.ie
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !32 ; 3 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 44     ; 2 uses
  %.val112195.i.i.i.i = load i32, ptr %i.ih, align 4, !tbaa !45
  %i.ii = icmp sgt i32 %.val112195.i.i.i.i, 0
  br i1 %i.ii, label %.lr.ph197.i.i.i.i, label %thread-pre-split.preheader.i.i.i.i

.lr.ph197.i.i.i.i:                                ; preds = %bb.ap
  %i.ij = getelementptr i8, ptr %i.ig, i64 48
  br label %bb.aq

thread-pre-split.preheader.i.i.i.i:               ; preds = %Vec_PtrPush.exit133.i.i.i.i, %Vec_PtrPush.exit.i61.i.i.i, %bb.az, %bb.ap
  %i.ik = phi i32 [ %spec.store.select.i.i.i.i, %bb.az ], [ %spec.select.sink.i201.i.i.i.i, %Vec_PtrPush.exit.i61.i.i.i ], [ %spec.store.select.i.i.i.i, %bb.ap ], [ %spec.select.sink.i130190.i.i.i.i, %Vec_PtrPush.exit133.i.i.i.i ] ; 2 uses
  %.val82260.i.i.i.i = phi ptr [ %i.hl, %bb.az ], [ %storemerge205.i.i.i.i, %Vec_PtrPush.exit.i61.i.i.i ], [ %i.hl, %bb.ap ], [ %storemerge183194.i.i.i.i, %Vec_PtrPush.exit133.i.i.i.i ] ; 3 uses
  %.promoted212.i.i.i.i = phi i64 [ 0, %bb.az ], [ %indvars.iv.next235.i.i.i.i, %Vec_PtrPush.exit.i61.i.i.i ], [ 0, %bb.ap ], [ %indvars.iv.next228.i.i.i.i, %Vec_PtrPush.exit133.i.i.i.i ] ; 3 uses
  %exitcond.i.i.i.i209216 = icmp eq i64 %.promoted212.i.i.i.i, 0
  br i1 %exitcond.i.i.i.i209216, label %Io_NtkBfsPads.exit.i.i.i, label %.lr.ph212

bb.aq:                                            ; preds = %Vec_PtrPush.exit.i61.i.i.i, %.lr.ph197.i.i.i.i
  %indvars.iv234.i.i.i.i = phi i64 [ 0, %.lr.ph197.i.i.i.i ], [ %indvars.iv.next235.i.i.i.i, %Vec_PtrPush.exit.i61.i.i.i ] ; 7 uses
  %storemerge204.i.i.i.i = phi ptr [ %i.hl, %.lr.ph197.i.i.i.i ], [ %storemerge205.i.i.i.i, %Vec_PtrPush.exit.i61.i.i.i ] ; 6 uses
  %spec.select.sink.i202.i.i.i.i = phi i32 [ %spec.store.select.i.i.i.i, %.lr.ph197.i.i.i.i ], [ %spec.select.sink.i201.i.i.i.i, %Vec_PtrPush.exit.i61.i.i.i ] ; 4 uses
  %.val115.i.i.i.i = load ptr, ptr %i.ig, align 8, !tbaa !43
  %.val116.i.i.i.i = load ptr, ptr %i.ij, align 8, !tbaa !44
  %i.il = getelementptr i8, ptr %.val115.i.i.i.i, i64 32
  %.val115.val.i.i.i.i = load ptr, ptr %i.il, align 8, !tbaa !38
  %i.im = getelementptr i8, ptr %.val115.val.i.i.i.i, i64 8
  %.val115.val.val.i.i.i.i = load ptr, ptr %i.im, align 8, !tbaa !31
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.val116.i.i.i.i, i64 %indvars.iv234.i.i.i.i
  %i.io = load i32, ptr %i.in, align 4, !tbaa !27
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [8 x i8], ptr %.val115.val.val.i.i.i.i, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !32
  %i.is = trunc nuw nsw i64 %indvars.iv234.i.i.i.i to i32
  %i.it = icmp eq i32 %spec.select.sink.i202.i.i.i.i, %i.is
  br i1 %i.it, label %bb.ar, label %Vec_PtrPush.exit.i61.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.iu = icmp samesign ult i64 %indvars.iv234.i.i.i.i, 16
  br i1 %i.iu, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %.not9.i.i.i65.i.i.i = icmp eq ptr %storemerge204.i.i.i.i, null
  br i1 %.not9.i.i.i65.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iv = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge204.i.i.i.i, i64 noundef 128) #20
  br label %Vec_PtrPush.exit.i61.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.iw = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #19
  br label %Vec_PtrPush.exit.i61.i.i.i

bb.av:                                            ; preds = %bb.ar
  %i.ix = icmp samesign ult i64 %indvars.iv234.i.i.i.i, 1073741823
  %i.iy = shl nuw nsw i32 %spec.select.sink.i202.i.i.i.i, 1
  %spec.select.i.i62.i.i.i = select i1 %i.ix, i32 %i.iy, i32 2147483647 ; 3 uses
  %i.iz = zext nneg i32 %spec.select.i.i62.i.i.i to i64 ; 2 uses
  %.not.i10.i.i63.i.i.i = icmp samesign ult i64 %indvars.iv234.i.i.i.i, %i.iz
  br i1 %.not.i10.i.i63.i.i.i, label %bb.aw, label %Vec_PtrPush.exit.i61.i.i.i

bb.aw:                                            ; preds = %bb.av
  %.not9.i11.i.i64.i.i.i = icmp eq ptr %storemerge204.i.i.i.i, null
  %i.ja = shl nuw nsw i64 %i.iz, 3                ; 2 uses
  br i1 %.not9.i11.i.i64.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jb = tail call ptr @realloc(ptr noundef nonnull %storemerge204.i.i.i.i, i64 noundef %i.ja) #20
  br label %Vec_PtrPush.exit.i61.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.jc = tail call noalias ptr @malloc(i64 noundef %i.ja) #19
  br label %Vec_PtrPush.exit.i61.i.i.i

Vec_PtrPush.exit.i61.i.i.i:                       ; preds = %bb.ay, %bb.ax, %bb.av, %bb.au, %bb.at, %bb.aq
  %storemerge205.i.i.i.i = phi ptr [ %storemerge204.i.i.i.i, %bb.aq ], [ %storemerge204.i.i.i.i, %bb.av ], [ %i.iw, %bb.au ], [ %i.iv, %bb.at ], [ %i.jb, %bb.ax ], [ %i.jc, %bb.ay ] ; 3 uses
  %spec.select.sink.i201.i.i.i.i = phi i32 [ %spec.select.sink.i202.i.i.i.i, %bb.aq ], [ %spec.select.sink.i202.i.i.i.i, %bb.av ], [ 16, %bb.au ], [ 16, %bb.at ], [ %spec.select.i.i62.i.i.i, %bb.ax ], [ %spec.select.i.i62.i.i.i, %bb.ay ] ; 2 uses
  %indvars.iv.next235.i.i.i.i = add nuw nsw i64 %indvars.iv234.i.i.i.i, 1 ; 3 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %storemerge205.i.i.i.i, i64 %indvars.iv234.i.i.i.i
  store ptr %i.ir, ptr %i.jd, align 8, !tbaa !32
  %.val112.i.i.i.i = load i32, ptr %i.ih, align 4, !tbaa !45
  %i.je = sext i32 %.val112.i.i.i.i to i64
  %i.jf = icmp slt i64 %indvars.iv.next235.i.i.i.i, %i.je
  br i1 %i.jf, label %bb.aq, label %thread-pre-split.preheader.i.i.i.i, !llvm.loop !57

bb.az:                                            ; preds = %Abc_NtkIncrementTravId.exit.i.i.i.i
  %i.jg = getelementptr i8, ptr %.043108.lcssa.i.i.i, i64 32
  %.val100.i.i.i.i = load ptr, ptr %i.jg, align 8, !tbaa !46
  %.val100.val.i.i.i.i = load i32, ptr %.val100.i.i.i.i, align 4, !tbaa !27
  %i.jh = sext i32 %.val100.val.i.i.i.i to i64
  %i.ji = getelementptr inbounds [8 x i8], ptr %.val89.val.val.i.i.i.i, i64 %i.jh
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !32 ; 3 uses
  %i.jk = getelementptr i8, ptr %i.jj, i64 28     ; 2 uses
  %.val110186.i.i.i.i = load i32, ptr %i.jk, align 4, !tbaa !47
  %i.jl = icmp sgt i32 %.val110186.i.i.i.i, 0
  br i1 %i.jl, label %.lr.ph.i58.i.i.i, label %thread-pre-split.preheader.i.i.i.i

.lr.ph.i58.i.i.i:                                 ; preds = %bb.az
  %i.jm = getelementptr i8, ptr %i.jj, i64 32
  br label %bb.ba

bb.ba:                                            ; preds = %Vec_PtrPush.exit133.i.i.i.i, %.lr.ph.i58.i.i.i
  %indvars.iv227.i.i.i.i = phi i64 [ 0, %.lr.ph.i58.i.i.i ], [ %indvars.iv.next228.i.i.i.i, %Vec_PtrPush.exit133.i.i.i.i ] ; 7 uses
  %storemerge183193.i.i.i.i = phi ptr [ %i.hl, %.lr.ph.i58.i.i.i ], [ %storemerge183194.i.i.i.i, %Vec_PtrPush.exit133.i.i.i.i ] ; 6 uses
  %spec.select.sink.i130191.i.i.i.i = phi i32 [ %spec.store.select.i.i.i.i, %.lr.ph.i58.i.i.i ], [ %spec.select.sink.i130190.i.i.i.i, %Vec_PtrPush.exit133.i.i.i.i ] ; 4 uses
  %.val106.i.i.i.i = load ptr, ptr %i.jj, align 8, !tbaa !43
  %.val107.i.i.i.i = load ptr, ptr %i.jm, align 8, !tbaa !46
  %i.jn = getelementptr i8, ptr %.val106.i.i.i.i, i64 32
  %.val106.val.i.i.i.i = load ptr, ptr %i.jn, align 8, !tbaa !38
  %i.jo = getelementptr i8, ptr %.val106.val.i.i.i.i, i64 8
  %.val106.val.val.i.i.i.i = load ptr, ptr %i.jo, align 8, !tbaa !31
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.val107.i.i.i.i, i64 %indvars.iv227.i.i.i.i
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !27
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [8 x i8], ptr %.val106.val.val.i.i.i.i, i64 %i.jr
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !32
  %i.ju = trunc nuw nsw i64 %indvars.iv227.i.i.i.i to i32
  %i.jv = icmp eq i32 %spec.select.sink.i130191.i.i.i.i, %i.ju
  br i1 %i.jv, label %bb.bb, label %Vec_PtrPush.exit133.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.jw = icmp samesign ult i64 %indvars.iv227.i.i.i.i, 16
  br i1 %i.jw, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %.not9.i.i131.i.i.i.i = icmp eq ptr %storemerge183193.i.i.i.i, null
  br i1 %.not9.i.i131.i.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jx = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge183193.i.i.i.i, i64 noundef 128) #20
  br label %Vec_PtrPush.exit133.i.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.jy = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #19
  br label %Vec_PtrPush.exit133.i.i.i.i

bb.bf:                                            ; preds = %bb.bb
  %i.jz = icmp samesign ult i64 %indvars.iv227.i.i.i.i, 1073741823
  %i.ka = shl nuw nsw i32 %spec.select.sink.i130191.i.i.i.i, 1
  %spec.select.i126.i.i.i.i = select i1 %i.jz, i32 %i.ka, i32 2147483647 ; 3 uses
  %i.kb = zext nneg i32 %spec.select.i126.i.i.i.i to i64 ; 2 uses
  %.not.i10.i127.i.i.i.i = icmp samesign ult i64 %indvars.iv227.i.i.i.i, %i.kb
  br i1 %.not.i10.i127.i.i.i.i, label %bb.bg, label %Vec_PtrPush.exit133.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  %.not9.i11.i128.i.i.i.i = icmp eq ptr %storemerge183193.i.i.i.i, null
  %i.kc = shl nuw nsw i64 %i.kb, 3                ; 2 uses
  br i1 %.not9.i11.i128.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kd = tail call ptr @realloc(ptr noundef nonnull %storemerge183193.i.i.i.i, i64 noundef %i.kc) #20
  br label %Vec_PtrPush.exit133.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.ke = tail call noalias ptr @malloc(i64 noundef %i.kc) #19
  br label %Vec_PtrPush.exit133.i.i.i.i

Vec_PtrPush.exit133.i.i.i.i:                      ; preds = %bb.bi, %bb.bh, %bb.bf, %bb.be, %bb.bd, %bb.ba
  %storemerge183194.i.i.i.i = phi ptr [ %storemerge183193.i.i.i.i, %bb.ba ], [ %storemerge183193.i.i.i.i, %bb.bf ], [ %i.jy, %bb.be ], [ %i.jx, %bb.bd ], [ %i.kd, %bb.bh ], [ %i.ke, %bb.bi ] ; 3 uses
  %spec.select.sink.i130190.i.i.i.i = phi i32 [ %spec.select.sink.i130191.i.i.i.i, %bb.ba ], [ %spec.select.sink.i130191.i.i.i.i, %bb.bf ], [ 16, %bb.be ], [ 16, %bb.bd ], [ %spec.select.i126.i.i.i.i, %bb.bh ], [ %spec.select.i126.i.i.i.i, %bb.bi ] ; 2 uses
  %indvars.iv.next228.i.i.i.i = add nuw nsw i64 %indvars.iv227.i.i.i.i, 1 ; 3 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %storemerge183194.i.i.i.i, i64 %indvars.iv227.i.i.i.i
  store ptr %i.jt, ptr %i.kf, align 8, !tbaa !32
  %.val110.i.i.i.i = load i32, ptr %i.jk, align 4, !tbaa !47
  %i.kg = sext i32 %.val110.i.i.i.i to i64
  %i.kh = icmp slt i64 %indvars.iv.next228.i.i.i.i, %i.kg
  br i1 %i.kh, label %bb.ba, label %thread-pre-split.preheader.i.i.i.i, !llvm.loop !58

.thread-pre-split.loopexit_crit_edge.i.i.i.i:     ; preds = %bb.ec
  br label %thread-pre-split.backedge.i.i.i.i, !llvm.loop !59

.lr.ph212:                                        ; preds = %thread-pre-split.preheader.i.i.i.i, %thread-pre-split.backedge.i.i.i.i
  %wide.trip.count.i57.i.i.i218 = phi i64 [ %wide.trip.count.i57.i.i.i, %thread-pre-split.backedge.i.i.i.i ], [ %.promoted212.i.i.i.i, %thread-pre-split.preheader.i.i.i.i ]
  %2 = phi i64 [ %3, %thread-pre-split.backedge.i.i.i.i ], [ %.promoted212.i.i.i.i, %thread-pre-split.preheader.i.i.i.i ] ; 2 uses
  %.val82.i.i.i.i217 = phi ptr [ %.val82257.i.i.i.i, %thread-pre-split.backedge.i.i.i.i ], [ %.val82260.i.i.i.i, %thread-pre-split.preheader.i.i.i.i ] ; 7 uses
  %i.ki = phi i32 [ %i.qu, %thread-pre-split.backedge.i.i.i.i ], [ %i.ik, %thread-pre-split.preheader.i.i.i.i ] ; 3 uses
  %i.kj = phi ptr [ %i.qt, %thread-pre-split.backedge.i.i.i.i ], [ %.val82260.i.i.i.i, %thread-pre-split.preheader.i.i.i.i ] ; 3 uses
  %i.kk = phi i32 [ %i.qs, %thread-pre-split.backedge.i.i.i.i ], [ %i.ik, %thread-pre-split.preheader.i.i.i.i ] ; 3 uses
  %i.kl = phi ptr [ %i.qr, %thread-pre-split.backedge.i.i.i.i ], [ %.val82260.i.i.i.i, %thread-pre-split.preheader.i.i.i.i ] ; 3 uses
  %scevgep.i.i.i.i219 = getelementptr i8, ptr %.val82.i.i.i.i217, i64 -8
  br label %bb.bk

bb.bj:                                            ; preds = %Abc_NodeIsTravIdCurrent.exit.i.i.i
  %indvar.next.i.i.i.i = add nuw nsw i64 %indvar.i.i.i.i211, 1 ; 2 uses
  %exitcond.i.i.i.i = icmp eq i64 %indvar.next.i.i.i.i, %wide.trip.count.i57.i.i.i218
  br i1 %exitcond.i.i.i.i, label %Io_NtkBfsPads.exit.i.i.i, label %bb.bk, !llvm.loop !59

bb.bk:                                            ; preds = %.lr.ph212, %bb.bj
  %indvar.i.i.i.i211 = phi i64 [ 0, %.lr.ph212 ], [ %indvar.next.i.i.i.i, %bb.bj ] ; 2 uses
  %indvars.iv241.i.i.i.i210 = phi i64 [ %2, %.lr.ph212 ], [ %indvars.iv.next242.i.i.i.i, %bb.bj ] ; 4 uses
  %i.km = load ptr, ptr %.val82.i.i.i.i217, align 8, !tbaa !32 ; 15 uses
  %i.kn = trunc nuw i64 %indvars.iv241.i.i.i.i210 to i32 ; 2 uses
  %i.ko = icmp sgt i32 %i.kn, 0
  br i1 %i.ko, label %.lr.ph206, label %._crit_edge207

bb.bl:                                            ; preds = %.lr.ph206
  %i.kp = trunc nuw i64 %i.ks to i32              ; 2 uses
  %i.kq = icmp sgt i32 %i.kp, 0
  br i1 %i.kq, label %.lr.ph206, label %._crit_edge207, !llvm.loop !60

.lr.ph206:                                        ; preds = %bb.bk, %bb.bl
  %i.kr = phi i32 [ %i.kp, %bb.bl ], [ %i.kn, %bb.bk ]
  %indvars.iv.i.i.i.i.i205 = phi i64 [ %i.ks, %bb.bl ], [ %indvars.iv241.i.i.i.i210, %bb.bk ]
  %i.ks = add nsw i64 %indvars.iv.i.i.i.i.i205, -1 ; 3 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.val82.i.i.i.i217, i64 %i.ks
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !32
  %i.kv = icmp eq ptr %i.ku, %i.km
  br i1 %i.kv, label %._crit_edge, label %bb.bl, !llvm.loop !60

._crit_edge:                                      ; preds = %.lr.ph206
  br label %._crit_edge207, !llvm.loop !60

._crit_edge207:                                   ; preds = %bb.bl, %._crit_edge, %bb.bk
  %.0.in.lcssa.i.i.i.i.i = phi i32 [ %i.kr, %._crit_edge ], [ 0, %bb.bk ], [ 0, %bb.bl ] ; 2 uses
  %i.kw = trunc nuw i64 %indvars.iv241.i.i.i.i210 to i32
  %i.kx = icmp slt i32 %.0.in.lcssa.i.i.i.i.i, %i.kw
  br i1 %i.kx, label %.lr.ph.i.i.i.i.i, label %Vec_PtrRemove.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge207
  %i.ky = zext nneg i32 %.0.in.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.kz = shl nuw nsw i64 %i.ky, 3                ; 2 uses
  %scevgep239.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i219, i64 %i.kz
  %scevgep240.i.i.i.i = getelementptr i8, ptr %.val82.i.i.i.i217, i64 %i.kz
  %i.la = add nuw i64 %indvar.i.i.i.i211, %i.ky
  %i.lb = sub i64 %2, %i.la
  %i.lc = shl i64 %i.lb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep239.i.i.i.i, ptr align 8 %scevgep240.i.i.i.i, i64 %i.lc, i1 false), !tbaa !32
  br label %Vec_PtrRemove.exit.i.i.i.i

Vec_PtrRemove.exit.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge207
  %indvars.iv.next242.i.i.i.i = add nsw i64 %indvars.iv241.i.i.i.i210, -1 ; 2 uses
  %.val2.i.i.i.i = load ptr, ptr %i.km, align 8, !tbaa !43 ; 7 uses
  %i.ld = getelementptr i8, ptr %i.km, i64 16
  %.val3.i.i.i.i = load i32, ptr %i.ld, align 8, !tbaa !77 ; 7 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 224 ; 2 uses
  %i.lf = add nsw i32 %.val3.i.i.i.i, 1           ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 228 ; 3 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !41 ; 4 uses
  %.not.i.not.i.i.i.i.i.i = icmp slt i32 %.val3.i.i.i.i, %i.lh
  br i1 %.not.i.not.i.i.i.i.i.i, label %Abc_NodeIsTravIdCurrent.exit.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %Vec_PtrRemove.exit.i.i.i.i
  %i.li = load i32, ptr %i.le, align 8, !tbaa !39 ; 4 uses
  %i.lj = shl nsw i32 %i.li, 1                    ; 2 uses
  %.not.i.i.i.i.i.i = icmp slt i32 %.val3.i.i.i.i, %i.lj
  %.not.i.i.not.i.i.i.i.i.i = icmp sgt i32 %i.li, %.val3.i.i.i.i ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.bs, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lk = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 232 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !40 ; 2 uses
  %.not9.i.i.i.i.i.i.i.i = icmp eq ptr %i.ll, null
  %i.lm = sext i32 %i.lf to i64
  %i.ln = shl nsw i64 %i.lm, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i.i.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lo = tail call ptr @realloc(ptr noundef nonnull %i.ll, i64 noundef %i.ln) #20
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.lp = tail call noalias ptr @malloc(i64 noundef %i.ln) #19
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.lq = phi ptr [ %i.lo, %bb.bp ], [ %i.lp, %bb.bq ]
  store ptr %i.lq, ptr %i.lk, align 8, !tbaa !40
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i

bb.bs:                                            ; preds = %bb.bm
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lr = icmp slt i32 %i.li, 1073741823
  %spec.select.i.i.i.i.i.i.i = select i1 %i.lr, i32 %i.lj, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i.i.i.i = icmp slt i32 %i.li, %spec.select.i.i.i.i.i.i.i
  br i1 %.not.i22.i.i.i.i.i.i.i, label %bb.bu, label %Vec_IntGrow.exit.i.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.ls = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 232 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !40 ; 2 uses
  %.not9.i23.i.i.i.i.i.i.i = icmp eq ptr %i.lt, null
  %i.lu = sext i32 %spec.select.i.i.i.i.i.i.i to i64
  %i.lv = shl nuw nsw i64 %i.lu, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i.i.i.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lw = tail call ptr @realloc(ptr noundef nonnull %i.lt, i64 noundef %i.lv) #20
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.lx = tail call noalias ptr @malloc(i64 noundef %i.lv) #19
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.ly = phi ptr [ %i.lw, %bb.bv ], [ %i.lx, %bb.bw ]
  store ptr %i.ly, ptr %i.ls, align 8, !tbaa !40
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i:        ; preds = %bb.bx, %bb.br
  %spec.select.sink.i.i.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i.i.i, %bb.bx ], [ %i.lf, %bb.br ]
  store i32 %spec.select.sink.i.i.i.i.i.i.i, ptr %i.le, align 8, !tbaa !39
  %.pre.i.i.i.i.i.i = load i32, ptr %i.lg, align 4, !tbaa !41
  br label %Vec_IntGrow.exit.i.i.i.i.i.i.i

Vec_IntGrow.exit.i.i.i.i.i.i.i:                   ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i, %bb.bt, %bb.bs, %bb.bn
  %i.lz = phi i32 [ %.pre.i.i.i.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i ], [ %i.lh, %bb.bt ], [ %i.lh, %bb.bs ], [ %i.lh, %bb.bn ] ; 3 uses
  %.not3.i.i.i.i.i.i = icmp sgt i32 %i.lz, %.val3.i.i.i.i
  br i1 %.not3.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %Vec_IntGrow.exit.i.i.i.i.i.i.i
  %i.ma = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 232
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !40
  %i.mc = sext i32 %i.lz to i64
  %i.md = shl nsw i64 %i.mc, 2
  %scevgep.i.i.i.i.i.i.i = getelementptr i8, ptr %i.mb, i64 %i.md
  %i.me = sub i32 %.val3.i.i.i.i, %i.lz
  %i.mf = zext i32 %i.me to i64
  %i.mg = shl nuw nsw i64 %i.mf, 2
  %i.mh = add nuw nsw i64 %i.mg, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i.i.i.i, i8 0, i64 %i.mh, i1 false), !tbaa !27
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i.i.i.i
  store i32 %i.lf, ptr %i.lg, align 4, !tbaa !41
  %.val.pre.i.i.i.i = load ptr, ptr %i.km, align 8, !tbaa !43
  br label %Abc_NodeIsTravIdCurrent.exit.i.i.i

Abc_NodeIsTravIdCurrent.exit.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i.i.i, %Vec_PtrRemove.exit.i.i.i.i
  %.val121.i.i.i.i = phi ptr [ %.val2.i.i.i.i, %Vec_PtrRemove.exit.i.i.i.i ], [ %.val.pre.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.mi = getelementptr i8, ptr %.val2.i.i.i.i, i64 232
  %.val.i.i.i.i.i.i = load ptr, ptr %i.mi, align 8, !tbaa !40
  %i.mj = sext i32 %.val3.i.i.i.i to i64
  %i.mk = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.mj
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !27
  %i.mm = getelementptr inbounds nuw i8, ptr %.val121.i.i.i.i, i64 216
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !42
  %.not.i224.i.i = icmp eq i32 %i.ml, %i.mn
  br i1 %.not.i224.i.i, label %bb.bj, label %bb.by, !llvm.loop !59

bb.by:                                            ; preds = %Abc_NodeIsTravIdCurrent.exit.i.i.i
  %i.mo = getelementptr i8, ptr %i.km, i64 16     ; 2 uses
  %indvars.le.i.i.i.i = trunc i64 %indvars.iv.next242.i.i.i.i to i32 ; 3 uses
  %.val122.i.i.i.i = load i32, ptr %i.mo, align 8, !tbaa !77
  tail call fastcc void @Abc_NodeSetTravIdCurrent(ptr nonnull %.val121.i.i.i.i, i32 %.val122.i.i.i.i)
  %i.mp = getelementptr i8, ptr %i.km, i64 20
  %.val117.i.i.i.i = load i32, ptr %i.mp, align 4
  %i.mq = and i32 %.val117.i.i.i.i, 14
  %switch.i.i.i.i = icmp eq i32 %i.mq, 2
  br i1 %switch.i.i.i.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %.val120.i.i.i.i = load i32, ptr %i.mo, align 8, !tbaa !77
  %i.mr = zext i32 %.val120.i.i.i.i to i64
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.mr
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !27
  %.not72.i.i.i.i = icmp eq i32 %i.mt, 0
  br i1 %.not72.i.i.i.i, label %Io_NtkBfsPads.exit.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.mu = getelementptr i8, ptr %i.km, i64 44
  %.val111.i.i.i.i = load i32, ptr %i.mu, align 4, !tbaa !45
  %.not74.i.i.i.i = icmp eq i32 %.val111.i.i.i.i, 0
  br i1 %.not74.i.i.i.i, label %.critedge4.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.val87.i.i.i.i = load ptr, ptr %i.km, align 8, !tbaa !43
  %i.mv = getelementptr i8, ptr %i.km, i64 48
  %.val88.i.i.i.i = load ptr, ptr %i.mv, align 8, !tbaa !44
  %i.mw = getelementptr i8, ptr %.val87.i.i.i.i, i64 32
  %.val87.val.i.i.i.i = load ptr, ptr %i.mw, align 8, !tbaa !38
  %.val88.val.i.i.i.i = load i32, ptr %.val88.i.i.i.i, align 4, !tbaa !27
  %i.mx = getelementptr i8, ptr %.val87.val.i.i.i.i, i64 8
  %.val87.val.val.i.i.i.i = load ptr, ptr %i.mx, align 8, !tbaa !31
  %i.my = sext i32 %.val88.val.i.i.i.i to i64
  %i.mz = getelementptr inbounds [8 x i8], ptr %.val87.val.val.i.i.i.i, i64 %i.my
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !32 ; 5 uses
  %.val102.i.i.i.i = load i32, ptr %i.az, align 8, !tbaa !27
  %.not175.i.i.i.i = icmp eq i32 %.val102.i.i.i.i, 0
  br i1 %.not175.i.i.i.i, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.nb = getelementptr i8, ptr %i.na, i64 20
  %.val104.i.i.i.i = load i32, ptr %i.nb, align 4
  %i.nc = and i32 %.val104.i.i.i.i, 15
  %.not176.i.i.i.i = icmp eq i32 %i.nc, 8
  br i1 %.not176.i.i.i.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %.val85.i.i.i.i = load ptr, ptr %i.na, align 8, !tbaa !43
  %i.nd = getelementptr i8, ptr %i.na, i64 48
  %.val86.i.i.i.i = load ptr, ptr %i.nd, align 8, !tbaa !44
  %i.ne = getelementptr i8, ptr %.val85.i.i.i.i, i64 32
  %.val85.val.i.i.i.i = load ptr, ptr %i.ne, align 8, !tbaa !38
  %.val86.val.i.i.i.i = load i32, ptr %.val86.i.i.i.i, align 4, !tbaa !27
  %i.nf = getelementptr i8, ptr %.val85.val.i.i.i.i, i64 8
  %.val85.val.val.i.i.i.i = load ptr, ptr %i.nf, align 8, !tbaa !31
  %i.ng = sext i32 %.val86.val.i.i.i.i to i64
  %i.nh = getelementptr inbounds [8 x i8], ptr %.val85.val.val.i.i.i.i, i64 %i.ng
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !32 ; 2 uses
  %.val83.i.i.i.i = load ptr, ptr %i.ni, align 8, !tbaa !43
  %i.nj = getelementptr i8, ptr %i.ni, i64 48
  %.val84.i.i.i.i = load ptr, ptr %i.nj, align 8, !tbaa !44
  %i.nk = getelementptr i8, ptr %.val83.i.i.i.i, i64 32
  %.val83.val.i.i.i.i = load ptr, ptr %i.nk, align 8, !tbaa !38
  %.val84.val.i.i.i.i = load i32, ptr %.val84.i.i.i.i, align 4, !tbaa !27
  %i.nl = getelementptr i8, ptr %.val83.val.i.i.i.i, i64 8
  %.val83.val.val.i.i.i.i = load ptr, ptr %i.nl, align 8, !tbaa !31
  %i.nm = sext i32 %.val84.val.i.i.i.i to i64
  %i.nn = getelementptr inbounds [8 x i8], ptr %.val83.val.val.i.i.i.i, i64 %i.nm
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !32
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  %.068.i.i.i.i = phi ptr [ %i.na, %bb.cb ], [ %i.no, %bb.cd ], [ %i.na, %bb.cc ] ; 3 uses
  %i.np = getelementptr i8, ptr %.068.i.i.i.i, i64 44 ; 2 uses
  %.068.val206.i.i.i.i = load i32, ptr %i.np, align 4, !tbaa !45
  %i.nq = icmp sgt i32 %.068.val206.i.i.i.i, 0
  br i1 %i.nq, label %.lr.ph208.i.i.i.i, label %.critedge4.i.i.i.i

.lr.ph208.i.i.i.i:                                ; preds = %bb.ce
  %i.nr = getelementptr i8, ptr %.068.i.i.i.i, i64 48
end_hunk_0
begin_hunk_1_@Io_WriteBook:bb.a
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.068.val114.i.i.i.i, i64 %indvars.iv244.i.i.i.i
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !27
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds [8 x i8], ptr %.068.val113.val.val.i.i.i.i, i64 %i.ob
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !32 ; 4 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.od, align 8, !tbaa !43 ; 7 uses
  %i.oe = getelementptr i8, ptr %i.od, i64 16
  %.val3.i.i.i.i.i = load i32, ptr %i.oe, align 8, !tbaa !77 ; 7 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 224 ; 2 uses
  %i.og = add nsw i32 %.val3.i.i.i.i.i, 1         ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 228 ; 3 uses
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !41 ; 4 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp slt i32 %.val3.i.i.i.i.i, %i.oi
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %Abc_NodeIsTravIdCurrent.exit.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.oj = load i32, ptr %i.of, align 8, !tbaa !39 ; 4 uses
  %i.ok = shl nsw i32 %i.oj, 1                    ; 2 uses
  %.not.i.i.i134.i.i.i.i = icmp slt i32 %.val3.i.i.i.i.i, %i.ok
  %.not.i.i.not.i.i.i.i.i.i.i = icmp sgt i32 %i.oj, %.val3.i.i.i.i.i ; 2 uses
  br i1 %.not.i.i.i134.i.i.i.i, label %bb.cm, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  br i1 %.not.i.i.not.i.i.i.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ol = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 232 ; 2 uses
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !40 ; 2 uses
  %.not9.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.om, null
  %i.on = sext i32 %i.og to i64
  %i.oo = shl nsw i64 %i.on, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i.i.i.i.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.op = tail call ptr @realloc(ptr noundef nonnull %i.om, i64 noundef %i.oo) #20
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.oq = tail call noalias ptr @malloc(i64 noundef %i.oo) #19
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.or = phi ptr [ %i.op, %bb.cj ], [ %i.oq, %bb.ck ]
  store ptr %i.or, ptr %i.ol, align 8, !tbaa !40
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.cg
  br i1 %.not.i.i.not.i.i.i.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.os = icmp slt i32 %i.oj, 1073741823
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.os, i32 %i.ok, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i.i.i.i.i = icmp slt i32 %i.oj, %spec.select.i.i.i.i.i.i.i.i
  br i1 %.not.i22.i.i.i.i.i.i.i.i, label %bb.co, label %Vec_IntGrow.exit.i.i.i.i.i.i.i.i

bb.co:                                            ; preds = %bb.cn
  %i.ot = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 232 ; 2 uses
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !40 ; 2 uses
  %.not9.i23.i.i.i.i.i.i.i.i = icmp eq ptr %i.ou, null
  %i.ov = sext i32 %spec.select.i.i.i.i.i.i.i.i to i64
  %i.ow = shl nuw nsw i64 %i.ov, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i.i.i.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ox = tail call ptr @realloc(ptr noundef nonnull %i.ou, i64 noundef %i.ow) #20
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.oy = tail call noalias ptr @malloc(i64 noundef %i.ow) #19
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.oz = phi ptr [ %i.ox, %bb.cp ], [ %i.oy, %bb.cq ]
  store ptr %i.oz, ptr %i.ot, align 8, !tbaa !40
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i.i:      ; preds = %bb.cr, %bb.cl
  %spec.select.sink.i.i.i.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i.i.i.i, %bb.cr ], [ %i.og, %bb.cl ]
  store i32 %spec.select.sink.i.i.i.i.i.i.i.i, ptr %i.of, align 8, !tbaa !39
  %.pre.i.i.i.i.i.i.i = load i32, ptr %i.oh, align 4, !tbaa !41
  br label %Vec_IntGrow.exit.i.i.i.i.i.i.i.i

Vec_IntGrow.exit.i.i.i.i.i.i.i.i:                 ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i.i, %bb.cn, %bb.cm, %bb.ch
  %i.pa = phi i32 [ %.pre.i.i.i.i.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i.i ], [ %i.oi, %bb.cn ], [ %i.oi, %bb.cm ], [ %i.oi, %bb.ch ] ; 3 uses
  %.not3.i.i.i.i.i.i.i = icmp sgt i32 %i.pa, %.val3.i.i.i.i.i
  br i1 %.not3.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %Vec_IntGrow.exit.i.i.i.i.i.i.i.i
  %i.pb = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 232
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !40
  %i.pd = sext i32 %i.pa to i64
  %i.pe = shl nsw i64 %i.pd, 2
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.pc, i64 %i.pe
  %i.pf = sub i32 %.val3.i.i.i.i.i, %i.pa
  %i.pg = zext i32 %i.pf to i64
  %i.ph = shl nuw nsw i64 %i.pg, 2
  %i.pi = add nuw nsw i64 %i.ph, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i.i.i.i.i, i8 0, i64 %i.pi, i1 false), !tbaa !27
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i.i.i.i.i
  store i32 %i.og, ptr %i.oh, align 4, !tbaa !41
  %.val.pre.i.i.i.i.i = load ptr, ptr %i.od, align 8, !tbaa !43
  br label %Abc_NodeIsTravIdCurrent.exit.i.i.i.i

Abc_NodeIsTravIdCurrent.exit.i.i.i.i:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.cf
  %.val.i135.i.i.i.i = phi ptr [ %.val2.i.i.i.i.i, %bb.cf ], [ %.val.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ]
  %i.pj = getelementptr i8, ptr %.val2.i.i.i.i.i, i64 232
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.pj, align 8, !tbaa !40
  %i.pk = sext i32 %.val3.i.i.i.i.i to i64
  %i.pl = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %i.pk
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !27
  %i.pn = getelementptr inbounds nuw i8, ptr %.val.i135.i.i.i.i, i64 216
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !42
  %.not177.i.i.i.i = icmp eq i32 %i.pm, %i.po
  br i1 %.not177.i.i.i.i, label %bb.db, label %bb.cs

bb.cs:                                            ; preds = %Abc_NodeIsTravIdCurrent.exit.i.i.i.i
  %i.pp = icmp eq i32 %.val.pr220.i.i.i.i, %i.nv
  br i1 %i.pp, label %bb.ct, label %Vec_PtrPush.exit143.i.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.pq = icmp slt i32 %i.nv, 16
  br i1 %i.pq, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %.not9.i.i141.i.i.i.i = icmp eq ptr %i.nw, null
  br i1 %.not9.i.i141.i.i.i.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.pr = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.nw, i64 noundef 128) #20 ; 2 uses
  br label %Vec_PtrPush.exit143.i.i.i.i

bb.cw:                                            ; preds = %bb.cu
  %i.ps = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #19 ; 2 uses
  br label %Vec_PtrPush.exit143.i.i.i.i

bb.cx:                                            ; preds = %bb.ct
  %i.pt = icmp samesign ult i32 %i.nv, 1073741823
  %i.pu = shl nuw nsw i32 %i.nv, 1
  %spec.select.i136.i.i.i.i = select i1 %i.pt, i32 %i.pu, i32 2147483647 ; 6 uses
  %.not.i10.i137.i.i.i.i = icmp samesign ult i32 %i.nv, %spec.select.i136.i.i.i.i
  br i1 %.not.i10.i137.i.i.i.i, label %bb.cy, label %Vec_PtrPush.exit143.i.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %.not9.i11.i138.i.i.i.i = icmp eq ptr %i.nw, null
  %i.pv = zext nneg i32 %spec.select.i136.i.i.i.i to i64
  %i.pw = shl nuw nsw i64 %i.pv, 3                ; 2 uses
  br i1 %.not9.i11.i138.i.i.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.px = tail call ptr @realloc(ptr noundef nonnull %i.nw, i64 noundef %i.pw) #20 ; 2 uses
  br label %Vec_PtrPush.exit143.i.i.i.i

bb.da:                                            ; preds = %bb.cy
  %i.py = tail call noalias ptr @malloc(i64 noundef %i.pw) #19 ; 2 uses
  br label %Vec_PtrPush.exit143.i.i.i.i

Vec_PtrPush.exit143.i.i.i.i:                      ; preds = %bb.da, %bb.cz, %bb.cx, %bb.cw, %bb.cv, %bb.cs
  %i.pz = phi ptr [ %i.ns, %bb.cs ], [ %i.ns, %bb.cx ], [ %i.ps, %bb.cw ], [ %i.pr, %bb.cv ], [ %i.px, %bb.cz ], [ %i.py, %bb.da ]
  %i.qa = phi i32 [ %i.nt, %bb.cs ], [ %i.nt, %bb.cx ], [ 16, %bb.cw ], [ 16, %bb.cv ], [ %spec.select.i136.i.i.i.i, %bb.cz ], [ %spec.select.i136.i.i.i.i, %bb.da ]
  %i.qb = phi ptr [ %i.nu, %bb.cs ], [ %i.nu, %bb.cx ], [ %i.ps, %bb.cw ], [ %i.pr, %bb.cv ], [ %i.px, %bb.cz ], [ %i.py, %bb.da ] ; 3 uses
  %i.qc = phi i32 [ %i.nv, %bb.cs ], [ %i.nv, %bb.cx ], [ 16, %bb.cw ], [ 16, %bb.cv ], [ %spec.select.i136.i.i.i.i, %bb.cz ], [ %spec.select.i136.i.i.i.i, %bb.da ]
  %i.qd = add nsw i32 %.val.pr220.i.i.i.i, 1
  %i.qe = sext i32 %.val.pr220.i.i.i.i to i64
  %i.qf = getelementptr inbounds [8 x i8], ptr %i.qb, i64 %i.qe
  store ptr %i.od, ptr %i.qf, align 8, !tbaa !32
  br label %bb.db

bb.db:                                            ; preds = %Vec_PtrPush.exit143.i.i.i.i, %Abc_NodeIsTravIdCurrent.exit.i.i.i.i
  %i.qg = phi ptr [ %i.ns, %Abc_NodeIsTravIdCurrent.exit.i.i.i.i ], [ %i.pz, %Vec_PtrPush.exit143.i.i.i.i ] ; 2 uses
  %i.qh = phi i32 [ %i.nt, %Abc_NodeIsTravIdCurrent.exit.i.i.i.i ], [ %i.qa, %Vec_PtrPush.exit143.i.i.i.i ] ; 2 uses
  %i.qi = phi ptr [ %i.nu, %Abc_NodeIsTravIdCurrent.exit.i.i.i.i ], [ %i.qb, %Vec_PtrPush.exit143.i.i.i.i ] ; 2 uses
  %i.qj = phi i32 [ %i.nv, %Abc_NodeIsTravIdCurrent.exit.i.i.i.i ], [ %i.qc, %Vec_PtrPush.exit143.i.i.i.i ] ; 2 uses
  %.val82253.i.i.i.i = phi ptr [ %i.nw, %Abc_NodeIsTravIdCurrent.exit.i.i.i.i ], [ %i.qb, %Vec_PtrPush.exit143.i.i.i.i ] ; 2 uses
  %.val.pr219.i.i.i.i = phi i32 [ %.val.pr220.i.i.i.i, %Abc_NodeIsTravIdCurrent.exit.i.i.i.i ], [ %i.qd, %Vec_PtrPush.exit143.i.i.i.i ] ; 2 uses
  %indvars.iv.next245.i.i.i.i = add nuw nsw i64 %indvars.iv244.i.i.i.i, 1 ; 2 uses
  %.068.val.i.i.i.i = load i32, ptr %i.np, align 4, !tbaa !45
  %i.qk = sext i32 %.068.val.i.i.i.i to i64
  %i.ql = icmp slt i64 %indvars.iv.next245.i.i.i.i, %i.qk
  br i1 %i.ql, label %bb.cf, label %.critedge4.i.i.i.i, !llvm.loop !61

.critedge4.i.i.i.i:                               ; preds = %bb.db, %bb.ce, %bb.ca
  %i.qm = phi ptr [ %i.kl, %bb.ca ], [ %i.kl, %bb.ce ], [ %i.qg, %bb.db ] ; 3 uses
  %i.qn = phi i32 [ %i.kk, %bb.ca ], [ %i.kk, %bb.ce ], [ %i.qh, %bb.db ] ; 3 uses
  %i.qo = phi ptr [ %i.kj, %bb.ca ], [ %i.kj, %bb.ce ], [ %i.qi, %bb.db ] ; 3 uses
  %i.qp = phi i32 [ %i.ki, %bb.ca ], [ %i.ki, %bb.ce ], [ %i.qj, %bb.db ] ; 3 uses
  %.val82258.i.i.i.i = phi ptr [ %.val82.i.i.i.i217, %bb.ca ], [ %.val82.i.i.i.i217, %bb.ce ], [ %.val82253.i.i.i.i, %bb.db ] ; 3 uses
  %.val.pr221.i.i.i.i = phi i32 [ %indvars.le.i.i.i.i, %bb.ca ], [ %indvars.le.i.i.i.i, %bb.ce ], [ %.val.pr219.i.i.i.i, %bb.db ] ; 3 uses
  %i.qq = getelementptr i8, ptr %i.km, i64 28
  %.val109.i.i.i.i = load i32, ptr %i.qq, align 4, !tbaa !47 ; 3 uses
  %.not77.i.i.i.i = icmp eq i32 %.val109.i.i.i.i, 0
  br i1 %.not77.i.i.i.i, label %thread-pre-split.backedge.i.i.i.i, label %bb.dc

thread-pre-split.backedge.i.i.i.i:                ; preds = %bb.df, %.critedge4.i.i.i.i, %.thread-pre-split.loopexit_crit_edge.i.i.i.i
  %i.qr = phi ptr [ %i.qm, %.critedge4.i.i.i.i ], [ %i.ue, %.thread-pre-split.loopexit_crit_edge.i.i.i.i ], [ %i.qm, %bb.df ]
  %i.qs = phi i32 [ %i.qn, %.critedge4.i.i.i.i ], [ %i.uf, %.thread-pre-split.loopexit_crit_edge.i.i.i.i ], [ %i.qn, %bb.df ]
  %i.qt = phi ptr [ %i.qo, %.critedge4.i.i.i.i ], [ %i.ug, %.thread-pre-split.loopexit_crit_edge.i.i.i.i ], [ %i.qo, %bb.df ]
  %i.qu = phi i32 [ %i.qp, %.critedge4.i.i.i.i ], [ %i.uh, %.thread-pre-split.loopexit_crit_edge.i.i.i.i ], [ %i.qp, %bb.df ]
  %.val82257.i.i.i.i = phi ptr [ %.val82258.i.i.i.i, %.critedge4.i.i.i.i ], [ %.val82255.i.i.i.i, %.thread-pre-split.loopexit_crit_edge.i.i.i.i ], [ %.val82258.i.i.i.i, %bb.df ]
  %.val.pr214.i.i.i.i = phi i32 [ %.val.pr221.i.i.i.i, %.critedge4.i.i.i.i ], [ %.val.pr217.i.i.i.i, %.thread-pre-split.loopexit_crit_edge.i.i.i.i ], [ %.val.pr221.i.i.i.i, %bb.df ] ; 4 uses
  %3 = zext i32 %.val.pr214.i.i.i.i to i64
  %smin.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %.val.pr214.i.i.i.i, i32 0)
  %i.qv = sub i32 %.val.pr214.i.i.i.i, %smin.i.i.i.i
  %wide.trip.count.i57.i.i.i = zext i32 %i.qv to i64
  %exitcond.i.i.i.i209 = icmp slt i32 %.val.pr214.i.i.i.i, 1
  br i1 %exitcond.i.i.i.i209, label %Io_NtkBfsPads.exit.i.i.i, label %.lr.ph212, !llvm.loop !59

bb.dc:                                            ; preds = %.critedge4.i.i.i.i
  %.val101.i.i.i.i = load i32, ptr %i.az, align 8, !tbaa !27
  %.not179.i.i.i.i = icmp eq i32 %.val101.i.i.i.i, 0
  br i1 %.not179.i.i.i.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.val97.i.i.i.i = load ptr, ptr %i.km, align 8, !tbaa !43
  %i.qw = getelementptr i8, ptr %i.km, i64 32
  %.val98.i.i.i.i = load ptr, ptr %i.qw, align 8, !tbaa !46
  %i.qx = getelementptr i8, ptr %.val97.i.i.i.i, i64 32
  %.val97.val.i.i.i.i = load ptr, ptr %i.qx, align 8, !tbaa !38
  %.val98.val.i.i.i.i = load i32, ptr %.val98.i.i.i.i, align 4, !tbaa !27
  %i.qy = getelementptr i8, ptr %.val97.val.i.i.i.i, i64 8
  %.val97.val.val.i.i.i.i = load ptr, ptr %i.qy, align 8, !tbaa !31
  %i.qz = sext i32 %.val98.val.i.i.i.i to i64
  %i.ra = getelementptr inbounds [8 x i8], ptr %.val97.val.val.i.i.i.i, i64 %i.qz
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !32 ; 3 uses
  %i.rc = getelementptr i8, ptr %i.rb, i64 20
  %.val103.i.i.i.i = load i32, ptr %i.rc, align 4
  %i.rd = and i32 %.val103.i.i.i.i, 15
  %.not180.i.i.i.i = icmp eq i32 %i.rd, 8
  br i1 %.not180.i.i.i.i, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %.val93.i.i.i.i = load ptr, ptr %i.rb, align 8, !tbaa !43
  %i.re = getelementptr i8, ptr %i.rb, i64 32
  %.val94.i.i.i.i = load ptr, ptr %i.re, align 8, !tbaa !46
  %i.rf = getelementptr i8, ptr %.val93.i.i.i.i, i64 32
  %.val93.val.i.i.i.i = load ptr, ptr %i.rf, align 8, !tbaa !38
  %.val94.val.i.i.i.i = load i32, ptr %.val94.i.i.i.i, align 4, !tbaa !27
  %i.rg = getelementptr i8, ptr %.val93.val.i.i.i.i, i64 8
  %.val93.val.val.i.i.i.i = load ptr, ptr %i.rg, align 8, !tbaa !31
  %i.rh = sext i32 %.val94.val.i.i.i.i to i64
  %i.ri = getelementptr inbounds [8 x i8], ptr %.val93.val.val.i.i.i.i, i64 %i.rh
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !32 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr i8, ptr %i.rj, i64 28
  %.165.val108209.pre.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !47
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  %.165.val108209.i.i.i.i = phi i32 [ %.val109.i.i.i.i, %bb.dc ], [ %.165.val108209.pre.i.i.i.i, %bb.de ], [ %.val109.i.i.i.i, %bb.dd ]
  %.165.i.i.i.i = phi ptr [ %i.km, %bb.dc ], [ %i.rj, %bb.de ], [ %i.km, %bb.dd ] ; 3 uses
  %i.rk = getelementptr i8, ptr %.165.i.i.i.i, i64 28
  %i.rl = icmp sgt i32 %.165.val108209.i.i.i.i, 0
  br i1 %i.rl, label %.lr.ph211.i.i.i.i, label %thread-pre-split.backedge.i.i.i.i, !llvm.loop !59

.lr.ph211.i.i.i.i:                                ; preds = %bb.df
  %i.rm = getelementptr i8, ptr %.165.i.i.i.i, i64 32
  br label %bb.dg, !llvm.loop !59

bb.dg:                                            ; preds = %bb.ec, %.lr.ph211.i.i.i.i
  %i.rn = phi ptr [ %i.qm, %.lr.ph211.i.i.i.i ], [ %i.ue, %bb.ec ] ; 3 uses
  %i.ro = phi i32 [ %i.qn, %.lr.ph211.i.i.i.i ], [ %i.uf, %bb.ec ] ; 8 uses
  %i.rp = phi ptr [ %i.qo, %.lr.ph211.i.i.i.i ], [ %i.ug, %bb.ec ] ; 5 uses
  %i.rq = phi i32 [ %i.qp, %.lr.ph211.i.i.i.i ], [ %i.uh, %bb.ec ]
  %.val82256.i.i.i.i = phi ptr [ %.val82258.i.i.i.i, %.lr.ph211.i.i.i.i ], [ %.val82255.i.i.i.i, %bb.ec ]
  %indvars.iv248.i.i.i.i = phi i64 [ 0, %.lr.ph211.i.i.i.i ], [ %indvars.iv.next249.i.i.i.i, %bb.ec ] ; 2 uses
  %.val.pr216.i.i.i.i = phi i32 [ %.val.pr221.i.i.i.i, %.lr.ph211.i.i.i.i ], [ %.val.pr217.i.i.i.i, %bb.ec ] ; 4 uses
  %.165.val.i.i.i.i = load ptr, ptr %.165.i.i.i.i, align 8, !tbaa !43
  %.165.val105.i.i.i.i = load ptr, ptr %i.rm, align 8, !tbaa !46
  %i.rr = getelementptr i8, ptr %.165.val.i.i.i.i, i64 32
  %.165.val.val.i.i.i.i = load ptr, ptr %i.rr, align 8, !tbaa !38
  %i.rs = getelementptr i8, ptr %.165.val.val.i.i.i.i, i64 8
  %.165.val.val.val.i.i.i.i = load ptr, ptr %i.rs, align 8, !tbaa !31
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %.165.val105.i.i.i.i, i64 %indvars.iv248.i.i.i.i
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !27
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr inbounds [8 x i8], ptr %.165.val.val.val.i.i.i.i, i64 %i.rv
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !32 ; 2 uses
  %.val91.i.i.i.i = load ptr, ptr %i.rx, align 8, !tbaa !43
  %i.ry = getelementptr i8, ptr %i.rx, i64 32
  %.val92.i.i.i.i = load ptr, ptr %i.ry, align 8, !tbaa !46
  %i.rz = getelementptr i8, ptr %.val91.i.i.i.i, i64 32
  %.val91.val.i.i.i.i = load ptr, ptr %i.rz, align 8, !tbaa !38
  %.val92.val.i.i.i.i = load i32, ptr %.val92.i.i.i.i, align 4, !tbaa !27
  %i.sa = getelementptr i8, ptr %.val91.val.i.i.i.i, i64 8
  %.val91.val.val.i.i.i.i = load ptr, ptr %i.sa, align 8, !tbaa !31
  %i.sb = sext i32 %.val92.val.i.i.i.i to i64
  %i.sc = getelementptr inbounds [8 x i8], ptr %.val91.val.val.i.i.i.i, i64 %i.sb
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !32 ; 4 uses
  %.val2.i144.i.i.i.i = load ptr, ptr %i.sd, align 8, !tbaa !43 ; 7 uses
  %i.se = getelementptr i8, ptr %i.sd, i64 16
  %.val3.i145.i.i.i.i = load i32, ptr %i.se, align 8, !tbaa !77 ; 7 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.val2.i144.i.i.i.i, i64 224 ; 2 uses
  %i.sg = add nsw i32 %.val3.i145.i.i.i.i, 1      ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.val2.i144.i.i.i.i, i64 228 ; 3 uses
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !41 ; 4 uses
  %.not.i.not.i.i.i146.i.i.i.i = icmp slt i32 %.val3.i145.i.i.i.i, %i.si
  br i1 %.not.i.not.i.i.i146.i.i.i.i, label %Abc_NodeIsTravIdCurrent.exit164.i.i.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.sj = load i32, ptr %i.sf, align 8, !tbaa !39 ; 4 uses
  %i.sk = shl nsw i32 %i.sj, 1                    ; 2 uses
  %.not.i.i.i147.i.i.i.i = icmp slt i32 %.val3.i145.i.i.i.i, %i.sk
  %.not.i.i.not.i.i.i148.i.i.i.i = icmp sgt i32 %i.sj, %.val3.i145.i.i.i.i ; 2 uses
  br i1 %.not.i.i.i147.i.i.i.i, label %bb.dn, label %bb.di

bb.di:                                            ; preds = %bb.dh
  br i1 %.not.i.i.not.i.i.i148.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i153.i.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.sl = getelementptr inbounds nuw i8, ptr %.val2.i144.i.i.i.i, i64 232 ; 2 uses
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !40 ; 2 uses
  %.not9.i.i.i.i.i149.i.i.i.i = icmp eq ptr %i.sm, null
  %i.sn = sext i32 %i.sg to i64
  %i.so = shl nsw i64 %i.sn, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i.i149.i.i.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.sp = tail call ptr @realloc(ptr noundef nonnull %i.sm, i64 noundef %i.so) #20
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.sq = tail call noalias ptr @malloc(i64 noundef %i.so) #19
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.sr = phi ptr [ %i.sp, %bb.dk ], [ %i.sq, %bb.dl ]
  store ptr %i.sr, ptr %i.sl, align 8, !tbaa !40
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i150.i.i.i.i

bb.dn:                                            ; preds = %bb.dh
  br i1 %.not.i.i.not.i.i.i148.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i153.i.i.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ss = icmp slt i32 %i.sj, 1073741823
  %spec.select.i.i.i.i161.i.i.i.i = select i1 %i.ss, i32 %i.sk, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i162.i.i.i.i = icmp slt i32 %i.sj, %spec.select.i.i.i.i161.i.i.i.i
  br i1 %.not.i22.i.i.i.i162.i.i.i.i, label %bb.dp, label %Vec_IntGrow.exit.i.i.i.i153.i.i.i.i

bb.dp:                                            ; preds = %bb.do
  %i.st = getelementptr inbounds nuw i8, ptr %.val2.i144.i.i.i.i, i64 232 ; 2 uses
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !40 ; 2 uses
  %.not9.i23.i.i.i.i163.i.i.i.i = icmp eq ptr %i.su, null
  %i.sv = sext i32 %spec.select.i.i.i.i161.i.i.i.i to i64
  %i.sw = shl nuw nsw i64 %i.sv, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i.i163.i.i.i.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.sx = tail call ptr @realloc(ptr noundef nonnull %i.su, i64 noundef %i.sw) #20
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  %i.sy = tail call noalias ptr @malloc(i64 noundef %i.sw) #19
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.sz = phi ptr [ %i.sx, %bb.dq ], [ %i.sy, %bb.dr ]
  store ptr %i.sz, ptr %i.st, align 8, !tbaa !40
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i150.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i150.i.i.i.i:   ; preds = %bb.ds, %bb.dm
  %spec.select.sink.i.i.i.i151.i.i.i.i = phi i32 [ %spec.select.i.i.i.i161.i.i.i.i, %bb.ds ], [ %i.sg, %bb.dm ]
  store i32 %spec.select.sink.i.i.i.i151.i.i.i.i, ptr %i.sf, align 8, !tbaa !39
  %.pre.i.i.i152.i.i.i.i = load i32, ptr %i.sh, align 4, !tbaa !41
  br label %Vec_IntGrow.exit.i.i.i.i153.i.i.i.i

Vec_IntGrow.exit.i.i.i.i153.i.i.i.i:              ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i150.i.i.i.i, %bb.do, %bb.dn, %bb.di
  %i.ta = phi i32 [ %.pre.i.i.i152.i.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i150.i.i.i.i ], [ %i.si, %bb.do ], [ %i.si, %bb.dn ], [ %i.si, %bb.di ] ; 3 uses
  %.not3.i.i.i154.i.i.i.i = icmp sgt i32 %i.ta, %.val3.i145.i.i.i.i
  br i1 %.not3.i.i.i154.i.i.i.i, label %._crit_edge.i.i.i.i157.i.i.i.i, label %.lr.ph.i.i.i.i155.i.i.i.i

.lr.ph.i.i.i.i155.i.i.i.i:                        ; preds = %Vec_IntGrow.exit.i.i.i.i153.i.i.i.i
  %i.tb = getelementptr inbounds nuw i8, ptr %.val2.i144.i.i.i.i, i64 232
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !40
  %i.td = sext i32 %i.ta to i64
  %i.te = shl nsw i64 %i.td, 2
  %scevgep.i.i.i.i156.i.i.i.i = getelementptr i8, ptr %i.tc, i64 %i.te
  %i.tf = sub i32 %.val3.i145.i.i.i.i, %i.ta
  %i.tg = zext i32 %i.tf to i64
  %i.th = shl nuw nsw i64 %i.tg, 2
  %i.ti = add nuw nsw i64 %i.th, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i156.i.i.i.i, i8 0, i64 %i.ti, i1 false), !tbaa !27
  br label %._crit_edge.i.i.i.i157.i.i.i.i

._crit_edge.i.i.i.i157.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i155.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i153.i.i.i.i
  store i32 %i.sg, ptr %i.sh, align 4, !tbaa !41
  %.val.pre.i158.i.i.i.i = load ptr, ptr %i.sd, align 8, !tbaa !43
  br label %Abc_NodeIsTravIdCurrent.exit164.i.i.i.i

Abc_NodeIsTravIdCurrent.exit164.i.i.i.i:          ; preds = %._crit_edge.i.i.i.i157.i.i.i.i, %bb.dg
  %.val.i159.i.i.i.i = phi ptr [ %.val2.i144.i.i.i.i, %bb.dg ], [ %.val.pre.i158.i.i.i.i, %._crit_edge.i.i.i.i157.i.i.i.i ]
  %i.tj = getelementptr i8, ptr %.val2.i144.i.i.i.i, i64 232
  %.val.i.i.i160.i.i.i.i = load ptr, ptr %i.tj, align 8, !tbaa !40
  %i.tk = sext i32 %.val3.i145.i.i.i.i to i64
  %i.tl = getelementptr inbounds [4 x i8], ptr %.val.i.i.i160.i.i.i.i, i64 %i.tk
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !27
  %i.tn = getelementptr inbounds nuw i8, ptr %.val.i159.i.i.i.i, i64 216
  %i.to = load i32, ptr %i.tn, align 8, !tbaa !42
  %.not181.i.i.i.i = icmp eq i32 %i.tm, %i.to
  br i1 %.not181.i.i.i.i, label %bb.ec, label %bb.dt

bb.dt:                                            ; preds = %Abc_NodeIsTravIdCurrent.exit164.i.i.i.i
  %i.tp = icmp eq i32 %.val.pr216.i.i.i.i, %i.ro
  br i1 %i.tp, label %bb.du, label %Vec_PtrPush.exit172.i.i.i.i

bb.du:                                            ; preds = %bb.dt
  %i.tq = icmp slt i32 %i.ro, 16
end_hunk_1
