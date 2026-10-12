Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_aiir?download=true
inline.NumInlined: 30
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 47
begin_hunk_0_@config_output:bb.a
  %i.zj = sext i32 %i.zi to i64
  %i.zk = getelementptr inbounds i8, ptr %i.zg, i64 %i.zj
  %i.zl = shl nsw i32 %.139.i212.i, 2
  %i.zm = sext i32 %i.zl to i64
  %i.zn = getelementptr inbounds i8, ptr %i.zk, i64 %i.zm
  store i32 -16711936, ptr %i.zn, align 1, !tbaa !71
  %i.zo = icmp eq i32 %.139.i212.i, %i.wy
  %i.zp = icmp eq i32 %.141.i214.i, %.1186.i
  %or.cond.i216.i = and i1 %i.zp, %i.zo
  br i1 %or.cond.i216.i, label %draw_line.exit218.i, label %bb.ag

draw_line.exit218.i:                              ; preds = %bb.ag, %draw_line.exit.i
  %i.zq = sub nsw i32 %.1184.i, %i.wp
  %i.zr = call i32 @llvm.abs.i32(i32 %i.zq, i1 true) ; 4 uses
  %i.zs = icmp slt i32 %i.wp, %.1184.i
  %i.zt = select i1 %i.zs, i32 1, i32 -1
  %i.zu = load ptr, ptr %i.lm, align 8, !tbaa !30
  %i.zv = load i32, ptr %i.ls, align 8, !tbaa !31
  %i.zw = mul nsw i32 %i.zv, %i.wp
  %i.zx = sext i32 %i.zw to i64
  %i.zy = getelementptr inbounds i8, ptr %i.zu, i64 %i.zx
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.xk
  store i32 -16711681, ptr %i.zz, align 1, !tbaa !71
  %i.aaa = icmp eq i32 %i.wp, %.1184.i
  %or.cond46.i219.i = and i1 %i.xn, %i.aaa
  br i1 %or.cond46.i219.i, label %draw_line.exit230.i, label %.lr.ph.i220.i

.lr.ph.i220.i:                                    ; preds = %draw_line.exit218.i
  %i.aab = icmp samesign ugt i32 %i.xa, %i.zr
  %i.aac = sub nsw i32 0, %i.zr
  %i.aad = select i1 %i.aab, i32 %i.xa, i32 %i.aac
  %i.aae = sdiv i32 %i.aad, 2
  %i.aaf = sub nsw i32 0, %i.xa
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.i220.i
  %.049.i221.i = phi i32 [ %i.aae, %.lr.ph.i220.i ], [ %.2.i227.i, %bb.ah ] ; 3 uses
  %.03848.i222.i = phi i32 [ %i.wx, %.lr.ph.i220.i ], [ %.139.i224.i, %bb.ah ]
  %.04047.i223.i = phi i32 [ %i.wp, %.lr.ph.i220.i ], [ %.141.i226.i, %bb.ah ]
  %i.aag = icmp sgt i32 %.049.i221.i, %i.aaf      ; 2 uses
  %i.aah = sext i1 %i.aag to i32
  %.139.i224.i = add nsw i32 %.03848.i222.i, %i.aah ; 3 uses
  %i.aai = select i1 %i.aag, i32 %i.zr, i32 0
  %.1.i225.i = sub i32 %.049.i221.i, %i.aai
  %i.aaj = icmp slt i32 %.049.i221.i, %i.zr       ; 2 uses
  %i.aak = select i1 %i.aaj, i32 %i.zt, i32 0
  %.141.i226.i = add nsw i32 %i.aak, %.04047.i223.i ; 3 uses
  %i.aal = select i1 %i.aaj, i32 %i.xa, i32 0
  %.2.i227.i = add nsw i32 %.1.i225.i, %i.aal
  %i.aam = load ptr, ptr %i.lm, align 8, !tbaa !30
  %i.aan = load i32, ptr %i.ls, align 8, !tbaa !31
  %i.aao = mul nsw i32 %i.aan, %.141.i226.i
  %i.aap = sext i32 %i.aao to i64
  %i.aaq = getelementptr inbounds i8, ptr %i.aam, i64 %i.aap
  %i.aar = shl nsw i32 %.139.i224.i, 2
  %i.aas = sext i32 %i.aar to i64
  %i.aat = getelementptr inbounds i8, ptr %i.aaq, i64 %i.aas
  store i32 -16711681, ptr %i.aat, align 1, !tbaa !71
  %i.aau = icmp eq i32 %.139.i224.i, %i.wy
  %i.aav = icmp eq i32 %.141.i226.i, %.1184.i
  %or.cond.i228.i = and i1 %i.aav, %i.aau
  br i1 %or.cond.i228.i, label %draw_line.exit230.i, label %bb.ah

draw_line.exit230.i:                              ; preds = %bb.ah, %draw_line.exit218.i
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %i.aaw = load i32, ptr %i.lw, align 4, !tbaa !176 ; 2 uses
  %i.aax = sext i32 %i.aaw to i64
  %i.aay = icmp slt i64 %indvars.iv.next80.i, %i.aax
  br i1 %i.aay, label %bb.ae, label %._crit_edge46.i, !llvm.loop !130

._crit_edge46.i:                                  ; preds = %draw_line.exit230.i
  %i.aaz = icmp sgt i32 %i.aaw, 400
  br i1 %i.aaz, label %bb.ai, label %draw_response.exit

