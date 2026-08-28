Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_aiir?download=true
inline.NumInlined: 30
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 47
begin_hunk_0_@config_output:bb.a
  %i.zk = getelementptr inbounds i8, ptr %i.zh, i64 %i.zj
  store i32 -16711936, ptr %i.zk, align 1, !tbaa !119
  %i.zl = icmp eq i32 %.139.i212.i, %i.wv
  %i.zm = icmp eq i32 %.141.i214.i, %.1186.i
  %or.cond.i216.i = and i1 %i.zm, %i.zl
  br i1 %or.cond.i216.i, label %draw_line.exit218.i, label %bb.ag

draw_line.exit218.i:                              ; preds = %bb.ag, %draw_line.exit.i
  %i.zn = sub nsw i32 %.1184.i, %i.wm
  %i.zo = call i32 @llvm.abs.i32(i32 %i.zn, i1 true) ; 4 uses
  %i.zp = icmp slt i32 %i.wm, %.1184.i
  %i.zq = select i1 %i.zp, i32 1, i32 -1
  %i.zr = load ptr, ptr %i.lm, align 8, !tbaa !30
  %i.zs = load i32, ptr %i.ls, align 8, !tbaa !31
  %i.zt = mul nsw i32 %i.zs, %i.wm
  %i.zu = sext i32 %i.zt to i64
  %i.zv = getelementptr inbounds i8, ptr %i.zr, i64 %i.zu
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 %i.xh
  store i32 -16711681, ptr %i.zw, align 1, !tbaa !119
  %i.zx = icmp eq i32 %i.wm, %.1184.i
  %or.cond46.i219.i = and i1 %i.xk, %i.zx
  br i1 %or.cond46.i219.i, label %draw_line.exit230.i, label %.lr.ph.i220.i

.lr.ph.i220.i:                                    ; preds = %draw_line.exit218.i
  %i.zy = icmp samesign ugt i32 %i.wx, %i.zo
  %i.zz = sub nsw i32 0, %i.zo
  %i.aaa = select i1 %i.zy, i32 %i.wx, i32 %i.zz
  %i.aab = sdiv i32 %i.aaa, 2
  %i.aac = sub nsw i32 0, %i.wx
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.i220.i
  %.049.i221.i = phi i32 [ %i.aab, %.lr.ph.i220.i ], [ %.2.i227.i, %bb.ah ] ; 3 uses
  %.03848.i222.i = phi i32 [ %i.wu, %.lr.ph.i220.i ], [ %.139.i224.i, %bb.ah ]
  %.04047.i223.i = phi i32 [ %i.wm, %.lr.ph.i220.i ], [ %.141.i226.i, %bb.ah ]
  %i.aad = icmp sgt i32 %.049.i221.i, %i.aac      ; 2 uses
  %i.aae = sext i1 %i.aad to i32
  %.139.i224.i = add nsw i32 %.03848.i222.i, %i.aae ; 3 uses
  %i.aaf = select i1 %i.aad, i32 %i.zo, i32 0
  %.1.i225.i = sub i32 %.049.i221.i, %i.aaf
  %i.aag = icmp slt i32 %.049.i221.i, %i.zo       ; 2 uses
  %i.aah = select i1 %i.aag, i32 %i.zq, i32 0
  %.141.i226.i = add nsw i32 %i.aah, %.04047.i223.i ; 3 uses
  %i.aai = select i1 %i.aag, i32 %i.wx, i32 0
  %.2.i227.i = add nsw i32 %.1.i225.i, %i.aai
  %i.aaj = load ptr, ptr %i.lm, align 8, !tbaa !30
  %i.aak = load i32, ptr %i.ls, align 8, !tbaa !31
  %i.aal = mul nsw i32 %i.aak, %.141.i226.i
  %i.aam = sext i32 %i.aal to i64
  %i.aan = getelementptr inbounds i8, ptr %i.aaj, i64 %i.aam
  %i.aao = shl nsw i32 %.139.i224.i, 2
  %i.aap = sext i32 %i.aao to i64
  %i.aaq = getelementptr inbounds i8, ptr %i.aan, i64 %i.aap
  store i32 -16711681, ptr %i.aaq, align 1, !tbaa !119
  %i.aar = icmp eq i32 %.139.i224.i, %i.wv
  %i.aas = icmp eq i32 %.141.i226.i, %.1184.i
  %or.cond.i228.i = and i1 %i.aas, %i.aar
  br i1 %or.cond.i228.i, label %draw_line.exit230.i, label %bb.ah

draw_line.exit230.i:                              ; preds = %bb.ah, %draw_line.exit218.i
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %i.aat = load i32, ptr %i.lw, align 4, !tbaa !100 ; 2 uses
  %i.aau = sext i32 %i.aat to i64
  %i.aav = icmp slt i64 %indvars.iv.next80.i, %i.aau
  br i1 %i.aav, label %bb.ae, label %._crit_edge46.i, !llvm.loop !120

._crit_edge46.i:                                  ; preds = %draw_line.exit230.i
  %i.aaw = icmp sgt i32 %i.aat, 400
  br i1 %i.aaw, label %bb.ai, label %draw_response.exit

bb.ai:                                            ; preds = %._crit_edge46.i
  %i.aax = load i32, ptr %i.lq, align 8, !tbaa !101
  %i.aay = icmp sgt i32 %i.aax, 100
  br i1 %i.aay, label %bb.aj, label %draw_response.exit

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 2, i32 noundef 2, ptr noundef nonnull @.str.91)
  %i.aaz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.92, double noundef %i.sk) #14 ; 0 uses
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 122, i32 noundef 2, ptr noundef nonnull %i.a)
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 2, i32 noundef 12, ptr noundef nonnull @.str.93)
  %i.aba = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.92, double noundef %i.sj) #14 ; 0 uses
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 122, i32 noundef 12, ptr noundef nonnull %i.a)
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 2, i32 noundef 22, ptr noundef nonnull @.str.94)
  %i.abb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.92, double noundef %.0189.lcssa113121.i) #14 ; 0 uses
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 122, i32 noundef 22, ptr noundef nonnull %i.a)
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 2, i32 noundef 32, ptr noundef nonnull @.str.95)
  %i.abc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.92, double noundef %.0190.lcssa112123.i) #14 ; 0 uses
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 122, i32 noundef 32, ptr noundef nonnull %i.a)
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 2, i32 noundef 42, ptr noundef nonnull @.str.96)
  %i.abd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.92, double noundef %.0191.lcssa131.i) #14 ; 0 uses
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 90, i32 noundef 42, ptr noundef nonnull %i.a)
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 2, i32 noundef 52, ptr noundef nonnull @.str.97)
  %i.abe = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.92, double noundef %.0192.lcssa129.i) #14 ; 0 uses
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 90, i32 noundef 52, ptr noundef nonnull %i.a)
  br label %draw_response.exit

