Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/sharpyuv?download=true
inline.NumInlined: 45
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@DoSharpArgbToYuv:bb.a
  %i.adk = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.adj, <4 x i16> zeroinitializer)
  %i.adl = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %i.adk, <4 x i16> splat (i16 255))
  %i.adm = trunc nuw <4 x i16> %i.adl to <4 x i8>
  %i.adn = getelementptr inbounds nuw i8, ptr %.097.us.i, i64 %index446
  store <4 x i8> %i.adm, ptr %i.adn, align 1, !tbaa !19, !alias.scope !47, !noalias !48
  %i.ado = trunc <4 x i64> %i.adi to <4 x i16>
  %i.adp = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ado, <4 x i16> zeroinitializer)
  %i.adq = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %i.adp, <4 x i16> splat (i16 255))
  %i.adr = trunc nuw <4 x i16> %i.adq to <4 x i8>
  %i.ads = getelementptr inbounds nuw i8, ptr %.098.us.i, i64 %index446
  store <4 x i8> %i.adr, ptr %i.ads, align 1, !tbaa !19, !alias.scope !49, !noalias !46
  %index.next450 = add nuw i64 %index446, 4       ; 2 uses
  %i.adt = icmp eq i64 %index.next450, %n.vec424
  br i1 %i.adt, label %middle.block451, label %vector.body445, !llvm.loop !40

middle.block451:                                  ; preds = %vector.body445
  br i1 %cmp.n452, label %.split117.us.us.i, label %scalar.ph407.preheader

scalar.ph407.preheader:                           ; preds = %.split115.us.us.i, %middle.block451
  %indvars.iv142.i.ph = phi i64 [ %n.vec424, %middle.block451 ], [ 0, %.split115.us.us.i ]
  br label %scalar.ph407

scalar.ph407:                                     ; preds = %scalar.ph407.preheader, %scalar.ph407
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %scalar.ph407 ], [ %indvars.iv142.i.ph, %scalar.ph407.preheader ] ; 6 uses
  %i.adu = getelementptr inbounds nuw [2 x i8], ptr %.195.us.i, i64 %indvars.iv142.i
  %i.adv = load i16, ptr %i.adu, align 2, !tbaa !15
  %gep170.i = getelementptr [2 x i8], ptr %invariant.gep169.i, i64 %indvars.iv142.i
  %i.adw = load i16, ptr %gep170.i, align 2, !tbaa !15
  %gep172.i = getelementptr [2 x i8], ptr %invariant.gep171.i, i64 %indvars.iv142.i
  %i.adx = load i16, ptr %gep172.i, align 2, !tbaa !15
  %i.ady = load i32, ptr %i.aau, align 4, !tbaa !13
  %i.adz = sext i32 %i.ady to i64
  %i.aea = sext i16 %i.adv to i64                 ; 2 uses
  %i.aeb = mul nsw i64 %i.adz, %i.aea
  %i.aec = load i32, ptr %i.aav, align 4, !tbaa !13
  %i.aed = sext i32 %i.aec to i64
  %i.aee = sext i16 %i.adw to i64                 ; 2 uses
  %i.aef = mul nsw i64 %i.aed, %i.aee
  %i.aeg = load i32, ptr %i.aaw, align 4, !tbaa !13
  %i.aeh = sext i32 %i.aeg to i64
  %i.aei = sext i16 %i.adx to i64                 ; 2 uses
  %i.aej = mul nsw i64 %i.aeh, %i.aei
  %i.aek = load i32, ptr %i.aax, align 4, !tbaa !13
  %i.ael = sext i32 %i.aek to i64
  %i.aem = add i64 %i.aeb, %i.um
  %i.aen = add i64 %i.aem, %i.aef
  %i.aeo = add i64 %i.aen, %i.aej
  %i.aep = add i64 %i.aeo, %i.ael
  %i.aeq = ashr i64 %i.aep, %i.uq
  %i.aer = load i32, ptr %i.aay, align 4, !tbaa !13
  %i.aes = sext i32 %i.aer to i64
  %i.aet = mul nsw i64 %i.aes, %i.aea
  %i.aeu = load i32, ptr %i.aaz, align 4, !tbaa !13
  %i.aev = sext i32 %i.aeu to i64
  %i.aew = mul nsw i64 %i.aev, %i.aee
  %i.aex = load i32, ptr %i.aba, align 4, !tbaa !13
  %i.aey = sext i32 %i.aex to i64
  %i.aez = mul nsw i64 %i.aey, %i.aei
  %i.afa = load i32, ptr %i.abb, align 4, !tbaa !13
  %i.afb = sext i32 %i.afa to i64
  %i.afc = add i64 %i.aet, %i.um
  %i.afd = add i64 %i.afc, %i.aew
  %i.afe = add i64 %i.afd, %i.aez
  %i.aff = add i64 %i.afe, %i.afb
  %i.afg = ashr i64 %i.aff, %i.uq
  %i.afh = trunc i64 %i.aeq to i16
  %i.afi = tail call i16 @llvm.smax.i16(i16 %i.afh, i16 0)
  %i.afj = tail call i16 @llvm.umin.i16(i16 %i.afi, i16 255)
  %i.afk = trunc nuw i16 %i.afj to i8
  %i.afl = getelementptr inbounds nuw i8, ptr %.097.us.i, i64 %indvars.iv142.i
  store i8 %i.afk, ptr %i.afl, align 1, !tbaa !19
  %i.afm = trunc i64 %i.afg to i16
  %i.afn = tail call i16 @llvm.smax.i16(i16 %i.afm, i16 0)
  %i.afo = tail call i16 @llvm.umin.i16(i16 %i.afn, i16 255)
  %i.afp = trunc nuw i16 %i.afo to i8
  %i.afq = getelementptr inbounds nuw i8, ptr %.098.us.i, i64 %indvars.iv142.i
  store i8 %i.afp, ptr %i.afq, align 1, !tbaa !19
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond147.not.i = icmp eq i64 %indvars.iv.next143.i, %wide.trip.count146.i
  br i1 %exitcond147.not.i, label %.split117.us.us.i, label %scalar.ph407, !llvm.loop !41

