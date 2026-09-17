Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/wmavoice?download=true
inline.NumInlined: 94
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 34
begin_hunk_0_@synth_superframe:bb.a
  %.not.i154 = icmp eq i8 %i.amk, 0               ; 2 uses
  %i.asm = shl nuw nsw i32 %.zext.i, 2            ; 2 uses
  %i.asn = zext nneg i32 %i.asm to i64
  %i.aso = icmp eq i8 %i.amk, 2
  %i.asp = getelementptr inbounds nuw i8, ptr %i.amn, i64 1 ; 2 uses
  %i.asq = shl nuw i64 1, %i.amm                  ; 3 uses
  %i.asr = and i64 %i.asq, 18727
  %.not160.i.i.not.i = icmp eq i64 %i.asr, 0
  %i.ass = and i64 %i.asq, 112344
  %.not183.i = icmp eq i64 %i.ass, 0
  %i.ast = and i64 %i.asq, 74896
  %.not184.i = icmp eq i64 %i.ast, 0              ; 3 uses
  %i.asu = getelementptr i8, ptr %i.ajy, i64 640  ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ajy, i64 648 ; 2 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %i.ajy, i64 656 ; 2 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %i.ajy, i64 644 ; 2 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.ajy, i64 664 ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 668 ; 4 uses
  %i.ata = zext i8 %i.amq to i16
  %.rhs.trunc.i.i37.i.i = sub nuw nsw i16 1000, %i.ata ; 2 uses
  %i.atb = getelementptr i8, ptr %i.ajy, i64 636  ; 8 uses
  %wide.trip.count.i38.i.i = zext i8 %i.amq to i64 ; 11 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %i.ajy, i64 676 ; 6 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.ajy, i64 624 ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %i.ajy, i64 632
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ajy, i64 76 ; 4 uses
  %i.atg = uitofp i8 %i.amo to double
  %wide.trip.count218.i = zext i8 %i.amo to i64   ; 2 uses
  %i.ath = shl nuw nsw i64 %wide.trip.count.i38.i.i, 2
  %n.vec417 = and i64 %wide.trip.count.i38.i.i, 248 ; 3 uses
  %cmp.n426 = icmp eq i64 %n.vec417, %wide.trip.count.i38.i.i
  %xtraiter527 = and i64 %wide.trip.count.i38.i.i, 3 ; 2 uses
  %lcmp.mod528.not = icmp eq i64 %xtraiter527, 0
  %i.ati = shl nuw i64 1, %i.amm
  %i.atj = and i64 %i.ati, 129248
  %min.iters.check402.not = icmp eq i64 %i.atj, 0
  %n.vec390 = and i64 %wide.trip.count.i38.i.i, 248 ; 3 uses
  %cmp.n399 = icmp eq i64 %n.vec390, %wide.trip.count.i38.i.i
  %i.atk = sub i64 %i.ajp, %i.d
  %diff.check373 = icmp ugt i64 %i.atk, -16
  br label %bb.bn