bb.ai:                                            ; preds = %._crit_edge46.i
  %i.aba = load i32, ptr %i.lq, align 8, !tbaa !177
  %i.abb = icmp sgt i32 %i.aba, 100
  br i1 %i.abb, label %bb.aj, label %draw_response.exit

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 2, i32 noundef 2, ptr noundef nonnull @.str.91)
  %i.abc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.92, double noundef %i.sk) #14 ; 0 uses
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 122, i32 noundef 2, ptr noundef nonnull %i.a)
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 2, i32 noundef 12, ptr noundef nonnull @.str.93)
  %i.abd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.92, double noundef %i.sj) #14 ; 0 uses
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 122, i32 noundef 12, ptr noundef nonnull %i.a)
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 2, i32 noundef 22, ptr noundef nonnull @.str.94)
  %i.abe = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.92, double noundef %.0189.lcssa113121.i) #14 ; 0 uses
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 122, i32 noundef 22, ptr noundef nonnull %i.a)
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 2, i32 noundef 32, ptr noundef nonnull @.str.95)
  %i.abf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.92, double noundef %.0190.lcssa112123.i) #14 ; 0 uses
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 122, i32 noundef 32, ptr noundef nonnull %i.a)
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 2, i32 noundef 42, ptr noundef nonnull @.str.96)
  %i.abg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.92, double noundef %.0191.lcssa131.i) #14 ; 0 uses
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 90, i32 noundef 42, ptr noundef nonnull %i.a)
  call fastcc void @drawtext(ptr noundef nonnull readonly %i.lm, i32 noundef 2, i32 noundef 52, ptr noundef nonnull @.str.97)
  %i.abh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.92, double noundef %.0192.lcssa129.i) #14 ; 0 uses
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
  %i.abi = load i32, ptr %i.ap, align 4, !tbaa !64 ; 2 uses
  %i.abj = icmp eq i32 %i.abi, 0
  br i1 %i.abj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.d, i32 noundef 24, ptr noundef nonnull @.str.75) #14
  %.pr291 = load i32, ptr %i.ap, align 4, !tbaa !64
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.abk = phi i32 [ %.pr291, %bb.al ], [ %i.abi, %bb.ak ] ; 2 uses
  %i.abl = icmp sgt i32 %i.abk, 0
  br i1 %i.abl, label %bb.an, label %bb.ax

bb.an:                                            ; preds = %bb.am
  %i.abm = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.abn = load i32, ptr %i.abm, align 8, !tbaa !46
  switch i32 %i.abn, label %convert_zp2tf.exit.thread [
    i32 0, label %bb.ao
    i32 1, label %bb.bd
    i32 2, label %bb.be
  ]

bb.ao:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.d, i32 noundef 24, ptr noundef nonnull @.str.76) #14
  %i.abo = load i32, ptr %i.j, align 4, !tbaa !57 ; 2 uses
  %i.abp = icmp sgt i32 %i.abo, 0
  br i1 %i.abp, label %.lr.ph106.i, label %convert_zp2tf.exit.thread

.lr.ph106.i:                                      ; preds = %bb.ao
  %i.abq = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 104
  %wide.trip.count133.i = zext nneg i32 %i.abo to i64
  br label %bb.ap

.critedge361:                                     ; preds = %scalar.ph621, %middle.block630, %.preheader1.i.i, %._crit_edge103.i, %._crit_edge.i87.i
  call void @av_free(ptr noundef nonnull %i.abz) #14
  call void @av_free(ptr noundef nonnull %i.ace) #14
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %exitcond134.not.i = icmp eq i64 %indvars.iv.next131.i, %wide.trip.count133.i
  br i1 %exitcond134.not.i, label %convert_zp2tf.exit.thread, label %bb.ap, !llvm.loop !131

bb.ap:                                            ; preds = %.critedge361, %.lr.ph106.i
  %indvars.iv130.i = phi i64 [ 0, %.lr.ph106.i ], [ %indvars.iv.next131.i, %.critedge361 ] ; 3 uses
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !33
  %i.abt = getelementptr inbounds nuw [72 x i8], ptr %i.abs, i64 %indvars.iv130.i ; 6 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 4 ; 3 uses
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !31
  %i.abw = shl i32 %i.abv, 1
  %i.abx = add i32 %i.abw, 2
  %i.aby = sext i32 %i.abx to i64
  %i.abz = call noalias ptr @av_calloc(i64 noundef %i.aby, i64 noundef 8) #14 ; 22 uses
  %i.aca = load i32, ptr %i.abt, align 8, !tbaa !31
  %i.acb = shl i32 %i.aca, 1
  %i.acc = add i32 %i.acb, 2
  %i.acd = sext i32 %i.acc to i64
  %i.ace = call noalias ptr @av_calloc(i64 noundef %i.acd, i64 noundef 8) #14 ; 22 uses
  %i.acf = icmp ne ptr %i.abz, null
  %i.acg = icmp ne ptr %i.ace, null
  %or.cond.i255 = select i1 %i.acf, i1 %i.acg, i1 false
  br i1 %or.cond.i255, label %bb.aq, label %normalize_coeffs.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abt, i64 8
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !66 ; 12 uses
  %i.acj = load i32, ptr %i.abt, align 8, !tbaa !31 ; 18 uses
  %i.ack = shl nsw i32 %i.acj, 1
  %i.acl = sext i32 %i.ack to i64
  %i.acm = getelementptr inbounds [8 x i8], ptr %i.ace, i64 %i.acl
  store double 1.000000e+00, ptr %i.acm, align 8, !tbaa !67
  %.not43.i.i = icmp slt i32 %i.acj, 1
  br i1 %.not43.i.i, label %.preheader.i.i262, label %.lr.ph46.preheader.i.i

