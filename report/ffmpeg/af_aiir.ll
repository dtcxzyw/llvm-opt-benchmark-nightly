Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_aiir?download=true
inline.NumInlined: 30
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 47
begin_hunk_0_@config_output:bb.a
  br i1 %or.cond46.i207.i, label %draw_line.exit218.i, label %.lr.ph.i208.i

.lr.ph.i208.i:                                    ; preds = %draw_line.exit.i
  %i.ys = icmp samesign ugt i32 %i.wx, %i.yi
  %i.yt = sub nsw i32 0, %i.yi
  %i.yu = select i1 %i.ys, i32 %i.wx, i32 %i.yt
  %i.yv = sdiv i32 %i.yu, 2
  %i.yw = sub nsw i32 0, %i.wx
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i208.i
  %.049.i209.i = phi i32 [ %i.yv, %.lr.ph.i208.i ], [ %.2.i215.i, %bb.ag ] ; 3 uses
  %.03848.i210.i = phi i32 [ %i.wu, %.lr.ph.i208.i ], [ %.139.i212.i, %bb.ag ]
  %.04047.i211.i = phi i32 [ %i.ws, %.lr.ph.i208.i ], [ %.141.i214.i, %bb.ag ]
  %i.yx = icmp sgt i32 %.049.i209.i, %i.yw        ; 2 uses
  %i.yy = sext i1 %i.yx to i32
  %.139.i212.i = add nsw i32 %.03848.i210.i, %i.yy ; 3 uses
  %i.yz = select i1 %i.yx, i32 %i.yi, i32 0
  %.1.i213.i = sub i32 %.049.i209.i, %i.yz
  %i.za = icmp slt i32 %.049.i209.i, %i.yi        ; 2 uses
  %i.zb = select i1 %i.za, i32 %i.yk, i32 0
  %.141.i214.i = add nsw i32 %i.zb, %.04047.i211.i ; 3 uses
  %i.zc = select i1 %i.za, i32 %i.wx, i32 0
  %.2.i215.i = add nsw i32 %.1.i213.i, %i.zc
  %i.zd = load ptr, ptr %i.lm, align 8, !tbaa !30
  %i.ze = load i32, ptr %i.ls, align 8, !tbaa !31
  %i.zf = mul nsw i32 %i.ze, %.141.i214.i
  %i.zg = sext i32 %i.zf to i64
  %i.zh = getelementptr inbounds i8, ptr %i.zd, i64 %i.zg
  %i.zi = shl nsw i32 %.139.i212.i, 2
  %i.zj = sext i32 %i.zi to i64
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
  %scevgep716.a = getelementptr i8, ptr %i.acb, i64 32
  %scevgep719.a = getelementptr i8, ptr %i.acf, i64 16
  %scevgep721.a = getelementptr i8, ptr %i.acf, i64 8
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
  %smax732 = call i32 @llvm.smax.i32(i32 %i.acg, i32 %indvars.iv.in.i.i)
  %i.acm = trunc i35 %indvar722 to i32
  %i.acn = sub i32 %i.acm, %i.acg
  %i.aco = add i32 %smax732, %i.acn               ; 2 uses
  %i.acp = zext i32 %i.aco to i64
  %i.acq = add nuw nsw i64 %i.acp, 1              ; 2 uses
  %indvars.iv.i.i258 = add i32 %indvars.iv.in.i.i, -1 ; 2 uses
  %i.acr = zext i32 %indvars.iv.i.i258 to i64     ; 4 uses
  %i.acs = shl nuw i64 %indvars.iv55.i.i, 33
  %sext.i.i = add i64 %i.acs, -8589934592
  %i.act = ashr exact i64 %sext.i.i, 29
  %i.acu = getelementptr inbounds i8, ptr %i.acf, i64 %i.act ; 3 uses
  %indvars.iv55.tr.i.i = trunc i64 %indvars.iv55.i.i to i32
  %i.acv = shl i32 %indvars.iv55.tr.i.i, 1
  %i.acw = add i32 %i.acv, -1
  %i.acx = sext i32 %i.acw to i64
  %i.acy = getelementptr inbounds [8 x i8], ptr %i.acf, i64 %i.acx ; 3 uses
  %min.iters.check734 = icmp eq i32 %i.aco, 0
  br i1 %min.iters.check734, label %scalar.ph733.preheader, label %vector.memcheck712

vector.memcheck712:                               ; preds = %.lr.ph.i.i257
  %i.acz = shl nuw i35 %indvar722, 4
  %1 = sext i35 %i.acz to i64
  %scevgep724 = getelementptr i8, ptr %scevgep721.a, i64 %1
  %2 = shl nuw i32 %indvar713, 1
  %i.ada = sext i32 %2 to i64
  %3 = shl nsw i64 %i.ada, 3
  %scevgep720.a = getelementptr i8, ptr %scevgep719.a, i64 %3
  %i.adb = xor i32 %indvar713, -1
  %i.adc = add i32 %i.acg, %i.adb
  %i.add = zext i32 %i.adc to i64                 ; 2 uses
  %smax717 = call i32 @llvm.smax.i32(i32 %i.acg, i32 %indvars.iv.in.i.i)
  %i.ade = sub i32 %indvar713, %i.acg
  %i.adf = add i32 %smax717, %i.ade
  %i.adg = zext i32 %i.adf to i64
  %i.adh = add nuw nsw i64 %i.add, %i.adg
  %i.adi = shl nuw nsw i64 %i.adh, 4
  %scevgep718 = getelementptr i8, ptr %scevgep716.a, i64 %i.adi ; 2 uses
  %i.adj = shl nuw nsw i64 %i.add, 4
  %scevgep715 = getelementptr nuw i8, ptr %i.acb, i64 %i.adj ; 2 uses
  %bound0725 = icmp ult ptr %scevgep715, %scevgep720.a
  %bound1726 = icmp ult ptr %i.acy, %scevgep718
  %found.conflict727 = and i1 %bound0725, %bound1726
  %bound0728 = icmp ult ptr %scevgep715, %scevgep724
  %bound1729 = icmp ult ptr %i.acu, %scevgep718
  %found.conflict730 = and i1 %bound0728, %bound1729
  %conflict.rdx731 = or i1 %found.conflict727, %found.conflict730
  br i1 %conflict.rdx731, label %scalar.ph733.preheader, label %vector.ph735

vector.ph735:                                     ; preds = %vector.memcheck712
  %n.vec736 = and i64 %i.acq, 8589934590          ; 3 uses
  %i.adk = add nuw nsw i64 %n.vec736, %i.acr
  %i.adl = load double, ptr %i.acu, align 8, !tbaa !77, !alias.scope !122
  %broadcast.splatinsert744 = insertelement <2 x double> poison, double %i.adl, i64 0
  %broadcast.splat745 = shufflevector <2 x double> %broadcast.splatinsert744, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.adm = load double, ptr %i.acy, align 8, !tbaa !77, !alias.scope !125
  %broadcast.splatinsert737 = insertelement <2 x double> poison, double %i.adm, i64 0
  %broadcast.splat738 = shufflevector <2 x double> %broadcast.splatinsert737, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.adn = fneg nsz <2 x double> %broadcast.splat738
  br label %vector.body739

vector.body739:                                   ; preds = %vector.body739, %vector.ph735
  %index740 = phi i64 [ 0, %vector.ph735 ], [ %index.next750, %vector.body739 ] ; 2 uses
  %i.ado = add nuw i64 %index740, %i.acr          ; 2 uses
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
  %cmp.n752 = icmp eq i64 %i.acq, %n.vec736
  br i1 %cmp.n752, label %._crit_edge.i.i260, label %scalar.ph733.preheader

scalar.ph733.preheader:                           ; preds = %vector.memcheck712, %.lr.ph.i.i257, %middle.block751
  %indvars.iv52.i.i.ph = phi i64 [ %i.acr, %vector.memcheck712 ], [ %i.acr, %.lr.ph.i.i257 ], [ %i.adk, %middle.block751 ]
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
  %i.aef = load double, ptr %i.acu, align 8, !tbaa !77 ; 2 uses
  %i.aeg = load double, ptr %i.acy, align 8, !tbaa !77 ; 2 uses
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
  %scevgep678.a = getelementptr i8, ptr %i.afd, i64 16
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
  %smax690 = call i32 @llvm.smax.i32(i32 %i.afe, i32 %indvars.iv.in.i62.i)
  %i.afj = trunc i35 %indvar681 to i32
  %i.afk = sub i32 %i.afj, %i.afe
  %i.afl = add i32 %smax690, %i.afk               ; 2 uses
  %i.afm = zext i32 %i.afl to i64
  %i.afn = add nuw nsw i64 %i.afm, 1              ; 2 uses
  %indvars.iv.i63.i = add i32 %indvars.iv.in.i62.i, -1 ; 2 uses
  %i.afo = zext i32 %indvars.iv.i63.i to i64      ; 4 uses
  %i.afp = shl nuw i64 %indvars.iv55.i61.i, 33
  %sext.i64.i = add i64 %i.afp, -8589934592
  %i.afq = ashr exact i64 %sext.i64.i, 29
  %i.afr = getelementptr inbounds i8, ptr %i.afd, i64 %i.afq ; 3 uses
  %indvars.iv55.tr.i65.i = trunc i64 %indvars.iv55.i61.i to i32
  %i.afs = shl i32 %indvars.iv55.tr.i65.i, 1
  %i.aft = add i32 %i.afs, -1
  %i.afu = sext i32 %i.aft to i64
  %i.afv = getelementptr inbounds [8 x i8], ptr %i.afd, i64 %i.afu ; 3 uses
  %min.iters.check692 = icmp eq i32 %i.afl, 0
  br i1 %min.iters.check692, label %scalar.ph691.preheader, label %vector.memcheck673

vector.memcheck673:                               ; preds = %.lr.ph.i60.i
  %i.afw = shl nuw i35 %indvar681, 4
  %4 = sext i35 %i.afw to i64
  %scevgep683 = getelementptr i8, ptr %scevgep680, i64 %4
  %5 = shl nuw i32 %indvar, 1
  %i.afx = sext i32 %5 to i64
  %6 = shl nsw i64 %i.afx, 3
  %scevgep679.a = getelementptr i8, ptr %scevgep678.a, i64 %6
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
  %bound0684 = icmp ult ptr %scevgep674, %scevgep679.a
  %bound1685 = icmp ult ptr %i.afv, %scevgep677
  %found.conflict686 = and i1 %bound0684, %bound1685
  %bound0687 = icmp ult ptr %scevgep674, %scevgep683
  %bound1688 = icmp ult ptr %i.afr, %scevgep677
  %found.conflict689 = and i1 %bound0687, %bound1688
  %conflict.rdx = or i1 %found.conflict686, %found.conflict689
  br i1 %conflict.rdx, label %scalar.ph691.preheader, label %vector.ph693

vector.ph693:                                     ; preds = %vector.memcheck673
  %n.vec694 = and i64 %i.afn, 8589934590          ; 3 uses
  %i.agh = add nuw nsw i64 %n.vec694, %i.afo
  %i.agi = load double, ptr %i.afr, align 8, !tbaa !77, !alias.scope !134
  %broadcast.splatinsert702 = insertelement <2 x double> poison, double %i.agi, i64 0
  %broadcast.splat703 = shufflevector <2 x double> %broadcast.splatinsert702, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.agj = load double, ptr %i.afv, align 8, !tbaa !77, !alias.scope !137
  %broadcast.splatinsert695 = insertelement <2 x double> poison, double %i.agj, i64 0
  %broadcast.splat696 = shufflevector <2 x double> %broadcast.splatinsert695, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.agk = fneg nsz <2 x double> %broadcast.splat696
  br label %vector.body697

vector.body697:                                   ; preds = %vector.body697, %vector.ph693
  %index698 = phi i64 [ 0, %vector.ph693 ], [ %index.next708, %vector.body697 ] ; 2 uses
  %i.agl = add nuw i64 %index698, %i.afo          ; 2 uses
  %i.agm = shl i64 %i.agl, 4
  %i.agn = getelementptr i8, ptr %i.abw, i64 %i.agm
  %i.ago = getelementptr i8, ptr %i.agn, i64 16
  %wide.vec699 = load <4 x double>, ptr %i.ago, align 8, !tbaa !77, !alias.scope !139, !noalias !141 ; 2 uses
  %strided.vec700 = shufflevector <4 x double> %wide.vec699, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec701 = shufflevector <4 x double> %wide.vec699, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.agp = fmul nsz <2 x double> %strided.vec701, %i.agk
  %i.agq = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec700, <2 x double> %broadcast.splat703, <2 x double> %i.agp)
  %i.agr = fmul nsz <2 x double> %strided.vec701, %broadcast.splat703
  %i.ags = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec700, <2 x double> %broadcast.splat696, <2 x double> %i.agr)
  %i.agt = shl nuw nsw i64 %i.agl, 4
  %i.agu = getelementptr inbounds nuw i8, ptr %i.abw, i64 %i.agt ; 2 uses
  %wide.vec704 = load <4 x double>, ptr %i.agu, align 8, !tbaa !77, !alias.scope !139, !noalias !141 ; 2 uses
  %strided.vec705 = shufflevector <4 x double> %wide.vec704, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec706 = shufflevector <4 x double> %wide.vec704, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.agv = fsub nsz <2 x double> %strided.vec705, %i.agq
  %i.agw = fsub nsz <2 x double> %strided.vec706, %i.ags
  %interleaved.vec707 = shufflevector <2 x double> %i.agv, <2 x double> %i.agw, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec707, ptr %i.agu, align 8, !tbaa !77, !alias.scope !139, !noalias !141
  %index.next708 = add nuw i64 %index698, 2       ; 2 uses
  %i.agx = icmp eq i64 %index.next708, %n.vec694
  br i1 %i.agx, label %middle.block709, label %vector.body697, !llvm.loop !142

middle.block709:                                  ; preds = %vector.body697
  %cmp.n710 = icmp eq i64 %i.afn, %n.vec694
  br i1 %cmp.n710, label %._crit_edge.i70.i, label %scalar.ph691.preheader

scalar.ph691.preheader:                           ; preds = %vector.memcheck673, %.lr.ph.i60.i, %middle.block709
  %indvars.iv52.i66.i.ph = phi i64 [ %i.afo, %vector.memcheck673 ], [ %i.afo, %.lr.ph.i60.i ], [ %i.agh, %middle.block709 ]
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
  %i.ahc = load double, ptr %i.afr, align 8, !tbaa !77 ; 2 uses
  %i.ahd = load double, ptr %i.afv, align 8, !tbaa !77 ; 2 uses
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
  %xtraiter873 = and i64 %wide.trip.count61.i76.i, 3 ; 2 uses
  %lcmp.mod874.not = icmp eq i64 %xtraiter873, 0
  br i1 %lcmp.mod874.not, label %scalar.ph662.prol.loopexit, label %scalar.ph662.prol

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
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter873
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
end_hunk_0
begin_hunk_1_@decompose_zp2biquads:bb.a
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @convert_serial2parallel(ptr nofree readonly captures(none) %.72.val, i32 noundef %0) unnamed_addr #1 {
bb.a:
  %.not15 = icmp sgt i32 %0, 0
  br i1 %.not15, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.72.val, i64 104
  %wide.trip.count48 = zext nneg i32 %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph18, %._crit_edge14
  %indvars.iv45 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next46, %._crit_edge14 ] ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv45 ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31
  %. = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %i.f) ; 3 uses
  %i.g = add nsw i32 %., 1
  %i.h = sdiv i32 %i.g, 2                         ; 6 uses
  %i.i = shl nsw i32 %i.h, 1                      ; 8 uses
  %i.j = or disjoint i32 %i.i, 1                  ; 3 uses
  %i.k = sext i32 %i.j to i64                     ; 5 uses
  %i.l = tail call noalias ptr @av_calloc(i64 noundef %i.k, i64 noundef 8) #14 ; 8 uses
  %i.m = tail call noalias ptr @av_calloc(i64 noundef %i.k, i64 noundef 8) #14 ; 8 uses
  %i.n = tail call noalias ptr @av_calloc(i64 noundef %i.k, i64 noundef 8) #14 ; 16 uses
  %i.o = mul nsw i32 %i.i, %i.h
  %i.p = sext i32 %i.o to i64
  %i.q = tail call noalias ptr @av_calloc(i64 noundef %i.p, i64 noundef 32) #14 ; 15 uses
  %i.r = insertelement <4 x ptr> poison, ptr %i.l, i64 0
  %i.s = insertelement <4 x ptr> %i.r, ptr %i.m, i64 1
  %i.t = insertelement <4 x ptr> %i.s, ptr %i.n, i64 2
  %i.u = insertelement <4 x ptr> %i.t, ptr %i.q, i64 3
  %.fr = freeze <4 x ptr> %i.u
  %i.v = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.w = bitcast <4 x i1> %i.v to i4
  %i.x = icmp eq i4 %i.w, 0
  br i1 %i.x, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  tail call void @av_free(ptr noundef %i.l) #14
  tail call void @av_free(ptr noundef %i.m) #14
  tail call void @av_free(ptr noundef %i.n) #14
  tail call void @av_free(ptr noundef %i.q) #14
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.y = shl i32 %i.h, 2                          ; 2 uses
  %i.z = mul nsw i32 %i.y, %i.h
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.aa ; 16 uses
  store double 1.000000e+00, ptr %i.l, align 8, !tbaa !77
  %i.ac = icmp sgt i32 %., 0
  br i1 %i.ac, label %.lr.ph.preheader.i.preheader, label %solve.exit.thread

.lr.ph.preheader.i.preheader:                     ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !187
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  br label %.lr.ph.preheader.i

.lr.ph11:                                         ; preds = %biquad_process.exit.loopexit
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %wide.trip.count.i118 = zext nneg i32 %i.i to i64 ; 2 uses
  %i.ag = shl nuw nsw i64 %wide.trip.count.i118, 3
  %i.ah = add nsw i32 %i.i, -1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 3
  %i.ak = shl nuw nsw i64 %i.k, 3
  %smax35 = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1)
  %wide.trip.count36 = zext nneg i32 %smax35 to i64
  br label %.lr.ph.i119.preheader

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %biquad_process.exit.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.i.preheader ], [ %indvars.iv.next, %biquad_process.exit.loopexit ] ; 3 uses
  %i.al = getelementptr inbounds nuw [64 x i8], ptr %i.ae, i64 %indvars.iv ; 3 uses
  %.not111 = icmp eq i64 %indvars.iv, 0
  %i.am = select i1 %.not111, ptr %i.l, ptr %i.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ao = load <2 x double>, ptr %i.an, align 8, !tbaa !77
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !77
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = load <2 x double>, ptr %i.ar, align 8, !tbaa !77
  %i.at = fneg nsz <2 x double> %i.as             ; 2 uses
  %i.au = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> %i.at, <2 x i32> <i32 0, i32 2>
  %shift = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.aw = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.bh, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !77
  %i.az = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.bb = insertelement <2 x double> poison, double %i.ay, i64 0 ; 2 uses
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.bc, <2 x double> %i.az) ; 4 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0
  store double %i.be, ptr %i.ba, align 8, !tbaa !77
  %foldExtExtBinop = fmul nsz <2 x double> %i.bd, %shift
  %i.bf = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.bd, <2 x i32> <i32 0, i32 3>
  %i.bg = shufflevector <2 x double> %i.bb, <2 x double> %i.bd, <2 x i32> <i32 0, i32 2>
  %i.bh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.bg, <2 x double> %i.bf)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %biquad_process.exit.loopexit, label %.lr.ph.i, !llvm.loop !194

