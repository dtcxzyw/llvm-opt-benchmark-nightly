Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_ciescope?download=true
inline.NumInlined: 41
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@filter_frame:bb.a
  %i.ace = icmp slt i32 %i.acc, %i.acd
  %i.acf = select i1 %i.ace, i32 1, i32 -1
  %i.acg = icmp samesign ugt i32 %i.abv, %i.acb
  %i.ach = sub nsw i32 0, %i.acb
  %i.aci = select i1 %i.acg, i32 %i.abv, i32 %i.ach
  %i.acj = sdiv i32 %i.aci, 2
  %i.ack = sub nsw i32 0, %i.abv
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  %.066.i.i = phi i32 [ %i.abz, %bb.bl ], [ %.167.i.i125, %bb.bn ] ; 3 uses
  %.064.i.i = phi i32 [ %i.abt, %bb.bl ], [ %.165.i.i, %bb.bn ] ; 3 uses
  %.0.i.i = phi i32 [ %i.acj, %bb.bl ], [ %.2.i.i, %bb.bn ] ; 3 uses
  %i.acl = mul nsw i32 %.066.i.i, %.pre-phi
  %i.acm = shl nsw i32 %.064.i.i, 2
  %i.acn = add nsw i32 %i.acm, %i.acl
  %i.aco = sext i32 %i.acn to i64
  %i.acp = getelementptr inbounds [2 x i8], ptr %.pre174.pre, i64 %i.aco ; 3 uses
  %i.acq = getelementptr i8, ptr %i.acp, i64 4
  %i.acr = load i16, ptr %i.acq, align 2, !tbaa !39
  %i.acs = load <2 x i16>, ptr %i.acp, align 2, !tbaa !39
  %i.act = shufflevector <2 x i16> %i.acs, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.acu = insertelement <4 x i16> %i.act, i16 0, i64 3
  %i.acv = insertelement <4 x i16> %i.acu, i16 %i.acr, i64 2
  %i.acw = xor <4 x i16> %i.acv, splat (i16 -1)
  store <4 x i16> %i.acw, ptr %i.acp, align 2, !tbaa !39
  %i.acx = icmp eq i32 %.064.i.i, %i.abs
  %i.acy = icmp eq i32 %.066.i.i, %i.aby
  %or.cond.i.i = and i1 %i.acy, %i.acx
  br i1 %or.cond.i.i, label %draw_rline.exit.i126, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.acz = icmp sgt i32 %.0.i.i, %i.ack           ; 2 uses
  %i.ada = select i1 %i.acz, i32 %i.abx, i32 0
  %.165.i.i = add nsw i32 %i.ada, %.064.i.i
  %i.adb = select i1 %i.acz, i32 %i.acb, i32 0
  %.1.i.i = sub i32 %.0.i.i, %i.adb
  %i.adc = icmp slt i32 %.0.i.i, %i.acb           ; 2 uses
  %i.add = select i1 %i.adc, i32 %i.acf, i32 0
  %.167.i.i125 = add nsw i32 %i.add, %.066.i.i
  %i.ade = select i1 %i.adc, i32 %i.abv, i32 0
  %.2.i.i = add nsw i32 %.1.i.i, %i.ade
  br label %bb.bm

