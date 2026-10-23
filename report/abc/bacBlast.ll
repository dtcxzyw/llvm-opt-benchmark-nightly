Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bacBlast?download=true
inline.NumInlined: 467
inline.NumDeleted: 125
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Bac_ManDupUserBoxes:bb.a
  %.val.val.i.i = load ptr, ptr %i.ex, align 8, !tbaa !147
  %i.ey = call ptr @Abc_NamStr(ptr noundef %.val.val.i.i, i32 noundef %.val72.i) #21
  %i.ez = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %i.ey) ; 0 uses
  br label %Bac_NtkAlloc.exit.i

Bac_NtkAlloc.exit.i:                              ; preds = %bb.u, %Vec_IntGrow.exit25.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.fa = getelementptr i8, ptr %i.bv, i64 68     ; 2 uses
  %.val.i = load i32, ptr %i.fa, align 4, !tbaa !23 ; 2 uses
  %.not.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i, label %Vec_IntAppend.exit.i, label %bb.v

bb.v:                                             ; preds = %Bac_NtkAlloc.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cb, i64 64 ; 2 uses
  %i.fc = icmp sgt i32 %.val.i, 0
  br i1 %i.fc, label %.lr.ph.i.i, label %Vec_IntAppend.exit.i

.lr.ph.i.i:                                       ; preds = %bb.v
  %i.fd = getelementptr i8, ptr %i.bv, i64 72
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cb, i64 68 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cb, i64 72 ; 4 uses
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %Vec_IntPush.exit.i.i ] ; 2 uses
  %.val6.i.i = load ptr, ptr %i.fd, align 8, !tbaa !24
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.val6.i.i, i64 %indvars.iv.i.i
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !25
  %i.fi = load i32, ptr %i.fe, align 4, !tbaa !23 ; 7 uses
  %i.fj = load i32, ptr %i.fb, align 8, !tbaa !43
  %i.fk = icmp eq i32 %i.fi, %i.fj
  br i1 %i.fk, label %bb.x, label %.Vec_IntPush.exit_crit_edge.i.i

.Vec_IntPush.exit_crit_edge.i.i:                  ; preds = %bb.w
  %.pre.i.i = load ptr, ptr %i.ff, align 8, !tbaa !24
  br label %Vec_IntPush.exit.i.i

bb.x:                                             ; preds = %bb.w
  %i.fl = icmp slt i32 %i.fi, 16
  br i1 %i.fl, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.fm = load ptr, ptr %i.ff, align 8, !tbaa !24 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not9.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fn = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.fm, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.fo = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.ab:                                            ; preds = %bb.x
  %i.fp = icmp samesign ult i32 %i.fi, 1073741823
  %i.fq = shl nuw nsw i32 %i.fi, 1
  %spec.select.i.i.i = select i1 %i.fp, i32 %i.fq, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i = icmp samesign ult i32 %i.fi, %spec.select.i.i.i
  %.pre10.i.i = load ptr, ptr %i.ff, align 8, !tbaa !24 ; 3 uses
  br i1 %.not.i9.i.i.i, label %bb.ac, label %Vec_IntPush.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %.not9.i10.i.i.i = icmp eq ptr %.pre10.i.i, null
  %i.fr = zext nneg i32 %spec.select.i.i.i to i64
  %i.fs = shl nuw nsw i64 %i.fr, 2                ; 2 uses
  br i1 %.not9.i10.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ft = call ptr @realloc(ptr noundef nonnull %.pre10.i.i, i64 noundef %i.fs) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.fu = call noalias ptr @malloc(i64 noundef %i.fs) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i:              ; preds = %bb.ae, %bb.ad, %bb.aa, %bb.z
  %i.fv = phi ptr [ %i.fo, %bb.aa ], [ %i.fn, %bb.z ], [ %i.ft, %bb.ad ], [ %i.fu, %bb.ae ] ; 2 uses
  %spec.select.sink.i.i.i = phi i32 [ 16, %bb.aa ], [ 16, %bb.z ], [ %spec.select.i.i.i, %bb.ad ], [ %spec.select.i.i.i, %bb.ae ]
  store ptr %i.fv, ptr %i.ff, align 8, !tbaa !24
  store i32 %spec.select.sink.i.i.i, ptr %i.fb, align 8, !tbaa !43
  %.pre11.i.i = load i32, ptr %i.fe, align 4, !tbaa !23
  br label %Vec_IntPush.exit.i.i

Vec_IntPush.exit.i.i:                             ; preds = %Vec_IntGrow.exit11.sink.split.i.i.i, %bb.ab, %.Vec_IntPush.exit_crit_edge.i.i
  %i.fw = phi i32 [ %i.fi, %.Vec_IntPush.exit_crit_edge.i.i ], [ %i.fi, %bb.ab ], [ %.pre11.i.i, %Vec_IntGrow.exit11.sink.split.i.i.i ] ; 2 uses
  %i.fx = phi ptr [ %.pre.i.i, %.Vec_IntPush.exit_crit_edge.i.i ], [ %.pre10.i.i, %bb.ab ], [ %i.fv, %Vec_IntGrow.exit11.sink.split.i.i.i ]
  %i.fy = add nsw i32 %i.fw, 1
  store i32 %i.fy, ptr %i.fe, align 4, !tbaa !23
  %i.fz = sext i32 %i.fw to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.fz
  store i32 %i.fh, ptr %i.ga, align 4, !tbaa !25
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val.i74.i = load i32, ptr %i.fa, align 4, !tbaa !23
  %i.gb = sext i32 %.val.i74.i to i64
  %i.gc = icmp slt i64 %indvars.iv.next.i.i, %i.gb
  br i1 %i.gc, label %bb.w, label %Vec_IntAppend.exit.i, !llvm.loop !0

Vec_IntAppend.exit.i:                             ; preds = %Vec_IntPush.exit.i.i, %bb.v, %Bac_NtkAlloc.exit.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bv, i64 160 ; 2 uses
  %i.ge = getelementptr i8, ptr %i.bv, i64 80
  %.val.i75.i = load i32, ptr %i.ge, align 8, !tbaa !57 ; 6 uses
  %i.gf = load i32, ptr %i.gd, align 8, !tbaa !43
  %.not.i.i.i.i = icmp slt i32 %i.gf, %.val.i75.i
  br i1 %.not.i.i.i.i, label %bb.af, label %Vec_IntGrow.exit.i.i.i

