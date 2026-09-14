Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/atrac3plus?download=true
inline.NumInlined: 168
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@ff_atrac3p_decode_channel_unit:bb.a
  store i32 %i.zv, ptr %i.c, align 8, !tbaa !19
  %i.zw = getelementptr [4 x i8], ptr %i.yx, i64 %indvars.iv.i.i ; 2 uses
  %i.zx = getelementptr i8, ptr %i.zw, i64 -4
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !9
  %i.zz = add i32 %i.zy, %i.zs
  %i.aaa = and i32 %i.zz, 7
  store i32 %i.aaa, ptr %i.zw, align 4, !tbaa !9
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aab = load i32, ptr %i.ya, align 4, !tbaa !123
  %i.aac = sext i32 %i.aab to i64
  %i.aad = icmp slt i64 %indvars.iv.next.i.i, %i.aac
  br i1 %i.aad, label %bb.aw, label %.loopexit225.loopexit268.i.i, !llvm.loop !49

.unreachabledefault:                              ; preds = %bb.d
  unreachable

default.unreachable:                              ; preds = %bb.bk, %bb.cp
  unreachable

.loopexit225.loopexit268.i.i:                     ; preds = %bb.aw
  %.pre.i.i = load i32, ptr %i.ao, align 8, !tbaa !122
  br label %.loopexit225.i.i

.loopexit225.i.i:                                 ; preds = %.lr.ph239.i.i, %bb.ak, %bb.n, %get_bitsz.exit.i.i, %.loopexit225.loopexit268.i.i, %bb.av, %bb.au, %bb.ao, %._crit_edge.i.i, %.preheader229.i.i, %bb.ai, %bb.ah, %bb.ag, %.preheader226.i.i, %bb.t, %bb.m, %bb.l
  %i.aae = phi i32 [ %i.wr, %bb.au ], [ %i.jl, %.preheader229.i.i ], [ %.pre.i.i, %.loopexit225.loopexit268.i.i ], [ %i.ca, %bb.l ], [ %i.jl, %bb.ah ], [ %i.fh, %bb.t ], [ %i.ca, %bb.m ], [ %i.jl, %bb.ao ], [ %i.jl, %._crit_edge.i.i ], [ %i.fh, %.preheader226.i.i ], [ %i.jl, %bb.ai ], [ %i.wr, %bb.av ], [ %i.jl, %bb.ak ], [ %i.fh, %get_bitsz.exit.i.i ], [ %i.jl, %bb.ag ], [ %i.ca, %bb.n ], [ %i.jl, %.lr.ph239.i.i ]
  %.0184.i.i = phi i32 [ %i.wh, %bb.au ], [ 0, %.preheader229.i.i ], [ %i.wh, %.loopexit225.loopexit268.i.i ], [ 0, %bb.l ], [ 0, %bb.ah ], [ %i.ca, %bb.t ], [ 0, %bb.m ], [ 0, %bb.ao ], [ 0, %._crit_edge.i.i ], [ %i.ca, %.preheader226.i.i ], [ 0, %bb.ai ], [ %i.wh, %bb.av ], [ 0, %bb.ak ], [ %i.ca, %get_bitsz.exit.i.i ], [ 0, %bb.ag ], [ 0, %bb.n ], [ 0, %.lr.ph239.i.i ] ; 2 uses
  switch i32 %i.aae, label %.loopexit.i.i [
    i32 2, label %bb.ax
    i32 3, label %bb.ay
  ]

bb.ax:                                            ; preds = %.loopexit225.i.i
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !123 ; 2 uses
  %i.aah = load i32, ptr %i.s, align 4, !tbaa !120
  %i.aai = icmp slt i32 %i.aag, %i.aah
  br i1 %i.aai, label %.lr.ph260.i.i, label %.loopexit.i.i

.lr.ph260.i.i:                                    ; preds = %bb.ax
  %.not204.i.i = icmp eq i64 %indvars.iv.i, 0
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.an, i64 20 ; 2 uses
  %i.aak = sext i32 %i.aag to i64                 ; 2 uses
  br i1 %.not204.i.i, label %.lr.ph260.split.us.i.i, label %.lr.ph260.split.i.i