bb.bn:                                            ; preds = %synth_block.exit.i, %aw_parse_coords.exit.i
  %indvars.iv214.i = phi i64 [ 0, %aw_parse_coords.exit.i ], [ %indvars.iv.next215.i, %synth_block.exit.i ] ; 12 uses
  %.0152200.i = phi i32 [ undef, %aw_parse_coords.exit.i ], [ %.1153180.i, %synth_block.exit.i ] ; 5 uses
  %indvars216.i = trunc i64 %indvars.iv214.i to i32 ; 5 uses
  switch i8 %i.asc, label %bb.ca [
    i8 2, label %bb.bo
    i8 1, label %bb.bz
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.atl = load i16, ptr %i.ase, align 2, !tbaa !59
  %i.atm = zext i16 %i.atl to i32                 ; 3 uses
  %i.atn = load i16, ptr %i.asd, align 4, !tbaa !59
  %i.ato = zext i16 %i.atn to i32                 ; 2 uses
  %i.atp = sub nsw i32 %i.atm, %i.ato
  %i.atq = shl nsw i32 %i.atp, 2                  ; 2 uses
  %i.atr = load i16, ptr %i.asf, align 4, !tbaa !59
  %i.ats = zext i16 %i.atr to i32                 ; 3 uses
  %i.att = sub nsw i32 %i.ats, %i.atm
  %i.atu = shl nsw i32 %i.att, 1                  ; 2 uses
  %i.atv = load i16, ptr %i.asg, align 2, !tbaa !59
  %i.atw = zext i16 %i.atv to i32                 ; 2 uses
  %i.atx = sub nsw i32 %i.atw, %i.ats
  %i.aty = icmp eq i64 %indvars.iv214.i, 0
  br i1 %i.aty, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.atz = load i32, ptr %i.asj, align 4, !tbaa !63 ; 2 uses
  %i.aua = load i32, ptr %i.at, align 8, !tbaa !52 ; 3 uses
  %i.aub = load i32, ptr %i.ay, align 8, !tbaa !51
  %i.auc = load ptr, ptr %.0114, align 8, !tbaa !49
  %i.aud = lshr i32 %i.aua, 3
  %i.aue = zext nneg i32 %i.aud to i64
  %i.auf = getelementptr inbounds nuw i8, ptr %i.auc, i64 %i.aue
  %i.aug = load i32, ptr %i.auf, align 1, !tbaa !30
  %i.auh = call i32 @llvm.bswap.i32(i32 %i.aug)
  %i.aui = and i32 %i.aua, 7
  %i.auj = shl i32 %i.auh, %i.aui
  %i.auk = sub nsw i32 32, %i.atz
  %i.aul = lshr i32 %i.auj, %i.auk
  %i.aum = add i32 %i.aua, %i.atz
  %i.aun = call i32 @llvm.umin.i32(i32 %i.aub, i32 %i.aum)
  %.pre.i = load i32, ptr %i.ash, align 16, !tbaa !60
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.auo = load i32, ptr %i.ash, align 16, !tbaa !60 ; 2 uses
  %i.aup = sub i32 %.0152200.i, %i.auo
  %i.auq = load i32, ptr %i.asi, align 4, !tbaa !61 ; 2 uses
  %i.aur = load i32, ptr %i.at, align 8, !tbaa !52 ; 3 uses
  %i.aus = load i32, ptr %i.ay, align 8, !tbaa !51
  %i.aut = load ptr, ptr %.0114, align 8, !tbaa !49
  %i.auu = lshr i32 %i.aur, 3
  %i.auv = zext nneg i32 %i.auu to i64
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aut, i64 %i.auv
  %i.aux = load i32, ptr %i.auw, align 1, !tbaa !30
  %i.auy = call i32 @llvm.bswap.i32(i32 %i.aux)
  %i.auz = and i32 %i.aur, 7
  %i.ava = shl i32 %i.auy, %i.auz
  %i.avb = sub nsw i32 32, %i.auq
  %i.avc = lshr i32 %i.ava, %i.avb
  %i.avd = add i32 %i.aur, %i.auq
  %i.ave = call i32 @llvm.umin.i32(i32 %i.aus, i32 %i.avd)
  %i.avf = add i32 %i.aup, %i.avc
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.avg = phi i32 [ %.pre.i, %bb.bp ], [ %i.auo, %bb.bq ] ; 3 uses
  %.sink.i = phi i32 [ %i.aun, %bb.bp ], [ %i.ave, %bb.bq ]
  %.0.i159 = phi i32 [ %i.aul, %bb.bp ], [ %i.avf, %bb.bq ] ; 5 uses
  store i32 %.sink.i, ptr %i.at, align 8, !tbaa !52
  %i.avh = load i32, ptr %i.ask, align 8, !tbaa !62
  %i.avi = sub nsw i32 %i.avh, %i.avg
  %i.avj = icmp slt i32 %.0.i159, %i.avg
  %..i.i = call i32 @llvm.smin.i32(i32 %.0.i159, i32 %i.avi)
  %.0.i.i = select i1 %i.avj, i32 %i.avg, i32 %..i.i
  %i.avk = icmp slt i32 %.0.i159, %i.atq
  br i1 %i.avk, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.avl = shl nuw nsw i32 %i.ato, 2
  %i.avm = add nsw i32 %.0.i159, %i.avl
  br label %bb.by

bb.bt:                                            ; preds = %bb.br
  %i.avn = sub nsw i32 %.0.i159, %i.atq           ; 3 uses
  %i.avo = icmp slt i32 %i.avn, %i.atu
  br i1 %i.avo, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.avp = shl nuw nsw i32 %i.atm, 2
  %i.avq = shl nuw nsw i32 %i.avn, 1
  %i.avr = add nuw nsw i32 %i.avq, %i.avp
  br label %bb.by

bb.bv:                                            ; preds = %bb.bt
  %i.avs = sub nsw i32 %i.avn, %i.atu             ; 2 uses
  %.not172.i = icmp sgt i32 %i.avs, %i.atx
  br i1 %.not172.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.avt = add nuw nsw i32 %i.avs, %i.ats
  %i.avu = shl nsw i32 %i.avt, 2
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.avv = shl nuw nsw i32 %i.atw, 2
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bu, %bb.bs
  %.0148.i = phi i32 [ %i.avm, %bb.bs ], [ %i.avr, %bb.bu ], [ %i.avu, %bb.bw ], [ %i.avv, %bb.bx ] ; 2 uses
  %i.avw = ashr i32 %.0148.i, 2
  %i.avx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv214.i
  store i32 %i.avw, ptr %i.avx, align 4, !tbaa !56
  br label %bb.ce

bb.bz:                                            ; preds = %bb.bn
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv214.i
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !56
  %i.awa = shl i32 %i.avz, 2
  br label %bb.ce

bb.ca:                                            ; preds = %bb.bn
  %i.awb = mul nuw nsw i64 %indvars.iv214.i, %wide.trip.count.i38.i.i ; 2 uses
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %i.aju, i64 %i.awb ; 5 uses
  %i.awd = getelementptr inbounds nuw [4 x i8], ptr %i.ajx, i64 %i.awb ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  br i1 %i.asl, label %bb.cb, label %.thread252.i

.thread252.i:                                     ; preds = %bb.ca
  %i.awe = mul nuw nsw i32 %indvars216.i, %.zext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  br label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  br i1 %.not.i154, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.awf = load i32, ptr %i.asz, align 4, !tbaa !145
  %i.awg = mul i32 %indvars216.i, 1877
  %i.awh = add nsw i32 %i.awf, %i.awg             ; 3 uses
  %i.awi = icmp ugt i32 %i.awh, 65534
  %i.awj = add i32 %i.awh, -65535
  %spec.select.i.i.i.i = select i1 %i.awi, i32 %i.awj, i32 %i.awh ; 4 uses
  %i.awk = sext i32 %spec.select.i.i.i.i to i64
  %i.awl = mul nsw i64 %i.awk, 477218589
  %i.awm = lshr i64 %i.awl, 32
  %i.awn = trunc nuw i64 %i.awm to i32
  %.neg.i.i.i.i = mul i32 %i.awn, -9
  %i.awo = add i32 %.neg.i.i.i.i, %spec.select.i.i.i.i
  %i.awp = zext i32 %i.awo to i64
  %i.awq = getelementptr inbounds nuw [8 x i8], ptr @pRNG.div_tbl, i64 %i.awp ; 2 uses
  %i.awr = load i32, ptr %i.awq, align 8, !tbaa !56
  %i.aws = mul i32 %spec.select.i.i.i.i, %i.awr
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awq, i64 4
  %i.awu = load i32, ptr %i.awt, align 4, !tbaa !56
  %5 = call range(i32 0, -65536) i32 @llvm.umulh.i32(i32 range(i32 0, -65535) %spec.select.i.i.i.i, i32 %i.awu)
  %i.awv = add i32 %5, %i.aws
  %.lhs.trunc.i.i.i.i = trunc i32 %i.awv to i16
  %i.aww = urem i16 %.lhs.trunc.i.i.i.i, %.rhs.trunc.i.i37.i.i
  %.zext.i.i.i.i = zext nneg i16 %i.aww to i32
  br label %.lr.ph.preheader.i.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.awx = load i32, ptr %i.at, align 8, !tbaa !52 ; 3 uses
  %i.awy = load i32, ptr %i.ay, align 8, !tbaa !51 ; 2 uses
  %i.awz = load ptr, ptr %.0114, align 8, !tbaa !49 ; 2 uses
  %i.axa = lshr i32 %i.awx, 3
  %i.axb = zext nneg i32 %i.axa to i64
  %i.axc = getelementptr inbounds nuw i8, ptr %i.awz, i64 %i.axb
  %i.axd = load i32, ptr %i.axc, align 1, !tbaa !30
  %i.axe = call i32 @llvm.bswap.i32(i32 %i.axd)
  %i.axf = and i32 %i.awx, 7
  %i.axg = shl i32 %i.axe, %i.axf
  %i.axh = lshr i32 %i.axg, 24
  %i.axi = add i32 %i.awx, 8
  %i.axj = call i32 @llvm.umin.i32(i32 %i.awy, i32 %i.axi) ; 4 uses
  store i32 %i.axj, ptr %i.at, align 8, !tbaa !52
  %i.axk = lshr i32 %i.axj, 3
  %i.axl = zext nneg i32 %i.axk to i64
  %i.axm = getelementptr inbounds nuw i8, ptr %i.awz, i64 %i.axl
  %i.axn = load i32, ptr %i.axm, align 1, !tbaa !30
  %i.axo = call i32 @llvm.bswap.i32(i32 %i.axn)
  %i.axp = and i32 %i.axj, 7
  %i.axq = shl i32 %i.axo, %i.axp
  %i.axr = lshr i32 %i.axq, 26
  %i.axs = add i32 %i.axj, 6
  %i.axt = call i32 @llvm.umin.i32(i32 %i.awy, i32 %i.axs)
  store i32 %i.axt, ptr %i.at, align 8, !tbaa !52
  %i.axu = zext nneg i32 %i.axr to i64
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr @wmavoice_gain_universal, i64 %i.axu
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.cd, %bb.cc
  %.017.in.i.i.i = phi ptr [ %i.atb, %bb.cc ], [ %i.axv, %bb.cd ]
  %.0.i.i.i = phi i32 [ %.zext.i.i.i.i, %bb.cc ], [ %i.axh, %bb.cd ]
  %.017.i.i.i = load float, ptr %.017.in.i.i.i, align 4, !tbaa !37 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.atc, i8 0, i64 24, i1 false)
  %i.axw = zext nneg i32 %.0.i.i.i to i64
  %invariant.gep.i.i.i = getelementptr inbounds nuw [4 x i8], ptr @wmavoice_std_codebook, i64 %i.axw ; 2 uses
  %broadcast.splatinsert391 = insertelement <4 x float> poison, float %.017.i.i.i, i64 0
  %broadcast.splat392 = shufflevector <4 x float> %broadcast.splatinsert391, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body393

vector.body393:                                   ; preds = %vector.body393, %.lr.ph.preheader.i.i.i
  %index394 = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %index.next397, %vector.body393 ] ; 3 uses
  %i.axx = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.i.i, i64 %index394 ; 2 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 16
  %wide.load395 = load <4 x float>, ptr %i.axx, align 4, !tbaa !37
  %wide.load396 = load <4 x float>, ptr %i.axy, align 4, !tbaa !37
  %i.axz = fmul nsz <4 x float> %broadcast.splat392, %wide.load395
  %i.aya = fmul nsz <4 x float> %broadcast.splat392, %wide.load396
  %i.ayb = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %index394 ; 2 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 16
  store <4 x float> %i.axz, ptr %i.ayb, align 4, !tbaa !37
  store <4 x float> %i.aya, ptr %i.ayc, align 4, !tbaa !37
  %index.next397 = add nuw i64 %index394, 8       ; 2 uses
  %i.ayd = icmp eq i64 %index.next397, %n.vec390
  br i1 %i.ayd, label %middle.block398, label %vector.body393, !llvm.loop !104

middle.block398:                                  ; preds = %vector.body393
  br i1 %cmp.n399, label %synth_block_hardcoded.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %middle.block398, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %n.vec390, %middle.block398 ] ; 3 uses
  %gep.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %i.aye = load float, ptr %gep.i.i.i, align 4, !tbaa !37
  %i.ayf = fmul nsz float %.017.i.i.i, %i.aye
  %i.ayg = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %indvars.iv.i.i.i
  store float %i.ayf, ptr %i.ayg, align 4, !tbaa !37
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i38.i.i
  br i1 %exitcond.not.i.i.i, label %synth_block_hardcoded.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !105

bb.ce:                                            ; preds = %bb.bz, %bb.by
  %.1153.ph.i = phi i32 [ %.0.i.i, %bb.by ], [ %.0152200.i, %bb.bz ]
  %.1.ph.i = phi i32 [ %.0148.i, %bb.by ], [ %i.awa, %bb.bz ]
  %i.ayh = mul nuw nsw i64 %indvars.iv214.i, %wide.trip.count.i38.i.i ; 3 uses
  %i.ayi = getelementptr inbounds nuw [4 x i8], ptr %i.aju, i64 %i.ayh
  %i.ayj = getelementptr inbounds nuw [4 x i8], ptr %i.ajx, i64 %i.ayh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.ayk = trunc nuw nsw i64 %i.ayh to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  br i1 %.not.i154, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 1331) #12
  call void @abort() #14
  unreachable