draw_rline.exit.i126:                             ; preds = %bb.bm
  %i.adf = fmul nsz <2 x float> %i.abm, %i.yn     ; 2 uses
  %i.adg = extractelement <2 x float> %i.adf, i64 1
  %.pn122.i = fptosi float %i.adg to i32          ; 3 uses
  %i.adh = xor i32 %.pn122.i, -1
  %.0.i124 = add i32 %i.nt, %i.adh                ; 4 uses
  %i.adi = extractelement <2 x float> %i.adf, i64 0
  %.076.i = fptosi float %i.adi to i32            ; 6 uses
  %i.adj = sub nsw i32 %.076.i, %i.abs
  %i.adk = call i32 @llvm.abs.i32(i32 %i.adj, i1 true) ; 4 uses
  %i.adl = icmp slt i32 %i.abs, %.076.i
  %i.adm = select i1 %i.adl, i32 1, i32 -1
  %i.adn = sub nsw i32 %.0.i124, %i.aby
  %i.ado = call i32 @llvm.abs.i32(i32 %i.adn, i1 true) ; 4 uses
  %i.adp = icmp sgt i32 %i.acc, %.pn122.i
  %i.adq = select i1 %i.adp, i32 1, i32 -1
  %i.adr = icmp samesign ugt i32 %i.adk, %i.ado
  %i.ads = sub nsw i32 0, %i.ado
  %i.adt = select i1 %i.adr, i32 %i.adk, i32 %i.ads
  %i.adu = sdiv i32 %i.adt, 2
  %i.adv = sub nsw i32 0, %i.adk
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bp, %draw_rline.exit.i126
  %.066.i83.i = phi i32 [ %i.aby, %draw_rline.exit.i126 ], [ %.167.i89.i, %bb.bp ] ; 3 uses
  %.064.i84.i = phi i32 [ %i.abs, %draw_rline.exit.i126 ], [ %.165.i87.i, %bb.bp ] ; 3 uses
  %.0.i85.i = phi i32 [ %i.adu, %draw_rline.exit.i126 ], [ %.2.i90.i, %bb.bp ] ; 3 uses
  %i.adw = mul nsw i32 %.066.i83.i, %.pre-phi
  %i.adx = shl nsw i32 %.064.i84.i, 2
  %i.ady = add nsw i32 %i.adx, %i.adw
  %i.adz = sext i32 %i.ady to i64
  %i.aea = getelementptr inbounds [2 x i8], ptr %.pre174.pre, i64 %i.adz ; 3 uses
  %i.aeb = getelementptr i8, ptr %i.aea, i64 4
  %i.aec = load i16, ptr %i.aeb, align 2, !tbaa !39
  %i.aed = load <2 x i16>, ptr %i.aea, align 2, !tbaa !39
  %i.aee = shufflevector <2 x i16> %i.aed, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aef = insertelement <4 x i16> %i.aee, i16 0, i64 3
  %i.aeg = insertelement <4 x i16> %i.aef, i16 %i.aec, i64 2
  %i.aeh = xor <4 x i16> %i.aeg, splat (i16 -1)
  store <4 x i16> %i.aeh, ptr %i.aea, align 2, !tbaa !39
  %i.aei = icmp eq i32 %.064.i84.i, %.076.i
  %i.aej = icmp eq i32 %.066.i83.i, %.0.i124
  %or.cond.i86.i = and i1 %i.aej, %i.aei
  br i1 %or.cond.i86.i, label %draw_rline.exit91.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.aek = icmp sgt i32 %.0.i85.i, %i.adv         ; 2 uses
  %i.ael = select i1 %i.aek, i32 %i.adm, i32 0
  %.165.i87.i = add nsw i32 %i.ael, %.064.i84.i
  %i.aem = select i1 %i.aek, i32 %i.ado, i32 0
  %.1.i88.i = sub i32 %.0.i85.i, %i.aem
  %i.aen = icmp slt i32 %.0.i85.i, %i.ado         ; 2 uses
  %i.aeo = select i1 %i.aen, i32 %i.adq, i32 0
  %.167.i89.i = add nsw i32 %i.aeo, %.066.i83.i
  %i.aep = select i1 %i.aen, i32 %i.adk, i32 0
  %.2.i90.i = add nsw i32 %.1.i88.i, %i.aep
  br label %bb.bo

draw_rline.exit91.i:                              ; preds = %bb.bo
  %i.aeq = sub nsw i32 %i.abt, %.076.i
  %i.aer = call i32 @llvm.abs.i32(i32 %i.aeq, i1 true) ; 4 uses
  %i.aes = icmp sgt i32 %i.abt, %.076.i
  %i.aet = select i1 %i.aes, i32 1, i32 -1
  %i.aeu = sub nsw i32 %i.abz, %.0.i124
  %i.aev = call i32 @llvm.abs.i32(i32 %i.aeu, i1 true) ; 4 uses
  %i.aew = icmp slt i32 %i.acd, %.pn122.i
  %i.aex = select i1 %i.aew, i32 1, i32 -1
  %i.aey = icmp samesign ugt i32 %i.aer, %i.aev
  %i.aez = sub nsw i32 0, %i.aev
  %i.afa = select i1 %i.aey, i32 %i.aer, i32 %i.aez
  %i.afb = sdiv i32 %i.afa, 2
  %i.afc = sub nsw i32 0, %i.aer
  br label %bb.bq