draw_response.exit:                               ; preds = %bb.aa, %._crit_edge37.thread132.i, %._crit_edge46.i, %bb.ai, %bb.aj
  call void @av_free(ptr noundef %i.mi) #14
  call void @av_free(ptr noundef %i.mc) #14
  call void @av_free(ptr noundef %i.lz) #14
  call void @av_free(ptr noundef %i.mf) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ak

bb.ak:                                            ; preds = %draw_response.exit, %check_stability.exit
  %i.abf = load i32, ptr %i.ap, align 4, !tbaa !74 ; 2 uses
  %i.abg = icmp eq i32 %i.abf, 0
  br i1 %i.abg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.d, i32 noundef 24, ptr noundef nonnull @.str.75) #14
  %.pr291 = load i32, ptr %i.ap, align 4, !tbaa !74
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.abh = phi i32 [ %.pr291, %bb.al ], [ %i.abf, %bb.ak ] ; 2 uses
  %i.abi = icmp sgt i32 %i.abh, 0
  br i1 %i.abi, label %bb.an, label %bb.ax

bb.an:                                            ; preds = %bb.am
  %i.abj = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.abk = load i32, ptr %i.abj, align 8, !tbaa !52
  switch i32 %i.abk, label %convert_zp2tf.exit.thread [
    i32 0, label %bb.ao
    i32 1, label %bb.bd
    i32 2, label %bb.be
  ]

bb.ao:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.d, i32 noundef 24, ptr noundef nonnull @.str.76) #14
  %i.abl = load i32, ptr %i.j, align 4, !tbaa !63 ; 2 uses
  %i.abm = icmp sgt i32 %i.abl, 0
  br i1 %i.abm, label %.lr.ph106.i, label %convert_zp2tf.exit.thread

.lr.ph106.i:                                      ; preds = %bb.ao
  %i.abn = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 104
  %wide.trip.count133.i = zext nneg i32 %i.abl to i64
  br label %bb.ap

.critedge361:                                     ; preds = %scalar.ph621, %middle.block630, %.preheader1.i.i, %._crit_edge103.i, %._crit_edge.i87.i
  call void @av_free(ptr noundef nonnull %i.abw) #14
  call void @av_free(ptr noundef nonnull %i.acb) #14
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %exitcond134.not.i = icmp eq i64 %indvars.iv.next131.i, %wide.trip.count133.i
  br i1 %exitcond134.not.i, label %convert_zp2tf.exit.thread, label %bb.ap, !llvm.loop !121

bb.ap:                                            ; preds = %.critedge361, %.lr.ph106.i
  %indvars.iv130.i = phi i64 [ 0, %.lr.ph106.i ], [ %indvars.iv.next131.i, %.critedge361 ] ; 3 uses
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !34
  %i.abq = getelementptr inbounds nuw [72 x i8], ptr %i.abp, i64 %indvars.iv130.i ; 6 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 4 ; 3 uses
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !31
  %i.abt = shl i32 %i.abs, 1
  %i.abu = add i32 %i.abt, 2
  %i.abv = sext i32 %i.abu to i64
  %i.abw = call noalias ptr @av_calloc(i64 noundef %i.abv, i64 noundef 8) #14 ; 22 uses
  %i.abx = load i32, ptr %i.abq, align 8, !tbaa !31
  %i.aby = shl i32 %i.abx, 1
  %i.abz = add i32 %i.aby, 2
  %i.aca = sext i32 %i.abz to i64
  %i.acb = call noalias ptr @av_calloc(i64 noundef %i.aca, i64 noundef 8) #14 ; 22 uses
  %i.acc = icmp ne ptr %i.abw, null
  %i.acd = icmp ne ptr %i.acb, null
  %or.cond.i255 = select i1 %i.acc, i1 %i.acd, i1 false
  br i1 %or.cond.i255, label %bb.aq, label %normalize_coeffs.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !75 ; 12 uses
  %i.acg = load i32, ptr %i.abq, align 8, !tbaa !31 ; 18 uses
  %i.ach = shl nsw i32 %i.acg, 1
  %i.aci = sext i32 %i.ach to i64
  %i.acj = getelementptr inbounds [8 x i8], ptr %i.acb, i64 %i.aci
  store double 1.000000e+00, ptr %i.acj, align 8, !tbaa !77
  %.not43.i.i = icmp slt i32 %i.acg, 1
  br i1 %.not43.i.i, label %.preheader.i.i262, label %.lr.ph46.preheader.i.i

.lr.ph46.preheader.i.i:                           ; preds = %bb.aq
  %i.ack = add nuw i32 %i.acg, 1
  %wide.trip.count.i.i256 = zext i32 %i.ack to i64
  %scevgep716 = getelementptr i8, ptr %i.acb, i64 32
  %scevgep719.a = getelementptr i8, ptr %i.acf, i64 16
  %scevgep721 = getelementptr i8, ptr %i.acf, i64 8
  br label %.lr.ph.i.i257

.preheader.i.i262:                                ; preds = %._crit_edge.i.i260, %bb.aq
  %.not3847.i.i = icmp slt i32 %i.acg, 0
  br i1 %.not3847.i.i, label %.loopexit89.i, label %.lr.ph49.preheader.i.i

.lr.ph49.preheader.i.i:                           ; preds = %.preheader.i.i262
  %i.acl = add nuw i32 %i.acg, 1
  %wide.trip.count61.i.i = zext i32 %i.acl to i64
  br label %.lr.ph49.i.i263