.lr.ph46.preheader.i.i:                           ; preds = %bb.aq
  %i.acn = add nuw i32 %i.acj, 1
  %wide.trip.count.i.i256 = zext i32 %i.acn to i64
  %scevgep714 = getelementptr i8, ptr %i.ace, i64 32
  %scevgep717 = getelementptr i8, ptr %i.aci, i64 16
  %scevgep719 = getelementptr i8, ptr %i.aci, i64 8
  br label %.lr.ph.i.i257

.preheader.i.i262:                                ; preds = %._crit_edge.i.i260, %bb.aq
  %.not3847.i.i = icmp slt i32 %i.acj, 0
  br i1 %.not3847.i.i, label %.loopexit89.i, label %.lr.ph49.preheader.i.i

.lr.ph49.preheader.i.i:                           ; preds = %.preheader.i.i262
  %i.aco = add nuw i32 %i.acj, 1
  %wide.trip.count61.i.i = zext i32 %i.aco to i64
  br label %.lr.ph49.i.i263

.lr.ph.i.i257:                                    ; preds = %._crit_edge.i.i260, %.lr.ph46.preheader.i.i
  %indvar720 = phi i35 [ %indvar.next721, %._crit_edge.i.i260 ], [ 0, %.lr.ph46.preheader.i.i ] ; 2 uses
  %indvar711 = phi i32 [ %indvar.next712, %._crit_edge.i.i260 ], [ 0, %.lr.ph46.preheader.i.i ] ; 5 uses
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i, %._crit_edge.i.i260 ], [ 1, %.lr.ph46.preheader.i.i ] ; 3 uses
  %indvars.iv.in.i.i = phi i32 [ %indvars.iv.i.i258, %._crit_edge.i.i260 ], [ %i.acj, %.lr.ph46.preheader.i.i ] ; 3 uses
  %indvars.iv.i.i258 = add i32 %indvars.iv.in.i.i, -1 ; 2 uses
  %i.acp = zext i32 %indvars.iv.i.i258 to i64     ; 4 uses
  %i.acq = shl nuw i64 %indvars.iv55.i.i, 33
  %sext.i.i = add i64 %i.acq, -8589934592
  %i.acr = ashr exact i64 %sext.i.i, 29
  %i.acs = getelementptr inbounds i8, ptr %i.aci, i64 %i.acr ; 3 uses
  %indvars.iv55.tr.i.i = trunc i64 %indvars.iv55.i.i to i32
  %i.act = shl i32 %indvars.iv55.tr.i.i, 1
  %i.acu = add i32 %i.act, -1
  %i.acv = sext i32 %i.acu to i64
  %i.acw = getelementptr inbounds [8 x i8], ptr %i.aci, i64 %i.acv ; 3 uses
  %i.acx = call i32 @llvm.smax.i32(i32 %i.acj, i32 %indvars.iv.in.i.i)
  %1 = sub i32 %indvar711, %i.acj
  %i.acy = add i32 %i.acx, %1                     ; 2 uses
  %i.acz = zext i32 %i.acy to i64
  %i.ada = add nuw nsw i64 %i.acz, 1              ; 2 uses
  %min.iters.check731 = icmp eq i32 %i.acy, 0
  br i1 %min.iters.check731, label %scalar.ph730.preheader, label %vector.memcheck710

vector.memcheck710:                               ; preds = %.lr.ph.i.i257
  %i.adb = shl nuw i35 %indvar720, 4
  %i.adc = sext i35 %i.adb to i64
  %scevgep722 = getelementptr i8, ptr %scevgep719, i64 %i.adc
  %i.add = shl nuw i32 %indvar711, 1
  %i.ade = sext i32 %i.add to i64
  %i.adf = shl nsw i64 %i.ade, 3
  %scevgep718 = getelementptr i8, ptr %scevgep717, i64 %i.adf
  %i.adg = xor i32 %indvar711, -1
  %i.adh = add i32 %i.acj, %i.adg
  %i.adi = zext i32 %i.adh to i64                 ; 2 uses
  %smax715 = call i32 @llvm.smax.i32(i32 %i.acj, i32 %indvars.iv.in.i.i)
  %i.adj = sub i32 %indvar711, %i.acj
  %i.adk = add i32 %smax715, %i.adj
  %i.adl = zext i32 %i.adk to i64
  %i.adm = add nuw nsw i64 %i.adi, %i.adl
  %i.adn = shl nuw nsw i64 %i.adm, 4
  %scevgep716 = getelementptr i8, ptr %scevgep714, i64 %i.adn ; 2 uses
  %i.ado = shl nuw nsw i64 %i.adi, 4
  %scevgep713 = getelementptr nuw i8, ptr %i.ace, i64 %i.ado ; 2 uses
  %bound0723 = icmp ult ptr %scevgep713, %scevgep718
  %bound1724 = icmp ult ptr %i.acw, %scevgep716
  %found.conflict725 = and i1 %bound0723, %bound1724
  %bound0726 = icmp ult ptr %scevgep713, %scevgep722
  %bound1727 = icmp ult ptr %i.acs, %scevgep716
  %found.conflict728 = and i1 %bound0726, %bound1727
  %conflict.rdx729 = or i1 %found.conflict725, %found.conflict728
  br i1 %conflict.rdx729, label %scalar.ph730.preheader, label %vector.ph732