bb.cg:                                            ; preds = %bb.ce, %.thread252.i
  %.1153181256.i = phi i32 [ %.0152200.i, %.thread252.i ], [ %.1153.ph.i, %bb.ce ]
  %.1182255.i = phi i32 [ 0, %.thread252.i ], [ %.1.ph.i, %bb.ce ] ; 3 uses
  %i.ayl = phi i32 [ %i.awe, %.thread252.i ], [ %i.ayk, %bb.ce ]
  %i.aym = phi ptr [ %i.awc, %.thread252.i ], [ %i.ayi, %bb.ce ] ; 16 uses
  %i.ayn = phi ptr [ %i.awd, %.thread252.i ], [ %i.ayj, %bb.ce ]
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.asn, i1 false)
  %i.ayo = ashr i32 %.1182255.i, 2                ; 2 uses
  store i32 %i.ayo, ptr %i.afq, align 4, !tbaa !147
  store float 1.000000e+00, ptr %i.afr, align 4, !tbaa !148
  store i32 0, ptr %i.afs, align 4, !tbaa !149
  store i32 0, ptr %3, align 4, !tbaa !150
  br i1 %i.aso, label %bb.ch, label %bb.dl

bb.ch:                                            ; preds = %bb.cg
  %i.ayp = load i32, ptr %i.asu, align 16, !tbaa !142
  %.not.i.i.i.i = icmp eq i32 %i.ayp, 0
  %.not67.i.i.i.i = icmp ne i64 %indvars.iv214.i, 0
  %i.ayq = or i1 %.not67.i.i.i.i, %.not.i.i.i.i
  %.neg68.i.i.i.i = select i1 %i.ayq, i32 12, i32 10 ; 2 uses
  %i.ayr = load i32, ptr %i.at, align 8, !tbaa !52 ; 3 uses
  %i.ays = load i32, ptr %i.ay, align 8, !tbaa !51 ; 4 uses
  %i.ayt = load ptr, ptr %.0114, align 8, !tbaa !49 ; 3 uses
  %i.ayu = lshr i32 %i.ayr, 3
  %i.ayv = zext nneg i32 %i.ayu to i64
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayt, i64 %i.ayv
  %i.ayx = load i32, ptr %i.ayw, align 1, !tbaa !30
  %i.ayy = call i32 @llvm.bswap.i32(i32 %i.ayx)
  %i.ayz = and i32 %i.ayr, 7
  %i.aza = shl i32 %i.ayy, %i.ayz
  %i.azb = sub nuw nsw i32 32, %.neg68.i.i.i.i
  %i.azc = lshr i32 %i.aza, %i.azb                ; 6 uses
  %i.azd = add i32 %.neg68.i.i.i.i, %i.ayr
  %i.aze = call i32 @llvm.umin.i32(i32 %i.ays, i32 %i.azd) ; 4 uses
  store i32 %i.aze, ptr %i.at, align 8, !tbaa !52
  %i.azf = getelementptr inbounds nuw [4 x i8], ptr %i.asv, i64 %indvars.iv214.i
  %i.azg = load i32, ptr %i.azf, align 4, !tbaa !56
  %i.azh = icmp sgt i32 %i.azg, 0                 ; 3 uses
  br i1 %i.azh, label %bb.ci, label %bb.cr

bb.ci:                                            ; preds = %bb.ch
  %i.azi = load i32, ptr %i.asx, align 4, !tbaa !143 ; 3 uses
  %.not535 = icmp eq i32 %i.azi, 24               ; 5 uses
  %..i114.i.i.i = select i1 %.not535, i32 8, i32 4 ; 4 uses
  %.72.i.i.i.i = select i1 %.not535, i32 7, i32 3 ; 4 uses
  %.73.i.i.i.i = select i1 %.not535, i32 4, i32 3 ; 3 uses
  %.74.i.i.i.i = select i1 %.not535, i32 3, i32 4 ; 8 uses
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr %i.asw, i64 %indvars.iv214.i
  %i.azk = load i32, ptr %i.azj, align 4, !tbaa !56 ; 7 uses
  %.06279.i.i.i.i = add nsw i32 %.74.i.i.i.i, -1
  %i.azl = and i32 %i.azc, %..i114.i.i.i
  %.not71.i.i.i.i = icmp eq i32 %i.azl, 0
  %i.azm = select i1 %.not71.i.i.i.i, float 1.000000e+00, float -1.000000e+00
  store float %i.azm, ptr %i.afu, align 4, !tbaa !37
  %i.azn = and i32 %i.azc, %.72.i.i.i.i
  %i.azo = mul nuw nsw i32 %i.azn, %.74.i.i.i.i
  %i.azp = add i32 %.06279.i.i.i.i, %i.azk
  %i.azq = add i32 %i.azp, %i.azo
  store i32 %i.azq, ptr %i.aft, align 4, !tbaa !56
  %i.azr = load i32, ptr %3, align 4, !tbaa !150  ; 2 uses
  %i.azs = sext i32 %i.azr to i64
  %i.azt = getelementptr inbounds [4 x i8], ptr %i.aft, i64 %i.azs ; 2 uses
  %i.azu = load i32, ptr %i.azt, align 4, !tbaa !56 ; 3 uses
  %i.azv = icmp slt i32 %i.azu, 0
  br i1 %i.azv, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ci, %.lr.ph.i.i.i.i
  %i.azw = phi i32 [ %i.bad, %.lr.ph.i.i.i.i ], [ %i.azu, %bb.ci ]
  %i.azx = phi ptr [ %i.bac, %.lr.ph.i.i.i.i ], [ %i.azt, %bb.ci ]
  %i.azy = load i32, ptr %i.afq, align 4, !tbaa !147
  %i.azz = add nsw i32 %i.azy, %i.azw
  store i32 %i.azz, ptr %i.azx, align 4, !tbaa !56
  %i.baa = load i32, ptr %3, align 4, !tbaa !150  ; 2 uses
  %i.bab = sext i32 %i.baa to i64
  %i.bac = getelementptr inbounds [4 x i8], ptr %i.aft, i64 %i.bab ; 2 uses
  %i.bad = load i32, ptr %i.bac, align 4, !tbaa !56 ; 3 uses
  %i.bae = icmp slt i32 %i.bad, 0
  br i1 %i.bae, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !106

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.ci
  %i.baf = phi i32 [ %i.azr, %bb.ci ], [ %i.baa, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i32 [ %i.azu, %bb.ci ], [ %i.bad, %.lr.ph.i.i.i.i ]
  %i.bag = icmp samesign ult i32 %.lcssa.i.i.i.i, 80
  br i1 %i.bag, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %._crit_edge.i.i.i.i
  %i.bah = add nsw i32 %i.baf, 1                  ; 2 uses
  store i32 %i.bah, ptr %3, align 4, !tbaa !150
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %._crit_edge.i.i.i.i
  %i.bai = phi i32 [ %i.baf, %._crit_edge.i.i.i.i ], [ %i.bah, %bb.cj ]
  %i.baj = lshr i32 %i.azc, %.73.i.i.i.i          ; 3 uses
  %.06279.i.i.i.i.1 = add nsw i32 %.74.i.i.i.i, -2
  %i.bak = and i32 %i.baj, %..i114.i.i.i
  %.not71.i.i.i.i.1 = icmp eq i32 %i.bak, 0
  %i.bal = select i1 %.not71.i.i.i.i.1, float 1.000000e+00, float -1.000000e+00
  %i.bam = sext i32 %i.bai to i64                 ; 2 uses
  %i.ban = getelementptr inbounds [4 x i8], ptr %i.afu, i64 %i.bam
  store float %i.bal, ptr %i.ban, align 4, !tbaa !37
  %i.bao = and i32 %i.baj, %.72.i.i.i.i
  %i.bap = mul nuw nsw i32 %i.bao, %.74.i.i.i.i
  %i.baq = add i32 %.06279.i.i.i.i.1, %i.azk
  %i.bar = add i32 %i.baq, %i.bap
  %i.bas = getelementptr inbounds [4 x i8], ptr %i.aft, i64 %i.bam
  store i32 %i.bar, ptr %i.bas, align 4, !tbaa !56
end_hunk_0
begin_hunk_1_@synth_superframe:bb.a
  %.neg.i.i44.i.i = or i32 %.081112.i.i.i.i, -16
  %i.bex = lshr exact i32 -65536, %i.bew
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bev, i64 2 ; 2 uses
  %i.bez = load i16, ptr %i.bev, align 2, !tbaa !59
  %i.bfa = trunc i32 %i.bex to i16
  %i.bfb = and i16 %i.bez, %i.bfa
  store i16 %i.bfb, ptr %i.bev, align 2, !tbaa !59
  %i.bfc = add i32 %.neg.i.i44.i.i, %i.ber        ; 3 uses
  %i.bfd = icmp sgt i32 %i.bfc, 15
  br i1 %i.bfd, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bev, i64 4 ; 2 uses
  %i.bff = add nsw i32 %i.bfc, -16
  %i.bfg = lshr i32 65535, %i.bff
  %i.bfh = load i16, ptr %i.bfe, align 2, !tbaa !59
  %i.bfi = trunc nuw i32 %i.bfg to i16
  %i.bfj = and i16 %i.bfh, %i.bfi
  store i16 %i.bfj, ptr %i.bfe, align 2, !tbaa !59
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.bfk = lshr i32 65535, %i.bfc
  %i.bfl = load i16, ptr %i.bey, align 2, !tbaa !59
  %i.bfm = trunc nuw i32 %i.bfk to i16
  %i.bfn = and i16 %i.bfl, %i.bfm
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.sink.i117.i.i.i = phi i16 [ 0, %bb.cz ], [ %i.bfn, %bb.da ]
  store i16 %.sink.i117.i.i.i, ptr %i.bey, align 2, !tbaa !59
  %i.bfo = add nsw i32 %.081112.i.i.i.i, %i.bes   ; 2 uses
  %i.bfp = icmp slt i32 %i.bfo, 80
  br i1 %i.bfp, label %bb.cy, label %.loopexit107.i.i.i.i, !llvm.loop !108

.loopexit107.i.i.i.i:                             ; preds = %bb.db, %.preheader106.i.i.i.i, %bb.cx, %.thread.i.i.i.i
  %i.bfq = phi i32 [ 0, %.thread.i.i.i.i ], [ 0, %bb.cx ], [ %i.bep, %.preheader106.i.i.i.i ], [ %i.bep, %bb.db ]
  %i.bfr = shl i32 %indvars216.i, 1
  %i.bfs = sub i32 5, %i.bfr
  %i.bft = select i1 %i.bek, i32 %i.bfs, i32 4    ; 2 uses
  %i.bfu = lshr i32 %i.aze, 3
  %i.bfv = zext nneg i32 %i.bfu to i64
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.ayt, i64 %i.bfv
  %i.bfx = load i32, ptr %i.bfw, align 1, !tbaa !30
  %i.bfy = call i32 @llvm.bswap.i32(i32 %i.bfx)
  %i.bfz = and i32 %i.aze, 7
  %i.bga = shl i32 %i.bfy, %i.bfz
  %i.bgb = sub nsw i32 32, %i.bft
  %i.bgc = lshr i32 %i.bga, %i.bgb                ; 2 uses
  %i.bgd = add i32 %i.bft, %i.aze
  %i.bge = call i32 @llvm.umin.i32(i32 %i.ays, i32 %i.bgd) ; 6 uses
  store i32 %i.bge, ptr %i.at, align 8, !tbaa !52
  %.not117.i.i.i.i = icmp slt i32 %i.bgc, 0
  br i1 %.not117.i.i.i.i, label %aw_pulse_set2.exit.thread.i.i.i, label %.preheader.lr.ph.i.i.i.i

.preheader.lr.ph.i.i.i.i:                         ; preds = %.loopexit107.i.i.i.i
  %i.bgf = load i32, ptr %i.afq, align 4
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.dk, %.preheader.lr.ph.i.i.i.i
  %.0120.i.i.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.dk ]
  %.083119.i.i.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i.i.i ], [ %.184.i.i.i.i, %bb.dk ] ; 2 uses
  %.085118.i.i.i.i = phi i32 [ %i.bfq, %.preheader.lr.ph.i.i.i.i ], [ %i.bhm, %bb.dk ] ; 4 uses
  %i.bgg = icmp slt i32 %.085118.i.i.i.i, 0
  br i1 %i.bgg, label %.lr.ph115.i.i.i.i, label %._crit_edge.i115.i.i.i