.lr.ph260.split.us.i.i:                           ; preds = %.lr.ph260.i.i, %.lr.ph260.split.us.i.i
  %indvars.iv302.i.i = phi i64 [ %indvars.iv.next303.i.i, %.lr.ph260.split.us.i.i ], [ %i.aak, %.lr.ph260.i.i ] ; 2 uses
  %i.aal = getelementptr inbounds [4 x i8], ptr %i.aaj, i64 %indvars.iv302.i.i
  store i32 1, ptr %i.aal, align 4, !tbaa !9
  %indvars.iv.next303.i.i = add nsw i64 %indvars.iv302.i.i, 1 ; 2 uses
  %i.aam = load i32, ptr %i.s, align 4, !tbaa !120
  %i.aan = sext i32 %i.aam to i64
  %i.aao = icmp slt i64 %indvars.iv.next303.i.i, %i.aan
  br i1 %i.aao, label %.lr.ph260.split.us.i.i, label %.loopexit.i.i, !llvm.loop !50

.lr.ph260.split.i.i:                              ; preds = %.lr.ph260.i.i, %.lr.ph260.split.i.i
  %indvars.iv299.i.i = phi i64 [ %indvars.iv.next300.i.i, %.lr.ph260.split.i.i ], [ %i.aak, %.lr.ph260.i.i ] ; 2 uses
  %i.aap = load i32, ptr %i.c, align 8, !tbaa !19 ; 4 uses
  %i.aaq = lshr i32 %i.aap, 3
  %i.aar = zext nneg i32 %i.aaq to i64
  %i.aas = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aar
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !14
  %i.aau = load i32, ptr %i.e, align 8, !tbaa !20
  %i.aav = icmp slt i32 %i.aap, %i.aau
  %i.aaw = zext i1 %i.aav to i32
  %spec.select.i216.i.i = add i32 %i.aap, %i.aaw
  %i.aax = zext i8 %i.aat to i32
  %i.aay = and i32 %i.aap, 7
  %i.aaz = shl nuw nsw i32 %i.aax, %i.aay
  %i.aba = lshr i32 %i.aaz, 7
  store i32 %spec.select.i216.i.i, ptr %i.c, align 8, !tbaa !19
  %i.abb = and i32 %i.aba, 1
  %i.abc = getelementptr inbounds [4 x i8], ptr %i.aaj, i64 %indvars.iv299.i.i
  store i32 %i.abb, ptr %i.abc, align 4, !tbaa !9
  %indvars.iv.next300.i.i = add nsw i64 %indvars.iv299.i.i, 1 ; 2 uses
  %i.abd = load i32, ptr %i.s, align 4, !tbaa !120
  %i.abe = sext i32 %i.abd to i64
  %i.abf = icmp slt i64 %indvars.iv.next300.i.i, %i.abe
  br i1 %i.abf, label %.lr.ph260.split.i.i, label %.loopexit.i.i, !llvm.loop !50

bb.ay:                                            ; preds = %.loopexit225.i.i
  %.not202.i.i = icmp eq i64 %indvars.iv.i, 0
  %i.abg = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !125 ; 2 uses
  br i1 %.not202.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.abi = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !123
  %i.abk = add nsw i32 %i.abj, %i.abh
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.abl = load i32, ptr %i.s, align 4, !tbaa !120
  %i.abm = sub nsw i32 %i.abl, %i.abh
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.abn = phi i32 [ %i.abk, %bb.az ], [ %i.abm, %bb.ba ] ; 2 uses
  %i.abo = icmp ugt i32 %i.abn, 32
  br i1 %i.abo, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.8) #9
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.0.i.i = phi i32 [ 32, %bb.bc ], [ %i.abn, %bb.bb ] ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !123 ; 2 uses
  %i.abr = icmp slt i32 %i.abq, %.0.i.i
  br i1 %i.abr, label %.lr.ph257.i.i, label %.loopexit.i.i