bb.af:                                            ; preds = %Vec_IntAppend.exit.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bv, i64 168 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !24 ; 2 uses
  %.not9.i.i.i76.i = icmp eq ptr %i.gh, null
  %i.gi = sext i32 %.val.i75.i to i64
  %i.gj = shl nsw i64 %i.gi, 2                    ; 2 uses
  br i1 %.not9.i.i.i76.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gk = call ptr @realloc(ptr noundef nonnull %i.gh, i64 noundef %i.gj) #23
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.gl = call noalias ptr @malloc(i64 noundef %i.gj) #24
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gm = phi ptr [ %i.gk, %bb.ag ], [ %i.gl, %bb.ah ]
  store ptr %i.gm, ptr %i.gg, align 8, !tbaa !24
  store i32 %.val.i75.i, ptr %i.gd, align 8, !tbaa !43
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %bb.ai, %Vec_IntAppend.exit.i
  %i.gn = icmp sgt i32 %.val.i75.i, 0
  br i1 %i.gn, label %.lr.ph.i.i.i, label %Bac_NtkStartCopies.exit.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.bv, i64 168
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !24
  %wide.trip.count.i.i.i = zext nneg i32 %.val.i75.i to i64
  %i.gq = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gp, i8 -1, i64 %i.gq, i1 false), !tbaa !25
  br label %Bac_NtkStartCopies.exit.i

Bac_NtkStartCopies.exit.i:                        ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bv, i64 164
  store i32 %.val.i75.i, ptr %i.gr, align 4, !tbaa !23
  %.val6789.i = load i32, ptr %i.cd, align 4, !tbaa !23
  %i.gs = icmp sgt i32 %.val6789.i, 0
  br i1 %i.gs, label %.lr.ph.i, label %.critedge.preheader.i

.lr.ph.i:                                         ; preds = %Bac_NtkStartCopies.exit.i
  %i.gt = getelementptr i8, ptr %i.bv, i64 40
  br label %bb.aj

.critedge.preheader.i:                            ; preds = %bb.aj, %Bac_NtkStartCopies.exit.i
  %.val7091.i = load i32, ptr %i.ce, align 4, !tbaa !23
  %i.gu = icmp sgt i32 %.val7091.i, 0
  br i1 %i.gu, label %.lr.ph93.i, label %.critedge2.preheader.i

.lr.ph93.i:                                       ; preds = %.critedge.preheader.i
  %i.gv = getelementptr i8, ptr %i.bv, i64 56
  br label %.critedge.i

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i
  %indvars.iv.i50 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i51, %bb.aj ] ; 2 uses
  %.val69.i = load ptr, ptr %i.gt, align 8, !tbaa !24
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.val69.i, i64 %indvars.iv.i50
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !25
  %i.gy = call fastcc i32 @Bac_ObjDup(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.bv, i32 noundef %i.gx) ; 0 uses
  %indvars.iv.next.i51 = add nuw nsw i64 %indvars.iv.i50, 1 ; 2 uses
  %.val67.i = load i32, ptr %i.cd, align 4, !tbaa !23
  %i.gz = sext i32 %.val67.i to i64
  %i.ha = icmp slt i64 %indvars.iv.next.i51, %i.gz
  br i1 %i.ha, label %bb.aj, label %.critedge.preheader.i, !llvm.loop !138

.critedge2.preheader.i:                           ; preds = %.critedge.i, %.critedge.preheader.i
  %.val6594.i = load i32, ptr %i.cf, align 4, !tbaa !56 ; 2 uses
  %i.hb = icmp sgt i32 %.val6594.i, 0
  br i1 %i.hb, label %.lr.ph96.i, label %Bac_NtkDupUserBoxes.exit

.lr.ph96.i:                                       ; preds = %.critedge2.preheader.i
  %i.hc = getelementptr i8, ptr %i.bv, i64 88     ; 6 uses
  %i.hd = getelementptr i8, ptr %i.bv, i64 136
  %i.he = getelementptr i8, ptr %i.cb, i64 136    ; 2 uses
  %i.hf = getelementptr i8, ptr %i.bv, i64 104    ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.cb, i64 128 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.cb, i64 132 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.cb, i64 100 ; 6 uses
  %i.hj = getelementptr i8, ptr %i.cb, i64 104    ; 10 uses
  br label %bb.ak

.critedge.i:                                      ; preds = %.critedge.i, %.lr.ph93.i
  %indvars.iv101.i = phi i64 [ 0, %.lr.ph93.i ], [ %indvars.iv.next102.i, %.critedge.i ] ; 2 uses
  %.val63.i = load ptr, ptr %i.gv, align 8, !tbaa !24
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.val63.i, i64 %indvars.iv101.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !25
  %i.hm = call fastcc i32 @Bac_ObjDup(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.bv, i32 noundef %i.hl) ; 0 uses
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 2 uses
  %.val70.i = load i32, ptr %i.ce, align 4, !tbaa !23
  %i.hn = sext i32 %.val70.i to i64
  %i.ho = icmp slt i64 %indvars.iv.next102.i, %i.hn
  br i1 %i.ho, label %.critedge.i, label %.critedge2.preheader.i, !llvm.loop !139

.preheader.i:                                     ; preds = %Bac_BoxNtk.exit.thread.i.i, %Bac_BoxDup.exit.i
  %.val65.i131 = phi i32 [ %.val65.i, %Bac_BoxDup.exit.i ], [ %.val4696.i.i, %Bac_BoxNtk.exit.thread.i.i ] ; 2 uses
  %i.hp = icmp sgt i32 %.val65.i131, 0
  br i1 %i.hp, label %.lr.ph99.i, label %Bac_NtkDupUserBoxes.exit

.lr.ph99.i:                                       ; preds = %.preheader.i
  %i.hq = getelementptr i8, ptr %i.bv, i64 168
  br label %bb.bc

