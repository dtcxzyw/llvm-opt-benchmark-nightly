Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cbaReadVer?download=true
inline.NumInlined: 1012
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Prs_ManReadVerilog:bb.a
  %indvars.iv.i.i = phi i64 [ 1, %bb.ak ], [ %indvars.iv.next.i.i, %bb.am ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr @s_VerNames, i64 %indvars.iv.i.i
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !55 ; 2 uses
  %i.ey = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ex) #32
  %sext.i.i20 = shl i64 %i.ey, 32
  %i.ez = ashr exact i64 %sext.i.i20, 32
  %i.fa = tail call i32 @strncmp(ptr noundef readonly %i.ev, ptr noundef nonnull %i.ex, i64 noundef %i.ez) #32
  %.not9.i.i = icmp eq i32 %i.fa, 0
  br i1 %.not9.i.i, label %Prs_ManIsKnownModule.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 55
  br i1 %exitcond.i.i, label %Prs_ManIsKnownModule.exit.thread.i, label %bb.al, !llvm.loop !95

Prs_ManIsKnownModule.exit.i:                      ; preds = %bb.al
  %i.fb = load ptr, ptr %i.bj, align 8, !tbaa !37
  %i.fc = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.fb, ptr noundef nonnull dereferenceable(1) @.str.54) #32 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %Prs_ManUtilSkipUntilWord.exit.i, label %.split.i

Prs_ManUtilSkipUntilWord.exit.i:                  ; preds = %Prs_ManIsKnownModule.exit.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.fe, ptr noundef nonnull align 1 dereferenceable(33) @.str.78, i64 33, i1 false)
  br label %Prs_ManReadDesign.exit

.split.i:                                         ; preds = %Prs_ManIsKnownModule.exit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 9
  store ptr %i.ff, ptr %i.bj, align 8, !tbaa !37
  tail call fastcc void @Vec_IntPush(ptr noundef nonnull %i.bm, i32 noundef %i.er)
  %.pre.i = load ptr, ptr %i.bh, align 8, !tbaa !41
  %i.fg = icmp eq ptr %.pre.i, null
  br i1 %i.fg, label %.backedge.i, label %._crit_edge.i

.backedge.i:                                      ; preds = %Prs_ManReadModule.exit.i, %.split.i
  %i.fh = load ptr, ptr %i.bk, align 8, !tbaa !39 ; 2 uses
  %.promoted21.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !37 ; 2 uses
  %i.fi = icmp ult ptr %.promoted21.i.i.i, %i.fh
  br i1 %i.fi, label %.preheader.i.i.i19.preheader, label %.loopexit226.i.i

Prs_ManIsKnownModule.exit.thread.i:               ; preds = %bb.am
  tail call fastcc void @Prs_ManInitializeNtk(ptr noundef nonnull %i.a, i32 noundef %i.er)
  %i.fj = tail call fastcc i32 @Prs_ManUtilSkipSpaces(ptr noundef nonnull %i.a)
  %.not101.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not101.i.i, label %bb.an, label %Prs_ManReadDesign.exit

bb.an:                                            ; preds = %Prs_ManIsKnownModule.exit.thread.i
  %.val122.i.i = load ptr, ptr %i.bj, align 8, !tbaa !37
  %.val122.val.i.i = load i8, ptr %.val122.i.i, align 1, !tbaa !38
  %.not207.i.i = icmp eq i8 %.val122.val.i.i, 40
  br i1 %.not207.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %i.fk, ptr noundef nonnull align 1 dereferenceable(45) @.str.79, i64 45, i1 false)
  br label %Prs_ManReadDesign.exit