vector.ph732:                                     ; preds = %vector.memcheck710
  %n.vec733 = and i64 %i.ada, 8589934590          ; 3 uses
  %i.adp = add nuw nsw i64 %n.vec733, %i.acp
  %i.adq = load double, ptr %i.acs, align 8, !tbaa !67, !alias.scope !182
  %broadcast.splatinsert741 = insertelement <2 x double> poison, double %i.adq, i64 0
  %broadcast.splat742 = shufflevector <2 x double> %broadcast.splatinsert741, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.adr = load double, ptr %i.acw, align 8, !tbaa !67, !alias.scope !183
  %broadcast.splatinsert734 = insertelement <2 x double> poison, double %i.adr, i64 0
  %broadcast.splat735 = shufflevector <2 x double> %broadcast.splatinsert734, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ads = fneg nsz <2 x double> %broadcast.splat735
  br label %vector.body736

vector.body736:                                   ; preds = %vector.body736, %vector.ph732
  %index737 = phi i64 [ 0, %vector.ph732 ], [ %index.next747, %vector.body736 ] ; 2 uses
  %i.adt = add nuw i64 %index737, %i.acp          ; 2 uses
  %i.adu = shl i64 %i.adt, 4
  %i.adv = getelementptr i8, ptr %i.ace, i64 %i.adu
  %i.adw = getelementptr i8, ptr %i.adv, i64 16
  %wide.vec738 = load <4 x double>, ptr %i.adw, align 8, !tbaa !67, !alias.scope !184, !noalias !185 ; 2 uses
  %strided.vec739 = shufflevector <4 x double> %wide.vec738, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec740 = shufflevector <4 x double> %wide.vec738, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.adx = fmul nsz <2 x double> %strided.vec740, %i.ads
  %i.ady = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec739, <2 x double> %broadcast.splat742, <2 x double> %i.adx)
  %i.adz = fmul nsz <2 x double> %strided.vec740, %broadcast.splat742
  %i.aea = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec739, <2 x double> %broadcast.splat735, <2 x double> %i.adz)
  %i.aeb = shl nuw nsw i64 %i.adt, 4
  %i.aec = getelementptr inbounds nuw i8, ptr %i.ace, i64 %i.aeb ; 2 uses
  %wide.vec743 = load <4 x double>, ptr %i.aec, align 8, !tbaa !67, !alias.scope !184, !noalias !185 ; 2 uses
  %strided.vec744 = shufflevector <4 x double> %wide.vec743, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec745 = shufflevector <4 x double> %wide.vec743, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.aed = fsub nsz <2 x double> %strided.vec744, %i.ady
  %i.aee = fsub nsz <2 x double> %strided.vec745, %i.aea
  %interleaved.vec746 = shufflevector <2 x double> %i.aed, <2 x double> %i.aee, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec746, ptr %i.aec, align 8, !tbaa !67, !alias.scope !184, !noalias !185
  %index.next747 = add nuw i64 %index737, 2       ; 2 uses
  %i.aef = icmp eq i64 %index.next747, %n.vec733
  br i1 %i.aef, label %middle.block748, label %vector.body736, !llvm.loop !136

middle.block748:                                  ; preds = %vector.body736
  %cmp.n749 = icmp eq i64 %i.ada, %n.vec733
  br i1 %cmp.n749, label %._crit_edge.i.i260, label %scalar.ph730.preheader

scalar.ph730.preheader:                           ; preds = %vector.memcheck710, %.lr.ph.i.i257, %middle.block748
  %indvars.iv52.i.i.ph = phi i64 [ %i.acp, %vector.memcheck710 ], [ %i.acp, %.lr.ph.i.i257 ], [ %i.adp, %middle.block748 ]
  br label %scalar.ph730

._crit_edge.i.i260:                               ; preds = %scalar.ph730, %middle.block748
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 2 uses
  %exitcond.not.i.i261 = icmp eq i64 %indvars.iv.next56.i.i, %wide.trip.count.i.i256
  %indvar.next712 = add i32 %indvar711, 1
  %indvar.next721 = add i35 %indvar720, 1
  br i1 %exitcond.not.i.i261, label %.preheader.i.i262, label %.lr.ph.i.i257, !llvm.loop !137

scalar.ph730:                                     ; preds = %scalar.ph730.preheader, %scalar.ph730
  %indvars.iv52.i.i = phi i64 [ %indvars.iv.next53.i.i, %scalar.ph730 ], [ %indvars.iv52.i.i.ph, %scalar.ph730.preheader ] ; 2 uses
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 3 uses
  %.idx.i.i259 = shl nuw nsw i64 %indvars.iv.next53.i.i, 4
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.ace, i64 %.idx.i.i259
  %i.aeh = load double, ptr %i.acs, align 8, !tbaa !67 ; 2 uses
  %i.aei = load double, ptr %i.acw, align 8, !tbaa !67 ; 2 uses
  %i.aej = fneg nsz double %i.aei
  %.idx63.i.i = shl nuw nsw i64 %indvars.iv52.i.i, 4
  %i.aek = getelementptr inbounds nuw i8, ptr %i.ace, i64 %.idx63.i.i ; 2 uses
  %i.ael = load <2 x double>, ptr %i.aeg, align 8, !tbaa !67 ; 2 uses
  %i.aem = shufflevector <2 x double> %i.ael, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aen = insertelement <2 x double> poison, double %i.aej, i64 0
  %i.aeo = insertelement <2 x double> %i.aen, double %i.aeh, i64 1
  %i.aep = fmul nsz <2 x double> %i.aem, %i.aeo
  %i.aeq = shufflevector <2 x double> %i.ael, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aer = insertelement <2 x double> poison, double %i.aeh, i64 0
  %i.aes = insertelement <2 x double> %i.aer, double %i.aei, i64 1
  %i.aet = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aeq, <2 x double> %i.aes, <2 x double> %i.aep)
  %i.aeu = load <2 x double>, ptr %i.aek, align 8, !tbaa !67
  %i.aev = fsub nsz <2 x double> %i.aeu, %i.aet
  store <2 x double> %i.aev, ptr %i.aek, align 8, !tbaa !67
  %i.aew = trunc nuw i64 %indvars.iv.next53.i.i to i32
  %i.aex = icmp sgt i32 %i.acj, %i.aew
  br i1 %i.aex, label %scalar.ph730, label %._crit_edge.i.i260, !llvm.loop !138