bb.ak:                                            ; preds = %Bac_BoxDup.exit.i, %.lr.ph96.i
  %.val65111.i = phi i32 [ %.val6594.i, %.lr.ph96.i ], [ %.val65.i, %Bac_BoxDup.exit.i ] ; 2 uses
  %indvars.iv104.i = phi i64 [ 0, %.lr.ph96.i ], [ %indvars.iv.next105.pre-phi.i, %Bac_BoxDup.exit.i ] ; 10 uses
  %.val62.i = load ptr, ptr %i.hc, align 8, !tbaa !46 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.val62.i, i64 %indvars.iv104.i
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !47
  %.mask.i.i = and i8 %i.hs, -2
  %.not88.i = icmp eq i8 %.mask.i.i, 10
  br i1 %.not88.i, label %.preheader.preheader, label %.Bac_BoxDup.exit_crit_edge.i

.preheader.preheader:                             ; preds = %bb.ak
  %i.ht = icmp sgt i64 %indvars.iv104.i, 0
  br i1 %i.ht, label %.lr.ph135, label %Bac_BoxBiNum.exit.i.i

.Bac_BoxDup.exit_crit_edge.i:                     ; preds = %bb.ak
  %.pre.i = add nuw nsw i64 %indvars.iv104.i, 1
  %.pre = sext i32 %.val65111.i to i64
  br label %Bac_BoxDup.exit.i

.preheader:                                       ; preds = %.lr.ph135
  %i.hu = icmp sgt i64 %indvars.iv.i.i.i134, 1
  br i1 %i.hu, label %.lr.ph135, label %Bac_BoxBiNum.exit.i.i, !llvm.loop !140

.lr.ph135:                                        ; preds = %.preheader.preheader, %.preheader
  %indvars.iv.i.i.i134 = phi i64 [ %i.hv, %.preheader ], [ %indvars.iv104.i, %.preheader.preheader ] ; 3 uses
  %i.hv = add nsw i64 %indvars.iv.i.i.i134, -1    ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.val62.i, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !47
  %.mask.i.i.i83.i = and i8 %i.hx, -2
  %.not.i.i84.i = icmp eq i8 %.mask.i.i.i83.i, 6
  br i1 %.not.i.i84.i, label %.preheader, label %.Bac_BoxBiNum.exit.i.i_crit_edge, !llvm.loop !140

.Bac_BoxBiNum.exit.i.i_crit_edge:                 ; preds = %.lr.ph135
  br label %Bac_BoxBiNum.exit.i.i, !llvm.loop !140