.lr.ph257.i.i:                                    ; preds = %bb.bd
  %i.abs = getelementptr inbounds nuw i8, ptr %i.an, i64 20 ; 2 uses
  %i.abt = sext i32 %i.abq to i64                 ; 4 uses
  %wide.trip.count297.i.i = zext nneg i32 %.0.i.i to i64 ; 2 uses
  %i.abu = sub nsw i64 %wide.trip.count297.i.i, %i.abt ; 3 uses
  %min.iters.check = icmp ult i64 %i.abu, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph257.i.i
  %n.vec = and i64 %i.abu, -8                     ; 3 uses
  %i.abv = add nsw i64 %n.vec, %i.abt
  %invariant.gep = getelementptr [4 x i8], ptr %i.abs, i64 %i.abt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> splat (i32 1), ptr %gep, align 4, !tbaa !9
  store <4 x i32> splat (i32 1), ptr %i.abw, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.abx = icmp eq i64 %index.next, %n.vec
  br i1 %i.abx, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abu, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph257.i.i, %middle.block
  %indvars.iv294.i.i.ph = phi i64 [ %i.abt, %.lr.ph257.i.i ], [ %i.abv, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv294.i.i = phi i64 [ %indvars.iv.next295.i.i, %scalar.ph ], [ %indvars.iv294.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aby = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %indvars.iv294.i.i
  store i32 1, ptr %i.aby, align 4, !tbaa !9
  %indvars.iv.next295.i.i = add nsw i64 %indvars.iv294.i.i, 1 ; 2 uses
  %exitcond298.not.i.i = icmp eq i64 %indvars.iv.next295.i.i, %wide.trip.count297.i.i
  br i1 %exitcond298.not.i.i, label %.loopexit.i.i, label %scalar.ph, !llvm.loop !52

.loopexit.i.i:                                    ; preds = %scalar.ph, %.lr.ph260.split.i.i, %.lr.ph260.split.us.i.i, %middle.block, %bb.bd, %bb.ax, %.loopexit225.i.i
  %.not203.i.i = icmp eq i32 %.0184.i.i, 0
  br i1 %.not203.i.i, label %decode_channel_wordlen.exit.i, label %bb.be

bb.be:                                            ; preds = %.loopexit.i.i
  %i.abz = load i32, ptr %i.an, align 8, !tbaa !124
  %i.aca = mul nsw i32 %i.abz, 3
  %i.acb = add nsw i32 %i.aca, %.0184.i.i
  %i.acc = sext i32 %i.acb to i64
  %i.acd = getelementptr [32 x i8], ptr @atrac3p_wl_weights, i64 %i.acc
  %i.ace = getelementptr i8, ptr %i.acd, i64 -32
  %i.acf = load i32, ptr %i.s, align 4, !tbaa !120 ; 2 uses
  %i.acg = icmp sgt i32 %i.acf, 0
  br i1 %i.acg, label %.lr.ph.i217.i.i, label %decode_channel_wordlen.exit.i

.lr.ph.i217.i.i:                                  ; preds = %bb.be
  %i.ach = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.aci = zext nneg i32 %i.acf to i64
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i217.i.i
  %indvars.iv.i218.i.i = phi i64 [ 0, %.lr.ph.i217.i.i ], [ %indvars.iv.next.i219.i.i, %bb.bh ] ; 4 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.ace, i64 %indvars.iv.i218.i.i
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !14
  %i.acl = sext i8 %i.ack to i32
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %indvars.iv.i218.i.i ; 2 uses
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !9
  %i.aco = add nsw i32 %i.acn, %i.acl             ; 3 uses
  store i32 %i.aco, ptr %i.acm, align 4, !tbaa !9
  %or.cond.i.i.i = icmp ugt i32 %i.aco, 7
  br i1 %or.cond.i.i.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.acp = trunc nuw nsw i64 %indvars.iv.i218.i.i to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %i.acp, i32 noundef %i.aco) #9
  br label %decode_scale_factors.exit

bb.bh:                                            ; preds = %bb.bf
  %indvars.iv.next.i219.i.i = add nuw nsw i64 %indvars.iv.i218.i.i, 1 ; 2 uses
  %exitcond64.not.i = icmp eq i64 %indvars.iv.next.i219.i.i, %i.aci
  br i1 %exitcond64.not.i, label %decode_channel_wordlen.exit.i, label %bb.bf, !llvm.loop !53

decode_channel_wordlen.exit.i:                    ; preds = %bb.bh, %bb.e, %bb.be, %.loopexit.i.i, %.preheader.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond67.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !54

._crit_edge.i:                                    ; preds = %decode_channel_wordlen.exit.i
  %.pre = load i32, ptr %i.s, align 4, !tbaa !120 ; 14 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 10 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 7892 ; 2 uses
  %.036.i = add nsw i32 %.pre, -1                 ; 3 uses
  %i.acs = icmp sgt i32 %.pre, 0
  br i1 %i.acs, label %.lr.ph40.i, label %.loopexit256

.lr.ph40.i:                                       ; preds = %._crit_edge.i
  %5 = icmp eq i32 %2, 2
  br i1 %5, label %.lr.ph40.split.us.i.preheader, label %.lr.ph40.split.i

.lr.ph40.split.us.i.preheader:                    ; preds = %.lr.ph40.i
  %6 = zext nneg i32 %.036.i to i64               ; 2 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !9
  %.not.us.i294 = icmp eq i32 %8, 0
  br i1 %.not.us.i294, label %.lr.ph.preheader, label %.loopexit256.thread

.lr.ph.preheader:                                 ; preds = %.lr.ph40.split.us.i.preheader
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.acr, i64 %6
  %10 = load i32, ptr %9, align 4, !tbaa !9
  %.not24.us.i601 = icmp eq i32 %10, 0
  br i1 %.not24.us.i601, label %.lr.ph603, label %.loopexit256.thread

.lr.ph40.split.us.i:                              ; preds = %.lr.ph603
  %.0.us.i = add nsw i32 %.038.us.i295602, -1     ; 2 uses
  %i.act = zext nneg i32 %.0.us.i to i64          ; 2 uses
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %i.act
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !9
  %.not.us.i = icmp eq i32 %i.acv, 0
  br i1 %.not.us.i, label %.lr.ph.a, label %.lr.ph40.split.us.i..loopexit256.thread.loopexit_crit_edge, !llvm.loop !55

.lr.ph.a:                                         ; preds = %.lr.ph40.split.us.i
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.acr, i64 %i.act
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !9
  %.not24.us.i = icmp eq i32 %i.acx, 0
  br i1 %.not24.us.i, label %.lr.ph603, label %.loopexit256.thread, !llvm.loop !55

.lr.ph603:                                        ; preds = %.lr.ph.preheader, %.lr.ph.a
  %.038.us.i295602 = phi i32 [ %.0.us.i, %.lr.ph.a ], [ %.036.i, %.lr.ph.preheader ] ; 4 uses
  %i.acy = icmp sgt i32 %.038.us.i295602, 0
  br i1 %i.acy, label %.lr.ph40.split.us.i, label %..loopexit256_crit_edge298, !llvm.loop !55

.lr.ph40.split.i:                                 ; preds = %.lr.ph40.i.thread, %.lr.ph40.i
  %i.acz = phi i32 [ %i.r, %.lr.ph40.i.thread ], [ %.pre, %.lr.ph40.i ] ; 5 uses
  %i.ada = phi ptr [ %i.ai, %.lr.ph40.i.thread ], [ %i.acq, %.lr.ph40.i ] ; 4 uses
  %.036.i457459 = phi i32 [ %i.o, %.lr.ph40.i.thread ], [ %.036.i, %.lr.ph40.i ] ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.adc = zext nneg i32 %.036.i457459 to i64     ; 2 uses
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.adb, i64 %i.adc
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !9
  %.not48.i = icmp eq i32 %i.ade, 0
  br i1 %.not48.i, label %.lr.ph50.i.preheader, label %.loopexit256.thread

.lr.ph50.i.preheader:                             ; preds = %.lr.ph40.split.i
  %.not616 = icmp eq i32 %.036.i457459, 0
  br i1 %.not616, label %.loopexit256.thread467, label %.lr.ph600, !llvm.loop !55

.lr.ph600:                                        ; preds = %.lr.ph50.i.preheader
  %i.adf = getelementptr inbounds nuw i8, ptr %1, i64 92
  br label %bb.bi, !llvm.loop !55

bb.bi:                                            ; preds = %.lr.ph600, %.lr.ph50.i
  %indvars.iv68.i599 = phi i64 [ %i.adc, %.lr.ph600 ], [ %indvars.iv.next69.i, %.lr.ph50.i ] ; 3 uses
  %indvars.iv.next69.i = add nsw i64 %indvars.iv68.i599, -1 ; 2 uses
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.adf, i64 %indvars.iv.next69.i
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !9
  %.not.i = icmp eq i32 %i.adh, 0
  br i1 %.not.i, label %.lr.ph50.i, label %._crit_edge41.loopexit92.split.loop.exit.i, !llvm.loop !55

.lr.ph50.i:                                       ; preds = %bb.bi
  %i.adi = icmp sgt i64 %indvars.iv68.i599, 1
  br i1 %i.adi, label %bb.bi, label %.lr.ph50.i..loopexit256.thread467.loopexit_crit_edge, !llvm.loop !55

._crit_edge41.loopexit92.split.loop.exit.i:       ; preds = %bb.bi
  %11 = trunc nuw nsw i64 %indvars.iv68.i599 to i32
  br label %.loopexit256.thread

..loopexit256_crit_edge298:                       ; preds = %.lr.ph603
  br label %.loopexit256.thread467, !llvm.loop !55

.lr.ph40.split.us.i..loopexit256.thread.loopexit_crit_edge: ; preds = %.lr.ph40.split.us.i
  br label %.loopexit256.thread, !llvm.loop !55

.loopexit256.thread:                              ; preds = %.lr.ph.a, %.lr.ph.preheader, %.lr.ph40.split.us.i..loopexit256.thread.loopexit_crit_edge, %.lr.ph40.split.i, %._crit_edge41.loopexit92.split.loop.exit.i, %.lr.ph40.split.us.i.preheader
  %.ph = phi ptr [ %i.ada, %.lr.ph40.split.i ], [ %i.acq, %.lr.ph40.split.us.i.preheader ], [ %i.ada, %._crit_edge41.loopexit92.split.loop.exit.i ], [ %i.acq, %.lr.ph.preheader ], [ %i.acq, %.lr.ph40.split.us.i..loopexit256.thread.loopexit_crit_edge ], [ %i.acq, %.lr.ph.a ]
  %.ph460 = phi i32 [ %i.acz, %.lr.ph40.split.i ], [ %.pre, %.lr.ph40.split.us.i.preheader ], [ %i.acz, %._crit_edge41.loopexit92.split.loop.exit.i ], [ %.pre, %.lr.ph.preheader ], [ %.pre, %.lr.ph40.split.us.i..loopexit256.thread.loopexit_crit_edge ], [ %.pre, %.lr.ph.a ]
  %.0.in.lcssa.i.ph = phi i32 [ %i.acz, %.lr.ph40.split.i ], [ %.pre, %.lr.ph40.split.us.i.preheader ], [ %11, %._crit_edge41.loopexit92.split.loop.exit.i ], [ %.pre, %.lr.ph.preheader ], [ %.038.us.i295602, %.lr.ph40.split.us.i..loopexit256.thread.loopexit_crit_edge ], [ %.038.us.i295602, %.lr.ph.a ] ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 %.0.in.lcssa.i.ph, ptr %i.adj, align 4, !tbaa !126
  %i.adk = sext i32 %.ph460 to i64
  %i.adl = getelementptr i8, ptr @atrac3p_qu_to_subband, i64 %i.adk
  %i.adm = getelementptr i8, ptr %i.adl, i64 -1
  %i.adn = load i8, ptr %i.adm, align 1, !tbaa !14
  %i.ado = zext i8 %i.adn to i32
  %i.adp = add nuw nsw i32 %i.ado, 1
  %i.adq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %i.adp, ptr %i.adq, align 8, !tbaa !127
  br label %bb.bj

.lr.ph50.i..loopexit256.thread467.loopexit_crit_edge: ; preds = %.lr.ph50.i
  br label %.loopexit256.thread467, !llvm.loop !55

.loopexit256.thread467:                           ; preds = %.lr.ph50.i.preheader, %.lr.ph50.i..loopexit256.thread467.loopexit_crit_edge, %..loopexit256_crit_edge298
  %.ph465 = phi ptr [ %i.acq, %..loopexit256_crit_edge298 ], [ %i.ada, %.lr.ph50.i..loopexit256.thread467.loopexit_crit_edge ], [ %i.ada, %.lr.ph50.i.preheader ]
  %.ph466 = phi i32 [ %.pre, %..loopexit256_crit_edge298 ], [ %i.acz, %.lr.ph50.i..loopexit256.thread467.loopexit_crit_edge ], [ %i.acz, %.lr.ph50.i.preheader ]
  %i.adr = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.adr, align 4, !tbaa !126
  %i.ads = sext i32 %.ph466 to i64
  %i.adt = getelementptr i8, ptr @atrac3p_qu_to_subband, i64 %i.ads
  %i.adu = getelementptr i8, ptr %i.adt, i64 -1
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !14
  %i.adw = zext i8 %i.adv to i32
  %i.adx = add nuw nsw i32 %i.adw, 1
  %i.ady = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %i.adx, ptr %i.ady, align 8, !tbaa !127
  br label %.thread214

.loopexit256:                                     ; preds = %._crit_edge.i
  %i.adz = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 %.pre, ptr %i.adz, align 4, !tbaa !126
  %i.aea = sext i32 %.pre to i64
  %i.aeb = getelementptr i8, ptr @atrac3p_qu_to_subband, i64 %i.aea
  %i.aec = getelementptr i8, ptr %i.aeb, i64 -1
  %i.aed = load i8, ptr %i.aec, align 1, !tbaa !14
  %i.aee = zext i8 %i.aed to i32
  %i.aef = add nuw nsw i32 %i.aee, 1
  %i.aeg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 %i.aef, ptr %i.aeg, align 8, !tbaa !127
  %.not = icmp eq i32 %.pre, 0
  br i1 %.not, label %.thread214, label %bb.bj

.thread214:                                       ; preds = %.loopexit256.thread467, %.loopexit256
  %i.aeh = phi ptr [ %i.ady, %.loopexit256.thread467 ], [ %i.aeg, %.loopexit256 ]
  %i.aei = phi ptr [ %.ph465, %.loopexit256.thread467 ], [ %i.acq, %.loopexit256 ]
  %i.aej = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 0, ptr %i.aej, align 16, !tbaa !128
  br label %decode_code_table_indexes.exit

bb.bj:                                            ; preds = %.loopexit256.thread, %.loopexit256
  %i.aek = phi ptr [ %i.adq, %.loopexit256.thread ], [ %i.aeg, %.loopexit256 ] ; 2 uses
  %i.ael = phi ptr [ %i.adj, %.loopexit256.thread ], [ %i.adz, %.loopexit256 ]
  %.0.in.lcssa.i463 = phi i32 [ %.0.in.lcssa.i.ph, %.loopexit256.thread ], [ %.pre, %.loopexit256 ] ; 12 uses
  %i.aem = phi ptr [ %.ph, %.loopexit256.thread ], [ %i.acq, %.loopexit256 ] ; 7 uses
  %i.aen = sext i32 %.0.in.lcssa.i463 to i64
  %i.aeo = getelementptr i8, ptr @atrac3p_qu_to_subband, i64 %i.aen
  %i.aep = getelementptr i8, ptr %i.aeo, i64 -1
  %i.aeq = load i8, ptr %i.aep, align 1, !tbaa !14
  %i.aer = zext i8 %i.aeq to i32
  %i.aes = add nuw nsw i32 %i.aer, 1
  %i.aet = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i32 %i.aes, ptr %i.aet, align 16, !tbaa !128
  br i1 %i.ah, label %.lr.ph.i70, label %.loopexit255.thread

.lr.ph.i70:                                       ; preds = %bb.bj
  %i.aeu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aev = getelementptr inbounds nuw i8, ptr %1, i64 220 ; 10 uses
  %wide.trip.count.i71 = zext nneg i32 %2 to i64
  br label %bb.bk

bb.bk:                                            ; preds = %.loopexit.i, %.lr.ph.i70
  %i.aew = phi i32 [ %.0.in.lcssa.i463, %.lr.ph.i70 ], [ %i.bfz, %.loopexit.i ] ; 40 uses
  %i.aex = phi i32 [ %.0.in.lcssa.i463, %.lr.ph.i70 ], [ %i.bga, %.loopexit.i ] ; 40 uses
  %i.aey = phi i32 [ %.0.in.lcssa.i463, %.lr.ph.i70 ], [ %i.bgb, %.loopexit.i ] ; 16 uses
  %i.aez = phi i32 [ %.0.in.lcssa.i463, %.lr.ph.i70 ], [ %i.bgc, %.loopexit.i ] ; 29 uses
  %i.afa = phi i32 [ %.0.in.lcssa.i463, %.lr.ph.i70 ], [ %i.bgd, %.loopexit.i ] ; 26 uses
  %i.afb = phi i32 [ %.0.in.lcssa.i463, %.lr.ph.i70 ], [ %i.bge, %.loopexit.i ] ; 25 uses
  %i.afc = phi i32 [ %.0.in.lcssa.i463, %.lr.ph.i70 ], [ %i.bgf, %.loopexit.i ] ; 17 uses
  %i.afd = phi i32 [ %.0.in.lcssa.i463, %.lr.ph.i70 ], [ %i.bgg, %.loopexit.i ] ; 17 uses
  %i.afe = phi i32 [ %.0.in.lcssa.i463, %.lr.ph.i70 ], [ %i.bgh, %.loopexit.i ] ; 6 uses
  %i.aff = phi i32 [ %.0.in.lcssa.i463, %.lr.ph.i70 ], [ %i.bgi, %.loopexit.i ] ; 7 uses
  %indvars.iv.i72 = phi i64 [ 0, %.lr.ph.i70 ], [ %indvars.iv.next.i74, %.loopexit.i ] ; 6 uses
  %i.afg = getelementptr inbounds nuw [7800 x i8], ptr %1, i64 %indvars.iv.i72
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 220
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.afh, i8 0, i64 128, i1 false)
  %i.afi = getelementptr inbounds nuw [7800 x i8], ptr %i.aeu, i64 %indvars.iv.i72 ; 17 uses
  %i.afj = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.afk = load i32, ptr %i.e, align 8, !tbaa !20 ; 16 uses
  %i.afl = load ptr, ptr %0, align 8, !tbaa !21   ; 29 uses
  %i.afm = lshr i32 %i.afj, 3
  %i.afn = zext nneg i32 %i.afm to i64
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afl, i64 %i.afn
  %i.afp = load i32, ptr %i.afo, align 1, !tbaa !14
  %i.afq = tail call i32 @llvm.bswap.i32(i32 %i.afp)
  %i.afr = and i32 %i.afj, 7
  %i.afs = shl i32 %i.afq, %i.afr
  %i.aft = lshr i32 %i.afs, 30
  %i.afu = add i32 %i.afj, 2
  %i.afv = tail call i32 @llvm.umin.i32(i32 %i.afk, i32 %i.afu) ; 10 uses
  store i32 %i.afv, ptr %i.c, align 8, !tbaa !19
  switch i32 %i.aft, label %default.unreachable [
    i32 0, label %.preheader.i.i94
    i32 1, label %bb.bm
    i32 2, label %bb.bz
    i32 3, label %bb.ce
  ]