.lr.ph115.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %.lr.ph115.i.i.i.i
  %.182114.i.i.i.i = phi i32 [ %i.bgh, %.lr.ph115.i.i.i.i ], [ %.085118.i.i.i.i, %.preheader.i.i.i.i ]
  %i.bgh = add nsw i32 %.182114.i.i.i.i, %i.bgf   ; 3 uses
  %i.bgi = icmp slt i32 %i.bgh, 0
  br i1 %i.bgi, label %.lr.ph115.i.i.i.i, label %._crit_edge.i115.i.i.i, !llvm.loop !109

._crit_edge.i115.i.i.i:                           ; preds = %.lr.ph115.i.i.i.i, %.preheader.i.i.i.i
  %.182.lcssa.i.i.i.i = phi i32 [ %.085118.i.i.i.i, %.preheader.i.i.i.i ], [ %i.bgh, %.lr.ph115.i.i.i.i ] ; 2 uses
  %i.bgj = icmp samesign ugt i32 %.182.lcssa.i.i.i.i, 79
  br i1 %i.bgj, label %bb.dc, label %bb.di

bb.dc:                                            ; preds = %._crit_edge.i115.i.i.i
  %i.bgk = load i16, ptr %i.afx, align 4, !tbaa !59
  %.not95.i.i.i.i = icmp eq i16 %i.bgk, 0
  br i1 %.not95.i.i.i.i, label %bb.dd, label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  %i.bgl = load i16, ptr %i.afz, align 2, !tbaa !59
  %.not96.i.i.i.i = icmp eq i16 %i.bgl, 0
  br i1 %.not96.i.i.i.i, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %i.bgm = load i16, ptr %i.aga, align 8, !tbaa !59
  %.not97.i.i.i.i = icmp eq i16 %i.bgm, 0
  br i1 %.not97.i.i.i.i, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.bgn = load i16, ptr %i.agb, align 2, !tbaa !59
  %.not98.i.i.i.i = icmp eq i16 %i.bgn, 0
  br i1 %.not98.i.i.i.i, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.bgo = load i16, ptr %i.agc, align 4, !tbaa !59
  %.not99.i.i.i.i = icmp eq i16 %i.bgo, 0
  br i1 %.not99.i.i.i.i, label %.lr.ph.i35.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc
  %.2.i.i.i.i = phi i32 [ 63, %bb.df ], [ 15, %bb.dc ], [ 31, %bb.dd ], [ 47, %bb.de ], [ 79, %bb.dg ] ; 2 uses
  %i.bgp = lshr i32 %.2.i.i.i.i, 4
  %i.bgq = zext nneg i32 %i.bgp to i64
  %i.bgr = getelementptr inbounds nuw [2 x i8], ptr %i.afx, i64 %i.bgq
  %i.bgs = load i16, ptr %i.bgr, align 2, !tbaa !59 ; 2 uses
  %i.bgt = zext i16 %i.bgs to i32                 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i16 %i.bgs, 256      ; 2 uses
  %i.bgu = lshr i32 %i.bgt, 8
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 %i.bgt, i32 %i.bgu
  %spec.select7.i.neg123.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 -8
  %i.bgv = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.bgw = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bgv
  %i.bgx = load i8, ptr %i.bgw, align 1, !tbaa !30
  %i.bgy = zext i8 %i.bgx to i32
  %.neg105.i.i.i.i = sub nsw i32 %.2.i.i.i.i, %i.bgy
  %i.bgz = add nsw i32 %.neg105.i.i.i.i, %spec.select7.i.neg123.i.i.i.i
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %._crit_edge.i115.i.i.i
  %.3.i.i.i.i = phi i32 [ %i.bgz, %bb.dh ], [ %.182.lcssa.i.i.i.i, %._crit_edge.i115.i.i.i ] ; 3 uses
  %i.bha = ashr i32 %.3.i.i.i.i, 4
  %i.bhb = sext i32 %i.bha to i64
  %i.bhc = getelementptr inbounds [2 x i8], ptr %i.afx, i64 %i.bhb ; 2 uses
  %i.bhd = load i16, ptr %i.bhc, align 2, !tbaa !59 ; 2 uses
  %i.bhe = zext i16 %i.bhd to i32
  %i.bhf = and i32 %.3.i.i.i.i, 15                ; 2 uses
  %i.bhg = lshr exact i32 32768, %i.bhf
  %i.bhh = and i32 %i.bhg, %i.bhe
  %.not100.i.i.i.i = icmp eq i32 %i.bhh, 0
  br i1 %.not100.i.i.i.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.bhi = ashr i32 -32769, %i.bhf
  %i.bhj = trunc i32 %i.bhi to i16
  %i.bhk = and i16 %i.bhd, %i.bhj
  store i16 %i.bhk, ptr %i.bhc, align 2, !tbaa !59
  %i.bhl = add nsw i32 %.083119.i.i.i.i, 1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.184.i.i.i.i = phi i32 [ %i.bhl, %bb.dj ], [ %.083119.i.i.i.i, %bb.di ] ; 2 uses
  %.1.i.i.i.i = phi i32 [ %.3.i.i.i.i, %bb.dj ], [ %.0120.i.i.i.i, %bb.di ] ; 2 uses
  %i.bhm = add nsw i32 %.085118.i.i.i.i, 1
  %.not.i116.i.i.i = icmp sgt i32 %.184.i.i.i.i, %i.bgc
  br i1 %.not.i116.i.i.i, label %aw_pulse_set2.exit.thread.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !110