.lr.ph.i.i257:                                    ; preds = %._crit_edge.i.i260, %.lr.ph46.preheader.i.i
  %indvar722 = phi i35 [ %indvar.next723, %._crit_edge.i.i260 ], [ 0, %.lr.ph46.preheader.i.i ] ; 3 uses
  %indvar713 = phi i32 [ %indvar.next714, %._crit_edge.i.i260 ], [ 0, %.lr.ph46.preheader.i.i ] ; 4 uses
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i, %._crit_edge.i.i260 ], [ 1, %.lr.ph46.preheader.i.i ] ; 3 uses
  %indvars.iv.in.i.i = phi i32 [ %indvars.iv.i.i258, %._crit_edge.i.i260 ], [ %i.acg, %.lr.ph46.preheader.i.i ] ; 3 uses
  %i.acm = trunc i35 %indvar722 to i32
  %i.acn = sub i32 %i.acm, %i.acg
  %indvars.iv.i.i258 = add i32 %indvars.iv.in.i.i, -1 ; 2 uses
  %i.aco = zext i32 %indvars.iv.i.i258 to i64     ; 4 uses
  %i.acp = shl nuw i64 %indvars.iv55.i.i, 33
  %sext.i.i = add i64 %i.acp, -8589934592
  %i.acq = ashr exact i64 %sext.i.i, 29
  %i.acr = getelementptr inbounds i8, ptr %i.acf, i64 %i.acq ; 3 uses
  %indvars.iv55.tr.i.i = trunc i64 %indvars.iv55.i.i to i32
  %i.acs = shl i32 %indvars.iv55.tr.i.i, 1
  %i.act = add i32 %i.acs, -1
  %i.acu = sext i32 %i.act to i64
  %i.acv = getelementptr inbounds [8 x i8], ptr %i.acf, i64 %i.acu ; 3 uses
  %1 = call i32 @llvm.smax.i32(i32 %i.acg, i32 %indvars.iv.in.i.i)
  %2 = add i32 %1, %i.acn                         ; 2 uses
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %min.iters.check734 = icmp eq i32 %2, 0
  br i1 %min.iters.check734, label %scalar.ph733.preheader, label %vector.memcheck712

vector.memcheck712:                               ; preds = %.lr.ph.i.i257
  %i.acw = shl nuw i35 %indvar722, 4
  %i.acx = sext i35 %i.acw to i64
  %scevgep724 = getelementptr i8, ptr %scevgep721, i64 %i.acx
  %i.acy = shl nuw i32 %indvar713, 1
  %i.acz = sext i32 %i.acy to i64
  %i.ada = shl nsw i64 %i.acz, 3
  %scevgep720 = getelementptr i8, ptr %scevgep719.a, i64 %i.ada
  %i.adb = xor i32 %indvar713, -1
  %i.adc = add i32 %i.acg, %i.adb
  %i.add = zext i32 %i.adc to i64                 ; 2 uses
  %smax717 = call i32 @llvm.smax.i32(i32 %i.acg, i32 %indvars.iv.in.i.i)
  %i.ade = sub i32 %indvar713, %i.acg
  %i.adf = add i32 %smax717, %i.ade
  %i.adg = zext i32 %i.adf to i64
  %i.adh = add nuw nsw i64 %i.add, %i.adg
  %i.adi = shl nuw nsw i64 %i.adh, 4
  %scevgep718 = getelementptr i8, ptr %scevgep716, i64 %i.adi ; 2 uses
  %i.adj = shl nuw nsw i64 %i.add, 4
  %scevgep715 = getelementptr nuw i8, ptr %i.acb, i64 %i.adj ; 2 uses
  %bound0725 = icmp ult ptr %scevgep715, %scevgep720
  %bound1726 = icmp ult ptr %i.acv, %scevgep718
  %found.conflict727 = and i1 %bound0725, %bound1726
  %bound0728 = icmp ult ptr %scevgep715, %scevgep724
  %bound1729 = icmp ult ptr %i.acr, %scevgep718
  %found.conflict730 = and i1 %bound0728, %bound1729
  %conflict.rdx731 = or i1 %found.conflict727, %found.conflict730
  br i1 %conflict.rdx731, label %scalar.ph733.preheader, label %vector.ph735

vector.ph735:                                     ; preds = %vector.memcheck712
  %n.vec736 = and i64 %4, 8589934590              ; 3 uses
  %i.adk = add nuw nsw i64 %n.vec736, %i.aco
  %i.adl = load double, ptr %i.acr, align 8, !tbaa !77, !alias.scope !122
  %broadcast.splatinsert744 = insertelement <2 x double> poison, double %i.adl, i64 0
  %broadcast.splat745 = shufflevector <2 x double> %broadcast.splatinsert744, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.adm = load double, ptr %i.acv, align 8, !tbaa !77, !alias.scope !125
  %broadcast.splatinsert737 = insertelement <2 x double> poison, double %i.adm, i64 0
  %broadcast.splat738 = shufflevector <2 x double> %broadcast.splatinsert737, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.adn = fneg nsz <2 x double> %broadcast.splat738
  br label %vector.body739

vector.body739:                                   ; preds = %vector.body739, %vector.ph735
  %index740 = phi i64 [ 0, %vector.ph735 ], [ %index.next750, %vector.body739 ] ; 2 uses
  %i.ado = add nuw i64 %index740, %i.aco          ; 2 uses
  %i.adp = shl i64 %i.ado, 4
  %i.adq = getelementptr i8, ptr %i.acb, i64 %i.adp
  %i.adr = getelementptr i8, ptr %i.adq, i64 16
  %wide.vec741 = load <4 x double>, ptr %i.adr, align 8, !tbaa !77, !alias.scope !127, !noalias !129 ; 2 uses
  %strided.vec742 = shufflevector <4 x double> %wide.vec741, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec743 = shufflevector <4 x double> %wide.vec741, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ads = fmul nsz <2 x double> %strided.vec743, %i.adn
  %i.adt = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec742, <2 x double> %broadcast.splat745, <2 x double> %i.ads)
  %i.adu = fmul nsz <2 x double> %strided.vec743, %broadcast.splat745
  %i.adv = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec742, <2 x double> %broadcast.splat738, <2 x double> %i.adu)
  %i.adw = shl nuw nsw i64 %i.ado, 4
  %i.adx = getelementptr inbounds nuw i8, ptr %i.acb, i64 %i.adw ; 2 uses
  %wide.vec746 = load <4 x double>, ptr %i.adx, align 8, !tbaa !77, !alias.scope !127, !noalias !129 ; 2 uses
  %strided.vec747 = shufflevector <4 x double> %wide.vec746, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec748 = shufflevector <4 x double> %wide.vec746, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ady = fsub nsz <2 x double> %strided.vec747, %i.adt
  %i.adz = fsub nsz <2 x double> %strided.vec748, %i.adv
  %interleaved.vec749 = shufflevector <2 x double> %i.ady, <2 x double> %i.adz, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec749, ptr %i.adx, align 8, !tbaa !77, !alias.scope !127, !noalias !129
  %index.next750 = add nuw i64 %index740, 2       ; 2 uses
  %i.aea = icmp eq i64 %index.next750, %n.vec736
  br i1 %i.aea, label %middle.block751, label %vector.body739, !llvm.loop !130