bb.bq:                                            ; preds = %bb.br, %draw_rline.exit91.i
  %.066.i92.i = phi i32 [ %.0.i124, %draw_rline.exit91.i ], [ %.167.i98.i, %bb.br ] ; 3 uses
  %.064.i93.i = phi i32 [ %.076.i, %draw_rline.exit91.i ], [ %.165.i96.i, %bb.br ] ; 3 uses
  %.0.i94.i = phi i32 [ %i.afb, %draw_rline.exit91.i ], [ %.2.i99.i, %bb.br ] ; 3 uses
  %i.afd = mul nsw i32 %.066.i92.i, %.pre-phi
  %i.afe = shl nsw i32 %.064.i93.i, 2
  %i.aff = add nsw i32 %i.afe, %i.afd
  %i.afg = sext i32 %i.aff to i64
  %i.afh = getelementptr inbounds [2 x i8], ptr %.pre174.pre, i64 %i.afg ; 3 uses
  %i.afi = getelementptr i8, ptr %i.afh, i64 4
  %i.afj = load i16, ptr %i.afi, align 2, !tbaa !39
  %i.afk = load <2 x i16>, ptr %i.afh, align 2, !tbaa !39
  %i.afl = shufflevector <2 x i16> %i.afk, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.afm = insertelement <4 x i16> %i.afl, i16 0, i64 3
  %i.afn = insertelement <4 x i16> %i.afm, i16 %i.afj, i64 2
  %i.afo = xor <4 x i16> %i.afn, splat (i16 -1)
  store <4 x i16> %i.afo, ptr %i.afh, align 2, !tbaa !39
  %i.afp = icmp eq i32 %.064.i93.i, %i.abt
  %i.afq = icmp eq i32 %.066.i92.i, %i.abz
  %or.cond.i95.i = and i1 %i.afq, %i.afp
  br i1 %or.cond.i95.i, label %draw_rline.exit100.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.afr = icmp sgt i32 %.0.i94.i, %i.afc         ; 2 uses
  %i.afs = select i1 %i.afr, i32 %i.aet, i32 0
  %.165.i96.i = add nsw i32 %i.afs, %.064.i93.i
  %i.aft = select i1 %i.afr, i32 %i.aev, i32 0
  %.1.i97.i = sub i32 %.0.i94.i, %i.aft
  %i.afu = icmp slt i32 %.0.i94.i, %i.aev         ; 2 uses
  %i.afv = select i1 %i.afu, i32 %i.aex, i32 0
  %.167.i98.i = add nsw i32 %i.afv, %.066.i92.i
  %i.afw = select i1 %i.afu, i32 %i.aer, i32 0
  %.2.i99.i = add nsw i32 %.1.i97.i, %i.afw
  br label %bb.bq

draw_rline.exit100.i:                             ; preds = %bb.bq, %bb.bf
  %indvars.iv.next.i127 = add nuw nsw i64 %indvars.iv.i122, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i127, 10
  br i1 %exitcond.not.i, label %plot_gamuts.exit, label %bb.bf, !llvm.loop !58

plot_gamuts.exit:                                 ; preds = %draw_rline.exit100.i
  call void @av_frame_free(ptr noundef nonnull %i.b) #10
  %i.afx = call i32 @ff_filter_frame(ptr noundef %i.l, ptr noundef nonnull %i.u) #10
  br label %bb.bs