Bac_BoxBiNum.exit.i.i:                            ; preds = %.preheader, %.Bac_BoxBiNum.exit.i.i_crit_edge, %.preheader.preheader
  %.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.i.i.i134, %.Bac_BoxBiNum.exit.i.i_crit_edge ], [ 0, %.preheader ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.val62.i, i64 %.0.lcssa.i.i.i
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !47
  %.mask.i92.i.i = and i8 %i.hz, -2
  %.not93.i.i = icmp eq i8 %.mask.i92.i.i, 6
  br i1 %.not93.i.i, label %.lr.ph.i78.i, label %._crit_edge.i.i

.lr.ph.i78.i:                                     ; preds = %Bac_BoxBiNum.exit.i.i, %.lr.ph.i78.i
  %indvars.iv.i79.i = phi i64 [ %indvars.iv.next.i80.i, %.lr.ph.i78.i ], [ %.0.lcssa.i.i.i, %Bac_BoxBiNum.exit.i.i ] ; 2 uses
  %i.ia = trunc nsw i64 %indvars.iv.i79.i to i32
  %i.ib = call fastcc i32 @Bac_ObjDup(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.bv, i32 noundef %i.ia) ; 0 uses
  %indvars.iv.next.i80.i = add nuw nsw i64 %indvars.iv.i79.i, 1 ; 2 uses
  %.val.i81.i = load ptr, ptr %i.hc, align 8, !tbaa !46
  %i.ic = getelementptr inbounds nuw i8, ptr %.val.i81.i, i64 %indvars.iv.next.i80.i
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !47
  %.mask.i.i.i = and i8 %i.id, -2
  %.not.i82.i = icmp eq i8 %.mask.i.i.i, 6
  br i1 %.not.i82.i, label %.lr.ph.i78.i, label %._crit_edge.i.i, !llvm.loop !141

._crit_edge.i.i:                                  ; preds = %.lr.ph.i78.i, %Bac_BoxBiNum.exit.i.i
  %i.ie = trunc nuw nsw i64 %indvars.iv104.i to i32
  %i.if = call fastcc i32 @Bac_ObjDup(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.bv, i32 noundef %i.ie) ; 12 uses
  %.val49.i.i = load ptr, ptr %i.hd, align 8, !tbaa !70 ; 3 uses
  %.not88.i.i = icmp eq ptr %.val49.i.i, null
  br i1 %.not88.i.i, label %bb.ar, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i
  %.val48.i.i = load ptr, ptr %i.he, align 8, !tbaa !70 ; 6 uses
  %.not89.i.i = icmp eq ptr %.val48.i.i, null
  br i1 %.not89.i.i, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val.i54.i.i = load ptr, ptr %i.hc, align 8, !tbaa !46
  %i.ig = getelementptr inbounds nuw i8, ptr %.val.i54.i.i, i64 %indvars.iv104.i
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !47
  %i.ii = and i8 %i.ih, -4
  %narrow.i.not.i.i.i = icmp eq i8 %i.ii, 4
  br i1 %narrow.i.not.i.i.i, label %Bac_ObjName.exit.i.i, label %Bac_ObjName.exit.thread.i.i

Bac_ObjName.exit.i.i:                             ; preds = %bb.am
  %.val6.i.i.i = load ptr, ptr %i.hf, align 8, !tbaa !24
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.val6.i.i.i, i64 %indvars.iv104.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !25
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %.val49.i.i, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !25 ; 2 uses
  %.not42.i.i = icmp eq i32 %i.in, 0
  br i1 %.not42.i.i, label %bb.ar, label %Bac_ObjName.exit61.i.i

Bac_ObjName.exit.thread.i.i:                      ; preds = %bb.am
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.val49.i.i, i64 %indvars.iv104.i
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !25 ; 2 uses
  %.not4286.i.i = icmp eq i32 %i.ip, 0
  br i1 %.not4286.i.i, label %bb.ar, label %Bac_ObjName.exit61.i.i

Bac_ObjName.exit61.i.i:                           ; preds = %Bac_ObjName.exit.thread.i.i, %Bac_ObjName.exit.i.i
  %i.iq = phi i32 [ %i.ip, %Bac_ObjName.exit.thread.i.i ], [ %i.in, %Bac_ObjName.exit.i.i ]
  %i.ir = add nsw i32 %i.if, 1                    ; 3 uses
  %i.is = load i32, ptr %i.hh, align 4, !tbaa !23 ; 4 uses
  %.not.i.not.i.i.i.i = icmp slt i32 %i.if, %i.is
  br i1 %.not.i.not.i.i.i.i, label %Bac_ObjSetName.exit.i.i, label %bb.an

bb.an:                                            ; preds = %Bac_ObjName.exit61.i.i
  %i.it = load i32, ptr %i.hg, align 8, !tbaa !43 ; 4 uses
  %i.iu = shl nsw i32 %i.it, 1                    ; 2 uses
  %.not.i.i.i77.i = icmp slt i32 %i.if, %i.iu
  %.not.i.i.not.i.i.i.i = icmp sgt i32 %i.it, %i.if ; 2 uses
  br i1 %.not.i.i.i77.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br i1 %.not.i.i.not.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i.i, label %Vec_IntGrow.exit.sink.split.i.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  br i1 %.not.i.i.not.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.iv = icmp slt i32 %i.it, 1073741823
  %spec.select.i.i.i.i.i = select i1 %i.iv, i32 %i.iu, i32 2147483647 ; 2 uses
  %.not.i22.i.i.i.i.i = icmp slt i32 %i.it, %spec.select.i.i.i.i.i
  br i1 %.not.i22.i.i.i.i.i, label %Vec_IntGrow.exit.sink.split.i.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i.i:            ; preds = %bb.aq, %bb.ao
  %spec.select.i.i.i.sink.i.i = phi i32 [ %i.ir, %bb.ao ], [ %spec.select.i.i.i.i.i, %bb.aq ] ; 2 uses
  %i.iw = sext i32 %spec.select.i.i.i.sink.i.i to i64
  %i.ix = shl nsw i64 %i.iw, 2
  %i.iy = call ptr @realloc(ptr noundef nonnull %.val48.i.i, i64 noundef %i.ix) #23 ; 2 uses
  store ptr %i.iy, ptr %i.he, align 8, !tbaa !24
  store i32 %spec.select.i.i.i.sink.i.i, ptr %i.hg, align 8, !tbaa !43
  %.pre.i.i.i.i = load i32, ptr %i.hh, align 4, !tbaa !23
  br label %Vec_IntGrow.exit.i.i.i.i.i

Vec_IntGrow.exit.i.i.i.i.i:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i.i, %bb.aq, %bb.ap, %bb.ao
  %.val.i.i.pre.pre.i.i = phi ptr [ %i.iy, %Vec_IntGrow.exit.sink.split.i.i.i.i.i ], [ %.val48.i.i, %bb.aq ], [ %.val48.i.i, %bb.ap ], [ %.val48.i.i, %bb.ao ] ; 2 uses
  %i.iz = phi i32 [ %.pre.i.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i.i ], [ %i.is, %bb.aq ], [ %i.is, %bb.ap ], [ %i.is, %bb.ao ] ; 2 uses
  %.not4.i.i.i.i = icmp sgt i32 %i.iz, %i.if
  br i1 %.not4.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %Vec_IntGrow.exit.i.i.i.i.i
  %i.ja = sext i32 %i.iz to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i.i = sext i32 %i.ir to i64
  %i.jb = shl nsw i64 %i.ja, 2
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val.i.i.pre.pre.i.i, i64 %i.jb
  %i.jc = sub nsw i64 %wide.trip.count.i.i.i.i.i, %i.ja
  %i.jd = shl nuw nsw i64 %i.jc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i.i.i, i8 0, i64 %i.jd, i1 false), !tbaa !25
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i.i
  store i32 %i.ir, ptr %i.hh, align 4, !tbaa !23
  br label %Bac_ObjSetName.exit.i.i

Bac_ObjSetName.exit.i.i:                          ; preds = %._crit_edge.i.i.i.i.i, %Bac_ObjName.exit61.i.i
  %.val.i.i.i.i = phi ptr [ %.val48.i.i, %Bac_ObjName.exit61.i.i ], [ %.val.i.i.pre.pre.i.i, %._crit_edge.i.i.i.i.i ]
  %i.je = sext i32 %i.if to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i, i64 %i.je
  store i32 %i.iq, ptr %i.jf, align 4, !tbaa !25
  br label %bb.ar

bb.ar:                                            ; preds = %Bac_ObjSetName.exit.i.i, %Bac_ObjName.exit.thread.i.i, %Bac_ObjName.exit.i.i, %bb.al, %._crit_edge.i.i
  %.val52.i.i = load ptr, ptr %i.bv, align 8, !tbaa !51 ; 2 uses
  %.val53.i.i = load ptr, ptr %i.hf, align 8, !tbaa !24
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.val53.i.i, i64 %indvars.iv104.i
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !25 ; 3 uses
  %i.ji = icmp sgt i32 %i.jh, 0
  br i1 %i.ji, label %Bac_ManNtkIsOk.exit.i.i.i.i, label %Bac_BoxNtk.exit.thread.i.i

Bac_ManNtkIsOk.exit.i.i.i.i:                      ; preds = %bb.ar
  %i.jj = getelementptr i8, ptr %.val52.i.i, i64 36
  %.val.i.i.i.i.i = load i32, ptr %i.jj, align 4, !tbaa !52
  %.not4.i.i62.i.i = icmp sgt i32 %i.jh, %.val.i.i.i.i.i
  br i1 %.not4.i.i62.i.i, label %Bac_BoxNtk.exit.thread.i.i, label %Bac_ManNtkIsOk.exit.i.i63.i.i