aw_pulse_set2.exit.thread.i.i.i:                  ; preds = %bb.dk, %.loopexit107.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ 0, %.loopexit107.i.i.i.i ], [ %.1.i.i.i.i, %bb.dk ] ; 2 uses
  %i.bhn = sext i32 %i.bei to i64
  %i.bho = getelementptr inbounds [4 x i8], ptr %i.aft, i64 %i.bhn
  store i32 %.0.lcssa.i.i.i.i, ptr %i.bho, align 4, !tbaa !56
  %i.bhp = lshr i32 %i.bge, 3
  %i.bhq = zext nneg i32 %i.bhp to i64
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.ayt, i64 %i.bhq
  %i.bhs = load i8, ptr %i.bhr, align 1, !tbaa !30
  %i.bht = icmp slt i32 %i.bge, %i.ays
  %i.bhu = zext i1 %i.bht to i32
  %spec.select.i101.i.i.i.i = add i32 %i.bge, %i.bhu
  %i.bhv = zext i8 %i.bhs to i32
  %i.bhw = and i32 %i.bge, 7
  store i32 %spec.select.i101.i.i.i.i, ptr %i.at, align 8, !tbaa !52
  %i.bhx = lshr exact i32 128, %i.bhw
  %i.bhy = and i32 %i.bhx, %i.bhv
  %.not93.i.i.i.i = icmp eq i32 %i.bhy, 0
  %i.bhz = select i1 %.not93.i.i.i.i, float 1.000000e+00, float -1.000000e+00
  %i.bia = load i32, ptr %3, align 4, !tbaa !150  ; 2 uses
  %i.bib = sext i32 %i.bia to i64
  %i.bic = getelementptr inbounds [4 x i8], ptr %i.afu, i64 %i.bib
  store float %i.bhz, ptr %i.bic, align 4, !tbaa !37
  %i.bid = add nsw i32 %i.bia, 1
  store i32 %i.bid, ptr %3, align 4, !tbaa !150
  %i.bie = sub nsw i32 80, %.0.lcssa.i.i.i.i
  %i.bif = load i32, ptr %i.afq, align 4, !tbaa !147 ; 2 uses
  %i.big = srem i32 %i.bie, %i.bif                ; 2 uses
  %.not94.i.i.i.i = icmp eq i32 %i.big, 0
  %i.bih = sub nsw i32 %i.bif, %i.big
  %spec.select.i.i34.i.i = select i1 %.not94.i.i.i.i, i32 0, i32 %i.bih
  store i32 %spec.select.i.i34.i.i, ptr %i.asy, align 8, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit124.i.i.i

.lr.ph.i35.i.i:                                   ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bii = load i32, ptr %i.asz, align 4, !tbaa !145
  %i.bij = mul i32 %indvars216.i, 1877
  %i.bik = add nsw i32 %i.bii, %i.bij             ; 3 uses
  %i.bil = icmp ugt i32 %i.bik, 65534
  %i.bim = add i32 %i.bik, -65535
  %spec.select.i119.i.i.i = select i1 %i.bil, i32 %i.bim, i32 %i.bik ; 4 uses
  %i.bin = sext i32 %spec.select.i119.i.i.i to i64
  %i.bio = mul nsw i64 %i.bin, 477218589
  %i.bip = lshr i64 %i.bio, 32
  %i.biq = trunc nuw i64 %i.bip to i32
  %.neg.i120.i.i.i = mul i32 %i.biq, -9
  %i.bir = add i32 %.neg.i120.i.i.i, %spec.select.i119.i.i.i
  %i.bis = zext i32 %i.bir to i64
  %i.bit = getelementptr inbounds nuw [8 x i8], ptr @pRNG.div_tbl, i64 %i.bis ; 2 uses
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bit, i64 4
  %i.biv = load i32, ptr %i.biu, align 4, !tbaa !56
  %6 = call range(i32 0, -65536) i32 @llvm.umulh.i32(i32 range(i32 0, -65535) %spec.select.i119.i.i.i, i32 %i.biv)
  %7 = load i32, ptr %i.bit, align 8, !tbaa !56
  %8 = mul i32 %spec.select.i119.i.i.i, %7
  %i.biw = add i32 %6, %8
  %.lhs.trunc.i.i36.i.i = trunc i32 %i.biw to i16
  %i.bix = urem i16 %.lhs.trunc.i.i36.i.i, %.rhs.trunc.i.i37.i.i
  %i.biy = zext nneg i16 %i.bix to i64
  %invariant.gep.i39.i.i = getelementptr inbounds nuw [4 x i8], ptr @wmavoice_std_codebook, i64 %i.biy ; 6 uses
  %scevgep = getelementptr i8, ptr %i.aym, i64 %i.ath
  %bound0 = icmp ult ptr %i.aym, %i.asu
  %bound1 = icmp ult ptr %i.atb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph414.preheader, label %vector.ph416

vector.ph416:                                     ; preds = %.lr.ph.i35.i.i
  %i.biz = load float, ptr %i.atb, align 4, !tbaa !141, !alias.scope !152
  %broadcast.splatinsert422 = insertelement <4 x float> poison, float %i.biz, i64 0
  %broadcast.splat423 = shufflevector <4 x float> %broadcast.splatinsert422, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body418

vector.body418:                                   ; preds = %vector.body418, %vector.ph416
  %index419 = phi i64 [ 0, %vector.ph416 ], [ %index.next424, %vector.body418 ] ; 3 uses
  %i.bja = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %index419 ; 2 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 16
  %wide.load420 = load <4 x float>, ptr %i.bja, align 4, !tbaa !37
  %wide.load421 = load <4 x float>, ptr %i.bjb, align 4, !tbaa !37
  %i.bjc = fmul nsz <4 x float> %wide.load420, %broadcast.splat423
  %i.bjd = fmul nsz <4 x float> %wide.load421, %broadcast.splat423
  %i.bje = getelementptr inbounds nuw [4 x i8], ptr %i.aym, i64 %index419 ; 2 uses
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 16
  store <4 x float> %i.bjc, ptr %i.bje, align 4, !tbaa !37, !alias.scope !153, !noalias !152
  store <4 x float> %i.bjd, ptr %i.bjf, align 4, !tbaa !37, !alias.scope !153, !noalias !152
  %index.next424 = add nuw i64 %index419, 8       ; 2 uses
  %i.bjg = icmp eq i64 %index.next424, %n.vec417
  br i1 %i.bjg, label %middle.block425, label %vector.body418, !llvm.loop !114

middle.block425:                                  ; preds = %vector.body418
  br i1 %cmp.n426, label %._crit_edge.i.i.i, label %scalar.ph414.preheader

scalar.ph414.preheader:                           ; preds = %.lr.ph.i35.i.i, %middle.block425
  %indvars.iv.i40.i.i.ph = phi i64 [ 0, %.lr.ph.i35.i.i ], [ %n.vec417, %middle.block425 ] ; 3 uses
  br i1 %lcmp.mod528.not, label %scalar.ph414.prol.loopexit, label %scalar.ph414.prol

scalar.ph414.prol:                                ; preds = %scalar.ph414.preheader, %scalar.ph414.prol
  %indvars.iv.i40.i.i.prol = phi i64 [ %indvars.iv.next.i42.i.i.prol, %scalar.ph414.prol ], [ %indvars.iv.i40.i.i.ph, %scalar.ph414.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph414.prol ], [ 0, %scalar.ph414.preheader ]
  %gep.i41.i.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.i40.i.i.prol
  %i.bjh = load float, ptr %gep.i41.i.i.prol, align 4, !tbaa !37
  %i.bji = load float, ptr %i.atb, align 4, !tbaa !141
  %i.bjj = fmul nsz float %i.bjh, %i.bji
  %i.bjk = getelementptr inbounds nuw [4 x i8], ptr %i.aym, i64 %indvars.iv.i40.i.i.prol
  store float %i.bjj, ptr %i.bjk, align 4, !tbaa !37
  %indvars.iv.next.i42.i.i.prol = add nuw nsw i64 %indvars.iv.i40.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter527
  br i1 %prol.iter.cmp.not, label %scalar.ph414.prol.loopexit, label %scalar.ph414.prol, !llvm.loop !115

scalar.ph414.prol.loopexit:                       ; preds = %scalar.ph414.prol, %scalar.ph414.preheader
  %indvars.iv.i40.i.i.unr = phi i64 [ %indvars.iv.i40.i.i.ph, %scalar.ph414.preheader ], [ %indvars.iv.next.i42.i.i.prol, %scalar.ph414.prol ]
  %i.bjl = sub nsw i64 %indvars.iv.i40.i.i.ph, %wide.trip.count.i38.i.i
  %i.bjm = icmp ugt i64 %i.bjl, -4
  br i1 %i.bjm, label %._crit_edge.i.i.i, label %scalar.ph414