.split117.us.us.i:                                ; preds = %scalar.ph407, %middle.block451
  %i.afr = getelementptr inbounds [2 x i8], ptr %.195.us.i, i64 %.pre-phi311
  %i.afs = getelementptr inbounds i8, ptr %.097.us.i, i64 %i.abc
  %i.aft = getelementptr inbounds i8, ptr %.098.us.i, i64 %i.abd
  %i.afu = add nuw nsw i32 %.1.us.i, 1            ; 2 uses
  %exitcond149.not.i = icmp eq i32 %i.afu, %smax148.i
  br i1 %exitcond149.not.i, label %ConvertWRGBToYUV.exit, label %.split115.us.us.i, !llvm.loop !42

.split115.i:                                      ; preds = %.split117.i, %.split115.preheader.i
  %.098.i = phi ptr [ %i.ahg, %.split117.i ], [ %10, %.split115.preheader.i ] ; 2 uses
  %.097.i = phi ptr [ %i.ahf, %.split117.i ], [ %8, %.split115.preheader.i ] ; 2 uses
  %.195.i = phi ptr [ %i.ahe, %.split117.i ], [ %i.ai, %.split115.preheader.i ] ; 4 uses
  %.1.i = phi i32 [ %i.ahh, %.split117.i ], [ 0, %.split115.preheader.i ]
  %invariant.gep.i274 = getelementptr [2 x i8], ptr %.195.i, i64 %i.p
  %invariant.gep167.i = getelementptr [2 x i8], ptr %.195.i, i64 %i.k
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.split115.i
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %bb.m ], [ 0, %.split115.i ] ; 6 uses
  %i.afv = getelementptr inbounds nuw [2 x i8], ptr %.195.i, i64 %indvars.iv134.i
  %i.afw = load i16, ptr %i.afv, align 2, !tbaa !15
  %gep.i275 = getelementptr [2 x i8], ptr %invariant.gep.i274, i64 %indvars.iv134.i
  %i.afx = load i16, ptr %gep.i275, align 2, !tbaa !15
  %gep168.i = getelementptr [2 x i8], ptr %invariant.gep167.i, i64 %indvars.iv134.i
  %i.afy = load i16, ptr %gep168.i, align 2, !tbaa !15
  %i.afz = sext i16 %i.afw to i64                 ; 2 uses
  %i.aga = mul nsw i64 %i.afz, %i.abe
  %i.agb = sext i16 %i.afx to i64                 ; 2 uses
  %i.agc = mul nsw i64 %i.agb, %i.abf
  %i.agd = sext i16 %i.afy to i64                 ; 2 uses
  %i.age = mul nsw i64 %i.agd, %i.abg
  %i.agf = add i64 %i.abm, %i.aga
  %i.agg = add i64 %i.agf, %i.agc
  %i.agh = add i64 %i.agg, %i.age
  %i.agi = ashr i64 %i.agh, %i.uq                 ; 2 uses
  %i.agj = mul nsw i64 %i.afz, %i.abi
  %i.agk = mul nsw i64 %i.agb, %i.abj
  %i.agl = mul nsw i64 %i.agd, %i.abk
  %i.agm = add i64 %i.abn, %i.agj
  %i.agn = add i64 %i.agm, %i.agk
  %i.ago = add i64 %i.agn, %i.agl
  %i.agp = ashr i64 %i.ago, %i.uq                 ; 2 uses
  %i.agq = and i64 %i.agi, 32768
  %.not104.i = icmp eq i64 %i.agq, 0
  %i.agr = trunc i64 %i.agi to i32
  %i.ags = and i32 %i.agr, 65535
  %i.agt = tail call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.ui, i32 %i.ags)
  %i.agu = trunc nuw i32 %i.agt to i16
  %i.agv = select i1 %.not104.i, i16 %i.agu, i16 0
  %i.agw = getelementptr inbounds nuw [2 x i8], ptr %.097.i, i64 %indvars.iv134.i
  store i16 %i.agv, ptr %i.agw, align 2, !tbaa !15
  %i.agx = and i64 %i.agp, 32768
  %.not105.i = icmp eq i64 %i.agx, 0
  %i.agy = trunc i64 %i.agp to i32
  %i.agz = and i32 %i.agy, 65535
  %i.aha = tail call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.ui, i32 %i.agz)
  %i.ahb = trunc nuw i32 %i.aha to i16
  %i.ahc = select i1 %.not105.i, i16 %i.ahb, i16 0
  %i.ahd = getelementptr inbounds nuw [2 x i8], ptr %.098.i, i64 %indvars.iv134.i
  store i16 %i.ahc, ptr %i.ahd, align 2, !tbaa !15
  %indvars.iv.next135.i = add nuw nsw i64 %indvars.iv134.i, 1 ; 2 uses
  %exitcond139.not.i = icmp eq i64 %indvars.iv.next135.i, %wide.trip.count138.i
  br i1 %exitcond139.not.i, label %.split117.i, label %bb.m, !llvm.loop !43

