inline.NumInlined: 684
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399

bb.bz:                                            ; preds = %bb.by
  %i.aqx = extractelement <4 x i32> %i.aiz, i64 0
  %i.aqy = add nsw i32 %i.aqa, %i.aqx
  %i.aqz = load i32, ptr %i.xn, align 8, !tbaa !13
  %i.ara = mul nsw i32 %i.aqz, %i.aqy
  br label %.split.2

.split.2:                                         ; preds = %.thread791, %bb.bz, %bb.by
  %i.arb = phi i32 [ %i.ara, %bb.bz ], [ -1, %bb.by ], [ -1, %.thread791 ]
  %i.arc = getelementptr inbounds nuw i8, ptr %.6530, i64 36
  store i32 %i.arb, ptr %i.arc, align 4, !tbaa !29
  %i.ard = getelementptr inbounds nuw i8, ptr %.6530, i64 40 ; 2 uses
  %i.are = extractelement <2 x i32> %i.ahw, i64 1 ; 2 uses
  %i.arf = add i32 %i.are, 1
  %i.arg = load i32, ptr %i.xm, align 8, !tbaa !53 ; 3 uses
  %i.arh = sitofp fast i32 %i.arf to float
  %i.ari = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.arh)
  %i.arj = add nsw i32 %i.arg, -1
  %i.ark = sitofp fast i32 %i.arj to float        ; 2 uses
  %i.arl = fsub fast float %i.ari, %i.ark
  %i.arm = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.arl)
  %i.arn = fsub fast float %i.ark, %i.arm
  %i.aro = sitofp fast i32 %i.arg to float
  %i.arp = fadd fast float %i.aro, -1.000000e+00
  %.sroa.speculated6.i437.2 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.arn, float 0.000000e+00)
  %.sroa.speculated.i438.2 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated6.i437.2, float %i.arp)
  %i.arq = fptosi float %.sroa.speculated.i438.2 to i32 ; 3 uses
  %i.arr = load i32, ptr %i.xl, align 4, !tbaa !52
  %i.ars = mul nsw i32 %i.arr, %i.arq             ; 4 uses
  %i.art = icmp sgt i32 %i.arq, -1
  %i.aru = icmp sgt i32 %i.arg, %i.arq
  %i.arv = and i1 %i.art, %i.aru                  ; 3 uses
  %i.arw = and i1 %i.ajg, %i.arv
  %i.arx = and i1 %i.ajh, %i.arv
  br i1 %i.arv, label %bb.ca, label %.thread794

.thread794:                                       ; preds = %.split.2
  store i32 -1, ptr %i.ard, align 4, !tbaa !29
  %i.ary = getelementptr inbounds nuw i8, ptr %.6530, i64 44
  store i32 -1, ptr %i.ary, align 4, !tbaa !29
  %i.arz = getelementptr inbounds nuw i8, ptr %.6530, i64 48
  store i32 -1, ptr %i.arz, align 4, !tbaa !29
  br label %.split.3

bb.ca:                                            ; preds = %.split.2
  %i.asa = extractelement <4 x i32> %i.aiz, i64 2
  %i.asb = add nsw i32 %i.ars, %i.asa
  %i.asc = load i32, ptr %i.xn, align 8, !tbaa !13
  %i.asd = mul nsw i32 %i.asc, %i.asb
  store i32 %i.asd, ptr %i.ard, align 4, !tbaa !29
  br i1 %i.aiq, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ase = add nsw i32 %i.ars, %i.aim
  %i.asf = load i32, ptr %i.xn, align 8, !tbaa !13
  %i.asg = mul nsw i32 %i.asf, %i.ase
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.ash = phi i32 [ %i.asg, %bb.cb ], [ -1, %bb.ca ]
  %i.asi = getelementptr inbounds nuw i8, ptr %.6530, i64 44
  store i32 %i.ash, ptr %i.asi, align 4, !tbaa !29
  br i1 %i.arw, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.asj = extractelement <4 x i32> %i.aiz, i64 3
  %i.ask = add nsw i32 %i.ars, %i.asj
  %i.asl = load i32, ptr %i.xn, align 8, !tbaa !13
  %i.asm = mul nsw i32 %i.asl, %i.ask
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.asn = phi i32 [ %i.asm, %bb.cd ], [ -1, %bb.cc ]
  %i.aso = getelementptr inbounds nuw i8, ptr %.6530, i64 48
  store i32 %i.asn, ptr %i.aso, align 4, !tbaa !29
  br i1 %i.arx, label %bb.cf, label %.split.3

bb.cf:                                            ; preds = %bb.ce
  %i.asp = extractelement <4 x i32> %i.aiz, i64 0
  %i.asq = add nsw i32 %i.ars, %i.asp
  %i.asr = load i32, ptr %i.xn, align 8, !tbaa !13
  %i.ass = mul nsw i32 %i.asr, %i.asq
  br label %.split.3

.split.3:                                         ; preds = %.thread794, %bb.cf, %bb.ce
  %i.ast = phi i32 [ %i.ass, %bb.cf ], [ -1, %bb.ce ], [ -1, %.thread794 ]
  %i.asu = getelementptr inbounds nuw i8, ptr %.6530, i64 52
  store i32 %i.ast, ptr %i.asu, align 4, !tbaa !29
  %i.asv = getelementptr inbounds nuw i8, ptr %.6530, i64 56 ; 2 uses
  %i.asw = add i32 %i.are, 2
  %i.asx = load i32, ptr %i.xm, align 8, !tbaa !53 ; 3 uses
  %i.asy = sitofp fast i32 %i.asw to float
  %i.asz = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.asy)
  %i.ata = add nsw i32 %i.asx, -1
  %i.atb = sitofp fast i32 %i.ata to float        ; 2 uses
  %i.atc = fsub fast float %i.asz, %i.atb
  %i.atd = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.atc)
  %i.ate = fsub fast float %i.atb, %i.atd
  %i.atf = sitofp fast i32 %i.asx to float
  %i.atg = fadd fast float %i.atf, -1.000000e+00
  %.sroa.speculated6.i437.3 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.ate, float 0.000000e+00)
  %.sroa.speculated.i438.3 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated6.i437.3, float %i.atg)
  %i.ath = fptosi float %.sroa.speculated.i438.3 to i32 ; 3 uses
  %i.ati = load i32, ptr %i.xl, align 4, !tbaa !52
  %i.atj = mul nsw i32 %i.ati, %i.ath             ; 4 uses
  %i.atk = icmp sgt i32 %i.ath, -1
  %i.atl = icmp sgt i32 %i.asx, %i.ath
  %i.atm = and i1 %i.atk, %i.atl                  ; 3 uses
  %i.atn = and i1 %i.ajg, %i.atm
  %i.ato = and i1 %i.ajh, %i.atm
  br i1 %i.atm, label %bb.cg, label %.thread797

.thread797:                                       ; preds = %.split.3
  store i32 -1, ptr %i.asv, align 4, !tbaa !29
  %i.atp = getelementptr inbounds nuw i8, ptr %.6530, i64 60
  store i32 -1, ptr %i.atp, align 4, !tbaa !29
  %i.atq = getelementptr inbounds nuw i8, ptr %.6530, i64 64
  store i32 -1, ptr %i.atq, align 4, !tbaa !29
  br label %.split526.us

bb.cg:                                            ; preds = %.split.3
  %i.atr = extractelement <4 x i32> %i.aiz, i64 2
  %i.ats = add nsw i32 %i.atj, %i.atr
  %i.att = load i32, ptr %i.xn, align 8, !tbaa !13
  %i.atu = mul nsw i32 %i.att, %i.ats
  store i32 %i.atu, ptr %i.asv, align 4, !tbaa !29
  br i1 %i.aiq, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.atv = add nsw i32 %i.atj, %i.aim
  %i.atw = load i32, ptr %i.xn, align 8, !tbaa !13
  %i.atx = mul nsw i32 %i.atw, %i.atv
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.aty = phi i32 [ %i.atx, %bb.ch ], [ -1, %bb.cg ]
  %i.atz = getelementptr inbounds nuw i8, ptr %.6530, i64 60
  store i32 %i.aty, ptr %i.atz, align 4, !tbaa !29
  br i1 %i.atn, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.aua = extractelement <4 x i32> %i.aiz, i64 3
  %i.aub = add nsw i32 %i.atj, %i.aua
  %i.auc = load i32, ptr %i.xn, align 8, !tbaa !13
  %i.aud = mul nsw i32 %i.auc, %i.aub
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.aue = phi i32 [ %i.aud, %bb.cj ], [ -1, %bb.ci ]
  %i.auf = getelementptr inbounds nuw i8, ptr %.6530, i64 64
  store i32 %i.aue, ptr %i.auf, align 4, !tbaa !29
  br i1 %i.ato, label %bb.cl, label %.split526.us

bb.cl:                                            ; preds = %bb.ck
  %i.aug = extractelement <4 x i32> %i.aiz, i64 0
  %i.auh = add nsw i32 %i.atj, %i.aug
  %i.aui = load i32, ptr %i.xn, align 8, !tbaa !13
  %i.auj = mul nsw i32 %i.aui, %i.auh
  br label %.split526.us

.loopexit:                                        ; preds = %.split526.us, %._crit_edge, %.preheader511, %.preheader510
  ret void
}

declare void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit518:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = mul i32 %i.e, %i.g
  %.fr926 = freeze i32 %i.h                       ; 10 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !24, !noalias !367 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader848, label %_ZN4ncnn3MatD2Ev.exit516

.preheader848:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit517.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit517.lr.ph:                   ; preds = %.preheader848
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %.fr926, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.u = add i32 %.fr926, -24                     ; 2 uses
  %i.v = urem i32 %i.u, 24
  %i.w = sub nuw i32 %i.u, %i.v
  %i.x = add nuw nsw i32 %i.w, 24
  br label %_ZN4ncnn3MatD2Ev.exit517

_ZN4ncnn3MatD2Ev.exit517:                         ; preds = %_ZN4ncnn3MatD2Ev.exit517.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0879 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24, !noalias !370
  %i.z = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !370
  %i.aa = mul i64 %i.z, %indvars.iv
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !370
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac ; 2 uses
  br i1 %i.p, label %.lr.ph869, label %.preheader

.preheader:                                       ; preds = %.lr.ph869, %_ZN4ncnn3MatD2Ev.exit517
  %.0501.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.x, %.lr.ph869 ] ; 2 uses
  %.0499.lcssa = phi ptr [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.gy, %.lr.ph869 ]
  %.1.lcssa = phi ptr [ %.0879, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.gz, %.lr.ph869 ] ; 2 uses
  %i.ae = icmp slt i32 %.0501.lcssa, %.fr926
  br i1 %i.ae, label %.lr.ph876, label %._crit_edge

.lr.ph869:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit517, %.lr.ph869
  %.1868 = phi ptr [ %i.gz, %.lr.ph869 ], [ %.0879, %_ZN4ncnn3MatD2Ev.exit517 ] ; 12 uses
  %.0499867 = phi ptr [ %i.gy, %.lr.ph869 ], [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ] ; 4 uses
  %.0501866 = phi i32 [ %i.ha, %.lr.ph869 ], [ 0, %_ZN4ncnn3MatD2Ev.exit517 ] ; 2 uses
  %i.af = load <8 x float>, ptr %.0499867, align 1, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0499867, i64 32
  %i.ah = load <8 x float>, ptr %i.ag, align 1, !tbaa !63 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0499867, i64 64
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !63 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.aj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.aj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ao = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.ap = shufflevector <8 x float> %i.ak, <8 x float> %i.ao, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.aq = shufflevector <8 x float> %i.an, <8 x float> %i.ao, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.ar = shufflevector <8 x float> %i.an, <8 x float> %i.am, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.as = load i32, ptr %i.q, align 4, !tbaa !52
  %i.at = sitofp fast i32 %i.as to float
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.aw = fadd fast <8 x float> %i.ap, splat (float 1.000000e+00)
  %i.ax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.av, <8 x float> splat (float -1.000000e+00))
  %i.ay = fmul fast <8 x float> %i.ax, splat (float 5.000000e-01) ; 2 uses
  %i.az = load i32, ptr %i.r, align 8, !tbaa !53
  %i.ba = sitofp fast i32 %i.az to float
  %i.bb = insertelement <8 x float> poison, float %i.ba, i64 0
  %i.bc = shufflevector <8 x float> %i.bb, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bd = fadd fast <8 x float> %i.aq, splat (float 1.000000e+00)
  %i.be = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bd, <8 x float> nofpclass(nan inf) %i.bc, <8 x float> splat (float -1.000000e+00))
  %i.bf = fmul fast <8 x float> %i.be, splat (float 5.000000e-01) ; 2 uses
  %i.bg = load i32, ptr %i.s, align 4, !tbaa !55
  %i.bh = sitofp fast i32 %i.bg to float
  %i.bi = insertelement <8 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <8 x float> %i.bi, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bk = fadd fast <8 x float> %i.ar, splat (float 1.000000e+00)
  %i.bl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bk, <8 x float> nofpclass(nan inf) %i.bj, <8 x float> splat (float -1.000000e+00))
  %i.bm = fmul fast <8 x float> %i.bl, splat (float 5.000000e-01) ; 2 uses
  %i.bn = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ay, i32 1) ; 5 uses
  %i.bo = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bf, i32 1) ; 5 uses
  %i.bp = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bm, i32 1) ; 5 uses
  %i.bq = fadd fast <8 x float> %i.bn, splat (float 1.000000e+00) ; 2 uses
  %i.br = fadd fast <8 x float> %i.bo, splat (float 1.000000e+00) ; 2 uses
  %i.bs = fadd fast <8 x float> %i.bp, splat (float 1.000000e+00) ; 2 uses
  %i.bt = fcmp fast ogt <8 x float> %i.bn, splat (float -1.000000e+00)
  %i.bu = fcmp fast ogt <8 x float> %i.av, %i.bn
  %i.bv = and <8 x i1> %i.bt, %i.bu               ; 2 uses
  %i.bw = fcmp fast ogt <8 x float> %i.bq, splat (float -1.000000e+00)
  %i.bx = fcmp fast ogt <8 x float> %i.av, %i.bq
  %i.by = and <8 x i1> %i.bw, %i.bx               ; 2 uses
  %i.bz = fcmp fast ogt <8 x float> %i.bo, splat (float -1.000000e+00)
  %i.ca = fcmp fast ogt <8 x float> %i.bc, %i.bo
  %i.cb = and <8 x i1> %i.bz, %i.ca
  %i.cc = sext <8 x i1> %i.cb to <8 x i32>        ; 2 uses
  %i.cd = fcmp fast ogt <8 x float> %i.br, splat (float -1.000000e+00)
  %i.ce = fcmp fast ogt <8 x float> %i.bc, %i.br
  %i.cf = and <8 x i1> %i.cd, %i.ce               ; 2 uses
  %i.cg = fcmp fast ogt <8 x float> %i.bp, splat (float -1.000000e+00)
  %i.ch = fcmp fast ogt <8 x float> %i.bj, %i.bp
  %i.ci = and <8 x i1> %i.cg, %i.ch               ; 3 uses
  %i.cj = sext <8 x i1> %i.ci to <8 x i32>
  %i.ck = fcmp fast ogt <8 x float> %i.bs, splat (float -1.000000e+00)
  %i.cl = fcmp fast ogt <8 x float> %i.bj, %i.bs
  %i.cm = and <8 x i1> %i.ck, %i.cl               ; 4 uses
  %i.cn = and <8 x i1> %i.bv, %i.cf               ; 2 uses
  %i.co = and <8 x i1> %i.by, %i.cf               ; 2 uses
  %i.cp = bitcast <8 x i32> %i.cc to <8 x float>
  %i.cq = select <8 x i1> %i.bv, <8 x float> %i.cp, <8 x float> zeroinitializer ; 2 uses
  %i.cr = select <8 x i1> %i.ci, <8 x float> %i.cq, <8 x float> zeroinitializer
  %i.cs = bitcast <8 x i32> %i.cc to <8 x float>
  %i.ct = select <8 x i1> %i.by, <8 x float> %i.cs, <8 x float> zeroinitializer ; 2 uses
  %i.cu = select <8 x i1> %i.ci, <8 x float> %i.ct, <8 x float> zeroinitializer
  %i.cv = bitcast <8 x i32> %i.cj to <8 x float>  ; 2 uses
  %i.cw = select <8 x i1> %i.cn, <8 x float> %i.cv, <8 x float> zeroinitializer
  %i.cx = select <8 x i1> %i.co, <8 x float> %i.cv, <8 x float> zeroinitializer
  %i.cy = select <8 x i1> %i.cm, <8 x float> %i.cq, <8 x float> zeroinitializer
  %i.cz = select <8 x i1> %i.cm, <8 x float> %i.ct, <8 x float> zeroinitializer
  %i.da = and <8 x i1> %i.cn, %i.cm
  %i.db = and <8 x i1> %i.co, %i.cm
  %i.dc = fmul fast <8 x float> %i.bc, %i.av      ; 2 uses
  %i.dd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bo, <8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.bn)
  %i.de = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dc, <8 x float> nofpclass(nan inf) %i.bp, <8 x float> nofpclass(nan inf) %i.dd)
  %i.df = load i32, ptr %i.t, align 8, !tbaa !13
  %i.dg = sitofp fast i32 %i.df to float
  %i.dh = insertelement <8 x float> poison, float %i.dg, i64 0
  %i.di = shufflevector <8 x float> %i.dh, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.dj = fmul fast <8 x float> %i.di, %i.de      ; 4 uses
  %i.dk = fadd fast <8 x float> %i.dj, %i.di
  %i.dl = fmul fast <8 x float> %i.di, %i.av      ; 2 uses
  %i.dm = fadd fast <8 x float> %i.dj, %i.dl      ; 2 uses
  %i.dn = fadd fast <8 x float> %i.dm, %i.di
  %i.do = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dc, <8 x float> nofpclass(nan inf) %i.di, <8 x float> nofpclass(nan inf) %i.dj) ; 3 uses
  %i.dp = fadd fast <8 x float> %i.do, %i.di
  %i.dq = fadd fast <8 x float> %i.do, %i.dl      ; 2 uses
  %i.dr = fadd fast <8 x float> %i.dq, %i.di
  %i.ds = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dj, <8 x float> nofpclass(nan inf) %i.cr)
  %i.dt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dk, <8 x float> nofpclass(nan inf) %i.cu)
  %i.du = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dm, <8 x float> nofpclass(nan inf) %i.cw)
  %i.dv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dn, <8 x float> nofpclass(nan inf) %i.cx)
  %i.dw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.do, <8 x float> nofpclass(nan inf) %i.cy)
  %i.dx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dp, <8 x float> nofpclass(nan inf) %i.cz)
  %i.dy = select <8 x i1> %i.da, <8 x float> %i.dq, <8 x float> splat (float -1.000000e+00)
  %i.dz = select <8 x i1> %i.db, <8 x float> %i.dr, <8 x float> splat (float -1.000000e+00)
  %i.ea = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ds) ; 3 uses
  %i.eb = bitcast <8 x i32> %i.ea to <8 x float>
  %i.ec = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dt) ; 4 uses
  %i.ed = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.du) ; 4 uses
  %i.ee = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dv) ; 4 uses
  %i.ef = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dw) ; 4 uses
  %i.eg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dx) ; 4 uses
  %i.eh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dy) ; 4 uses
  %i.ei = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dz) ; 3 uses
  %i.ej = bitcast <8 x i32> %i.ei to <8 x float>  ; 2 uses
  %i.ek = fsub fast <8 x float> %i.ay, %i.bn      ; 4 uses
  %i.el = fsub fast <8 x float> %i.bf, %i.bo      ; 4 uses
  %i.em = fsub fast <8 x float> %i.bm, %i.bp      ; 4 uses
  %i.en = shufflevector <8 x i32> %i.ea, <8 x i32> %i.ec, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.eo = shufflevector <8 x i32> %i.ea, <8 x i32> %i.ec, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ep = bitcast <8 x i32> %i.eo to <8 x float>  ; 2 uses
  %i.eq = shufflevector <8 x i32> %i.ed, <8 x i32> %i.ee, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.er = shufflevector <8 x i32> %i.ed, <8 x i32> %i.ee, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.es = shufflevector <8 x i32> %i.ef, <8 x i32> %i.eg, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.et = shufflevector <8 x i32> %i.ef, <8 x i32> %i.eg, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.eu = shufflevector <8 x i32> %i.eh, <8 x i32> %i.ei, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ev = shufflevector <8 x i32> %i.eh, <8 x i32> %i.ei, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ew = bitcast <8 x i32> %i.ev to <8 x float>
  %i.ex = shufflevector <8 x float> %i.ek, <8 x float> %i.el, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ey = shufflevector <8 x float> %i.ek, <8 x float> %i.el, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ez = shufflevector <8 x float> %i.em, <8 x float> %i.eb, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.fa = shufflevector <8 x float> %i.em, <8 x float> %i.ep, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.fb = shufflevector <8 x i32> %i.ec, <8 x i32> %i.ed, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fc = shufflevector <8 x i32> %i.ec, <8 x i32> %i.ed, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fd = bitcast <8 x i32> %i.fc to <8 x float>
  %i.fe = shufflevector <8 x i32> %i.ee, <8 x i32> %i.ef, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ff = shufflevector <8 x i32> %i.ee, <8 x i32> %i.ef, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fg = shufflevector <8 x i32> %i.eg, <8 x i32> %i.eh, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fh = bitcast <8 x i32> %i.fg to <8 x float>
  %i.fi = shufflevector <8 x i32> %i.eg, <8 x i32> %i.eh, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fj = shufflevector <8 x float> %i.ej, <8 x float> %i.ek, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fk = shufflevector <8 x float> %i.ej, <8 x float> %i.ek, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fl = shufflevector <8 x float> %i.el, <8 x float> %i.em, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fm = shufflevector <8 x float> %i.el, <8 x float> %i.em, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fn = shufflevector <8 x i32> %i.en, <8 x i32> %i.eq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fo = bitcast <8 x i32> %i.fn to <8 x float>
  %i.fp = shufflevector <8 x i32> %i.es, <8 x i32> %i.eu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fq = bitcast <8 x i32> %i.fp to <8 x float>
  %i.fr = shufflevector <8 x float> %i.ex, <8 x float> %i.ez, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.fs = shufflevector <8 x i32> %i.fb, <8 x i32> %i.fe, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.ft = bitcast <8 x i32> %i.fs to <8 x float>  ; 2 uses
  %i.fu = shufflevector <8 x float> %i.fh, <8 x float> %i.fj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.fv = shufflevector <8 x float> %i.fl, <8 x float> %i.ep, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.fw = shufflevector <8 x i32> %i.er, <8 x i32> %i.et, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.fx = bitcast <8 x i32> %i.fw to <8 x float>  ; 2 uses
  %i.fy = shufflevector <8 x float> %i.ew, <8 x float> %i.ey, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fz = shufflevector <8 x float> %i.fa, <8 x float> %i.fd, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.ga = shufflevector <8 x i32> %i.ff, <8 x i32> %i.fi, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gb = bitcast <8 x i32> %i.ga to <8 x float>  ; 2 uses
  %i.gc = shufflevector <8 x float> %i.fk, <8 x float> %i.fm, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gd = shufflevector <8 x i32> %i.fn, <8 x i32> %i.fp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ge = shufflevector <8 x float> %i.fr, <8 x float> %i.ft, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gf = shufflevector <8 x float> %i.fu, <8 x float> %i.fv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gg = shufflevector <8 x float> %i.fx, <8 x float> %i.fy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gh = shufflevector <8 x float> %i.fz, <8 x float> %i.gb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gi = shufflevector <8 x float> %i.gc, <8 x float> %i.fo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.gj = shufflevector <8 x float> %i.fq, <8 x float> %i.fr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gk = shufflevector <8 x float> %i.ft, <8 x float> %i.fu, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gl = shufflevector <8 x float> %i.fv, <8 x float> %i.fx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gm = shufflevector <8 x float> %i.fy, <8 x float> %i.fz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gn = shufflevector <8 x float> %i.gb, <8 x float> %i.gc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.gd, ptr %.1868, align 1, !tbaa !63
  %i.go = getelementptr inbounds nuw i8, ptr %.1868, i64 32
  store <8 x float> %i.ge, ptr %i.go, align 1, !tbaa !63
  %i.gp = getelementptr inbounds nuw i8, ptr %.1868, i64 64
  store <8 x float> %i.gf, ptr %i.gp, align 1, !tbaa !63
  %i.gq = getelementptr inbounds nuw i8, ptr %.1868, i64 96
  store <8 x float> %i.gg, ptr %i.gq, align 1, !tbaa !63
  %i.gr = getelementptr inbounds nuw i8, ptr %.1868, i64 128
  store <8 x float> %i.gh, ptr %i.gr, align 1, !tbaa !63
  %i.gs = getelementptr inbounds nuw i8, ptr %.1868, i64 160
  store <8 x float> %i.gi, ptr %i.gs, align 1, !tbaa !63
end_hunk_0
begin_hunk_1_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %i.ve = extractelement <2 x i1> %i.up, i64 0    ; 2 uses
  %i.vf = extractelement <2 x i1> %i.up, i64 1    ; 2 uses
  %i.vg = and i1 %i.ve, %i.vf                     ; 2 uses
  %i.vh = and i1 %i.uw, %i.vf                     ; 2 uses
  %i.vi = and i1 %i.ve, %i.va                     ; 2 uses
  %i.vj = and i1 %i.uw, %i.va                     ; 2 uses
  %i.vk = and i1 %i.vg, %i.us
  %i.vl = and i1 %i.vh, %i.us
  %i.vm = and i1 %i.us, %i.vi
  %i.vn = and i1 %i.us, %i.vj
  %i.vo = and i1 %i.vg, %i.vd
  %i.vp = and i1 %i.vh, %i.vd
  %i.vq = and i1 %i.vi, %i.vd
  %i.vr = and i1 %i.vj, %i.vd
  %i.vs = getelementptr inbounds nuw i8, ptr %.4864, i64 32
  br i1 %i.vk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.vt = mul i32 %i.uy, %i.uh
  %reass.add = add i32 %i.vt, %i.uk
  %reass.mul = mul i32 %reass.add, %i.uu
  %i.vu = add i32 %reass.mul, %i.ui
  %i.vv = load i32, ptr %i.mw, align 8, !tbaa !13
  %i.vw = mul nsw i32 %i.vv, %i.vu
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.vx = phi i32 [ %i.vw, %bb.s ], [ -1, %bb.r ]
  store i32 %i.vx, ptr %.4864, align 4, !tbaa !29
  br i1 %i.vl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.vy = load i32, ptr %i.mt, align 4, !tbaa !52
  %i.vz = load i32, ptr %i.mu, align 8, !tbaa !53
  %i.wa = mul i32 %i.vz, %i.uh
  %reass.add818 = add i32 %i.wa, %i.uk
  %reass.mul819 = mul i32 %reass.add818, %i.vy
  %i.wb = add i32 %reass.mul819, %i.uj
  %i.wc = load i32, ptr %i.mw, align 8, !tbaa !13
  %i.wd = mul nsw i32 %i.wb, %i.wc
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.we = phi i32 [ %i.wd, %bb.u ], [ -1, %bb.t ]
  %i.wf = getelementptr inbounds nuw i8, ptr %.4864, i64 4
  store i32 %i.we, ptr %i.wf, align 4, !tbaa !29
  br i1 %i.vm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.wg = load i32, ptr %i.mt, align 4, !tbaa !52
  %i.wh = load i32, ptr %i.mu, align 8, !tbaa !53
  %i.wi = mul i32 %i.wh, %i.uh
  %reass.add820 = add i32 %i.wi, %i.ul
  %reass.mul821 = mul i32 %reass.add820, %i.wg
  %i.wj = add i32 %reass.mul821, %i.ui
  %i.wk = load i32, ptr %i.mw, align 8, !tbaa !13
  %i.wl = mul nsw i32 %i.wj, %i.wk
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.wm = phi i32 [ %i.wl, %bb.w ], [ -1, %bb.v ]
  %i.wn = getelementptr inbounds nuw i8, ptr %.4864, i64 8
  store i32 %i.wm, ptr %i.wn, align 4, !tbaa !29
  br i1 %i.vn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.wo = load i32, ptr %i.mt, align 4, !tbaa !52
  %i.wp = load i32, ptr %i.mu, align 8, !tbaa !53
  %i.wq = mul i32 %i.wp, %i.uh
  %reass.add822 = add i32 %i.wq, %i.ul
  %reass.mul823 = mul i32 %reass.add822, %i.wo
  %i.wr = add i32 %reass.mul823, %i.uj
  %i.ws = load i32, ptr %i.mw, align 8, !tbaa !13
  %i.wt = mul nsw i32 %i.wr, %i.ws
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.wu = phi i32 [ %i.wt, %bb.y ], [ -1, %bb.x ]
  %i.wv = getelementptr inbounds nuw i8, ptr %.4864, i64 12
  store i32 %i.wu, ptr %i.wv, align 4, !tbaa !29
  br i1 %i.vo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ww = load i32, ptr %i.mt, align 4, !tbaa !52
  %i.wx = load i32, ptr %i.mu, align 8, !tbaa !53
  %i.wy = mul i32 %i.wx, %i.um
  %reass.add824 = add i32 %i.wy, %i.uk
  %reass.mul825 = mul i32 %reass.add824, %i.ww
  %i.wz = add i32 %reass.mul825, %i.ui
  %i.xa = load i32, ptr %i.mw, align 8, !tbaa !13
  %i.xb = mul nsw i32 %i.wz, %i.xa
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.xc = phi i32 [ %i.xb, %bb.aa ], [ -1, %bb.z ]
  %i.xd = getelementptr inbounds nuw i8, ptr %.4864, i64 16
  store i32 %i.xc, ptr %i.xd, align 4, !tbaa !29
  br i1 %i.vp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.xe = load i32, ptr %i.mt, align 4, !tbaa !52
  %i.xf = load i32, ptr %i.mu, align 8, !tbaa !53
  %i.xg = mul i32 %i.xf, %i.um
  %reass.add826 = add i32 %i.xg, %i.uk
  %reass.mul827 = mul i32 %reass.add826, %i.xe
  %i.xh = add i32 %reass.mul827, %i.uj
  %i.xi = load i32, ptr %i.mw, align 8, !tbaa !13
  %i.xj = mul nsw i32 %i.xh, %i.xi
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.xk = phi i32 [ %i.xj, %bb.ac ], [ -1, %bb.ab ]
  %i.xl = getelementptr inbounds nuw i8, ptr %.4864, i64 20
  store i32 %i.xk, ptr %i.xl, align 4, !tbaa !29
  br i1 %i.vq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.xm = load i32, ptr %i.mt, align 4, !tbaa !52
  %i.xn = load i32, ptr %i.mu, align 8, !tbaa !53
  %i.xo = mul i32 %i.xn, %i.um
  %reass.add828 = add i32 %i.xo, %i.ul
  %reass.mul829 = mul i32 %reass.add828, %i.xm
  %i.xp = add i32 %reass.mul829, %i.ui
  %i.xq = load i32, ptr %i.mw, align 8, !tbaa !13
  %i.xr = mul nsw i32 %i.xp, %i.xq
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.xs = phi i32 [ %i.xr, %bb.ae ], [ -1, %bb.ad ]
  %i.xt = getelementptr inbounds nuw i8, ptr %.4864, i64 24
  store i32 %i.xs, ptr %i.xt, align 4, !tbaa !29
  br i1 %i.vr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.xu = load i32, ptr %i.mt, align 4, !tbaa !52
  %i.xv = load i32, ptr %i.mu, align 8, !tbaa !53
  %i.xw = mul i32 %i.xv, %i.um
  %reass.add830 = add i32 %i.xw, %i.ul
  %reass.mul831 = mul i32 %reass.add830, %i.xu
  %i.xx = add i32 %reass.mul831, %i.uj
  %i.xy = load i32, ptr %i.mw, align 8, !tbaa !13
  %i.xz = mul nsw i32 %i.xx, %i.xy
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.ya = phi i32 [ %i.xz, %bb.ag ], [ -1, %bb.af ]
  %i.yb = getelementptr inbounds nuw i8, ptr %.4864, i64 28
  store i32 %i.ya, ptr %i.yb, align 4, !tbaa !29
  %i.yc = sitofp <2 x i32> %i.uf to <2 x float>
  %i.yd = fsub fast <2 x float> %i.ud, %i.yc
  store <2 x float> %i.yd, ptr %i.vs, align 4, !tbaa !66
  %i.ye = sitofp fast i32 %i.uh to float
  %i.yf = fsub fast float %i.tv, %i.ye
  %i.yg = getelementptr inbounds nuw i8, ptr %.4864, i64 40
  store float %i.yf, ptr %i.yg, align 4, !tbaa !66
  %i.yh = getelementptr inbounds nuw i8, ptr %.1504863, i64 4
  %i.yi = getelementptr inbounds nuw i8, ptr %.1506862, i64 4
  %i.yj = getelementptr inbounds nuw i8, ptr %.1508861, i64 4
  %i.yk = getelementptr inbounds nuw i8, ptr %.4864, i64 44
  %i.yl = add nuw nsw i32 %.1510860, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.yl, %.fr926
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !383

.loopexit:                                        ; preds = %bb.ah, %._crit_edge, %.preheader849, %.preheader848
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit518:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = mul i32 %i.e, %i.g
  %.fr926 = freeze i32 %i.h                       ; 10 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !24, !noalias !384 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader848, label %_ZN4ncnn3MatD2Ev.exit516

.preheader848:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit517.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit517.lr.ph:                   ; preds = %.preheader848
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %.fr926, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.u = add i32 %.fr926, -24                     ; 2 uses
  %i.v = urem i32 %i.u, 24
  %i.w = sub nuw i32 %i.u, %i.v
  %i.x = add nuw nsw i32 %i.w, 24
  br label %_ZN4ncnn3MatD2Ev.exit517

_ZN4ncnn3MatD2Ev.exit517:                         ; preds = %_ZN4ncnn3MatD2Ev.exit517.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0879 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24, !noalias !387
  %i.z = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !387
  %i.aa = mul i64 %i.z, %indvars.iv
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !387
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac ; 2 uses
  br i1 %i.p, label %.lr.ph869, label %.preheader

.preheader:                                       ; preds = %.lr.ph869, %_ZN4ncnn3MatD2Ev.exit517
  %.0501.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.x, %.lr.ph869 ] ; 2 uses
  %.0499.lcssa = phi ptr [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hb, %.lr.ph869 ]
  %.1.lcssa = phi ptr [ %.0879, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hc, %.lr.ph869 ] ; 2 uses
  %i.ae = icmp slt i32 %.0501.lcssa, %.fr926
  br i1 %i.ae, label %.lr.ph876, label %._crit_edge