middle.block751:                                  ; preds = %vector.body739
  %cmp.n752 = icmp eq i64 %4, %n.vec736
  br i1 %cmp.n752, label %._crit_edge.i.i260, label %scalar.ph733.preheader

scalar.ph733.preheader:                           ; preds = %vector.memcheck712, %.lr.ph.i.i257, %middle.block751
  %indvars.iv52.i.i.ph = phi i64 [ %i.aco, %vector.memcheck712 ], [ %i.aco, %.lr.ph.i.i257 ], [ %i.adk, %middle.block751 ]
  br label %scalar.ph733

._crit_edge.i.i260:                               ; preds = %scalar.ph733, %middle.block751
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 2 uses
  %exitcond.not.i.i261 = icmp eq i64 %indvars.iv.next56.i.i, %wide.trip.count.i.i256
  %indvar.next714 = add i32 %indvar713, 1
  %indvar.next723 = add i35 %indvar722, 1
  br i1 %exitcond.not.i.i261, label %.preheader.i.i262, label %.lr.ph.i.i257, !llvm.loop !131

scalar.ph733:                                     ; preds = %scalar.ph733.preheader, %scalar.ph733
  %indvars.iv52.i.i = phi i64 [ %indvars.iv.next53.i.i, %scalar.ph733 ], [ %indvars.iv52.i.i.ph, %scalar.ph733.preheader ] ; 2 uses
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 3 uses
  %.idx.i.i259 = shl nuw nsw i64 %indvars.iv.next53.i.i, 4
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.acb, i64 %.idx.i.i259 ; 2 uses
  %i.aec = load double, ptr %i.aeb, align 8, !tbaa !77
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aee = load double, ptr %i.aed, align 8, !tbaa !77
  %i.aef = load double, ptr %i.acr, align 8, !tbaa !77 ; 2 uses
  %i.aeg = load double, ptr %i.acv, align 8, !tbaa !77 ; 2 uses
  %i.aeh = fneg nsz double %i.aeg
  %.idx63.i.i = shl nuw nsw i64 %indvars.iv52.i.i, 4
  %i.aei = getelementptr inbounds nuw i8, ptr %i.acb, i64 %.idx63.i.i ; 2 uses
  %i.aej = insertelement <2 x double> poison, double %i.aee, i64 0
  %i.aek = shufflevector <2 x double> %i.aej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ael = insertelement <2 x double> poison, double %i.aeh, i64 0
  %i.aem = insertelement <2 x double> %i.ael, double %i.aef, i64 1
  %i.aen = fmul nsz <2 x double> %i.aek, %i.aem
  %i.aeo = insertelement <2 x double> poison, double %i.aec, i64 0
  %i.aep = shufflevector <2 x double> %i.aeo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aeq = insertelement <2 x double> poison, double %i.aef, i64 0
  %i.aer = insertelement <2 x double> %i.aeq, double %i.aeg, i64 1
  %i.aes = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aep, <2 x double> %i.aer, <2 x double> %i.aen)
  %i.aet = load <2 x double>, ptr %i.aei, align 8, !tbaa !77
  %i.aeu = fsub nsz <2 x double> %i.aet, %i.aes
  store <2 x double> %i.aeu, ptr %i.aei, align 8, !tbaa !77
  %i.aev = trunc nuw i64 %indvars.iv.next53.i.i to i32
  %i.aew = icmp sgt i32 %i.acg, %i.aev
  br i1 %i.aew, label %scalar.ph733, label %._crit_edge.i.i260, !llvm.loop !132

.lr.ph49.i.i263:                                  ; preds = %bb.ar, %.lr.ph49.preheader.i.i
  %indvars.iv58.i.i = phi i64 [ 0, %.lr.ph49.preheader.i.i ], [ %indvars.iv.next59.i.i, %bb.ar ] ; 3 uses
  %.idx64.i.i = shl nuw nsw i64 %indvars.iv58.i.i, 4
  %i.aex = getelementptr inbounds nuw i8, ptr %i.acb, i64 %.idx64.i.i
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 8
  %i.aez = load double, ptr %i.aey, align 8, !tbaa !77 ; 2 uses
  %i.afa = call nsz double @llvm.fabs.f64(double %i.aez)
  %i.afb = fcmp nsz ogt double %i.afa, f0x3E80000000000000
  br i1 %i.afb, label %normalize_coeffs.exit.sink.split.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph49.i.i263
  %indvars.iv.next59.i.i = add nuw nsw i64 %indvars.iv58.i.i, 1 ; 2 uses
  %exitcond62.not.i.i = icmp eq i64 %indvars.iv.next59.i.i, %wide.trip.count61.i.i
  br i1 %exitcond62.not.i.i, label %.loopexit89.i, label %.lr.ph49.i.i263, !llvm.loop !133

.loopexit89.i:                                    ; preds = %bb.ar, %.preheader.i.i262
  %i.afc = getelementptr inbounds nuw i8, ptr %i.abq, i64 16
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !75 ; 12 uses
  %i.afe = load i32, ptr %i.abr, align 4, !tbaa !31 ; 13 uses
  %i.aff = shl nsw i32 %i.afe, 1
  %i.afg = sext i32 %i.aff to i64
  %i.afh = getelementptr inbounds [8 x i8], ptr %i.abw, i64 %i.afg
  store double 1.000000e+00, ptr %i.afh, align 8, !tbaa !77
  %.not43.i57.i = icmp slt i32 %i.afe, 1
  br i1 %.not43.i57.i, label %.preheader.i73.i, label %.lr.ph46.preheader.i58.i