.split117.i:                                      ; preds = %bb.m
  %i.ahe = getelementptr inbounds [2 x i8], ptr %.195.i, i64 %.pre-phi311
  %i.ahf = getelementptr inbounds i8, ptr %.097.i, i64 %i.abc
  %i.ahg = getelementptr inbounds i8, ptr %.098.i, i64 %i.abd
  %i.ahh = add nuw nsw i32 %.1.i, 1               ; 2 uses
  %exitcond141.not.i = icmp eq i32 %i.ahh, %smax148.i
  br i1 %exitcond141.not.i, label %ConvertWRGBToYUV.exit, label %.split115.i, !llvm.loop !42

ConvertWRGBToYUV.exit:                            ; preds = %.split117.i, %.split117.us.us.i, %bb.a
  %.0206 = phi i32 [ 0, %bb.a ], [ 1, %.split117.us.us.i ], [ 1, %.split117.i ]
  tail call void @free(ptr noundef %i.y) #11
  ret i32 %.0206
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ImportOneRow(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull captures(none) %6) unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 9 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 9 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 9 uses
  %i.d = ptrtoaddr ptr %6 to i64                  ; 15 uses
  %i.e = icmp sgt i32 %4, 8
  %i.f = sdiv i32 %3, 2                           ; 2 uses
  %i.g = select i1 %i.e, i32 %i.f, i32 %3         ; 2 uses
  %i.h = add i32 %5, 1                            ; 2 uses
  %i.i = and i32 %i.h, -2                         ; 7 uses
  %i.j = icmp slt i32 %4, 13
  %.neg = add nsw i32 %4, -14                     ; 4 uses
  %i.k = sub nsw i32 14, %4
  %i.l = select i1 %i.j, i32 2, i32 %i.k          ; 6 uses
  %notmask = shl nsw i32 -1, %4
  %i.m = xor i32 %notmask, -1                     ; 8 uses
  %i.n = icmp eq i32 %4, 8
  br i1 %i.n, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.o = shl nsw i32 %i.i, 1
  %i.p = sext i32 %3 to i64
  %i.q = sext i32 %i.i to i64                     ; 2 uses
  %i.r = sext i32 %i.o to i64                     ; 2 uses
  %smax132 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %wide.trip.count133 = zext nneg i32 %smax132 to i64 ; 9 uses
  %invariant.gep149 = getelementptr [2 x i8], ptr %6, i64 %i.q ; 7 uses
  %invariant.gep151 = getelementptr [2 x i8], ptr %6, i64 %i.r ; 7 uses
  %min.iters.check387 = icmp sgt i32 %5, 55
  %ident.check335.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check387, %ident.check335.not
  br i1 %or.cond, label %vector.memcheck388, label %scalar.ph386.preheader