biquad_process.exit.loopexit:                     ; preds = %.lr.ph.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph11, label %.lr.ph.preheader.i, !llvm.loop !195

._crit_edge:                                      ; preds = %biquad_process.exit125
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  %i.bk = zext nneg i32 %i.i to i64               ; 34 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 1) ; 2 uses
  %i.bl = add nsw i64 %i.bk, -2
  %xtraiter102 = and i64 %umax, 3                 ; 3 uses
  %i.bm = icmp ult i32 %i.i, 4
  %unroll_iter106 = and i64 %umax, 2147483644
  %lcmp.mod104.not = icmp eq i64 %xtraiter102, 0
  %lcmp.mod105 = icmp ne i64 %xtraiter102, 0
  br label %.preheader113.i

.loopexit.i:                                      ; preds = %._crit_edge.us120.i, %.preheader111.i.prol.loopexit, %.preheader111.i, %.split.us.i
  %indvars.iv.next144189.i = phi i64 [ 1, %.preheader111.i.prol.loopexit ], [ %indvars.iv.next144.i, %.split.us.i ], [ 1, %.preheader111.i ], [ %indvars.iv.next144.i, %._crit_edge.us120.i ] ; 2 uses
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1
  %exitcond170.not.i = icmp eq i64 %indvars.iv.next144189.i, %i.bk
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond170.not.i, label %.preheader109.i, label %.preheader113.i, !llvm.loop !196

.preheader113.i:                                  ; preds = %.loopexit.i, %._crit_edge
  %indvar = phi i64 [ %indvar.next, %.loopexit.i ], [ 0, %._crit_edge ] ; 3 uses
  %indvars.iv156.i = phi i64 [ %indvars.iv.next157.i, %.loopexit.i ], [ 1, %._crit_edge ] ; 6 uses
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144189.i, %.loopexit.i ], [ 0, %._crit_edge ] ; 13 uses
  %indvars168.i = trunc i64 %indvars.iv143.i to i32 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv143.i, 0
  %i.bn = mul nuw nsw i64 %indvars.iv143.i, %i.bk ; 2 uses
  br i1 %.not.i, label %.preheader112.i.preheader, label %.preheader112.us.preheader.i

.preheader112.i.preheader:                        ; preds = %.preheader113.i
  br i1 %i.bm, label %.preheader112.i.epil.preheader, label %.preheader112.i

.preheader112.us.preheader.i:                     ; preds = %.preheader113.i
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ab, i64 %i.bn ; 6 uses
  %invariant.gep199.i = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv143.i
  %xtraiter = and i64 %indvars.iv143.i, 3         ; 3 uses
  %i.bo = icmp ult i64 %indvars.iv143.i, 4
  %unroll_iter = and i64 %indvars.iv143.i, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod93 = icmp ne i64 %xtraiter, 0
  br label %.preheader112.us.i

.preheader112.us.i:                               ; preds = %._crit_edge.us.i, %.preheader112.us.preheader.i
  %indvars.iv145.i = phi i64 [ %indvars.iv143.i, %.preheader112.us.preheader.i ], [ %indvars.iv.next146.i, %._crit_edge.us.i ] ; 4 uses
  %invariant.gep197.i = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv145.i ; 5 uses
  br i1 %i.bo, label %.epil.preheader, label %.preheader112.us.i.new