.lr.ph49.i.i263:                                  ; preds = %bb.ar, %.lr.ph49.preheader.i.i
  %indvars.iv58.i.i = phi i64 [ 0, %.lr.ph49.preheader.i.i ], [ %indvars.iv.next59.i.i, %bb.ar ] ; 3 uses
  %.idx64.i.i = shl nuw nsw i64 %indvars.iv58.i.i, 4
  %i.aey = getelementptr inbounds nuw i8, ptr %i.ace, i64 %.idx64.i.i
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 8
  %i.afa = load double, ptr %i.aez, align 8, !tbaa !67 ; 2 uses
  %i.afb = call nsz double @llvm.fabs.f64(double %i.afa)
  %i.afc = fcmp nsz ogt double %i.afb, f0x3E80000000000000
  br i1 %i.afc, label %normalize_coeffs.exit.sink.split.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph49.i.i263
  %indvars.iv.next59.i.i = add nuw nsw i64 %indvars.iv58.i.i, 1 ; 2 uses
  %exitcond62.not.i.i = icmp eq i64 %indvars.iv.next59.i.i, %wide.trip.count61.i.i
  br i1 %exitcond62.not.i.i, label %.loopexit89.i, label %.lr.ph49.i.i263, !llvm.loop !139

.loopexit89.i:                                    ; preds = %bb.ar, %.preheader.i.i262
  %i.afd = getelementptr inbounds nuw i8, ptr %i.abt, i64 16
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !66 ; 12 uses
  %i.aff = load i32, ptr %i.abu, align 4, !tbaa !31 ; 13 uses
  %i.afg = shl nsw i32 %i.aff, 1
  %i.afh = sext i32 %i.afg to i64
  %i.afi = getelementptr inbounds [8 x i8], ptr %i.abz, i64 %i.afh
  store double 1.000000e+00, ptr %i.afi, align 8, !tbaa !67
  %.not43.i57.i = icmp slt i32 %i.aff, 1
  br i1 %.not43.i57.i, label %.preheader.i73.i, label %.lr.ph46.preheader.i58.i

.lr.ph46.preheader.i58.i:                         ; preds = %.loopexit89.i
  %i.afj = add nuw i32 %i.aff, 1
  %wide.trip.count.i59.i = zext i32 %i.afj to i64
  %scevgep674 = getelementptr i8, ptr %i.abz, i64 32
  %scevgep677 = getelementptr i8, ptr %i.afe, i64 16
  %scevgep679 = getelementptr i8, ptr %i.afe, i64 8
  br label %.lr.ph.i60.i

.preheader.i73.i:                                 ; preds = %._crit_edge.i70.i, %.loopexit89.i
  %.not3847.i74.i = icmp slt i32 %i.aff, 0
  %.pre.i = add i32 %i.aff, 1                     ; 3 uses
  br i1 %.not3847.i74.i, label %._crit_edge.i271, label %.lr.ph49.preheader.i75.i

.lr.ph49.preheader.i75.i:                         ; preds = %.preheader.i73.i
  %wide.trip.count61.i76.i = zext i32 %.pre.i to i64 ; 8 uses
  br label %.lr.ph49.i77.i

.lr.ph.i60.i:                                     ; preds = %._crit_edge.i70.i, %.lr.ph46.preheader.i58.i
  %indvar680 = phi i35 [ %indvar.next681, %._crit_edge.i70.i ], [ 0, %.lr.ph46.preheader.i58.i ] ; 2 uses
  %indvar = phi i32 [ %indvar.next, %._crit_edge.i70.i ], [ 0, %.lr.ph46.preheader.i58.i ] ; 5 uses
  %indvars.iv55.i61.i = phi i64 [ %indvars.iv.next56.i71.i, %._crit_edge.i70.i ], [ 1, %.lr.ph46.preheader.i58.i ] ; 3 uses
  %indvars.iv.in.i62.i = phi i32 [ %indvars.iv.i63.i, %._crit_edge.i70.i ], [ %i.aff, %.lr.ph46.preheader.i58.i ] ; 3 uses
  %indvars.iv.i63.i = add i32 %indvars.iv.in.i62.i, -1 ; 2 uses
  %i.afk = zext i32 %indvars.iv.i63.i to i64      ; 4 uses
  %i.afl = shl nuw i64 %indvars.iv55.i61.i, 33
  %sext.i64.i = add i64 %i.afl, -8589934592
  %i.afm = ashr exact i64 %sext.i64.i, 29
  %i.afn = getelementptr inbounds i8, ptr %i.afe, i64 %i.afm ; 3 uses
  %indvars.iv55.tr.i65.i = trunc i64 %indvars.iv55.i61.i to i32
  %i.afo = shl i32 %indvars.iv55.tr.i65.i, 1
  %i.afp = add i32 %i.afo, -1
  %i.afq = sext i32 %i.afp to i64
  %i.afr = getelementptr inbounds [8 x i8], ptr %i.afe, i64 %i.afq ; 3 uses
  %i.afs = call i32 @llvm.smax.i32(i32 %i.aff, i32 %indvars.iv.in.i62.i)
  %2 = sub i32 %indvar, %i.aff
  %i.aft = add i32 %i.afs, %2                     ; 2 uses
  %i.afu = zext i32 %i.aft to i64
  %i.afv = add nuw nsw i64 %i.afu, 1              ; 2 uses
  %min.iters.check690 = icmp eq i32 %i.aft, 0
  br i1 %min.iters.check690, label %scalar.ph689.preheader, label %vector.memcheck672