vector.memcheck388:                               ; preds = %.preheader
  %i.s = shl nuw nsw i64 %wide.trip.count133, 1
  %i.t = getelementptr i8, ptr %6, i64 %i.s       ; 5 uses
  %i.u = add nsw i64 %i.q, %wide.trip.count133
  %i.v = shl nsw i64 %i.u, 1
  %i.w = getelementptr i8, ptr %6, i64 %i.v       ; 5 uses
  %bound0 = icmp ult ptr %6, %i.w
  %bound1 = icmp ult ptr %invariant.gep149, %i.t
  %found.conflict = and i1 %bound0, %bound1
  %7 = add nsw i64 %i.r, %wide.trip.count133
  %8 = shl nsw i64 %7, 1
  %i.x = getelementptr i8, ptr %6, i64 %8         ; 5 uses
  %bound0.a = icmp ult ptr %6, %i.x
  %bound1.a = icmp ult ptr %invariant.gep151, %i.t
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %conflict.rdx392 = or i1 %found.conflict, %found.conflict.a
  %9 = getelementptr i8, ptr %0, i64 %wide.trip.count133 ; 3 uses
  %bound0393 = icmp ult ptr %6, %9
  %bound1394 = icmp ult ptr %0, %i.t
  %found.conflict395 = and i1 %bound0393, %bound1394
  %conflict.rdx396 = or i1 %conflict.rdx392, %found.conflict395
  %10 = getelementptr i8, ptr %1, i64 %wide.trip.count133 ; 3 uses
  %bound0397 = icmp ult ptr %6, %10
  %bound1398 = icmp ult ptr %1, %i.t
  %found.conflict399 = and i1 %bound0397, %bound1398
  %conflict.rdx400 = or i1 %conflict.rdx396, %found.conflict399
  %11 = getelementptr i8, ptr %2, i64 %wide.trip.count133 ; 3 uses
  %bound0401 = icmp ult ptr %6, %11
  %bound1402 = icmp ult ptr %2, %i.t
  %found.conflict403 = and i1 %bound0401, %bound1402
  %conflict.rdx404 = or i1 %conflict.rdx400, %found.conflict403
  %bound0405 = icmp ult ptr %invariant.gep149, %i.x
  %bound1406 = icmp ult ptr %invariant.gep151, %i.w
  %found.conflict407 = and i1 %bound0405, %bound1406
  %conflict.rdx408 = or i1 %conflict.rdx404, %found.conflict407
  %bound0409 = icmp ult ptr %invariant.gep149, %9
  %bound1410 = icmp ult ptr %0, %i.w
  %found.conflict411 = and i1 %bound0409, %bound1410
  %conflict.rdx412 = or i1 %conflict.rdx408, %found.conflict411
  %bound0413 = icmp ult ptr %invariant.gep149, %10
  %bound1414 = icmp ult ptr %1, %i.w
  %found.conflict415 = and i1 %bound0413, %bound1414
  %conflict.rdx416 = or i1 %conflict.rdx412, %found.conflict415
  %bound0417 = icmp ult ptr %invariant.gep149, %11
  %bound1418 = icmp ult ptr %2, %i.w
  %found.conflict419 = and i1 %bound0417, %bound1418
  %conflict.rdx420 = or i1 %conflict.rdx416, %found.conflict419
  %bound0421 = icmp ult ptr %invariant.gep151, %9
  %bound1422 = icmp ult ptr %0, %i.x
  %found.conflict423 = and i1 %bound0421, %bound1422
  %conflict.rdx424 = or i1 %conflict.rdx420, %found.conflict423
  %bound0425 = icmp ult ptr %invariant.gep151, %10
  %bound1426 = icmp ult ptr %1, %i.x
  %found.conflict427 = and i1 %bound0425, %bound1426
  %conflict.rdx428 = or i1 %conflict.rdx424, %found.conflict427
  %bound0429 = icmp ult ptr %invariant.gep151, %11
  %bound1430 = icmp ult ptr %2, %i.x
  %found.conflict431 = and i1 %bound0429, %bound1430
  %conflict.rdx432 = or i1 %conflict.rdx428, %found.conflict431
  br i1 %conflict.rdx432, label %scalar.ph386.preheader, label %vector.ph433