bb.bs:                                            ; preds = %plot_gamuts.exit, %draw_background.exit, %bb.b
  %.0110 = phi i32 [ %i.afx, %plot_gamuts.exit ], [ -12, %draw_background.exit ], [ -12, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  ret i32 %.0110
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !43
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [36 x i8], ptr @color_systems, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 262232
  %.sroa.922.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.1023.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 262256
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 262248
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 262260
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 262252
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 262264
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 262196
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 262212
  %i.q = load <8 x float>, ptr %i.h, align 4, !tbaa !36 ; 6 uses
  %.sroa.1023.0.copyload = load float, ptr %.sroa.1023.0..sroa_idx, align 4, !tbaa !36
  %.sroa.922.0.copyload = load float, ptr %.sroa.922.0..sroa_idx, align 4, !tbaa !36
  %i.r = shufflevector <8 x float> %i.q, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 2>
  %i.s = shufflevector <8 x float> %i.q, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 3>
  %i.t = fdiv nsz <4 x float> %i.r, %i.s          ; 6 uses
  %i.u = shufflevector <8 x float> %i.q, <8 x float> poison, <4 x i32> <i32 2, i32 4, i32 0, i32 4>
  %i.v = fsub nsz <4 x float> splat (float 1.000000e+00), %i.u
  %i.w = shufflevector <8 x float> %i.q, <8 x float> poison, <4 x i32> <i32 3, i32 5, i32 1, i32 5> ; 2 uses
  %i.x = fsub nsz <4 x float> %i.v, %i.w
  %i.y = fdiv nsz <4 x float> %i.x, %i.w          ; 8 uses
  %i.z = fsub nsz float 1.000000e+00, %.sroa.922.0.copyload
  %i.aa = fsub nsz float %i.z, %.sroa.1023.0.copyload
  %i.ab = extractelement <4 x float> %i.y, i64 1
  %i.ac = extractelement <4 x float> %i.y, i64 2  ; 3 uses
  %i.ad = extractelement <4 x float> %i.t, i64 0  ; 2 uses
  %i.ae = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 0>
  %i.af = fsub nsz <4 x float> %i.y, %i.ae        ; 2 uses
  %i.ag = fneg nsz <4 x float> %i.t               ; 2 uses
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ai = extractelement <4 x float> %i.ag, i64 2
  %i.aj = fmul nsz float %i.ac, %i.ai
  %i.ak = tail call nsz float @llvm.fmuladd.f32(float %i.ad, float %i.ab, float %i.aj)
  %i.al = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.am = fmul nsz <2 x float> %i.al, %i.ah
  %i.an = shufflevector <4 x float> %i.t, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ao = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ap = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ao, <2 x float> %i.am)
  %i.aq = fneg nsz <2 x float> %i.ap              ; 2 uses
  %i.ar = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.as = fsub nsz <4 x float> %i.t, %i.ar        ; 2 uses
  %i.at = extractelement <4 x float> %i.af, i64 1
  %i.au = extractelement <2 x float> %i.aq, i64 1
  %i.av = tail call nsz float @llvm.fmuladd.f32(float %i.ad, float %i.at, float %i.au)
  %i.aw = extractelement <4 x float> %i.as, i64 1
  %i.ax = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float %i.aw, float %i.av)
  %i.ay = insertelement <3 x float> <float 1.000000e+00, float poison, float poison>, float %i.aa, i64 1
  %i.az = shufflevector <8 x float> %i.q, <8 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 6>
  %i.ba = shufflevector <3 x float> %i.ay, <3 x float> %i.az, <3 x i32> <i32 0, i32 1, i32 5>
  %i.bb = shufflevector <8 x float> %i.q, <8 x float> poison, <3 x i32> <i32 poison, i32 7, i32 7>
  %i.bc = insertelement <3 x float> %i.bb, float %i.ax, i64 0
  %i.bd = fdiv nsz <3 x float> %i.ba, %i.bc       ; 3 uses
  %i.be = shufflevector <3 x float> %i.bd, <3 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.bf = fmul nsz <4 x float> %i.af, %i.be
  %i.bg = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bh = insertelement <4 x float> %i.bg, float %i.ak, i64 2
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.bj = fmul nsz <4 x float> %i.bi, %i.be
  %i.bk = fmul nsz <4 x float> %i.as, %i.be
  %i.bl = shufflevector <3 x float> %i.bd, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bm = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.bl, <4 x float> %i.bj)
  %i.bn = shufflevector <3 x float> %i.bd, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bo = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %i.bn, <4 x float> %i.bm) ; 13 uses
  %i.bp = extractelement <4 x float> %i.bo, i64 1 ; 2 uses
  %1 = fmul nsz float %i.ac, %i.bp                ; 5 uses
  store float %1, ptr %i.j, align 8, !tbaa !36
  %2 = extractelement <4 x float> %i.bo, i64 0
  store float %2, ptr %i.m, align 4, !tbaa !36
  %3 = shufflevector <4 x float> %i.t, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %4 = fmul nsz <4 x float> %i.bo, %3             ; 7 uses
  %i.bq = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  store <4 x float> %i.bq, ptr %i.i, align 8, !tbaa !36
  %i.br = extractelement <4 x float> %4, i64 1
  %5 = shufflevector <4 x float> %4, <4 x float> %i.bo, <4 x i32> <i32 0, i32 0, i32 4, i32 0>
  %i.bs = fneg nsz <4 x float> %5                 ; 3 uses
  %6 = shufflevector <4 x float> %4, <4 x float> %i.bo, <4 x i32> <i32 2, i32 4, i32 5, i32 1>
  %7 = shufflevector <4 x float> %4, <4 x float> %i.bo, <4 x i32> <i32 poison, i32 2, i32 poison, i32 4>
  %8 = extractelement <4 x float> %i.bo, i64 2    ; 2 uses
  store float %8, ptr %i.k, align 8, !tbaa !36
  %9 = shufflevector <4 x float> %i.y, <4 x float> %i.bo, <4 x i32> <i32 0, i32 0, i32 6, i32 4>
  %10 = shufflevector <4 x float> %i.bo, <4 x float> %i.y, <4 x i32> <i32 2, i32 2, i32 poison, i32 5>
  %11 = insertelement <4 x float> %10, float 1.000000e+00, i64 2
  %i.bt = fmul nsz <4 x float> %9, %11            ; 6 uses
  %i.bu = extractelement <4 x float> %i.bt, i64 0
  store float %i.bu, ptr %i.l, align 4, !tbaa !36
  %i.bv = extractelement <4 x float> %i.bt, i64 3 ; 2 uses
  store float %i.bv, ptr %i.n, align 8, !tbaa !36
  %shift = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fmul nsz <4 x float> %i.bt, %shift
  %12 = extractelement <4 x float> %foldExtExtBinop, i64 0
  %13 = shufflevector <4 x float> %i.bo, <4 x float> %i.bs, <4 x i32> <i32 poison, i32 poison, i32 1, i32 4>
  %14 = insertelement <4 x float> poison, float %1, i64 0
  %15 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %16 = shufflevector <4 x float> %15, <4 x float> %13, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %17 = shufflevector <4 x float> %i.bt, <4 x float> %i.bo, <4 x i32> <i32 0, i32 6, i32 poison, i32 5>
  %i.bw = insertelement <4 x float> %17, float %1, i64 2
  %i.bx = fmul nsz <4 x float> %i.bw, %i.bs
  %18 = tail call nsz float @llvm.fmuladd.f32(float %8, float %i.bv, float %12) ; 2 uses
  %19 = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 3, i32 poison>
  %20 = shufflevector <4 x float> %19, <4 x float> %7, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.by = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %6, <4 x float> %20, <4 x float> %i.bx) ; 4 uses
  %21 = extractelement <4 x float> %i.by, i64 0
  %22 = fneg nsz float %21                        ; 2 uses
  %23 = fmul nsz float %i.bp, %22
  %i.bz = insertelement <4 x float> poison, float %18, i64 0
  %24 = insertelement <4 x float> %i.bz, float %22, i64 1
  %25 = shufflevector <4 x float> %24, <4 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %26 = shufflevector <4 x float> %4, <4 x float> %i.by, <4 x i32> <i32 2, i32 poison, i32 6, i32 7>
  %27 = shufflevector <4 x float> %26, <4 x float> %i.bo, <4 x i32> <i32 0, i32 6, i32 2, i32 3>
  %i.ca = fneg nsz <4 x float> %27                ; 3 uses
  %28 = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %29 = insertelement <4 x float> %28, float %1, i64 3
  %30 = shufflevector <4 x float> %29, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %31 = fmul nsz <4 x float> %16, %30
  %32 = shufflevector <4 x float> %25, <4 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %33 = shufflevector <4 x float> %i.bo, <4 x float> %4, <4 x i32> <i32 1, i32 5, i32 5, i32 5>
  %34 = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %33, <4 x float> %i.bt, <4 x float> %31) ; 3 uses
  %i.cb = tail call nsz float @llvm.fmuladd.f32(float %i.br, float %18, float %23)
  %i.cc = extractelement <4 x float> %i.by, i64 1
  %i.cd = tail call nsz float @llvm.fmuladd.f32(float %1, float %i.cc, float %i.cb)
  %i.ce = fdiv nsz float 1.000000e+00, %i.cd      ; 2 uses
  %i.cf = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ch = fmul nsz <4 x float> %32, %i.cg
  store <4 x float> %i.ch, ptr %i.o, align 4, !tbaa !36
  %35 = shufflevector <4 x float> %34, <4 x float> %i.ca, <4 x i32> <i32 3, i32 7, i32 0, i32 poison>
  %i.ci = fneg nsz <4 x float> %34
  %36 = shufflevector <4 x float> %35, <4 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cj = fmul nsz <4 x float> %36, %i.cg
  store <4 x float> %i.cj, ptr %i.p, align 4, !tbaa !36
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 262228
  %i.cl = extractelement <4 x float> %34, i64 2
  %i.cm = fmul nsz float %i.cl, %i.ce
  store float %i.cm, ptr %i.ck, align 4, !tbaa !36
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !91
  switch i32 %i.co, label %bb.e [
    i32 2, label %.loopexit.sink.split
    i32 26, label %bb.b
    i32 35, label %bb.c
    i32 105, label %bb.d
    i32 99, label %vector.ph
  ]