vector.memcheck672:                               ; preds = %.lr.ph.i60.i
  %i.afw = shl nuw i35 %indvar680, 4
  %i.afx = sext i35 %i.afw to i64
  %scevgep682 = getelementptr i8, ptr %scevgep679, i64 %i.afx
  %i.afy = shl nuw i32 %indvar, 1
  %i.afz = sext i32 %i.afy to i64
  %i.aga = shl nsw i64 %i.afz, 3
  %scevgep678 = getelementptr i8, ptr %scevgep677, i64 %i.aga
  %i.agb = xor i32 %indvar, -1
  %i.agc = add i32 %i.aff, %i.agb
  %i.agd = zext i32 %i.agc to i64                 ; 2 uses
  %smax675 = call i32 @llvm.smax.i32(i32 %i.aff, i32 %indvars.iv.in.i62.i)
  %i.age = sub i32 %indvar, %i.aff
  %i.agf = add i32 %smax675, %i.age
  %i.agg = zext i32 %i.agf to i64
  %i.agh = add nuw nsw i64 %i.agd, %i.agg
  %i.agi = shl nuw nsw i64 %i.agh, 4
  %scevgep676 = getelementptr i8, ptr %scevgep674, i64 %i.agi ; 2 uses
  %i.agj = shl nuw nsw i64 %i.agd, 4
  %scevgep673 = getelementptr nuw i8, ptr %i.abz, i64 %i.agj ; 2 uses
  %bound0683 = icmp ult ptr %scevgep673, %scevgep678
  %bound1684 = icmp ult ptr %i.afr, %scevgep676
  %found.conflict685 = and i1 %bound0683, %bound1684
  %bound0686 = icmp ult ptr %scevgep673, %scevgep682
  %bound1687 = icmp ult ptr %i.afn, %scevgep676
  %found.conflict688 = and i1 %bound0686, %bound1687
  %conflict.rdx = or i1 %found.conflict685, %found.conflict688
  br i1 %conflict.rdx, label %scalar.ph689.preheader, label %vector.ph691

vector.ph691:                                     ; preds = %vector.memcheck672
  %n.vec692 = and i64 %i.afv, 8589934590          ; 3 uses
  %i.agk = add nuw nsw i64 %n.vec692, %i.afk
  %i.agl = load double, ptr %i.afn, align 8, !tbaa !67, !alias.scope !186
  %broadcast.splatinsert700 = insertelement <2 x double> poison, double %i.agl, i64 0
  %broadcast.splat701 = shufflevector <2 x double> %broadcast.splatinsert700, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.agm = load double, ptr %i.afr, align 8, !tbaa !67, !alias.scope !187
  %broadcast.splatinsert693 = insertelement <2 x double> poison, double %i.agm, i64 0
  %broadcast.splat694 = shufflevector <2 x double> %broadcast.splatinsert693, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.agn = fneg nsz <2 x double> %broadcast.splat694
  br label %vector.body695

vector.body695:                                   ; preds = %vector.body695, %vector.ph691
  %index696 = phi i64 [ 0, %vector.ph691 ], [ %index.next706, %vector.body695 ] ; 2 uses
  %i.ago = add nuw i64 %index696, %i.afk          ; 2 uses
  %i.agp = shl i64 %i.ago, 4
  %i.agq = getelementptr i8, ptr %i.abz, i64 %i.agp
  %i.agr = getelementptr i8, ptr %i.agq, i64 16
  %wide.vec697 = load <4 x double>, ptr %i.agr, align 8, !tbaa !67, !alias.scope !188, !noalias !189 ; 2 uses
  %strided.vec698 = shufflevector <4 x double> %wide.vec697, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec699 = shufflevector <4 x double> %wide.vec697, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ags = fmul nsz <2 x double> %strided.vec699, %i.agn
  %i.agt = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec698, <2 x double> %broadcast.splat701, <2 x double> %i.ags)
  %i.agu = fmul nsz <2 x double> %strided.vec699, %broadcast.splat701
  %i.agv = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec698, <2 x double> %broadcast.splat694, <2 x double> %i.agu)
  %i.agw = shl nuw nsw i64 %i.ago, 4
  %i.agx = getelementptr inbounds nuw i8, ptr %i.abz, i64 %i.agw ; 2 uses
  %wide.vec702 = load <4 x double>, ptr %i.agx, align 8, !tbaa !67, !alias.scope !188, !noalias !189 ; 2 uses
  %strided.vec703 = shufflevector <4 x double> %wide.vec702, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec704 = shufflevector <4 x double> %wide.vec702, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.agy = fsub nsz <2 x double> %strided.vec703, %i.agt
  %i.agz = fsub nsz <2 x double> %strided.vec704, %i.agv
  %interleaved.vec705 = shufflevector <2 x double> %i.agy, <2 x double> %i.agz, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec705, ptr %i.agx, align 8, !tbaa !67, !alias.scope !188, !noalias !189
  %index.next706 = add nuw i64 %index696, 2       ; 2 uses
  %i.aha = icmp eq i64 %index.next706, %n.vec692
  br i1 %i.aha, label %middle.block707, label %vector.body695, !llvm.loop !144