vector.ph433:                                     ; preds = %vector.memcheck388
  %n.vec434 = and i64 %wide.trip.count133, 2147483640 ; 3 uses
  br label %vector.body435

vector.body435:                                   ; preds = %vector.body435, %vector.ph433
  %index436 = phi i64 [ 0, %vector.ph433 ], [ %index.next440, %vector.body435 ] ; 7 uses
  %i.y = getelementptr inbounds i8, ptr %0, i64 %index436
  %wide.load437 = load <8 x i8>, ptr %i.y, align 1, !tbaa !19, !alias.scope !65
  %i.z = zext <8 x i8> %wide.load437 to <8 x i16>
  %i.aa = shl nuw nsw <8 x i16> %i.z, splat (i16 2)
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index436
  store <8 x i16> %i.aa, ptr %i.ab, align 2, !tbaa !15, !alias.scope !66, !noalias !67
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %index436
  %wide.load438 = load <8 x i8>, ptr %i.ac, align 1, !tbaa !19, !alias.scope !68
  %i.ad = zext <8 x i8> %wide.load438 to <8 x i16>
  %i.ae = shl nuw nsw <8 x i16> %i.ad, splat (i16 2)
  %i.af = getelementptr [2 x i8], ptr %invariant.gep149, i64 %index436
  store <8 x i16> %i.ae, ptr %i.af, align 2, !tbaa !15, !alias.scope !69, !noalias !70
  %i.ag = getelementptr inbounds i8, ptr %2, i64 %index436
  %wide.load439 = load <8 x i8>, ptr %i.ag, align 1, !tbaa !19, !alias.scope !71
  %i.ah = zext <8 x i8> %wide.load439 to <8 x i16>
  %i.ai = shl nuw nsw <8 x i16> %i.ah, splat (i16 2)
  %i.aj = getelementptr [2 x i8], ptr %invariant.gep151, i64 %index436
  store <8 x i16> %i.ai, ptr %i.aj, align 2, !tbaa !15, !alias.scope !72, !noalias !73
  %index.next440 = add nuw i64 %index436, 8       ; 2 uses
  %i.ak = icmp eq i64 %index.next440, %n.vec434
  br i1 %i.ak, label %middle.block441, label %vector.body435, !llvm.loop !57

middle.block441:                                  ; preds = %vector.body435
  %cmp.n442 = icmp eq i64 %n.vec434, %wide.trip.count133
  br i1 %cmp.n442, label %.loopexit, label %scalar.ph386.preheader

scalar.ph386.preheader:                           ; preds = %vector.memcheck388, %.preheader, %middle.block441
  %indvars.iv129.ph = phi i64 [ 0, %vector.memcheck388 ], [ 0, %.preheader ], [ %n.vec434, %middle.block441 ]
  br label %scalar.ph386