bb.b:                                             ; preds = %bb.a
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  br label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.a
  br label %.loopexit.sink.split

vector.ph:                                        ; preds = %bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 262280
  store ptr @filter_xyz, ptr %i.cp, align 8, !tbaa !42
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 262192
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.cs = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.ct = fdiv nsz <4 x double> %i.cs, splat (double 6.553500e+04)
  %i.cu = load float, ptr %i.cq, align 8, !tbaa !92
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cv = fpext nsz <4 x float> %broadcast.splat to <4 x double>
  %i.cw = tail call nsz <4 x double> @llvm.pow.v4f64(<4 x double> %i.ct, <4 x double> %i.cv)
  %i.cx = fmul nsz <4 x double> %i.cw, splat (double 6.553500e+04)
  %i.cy = fptrunc nsz <4 x double> %i.cx to <4 x float>
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index
  store <4 x float> %i.cy, ptr %i.cz, align 4, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.da = icmp eq i64 %index.next, 65536
  br i1 %i.da, label %.loopexit, label %vector.body, !llvm.loop !90

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1533) #10
  tail call void @abort() #11
  unreachable

.loopexit.sink.split:                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %filter_rgba64.sink = phi ptr [ @filter_rgba64, %bb.d ], [ @filter_rgb48, %bb.c ], [ @filter_rgba, %bb.b ], [ @filter_rgb24, %bb.a ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 262280
  store ptr %filter_rgba64.sink, ptr %i.db, align 8, !tbaa !42
  br label %.loopexit

.loopexit:                                        ; preds = %vector.body, %.loopexit.sink.split
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @draw_line(ptr nofree noundef writeonly captures(none) %0, i32 noundef range(i32 -1073741824, 1073741824) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly captures(none) %6) unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i32 %2, %4
  %i.b = select i1 %i.a, i32 1, i32 -1            ; 2 uses
  %i.c = icmp slt i32 %3, %5
  %i.d = select i1 %i.c, i32 1, i32 -1            ; 2 uses
  %i.e = sub nsw i32 %4, %2                       ; 3 uses
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.e, i1 true) ; 2 uses
  %i.g = sub nsw i32 %5, %3                       ; 3 uses
  %i.h = tail call i32 @llvm.abs.i32(i32 %i.g, i1 true) ; 2 uses
  %i.i = mul i32 %i.e, %i.e
  %i.j = mul i32 %i.g, %i.g
  %i.k = or i32 %i.j, %i.i
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add nuw nsw i32 %i.h, %i.f
  %i.n = udiv i32 16777215, %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.o = phi i32 [ %i.n, %bb.b ], [ 1, %bb.a ]    ; 2 uses
  %i.p = mul nuw nsw i32 %i.o, %i.f               ; 5 uses
  %i.q = sub nsw i32 0, %i.p
  %i.r = mul nuw nsw i32 %i.o, %i.h               ; 5 uses
  %i.s = sub nsw i32 %i.p, %i.r
  %i.t = sub nsw i32 %i.r, %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 6 ; 3 uses
  br label %.outer