Bac_ManNtkIsOk.exit.i.i63.i.i:                    ; preds = %Bac_ManNtkIsOk.exit.i.i.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %.val52.i.i, i64 40
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !53
  %i.jm = zext nneg i32 %i.jh to i64
  %i.jn = getelementptr inbounds nuw [208 x i8], ptr %i.jl, i64 %i.jm
  %i.jo = getelementptr i8, ptr %i.jn, i64 12
  %.val47.i.i = load i32, ptr %i.jo, align 4, !tbaa !69
  %i.jp = add nsw i32 %i.if, 1                    ; 5 uses
  %i.jq = load i32, ptr %i.hi, align 4, !tbaa !23 ; 4 uses
  %.not.i.not.i.i67.i.i = icmp slt i32 %i.if, %i.jq
  br i1 %.not.i.not.i.i67.i.i, label %Bac_BoxSetNtkId.exit.i.i, label %bb.as

bb.as:                                            ; preds = %Bac_ManNtkIsOk.exit.i.i63.i.i
  %i.jr = load i32, ptr %i.eh, align 8, !tbaa !43 ; 4 uses
  %i.js = shl nsw i32 %i.jr, 1                    ; 2 uses
  %.not.i.i68.i.i = icmp slt i32 %i.if, %i.js
  %.not.i.i.not.i.i69.i.i = icmp sgt i32 %i.jr, %i.if ; 2 uses
  br i1 %.not.i.i68.i.i, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  br i1 %.not.i.i.not.i.i69.i.i, label %Vec_IntGrow.exit.i.i.i74.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jt = load ptr, ptr %i.hj, align 8, !tbaa !24 ; 2 uses
  %.not9.i.i.i.i70.i.i = icmp eq ptr %i.jt, null
  %i.ju = sext i32 %i.jp to i64
  %i.jv = shl nsw i64 %i.ju, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i70.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jw = call ptr @realloc(ptr noundef nonnull %i.jt, i64 noundef %i.jv) #23
  br label %Vec_IntGrow.exit.sink.split.i.i.i71.i.i

bb.aw:                                            ; preds = %bb.au
  %i.jx = call noalias ptr @malloc(i64 noundef %i.jv) #24
  br label %Vec_IntGrow.exit.sink.split.i.i.i71.i.i

bb.ax:                                            ; preds = %bb.as
  br i1 %.not.i.i.not.i.i69.i.i, label %Vec_IntGrow.exit.i.i.i74.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jy = icmp slt i32 %i.jr, 1073741823
  %spec.select.i.i.i81.i.i = select i1 %i.jy, i32 %i.js, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i82.i.i = icmp slt i32 %i.jr, %spec.select.i.i.i81.i.i
  br i1 %.not.i22.i.i.i82.i.i, label %bb.az, label %Vec_IntGrow.exit.i.i.i74.i.i

bb.az:                                            ; preds = %bb.ay
  %i.jz = load ptr, ptr %i.hj, align 8, !tbaa !24 ; 2 uses
  %.not9.i23.i.i.i83.i.i = icmp eq ptr %i.jz, null
  %i.ka = sext i32 %spec.select.i.i.i81.i.i to i64
  %i.kb = shl nuw nsw i64 %i.ka, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i83.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kc = call ptr @realloc(ptr noundef nonnull %i.jz, i64 noundef %i.kb) #23
  br label %Vec_IntGrow.exit.sink.split.i.i.i71.i.i

bb.bb:                                            ; preds = %bb.az
  %i.kd = call noalias ptr @malloc(i64 noundef %i.kb) #24
  br label %Vec_IntGrow.exit.sink.split.i.i.i71.i.i

Vec_IntGrow.exit.sink.split.i.i.i71.i.i:          ; preds = %bb.bb, %bb.ba, %bb.aw, %bb.av
  %storemerge.i = phi ptr [ %i.jx, %bb.aw ], [ %i.jw, %bb.av ], [ %i.kc, %bb.ba ], [ %i.kd, %bb.bb ]
  %spec.select.sink.i.i.i72.i.i = phi i32 [ %i.jp, %bb.aw ], [ %i.jp, %bb.av ], [ %spec.select.i.i.i81.i.i, %bb.ba ], [ %spec.select.i.i.i81.i.i, %bb.bb ]
  store ptr %storemerge.i, ptr %i.hj, align 8, !tbaa !24
  store i32 %spec.select.sink.i.i.i72.i.i, ptr %i.eh, align 8, !tbaa !43
  %.pre.i.i73.i.i = load i32, ptr %i.hi, align 4, !tbaa !23
  br label %Vec_IntGrow.exit.i.i.i74.i.i

Vec_IntGrow.exit.i.i.i74.i.i:                     ; preds = %Vec_IntGrow.exit.sink.split.i.i.i71.i.i, %bb.ay, %bb.ax, %bb.at
  %i.ke = phi i32 [ %.pre.i.i73.i.i, %Vec_IntGrow.exit.sink.split.i.i.i71.i.i ], [ %i.jq, %bb.ay ], [ %i.jq, %bb.ax ], [ %i.jq, %bb.at ] ; 2 uses
  %.not4.i.i75.i.i = icmp sgt i32 %i.ke, %i.if
  br i1 %.not4.i.i75.i.i, label %._crit_edge.i.i.i79.i.i, label %.lr.ph.i.i.i76.i.i

.lr.ph.i.i.i76.i.i:                               ; preds = %Vec_IntGrow.exit.i.i.i74.i.i
  %i.kf = load ptr, ptr %i.hj, align 8, !tbaa !24
  %i.kg = sext i32 %i.ke to i64                   ; 2 uses
  %wide.trip.count.i.i.i77.i.i = sext i32 %i.jp to i64
  %i.kh = shl nsw i64 %i.kg, 2
  %scevgep.i.i78.i.i = getelementptr i8, ptr %i.kf, i64 %i.kh
  %i.ki = sub nsw i64 %wide.trip.count.i.i.i77.i.i, %i.kg
  %i.kj = shl nuw nsw i64 %i.ki, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i78.i.i, i8 0, i64 %i.kj, i1 false), !tbaa !25
  br label %._crit_edge.i.i.i79.i.i