.preheader.i.i94:                                 ; preds = %bb.bk
  %i.afw = icmp sgt i32 %i.aew, 0
  br i1 %i.afw, label %.lr.ph244.i.i95, label %.loopexit.i

.lr.ph244.i.i95:                                  ; preds = %.preheader.i.i94
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afi, i64 148
  %i.afy = zext nneg i32 %i.aew to i64
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.lr.ph244.i.i95
  %indvars.iv285.i.i = phi i64 [ 0, %.lr.ph244.i.i95 ], [ %indvars.iv.next286.i.i, %bb.bl ] ; 2 uses
  %i.afz = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.aga = load i32, ptr %i.e, align 8, !tbaa !20
  %i.agb = lshr i32 %i.afz, 3
  %i.agc = zext nneg i32 %i.agb to i64
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afl, i64 %i.agc
  %i.age = load i32, ptr %i.agd, align 1, !tbaa !14
  %i.agf = tail call i32 @llvm.bswap.i32(i32 %i.age)
  %i.agg = and i32 %i.afz, 7
  %i.agh = shl i32 %i.agf, %i.agg
  %i.agi = lshr i32 %i.agh, 26
  %i.agj = add i32 %i.afz, 6
  %i.agk = tail call i32 @llvm.umin.i32(i32 %i.aga, i32 %i.agj)
  store i32 %i.agk, ptr %i.c, align 8, !tbaa !19
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %indvars.iv285.i.i
  store i32 %i.agi, ptr %i.agl, align 4, !tbaa !9
  %indvars.iv.next286.i.i = add nuw nsw i64 %indvars.iv285.i.i, 1 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next286.i.i, %i.afy
  br i1 %exitcond43.not.i, label %.loopexit.i, label %bb.bl, !llvm.loop !56