bb.ap:                                            ; preds = %bb.an
  %i.fl = tail call fastcc i32 @Prs_ManReadArguments(ptr noundef nonnull %i.a)
  %.not103.i.i = icmp eq i32 %i.fl, 0
  br i1 %.not103.i.i, label %Prs_ManReadDesign.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fm = load ptr, ptr %i.bj, align 8, !tbaa !37
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  store ptr %i.fn, ptr %i.bj, align 8, !tbaa !37
  %i.fo = tail call fastcc i32 @Prs_ManUtilSkipSpaces(ptr noundef nonnull %i.a)
  %.not104.i.i = icmp eq i32 %i.fo, 0
  br i1 %.not104.i.i, label %.preheader211.i.i, label %Prs_ManReadDesign.exit

.preheader211.i.i:                                ; preds = %bb.aq, %.thread198.i.i
  %.085.i.i = phi i32 [ %.2205.i.i, %.thread198.i.i ], [ 0, %bb.aq ] ; 2 uses
  %.val121.i.i = load ptr, ptr %i.bj, align 8, !tbaa !37 ; 3 uses
  %.val121.val.i.i = load i8, ptr %.val121.i.i, align 1, !tbaa !38
  %i.fp = icmp eq i8 %.val121.val.i.i, 59
  %i.fq = zext i1 %i.fp to i32
  %i.fr = or i32 %.085.i.i, %i.fq
  %.not105.i.i = icmp eq i32 %i.fr, 0
  br i1 %.not105.i.i, label %bb.bz, label %bb.ar

bb.ar:                                            ; preds = %.preheader211.i.i
  %.not106.i.i = icmp eq i32 %.085.i.i, 0
  br i1 %.not106.i.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fs = getelementptr inbounds nuw i8, ptr %.val121.i.i, i64 1 ; 2 uses
  store ptr %i.fs, ptr %i.bj, align 8, !tbaa !37
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.promoted21.i = phi ptr [ %i.fs, %bb.as ], [ %.val121.i.i, %bb.ar ] ; 2 uses
  %i.ft = load ptr, ptr %i.bk, align 8, !tbaa !39 ; 6 uses
  %i.fu = icmp ult ptr %.promoted21.i, %i.ft
  br i1 %i.fu, label %.preheader.i, label %Prs_ManUtilSkipSpaces.exit

.preheader.i:                                     ; preds = %bb.at, %.preheader.i.backedge
  %i.fv = phi ptr [ %.be, %.preheader.i.backedge ], [ %.promoted21.i, %bb.at ] ; 5 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !38
  switch i8 %i.fw, label %.loopexit [
    i8 32, label %Prs_CharIsSpace.exit.thread.i
    i8 13, label %Prs_CharIsSpace.exit.thread.i
    i8 9, label %Prs_CharIsSpace.exit.thread.i
    i8 10, label %Prs_CharIsSpace.exit.thread.i
    i8 0, label %Prs_ManUtilSkipSpaces.exit
    i8 47, label %bb.au
  ]

Prs_CharIsSpace.exit.thread.i:                    ; preds = %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 1 ; 2 uses
  store ptr %i.fx, ptr %i.bj, align 8, !tbaa !37
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %Prs_CharIsSpace.exit.thread.i, %Prs_ManUtilSkipComments.exit.i
  %.be = phi ptr [ %i.fx, %Prs_CharIsSpace.exit.thread.i ], [ %.sink.i.i, %Prs_ManUtilSkipComments.exit.i ]
  br label %.preheader.i, !llvm.loop !0

bb.au:                                            ; preds = %.preheader.i
  %i.fy = getelementptr i8, ptr %i.fv, i64 1
  %.val27.val.i.i = load i8, ptr %i.fy, align 1, !tbaa !38
  switch i8 %.val27.val.i.i, label %.loopexit [
    i8 47, label %bb.av
    i8 42, label %bb.ax
  ]

bb.av:                                            ; preds = %bb.au
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 2 ; 3 uses
  store ptr %i.fz, ptr %i.bj, align 8, !tbaa !37
  %i.ga = icmp ult ptr %i.fz, %i.ft
  br i1 %i.ga, label %.lr.ph38.i.i, label %.loopexit