scalar.ph414:                                     ; preds = %scalar.ph414.prol.loopexit, %scalar.ph414
  %indvars.iv.i40.i.i = phi i64 [ %indvars.iv.next.i42.i.i.3, %scalar.ph414 ], [ %indvars.iv.i40.i.i.unr, %scalar.ph414.prol.loopexit ] ; 6 uses
  %gep.i41.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.i40.i.i
  %i.bjn = load float, ptr %gep.i41.i.i, align 4, !tbaa !37
  %i.bjo = load float, ptr %i.atb, align 4, !tbaa !141
  %i.bjp = fmul nsz float %i.bjn, %i.bjo
  %i.bjq = getelementptr inbounds nuw [4 x i8], ptr %i.aym, i64 %indvars.iv.i40.i.i
  store float %i.bjp, ptr %i.bjq, align 4, !tbaa !37
  %indvars.iv.next.i42.i.i = add nuw nsw i64 %indvars.iv.i40.i.i, 1 ; 2 uses
  %gep.i41.i.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.next.i42.i.i
  %i.bjr = load float, ptr %gep.i41.i.i.1, align 4, !tbaa !37
  %i.bjs = load float, ptr %i.atb, align 4, !tbaa !141
  %i.bjt = fmul nsz float %i.bjr, %i.bjs
  %i.bju = getelementptr inbounds nuw [4 x i8], ptr %i.aym, i64 %indvars.iv.next.i42.i.i
  store float %i.bjt, ptr %i.bju, align 4, !tbaa !37
  %indvars.iv.next.i42.i.i.1 = add nuw nsw i64 %indvars.iv.i40.i.i, 2 ; 2 uses
  %gep.i41.i.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.next.i42.i.i.1
  %i.bjv = load float, ptr %gep.i41.i.i.2, align 4, !tbaa !37
  %i.bjw = load float, ptr %i.atb, align 4, !tbaa !141
  %i.bjx = fmul nsz float %i.bjv, %i.bjw
  %i.bjy = getelementptr inbounds nuw [4 x i8], ptr %i.aym, i64 %indvars.iv.next.i42.i.i.1
  store float %i.bjx, ptr %i.bjy, align 4, !tbaa !37
  %indvars.iv.next.i42.i.i.2 = add nuw nsw i64 %indvars.iv.i40.i.i, 3 ; 2 uses
  %gep.i41.i.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.next.i42.i.i.2
  %i.bjz = load float, ptr %gep.i41.i.i.3, align 4, !tbaa !37
  %i.bka = load float, ptr %i.atb, align 4, !tbaa !141
  %i.bkb = fmul nsz float %i.bjz, %i.bka
  %i.bkc = getelementptr inbounds nuw [4 x i8], ptr %i.aym, i64 %indvars.iv.next.i42.i.i.2
  store float %i.bkb, ptr %i.bkc, align 4, !tbaa !37
  %indvars.iv.next.i42.i.i.3 = add nuw nsw i64 %indvars.iv.i40.i.i, 4 ; 2 uses
  %exitcond.not.i43.i.i.3 = icmp eq i64 %indvars.iv.next.i42.i.i.3, %wide.trip.count.i38.i.i
  br i1 %exitcond.not.i43.i.i.3, label %._crit_edge.i.i.i, label %scalar.ph414, !llvm.loop !116

._crit_edge.i.i.i:                                ; preds = %scalar.ph414.prol.loopexit, %scalar.ph414, %middle.block425
  %i.bkd = add i32 %i.bge, 8
  %i.bke = call i32 @llvm.umin.i32(i32 %i.ays, i32 %i.bkd)
  store i32 %i.bke, ptr %i.at, align 8, !tbaa !52
  br label %synth_block_fcb_acb.exit.i.i

bb.dl:                                            ; preds = %bb.cg
  %i.bkf = load i8, ptr %i.asp, align 1, !tbaa !136
  %i.bkg = zext i8 %i.bkf to i32                  ; 2 uses
  %i.bkh = sub nsw i32 5, %i.bkg                  ; 10 uses
  store i32 -1, ptr %i.afs, align 4, !tbaa !149
  %i.bki = load ptr, ptr %.0114, align 8, !tbaa !49 ; 15 uses
  %i.bkj = load i32, ptr %i.ay, align 8, !tbaa !51 ; 15 uses
  %i.bkk = add nuw nsw i32 %i.bkg, 27             ; 10 uses
  %.promoted.i.i.i = load i32, ptr %i.at, align 8, !tbaa !52 ; 4 uses
  %i.bkl = lshr i32 %.promoted.i.i.i, 3
  %i.bkm = zext nneg i32 %i.bkl to i64
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bki, i64 %i.bkm
  %i.bko = load i8, ptr %i.bkn, align 1, !tbaa !30
  %i.bkp = icmp slt i32 %.promoted.i.i.i, %i.bkj
  %i.bkq = zext i1 %i.bkp to i32
  %spec.select.i121.i.i.i = add i32 %.promoted.i.i.i, %i.bkq ; 4 uses
  %i.bkr = zext i8 %i.bko to i32
  %i.bks = and i32 %.promoted.i.i.i, 7
  store i32 %spec.select.i121.i.i.i, ptr %i.at, align 8, !tbaa !52
  %i.bkt = lshr exact i32 128, %i.bks
  %i.bku = and i32 %i.bkt, %i.bkr
  %.not.i32.i.i = icmp eq i32 %i.bku, 0
  %i.bkv = select i1 %.not.i32.i.i, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %i.bkw = lshr i32 %spec.select.i121.i.i.i, 3
  %i.bkx = zext nneg i32 %i.bkw to i64
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bki, i64 %i.bkx
  %i.bkz = load i32, ptr %i.bky, align 1, !tbaa !30
  %i.bla = call i32 @llvm.bswap.i32(i32 %i.bkz)
  %i.blb = and i32 %spec.select.i121.i.i.i, 7
  %i.blc = shl i32 %i.bla, %i.blb
  %i.bld = lshr i32 %i.blc, %i.bkk                ; 2 uses
  %i.ble = add i32 %spec.select.i121.i.i.i, %i.bkh
  %i.blf = call i32 @llvm.umin.i32(i32 %i.bkj, i32 %i.ble) ; 5 uses
  store i32 %i.blf, ptr %i.at, align 8, !tbaa !52
  %i.blg = mul nuw nsw i32 %i.bld, 5
  store i32 %i.blg, ptr %i.aft, align 4, !tbaa !56
  store i32 1, ptr %3, align 4, !tbaa !150
  store float %i.bkv, ptr %i.afu, align 4, !tbaa !37
  br i1 %.not160.i.i.not.i, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.blh = lshr i32 %i.blf, 3
  %i.bli = zext nneg i32 %i.blh to i64
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bki, i64 %i.bli
  %i.blk = load i32, ptr %i.blj, align 1, !tbaa !30
  %i.bll = call i32 @llvm.bswap.i32(i32 %i.blk)
  %i.blm = and i32 %i.blf, 7
  %i.bln = shl i32 %i.bll, %i.blm
  %i.blo = lshr i32 %i.bln, %i.bkk                ; 2 uses
  %i.blp = add i32 %i.blf, %i.bkh
  %i.blq = call i32 @llvm.umin.i32(i32 %i.bkj, i32 %i.blp) ; 2 uses
  store i32 %i.blq, ptr %i.at, align 8, !tbaa !52
  %i.blr = mul nuw nsw i32 %i.blo, 5
  store i32 %i.blr, ptr %i.afv, align 4, !tbaa !56
  %i.bls = icmp samesign ult i32 %i.bld, %i.blo
  %i.blt = fneg nsz float %i.bkv
  %i.blu = select nsz i1 %i.bls, float %i.blt, float %i.bkv
  store i32 2, ptr %3, align 4, !tbaa !150
  store float %i.blu, ptr %i.afw, align 4, !tbaa !37
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.blv = phi i32 [ 2, %bb.dm ], [ 1, %bb.dl ]   ; 3 uses
  %i.blw = phi i32 [ %i.blq, %bb.dm ], [ %i.blf, %bb.dl ] ; 4 uses
  %i.blx = lshr i32 %i.blw, 3
  %i.bly = zext nneg i32 %i.blx to i64
  %i.blz = getelementptr inbounds nuw i8, ptr %i.bki, i64 %i.bly
  %i.bma = load i8, ptr %i.blz, align 1, !tbaa !30
  %i.bmb = icmp slt i32 %i.blw, %i.bkj
  %i.bmc = zext i1 %i.bmb to i32
  %spec.select.i121.1.i.i.i = add i32 %i.blw, %i.bmc ; 4 uses
  %i.bmd = zext i8 %i.bma to i32
  %i.bme = and i32 %i.blw, 7
  store i32 %spec.select.i121.1.i.i.i, ptr %i.at, align 8, !tbaa !52
  %i.bmf = lshr exact i32 128, %i.bme
  %i.bmg = and i32 %i.bmf, %i.bmd
  %.not.1.i.i.i = icmp eq i32 %i.bmg, 0
  %i.bmh = select i1 %.not.1.i.i.i, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %i.bmi = lshr i32 %spec.select.i121.1.i.i.i, 3
  %i.bmj = zext nneg i32 %i.bmi to i64
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bki, i64 %i.bmj
  %i.bml = load i32, ptr %i.bmk, align 1, !tbaa !30
  %i.bmm = call i32 @llvm.bswap.i32(i32 %i.bml)
  %i.bmn = and i32 %spec.select.i121.1.i.i.i, 7
  %i.bmo = shl i32 %i.bmm, %i.bmn
  %i.bmp = lshr i32 %i.bmo, %i.bkk                ; 2 uses
  %i.bmq = add i32 %spec.select.i121.1.i.i.i, %i.bkh
  %i.bmr = call i32 @llvm.umin.i32(i32 %i.bkj, i32 %i.bmq) ; 5 uses
  store i32 %i.bmr, ptr %i.at, align 8, !tbaa !52
  %i.bms = mul nuw nsw i32 %i.bmp, 5
  %i.bmt = add nuw nsw i32 %i.bms, 1
  %i.bmu = zext nneg i32 %i.blv to i64            ; 2 uses
  %i.bmv = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.bmu
  store i32 %i.bmt, ptr %i.bmv, align 4, !tbaa !56
  %i.bmw = add nuw nsw i32 %i.blv, 1              ; 3 uses
  store i32 %i.bmw, ptr %3, align 4, !tbaa !150
  %i.bmx = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %i.bmu
  store float %i.bmh, ptr %i.bmx, align 4, !tbaa !37
  br i1 %.not183.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.bmy = lshr i32 %i.bmr, 3