bb.bm:                                            ; preds = %bb.bk
  %.not183.i.i = icmp eq i64 %indvars.iv.i72, 0
  %i.agm = lshr i32 %i.afv, 3
  %i.agn = zext nneg i32 %i.agm to i64
  %i.ago = getelementptr inbounds nuw i8, ptr %i.afl, i64 %i.agn
  %i.agp = load i32, ptr %i.ago, align 1, !tbaa !14
  %i.agq = tail call i32 @llvm.bswap.i32(i32 %i.agp)
  %i.agr = and i32 %i.afv, 7
  %i.ags = shl i32 %i.agq, %i.agr
  %i.agt = lshr i32 %i.ags, 30                    ; 4 uses
  %i.agu = add i32 %i.afv, 2
  %i.agv = tail call i32 @llvm.umin.i32(i32 %i.afk, i32 %i.agu) ; 5 uses
  store i32 %i.agv, ptr %i.c, align 8, !tbaa !19
  br i1 %.not183.i.i, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.agw = zext nneg i32 %i.agt to i64
  %i.agx = getelementptr inbounds nuw [24 x i8], ptr @sf_vlc_tabs, i64 %i.agw ; 2 uses
  %i.agy = icmp sgt i32 %i.afa, 0
  br i1 %i.agy, label %.lr.ph234.i.i, label %.loopexit.i