._crit_edge.i.i.i79.i.i:                          ; preds = %.lr.ph.i.i.i76.i.i, %Vec_IntGrow.exit.i.i.i74.i.i
  store i32 %i.jp, ptr %i.hi, align 4, !tbaa !23
  br label %Bac_BoxSetNtkId.exit.i.i

Bac_BoxSetNtkId.exit.i.i:                         ; preds = %._crit_edge.i.i.i79.i.i, %Bac_ManNtkIsOk.exit.i.i63.i.i
  %.val.i.i80.i.i = load ptr, ptr %i.hj, align 8, !tbaa !24
  %i.kk = sext i32 %i.if to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %.val.i.i80.i.i, i64 %i.kk
  store i32 %.val47.i.i, ptr %i.kl, align 4, !tbaa !25
  br label %Bac_BoxNtk.exit.thread.i.i

Bac_BoxNtk.exit.thread.i.i:                       ; preds = %Bac_BoxSetNtkId.exit.i.i, %Bac_ManNtkIsOk.exit.i.i.i.i, %bb.ar
  %i.km = add nuw nsw i64 %indvars.iv104.i, 1     ; 6 uses
  %.val4696.i.i = load i32, ptr %i.cf, align 4, !tbaa !56 ; 3 uses
  %i.kn = sext i32 %.val4696.i.i to i64           ; 2 uses
  %i.ko = icmp slt i64 %i.km, %i.kn
  br i1 %i.ko, label %.lr.ph98.i.i.preheader, label %.preheader.i

.lr.ph98.i.i.preheader:                           ; preds = %Bac_BoxNtk.exit.thread.i.i
  %.val45.i.i67 = load ptr, ptr %i.hc, align 8, !tbaa !46
  %i.kp = getelementptr inbounds nuw i8, ptr %.val45.i.i67, i64 %i.km
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !47
  %.mask.i84.i.i68 = and i8 %i.kq, -2
  %.not90.i.i69 = icmp eq i8 %.mask.i84.i.i68, 8
  br i1 %.not90.i.i69, label %.lr.ph, label %Bac_BoxDup.exit.i

.lr.ph98.i.i:                                     ; preds = %.lr.ph
  %.val45.i.i = load ptr, ptr %i.hc, align 8, !tbaa !46
  %i.kr = getelementptr inbounds nuw i8, ptr %.val45.i.i, i64 %indvars.iv.next102.i.i
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !47
  %.mask.i84.i.i = and i8 %i.ks, -2
  %.not90.i.i = icmp eq i8 %.mask.i84.i.i, 8
  br i1 %.not90.i.i, label %.lr.ph, label %Bac_BoxDup.exit.i, !llvm.loop !142

.lr.ph:                                           ; preds = %.lr.ph98.i.i.preheader, %.lr.ph98.i.i
  %indvars.iv101.i.i70 = phi i64 [ %indvars.iv.next102.i.i, %.lr.ph98.i.i ], [ %i.km, %.lr.ph98.i.i.preheader ] ; 2 uses
  %i.kt = trunc nuw nsw i64 %indvars.iv101.i.i70 to i32
  %i.ku = call fastcc i32 @Bac_ObjDup(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.bv, i32 noundef %i.kt) ; 0 uses
  %indvars.iv.next102.i.i = add nuw nsw i64 %indvars.iv101.i.i70, 1 ; 3 uses
  %.val46.i.i = load i32, ptr %i.cf, align 4, !tbaa !56 ; 3 uses
  %i.kv = sext i32 %.val46.i.i to i64             ; 3 uses
  %i.kw = icmp slt i64 %indvars.iv.next102.i.i, %i.kv
  br i1 %i.kw, label %.lr.ph98.i.i, label %.Bac_BoxDup.exit.i.loopexit_crit_edge, !llvm.loop !142

.Bac_BoxDup.exit.i.loopexit_crit_edge:            ; preds = %.lr.ph
  br label %Bac_BoxDup.exit.i, !llvm.loop !142

Bac_BoxDup.exit.i:                                ; preds = %.lr.ph98.i.i, %.lr.ph98.i.i.preheader, %.Bac_BoxDup.exit.i.loopexit_crit_edge, %.Bac_BoxDup.exit_crit_edge.i
  %.pre-phi = phi i64 [ %.pre, %.Bac_BoxDup.exit_crit_edge.i ], [ %i.kn, %.lr.ph98.i.i.preheader ], [ %i.kv, %.Bac_BoxDup.exit.i.loopexit_crit_edge ], [ %i.kv, %.lr.ph98.i.i ]
  %indvars.iv.next105.pre-phi.i = phi i64 [ %.pre.i, %.Bac_BoxDup.exit_crit_edge.i ], [ %i.km, %.lr.ph98.i.i.preheader ], [ %i.km, %.Bac_BoxDup.exit.i.loopexit_crit_edge ], [ %i.km, %.lr.ph98.i.i ] ; 2 uses
  %.val65.i = phi i32 [ %.val65111.i, %.Bac_BoxDup.exit_crit_edge.i ], [ %.val4696.i.i, %.lr.ph98.i.i.preheader ], [ %.val46.i.i, %.Bac_BoxDup.exit.i.loopexit_crit_edge ], [ %.val46.i.i, %.lr.ph98.i.i ] ; 2 uses
  %i.kx = icmp slt i64 %indvars.iv.next105.pre-phi.i, %.pre-phi
  br i1 %i.kx, label %bb.ak, label %.preheader.i, !llvm.loop !143