.lr.ph38.i.i:                                     ; preds = %bb.av, %bb.aw
  %storemerge2137.i.i = phi ptr [ %i.gb, %bb.aw ], [ %i.fz, %bb.av ] ; 2 uses
  %.val23.val.i.i = load i8, ptr %storemerge2137.i.i, align 1, !tbaa !38
  %.not29.i.i = icmp eq i8 %.val23.val.i.i, 10
  %i.gb = getelementptr inbounds nuw i8, ptr %storemerge2137.i.i, i64 1 ; 4 uses
  br i1 %.not29.i.i, label %Prs_ManUtilSkipComments.exit.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph38.i.i
  store ptr %i.gb, ptr %i.bj, align 8, !tbaa !37
  %exitcond44.not.i.i = icmp eq ptr %i.gb, %i.ft
  br i1 %exitcond44.not.i.i, label %.loopexit, label %.lr.ph38.i.i, !llvm.loop !1

bb.ax:                                            ; preds = %bb.au
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 2 ; 3 uses
  store ptr %i.gc, ptr %i.bj, align 8, !tbaa !37
  %i.gd = icmp ult ptr %i.gc, %i.ft
  br i1 %i.gd, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.ax, %bb.ba
  %storemerge36.i.i = phi ptr [ %i.gg, %bb.ba ], [ %i.gc, %bb.ax ] ; 4 uses
  %.val.val.i.i25 = load i8, ptr %storemerge36.i.i, align 1, !tbaa !38
  %.not31.i.i = icmp eq i8 %.val.val.i.i25, 42
  br i1 %.not31.i.i, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %.lr.ph.i.i
  %i.ge = getelementptr i8, ptr %storemerge36.i.i, i64 1
  %.val25.val.i.i = load i8, ptr %i.ge, align 1, !tbaa !38
  %.not32.i.i = icmp eq i8 %.val25.val.i.i, 47
  br i1 %.not32.i.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gf = getelementptr inbounds nuw i8, ptr %storemerge36.i.i, i64 2
  br label %Prs_ManUtilSkipComments.exit.i

bb.ba:                                            ; preds = %bb.ay, %.lr.ph.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %storemerge36.i.i, i64 1 ; 3 uses
  store ptr %i.gg, ptr %i.bj, align 8, !tbaa !37
  %exitcond.not.i.i = icmp eq ptr %i.gg, %i.ft
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !2

Prs_ManUtilSkipComments.exit.i:                   ; preds = %.lr.ph38.i.i, %bb.az
  %.sink.i.i = phi ptr [ %i.gf, %bb.az ], [ %i.gb, %.lr.ph38.i.i ] ; 3 uses
  store ptr %.sink.i.i, ptr %i.bj, align 8, !tbaa !37
  %i.gh = icmp ult ptr %.sink.i.i, %i.ft
  br i1 %i.gh, label %.preheader.i.backedge, label %Prs_ManUtilSkipSpaces.exit

Prs_ManUtilSkipSpaces.exit:                       ; preds = %bb.at, %Prs_ManUtilSkipComments.exit.i, %.preheader.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %i.gi, ptr noundef nonnull align 1 dereferenceable(34) @.str.62, i64 34, i1 false)
  br label %Prs_ManReadDesign.exit

.loopexit:                                        ; preds = %bb.av, %bb.ax, %bb.au, %.preheader.i, %bb.ba, %bb.aw
  %i.gj = tail call fastcc i32 @Prs_ManReadName(ptr noundef nonnull %i.a) ; 6 uses
  %i.gk = icmp eq i32 %i.gj, 16
  br i1 %i.gk, label %Prs_ManReadModule.exit.i, label %bb.bb