.lr.ph869:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit517, %.lr.ph869
  %.1868 = phi ptr [ %i.hc, %.lr.ph869 ], [ %.0879, %_ZN4ncnn3MatD2Ev.exit517 ] ; 12 uses
  %.0499867 = phi ptr [ %i.hb, %.lr.ph869 ], [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ] ; 4 uses
  %.0501866 = phi i32 [ %i.hd, %.lr.ph869 ], [ 0, %_ZN4ncnn3MatD2Ev.exit517 ] ; 2 uses
  %i.af = load <8 x float>, ptr %.0499867, align 1, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0499867, i64 32
  %i.ah = load <8 x float>, ptr %i.ag, align 1, !tbaa !63 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0499867, i64 64
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !63 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.aj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.aj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ao = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.ap = shufflevector <8 x float> %i.ak, <8 x float> %i.ao, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.aq = shufflevector <8 x float> %i.an, <8 x float> %i.ao, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.ar = shufflevector <8 x float> %i.an, <8 x float> %i.am, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.as = load i32, ptr %i.q, align 4, !tbaa !52
  %i.at = sitofp fast i32 %i.as to float
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.aw = fmul fast <8 x float> %i.ap, splat (float 5.000000e-01)
  %i.ax = fadd fast <8 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fadd fast <8 x float> %i.av, splat (float -1.000000e+00)
  %i.az = fmul fast <8 x float> %i.ax, %i.ay      ; 2 uses
  %i.ba = load i32, ptr %i.r, align 8, !tbaa !53
  %i.bb = sitofp fast i32 %i.ba to float
  %i.bc = insertelement <8 x float> poison, float %i.bb, i64 0
  %i.bd = shufflevector <8 x float> %i.bc, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.be = fmul fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.bf = fadd fast <8 x float> %i.be, splat (float 5.000000e-01)
  %i.bg = fadd fast <8 x float> %i.bd, splat (float -1.000000e+00)
  %i.bh = fmul fast <8 x float> %i.bg, %i.bf      ; 2 uses
  %i.bi = load i32, ptr %i.s, align 4, !tbaa !55
  %i.bj = sitofp fast i32 %i.bi to float
  %i.bk = insertelement <8 x float> poison, float %i.bj, i64 0
  %i.bl = shufflevector <8 x float> %i.bk, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bm = fmul fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.bn = fadd fast <8 x float> %i.bm, splat (float 5.000000e-01)
  %i.bo = fadd fast <8 x float> %i.bl, splat (float -1.000000e+00)
  %i.bp = fmul fast <8 x float> %i.bo, %i.bn      ; 2 uses
  %i.bq = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.az, i32 1) ; 5 uses
  %i.br = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bh, i32 1) ; 5 uses
  %i.bs = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bp, i32 1) ; 5 uses
  %i.bt = fadd fast <8 x float> %i.bq, splat (float 1.000000e+00) ; 2 uses
  %i.bu = fadd fast <8 x float> %i.br, splat (float 1.000000e+00) ; 2 uses
  %i.bv = fadd fast <8 x float> %i.bs, splat (float 1.000000e+00) ; 2 uses
  %i.bw = fcmp fast ogt <8 x float> %i.bq, splat (float -1.000000e+00)
  %i.bx = fcmp fast ogt <8 x float> %i.av, %i.bq
  %i.by = and <8 x i1> %i.bw, %i.bx               ; 2 uses
  %i.bz = fcmp fast ogt <8 x float> %i.bt, splat (float -1.000000e+00)
  %i.ca = fcmp fast ogt <8 x float> %i.av, %i.bt
  %i.cb = and <8 x i1> %i.bz, %i.ca               ; 2 uses
  %i.cc = fcmp fast ogt <8 x float> %i.br, splat (float -1.000000e+00)
  %i.cd = fcmp fast ogt <8 x float> %i.bd, %i.br
  %i.ce = and <8 x i1> %i.cc, %i.cd
  %i.cf = sext <8 x i1> %i.ce to <8 x i32>        ; 2 uses
  %i.cg = fcmp fast ogt <8 x float> %i.bu, splat (float -1.000000e+00)
  %i.ch = fcmp fast ogt <8 x float> %i.bd, %i.bu
  %i.ci = and <8 x i1> %i.cg, %i.ch               ; 2 uses
  %i.cj = fcmp fast ogt <8 x float> %i.bs, splat (float -1.000000e+00)
  %i.ck = fcmp fast ogt <8 x float> %i.bl, %i.bs
  %i.cl = and <8 x i1> %i.cj, %i.ck               ; 3 uses
  %i.cm = sext <8 x i1> %i.cl to <8 x i32>
  %i.cn = fcmp fast ogt <8 x float> %i.bv, splat (float -1.000000e+00)
  %i.co = fcmp fast ogt <8 x float> %i.bl, %i.bv
  %i.cp = and <8 x i1> %i.cn, %i.co               ; 4 uses
  %i.cq = and <8 x i1> %i.by, %i.ci               ; 2 uses
  %i.cr = and <8 x i1> %i.cb, %i.ci               ; 2 uses
  %i.cs = bitcast <8 x i32> %i.cf to <8 x float>
  %i.ct = select <8 x i1> %i.by, <8 x float> %i.cs, <8 x float> zeroinitializer ; 2 uses
  %i.cu = select <8 x i1> %i.cl, <8 x float> %i.ct, <8 x float> zeroinitializer
  %i.cv = bitcast <8 x i32> %i.cf to <8 x float>
  %i.cw = select <8 x i1> %i.cb, <8 x float> %i.cv, <8 x float> zeroinitializer ; 2 uses
  %i.cx = select <8 x i1> %i.cl, <8 x float> %i.cw, <8 x float> zeroinitializer
  %i.cy = bitcast <8 x i32> %i.cm to <8 x float>  ; 2 uses
  %i.cz = select <8 x i1> %i.cq, <8 x float> %i.cy, <8 x float> zeroinitializer
  %i.da = select <8 x i1> %i.cr, <8 x float> %i.cy, <8 x float> zeroinitializer
  %i.db = select <8 x i1> %i.cp, <8 x float> %i.ct, <8 x float> zeroinitializer
  %i.dc = select <8 x i1> %i.cp, <8 x float> %i.cw, <8 x float> zeroinitializer
  %i.dd = and <8 x i1> %i.cq, %i.cp
  %i.de = and <8 x i1> %i.cr, %i.cp
  %i.df = fmul fast <8 x float> %i.bd, %i.av      ; 2 uses
  %i.dg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.br, <8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.bq)
  %i.dh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.df, <8 x float> nofpclass(nan inf) %i.bs, <8 x float> nofpclass(nan inf) %i.dg)
  %i.di = load i32, ptr %i.t, align 8, !tbaa !13
  %i.dj = sitofp fast i32 %i.di to float
  %i.dk = insertelement <8 x float> poison, float %i.dj, i64 0
  %i.dl = shufflevector <8 x float> %i.dk, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.dm = fmul fast <8 x float> %i.dl, %i.dh      ; 4 uses
  %i.dn = fadd fast <8 x float> %i.dm, %i.dl
  %i.do = fmul fast <8 x float> %i.dl, %i.av      ; 2 uses
  %i.dp = fadd fast <8 x float> %i.dm, %i.do      ; 2 uses
  %i.dq = fadd fast <8 x float> %i.dp, %i.dl
  %i.dr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.df, <8 x float> nofpclass(nan inf) %i.dl, <8 x float> nofpclass(nan inf) %i.dm) ; 3 uses
  %i.ds = fadd fast <8 x float> %i.dr, %i.dl
  %i.dt = fadd fast <8 x float> %i.dr, %i.do      ; 2 uses
  %i.du = fadd fast <8 x float> %i.dt, %i.dl
  %i.dv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dm, <8 x float> nofpclass(nan inf) %i.cu)
  %i.dw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dn, <8 x float> nofpclass(nan inf) %i.cx)
  %i.dx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dp, <8 x float> nofpclass(nan inf) %i.cz)
  %i.dy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dq, <8 x float> nofpclass(nan inf) %i.da)
  %i.dz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dr, <8 x float> nofpclass(nan inf) %i.db)
  %i.ea = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ds, <8 x float> nofpclass(nan inf) %i.dc)
  %i.eb = select <8 x i1> %i.dd, <8 x float> %i.dt, <8 x float> splat (float -1.000000e+00)
  %i.ec = select <8 x i1> %i.de, <8 x float> %i.du, <8 x float> splat (float -1.000000e+00)
  %i.ed = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dv) ; 3 uses
  %i.ee = bitcast <8 x i32> %i.ed to <8 x float>
  %i.ef = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dw) ; 4 uses
  %i.eg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dx) ; 4 uses
  %i.eh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dy) ; 4 uses
  %i.ei = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dz) ; 4 uses
  %i.ej = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ea) ; 4 uses
  %i.ek = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eb) ; 4 uses
  %i.el = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ec) ; 3 uses
  %i.em = bitcast <8 x i32> %i.el to <8 x float>  ; 2 uses
  %i.en = fsub fast <8 x float> %i.az, %i.bq      ; 4 uses
  %i.eo = fsub fast <8 x float> %i.bh, %i.br      ; 4 uses
  %i.ep = fsub fast <8 x float> %i.bp, %i.bs      ; 4 uses
  %i.eq = shufflevector <8 x i32> %i.ed, <8 x i32> %i.ef, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.er = shufflevector <8 x i32> %i.ed, <8 x i32> %i.ef, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.es = bitcast <8 x i32> %i.er to <8 x float>  ; 2 uses
  %i.et = shufflevector <8 x i32> %i.eg, <8 x i32> %i.eh, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.eu = shufflevector <8 x i32> %i.eg, <8 x i32> %i.eh, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ev = shufflevector <8 x i32> %i.ei, <8 x i32> %i.ej, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ew = shufflevector <8 x i32> %i.ei, <8 x i32> %i.ej, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ex = shufflevector <8 x i32> %i.ek, <8 x i32> %i.el, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ey = shufflevector <8 x i32> %i.ek, <8 x i32> %i.el, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ez = bitcast <8 x i32> %i.ey to <8 x float>
  %i.fa = shufflevector <8 x float> %i.en, <8 x float> %i.eo, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fb = shufflevector <8 x float> %i.en, <8 x float> %i.eo, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fc = shufflevector <8 x float> %i.ep, <8 x float> %i.ee, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.fd = shufflevector <8 x float> %i.ep, <8 x float> %i.es, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.fe = shufflevector <8 x i32> %i.ef, <8 x i32> %i.eg, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ff = shufflevector <8 x i32> %i.ef, <8 x i32> %i.eg, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fg = bitcast <8 x i32> %i.ff to <8 x float>
  %i.fh = shufflevector <8 x i32> %i.eh, <8 x i32> %i.ei, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fi = shufflevector <8 x i32> %i.eh, <8 x i32> %i.ei, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fj = shufflevector <8 x i32> %i.ej, <8 x i32> %i.ek, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fk = bitcast <8 x i32> %i.fj to <8 x float>
  %i.fl = shufflevector <8 x i32> %i.ej, <8 x i32> %i.ek, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fm = shufflevector <8 x float> %i.em, <8 x float> %i.en, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fn = shufflevector <8 x float> %i.em, <8 x float> %i.en, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fo = shufflevector <8 x float> %i.eo, <8 x float> %i.ep, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fp = shufflevector <8 x float> %i.eo, <8 x float> %i.ep, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fq = shufflevector <8 x i32> %i.eq, <8 x i32> %i.et, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fr = bitcast <8 x i32> %i.fq to <8 x float>
  %i.fs = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ex, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ft = bitcast <8 x i32> %i.fs to <8 x float>
  %i.fu = shufflevector <8 x float> %i.fa, <8 x float> %i.fc, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.fv = shufflevector <8 x i32> %i.fe, <8 x i32> %i.fh, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.fw = bitcast <8 x i32> %i.fv to <8 x float>  ; 2 uses
  %i.fx = shufflevector <8 x float> %i.fk, <8 x float> %i.fm, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.fy = shufflevector <8 x float> %i.fo, <8 x float> %i.es, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.fz = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ew, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ga = bitcast <8 x i32> %i.fz to <8 x float>  ; 2 uses
  %i.gb = shufflevector <8 x float> %i.ez, <8 x float> %i.fb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gc = shufflevector <8 x float> %i.fd, <8 x float> %i.fg, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.gd = shufflevector <8 x i32> %i.fi, <8 x i32> %i.fl, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.ge = bitcast <8 x i32> %i.gd to <8 x float>  ; 2 uses
  %i.gf = shufflevector <8 x float> %i.fn, <8 x float> %i.fp, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gg = shufflevector <8 x i32> %i.fq, <8 x i32> %i.fs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gh = shufflevector <8 x float> %i.fu, <8 x float> %i.fw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gi = shufflevector <8 x float> %i.fx, <8 x float> %i.fy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gj = shufflevector <8 x float> %i.ga, <8 x float> %i.gb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gk = shufflevector <8 x float> %i.gc, <8 x float> %i.ge, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gl = shufflevector <8 x float> %i.gf, <8 x float> %i.fr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.gm = shufflevector <8 x float> %i.ft, <8 x float> %i.fu, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gn = shufflevector <8 x float> %i.fw, <8 x float> %i.fx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.go = shufflevector <8 x float> %i.fy, <8 x float> %i.ga, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gp = shufflevector <8 x float> %i.gb, <8 x float> %i.gc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gq = shufflevector <8 x float> %i.ge, <8 x float> %i.gf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.gg, ptr %.1868, align 1, !tbaa !63
  %i.gr = getelementptr inbounds nuw i8, ptr %.1868, i64 32
  store <8 x float> %i.gh, ptr %i.gr, align 1, !tbaa !63
  %i.gs = getelementptr inbounds nuw i8, ptr %.1868, i64 64
  store <8 x float> %i.gi, ptr %i.gs, align 1, !tbaa !63
  %i.gt = getelementptr inbounds nuw i8, ptr %.1868, i64 96
  store <8 x float> %i.gj, ptr %i.gt, align 1, !tbaa !63
  %i.gu = getelementptr inbounds nuw i8, ptr %.1868, i64 128
end_hunk_1
begin_hunk_2_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %i.vk = extractelement <2 x i1> %i.uv, i64 0    ; 2 uses
  %i.vl = extractelement <2 x i1> %i.uv, i64 1    ; 2 uses
  %i.vm = and i1 %i.vk, %i.vl                     ; 2 uses
  %i.vn = and i1 %i.vc, %i.vl                     ; 2 uses
  %i.vo = and i1 %i.vk, %i.vg                     ; 2 uses
  %i.vp = and i1 %i.vc, %i.vg                     ; 2 uses
  %i.vq = and i1 %i.vm, %i.uy
  %i.vr = and i1 %i.vn, %i.uy
  %i.vs = and i1 %i.uy, %i.vo
  %i.vt = and i1 %i.uy, %i.vp
  %i.vu = and i1 %i.vm, %i.vj
  %i.vv = and i1 %i.vn, %i.vj
  %i.vw = and i1 %i.vo, %i.vj
  %i.vx = and i1 %i.vp, %i.vj
  %i.vy = getelementptr inbounds nuw i8, ptr %.4864, i64 32
  br i1 %i.vq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.vz = mul i32 %i.ve, %i.un
  %reass.add = add i32 %i.vz, %i.uq
  %reass.mul = mul i32 %reass.add, %i.va
  %i.wa = add i32 %reass.mul, %i.uo
  %i.wb = load i32, ptr %i.mz, align 8, !tbaa !13
  %i.wc = mul nsw i32 %i.wb, %i.wa
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.wd = phi i32 [ %i.wc, %bb.s ], [ -1, %bb.r ]
  store i32 %i.wd, ptr %.4864, align 4, !tbaa !29
  br i1 %i.vr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.we = load i32, ptr %i.mw, align 4, !tbaa !52
  %i.wf = load i32, ptr %i.mx, align 8, !tbaa !53
  %i.wg = mul i32 %i.wf, %i.un
  %reass.add818 = add i32 %i.wg, %i.uq
  %reass.mul819 = mul i32 %reass.add818, %i.we
  %i.wh = add i32 %reass.mul819, %i.up
  %i.wi = load i32, ptr %i.mz, align 8, !tbaa !13
  %i.wj = mul nsw i32 %i.wh, %i.wi
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.wk = phi i32 [ %i.wj, %bb.u ], [ -1, %bb.t ]
  %i.wl = getelementptr inbounds nuw i8, ptr %.4864, i64 4
  store i32 %i.wk, ptr %i.wl, align 4, !tbaa !29
  br i1 %i.vs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.wm = load i32, ptr %i.mw, align 4, !tbaa !52
  %i.wn = load i32, ptr %i.mx, align 8, !tbaa !53
  %i.wo = mul i32 %i.wn, %i.un
  %reass.add820 = add i32 %i.wo, %i.ur
  %reass.mul821 = mul i32 %reass.add820, %i.wm
  %i.wp = add i32 %reass.mul821, %i.uo
  %i.wq = load i32, ptr %i.mz, align 8, !tbaa !13
  %i.wr = mul nsw i32 %i.wp, %i.wq
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ws = phi i32 [ %i.wr, %bb.w ], [ -1, %bb.v ]
  %i.wt = getelementptr inbounds nuw i8, ptr %.4864, i64 8
  store i32 %i.ws, ptr %i.wt, align 4, !tbaa !29
  br i1 %i.vt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.wu = load i32, ptr %i.mw, align 4, !tbaa !52
  %i.wv = load i32, ptr %i.mx, align 8, !tbaa !53
  %i.ww = mul i32 %i.wv, %i.un
  %reass.add822 = add i32 %i.ww, %i.ur
  %reass.mul823 = mul i32 %reass.add822, %i.wu
  %i.wx = add i32 %reass.mul823, %i.up
  %i.wy = load i32, ptr %i.mz, align 8, !tbaa !13
  %i.wz = mul nsw i32 %i.wx, %i.wy
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.xa = phi i32 [ %i.wz, %bb.y ], [ -1, %bb.x ]
  %i.xb = getelementptr inbounds nuw i8, ptr %.4864, i64 12
  store i32 %i.xa, ptr %i.xb, align 4, !tbaa !29
  br i1 %i.vu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.xc = load i32, ptr %i.mw, align 4, !tbaa !52
  %i.xd = load i32, ptr %i.mx, align 8, !tbaa !53
  %i.xe = mul i32 %i.xd, %i.us
  %reass.add824 = add i32 %i.xe, %i.uq
  %reass.mul825 = mul i32 %reass.add824, %i.xc
  %i.xf = add i32 %reass.mul825, %i.uo
  %i.xg = load i32, ptr %i.mz, align 8, !tbaa !13
  %i.xh = mul nsw i32 %i.xf, %i.xg
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.xi = phi i32 [ %i.xh, %bb.aa ], [ -1, %bb.z ]
  %i.xj = getelementptr inbounds nuw i8, ptr %.4864, i64 16
  store i32 %i.xi, ptr %i.xj, align 4, !tbaa !29
  br i1 %i.vv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.xk = load i32, ptr %i.mw, align 4, !tbaa !52
  %i.xl = load i32, ptr %i.mx, align 8, !tbaa !53
  %i.xm = mul i32 %i.xl, %i.us
  %reass.add826 = add i32 %i.xm, %i.uq
  %reass.mul827 = mul i32 %reass.add826, %i.xk
  %i.xn = add i32 %reass.mul827, %i.up
  %i.xo = load i32, ptr %i.mz, align 8, !tbaa !13
  %i.xp = mul nsw i32 %i.xn, %i.xo
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.xq = phi i32 [ %i.xp, %bb.ac ], [ -1, %bb.ab ]
  %i.xr = getelementptr inbounds nuw i8, ptr %.4864, i64 20
  store i32 %i.xq, ptr %i.xr, align 4, !tbaa !29
  br i1 %i.vw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.xs = load i32, ptr %i.mw, align 4, !tbaa !52
  %i.xt = load i32, ptr %i.mx, align 8, !tbaa !53
  %i.xu = mul i32 %i.xt, %i.us
  %reass.add828 = add i32 %i.xu, %i.ur
  %reass.mul829 = mul i32 %reass.add828, %i.xs
  %i.xv = add i32 %reass.mul829, %i.uo
  %i.xw = load i32, ptr %i.mz, align 8, !tbaa !13
  %i.xx = mul nsw i32 %i.xv, %i.xw
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.xy = phi i32 [ %i.xx, %bb.ae ], [ -1, %bb.ad ]
  %i.xz = getelementptr inbounds nuw i8, ptr %.4864, i64 24
  store i32 %i.xy, ptr %i.xz, align 4, !tbaa !29
  br i1 %i.vx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ya = load i32, ptr %i.mw, align 4, !tbaa !52
  %i.yb = load i32, ptr %i.mx, align 8, !tbaa !53
  %i.yc = mul i32 %i.yb, %i.us
  %reass.add830 = add i32 %i.yc, %i.ur
  %reass.mul831 = mul i32 %reass.add830, %i.ya
  %i.yd = add i32 %reass.mul831, %i.up
  %i.ye = load i32, ptr %i.mz, align 8, !tbaa !13
  %i.yf = mul nsw i32 %i.yd, %i.ye
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.yg = phi i32 [ %i.yf, %bb.ag ], [ -1, %bb.af ]
  %i.yh = getelementptr inbounds nuw i8, ptr %.4864, i64 28
  store i32 %i.yg, ptr %i.yh, align 4, !tbaa !29
  %i.yi = sitofp <2 x i32> %i.ul to <2 x float>
  %i.yj = fsub fast <2 x float> %i.uj, %i.yi
  store <2 x float> %i.yj, ptr %i.vy, align 4, !tbaa !66
  %i.yk = sitofp fast i32 %i.un to float
  %i.yl = fsub fast float %i.ub, %i.yk
  %i.ym = getelementptr inbounds nuw i8, ptr %.4864, i64 40
  store float %i.yl, ptr %i.ym, align 4, !tbaa !66
  %i.yn = getelementptr inbounds nuw i8, ptr %.1504863, i64 4
  %i.yo = getelementptr inbounds nuw i8, ptr %.1506862, i64 4
  %i.yp = getelementptr inbounds nuw i8, ptr %.1508861, i64 4
  %i.yq = getelementptr inbounds nuw i8, ptr %.4864, i64 44
  %i.yr = add nuw nsw i32 %.1510860, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.yr, %.fr926
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !400

.loopexit:                                        ; preds = %bb.ah, %._crit_edge, %.preheader849, %.preheader848
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit518:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = mul i32 %i.e, %i.g
  %.fr936 = freeze i32 %i.h                       ; 10 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !24, !noalias !401 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader858, label %_ZN4ncnn3MatD2Ev.exit516

.preheader858:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit517.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit517.lr.ph:                   ; preds = %.preheader858
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %.fr936, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.u = add i32 %.fr936, -24                     ; 2 uses
  %i.v = urem i32 %i.u, 24
  %i.w = sub nuw i32 %i.u, %i.v
  %i.x = add nuw nsw i32 %i.w, 24
  br label %_ZN4ncnn3MatD2Ev.exit517

_ZN4ncnn3MatD2Ev.exit517:                         ; preds = %_ZN4ncnn3MatD2Ev.exit517.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0889 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24, !noalias !404
  %i.z = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !404
  %i.aa = mul i64 %i.z, %indvars.iv
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !404
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac ; 2 uses
  br i1 %i.p, label %.lr.ph879, label %.preheader

.preheader:                                       ; preds = %.lr.ph879, %_ZN4ncnn3MatD2Ev.exit517
  %.0501.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.x, %.lr.ph879 ] ; 2 uses
  %.0499.lcssa = phi ptr [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hh, %.lr.ph879 ]
  %.1.lcssa = phi ptr [ %.0889, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hi, %.lr.ph879 ] ; 2 uses
  %i.ae = icmp slt i32 %.0501.lcssa, %.fr936
  br i1 %i.ae, label %.lr.ph886, label %._crit_edge

.lr.ph879:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit517, %.lr.ph879
  %.1878 = phi ptr [ %i.hi, %.lr.ph879 ], [ %.0889, %_ZN4ncnn3MatD2Ev.exit517 ] ; 12 uses
  %.0499877 = phi ptr [ %i.hh, %.lr.ph879 ], [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ] ; 4 uses
  %.0501876 = phi i32 [ %i.hj, %.lr.ph879 ], [ 0, %_ZN4ncnn3MatD2Ev.exit517 ] ; 2 uses
  %i.af = load <8 x float>, ptr %.0499877, align 1, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0499877, i64 32
  %i.ah = load <8 x float>, ptr %i.ag, align 1, !tbaa !63 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0499877, i64 64
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !63 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.aj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.aj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ao = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.ap = shufflevector <8 x float> %i.ak, <8 x float> %i.ao, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.aq = shufflevector <8 x float> %i.an, <8 x float> %i.ao, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.ar = shufflevector <8 x float> %i.an, <8 x float> %i.am, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.as = load i32, ptr %i.q, align 4, !tbaa !52
  %i.at = sitofp fast i32 %i.as to float
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.aw = fadd fast <8 x float> %i.ap, splat (float 1.000000e+00)
  %i.ax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.av, <8 x float> splat (float -1.000000e+00))
  %i.ay = fmul fast <8 x float> %i.ax, splat (float 5.000000e-01)
  %i.az = fadd fast <8 x float> %i.av, splat (float -1.000000e+00)
  %i.ba = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ay, <8 x float> zeroinitializer)
  %i.bb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.ba) ; 2 uses
  %i.bc = load i32, ptr %i.r, align 8, !tbaa !53
  %i.bd = sitofp fast i32 %i.bc to float
  %i.be = insertelement <8 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <8 x float> %i.be, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.bg = fadd fast <8 x float> %i.aq, splat (float 1.000000e+00)
  %i.bh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bg, <8 x float> nofpclass(nan inf) %i.bf, <8 x float> splat (float -1.000000e+00))
  %i.bi = fmul fast <8 x float> %i.bh, splat (float 5.000000e-01)
  %i.bj = fadd fast <8 x float> %i.bf, splat (float -1.000000e+00)
  %i.bk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bi, <8 x float> zeroinitializer)
  %i.bl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bj, <8 x float> nofpclass(nan inf) %i.bk) ; 2 uses
  %i.bm = load i32, ptr %i.s, align 4, !tbaa !55
  %i.bn = sitofp fast i32 %i.bm to float
  %i.bo = insertelement <8 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <8 x float> %i.bo, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bq = fadd fast <8 x float> %i.ar, splat (float 1.000000e+00)
  %i.br = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bq, <8 x float> nofpclass(nan inf) %i.bp, <8 x float> splat (float -1.000000e+00))
  %i.bs = fmul fast <8 x float> %i.br, splat (float 5.000000e-01)
  %i.bt = fadd fast <8 x float> %i.bp, splat (float -1.000000e+00)
  %i.bu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bs, <8 x float> zeroinitializer)
  %i.bv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bt, <8 x float> nofpclass(nan inf) %i.bu) ; 2 uses
  %i.bw = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bb, i32 1) ; 5 uses
  %i.bx = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bl, i32 1) ; 5 uses
  %i.by = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bv, i32 1) ; 5 uses
  %i.bz = fadd fast <8 x float> %i.bw, splat (float 1.000000e+00) ; 2 uses
  %i.ca = fadd fast <8 x float> %i.bx, splat (float 1.000000e+00) ; 2 uses
  %i.cb = fadd fast <8 x float> %i.by, splat (float 1.000000e+00) ; 2 uses
  %i.cc = fcmp fast ogt <8 x float> %i.bw, splat (float -1.000000e+00)
  %i.cd = fcmp fast ogt <8 x float> %i.av, %i.bw
  %i.ce = and <8 x i1> %i.cc, %i.cd               ; 2 uses
  %i.cf = fcmp fast ogt <8 x float> %i.bz, splat (float -1.000000e+00)
  %i.cg = fcmp fast ogt <8 x float> %i.av, %i.bz
  %i.ch = and <8 x i1> %i.cf, %i.cg               ; 2 uses
  %i.ci = fcmp fast ogt <8 x float> %i.bx, splat (float -1.000000e+00)
  %i.cj = fcmp fast ogt <8 x float> %i.bf, %i.bx
  %i.ck = and <8 x i1> %i.ci, %i.cj
  %i.cl = sext <8 x i1> %i.ck to <8 x i32>        ; 2 uses
  %i.cm = fcmp fast ogt <8 x float> %i.ca, splat (float -1.000000e+00)
  %i.cn = fcmp fast ogt <8 x float> %i.bf, %i.ca
  %i.co = and <8 x i1> %i.cm, %i.cn               ; 2 uses
  %i.cp = fcmp fast ogt <8 x float> %i.by, splat (float -1.000000e+00)
  %i.cq = fcmp fast ogt <8 x float> %i.bp, %i.by
  %i.cr = and <8 x i1> %i.cp, %i.cq               ; 3 uses
  %i.cs = sext <8 x i1> %i.cr to <8 x i32>
  %i.ct = fcmp fast ogt <8 x float> %i.cb, splat (float -1.000000e+00)
  %i.cu = fcmp fast ogt <8 x float> %i.bp, %i.cb
  %i.cv = and <8 x i1> %i.ct, %i.cu               ; 4 uses
  %i.cw = and <8 x i1> %i.ce, %i.co               ; 2 uses
  %i.cx = and <8 x i1> %i.ch, %i.co               ; 2 uses
  %i.cy = bitcast <8 x i32> %i.cl to <8 x float>
  %i.cz = select <8 x i1> %i.ce, <8 x float> %i.cy, <8 x float> zeroinitializer ; 2 uses
  %i.da = select <8 x i1> %i.cr, <8 x float> %i.cz, <8 x float> zeroinitializer
  %i.db = bitcast <8 x i32> %i.cl to <8 x float>
  %i.dc = select <8 x i1> %i.ch, <8 x float> %i.db, <8 x float> zeroinitializer ; 2 uses
  %i.dd = select <8 x i1> %i.cr, <8 x float> %i.dc, <8 x float> zeroinitializer
  %i.de = bitcast <8 x i32> %i.cs to <8 x float>  ; 2 uses
  %i.df = select <8 x i1> %i.cw, <8 x float> %i.de, <8 x float> zeroinitializer
  %i.dg = select <8 x i1> %i.cx, <8 x float> %i.de, <8 x float> zeroinitializer
  %i.dh = select <8 x i1> %i.cv, <8 x float> %i.cz, <8 x float> zeroinitializer
  %i.di = select <8 x i1> %i.cv, <8 x float> %i.dc, <8 x float> zeroinitializer
  %i.dj = and <8 x i1> %i.cw, %i.cv
  %i.dk = and <8 x i1> %i.cx, %i.cv
  %i.dl = fmul fast <8 x float> %i.bf, %i.av      ; 2 uses
  %i.dm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bx, <8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.bw)
  %i.dn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dl, <8 x float> nofpclass(nan inf) %i.by, <8 x float> nofpclass(nan inf) %i.dm)
  %i.do = load i32, ptr %i.t, align 8, !tbaa !13
  %i.dp = sitofp fast i32 %i.do to float
  %i.dq = insertelement <8 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <8 x float> %i.dq, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.ds = fmul fast <8 x float> %i.dr, %i.dn      ; 4 uses
  %i.dt = fadd fast <8 x float> %i.ds, %i.dr
  %i.du = fmul fast <8 x float> %i.dr, %i.av      ; 2 uses
  %i.dv = fadd fast <8 x float> %i.ds, %i.du      ; 2 uses
  %i.dw = fadd fast <8 x float> %i.dv, %i.dr
  %i.dx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dl, <8 x float> nofpclass(nan inf) %i.dr, <8 x float> nofpclass(nan inf) %i.ds) ; 3 uses
  %i.dy = fadd fast <8 x float> %i.dx, %i.dr
  %i.dz = fadd fast <8 x float> %i.dx, %i.du      ; 2 uses
  %i.ea = fadd fast <8 x float> %i.dz, %i.dr
  %i.eb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ds, <8 x float> nofpclass(nan inf) %i.da)
  %i.ec = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dt, <8 x float> nofpclass(nan inf) %i.dd)
  %i.ed = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dv, <8 x float> nofpclass(nan inf) %i.df)
  %i.ee = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dw, <8 x float> nofpclass(nan inf) %i.dg)
  %i.ef = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dx, <8 x float> nofpclass(nan inf) %i.dh)
  %i.eg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dy, <8 x float> nofpclass(nan inf) %i.di)
  %i.eh = select <8 x i1> %i.dj, <8 x float> %i.dz, <8 x float> splat (float -1.000000e+00)
  %i.ei = select <8 x i1> %i.dk, <8 x float> %i.ea, <8 x float> splat (float -1.000000e+00)
  %i.ej = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eb) ; 3 uses
  %i.ek = bitcast <8 x i32> %i.ej to <8 x float>
  %i.el = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ec) ; 4 uses
  %i.em = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ed) ; 4 uses
  %i.en = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ee) ; 4 uses
  %i.eo = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ef) ; 4 uses
  %i.ep = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eg) ; 4 uses
  %i.eq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eh) ; 4 uses
  %i.er = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ei) ; 3 uses
  %i.es = bitcast <8 x i32> %i.er to <8 x float>  ; 2 uses
  %i.et = fsub fast <8 x float> %i.bb, %i.bw      ; 4 uses
  %i.eu = fsub fast <8 x float> %i.bl, %i.bx      ; 4 uses
  %i.ev = fsub fast <8 x float> %i.bv, %i.by      ; 4 uses
  %i.ew = shufflevector <8 x i32> %i.ej, <8 x i32> %i.el, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ex = shufflevector <8 x i32> %i.ej, <8 x i32> %i.el, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ey = bitcast <8 x i32> %i.ex to <8 x float>  ; 2 uses
  %i.ez = shufflevector <8 x i32> %i.em, <8 x i32> %i.en, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fa = shufflevector <8 x i32> %i.em, <8 x i32> %i.en, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fb = shufflevector <8 x i32> %i.eo, <8 x i32> %i.ep, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fc = shufflevector <8 x i32> %i.eo, <8 x i32> %i.ep, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fd = shufflevector <8 x i32> %i.eq, <8 x i32> %i.er, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fe = shufflevector <8 x i32> %i.eq, <8 x i32> %i.er, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ff = bitcast <8 x i32> %i.fe to <8 x float>
  %i.fg = shufflevector <8 x float> %i.et, <8 x float> %i.eu, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fh = shufflevector <8 x float> %i.et, <8 x float> %i.eu, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fi = shufflevector <8 x float> %i.ev, <8 x float> %i.ek, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.fj = shufflevector <8 x float> %i.ev, <8 x float> %i.ey, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.fk = shufflevector <8 x i32> %i.el, <8 x i32> %i.em, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fl = shufflevector <8 x i32> %i.el, <8 x i32> %i.em, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fm = bitcast <8 x i32> %i.fl to <8 x float>
  %i.fn = shufflevector <8 x i32> %i.en, <8 x i32> %i.eo, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fo = shufflevector <8 x i32> %i.en, <8 x i32> %i.eo, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fp = shufflevector <8 x i32> %i.ep, <8 x i32> %i.eq, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fq = bitcast <8 x i32> %i.fp to <8 x float>
  %i.fr = shufflevector <8 x i32> %i.ep, <8 x i32> %i.eq, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fs = shufflevector <8 x float> %i.es, <8 x float> %i.et, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ft = shufflevector <8 x float> %i.es, <8 x float> %i.et, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fu = shufflevector <8 x float> %i.eu, <8 x float> %i.ev, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fv = shufflevector <8 x float> %i.eu, <8 x float> %i.ev, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fw = shufflevector <8 x i32> %i.ew, <8 x i32> %i.ez, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fx = bitcast <8 x i32> %i.fw to <8 x float>
  %i.fy = shufflevector <8 x i32> %i.fb, <8 x i32> %i.fd, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fz = bitcast <8 x i32> %i.fy to <8 x float>
  %i.ga = shufflevector <8 x float> %i.fg, <8 x float> %i.fi, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.gb = shufflevector <8 x i32> %i.fk, <8 x i32> %i.fn, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gc = bitcast <8 x i32> %i.gb to <8 x float>  ; 2 uses
  %i.gd = shufflevector <8 x float> %i.fq, <8 x float> %i.fs, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ge = shufflevector <8 x float> %i.fu, <8 x float> %i.ey, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.gf = shufflevector <8 x i32> %i.fa, <8 x i32> %i.fc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gg = bitcast <8 x i32> %i.gf to <8 x float>  ; 2 uses
  %i.gh = shufflevector <8 x float> %i.ff, <8 x float> %i.fh, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gi = shufflevector <8 x float> %i.fj, <8 x float> %i.fm, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.gj = shufflevector <8 x i32> %i.fo, <8 x i32> %i.fr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gk = bitcast <8 x i32> %i.gj to <8 x float>  ; 2 uses
  %i.gl = shufflevector <8 x float> %i.ft, <8 x float> %i.fv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gm = shufflevector <8 x i32> %i.fw, <8 x i32> %i.fy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gn = shufflevector <8 x float> %i.ga, <8 x float> %i.gc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.go = shufflevector <8 x float> %i.gd, <8 x float> %i.ge, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gp = shufflevector <8 x float> %i.gg, <8 x float> %i.gh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gq = shufflevector <8 x float> %i.gi, <8 x float> %i.gk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gr = shufflevector <8 x float> %i.gl, <8 x float> %i.fx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.gs = shufflevector <8 x float> %i.fz, <8 x float> %i.ga, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gt = shufflevector <8 x float> %i.gc, <8 x float> %i.gd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gu = shufflevector <8 x float> %i.ge, <8 x float> %i.gg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gv = shufflevector <8 x float> %i.gh, <8 x float> %i.gi, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gw = shufflevector <8 x float> %i.gk, <8 x float> %i.gl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.gm, ptr %.1878, align 1, !tbaa !63
  %i.gx = getelementptr inbounds nuw i8, ptr %.1878, i64 32