.preheader112.us.i.new:                           ; preds = %.preheader112.us.i, %.preheader112.us.i.new
  %indvars.iv.i112 = phi i64 [ %indvars.iv.next.i113.3, %.preheader112.us.i.new ], [ 0, %.preheader112.us.i ] ; 6 uses
  %.0105114.us.i = phi double [ %i.ce, %.preheader112.us.i.new ], [ 0.000000e+00, %.preheader112.us.i ]
  %niter = phi i64 [ %niter.next.3, %.preheader112.us.i.new ], [ 0, %.preheader112.us.i ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i112
  %i.bp = load double, ptr %gep.i, align 8, !tbaa !77
  %i.bq = mul nuw nsw i64 %indvars.iv.i112, %i.bk
  %gep198.i = getelementptr [8 x i8], ptr %invariant.gep197.i, i64 %i.bq
  %i.br = load double, ptr %gep198.i, align 8, !tbaa !77
  %i.bs = tail call nsz double @llvm.fmuladd.f64(double %i.bp, double %i.br, double %.0105114.us.i)
  %indvars.iv.next.i113 = or disjoint i64 %indvars.iv.i112, 1 ; 2 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i113
  %i.bt = load double, ptr %gep.i.1, align 8, !tbaa !77
  %i.bu = mul nuw nsw i64 %indvars.iv.next.i113, %i.bk
  %gep198.i.1 = getelementptr [8 x i8], ptr %invariant.gep197.i, i64 %i.bu
  %i.bv = load double, ptr %gep198.i.1, align 8, !tbaa !77
  %i.bw = tail call nsz double @llvm.fmuladd.f64(double %i.bt, double %i.bv, double %i.bs)
  %indvars.iv.next.i113.1 = or disjoint i64 %indvars.iv.i112, 2 ; 2 uses
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i113.1
  %i.bx = load double, ptr %gep.i.2, align 8, !tbaa !77
  %i.by = mul nuw nsw i64 %indvars.iv.next.i113.1, %i.bk
  %gep198.i.2 = getelementptr [8 x i8], ptr %invariant.gep197.i, i64 %i.by
  %i.bz = load double, ptr %gep198.i.2, align 8, !tbaa !77
  %i.ca = tail call nsz double @llvm.fmuladd.f64(double %i.bx, double %i.bz, double %i.bw)
  %indvars.iv.next.i113.2 = or disjoint i64 %indvars.iv.i112, 3 ; 2 uses
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i113.2
  %i.cb = load double, ptr %gep.i.3, align 8, !tbaa !77
  %i.cc = mul nuw nsw i64 %indvars.iv.next.i113.2, %i.bk
  %gep198.i.3 = getelementptr [8 x i8], ptr %invariant.gep197.i, i64 %i.cc
  %i.cd = load double, ptr %gep198.i.3, align 8, !tbaa !77
  %i.ce = tail call nsz double @llvm.fmuladd.f64(double %i.cb, double %i.cd, double %i.ca) ; 3 uses
  %indvars.iv.next.i113.3 = add nuw nsw i64 %indvars.iv.i112, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.preheader112.us.i.new, !llvm.loop !197

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader112.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader112.us.i
  %indvars.iv.i112.epil.init = phi i64 [ 0, %.preheader112.us.i ], [ %indvars.iv.next.i113.3, %._crit_edge.us.i.unr-lcssa ]
  %.0105114.us.i.epil.init = phi double [ 0.000000e+00, %.preheader112.us.i ], [ %i.ce, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod93)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i112.epil = phi i64 [ %indvars.iv.i112.epil.init, %.epil.preheader ], [ %indvars.iv.next.i113.epil, %bb.d ] ; 3 uses
  %.0105114.us.i.epil = phi double [ %.0105114.us.i.epil.init, %.epil.preheader ], [ %i.ci, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i112.epil
  %i.cf = load double, ptr %gep.i.epil, align 8, !tbaa !77
  %i.cg = mul nuw nsw i64 %indvars.iv.i112.epil, %i.bk
  %gep198.i.epil = getelementptr [8 x i8], ptr %invariant.gep197.i, i64 %i.cg
  %i.ch = load double, ptr %gep198.i.epil, align 8, !tbaa !77
  %i.ci = tail call nsz double @llvm.fmuladd.f64(double %i.cf, double %i.ch, double %.0105114.us.i.epil) ; 2 uses
  %indvars.iv.next.i113.epil = add nuw nsw i64 %indvars.iv.i112.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.d, !llvm.loop !198

._crit_edge.us.i:                                 ; preds = %bb.d, %._crit_edge.us.i.unr-lcssa
  %.lcssa = phi double [ %i.ce, %._crit_edge.us.i.unr-lcssa ], [ %i.ci, %bb.d ]
  %i.cj = mul nuw nsw i64 %indvars.iv145.i, %i.bk
  %gep200.i = getelementptr [8 x i8], ptr %invariant.gep199.i, i64 %i.cj
  %i.ck = load double, ptr %gep200.i, align 8, !tbaa !77
  %i.cl = fsub nsz double %i.ck, %.lcssa
  %gep202.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv145.i
  store double %i.cl, ptr %gep202.i, align 8, !tbaa !77
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1 ; 2 uses
  %i.cm = icmp samesign ult i64 %indvars.iv.next146.i, %i.bk
  br i1 %i.cm, label %.preheader112.us.i, label %.split.us.i, !llvm.loop !199

.preheader112.i:                                  ; preds = %.preheader112.i.preheader, %.preheader112.i
  %indvars.iv148.i = phi i64 [ %indvars.iv.next149.i.3, %.preheader112.i ], [ 0, %.preheader112.i.preheader ] ; 6 uses
  %niter107 = phi i64 [ %niter107.next.3, %.preheader112.i ], [ 0, %.preheader112.i.preheader ]
  %i.cn = mul nuw nsw i64 %indvars.iv148.i, %i.bk
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !77
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv148.i
  store double %i.cp, ptr %i.cq, align 8, !tbaa !77
  %indvars.iv.next149.i = or disjoint i64 %indvars.iv148.i, 1 ; 2 uses
  %i.cr = mul nuw nsw i64 %indvars.iv.next149.i, %i.bk
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !77
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next149.i
  store double %i.ct, ptr %i.cu, align 8, !tbaa !77
  %indvars.iv.next149.i.1 = or disjoint i64 %indvars.iv148.i, 2 ; 2 uses
  %i.cv = mul nuw nsw i64 %indvars.iv.next149.i.1, %i.bk
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !77
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next149.i.1
  store double %i.cx, ptr %i.cy, align 8, !tbaa !77
  %indvars.iv.next149.i.2 = or disjoint i64 %indvars.iv148.i, 3 ; 2 uses
  %i.cz = mul nuw nsw i64 %indvars.iv.next149.i.2, %i.bk
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !77
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next149.i.2
  store double %i.db, ptr %i.dc, align 8, !tbaa !77
  %indvars.iv.next149.i.3 = add nuw nsw i64 %indvars.iv148.i, 4 ; 2 uses
  %niter107.next.3 = add i64 %niter107, 4         ; 2 uses
  %niter107.ncmp.3 = icmp eq i64 %niter107.next.3, %unroll_iter106
  br i1 %niter107.ncmp.3, label %.split.us.thread.i.unr-lcssa, label %.preheader112.i, !llvm.loop !199

.split.us.i:                                      ; preds = %._crit_edge.us.i
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1 ; 3 uses
  %i.dd = icmp samesign ult i64 %indvars.iv.next144.i, %i.bk
  br i1 %i.dd, label %.preheader111.us.preheader.i, label %.loopexit.i

.split.us.thread.i.unr-lcssa:                     ; preds = %.preheader112.i
  br i1 %lcmp.mod104.not, label %.split.us.thread.i, label %.preheader112.i.epil.preheader

.preheader112.i.epil.preheader:                   ; preds = %.split.us.thread.i.unr-lcssa, %.preheader112.i.preheader
  %indvars.iv148.i.epil.init = phi i64 [ 0, %.preheader112.i.preheader ], [ %indvars.iv.next149.i.3, %.split.us.thread.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod105)
  br label %.preheader112.i.epil

.preheader112.i.epil:                             ; preds = %.preheader112.i.epil, %.preheader112.i.epil.preheader
  %indvars.iv148.i.epil = phi i64 [ %indvars.iv.next149.i.epil, %.preheader112.i.epil ], [ %indvars.iv148.i.epil.init, %.preheader112.i.epil.preheader ] ; 3 uses
  %epil.iter103 = phi i64 [ %epil.iter103.next, %.preheader112.i.epil ], [ 0, %.preheader112.i.epil.preheader ]
  %i.de = mul nuw nsw i64 %indvars.iv148.i.epil, %i.bk
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !77
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv148.i.epil
  store double %i.dg, ptr %i.dh, align 8, !tbaa !77
  %indvars.iv.next149.i.epil = add nuw nsw i64 %indvars.iv148.i.epil, 1
  %epil.iter103.next = add i64 %epil.iter103, 1   ; 2 uses
  %epil.iter103.cmp.not = icmp eq i64 %epil.iter103.next, %xtraiter102
  br i1 %epil.iter103.cmp.not, label %.split.us.thread.i, label %.preheader112.i.epil, !llvm.loop !200

.split.us.thread.i:                               ; preds = %.preheader112.i.epil, %.split.us.thread.i.unr-lcssa
  %i.di = mul nuw nsw i32 %i.i, %indvars168.i
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.dj ; 3 uses
  %i.dl = and i64 %indvar, 1
  %lcmp.mod109.not.not = icmp eq i64 %i.dl, 0
  br i1 %lcmp.mod109.not.not, label %.preheader111.i.prol, label %.preheader111.i.prol.loopexit

.preheader111.i.prol:                             ; preds = %.split.us.thread.i
  %i.dm = load double, ptr %i.dk, align 8, !tbaa !77
  %i.dn = fdiv nsz double 1.000000e+00, %i.dm
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv156.i
  %i.dp = load double, ptr %i.do, align 8, !tbaa !77
  %i.dq = fmul nsz double %i.dn, %i.dp
  %i.dr = mul nuw nsw i64 %indvars.iv156.i, %i.bk
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.dr
  store double %i.dq, ptr %i.ds, align 8, !tbaa !77
  %indvars.iv.next164.i.prol = add nuw nsw i64 %indvars.iv156.i, 1
  br label %.preheader111.i.prol.loopexit

.preheader111.i.prol.loopexit:                    ; preds = %.preheader111.i.prol, %.split.us.thread.i
  %indvars.iv163.i.unr = phi i64 [ %indvars.iv156.i, %.split.us.thread.i ], [ %indvars.iv.next164.i.prol, %.preheader111.i.prol ]
  %i.dt = icmp eq i64 %i.bl, %indvar
  br i1 %i.dt, label %.loopexit.i, label %.preheader111.i

.preheader111.us.preheader.i:                     ; preds = %.split.us.i
  %i.du = mul nuw nsw i32 %i.i, %indvars168.i
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv143.i ; 7 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dv
  %invariant.gep207.i = getelementptr [8 x i8], ptr %i.q, i64 %i.bn
  %xtraiter95 = and i64 %indvars.iv143.i, 3       ; 3 uses
  %i.dy = icmp ult i64 %indvars.iv143.i, 4
  %unroll_iter100 = and i64 %indvars.iv143.i, -4
  %lcmp.mod97.not = icmp eq i64 %xtraiter95, 0
  %lcmp.mod99 = icmp ne i64 %xtraiter95, 0
  br label %.preheader111.us.i

.preheader111.us.i:                               ; preds = %._crit_edge.us120.i, %.preheader111.us.preheader.i
  %indvars.iv158.i = phi i64 [ %indvars.iv156.i, %.preheader111.us.preheader.i ], [ %indvars.iv.next159.i, %._crit_edge.us120.i ] ; 3 uses
  %i.dz = mul nuw nsw i64 %indvars.iv158.i, %i.bk ; 2 uses
  %invariant.gep203.i = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.dz ; 5 uses
  br i1 %i.dy, label %.epil.preheader94, label %.preheader111.us.i.new

.preheader111.us.i.new:                           ; preds = %.preheader111.us.i, %.preheader111.us.i.new
  %indvars.iv151.i = phi i64 [ %indvars.iv.next152.i.3, %.preheader111.us.i.new ], [ 0, %.preheader111.us.i ] ; 6 uses
  %.1117.us.i = phi double [ %i.ep, %.preheader111.us.i.new ], [ 0.000000e+00, %.preheader111.us.i ]
  %niter101 = phi i64 [ %niter101.next.3, %.preheader111.us.i.new ], [ 0, %.preheader111.us.i ]
  %gep204.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep203.i, i64 %indvars.iv151.i
  %i.ea = load double, ptr %gep204.i, align 8, !tbaa !77
  %i.eb = mul nuw nsw i64 %indvars.iv151.i, %i.bk
  %gep206.i = getelementptr [8 x i8], ptr %i.dw, i64 %i.eb
  %i.ec = load double, ptr %gep206.i, align 8, !tbaa !77
  %i.ed = tail call nsz double @llvm.fmuladd.f64(double %i.ea, double %i.ec, double %.1117.us.i)
  %indvars.iv.next152.i = or disjoint i64 %indvars.iv151.i, 1 ; 2 uses
  %gep204.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep203.i, i64 %indvars.iv.next152.i
  %i.ee = load double, ptr %gep204.i.1, align 8, !tbaa !77
  %i.ef = mul nuw nsw i64 %indvars.iv.next152.i, %i.bk
  %gep206.i.1 = getelementptr [8 x i8], ptr %i.dw, i64 %i.ef
  %i.eg = load double, ptr %gep206.i.1, align 8, !tbaa !77
  %i.eh = tail call nsz double @llvm.fmuladd.f64(double %i.ee, double %i.eg, double %i.ed)
  %indvars.iv.next152.i.1 = or disjoint i64 %indvars.iv151.i, 2 ; 2 uses
  %gep204.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep203.i, i64 %indvars.iv.next152.i.1
  %i.ei = load double, ptr %gep204.i.2, align 8, !tbaa !77
  %i.ej = mul nuw nsw i64 %indvars.iv.next152.i.1, %i.bk
  %gep206.i.2 = getelementptr [8 x i8], ptr %i.dw, i64 %i.ej
  %i.ek = load double, ptr %gep206.i.2, align 8, !tbaa !77
  %i.el = tail call nsz double @llvm.fmuladd.f64(double %i.ei, double %i.ek, double %i.eh)
  %indvars.iv.next152.i.2 = or disjoint i64 %indvars.iv151.i, 3 ; 2 uses
  %gep204.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep203.i, i64 %indvars.iv.next152.i.2
  %i.em = load double, ptr %gep204.i.3, align 8, !tbaa !77
  %i.en = mul nuw nsw i64 %indvars.iv.next152.i.2, %i.bk
  %gep206.i.3 = getelementptr [8 x i8], ptr %i.dw, i64 %i.en
  %i.eo = load double, ptr %gep206.i.3, align 8, !tbaa !77
  %i.ep = tail call nsz double @llvm.fmuladd.f64(double %i.em, double %i.eo, double %i.el) ; 3 uses
  %indvars.iv.next152.i.3 = add nuw nsw i64 %indvars.iv151.i, 4 ; 2 uses
  %niter101.next.3 = add nuw i64 %niter101, 4     ; 2 uses
  %niter101.ncmp.3 = icmp eq i64 %niter101.next.3, %unroll_iter100
  br i1 %niter101.ncmp.3, label %._crit_edge.us120.i.unr-lcssa, label %.preheader111.us.i.new, !llvm.loop !201

._crit_edge.us120.i.unr-lcssa:                    ; preds = %.preheader111.us.i.new
  br i1 %lcmp.mod97.not, label %._crit_edge.us120.i, label %.epil.preheader94

.epil.preheader94:                                ; preds = %._crit_edge.us120.i.unr-lcssa, %.preheader111.us.i
  %indvars.iv151.i.epil.init = phi i64 [ 0, %.preheader111.us.i ], [ %indvars.iv.next152.i.3, %._crit_edge.us120.i.unr-lcssa ]
  %.1117.us.i.epil.init = phi double [ 0.000000e+00, %.preheader111.us.i ], [ %i.ep, %._crit_edge.us120.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader94
  %indvars.iv151.i.epil = phi i64 [ %indvars.iv151.i.epil.init, %.epil.preheader94 ], [ %indvars.iv.next152.i.epil, %bb.e ] ; 3 uses
  %.1117.us.i.epil = phi double [ %.1117.us.i.epil.init, %.epil.preheader94 ], [ %i.et, %bb.e ]
  %epil.iter96 = phi i64 [ 0, %.epil.preheader94 ], [ %epil.iter96.next, %bb.e ]
  %gep204.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep203.i, i64 %indvars.iv151.i.epil
  %i.eq = load double, ptr %gep204.i.epil, align 8, !tbaa !77
  %i.er = mul nuw nsw i64 %indvars.iv151.i.epil, %i.bk
  %gep206.i.epil = getelementptr [8 x i8], ptr %i.dw, i64 %i.er
  %i.es = load double, ptr %gep206.i.epil, align 8, !tbaa !77
  %i.et = tail call nsz double @llvm.fmuladd.f64(double %i.eq, double %i.es, double %.1117.us.i.epil) ; 2 uses
  %indvars.iv.next152.i.epil = add nuw nsw i64 %indvars.iv151.i.epil, 1
  %epil.iter96.next = add i64 %epil.iter96, 1     ; 2 uses
  %epil.iter96.cmp.not = icmp eq i64 %epil.iter96.next, %xtraiter95
  br i1 %epil.iter96.cmp.not, label %._crit_edge.us120.i, label %bb.e, !llvm.loop !202

._crit_edge.us120.i:                              ; preds = %bb.e, %._crit_edge.us120.i.unr-lcssa
  %.lcssa81 = phi double [ %i.ep, %._crit_edge.us120.i.unr-lcssa ], [ %i.et, %bb.e ]
  %i.eu = load double, ptr %i.dx, align 8, !tbaa !77
  %i.ev = fdiv nsz double 1.000000e+00, %i.eu
  %gep208.i = getelementptr [8 x i8], ptr %invariant.gep207.i, i64 %indvars.iv158.i
  %i.ew = load double, ptr %gep208.i, align 8, !tbaa !77
  %i.ex = fsub nsz double %i.ew, %.lcssa81
  %i.ey = fmul nsz double %i.ev, %i.ex
  %gep210.i = getelementptr [8 x i8], ptr %i.dw, i64 %i.dz
  store double %i.ey, ptr %gep210.i, align 8, !tbaa !77
  %indvars.iv.next159.i = add nuw nsw i64 %indvars.iv158.i, 1 ; 2 uses
  %exitcond162.not.i = icmp eq i64 %indvars.iv.next159.i, %i.bk
  br i1 %exitcond162.not.i, label %.loopexit.i, label %.preheader111.us.i, !llvm.loop !203

.preheader111.i:                                  ; preds = %.preheader111.i.prol.loopexit, %.preheader111.i
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i.1, %.preheader111.i ], [ %indvars.iv163.i.unr, %.preheader111.i.prol.loopexit ] ; 4 uses
  %i.ez = load double, ptr %i.dk, align 8, !tbaa !77
  %i.fa = fdiv nsz double 1.000000e+00, %i.ez
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv163.i
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !77
  %i.fd = fmul nsz double %i.fa, %i.fc
  %i.fe = mul nuw nsw i64 %indvars.iv163.i, %i.bk
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.fe
  store double %i.fd, ptr %i.ff, align 8, !tbaa !77
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 2 uses
  %i.fg = load double, ptr %i.dk, align 8, !tbaa !77
  %i.fh = fdiv nsz double 1.000000e+00, %i.fg
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next164.i
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !77
  %i.fk = fmul nsz double %i.fh, %i.fj
  %i.fl = mul nuw nsw i64 %indvars.iv.next164.i, %i.bk
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.fl
  store double %i.fk, ptr %i.fm, align 8, !tbaa !77
  %indvars.iv.next164.i.1 = add nuw nsw i64 %indvars.iv163.i, 2 ; 2 uses
  %exitcond167.not.i.1 = icmp eq i64 %indvars.iv.next164.i.1, %i.bk
  br i1 %exitcond167.not.i.1, label %.loopexit.i, label %.preheader111.i, !llvm.loop !203

.preheader109.i:                                  ; preds = %.loopexit.i, %._crit_edge.i
  %indvars.iv175.i = phi i64 [ %indvars.iv.next176.i, %._crit_edge.i ], [ 0, %.loopexit.i ] ; 8 uses
  %.not136.i = icmp eq i64 %indvars.iv175.i, 0
  br i1 %.not136.i, label %._crit_edge.i, label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %.preheader109.i
  %i.fn = mul nuw nsw i64 %indvars.iv175.i, %i.bk
  %invariant.gep211.i = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.fn ; 5 uses
  %xtraiter111 = and i64 %indvars.iv175.i, 3      ; 3 uses
  %i.fo = icmp samesign ult i64 %indvars.iv175.i, 4
  br i1 %i.fo, label %.epil.preheader110, label %.lr.ph.i115.new

.lr.ph.i115.new:                                  ; preds = %.lr.ph.i115
  %unroll_iter116 = and i64 %indvars.iv175.i, 9223372036854775804
  br label %bb.g

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod113.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %._crit_edge.i, label %.epil.preheader110

.epil.preheader110:                               ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i115
  %indvars.iv171.i.epil.init = phi i64 [ 0, %.lr.ph.i115 ], [ %indvars.iv.next172.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.2123.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i115 ], [ %i.gm, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod115 = icmp ne i64 %xtraiter111, 0
  tail call void @llvm.assume(i1 %lcmp.mod115)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader110
  %indvars.iv171.i.epil = phi i64 [ %indvars.iv171.i.epil.init, %.epil.preheader110 ], [ %indvars.iv.next172.i.epil, %bb.f ] ; 3 uses
  %.2123.i.epil = phi double [ %.2123.i.epil.init, %.epil.preheader110 ], [ %i.fs, %bb.f ]
  %epil.iter112 = phi i64 [ 0, %.epil.preheader110 ], [ %epil.iter112.next, %bb.f ]
  %gep212.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep211.i, i64 %indvars.iv171.i.epil
  %i.fp = load double, ptr %gep212.i.epil, align 8, !tbaa !77
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv171.i.epil
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !77
  %i.fs = tail call nsz double @llvm.fmuladd.f64(double %i.fp, double %i.fr, double %.2123.i.epil) ; 2 uses
  %indvars.iv.next172.i.epil = add nuw nsw i64 %indvars.iv171.i.epil, 1
  %epil.iter112.next = add i64 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i64 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %._crit_edge.i, label %bb.f, !llvm.loop !204

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.f, %.preheader109.i
  %.2.lcssa.i = phi double [ 0.000000e+00, %.preheader109.i ], [ %i.gm, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.fs, %bb.f ]
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv175.i
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !77
  %i.fv = fsub nsz double %i.fu, %.2.lcssa.i
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv175.i
  store double %i.fv, ptr %i.fw, align 8, !tbaa !77
  %indvars.iv.next176.i = add nuw nsw i64 %indvars.iv175.i, 1 ; 2 uses
  %exitcond179.not.i = icmp eq i64 %indvars.iv.next176.i, %i.bk
  br i1 %exitcond179.not.i, label %.preheader.i, label %.preheader109.i, !llvm.loop !205

bb.g:                                             ; preds = %bb.g, %.lr.ph.i115.new
  %indvars.iv171.i = phi i64 [ 0, %.lr.ph.i115.new ], [ %indvars.iv.next172.i.3, %bb.g ] ; 6 uses
  %.2123.i = phi double [ 0.000000e+00, %.lr.ph.i115.new ], [ %i.gm, %bb.g ]
  %niter117 = phi i64 [ 0, %.lr.ph.i115.new ], [ %niter117.next.3, %bb.g ]
  %gep212.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep211.i, i64 %indvars.iv171.i
  %i.fx = load double, ptr %gep212.i, align 8, !tbaa !77
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv171.i
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !77
  %i.ga = tail call nsz double @llvm.fmuladd.f64(double %i.fx, double %i.fz, double %.2123.i)
  %indvars.iv.next172.i = or disjoint i64 %indvars.iv171.i, 1 ; 2 uses
  %gep212.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep211.i, i64 %indvars.iv.next172.i
  %i.gb = load double, ptr %gep212.i.1, align 8, !tbaa !77
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next172.i
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !77
  %i.ge = tail call nsz double @llvm.fmuladd.f64(double %i.gb, double %i.gd, double %i.ga)
  %indvars.iv.next172.i.1 = or disjoint i64 %indvars.iv171.i, 2 ; 2 uses
  %gep212.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep211.i, i64 %indvars.iv.next172.i.1
  %i.gf = load double, ptr %gep212.i.2, align 8, !tbaa !77
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next172.i.1
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !77
  %i.gi = tail call nsz double @llvm.fmuladd.f64(double %i.gf, double %i.gh, double %i.ge)
  %indvars.iv.next172.i.2 = or disjoint i64 %indvars.iv171.i, 3 ; 2 uses
  %gep212.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep211.i, i64 %indvars.iv.next172.i.2
  %i.gj = load double, ptr %gep212.i.3, align 8, !tbaa !77
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next172.i.2
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !77
  %i.gm = tail call nsz double @llvm.fmuladd.f64(double %i.gj, double %i.gl, double %i.gi) ; 3 uses
  %indvars.iv.next172.i.3 = add nuw nsw i64 %indvars.iv171.i, 4 ; 2 uses
  %niter117.next.3 = add i64 %niter117, 4         ; 2 uses
  %niter117.ncmp.3 = icmp eq i64 %niter117.next.3, %unroll_iter116
  br i1 %niter117.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !206

.preheader.i:                                     ; preds = %._crit_edge.i, %._crit_edge129.i
  %indvar118 = phi i64 [ %indvar.next119, %._crit_edge129.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %indvars.iv180.i = phi i64 [ %indvars.iv.next181.i, %._crit_edge129.i ], [ %i.bk, %._crit_edge.i ] ; 6 uses
  %i.gn = add i64 %indvar118, -1
  %indvars.iv.next181.i = add nsw i64 %indvars.iv180.i, -1 ; 4 uses
  %i.go = icmp slt i64 %indvars.iv180.i, %i.bk
  br i1 %i.go, label %.lr.ph128.i, label %._crit_edge129.i

.lr.ph128.i:                                      ; preds = %.preheader.i
  %i.gp = mul nsw i64 %indvars.iv.next181.i, %i.bk
  %invariant.gep213.i = getelementptr [8 x i8], ptr %i.ab, i64 %i.gp ; 5 uses
  %xtraiter120 = and i64 %indvar118, 3            ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph128.i, %.prol.preheader
  %indvars.iv182.i.prol = phi i64 [ %indvars.iv.next183.i.prol, %.prol.preheader ], [ %indvars.iv180.i, %.lr.ph128.i ] ; 3 uses
  %.3126.i.prol = phi double [ %i.gt, %.prol.preheader ], [ 0.000000e+00, %.lr.ph128.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph128.i ]
  %gep214.i.prol = getelementptr [8 x i8], ptr %invariant.gep213.i, i64 %indvars.iv182.i.prol
  %i.gq = load double, ptr %gep214.i.prol, align 8, !tbaa !77
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv182.i.prol
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !77
  %i.gt = tail call nsz double @llvm.fmuladd.f64(double %i.gq, double %i.gs, double %.3126.i.prol) ; 3 uses
  %indvars.iv.next183.i.prol = add nuw nsw i64 %indvars.iv182.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter120
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !207

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph128.i
  %.lcssa83.unr = phi double [ poison, %.lr.ph128.i ], [ %i.gt, %.prol.preheader ]
  %indvars.iv182.i.unr = phi i64 [ %indvars.iv180.i, %.lr.ph128.i ], [ %indvars.iv.next183.i.prol, %.prol.preheader ]
  %.3126.i.unr = phi double [ 0.000000e+00, %.lr.ph128.i ], [ %i.gt, %.prol.preheader ]
  %i.gu = icmp ult i64 %i.gn, 3
  br i1 %i.gu, label %._crit_edge129.i, label %.lr.ph128.i.new

._crit_edge129.i:                                 ; preds = %.prol.loopexit, %.lr.ph128.i.new, %.preheader.i
  %.3.lcssa.i = phi double [ 0.000000e+00, %.preheader.i ], [ %.lcssa83.unr, %.prol.loopexit ], [ %i.hw, %.lr.ph128.i.new ]
  %i.gv = trunc nuw nsw i64 %indvars.iv.next181.i to i32
  %i.gw = mul i32 %i.j, %i.gv
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.gx
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !77
  %i.ha = fdiv nsz double 1.000000e+00, %i.gz
  %i.hb = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv180.i
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !77
  %i.hd = fsub nsz double %i.hc, %.3.lcssa.i
  %i.he = fmul nsz double %i.ha, %i.hd
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next181.i
  store double %i.he, ptr %i.hf, align 8, !tbaa !77
  %i.hg = icmp samesign ugt i64 %indvars.iv180.i, 1
  %indvar.next119 = add i64 %indvar118, 1
end_hunk_1
begin_hunk_2_@iir_ch_serial_dblp:bb.a

._crit_edge.us.thread:                            ; preds = %.lr.ph.split.us.us
  store <2 x double> %i.cj, ptr %i.ay, align 8, !tbaa !77
  br label %._crit_edge87

._crit_edge87:                                    ; preds = %._crit_edge.us, %.lr.ph86, %._crit_edge.us.thread, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @iir_ch_dblp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !214 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load double, ptr %i.e, align 8, !tbaa !215 ; 5 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !216
  %i.l = sext i32 %2 to i64                       ; 3 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.q = getelementptr inbounds [72 x i8], ptr %i.p, i64 %i.l ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75   ; 19 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !75   ; 23 uses
  %i.v = load i32, ptr %i.q, align 8, !tbaa !31   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !31   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !75   ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !75 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !216
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.l
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !30 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 5 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !53
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph78, label %._crit_edge79

.lr.ph78:                                         ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !108
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.am = load double, ptr %i.al, align 8, !tbaa !217
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.ao = add nsw i32 %i.x, -1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 3                    ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.as = add nsw i32 %i.v, -1
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 3                    ; 4 uses
  %i.av = icmp sgt i32 %i.x, 0                    ; 2 uses
  %i.aw = icmp sgt i32 %i.v, 1
  %i.ax = fmul nsz double %i.am, %i.ak            ; 4 uses
  %i.ay = fsub nsz double 1.000000e+00, %i.f      ; 4 uses
  br i1 %i.aw, label %.lr.ph78.split.us, label %.lr.ph78.split

.lr.ph78.split.us:                                ; preds = %.lr.ph78
  br i1 %i.av, label %.lr.ph.us.us.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph78.split.us
  %wide.trip.count104 = zext nneg i32 %i.v to i64
  %i.az = add nsw i64 %wide.trip.count104, -1     ; 2 uses
  %xtraiter144 = and i64 %i.az, 3                 ; 3 uses
  %i.ba = add nsw i32 %i.v, -2
  %i.bb = icmp ult i32 %i.ba, 3
  %unroll_iter149 = and i64 %i.az, -4
  %lcmp.mod146.not = icmp eq i64 %xtraiter144, 0
  %lcmp.mod148 = icmp ne i64 %xtraiter144, 0
  br label %.preheader.us

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph78.split.us
  %wide.trip.count112 = zext nneg i32 %i.x to i64 ; 2 uses
  %wide.trip.count117 = zext nneg i32 %i.v to i64
  %i.bc = add nsw i64 %wide.trip.count117, -1     ; 2 uses
  %xtraiter152 = and i64 %wide.trip.count112, 3   ; 3 uses
  %i.bd = icmp ult i32 %i.x, 4
  %unroll_iter157 = and i64 %wide.trip.count112, 2147483644
  %lcmp.mod154.not = icmp eq i64 %xtraiter152, 0
  %lcmp.mod156 = icmp ne i64 %xtraiter152, 0
  %xtraiter159 = and i64 %i.bc, 3                 ; 3 uses
  %i.be = add nsw i32 %i.v, -2
  %i.bf = icmp ult i32 %i.be, 3
  %unroll_iter164 = and i64 %i.bc, -4
  %lcmp.mod161.not = icmp eq i64 %xtraiter159, 0
  %lcmp.mod163 = icmp ne i64 %xtraiter159, 0
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %indvars.iv119 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next120, %._crit_edge.us.us ] ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %i.u, i64 %i.aq, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %i.s, i64 %i.au, i1 false)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv119
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !77
  %i.bi = fmul nsz double %i.d, %i.bh
  store double %i.bi, ptr %i.u, align 8, !tbaa !77
  br i1 %i.bd, label %.epil.preheader151, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %indvars.iv109 = phi i64 [ %indvars.iv.next110.3, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 6 uses
  %.06770.us.us = phi double [ %i.cc, %.lr.ph.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us ]
  %niter158 = phi i64 [ %niter158.next.3, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv109
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !77
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv109
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !77
  %i.bn = tail call nsz double @llvm.fmuladd.f64(double %i.bk, double %i.bm, double %.06770.us.us)
  %indvars.iv.next110 = or disjoint i64 %indvars.iv109, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next110
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !77
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next110
  %i.br = load double, ptr %i.bq, align 8, !tbaa !77
  %i.bs = tail call nsz double @llvm.fmuladd.f64(double %i.bp, double %i.br, double %i.bn)
  %indvars.iv.next110.1 = or disjoint i64 %indvars.iv109, 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next110.1
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !77
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next110.1
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !77
  %i.bx = tail call nsz double @llvm.fmuladd.f64(double %i.bu, double %i.bw, double %i.bs)
  %indvars.iv.next110.2 = or disjoint i64 %indvars.iv109, 3 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next110.2
  %i.bz = load double, ptr %i.by, align 8, !tbaa !77
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next110.2
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !77
  %i.cc = tail call nsz double @llvm.fmuladd.f64(double %i.bz, double %i.cb, double %i.bx) ; 3 uses
  %indvars.iv.next110.3 = add nuw nsw i64 %indvars.iv109, 4 ; 2 uses
  %niter158.next.3 = add i64 %niter158, 4         ; 2 uses
  %niter158.ncmp.3 = icmp eq i64 %niter158.next.3, %unroll_iter157
  br i1 %niter158.ncmp.3, label %..preheader_crit_edge.us.us.preheader.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !229

..preheader_crit_edge.us.us.preheader.unr-lcssa:  ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod154.not, label %..preheader_crit_edge.us.us.preheader, label %.epil.preheader151

.epil.preheader151:                               ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.lr.ph.us.us
  %indvars.iv109.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %indvars.iv.next110.3, %..preheader_crit_edge.us.us.preheader.unr-lcssa ]
  %.06770.us.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us ], [ %i.cc, %..preheader_crit_edge.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod156)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader151
  %indvars.iv109.epil = phi i64 [ %indvars.iv109.epil.init, %.epil.preheader151 ], [ %indvars.iv.next110.epil, %bb.b ] ; 3 uses
  %.06770.us.us.epil = phi double [ %.06770.us.us.epil.init, %.epil.preheader151 ], [ %i.ch, %bb.b ]
  %epil.iter153 = phi i64 [ 0, %.epil.preheader151 ], [ %epil.iter153.next, %bb.b ]
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv109.epil
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !77
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv109.epil
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !77
  %i.ch = tail call nsz double @llvm.fmuladd.f64(double %i.ce, double %i.cg, double %.06770.us.us.epil) ; 2 uses
  %indvars.iv.next110.epil = add nuw nsw i64 %indvars.iv109.epil, 1
  %epil.iter153.next = add i64 %epil.iter153, 1   ; 2 uses
  %epil.iter153.cmp.not = icmp eq i64 %epil.iter153.next, %xtraiter152
  br i1 %epil.iter153.cmp.not, label %..preheader_crit_edge.us.us.preheader, label %bb.b, !llvm.loop !230

..preheader_crit_edge.us.us.preheader:            ; preds = %bb.b, %..preheader_crit_edge.us.us.preheader.unr-lcssa
  %.lcssa = phi double [ %i.cc, %..preheader_crit_edge.us.us.preheader.unr-lcssa ], [ %i.ch, %bb.b ] ; 2 uses
  br i1 %i.bf, label %..preheader_crit_edge.us.us.epil.preheader, label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %..preheader_crit_edge.us.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115.3, %..preheader_crit_edge.us.us ], [ 1, %..preheader_crit_edge.us.us.preheader ] ; 6 uses
  %.16872.us.us = phi double [ %i.df, %..preheader_crit_edge.us.us ], [ %.lcssa, %..preheader_crit_edge.us.us.preheader ]
  %niter165 = phi i64 [ %niter165.next.3, %..preheader_crit_edge.us.us ], [ 0, %..preheader_crit_edge.us.us.preheader ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv114
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !77
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv114
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !77
  %i.cm = fneg nsz double %i.cj
  %i.cn = tail call nsz double @llvm.fmuladd.f64(double %i.cm, double %i.cl, double %.16872.us.us)
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next115
  %i.cp = load double, ptr %i.co, align 8, !tbaa !77
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next115
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !77
  %i.cs = fneg nsz double %i.cp
  %i.ct = tail call nsz double @llvm.fmuladd.f64(double %i.cs, double %i.cr, double %i.cn)
  %indvars.iv.next115.1 = add nuw nsw i64 %indvars.iv114, 2 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next115.1
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !77
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next115.1
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !77
  %i.cy = fneg nsz double %i.cv
  %i.cz = tail call nsz double @llvm.fmuladd.f64(double %i.cy, double %i.cx, double %i.ct)
  %indvars.iv.next115.2 = add nuw nsw i64 %indvars.iv114, 3 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next115.2
  %i.db = load double, ptr %i.da, align 8, !tbaa !77
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next115.2
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !77
  %i.de = fneg nsz double %i.db
  %i.df = tail call nsz double @llvm.fmuladd.f64(double %i.de, double %i.dd, double %i.cz) ; 3 uses
  %indvars.iv.next115.3 = add nuw nsw i64 %indvars.iv114, 4 ; 2 uses
  %niter165.next.3 = add nuw i64 %niter165, 4     ; 2 uses
  %niter165.ncmp.3 = icmp eq i64 %niter165.next.3, %unroll_iter164
  br i1 %niter165.ncmp.3, label %._crit_edge.us.us.unr-lcssa, label %..preheader_crit_edge.us.us, !llvm.loop !231

._crit_edge.us.us.unr-lcssa:                      ; preds = %..preheader_crit_edge.us.us
  br i1 %lcmp.mod161.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us.epil.preheader

..preheader_crit_edge.us.us.epil.preheader:       ; preds = %._crit_edge.us.us.unr-lcssa, %..preheader_crit_edge.us.us.preheader
  %indvars.iv114.epil.init = phi i64 [ 1, %..preheader_crit_edge.us.us.preheader ], [ %indvars.iv.next115.3, %._crit_edge.us.us.unr-lcssa ]
  %.16872.us.us.epil.init = phi double [ %.lcssa, %..preheader_crit_edge.us.us.preheader ], [ %i.df, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod163)
  br label %..preheader_crit_edge.us.us.epil

..preheader_crit_edge.us.us.epil:                 ; preds = %..preheader_crit_edge.us.us.epil, %..preheader_crit_edge.us.us.epil.preheader
  %indvars.iv114.epil = phi i64 [ %indvars.iv.next115.epil, %..preheader_crit_edge.us.us.epil ], [ %indvars.iv114.epil.init, %..preheader_crit_edge.us.us.epil.preheader ] ; 3 uses
  %.16872.us.us.epil = phi double [ %i.dl, %..preheader_crit_edge.us.us.epil ], [ %.16872.us.us.epil.init, %..preheader_crit_edge.us.us.epil.preheader ]
  %epil.iter160 = phi i64 [ %epil.iter160.next, %..preheader_crit_edge.us.us.epil ], [ 0, %..preheader_crit_edge.us.us.epil.preheader ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv114.epil
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !77
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv114.epil
  %i.dj = load double, ptr %i.di, align 8, !tbaa !77
  %i.dk = fneg nsz double %i.dh
  %i.dl = tail call nsz double @llvm.fmuladd.f64(double %i.dk, double %i.dj, double %.16872.us.us.epil) ; 2 uses
  %indvars.iv.next115.epil = add nuw nsw i64 %indvars.iv114.epil, 1
  %epil.iter160.next = add i64 %epil.iter160, 1   ; 2 uses
  %epil.iter160.cmp.not = icmp eq i64 %epil.iter160.next, %xtraiter159
  br i1 %epil.iter160.cmp.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us.epil, !llvm.loop !232

._crit_edge.us.us:                                ; preds = %..preheader_crit_edge.us.us.epil, %._crit_edge.us.us.unr-lcssa
  %.lcssa135 = phi double [ %i.df, %._crit_edge.us.us.unr-lcssa ], [ %i.dl, %..preheader_crit_edge.us.us.epil ] ; 2 uses
  store double %.lcssa135, ptr %i.s, align 8, !tbaa !77
  %i.dm = fmul nsz double %i.ax, %.lcssa135
  %i.dn = load double, ptr %i.u, align 8, !tbaa !77
  %i.do = fmul nsz double %i.ay, %i.dn
  %i.dp = tail call nsz double @llvm.fmuladd.f64(double %i.dm, double %i.f, double %i.do)
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv119
  store double %i.dp, ptr %i.dq, align 8, !tbaa !77
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.dr = load i32, ptr %i.ag, align 8, !tbaa !53
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next120, %i.ds
  br i1 %i.dt, label %.lr.ph.us.us, label %._crit_edge79, !llvm.loop !233

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv106 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next107, %._crit_edge.us ] ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %i.u, i64 %i.aq, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %i.s, i64 %i.au, i1 false)
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv106
  %i.dv = load double, ptr %i.du, align 8, !tbaa !77
  %i.dw = fmul nsz double %i.d, %i.dv
  store double %i.dw, ptr %i.u, align 8, !tbaa !77
  br i1 %i.bb, label %.epil.preheader143, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.3, %.preheader.us.new ], [ 1, %.preheader.us ] ; 6 uses
  %.16872.us = phi double [ %i.eu, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter150 = phi i64 [ %niter150.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv101
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !77
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv101
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !77
  %i.eb = fneg nsz double %i.dy
  %i.ec = tail call nsz double @llvm.fmuladd.f64(double %i.eb, double %i.ea, double %.16872.us)
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next102
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !77
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next102
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !77
  %i.eh = fneg nsz double %i.ee
  %i.ei = tail call nsz double @llvm.fmuladd.f64(double %i.eh, double %i.eg, double %i.ec)
  %indvars.iv.next102.1 = add nuw nsw i64 %indvars.iv101, 2 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next102.1
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !77
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next102.1
  %i.em = load double, ptr %i.el, align 8, !tbaa !77
  %i.en = fneg nsz double %i.ek
  %i.eo = tail call nsz double @llvm.fmuladd.f64(double %i.en, double %i.em, double %i.ei)
  %indvars.iv.next102.2 = add nuw nsw i64 %indvars.iv101, 3 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next102.2
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !77
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next102.2
  %i.es = load double, ptr %i.er, align 8, !tbaa !77
  %i.et = fneg nsz double %i.eq
  %i.eu = tail call nsz double @llvm.fmuladd.f64(double %i.et, double %i.es, double %i.eo) ; 3 uses
  %indvars.iv.next102.3 = add nuw nsw i64 %indvars.iv101, 4 ; 2 uses
  %niter150.next.3 = add nuw i64 %niter150, 4     ; 2 uses
  %niter150.ncmp.3 = icmp eq i64 %niter150.next.3, %unroll_iter149
  br i1 %niter150.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !231

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod146.not, label %._crit_edge.us, label %.epil.preheader143

.epil.preheader143:                               ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv101.epil.init = phi i64 [ 1, %.preheader.us ], [ %indvars.iv.next102.3, %._crit_edge.us.unr-lcssa ]
  %.16872.us.epil.init = phi double [ 0.000000e+00, %.preheader.us ], [ %i.eu, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader143
  %indvars.iv101.epil = phi i64 [ %indvars.iv101.epil.init, %.epil.preheader143 ], [ %indvars.iv.next102.epil, %bb.c ] ; 3 uses
  %.16872.us.epil = phi double [ %.16872.us.epil.init, %.epil.preheader143 ], [ %i.fa, %bb.c ]
  %epil.iter145 = phi i64 [ 0, %.epil.preheader143 ], [ %epil.iter145.next, %bb.c ]
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv101.epil
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !77
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv101.epil
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !77
  %i.ez = fneg nsz double %i.ew
  %i.fa = tail call nsz double @llvm.fmuladd.f64(double %i.ez, double %i.ey, double %.16872.us.epil) ; 2 uses
  %indvars.iv.next102.epil = add nuw nsw i64 %indvars.iv101.epil, 1
  %epil.iter145.next = add i64 %epil.iter145, 1   ; 2 uses
  %epil.iter145.cmp.not = icmp eq i64 %epil.iter145.next, %xtraiter144
  br i1 %epil.iter145.cmp.not, label %._crit_edge.us, label %bb.c, !llvm.loop !234

._crit_edge.us:                                   ; preds = %bb.c, %._crit_edge.us.unr-lcssa
  %.lcssa137 = phi double [ %i.eu, %._crit_edge.us.unr-lcssa ], [ %i.fa, %bb.c ] ; 2 uses
  store double %.lcssa137, ptr %i.s, align 8, !tbaa !77
  %i.fb = fmul nsz double %i.ax, %.lcssa137
  %i.fc = load double, ptr %i.u, align 8, !tbaa !77
  %i.fd = fmul nsz double %i.ay, %i.fc
  %i.fe = tail call nsz double @llvm.fmuladd.f64(double %i.fb, double %i.f, double %i.fd)
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv106
  store double %i.fe, ptr %i.ff, align 8, !tbaa !77
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.fg = load i32, ptr %i.ag, align 8, !tbaa !53
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp slt i64 %indvars.iv.next107, %i.fh
  br i1 %i.fi, label %.preheader.us, label %._crit_edge79, !llvm.loop !233

.lr.ph78.split:                                   ; preds = %.lr.ph78
  br i1 %i.av, label %.lr.ph.us85.preheader, label %.lr.ph78.split.split

.lr.ph.us85.preheader:                            ; preds = %.lr.ph78.split
  %wide.trip.count = zext nneg i32 %i.x to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.fj = icmp ult i32 %i.x, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod142 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us85

.lr.ph.us85:                                      ; preds = %.lr.ph.us85.preheader, %..preheader_crit_edge.us86
  %indvars.iv98 = phi i64 [ 0, %.lr.ph.us85.preheader ], [ %indvars.iv.next99, %..preheader_crit_edge.us86 ] ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %i.u, i64 %i.aq, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %i.s, i64 %i.au, i1 false)
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv98
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !77
  %i.fm = fmul nsz double %i.d, %i.fl
  store double %i.fm, ptr %i.u, align 8, !tbaa !77
  br i1 %i.fj, label %.epil.preheader, label %.lr.ph.us85.new

.lr.ph.us85.new:                                  ; preds = %.lr.ph.us85, %.lr.ph.us85.new
  %indvars.iv95 = phi i64 [ %indvars.iv.next96.3, %.lr.ph.us85.new ], [ 0, %.lr.ph.us85 ] ; 6 uses
  %.06770.us82 = phi double [ %i.gg, %.lr.ph.us85.new ], [ 0.000000e+00, %.lr.ph.us85 ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us85.new ], [ 0, %.lr.ph.us85 ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv95
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !77
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv95
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !77
  %i.fr = tail call nsz double @llvm.fmuladd.f64(double %i.fo, double %i.fq, double %.06770.us82)
  %indvars.iv.next96 = or disjoint i64 %indvars.iv95, 1 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next96
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !77
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next96
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !77
  %i.fw = tail call nsz double @llvm.fmuladd.f64(double %i.ft, double %i.fv, double %i.fr)
  %indvars.iv.next96.1 = or disjoint i64 %indvars.iv95, 2 ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next96.1
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !77
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next96.1
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !77
  %i.gb = tail call nsz double @llvm.fmuladd.f64(double %i.fy, double %i.ga, double %i.fw)
  %indvars.iv.next96.2 = or disjoint i64 %indvars.iv95, 3 ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next96.2
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !77
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next96.2
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !77
  %i.gg = tail call nsz double @llvm.fmuladd.f64(double %i.gd, double %i.gf, double %i.gb) ; 3 uses
  %indvars.iv.next96.3 = add nuw nsw i64 %indvars.iv95, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.us86.unr-lcssa, label %.lr.ph.us85.new, !llvm.loop !229

..preheader_crit_edge.us86.unr-lcssa:             ; preds = %.lr.ph.us85.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us86, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us86.unr-lcssa, %.lr.ph.us85
  %indvars.iv95.epil.init = phi i64 [ 0, %.lr.ph.us85 ], [ %indvars.iv.next96.3, %..preheader_crit_edge.us86.unr-lcssa ]
  %.06770.us82.epil.init = phi double [ 0.000000e+00, %.lr.ph.us85 ], [ %i.gg, %..preheader_crit_edge.us86.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod142)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv95.epil = phi i64 [ %indvars.iv95.epil.init, %.epil.preheader ], [ %indvars.iv.next96.epil, %bb.d ] ; 3 uses
  %.06770.us82.epil = phi double [ %.06770.us82.epil.init, %.epil.preheader ], [ %i.gl, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv95.epil
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !77
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv95.epil
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !77
  %i.gl = tail call nsz double @llvm.fmuladd.f64(double %i.gi, double %i.gk, double %.06770.us82.epil) ; 2 uses
  %indvars.iv.next96.epil = add nuw nsw i64 %indvars.iv95.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us86, label %bb.d, !llvm.loop !235

..preheader_crit_edge.us86:                       ; preds = %bb.d, %..preheader_crit_edge.us86.unr-lcssa
  %.lcssa139 = phi double [ %i.gg, %..preheader_crit_edge.us86.unr-lcssa ], [ %i.gl, %bb.d ] ; 2 uses
  store double %.lcssa139, ptr %i.s, align 8, !tbaa !77
  %i.gm = fmul nsz double %i.ax, %.lcssa139
  %i.gn = load double, ptr %i.u, align 8, !tbaa !77
  %i.go = fmul nsz double %i.ay, %i.gn
  %i.gp = tail call nsz double @llvm.fmuladd.f64(double %i.gm, double %i.f, double %i.go)
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv98
  store double %i.gp, ptr %i.gq, align 8, !tbaa !77
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %i.gr = load i32, ptr %i.ag, align 8, !tbaa !53
  %i.gs = sext i32 %i.gr to i64
  %i.gt = icmp slt i64 %indvars.iv.next99, %i.gs
  br i1 %i.gt, label %.lr.ph.us85, label %._crit_edge79, !llvm.loop !233

.lr.ph78.split.split:                             ; preds = %.lr.ph78.split
  %i.gu = fmul nsz double %i.ax, 0.000000e+00
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph78.split.split, %.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph78.split.split ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %i.u, i64 %i.aq, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %i.s, i64 %i.au, i1 false)
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !77
  %i.gx = fmul nsz double %i.d, %i.gw
  store double %i.gx, ptr %i.u, align 8, !tbaa !77
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !77
  %i.gy = load double, ptr %i.u, align 8, !tbaa !77
  %i.gz = fmul nsz double %i.ay, %i.gy
  %i.ha = tail call nsz double @llvm.fmuladd.f64(double %i.gu, double %i.f, double %i.gz)
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  store double %i.ha, ptr %i.hb, align 8, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hc = load i32, ptr %i.ag, align 8, !tbaa !53
  %i.hd = sext i32 %i.hc to i64
  %i.he = icmp slt i64 %indvars.iv.next, %i.hd
  br i1 %i.he, label %.preheader, label %._crit_edge79, !llvm.loop !233

._crit_edge79:                                    ; preds = %.preheader, %..preheader_crit_edge.us86, %._crit_edge.us, %._crit_edge.us.us, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @iir_ch_parallel_fltp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !214
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load double, ptr %i.e, align 8, !tbaa !215 ; 3 uses
  %i.g = fsub nsz double 1.000000e+00, %i.f       ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !59     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !216
  %i.m = sext i32 %2 to i64                       ; 3 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !216
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.m
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34
  %i.v = getelementptr inbounds [72 x i8], ptr %i.u, i64 %i.m ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load double, ptr %i.w, align 8, !tbaa !210 ; 2 uses
  %i.y = load i32, ptr %i.v, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !31
  %. = tail call i32 @llvm.smax.i32(i32 %i.y, i32 %i.aa) ; 2 uses
  %i.ab = icmp sgt i32 %., 0
  br i1 %i.ab, label %.lr.ph93, label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !53
  br label %.preheader
end_hunk_2
begin_hunk_3_@iir_ch_serial_fltp:bb.a
._crit_edge.us.thread:                            ; preds = %.lr.ph.split.us.us
  store <2 x double> %i.cm, ptr %i.ay, align 8, !tbaa !77
  br label %._crit_edge87

._crit_edge87:                                    ; preds = %._crit_edge.us, %.lr.ph86, %._crit_edge.us.thread, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @iir_ch_fltp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !214 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load double, ptr %i.e, align 8, !tbaa !215 ; 5 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !216
  %i.l = sext i32 %2 to i64                       ; 3 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.q = getelementptr inbounds [72 x i8], ptr %i.p, i64 %i.l ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75   ; 19 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !75   ; 23 uses
  %i.v = load i32, ptr %i.q, align 8, !tbaa !31   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !31   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !75   ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !75 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !216
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.l
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !30 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 5 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !53
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph78, label %._crit_edge79

.lr.ph78:                                         ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !108
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.am = load double, ptr %i.al, align 8, !tbaa !217
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.ao = add nsw i32 %i.x, -1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 3                    ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.as = add nsw i32 %i.v, -1
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 3                    ; 4 uses
  %i.av = icmp sgt i32 %i.x, 0                    ; 2 uses
  %i.aw = icmp sgt i32 %i.v, 1
  %i.ax = fmul nsz double %i.am, %i.ak            ; 4 uses
  %i.ay = fsub nsz double 1.000000e+00, %i.f      ; 4 uses
  br i1 %i.aw, label %.lr.ph78.split.us, label %.lr.ph78.split

.lr.ph78.split.us:                                ; preds = %.lr.ph78
  br i1 %i.av, label %.lr.ph.us.us.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph78.split.us
  %wide.trip.count104 = zext nneg i32 %i.v to i64
  %i.az = add nsw i64 %wide.trip.count104, -1     ; 2 uses
  %xtraiter144 = and i64 %i.az, 3                 ; 3 uses
  %i.ba = add nsw i32 %i.v, -2
  %i.bb = icmp ult i32 %i.ba, 3
  %unroll_iter149 = and i64 %i.az, -4
  %lcmp.mod146.not = icmp eq i64 %xtraiter144, 0
  %lcmp.mod148 = icmp ne i64 %xtraiter144, 0
  br label %.preheader.us

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph78.split.us
  %wide.trip.count112 = zext nneg i32 %i.x to i64 ; 2 uses
  %wide.trip.count117 = zext nneg i32 %i.v to i64
  %i.bc = add nsw i64 %wide.trip.count117, -1     ; 2 uses
  %xtraiter152 = and i64 %wide.trip.count112, 3   ; 3 uses
  %i.bd = icmp ult i32 %i.x, 4
  %unroll_iter157 = and i64 %wide.trip.count112, 2147483644
  %lcmp.mod154.not = icmp eq i64 %xtraiter152, 0
  %lcmp.mod156 = icmp ne i64 %xtraiter152, 0
  %xtraiter159 = and i64 %i.bc, 3                 ; 3 uses
  %i.be = add nsw i32 %i.v, -2
  %i.bf = icmp ult i32 %i.be, 3
  %unroll_iter164 = and i64 %i.bc, -4
  %lcmp.mod161.not = icmp eq i64 %xtraiter159, 0
  %lcmp.mod163 = icmp ne i64 %xtraiter159, 0
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %indvars.iv119 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next120, %._crit_edge.us.us ] ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %i.u, i64 %i.aq, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %i.s, i64 %i.au, i1 false)
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv119
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !236
  %i.bi = fpext nsz float %i.bh to double
  %i.bj = fmul nsz double %i.d, %i.bi
  store double %i.bj, ptr %i.u, align 8, !tbaa !77
  br i1 %i.bd, label %.epil.preheader151, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %indvars.iv109 = phi i64 [ %indvars.iv.next110.3, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 6 uses
  %.06770.us.us = phi double [ %i.cd, %.lr.ph.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us ]
  %niter158 = phi i64 [ %niter158.next.3, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv109
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !77
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv109
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !77
  %i.bo = tail call nsz double @llvm.fmuladd.f64(double %i.bl, double %i.bn, double %.06770.us.us)
  %indvars.iv.next110 = or disjoint i64 %indvars.iv109, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next110
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !77
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next110
  %i.bs = load double, ptr %i.br, align 8, !tbaa !77
  %i.bt = tail call nsz double @llvm.fmuladd.f64(double %i.bq, double %i.bs, double %i.bo)
  %indvars.iv.next110.1 = or disjoint i64 %indvars.iv109, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next110.1
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !77
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next110.1
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !77
  %i.by = tail call nsz double @llvm.fmuladd.f64(double %i.bv, double %i.bx, double %i.bt)
  %indvars.iv.next110.2 = or disjoint i64 %indvars.iv109, 3 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next110.2
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !77
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next110.2
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !77
  %i.cd = tail call nsz double @llvm.fmuladd.f64(double %i.ca, double %i.cc, double %i.by) ; 3 uses
  %indvars.iv.next110.3 = add nuw nsw i64 %indvars.iv109, 4 ; 2 uses
  %niter158.next.3 = add i64 %niter158, 4         ; 2 uses
  %niter158.ncmp.3 = icmp eq i64 %niter158.next.3, %unroll_iter157
  br i1 %niter158.ncmp.3, label %..preheader_crit_edge.us.us.preheader.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !249

..preheader_crit_edge.us.us.preheader.unr-lcssa:  ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod154.not, label %..preheader_crit_edge.us.us.preheader, label %.epil.preheader151

.epil.preheader151:                               ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.lr.ph.us.us
  %indvars.iv109.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %indvars.iv.next110.3, %..preheader_crit_edge.us.us.preheader.unr-lcssa ]
  %.06770.us.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us ], [ %i.cd, %..preheader_crit_edge.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod156)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader151
  %indvars.iv109.epil = phi i64 [ %indvars.iv109.epil.init, %.epil.preheader151 ], [ %indvars.iv.next110.epil, %bb.b ] ; 3 uses
  %.06770.us.us.epil = phi double [ %.06770.us.us.epil.init, %.epil.preheader151 ], [ %i.ci, %bb.b ]
  %epil.iter153 = phi i64 [ 0, %.epil.preheader151 ], [ %epil.iter153.next, %bb.b ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv109.epil
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !77
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv109.epil
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !77
  %i.ci = tail call nsz double @llvm.fmuladd.f64(double %i.cf, double %i.ch, double %.06770.us.us.epil) ; 2 uses
  %indvars.iv.next110.epil = add nuw nsw i64 %indvars.iv109.epil, 1
  %epil.iter153.next = add i64 %epil.iter153, 1   ; 2 uses
  %epil.iter153.cmp.not = icmp eq i64 %epil.iter153.next, %xtraiter152
  br i1 %epil.iter153.cmp.not, label %..preheader_crit_edge.us.us.preheader, label %bb.b, !llvm.loop !250

..preheader_crit_edge.us.us.preheader:            ; preds = %bb.b, %..preheader_crit_edge.us.us.preheader.unr-lcssa
  %.lcssa = phi double [ %i.cd, %..preheader_crit_edge.us.us.preheader.unr-lcssa ], [ %i.ci, %bb.b ] ; 2 uses
  br i1 %i.bf, label %..preheader_crit_edge.us.us.epil.preheader, label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %..preheader_crit_edge.us.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115.3, %..preheader_crit_edge.us.us ], [ 1, %..preheader_crit_edge.us.us.preheader ] ; 6 uses
  %.16872.us.us = phi double [ %i.dg, %..preheader_crit_edge.us.us ], [ %.lcssa, %..preheader_crit_edge.us.us.preheader ]
  %niter165 = phi i64 [ %niter165.next.3, %..preheader_crit_edge.us.us ], [ 0, %..preheader_crit_edge.us.us.preheader ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv114
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !77
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv114
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !77
  %i.cn = fneg nsz double %i.ck
  %i.co = tail call nsz double @llvm.fmuladd.f64(double %i.cn, double %i.cm, double %.16872.us.us)
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next115
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !77
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next115
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !77
  %i.ct = fneg nsz double %i.cq
  %i.cu = tail call nsz double @llvm.fmuladd.f64(double %i.ct, double %i.cs, double %i.co)
  %indvars.iv.next115.1 = add nuw nsw i64 %indvars.iv114, 2 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next115.1
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !77
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next115.1
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !77
  %i.cz = fneg nsz double %i.cw
  %i.da = tail call nsz double @llvm.fmuladd.f64(double %i.cz, double %i.cy, double %i.cu)
  %indvars.iv.next115.2 = add nuw nsw i64 %indvars.iv114, 3 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next115.2
  %i.dc = load double, ptr %i.db, align 8, !tbaa !77
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next115.2
  %i.de = load double, ptr %i.dd, align 8, !tbaa !77
  %i.df = fneg nsz double %i.dc
  %i.dg = tail call nsz double @llvm.fmuladd.f64(double %i.df, double %i.de, double %i.da) ; 3 uses
  %indvars.iv.next115.3 = add nuw nsw i64 %indvars.iv114, 4 ; 2 uses
  %niter165.next.3 = add nuw i64 %niter165, 4     ; 2 uses
  %niter165.ncmp.3 = icmp eq i64 %niter165.next.3, %unroll_iter164
  br i1 %niter165.ncmp.3, label %._crit_edge.us.us.unr-lcssa, label %..preheader_crit_edge.us.us, !llvm.loop !251

._crit_edge.us.us.unr-lcssa:                      ; preds = %..preheader_crit_edge.us.us
  br i1 %lcmp.mod161.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us.epil.preheader

..preheader_crit_edge.us.us.epil.preheader:       ; preds = %._crit_edge.us.us.unr-lcssa, %..preheader_crit_edge.us.us.preheader
  %indvars.iv114.epil.init = phi i64 [ 1, %..preheader_crit_edge.us.us.preheader ], [ %indvars.iv.next115.3, %._crit_edge.us.us.unr-lcssa ]
  %.16872.us.us.epil.init = phi double [ %.lcssa, %..preheader_crit_edge.us.us.preheader ], [ %i.dg, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod163)
  br label %..preheader_crit_edge.us.us.epil

..preheader_crit_edge.us.us.epil:                 ; preds = %..preheader_crit_edge.us.us.epil, %..preheader_crit_edge.us.us.epil.preheader
  %indvars.iv114.epil = phi i64 [ %indvars.iv.next115.epil, %..preheader_crit_edge.us.us.epil ], [ %indvars.iv114.epil.init, %..preheader_crit_edge.us.us.epil.preheader ] ; 3 uses
  %.16872.us.us.epil = phi double [ %i.dm, %..preheader_crit_edge.us.us.epil ], [ %.16872.us.us.epil.init, %..preheader_crit_edge.us.us.epil.preheader ]
  %epil.iter160 = phi i64 [ %epil.iter160.next, %..preheader_crit_edge.us.us.epil ], [ 0, %..preheader_crit_edge.us.us.epil.preheader ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv114.epil
  %i.di = load double, ptr %i.dh, align 8, !tbaa !77
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv114.epil
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !77
  %i.dl = fneg nsz double %i.di
  %i.dm = tail call nsz double @llvm.fmuladd.f64(double %i.dl, double %i.dk, double %.16872.us.us.epil) ; 2 uses
  %indvars.iv.next115.epil = add nuw nsw i64 %indvars.iv114.epil, 1
  %epil.iter160.next = add i64 %epil.iter160, 1   ; 2 uses
  %epil.iter160.cmp.not = icmp eq i64 %epil.iter160.next, %xtraiter159
  br i1 %epil.iter160.cmp.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us.epil, !llvm.loop !252

._crit_edge.us.us:                                ; preds = %..preheader_crit_edge.us.us.epil, %._crit_edge.us.us.unr-lcssa
  %.lcssa135 = phi double [ %i.dg, %._crit_edge.us.us.unr-lcssa ], [ %i.dm, %..preheader_crit_edge.us.us.epil ] ; 2 uses
  store double %.lcssa135, ptr %i.s, align 8, !tbaa !77
  %i.dn = fmul nsz double %i.ax, %.lcssa135
  %i.do = load double, ptr %i.u, align 8, !tbaa !77
  %i.dp = fmul nsz double %i.ay, %i.do
  %i.dq = tail call nsz double @llvm.fmuladd.f64(double %i.dn, double %i.f, double %i.dp)
  %i.dr = fptrunc nsz double %i.dq to float
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv119
  store float %i.dr, ptr %i.ds, align 4, !tbaa !236
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.dt = load i32, ptr %i.ag, align 8, !tbaa !53
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp slt i64 %indvars.iv.next120, %i.du
  br i1 %i.dv, label %.lr.ph.us.us, label %._crit_edge79, !llvm.loop !253

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv106 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next107, %._crit_edge.us ] ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %i.u, i64 %i.aq, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %i.s, i64 %i.au, i1 false)
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv106
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !236
  %i.dy = fpext nsz float %i.dx to double
  %i.dz = fmul nsz double %i.d, %i.dy
  store double %i.dz, ptr %i.u, align 8, !tbaa !77
  br i1 %i.bb, label %.epil.preheader143, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.3, %.preheader.us.new ], [ 1, %.preheader.us ] ; 6 uses
  %.16872.us = phi double [ %i.ex, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter150 = phi i64 [ %niter150.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv101
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !77
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv101
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !77
  %i.ee = fneg nsz double %i.eb
  %i.ef = tail call nsz double @llvm.fmuladd.f64(double %i.ee, double %i.ed, double %.16872.us)
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next102
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !77
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next102
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !77
  %i.ek = fneg nsz double %i.eh
  %i.el = tail call nsz double @llvm.fmuladd.f64(double %i.ek, double %i.ej, double %i.ef)
  %indvars.iv.next102.1 = add nuw nsw i64 %indvars.iv101, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next102.1
  %i.en = load double, ptr %i.em, align 8, !tbaa !77
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next102.1
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !77
  %i.eq = fneg nsz double %i.en
  %i.er = tail call nsz double @llvm.fmuladd.f64(double %i.eq, double %i.ep, double %i.el)
  %indvars.iv.next102.2 = add nuw nsw i64 %indvars.iv101, 3 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next102.2
  %i.et = load double, ptr %i.es, align 8, !tbaa !77
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next102.2
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !77
  %i.ew = fneg nsz double %i.et
  %i.ex = tail call nsz double @llvm.fmuladd.f64(double %i.ew, double %i.ev, double %i.er) ; 3 uses
  %indvars.iv.next102.3 = add nuw nsw i64 %indvars.iv101, 4 ; 2 uses
  %niter150.next.3 = add nuw i64 %niter150, 4     ; 2 uses
  %niter150.ncmp.3 = icmp eq i64 %niter150.next.3, %unroll_iter149
  br i1 %niter150.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !251

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod146.not, label %._crit_edge.us, label %.epil.preheader143

.epil.preheader143:                               ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv101.epil.init = phi i64 [ 1, %.preheader.us ], [ %indvars.iv.next102.3, %._crit_edge.us.unr-lcssa ]
  %.16872.us.epil.init = phi double [ 0.000000e+00, %.preheader.us ], [ %i.ex, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader143
  %indvars.iv101.epil = phi i64 [ %indvars.iv101.epil.init, %.epil.preheader143 ], [ %indvars.iv.next102.epil, %bb.c ] ; 3 uses
  %.16872.us.epil = phi double [ %.16872.us.epil.init, %.epil.preheader143 ], [ %i.fd, %bb.c ]
  %epil.iter145 = phi i64 [ 0, %.epil.preheader143 ], [ %epil.iter145.next, %bb.c ]
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv101.epil
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !77
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv101.epil
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !77
  %i.fc = fneg nsz double %i.ez
  %i.fd = tail call nsz double @llvm.fmuladd.f64(double %i.fc, double %i.fb, double %.16872.us.epil) ; 2 uses
  %indvars.iv.next102.epil = add nuw nsw i64 %indvars.iv101.epil, 1
  %epil.iter145.next = add i64 %epil.iter145, 1   ; 2 uses
  %epil.iter145.cmp.not = icmp eq i64 %epil.iter145.next, %xtraiter144
  br i1 %epil.iter145.cmp.not, label %._crit_edge.us, label %bb.c, !llvm.loop !254

._crit_edge.us:                                   ; preds = %bb.c, %._crit_edge.us.unr-lcssa
  %.lcssa137 = phi double [ %i.ex, %._crit_edge.us.unr-lcssa ], [ %i.fd, %bb.c ] ; 2 uses
  store double %.lcssa137, ptr %i.s, align 8, !tbaa !77
  %i.fe = fmul nsz double %i.ax, %.lcssa137
  %i.ff = load double, ptr %i.u, align 8, !tbaa !77
  %i.fg = fmul nsz double %i.ay, %i.ff
  %i.fh = tail call nsz double @llvm.fmuladd.f64(double %i.fe, double %i.f, double %i.fg)
  %i.fi = fptrunc nsz double %i.fh to float
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv106
  store float %i.fi, ptr %i.fj, align 4, !tbaa !236
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.fk = load i32, ptr %i.ag, align 8, !tbaa !53
  %i.fl = sext i32 %i.fk to i64
  %i.fm = icmp slt i64 %indvars.iv.next107, %i.fl
  br i1 %i.fm, label %.preheader.us, label %._crit_edge79, !llvm.loop !253

.lr.ph78.split:                                   ; preds = %.lr.ph78
  br i1 %i.av, label %.lr.ph.us85.preheader, label %.lr.ph78.split.split

.lr.ph.us85.preheader:                            ; preds = %.lr.ph78.split
  %wide.trip.count = zext nneg i32 %i.x to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.fn = icmp ult i32 %i.x, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod142 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us85

.lr.ph.us85:                                      ; preds = %.lr.ph.us85.preheader, %..preheader_crit_edge.us86
  %indvars.iv98 = phi i64 [ 0, %.lr.ph.us85.preheader ], [ %indvars.iv.next99, %..preheader_crit_edge.us86 ] ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %i.u, i64 %i.aq, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %i.s, i64 %i.au, i1 false)
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv98
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !236
  %i.fq = fpext nsz float %i.fp to double
  %i.fr = fmul nsz double %i.d, %i.fq
  store double %i.fr, ptr %i.u, align 8, !tbaa !77
  br i1 %i.fn, label %.epil.preheader, label %.lr.ph.us85.new

.lr.ph.us85.new:                                  ; preds = %.lr.ph.us85, %.lr.ph.us85.new
  %indvars.iv95 = phi i64 [ %indvars.iv.next96.3, %.lr.ph.us85.new ], [ 0, %.lr.ph.us85 ] ; 6 uses
  %.06770.us82 = phi double [ %i.gl, %.lr.ph.us85.new ], [ 0.000000e+00, %.lr.ph.us85 ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us85.new ], [ 0, %.lr.ph.us85 ]
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv95
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !77
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv95
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !77
  %i.fw = tail call nsz double @llvm.fmuladd.f64(double %i.ft, double %i.fv, double %.06770.us82)
  %indvars.iv.next96 = or disjoint i64 %indvars.iv95, 1 ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next96
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !77
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next96
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !77
  %i.gb = tail call nsz double @llvm.fmuladd.f64(double %i.fy, double %i.ga, double %i.fw)
  %indvars.iv.next96.1 = or disjoint i64 %indvars.iv95, 2 ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next96.1
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !77
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next96.1
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !77
  %i.gg = tail call nsz double @llvm.fmuladd.f64(double %i.gd, double %i.gf, double %i.gb)
  %indvars.iv.next96.2 = or disjoint i64 %indvars.iv95, 3 ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next96.2
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !77
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next96.2
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !77
  %i.gl = tail call nsz double @llvm.fmuladd.f64(double %i.gi, double %i.gk, double %i.gg) ; 3 uses
  %indvars.iv.next96.3 = add nuw nsw i64 %indvars.iv95, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.us86.unr-lcssa, label %.lr.ph.us85.new, !llvm.loop !249

..preheader_crit_edge.us86.unr-lcssa:             ; preds = %.lr.ph.us85.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us86, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us86.unr-lcssa, %.lr.ph.us85
  %indvars.iv95.epil.init = phi i64 [ 0, %.lr.ph.us85 ], [ %indvars.iv.next96.3, %..preheader_crit_edge.us86.unr-lcssa ]
  %.06770.us82.epil.init = phi double [ 0.000000e+00, %.lr.ph.us85 ], [ %i.gl, %..preheader_crit_edge.us86.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod142)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv95.epil = phi i64 [ %indvars.iv95.epil.init, %.epil.preheader ], [ %indvars.iv.next96.epil, %bb.d ] ; 3 uses
  %.06770.us82.epil = phi double [ %.06770.us82.epil.init, %.epil.preheader ], [ %i.gq, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv95.epil
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !77
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv95.epil
  %i.gp = load double, ptr %i.go, align 8, !tbaa !77
  %i.gq = tail call nsz double @llvm.fmuladd.f64(double %i.gn, double %i.gp, double %.06770.us82.epil) ; 2 uses
  %indvars.iv.next96.epil = add nuw nsw i64 %indvars.iv95.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us86, label %bb.d, !llvm.loop !255

..preheader_crit_edge.us86:                       ; preds = %bb.d, %..preheader_crit_edge.us86.unr-lcssa
  %.lcssa139 = phi double [ %i.gl, %..preheader_crit_edge.us86.unr-lcssa ], [ %i.gq, %bb.d ] ; 2 uses
  store double %.lcssa139, ptr %i.s, align 8, !tbaa !77
  %i.gr = fmul nsz double %i.ax, %.lcssa139
  %i.gs = load double, ptr %i.u, align 8, !tbaa !77
  %i.gt = fmul nsz double %i.ay, %i.gs
  %i.gu = tail call nsz double @llvm.fmuladd.f64(double %i.gr, double %i.f, double %i.gt)
  %i.gv = fptrunc nsz double %i.gu to float
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv98
  store float %i.gv, ptr %i.gw, align 4, !tbaa !236
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %i.gx = load i32, ptr %i.ag, align 8, !tbaa !53
  %i.gy = sext i32 %i.gx to i64
  %i.gz = icmp slt i64 %indvars.iv.next99, %i.gy
  br i1 %i.gz, label %.lr.ph.us85, label %._crit_edge79, !llvm.loop !253

.lr.ph78.split.split:                             ; preds = %.lr.ph78.split
  %i.ha = fmul nsz double %i.ax, 0.000000e+00
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph78.split.split, %.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph78.split.split ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %i.u, i64 %i.aq, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %i.s, i64 %i.au, i1 false)
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !236
  %i.hd = fpext nsz float %i.hc to double
  %i.he = fmul nsz double %i.d, %i.hd
  store double %i.he, ptr %i.u, align 8, !tbaa !77
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !77
  %i.hf = load double, ptr %i.u, align 8, !tbaa !77
  %i.hg = fmul nsz double %i.ay, %i.hf
  %i.hh = tail call nsz double @llvm.fmuladd.f64(double %i.ha, double %i.f, double %i.hg)
  %i.hi = fptrunc nsz double %i.hh to float
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  store float %i.hi, ptr %i.hj, align 4, !tbaa !236
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hk = load i32, ptr %i.ag, align 8, !tbaa !53
  %i.hl = sext i32 %i.hk to i64
  %i.hm = icmp slt i64 %indvars.iv.next, %i.hl
  br i1 %i.hm, label %.preheader, label %._crit_edge79, !llvm.loop !253

._crit_edge79:                                    ; preds = %.preheader, %..preheader_crit_edge.us86, %._crit_edge.us, %._crit_edge.us.us, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @iir_ch_parallel_s32p(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !214
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load double, ptr %i.e, align 8, !tbaa !215 ; 2 uses
  %i.g = fsub nsz double 1.000000e+00, %i.f
  %i.h = load ptr, ptr %1, align 8, !tbaa !59     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !216
  %i.m = sext i32 %2 to i64                       ; 3 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !216
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.m
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34
  %i.v = getelementptr inbounds [72 x i8], ptr %i.u, i64 %i.m ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load double, ptr %i.w, align 8, !tbaa !210
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 4 uses
  %i.z = load i32, ptr %i.v, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !31
  %. = tail call i32 @llvm.smax.i32(i32 %i.z, i32 %i.ab) ; 2 uses
  %i.ac = icmp sgt i32 %., 0
end_hunk_3
begin_hunk_4_@iir_ch_serial_s32p:bb.a
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph95.split, label %._crit_edge96, !llvm.loop !264

._crit_edge96:                                    ; preds = %._crit_edge, %.lr.ph95, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @iir_ch_s32p(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !214 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load double, ptr %i.e, align 8, !tbaa !215 ; 5 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !216
  %i.l = sext i32 %2 to i64                       ; 3 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.q = getelementptr inbounds [72 x i8], ptr %i.p, i64 %i.l ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75   ; 19 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !75   ; 23 uses
  %i.v = load i32, ptr %i.q, align 8, !tbaa !31   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !31   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !75   ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !75 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 16 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !216
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.l
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !30 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 5 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !53
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.al = load double, ptr %i.ak, align 8, !tbaa !108
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.an = load double, ptr %i.am, align 8, !tbaa !217
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.ap = add nsw i32 %i.x, -1
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 3                    ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.at = add nsw i32 %i.v, -1
  %i.au = sext i32 %i.at to i64
  %i.av = shl nsw i64 %i.au, 3                    ; 4 uses
  %i.aw = icmp sgt i32 %i.x, 0                    ; 2 uses
  %i.ax = icmp sgt i32 %i.v, 1
  %i.ay = fmul nsz double %i.an, %i.al            ; 4 uses
  %i.az = fsub nsz double 1.000000e+00, %i.f      ; 4 uses
  br i1 %i.ax, label %.lr.ph87.split.us, label %.lr.ph87.split

.lr.ph87.split.us:                                ; preds = %.lr.ph87
  br i1 %i.aw, label %.lr.ph.us.us.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph87.split.us
  %wide.trip.count113 = zext nneg i32 %i.v to i64
  %i.ba = add nsw i64 %wide.trip.count113, -1     ; 2 uses
  %xtraiter164 = and i64 %i.ba, 3                 ; 3 uses
  %i.bb = add nsw i32 %i.v, -2
  %i.bc = icmp ult i32 %i.bb, 3
  %unroll_iter169 = and i64 %i.ba, -4
  %lcmp.mod166.not = icmp eq i64 %xtraiter164, 0
  %lcmp.mod168 = icmp ne i64 %xtraiter164, 0
  br label %.preheader.us

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph87.split.us
  %wide.trip.count121 = zext nneg i32 %i.x to i64 ; 2 uses
  %wide.trip.count126 = zext nneg i32 %i.v to i64
  %i.bd = add nsw i64 %wide.trip.count126, -1     ; 2 uses
  %xtraiter172 = and i64 %wide.trip.count121, 3   ; 3 uses
  %i.be = icmp ult i32 %i.x, 4
  %unroll_iter177 = and i64 %wide.trip.count121, 2147483644
  %lcmp.mod174.not = icmp eq i64 %xtraiter172, 0
  %lcmp.mod176 = icmp ne i64 %xtraiter172, 0
  %xtraiter179 = and i64 %i.bd, 3                 ; 3 uses
  %i.bf = add nsw i32 %i.v, -2
  %i.bg = icmp ult i32 %i.bf, 3
  %unroll_iter184 = and i64 %i.bd, -4
  %lcmp.mod181.not = icmp eq i64 %xtraiter179, 0
  %lcmp.mod183 = icmp ne i64 %xtraiter179, 0
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %bb.g
  %indvars.iv128 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next129, %bb.g ] ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.u, i64 %i.ar, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.s, i64 %i.av, i1 false)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv128
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !31
  %i.bj = sitofp nsz i32 %i.bi to double
  %i.bk = fmul nsz double %i.d, %i.bj
  store double %i.bk, ptr %i.u, align 8, !tbaa !77
  br i1 %i.be, label %.epil.preheader171, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %indvars.iv118 = phi i64 [ %indvars.iv.next119.3, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 6 uses
  %.07579.us.us = phi double [ %i.ce, %.lr.ph.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us ]
  %niter178 = phi i64 [ %niter178.next.3, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv118
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !77
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv118
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !77
  %i.bp = tail call nsz double @llvm.fmuladd.f64(double %i.bm, double %i.bo, double %.07579.us.us)
  %indvars.iv.next119 = or disjoint i64 %indvars.iv118, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next119
  %i.br = load double, ptr %i.bq, align 8, !tbaa !77
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next119
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !77
  %i.bu = tail call nsz double @llvm.fmuladd.f64(double %i.br, double %i.bt, double %i.bp)
  %indvars.iv.next119.1 = or disjoint i64 %indvars.iv118, 2 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next119.1
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !77
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next119.1
  %i.by = load double, ptr %i.bx, align 8, !tbaa !77
  %i.bz = tail call nsz double @llvm.fmuladd.f64(double %i.bw, double %i.by, double %i.bu)
  %indvars.iv.next119.2 = or disjoint i64 %indvars.iv118, 3 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next119.2
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !77
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next119.2
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !77
  %i.ce = tail call nsz double @llvm.fmuladd.f64(double %i.cb, double %i.cd, double %i.bz) ; 3 uses
  %indvars.iv.next119.3 = add nuw nsw i64 %indvars.iv118, 4 ; 2 uses
  %niter178.next.3 = add i64 %niter178, 4         ; 2 uses
  %niter178.ncmp.3 = icmp eq i64 %niter178.next.3, %unroll_iter177
  br i1 %niter178.ncmp.3, label %..preheader_crit_edge.us.us.preheader.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !265

..preheader_crit_edge.us.us.preheader.unr-lcssa:  ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod174.not, label %..preheader_crit_edge.us.us.preheader, label %.epil.preheader171

.epil.preheader171:                               ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.lr.ph.us.us
  %indvars.iv118.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %indvars.iv.next119.3, %..preheader_crit_edge.us.us.preheader.unr-lcssa ]
  %.07579.us.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us ], [ %i.ce, %..preheader_crit_edge.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod176)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader171
  %indvars.iv118.epil = phi i64 [ %indvars.iv118.epil.init, %.epil.preheader171 ], [ %indvars.iv.next119.epil, %bb.b ] ; 3 uses
  %.07579.us.us.epil = phi double [ %.07579.us.us.epil.init, %.epil.preheader171 ], [ %i.cj, %bb.b ]
  %epil.iter173 = phi i64 [ 0, %.epil.preheader171 ], [ %epil.iter173.next, %bb.b ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv118.epil
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !77
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv118.epil
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !77
  %i.cj = tail call nsz double @llvm.fmuladd.f64(double %i.cg, double %i.ci, double %.07579.us.us.epil) ; 2 uses
  %indvars.iv.next119.epil = add nuw nsw i64 %indvars.iv118.epil, 1
  %epil.iter173.next = add i64 %epil.iter173, 1   ; 2 uses
  %epil.iter173.cmp.not = icmp eq i64 %epil.iter173.next, %xtraiter172
  br i1 %epil.iter173.cmp.not, label %..preheader_crit_edge.us.us.preheader, label %bb.b, !llvm.loop !266

..preheader_crit_edge.us.us.preheader:            ; preds = %bb.b, %..preheader_crit_edge.us.us.preheader.unr-lcssa
  %.lcssa = phi double [ %i.ce, %..preheader_crit_edge.us.us.preheader.unr-lcssa ], [ %i.cj, %bb.b ] ; 2 uses
  br i1 %i.bg, label %..preheader_crit_edge.us.us.epil.preheader, label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %..preheader_crit_edge.us.us
  %indvars.iv123 = phi i64 [ %indvars.iv.next124.3, %..preheader_crit_edge.us.us ], [ 1, %..preheader_crit_edge.us.us.preheader ] ; 6 uses
  %.17681.us.us = phi double [ %i.dh, %..preheader_crit_edge.us.us ], [ %.lcssa, %..preheader_crit_edge.us.us.preheader ]
  %niter185 = phi i64 [ %niter185.next.3, %..preheader_crit_edge.us.us ], [ 0, %..preheader_crit_edge.us.us.preheader ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv123
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !77
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv123
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !77
  %i.co = fneg nsz double %i.cl
  %i.cp = tail call nsz double @llvm.fmuladd.f64(double %i.co, double %i.cn, double %.17681.us.us)
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next124
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !77
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next124
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !77
  %i.cu = fneg nsz double %i.cr
  %i.cv = tail call nsz double @llvm.fmuladd.f64(double %i.cu, double %i.ct, double %i.cp)
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next124.1
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !77
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next124.1
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !77
  %i.da = fneg nsz double %i.cx
  %i.db = tail call nsz double @llvm.fmuladd.f64(double %i.da, double %i.cz, double %i.cv)
  %indvars.iv.next124.2 = add nuw nsw i64 %indvars.iv123, 3 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next124.2
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !77
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next124.2
  %i.df = load double, ptr %i.de, align 8, !tbaa !77
  %i.dg = fneg nsz double %i.dd
  %i.dh = tail call nsz double @llvm.fmuladd.f64(double %i.dg, double %i.df, double %i.db) ; 3 uses
  %indvars.iv.next124.3 = add nuw nsw i64 %indvars.iv123, 4 ; 2 uses
  %niter185.next.3 = add nuw i64 %niter185, 4     ; 2 uses
  %niter185.ncmp.3 = icmp eq i64 %niter185.next.3, %unroll_iter184
  br i1 %niter185.ncmp.3, label %._crit_edge.us.us.unr-lcssa, label %..preheader_crit_edge.us.us, !llvm.loop !267

bb.c:                                             ; preds = %._crit_edge.us.us
  %i.di = fcmp nsz ogt double %i.eb, f0x41DFFFFFFFC00000
  br i1 %i.di, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dj = fptosi double %i.eb to i32
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.dk = load i32, ptr %i.ac, align 8, !tbaa !31
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.ac, align 8, !tbaa !31
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.us.us
  %i.dm = load i32, ptr %i.ac, align 8, !tbaa !31
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.ac, align 8, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sink = phi i32 [ -2147483648, %bb.f ], [ 2147483647, %bb.e ], [ %i.dj, %bb.d ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv128
  store i32 %.sink, ptr %i.do, align 4, !tbaa !31
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.dp = load i32, ptr %i.ah, align 8, !tbaa !53
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next129, %i.dq
  br i1 %i.dr, label %.lr.ph.us.us, label %._crit_edge88, !llvm.loop !268

._crit_edge.us.us.unr-lcssa:                      ; preds = %..preheader_crit_edge.us.us
  br i1 %lcmp.mod181.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us.epil.preheader

..preheader_crit_edge.us.us.epil.preheader:       ; preds = %._crit_edge.us.us.unr-lcssa, %..preheader_crit_edge.us.us.preheader
  %indvars.iv123.epil.init = phi i64 [ 1, %..preheader_crit_edge.us.us.preheader ], [ %indvars.iv.next124.3, %._crit_edge.us.us.unr-lcssa ]
  %.17681.us.us.epil.init = phi double [ %.lcssa, %..preheader_crit_edge.us.us.preheader ], [ %i.dh, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %..preheader_crit_edge.us.us.epil

..preheader_crit_edge.us.us.epil:                 ; preds = %..preheader_crit_edge.us.us.epil, %..preheader_crit_edge.us.us.epil.preheader
  %indvars.iv123.epil = phi i64 [ %indvars.iv.next124.epil, %..preheader_crit_edge.us.us.epil ], [ %indvars.iv123.epil.init, %..preheader_crit_edge.us.us.epil.preheader ] ; 3 uses
  %.17681.us.us.epil = phi double [ %i.dx, %..preheader_crit_edge.us.us.epil ], [ %.17681.us.us.epil.init, %..preheader_crit_edge.us.us.epil.preheader ]
  %epil.iter180 = phi i64 [ %epil.iter180.next, %..preheader_crit_edge.us.us.epil ], [ 0, %..preheader_crit_edge.us.us.epil.preheader ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv123.epil
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !77
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv123.epil
  %i.dv = load double, ptr %i.du, align 8, !tbaa !77
  %i.dw = fneg nsz double %i.dt
  %i.dx = tail call nsz double @llvm.fmuladd.f64(double %i.dw, double %i.dv, double %.17681.us.us.epil) ; 2 uses
  %indvars.iv.next124.epil = add nuw nsw i64 %indvars.iv123.epil, 1
  %epil.iter180.next = add i64 %epil.iter180, 1   ; 2 uses
  %epil.iter180.cmp.not = icmp eq i64 %epil.iter180.next, %xtraiter179
  br i1 %epil.iter180.cmp.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us.epil, !llvm.loop !269

._crit_edge.us.us:                                ; preds = %..preheader_crit_edge.us.us.epil, %._crit_edge.us.us.unr-lcssa
  %.lcssa155 = phi double [ %i.dh, %._crit_edge.us.us.unr-lcssa ], [ %i.dx, %..preheader_crit_edge.us.us.epil ] ; 2 uses
  store double %.lcssa155, ptr %i.s, align 8, !tbaa !77
  %i.dy = fmul nsz double %i.ay, %.lcssa155
  %i.dz = load double, ptr %i.u, align 8, !tbaa !77
  %i.ea = fmul nsz double %i.az, %i.dz
  %i.eb = tail call nsz double @llvm.fmuladd.f64(double %i.dy, double %i.f, double %i.ea) ; 3 uses
  %i.ec = fcmp nsz olt double %i.eb, f0xC1E0000000000000
  br i1 %i.ec, label %bb.f, label %bb.c

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.l
  %indvars.iv115 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next116, %bb.l ] ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.u, i64 %i.ar, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.s, i64 %i.av, i1 false)
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv115
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !31
  %i.ef = sitofp nsz i32 %i.ee to double
  %i.eg = fmul nsz double %i.d, %i.ef
  store double %i.eg, ptr %i.u, align 8, !tbaa !77
  br i1 %i.bc, label %.epil.preheader163, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv110 = phi i64 [ %indvars.iv.next111.3, %.preheader.us.new ], [ 1, %.preheader.us ] ; 6 uses
  %.17681.us = phi double [ %i.fe, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter170 = phi i64 [ %niter170.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv110
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !77
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv110
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !77
  %i.el = fneg nsz double %i.ei
  %i.em = tail call nsz double @llvm.fmuladd.f64(double %i.el, double %i.ek, double %.17681.us)
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next111
  %i.eo = load double, ptr %i.en, align 8, !tbaa !77
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next111
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !77
  %i.er = fneg nsz double %i.eo
  %i.es = tail call nsz double @llvm.fmuladd.f64(double %i.er, double %i.eq, double %i.em)
  %indvars.iv.next111.1 = add nuw nsw i64 %indvars.iv110, 2 ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next111.1
  %i.eu = load double, ptr %i.et, align 8, !tbaa !77
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next111.1
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !77
  %i.ex = fneg nsz double %i.eu
  %i.ey = tail call nsz double @llvm.fmuladd.f64(double %i.ex, double %i.ew, double %i.es)
  %indvars.iv.next111.2 = add nuw nsw i64 %indvars.iv110, 3 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next111.2
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !77
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next111.2
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !77
  %i.fd = fneg nsz double %i.fa
  %i.fe = tail call nsz double @llvm.fmuladd.f64(double %i.fd, double %i.fc, double %i.ey) ; 3 uses
  %indvars.iv.next111.3 = add nuw nsw i64 %indvars.iv110, 4 ; 2 uses
  %niter170.next.3 = add nuw i64 %niter170, 4     ; 2 uses
  %niter170.ncmp.3 = icmp eq i64 %niter170.next.3, %unroll_iter169
  br i1 %niter170.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !267

bb.h:                                             ; preds = %._crit_edge.us
  %i.ff = fcmp nsz ogt double %i.fy, f0x41DFFFFFFFC00000
  br i1 %i.ff, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fg = fptosi double %i.fy to i32
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.fh = load i32, ptr %i.ac, align 8, !tbaa !31
  %i.fi = add nsw i32 %i.fh, 1
  store i32 %i.fi, ptr %i.ac, align 8, !tbaa !31
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.us
  %i.fj = load i32, ptr %i.ac, align 8, !tbaa !31
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.ac, align 8, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sink143 = phi i32 [ -2147483648, %bb.k ], [ 2147483647, %bb.j ], [ %i.fg, %bb.i ]
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv115
  store i32 %.sink143, ptr %i.fl, align 4, !tbaa !31
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.fm = load i32, ptr %i.ah, align 8, !tbaa !53
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp slt i64 %indvars.iv.next116, %i.fn
  br i1 %i.fo, label %.preheader.us, label %._crit_edge88, !llvm.loop !268

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod166.not, label %._crit_edge.us, label %.epil.preheader163

.epil.preheader163:                               ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv110.epil.init = phi i64 [ 1, %.preheader.us ], [ %indvars.iv.next111.3, %._crit_edge.us.unr-lcssa ]
  %.17681.us.epil.init = phi double [ 0.000000e+00, %.preheader.us ], [ %i.fe, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod168)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader163
  %indvars.iv110.epil = phi i64 [ %indvars.iv110.epil.init, %.epil.preheader163 ], [ %indvars.iv.next111.epil, %bb.m ] ; 3 uses
  %.17681.us.epil = phi double [ %.17681.us.epil.init, %.epil.preheader163 ], [ %i.fu, %bb.m ]
  %epil.iter165 = phi i64 [ 0, %.epil.preheader163 ], [ %epil.iter165.next, %bb.m ]
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv110.epil
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !77
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv110.epil
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !77
  %i.ft = fneg nsz double %i.fq
  %i.fu = tail call nsz double @llvm.fmuladd.f64(double %i.ft, double %i.fs, double %.17681.us.epil) ; 2 uses
  %indvars.iv.next111.epil = add nuw nsw i64 %indvars.iv110.epil, 1
  %epil.iter165.next = add i64 %epil.iter165, 1   ; 2 uses
  %epil.iter165.cmp.not = icmp eq i64 %epil.iter165.next, %xtraiter164
  br i1 %epil.iter165.cmp.not, label %._crit_edge.us, label %bb.m, !llvm.loop !270

._crit_edge.us:                                   ; preds = %bb.m, %._crit_edge.us.unr-lcssa
  %.lcssa157 = phi double [ %i.fe, %._crit_edge.us.unr-lcssa ], [ %i.fu, %bb.m ] ; 2 uses
  store double %.lcssa157, ptr %i.s, align 8, !tbaa !77
  %i.fv = fmul nsz double %i.ay, %.lcssa157
  %i.fw = load double, ptr %i.u, align 8, !tbaa !77
  %i.fx = fmul nsz double %i.az, %i.fw
  %i.fy = tail call nsz double @llvm.fmuladd.f64(double %i.fv, double %i.f, double %i.fx) ; 3 uses
  %i.fz = fcmp nsz olt double %i.fy, f0xC1E0000000000000
  br i1 %i.fz, label %bb.k, label %bb.h

.lr.ph87.split:                                   ; preds = %.lr.ph87
  br i1 %i.aw, label %.lr.ph.us94.preheader, label %.lr.ph87.split.split

.lr.ph.us94.preheader:                            ; preds = %.lr.ph87.split
  %wide.trip.count = zext nneg i32 %i.x to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ga = icmp ult i32 %i.x, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod162 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us94

.lr.ph.us94:                                      ; preds = %.lr.ph.us94.preheader, %bb.r
  %indvars.iv107 = phi i64 [ 0, %.lr.ph.us94.preheader ], [ %indvars.iv.next108, %bb.r ] ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.u, i64 %i.ar, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.s, i64 %i.av, i1 false)
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv107
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !31
  %i.gd = sitofp nsz i32 %i.gc to double
  %i.ge = fmul nsz double %i.d, %i.gd
  store double %i.ge, ptr %i.u, align 8, !tbaa !77
  br i1 %i.ga, label %.epil.preheader, label %.lr.ph.us94.new

.lr.ph.us94.new:                                  ; preds = %.lr.ph.us94, %.lr.ph.us94.new
  %indvars.iv104 = phi i64 [ %indvars.iv.next105.3, %.lr.ph.us94.new ], [ 0, %.lr.ph.us94 ] ; 6 uses
  %.07579.us91 = phi double [ %i.gy, %.lr.ph.us94.new ], [ 0.000000e+00, %.lr.ph.us94 ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us94.new ], [ 0, %.lr.ph.us94 ]
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv104
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !77
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv104
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !77
  %i.gj = tail call nsz double @llvm.fmuladd.f64(double %i.gg, double %i.gi, double %.07579.us91)
  %indvars.iv.next105 = or disjoint i64 %indvars.iv104, 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next105
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !77
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next105
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !77
  %i.go = tail call nsz double @llvm.fmuladd.f64(double %i.gl, double %i.gn, double %i.gj)
  %indvars.iv.next105.1 = or disjoint i64 %indvars.iv104, 2 ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next105.1
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !77
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next105.1
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !77
  %i.gt = tail call nsz double @llvm.fmuladd.f64(double %i.gq, double %i.gs, double %i.go)
  %indvars.iv.next105.2 = or disjoint i64 %indvars.iv104, 3 ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next105.2
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !77
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next105.2
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !77
  %i.gy = tail call nsz double @llvm.fmuladd.f64(double %i.gv, double %i.gx, double %i.gt) ; 3 uses
  %indvars.iv.next105.3 = add nuw nsw i64 %indvars.iv104, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.us95.unr-lcssa, label %.lr.ph.us94.new, !llvm.loop !265

bb.n:                                             ; preds = %..preheader_crit_edge.us95
  %i.gz = fcmp nsz ogt double %i.hr, f0x41DFFFFFFFC00000
  br i1 %i.gz, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ha = fptosi double %i.hr to i32
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.hb = load i32, ptr %i.ac, align 8, !tbaa !31
  %i.hc = add nsw i32 %i.hb, 1
  store i32 %i.hc, ptr %i.ac, align 8, !tbaa !31
  br label %bb.r

bb.q:                                             ; preds = %..preheader_crit_edge.us95
  %i.hd = load i32, ptr %i.ac, align 8, !tbaa !31
  %i.he = add nsw i32 %i.hd, 1
  store i32 %i.he, ptr %i.ac, align 8, !tbaa !31
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.sink145 = phi i32 [ -2147483648, %bb.q ], [ 2147483647, %bb.p ], [ %i.ha, %bb.o ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv107
  store i32 %.sink145, ptr %i.hf, align 4, !tbaa !31
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.hg = load i32, ptr %i.ah, align 8, !tbaa !53
  %i.hh = sext i32 %i.hg to i64
  %i.hi = icmp slt i64 %indvars.iv.next108, %i.hh
  br i1 %i.hi, label %.lr.ph.us94, label %._crit_edge88, !llvm.loop !268

..preheader_crit_edge.us95.unr-lcssa:             ; preds = %.lr.ph.us94.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us95, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us95.unr-lcssa, %.lr.ph.us94
  %indvars.iv104.epil.init = phi i64 [ 0, %.lr.ph.us94 ], [ %indvars.iv.next105.3, %..preheader_crit_edge.us95.unr-lcssa ]
  %.07579.us91.epil.init = phi double [ 0.000000e+00, %.lr.ph.us94 ], [ %i.gy, %..preheader_crit_edge.us95.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod162)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %indvars.iv104.epil = phi i64 [ %indvars.iv104.epil.init, %.epil.preheader ], [ %indvars.iv.next105.epil, %bb.s ] ; 3 uses
  %.07579.us91.epil = phi double [ %.07579.us91.epil.init, %.epil.preheader ], [ %i.hn, %bb.s ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv104.epil
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !77
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv104.epil
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !77
  %i.hn = tail call nsz double @llvm.fmuladd.f64(double %i.hk, double %i.hm, double %.07579.us91.epil) ; 2 uses
  %indvars.iv.next105.epil = add nuw nsw i64 %indvars.iv104.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us95, label %bb.s, !llvm.loop !271

..preheader_crit_edge.us95:                       ; preds = %bb.s, %..preheader_crit_edge.us95.unr-lcssa
  %.lcssa159 = phi double [ %i.gy, %..preheader_crit_edge.us95.unr-lcssa ], [ %i.hn, %bb.s ] ; 2 uses
  store double %.lcssa159, ptr %i.s, align 8, !tbaa !77
  %i.ho = fmul nsz double %i.ay, %.lcssa159
  %i.hp = load double, ptr %i.u, align 8, !tbaa !77
  %i.hq = fmul nsz double %i.az, %i.hp
  %i.hr = tail call nsz double @llvm.fmuladd.f64(double %i.ho, double %i.f, double %i.hq) ; 3 uses
  %i.hs = fcmp nsz olt double %i.hr, f0xC1E0000000000000
  br i1 %i.hs, label %bb.q, label %bb.n

.lr.ph87.split.split:                             ; preds = %.lr.ph87.split
  %i.ht = fmul nsz double %i.ay, 0.000000e+00
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph87.split.split, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph87.split.split ], [ %indvars.iv.next, %bb.x ] ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.u, i64 %i.ar, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.s, i64 %i.av, i1 false)
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !31
  %i.hw = sitofp nsz i32 %i.hv to double
  %i.hx = fmul nsz double %i.d, %i.hw
  store double %i.hx, ptr %i.u, align 8, !tbaa !77
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !77
  %i.hy = load double, ptr %i.u, align 8, !tbaa !77
end_hunk_4
begin_hunk_5_@iir_ch_serial_s16p:bb.a
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph95.split, label %._crit_edge96, !llvm.loop !284

._crit_edge96:                                    ; preds = %._crit_edge, %.lr.ph95, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @iir_ch_s16p(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !214 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load double, ptr %i.e, align 8, !tbaa !215 ; 5 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !216
  %i.l = sext i32 %2 to i64                       ; 3 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.q = getelementptr inbounds [72 x i8], ptr %i.p, i64 %i.l ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75   ; 19 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !75   ; 23 uses
  %i.v = load i32, ptr %i.q, align 8, !tbaa !31   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !31   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !75   ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !75 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 16 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !216
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.l
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !30 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 5 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !53
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.al = load double, ptr %i.ak, align 8, !tbaa !108
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.an = load double, ptr %i.am, align 8, !tbaa !217
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.ap = add nsw i32 %i.x, -1
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 3                    ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.at = add nsw i32 %i.v, -1
  %i.au = sext i32 %i.at to i64
  %i.av = shl nsw i64 %i.au, 3                    ; 4 uses
  %i.aw = icmp sgt i32 %i.x, 0                    ; 2 uses
  %i.ax = icmp sgt i32 %i.v, 1
  %i.ay = fmul nsz double %i.an, %i.al            ; 4 uses
  %i.az = fsub nsz double 1.000000e+00, %i.f      ; 4 uses
  br i1 %i.ax, label %.lr.ph87.split.us, label %.lr.ph87.split

.lr.ph87.split.us:                                ; preds = %.lr.ph87
  br i1 %i.aw, label %.lr.ph.us.us.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph87.split.us
  %wide.trip.count113 = zext nneg i32 %i.v to i64
  %i.ba = add nsw i64 %wide.trip.count113, -1     ; 2 uses
  %xtraiter164 = and i64 %i.ba, 3                 ; 3 uses
  %i.bb = add nsw i32 %i.v, -2
  %i.bc = icmp ult i32 %i.bb, 3
  %unroll_iter169 = and i64 %i.ba, -4
  %lcmp.mod166.not = icmp eq i64 %xtraiter164, 0
  %lcmp.mod168 = icmp ne i64 %xtraiter164, 0
  br label %.preheader.us

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph87.split.us
  %wide.trip.count121 = zext nneg i32 %i.x to i64 ; 2 uses
  %wide.trip.count126 = zext nneg i32 %i.v to i64
  %i.bd = add nsw i64 %wide.trip.count126, -1     ; 2 uses
  %xtraiter172 = and i64 %wide.trip.count121, 3   ; 3 uses
  %i.be = icmp ult i32 %i.x, 4
  %unroll_iter177 = and i64 %wide.trip.count121, 2147483644
  %lcmp.mod174.not = icmp eq i64 %xtraiter172, 0
  %lcmp.mod176 = icmp ne i64 %xtraiter172, 0
  %xtraiter179 = and i64 %i.bd, 3                 ; 3 uses
  %i.bf = add nsw i32 %i.v, -2
  %i.bg = icmp ult i32 %i.bf, 3
  %unroll_iter184 = and i64 %i.bd, -4
  %lcmp.mod181.not = icmp eq i64 %xtraiter179, 0
  %lcmp.mod183 = icmp ne i64 %xtraiter179, 0
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %bb.g
  %indvars.iv128 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next129, %bb.g ] ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.u, i64 %i.ar, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.s, i64 %i.av, i1 false)
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv128
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !272
  %i.bj = sitofp i16 %i.bi to double
  %i.bk = fmul nsz double %i.d, %i.bj
  store double %i.bk, ptr %i.u, align 8, !tbaa !77
  br i1 %i.be, label %.epil.preheader171, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %indvars.iv118 = phi i64 [ %indvars.iv.next119.3, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 6 uses
  %.07579.us.us = phi double [ %i.ce, %.lr.ph.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us ]
  %niter178 = phi i64 [ %niter178.next.3, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv118
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !77
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv118
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !77
  %i.bp = tail call nsz double @llvm.fmuladd.f64(double %i.bm, double %i.bo, double %.07579.us.us)
  %indvars.iv.next119 = or disjoint i64 %indvars.iv118, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next119
  %i.br = load double, ptr %i.bq, align 8, !tbaa !77
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next119
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !77
  %i.bu = tail call nsz double @llvm.fmuladd.f64(double %i.br, double %i.bt, double %i.bp)
  %indvars.iv.next119.1 = or disjoint i64 %indvars.iv118, 2 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next119.1
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !77
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next119.1
  %i.by = load double, ptr %i.bx, align 8, !tbaa !77
  %i.bz = tail call nsz double @llvm.fmuladd.f64(double %i.bw, double %i.by, double %i.bu)
  %indvars.iv.next119.2 = or disjoint i64 %indvars.iv118, 3 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next119.2
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !77
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next119.2
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !77
  %i.ce = tail call nsz double @llvm.fmuladd.f64(double %i.cb, double %i.cd, double %i.bz) ; 3 uses
  %indvars.iv.next119.3 = add nuw nsw i64 %indvars.iv118, 4 ; 2 uses
  %niter178.next.3 = add i64 %niter178, 4         ; 2 uses
  %niter178.ncmp.3 = icmp eq i64 %niter178.next.3, %unroll_iter177
  br i1 %niter178.ncmp.3, label %..preheader_crit_edge.us.us.preheader.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !285

..preheader_crit_edge.us.us.preheader.unr-lcssa:  ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod174.not, label %..preheader_crit_edge.us.us.preheader, label %.epil.preheader171

.epil.preheader171:                               ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.lr.ph.us.us
  %indvars.iv118.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %indvars.iv.next119.3, %..preheader_crit_edge.us.us.preheader.unr-lcssa ]
  %.07579.us.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us ], [ %i.ce, %..preheader_crit_edge.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod176)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader171
  %indvars.iv118.epil = phi i64 [ %indvars.iv118.epil.init, %.epil.preheader171 ], [ %indvars.iv.next119.epil, %bb.b ] ; 3 uses
  %.07579.us.us.epil = phi double [ %.07579.us.us.epil.init, %.epil.preheader171 ], [ %i.cj, %bb.b ]
  %epil.iter173 = phi i64 [ 0, %.epil.preheader171 ], [ %epil.iter173.next, %bb.b ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv118.epil
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !77
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv118.epil
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !77
  %i.cj = tail call nsz double @llvm.fmuladd.f64(double %i.cg, double %i.ci, double %.07579.us.us.epil) ; 2 uses
  %indvars.iv.next119.epil = add nuw nsw i64 %indvars.iv118.epil, 1
  %epil.iter173.next = add i64 %epil.iter173, 1   ; 2 uses
  %epil.iter173.cmp.not = icmp eq i64 %epil.iter173.next, %xtraiter172
  br i1 %epil.iter173.cmp.not, label %..preheader_crit_edge.us.us.preheader, label %bb.b, !llvm.loop !286

..preheader_crit_edge.us.us.preheader:            ; preds = %bb.b, %..preheader_crit_edge.us.us.preheader.unr-lcssa
  %.lcssa = phi double [ %i.ce, %..preheader_crit_edge.us.us.preheader.unr-lcssa ], [ %i.cj, %bb.b ] ; 2 uses
  br i1 %i.bg, label %..preheader_crit_edge.us.us.epil.preheader, label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %..preheader_crit_edge.us.us
  %indvars.iv123 = phi i64 [ %indvars.iv.next124.3, %..preheader_crit_edge.us.us ], [ 1, %..preheader_crit_edge.us.us.preheader ] ; 6 uses
  %.17681.us.us = phi double [ %i.dh, %..preheader_crit_edge.us.us ], [ %.lcssa, %..preheader_crit_edge.us.us.preheader ]
  %niter185 = phi i64 [ %niter185.next.3, %..preheader_crit_edge.us.us ], [ 0, %..preheader_crit_edge.us.us.preheader ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv123
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !77
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv123
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !77
  %i.co = fneg nsz double %i.cl
  %i.cp = tail call nsz double @llvm.fmuladd.f64(double %i.co, double %i.cn, double %.17681.us.us)
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next124
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !77
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next124
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !77
  %i.cu = fneg nsz double %i.cr
  %i.cv = tail call nsz double @llvm.fmuladd.f64(double %i.cu, double %i.ct, double %i.cp)
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next124.1
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !77
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next124.1
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !77
  %i.da = fneg nsz double %i.cx
  %i.db = tail call nsz double @llvm.fmuladd.f64(double %i.da, double %i.cz, double %i.cv)
  %indvars.iv.next124.2 = add nuw nsw i64 %indvars.iv123, 3 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next124.2
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !77
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next124.2
  %i.df = load double, ptr %i.de, align 8, !tbaa !77
  %i.dg = fneg nsz double %i.dd
  %i.dh = tail call nsz double @llvm.fmuladd.f64(double %i.dg, double %i.df, double %i.db) ; 3 uses
  %indvars.iv.next124.3 = add nuw nsw i64 %indvars.iv123, 4 ; 2 uses
  %niter185.next.3 = add nuw i64 %niter185, 4     ; 2 uses
  %niter185.ncmp.3 = icmp eq i64 %niter185.next.3, %unroll_iter184
  br i1 %niter185.ncmp.3, label %._crit_edge.us.us.unr-lcssa, label %..preheader_crit_edge.us.us, !llvm.loop !287

bb.c:                                             ; preds = %._crit_edge.us.us
  %i.di = fcmp nsz ogt double %i.eb, 3.276700e+04
  br i1 %i.di, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dj = fptosi double %i.eb to i16
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.dk = load i32, ptr %i.ac, align 8, !tbaa !31
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.ac, align 8, !tbaa !31
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.us.us
  %i.dm = load i32, ptr %i.ac, align 8, !tbaa !31
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.ac, align 8, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sink = phi i16 [ -32768, %bb.f ], [ 32767, %bb.e ], [ %i.dj, %bb.d ]
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %indvars.iv128
  store i16 %.sink, ptr %i.do, align 2, !tbaa !272
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.dp = load i32, ptr %i.ah, align 8, !tbaa !53
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next129, %i.dq
  br i1 %i.dr, label %.lr.ph.us.us, label %._crit_edge88, !llvm.loop !288

._crit_edge.us.us.unr-lcssa:                      ; preds = %..preheader_crit_edge.us.us
  br i1 %lcmp.mod181.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us.epil.preheader

..preheader_crit_edge.us.us.epil.preheader:       ; preds = %._crit_edge.us.us.unr-lcssa, %..preheader_crit_edge.us.us.preheader
  %indvars.iv123.epil.init = phi i64 [ 1, %..preheader_crit_edge.us.us.preheader ], [ %indvars.iv.next124.3, %._crit_edge.us.us.unr-lcssa ]
  %.17681.us.us.epil.init = phi double [ %.lcssa, %..preheader_crit_edge.us.us.preheader ], [ %i.dh, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %..preheader_crit_edge.us.us.epil

..preheader_crit_edge.us.us.epil:                 ; preds = %..preheader_crit_edge.us.us.epil, %..preheader_crit_edge.us.us.epil.preheader
  %indvars.iv123.epil = phi i64 [ %indvars.iv.next124.epil, %..preheader_crit_edge.us.us.epil ], [ %indvars.iv123.epil.init, %..preheader_crit_edge.us.us.epil.preheader ] ; 3 uses
  %.17681.us.us.epil = phi double [ %i.dx, %..preheader_crit_edge.us.us.epil ], [ %.17681.us.us.epil.init, %..preheader_crit_edge.us.us.epil.preheader ]
  %epil.iter180 = phi i64 [ %epil.iter180.next, %..preheader_crit_edge.us.us.epil ], [ 0, %..preheader_crit_edge.us.us.epil.preheader ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv123.epil
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !77
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv123.epil
  %i.dv = load double, ptr %i.du, align 8, !tbaa !77
  %i.dw = fneg nsz double %i.dt
  %i.dx = tail call nsz double @llvm.fmuladd.f64(double %i.dw, double %i.dv, double %.17681.us.us.epil) ; 2 uses
  %indvars.iv.next124.epil = add nuw nsw i64 %indvars.iv123.epil, 1
  %epil.iter180.next = add i64 %epil.iter180, 1   ; 2 uses
  %epil.iter180.cmp.not = icmp eq i64 %epil.iter180.next, %xtraiter179
  br i1 %epil.iter180.cmp.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us.epil, !llvm.loop !289

._crit_edge.us.us:                                ; preds = %..preheader_crit_edge.us.us.epil, %._crit_edge.us.us.unr-lcssa
  %.lcssa155 = phi double [ %i.dh, %._crit_edge.us.us.unr-lcssa ], [ %i.dx, %..preheader_crit_edge.us.us.epil ] ; 2 uses
  store double %.lcssa155, ptr %i.s, align 8, !tbaa !77
  %i.dy = fmul nsz double %i.ay, %.lcssa155
  %i.dz = load double, ptr %i.u, align 8, !tbaa !77
  %i.ea = fmul nsz double %i.az, %i.dz
  %i.eb = tail call nsz double @llvm.fmuladd.f64(double %i.dy, double %i.f, double %i.ea) ; 3 uses
  %i.ec = fcmp nsz olt double %i.eb, -3.276800e+04
  br i1 %i.ec, label %bb.f, label %bb.c

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.l
  %indvars.iv115 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next116, %bb.l ] ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.u, i64 %i.ar, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.s, i64 %i.av, i1 false)
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv115
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !272
  %i.ef = sitofp i16 %i.ee to double
  %i.eg = fmul nsz double %i.d, %i.ef
  store double %i.eg, ptr %i.u, align 8, !tbaa !77
  br i1 %i.bc, label %.epil.preheader163, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv110 = phi i64 [ %indvars.iv.next111.3, %.preheader.us.new ], [ 1, %.preheader.us ] ; 6 uses
  %.17681.us = phi double [ %i.fe, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter170 = phi i64 [ %niter170.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv110
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !77
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv110
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !77
  %i.el = fneg nsz double %i.ei
  %i.em = tail call nsz double @llvm.fmuladd.f64(double %i.el, double %i.ek, double %.17681.us)
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next111
  %i.eo = load double, ptr %i.en, align 8, !tbaa !77
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next111
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !77
  %i.er = fneg nsz double %i.eo
  %i.es = tail call nsz double @llvm.fmuladd.f64(double %i.er, double %i.eq, double %i.em)
  %indvars.iv.next111.1 = add nuw nsw i64 %indvars.iv110, 2 ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next111.1
  %i.eu = load double, ptr %i.et, align 8, !tbaa !77
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next111.1
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !77
  %i.ex = fneg nsz double %i.eu
  %i.ey = tail call nsz double @llvm.fmuladd.f64(double %i.ex, double %i.ew, double %i.es)
  %indvars.iv.next111.2 = add nuw nsw i64 %indvars.iv110, 3 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next111.2
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !77
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next111.2
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !77
  %i.fd = fneg nsz double %i.fa
  %i.fe = tail call nsz double @llvm.fmuladd.f64(double %i.fd, double %i.fc, double %i.ey) ; 3 uses
  %indvars.iv.next111.3 = add nuw nsw i64 %indvars.iv110, 4 ; 2 uses
  %niter170.next.3 = add nuw i64 %niter170, 4     ; 2 uses
  %niter170.ncmp.3 = icmp eq i64 %niter170.next.3, %unroll_iter169
  br i1 %niter170.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !287

bb.h:                                             ; preds = %._crit_edge.us
  %i.ff = fcmp nsz ogt double %i.fy, 3.276700e+04
  br i1 %i.ff, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fg = fptosi double %i.fy to i16
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.fh = load i32, ptr %i.ac, align 8, !tbaa !31
  %i.fi = add nsw i32 %i.fh, 1
  store i32 %i.fi, ptr %i.ac, align 8, !tbaa !31
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.us
  %i.fj = load i32, ptr %i.ac, align 8, !tbaa !31
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.ac, align 8, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sink143 = phi i16 [ -32768, %bb.k ], [ 32767, %bb.j ], [ %i.fg, %bb.i ]
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %indvars.iv115
  store i16 %.sink143, ptr %i.fl, align 2, !tbaa !272
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.fm = load i32, ptr %i.ah, align 8, !tbaa !53
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp slt i64 %indvars.iv.next116, %i.fn
  br i1 %i.fo, label %.preheader.us, label %._crit_edge88, !llvm.loop !288

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod166.not, label %._crit_edge.us, label %.epil.preheader163

.epil.preheader163:                               ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv110.epil.init = phi i64 [ 1, %.preheader.us ], [ %indvars.iv.next111.3, %._crit_edge.us.unr-lcssa ]
  %.17681.us.epil.init = phi double [ 0.000000e+00, %.preheader.us ], [ %i.fe, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod168)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader163
  %indvars.iv110.epil = phi i64 [ %indvars.iv110.epil.init, %.epil.preheader163 ], [ %indvars.iv.next111.epil, %bb.m ] ; 3 uses
  %.17681.us.epil = phi double [ %.17681.us.epil.init, %.epil.preheader163 ], [ %i.fu, %bb.m ]
  %epil.iter165 = phi i64 [ 0, %.epil.preheader163 ], [ %epil.iter165.next, %bb.m ]
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv110.epil
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !77
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv110.epil
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !77
  %i.ft = fneg nsz double %i.fq
  %i.fu = tail call nsz double @llvm.fmuladd.f64(double %i.ft, double %i.fs, double %.17681.us.epil) ; 2 uses
  %indvars.iv.next111.epil = add nuw nsw i64 %indvars.iv110.epil, 1
  %epil.iter165.next = add i64 %epil.iter165, 1   ; 2 uses
  %epil.iter165.cmp.not = icmp eq i64 %epil.iter165.next, %xtraiter164
  br i1 %epil.iter165.cmp.not, label %._crit_edge.us, label %bb.m, !llvm.loop !290

._crit_edge.us:                                   ; preds = %bb.m, %._crit_edge.us.unr-lcssa
  %.lcssa157 = phi double [ %i.fe, %._crit_edge.us.unr-lcssa ], [ %i.fu, %bb.m ] ; 2 uses
  store double %.lcssa157, ptr %i.s, align 8, !tbaa !77
  %i.fv = fmul nsz double %i.ay, %.lcssa157
  %i.fw = load double, ptr %i.u, align 8, !tbaa !77
  %i.fx = fmul nsz double %i.az, %i.fw
  %i.fy = tail call nsz double @llvm.fmuladd.f64(double %i.fv, double %i.f, double %i.fx) ; 3 uses
  %i.fz = fcmp nsz olt double %i.fy, -3.276800e+04
  br i1 %i.fz, label %bb.k, label %bb.h

.lr.ph87.split:                                   ; preds = %.lr.ph87
  br i1 %i.aw, label %.lr.ph.us94.preheader, label %.lr.ph87.split.split

.lr.ph.us94.preheader:                            ; preds = %.lr.ph87.split
  %wide.trip.count = zext nneg i32 %i.x to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ga = icmp ult i32 %i.x, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod162 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us94

.lr.ph.us94:                                      ; preds = %.lr.ph.us94.preheader, %bb.r
  %indvars.iv107 = phi i64 [ 0, %.lr.ph.us94.preheader ], [ %indvars.iv.next108, %bb.r ] ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.u, i64 %i.ar, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.s, i64 %i.av, i1 false)
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv107
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !272
  %i.gd = sitofp i16 %i.gc to double
  %i.ge = fmul nsz double %i.d, %i.gd
  store double %i.ge, ptr %i.u, align 8, !tbaa !77
  br i1 %i.ga, label %.epil.preheader, label %.lr.ph.us94.new

.lr.ph.us94.new:                                  ; preds = %.lr.ph.us94, %.lr.ph.us94.new
  %indvars.iv104 = phi i64 [ %indvars.iv.next105.3, %.lr.ph.us94.new ], [ 0, %.lr.ph.us94 ] ; 6 uses
  %.07579.us91 = phi double [ %i.gy, %.lr.ph.us94.new ], [ 0.000000e+00, %.lr.ph.us94 ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us94.new ], [ 0, %.lr.ph.us94 ]
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv104
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !77
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv104
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !77
  %i.gj = tail call nsz double @llvm.fmuladd.f64(double %i.gg, double %i.gi, double %.07579.us91)
  %indvars.iv.next105 = or disjoint i64 %indvars.iv104, 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next105
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !77
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next105
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !77
  %i.go = tail call nsz double @llvm.fmuladd.f64(double %i.gl, double %i.gn, double %i.gj)
  %indvars.iv.next105.1 = or disjoint i64 %indvars.iv104, 2 ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next105.1
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !77
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next105.1
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !77
  %i.gt = tail call nsz double @llvm.fmuladd.f64(double %i.gq, double %i.gs, double %i.go)
  %indvars.iv.next105.2 = or disjoint i64 %indvars.iv104, 3 ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next105.2
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !77
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next105.2
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !77
  %i.gy = tail call nsz double @llvm.fmuladd.f64(double %i.gv, double %i.gx, double %i.gt) ; 3 uses
  %indvars.iv.next105.3 = add nuw nsw i64 %indvars.iv104, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.us95.unr-lcssa, label %.lr.ph.us94.new, !llvm.loop !285

bb.n:                                             ; preds = %..preheader_crit_edge.us95
  %i.gz = fcmp nsz ogt double %i.hr, 3.276700e+04
  br i1 %i.gz, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ha = fptosi double %i.hr to i16
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.hb = load i32, ptr %i.ac, align 8, !tbaa !31
  %i.hc = add nsw i32 %i.hb, 1
  store i32 %i.hc, ptr %i.ac, align 8, !tbaa !31
  br label %bb.r

bb.q:                                             ; preds = %..preheader_crit_edge.us95
  %i.hd = load i32, ptr %i.ac, align 8, !tbaa !31
  %i.he = add nsw i32 %i.hd, 1
  store i32 %i.he, ptr %i.ac, align 8, !tbaa !31
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.sink145 = phi i16 [ -32768, %bb.q ], [ 32767, %bb.p ], [ %i.ha, %bb.o ]
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %indvars.iv107
  store i16 %.sink145, ptr %i.hf, align 2, !tbaa !272
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.hg = load i32, ptr %i.ah, align 8, !tbaa !53
  %i.hh = sext i32 %i.hg to i64
  %i.hi = icmp slt i64 %indvars.iv.next108, %i.hh
  br i1 %i.hi, label %.lr.ph.us94, label %._crit_edge88, !llvm.loop !288

..preheader_crit_edge.us95.unr-lcssa:             ; preds = %.lr.ph.us94.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us95, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us95.unr-lcssa, %.lr.ph.us94
  %indvars.iv104.epil.init = phi i64 [ 0, %.lr.ph.us94 ], [ %indvars.iv.next105.3, %..preheader_crit_edge.us95.unr-lcssa ]
  %.07579.us91.epil.init = phi double [ 0.000000e+00, %.lr.ph.us94 ], [ %i.gy, %..preheader_crit_edge.us95.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod162)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %indvars.iv104.epil = phi i64 [ %indvars.iv104.epil.init, %.epil.preheader ], [ %indvars.iv.next105.epil, %bb.s ] ; 3 uses
  %.07579.us91.epil = phi double [ %.07579.us91.epil.init, %.epil.preheader ], [ %i.hn, %bb.s ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv104.epil
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !77
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv104.epil
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !77
  %i.hn = tail call nsz double @llvm.fmuladd.f64(double %i.hk, double %i.hm, double %.07579.us91.epil) ; 2 uses
  %indvars.iv.next105.epil = add nuw nsw i64 %indvars.iv104.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us95, label %bb.s, !llvm.loop !291

..preheader_crit_edge.us95:                       ; preds = %bb.s, %..preheader_crit_edge.us95.unr-lcssa
  %.lcssa159 = phi double [ %i.gy, %..preheader_crit_edge.us95.unr-lcssa ], [ %i.hn, %bb.s ] ; 2 uses
  store double %.lcssa159, ptr %i.s, align 8, !tbaa !77
  %i.ho = fmul nsz double %i.ay, %.lcssa159
  %i.hp = load double, ptr %i.u, align 8, !tbaa !77
  %i.hq = fmul nsz double %i.az, %i.hp
  %i.hr = tail call nsz double @llvm.fmuladd.f64(double %i.ho, double %i.f, double %i.hq) ; 3 uses
  %i.hs = fcmp nsz olt double %i.hr, -3.276800e+04
  br i1 %i.hs, label %bb.q, label %bb.n

.lr.ph87.split.split:                             ; preds = %.lr.ph87.split
  %i.ht = fmul nsz double %i.ay, 0.000000e+00
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph87.split.split, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph87.split.split ], [ %indvars.iv.next, %bb.x ] ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.u, i64 %i.ar, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.s, i64 %i.av, i1 false)
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !272
  %i.hw = sitofp i16 %i.hv to double
  %i.hx = fmul nsz double %i.d, %i.hw
  store double %i.hx, ptr %i.u, align 8, !tbaa !77
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !77
  %i.hy = load double, ptr %i.u, align 8, !tbaa !77
end_hunk_5