bb.bb:                                            ; preds = %.loopexit
  %i.gl = add i32 %i.gj, -1
  %or.cond.i.i = icmp ult i32 %i.gl, 5
  br i1 %or.cond.i.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.gm = icmp eq i32 %i.gj, 5
  %i.gn = select i1 %i.gm, i32 4, i32 %i.gj
  %i.go = tail call fastcc i32 @Prs_ManReadDeclaration(ptr noundef nonnull %i.a, i32 noundef %i.gn)
  br label %bb.by

bb.bd:                                            ; preds = %bb.bb
  switch i32 %i.gj, label %bb.bw [
    i32 10, label %bb.be
    i32 7, label %bb.bf
    i32 8, label %bb.bu
    i32 9, label %bb.bv
  ]

bb.be:                                            ; preds = %bb.bd
  %i.gp = tail call fastcc i32 @Prs_ManUtilSkipUntil(ptr noundef nonnull %i.a)
  br label %bb.by

bb.bf:                                            ; preds = %bb.bd
  %i.gq = tail call fastcc i32 @Prs_ManReadSignal(ptr noundef nonnull %i.a) ; 2 uses
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gs, ptr noundef nonnull align 1 dereferenceable(40) @.str.80, i64 40, i1 false)
  br label %Prs_ManReadDesign.exit

bb.bh:                                            ; preds = %bb.bf
  %.val120.i.i = load ptr, ptr %i.bj, align 8, !tbaa !37 ; 2 uses
  %.val120.val.i.i = load i8, ptr %.val120.i.i, align 1, !tbaa !38
  %.not208.i.i = icmp eq i8 %.val120.val.i.i, 61
  br i1 %.not208.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(35) %i.gt, ptr noundef nonnull align 1 dereferenceable(35) @.str.81, i64 35, i1 false)
  br label %Prs_ManReadDesign.exit

bb.bj:                                            ; preds = %bb.bh
  %i.gu = getelementptr inbounds nuw i8, ptr %.val120.i.i, i64 1
  store ptr %i.gu, ptr %i.bj, align 8, !tbaa !37
  %i.gv = tail call fastcc i32 @Prs_ManUtilSkipSpaces(ptr noundef nonnull %i.a)
  %.not109.i.i = icmp eq i32 %i.gv, 0
  br i1 %.not109.i.i, label %.preheader.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.gw, ptr noundef nonnull align 1 dereferenceable(17) @.str.82, i64 17, i1 false)
  br label %Prs_ManReadDesign.exit

.preheader.i.i:                                   ; preds = %bb.bj, %bb.bs
  %.0.i.i = phi i32 [ %i.hb, %bb.bs ], [ %i.gq, %bb.bj ]
  %i.gx = tail call fastcc i32 @Prs_ManReadExpression(ptr noundef nonnull %i.a, i32 noundef %.0.i.i)
  %.not110.i.i = icmp eq i32 %i.gx, 0
  br i1 %.not110.i.i, label %Prs_ManReadDesign.exit, label %bb.bl

bb.bl:                                            ; preds = %.preheader.i.i
  %.val119.i.i = load ptr, ptr %i.bj, align 8, !tbaa !37 ; 2 uses
  %.val119.val.i.i = load i8, ptr %.val119.i.i, align 1, !tbaa !38
  %.not209.i.i = icmp eq i8 %.val119.val.i.i, 59
  br i1 %.not209.i.i, label %.thread198.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gy = getelementptr inbounds nuw i8, ptr %.val119.i.i, i64 1
  store ptr %i.gy, ptr %i.bj, align 8, !tbaa !37
  %i.gz = tail call fastcc i32 @Prs_ManUtilSkipSpaces(ptr noundef nonnull %i.a)
  %.not112.i.i = icmp eq i32 %i.gz, 0
  br i1 %.not112.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.ha, ptr noundef nonnull align 1 dereferenceable(18) @.str.83, i64 18, i1 false)
  br label %Prs_ManReadDesign.exit