middle.block707:                                  ; preds = %vector.body695
  %cmp.n708 = icmp eq i64 %i.afv, %n.vec692
  br i1 %cmp.n708, label %._crit_edge.i70.i, label %scalar.ph689.preheader

scalar.ph689.preheader:                           ; preds = %vector.memcheck672, %.lr.ph.i60.i, %middle.block707
  %indvars.iv52.i66.i.ph = phi i64 [ %i.afk, %vector.memcheck672 ], [ %i.afk, %.lr.ph.i60.i ], [ %i.agk, %middle.block707 ]
  br label %scalar.ph689

._crit_edge.i70.i:                                ; preds = %scalar.ph689, %middle.block707
  %indvars.iv.next56.i71.i = add nuw nsw i64 %indvars.iv55.i61.i, 1 ; 2 uses
  %exitcond.not.i72.i = icmp eq i64 %indvars.iv.next56.i71.i, %wide.trip.count.i59.i
  %indvar.next = add i32 %indvar, 1
  %indvar.next681 = add i35 %indvar680, 1
  br i1 %exitcond.not.i72.i, label %.preheader.i73.i, label %.lr.ph.i60.i, !llvm.loop !137

scalar.ph689:                                     ; preds = %scalar.ph689.preheader, %scalar.ph689
  %indvars.iv52.i66.i = phi i64 [ %indvars.iv.next53.i67.i, %scalar.ph689 ], [ %indvars.iv52.i66.i.ph, %scalar.ph689.preheader ] ; 2 uses
  %indvars.iv.next53.i67.i = add nuw nsw i64 %indvars.iv52.i66.i, 1 ; 3 uses
  %.idx.i68.i = shl nuw nsw i64 %indvars.iv.next53.i67.i, 4
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.abz, i64 %.idx.i68.i
  %i.ahc = load double, ptr %i.afn, align 8, !tbaa !67 ; 2 uses
  %i.ahd = load double, ptr %i.afr, align 8, !tbaa !67 ; 2 uses
  %i.ahe = fneg nsz double %i.ahd
  %.idx63.i69.i = shl nuw nsw i64 %indvars.iv52.i66.i, 4
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.abz, i64 %.idx63.i69.i ; 2 uses
  %i.ahg = load <2 x double>, ptr %i.ahb, align 8, !tbaa !67 ; 2 uses
  %i.ahh = shufflevector <2 x double> %i.ahg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ahi = insertelement <2 x double> poison, double %i.ahe, i64 0
  %i.ahj = insertelement <2 x double> %i.ahi, double %i.ahc, i64 1
  %i.ahk = fmul nsz <2 x double> %i.ahh, %i.ahj
  %i.ahl = shufflevector <2 x double> %i.ahg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahm = insertelement <2 x double> poison, double %i.ahc, i64 0
  %i.ahn = insertelement <2 x double> %i.ahm, double %i.ahd, i64 1
  %i.aho = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahl, <2 x double> %i.ahn, <2 x double> %i.ahk)
  %i.ahp = load <2 x double>, ptr %i.ahf, align 8, !tbaa !67
  %i.ahq = fsub nsz <2 x double> %i.ahp, %i.aho
  store <2 x double> %i.ahq, ptr %i.ahf, align 8, !tbaa !67
  %i.ahr = trunc nuw i64 %indvars.iv.next53.i67.i to i32
  %i.ahs = icmp sgt i32 %i.aff, %i.ahr
  br i1 %i.ahs, label %scalar.ph689, label %._crit_edge.i70.i, !llvm.loop !145

.lr.ph49.i77.i:                                   ; preds = %bb.as, %.lr.ph49.preheader.i75.i
  %indvars.iv58.i78.i = phi i64 [ 0, %.lr.ph49.preheader.i75.i ], [ %indvars.iv.next59.i80.i, %bb.as ] ; 3 uses
  %.idx64.i79.i = shl nuw nsw i64 %indvars.iv58.i78.i, 4
  %i.aht = getelementptr inbounds nuw i8, ptr %i.abz, i64 %.idx64.i79.i
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  %i.ahv = load double, ptr %i.ahu, align 8, !tbaa !67 ; 2 uses
  %i.ahw = call nsz double @llvm.fabs.f64(double %i.ahv)
  %i.ahx = fcmp nsz ogt double %i.ahw, f0x3E80000000000000
  br i1 %i.ahx, label %normalize_coeffs.exit.sink.split.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph49.i77.i
  %indvars.iv.next59.i80.i = add nuw nsw i64 %indvars.iv58.i78.i, 1 ; 2 uses
  %exitcond62.not.i81.i = icmp eq i64 %indvars.iv.next59.i80.i, %wide.trip.count61.i76.i
  br i1 %exitcond62.not.i81.i, label %.loopexit.i264, label %.lr.ph49.i77.i, !llvm.loop !139

.loopexit.i264:                                   ; preds = %bb.as
  %i.ahy = zext nneg i32 %i.aff to i64            ; 6 uses
  %min.iters.check662 = icmp ult i32 %.pre.i, 6
  br i1 %min.iters.check662, label %scalar.ph661.preheader, label %vector.memcheck652