.lr.ph46.preheader.i58.i:                         ; preds = %.loopexit89.i
  %i.afi = add nuw i32 %i.afe, 1
  %wide.trip.count.i59.i = zext i32 %i.afi to i64
  %scevgep675 = getelementptr i8, ptr %i.abw, i64 32
  %scevgep678 = getelementptr i8, ptr %i.afd, i64 16
  %scevgep680 = getelementptr i8, ptr %i.afd, i64 8
  br label %.lr.ph.i60.i

.preheader.i73.i:                                 ; preds = %._crit_edge.i70.i, %.loopexit89.i
  %.not3847.i74.i = icmp slt i32 %i.afe, 0
  %.pre.i = add i32 %i.afe, 1                     ; 3 uses
  br i1 %.not3847.i74.i, label %._crit_edge.i271, label %.lr.ph49.preheader.i75.i

.lr.ph49.preheader.i75.i:                         ; preds = %.preheader.i73.i
  %wide.trip.count61.i76.i = zext i32 %.pre.i to i64 ; 8 uses
  br label %.lr.ph49.i77.i

.lr.ph.i60.i:                                     ; preds = %._crit_edge.i70.i, %.lr.ph46.preheader.i58.i
  %indvar681 = phi i35 [ %indvar.next682, %._crit_edge.i70.i ], [ 0, %.lr.ph46.preheader.i58.i ] ; 3 uses
  %indvar = phi i32 [ %indvar.next, %._crit_edge.i70.i ], [ 0, %.lr.ph46.preheader.i58.i ] ; 4 uses
  %indvars.iv55.i61.i = phi i64 [ %indvars.iv.next56.i71.i, %._crit_edge.i70.i ], [ 1, %.lr.ph46.preheader.i58.i ] ; 3 uses
  %indvars.iv.in.i62.i = phi i32 [ %indvars.iv.i63.i, %._crit_edge.i70.i ], [ %i.afe, %.lr.ph46.preheader.i58.i ] ; 3 uses
  %i.afj = trunc i35 %indvar681 to i32
  %i.afk = sub i32 %i.afj, %i.afe
  %indvars.iv.i63.i = add i32 %indvars.iv.in.i62.i, -1 ; 2 uses
  %i.afl = zext i32 %indvars.iv.i63.i to i64      ; 4 uses
  %i.afm = shl nuw i64 %indvars.iv55.i61.i, 33
  %sext.i64.i = add i64 %i.afm, -8589934592
  %i.afn = ashr exact i64 %sext.i64.i, 29
  %i.afo = getelementptr inbounds i8, ptr %i.afd, i64 %i.afn ; 3 uses
  %indvars.iv55.tr.i65.i = trunc i64 %indvars.iv55.i61.i to i32
  %i.afp = shl i32 %indvars.iv55.tr.i65.i, 1
  %i.afq = add i32 %i.afp, -1
  %i.afr = sext i32 %i.afq to i64
  %i.afs = getelementptr inbounds [8 x i8], ptr %i.afd, i64 %i.afr ; 3 uses
  %5 = call i32 @llvm.smax.i32(i32 %i.afe, i32 %indvars.iv.in.i62.i)
  %6 = add i32 %5, %i.afk                         ; 2 uses
  %7 = zext i32 %6 to i64
  %8 = add nuw nsw i64 %7, 1                      ; 2 uses
  %min.iters.check692 = icmp eq i32 %6, 0
  br i1 %min.iters.check692, label %scalar.ph691.preheader, label %vector.memcheck673

vector.memcheck673:                               ; preds = %.lr.ph.i60.i
  %i.aft = shl nuw i35 %indvar681, 4
  %i.afu = sext i35 %i.aft to i64
  %scevgep683 = getelementptr i8, ptr %scevgep680, i64 %i.afu
  %i.afv = shl nuw i32 %indvar, 1
  %i.afw = sext i32 %i.afv to i64
  %i.afx = shl nsw i64 %i.afw, 3
  %scevgep679 = getelementptr i8, ptr %scevgep678, i64 %i.afx
  %i.afy = xor i32 %indvar, -1
  %i.afz = add i32 %i.afe, %i.afy
  %i.aga = zext i32 %i.afz to i64                 ; 2 uses
  %smax676 = call i32 @llvm.smax.i32(i32 %i.afe, i32 %indvars.iv.in.i62.i)
  %i.agb = sub i32 %indvar, %i.afe
  %i.agc = add i32 %smax676, %i.agb
  %i.agd = zext i32 %i.agc to i64
  %i.age = add nuw nsw i64 %i.aga, %i.agd
  %i.agf = shl nuw nsw i64 %i.age, 4
  %scevgep677 = getelementptr i8, ptr %scevgep675, i64 %i.agf ; 2 uses
  %i.agg = shl nuw nsw i64 %i.aga, 4
  %scevgep674 = getelementptr nuw i8, ptr %i.abw, i64 %i.agg ; 2 uses
  %bound0684 = icmp ult ptr %scevgep674, %scevgep679
  %bound1685 = icmp ult ptr %i.afs, %scevgep677
  %found.conflict686 = and i1 %bound0684, %bound1685
  %bound0687 = icmp ult ptr %scevgep674, %scevgep683
  %bound1688 = icmp ult ptr %i.afo, %scevgep677
  %found.conflict689 = and i1 %bound0687, %bound1688
  %conflict.rdx = or i1 %found.conflict686, %found.conflict689
  br i1 %conflict.rdx, label %scalar.ph691.preheader, label %vector.ph693

vector.ph693:                                     ; preds = %vector.memcheck673
  %n.vec694 = and i64 %8, 8589934590              ; 3 uses
  %i.agh = add nuw nsw i64 %n.vec694, %i.afl
  %i.agi = load double, ptr %i.afo, align 8, !tbaa !77, !alias.scope !134
  %broadcast.splatinsert702 = insertelement <2 x double> poison, double %i.agi, i64 0
  %broadcast.splat703 = shufflevector <2 x double> %broadcast.splatinsert702, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.agj = load double, ptr %i.afs, align 8, !tbaa !77, !alias.scope !137
  %broadcast.splatinsert695 = insertelement <2 x double> poison, double %i.agj, i64 0
  %broadcast.splat696 = shufflevector <2 x double> %broadcast.splatinsert695, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.agk = fneg nsz <2 x double> %broadcast.splat696
  br label %vector.body697