scalar.ph386:                                     ; preds = %scalar.ph386.preheader, %scalar.ph386
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %scalar.ph386 ], [ %indvars.iv129.ph, %scalar.ph386.preheader ] ; 5 uses
  %i.al = mul nsw i64 %indvars.iv129, %i.p        ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %0, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19
  %i.ao = zext i8 %i.an to i16
  %i.ap = shl nuw nsw i16 %i.ao, 2
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv129
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !15
  %i.ar = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !19
  %i.at = zext i8 %i.as to i16
  %i.au = shl nuw nsw i16 %i.at, 2
  %gep150 = getelementptr [2 x i8], ptr %invariant.gep149, i64 %indvars.iv129
  store i16 %i.au, ptr %gep150, align 2, !tbaa !15
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.al
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !19
  %i.ax = zext i8 %i.aw to i16
  %i.ay = shl nuw nsw i16 %i.ax, 2
  %gep152 = getelementptr [2 x i8], ptr %invariant.gep151, i64 %indvars.iv129
  store i16 %i.ay, ptr %gep152, align 2, !tbaa !15
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count133
  br i1 %exitcond134.not, label %.loopexit, label %scalar.ph386, !llvm.loop !58

bb.b:                                             ; preds = %bb.a
  %i.az = icmp slt i32 %4, 16
  br i1 %i.az, label %.preheader108, label %.preheader110