bb.bc:                                            ; preds = %bb.bp, %.lr.ph99.i
  %.val64116.i = phi i32 [ %.val65.i131, %.lr.ph99.i ], [ %.val64.i, %bb.bp ] ; 3 uses
  %indvars.iv108.i = phi i64 [ 0, %.lr.ph99.i ], [ %indvars.iv.next109.i, %bb.bp ] ; 4 uses
  %.val59.i = load ptr, ptr %i.hc, align 8, !tbaa !46
  %i.ky = getelementptr inbounds nuw i8, ptr %.val59.i, i64 %indvars.iv108.i
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !47
  %i.la = and i8 %i.kz, -4
  %narrow.i.not.i = icmp eq i8 %i.la, 4
  br i1 %narrow.i.not.i, label %bb.bd, label %bb.bp

bb.bd:                                            ; preds = %bb.bc
  %.val58.i = load ptr, ptr %i.hq, align 8, !tbaa !24 ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.val58.i, i64 %indvars.iv108.i
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !25 ; 7 uses
  %i.ld = icmp sgt i32 %i.lc, -1
  br i1 %i.ld, label %bb.be, label %bb.bp

bb.be:                                            ; preds = %bb.bd
  %.val61.i = load ptr, ptr %i.hf, align 8, !tbaa !24
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.val61.i, i64 %indvars.iv108.i
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !25
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [4 x i8], ptr %.val58.i, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !25 ; 2 uses
  %i.lj = icmp sgt i32 %i.li, -1
  br i1 %i.lj, label %bb.bf, label %bb.bp

bb.bf:                                            ; preds = %bb.be
  %i.lk = add nuw nsw i32 %i.lc, 1                ; 5 uses
  %i.ll = load i32, ptr %i.hi, align 4, !tbaa !23 ; 3 uses
  %.not.i.not.i.i.i = icmp slt i32 %i.lc, %i.ll
  br i1 %.not.i.not.i.i.i, label %Bac_ObjSetFanin.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lm = load i32, ptr %i.eh, align 8, !tbaa !43 ; 4 uses
  %i.ln = shl nsw i32 %i.lm, 1                    ; 2 uses
  %.not.i.i85.i = icmp slt i32 %i.lc, %i.ln
  br i1 %.not.i.i85.i, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lo = load ptr, ptr %i.hj, align 8, !tbaa !24 ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.lo, null
  %i.lp = zext nneg i32 %i.lk to i64
  %i.lq = shl nuw nsw i64 %i.lp, 2                ; 2 uses
  br i1 %.not9.i.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lr = call ptr @realloc(ptr noundef nonnull %i.lo, i64 noundef %i.lq) #23
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.ls = call noalias ptr @malloc(i64 noundef %i.lq) #24
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.bk:                                            ; preds = %bb.bg
  %.not.i.i.not.i.i.i = icmp sgt i32 %i.lm, %i.lc
  br i1 %.not.i.i.not.i.i.i, label %Vec_IntGrow.exit.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lt = icmp slt i32 %i.lm, 1073741823
  %spec.select.i.i.i.i = select i1 %i.lt, i32 %i.ln, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i.i = icmp slt i32 %i.lm, %spec.select.i.i.i.i
  br i1 %.not.i22.i.i.i.i, label %bb.bm, label %Vec_IntGrow.exit.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.lu = load ptr, ptr %i.hj, align 8, !tbaa !24 ; 2 uses
  %.not9.i23.i.i.i.i = icmp eq ptr %i.lu, null
  %i.lv = zext nneg i32 %spec.select.i.i.i.i to i64
  %i.lw = shl nuw nsw i64 %i.lv, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lx = call ptr @realloc(ptr noundef nonnull %i.lu, i64 noundef %i.lw) #23
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.ly = call noalias ptr @malloc(i64 noundef %i.lw) #24
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i:              ; preds = %bb.bo, %bb.bn, %bb.bj, %bb.bi
  %storemerge150.i = phi ptr [ %i.ls, %bb.bj ], [ %i.lr, %bb.bi ], [ %i.lx, %bb.bn ], [ %i.ly, %bb.bo ]
  %spec.select.sink.i.i.i.i = phi i32 [ %i.lk, %bb.bj ], [ %i.lk, %bb.bi ], [ %spec.select.i.i.i.i, %bb.bn ], [ %spec.select.i.i.i.i, %bb.bo ]
  store ptr %storemerge150.i, ptr %i.hj, align 8, !tbaa !24
  store i32 %spec.select.sink.i.i.i.i, ptr %i.eh, align 8, !tbaa !43
  %.pre.i.i.i = load i32, ptr %i.hi, align 4, !tbaa !23
  br label %Vec_IntGrow.exit.i.i.i.i

Vec_IntGrow.exit.i.i.i.i:                         ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i, %bb.bl, %bb.bk
  %i.lz = phi i32 [ %.pre.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i ], [ %i.ll, %bb.bl ], [ %i.ll, %bb.bk ] ; 2 uses
  %.not4.i.i.i = icmp sgt i32 %i.lz, %i.lc
  br i1 %.not4.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i86.i

.lr.ph.i.i.i86.i:                                 ; preds = %Vec_IntGrow.exit.i.i.i.i
  %i.ma = load ptr, ptr %i.hj, align 8, !tbaa !24
  %i.mb = sext i32 %i.lz to i64                   ; 2 uses
  %wide.trip.count.i.i.i87.i = zext nneg i32 %i.lk to i64
  %i.mc = shl nsw i64 %i.mb, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.ma, i64 %i.mc
  %i.md = sub nsw i64 %wide.trip.count.i.i.i87.i, %i.mb
  %i.me = shl nuw nsw i64 %i.md, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i.i, i8 0, i64 %i.me, i1 false), !tbaa !25
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i86.i, %Vec_IntGrow.exit.i.i.i.i
  store i32 %i.lk, ptr %i.hi, align 4, !tbaa !23
  br label %Bac_ObjSetFanin.exit.i

Bac_ObjSetFanin.exit.i:                           ; preds = %._crit_edge.i.i.i.i, %bb.bf
  %.val.i.i.i49 = load ptr, ptr %i.hj, align 8, !tbaa !24
  %i.mf = zext nneg i32 %i.lc to i64
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i49, i64 %i.mf
  store i32 %i.li, ptr %i.mg, align 4, !tbaa !25
  %.val64.pre.i = load i32, ptr %i.cf, align 4, !tbaa !56
  br label %bb.bp