vector.memcheck652:                               ; preds = %.loopexit.i264
  %i.ahz = shl nuw nsw i64 %wide.trip.count61.i76.i, 3
  %scevgep653 = getelementptr i8, ptr %i.afe, i64 %i.ahz
  %scevgep654 = getelementptr i8, ptr %i.abz, i64 16
  %i.aia = shl nuw nsw i64 %i.ahy, 4
  %i.aib = sub nsw i64 %i.ahy, %wide.trip.count61.i76.i
  %i.aic = shl nsw i64 %i.aib, 4
  %scevgep655 = getelementptr i8, ptr %scevgep654, i64 %i.aic
  %scevgep656 = getelementptr i8, ptr %i.abz, i64 8
  %scevgep657 = getelementptr i8, ptr %scevgep656, i64 %i.aia
  %bound0658 = icmp ult ptr %i.afe, %scevgep657
  %bound1659 = icmp ult ptr %scevgep655, %scevgep653
  %found.conflict660 = and i1 %bound0658, %bound1659
  br i1 %found.conflict660, label %scalar.ph661.preheader, label %vector.ph663

vector.ph663:                                     ; preds = %vector.memcheck652
  %n.vec664 = and i64 %wide.trip.count61.i76.i, 4294967292 ; 4 uses
  %i.aid = sub nsw i64 %i.ahy, %n.vec664
  br label %vector.body665

vector.body665:                                   ; preds = %vector.body665, %vector.ph663
  %index666 = phi i64 [ 0, %vector.ph663 ], [ %index.next667, %vector.body665 ] ; 3 uses
  %i.aie = sub i64 %i.ahy, %index666              ; 4 uses
  %i.aif = shl nuw nsw i64 %i.aie, 4
  %i.aig = shl i64 %i.aie, 4
  %i.aih = shl i64 %i.aie, 4
  %i.aii = shl i64 %i.aie, 4
  %i.aij = getelementptr inbounds nuw i8, ptr %i.abz, i64 %i.aif
  %i.aik = getelementptr i8, ptr %i.abz, i64 %i.aig
  %i.ail = getelementptr i8, ptr %i.aik, i64 -16
  %i.aim = getelementptr i8, ptr %i.abz, i64 %i.aih
  %i.ain = getelementptr i8, ptr %i.aim, i64 -32
  %i.aio = getelementptr i8, ptr %i.abz, i64 %i.aii
  %i.aip = getelementptr i8, ptr %i.aio, i64 -48
  %i.aiq = load double, ptr %i.aij, align 8, !tbaa !67, !alias.scope !190
  %i.air = load double, ptr %i.ail, align 8, !tbaa !67, !alias.scope !190
  %i.ais = insertelement <2 x double> poison, double %i.aiq, i64 0
  %i.ait = insertelement <2 x double> %i.ais, double %i.air, i64 1
  %i.aiu = load double, ptr %i.ain, align 8, !tbaa !67, !alias.scope !190
  %i.aiv = load double, ptr %i.aip, align 8, !tbaa !67, !alias.scope !190
  %i.aiw = insertelement <2 x double> poison, double %i.aiu, i64 0
  %i.aix = insertelement <2 x double> %i.aiw, double %i.aiv, i64 1
  %i.aiy = getelementptr inbounds nuw [8 x i8], ptr %i.afe, i64 %index666 ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 16
  store <2 x double> %i.ait, ptr %i.aiy, align 8, !tbaa !67, !alias.scope !191, !noalias !190
  store <2 x double> %i.aix, ptr %i.aiz, align 8, !tbaa !67, !alias.scope !191, !noalias !190
  %index.next667 = add nuw i64 %index666, 4       ; 2 uses
  %i.aja = icmp eq i64 %index.next667, %n.vec664
  br i1 %i.aja, label %middle.block668, label %vector.body665, !llvm.loop !149

middle.block668:                                  ; preds = %vector.body665
  %cmp.n669 = icmp eq i64 %n.vec664, %wide.trip.count61.i76.i
  br i1 %cmp.n669, label %._crit_edge.i271, label %scalar.ph661.preheader

scalar.ph661.preheader:                           ; preds = %vector.memcheck652, %.loopexit.i264, %middle.block668
  %indvars.iv116.i.ph = phi i64 [ %i.ahy, %vector.memcheck652 ], [ %i.ahy, %.loopexit.i264 ], [ %i.aid, %middle.block668 ] ; 2 uses
  %indvars.iv.i267.ph = phi i64 [ 0, %vector.memcheck652 ], [ 0, %.loopexit.i264 ], [ %n.vec664, %middle.block668 ] ; 3 uses
  %xtraiter870 = and i64 %wide.trip.count61.i76.i, 3 ; 2 uses
  %lcmp.mod871.not = icmp eq i64 %xtraiter870, 0
  br i1 %lcmp.mod871.not, label %scalar.ph661.prol.loopexit, label %scalar.ph661.prol

scalar.ph661.prol:                                ; preds = %scalar.ph661.preheader, %scalar.ph661.prol
  %indvars.iv116.i.prol = phi i64 [ %indvars.iv.next117.i.prol, %scalar.ph661.prol ], [ %indvars.iv116.i.ph, %scalar.ph661.preheader ] ; 2 uses
  %indvars.iv.i267.prol = phi i64 [ %indvars.iv.next.i269.prol, %scalar.ph661.prol ], [ %indvars.iv.i267.ph, %scalar.ph661.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph661.prol ], [ 0, %scalar.ph661.preheader ]
  %.idx.i268.prol = shl nuw nsw i64 %indvars.iv116.i.prol, 4
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.abz, i64 %.idx.i268.prol
end_hunk_0