end_hunk_2
begin_hunk_3_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %i.we = extractelement <2 x i1> %i.vp, i64 0    ; 2 uses
  %i.wf = extractelement <2 x i1> %i.vp, i64 1    ; 2 uses
  %i.wg = and i1 %i.we, %i.wf                     ; 2 uses
  %i.wh = and i1 %i.vw, %i.wf                     ; 2 uses
  %i.wi = and i1 %i.we, %i.wa                     ; 2 uses
  %i.wj = and i1 %i.vw, %i.wa                     ; 2 uses
  %i.wk = and i1 %i.wg, %i.vs
  %i.wl = and i1 %i.wh, %i.vs
  %i.wm = and i1 %i.vs, %i.wi
  %i.wn = and i1 %i.vs, %i.wj
  %i.wo = and i1 %i.wg, %i.wd
  %i.wp = and i1 %i.wh, %i.wd
  %i.wq = and i1 %i.wi, %i.wd
  %i.wr = and i1 %i.wj, %i.wd
  %i.ws = getelementptr inbounds nuw i8, ptr %.4874, i64 32
  br i1 %i.wk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.wt = mul i32 %i.vy, %i.vh
  %reass.add = add i32 %i.wt, %i.vk
  %reass.mul = mul i32 %reass.add, %i.vu
  %i.wu = add i32 %reass.mul, %i.vi
  %i.wv = load i32, ptr %i.nj, align 8, !tbaa !13
  %i.ww = mul nsw i32 %i.wv, %i.wu
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.wx = phi i32 [ %i.ww, %bb.s ], [ -1, %bb.r ]
  store i32 %i.wx, ptr %.4874, align 4, !tbaa !29
  br i1 %i.wl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.wy = load i32, ptr %i.ng, align 4, !tbaa !52
  %i.wz = load i32, ptr %i.nh, align 8, !tbaa !53
  %i.xa = mul i32 %i.wz, %i.vh
  %reass.add828 = add i32 %i.xa, %i.vk
  %reass.mul829 = mul i32 %reass.add828, %i.wy
  %i.xb = add i32 %reass.mul829, %i.vj
  %i.xc = load i32, ptr %i.nj, align 8, !tbaa !13
  %i.xd = mul nsw i32 %i.xb, %i.xc
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.xe = phi i32 [ %i.xd, %bb.u ], [ -1, %bb.t ]
  %i.xf = getelementptr inbounds nuw i8, ptr %.4874, i64 4
  store i32 %i.xe, ptr %i.xf, align 4, !tbaa !29
  br i1 %i.wm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.xg = load i32, ptr %i.ng, align 4, !tbaa !52
  %i.xh = load i32, ptr %i.nh, align 8, !tbaa !53
  %i.xi = mul i32 %i.xh, %i.vh
  %reass.add830 = add i32 %i.xi, %i.vl
  %reass.mul831 = mul i32 %reass.add830, %i.xg
  %i.xj = add i32 %reass.mul831, %i.vi
  %i.xk = load i32, ptr %i.nj, align 8, !tbaa !13
  %i.xl = mul nsw i32 %i.xj, %i.xk
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.xm = phi i32 [ %i.xl, %bb.w ], [ -1, %bb.v ]
  %i.xn = getelementptr inbounds nuw i8, ptr %.4874, i64 8
  store i32 %i.xm, ptr %i.xn, align 4, !tbaa !29
  br i1 %i.wn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.xo = load i32, ptr %i.ng, align 4, !tbaa !52
  %i.xp = load i32, ptr %i.nh, align 8, !tbaa !53
  %i.xq = mul i32 %i.xp, %i.vh
  %reass.add832 = add i32 %i.xq, %i.vl
  %reass.mul833 = mul i32 %reass.add832, %i.xo
  %i.xr = add i32 %reass.mul833, %i.vj
  %i.xs = load i32, ptr %i.nj, align 8, !tbaa !13
  %i.xt = mul nsw i32 %i.xr, %i.xs
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.xu = phi i32 [ %i.xt, %bb.y ], [ -1, %bb.x ]
  %i.xv = getelementptr inbounds nuw i8, ptr %.4874, i64 12
  store i32 %i.xu, ptr %i.xv, align 4, !tbaa !29
  br i1 %i.wo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.xw = load i32, ptr %i.ng, align 4, !tbaa !52
  %i.xx = load i32, ptr %i.nh, align 8, !tbaa !53
  %i.xy = mul i32 %i.xx, %i.vm
  %reass.add834 = add i32 %i.xy, %i.vk
  %reass.mul835 = mul i32 %reass.add834, %i.xw
  %i.xz = add i32 %reass.mul835, %i.vi
  %i.ya = load i32, ptr %i.nj, align 8, !tbaa !13
  %i.yb = mul nsw i32 %i.xz, %i.ya
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.yc = phi i32 [ %i.yb, %bb.aa ], [ -1, %bb.z ]
  %i.yd = getelementptr inbounds nuw i8, ptr %.4874, i64 16
  store i32 %i.yc, ptr %i.yd, align 4, !tbaa !29
  br i1 %i.wp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ye = load i32, ptr %i.ng, align 4, !tbaa !52
  %i.yf = load i32, ptr %i.nh, align 8, !tbaa !53
  %i.yg = mul i32 %i.yf, %i.vm
  %reass.add836 = add i32 %i.yg, %i.vk
  %reass.mul837 = mul i32 %reass.add836, %i.ye
  %i.yh = add i32 %reass.mul837, %i.vj
  %i.yi = load i32, ptr %i.nj, align 8, !tbaa !13
  %i.yj = mul nsw i32 %i.yh, %i.yi
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.yk = phi i32 [ %i.yj, %bb.ac ], [ -1, %bb.ab ]
  %i.yl = getelementptr inbounds nuw i8, ptr %.4874, i64 20
  store i32 %i.yk, ptr %i.yl, align 4, !tbaa !29
  br i1 %i.wq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ym = load i32, ptr %i.ng, align 4, !tbaa !52
  %i.yn = load i32, ptr %i.nh, align 8, !tbaa !53
  %i.yo = mul i32 %i.yn, %i.vm
  %reass.add838 = add i32 %i.yo, %i.vl
  %reass.mul839 = mul i32 %reass.add838, %i.ym
  %i.yp = add i32 %reass.mul839, %i.vi
  %i.yq = load i32, ptr %i.nj, align 8, !tbaa !13
  %i.yr = mul nsw i32 %i.yp, %i.yq
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.ys = phi i32 [ %i.yr, %bb.ae ], [ -1, %bb.ad ]
  %i.yt = getelementptr inbounds nuw i8, ptr %.4874, i64 24
  store i32 %i.ys, ptr %i.yt, align 4, !tbaa !29
  br i1 %i.wr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.yu = load i32, ptr %i.ng, align 4, !tbaa !52
  %i.yv = load i32, ptr %i.nh, align 8, !tbaa !53
  %i.yw = mul i32 %i.yv, %i.vm
  %reass.add840 = add i32 %i.yw, %i.vl
  %reass.mul841 = mul i32 %reass.add840, %i.yu
  %i.yx = add i32 %reass.mul841, %i.vj
  %i.yy = load i32, ptr %i.nj, align 8, !tbaa !13
  %i.yz = mul nsw i32 %i.yx, %i.yy
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.za = phi i32 [ %i.yz, %bb.ag ], [ -1, %bb.af ]
  %i.zb = getelementptr inbounds nuw i8, ptr %.4874, i64 28
  store i32 %i.za, ptr %i.zb, align 4, !tbaa !29
  %i.zc = sitofp <2 x i32> %i.vf to <2 x float>
  %i.zd = fsub fast <2 x float> %i.vd, %i.zc
  store <2 x float> %i.zd, ptr %i.ws, align 4, !tbaa !66
  %i.ze = sitofp fast i32 %i.vh to float
  %i.zf = fsub fast float %.sroa.speculated.i556, %i.ze
  %i.zg = getelementptr inbounds nuw i8, ptr %.4874, i64 40
  store float %i.zf, ptr %i.zg, align 4, !tbaa !66
  %i.zh = getelementptr inbounds nuw i8, ptr %.1504873, i64 4
  %i.zi = getelementptr inbounds nuw i8, ptr %.1506872, i64 4
  %i.zj = getelementptr inbounds nuw i8, ptr %.1508871, i64 4
  %i.zk = getelementptr inbounds nuw i8, ptr %.4874, i64 44
  %i.zl = add nuw nsw i32 %.1510870, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.zl, %.fr936
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !417

.loopexit:                                        ; preds = %bb.ah, %._crit_edge, %.preheader859, %.preheader858
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit518:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = mul i32 %i.e, %i.g
  %.fr936 = freeze i32 %i.h                       ; 10 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !24, !noalias !418 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader858, label %_ZN4ncnn3MatD2Ev.exit516

.preheader858:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit517.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit517.lr.ph:                   ; preds = %.preheader858
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %.fr936, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.u = add i32 %.fr936, -24                     ; 2 uses
  %i.v = urem i32 %i.u, 24
  %i.w = sub nuw i32 %i.u, %i.v
  %i.x = add nuw nsw i32 %i.w, 24
  br label %_ZN4ncnn3MatD2Ev.exit517

_ZN4ncnn3MatD2Ev.exit517:                         ; preds = %_ZN4ncnn3MatD2Ev.exit517.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0889 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24, !noalias !421
  %i.z = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !421
  %i.aa = mul i64 %i.z, %indvars.iv
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !421
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac ; 2 uses
  br i1 %i.p, label %.lr.ph879, label %.preheader

.preheader:                                       ; preds = %.lr.ph879, %_ZN4ncnn3MatD2Ev.exit517
  %.0501.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.x, %.lr.ph879 ] ; 2 uses
  %.0499.lcssa = phi ptr [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hh, %.lr.ph879 ]
  %.1.lcssa = phi ptr [ %.0889, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hi, %.lr.ph879 ] ; 2 uses
  %i.ae = icmp slt i32 %.0501.lcssa, %.fr936
  br i1 %i.ae, label %.lr.ph886, label %._crit_edge

.lr.ph879:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit517, %.lr.ph879
  %.1878 = phi ptr [ %i.hi, %.lr.ph879 ], [ %.0889, %_ZN4ncnn3MatD2Ev.exit517 ] ; 12 uses
  %.0499877 = phi ptr [ %i.hh, %.lr.ph879 ], [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ] ; 4 uses
  %.0501876 = phi i32 [ %i.hj, %.lr.ph879 ], [ 0, %_ZN4ncnn3MatD2Ev.exit517 ] ; 2 uses
  %i.af = load <8 x float>, ptr %.0499877, align 1, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0499877, i64 32
  %i.ah = load <8 x float>, ptr %i.ag, align 1, !tbaa !63 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0499877, i64 64
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !63 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.aj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.aj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ao = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.ap = shufflevector <8 x float> %i.ak, <8 x float> %i.ao, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.aq = shufflevector <8 x float> %i.an, <8 x float> %i.ao, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.ar = shufflevector <8 x float> %i.an, <8 x float> %i.am, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.as = load i32, ptr %i.q, align 4, !tbaa !52
  %i.at = sitofp fast i32 %i.as to float
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.aw = fmul fast <8 x float> %i.ap, splat (float 5.000000e-01)
  %i.ax = fadd fast <8 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fadd fast <8 x float> %i.av, splat (float -1.000000e+00) ; 2 uses
  %i.az = fmul fast <8 x float> %i.ax, %i.ay
  %i.ba = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.az, <8 x float> zeroinitializer)
  %i.bb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ay, <8 x float> nofpclass(nan inf) %i.ba) ; 2 uses
  %i.bc = load i32, ptr %i.r, align 8, !tbaa !53
  %i.bd = sitofp fast i32 %i.bc to float
  %i.be = insertelement <8 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <8 x float> %i.be, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bg = fmul fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.bh = fadd fast <8 x float> %i.bg, splat (float 5.000000e-01)
  %i.bi = fadd fast <8 x float> %i.bf, splat (float -1.000000e+00) ; 2 uses
  %i.bj = fmul fast <8 x float> %i.bi, %i.bh
  %i.bk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bj, <8 x float> zeroinitializer)
  %i.bl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bi, <8 x float> nofpclass(nan inf) %i.bk) ; 2 uses
  %i.bm = load i32, ptr %i.s, align 4, !tbaa !55
  %i.bn = sitofp fast i32 %i.bm to float
  %i.bo = insertelement <8 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <8 x float> %i.bo, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bq = fmul fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.br = fadd fast <8 x float> %i.bq, splat (float 5.000000e-01)
  %i.bs = fadd fast <8 x float> %i.bp, splat (float -1.000000e+00) ; 2 uses
  %i.bt = fmul fast <8 x float> %i.bs, %i.br
  %i.bu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bt, <8 x float> zeroinitializer)
  %i.bv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bs, <8 x float> nofpclass(nan inf) %i.bu) ; 2 uses
  %i.bw = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bb, i32 1) ; 5 uses
  %i.bx = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bl, i32 1) ; 5 uses
  %i.by = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bv, i32 1) ; 5 uses
  %i.bz = fadd fast <8 x float> %i.bw, splat (float 1.000000e+00) ; 2 uses
  %i.ca = fadd fast <8 x float> %i.bx, splat (float 1.000000e+00) ; 2 uses
  %i.cb = fadd fast <8 x float> %i.by, splat (float 1.000000e+00) ; 2 uses
  %i.cc = fcmp fast ogt <8 x float> %i.bw, splat (float -1.000000e+00)
  %i.cd = fcmp fast ogt <8 x float> %i.av, %i.bw
  %i.ce = and <8 x i1> %i.cc, %i.cd               ; 2 uses
  %i.cf = fcmp fast ogt <8 x float> %i.bz, splat (float -1.000000e+00)
  %i.cg = fcmp fast ogt <8 x float> %i.av, %i.bz
  %i.ch = and <8 x i1> %i.cf, %i.cg               ; 2 uses
  %i.ci = fcmp fast ogt <8 x float> %i.bx, splat (float -1.000000e+00)
  %i.cj = fcmp fast ogt <8 x float> %i.bf, %i.bx
  %i.ck = and <8 x i1> %i.ci, %i.cj
  %i.cl = sext <8 x i1> %i.ck to <8 x i32>        ; 2 uses
  %i.cm = fcmp fast ogt <8 x float> %i.ca, splat (float -1.000000e+00)
  %i.cn = fcmp fast ogt <8 x float> %i.bf, %i.ca
  %i.co = and <8 x i1> %i.cm, %i.cn               ; 2 uses
  %i.cp = fcmp fast ogt <8 x float> %i.by, splat (float -1.000000e+00)
  %i.cq = fcmp fast ogt <8 x float> %i.bp, %i.by
  %i.cr = and <8 x i1> %i.cp, %i.cq               ; 3 uses
  %i.cs = sext <8 x i1> %i.cr to <8 x i32>
  %i.ct = fcmp fast ogt <8 x float> %i.cb, splat (float -1.000000e+00)
  %i.cu = fcmp fast ogt <8 x float> %i.bp, %i.cb
  %i.cv = and <8 x i1> %i.ct, %i.cu               ; 4 uses
  %i.cw = and <8 x i1> %i.ce, %i.co               ; 2 uses
  %i.cx = and <8 x i1> %i.ch, %i.co               ; 2 uses
  %i.cy = bitcast <8 x i32> %i.cl to <8 x float>
  %i.cz = select <8 x i1> %i.ce, <8 x float> %i.cy, <8 x float> zeroinitializer ; 2 uses
  %i.da = select <8 x i1> %i.cr, <8 x float> %i.cz, <8 x float> zeroinitializer
  %i.db = bitcast <8 x i32> %i.cl to <8 x float>
  %i.dc = select <8 x i1> %i.ch, <8 x float> %i.db, <8 x float> zeroinitializer ; 2 uses
  %i.dd = select <8 x i1> %i.cr, <8 x float> %i.dc, <8 x float> zeroinitializer
  %i.de = bitcast <8 x i32> %i.cs to <8 x float>  ; 2 uses
  %i.df = select <8 x i1> %i.cw, <8 x float> %i.de, <8 x float> zeroinitializer
  %i.dg = select <8 x i1> %i.cx, <8 x float> %i.de, <8 x float> zeroinitializer
  %i.dh = select <8 x i1> %i.cv, <8 x float> %i.cz, <8 x float> zeroinitializer
  %i.di = select <8 x i1> %i.cv, <8 x float> %i.dc, <8 x float> zeroinitializer
  %i.dj = and <8 x i1> %i.cw, %i.cv
  %i.dk = and <8 x i1> %i.cx, %i.cv
  %i.dl = fmul fast <8 x float> %i.bf, %i.av      ; 2 uses
  %i.dm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bx, <8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.bw)
  %i.dn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dl, <8 x float> nofpclass(nan inf) %i.by, <8 x float> nofpclass(nan inf) %i.dm)
  %i.do = load i32, ptr %i.t, align 8, !tbaa !13
  %i.dp = sitofp fast i32 %i.do to float
  %i.dq = insertelement <8 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <8 x float> %i.dq, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.ds = fmul fast <8 x float> %i.dr, %i.dn      ; 4 uses
  %i.dt = fadd fast <8 x float> %i.ds, %i.dr
  %i.du = fmul fast <8 x float> %i.dr, %i.av      ; 2 uses
  %i.dv = fadd fast <8 x float> %i.ds, %i.du      ; 2 uses
  %i.dw = fadd fast <8 x float> %i.dv, %i.dr
  %i.dx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dl, <8 x float> nofpclass(nan inf) %i.dr, <8 x float> nofpclass(nan inf) %i.ds) ; 3 uses
  %i.dy = fadd fast <8 x float> %i.dx, %i.dr
  %i.dz = fadd fast <8 x float> %i.dx, %i.du      ; 2 uses
  %i.ea = fadd fast <8 x float> %i.dz, %i.dr
  %i.eb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ds, <8 x float> nofpclass(nan inf) %i.da)
  %i.ec = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dt, <8 x float> nofpclass(nan inf) %i.dd)
  %i.ed = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dv, <8 x float> nofpclass(nan inf) %i.df)
  %i.ee = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dw, <8 x float> nofpclass(nan inf) %i.dg)
  %i.ef = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dx, <8 x float> nofpclass(nan inf) %i.dh)
  %i.eg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dy, <8 x float> nofpclass(nan inf) %i.di)
  %i.eh = select <8 x i1> %i.dj, <8 x float> %i.dz, <8 x float> splat (float -1.000000e+00)
  %i.ei = select <8 x i1> %i.dk, <8 x float> %i.ea, <8 x float> splat (float -1.000000e+00)
  %i.ej = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eb) ; 3 uses
  %i.ek = bitcast <8 x i32> %i.ej to <8 x float>
  %i.el = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ec) ; 4 uses
  %i.em = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ed) ; 4 uses
  %i.en = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ee) ; 4 uses
  %i.eo = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ef) ; 4 uses
  %i.ep = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eg) ; 4 uses
  %i.eq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eh) ; 4 uses
  %i.er = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ei) ; 3 uses
  %i.es = bitcast <8 x i32> %i.er to <8 x float>  ; 2 uses
  %i.et = fsub fast <8 x float> %i.bb, %i.bw      ; 4 uses
  %i.eu = fsub fast <8 x float> %i.bl, %i.bx      ; 4 uses
  %i.ev = fsub fast <8 x float> %i.bv, %i.by      ; 4 uses
  %i.ew = shufflevector <8 x i32> %i.ej, <8 x i32> %i.el, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ex = shufflevector <8 x i32> %i.ej, <8 x i32> %i.el, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ey = bitcast <8 x i32> %i.ex to <8 x float>  ; 2 uses
  %i.ez = shufflevector <8 x i32> %i.em, <8 x i32> %i.en, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fa = shufflevector <8 x i32> %i.em, <8 x i32> %i.en, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fb = shufflevector <8 x i32> %i.eo, <8 x i32> %i.ep, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fc = shufflevector <8 x i32> %i.eo, <8 x i32> %i.ep, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fd = shufflevector <8 x i32> %i.eq, <8 x i32> %i.er, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fe = shufflevector <8 x i32> %i.eq, <8 x i32> %i.er, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ff = bitcast <8 x i32> %i.fe to <8 x float>
  %i.fg = shufflevector <8 x float> %i.et, <8 x float> %i.eu, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fh = shufflevector <8 x float> %i.et, <8 x float> %i.eu, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fi = shufflevector <8 x float> %i.ev, <8 x float> %i.ek, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.fj = shufflevector <8 x float> %i.ev, <8 x float> %i.ey, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.fk = shufflevector <8 x i32> %i.el, <8 x i32> %i.em, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fl = shufflevector <8 x i32> %i.el, <8 x i32> %i.em, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fm = bitcast <8 x i32> %i.fl to <8 x float>
  %i.fn = shufflevector <8 x i32> %i.en, <8 x i32> %i.eo, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fo = shufflevector <8 x i32> %i.en, <8 x i32> %i.eo, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fp = shufflevector <8 x i32> %i.ep, <8 x i32> %i.eq, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fq = bitcast <8 x i32> %i.fp to <8 x float>
  %i.fr = shufflevector <8 x i32> %i.ep, <8 x i32> %i.eq, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fs = shufflevector <8 x float> %i.es, <8 x float> %i.et, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ft = shufflevector <8 x float> %i.es, <8 x float> %i.et, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fu = shufflevector <8 x float> %i.eu, <8 x float> %i.ev, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fv = shufflevector <8 x float> %i.eu, <8 x float> %i.ev, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fw = shufflevector <8 x i32> %i.ew, <8 x i32> %i.ez, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fx = bitcast <8 x i32> %i.fw to <8 x float>
  %i.fy = shufflevector <8 x i32> %i.fb, <8 x i32> %i.fd, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fz = bitcast <8 x i32> %i.fy to <8 x float>
  %i.ga = shufflevector <8 x float> %i.fg, <8 x float> %i.fi, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.gb = shufflevector <8 x i32> %i.fk, <8 x i32> %i.fn, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gc = bitcast <8 x i32> %i.gb to <8 x float>  ; 2 uses
  %i.gd = shufflevector <8 x float> %i.fq, <8 x float> %i.fs, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ge = shufflevector <8 x float> %i.fu, <8 x float> %i.ey, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.gf = shufflevector <8 x i32> %i.fa, <8 x i32> %i.fc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gg = bitcast <8 x i32> %i.gf to <8 x float>  ; 2 uses
  %i.gh = shufflevector <8 x float> %i.ff, <8 x float> %i.fh, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gi = shufflevector <8 x float> %i.fj, <8 x float> %i.fm, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.gj = shufflevector <8 x i32> %i.fo, <8 x i32> %i.fr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gk = bitcast <8 x i32> %i.gj to <8 x float>  ; 2 uses
  %i.gl = shufflevector <8 x float> %i.ft, <8 x float> %i.fv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gm = shufflevector <8 x i32> %i.fw, <8 x i32> %i.fy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gn = shufflevector <8 x float> %i.ga, <8 x float> %i.gc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.go = shufflevector <8 x float> %i.gd, <8 x float> %i.ge, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gp = shufflevector <8 x float> %i.gg, <8 x float> %i.gh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gq = shufflevector <8 x float> %i.gi, <8 x float> %i.gk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gr = shufflevector <8 x float> %i.gl, <8 x float> %i.fx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.gs = shufflevector <8 x float> %i.fz, <8 x float> %i.ga, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gt = shufflevector <8 x float> %i.gc, <8 x float> %i.gd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gu = shufflevector <8 x float> %i.ge, <8 x float> %i.gg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gv = shufflevector <8 x float> %i.gh, <8 x float> %i.gi, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gw = shufflevector <8 x float> %i.gk, <8 x float> %i.gl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.gm, ptr %.1878, align 1, !tbaa !63
  %i.gx = getelementptr inbounds nuw i8, ptr %.1878, i64 32
end_hunk_3
begin_hunk_4_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %i.wi = extractelement <2 x i1> %i.vt, i64 0    ; 2 uses
  %i.wj = extractelement <2 x i1> %i.vt, i64 1    ; 2 uses
  %i.wk = and i1 %i.wi, %i.wj                     ; 2 uses
  %i.wl = and i1 %i.wa, %i.wj                     ; 2 uses
  %i.wm = and i1 %i.wi, %i.we                     ; 2 uses
  %i.wn = and i1 %i.wa, %i.we                     ; 2 uses
  %i.wo = and i1 %i.wk, %i.vw
  %i.wp = and i1 %i.wl, %i.vw
  %i.wq = and i1 %i.vw, %i.wm
  %i.wr = and i1 %i.vw, %i.wn
  %i.ws = and i1 %i.wk, %i.wh
  %i.wt = and i1 %i.wl, %i.wh
  %i.wu = and i1 %i.wm, %i.wh
  %i.wv = and i1 %i.wn, %i.wh
  %i.ww = getelementptr inbounds nuw i8, ptr %.4874, i64 32
  br i1 %i.wo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.wx = mul i32 %i.wc, %i.vl
  %reass.add = add i32 %i.wx, %i.vo
  %reass.mul = mul i32 %reass.add, %i.vy
  %i.wy = add i32 %reass.mul, %i.vm
  %i.wz = load i32, ptr %i.nl, align 8, !tbaa !13
  %i.xa = mul nsw i32 %i.wz, %i.wy
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.xb = phi i32 [ %i.xa, %bb.s ], [ -1, %bb.r ]
  store i32 %i.xb, ptr %.4874, align 4, !tbaa !29
  br i1 %i.wp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.xc = load i32, ptr %i.ni, align 4, !tbaa !52
  %i.xd = load i32, ptr %i.nj, align 8, !tbaa !53
  %i.xe = mul i32 %i.xd, %i.vl
  %reass.add828 = add i32 %i.xe, %i.vo
  %reass.mul829 = mul i32 %reass.add828, %i.xc
  %i.xf = add i32 %reass.mul829, %i.vn
  %i.xg = load i32, ptr %i.nl, align 8, !tbaa !13
  %i.xh = mul nsw i32 %i.xf, %i.xg
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.xi = phi i32 [ %i.xh, %bb.u ], [ -1, %bb.t ]
  %i.xj = getelementptr inbounds nuw i8, ptr %.4874, i64 4
  store i32 %i.xi, ptr %i.xj, align 4, !tbaa !29
  br i1 %i.wq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.xk = load i32, ptr %i.ni, align 4, !tbaa !52
  %i.xl = load i32, ptr %i.nj, align 8, !tbaa !53
  %i.xm = mul i32 %i.xl, %i.vl
  %reass.add830 = add i32 %i.xm, %i.vp
  %reass.mul831 = mul i32 %reass.add830, %i.xk
  %i.xn = add i32 %reass.mul831, %i.vm
  %i.xo = load i32, ptr %i.nl, align 8, !tbaa !13
  %i.xp = mul nsw i32 %i.xn, %i.xo
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.xq = phi i32 [ %i.xp, %bb.w ], [ -1, %bb.v ]
  %i.xr = getelementptr inbounds nuw i8, ptr %.4874, i64 8
  store i32 %i.xq, ptr %i.xr, align 4, !tbaa !29
  br i1 %i.wr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.xs = load i32, ptr %i.ni, align 4, !tbaa !52
  %i.xt = load i32, ptr %i.nj, align 8, !tbaa !53
  %i.xu = mul i32 %i.xt, %i.vl
  %reass.add832 = add i32 %i.xu, %i.vp
  %reass.mul833 = mul i32 %reass.add832, %i.xs
  %i.xv = add i32 %reass.mul833, %i.vn
  %i.xw = load i32, ptr %i.nl, align 8, !tbaa !13
  %i.xx = mul nsw i32 %i.xv, %i.xw
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.xy = phi i32 [ %i.xx, %bb.y ], [ -1, %bb.x ]
  %i.xz = getelementptr inbounds nuw i8, ptr %.4874, i64 12
  store i32 %i.xy, ptr %i.xz, align 4, !tbaa !29
  br i1 %i.ws, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ya = load i32, ptr %i.ni, align 4, !tbaa !52
  %i.yb = load i32, ptr %i.nj, align 8, !tbaa !53
  %i.yc = mul i32 %i.yb, %i.vq
  %reass.add834 = add i32 %i.yc, %i.vo
  %reass.mul835 = mul i32 %reass.add834, %i.ya
  %i.yd = add i32 %reass.mul835, %i.vm
  %i.ye = load i32, ptr %i.nl, align 8, !tbaa !13
  %i.yf = mul nsw i32 %i.yd, %i.ye
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.yg = phi i32 [ %i.yf, %bb.aa ], [ -1, %bb.z ]
  %i.yh = getelementptr inbounds nuw i8, ptr %.4874, i64 16
  store i32 %i.yg, ptr %i.yh, align 4, !tbaa !29
  br i1 %i.wt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.yi = load i32, ptr %i.ni, align 4, !tbaa !52
  %i.yj = load i32, ptr %i.nj, align 8, !tbaa !53
  %i.yk = mul i32 %i.yj, %i.vq
  %reass.add836 = add i32 %i.yk, %i.vo
  %reass.mul837 = mul i32 %reass.add836, %i.yi
  %i.yl = add i32 %reass.mul837, %i.vn
  %i.ym = load i32, ptr %i.nl, align 8, !tbaa !13
  %i.yn = mul nsw i32 %i.yl, %i.ym
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.yo = phi i32 [ %i.yn, %bb.ac ], [ -1, %bb.ab ]
  %i.yp = getelementptr inbounds nuw i8, ptr %.4874, i64 20
  store i32 %i.yo, ptr %i.yp, align 4, !tbaa !29
  br i1 %i.wu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.yq = load i32, ptr %i.ni, align 4, !tbaa !52
  %i.yr = load i32, ptr %i.nj, align 8, !tbaa !53
  %i.ys = mul i32 %i.yr, %i.vq
  %reass.add838 = add i32 %i.ys, %i.vp
  %reass.mul839 = mul i32 %reass.add838, %i.yq
  %i.yt = add i32 %reass.mul839, %i.vm
  %i.yu = load i32, ptr %i.nl, align 8, !tbaa !13
  %i.yv = mul nsw i32 %i.yt, %i.yu
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.yw = phi i32 [ %i.yv, %bb.ae ], [ -1, %bb.ad ]
  %i.yx = getelementptr inbounds nuw i8, ptr %.4874, i64 24
  store i32 %i.yw, ptr %i.yx, align 4, !tbaa !29
  br i1 %i.wv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.yy = load i32, ptr %i.ni, align 4, !tbaa !52
  %i.yz = load i32, ptr %i.nj, align 8, !tbaa !53
  %i.za = mul i32 %i.yz, %i.vq
  %reass.add840 = add i32 %i.za, %i.vp
  %reass.mul841 = mul i32 %reass.add840, %i.yy
  %i.zb = add i32 %reass.mul841, %i.vn
  %i.zc = load i32, ptr %i.nl, align 8, !tbaa !13
  %i.zd = mul nsw i32 %i.zb, %i.zc
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.ze = phi i32 [ %i.zd, %bb.ag ], [ -1, %bb.af ]
  %i.zf = getelementptr inbounds nuw i8, ptr %.4874, i64 28
  store i32 %i.ze, ptr %i.zf, align 4, !tbaa !29
  %i.zg = sitofp <2 x i32> %i.vj to <2 x float>
  %i.zh = fsub fast <2 x float> %i.vh, %i.zg
  store <2 x float> %i.zh, ptr %i.ww, align 4, !tbaa !66
  %i.zi = sitofp fast i32 %i.vl to float
  %i.zj = fsub fast float %.sroa.speculated.i556, %i.zi
  %i.zk = getelementptr inbounds nuw i8, ptr %.4874, i64 40
  store float %i.zj, ptr %i.zk, align 4, !tbaa !66
  %i.zl = getelementptr inbounds nuw i8, ptr %.1504873, i64 4
  %i.zm = getelementptr inbounds nuw i8, ptr %.1506872, i64 4
  %i.zn = getelementptr inbounds nuw i8, ptr %.1508871, i64 4
  %i.zo = getelementptr inbounds nuw i8, ptr %.4874, i64 44
  %i.zp = add nuw nsw i32 %.1510870, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.zp, %.fr936
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !434

.loopexit:                                        ; preds = %bb.ah, %._crit_edge, %.preheader859, %.preheader858
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit518:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = mul i32 %i.e, %i.g
  %.fr947 = freeze i32 %i.h                       ; 10 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !24, !noalias !435 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader869, label %_ZN4ncnn3MatD2Ev.exit516

.preheader869:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit517.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit517.lr.ph:                   ; preds = %.preheader869
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %.fr947, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.u = add i32 %.fr947, -24                     ; 2 uses
  %i.v = urem i32 %i.u, 24
  %i.w = sub nuw i32 %i.u, %i.v
  %i.x = add nuw nsw i32 %i.w, 24
  br label %_ZN4ncnn3MatD2Ev.exit517

_ZN4ncnn3MatD2Ev.exit517:                         ; preds = %_ZN4ncnn3MatD2Ev.exit517.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0900 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24, !noalias !438
  %i.z = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !438
  %i.aa = mul i64 %i.z, %indvars.iv
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !438
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac ; 2 uses
  br i1 %i.p, label %.lr.ph890, label %.preheader

.preheader:                                       ; preds = %.lr.ph890, %_ZN4ncnn3MatD2Ev.exit517
  %.0501.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.x, %.lr.ph890 ] ; 2 uses
  %.0499.lcssa = phi ptr [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hz, %.lr.ph890 ]
  %.1.lcssa = phi ptr [ %.0900, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.ia, %.lr.ph890 ] ; 2 uses
  %i.ae = icmp slt i32 %.0501.lcssa, %.fr947
  br i1 %i.ae, label %.lr.ph897, label %._crit_edge