bb.bo:                                            ; preds = %bb.bm
  %i.hb = tail call fastcc i32 @Prs_ManReadSignal(ptr noundef nonnull %i.a) ; 2 uses
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hd, ptr noundef nonnull align 1 dereferenceable(40) @.str.80, i64 40, i1 false)
  br label %Prs_ManReadDesign.exit

bb.bq:                                            ; preds = %bb.bo
  %.val.i.i = load ptr, ptr %i.bj, align 8, !tbaa !37 ; 2 uses
  %.val.val.i.i = load i8, ptr %.val.i.i, align 1, !tbaa !38
  %.not210.i.i = icmp eq i8 %.val.val.i.i, 61
  br i1 %.not210.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(35) %i.he, ptr noundef nonnull align 1 dereferenceable(35) @.str.81, i64 35, i1 false)
  br label %Prs_ManReadDesign.exit

bb.bs:                                            ; preds = %bb.bq
  %i.hf = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1
  store ptr %i.hf, ptr %i.bj, align 8, !tbaa !37
  %i.hg = tail call fastcc i32 @Prs_ManUtilSkipSpaces(ptr noundef nonnull %i.a)
  %.not114.i.i = icmp eq i32 %i.hg, 0
  br i1 %.not114.i.i, label %.preheader.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.hh, ptr noundef nonnull align 1 dereferenceable(17) @.str.82, i64 17, i1 false)
  br label %Prs_ManReadDesign.exit

bb.bu:                                            ; preds = %bb.bd
  %i.hi = tail call fastcc i32 @Prs_ManReadAlways(ptr noundef nonnull %i.a)
  br label %bb.bx

bb.bv:                                            ; preds = %bb.bd
  %i.hj = tail call fastcc i32 @Prs_ManReadFunction(ptr noundef nonnull %i.a)
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bd
  %i.hk = tail call fastcc i32 @Prs_ManReadInstance(ptr noundef nonnull %i.a, i32 noundef %i.gj)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu
  %.187.i.i = phi i32 [ %i.hk, %bb.bw ], [ %i.hi, %bb.bu ], [ %i.hj, %bb.bv ]
  %.1.i.i = phi i32 [ 0, %bb.bw ], [ 1, %bb.bu ], [ 1, %bb.bv ]
  %i.hl = icmp eq i32 %.187.i.i, 0
  br i1 %i.hl, label %Prs_ManReadDesign.exit, label %.thread198.i.i

bb.by:                                            ; preds = %bb.be, %bb.bc
  %.288.i.i = phi i32 [ %i.go, %bb.bc ], [ %i.gp, %bb.be ]
  %.not115.i.i = icmp eq i32 %.288.i.i, 0
  br i1 %.not115.i.i, label %Prs_ManReadDesign.exit, label %.thread198.i.i

.thread198.i.i:                                   ; preds = %bb.bl, %bb.by, %bb.bx
  %.2205.i.i = phi i32 [ 0, %bb.by ], [ %.1.i.i, %bb.bx ], [ 0, %bb.bl ]
  %i.hm = tail call fastcc i32 @Prs_ManUtilSkipSpaces(ptr noundef nonnull %i.a)
  %.not116.i.i = icmp eq i32 %i.hm, 0
  br i1 %.not116.i.i, label %.preheader211.i.i, label %Prs_ManReadDesign.exit, !llvm.loop !96

bb.bz:                                            ; preds = %.preheader211.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(42) %i.hn, ptr noundef nonnull align 1 dereferenceable(42) @.str.84, i64 42, i1 false)
  br label %Prs_ManReadDesign.exit

Prs_ManReadModule.exit.i:                         ; preds = %.loopexit
  %i.ho = load ptr, ptr %i.bh, align 8, !tbaa !41
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !57
  tail call fastcc void @Vec_IntPush(ptr noundef nonnull %i.bl, i32 noundef %i.hp)
  store ptr null, ptr %i.bh, align 8, !tbaa !41
  br label %.backedge.i