vector.body697:                                   ; preds = %vector.body697, %vector.ph693
  %index698 = phi i64 [ 0, %vector.ph693 ], [ %index.next708, %vector.body697 ] ; 2 uses
  %i.agl = add nuw i64 %index698, %i.afl          ; 2 uses
  %i.agm = shl i64 %i.agl, 4
  %i.agn = getelementptr i8, ptr %i.abw, i64 %i.agm
  %i.ago = getelementptr i8, ptr %i.agn, i64 16
  %wide.vec699 = load <4 x double>, ptr %i.ago, align 8, !tbaa !77, !alias.scope !139, !noalias !141 ; 2 uses
  %strided.vec700.a = shufflevector <4 x double> %wide.vec699, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec701 = shufflevector <4 x double> %wide.vec699, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.agp = fmul nsz <2 x double> %strided.vec701, %i.agk
  %i.agq = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec700.a, <2 x double> %broadcast.splat703, <2 x double> %i.agp)
  %i.agr = fmul nsz <2 x double> %strided.vec701, %broadcast.splat703
  %i.ags = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec700.a, <2 x double> %broadcast.splat696, <2 x double> %i.agr)
  %i.agt = shl nuw nsw i64 %i.agl, 4
  %i.agu = getelementptr inbounds nuw i8, ptr %i.abw, i64 %i.agt ; 2 uses
  %wide.vec704 = load <4 x double>, ptr %i.agu, align 8, !tbaa !77, !alias.scope !139, !noalias !141 ; 2 uses
  %strided.vec705.a = shufflevector <4 x double> %wide.vec704, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec706 = shufflevector <4 x double> %wide.vec704, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.agv = fsub nsz <2 x double> %strided.vec705.a, %i.agq
  %i.agw = fsub nsz <2 x double> %strided.vec706, %i.ags
  %interleaved.vec707 = shufflevector <2 x double> %i.agv, <2 x double> %i.agw, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec707, ptr %i.agu, align 8, !tbaa !77, !alias.scope !139, !noalias !141
  %index.next708 = add nuw i64 %index698, 2       ; 2 uses
  %i.agx = icmp eq i64 %index.next708, %n.vec694
  br i1 %i.agx, label %middle.block709, label %vector.body697, !llvm.loop !142

middle.block709:                                  ; preds = %vector.body697
  %cmp.n710 = icmp eq i64 %8, %n.vec694
  br i1 %cmp.n710, label %._crit_edge.i70.i, label %scalar.ph691.preheader

scalar.ph691.preheader:                           ; preds = %vector.memcheck673, %.lr.ph.i60.i, %middle.block709
  %indvars.iv52.i66.i.ph = phi i64 [ %i.afl, %vector.memcheck673 ], [ %i.afl, %.lr.ph.i60.i ], [ %i.agh, %middle.block709 ]
  br label %scalar.ph691

._crit_edge.i70.i:                                ; preds = %scalar.ph691, %middle.block709
  %indvars.iv.next56.i71.i = add nuw nsw i64 %indvars.iv55.i61.i, 1 ; 2 uses
  %exitcond.not.i72.i = icmp eq i64 %indvars.iv.next56.i71.i, %wide.trip.count.i59.i
  %indvar.next = add i32 %indvar, 1
  %indvar.next682 = add i35 %indvar681, 1
  br i1 %exitcond.not.i72.i, label %.preheader.i73.i, label %.lr.ph.i60.i, !llvm.loop !131

scalar.ph691:                                     ; preds = %scalar.ph691.preheader, %scalar.ph691
  %indvars.iv52.i66.i = phi i64 [ %indvars.iv.next53.i67.i, %scalar.ph691 ], [ %indvars.iv52.i66.i.ph, %scalar.ph691.preheader ] ; 2 uses
  %indvars.iv.next53.i67.i = add nuw nsw i64 %indvars.iv52.i66.i, 1 ; 3 uses
  %.idx.i68.i = shl nuw nsw i64 %indvars.iv.next53.i67.i, 4
  %i.agy = getelementptr inbounds nuw i8, ptr %i.abw, i64 %.idx.i68.i ; 2 uses
  %i.agz = load double, ptr %i.agy, align 8, !tbaa !77
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agy, i64 8
  %i.ahb = load double, ptr %i.aha, align 8, !tbaa !77
  %i.ahc = load double, ptr %i.afo, align 8, !tbaa !77 ; 2 uses
  %i.ahd = load double, ptr %i.afs, align 8, !tbaa !77 ; 2 uses
  %i.ahe = fneg nsz double %i.ahd
  %.idx63.i69.i = shl nuw nsw i64 %indvars.iv52.i66.i, 4
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.abw, i64 %.idx63.i69.i ; 2 uses
  %i.ahg = insertelement <2 x double> poison, double %i.ahb, i64 0
  %i.ahh = shufflevector <2 x double> %i.ahg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahi = insertelement <2 x double> poison, double %i.ahe, i64 0
  %i.ahj = insertelement <2 x double> %i.ahi, double %i.ahc, i64 1
  %i.ahk = fmul nsz <2 x double> %i.ahh, %i.ahj
  %i.ahl = insertelement <2 x double> poison, double %i.agz, i64 0
  %i.ahm = shufflevector <2 x double> %i.ahl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahn = insertelement <2 x double> poison, double %i.ahc, i64 0
  %i.aho = insertelement <2 x double> %i.ahn, double %i.ahd, i64 1
  %i.ahp = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahm, <2 x double> %i.aho, <2 x double> %i.ahk)
  %i.ahq = load <2 x double>, ptr %i.ahf, align 8, !tbaa !77
  %i.ahr = fsub nsz <2 x double> %i.ahq, %i.ahp
  store <2 x double> %i.ahr, ptr %i.ahf, align 8, !tbaa !77
  %i.ahs = trunc nuw i64 %indvars.iv.next53.i67.i to i32
  %i.aht = icmp sgt i32 %i.afe, %i.ahs
  br i1 %i.aht, label %scalar.ph691, label %._crit_edge.i70.i, !llvm.loop !143