.preheader110:                                    ; preds = %bb.b
  %i.ba = shl nsw i32 %i.i, 1
  %i.bb = sext i32 %i.f to i64
  %i.bc = sext i32 %i.i to i64                    ; 2 uses
  %i.bd = sext i32 %i.ba to i64                   ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %6, i64 %i.bc ; 2 uses
  %invariant.gep139 = getelementptr [2 x i8], ptr %6, i64 %i.bd ; 2 uses
  %min.iters.check = icmp sgt i32 %5, 47
  %i.be = and i32 %3, -2
  %ident.check.not = icmp eq i32 %i.be, 2
  %or.cond444 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond444, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader110
  %i.bf = shl nsw i64 %i.bc, 1                    ; 3 uses
  %i.bg = add nsw i64 %i.bf, -1
  %diff.check = icmp ult i64 %i.bg, 15
  %i.bh = shl nsw i64 %i.bd, 1                    ; 3 uses
  %i.bi = add nsw i64 %i.bh, -1
  %diff.check177 = icmp ult i64 %i.bi, 15
  %conflict.rdx = or i1 %diff.check, %diff.check177
  %i.bj = sub i64 %i.c, %i.d
  %diff.check178 = icmp ugt i64 %i.bj, -16
  %conflict.rdx179 = or i1 %conflict.rdx, %diff.check178
  %i.bk = sub i64 %i.b, %i.d
  %diff.check180 = icmp ugt i64 %i.bk, -16
  %conflict.rdx181 = or i1 %conflict.rdx179, %diff.check180
  %i.bl = sub i64 %i.a, %i.d
  %diff.check182 = icmp ugt i64 %i.bl, -16
  %conflict.rdx183 = or i1 %conflict.rdx181, %diff.check182
  %i.bm = sub nsw i64 %i.bf, %i.bh
  %diff.check184 = icmp ugt i64 %i.bm, -16
  %conflict.rdx185 = or i1 %conflict.rdx183, %diff.check184
  %i.bn = add i64 %i.bf, %i.d                     ; 3 uses
  %i.bo = sub i64 %i.c, %i.bn
  %diff.check186 = icmp ugt i64 %i.bo, -16
  %conflict.rdx187 = or i1 %conflict.rdx185, %diff.check186
  %i.bp = sub i64 %i.b, %i.bn
  %diff.check188 = icmp ugt i64 %i.bp, -16
  %conflict.rdx189 = or i1 %conflict.rdx187, %diff.check188
  %i.bq = sub i64 %i.a, %i.bn
  %diff.check190 = icmp ugt i64 %i.bq, -16
  %conflict.rdx191 = or i1 %conflict.rdx189, %diff.check190
  %i.br = add i64 %i.bh, %i.d                     ; 3 uses
  %i.bs = sub i64 %i.c, %i.br
  %diff.check192 = icmp ugt i64 %i.bs, -16
  %conflict.rdx193 = or i1 %conflict.rdx191, %diff.check192
  %i.bt = sub i64 %i.b, %i.br
  %diff.check194 = icmp ugt i64 %i.bt, -16
  %conflict.rdx195 = or i1 %conflict.rdx193, %diff.check194
  %i.bu = sub i64 %i.a, %i.br
  %diff.check196 = icmp ugt i64 %i.bu, -16
  %conflict.rdx197 = or i1 %conflict.rdx195, %diff.check196
  br i1 %conflict.rdx197, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.neg, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.bv = getelementptr inbounds [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.bv, align 2, !tbaa !15
  %i.bw = zext <8 x i16> %wide.load to <8 x i32>
  %i.bx = getelementptr inbounds [2 x i8], ptr %1, i64 %index
  %wide.load198 = load <8 x i16>, ptr %i.bx, align 2, !tbaa !15
  %i.by = zext <8 x i16> %wide.load198 to <8 x i32>
  %i.bz = getelementptr inbounds [2 x i8], ptr %2, i64 %index
  %wide.load199 = load <8 x i16>, ptr %i.bz, align 2, !tbaa !15
  %i.ca = zext <8 x i16> %wide.load199 to <8 x i32>
  %i.cb = lshr <8 x i32> %i.bw, %broadcast.splat
  %i.cc = trunc nuw nsw <8 x i32> %i.cb to <8 x i16>
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index
  store <8 x i16> %i.cc, ptr %i.cd, align 2, !tbaa !15
  %i.ce = lshr <8 x i32> %i.by, %broadcast.splat
  %i.cf = trunc nuw nsw <8 x i32> %i.ce to <8 x i16>
  %i.cg = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  store <8 x i16> %i.cf, ptr %i.cg, align 2, !tbaa !15
  %i.ch = lshr <8 x i32> %i.ca, %broadcast.splat
  %i.ci = trunc nuw nsw <8 x i32> %i.ch to <8 x i16>
  %i.cj = getelementptr [2 x i8], ptr %invariant.gep139, i64 %index
  store <8 x i16> %i.ci, ptr %i.cj, align 2, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader110, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader110 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader108:                                    ; preds = %bb.b
  %i.cl = sub nsw i32 0, %i.l                     ; 4 uses
  %i.cm = icmp slt i32 %i.l, 0
  %i.cn = shl i32 %i.i, 1
  %i.co = sext i32 %i.g to i64                    ; 2 uses
  %i.cp = sext i32 %i.i to i64                    ; 3 uses
  %i.cq = sext i32 %i.cn to i64                   ; 3 uses
  %smax126 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %wide.trip.count127 = zext nneg i32 %smax126 to i64 ; 6 uses
  %invariant.gep145 = getelementptr [2 x i8], ptr %6, i64 %i.cp ; 4 uses
  %invariant.gep147 = getelementptr [2 x i8], ptr %6, i64 %i.cq ; 4 uses
  %min.iters.check294 = icmp sgt i32 %5, 39
  %ident.check268.not = icmp eq i32 %i.g, 1
  %or.cond447 = and i1 %min.iters.check294, %ident.check268.not ; 2 uses
  br i1 %i.cm, label %.preheader108.split.us.preheader, label %.preheader108.split.preheader

.preheader108.split.preheader:                    ; preds = %.preheader108
  br i1 %or.cond447, label %vector.memcheck228, label %.preheader108.split.preheader450

vector.memcheck228:                               ; preds = %.preheader108.split.preheader
  %i.cr = shl nsw i64 %i.cp, 1                    ; 3 uses
  %i.cs = add nsw i64 %i.cr, -1
  %diff.check229 = icmp ult i64 %i.cs, 15
  %i.ct = shl nsw i64 %i.cq, 1                    ; 3 uses
  %i.cu = add nsw i64 %i.ct, -1
  %diff.check230 = icmp ult i64 %i.cu, 15
  %conflict.rdx231 = or i1 %diff.check229, %diff.check230
  %i.cv = sub i64 %i.c, %i.d
  %diff.check232 = icmp ugt i64 %i.cv, -16
  %conflict.rdx233 = or i1 %conflict.rdx231, %diff.check232
  %i.cw = sub i64 %i.b, %i.d
  %diff.check234 = icmp ugt i64 %i.cw, -16
  %conflict.rdx235 = or i1 %conflict.rdx233, %diff.check234
end_hunk_0