.outer:                                           ; preds = %bb.m, %bb.c
  %.0204.ph = phi i32 [ %i.cn, %bb.m ], [ %3, %bb.c ] ; 4 uses
  %.0202.ph = phi i32 [ %.1203, %bb.m ], [ %2, %bb.c ]
  %.0.ph = phi i32 [ %i.cm, %bb.m ], [ %i.s, %bb.c ]
  %i.x = mul nsw i32 %.0204.ph, %1                ; 2 uses
  %i.y = add nsw i32 %.0204.ph, %i.d
  %i.z = mul nsw i32 %i.y, %1
  br label %bb.d

bb.d:                                             ; preds = %.outer, %bb.i
  %.0202 = phi i32 [ %.1203, %bb.i ], [ %.0202.ph, %.outer ] ; 5 uses
  %.0 = phi i32 [ %.1, %bb.i ], [ %.0.ph, %.outer ] ; 6 uses
  %i.aa = load i16, ptr %6, align 2, !tbaa !39
  %i.ab = add i32 %i.t, %.0
  %i.ac = tail call i32 @llvm.abs.i32(i32 %i.ab, i1 true)
  %i.ad = lshr i32 %i.ac, 8
  %i.ae = trunc i32 %i.ad to i16                  ; 4 uses
  %i.af = sub i16 %i.aa, %i.ae
  %i.ag = shl nsw i32 %.0202, 2                   ; 2 uses
  %i.ah = add nsw i32 %i.ag, %i.x
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ai ; 4 uses
  store i16 %i.af, ptr %i.aj, align 2, !tbaa !39
  %i.ak = load i16, ptr %i.u, align 2, !tbaa !39
  %i.al = sub i16 %i.ak, %i.ae
  %i.am = getelementptr i8, ptr %i.aj, i64 2
  store i16 %i.al, ptr %i.am, align 2, !tbaa !39
  %i.an = load i16, ptr %i.v, align 2, !tbaa !39
  %i.ao = sub i16 %i.an, %i.ae
  %i.ap = getelementptr i8, ptr %i.aj, i64 4
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !39
  %i.aq = load i16, ptr %i.w, align 2, !tbaa !39
  %i.ar = sub i16 %i.aq, %i.ae
  %i.as = getelementptr i8, ptr %i.aj, i64 6
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !39
  %i.at = shl nsw i32 %.0, 1                      ; 2 uses
  %.not = icmp slt i32 %i.at, %i.q
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = icmp eq i32 %.0202, %4
  br i1 %i.au, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = add nsw i32 %.0, %i.r                   ; 2 uses
  %i.aw = icmp slt i32 %i.av, 16711680
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = load i16, ptr %6, align 2, !tbaa !39
  %i.ay = tail call i32 @llvm.abs.i32(i32 %i.av, i1 true)
  %i.az = lshr i32 %i.ay, 8
  %i.ba = trunc i32 %i.az to i16                  ; 4 uses
  %i.bb = sub i16 %i.ax, %i.ba
  %i.bc = add nsw i32 %i.z, %i.ag
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bd ; 4 uses
  store i16 %i.bb, ptr %i.be, align 2, !tbaa !39
  %i.bf = load i16, ptr %i.u, align 2, !tbaa !39
  %i.bg = sub i16 %i.bf, %i.ba
  %i.bh = getelementptr i8, ptr %i.be, i64 2
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !39
  %i.bi = load i16, ptr %i.v, align 2, !tbaa !39
  %i.bj = sub i16 %i.bi, %i.ba
  %i.bk = getelementptr i8, ptr %i.be, i64 4
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !39
  %i.bl = load i16, ptr %i.w, align 2, !tbaa !39
  %i.bm = sub i16 %i.bl, %i.ba
  %i.bn = getelementptr i8, ptr %i.be, i64 6
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bo = sub nsw i32 %.0, %i.r
  %i.bp = add nsw i32 %.0202, %i.b
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %.1203 = phi i32 [ %i.bp, %bb.h ], [ %.0202, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %i.bo, %bb.h ], [ %.0, %bb.d ]  ; 2 uses
  %.not215 = icmp sgt i32 %i.at, %i.r
  br i1 %.not215, label %bb.d, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = icmp eq i32 %.0204.ph, %5
  br i1 %i.bq, label %.loopexit, label %bb.k
end_hunk_0