.lr.ph49.i77.i:                                   ; preds = %bb.as, %.lr.ph49.preheader.i75.i
  %indvars.iv58.i78.i = phi i64 [ 0, %.lr.ph49.preheader.i75.i ], [ %indvars.iv.next59.i80.i, %bb.as ] ; 3 uses
  %.idx64.i79.i = shl nuw nsw i64 %indvars.iv58.i78.i, 4
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.abw, i64 %.idx64.i79.i
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  %i.ahw = load double, ptr %i.ahv, align 8, !tbaa !77 ; 2 uses
  %i.ahx = call nsz double @llvm.fabs.f64(double %i.ahw)
  %i.ahy = fcmp nsz ogt double %i.ahx, f0x3E80000000000000
  br i1 %i.ahy, label %normalize_coeffs.exit.sink.split.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph49.i77.i
  %indvars.iv.next59.i80.i = add nuw nsw i64 %indvars.iv58.i78.i, 1 ; 2 uses
  %exitcond62.not.i81.i = icmp eq i64 %indvars.iv.next59.i80.i, %wide.trip.count61.i76.i
  br i1 %exitcond62.not.i81.i, label %.loopexit.i264, label %.lr.ph49.i77.i, !llvm.loop !133

.loopexit.i264:                                   ; preds = %bb.as
  %i.ahz = zext nneg i32 %i.afe to i64            ; 6 uses
  %min.iters.check663 = icmp ult i32 %.pre.i, 8
  br i1 %min.iters.check663, label %scalar.ph662.preheader, label %vector.memcheck653

vector.memcheck653:                               ; preds = %.loopexit.i264
  %i.aia = shl nuw nsw i64 %wide.trip.count61.i76.i, 3
  %scevgep654 = getelementptr i8, ptr %i.afd, i64 %i.aia
  %scevgep655 = getelementptr i8, ptr %i.abw, i64 16
  %i.aib = shl nuw nsw i64 %i.ahz, 4
  %i.aic = sub nsw i64 %i.ahz, %wide.trip.count61.i76.i
  %i.aid = shl nsw i64 %i.aic, 4
  %scevgep656 = getelementptr i8, ptr %scevgep655, i64 %i.aid
  %scevgep657 = getelementptr i8, ptr %i.abw, i64 8
  %scevgep658 = getelementptr i8, ptr %scevgep657, i64 %i.aib
  %bound0659 = icmp ult ptr %i.afd, %scevgep658
  %bound1660 = icmp ult ptr %scevgep656, %scevgep654
  %found.conflict661 = and i1 %bound0659, %bound1660
  br i1 %found.conflict661, label %scalar.ph662.preheader, label %vector.ph664

vector.ph664:                                     ; preds = %vector.memcheck653
  %n.vec665 = and i64 %wide.trip.count61.i76.i, 4294967292 ; 4 uses
  %i.aie = sub nsw i64 %i.ahz, %n.vec665
  br label %vector.body666

vector.body666:                                   ; preds = %vector.body666, %vector.ph664
  %index667 = phi i64 [ 0, %vector.ph664 ], [ %index.next668, %vector.body666 ] ; 3 uses
  %i.aif = sub i64 %i.ahz, %index667              ; 4 uses
  %i.aig = shl nuw nsw i64 %i.aif, 4
  %i.aih = shl i64 %i.aif, 4
  %i.aii = shl i64 %i.aif, 4
  %i.aij = shl i64 %i.aif, 4
  %i.aik = getelementptr inbounds nuw i8, ptr %i.abw, i64 %i.aig
  %i.ail = getelementptr i8, ptr %i.abw, i64 %i.aih
  %i.aim = getelementptr i8, ptr %i.ail, i64 -16
  %i.ain = getelementptr i8, ptr %i.abw, i64 %i.aii
  %i.aio = getelementptr i8, ptr %i.ain, i64 -32
  %i.aip = getelementptr i8, ptr %i.abw, i64 %i.aij
  %i.aiq = getelementptr i8, ptr %i.aip, i64 -48
  %i.air = load double, ptr %i.aik, align 8, !tbaa !77, !alias.scope !144
  %i.ais = load double, ptr %i.aim, align 8, !tbaa !77, !alias.scope !144
  %i.ait = insertelement <2 x double> poison, double %i.air, i64 0
  %i.aiu = insertelement <2 x double> %i.ait, double %i.ais, i64 1
  %i.aiv = load double, ptr %i.aio, align 8, !tbaa !77, !alias.scope !144
  %i.aiw = load double, ptr %i.aiq, align 8, !tbaa !77, !alias.scope !144
  %i.aix = insertelement <2 x double> poison, double %i.aiv, i64 0
  %i.aiy = insertelement <2 x double> %i.aix, double %i.aiw, i64 1
  %i.aiz = getelementptr inbounds nuw [8 x i8], ptr %i.afd, i64 %index667 ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 16
  store <2 x double> %i.aiu, ptr %i.aiz, align 8, !tbaa !77, !alias.scope !147, !noalias !144
  store <2 x double> %i.aiy, ptr %i.aja, align 8, !tbaa !77, !alias.scope !147, !noalias !144
  %index.next668 = add nuw i64 %index667, 4       ; 2 uses
  %i.ajb = icmp eq i64 %index.next668, %n.vec665
  br i1 %i.ajb, label %middle.block669, label %vector.body666, !llvm.loop !149

middle.block669:                                  ; preds = %vector.body666
  %cmp.n670 = icmp eq i64 %n.vec665, %wide.trip.count61.i76.i
  br i1 %cmp.n670, label %._crit_edge.i271, label %scalar.ph662.preheader

scalar.ph662.preheader:                           ; preds = %vector.memcheck653, %.loopexit.i264, %middle.block669
  %indvars.iv116.i.ph = phi i64 [ %i.ahz, %vector.memcheck653 ], [ %i.ahz, %.loopexit.i264 ], [ %i.aie, %middle.block669 ] ; 2 uses
  %indvars.iv.i267.ph = phi i64 [ 0, %vector.memcheck653 ], [ 0, %.loopexit.i264 ], [ %n.vec665, %middle.block669 ] ; 3 uses
  %xtraiter873.a = and i64 %wide.trip.count61.i76.i, 3 ; 2 uses
  %lcmp.mod874.not.a = icmp eq i64 %xtraiter873.a, 0
  br i1 %lcmp.mod874.not.a, label %scalar.ph662.prol.loopexit, label %scalar.ph662.prol