.lr.ph890:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit517, %.lr.ph890
  %.1889 = phi ptr [ %i.ia, %.lr.ph890 ], [ %.0900, %_ZN4ncnn3MatD2Ev.exit517 ] ; 12 uses
  %.0499888 = phi ptr [ %i.hz, %.lr.ph890 ], [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ] ; 4 uses
  %.0501887 = phi i32 [ %i.ib, %.lr.ph890 ], [ 0, %_ZN4ncnn3MatD2Ev.exit517 ] ; 2 uses
  %i.af = load <8 x float>, ptr %.0499888, align 1, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0499888, i64 32
  %i.ah = load <8 x float>, ptr %i.ag, align 1, !tbaa !63 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0499888, i64 64
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !63 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.aj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.aj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ao = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.ap = shufflevector <8 x float> %i.ak, <8 x float> %i.ao, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.aq = shufflevector <8 x float> %i.an, <8 x float> %i.ao, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.ar = shufflevector <8 x float> %i.an, <8 x float> %i.am, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.as = load i32, ptr %i.q, align 4, !tbaa !52
  %i.at = sitofp fast i32 %i.as to float
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.aw = fadd fast <8 x float> %i.ap, splat (float 1.000000e+00)
  %i.ax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.av, <8 x float> splat (float -1.000000e+00))
  %i.ay = fmul fast <8 x float> %i.ax, splat (float 5.000000e-01)
  %i.az = fadd fast <8 x float> %i.av, splat (float -1.000000e+00)
  %i.ba = fadd fast <8 x float> %i.ay, splat (float 5.000000e-01)
  %i.bb = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ba)
  %i.bc = fsub fast <8 x float> %i.bb, %i.av
  %i.bd = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bc)
  %i.be = fadd fast <8 x float> %i.av, splat (float -5.000000e-01)
  %i.bf = fsub fast <8 x float> %i.be, %i.bd
  %i.bg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bf, <8 x float> zeroinitializer)
  %i.bh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.bg) ; 2 uses
  %i.bi = load i32, ptr %i.r, align 8, !tbaa !53
  %i.bj = sitofp fast i32 %i.bi to float
  %i.bk = insertelement <8 x float> poison, float %i.bj, i64 0
  %i.bl = shufflevector <8 x float> %i.bk, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.bm = fadd fast <8 x float> %i.aq, splat (float 1.000000e+00)
  %i.bn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bm, <8 x float> nofpclass(nan inf) %i.bl, <8 x float> splat (float -1.000000e+00))
  %i.bo = fmul fast <8 x float> %i.bn, splat (float 5.000000e-01)
  %i.bp = fadd fast <8 x float> %i.bl, splat (float -1.000000e+00)
  %i.bq = fadd fast <8 x float> %i.bo, splat (float 5.000000e-01)
  %i.br = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bq)
  %i.bs = fsub fast <8 x float> %i.br, %i.bl
  %i.bt = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bs)
  %i.bu = fadd fast <8 x float> %i.bl, splat (float -5.000000e-01)
  %i.bv = fsub fast <8 x float> %i.bu, %i.bt
  %i.bw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bv, <8 x float> zeroinitializer)
  %i.bx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bp, <8 x float> nofpclass(nan inf) %i.bw) ; 2 uses
  %i.by = load i32, ptr %i.s, align 4, !tbaa !55
  %i.bz = sitofp fast i32 %i.by to float
  %i.ca = insertelement <8 x float> poison, float %i.bz, i64 0
  %i.cb = shufflevector <8 x float> %i.ca, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.cc = fadd fast <8 x float> %i.ar, splat (float 1.000000e+00)
  %i.cd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cc, <8 x float> nofpclass(nan inf) %i.cb, <8 x float> splat (float -1.000000e+00))
  %i.ce = fmul fast <8 x float> %i.cd, splat (float 5.000000e-01)
  %i.cf = fadd fast <8 x float> %i.cb, splat (float -1.000000e+00)
  %i.cg = fadd fast <8 x float> %i.ce, splat (float 5.000000e-01)
  %i.ch = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cg)
  %i.ci = fsub fast <8 x float> %i.ch, %i.cb
  %i.cj = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ci)
  %i.ck = fadd fast <8 x float> %i.cb, splat (float -5.000000e-01)
  %i.cl = fsub fast <8 x float> %i.ck, %i.cj
  %i.cm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cl, <8 x float> zeroinitializer)
  %i.cn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cf, <8 x float> nofpclass(nan inf) %i.cm) ; 2 uses
  %i.co = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bh, i32 1) ; 5 uses
  %i.cp = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bx, i32 1) ; 5 uses
  %i.cq = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cn, i32 1) ; 5 uses
  %i.cr = fadd fast <8 x float> %i.co, splat (float 1.000000e+00) ; 2 uses
  %i.cs = fadd fast <8 x float> %i.cp, splat (float 1.000000e+00) ; 2 uses
  %i.ct = fadd fast <8 x float> %i.cq, splat (float 1.000000e+00) ; 2 uses
  %i.cu = fcmp fast ogt <8 x float> %i.co, splat (float -1.000000e+00)
  %i.cv = fcmp fast ogt <8 x float> %i.av, %i.co
  %i.cw = and <8 x i1> %i.cu, %i.cv               ; 2 uses
  %i.cx = fcmp fast ogt <8 x float> %i.cr, splat (float -1.000000e+00)
  %i.cy = fcmp fast ogt <8 x float> %i.av, %i.cr
  %i.cz = and <8 x i1> %i.cx, %i.cy               ; 2 uses
  %i.da = fcmp fast ogt <8 x float> %i.cp, splat (float -1.000000e+00)
  %i.db = fcmp fast ogt <8 x float> %i.bl, %i.cp
  %i.dc = and <8 x i1> %i.da, %i.db
  %i.dd = sext <8 x i1> %i.dc to <8 x i32>        ; 2 uses
  %i.de = fcmp fast ogt <8 x float> %i.cs, splat (float -1.000000e+00)
  %i.df = fcmp fast ogt <8 x float> %i.bl, %i.cs
  %i.dg = and <8 x i1> %i.de, %i.df               ; 2 uses
  %i.dh = fcmp fast ogt <8 x float> %i.cq, splat (float -1.000000e+00)
  %i.di = fcmp fast ogt <8 x float> %i.cb, %i.cq
  %i.dj = and <8 x i1> %i.dh, %i.di               ; 3 uses
  %i.dk = sext <8 x i1> %i.dj to <8 x i32>
  %i.dl = fcmp fast ogt <8 x float> %i.ct, splat (float -1.000000e+00)
  %i.dm = fcmp fast ogt <8 x float> %i.cb, %i.ct
  %i.dn = and <8 x i1> %i.dl, %i.dm               ; 4 uses
  %i.do = and <8 x i1> %i.cw, %i.dg               ; 2 uses
  %i.dp = and <8 x i1> %i.cz, %i.dg               ; 2 uses
  %i.dq = bitcast <8 x i32> %i.dd to <8 x float>
  %i.dr = select <8 x i1> %i.cw, <8 x float> %i.dq, <8 x float> zeroinitializer ; 2 uses
  %i.ds = select <8 x i1> %i.dj, <8 x float> %i.dr, <8 x float> zeroinitializer
  %i.dt = bitcast <8 x i32> %i.dd to <8 x float>
  %i.du = select <8 x i1> %i.cz, <8 x float> %i.dt, <8 x float> zeroinitializer ; 2 uses
  %i.dv = select <8 x i1> %i.dj, <8 x float> %i.du, <8 x float> zeroinitializer
  %i.dw = bitcast <8 x i32> %i.dk to <8 x float>  ; 2 uses
  %i.dx = select <8 x i1> %i.do, <8 x float> %i.dw, <8 x float> zeroinitializer
  %i.dy = select <8 x i1> %i.dp, <8 x float> %i.dw, <8 x float> zeroinitializer
  %i.dz = select <8 x i1> %i.dn, <8 x float> %i.dr, <8 x float> zeroinitializer
  %i.ea = select <8 x i1> %i.dn, <8 x float> %i.du, <8 x float> zeroinitializer
  %i.eb = and <8 x i1> %i.do, %i.dn
  %i.ec = and <8 x i1> %i.dp, %i.dn
  %i.ed = fmul fast <8 x float> %i.bl, %i.av      ; 2 uses
  %i.ee = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cp, <8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.co)
  %i.ef = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ed, <8 x float> nofpclass(nan inf) %i.cq, <8 x float> nofpclass(nan inf) %i.ee)
  %i.eg = load i32, ptr %i.t, align 8, !tbaa !13
  %i.eh = sitofp fast i32 %i.eg to float
  %i.ei = insertelement <8 x float> poison, float %i.eh, i64 0
  %i.ej = shufflevector <8 x float> %i.ei, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.ek = fmul fast <8 x float> %i.ej, %i.ef      ; 4 uses
  %i.el = fadd fast <8 x float> %i.ek, %i.ej
  %i.em = fmul fast <8 x float> %i.ej, %i.av      ; 2 uses
  %i.en = fadd fast <8 x float> %i.ek, %i.em      ; 2 uses
  %i.eo = fadd fast <8 x float> %i.en, %i.ej
  %i.ep = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ed, <8 x float> nofpclass(nan inf) %i.ej, <8 x float> nofpclass(nan inf) %i.ek) ; 3 uses
  %i.eq = fadd fast <8 x float> %i.ep, %i.ej
  %i.er = fadd fast <8 x float> %i.ep, %i.em      ; 2 uses
  %i.es = fadd fast <8 x float> %i.er, %i.ej
  %i.et = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ek, <8 x float> nofpclass(nan inf) %i.ds)
  %i.eu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.el, <8 x float> nofpclass(nan inf) %i.dv)
  %i.ev = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.en, <8 x float> nofpclass(nan inf) %i.dx)
  %i.ew = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.eo, <8 x float> nofpclass(nan inf) %i.dy)
  %i.ex = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ep, <8 x float> nofpclass(nan inf) %i.dz)
  %i.ey = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.eq, <8 x float> nofpclass(nan inf) %i.ea)
  %i.ez = select <8 x i1> %i.eb, <8 x float> %i.er, <8 x float> splat (float -1.000000e+00)
  %i.fa = select <8 x i1> %i.ec, <8 x float> %i.es, <8 x float> splat (float -1.000000e+00)
  %i.fb = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.et) ; 3 uses
  %i.fc = bitcast <8 x i32> %i.fb to <8 x float>
  %i.fd = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eu) ; 4 uses
  %i.fe = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ev) ; 4 uses
  %i.ff = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ew) ; 4 uses
  %i.fg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ex) ; 4 uses
  %i.fh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ey) ; 4 uses
  %i.fi = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ez) ; 4 uses
  %i.fj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fa) ; 3 uses
  %i.fk = bitcast <8 x i32> %i.fj to <8 x float>  ; 2 uses
  %i.fl = fsub fast <8 x float> %i.bh, %i.co      ; 4 uses
  %i.fm = fsub fast <8 x float> %i.bx, %i.cp      ; 4 uses
  %i.fn = fsub fast <8 x float> %i.cn, %i.cq      ; 4 uses
  %i.fo = shufflevector <8 x i32> %i.fb, <8 x i32> %i.fd, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fp = shufflevector <8 x i32> %i.fb, <8 x i32> %i.fd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.fq = bitcast <8 x i32> %i.fp to <8 x float>  ; 2 uses
  %i.fr = shufflevector <8 x i32> %i.fe, <8 x i32> %i.ff, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fs = shufflevector <8 x i32> %i.fe, <8 x i32> %i.ff, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ft = shufflevector <8 x i32> %i.fg, <8 x i32> %i.fh, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fu = shufflevector <8 x i32> %i.fg, <8 x i32> %i.fh, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fv = shufflevector <8 x i32> %i.fi, <8 x i32> %i.fj, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fw = shufflevector <8 x i32> %i.fi, <8 x i32> %i.fj, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fx = bitcast <8 x i32> %i.fw to <8 x float>
  %i.fy = shufflevector <8 x float> %i.fl, <8 x float> %i.fm, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fz = shufflevector <8 x float> %i.fl, <8 x float> %i.fm, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ga = shufflevector <8 x float> %i.fn, <8 x float> %i.fc, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.gb = shufflevector <8 x float> %i.fn, <8 x float> %i.fq, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.gc = shufflevector <8 x i32> %i.fd, <8 x i32> %i.fe, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.gd = shufflevector <8 x i32> %i.fd, <8 x i32> %i.fe, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.ge = bitcast <8 x i32> %i.gd to <8 x float>
  %i.gf = shufflevector <8 x i32> %i.ff, <8 x i32> %i.fg, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.gg = shufflevector <8 x i32> %i.ff, <8 x i32> %i.fg, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.gh = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fi, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.gi = bitcast <8 x i32> %i.gh to <8 x float>
  %i.gj = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fi, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.gk = shufflevector <8 x float> %i.fk, <8 x float> %i.fl, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.gl = shufflevector <8 x float> %i.fk, <8 x float> %i.fl, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.gm = shufflevector <8 x float> %i.fm, <8 x float> %i.fn, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.gn = shufflevector <8 x float> %i.fm, <8 x float> %i.fn, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.go = shufflevector <8 x i32> %i.fo, <8 x i32> %i.fr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gp = bitcast <8 x i32> %i.go to <8 x float>
  %i.gq = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gr = bitcast <8 x i32> %i.gq to <8 x float>
  %i.gs = shufflevector <8 x float> %i.fy, <8 x float> %i.ga, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.gt = shufflevector <8 x i32> %i.gc, <8 x i32> %i.gf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gu = bitcast <8 x i32> %i.gt to <8 x float>  ; 2 uses
  %i.gv = shufflevector <8 x float> %i.gi, <8 x float> %i.gk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gw = shufflevector <8 x float> %i.gm, <8 x float> %i.fq, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.gx = shufflevector <8 x i32> %i.fs, <8 x i32> %i.fu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gy = bitcast <8 x i32> %i.gx to <8 x float>  ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %i.ye = extractelement <2 x i1> %i.xp, i64 0    ; 2 uses
  %i.yf = extractelement <2 x i1> %i.xp, i64 1    ; 2 uses
  %i.yg = and i1 %i.ye, %i.yf                     ; 2 uses
  %i.yh = and i1 %i.xw, %i.yf                     ; 2 uses
  %i.yi = and i1 %i.ye, %i.ya                     ; 2 uses
  %i.yj = and i1 %i.xw, %i.ya                     ; 2 uses
  %i.yk = and i1 %i.yg, %i.xs
  %i.yl = and i1 %i.yh, %i.xs
  %i.ym = and i1 %i.xs, %i.yi
  %i.yn = and i1 %i.xs, %i.yj
  %i.yo = and i1 %i.yg, %i.yd
  %i.yp = and i1 %i.yh, %i.yd
  %i.yq = and i1 %i.yi, %i.yd
  %i.yr = and i1 %i.yj, %i.yd
  %i.ys = getelementptr inbounds nuw i8, ptr %.4885, i64 32
  br i1 %i.yk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.yt = mul i32 %i.xy, %i.xh
  %reass.add = add i32 %i.yt, %i.xk
  %reass.mul = mul i32 %reass.add, %i.xu
  %i.yu = add i32 %reass.mul, %i.xi
  %i.yv = load i32, ptr %i.oj, align 8, !tbaa !13
  %i.yw = mul nsw i32 %i.yv, %i.yu
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.yx = phi i32 [ %i.yw, %bb.s ], [ -1, %bb.r ]
  store i32 %i.yx, ptr %.4885, align 4, !tbaa !29
  br i1 %i.yl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.yy = load i32, ptr %i.og, align 4, !tbaa !52
  %i.yz = load i32, ptr %i.oh, align 8, !tbaa !53
  %i.za = mul i32 %i.yz, %i.xh
  %reass.add830 = add i32 %i.za, %i.xk
  %reass.mul831 = mul i32 %reass.add830, %i.yy
  %i.zb = add i32 %reass.mul831, %i.xj
  %i.zc = load i32, ptr %i.oj, align 8, !tbaa !13
  %i.zd = mul nsw i32 %i.zb, %i.zc
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ze = phi i32 [ %i.zd, %bb.u ], [ -1, %bb.t ]
  %i.zf = getelementptr inbounds nuw i8, ptr %.4885, i64 4
  store i32 %i.ze, ptr %i.zf, align 4, !tbaa !29
  br i1 %i.ym, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.zg = load i32, ptr %i.og, align 4, !tbaa !52
  %i.zh = load i32, ptr %i.oh, align 8, !tbaa !53
  %i.zi = mul i32 %i.zh, %i.xh
  %reass.add832 = add i32 %i.zi, %i.xl
  %reass.mul833 = mul i32 %reass.add832, %i.zg
  %i.zj = add i32 %reass.mul833, %i.xi
  %i.zk = load i32, ptr %i.oj, align 8, !tbaa !13
  %i.zl = mul nsw i32 %i.zj, %i.zk
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.zm = phi i32 [ %i.zl, %bb.w ], [ -1, %bb.v ]
  %i.zn = getelementptr inbounds nuw i8, ptr %.4885, i64 8
  store i32 %i.zm, ptr %i.zn, align 4, !tbaa !29
  br i1 %i.yn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.zo = load i32, ptr %i.og, align 4, !tbaa !52
  %i.zp = load i32, ptr %i.oh, align 8, !tbaa !53
  %i.zq = mul i32 %i.zp, %i.xh
  %reass.add834 = add i32 %i.zq, %i.xl
  %reass.mul835 = mul i32 %reass.add834, %i.zo
  %i.zr = add i32 %reass.mul835, %i.xj
  %i.zs = load i32, ptr %i.oj, align 8, !tbaa !13
  %i.zt = mul nsw i32 %i.zr, %i.zs
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.zu = phi i32 [ %i.zt, %bb.y ], [ -1, %bb.x ]
  %i.zv = getelementptr inbounds nuw i8, ptr %.4885, i64 12
  store i32 %i.zu, ptr %i.zv, align 4, !tbaa !29
  br i1 %i.yo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.zw = load i32, ptr %i.og, align 4, !tbaa !52
  %i.zx = load i32, ptr %i.oh, align 8, !tbaa !53
  %i.zy = mul i32 %i.zx, %i.xm
  %reass.add836 = add i32 %i.zy, %i.xk
  %reass.mul837 = mul i32 %reass.add836, %i.zw
  %i.zz = add i32 %reass.mul837, %i.xi
  %i.aaa = load i32, ptr %i.oj, align 8, !tbaa !13
  %i.aab = mul nsw i32 %i.zz, %i.aaa
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.aac = phi i32 [ %i.aab, %bb.aa ], [ -1, %bb.z ]
  %i.aad = getelementptr inbounds nuw i8, ptr %.4885, i64 16
  store i32 %i.aac, ptr %i.aad, align 4, !tbaa !29
  br i1 %i.yp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.aae = load i32, ptr %i.og, align 4, !tbaa !52
  %i.aaf = load i32, ptr %i.oh, align 8, !tbaa !53
  %i.aag = mul i32 %i.aaf, %i.xm
  %reass.add838 = add i32 %i.aag, %i.xk
  %reass.mul839 = mul i32 %reass.add838, %i.aae
  %i.aah = add i32 %reass.mul839, %i.xj
  %i.aai = load i32, ptr %i.oj, align 8, !tbaa !13
  %i.aaj = mul nsw i32 %i.aah, %i.aai
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.aak = phi i32 [ %i.aaj, %bb.ac ], [ -1, %bb.ab ]
  %i.aal = getelementptr inbounds nuw i8, ptr %.4885, i64 20
  store i32 %i.aak, ptr %i.aal, align 4, !tbaa !29
  br i1 %i.yq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.aam = load i32, ptr %i.og, align 4, !tbaa !52
  %i.aan = load i32, ptr %i.oh, align 8, !tbaa !53
  %i.aao = mul i32 %i.aan, %i.xm
  %reass.add840 = add i32 %i.aao, %i.xl
  %reass.mul841 = mul i32 %reass.add840, %i.aam
  %i.aap = add i32 %reass.mul841, %i.xi
  %i.aaq = load i32, ptr %i.oj, align 8, !tbaa !13
  %i.aar = mul nsw i32 %i.aap, %i.aaq
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.aas = phi i32 [ %i.aar, %bb.ae ], [ -1, %bb.ad ]
  %i.aat = getelementptr inbounds nuw i8, ptr %.4885, i64 24
  store i32 %i.aas, ptr %i.aat, align 4, !tbaa !29
  br i1 %i.yr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.aau = load i32, ptr %i.og, align 4, !tbaa !52
  %i.aav = load i32, ptr %i.oh, align 8, !tbaa !53
  %i.aaw = mul i32 %i.aav, %i.xm
  %reass.add842 = add i32 %i.aaw, %i.xl
  %reass.mul843 = mul i32 %reass.add842, %i.aau
  %i.aax = add i32 %reass.mul843, %i.xj
  %i.aay = load i32, ptr %i.oj, align 8, !tbaa !13
  %i.aaz = mul nsw i32 %i.aax, %i.aay
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.aba = phi i32 [ %i.aaz, %bb.ag ], [ -1, %bb.af ]
  %i.abb = getelementptr inbounds nuw i8, ptr %.4885, i64 28
  store i32 %i.aba, ptr %i.abb, align 4, !tbaa !29
  %i.abc = sitofp <2 x i32> %i.xf to <2 x float>
  %i.abd = fsub fast <2 x float> %i.xd, %i.abc
  store <2 x float> %i.abd, ptr %i.ys, align 4, !tbaa !66
  %i.abe = sitofp fast i32 %i.xh to float
  %i.abf = fsub fast float %.sroa.speculated.i556, %i.abe
  %i.abg = getelementptr inbounds nuw i8, ptr %.4885, i64 40
  store float %i.abf, ptr %i.abg, align 4, !tbaa !66
  %i.abh = getelementptr inbounds nuw i8, ptr %.1504884, i64 4
  %i.abi = getelementptr inbounds nuw i8, ptr %.1506883, i64 4
  %i.abj = getelementptr inbounds nuw i8, ptr %.1508882, i64 4
  %i.abk = getelementptr inbounds nuw i8, ptr %.4885, i64 44
  %i.abl = add nuw nsw i32 %.1510881, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.abl, %.fr947
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !451

.loopexit:                                        ; preds = %bb.ah, %._crit_edge, %.preheader870, %.preheader869
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit518:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = mul i32 %i.e, %i.g
  %.fr936 = freeze i32 %i.h                       ; 10 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !24, !noalias !452 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader858, label %_ZN4ncnn3MatD2Ev.exit516

.preheader858:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit517.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit517.lr.ph:                   ; preds = %.preheader858
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %.fr936, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.u = add i32 %.fr936, -24                     ; 2 uses
  %i.v = urem i32 %i.u, 24
  %i.w = sub nuw i32 %i.u, %i.v
  %i.x = add nuw nsw i32 %i.w, 24
  br label %_ZN4ncnn3MatD2Ev.exit517

_ZN4ncnn3MatD2Ev.exit517:                         ; preds = %_ZN4ncnn3MatD2Ev.exit517.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0889 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24, !noalias !455
  %i.z = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !455
  %i.aa = mul i64 %i.z, %indvars.iv
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !455
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac ; 2 uses
  br i1 %i.p, label %.lr.ph879, label %.preheader

.preheader:                                       ; preds = %.lr.ph879, %_ZN4ncnn3MatD2Ev.exit517
  %.0501.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.x, %.lr.ph879 ] ; 2 uses
  %.0499.lcssa = phi ptr [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hn, %.lr.ph879 ]
  %.1.lcssa = phi ptr [ %.0889, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.ho, %.lr.ph879 ] ; 2 uses
  %i.ae = icmp slt i32 %.0501.lcssa, %.fr936
  br i1 %i.ae, label %.lr.ph886, label %._crit_edge

.lr.ph879:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit517, %.lr.ph879
  %.1878 = phi ptr [ %i.ho, %.lr.ph879 ], [ %.0889, %_ZN4ncnn3MatD2Ev.exit517 ] ; 12 uses
  %.0499877 = phi ptr [ %i.hn, %.lr.ph879 ], [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ] ; 4 uses
  %.0501876 = phi i32 [ %i.hp, %.lr.ph879 ], [ 0, %_ZN4ncnn3MatD2Ev.exit517 ] ; 2 uses
  %i.af = load <8 x float>, ptr %.0499877, align 1, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0499877, i64 32
  %i.ah = load <8 x float>, ptr %i.ag, align 1, !tbaa !63 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0499877, i64 64
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !63 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.aj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.aj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ao = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.ap = shufflevector <8 x float> %i.ak, <8 x float> %i.ao, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.aq = shufflevector <8 x float> %i.an, <8 x float> %i.ao, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.ar = shufflevector <8 x float> %i.an, <8 x float> %i.am, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.as = load i32, ptr %i.q, align 4, !tbaa !52
  %i.at = sitofp fast i32 %i.as to float
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.aw = fmul fast <8 x float> %i.ap, splat (float 5.000000e-01)
  %i.ax = fadd fast <8 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fadd fast <8 x float> %i.av, splat (float -1.000000e+00) ; 3 uses
  %i.az = fmul fast <8 x float> %i.ax, %i.ay
  %i.ba = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.az)
  %i.bb = fsub fast <8 x float> %i.ba, %i.ay
  %i.bc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bb)
  %i.bd = fsub fast <8 x float> %i.ay, %i.bc      ; 2 uses
  %i.be = load i32, ptr %i.r, align 8, !tbaa !53
  %i.bf = sitofp fast i32 %i.be to float
  %i.bg = insertelement <8 x float> poison, float %i.bf, i64 0
  %i.bh = shufflevector <8 x float> %i.bg, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bi = fmul fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.bj = fadd fast <8 x float> %i.bi, splat (float 5.000000e-01)
  %i.bk = fadd fast <8 x float> %i.bh, splat (float -1.000000e+00) ; 3 uses
  %i.bl = fmul fast <8 x float> %i.bk, %i.bj
  %i.bm = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.bl)
  %i.bn = fsub fast <8 x float> %i.bm, %i.bk
  %i.bo = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bn)
  %i.bp = fsub fast <8 x float> %i.bk, %i.bo      ; 2 uses
  %i.bq = load i32, ptr %i.s, align 4, !tbaa !55
  %i.br = sitofp fast i32 %i.bq to float
  %i.bs = insertelement <8 x float> poison, float %i.br, i64 0
  %i.bt = shufflevector <8 x float> %i.bs, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bu = fmul fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.bv = fadd fast <8 x float> %i.bu, splat (float 5.000000e-01)
  %i.bw = fadd fast <8 x float> %i.bt, splat (float -1.000000e+00) ; 3 uses
  %i.bx = fmul fast <8 x float> %i.bw, %i.bv
  %i.by = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.bx)
  %i.bz = fsub fast <8 x float> %i.by, %i.bw
  %i.ca = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bz)
  %i.cb = fsub fast <8 x float> %i.bw, %i.ca      ; 2 uses
  %i.cc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bd, i32 1) ; 5 uses
  %i.cd = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bp, i32 1) ; 5 uses
  %i.ce = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cb, i32 1) ; 5 uses
  %i.cf = fadd fast <8 x float> %i.cc, splat (float 1.000000e+00) ; 2 uses
  %i.cg = fadd fast <8 x float> %i.cd, splat (float 1.000000e+00) ; 2 uses
  %i.ch = fadd fast <8 x float> %i.ce, splat (float 1.000000e+00) ; 2 uses
  %i.ci = fcmp fast ogt <8 x float> %i.cc, splat (float -1.000000e+00)
  %i.cj = fcmp fast ogt <8 x float> %i.av, %i.cc
  %i.ck = and <8 x i1> %i.ci, %i.cj               ; 2 uses
  %i.cl = fcmp fast ogt <8 x float> %i.cf, splat (float -1.000000e+00)
  %i.cm = fcmp fast ogt <8 x float> %i.av, %i.cf
  %i.cn = and <8 x i1> %i.cl, %i.cm               ; 2 uses
  %i.co = fcmp fast ogt <8 x float> %i.cd, splat (float -1.000000e+00)
  %i.cp = fcmp fast ogt <8 x float> %i.bh, %i.cd
  %i.cq = and <8 x i1> %i.co, %i.cp
  %i.cr = sext <8 x i1> %i.cq to <8 x i32>        ; 2 uses
  %i.cs = fcmp fast ogt <8 x float> %i.cg, splat (float -1.000000e+00)
  %i.ct = fcmp fast ogt <8 x float> %i.bh, %i.cg
  %i.cu = and <8 x i1> %i.cs, %i.ct               ; 2 uses
  %i.cv = fcmp fast ogt <8 x float> %i.ce, splat (float -1.000000e+00)
  %i.cw = fcmp fast ogt <8 x float> %i.bt, %i.ce
  %i.cx = and <8 x i1> %i.cv, %i.cw               ; 3 uses
  %i.cy = sext <8 x i1> %i.cx to <8 x i32>
  %i.cz = fcmp fast ogt <8 x float> %i.ch, splat (float -1.000000e+00)
  %i.da = fcmp fast ogt <8 x float> %i.bt, %i.ch
  %i.db = and <8 x i1> %i.cz, %i.da               ; 4 uses
  %i.dc = and <8 x i1> %i.ck, %i.cu               ; 2 uses
  %i.dd = and <8 x i1> %i.cn, %i.cu               ; 2 uses
  %i.de = bitcast <8 x i32> %i.cr to <8 x float>
  %i.df = select <8 x i1> %i.ck, <8 x float> %i.de, <8 x float> zeroinitializer ; 2 uses
  %i.dg = select <8 x i1> %i.cx, <8 x float> %i.df, <8 x float> zeroinitializer
  %i.dh = bitcast <8 x i32> %i.cr to <8 x float>
  %i.di = select <8 x i1> %i.cn, <8 x float> %i.dh, <8 x float> zeroinitializer ; 2 uses
  %i.dj = select <8 x i1> %i.cx, <8 x float> %i.di, <8 x float> zeroinitializer
  %i.dk = bitcast <8 x i32> %i.cy to <8 x float>  ; 2 uses
  %i.dl = select <8 x i1> %i.dc, <8 x float> %i.dk, <8 x float> zeroinitializer
  %i.dm = select <8 x i1> %i.dd, <8 x float> %i.dk, <8 x float> zeroinitializer
  %i.dn = select <8 x i1> %i.db, <8 x float> %i.df, <8 x float> zeroinitializer
  %i.do = select <8 x i1> %i.db, <8 x float> %i.di, <8 x float> zeroinitializer
  %i.dp = and <8 x i1> %i.dc, %i.db
  %i.dq = and <8 x i1> %i.dd, %i.db
  %i.dr = fmul fast <8 x float> %i.bh, %i.av      ; 2 uses
  %i.ds = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cd, <8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.cc)
  %i.dt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dr, <8 x float> nofpclass(nan inf) %i.ce, <8 x float> nofpclass(nan inf) %i.ds)
  %i.du = load i32, ptr %i.t, align 8, !tbaa !13
  %i.dv = sitofp fast i32 %i.du to float
  %i.dw = insertelement <8 x float> poison, float %i.dv, i64 0
  %i.dx = shufflevector <8 x float> %i.dw, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.dy = fmul fast <8 x float> %i.dx, %i.dt      ; 4 uses
  %i.dz = fadd fast <8 x float> %i.dy, %i.dx
  %i.ea = fmul fast <8 x float> %i.dx, %i.av      ; 2 uses
  %i.eb = fadd fast <8 x float> %i.dy, %i.ea      ; 2 uses
  %i.ec = fadd fast <8 x float> %i.eb, %i.dx
  %i.ed = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dr, <8 x float> nofpclass(nan inf) %i.dx, <8 x float> nofpclass(nan inf) %i.dy) ; 3 uses
  %i.ee = fadd fast <8 x float> %i.ed, %i.dx
  %i.ef = fadd fast <8 x float> %i.ed, %i.ea      ; 2 uses
  %i.eg = fadd fast <8 x float> %i.ef, %i.dx
  %i.eh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dy, <8 x float> nofpclass(nan inf) %i.dg)
  %i.ei = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dz, <8 x float> nofpclass(nan inf) %i.dj)
  %i.ej = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.dl)
  %i.ek = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ec, <8 x float> nofpclass(nan inf) %i.dm)
  %i.el = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ed, <8 x float> nofpclass(nan inf) %i.dn)
  %i.em = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ee, <8 x float> nofpclass(nan inf) %i.do)
  %i.en = select <8 x i1> %i.dp, <8 x float> %i.ef, <8 x float> splat (float -1.000000e+00)
  %i.eo = select <8 x i1> %i.dq, <8 x float> %i.eg, <8 x float> splat (float -1.000000e+00)
  %i.ep = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eh) ; 3 uses
  %i.eq = bitcast <8 x i32> %i.ep to <8 x float>
  %i.er = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ei) ; 4 uses
  %i.es = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ej) ; 4 uses
  %i.et = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ek) ; 4 uses
  %i.eu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.el) ; 4 uses
  %i.ev = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.em) ; 4 uses
  %i.ew = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.en) ; 4 uses
  %i.ex = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eo) ; 3 uses
  %i.ey = bitcast <8 x i32> %i.ex to <8 x float>  ; 2 uses
  %i.ez = fsub fast <8 x float> %i.bd, %i.cc      ; 4 uses
  %i.fa = fsub fast <8 x float> %i.bp, %i.cd      ; 4 uses
  %i.fb = fsub fast <8 x float> %i.cb, %i.ce      ; 4 uses
  %i.fc = shufflevector <8 x i32> %i.ep, <8 x i32> %i.er, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fd = shufflevector <8 x i32> %i.ep, <8 x i32> %i.er, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.fe = bitcast <8 x i32> %i.fd to <8 x float>  ; 2 uses
  %i.ff = shufflevector <8 x i32> %i.es, <8 x i32> %i.et, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fg = shufflevector <8 x i32> %i.es, <8 x i32> %i.et, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fh = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ev, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fi = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ev, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fj = shufflevector <8 x i32> %i.ew, <8 x i32> %i.ex, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fk = shufflevector <8 x i32> %i.ew, <8 x i32> %i.ex, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fl = bitcast <8 x i32> %i.fk to <8 x float>
  %i.fm = shufflevector <8 x float> %i.ez, <8 x float> %i.fa, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fn = shufflevector <8 x float> %i.ez, <8 x float> %i.fa, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fo = shufflevector <8 x float> %i.fb, <8 x float> %i.eq, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.fp = shufflevector <8 x float> %i.fb, <8 x float> %i.fe, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.fq = shufflevector <8 x i32> %i.er, <8 x i32> %i.es, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fr = shufflevector <8 x i32> %i.er, <8 x i32> %i.es, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fs = bitcast <8 x i32> %i.fr to <8 x float>
  %i.ft = shufflevector <8 x i32> %i.et, <8 x i32> %i.eu, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fu = shufflevector <8 x i32> %i.et, <8 x i32> %i.eu, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fv = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ew, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fw = bitcast <8 x i32> %i.fv to <8 x float>
  %i.fx = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ew, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fy = shufflevector <8 x float> %i.ey, <8 x float> %i.ez, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fz = shufflevector <8 x float> %i.ey, <8 x float> %i.ez, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.ga = shufflevector <8 x float> %i.fa, <8 x float> %i.fb, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.gb = shufflevector <8 x float> %i.fa, <8 x float> %i.fb, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.gc = shufflevector <8 x i32> %i.fc, <8 x i32> %i.ff, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gd = bitcast <8 x i32> %i.gc to <8 x float>
  %i.ge = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gf = bitcast <8 x i32> %i.ge to <8 x float>
  %i.gg = shufflevector <8 x float> %i.fm, <8 x float> %i.fo, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.gh = shufflevector <8 x i32> %i.fq, <8 x i32> %i.ft, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gi = bitcast <8 x i32> %i.gh to <8 x float>  ; 2 uses
  %i.gj = shufflevector <8 x float> %i.fw, <8 x float> %i.fy, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gk = shufflevector <8 x float> %i.ga, <8 x float> %i.fe, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.gl = shufflevector <8 x i32> %i.fg, <8 x i32> %i.fi, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gm = bitcast <8 x i32> %i.gl to <8 x float>  ; 2 uses
  %i.gn = shufflevector <8 x float> %i.fl, <8 x float> %i.fn, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.go = shufflevector <8 x float> %i.fp, <8 x float> %i.fs, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.gp = shufflevector <8 x i32> %i.fu, <8 x i32> %i.fx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gq = bitcast <8 x i32> %i.gp to <8 x float>  ; 2 uses
  %i.gr = shufflevector <8 x float> %i.fz, <8 x float> %i.gb, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gs = shufflevector <8 x i32> %i.gc, <8 x i32> %i.ge, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gt = shufflevector <8 x float> %i.gg, <8 x float> %i.gi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gu = shufflevector <8 x float> %i.gj, <8 x float> %i.gk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gv = shufflevector <8 x float> %i.gm, <8 x float> %i.gn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gw = shufflevector <8 x float> %i.go, <8 x float> %i.gq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gx = shufflevector <8 x float> %i.gr, <8 x float> %i.gd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.gy = shufflevector <8 x float> %i.gf, <8 x float> %i.gg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