end_hunk_1
begin_hunk_2_@postfilter:bb.a
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 12384
  %wide.load30.3 = load <4 x float>, ptr %i.pz, align 4, !tbaa !37
  %wide.load31.3 = load <4 x float>, ptr %i.qa, align 4, !tbaa !37
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 10276 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 10292 ; 2 uses
  %wide.load32.3 = load <4 x float>, ptr %i.qb, align 4, !tbaa !37
  %wide.load33.3 = load <4 x float>, ptr %i.qc, align 4, !tbaa !37
  %i.qd = fadd nsz <4 x float> %wide.load30.3, %wide.load32.3
  %i.qe = fadd nsz <4 x float> %wide.load31.3, %wide.load33.3
  store <4 x float> %i.qd, ptr %i.qb, align 4, !tbaa !37
  store <4 x float> %i.qe, ptr %i.qc, align 4, !tbaa !37
  %i.qf = icmp eq i64 %n.vec27, 32
  br i1 %i.qf, label %middle.block35, label %vector.body28.4

vector.body28.4:                                  ; preds = %vector.body28.3
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 12400
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 12416
  %wide.load30.4 = load <4 x float>, ptr %i.qg, align 4, !tbaa !37
  %wide.load31.4 = load <4 x float>, ptr %i.qh, align 4, !tbaa !37
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 10308 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 10324 ; 2 uses
  %wide.load32.4 = load <4 x float>, ptr %i.qi, align 4, !tbaa !37
  %wide.load33.4 = load <4 x float>, ptr %i.qj, align 4, !tbaa !37
  %i.qk = fadd nsz <4 x float> %wide.load30.4, %wide.load32.4
  %i.ql = fadd nsz <4 x float> %wide.load31.4, %wide.load33.4
  store <4 x float> %i.qk, ptr %i.qi, align 4, !tbaa !37
  store <4 x float> %i.ql, ptr %i.qj, align 4, !tbaa !37
  br label %middle.block35

middle.block35:                                   ; preds = %vector.body28.4, %vector.body28.3, %vector.body28.2, %vector.body28.1, %vector.ph26
  %cmp.n36 = icmp eq i64 %n.vec27, %wide.trip.count130.i
  br i1 %cmp.n36, label %._crit_edge120.i, label %scalar.ph24.preheader

scalar.ph24.preheader:                            ; preds = %.lr.ph119.i, %middle.block35
  %indvars.iv127.i.ph = phi i64 [ 0, %.lr.ph119.i ], [ %n.vec27, %middle.block35 ]
  br label %scalar.ph24

scalar.ph24:                                      ; preds = %scalar.ph24.preheader, %scalar.ph24
  %indvars.iv127.i = phi i64 [ %indvars.iv.next128.i, %scalar.ph24 ], [ %indvars.iv127.i.ph, %scalar.ph24.preheader ] ; 3 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv127.i
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 320
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !37
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv127.i ; 2 uses
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !37
  %i.qr = fadd nsz float %i.qo, %i.qq
  store float %i.qr, ptr %i.qp, align 4, !tbaa !37
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1 ; 2 uses
  %exitcond131.not.i = icmp eq i64 %indvars.iv.next128.i, %wide.trip.count130.i
  br i1 %exitcond131.not.i, label %._crit_edge120.i, label %scalar.ph24, !llvm.loop !163

._crit_edge120.i:                                 ; preds = %scalar.ph24, %middle.block35
  br i1 %i.pb, label %._crit_edge120.thread.i, label %wiener_denoise.exit

._crit_edge120.thread.i:                          ; preds = %._crit_edge120.i, %bb.w
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 10180
  %i.qt = sext i32 %i.pa to i64                   ; 2 uses
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.qs, i64 %i.qt
  %i.qv = getelementptr [4 x i8], ptr %i.k, i64 %i.qt
  %i.qw = getelementptr i8, ptr %i.qv, i64 320
  %i.qx = sub nsw i32 47, %i.pa
  %i.qy = zext nneg i32 %i.qx to i64
  %i.qz = shl nuw nsw i64 %i.qy, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.qu, ptr align 4 %i.qw, i64 %i.qz, i1 false)
  store i32 47, ptr %i.oi, align 4, !tbaa !174
  br label %wiener_denoise.exit

wiener_denoise.exit:                              ; preds = %bb.v, %._crit_edge120.i, %._crit_edge120.thread.i
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 6584 ; 2 uses
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !37
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %wiener_denoise.exit
  %indvars.iv.i45 = phi i64 [ 0, %wiener_denoise.exit ], [ %indvars.iv.next.i46.1, %bb.x ] ; 4 uses
  %i.rc = phi <2 x float> [ zeroinitializer, %wiener_denoise.exit ], [ %i.rs, %bb.x ]
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i45
  %i.re = load float, ptr %i.rd, align 4, !tbaa !37
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i45
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !37
  %i.rh = insertelement <2 x float> poison, float %i.rg, i64 0
  %i.ri = insertelement <2 x float> %i.rh, float %i.re, i64 1
  %i.rj = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ri)
  %i.rk = fadd nsz <2 x float> %i.rc, %i.rj
  %indvars.iv.next.i46 = or disjoint i64 %indvars.iv.i45, 1 ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i46
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !37
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i46
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !37
  %i.rp = insertelement <2 x float> poison, float %i.ro, i64 0
  %i.rq = insertelement <2 x float> %i.rp, float %i.rm, i64 1
  %i.rr = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.rq)
  %i.rs = fadd nsz <2 x float> %i.rk, %i.rr       ; 3 uses
  %indvars.iv.next.i46.1 = add nuw nsw i64 %indvars.iv.i45, 2 ; 2 uses
  %exitcond.not.i47.1 = icmp eq i64 %indvars.iv.next.i46.1, 80
  br i1 %exitcond.not.i47.1, label %bb.y, label %bb.x, !llvm.loop !164

bb.y:                                             ; preds = %bb.x
  %i.rt = extractelement <2 x float> %i.rs, i64 0
  %i.ru = fcmp nsz oeq float %i.rt, 0.000000e+00
  br i1 %i.ru, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.rv = fpext <2 x float> %i.rs to <2 x double> ; 2 uses
  %i.rw = extractelement <2 x double> %i.rv, i64 1
  %i.rx = fmul nsz double %i.rw, f0x3F847AE000000000
  %i.ry = extractelement <2 x double> %i.rv, i64 0
  %i.rz = fdiv nsz double %i.rx, %i.ry
  %i.sa = fptrunc nsz double %i.rz to float
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.sb = phi float [ %i.sa, %bb.z ], [ 0.000000e+00, %bb.y ] ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv39.i = phi i64 [ 0, %bb.aa ], [ %indvars.iv.next40.i.1, %bb.ab ] ; 4 uses
  %.035.i = phi float [ %i.rb, %bb.aa ], [ %i.sh, %bb.ab ]
  %i.sc = call nsz float @llvm.fmuladd.f32(float %.035.i, float 9.900000e-01, float %i.sb) ; 2 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv39.i
  %i.se = load float, ptr %i.sd, align 4, !tbaa !37
  %i.sf = fmul nsz float %i.sc, %i.se
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv39.i
  store float %i.sf, ptr %i.sg, align 4, !tbaa !37
  %indvars.iv.next40.i = or disjoint i64 %indvars.iv39.i, 1 ; 2 uses
  %i.sh = call nsz float @llvm.fmuladd.f32(float %i.sc, float 9.900000e-01, float %i.sb) ; 3 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next40.i
  %i.sj = load float, ptr %i.si, align 4, !tbaa !37
  %i.sk = fmul nsz float %i.sh, %i.sj
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next40.i
  store float %i.sk, ptr %i.sl, align 4, !tbaa !37
  %indvars.iv.next40.i.1 = add nuw nsw i64 %indvars.iv39.i, 2 ; 2 uses
  %exitcond42.not.i.1 = icmp eq i64 %indvars.iv.next40.i.1, 80
  br i1 %exitcond42.not.i.1, label %adaptive_gain_control.exit, label %bb.ab, !llvm.loop !165