scalar.ph662.prol:                                ; preds = %scalar.ph662.preheader, %scalar.ph662.prol
  %indvars.iv116.i.prol = phi i64 [ %indvars.iv.next117.i.prol, %scalar.ph662.prol ], [ %indvars.iv116.i.ph, %scalar.ph662.preheader ] ; 2 uses
  %indvars.iv.i267.prol = phi i64 [ %indvars.iv.next.i269.prol, %scalar.ph662.prol ], [ %indvars.iv.i267.ph, %scalar.ph662.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph662.prol ], [ 0, %scalar.ph662.preheader ]
  %.idx.i268.prol = shl nuw nsw i64 %indvars.iv116.i.prol, 4
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.abw, i64 %.idx.i268.prol
  %i.ajd = load double, ptr %i.ajc, align 8, !tbaa !77
  %i.aje = getelementptr inbounds nuw [8 x i8], ptr %i.afd, i64 %indvars.iv.i267.prol
  store double %i.ajd, ptr %i.aje, align 8, !tbaa !77
  %indvars.iv.next.i269.prol = add nuw nsw i64 %indvars.iv.i267.prol, 1 ; 2 uses
  %indvars.iv.next117.i.prol = add nsw i64 %indvars.iv116.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter873.a
  br i1 %prol.iter.cmp.not, label %scalar.ph662.prol.loopexit, label %scalar.ph662.prol, !llvm.loop !150

scalar.ph662.prol.loopexit:                       ; preds = %scalar.ph662.prol, %scalar.ph662.preheader
  %indvars.iv116.i.unr = phi i64 [ %indvars.iv116.i.ph, %scalar.ph662.preheader ], [ %indvars.iv.next117.i.prol, %scalar.ph662.prol ]
  %indvars.iv.i267.unr = phi i64 [ %indvars.iv.i267.ph, %scalar.ph662.preheader ], [ %indvars.iv.next.i269.prol, %scalar.ph662.prol ]
  %i.ajf = sub nsw i64 %indvars.iv.i267.ph, %wide.trip.count61.i76.i
  %i.ajg = icmp ugt i64 %i.ajf, -4
  br i1 %i.ajg, label %._crit_edge.i271, label %scalar.ph662

scalar.ph662:                                     ; preds = %scalar.ph662.prol.loopexit, %scalar.ph662
  %indvars.iv116.i = phi i64 [ %indvars.iv.next117.i.3, %scalar.ph662 ], [ %indvars.iv116.i.unr, %scalar.ph662.prol.loopexit ] ; 5 uses
  %indvars.iv.i267 = phi i64 [ %indvars.iv.next.i269.3, %scalar.ph662 ], [ %indvars.iv.i267.unr, %scalar.ph662.prol.loopexit ] ; 5 uses
  %.idx.i268 = shl nuw nsw i64 %indvars.iv116.i, 4
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.abw, i64 %.idx.i268
  %i.aji = load double, ptr %i.ajh, align 8, !tbaa !77
  %i.ajj = getelementptr inbounds nuw [8 x i8], ptr %i.afd, i64 %indvars.iv.i267
  store double %i.aji, ptr %i.ajj, align 8, !tbaa !77
  %indvars.iv.next117.i = shl i64 %indvars.iv116.i, 4
  %i.ajk = getelementptr i8, ptr %i.abw, i64 %indvars.iv.next117.i
  %i.ajl = getelementptr i8, ptr %i.ajk, i64 -16
  %i.ajm = load double, ptr %i.ajl, align 8, !tbaa !77
  %i.ajn = getelementptr inbounds nuw [8 x i8], ptr %i.afd, i64 %indvars.iv.i267
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 8
  store double %i.ajm, ptr %i.ajo, align 8, !tbaa !77
  %indvars.iv.next117.i.1 = shl i64 %indvars.iv116.i, 4
  %i.ajp = getelementptr i8, ptr %i.abw, i64 %indvars.iv.next117.i.1
  %i.ajq = getelementptr i8, ptr %i.ajp, i64 -32
  %i.ajr = load double, ptr %i.ajq, align 8, !tbaa !77
  %i.ajs = getelementptr inbounds nuw [8 x i8], ptr %i.afd, i64 %indvars.iv.i267
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 16
  store double %i.ajr, ptr %i.ajt, align 8, !tbaa !77
  %indvars.iv.next117.i.2 = shl i64 %indvars.iv116.i, 4
  %i.aju = getelementptr i8, ptr %i.abw, i64 %indvars.iv.next117.i.2
  %i.ajv = getelementptr i8, ptr %i.aju, i64 -48
  %i.ajw = load double, ptr %i.ajv, align 8, !tbaa !77
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr %i.afd, i64 %indvars.iv.i267
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 24
  store double %i.ajw, ptr %i.ajy, align 8, !tbaa !77
  %indvars.iv.next.i269.3 = add nuw nsw i64 %indvars.iv.i267, 4 ; 2 uses
  %indvars.iv.next117.i.3 = add nsw i64 %indvars.iv116.i, -4
  %exitcond.not.i270.3 = icmp eq i64 %indvars.iv.next.i269.3, %wide.trip.count61.i76.i
  br i1 %exitcond.not.i270.3, label %._crit_edge.i271, label %scalar.ph662, !llvm.loop !152

._crit_edge.i271:                                 ; preds = %scalar.ph662.prol.loopexit, %scalar.ph662, %middle.block669, %.preheader.i73.i
  store i32 %.pre.i, ptr %i.abr, align 4, !tbaa !31
  %i.ajz = icmp sgt i32 %i.acg, -1
  br i1 %i.ajz, label %.lr.ph102.i, label %._crit_edge.._crit_edge103_crit_edge.i

._crit_edge.._crit_edge103_crit_edge.i:           ; preds = %._crit_edge.i271
  %.pre135.i = add nsw i32 %i.acg, 1
  br label %._crit_edge103.i

.lr.ph102.i:                                      ; preds = %._crit_edge.i271
  %i.aka = zext nneg i32 %i.acg to i64            ; 6 uses
  %i.akb = add nuw i32 %i.acg, 1                  ; 4 uses
  %wide.trip.count128.i = zext i32 %i.akb to i64  ; 6 uses
  %min.iters.check643 = icmp ult i32 %i.acg, 7
  br i1 %min.iters.check643, label %scalar.ph642.preheader, label %vector.memcheck633

vector.memcheck633:                               ; preds = %.lr.ph102.i
  %i.akc = shl nuw nsw i64 %wide.trip.count128.i, 3
  %scevgep634 = getelementptr i8, ptr %i.acf, i64 %i.akc
  %scevgep635 = getelementptr i8, ptr %i.acb, i64 16
end_hunk_0