end_hunk_5
begin_hunk_6_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %i.xk = extractelement <2 x i1> %i.wv, i64 0    ; 2 uses
  %i.xl = extractelement <2 x i1> %i.wv, i64 1    ; 2 uses
  %i.xm = and i1 %i.xk, %i.xl                     ; 2 uses
  %i.xn = and i1 %i.xc, %i.xl                     ; 2 uses
  %i.xo = and i1 %i.xk, %i.xg                     ; 2 uses
  %i.xp = and i1 %i.xc, %i.xg                     ; 2 uses
  %i.xq = and i1 %i.xm, %i.wy
  %i.xr = and i1 %i.xn, %i.wy
  %i.xs = and i1 %i.wy, %i.xo
  %i.xt = and i1 %i.wy, %i.xp
  %i.xu = and i1 %i.xm, %i.xj
  %i.xv = and i1 %i.xn, %i.xj
  %i.xw = and i1 %i.xo, %i.xj
  %i.xx = and i1 %i.xp, %i.xj
  %i.xy = getelementptr inbounds nuw i8, ptr %.4874, i64 32
  br i1 %i.xq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.xz = mul i32 %i.xe, %i.wn
  %reass.add = add i32 %i.xz, %i.wq
  %reass.mul = mul i32 %reass.add, %i.xa
  %i.ya = add i32 %reass.mul, %i.wo
  %i.yb = load i32, ptr %i.nz, align 8, !tbaa !13
  %i.yc = mul nsw i32 %i.yb, %i.ya
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.yd = phi i32 [ %i.yc, %bb.s ], [ -1, %bb.r ]
  store i32 %i.yd, ptr %.4874, align 4, !tbaa !29
  br i1 %i.xr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ye = load i32, ptr %i.nw, align 4, !tbaa !52
  %i.yf = load i32, ptr %i.nx, align 8, !tbaa !53
  %i.yg = mul i32 %i.yf, %i.wn
  %reass.add828 = add i32 %i.yg, %i.wq
  %reass.mul829 = mul i32 %reass.add828, %i.ye
  %i.yh = add i32 %reass.mul829, %i.wp
  %i.yi = load i32, ptr %i.nz, align 8, !tbaa !13
  %i.yj = mul nsw i32 %i.yh, %i.yi
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.yk = phi i32 [ %i.yj, %bb.u ], [ -1, %bb.t ]
  %i.yl = getelementptr inbounds nuw i8, ptr %.4874, i64 4
  store i32 %i.yk, ptr %i.yl, align 4, !tbaa !29
  br i1 %i.xs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ym = load i32, ptr %i.nw, align 4, !tbaa !52
  %i.yn = load i32, ptr %i.nx, align 8, !tbaa !53
  %i.yo = mul i32 %i.yn, %i.wn
  %reass.add830 = add i32 %i.yo, %i.wr
  %reass.mul831 = mul i32 %reass.add830, %i.ym
  %i.yp = add i32 %reass.mul831, %i.wo
  %i.yq = load i32, ptr %i.nz, align 8, !tbaa !13
  %i.yr = mul nsw i32 %i.yp, %i.yq
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ys = phi i32 [ %i.yr, %bb.w ], [ -1, %bb.v ]
  %i.yt = getelementptr inbounds nuw i8, ptr %.4874, i64 8
  store i32 %i.ys, ptr %i.yt, align 4, !tbaa !29
  br i1 %i.xt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.yu = load i32, ptr %i.nw, align 4, !tbaa !52
  %i.yv = load i32, ptr %i.nx, align 8, !tbaa !53
  %i.yw = mul i32 %i.yv, %i.wn
  %reass.add832 = add i32 %i.yw, %i.wr
  %reass.mul833 = mul i32 %reass.add832, %i.yu
  %i.yx = add i32 %reass.mul833, %i.wp
  %i.yy = load i32, ptr %i.nz, align 8, !tbaa !13
  %i.yz = mul nsw i32 %i.yx, %i.yy
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.za = phi i32 [ %i.yz, %bb.y ], [ -1, %bb.x ]
  %i.zb = getelementptr inbounds nuw i8, ptr %.4874, i64 12
  store i32 %i.za, ptr %i.zb, align 4, !tbaa !29
  br i1 %i.xu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.zc = load i32, ptr %i.nw, align 4, !tbaa !52
  %i.zd = load i32, ptr %i.nx, align 8, !tbaa !53
  %i.ze = mul i32 %i.zd, %i.ws
  %reass.add834 = add i32 %i.ze, %i.wq
  %reass.mul835 = mul i32 %reass.add834, %i.zc
  %i.zf = add i32 %reass.mul835, %i.wo
  %i.zg = load i32, ptr %i.nz, align 8, !tbaa !13
  %i.zh = mul nsw i32 %i.zf, %i.zg
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.zi = phi i32 [ %i.zh, %bb.aa ], [ -1, %bb.z ]
  %i.zj = getelementptr inbounds nuw i8, ptr %.4874, i64 16
  store i32 %i.zi, ptr %i.zj, align 4, !tbaa !29
  br i1 %i.xv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.zk = load i32, ptr %i.nw, align 4, !tbaa !52
  %i.zl = load i32, ptr %i.nx, align 8, !tbaa !53
  %i.zm = mul i32 %i.zl, %i.ws
  %reass.add836 = add i32 %i.zm, %i.wq
  %reass.mul837 = mul i32 %reass.add836, %i.zk
  %i.zn = add i32 %reass.mul837, %i.wp
  %i.zo = load i32, ptr %i.nz, align 8, !tbaa !13
  %i.zp = mul nsw i32 %i.zn, %i.zo
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.zq = phi i32 [ %i.zp, %bb.ac ], [ -1, %bb.ab ]
  %i.zr = getelementptr inbounds nuw i8, ptr %.4874, i64 20
  store i32 %i.zq, ptr %i.zr, align 4, !tbaa !29
  br i1 %i.xw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.zs = load i32, ptr %i.nw, align 4, !tbaa !52
  %i.zt = load i32, ptr %i.nx, align 8, !tbaa !53
  %i.zu = mul i32 %i.zt, %i.ws
  %reass.add838 = add i32 %i.zu, %i.wr
  %reass.mul839 = mul i32 %reass.add838, %i.zs
  %i.zv = add i32 %reass.mul839, %i.wo
  %i.zw = load i32, ptr %i.nz, align 8, !tbaa !13
  %i.zx = mul nsw i32 %i.zv, %i.zw
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.zy = phi i32 [ %i.zx, %bb.ae ], [ -1, %bb.ad ]
  %i.zz = getelementptr inbounds nuw i8, ptr %.4874, i64 24
  store i32 %i.zy, ptr %i.zz, align 4, !tbaa !29
  br i1 %i.xx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.aaa = load i32, ptr %i.nw, align 4, !tbaa !52
  %i.aab = load i32, ptr %i.nx, align 8, !tbaa !53
  %i.aac = mul i32 %i.aab, %i.ws
  %reass.add840 = add i32 %i.aac, %i.wr
  %reass.mul841 = mul i32 %reass.add840, %i.aaa
  %i.aad = add i32 %reass.mul841, %i.wp
  %i.aae = load i32, ptr %i.nz, align 8, !tbaa !13
  %i.aaf = mul nsw i32 %i.aad, %i.aae
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.aag = phi i32 [ %i.aaf, %bb.ag ], [ -1, %bb.af ]
  %i.aah = getelementptr inbounds nuw i8, ptr %.4874, i64 28
  store i32 %i.aag, ptr %i.aah, align 4, !tbaa !29
  %i.aai = sitofp <2 x i32> %i.wl to <2 x float>
  %i.aaj = fsub fast <2 x float> %i.wj, %i.aai
  store <2 x float> %i.aaj, ptr %i.xy, align 4, !tbaa !66
  %i.aak = sitofp fast i32 %i.wn to float
  %i.aal = fsub fast float %.sroa.speculated.i556, %i.aak
  %i.aam = getelementptr inbounds nuw i8, ptr %.4874, i64 40
  store float %i.aal, ptr %i.aam, align 4, !tbaa !66
  %i.aan = getelementptr inbounds nuw i8, ptr %.1504873, i64 4
  %i.aao = getelementptr inbounds nuw i8, ptr %.1506872, i64 4
  %i.aap = getelementptr inbounds nuw i8, ptr %.1508871, i64 4
  %i.aaq = getelementptr inbounds nuw i8, ptr %.4874, i64 44
  %i.aar = add nuw nsw i32 %.1510870, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.aar, %.fr936
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !468

.loopexit:                                        ; preds = %bb.ah, %._crit_edge, %.preheader859, %.preheader858
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_3d_nearest_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit168:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = mul i32 %i.e, %i.g
  %.fr368 = freeze i32 %i.h                       ; 10 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !24, !noalias !469 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader314, label %_ZN4ncnn3MatD2Ev.exit166

.preheader314:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit168
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit167.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit167.lr.ph:                   ; preds = %.preheader314
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %.fr368, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = add i32 %.fr368, -24                     ; 2 uses
  %i.v = urem i32 %i.u, 24
  %i.w = sub nuw i32 %i.u, %i.v
  %i.x = add nuw nsw i32 %i.w, 24
  br label %_ZN4ncnn3MatD2Ev.exit167

_ZN4ncnn3MatD2Ev.exit167:                         ; preds = %_ZN4ncnn3MatD2Ev.exit167.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit167.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0345 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit167.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24, !noalias !472
  %i.z = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !472
  %i.aa = mul i64 %i.z, %indvars.iv
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !472
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac ; 2 uses
  br i1 %i.p, label %.lr.ph335, label %.preheader

.preheader:                                       ; preds = %.lr.ph335, %_ZN4ncnn3MatD2Ev.exit167
  %.0155.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit167 ], [ %i.x, %.lr.ph335 ] ; 2 uses
  %.0153.lcssa = phi ptr [ %i.ad, %_ZN4ncnn3MatD2Ev.exit167 ], [ %i.cp, %.lr.ph335 ]
  %.1.lcssa = phi ptr [ %.0345, %_ZN4ncnn3MatD2Ev.exit167 ], [ %i.cq, %.lr.ph335 ] ; 2 uses
  %i.ae = icmp slt i32 %.0155.lcssa, %.fr368
  br i1 %i.ae, label %.lr.ph342, label %._crit_edge

.lr.ph335:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit167, %.lr.ph335
  %.1334 = phi ptr [ %i.cq, %.lr.ph335 ], [ %.0345, %_ZN4ncnn3MatD2Ev.exit167 ] ; 2 uses
  %.0153333 = phi ptr [ %i.cp, %.lr.ph335 ], [ %i.ad, %_ZN4ncnn3MatD2Ev.exit167 ] ; 4 uses
  %.0155332 = phi i32 [ %i.cr, %.lr.ph335 ], [ 0, %_ZN4ncnn3MatD2Ev.exit167 ] ; 2 uses
  %i.af = load <8 x float>, ptr %.0153333, align 1, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0153333, i64 32
  %i.ah = load <8 x float>, ptr %i.ag, align 1, !tbaa !63 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0153333, i64 64
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !63 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.aj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.aj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ao = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.ap = shufflevector <8 x float> %i.ak, <8 x float> %i.ao, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.aq = shufflevector <8 x float> %i.an, <8 x float> %i.ao, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.ar = shufflevector <8 x float> %i.an, <8 x float> %i.am, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.as = load i32, ptr %i.q, align 4, !tbaa !52
  %i.at = sitofp fast i32 %i.as to float
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.aw = fadd fast <8 x float> %i.ap, splat (float 1.000000e+00)
  %i.ax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.av, <8 x float> splat (float -1.000000e+00))
  %i.ay = fmul fast <8 x float> %i.ax, splat (float 5.000000e-01)
  %i.az = load i32, ptr %i.r, align 8, !tbaa !53
  %i.ba = sitofp fast i32 %i.az to float
  %i.bb = insertelement <8 x float> poison, float %i.ba, i64 0
  %i.bc = shufflevector <8 x float> %i.bb, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bd = fadd fast <8 x float> %i.aq, splat (float 1.000000e+00)
  %i.be = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bd, <8 x float> nofpclass(nan inf) %i.bc, <8 x float> splat (float -1.000000e+00))
  %i.bf = fmul fast <8 x float> %i.be, splat (float 5.000000e-01)
  %i.bg = load i32, ptr %i.s, align 4, !tbaa !55
  %i.bh = sitofp fast i32 %i.bg to float
  %i.bi = insertelement <8 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <8 x float> %i.bi, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bk = fadd fast <8 x float> %i.ar, splat (float 1.000000e+00)
  %i.bl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bk, <8 x float> nofpclass(nan inf) %i.bj, <8 x float> splat (float -1.000000e+00))
  %i.bm = fmul fast <8 x float> %i.bl, splat (float 5.000000e-01)
  %i.bn = fadd fast <8 x float> %i.ay, splat (float 5.000000e-01)
  %i.bo = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bn, i32 1) ; 3 uses
  %i.bp = fadd fast <8 x float> %i.bf, splat (float 5.000000e-01)
  %i.bq = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bp, i32 1) ; 3 uses
  %i.br = fadd fast <8 x float> %i.bm, splat (float 5.000000e-01)
  %i.bs = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.br, i32 1) ; 3 uses
  %i.bt = fcmp fast ogt <8 x float> %i.bo, splat (float -1.000000e+00)
  %i.bu = fcmp fast ogt <8 x float> %i.av, %i.bo
  %i.bv = and <8 x i1> %i.bt, %i.bu
  %i.bw = fcmp fast ogt <8 x float> %i.bq, splat (float -1.000000e+00)
  %i.bx = fcmp fast ogt <8 x float> %i.bc, %i.bq
  %i.by = and <8 x i1> %i.bw, %i.bx
  %i.bz = and <8 x i1> %i.bv, %i.by
  %i.ca = fcmp fast ogt <8 x float> %i.bs, splat (float -1.000000e+00)
  %i.cb = fcmp fast ogt <8 x float> %i.bj, %i.bs
  %i.cc = and <8 x i1> %i.ca, %i.cb
  %i.cd = and <8 x i1> %i.bz, %i.cc
  %i.ce = fmul fast <8 x float> %i.bc, %i.av
  %i.cf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bq, <8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.bo)
  %i.cg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ce, <8 x float> nofpclass(nan inf) %i.bs, <8 x float> nofpclass(nan inf) %i.cf)
  %i.ch = load i32, ptr %i.t, align 8, !tbaa !13
  %i.ci = sitofp fast i32 %i.ch to float
  %i.cj = insertelement <8 x float> poison, float %i.ci, i64 0
  %i.ck = shufflevector <8 x float> %i.cj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cl = fmul fast <8 x float> %i.ck, %i.cg
  %i.cm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cl)
  %i.cn = bitcast <8 x i32> %i.cm to <8 x float>
  %i.co = select <8 x i1> %i.cd, <8 x float> %i.cn, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.co, ptr %.1334, align 1, !tbaa !63
  %i.cp = getelementptr inbounds nuw i8, ptr %.0153333, i64 96 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.1334, i64 32 ; 2 uses
  %i.cr = add nuw nsw i32 %.0155332, 24
  %i.cs = add nuw nsw i32 %.0155332, 47
  %i.ct = icmp slt i32 %i.cs, %.fr368
  br i1 %i.ct, label %.lr.ph335, label %.preheader, !llvm.loop !475

.lr.ph342:                                        ; preds = %.preheader, %bb.b
  %.2341 = phi ptr [ %i.eg, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1154340 = phi ptr [ %i.ef, %bb.b ], [ %.0153.lcssa, %.preheader ] ; 3 uses
  %.1156339 = phi i32 [ %i.eh, %bb.b ], [ %.0155.lcssa, %.preheader ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.1154340, i64 8
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !66
  %i.cw = load i32, ptr %i.s, align 4, !tbaa !55  ; 2 uses
  %i.cx = sitofp fast i32 %i.cw to float
  %i.cy = fmul fast float %i.cv, 5.000000e-01
  %i.cz = fadd fast float %i.cy, 5.000000e-01
  %i.da = fmul fast float %i.cz, %i.cx
  %i.db = load <2 x float>, ptr %.1154340, align 4, !tbaa !66
  %i.dc = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 4 uses
  %i.dd = sitofp <2 x i32> %i.dc to <2 x float>
  %i.de = fmul fast <2 x float> %i.db, splat (float 5.000000e-01)
  %i.df = fadd fast <2 x float> %i.de, splat (float 5.000000e-01)
  %i.dg = fmul fast <2 x float> %i.df, %i.dd
  %i.dh = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.dg)
  %i.di = fptosi <2 x float> %i.dh to <2 x i32>   ; 3 uses
  %i.dj = tail call fast float @llvm.floor.f32(float %i.da)
  %i.dk = fptosi float %i.dj to i32               ; 3 uses
  %i.dl = extractelement <2 x i32> %i.di, i64 0   ; 2 uses
  %i.dm = extractelement <2 x i32> %i.di, i64 1   ; 2 uses
  %i.dn = or i32 %i.dm, %i.dl
  %i.do = icmp sgt i32 %i.dn, -1
  %i.dp = icmp sgt <2 x i32> %i.dc, %i.di         ; 2 uses
  %i.dq = extractelement <2 x i1> %i.dp, i64 0
  %i.dr = and i1 %i.dq, %i.do
  %i.ds = extractelement <2 x i1> %i.dp, i64 1
  %i.dt = and i1 %i.ds, %i.dr
  %i.du = icmp sgt i32 %i.dk, -1
  %i.dv = and i1 %i.du, %i.dt
  %i.dw = icmp sgt i32 %i.cw, %i.dk
  %i.dx = and i1 %i.dw, %i.dv
  br i1 %i.dx, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph342
  %i.dy = extractelement <2 x i32> %i.dc, i64 1
  %i.dz = mul i32 %i.dy, %i.dk
  %reass.add312 = add i32 %i.dz, %i.dm
  %i.ea = extractelement <2 x i32> %i.dc, i64 0
  %reass.mul313 = mul i32 %reass.add312, %i.ea
  %i.eb = add i32 %reass.mul313, %i.dl
  %i.ec = load i32, ptr %i.t, align 8, !tbaa !13
  %i.ed = mul nsw i32 %i.ec, %i.eb
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph342, %bb.a
  %i.ee = phi i32 [ %i.ed, %bb.a ], [ -1, %.lr.ph342 ]
  store i32 %i.ee, ptr %.2341, align 4, !tbaa !29
  %i.ef = getelementptr inbounds nuw i8, ptr %.1154340, i64 12
  %i.eg = getelementptr inbounds nuw i8, ptr %.2341, i64 4 ; 2 uses
  %i.eh = add nuw nsw i32 %.1156339, 3            ; 2 uses
  %i.ei = icmp slt i32 %i.eh, %.fr368
  br i1 %i.ei, label %.lr.ph342, label %._crit_edge, !llvm.loop !476

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.eg, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ej = load i32, ptr %i.k, align 8, !tbaa !18
  %i.ek = sext i32 %i.ej to i64
  %i.el = icmp slt i64 %indvars.iv.next, %i.ek
  br i1 %i.el, label %_ZN4ncnn3MatD2Ev.exit167, label %.loopexit, !llvm.loop !477

_ZN4ncnn3MatD2Ev.exit166:                         ; preds = %_ZN4ncnn3MatD2Ev.exit168
  %i.em = load ptr, ptr %1, align 8, !tbaa !24, !noalias !478 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !21, !noalias !481 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !20, !noalias !481 ; 2 uses
  %i.er = mul i64 %i.eq, %i.ep
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.er ; 2 uses
  %i.et = shl i64 %i.ep, 1
  %i.eu = mul i64 %i.et, %i.eq
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.eu ; 2 uses
  %i.ew = icmp sgt i32 %.fr368, 7
  br i1 %i.ew, label %.lr.ph, label %.preheader315

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit166
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader315.loopexit:                           ; preds = %bb.c
  %i.fb = and i32 %.fr368, 2147483640
  br label %.preheader315

.preheader315:                                    ; preds = %.preheader315.loopexit, %_ZN4ncnn3MatD2Ev.exit166
  %.0163.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit166 ], [ %i.fb, %.preheader315.loopexit ] ; 2 uses
  %.0161.lcssa = phi ptr [ %i.ev, %_ZN4ncnn3MatD2Ev.exit166 ], [ %i.hi, %.preheader315.loopexit ]
  %.0159.lcssa = phi ptr [ %i.es, %_ZN4ncnn3MatD2Ev.exit166 ], [ %i.hh, %.preheader315.loopexit ]
  %.0157.lcssa = phi ptr [ %i.em, %_ZN4ncnn3MatD2Ev.exit166 ], [ %i.hg, %.preheader315.loopexit ]
  %.3.lcssa = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit166 ], [ %i.hj, %.preheader315.loopexit ]
  %i.fc = icmp slt i32 %.0163.lcssa, %.fr368
  br i1 %i.fc, label %.lr.ph331, label %.loopexit

.lr.ph331:                                        ; preds = %.preheader315
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3321 = phi ptr [ %i.i, %.lr.ph ], [ %i.hj, %bb.c ] ; 2 uses
  %.0157320 = phi ptr [ %i.em, %.lr.ph ], [ %i.hg, %bb.c ] ; 2 uses
  %.0159319 = phi ptr [ %i.es, %.lr.ph ], [ %i.hh, %bb.c ] ; 2 uses
  %.0161318 = phi ptr [ %i.ev, %.lr.ph ], [ %i.hi, %bb.c ] ; 2 uses
  %.0163317 = phi i32 [ 0, %.lr.ph ], [ %i.hk, %bb.c ]
  %i.fg = load <8 x float>, ptr %.0157320, align 1, !tbaa !63
  %i.fh = load <8 x float>, ptr %.0159319, align 1, !tbaa !63
  %i.fi = load <8 x float>, ptr %.0161318, align 1, !tbaa !63
  %i.fj = load i32, ptr %i.ex, align 4, !tbaa !52
  %i.fk = sitofp fast i32 %i.fj to float
  %i.fl = insertelement <8 x float> poison, float %i.fk, i64 0
  %i.fm = shufflevector <8 x float> %i.fl, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.fn = fadd fast <8 x float> %i.fg, splat (float 1.000000e+00)
  %i.fo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fn, <8 x float> nofpclass(nan inf) %i.fm, <8 x float> splat (float -1.000000e+00))
  %i.fp = fmul fast <8 x float> %i.fo, splat (float 5.000000e-01)
  %i.fq = load i32, ptr %i.ey, align 8, !tbaa !53
  %i.fr = sitofp fast i32 %i.fq to float
  %i.fs = insertelement <8 x float> poison, float %i.fr, i64 0
  %i.ft = shufflevector <8 x float> %i.fs, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.fu = fadd fast <8 x float> %i.fh, splat (float 1.000000e+00)
  %i.fv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fu, <8 x float> nofpclass(nan inf) %i.ft, <8 x float> splat (float -1.000000e+00))
  %i.fw = fmul fast <8 x float> %i.fv, splat (float 5.000000e-01)
  %i.fx = load i32, ptr %i.ez, align 4, !tbaa !55
  %i.fy = sitofp fast i32 %i.fx to float
  %i.fz = insertelement <8 x float> poison, float %i.fy, i64 0
  %i.ga = shufflevector <8 x float> %i.fz, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.gb = fadd fast <8 x float> %i.fi, splat (float 1.000000e+00)
  %i.gc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gb, <8 x float> nofpclass(nan inf) %i.ga, <8 x float> splat (float -1.000000e+00))
  %i.gd = fmul fast <8 x float> %i.gc, splat (float 5.000000e-01)
  %i.ge = fadd fast <8 x float> %i.fp, splat (float 5.000000e-01)
  %i.gf = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ge, i32 1) ; 3 uses
  %i.gg = fadd fast <8 x float> %i.fw, splat (float 5.000000e-01)
  %i.gh = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gg, i32 1) ; 3 uses
  %i.gi = fadd fast <8 x float> %i.gd, splat (float 5.000000e-01)
  %i.gj = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gi, i32 1) ; 3 uses
  %i.gk = fcmp fast ogt <8 x float> %i.gf, splat (float -1.000000e+00)
  %i.gl = fcmp fast ogt <8 x float> %i.fm, %i.gf
  %i.gm = and <8 x i1> %i.gk, %i.gl
  %i.gn = fcmp fast ogt <8 x float> %i.gh, splat (float -1.000000e+00)
  %i.go = fcmp fast ogt <8 x float> %i.ft, %i.gh
  %i.gp = and <8 x i1> %i.gn, %i.go
  %i.gq = and <8 x i1> %i.gm, %i.gp
  %i.gr = fcmp fast ogt <8 x float> %i.gj, splat (float -1.000000e+00)
  %i.gs = fcmp fast ogt <8 x float> %i.ga, %i.gj
  %i.gt = and <8 x i1> %i.gr, %i.gs
  %i.gu = and <8 x i1> %i.gq, %i.gt
  %i.gv = fmul fast <8 x float> %i.ft, %i.fm
  %i.gw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gh, <8 x float> nofpclass(nan inf) %i.fm, <8 x float> nofpclass(nan inf) %i.gf)
  %i.gx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gv, <8 x float> nofpclass(nan inf) %i.gj, <8 x float> nofpclass(nan inf) %i.gw)
  %i.gy = load i32, ptr %i.fa, align 8, !tbaa !13
  %i.gz = sitofp fast i32 %i.gy to float
  %i.ha = insertelement <8 x float> poison, float %i.gz, i64 0
  %i.hb = shufflevector <8 x float> %i.ha, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hc = fmul fast <8 x float> %i.hb, %i.gx
  %i.hd = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hc)
  %i.he = bitcast <8 x i32> %i.hd to <8 x float>
  %i.hf = select <8 x i1> %i.gu, <8 x float> %i.he, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.hf, ptr %.3321, align 1, !tbaa !63
  %i.hg = getelementptr inbounds nuw i8, ptr %.0157320, i64 32 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.0159319, i64 32 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0161318, i64 32 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.3321, i64 32 ; 2 uses
  %i.hk = add nuw nsw i32 %.0163317, 8            ; 2 uses
  %i.hl = or disjoint i32 %i.hk, 7
  %i.hm = icmp slt i32 %i.hl, %.fr368
  br i1 %i.hm, label %bb.c, label %.preheader315.loopexit, !llvm.loop !484

bb.d:                                             ; preds = %.lr.ph331, %bb.f
  %.4330 = phi ptr [ %.3.lcssa, %.lr.ph331 ], [ %i.jd, %bb.f ] ; 2 uses
  %.1158329 = phi ptr [ %.0157.lcssa, %.lr.ph331 ], [ %i.ja, %bb.f ] ; 2 uses
  %.1160328 = phi ptr [ %.0159.lcssa, %.lr.ph331 ], [ %i.jb, %bb.f ] ; 2 uses
  %.1162327 = phi ptr [ %.0161.lcssa, %.lr.ph331 ], [ %i.jc, %bb.f ] ; 2 uses
  %.1164326 = phi i32 [ %.0163.lcssa, %.lr.ph331 ], [ %i.je, %bb.f ]
  %i.hn = load float, ptr %.1158329, align 4, !tbaa !66
  %i.ho = load float, ptr %.1160328, align 4, !tbaa !66
  %i.hp = load float, ptr %.1162327, align 4, !tbaa !66
  %i.hq = load i32, ptr %i.fe, align 4, !tbaa !55 ; 2 uses
  %i.hr = sitofp fast i32 %i.hq to float
  %i.hs = fmul fast float %i.hp, 5.000000e-01
  %i.ht = fadd fast float %i.hs, 5.000000e-01
  %i.hu = fmul fast float %i.ht, %i.hr
  %i.hv = load <2 x i32>, ptr %i.fd, align 4, !tbaa !29 ; 4 uses
  %i.hw = sitofp <2 x i32> %i.hv to <2 x float>
  %i.hx = insertelement <2 x float> poison, float %i.hn, i64 0
  %i.hy = insertelement <2 x float> %i.hx, float %i.ho, i64 1
  %i.hz = fmul fast <2 x float> %i.hy, splat (float 5.000000e-01)
  %i.ia = fadd fast <2 x float> %i.hz, splat (float 5.000000e-01)
  %i.ib = fmul fast <2 x float> %i.ia, %i.hw
  %i.ic = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ib)
  %i.id = fptosi <2 x float> %i.ic to <2 x i32>   ; 3 uses
  %i.ie = tail call fast float @llvm.floor.f32(float %i.hu)
  %i.if = fptosi float %i.ie to i32               ; 3 uses
  %i.ig = extractelement <2 x i32> %i.id, i64 0   ; 2 uses
  %i.ih = extractelement <2 x i32> %i.id, i64 1   ; 2 uses
  %i.ii = or i32 %i.ih, %i.ig
  %i.ij = icmp sgt i32 %i.ii, -1
  %i.ik = icmp sgt <2 x i32> %i.hv, %i.id         ; 2 uses
  %i.il = extractelement <2 x i1> %i.ik, i64 0
  %i.im = and i1 %i.il, %i.ij
  %i.in = extractelement <2 x i1> %i.ik, i64 1
  %i.io = and i1 %i.in, %i.im
  %i.ip = icmp sgt i32 %i.if, -1
  %i.iq = and i1 %i.ip, %i.io
  %i.ir = icmp sgt i32 %i.hq, %i.if
  %i.is = and i1 %i.ir, %i.iq
  br i1 %i.is, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.it = extractelement <2 x i32> %i.hv, i64 1
  %i.iu = mul i32 %i.it, %i.if
  %reass.add = add i32 %i.iu, %i.ih
  %i.iv = extractelement <2 x i32> %i.hv, i64 0
  %reass.mul = mul i32 %reass.add, %i.iv
  %i.iw = add i32 %reass.mul, %i.ig
  %i.ix = load i32, ptr %i.ff, align 8, !tbaa !13
  %i.iy = mul nsw i32 %i.ix, %i.iw
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.iz = phi i32 [ %i.iy, %bb.e ], [ -1, %bb.d ]
  store i32 %i.iz, ptr %.4330, align 4, !tbaa !29
  %i.ja = getelementptr inbounds nuw i8, ptr %.1158329, i64 4
  %i.jb = getelementptr inbounds nuw i8, ptr %.1160328, i64 4
  %i.jc = getelementptr inbounds nuw i8, ptr %.1162327, i64 4
  %i.jd = getelementptr inbounds nuw i8, ptr %.4330, i64 4
  %i.je = add nuw nsw i32 %.1164326, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.je, %.fr368
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !485

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader315, %.preheader314
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_3d_nearest_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit168:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = mul i32 %i.e, %i.g
  %.fr368 = freeze i32 %i.h                       ; 10 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !24, !noalias !486 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader314, label %_ZN4ncnn3MatD2Ev.exit166

.preheader314:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit168
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit167.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit167.lr.ph:                   ; preds = %.preheader314
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %.fr368, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = add i32 %.fr368, -24                     ; 2 uses
  %i.v = urem i32 %i.u, 24
  %i.w = sub nuw i32 %i.u, %i.v
  %i.x = add nuw nsw i32 %i.w, 24
  br label %_ZN4ncnn3MatD2Ev.exit167

_ZN4ncnn3MatD2Ev.exit167:                         ; preds = %_ZN4ncnn3MatD2Ev.exit167.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit167.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0345 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit167.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24, !noalias !489
  %i.z = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !489
  %i.aa = mul i64 %i.z, %indvars.iv
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !489
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac ; 2 uses
  br i1 %i.p, label %.lr.ph335, label %.preheader

.preheader:                                       ; preds = %.lr.ph335, %_ZN4ncnn3MatD2Ev.exit167
  %.0155.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit167 ], [ %i.x, %.lr.ph335 ] ; 2 uses
  %.0153.lcssa = phi ptr [ %i.ad, %_ZN4ncnn3MatD2Ev.exit167 ], [ %i.cs, %.lr.ph335 ]
  %.1.lcssa = phi ptr [ %.0345, %_ZN4ncnn3MatD2Ev.exit167 ], [ %i.ct, %.lr.ph335 ] ; 2 uses
  %i.ae = icmp slt i32 %.0155.lcssa, %.fr368
  br i1 %i.ae, label %.lr.ph342, label %._crit_edge