Prs_ManReadDesign.exit:                           ; preds = %Prs_ManIsKnownModule.exit.thread.i, %bb.ap, %bb.aq, %bb.bx, %bb.by, %.thread198.i.i, %.preheader.i.i, %Prs_ManUtilSkipSpaces.exit, %._crit_edge.i, %.loopexit226.i.i, %.loopexit220.i.i, %Prs_ManReadName.exit.thread.i.i, %Prs_ManUtilSkipSpaces.exit171.i.i, %Prs_ManReadName.exit.thread.i, %Prs_ManUtilSkipUntilWord.exit.i, %bb.ao, %bb.bg, %bb.bi, %bb.bk, %bb.bn, %bb.bp, %bb.br, %bb.bt, %bb.bz
  tail call void @Prs_ManPrintModules(ptr noundef nonnull %i.a)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 8, !tbaa !38
  %.not.i21 = icmp eq i8 %i.hr, 0
  br i1 %.not.i21, label %Prs_ManErrorPrint.exit, label %bb.ca

bb.ca:                                            ; preds = %Prs_ManReadDesign.exit
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !100 ; 5 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !37 ; 3 uses
  %i.hw = icmp ult ptr %i.ht, %i.hv
  br i1 %i.hw, label %.lr.ph.i23.preheader, label %Prs_ManErrorPrint.exit.thread

.lr.ph.i23.preheader:                             ; preds = %bb.ca
  %i.hx = ptrtoaddr ptr %i.hv to i64
  %i.hy = ptrtoaddr ptr %i.ht to i64
  %i.hz = sub i64 %i.hx, %i.hy                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.hz, 8
  br i1 %min.iters.check, label %.lr.ph.i23.preheader367, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i23.preheader
  %n.vec = and i64 %i.hz, -8                      ; 3 uses
  %i.ia = getelementptr i8, ptr %i.ht, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ig, %vector.body ]
  %vec.phi365 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ih, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.ht, i64 %index ; 2 uses
  %i.ib = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !38
  %wide.load366 = load <4 x i8>, ptr %i.ib, align 1, !tbaa !38
  %i.ic = icmp eq <4 x i8> %wide.load, splat (i8 10)
  %i.id = icmp eq <4 x i8> %wide.load366, splat (i8 10)
  %i.ie = zext <4 x i1> %i.ic to <4 x i32>
  %i.if = zext <4 x i1> %i.id to <4 x i32>
  %i.ig = add <4 x i32> %vec.phi, %i.ie           ; 2 uses
  %i.ih = add <4 x i32> %vec.phi365, %i.if        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ii = icmp eq i64 %index.next, %n.vec
  br i1 %i.ii, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ih, %i.ig
  %i.ij = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.hz, %n.vec
  br i1 %cmp.n, label %Prs_ManErrorPrint.exit.thread, label %.lr.ph.i23.preheader367

.lr.ph.i23.preheader367:                          ; preds = %.lr.ph.i23.preheader, %middle.block
  %.012.i.ph = phi i32 [ 0, %.lr.ph.i23.preheader ], [ %i.ij, %middle.block ]
  %.0911.i.ph = phi ptr [ %i.ht, %.lr.ph.i23.preheader ], [ %i.ia, %middle.block ]
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.preheader367, %.lr.ph.i23
  %.012.i = phi i32 [ %i.in, %.lr.ph.i23 ], [ %.012.i.ph, %.lr.ph.i23.preheader367 ]
  %.0911.i = phi ptr [ %i.io, %.lr.ph.i23 ], [ %.0911.i.ph, %.lr.ph.i23.preheader367 ] ; 2 uses
  %i.ik = load i8, ptr %.0911.i, align 1, !tbaa !38
  %i.il = icmp eq i8 %i.ik, 10
  %i.im = zext i1 %i.il to i32
  %i.in = add nuw nsw i32 %.012.i, %i.im          ; 2 uses
end_hunk_0