adaptive_gain_control.exit:                       ; preds = %bb.ab
  store float %i.sh, ptr %i.ra, align 4, !tbaa !37
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !41
  %i.so = icmp sgt i32 %i.sn, 8
  br i1 %i.so, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %adaptive_gain_control.exit
  store <2 x float> <float -1.999970e+00, float 1.000000e+00>, ptr %i.i, align 8, !tbaa !37
  store <2 x float> <float f0xBFF76EF4, float f0x3F6F969E>, ptr %i.j, align 8, !tbaa !37
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 6588
  call void @ff_acelp_apply_order_2_transfer_function(ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, float noundef f0x3F70971D, ptr noundef nonnull %i.sp, i32 noundef 80) #12
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %adaptive_gain_control.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  ret void
}

declare void @ff_celp_lp_synthesis_filterf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @ff_set_fixed_vector(ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #4

declare float @ff_scalarproduct_float_c(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #9

declare void @ff_acelp_interpolatef(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @av_memcpy_backptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @ff_weighted_vector_sumf(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #4

declare void @ff_celp_lp_zero_synthesis_filterf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @ff_acelp_apply_order_2_transfer_function(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare void @ff_tilt_compensation(ptr noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log10.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.cos.v2f64(<2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #9

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!27, !6, i64 380}
!30 = !{!5, !5, i64 0}
!31 = !{!"GetBitContext", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!32 = !{!"PutBitContext", !6, i64 0, !6, i64 4, !14, i64 8, !14, i64 16, !14, i64 24}
!33 = !{!"p1 _ZTS11AVTXContext", !9, i64 0}
!34 = !{!"WMAVoiceContext", !31, i64 0, !5, i64 24, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !5, i64 116, !6, i64 124, !6, i64 128, !6, i64 132, !5, i64 136, !6, i64 456, !32, i64 464, !5, i64 496, !6, i64 624, !6, i64 628, !6, i64 632, !16, i64 636, !6, i64 640, !6, i64 644, !5, i64 648, !5, i64 656, !6, i64 664, !6, i64 668, !6, i64 672, !5, i64 676, !5, i64 700, !5, i64 2364, !33, i64 2432, !33, i64 2440, !9, i64 2448, !9, i64 2456, !33, i64 2464, !33, i64 2472, !9, i64 2480, !9, i64 2488, !5, i64 2496, !5, i64 4540, !16, i64 6584, !5, i64 6588, !5, i64 6596, !5, i64 10180, !6, i64 10820, !5, i64 10832, !5, i64 11360, !5, i64 11888}
!35 = !{!34, !6, i64 52}
!36 = !{!34, !6, i64 60}
!37 = !{!16, !16, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!34, !6, i64 64}
!40 = !{!34, !6, i64 68}
!41 = !{!34, !6, i64 72}
!42 = !{!34, !6, i64 80}
!43 = !{!34, !6, i64 84}
!44 = !{!34, !6, i64 76}
!45 = !{!"double", !5, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = !{!31, !14, i64 0}
!50 = !{!31, !6, i64 12}
!51 = !{!31, !6, i64 16}
!52 = !{!31, !6, i64 8}
!53 = !{!34, !6, i64 88}
!54 = !{!34, !6, i64 92}
!55 = !{!34, !6, i64 96}
!56 = !{!6, !6, i64 0}
!57 = !{!34, !6, i64 56}
!58 = !{!"short", !5, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!34, !6, i64 112}
!61 = !{!34, !6, i64 108}
!62 = !{!34, !6, i64 104}
!63 = !{!34, !6, i64 100}
!64 = !{!34, !6, i64 128}
!65 = !{!34, !6, i64 456}
!66 = !{!32, !6, i64 4}
!67 = !{!32, !6, i64 0}
!68 = !{!32, !14, i64 16}
!69 = !{!32, !14, i64 24}
!70 = !{!34, !6, i64 132}
!71 = distinct !{!71, !38}
!72 = distinct !{!72, !38, !47, !48}
!73 = !{!27, !6, i64 80}
!74 = !{!27, !14, i64 72}
!75 = !{!27, !6, i64 344}
!76 = !{!9, !9, i64 0}
!77 = distinct !{!77, !38}
!78 = distinct !{!78, !38}
!79 = distinct !{!79, !38}
!80 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!81 = !{!80, !14, i64 24}
!82 = !{!80, !6, i64 32}
!83 = !{!34, !6, i64 124}
!84 = !{!34, !6, i64 672}
!85 = !{!32, !14, i64 8}
!86 = distinct !{!86, !38}
!87 = !{!34, !16, i64 6584}
!88 = distinct !{!88, !38}
!89 = distinct !{!89, !38, !47, !48}
!90 = distinct !{!90, !38, !48, !47}
!91 = distinct !{!91, !38, !47, !48}
!92 = distinct !{!92, !38}
!93 = distinct !{!93, !38}
!94 = distinct !{!94, !38}
!95 = distinct !{!95, !38}
!96 = distinct !{!96, !38, !48, !47}
!97 = distinct !{!97, !38, !47, !48}
!98 = distinct !{!98, !38, !48, !47}
!99 = distinct !{!99, !38, !47, !48}
!100 = distinct !{!100, !38, !48, !47}
!101 = distinct !{!101, !38}
!102 = distinct !{!102, !38}
!103 = distinct !{!103, !38}
!104 = distinct !{!104, !38, !47, !48}
!105 = distinct !{!105, !38, !48, !47}
!106 = distinct !{!106, !38}
!107 = distinct !{!107, !38}
!108 = distinct !{!108, !38}
!109 = distinct !{!109, !38}
!110 = distinct !{!110, !38}
!111 = distinct !{!111, !"LVerDomain"}
!112 = distinct !{!112, !111}
!113 = distinct !{!113, !111}
!114 = distinct !{!114, !38, !47, !48}
!115 = distinct !{!115, !154}
!116 = distinct !{!116, !38, !47}
!117 = distinct !{!117, !38, !47, !48}
!118 = distinct !{!118, !38, !48, !47}
!119 = distinct !{!119, !38}
!120 = distinct !{!120, !38, !47, !48}
!121 = distinct !{!121, !38, !47}
!122 = distinct !{!122, !38}
!123 = distinct !{!123, !38, !47, !48}
!124 = distinct !{!124, !38, !47}
!125 = distinct !{!125, !38, !47, !48}
!126 = distinct !{!126, !38, !48, !47}
!127 = distinct !{!127, !38}
!128 = !{!"p2 omnipotent char", !25, i64 0}
!129 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!130 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!131 = !{!"AVFrame", !5, i64 0, !5, i64 64, !128, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !129, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !130, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!132 = !{!131, !6, i64 112}
!133 = !{!14, !14, i64 0}
!134 = !{!"frame_type_desc", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4}
!135 = !{!134, !5, i64 0}
!136 = !{!134, !5, i64 1}
!137 = !{!34, !6, i64 628}
!138 = !{!34, !6, i64 624}
!139 = !{!34, !6, i64 632}
!140 = !{!134, !5, i64 3}
!141 = !{!34, !16, i64 636}
!142 = !{!34, !6, i64 640}
!143 = !{!34, !6, i64 644}
!144 = !{!134, !5, i64 2}
!145 = !{!34, !6, i64 668}
!146 = !{!"AMRFixed", !6, i64 0, !5, i64 4, !5, i64 44, !6, i64 84, !6, i64 88, !16, i64 92}
!147 = !{!146, !6, i64 88}
!148 = !{!146, !16, i64 92}
!149 = !{!146, !6, i64 84}
!150 = !{!146, !6, i64 0}
!151 = !{!34, !6, i64 664}
!152 = !{!112}
!153 = !{!113}
!154 = !{!"llvm.loop.unroll.disable"}
!155 = distinct !{!155, !38}
!156 = distinct !{null, null}
!157 = distinct !{!157, !38}
!158 = distinct !{!158, !38}
!159 = distinct !{null}
!160 = distinct !{!160, !38, !47, !48}
!161 = distinct !{!161, !38, !47, !48}
!162 = distinct !{!162, !38, !48, !47}
end_hunk_2