.lr.ph335:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit167, %.lr.ph335
  %.1334 = phi ptr [ %i.ct, %.lr.ph335 ], [ %.0345, %_ZN4ncnn3MatD2Ev.exit167 ] ; 2 uses
  %.0153333 = phi ptr [ %i.cs, %.lr.ph335 ], [ %i.ad, %_ZN4ncnn3MatD2Ev.exit167 ] ; 4 uses
  %.0155332 = phi i32 [ %i.cu, %.lr.ph335 ], [ 0, %_ZN4ncnn3MatD2Ev.exit167 ] ; 2 uses
  %i.af = load <8 x float>, ptr %.0153333, align 1, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0153333, i64 32
  %i.ah = load <8 x float>, ptr %i.ag, align 1, !tbaa !63 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0153333, i64 64
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !63 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.aj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.aj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ao = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.ap = shufflevector <8 x float> %i.ak, <8 x float> %i.ao, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.aq = shufflevector <8 x float> %i.an, <8 x float> %i.ao, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.ar = shufflevector <8 x float> %i.an, <8 x float> %i.am, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.as = load i32, ptr %i.q, align 4, !tbaa !52
  %i.at = sitofp fast i32 %i.as to float
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.aw = fmul fast <8 x float> %i.ap, splat (float 5.000000e-01)
  %i.ax = fadd fast <8 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fadd fast <8 x float> %i.av, splat (float -1.000000e+00)
  %i.az = fmul fast <8 x float> %i.ax, %i.ay
  %i.ba = load i32, ptr %i.r, align 8, !tbaa !53
  %i.bb = sitofp fast i32 %i.ba to float
  %i.bc = insertelement <8 x float> poison, float %i.bb, i64 0
  %i.bd = shufflevector <8 x float> %i.bc, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.be = fmul fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.bf = fadd fast <8 x float> %i.be, splat (float 5.000000e-01)
  %i.bg = fadd fast <8 x float> %i.bd, splat (float -1.000000e+00)
  %i.bh = fmul fast <8 x float> %i.bg, %i.bf
  %i.bi = load i32, ptr %i.s, align 4, !tbaa !55
  %i.bj = sitofp fast i32 %i.bi to float
  %i.bk = insertelement <8 x float> poison, float %i.bj, i64 0
  %i.bl = shufflevector <8 x float> %i.bk, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bm = fmul fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.bn = fadd fast <8 x float> %i.bm, splat (float 5.000000e-01)
  %i.bo = fadd fast <8 x float> %i.bl, splat (float -1.000000e+00)
  %i.bp = fmul fast <8 x float> %i.bo, %i.bn
  %i.bq = fadd fast <8 x float> %i.az, splat (float 5.000000e-01)
  %i.br = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bq, i32 1) ; 3 uses
  %i.bs = fadd fast <8 x float> %i.bh, splat (float 5.000000e-01)
  %i.bt = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bs, i32 1) ; 3 uses
  %i.bu = fadd fast <8 x float> %i.bp, splat (float 5.000000e-01)
  %i.bv = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bu, i32 1) ; 3 uses
  %i.bw = fcmp fast ogt <8 x float> %i.br, splat (float -1.000000e+00)
  %i.bx = fcmp fast ogt <8 x float> %i.av, %i.br
  %i.by = and <8 x i1> %i.bw, %i.bx
  %i.bz = fcmp fast ogt <8 x float> %i.bt, splat (float -1.000000e+00)
  %i.ca = fcmp fast ogt <8 x float> %i.bd, %i.bt
  %i.cb = and <8 x i1> %i.bz, %i.ca
  %i.cc = and <8 x i1> %i.by, %i.cb
  %i.cd = fcmp fast ogt <8 x float> %i.bv, splat (float -1.000000e+00)
  %i.ce = fcmp fast ogt <8 x float> %i.bl, %i.bv
  %i.cf = and <8 x i1> %i.cd, %i.ce
  %i.cg = and <8 x i1> %i.cc, %i.cf
  %i.ch = fmul fast <8 x float> %i.bd, %i.av
  %i.ci = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bt, <8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.br)
  %i.cj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ch, <8 x float> nofpclass(nan inf) %i.bv, <8 x float> nofpclass(nan inf) %i.ci)
  %i.ck = load i32, ptr %i.t, align 8, !tbaa !13
  %i.cl = sitofp fast i32 %i.ck to float
  %i.cm = insertelement <8 x float> poison, float %i.cl, i64 0
  %i.cn = shufflevector <8 x float> %i.cm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.co = fmul fast <8 x float> %i.cn, %i.cj
  %i.cp = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.co)
  %i.cq = bitcast <8 x i32> %i.cp to <8 x float>
  %i.cr = select <8 x i1> %i.cg, <8 x float> %i.cq, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.cr, ptr %.1334, align 1, !tbaa !63
  %i.cs = getelementptr inbounds nuw i8, ptr %.0153333, i64 96 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.1334, i64 32 ; 2 uses
  %i.cu = add nuw nsw i32 %.0155332, 24
  %i.cv = add nuw nsw i32 %.0155332, 47
  %i.cw = icmp slt i32 %i.cv, %.fr368
  br i1 %i.cw, label %.lr.ph335, label %.preheader, !llvm.loop !492

.lr.ph342:                                        ; preds = %.preheader, %bb.b
  %.2341 = phi ptr [ %i.en, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1154340 = phi ptr [ %i.em, %bb.b ], [ %.0153.lcssa, %.preheader ] ; 3 uses
  %.1156339 = phi i32 [ %i.eo, %bb.b ], [ %.0155.lcssa, %.preheader ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.1154340, i64 8
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !66
  %i.cz = load i32, ptr %i.s, align 4, !tbaa !55  ; 2 uses
  %i.da = fmul fast float %i.cy, 5.000000e-01
  %i.db = fadd fast float %i.da, 5.000000e-01
  %i.dc = add nsw i32 %i.cz, -1
  %i.dd = sitofp fast i32 %i.dc to float
  %i.de = fmul fast float %i.db, %i.dd
  %i.df = load <2 x float>, ptr %.1154340, align 4, !tbaa !66
  %i.dg = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 4 uses
  %i.dh = fmul fast <2 x float> %i.df, splat (float 5.000000e-01)
  %i.di = fadd fast <2 x float> %i.dh, splat (float 5.000000e-01)
  %i.dj = add nsw <2 x i32> %i.dg, splat (i32 -1)
  %i.dk = sitofp <2 x i32> %i.dj to <2 x float>
  %i.dl = fmul fast <2 x float> %i.di, %i.dk
  %i.dm = fadd fast <2 x float> %i.dl, splat (float 5.000000e-01)
  %i.dn = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.dm)
  %i.do = fptosi <2 x float> %i.dn to <2 x i32>   ; 3 uses
  %i.dp = fadd fast float %i.de, 5.000000e-01
  %i.dq = tail call fast float @llvm.floor.f32(float %i.dp)
  %i.dr = fptosi float %i.dq to i32               ; 3 uses
  %i.ds = extractelement <2 x i32> %i.do, i64 0   ; 2 uses
  %i.dt = extractelement <2 x i32> %i.do, i64 1   ; 2 uses
  %i.du = or i32 %i.dt, %i.ds
  %i.dv = icmp sgt i32 %i.du, -1
  %i.dw = icmp sgt <2 x i32> %i.dg, %i.do         ; 2 uses
  %i.dx = extractelement <2 x i1> %i.dw, i64 0
  %i.dy = and i1 %i.dx, %i.dv
  %i.dz = extractelement <2 x i1> %i.dw, i64 1
  %i.ea = and i1 %i.dz, %i.dy
  %i.eb = icmp sgt i32 %i.dr, -1
  %i.ec = and i1 %i.eb, %i.ea
  %i.ed = icmp sgt i32 %i.cz, %i.dr
  %i.ee = and i1 %i.ed, %i.ec
  br i1 %i.ee, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph342
  %i.ef = extractelement <2 x i32> %i.dg, i64 1
  %i.eg = mul i32 %i.ef, %i.dr
  %reass.add312 = add i32 %i.eg, %i.dt
  %i.eh = extractelement <2 x i32> %i.dg, i64 0
  %reass.mul313 = mul i32 %reass.add312, %i.eh
  %i.ei = add i32 %reass.mul313, %i.ds
  %i.ej = load i32, ptr %i.t, align 8, !tbaa !13
  %i.ek = mul nsw i32 %i.ej, %i.ei
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph342, %bb.a
  %i.el = phi i32 [ %i.ek, %bb.a ], [ -1, %.lr.ph342 ]
  store i32 %i.el, ptr %.2341, align 4, !tbaa !29
  %i.em = getelementptr inbounds nuw i8, ptr %.1154340, i64 12
  %i.en = getelementptr inbounds nuw i8, ptr %.2341, i64 4 ; 2 uses
  %i.eo = add nuw nsw i32 %.1156339, 3            ; 2 uses
  %i.ep = icmp slt i32 %i.eo, %.fr368
  br i1 %i.ep, label %.lr.ph342, label %._crit_edge, !llvm.loop !493

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.en, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eq = load i32, ptr %i.k, align 8, !tbaa !18
  %i.er = sext i32 %i.eq to i64
  %i.es = icmp slt i64 %indvars.iv.next, %i.er
  br i1 %i.es, label %_ZN4ncnn3MatD2Ev.exit167, label %.loopexit, !llvm.loop !494

_ZN4ncnn3MatD2Ev.exit166:                         ; preds = %_ZN4ncnn3MatD2Ev.exit168
  %i.et = load ptr, ptr %1, align 8, !tbaa !24, !noalias !495 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !21, !noalias !498 ; 2 uses
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !20, !noalias !498 ; 2 uses
  %i.ey = mul i64 %i.ex, %i.ew
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ey ; 2 uses
  %i.fa = shl i64 %i.ew, 1
  %i.fb = mul i64 %i.fa, %i.ex
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fb ; 2 uses
  %i.fd = icmp sgt i32 %.fr368, 7
  br i1 %i.fd, label %.lr.ph, label %.preheader315

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit166
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader315.loopexit:                           ; preds = %bb.c
  %i.fi = and i32 %.fr368, 2147483640
  br label %.preheader315

.preheader315:                                    ; preds = %.preheader315.loopexit, %_ZN4ncnn3MatD2Ev.exit166
  %.0163.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit166 ], [ %i.fi, %.preheader315.loopexit ] ; 2 uses
  %.0161.lcssa = phi ptr [ %i.fc, %_ZN4ncnn3MatD2Ev.exit166 ], [ %i.hs, %.preheader315.loopexit ]
  %.0159.lcssa = phi ptr [ %i.ez, %_ZN4ncnn3MatD2Ev.exit166 ], [ %i.hr, %.preheader315.loopexit ]
  %.0157.lcssa = phi ptr [ %i.et, %_ZN4ncnn3MatD2Ev.exit166 ], [ %i.hq, %.preheader315.loopexit ]
  %.3.lcssa = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit166 ], [ %i.ht, %.preheader315.loopexit ]
  %i.fj = icmp slt i32 %.0163.lcssa, %.fr368
  br i1 %i.fj, label %.lr.ph331, label %.loopexit

.lr.ph331:                                        ; preds = %.preheader315
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3321 = phi ptr [ %i.i, %.lr.ph ], [ %i.ht, %bb.c ] ; 2 uses
  %.0157320 = phi ptr [ %i.et, %.lr.ph ], [ %i.hq, %bb.c ] ; 2 uses
  %.0159319 = phi ptr [ %i.ez, %.lr.ph ], [ %i.hr, %bb.c ] ; 2 uses
  %.0161318 = phi ptr [ %i.fc, %.lr.ph ], [ %i.hs, %bb.c ] ; 2 uses
  %.0163317 = phi i32 [ 0, %.lr.ph ], [ %i.hu, %bb.c ]
  %i.fn = load <8 x float>, ptr %.0157320, align 1, !tbaa !63
  %i.fo = load <8 x float>, ptr %.0159319, align 1, !tbaa !63
  %i.fp = load <8 x float>, ptr %.0161318, align 1, !tbaa !63
  %i.fq = load i32, ptr %i.fe, align 4, !tbaa !52
  %i.fr = sitofp fast i32 %i.fq to float
  %i.fs = insertelement <8 x float> poison, float %i.fr, i64 0
  %i.ft = shufflevector <8 x float> %i.fs, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.fu = fmul fast <8 x float> %i.fn, splat (float 5.000000e-01)
  %i.fv = fadd fast <8 x float> %i.fu, splat (float 5.000000e-01)
  %i.fw = fadd fast <8 x float> %i.ft, splat (float -1.000000e+00)
  %i.fx = fmul fast <8 x float> %i.fw, %i.fv
  %i.fy = load i32, ptr %i.ff, align 8, !tbaa !53
  %i.fz = sitofp fast i32 %i.fy to float
  %i.ga = insertelement <8 x float> poison, float %i.fz, i64 0
  %i.gb = shufflevector <8 x float> %i.ga, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.gc = fmul fast <8 x float> %i.fo, splat (float 5.000000e-01)
  %i.gd = fadd fast <8 x float> %i.gc, splat (float 5.000000e-01)
  %i.ge = fadd fast <8 x float> %i.gb, splat (float -1.000000e+00)
  %i.gf = fmul fast <8 x float> %i.ge, %i.gd
  %i.gg = load i32, ptr %i.fg, align 4, !tbaa !55
  %i.gh = sitofp fast i32 %i.gg to float
  %i.gi = insertelement <8 x float> poison, float %i.gh, i64 0
  %i.gj = shufflevector <8 x float> %i.gi, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.gk = fmul fast <8 x float> %i.fp, splat (float 5.000000e-01)
  %i.gl = fadd fast <8 x float> %i.gk, splat (float 5.000000e-01)
  %i.gm = fadd fast <8 x float> %i.gj, splat (float -1.000000e+00)
  %i.gn = fmul fast <8 x float> %i.gm, %i.gl
  %i.go = fadd fast <8 x float> %i.fx, splat (float 5.000000e-01)
  %i.gp = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.go, i32 1) ; 3 uses
  %i.gq = fadd fast <8 x float> %i.gf, splat (float 5.000000e-01)
  %i.gr = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gq, i32 1) ; 3 uses
  %i.gs = fadd fast <8 x float> %i.gn, splat (float 5.000000e-01)
  %i.gt = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gs, i32 1) ; 3 uses
  %i.gu = fcmp fast ogt <8 x float> %i.gp, splat (float -1.000000e+00)
  %i.gv = fcmp fast ogt <8 x float> %i.ft, %i.gp
  %i.gw = and <8 x i1> %i.gu, %i.gv
  %i.gx = fcmp fast ogt <8 x float> %i.gr, splat (float -1.000000e+00)
  %i.gy = fcmp fast ogt <8 x float> %i.gb, %i.gr
  %i.gz = and <8 x i1> %i.gx, %i.gy
  %i.ha = and <8 x i1> %i.gw, %i.gz
  %i.hb = fcmp fast ogt <8 x float> %i.gt, splat (float -1.000000e+00)
  %i.hc = fcmp fast ogt <8 x float> %i.gj, %i.gt
  %i.hd = and <8 x i1> %i.hb, %i.hc
  %i.he = and <8 x i1> %i.ha, %i.hd
  %i.hf = fmul fast <8 x float> %i.gb, %i.ft
  %i.hg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gr, <8 x float> nofpclass(nan inf) %i.ft, <8 x float> nofpclass(nan inf) %i.gp)
  %i.hh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hf, <8 x float> nofpclass(nan inf) %i.gt, <8 x float> nofpclass(nan inf) %i.hg)
  %i.hi = load i32, ptr %i.fh, align 8, !tbaa !13
  %i.hj = sitofp fast i32 %i.hi to float
  %i.hk = insertelement <8 x float> poison, float %i.hj, i64 0
  %i.hl = shufflevector <8 x float> %i.hk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hm = fmul fast <8 x float> %i.hl, %i.hh
  %i.hn = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hm)
  %i.ho = bitcast <8 x i32> %i.hn to <8 x float>
  %i.hp = select <8 x i1> %i.he, <8 x float> %i.ho, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.hp, ptr %.3321, align 1, !tbaa !63
  %i.hq = getelementptr inbounds nuw i8, ptr %.0157320, i64 32 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.0159319, i64 32 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.0161318, i64 32 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.3321, i64 32 ; 2 uses
  %i.hu = add nuw nsw i32 %.0163317, 8            ; 2 uses
  %i.hv = or disjoint i32 %i.hu, 7
  %i.hw = icmp slt i32 %i.hv, %.fr368
  br i1 %i.hw, label %bb.c, label %.preheader315.loopexit, !llvm.loop !501

bb.d:                                             ; preds = %.lr.ph331, %bb.f
  %.4330 = phi ptr [ %.3.lcssa, %.lr.ph331 ], [ %i.jr, %bb.f ] ; 2 uses
  %.1158329 = phi ptr [ %.0157.lcssa, %.lr.ph331 ], [ %i.jo, %bb.f ] ; 2 uses
  %.1160328 = phi ptr [ %.0159.lcssa, %.lr.ph331 ], [ %i.jp, %bb.f ] ; 2 uses
  %.1162327 = phi ptr [ %.0161.lcssa, %.lr.ph331 ], [ %i.jq, %bb.f ] ; 2 uses
  %.1164326 = phi i32 [ %.0163.lcssa, %.lr.ph331 ], [ %i.js, %bb.f ]
  %i.hx = load float, ptr %.1158329, align 4, !tbaa !66
  %i.hy = load float, ptr %.1160328, align 4, !tbaa !66
  %i.hz = load float, ptr %.1162327, align 4, !tbaa !66
  %i.ia = load i32, ptr %i.fl, align 4, !tbaa !55 ; 2 uses
  %i.ib = fmul fast float %i.hz, 5.000000e-01
  %i.ic = fadd fast float %i.ib, 5.000000e-01
  %i.id = add nsw i32 %i.ia, -1
  %i.ie = sitofp fast i32 %i.id to float
  %i.if = fmul fast float %i.ic, %i.ie
  %i.ig = load <2 x i32>, ptr %i.fk, align 4, !tbaa !29 ; 4 uses
  %i.ih = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.ii = insertelement <2 x float> %i.ih, float %i.hy, i64 1
  %i.ij = fmul fast <2 x float> %i.ii, splat (float 5.000000e-01)
  %i.ik = fadd fast <2 x float> %i.ij, splat (float 5.000000e-01)
  %i.il = add nsw <2 x i32> %i.ig, splat (i32 -1)
  %i.im = sitofp <2 x i32> %i.il to <2 x float>
  %i.in = fmul fast <2 x float> %i.ik, %i.im
  %i.io = fadd fast <2 x float> %i.in, splat (float 5.000000e-01)
  %i.ip = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.io)
  %i.iq = fptosi <2 x float> %i.ip to <2 x i32>   ; 3 uses
  %i.ir = fadd fast float %i.if, 5.000000e-01
  %i.is = tail call fast float @llvm.floor.f32(float %i.ir)
  %i.it = fptosi float %i.is to i32               ; 3 uses
  %i.iu = extractelement <2 x i32> %i.iq, i64 0   ; 2 uses
  %i.iv = extractelement <2 x i32> %i.iq, i64 1   ; 2 uses
  %i.iw = or i32 %i.iv, %i.iu
  %i.ix = icmp sgt i32 %i.iw, -1
  %i.iy = icmp sgt <2 x i32> %i.ig, %i.iq         ; 2 uses
  %i.iz = extractelement <2 x i1> %i.iy, i64 0
  %i.ja = and i1 %i.iz, %i.ix
  %i.jb = extractelement <2 x i1> %i.iy, i64 1
  %i.jc = and i1 %i.jb, %i.ja
  %i.jd = icmp sgt i32 %i.it, -1
  %i.je = and i1 %i.jd, %i.jc
  %i.jf = icmp sgt i32 %i.ia, %i.it
  %i.jg = and i1 %i.jf, %i.je
  br i1 %i.jg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.jh = extractelement <2 x i32> %i.ig, i64 1
  %i.ji = mul i32 %i.jh, %i.it
  %reass.add = add i32 %i.ji, %i.iv
  %i.jj = extractelement <2 x i32> %i.ig, i64 0
  %reass.mul = mul i32 %reass.add, %i.jj
  %i.jk = add i32 %reass.mul, %i.iu
  %i.jl = load i32, ptr %i.fm, align 8, !tbaa !13
  %i.jm = mul nsw i32 %i.jl, %i.jk
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.jn = phi i32 [ %i.jm, %bb.e ], [ -1, %bb.d ]
  store i32 %i.jn, ptr %.4330, align 4, !tbaa !29
  %i.jo = getelementptr inbounds nuw i8, ptr %.1158329, i64 4
  %i.jp = getelementptr inbounds nuw i8, ptr %.1160328, i64 4
  %i.jq = getelementptr inbounds nuw i8, ptr %.1162327, i64 4
  %i.jr = getelementptr inbounds nuw i8, ptr %.4330, i64 4
  %i.js = add nuw nsw i32 %.1164326, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.js, %.fr368
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !502

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader315, %.preheader314
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_3d_nearest_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit168:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = mul i32 %i.e, %i.g
  %.fr378 = freeze i32 %i.h                       ; 10 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !24, !noalias !503 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader324, label %_ZN4ncnn3MatD2Ev.exit166

.preheader324:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit168
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit167.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit167.lr.ph:                   ; preds = %.preheader324
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %.fr378, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = add i32 %.fr378, -24                     ; 2 uses
  %i.v = urem i32 %i.u, 24
  %i.w = sub nuw i32 %i.u, %i.v
  %i.x = add nuw nsw i32 %i.w, 24
  br label %_ZN4ncnn3MatD2Ev.exit167

_ZN4ncnn3MatD2Ev.exit167:                         ; preds = %_ZN4ncnn3MatD2Ev.exit167.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit167.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0355 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit167.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24, !noalias !506
  %i.z = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !506
  %i.aa = mul i64 %i.z, %indvars.iv
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !506
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac ; 2 uses
  br i1 %i.p, label %.lr.ph345, label %.preheader

.preheader:                                       ; preds = %.lr.ph345, %_ZN4ncnn3MatD2Ev.exit167
  %.0155.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit167 ], [ %i.x, %.lr.ph345 ] ; 2 uses
  %.0153.lcssa = phi ptr [ %i.ad, %_ZN4ncnn3MatD2Ev.exit167 ], [ %i.cy, %.lr.ph345 ]
  %.1.lcssa = phi ptr [ %.0355, %_ZN4ncnn3MatD2Ev.exit167 ], [ %i.cz, %.lr.ph345 ] ; 2 uses
  %i.ae = icmp slt i32 %.0155.lcssa, %.fr378
  br i1 %i.ae, label %.lr.ph352, label %._crit_edge

.lr.ph345:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit167, %.lr.ph345
  %.1344 = phi ptr [ %i.cz, %.lr.ph345 ], [ %.0355, %_ZN4ncnn3MatD2Ev.exit167 ] ; 2 uses
  %.0153343 = phi ptr [ %i.cy, %.lr.ph345 ], [ %i.ad, %_ZN4ncnn3MatD2Ev.exit167 ] ; 4 uses
  %.0155342 = phi i32 [ %i.da, %.lr.ph345 ], [ 0, %_ZN4ncnn3MatD2Ev.exit167 ] ; 2 uses
  %i.af = load <8 x float>, ptr %.0153343, align 1, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0153343, i64 32
  %i.ah = load <8 x float>, ptr %i.ag, align 1, !tbaa !63 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0153343, i64 64
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !63 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.aj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.aj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ao = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.ap = shufflevector <8 x float> %i.ak, <8 x float> %i.ao, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.aq = shufflevector <8 x float> %i.an, <8 x float> %i.ao, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.ar = shufflevector <8 x float> %i.an, <8 x float> %i.am, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.as = load i32, ptr %i.q, align 4, !tbaa !52
  %i.at = sitofp fast i32 %i.as to float
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.aw = fadd fast <8 x float> %i.ap, splat (float 1.000000e+00)
  %i.ax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.av, <8 x float> splat (float -1.000000e+00))
  %i.ay = fmul fast <8 x float> %i.ax, splat (float 5.000000e-01)
  %i.az = fadd fast <8 x float> %i.av, splat (float -1.000000e+00)
  %i.ba = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ay, <8 x float> zeroinitializer)
  %i.bb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.ba)
  %i.bc = load i32, ptr %i.r, align 8, !tbaa !53
  %i.bd = sitofp fast i32 %i.bc to float
  %i.be = insertelement <8 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <8 x float> %i.be, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bg = fadd fast <8 x float> %i.aq, splat (float 1.000000e+00)
  %i.bh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bg, <8 x float> nofpclass(nan inf) %i.bf, <8 x float> splat (float -1.000000e+00))
  %i.bi = fmul fast <8 x float> %i.bh, splat (float 5.000000e-01)
  %i.bj = fadd fast <8 x float> %i.bf, splat (float -1.000000e+00)
  %i.bk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bi, <8 x float> zeroinitializer)
  %i.bl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bj, <8 x float> nofpclass(nan inf) %i.bk)
  %i.bm = load i32, ptr %i.s, align 4, !tbaa !55
  %i.bn = sitofp fast i32 %i.bm to float
  %i.bo = insertelement <8 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <8 x float> %i.bo, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bq = fadd fast <8 x float> %i.ar, splat (float 1.000000e+00)
  %i.br = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bq, <8 x float> nofpclass(nan inf) %i.bp, <8 x float> splat (float -1.000000e+00))
  %i.bs = fmul fast <8 x float> %i.br, splat (float 5.000000e-01)
  %i.bt = fadd fast <8 x float> %i.bp, splat (float -1.000000e+00)
  %i.bu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bs, <8 x float> zeroinitializer)
  %i.bv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bt, <8 x float> nofpclass(nan inf) %i.bu)
  %i.bw = fadd fast <8 x float> %i.bb, splat (float 5.000000e-01)
  %i.bx = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bw, i32 1) ; 3 uses
  %i.by = fadd fast <8 x float> %i.bl, splat (float 5.000000e-01)
  %i.bz = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.by, i32 1) ; 3 uses
  %i.ca = fadd fast <8 x float> %i.bv, splat (float 5.000000e-01)
  %i.cb = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ca, i32 1) ; 3 uses
  %i.cc = fcmp fast ogt <8 x float> %i.bx, splat (float -1.000000e+00)
  %i.cd = fcmp fast ogt <8 x float> %i.av, %i.bx
  %i.ce = and <8 x i1> %i.cc, %i.cd
  %i.cf = fcmp fast ogt <8 x float> %i.bz, splat (float -1.000000e+00)
  %i.cg = fcmp fast ogt <8 x float> %i.bf, %i.bz
  %i.ch = and <8 x i1> %i.cf, %i.cg
  %i.ci = and <8 x i1> %i.ce, %i.ch
  %i.cj = fcmp fast ogt <8 x float> %i.cb, splat (float -1.000000e+00)
  %i.ck = fcmp fast ogt <8 x float> %i.bp, %i.cb
  %i.cl = and <8 x i1> %i.cj, %i.ck
  %i.cm = and <8 x i1> %i.ci, %i.cl
  %i.cn = fmul fast <8 x float> %i.bf, %i.av
  %i.co = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bz, <8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.bx)
  %i.cp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cn, <8 x float> nofpclass(nan inf) %i.cb, <8 x float> nofpclass(nan inf) %i.co)
  %i.cq = load i32, ptr %i.t, align 8, !tbaa !13
  %i.cr = sitofp fast i32 %i.cq to float
  %i.cs = insertelement <8 x float> poison, float %i.cr, i64 0
  %i.ct = shufflevector <8 x float> %i.cs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cu = fmul fast <8 x float> %i.ct, %i.cp
  %i.cv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cu)
  %i.cw = bitcast <8 x i32> %i.cv to <8 x float>
  %i.cx = select <8 x i1> %i.cm, <8 x float> %i.cw, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.cx, ptr %.1344, align 1, !tbaa !63
  %i.cy = getelementptr inbounds nuw i8, ptr %.0153343, i64 96 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.1344, i64 32 ; 2 uses
  %i.da = add nuw nsw i32 %.0155342, 24
  %i.db = add nuw nsw i32 %.0155342, 47
  %i.dc = icmp slt i32 %i.db, %.fr378
  br i1 %i.dc, label %.lr.ph345, label %.preheader, !llvm.loop !509

.lr.ph352:                                        ; preds = %.preheader, %bb.b
  %.2351 = phi ptr [ %i.ex, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1154350 = phi ptr [ %i.ew, %bb.b ], [ %.0153.lcssa, %.preheader ] ; 3 uses
  %.1156349 = phi i32 [ %i.ey, %bb.b ], [ %.0155.lcssa, %.preheader ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.1154350, i64 8
  %i.de = load float, ptr %i.dd, align 4, !tbaa !66
  %i.df = load i32, ptr %i.s, align 4, !tbaa !55  ; 2 uses
  %i.dg = sitofp fast i32 %i.df to float          ; 2 uses
  %i.dh = fmul fast float %i.de, 5.000000e-01
  %i.di = fadd fast float %i.dh, 5.000000e-01
  %i.dj = fmul fast float %i.di, %i.dg
  %i.dk = fadd fast float %i.dj, -5.000000e-01
  %i.dl = fadd fast float %i.dg, -1.000000e+00
  %.sroa.speculated4.i199 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.dk, float 0.000000e+00)
  %.sroa.speculated.i200 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i199, float %i.dl)
  %i.dm = load <2 x float>, ptr %.1154350, align 4, !tbaa !66
  %i.dn = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 4 uses
  %i.do = sitofp <2 x i32> %i.dn to <2 x float>   ; 2 uses
  %i.dp = fmul fast <2 x float> %i.dm, splat (float 5.000000e-01)
  %i.dq = fadd fast <2 x float> %i.dp, splat (float 5.000000e-01)
  %i.dr = fmul fast <2 x float> %i.dq, %i.do
  %i.ds = fadd fast <2 x float> %i.dr, splat (float -5.000000e-01)
  %i.dt = fadd fast <2 x float> %i.do, splat (float -1.000000e+00)
  %i.du = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ds, <2 x float> zeroinitializer)
  %i.dv = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.du, <2 x float> %i.dt)
  %i.dw = fadd fast <2 x float> %i.dv, splat (float 5.000000e-01)
  %i.dx = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.dw)
  %i.dy = fptosi <2 x float> %i.dx to <2 x i32>   ; 3 uses
  %i.dz = fadd fast float %.sroa.speculated.i200, 5.000000e-01
  %i.ea = tail call fast float @llvm.floor.f32(float %i.dz)
  %i.eb = fptosi float %i.ea to i32               ; 3 uses
  %i.ec = extractelement <2 x i32> %i.dy, i64 0   ; 2 uses
  %i.ed = extractelement <2 x i32> %i.dy, i64 1   ; 2 uses
  %i.ee = or i32 %i.ed, %i.ec
  %i.ef = icmp sgt i32 %i.ee, -1
  %i.eg = icmp sgt <2 x i32> %i.dn, %i.dy         ; 2 uses
  %i.eh = extractelement <2 x i1> %i.eg, i64 0
  %i.ei = and i1 %i.eh, %i.ef
  %i.ej = extractelement <2 x i1> %i.eg, i64 1
  %i.ek = and i1 %i.ej, %i.ei
  %i.el = icmp sgt i32 %i.eb, -1
  %i.em = and i1 %i.el, %i.ek
  %i.en = icmp sgt i32 %i.df, %i.eb
  %i.eo = and i1 %i.en, %i.em
  br i1 %i.eo, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph352
  %i.ep = extractelement <2 x i32> %i.dn, i64 1
  %i.eq = mul i32 %i.ep, %i.eb
  %reass.add322 = add i32 %i.eq, %i.ed
  %i.er = extractelement <2 x i32> %i.dn, i64 0
  %reass.mul323 = mul i32 %reass.add322, %i.er
  %i.es = add i32 %reass.mul323, %i.ec
  %i.et = load i32, ptr %i.t, align 8, !tbaa !13
  %i.eu = mul nsw i32 %i.et, %i.es
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph352, %bb.a
  %i.ev = phi i32 [ %i.eu, %bb.a ], [ -1, %.lr.ph352 ]
  store i32 %i.ev, ptr %.2351, align 4, !tbaa !29
  %i.ew = getelementptr inbounds nuw i8, ptr %.1154350, i64 12
  %i.ex = getelementptr inbounds nuw i8, ptr %.2351, i64 4 ; 2 uses
  %i.ey = add nuw nsw i32 %.1156349, 3            ; 2 uses
  %i.ez = icmp slt i32 %i.ey, %.fr378
  br i1 %i.ez, label %.lr.ph352, label %._crit_edge, !llvm.loop !510

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.ex, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fa = load i32, ptr %i.k, align 8, !tbaa !18
  %i.fb = sext i32 %i.fa to i64
  %i.fc = icmp slt i64 %indvars.iv.next, %i.fb
  br i1 %i.fc, label %_ZN4ncnn3MatD2Ev.exit167, label %.loopexit, !llvm.loop !511

_ZN4ncnn3MatD2Ev.exit166:                         ; preds = %_ZN4ncnn3MatD2Ev.exit168
  %i.fd = load ptr, ptr %1, align 8, !tbaa !24, !noalias !512 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !21, !noalias !515 ; 2 uses
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !20, !noalias !515 ; 2 uses
  %i.fi = mul i64 %i.fh, %i.fg
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fi ; 2 uses
  %i.fk = shl i64 %i.fg, 1
  %i.fl = mul i64 %i.fk, %i.fh
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fl ; 2 uses
  %i.fn = icmp sgt i32 %.fr378, 7
  br i1 %i.fn, label %.lr.ph, label %.preheader325

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit166
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader325.loopexit:                           ; preds = %bb.c
  %i.fs = and i32 %.fr378, 2147483640
end_hunk_6
begin_hunk_7_@_ZN4ncnn34gridsample_3d_nearest_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit168
  %.0163.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit166 ], [ %i.fs, %.preheader325.loopexit ] ; 2 uses
  %.0161.lcssa = phi ptr [ %i.fm, %_ZN4ncnn3MatD2Ev.exit166 ], [ %i.ii, %.preheader325.loopexit ]
  %.0159.lcssa = phi ptr [ %i.fj, %_ZN4ncnn3MatD2Ev.exit166 ], [ %i.ih, %.preheader325.loopexit ]
  %.0157.lcssa = phi ptr [ %i.fd, %_ZN4ncnn3MatD2Ev.exit166 ], [ %i.ig, %.preheader325.loopexit ]
  %.3.lcssa = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit166 ], [ %i.ij, %.preheader325.loopexit ]
  %i.ft = icmp slt i32 %.0163.lcssa, %.fr378
  br i1 %i.ft, label %.lr.ph341, label %.loopexit