.lr.ph234.i.i:                                    ; preds = %bb.bn
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agx, i64 8
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !17
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.afi, i64 148
  %i.ahc = zext nneg i32 %i.afa to i64
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.lr.ph234.i.i
  %indvars.iv270.i.i = phi i64 [ 0, %.lr.ph234.i.i ], [ %indvars.iv.next271.i.i, %bb.bo ] ; 3 uses
  %i.ahd = load i32, ptr %i.agx, align 8, !tbaa !25
  %i.ahe = load i32, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.ahf = lshr i32 %i.ahe, 3
  %i.ahg = zext nneg i32 %i.ahf to i64
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.afl, i64 %i.ahg
  %i.ahi = load i32, ptr %i.ahh, align 1, !tbaa !14
  %i.ahj = tail call i32 @llvm.bswap.i32(i32 %i.ahi)
  %i.ahk = and i32 %i.ahe, 7
  %i.ahl = shl i32 %i.ahj, %i.ahk
  %i.ahm = sub nsw i32 32, %i.ahd
  %i.ahn = lshr i32 %i.ahl, %i.ahm
  %i.aho = zext i32 %i.ahn to i64
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %i.aho ; 2 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 2
  %i.ahr = load i16, ptr %i.ahq, align 2, !tbaa !14
  %i.ahs = sext i16 %i.ahr to i32
  %i.aht = load i16, ptr %i.ahp, align 2, !tbaa !14
  %i.ahu = zext i16 %i.aht to i32
  %i.ahv = load i32, ptr %i.e, align 8, !tbaa !20
  %i.ahw = add i32 %i.ahe, %i.ahs
  %i.ahx = tail call i32 @llvm.umin.i32(i32 %i.ahv, i32 %i.ahw)
  store i32 %i.ahx, ptr %i.c, align 8, !tbaa !19
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %indvars.iv270.i.i
  %i.ahz = load i32, ptr %i.ahy, align 4, !tbaa !9
  %i.aia = add i32 %i.ahz, %i.ahu
  %i.aib = and i32 %i.aia, 63
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.ahb, i64 %indvars.iv270.i.i
  store i32 %i.aib, ptr %i.aic, align 4, !tbaa !9
  %indvars.iv.next271.i.i = add nuw nsw i64 %indvars.iv270.i.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next271.i.i, %i.ahc
  br i1 %exitcond41.not.i, label %.loopexit.i, label %bb.bo, !llvm.loop !57

bb.bp:                                            ; preds = %bb.bm
  %i.aid = icmp eq i32 %i.agt, 3
  %i.aie = lshr i32 %i.agv, 3
  %i.aif = zext nneg i32 %i.aie to i64
  %i.aig = getelementptr inbounds nuw i8, ptr %i.afl, i64 %i.aif
  %i.aih = load i32, ptr %i.aig, align 1, !tbaa !14
  %i.aii = tail call i32 @llvm.bswap.i32(i32 %i.aih)
  %i.aij = and i32 %i.agv, 7
  %i.aik = shl i32 %i.aii, %i.aij                 ; 2 uses
  br i1 %i.aid, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.ail = lshr i32 %i.aik, 26                    ; 8 uses
  %i.aim = add i32 %i.agv, 6
  %i.ain = tail call i32 @llvm.umin.i32(i32 %i.afk, i32 %i.aim) ; 4 uses
  store i32 %i.ain, ptr %i.c, align 8, !tbaa !19
  %i.aio = lshr i32 %i.ain, 3
end_hunk_0