bb.bp:                                            ; preds = %Bac_ObjSetFanin.exit.i, %bb.be, %bb.bd, %bb.bc
  %.val64.i = phi i32 [ %.val64116.i, %bb.bc ], [ %.val64.pre.i, %Bac_ObjSetFanin.exit.i ], [ %.val64116.i, %bb.be ], [ %.val64116.i, %bb.bd ] ; 2 uses
  %indvars.iv.next109.i = add nuw nsw i64 %indvars.iv108.i, 1 ; 2 uses
  %i.mh = sext i32 %.val64.i to i64
  %i.mi = icmp slt i64 %indvars.iv.next109.i, %i.mh
  br i1 %i.mi, label %bb.bc, label %Bac_NtkDupUserBoxes.exit, !llvm.loop !144

Bac_NtkDupUserBoxes.exit:                         ; preds = %bb.bp, %.critedge2.preheader.i, %.preheader.i
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %.val37 = load i32, ptr %i.b, align 4, !tbaa !52 ; 3 uses
  %i.mj = sext i32 %.val37 to i64
  %.not33.not = icmp slt i64 %indvars.iv81, %i.mj
  br i1 %.not33.not, label %Bac_ManNtk.exit46, label %.critedge2.preheader, !llvm.loop !145

Bac_ManNtk.exit54:                                ; preds = %Bac_ManNtk.exit54.lr.ph, %Bac_NtkHostNtk.exit.thread
  %indvars.iv84 = phi i64 [ 1, %Bac_ManNtk.exit54.lr.ph ], [ %indvars.iv.next85, %Bac_NtkHostNtk.exit.thread ] ; 2 uses
  %i.mk = getelementptr inbounds nuw [208 x i8], ptr %i.bs, i64 %indvars.iv84 ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !50 ; 3 uses
  %i.mn = icmp sgt i32 %i.mm, 0
  br i1 %i.mn, label %Bac_ManNtkIsOk.exit.i.i56, label %Bac_NtkHostNtk.exit.thread

Bac_ManNtkIsOk.exit.i.i56:                        ; preds = %Bac_ManNtk.exit54
  %i.mo = load ptr, ptr %i.mk, align 8, !tbaa !51 ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mo, i64 36
  %.val.i.i.i57 = load i32, ptr %i.mp, align 4, !tbaa !52
  %.not4.i.i58 = icmp sgt i32 %i.mm, %.val.i.i.i57
  br i1 %.not4.i.i58, label %Bac_NtkHostNtk.exit.thread, label %Bac_ManNtkIsOk.exit.i.i60

Bac_ManNtkIsOk.exit.i.i60:                        ; preds = %Bac_ManNtkIsOk.exit.i.i56
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 40
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !53
  %i.ms = zext nneg i32 %i.mm to i64
  %i.mt = getelementptr inbounds nuw [208 x i8], ptr %i.mr, i64 %i.ms ; 2 uses
  %i.mu = getelementptr i8, ptr %i.mk, i64 12
  %.val42 = load i32, ptr %i.mu, align 4, !tbaa !69 ; 3 uses
  %i.mv = icmp sgt i32 %.val42, 0
  call void @llvm.assume(i1 %i.mv)
  %.val.i.i.i61 = load i32, ptr %i.w, align 4, !tbaa !52
  %.not4.i.i62 = icmp sle i32 %.val42, %.val.i.i.i61
  call void @llvm.assume(i1 %.not4.i.i62)
  %i.mw = load ptr, ptr %i.aa, align 8, !tbaa !53
  %i.mx = zext nneg i32 %.val42 to i64
  %i.my = getelementptr inbounds nuw [208 x i8], ptr %i.mw, i64 %i.mx ; 2 uses
  %i.mz = getelementptr i8, ptr %i.mt, i64 12
  %.val41 = load i32, ptr %i.mz, align 4, !tbaa !69
  %i.na = getelementptr i8, ptr %i.mk, i64 20
  %.val40 = load i32, ptr %i.na, align 4, !tbaa !54
  %i.nb = getelementptr i8, ptr %i.mt, i64 168
  %.val = load ptr, ptr %i.nb, align 8, !tbaa !24
  %i.nc = sext i32 %.val40 to i64
  %i.nd = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.nc
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !25
  %i.nf = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  store i32 %.val41, ptr %i.nf, align 8, !tbaa !50
  %i.ng = getelementptr inbounds nuw i8, ptr %i.my, i64 20
  store i32 %i.ne, ptr %i.ng, align 4, !tbaa !54
  br label %Bac_NtkHostNtk.exit.thread

Bac_NtkHostNtk.exit.thread:                       ; preds = %Bac_ManNtkIsOk.exit.i.i56, %Bac_ManNtk.exit54, %Bac_ManNtkIsOk.exit.i.i60
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count87
  br i1 %exitcond88.not, label %.critedge4, label %Bac_ManNtk.exit54, !llvm.loop !146

.critedge4:                                       ; preds = %Bac_NtkHostNtk.exit.thread, %Bac_ManStart.exit, %.critedge2.preheader
  ret ptr %i.c
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Bac_ManMoveNames(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 36         ; 2 uses
  %.val16 = load i32, ptr %i.a, align 4, !tbaa !52
  %.not17 = icmp slt i32 %.val16, 1
  br i1 %.not17, label %.critedge, label %Bac_ManNtk.exit.lr.ph

Bac_ManNtk.exit.lr.ph:                            ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = getelementptr i8, ptr %0, i64 36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %Bac_ManNtk.exit

Bac_ManNtk.exit:                                  ; preds = %Bac_ManNtk.exit.lr.ph, %Bac_NtkMoveNames.exit
  %indvars.iv = phi i64 [ 1, %Bac_ManNtk.exit.lr.ph ], [ %indvars.iv.next, %Bac_NtkMoveNames.exit ] ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw [208 x i8], ptr %i.e, i64 %indvars.iv ; 18 uses
  %i.g = getelementptr i8, ptr %i.f, i64 12
end_hunk_0