.lr.ph341:                                        ; preds = %.preheader325
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3331 = phi ptr [ %i.i, %.lr.ph ], [ %i.ij, %bb.c ] ; 2 uses
  %.0157330 = phi ptr [ %i.fd, %.lr.ph ], [ %i.ig, %bb.c ] ; 2 uses
  %.0159329 = phi ptr [ %i.fj, %.lr.ph ], [ %i.ih, %bb.c ] ; 2 uses
  %.0161328 = phi ptr [ %i.fm, %.lr.ph ], [ %i.ii, %bb.c ] ; 2 uses
  %.0163327 = phi i32 [ 0, %.lr.ph ], [ %i.ik, %bb.c ]
  %i.fx = load <8 x float>, ptr %.0157330, align 1, !tbaa !63
  %i.fy = load <8 x float>, ptr %.0159329, align 1, !tbaa !63
  %i.fz = load <8 x float>, ptr %.0161328, align 1, !tbaa !63
  %i.ga = load i32, ptr %i.fo, align 4, !tbaa !52
  %i.gb = sitofp fast i32 %i.ga to float
  %i.gc = insertelement <8 x float> poison, float %i.gb, i64 0
  %i.gd = shufflevector <8 x float> %i.gc, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.ge = fadd fast <8 x float> %i.fx, splat (float 1.000000e+00)
  %i.gf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ge, <8 x float> nofpclass(nan inf) %i.gd, <8 x float> splat (float -1.000000e+00))
  %i.gg = fmul fast <8 x float> %i.gf, splat (float 5.000000e-01)
  %i.gh = fadd fast <8 x float> %i.gd, splat (float -1.000000e+00)
  %i.gi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gg, <8 x float> zeroinitializer)
  %i.gj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gh, <8 x float> nofpclass(nan inf) %i.gi)
  %i.gk = load i32, ptr %i.fp, align 8, !tbaa !53
  %i.gl = sitofp fast i32 %i.gk to float
  %i.gm = insertelement <8 x float> poison, float %i.gl, i64 0
  %i.gn = shufflevector <8 x float> %i.gm, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.go = fadd fast <8 x float> %i.fy, splat (float 1.000000e+00)
  %i.gp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.go, <8 x float> nofpclass(nan inf) %i.gn, <8 x float> splat (float -1.000000e+00))
  %i.gq = fmul fast <8 x float> %i.gp, splat (float 5.000000e-01)
  %i.gr = fadd fast <8 x float> %i.gn, splat (float -1.000000e+00)
  %i.gs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gq, <8 x float> zeroinitializer)
  %i.gt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gr, <8 x float> nofpclass(nan inf) %i.gs)
  %i.gu = load i32, ptr %i.fq, align 4, !tbaa !55
  %i.gv = sitofp fast i32 %i.gu to float
  %i.gw = insertelement <8 x float> poison, float %i.gv, i64 0
  %i.gx = shufflevector <8 x float> %i.gw, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.gy = fadd fast <8 x float> %i.fz, splat (float 1.000000e+00)
  %i.gz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gy, <8 x float> nofpclass(nan inf) %i.gx, <8 x float> splat (float -1.000000e+00))
  %i.ha = fmul fast <8 x float> %i.gz, splat (float 5.000000e-01)
  %i.hb = fadd fast <8 x float> %i.gx, splat (float -1.000000e+00)
  %i.hc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ha, <8 x float> zeroinitializer)
  %i.hd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hb, <8 x float> nofpclass(nan inf) %i.hc)
  %i.he = fadd fast <8 x float> %i.gj, splat (float 5.000000e-01)
  %i.hf = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.he, i32 1) ; 3 uses
  %i.hg = fadd fast <8 x float> %i.gt, splat (float 5.000000e-01)
  %i.hh = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hg, i32 1) ; 3 uses
  %i.hi = fadd fast <8 x float> %i.hd, splat (float 5.000000e-01)
  %i.hj = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hi, i32 1) ; 3 uses
  %i.hk = fcmp fast ogt <8 x float> %i.hf, splat (float -1.000000e+00)
  %i.hl = fcmp fast ogt <8 x float> %i.gd, %i.hf
  %i.hm = and <8 x i1> %i.hk, %i.hl
  %i.hn = fcmp fast ogt <8 x float> %i.hh, splat (float -1.000000e+00)
  %i.ho = fcmp fast ogt <8 x float> %i.gn, %i.hh
  %i.hp = and <8 x i1> %i.hn, %i.ho
  %i.hq = and <8 x i1> %i.hm, %i.hp
  %i.hr = fcmp fast ogt <8 x float> %i.hj, splat (float -1.000000e+00)
  %i.hs = fcmp fast ogt <8 x float> %i.gx, %i.hj
  %i.ht = and <8 x i1> %i.hr, %i.hs
  %i.hu = and <8 x i1> %i.hq, %i.ht
  %i.hv = fmul fast <8 x float> %i.gn, %i.gd
  %i.hw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hh, <8 x float> nofpclass(nan inf) %i.gd, <8 x float> nofpclass(nan inf) %i.hf)
  %i.hx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hv, <8 x float> nofpclass(nan inf) %i.hj, <8 x float> nofpclass(nan inf) %i.hw)
  %i.hy = load i32, ptr %i.fr, align 8, !tbaa !13
  %i.hz = sitofp fast i32 %i.hy to float
  %i.ia = insertelement <8 x float> poison, float %i.hz, i64 0
  %i.ib = shufflevector <8 x float> %i.ia, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ic = fmul fast <8 x float> %i.ib, %i.hx
  %i.id = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ic)
  %i.ie = bitcast <8 x i32> %i.id to <8 x float>
  %i.if = select <8 x i1> %i.hu, <8 x float> %i.ie, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.if, ptr %.3331, align 1, !tbaa !63
  %i.ig = getelementptr inbounds nuw i8, ptr %.0157330, i64 32 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.0159329, i64 32 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.0161328, i64 32 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.3331, i64 32 ; 2 uses
  %i.ik = add nuw nsw i32 %.0163327, 8            ; 2 uses
  %i.il = or disjoint i32 %i.ik, 7
  %i.im = icmp slt i32 %i.il, %.fr378
  br i1 %i.im, label %bb.c, label %.preheader325.loopexit, !llvm.loop !518

bb.d:                                             ; preds = %.lr.ph341, %bb.f
  %.4340 = phi ptr [ %.3.lcssa, %.lr.ph341 ], [ %i.kl, %bb.f ] ; 2 uses
  %.1158339 = phi ptr [ %.0157.lcssa, %.lr.ph341 ], [ %i.ki, %bb.f ] ; 2 uses
  %.1160338 = phi ptr [ %.0159.lcssa, %.lr.ph341 ], [ %i.kj, %bb.f ] ; 2 uses
  %.1162337 = phi ptr [ %.0161.lcssa, %.lr.ph341 ], [ %i.kk, %bb.f ] ; 2 uses
  %.1164336 = phi i32 [ %.0163.lcssa, %.lr.ph341 ], [ %i.km, %bb.f ]
  %i.in = load float, ptr %.1158339, align 4, !tbaa !66
  %i.io = load float, ptr %.1160338, align 4, !tbaa !66
  %i.ip = load float, ptr %.1162337, align 4, !tbaa !66
  %i.iq = load i32, ptr %i.fv, align 4, !tbaa !55 ; 2 uses
  %i.ir = sitofp fast i32 %i.iq to float          ; 2 uses
  %i.is = fmul fast float %i.ip, 5.000000e-01
  %i.it = fadd fast float %i.is, 5.000000e-01
  %i.iu = fmul fast float %i.it, %i.ir
  %i.iv = fadd fast float %i.iu, -5.000000e-01
  %i.iw = fadd fast float %i.ir, -1.000000e+00
  %.sroa.speculated4.i205 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.iv, float 0.000000e+00)
  %.sroa.speculated.i206 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i205, float %i.iw)
  %i.ix = load <2 x i32>, ptr %i.fu, align 4, !tbaa !29 ; 4 uses
  %i.iy = sitofp <2 x i32> %i.ix to <2 x float>   ; 2 uses
  %i.iz = insertelement <2 x float> poison, float %i.in, i64 0
  %i.ja = insertelement <2 x float> %i.iz, float %i.io, i64 1
  %i.jb = fmul fast <2 x float> %i.ja, splat (float 5.000000e-01)
  %i.jc = fadd fast <2 x float> %i.jb, splat (float 5.000000e-01)
  %i.jd = fmul fast <2 x float> %i.jc, %i.iy
  %i.je = fadd fast <2 x float> %i.jd, splat (float -5.000000e-01)
  %i.jf = fadd fast <2 x float> %i.iy, splat (float -1.000000e+00)
  %i.jg = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.je, <2 x float> zeroinitializer)
  %i.jh = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.jg, <2 x float> %i.jf)
  %i.ji = fadd fast <2 x float> %i.jh, splat (float 5.000000e-01)
  %i.jj = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ji)
  %i.jk = fptosi <2 x float> %i.jj to <2 x i32>   ; 3 uses
  %i.jl = fadd fast float %.sroa.speculated.i206, 5.000000e-01
  %i.jm = tail call fast float @llvm.floor.f32(float %i.jl)
  %i.jn = fptosi float %i.jm to i32               ; 3 uses
  %i.jo = extractelement <2 x i32> %i.jk, i64 0   ; 2 uses
  %i.jp = extractelement <2 x i32> %i.jk, i64 1   ; 2 uses
  %i.jq = or i32 %i.jp, %i.jo
  %i.jr = icmp sgt i32 %i.jq, -1
  %i.js = icmp sgt <2 x i32> %i.ix, %i.jk         ; 2 uses
  %i.jt = extractelement <2 x i1> %i.js, i64 0
  %i.ju = and i1 %i.jt, %i.jr
  %i.jv = extractelement <2 x i1> %i.js, i64 1
  %i.jw = and i1 %i.jv, %i.ju
  %i.jx = icmp sgt i32 %i.jn, -1
  %i.jy = and i1 %i.jx, %i.jw
  %i.jz = icmp sgt i32 %i.iq, %i.jn
  %i.ka = and i1 %i.jz, %i.jy
  br i1 %i.ka, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.kb = extractelement <2 x i32> %i.ix, i64 1
  %i.kc = mul i32 %i.kb, %i.jn
  %reass.add = add i32 %i.kc, %i.jp
  %i.kd = extractelement <2 x i32> %i.ix, i64 0
  %reass.mul = mul i32 %reass.add, %i.kd
  %i.ke = add i32 %reass.mul, %i.jo
  %i.kf = load i32, ptr %i.fw, align 8, !tbaa !13
  %i.kg = mul nsw i32 %i.kf, %i.ke
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.kh = phi i32 [ %i.kg, %bb.e ], [ -1, %bb.d ]
  store i32 %i.kh, ptr %.4340, align 4, !tbaa !29
  %i.ki = getelementptr inbounds nuw i8, ptr %.1158339, i64 4
  %i.kj = getelementptr inbounds nuw i8, ptr %.1160338, i64 4
  %i.kk = getelementptr inbounds nuw i8, ptr %.1162337, i64 4
  %i.kl = getelementptr inbounds nuw i8, ptr %.4340, i64 4
  %i.km = add nuw nsw i32 %.1164336, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.km, %.fr378
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !519

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader325, %.preheader324
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_3d_nearest_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit168:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = mul i32 %i.e, %i.g
  %.fr378 = freeze i32 %i.h                       ; 10 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !24, !noalias !520 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader324, label %_ZN4ncnn3MatD2Ev.exit166

.preheader324:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit168
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit167.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit167.lr.ph:                   ; preds = %.preheader324
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %.fr378, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = add i32 %.fr378, -24                     ; 2 uses
  %i.v = urem i32 %i.u, 24
  %i.w = sub nuw i32 %i.u, %i.v
  %i.x = add nuw nsw i32 %i.w, 24
  br label %_ZN4ncnn3MatD2Ev.exit167

_ZN4ncnn3MatD2Ev.exit167:                         ; preds = %_ZN4ncnn3MatD2Ev.exit167.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit167.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0355 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit167.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24, !noalias !523
  %i.z = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !523
  %i.aa = mul i64 %i.z, %indvars.iv
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !523
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac ; 2 uses
  br i1 %i.p, label %.lr.ph345, label %.preheader

.preheader:                                       ; preds = %.lr.ph345, %_ZN4ncnn3MatD2Ev.exit167
  %.0155.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit167 ], [ %i.x, %.lr.ph345 ] ; 2 uses
  %.0153.lcssa = phi ptr [ %i.ad, %_ZN4ncnn3MatD2Ev.exit167 ], [ %i.cy, %.lr.ph345 ]
  %.1.lcssa = phi ptr [ %.0355, %_ZN4ncnn3MatD2Ev.exit167 ], [ %i.cz, %.lr.ph345 ] ; 2 uses
  %i.ae = icmp slt i32 %.0155.lcssa, %.fr378
  br i1 %i.ae, label %.lr.ph352, label %._crit_edge

.lr.ph345:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit167, %.lr.ph345
  %.1344 = phi ptr [ %i.cz, %.lr.ph345 ], [ %.0355, %_ZN4ncnn3MatD2Ev.exit167 ] ; 2 uses
  %.0153343 = phi ptr [ %i.cy, %.lr.ph345 ], [ %i.ad, %_ZN4ncnn3MatD2Ev.exit167 ] ; 4 uses
  %.0155342 = phi i32 [ %i.da, %.lr.ph345 ], [ 0, %_ZN4ncnn3MatD2Ev.exit167 ] ; 2 uses
  %i.af = load <8 x float>, ptr %.0153343, align 1, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0153343, i64 32
  %i.ah = load <8 x float>, ptr %i.ag, align 1, !tbaa !63 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0153343, i64 64
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !63 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.aj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.aj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ao = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.ap = shufflevector <8 x float> %i.ak, <8 x float> %i.ao, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.aq = shufflevector <8 x float> %i.an, <8 x float> %i.ao, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.ar = shufflevector <8 x float> %i.an, <8 x float> %i.am, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.as = load i32, ptr %i.q, align 4, !tbaa !52
  %i.at = sitofp fast i32 %i.as to float
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.aw = fmul fast <8 x float> %i.ap, splat (float 5.000000e-01)
  %i.ax = fadd fast <8 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fadd fast <8 x float> %i.av, splat (float -1.000000e+00) ; 2 uses
  %i.az = fmul fast <8 x float> %i.ax, %i.ay
  %i.ba = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.az, <8 x float> zeroinitializer)
  %i.bb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ay, <8 x float> nofpclass(nan inf) %i.ba)
  %i.bc = load i32, ptr %i.r, align 8, !tbaa !53
  %i.bd = sitofp fast i32 %i.bc to float
  %i.be = insertelement <8 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <8 x float> %i.be, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bg = fmul fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.bh = fadd fast <8 x float> %i.bg, splat (float 5.000000e-01)
  %i.bi = fadd fast <8 x float> %i.bf, splat (float -1.000000e+00) ; 2 uses
  %i.bj = fmul fast <8 x float> %i.bi, %i.bh
  %i.bk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bj, <8 x float> zeroinitializer)
  %i.bl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bi, <8 x float> nofpclass(nan inf) %i.bk)
  %i.bm = load i32, ptr %i.s, align 4, !tbaa !55
  %i.bn = sitofp fast i32 %i.bm to float
  %i.bo = insertelement <8 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <8 x float> %i.bo, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bq = fmul fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.br = fadd fast <8 x float> %i.bq, splat (float 5.000000e-01)
  %i.bs = fadd fast <8 x float> %i.bp, splat (float -1.000000e+00) ; 2 uses
  %i.bt = fmul fast <8 x float> %i.bs, %i.br
  %i.bu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bt, <8 x float> zeroinitializer)
  %i.bv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bs, <8 x float> nofpclass(nan inf) %i.bu)
  %i.bw = fadd fast <8 x float> %i.bb, splat (float 5.000000e-01)
  %i.bx = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bw, i32 1) ; 3 uses
  %i.by = fadd fast <8 x float> %i.bl, splat (float 5.000000e-01)
  %i.bz = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.by, i32 1) ; 3 uses
  %i.ca = fadd fast <8 x float> %i.bv, splat (float 5.000000e-01)
  %i.cb = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ca, i32 1) ; 3 uses
  %i.cc = fcmp fast ogt <8 x float> %i.bx, splat (float -1.000000e+00)
  %i.cd = fcmp fast ogt <8 x float> %i.av, %i.bx
  %i.ce = and <8 x i1> %i.cc, %i.cd
  %i.cf = fcmp fast ogt <8 x float> %i.bz, splat (float -1.000000e+00)
  %i.cg = fcmp fast ogt <8 x float> %i.bf, %i.bz
  %i.ch = and <8 x i1> %i.cf, %i.cg
  %i.ci = and <8 x i1> %i.ce, %i.ch
  %i.cj = fcmp fast ogt <8 x float> %i.cb, splat (float -1.000000e+00)
  %i.ck = fcmp fast ogt <8 x float> %i.bp, %i.cb
  %i.cl = and <8 x i1> %i.cj, %i.ck
  %i.cm = and <8 x i1> %i.ci, %i.cl
  %i.cn = fmul fast <8 x float> %i.bf, %i.av
  %i.co = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bz, <8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.bx)
  %i.cp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cn, <8 x float> nofpclass(nan inf) %i.cb, <8 x float> nofpclass(nan inf) %i.co)
  %i.cq = load i32, ptr %i.t, align 8, !tbaa !13
  %i.cr = sitofp fast i32 %i.cq to float
  %i.cs = insertelement <8 x float> poison, float %i.cr, i64 0
  %i.ct = shufflevector <8 x float> %i.cs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cu = fmul fast <8 x float> %i.ct, %i.cp
  %i.cv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cu)
  %i.cw = bitcast <8 x i32> %i.cv to <8 x float>
  %i.cx = select <8 x i1> %i.cm, <8 x float> %i.cw, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.cx, ptr %.1344, align 1, !tbaa !63
  %i.cy = getelementptr inbounds nuw i8, ptr %.0153343, i64 96 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.1344, i64 32 ; 2 uses
  %i.da = add nuw nsw i32 %.0155342, 24
  %i.db = add nuw nsw i32 %.0155342, 47
  %i.dc = icmp slt i32 %i.db, %.fr378
  br i1 %i.dc, label %.lr.ph345, label %.preheader, !llvm.loop !526

.lr.ph352:                                        ; preds = %.preheader, %bb.b
  %.2351 = phi ptr [ %i.ez, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1154350 = phi ptr [ %i.ey, %bb.b ], [ %.0153.lcssa, %.preheader ] ; 3 uses
  %.1156349 = phi i32 [ %i.fa, %bb.b ], [ %.0155.lcssa, %.preheader ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.1154350, i64 8
  %i.de = load float, ptr %i.dd, align 4, !tbaa !66
  %i.df = load i32, ptr %i.s, align 4, !tbaa !55  ; 3 uses
  %i.dg = fmul fast float %i.de, 5.000000e-01
  %i.dh = fadd fast float %i.dg, 5.000000e-01
  %i.di = add nsw i32 %i.df, -1
  %i.dj = sitofp fast i32 %i.di to float
  %i.dk = fmul fast float %i.dh, %i.dj
  %i.dl = sitofp fast i32 %i.df to float
  %i.dm = fadd fast float %i.dl, -1.000000e+00
  %.sroa.speculated4.i199 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.dk, float 0.000000e+00)
  %.sroa.speculated.i200 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i199, float %i.dm)
  %i.dn = load <2 x float>, ptr %.1154350, align 4, !tbaa !66
  %i.do = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 5 uses
  %i.dp = fmul fast <2 x float> %i.dn, splat (float 5.000000e-01)
  %i.dq = fadd fast <2 x float> %i.dp, splat (float 5.000000e-01)
  %i.dr = add nsw <2 x i32> %i.do, splat (i32 -1)
  %i.ds = sitofp <2 x i32> %i.dr to <2 x float>
  %i.dt = fmul fast <2 x float> %i.dq, %i.ds
  %i.du = sitofp <2 x i32> %i.do to <2 x float>
  %i.dv = fadd fast <2 x float> %i.du, splat (float -1.000000e+00)
  %i.dw = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dt, <2 x float> zeroinitializer)
  %i.dx = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.dw, <2 x float> %i.dv)
  %i.dy = fadd fast <2 x float> %i.dx, splat (float 5.000000e-01)
  %i.dz = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.dy)
  %i.ea = fptosi <2 x float> %i.dz to <2 x i32>   ; 3 uses
  %i.eb = fadd fast float %.sroa.speculated.i200, 5.000000e-01
  %i.ec = tail call fast float @llvm.floor.f32(float %i.eb)
  %i.ed = fptosi float %i.ec to i32               ; 3 uses
  %i.ee = extractelement <2 x i32> %i.ea, i64 0   ; 2 uses
  %i.ef = extractelement <2 x i32> %i.ea, i64 1   ; 2 uses
  %i.eg = or i32 %i.ef, %i.ee
  %i.eh = icmp sgt i32 %i.eg, -1
  %i.ei = icmp sgt <2 x i32> %i.do, %i.ea         ; 2 uses
  %i.ej = extractelement <2 x i1> %i.ei, i64 0
  %i.ek = and i1 %i.ej, %i.eh
  %i.el = extractelement <2 x i1> %i.ei, i64 1
  %i.em = and i1 %i.el, %i.ek
  %i.en = icmp sgt i32 %i.ed, -1
  %i.eo = and i1 %i.en, %i.em
  %i.ep = icmp sgt i32 %i.df, %i.ed
  %i.eq = and i1 %i.ep, %i.eo
  br i1 %i.eq, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph352
  %i.er = extractelement <2 x i32> %i.do, i64 1
  %i.es = mul i32 %i.er, %i.ed
  %reass.add322 = add i32 %i.es, %i.ef
  %i.et = extractelement <2 x i32> %i.do, i64 0
  %reass.mul323 = mul i32 %reass.add322, %i.et
  %i.eu = add i32 %reass.mul323, %i.ee
  %i.ev = load i32, ptr %i.t, align 8, !tbaa !13
  %i.ew = mul nsw i32 %i.ev, %i.eu
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph352, %bb.a
  %i.ex = phi i32 [ %i.ew, %bb.a ], [ -1, %.lr.ph352 ]
  store i32 %i.ex, ptr %.2351, align 4, !tbaa !29
  %i.ey = getelementptr inbounds nuw i8, ptr %.1154350, i64 12
  %i.ez = getelementptr inbounds nuw i8, ptr %.2351, i64 4 ; 2 uses
  %i.fa = add nuw nsw i32 %.1156349, 3            ; 2 uses
  %i.fb = icmp slt i32 %i.fa, %.fr378
  br i1 %i.fb, label %.lr.ph352, label %._crit_edge, !llvm.loop !527

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.ez, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fc = load i32, ptr %i.k, align 8, !tbaa !18
  %i.fd = sext i32 %i.fc to i64
  %i.fe = icmp slt i64 %indvars.iv.next, %i.fd
  br i1 %i.fe, label %_ZN4ncnn3MatD2Ev.exit167, label %.loopexit, !llvm.loop !528

_ZN4ncnn3MatD2Ev.exit166:                         ; preds = %_ZN4ncnn3MatD2Ev.exit168
  %i.ff = load ptr, ptr %1, align 8, !tbaa !24, !noalias !529 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !21, !noalias !532 ; 2 uses
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !20, !noalias !532 ; 2 uses
  %i.fk = mul i64 %i.fj, %i.fi
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fk ; 2 uses
  %i.fm = shl i64 %i.fi, 1
  %i.fn = mul i64 %i.fm, %i.fj
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fn ; 2 uses
  %i.fp = icmp sgt i32 %.fr378, 7
  br i1 %i.fp, label %.lr.ph, label %.preheader325

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit166
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

end_hunk_7
begin_hunk_8_@_ZN4ncnn34gridsample_3d_nearest_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit168
  %.0159.lcssa = phi ptr [ %i.fl, %_ZN4ncnn3MatD2Ev.exit166 ], [ %i.ij, %.preheader325.loopexit ]
  %.0157.lcssa = phi ptr [ %i.ff, %_ZN4ncnn3MatD2Ev.exit166 ], [ %i.ii, %.preheader325.loopexit ]
  %.3.lcssa = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit166 ], [ %i.il, %.preheader325.loopexit ]
  %i.fv = icmp slt i32 %.0163.lcssa, %.fr378
  br i1 %i.fv, label %.lr.ph341, label %.loopexit

.lr.ph341:                                        ; preds = %.preheader325
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3331 = phi ptr [ %i.i, %.lr.ph ], [ %i.il, %bb.c ] ; 2 uses
  %.0157330 = phi ptr [ %i.ff, %.lr.ph ], [ %i.ii, %bb.c ] ; 2 uses
  %.0159329 = phi ptr [ %i.fl, %.lr.ph ], [ %i.ij, %bb.c ] ; 2 uses
  %.0161328 = phi ptr [ %i.fo, %.lr.ph ], [ %i.ik, %bb.c ] ; 2 uses
  %.0163327 = phi i32 [ 0, %.lr.ph ], [ %i.im, %bb.c ]
  %i.fz = load <8 x float>, ptr %.0157330, align 1, !tbaa !63
  %i.ga = load <8 x float>, ptr %.0159329, align 1, !tbaa !63
  %i.gb = load <8 x float>, ptr %.0161328, align 1, !tbaa !63
  %i.gc = load i32, ptr %i.fq, align 4, !tbaa !52
  %i.gd = sitofp fast i32 %i.gc to float
  %i.ge = insertelement <8 x float> poison, float %i.gd, i64 0
  %i.gf = shufflevector <8 x float> %i.ge, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.gg = fmul fast <8 x float> %i.fz, splat (float 5.000000e-01)
  %i.gh = fadd fast <8 x float> %i.gg, splat (float 5.000000e-01)
  %i.gi = fadd fast <8 x float> %i.gf, splat (float -1.000000e+00) ; 2 uses
  %i.gj = fmul fast <8 x float> %i.gi, %i.gh
  %i.gk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gj, <8 x float> zeroinitializer)
  %i.gl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gi, <8 x float> nofpclass(nan inf) %i.gk)
  %i.gm = load i32, ptr %i.fr, align 8, !tbaa !53
  %i.gn = sitofp fast i32 %i.gm to float
  %i.go = insertelement <8 x float> poison, float %i.gn, i64 0
  %i.gp = shufflevector <8 x float> %i.go, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.gq = fmul fast <8 x float> %i.ga, splat (float 5.000000e-01)
  %i.gr = fadd fast <8 x float> %i.gq, splat (float 5.000000e-01)
  %i.gs = fadd fast <8 x float> %i.gp, splat (float -1.000000e+00) ; 2 uses
  %i.gt = fmul fast <8 x float> %i.gs, %i.gr
  %i.gu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gt, <8 x float> zeroinitializer)
  %i.gv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gs, <8 x float> nofpclass(nan inf) %i.gu)
  %i.gw = load i32, ptr %i.fs, align 4, !tbaa !55
  %i.gx = sitofp fast i32 %i.gw to float
  %i.gy = insertelement <8 x float> poison, float %i.gx, i64 0
  %i.gz = shufflevector <8 x float> %i.gy, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ha = fmul fast <8 x float> %i.gb, splat (float 5.000000e-01)
  %i.hb = fadd fast <8 x float> %i.ha, splat (float 5.000000e-01)
  %i.hc = fadd fast <8 x float> %i.gz, splat (float -1.000000e+00) ; 2 uses
  %i.hd = fmul fast <8 x float> %i.hc, %i.hb
  %i.he = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hd, <8 x float> zeroinitializer)
  %i.hf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hc, <8 x float> nofpclass(nan inf) %i.he)
  %i.hg = fadd fast <8 x float> %i.gl, splat (float 5.000000e-01)
  %i.hh = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hg, i32 1) ; 3 uses
  %i.hi = fadd fast <8 x float> %i.gv, splat (float 5.000000e-01)
  %i.hj = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hi, i32 1) ; 3 uses
  %i.hk = fadd fast <8 x float> %i.hf, splat (float 5.000000e-01)
  %i.hl = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hk, i32 1) ; 3 uses
  %i.hm = fcmp fast ogt <8 x float> %i.hh, splat (float -1.000000e+00)
  %i.hn = fcmp fast ogt <8 x float> %i.gf, %i.hh
  %i.ho = and <8 x i1> %i.hm, %i.hn
  %i.hp = fcmp fast ogt <8 x float> %i.hj, splat (float -1.000000e+00)
  %i.hq = fcmp fast ogt <8 x float> %i.gp, %i.hj
  %i.hr = and <8 x i1> %i.hp, %i.hq
  %i.hs = and <8 x i1> %i.ho, %i.hr
  %i.ht = fcmp fast ogt <8 x float> %i.hl, splat (float -1.000000e+00)
  %i.hu = fcmp fast ogt <8 x float> %i.gz, %i.hl
  %i.hv = and <8 x i1> %i.ht, %i.hu
  %i.hw = and <8 x i1> %i.hs, %i.hv
  %i.hx = fmul fast <8 x float> %i.gp, %i.gf
  %i.hy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hj, <8 x float> nofpclass(nan inf) %i.gf, <8 x float> nofpclass(nan inf) %i.hh)
  %i.hz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hx, <8 x float> nofpclass(nan inf) %i.hl, <8 x float> nofpclass(nan inf) %i.hy)
  %i.ia = load i32, ptr %i.ft, align 8, !tbaa !13
  %i.ib = sitofp fast i32 %i.ia to float
  %i.ic = insertelement <8 x float> poison, float %i.ib, i64 0
  %i.id = shufflevector <8 x float> %i.ic, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ie = fmul fast <8 x float> %i.id, %i.hz
  %i.if = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ie)
  %i.ig = bitcast <8 x i32> %i.if to <8 x float>
  %i.ih = select <8 x i1> %i.hw, <8 x float> %i.ig, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.ih, ptr %.3331, align 1, !tbaa !63
  %i.ii = getelementptr inbounds nuw i8, ptr %.0157330, i64 32 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.0159329, i64 32 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.0161328, i64 32 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.3331, i64 32 ; 2 uses
  %i.im = add nuw nsw i32 %.0163327, 8            ; 2 uses
  %i.in = or disjoint i32 %i.im, 7
  %i.io = icmp slt i32 %i.in, %.fr378
  br i1 %i.io, label %bb.c, label %.preheader325.loopexit, !llvm.loop !535

bb.d:                                             ; preds = %.lr.ph341, %bb.f
  %.4340 = phi ptr [ %.3.lcssa, %.lr.ph341 ], [ %i.kp, %bb.f ] ; 2 uses
  %.1158339 = phi ptr [ %.0157.lcssa, %.lr.ph341 ], [ %i.km, %bb.f ] ; 2 uses
  %.1160338 = phi ptr [ %.0159.lcssa, %.lr.ph341 ], [ %i.kn, %bb.f ] ; 2 uses
  %.1162337 = phi ptr [ %.0161.lcssa, %.lr.ph341 ], [ %i.ko, %bb.f ] ; 2 uses
  %.1164336 = phi i32 [ %.0163.lcssa, %.lr.ph341 ], [ %i.kq, %bb.f ]
  %i.ip = load float, ptr %.1158339, align 4, !tbaa !66
  %i.iq = load float, ptr %.1160338, align 4, !tbaa !66
  %i.ir = load float, ptr %.1162337, align 4, !tbaa !66
  %i.is = load i32, ptr %i.fx, align 4, !tbaa !55 ; 3 uses
  %i.it = fmul fast float %i.ir, 5.000000e-01
  %i.iu = fadd fast float %i.it, 5.000000e-01
  %i.iv = add nsw i32 %i.is, -1
  %i.iw = sitofp fast i32 %i.iv to float
  %i.ix = fmul fast float %i.iu, %i.iw
  %i.iy = sitofp fast i32 %i.is to float
  %i.iz = fadd fast float %i.iy, -1.000000e+00
  %.sroa.speculated4.i205 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.ix, float 0.000000e+00)
  %.sroa.speculated.i206 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i205, float %i.iz)
  %i.ja = load <2 x i32>, ptr %i.fw, align 4, !tbaa !29 ; 5 uses
  %i.jb = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.jc = insertelement <2 x float> %i.jb, float %i.iq, i64 1
  %i.jd = fmul fast <2 x float> %i.jc, splat (float 5.000000e-01)
  %i.je = fadd fast <2 x float> %i.jd, splat (float 5.000000e-01)
  %i.jf = add nsw <2 x i32> %i.ja, splat (i32 -1)
  %i.jg = sitofp <2 x i32> %i.jf to <2 x float>
  %i.jh = fmul fast <2 x float> %i.je, %i.jg
  %i.ji = sitofp <2 x i32> %i.ja to <2 x float>
  %i.jj = fadd fast <2 x float> %i.ji, splat (float -1.000000e+00)
  %i.jk = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.jh, <2 x float> zeroinitializer)
  %i.jl = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.jk, <2 x float> %i.jj)
  %i.jm = fadd fast <2 x float> %i.jl, splat (float 5.000000e-01)
  %i.jn = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.jm)
  %i.jo = fptosi <2 x float> %i.jn to <2 x i32>   ; 3 uses
  %i.jp = fadd fast float %.sroa.speculated.i206, 5.000000e-01
  %i.jq = tail call fast float @llvm.floor.f32(float %i.jp)
  %i.jr = fptosi float %i.jq to i32               ; 3 uses
  %i.js = extractelement <2 x i32> %i.jo, i64 0   ; 2 uses
  %i.jt = extractelement <2 x i32> %i.jo, i64 1   ; 2 uses
  %i.ju = or i32 %i.jt, %i.js
  %i.jv = icmp sgt i32 %i.ju, -1
  %i.jw = icmp sgt <2 x i32> %i.ja, %i.jo         ; 2 uses
  %i.jx = extractelement <2 x i1> %i.jw, i64 0
  %i.jy = and i1 %i.jx, %i.jv
  %i.jz = extractelement <2 x i1> %i.jw, i64 1
  %i.ka = and i1 %i.jz, %i.jy
  %i.kb = icmp sgt i32 %i.jr, -1
  %i.kc = and i1 %i.kb, %i.ka
  %i.kd = icmp sgt i32 %i.is, %i.jr
  %i.ke = and i1 %i.kd, %i.kc
  br i1 %i.ke, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.kf = extractelement <2 x i32> %i.ja, i64 1
  %i.kg = mul i32 %i.kf, %i.jr
  %reass.add = add i32 %i.kg, %i.jt
  %i.kh = extractelement <2 x i32> %i.ja, i64 0
  %reass.mul = mul i32 %reass.add, %i.kh
  %i.ki = add i32 %reass.mul, %i.js
  %i.kj = load i32, ptr %i.fy, align 8, !tbaa !13
  %i.kk = mul nsw i32 %i.kj, %i.ki
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.kl = phi i32 [ %i.kk, %bb.e ], [ -1, %bb.d ]
  store i32 %i.kl, ptr %.4340, align 4, !tbaa !29
  %i.km = getelementptr inbounds nuw i8, ptr %.1158339, i64 4
  %i.kn = getelementptr inbounds nuw i8, ptr %.1160338, i64 4
  %i.ko = getelementptr inbounds nuw i8, ptr %.1162337, i64 4
  %i.kp = getelementptr inbounds nuw i8, ptr %.4340, i64 4
  %i.kq = add nuw nsw i32 %.1164336, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.kq, %.fr378
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !536

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader325, %.preheader324
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_3d_nearest_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit168:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = mul i32 %i.e, %i.g
  %.fr389 = freeze i32 %i.h                       ; 10 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !24, !noalias !537 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader335, label %_ZN4ncnn3MatD2Ev.exit166

.preheader335:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit168
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit167.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit167.lr.ph:                   ; preds = %.preheader335
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %.fr389, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = add i32 %.fr389, -24                     ; 2 uses
  %i.v = urem i32 %i.u, 24
  %i.w = sub nuw i32 %i.u, %i.v
  %i.x = add nuw nsw i32 %i.w, 24
  br label %_ZN4ncnn3MatD2Ev.exit167

_ZN4ncnn3MatD2Ev.exit167:                         ; preds = %_ZN4ncnn3MatD2Ev.exit167.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit167.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0366 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit167.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24, !noalias !540
  %i.z = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !540
  %i.aa = mul i64 %i.z, %indvars.iv
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !540
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac ; 2 uses
  br i1 %i.p, label %.lr.ph356, label %.preheader

.preheader:                                       ; preds = %.lr.ph356, %_ZN4ncnn3MatD2Ev.exit167
  %.0155.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit167 ], [ %i.x, %.lr.ph356 ] ; 2 uses
  %.0153.lcssa = phi ptr [ %i.ad, %_ZN4ncnn3MatD2Ev.exit167 ], [ %i.dq, %.lr.ph356 ]
  %.1.lcssa = phi ptr [ %.0366, %_ZN4ncnn3MatD2Ev.exit167 ], [ %i.dr, %.lr.ph356 ] ; 2 uses
  %i.ae = icmp slt i32 %.0155.lcssa, %.fr389
  br i1 %i.ae, label %.lr.ph363, label %._crit_edge

.lr.ph356:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit167, %.lr.ph356
  %.1355 = phi ptr [ %i.dr, %.lr.ph356 ], [ %.0366, %_ZN4ncnn3MatD2Ev.exit167 ] ; 2 uses
  %.0153354 = phi ptr [ %i.dq, %.lr.ph356 ], [ %i.ad, %_ZN4ncnn3MatD2Ev.exit167 ] ; 4 uses
  %.0155353 = phi i32 [ %i.ds, %.lr.ph356 ], [ 0, %_ZN4ncnn3MatD2Ev.exit167 ] ; 2 uses
  %i.af = load <8 x float>, ptr %.0153354, align 1, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0153354, i64 32
  %i.ah = load <8 x float>, ptr %i.ag, align 1, !tbaa !63 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0153354, i64 64
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !63 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.aj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.aj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ao = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.ap = shufflevector <8 x float> %i.ak, <8 x float> %i.ao, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.aq = shufflevector <8 x float> %i.an, <8 x float> %i.ao, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.ar = shufflevector <8 x float> %i.an, <8 x float> %i.am, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.as = load i32, ptr %i.q, align 4, !tbaa !52
  %i.at = sitofp fast i32 %i.as to float
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.aw = fadd fast <8 x float> %i.ap, splat (float 1.000000e+00)
  %i.ax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.av, <8 x float> splat (float -1.000000e+00))
  %i.ay = fmul fast <8 x float> %i.ax, splat (float 5.000000e-01)
  %i.az = fadd fast <8 x float> %i.av, splat (float -1.000000e+00)
  %i.ba = fadd fast <8 x float> %i.ay, splat (float 5.000000e-01)
  %i.bb = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ba)
  %i.bc = fsub fast <8 x float> %i.bb, %i.av
  %i.bd = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bc)
  %i.be = fadd fast <8 x float> %i.av, splat (float -5.000000e-01)
  %i.bf = fsub fast <8 x float> %i.be, %i.bd
  %i.bg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bf, <8 x float> zeroinitializer)
  %i.bh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.bg)
  %i.bi = load i32, ptr %i.r, align 8, !tbaa !53
  %i.bj = sitofp fast i32 %i.bi to float
  %i.bk = insertelement <8 x float> poison, float %i.bj, i64 0
  %i.bl = shufflevector <8 x float> %i.bk, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.bm = fadd fast <8 x float> %i.aq, splat (float 1.000000e+00)
  %i.bn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bm, <8 x float> nofpclass(nan inf) %i.bl, <8 x float> splat (float -1.000000e+00))
  %i.bo = fmul fast <8 x float> %i.bn, splat (float 5.000000e-01)
  %i.bp = fadd fast <8 x float> %i.bl, splat (float -1.000000e+00)
  %i.bq = fadd fast <8 x float> %i.bo, splat (float 5.000000e-01)
  %i.br = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bq)
  %i.bs = fsub fast <8 x float> %i.br, %i.bl
  %i.bt = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bs)
  %i.bu = fadd fast <8 x float> %i.bl, splat (float -5.000000e-01)
  %i.bv = fsub fast <8 x float> %i.bu, %i.bt
  %i.bw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bv, <8 x float> zeroinitializer)
  %i.bx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bp, <8 x float> nofpclass(nan inf) %i.bw)
  %i.by = load i32, ptr %i.s, align 4, !tbaa !55
  %i.bz = sitofp fast i32 %i.by to float
  %i.ca = insertelement <8 x float> poison, float %i.bz, i64 0
  %i.cb = shufflevector <8 x float> %i.ca, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.cc = fadd fast <8 x float> %i.ar, splat (float 1.000000e+00)
  %i.cd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cc, <8 x float> nofpclass(nan inf) %i.cb, <8 x float> splat (float -1.000000e+00))
  %i.ce = fmul fast <8 x float> %i.cd, splat (float 5.000000e-01)
  %i.cf = fadd fast <8 x float> %i.cb, splat (float -1.000000e+00)
  %i.cg = fadd fast <8 x float> %i.ce, splat (float 5.000000e-01)
  %i.ch = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cg)
  %i.ci = fsub fast <8 x float> %i.ch, %i.cb
  %i.cj = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ci)
  %i.ck = fadd fast <8 x float> %i.cb, splat (float -5.000000e-01)
  %i.cl = fsub fast <8 x float> %i.ck, %i.cj
  %i.cm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cl, <8 x float> zeroinitializer)
  %i.cn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cf, <8 x float> nofpclass(nan inf) %i.cm)
  %i.co = fadd fast <8 x float> %i.bh, splat (float 5.000000e-01)
  %i.cp = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.co, i32 1) ; 3 uses
  %i.cq = fadd fast <8 x float> %i.bx, splat (float 5.000000e-01)
  %i.cr = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cq, i32 1) ; 3 uses
  %i.cs = fadd fast <8 x float> %i.cn, splat (float 5.000000e-01)
  %i.ct = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cs, i32 1) ; 3 uses
  %i.cu = fcmp fast ogt <8 x float> %i.cp, splat (float -1.000000e+00)
  %i.cv = fcmp fast ogt <8 x float> %i.av, %i.cp
  %i.cw = and <8 x i1> %i.cu, %i.cv
  %i.cx = fcmp fast ogt <8 x float> %i.cr, splat (float -1.000000e+00)
  %i.cy = fcmp fast ogt <8 x float> %i.bl, %i.cr
  %i.cz = and <8 x i1> %i.cx, %i.cy
  %i.da = and <8 x i1> %i.cw, %i.cz
  %i.db = fcmp fast ogt <8 x float> %i.ct, splat (float -1.000000e+00)
  %i.dc = fcmp fast ogt <8 x float> %i.cb, %i.ct
  %i.dd = and <8 x i1> %i.db, %i.dc
  %i.de = and <8 x i1> %i.da, %i.dd
  %i.df = fmul fast <8 x float> %i.bl, %i.av
  %i.dg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cr, <8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.cp)
  %i.dh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.df, <8 x float> nofpclass(nan inf) %i.ct, <8 x float> nofpclass(nan inf) %i.dg)
  %i.di = load i32, ptr %i.t, align 8, !tbaa !13
  %i.dj = sitofp fast i32 %i.di to float
  %i.dk = insertelement <8 x float> poison, float %i.dj, i64 0
  %i.dl = shufflevector <8 x float> %i.dk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dm = fmul fast <8 x float> %i.dl, %i.dh
  %i.dn = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dm)
  %i.do = bitcast <8 x i32> %i.dn to <8 x float>
  %i.dp = select <8 x i1> %i.de, <8 x float> %i.do, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.dp, ptr %.1355, align 1, !tbaa !63
  %i.dq = getelementptr inbounds nuw i8, ptr %.0153354, i64 96 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1355, i64 32 ; 2 uses
  %i.ds = add nuw nsw i32 %.0155353, 24
  %i.dt = add nuw nsw i32 %.0155353, 47
  %i.du = icmp slt i32 %i.dt, %.fr389
  br i1 %i.du, label %.lr.ph356, label %.preheader, !llvm.loop !543

.lr.ph363:                                        ; preds = %.preheader, %bb.b
  %.2362 = phi ptr [ %i.fx, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1154361 = phi ptr [ %i.fw, %bb.b ], [ %.0153.lcssa, %.preheader ] ; 3 uses
  %.1156360 = phi i32 [ %i.fy, %bb.b ], [ %.0155.lcssa, %.preheader ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.1154361, i64 8
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !66
  %i.dx = load i32, ptr %i.s, align 4, !tbaa !55  ; 2 uses
  %i.dy = sitofp fast i32 %i.dx to float          ; 4 uses
  %i.dz = fmul fast float %i.dw, 5.000000e-01
  %i.ea = fadd fast float %i.dz, 5.000000e-01
  %i.eb = fmul fast float %i.ea, %i.dy
  %i.ec = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.eb)
  %i.ed = fsub fast float %i.ec, %i.dy
  %i.ee = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ed)
  %i.ef = fadd fast float %i.dy, -5.000000e-01
  %i.eg = fsub fast float %i.ef, %i.ee
  %i.eh = fadd fast float %i.dy, -1.000000e+00
  %.sroa.speculated6.i199 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.eg, float 0.000000e+00)
  %.sroa.speculated.i200 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated6.i199, float %i.eh)
  %i.ei = load <2 x float>, ptr %.1154361, align 4, !tbaa !66
  %i.ej = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 4 uses
  %i.ek = sitofp <2 x i32> %i.ej to <2 x float>   ; 4 uses
  %i.el = fmul fast <2 x float> %i.ei, splat (float 5.000000e-01)
  %i.em = fadd fast <2 x float> %i.el, splat (float 5.000000e-01)
  %i.en = fmul fast <2 x float> %i.em, %i.ek
  %i.eo = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.en)
  %i.ep = fsub fast <2 x float> %i.eo, %i.ek
  %i.eq = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ep)
  %i.er = fadd fast <2 x float> %i.ek, splat (float -5.000000e-01)
  %i.es = fsub fast <2 x float> %i.er, %i.eq
  %i.et = fadd fast <2 x float> %i.ek, splat (float -1.000000e+00)
  %i.eu = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.es, <2 x float> zeroinitializer)
  %i.ev = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.eu, <2 x float> %i.et)
  %i.ew = fadd fast <2 x float> %i.ev, splat (float 5.000000e-01)
  %i.ex = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ew)
  %i.ey = fptosi <2 x float> %i.ex to <2 x i32>   ; 3 uses
  %i.ez = fadd fast float %.sroa.speculated.i200, 5.000000e-01
  %i.fa = tail call fast float @llvm.floor.f32(float %i.ez)
  %i.fb = fptosi float %i.fa to i32               ; 3 uses
  %i.fc = extractelement <2 x i32> %i.ey, i64 0   ; 2 uses
  %i.fd = extractelement <2 x i32> %i.ey, i64 1   ; 2 uses
  %i.fe = or i32 %i.fd, %i.fc
  %i.ff = icmp sgt i32 %i.fe, -1
  %i.fg = icmp sgt <2 x i32> %i.ej, %i.ey         ; 2 uses
  %i.fh = extractelement <2 x i1> %i.fg, i64 0
  %i.fi = and i1 %i.fh, %i.ff
  %i.fj = extractelement <2 x i1> %i.fg, i64 1
  %i.fk = and i1 %i.fj, %i.fi
  %i.fl = icmp sgt i32 %i.fb, -1
  %i.fm = and i1 %i.fl, %i.fk
  %i.fn = icmp sgt i32 %i.dx, %i.fb
  %i.fo = and i1 %i.fn, %i.fm
  br i1 %i.fo, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph363
  %i.fp = extractelement <2 x i32> %i.ej, i64 1
  %i.fq = mul i32 %i.fp, %i.fb
  %reass.add330 = add i32 %i.fq, %i.fd
  %i.fr = extractelement <2 x i32> %i.ej, i64 0
  %reass.mul331 = mul i32 %reass.add330, %i.fr
  %i.fs = add i32 %reass.mul331, %i.fc
  %i.ft = load i32, ptr %i.t, align 8, !tbaa !13
  %i.fu = mul nsw i32 %i.ft, %i.fs
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph363, %bb.a
  %i.fv = phi i32 [ %i.fu, %bb.a ], [ -1, %.lr.ph363 ]
  store i32 %i.fv, ptr %.2362, align 4, !tbaa !29
  %i.fw = getelementptr inbounds nuw i8, ptr %.1154361, i64 12
  %i.fx = getelementptr inbounds nuw i8, ptr %.2362, i64 4 ; 2 uses
  %i.fy = add nuw nsw i32 %.1156360, 3            ; 2 uses
  %i.fz = icmp slt i32 %i.fy, %.fr389
  br i1 %i.fz, label %.lr.ph363, label %._crit_edge, !llvm.loop !544

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.fx, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ga = load i32, ptr %i.k, align 8, !tbaa !18
  %i.gb = sext i32 %i.ga to i64
end_hunk_8
begin_hunk_9_@_ZN4ncnn34gridsample_3d_nearest_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit168
  %i.hd = shufflevector <8 x float> %i.hc, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.he = fadd fast <8 x float> %i.gx, splat (float 1.000000e+00)
  %i.hf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.he, <8 x float> nofpclass(nan inf) %i.hd, <8 x float> splat (float -1.000000e+00))
  %i.hg = fmul fast <8 x float> %i.hf, splat (float 5.000000e-01)
  %i.hh = fadd fast <8 x float> %i.hd, splat (float -1.000000e+00)
  %i.hi = fadd fast <8 x float> %i.hg, splat (float 5.000000e-01)
  %i.hj = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hi)
  %i.hk = fsub fast <8 x float> %i.hj, %i.hd
  %i.hl = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hk)
  %i.hm = fadd fast <8 x float> %i.hd, splat (float -5.000000e-01)
  %i.hn = fsub fast <8 x float> %i.hm, %i.hl
  %i.ho = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hn, <8 x float> zeroinitializer)
  %i.hp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hh, <8 x float> nofpclass(nan inf) %i.ho)
  %i.hq = load i32, ptr %i.gp, align 8, !tbaa !53
  %i.hr = sitofp fast i32 %i.hq to float
  %i.hs = insertelement <8 x float> poison, float %i.hr, i64 0
  %i.ht = shufflevector <8 x float> %i.hs, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.hu = fadd fast <8 x float> %i.gy, splat (float 1.000000e+00)
  %i.hv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hu, <8 x float> nofpclass(nan inf) %i.ht, <8 x float> splat (float -1.000000e+00))
  %i.hw = fmul fast <8 x float> %i.hv, splat (float 5.000000e-01)
  %i.hx = fadd fast <8 x float> %i.ht, splat (float -1.000000e+00)
  %i.hy = fadd fast <8 x float> %i.hw, splat (float 5.000000e-01)
  %i.hz = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hy)
  %i.ia = fsub fast <8 x float> %i.hz, %i.ht
  %i.ib = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ia)
  %i.ic = fadd fast <8 x float> %i.ht, splat (float -5.000000e-01)
  %i.id = fsub fast <8 x float> %i.ic, %i.ib
  %i.ie = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.id, <8 x float> zeroinitializer)
  %i.if = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hx, <8 x float> nofpclass(nan inf) %i.ie)
  %i.ig = load i32, ptr %i.gq, align 4, !tbaa !55
  %i.ih = sitofp fast i32 %i.ig to float
  %i.ii = insertelement <8 x float> poison, float %i.ih, i64 0
  %i.ij = shufflevector <8 x float> %i.ii, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.ik = fadd fast <8 x float> %i.gz, splat (float 1.000000e+00)
  %i.il = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ik, <8 x float> nofpclass(nan inf) %i.ij, <8 x float> splat (float -1.000000e+00))
  %i.im = fmul fast <8 x float> %i.il, splat (float 5.000000e-01)
  %i.in = fadd fast <8 x float> %i.ij, splat (float -1.000000e+00)
  %i.io = fadd fast <8 x float> %i.im, splat (float 5.000000e-01)
  %i.ip = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.io)
  %i.iq = fsub fast <8 x float> %i.ip, %i.ij
  %i.ir = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.iq)
  %i.is = fadd fast <8 x float> %i.ij, splat (float -5.000000e-01)
  %i.it = fsub fast <8 x float> %i.is, %i.ir
  %i.iu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.it, <8 x float> zeroinitializer)
  %i.iv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.in, <8 x float> nofpclass(nan inf) %i.iu)
  %i.iw = fadd fast <8 x float> %i.hp, splat (float 5.000000e-01)
  %i.ix = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.iw, i32 1) ; 3 uses
  %i.iy = fadd fast <8 x float> %i.if, splat (float 5.000000e-01)
  %i.iz = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.iy, i32 1) ; 3 uses
  %i.ja = fadd fast <8 x float> %i.iv, splat (float 5.000000e-01)
  %i.jb = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ja, i32 1) ; 3 uses
  %i.jc = fcmp fast ogt <8 x float> %i.ix, splat (float -1.000000e+00)
  %i.jd = fcmp fast ogt <8 x float> %i.hd, %i.ix
  %i.je = and <8 x i1> %i.jc, %i.jd
  %i.jf = fcmp fast ogt <8 x float> %i.iz, splat (float -1.000000e+00)
  %i.jg = fcmp fast ogt <8 x float> %i.ht, %i.iz
  %i.jh = and <8 x i1> %i.jf, %i.jg
  %i.ji = and <8 x i1> %i.je, %i.jh
  %i.jj = fcmp fast ogt <8 x float> %i.jb, splat (float -1.000000e+00)
  %i.jk = fcmp fast ogt <8 x float> %i.ij, %i.jb
  %i.jl = and <8 x i1> %i.jj, %i.jk
  %i.jm = and <8 x i1> %i.ji, %i.jl
  %i.jn = fmul fast <8 x float> %i.ht, %i.hd
  %i.jo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iz, <8 x float> nofpclass(nan inf) %i.hd, <8 x float> nofpclass(nan inf) %i.ix)
  %i.jp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jn, <8 x float> nofpclass(nan inf) %i.jb, <8 x float> nofpclass(nan inf) %i.jo)
  %i.jq = load i32, ptr %i.gr, align 8, !tbaa !13
  %i.jr = sitofp fast i32 %i.jq to float
  %i.js = insertelement <8 x float> poison, float %i.jr, i64 0
  %i.jt = shufflevector <8 x float> %i.js, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ju = fmul fast <8 x float> %i.jt, %i.jp
  %i.jv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ju)
  %i.jw = bitcast <8 x i32> %i.jv to <8 x float>
  %i.jx = select <8 x i1> %i.jm, <8 x float> %i.jw, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.jx, ptr %.3342, align 1, !tbaa !63
  %i.jy = getelementptr inbounds nuw i8, ptr %.0157341, i64 32 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.0159340, i64 32 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.0161339, i64 32 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.3342, i64 32 ; 2 uses
  %i.kc = add nuw nsw i32 %.0163338, 8            ; 2 uses
  %i.kd = or disjoint i32 %i.kc, 7
  %i.ke = icmp slt i32 %i.kd, %.fr389
  br i1 %i.ke, label %bb.c, label %.preheader336.loopexit, !llvm.loop !552

bb.d:                                             ; preds = %.lr.ph352, %bb.f
  %.4351 = phi ptr [ %.3.lcssa, %.lr.ph352 ], [ %i.ml, %bb.f ] ; 2 uses
  %.1158350 = phi ptr [ %.0157.lcssa, %.lr.ph352 ], [ %i.mi, %bb.f ] ; 2 uses
  %.1160349 = phi ptr [ %.0159.lcssa, %.lr.ph352 ], [ %i.mj, %bb.f ] ; 2 uses
  %.1162348 = phi ptr [ %.0161.lcssa, %.lr.ph352 ], [ %i.mk, %bb.f ] ; 2 uses
  %.1164347 = phi i32 [ %.0163.lcssa, %.lr.ph352 ], [ %i.mm, %bb.f ]
  %i.kf = load float, ptr %.1158350, align 4, !tbaa !66
  %i.kg = load float, ptr %.1160349, align 4, !tbaa !66
  %i.kh = load float, ptr %.1162348, align 4, !tbaa !66
  %i.ki = load i32, ptr %i.gv, align 4, !tbaa !55 ; 2 uses
  %i.kj = sitofp fast i32 %i.ki to float          ; 4 uses
  %i.kk = fmul fast float %i.kh, 5.000000e-01
  %i.kl = fadd fast float %i.kk, 5.000000e-01
  %i.km = fmul fast float %i.kl, %i.kj
  %i.kn = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.km)
  %i.ko = fsub fast float %i.kn, %i.kj
  %i.kp = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ko)
  %i.kq = fadd fast float %i.kj, -5.000000e-01
  %i.kr = fsub fast float %i.kq, %i.kp
  %i.ks = fadd fast float %i.kj, -1.000000e+00
  %.sroa.speculated6.i205 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.kr, float 0.000000e+00)
  %.sroa.speculated.i206 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated6.i205, float %i.ks)
  %i.kt = load <2 x i32>, ptr %i.gu, align 4, !tbaa !29 ; 4 uses
  %i.ku = sitofp <2 x i32> %i.kt to <2 x float>   ; 4 uses
  %i.kv = insertelement <2 x float> poison, float %i.kf, i64 0
  %i.kw = insertelement <2 x float> %i.kv, float %i.kg, i64 1
  %i.kx = fmul fast <2 x float> %i.kw, splat (float 5.000000e-01)
  %i.ky = fadd fast <2 x float> %i.kx, splat (float 5.000000e-01)
  %i.kz = fmul fast <2 x float> %i.ky, %i.ku
  %i.la = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.kz)
  %i.lb = fsub fast <2 x float> %i.la, %i.ku
  %i.lc = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.lb)
  %i.ld = fadd fast <2 x float> %i.ku, splat (float -5.000000e-01)
  %i.le = fsub fast <2 x float> %i.ld, %i.lc
  %i.lf = fadd fast <2 x float> %i.ku, splat (float -1.000000e+00)
  %i.lg = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.le, <2 x float> zeroinitializer)
  %i.lh = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.lg, <2 x float> %i.lf)
  %i.li = fadd fast <2 x float> %i.lh, splat (float 5.000000e-01)
  %i.lj = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.li)
  %i.lk = fptosi <2 x float> %i.lj to <2 x i32>   ; 3 uses
  %i.ll = fadd fast float %.sroa.speculated.i206, 5.000000e-01
  %i.lm = tail call fast float @llvm.floor.f32(float %i.ll)
  %i.ln = fptosi float %i.lm to i32               ; 3 uses
  %i.lo = extractelement <2 x i32> %i.lk, i64 0   ; 2 uses
  %i.lp = extractelement <2 x i32> %i.lk, i64 1   ; 2 uses
  %i.lq = or i32 %i.lp, %i.lo
  %i.lr = icmp sgt i32 %i.lq, -1
  %i.ls = icmp sgt <2 x i32> %i.kt, %i.lk         ; 2 uses
  %i.lt = extractelement <2 x i1> %i.ls, i64 0
  %i.lu = and i1 %i.lt, %i.lr
  %i.lv = extractelement <2 x i1> %i.ls, i64 1
  %i.lw = and i1 %i.lv, %i.lu
  %i.lx = icmp sgt i32 %i.ln, -1
  %i.ly = and i1 %i.lx, %i.lw
  %i.lz = icmp sgt i32 %i.ki, %i.ln
  %i.ma = and i1 %i.lz, %i.ly
  br i1 %i.ma, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.mb = extractelement <2 x i32> %i.kt, i64 1
  %i.mc = mul i32 %i.mb, %i.ln
  %reass.add = add i32 %i.mc, %i.lp
  %i.md = extractelement <2 x i32> %i.kt, i64 0
  %reass.mul = mul i32 %reass.add, %i.md
  %i.me = add i32 %reass.mul, %i.lo
  %i.mf = load i32, ptr %i.gw, align 8, !tbaa !13
  %i.mg = mul nsw i32 %i.mf, %i.me
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.mh = phi i32 [ %i.mg, %bb.e ], [ -1, %bb.d ]
  store i32 %i.mh, ptr %.4351, align 4, !tbaa !29
  %i.mi = getelementptr inbounds nuw i8, ptr %.1158350, i64 4
  %i.mj = getelementptr inbounds nuw i8, ptr %.1160349, i64 4
  %i.mk = getelementptr inbounds nuw i8, ptr %.1162348, i64 4
  %i.ml = getelementptr inbounds nuw i8, ptr %.4351, i64 4
  %i.mm = add nuw nsw i32 %.1164347, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.mm, %.fr389
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !553

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader336, %.preheader335
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_3d_nearest_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit168:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = mul i32 %i.e, %i.g
  %.fr383 = freeze i32 %i.h                       ; 10 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !24, !noalias !554 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader329, label %_ZN4ncnn3MatD2Ev.exit166

.preheader329:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit168
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit167.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit167.lr.ph:                   ; preds = %.preheader329
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %.fr383, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = add i32 %.fr383, -24                     ; 2 uses
  %i.v = urem i32 %i.u, 24
  %i.w = sub nuw i32 %i.u, %i.v
  %i.x = add nuw nsw i32 %i.w, 24
  br label %_ZN4ncnn3MatD2Ev.exit167

_ZN4ncnn3MatD2Ev.exit167:                         ; preds = %_ZN4ncnn3MatD2Ev.exit167.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit167.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0360 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit167.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24, !noalias !557
  %i.z = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !557
  %i.aa = mul i64 %i.z, %indvars.iv
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !557
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac ; 2 uses
  br i1 %i.p, label %.lr.ph350, label %.preheader

.preheader:                                       ; preds = %.lr.ph350, %_ZN4ncnn3MatD2Ev.exit167
  %.0155.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit167 ], [ %i.x, %.lr.ph350 ] ; 2 uses
  %.0153.lcssa = phi ptr [ %i.ad, %_ZN4ncnn3MatD2Ev.exit167 ], [ %i.de, %.lr.ph350 ]
  %.1.lcssa = phi ptr [ %.0360, %_ZN4ncnn3MatD2Ev.exit167 ], [ %i.df, %.lr.ph350 ] ; 2 uses
  %i.ae = icmp slt i32 %.0155.lcssa, %.fr383
  br i1 %i.ae, label %.lr.ph357, label %._crit_edge

.lr.ph350:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit167, %.lr.ph350
  %.1349 = phi ptr [ %i.df, %.lr.ph350 ], [ %.0360, %_ZN4ncnn3MatD2Ev.exit167 ] ; 2 uses
  %.0153348 = phi ptr [ %i.de, %.lr.ph350 ], [ %i.ad, %_ZN4ncnn3MatD2Ev.exit167 ] ; 4 uses
  %.0155347 = phi i32 [ %i.dg, %.lr.ph350 ], [ 0, %_ZN4ncnn3MatD2Ev.exit167 ] ; 2 uses
  %i.af = load <8 x float>, ptr %.0153348, align 1, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0153348, i64 32
  %i.ah = load <8 x float>, ptr %i.ag, align 1, !tbaa !63 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0153348, i64 64
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !63 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.aj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.aj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ao = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.ap = shufflevector <8 x float> %i.ak, <8 x float> %i.ao, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.aq = shufflevector <8 x float> %i.an, <8 x float> %i.ao, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.ar = shufflevector <8 x float> %i.an, <8 x float> %i.am, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.as = load i32, ptr %i.q, align 4, !tbaa !52
  %i.at = sitofp fast i32 %i.as to float
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.aw = fmul fast <8 x float> %i.ap, splat (float 5.000000e-01)
  %i.ax = fadd fast <8 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fadd fast <8 x float> %i.av, splat (float -1.000000e+00) ; 2 uses
  %i.az = fmul fast <8 x float> %i.ax, %i.ay
  %i.ba = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.az)
  %i.bb = fsub fast <8 x float> %i.ba, %i.ay
  %i.bc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bb)
  %i.bd = load i32, ptr %i.r, align 8, !tbaa !53
  %i.be = sitofp fast i32 %i.bd to float
  %i.bf = insertelement <8 x float> poison, float %i.be, i64 0
  %i.bg = shufflevector <8 x float> %i.bf, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bh = fmul fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.bi = fadd fast <8 x float> %i.bh, splat (float 5.000000e-01)
  %i.bj = fadd fast <8 x float> %i.bg, splat (float -1.000000e+00) ; 2 uses
  %i.bk = fmul fast <8 x float> %i.bj, %i.bi
  %i.bl = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.bk)
  %i.bm = fsub fast <8 x float> %i.bl, %i.bj
  %i.bn = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bm)
  %i.bo = load i32, ptr %i.s, align 4, !tbaa !55
  %i.bp = sitofp fast i32 %i.bo to float
  %i.bq = insertelement <8 x float> poison, float %i.bp, i64 0
  %i.br = shufflevector <8 x float> %i.bq, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bs = fmul fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.bt = fadd fast <8 x float> %i.bs, splat (float 5.000000e-01)
  %i.bu = fadd fast <8 x float> %i.br, splat (float -1.000000e+00) ; 2 uses
  %i.bv = fmul fast <8 x float> %i.bu, %i.bt
  %i.bw = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.bv)
  %i.bx = fsub fast <8 x float> %i.bw, %i.bu
  %i.by = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bx)
  %i.bz = fadd fast <8 x float> %i.av, splat (float -5.000000e-01)
  %i.ca = fsub fast <8 x float> %i.bz, %i.bc
  %i.cb = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ca, i32 1) ; 3 uses
  %i.cc = fadd fast <8 x float> %i.bg, splat (float -5.000000e-01)
  %i.cd = fsub fast <8 x float> %i.cc, %i.bn
  %i.ce = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cd, i32 1) ; 3 uses
  %i.cf = fadd fast <8 x float> %i.br, splat (float -5.000000e-01)
  %i.cg = fsub fast <8 x float> %i.cf, %i.by
  %i.ch = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cg, i32 1) ; 3 uses
  %i.ci = fcmp fast ogt <8 x float> %i.cb, splat (float -1.000000e+00)
  %i.cj = fcmp fast ogt <8 x float> %i.av, %i.cb
  %i.ck = and <8 x i1> %i.ci, %i.cj
  %i.cl = fcmp fast ogt <8 x float> %i.ce, splat (float -1.000000e+00)
  %i.cm = fcmp fast ogt <8 x float> %i.bg, %i.ce
  %i.cn = and <8 x i1> %i.cl, %i.cm
  %i.co = and <8 x i1> %i.ck, %i.cn
  %i.cp = fcmp fast ogt <8 x float> %i.ch, splat (float -1.000000e+00)
  %i.cq = fcmp fast ogt <8 x float> %i.br, %i.ch
  %i.cr = and <8 x i1> %i.cp, %i.cq
  %i.cs = and <8 x i1> %i.co, %i.cr
  %i.ct = fmul fast <8 x float> %i.bg, %i.av
  %i.cu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ce, <8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.cb)
  %i.cv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ct, <8 x float> nofpclass(nan inf) %i.ch, <8 x float> nofpclass(nan inf) %i.cu)
  %i.cw = load i32, ptr %i.t, align 8, !tbaa !13
  %i.cx = sitofp fast i32 %i.cw to float
  %i.cy = insertelement <8 x float> poison, float %i.cx, i64 0
  %i.cz = shufflevector <8 x float> %i.cy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.da = fmul fast <8 x float> %i.cz, %i.cv
  %i.db = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.da)
  %i.dc = bitcast <8 x i32> %i.db to <8 x float>
  %i.dd = select <8 x i1> %i.cs, <8 x float> %i.dc, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.dd, ptr %.1349, align 1, !tbaa !63
  %i.de = getelementptr inbounds nuw i8, ptr %.0153348, i64 96 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.1349, i64 32 ; 2 uses
  %i.dg = add nuw nsw i32 %.0155347, 24
  %i.dh = add nuw nsw i32 %.0155347, 47
  %i.di = icmp slt i32 %i.dh, %.fr383
  br i1 %i.di, label %.lr.ph350, label %.preheader, !llvm.loop !560

.lr.ph357:                                        ; preds = %.preheader, %bb.b
  %.2356 = phi ptr [ %i.fn, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1154355 = phi ptr [ %i.fm, %bb.b ], [ %.0153.lcssa, %.preheader ] ; 3 uses
  %.1156354 = phi i32 [ %i.fo, %bb.b ], [ %.0155.lcssa, %.preheader ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.1154355, i64 8
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !66
  %i.dl = load i32, ptr %i.s, align 4, !tbaa !55  ; 3 uses
  %i.dm = fmul fast float %i.dk, 5.000000e-01
  %i.dn = fadd fast float %i.dm, 5.000000e-01
  %i.do = add nsw i32 %i.dl, -1
  %i.dp = sitofp fast i32 %i.do to float          ; 3 uses
  %i.dq = fmul fast float %i.dn, %i.dp
  %i.dr = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.dq)
  %i.ds = fsub fast float %i.dr, %i.dp
  %i.dt = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ds)
  %i.du = fsub fast float %i.dp, %i.dt
  %i.dv = sitofp fast i32 %i.dl to float
  %i.dw = fadd fast float %i.dv, -1.000000e+00
  %.sroa.speculated6.i199 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.du, float 0.000000e+00)
  %.sroa.speculated.i200 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated6.i199, float %i.dw)
  %i.dx = load <2 x float>, ptr %.1154355, align 4, !tbaa !66
  %i.dy = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 5 uses
  %i.dz = fmul fast <2 x float> %i.dx, splat (float 5.000000e-01)
  %i.ea = fadd fast <2 x float> %i.dz, splat (float 5.000000e-01)
  %i.eb = add nsw <2 x i32> %i.dy, splat (i32 -1)
  %i.ec = sitofp <2 x i32> %i.eb to <2 x float>   ; 3 uses
  %i.ed = fmul fast <2 x float> %i.ea, %i.ec
  %i.ee = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ed)
  %i.ef = fsub fast <2 x float> %i.ee, %i.ec
  %i.eg = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ef)
  %i.eh = fsub fast <2 x float> %i.ec, %i.eg
  %i.ei = sitofp <2 x i32> %i.dy to <2 x float>
  %i.ej = fadd fast <2 x float> %i.ei, splat (float -1.000000e+00)
  %i.ek = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.eh, <2 x float> zeroinitializer)
  %i.el = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ek, <2 x float> %i.ej)
  %i.em = fadd fast <2 x float> %i.el, splat (float 5.000000e-01)
  %i.en = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.em)
  %i.eo = fptosi <2 x float> %i.en to <2 x i32>   ; 3 uses
  %i.ep = fadd fast float %.sroa.speculated.i200, 5.000000e-01
  %i.eq = tail call fast float @llvm.floor.f32(float %i.ep)
  %i.er = fptosi float %i.eq to i32               ; 3 uses
  %i.es = extractelement <2 x i32> %i.eo, i64 0   ; 2 uses
  %i.et = extractelement <2 x i32> %i.eo, i64 1   ; 2 uses
  %i.eu = or i32 %i.et, %i.es
  %i.ev = icmp sgt i32 %i.eu, -1
  %i.ew = icmp sgt <2 x i32> %i.dy, %i.eo         ; 2 uses
  %i.ex = extractelement <2 x i1> %i.ew, i64 0
  %i.ey = and i1 %i.ex, %i.ev
  %i.ez = extractelement <2 x i1> %i.ew, i64 1
  %i.fa = and i1 %i.ez, %i.ey
  %i.fb = icmp sgt i32 %i.er, -1
  %i.fc = and i1 %i.fb, %i.fa
  %i.fd = icmp sgt i32 %i.dl, %i.er
  %i.fe = and i1 %i.fd, %i.fc
  br i1 %i.fe, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph357
  %i.ff = extractelement <2 x i32> %i.dy, i64 1
  %i.fg = mul i32 %i.ff, %i.er
  %reass.add324 = add i32 %i.fg, %i.et
  %i.fh = extractelement <2 x i32> %i.dy, i64 0
  %reass.mul325 = mul i32 %reass.add324, %i.fh
  %i.fi = add i32 %reass.mul325, %i.es
  %i.fj = load i32, ptr %i.t, align 8, !tbaa !13
  %i.fk = mul nsw i32 %i.fj, %i.fi
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph357, %bb.a
  %i.fl = phi i32 [ %i.fk, %bb.a ], [ -1, %.lr.ph357 ]
  store i32 %i.fl, ptr %.2356, align 4, !tbaa !29
  %i.fm = getelementptr inbounds nuw i8, ptr %.1154355, i64 12
  %i.fn = getelementptr inbounds nuw i8, ptr %.2356, i64 4 ; 2 uses
  %i.fo = add nuw nsw i32 %.1156354, 3            ; 2 uses
  %i.fp = icmp slt i32 %i.fo, %.fr383
  br i1 %i.fp, label %.lr.ph357, label %._crit_edge, !llvm.loop !561

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.fn, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fq = load i32, ptr %i.k, align 8, !tbaa !18
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp slt i64 %indvars.iv.next, %i.fr
  br i1 %i.fs, label %_ZN4ncnn3MatD2Ev.exit167, label %.loopexit, !llvm.loop !562

_ZN4ncnn3MatD2Ev.exit166:                         ; preds = %_ZN4ncnn3MatD2Ev.exit168
  %i.ft = load ptr, ptr %1, align 8, !tbaa !24, !noalias !563 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !21, !noalias !566 ; 2 uses
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !20, !noalias !566 ; 2 uses
  %i.fy = mul i64 %i.fx, %i.fw
end_hunk_9
