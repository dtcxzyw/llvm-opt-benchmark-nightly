inline.NumInlined: 896
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.atd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ny

bb.mw:                                            ; preds = %.loopexit966, %.loopexit967
  %.0432 = phi ptr [ %i.asu, %.loopexit966 ], [ null, %.loopexit967 ]
  br i1 %.not9631200, label %._crit_edge1230, label %.lr.ph1229

._crit_edge1230:                                  ; preds = %._crit_edge1217, %bb.mw
  %i.ate = add i32 %.04441232, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %.pre1469 = load ptr, ptr %i.aim, align 8
  %.pre1470 = load ptr, ptr %8, align 8
  br label %bb.nx

.lr.ph1229:                                       ; preds = %bb.mw, %._crit_edge1217
  %.04301227 = phi i32 [ %.1431.lcssa, %._crit_edge1217 ], [ 0, %bb.mw ] ; 2 uses
  %.14331226 = phi ptr [ %.2434.lcssa, %._crit_edge1217 ], [ %.0432, %bb.mw ] ; 2 uses
  %.04361225 = phi ptr [ %.1437.lcssa, %._crit_edge1217 ], [ %i.asm, %bb.mw ] ; 2 uses
  %.04381224 = phi ptr [ %.1439.lcssa, %._crit_edge1217 ], [ %i.arl, %bb.mw ] ; 2 uses
  %.04401223 = phi ptr [ %i.aui, %._crit_edge1217 ], [ %i.aqf, %bb.mw ] ; 5 uses
  %.sroa.0918.01222 = phi ptr [ %i.auh, %._crit_edge1217 ], [ %i.apv, %bb.mw ] ; 3 uses
  %i.atf = load i32, ptr %.sroa.0918.01222, align 4
  %i.atg = zext i32 %i.atf to i64
  %i.ath = load ptr, ptr %9, align 8
  %i.ati = getelementptr inbounds nuw [104 x i8], ptr %i.ath, i64 %i.atg ; 11 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 72
  %i.atk = getelementptr inbounds nuw i8, ptr %.sroa.0918.01222, i64 4
  %i.atl = load i32, ptr %i.atk, align 4
  %i.atm = zext i32 %i.atl to i64
  %i.atn = load ptr, ptr %i.atj, align 8
  %i.ato = getelementptr inbounds nuw [56 x i8], ptr %i.atn, i64 %i.atm ; 8 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ato, i64 8 ; 2 uses
  %i.atq = load ptr, ptr %i.atp, align 8
  %i.atr = load ptr, ptr %i.ato, align 8
  %i.ats = ptrtoint ptr %i.atq to i64
  %i.att = ptrtoint ptr %i.atr to i64
  %i.atu = sub i64 %i.ats, %i.att                 ; 2 uses
  %i.atv = lshr exact i64 %i.atu, 2
  %i.atw = trunc i64 %i.atv to i32                ; 2 uses
  store i32 %i.atw, ptr %.04401223, align 8
  %i.atx = and i64 %i.atu, 17179869180
  %i.aty = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.atx) #28
          to label %bb.mx unwind label %bb.my

bb.mx:                                            ; preds = %.lr.ph1229
  %i.atz = getelementptr inbounds nuw i8, ptr %.04401223, i64 8 ; 2 uses
  store ptr %i.aty, ptr %i.atz, align 8
  %.not1249 = icmp eq i32 %i.atw, 0
  br i1 %.not1249, label %._crit_edge1217, label %.lr.ph1216

.lr.ph1216:                                       ; preds = %bb.mx
  %i.aua = getelementptr inbounds nuw i8, ptr %i.ati, i64 8 ; 2 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %i.ati, i64 24
  %i.auc = getelementptr inbounds nuw i8, ptr %i.ati, i64 32
  %i.aud = getelementptr inbounds nuw i8, ptr %i.ati, i64 48 ; 2 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %i.ati, i64 56
  %i.auf = getelementptr inbounds nuw i8, ptr %i.ati, i64 96
  %i.aug = getelementptr inbounds nuw i8, ptr %i.ato, i64 24 ; 3 uses
  br label %bb.mz

._crit_edge1217:                                  ; preds = %bb.nw, %bb.mx
  %.1439.lcssa = phi ptr [ %.04381224, %bb.mx ], [ %i.ayq, %bb.nw ]
  %.1437.lcssa = phi ptr [ %.04361225, %bb.mx ], [ %i.ayp, %bb.nw ]
  %.2434.lcssa = phi ptr [ %.14331226, %bb.mx ], [ %.3435, %bb.nw ]
  %.1431.lcssa = phi i32 [ %.04301227, %bb.mx ], [ %i.ayo, %bb.nw ]
  %i.auh = getelementptr inbounds nuw i8, ptr %.sroa.0918.01222, i64 8 ; 2 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %.04401223, i64 16
  %.not964 = icmp eq ptr %i.auh, %i.apu
  br i1 %.not964, label %._crit_edge1230, label %.lr.ph1229, !llvm.loop !40

bb.my:                                            ; preds = %.lr.ph1229
  %i.auj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ny

bb.mz:                                            ; preds = %.lr.ph1216, %bb.nw
  %indvars.iv1438 = phi i64 [ 0, %.lr.ph1216 ], [ %indvars.iv.next1439, %bb.nw ] ; 10 uses
  %.04251213 = phi i1 [ false, %.lr.ph1216 ], [ %.2427, %bb.nw ] ; 2 uses
  %.14311212 = phi i32 [ %.04301227, %.lr.ph1216 ], [ %i.ayo, %bb.nw ] ; 2 uses
  %.24341211 = phi ptr [ %.14331226, %.lr.ph1216 ], [ %.3435, %bb.nw ] ; 5 uses
  %.14371209 = phi ptr [ %.04361225, %.lr.ph1216 ], [ %i.ayp, %bb.nw ] ; 4 uses
  %.14391208 = phi ptr [ %.04381224, %.lr.ph1216 ], [ %i.ayq, %bb.nw ] ; 2 uses
  %.sroa.0914.21207 = phi <2 x float> [ zeroinitializer, %.lr.ph1216 ], [ %.sroa.0914.4, %bb.nw ] ; 2 uses
  %.sroa.7.01206 = phi float [ 0.000000e+00, %.lr.ph1216 ], [ %.sroa.7.2, %bb.nw ] ; 2 uses
  %i.auk = load ptr, ptr %i.ato, align 8
  %i.aul = getelementptr inbounds nuw [4 x i8], ptr %i.auk, i64 %indvars.iv1438
  %i.aum = load i32, ptr %i.aul, align 4
  %i.aun = zext i32 %i.aum to i64                 ; 2 uses
  %i.auo = load ptr, ptr %i.aua, align 8
  %i.aup = load ptr, ptr %i.ati, align 8          ; 2 uses
  %i.auq = ptrtoint ptr %i.auo to i64
  %i.aur = ptrtoint ptr %i.aup to i64
  %i.aus = sub i64 %i.auq, %i.aur
  %i.aut = sdiv exact i64 %i.aus, 12
  %.not525 = icmp ugt i64 %i.aut, %i.aun
  br i1 %.not525, label %bb.ne, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.auu = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.nb unwind label %bb.nd

bb.nb:                                            ; preds = %bb.na
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.auu, ptr noundef nonnull @.str.31)
          to label %bb.nc unwind label %bb.nd

bb.nc:                                            ; preds = %bb.nb
  %i.auv = load ptr, ptr %i.ato, align 8
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %i.auv, i64 %indvars.iv1438
  store i32 0, ptr %i.auw, align 4
  %.pre1461 = load ptr, ptr %i.ato, align 8
  %.phi.trans.insert1462 = getelementptr inbounds nuw [4 x i8], ptr %.pre1461, i64 %indvars.iv1438
  %.pre1463 = load i32, ptr %.phi.trans.insert1462, align 4
  %.pre1464 = load ptr, ptr %i.ati, align 8
  %.pre1473 = zext i32 %.pre1463 to i64
  br label %bb.ne

bb.nd:                                            ; preds = %bb.ns, %bb.nr, %bb.nb, %bb.na
  %i.aux = landingpad { ptr, i32 }
          cleanup
  br label %bb.ny

bb.ne:                                            ; preds = %bb.nc, %bb.mz
  %.pre-phi1474 = phi i64 [ %.pre1473, %bb.nc ], [ %i.aun, %bb.mz ]
  %i.auy = phi ptr [ %.pre1464, %bb.nc ], [ %i.aup, %bb.mz ]
  %i.auz = getelementptr inbounds nuw [12 x i8], ptr %i.auy, i64 %.pre-phi1474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.14391208, ptr noundef nonnull align 4 dereferenceable(12) %i.auz, i64 12, i1 false)
  %i.ava = load ptr, ptr %i.ato, align 8          ; 4 uses
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %i.ava, i64 %indvars.iv1438
  %i.avc = load i32, ptr %i.avb, align 4
  %i.avd = zext i32 %i.avc to i64                 ; 2 uses
  %i.ave = load ptr, ptr %i.auc, align 8
  %i.avf = load ptr, ptr %i.aub, align 8          ; 2 uses
  %i.avg = ptrtoint ptr %i.ave to i64
  %i.avh = ptrtoint ptr %i.avf to i64
  %i.avi = sub i64 %i.avg, %i.avh
  %i.avj = sdiv exact i64 %i.avi, 12
  %.not526 = icmp ugt i64 %i.avj, %i.avd
  br i1 %.not526, label %bb.nk, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.avk = load i32, ptr %.04401223, align 8
  %i.avl = icmp ugt i32 %i.avk, 2
  br i1 %i.avl, label %bb.ng, label %bb.nk

bb.ng:                                            ; preds = %bb.nf
  br i1 %.04251213, label %bb.nj, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.avm = load i32, ptr %i.ava, align 4
  %i.avn = zext i32 %i.avm to i64
  %i.avo = load ptr, ptr %i.ati, align 8          ; 3 uses
  %i.avp = getelementptr inbounds nuw [12 x i8], ptr %i.avo, i64 %i.avn ; 2 uses
  %i.avq = getelementptr inbounds nuw i8, ptr %i.ava, i64 4
  %i.avr = load i32, ptr %i.avq, align 4
  %i.avs = zext i32 %i.avr to i64
  %i.avt = getelementptr inbounds nuw [12 x i8], ptr %i.avo, i64 %i.avs ; 2 uses
  %i.avu = load ptr, ptr %i.atp, align 8
  %i.avv = ptrtoint ptr %i.avu to i64
  %i.avw = ptrtoint ptr %i.ava to i64
  %i.avx = sub i64 %i.avv, %i.avw
  %i.avy = ashr exact i64 %i.avx, 2
  %i.avz = getelementptr [12 x i8], ptr %i.avo, i64 %i.avy ; 2 uses
  %i.awa = getelementptr i8, ptr %i.avz, i64 -12
  %i.awb = load float, ptr %i.avt, align 4
  %i.awc = load float, ptr %i.avp, align 4        ; 2 uses
  %i.awd = fsub float %i.awb, %i.awc              ; 2 uses
  %i.awe = getelementptr inbounds nuw i8, ptr %i.avt, i64 4
  %i.awf = getelementptr inbounds nuw i8, ptr %i.avp, i64 4
  %i.awg = load <2 x float>, ptr %i.awe, align 4
  %i.awh = load <2 x float>, ptr %i.awf, align 4  ; 3 uses
  %i.awi = fsub <2 x float> %i.awg, %i.awh        ; 3 uses
  %i.awj = load <2 x float>, ptr %i.awa, align 4
  %i.awk = shufflevector <2 x float> %i.awh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.awl = insertelement <2 x float> %i.awk, float %i.awc, i64 0
  %i.awm = fsub <2 x float> %i.awj, %i.awl        ; 5 uses
  %i.awn = getelementptr i8, ptr %i.avz, i64 -4
  %i.awo = load float, ptr %i.awn, align 4
  %i.awp = extractelement <2 x float> %i.awh, i64 1
  %i.awq = fsub float %i.awo, %i.awp              ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.awm, %i.awm
  %i.awr = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.aws = extractelement <2 x float> %i.awm, i64 0 ; 2 uses
  %i.awt = call float @llvm.fmuladd.f32(float %i.aws, float %i.aws, float %i.awr)
  %i.awu = call noundef float @llvm.fmuladd.f32(float %i.awq, float %i.awq, float %i.awt) ; 2 uses
  %i.awv = fcmp oeq float %i.awu, 0.000000e+00
  br i1 %i.awv, label %bb.ni, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.nh
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.awu)
  %i.aww = fdiv float 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.awx = insertelement <2 x float> poison, float %i.aww, i64 0
  %i.awy = shufflevector <2 x float> %i.awx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.awz = fmul <2 x float> %i.awm, %i.awy
  %i.axa = fmul float %i.awq, %i.aww
  br label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.10.0 = phi float [ %i.awq, %bb.nh ], [ %i.axa, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 2 uses
  %.sroa.0905.0 = phi <2 x float> [ %i.awm, %bb.nh ], [ %i.awz, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %.sroa.0905.4.vec.extract911 = extractelement <2 x float> %.sroa.0905.0, i64 1 ; 2 uses
  %.sroa.0905.0.vec.extract908 = extractelement <2 x float> %.sroa.0905.0, i64 0
  %10 = fneg float %.sroa.10.0
  %i.axb = fneg float %.sroa.0905.4.vec.extract911
  %i.axc = shufflevector <2 x float> %i.awi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.axd = insertelement <2 x float> %i.axc, float %i.awd, i64 1
  %11 = insertelement <2 x float> poison, float %i.axb, i64 0
  %i.axe = insertelement <2 x float> %11, float %10, i64 1
  %12 = fmul <2 x float> %i.axd, %i.axe
  %13 = shufflevector <2 x float> %.sroa.0905.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.axf = insertelement <2 x float> %13, float %.sroa.10.0, i64 0
  %14 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.awi, <2 x float> %i.axf, <2 x float> %12)
  %15 = fneg float %.sroa.0905.0.vec.extract908
  %16 = extractelement <2 x float> %i.awi, i64 0
  %17 = fmul float %16, %15
  %i.axg = call float @llvm.fmuladd.f32(float %i.awd, float %.sroa.0905.4.vec.extract911, float %17)
  br label %bb.nj

bb.nj:                                            ; preds = %bb.ni, %bb.ng
  %.sroa.7.1 = phi float [ %.sroa.7.01206, %bb.ng ], [ %i.axg, %bb.ni ] ; 2 uses
  %.sroa.0914.3 = phi <2 x float> [ %.sroa.0914.21207, %bb.ng ], [ %14, %bb.ni ] ; 2 uses
  store <2 x float> %.sroa.0914.3, ptr %.14371209, align 4
  %.sroa.7.0..1437.sroa_idx = getelementptr inbounds nuw i8, ptr %.14371209, i64 8
  store float %.sroa.7.1, ptr %.sroa.7.0..1437.sroa_idx, align 4
  br label %bb.nl

bb.nk:                                            ; preds = %bb.nf, %bb.ne
  %i.axh = getelementptr inbounds nuw [12 x i8], ptr %i.avf, i64 %i.avd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.14371209, ptr noundef nonnull align 4 dereferenceable(12) %i.axh, i64 12, i1 false)
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %bb.nj
  %.sroa.7.2 = phi float [ %.sroa.7.01206, %bb.nk ], [ %.sroa.7.1, %bb.nj ]
  %.sroa.0914.4 = phi <2 x float> [ %.sroa.0914.21207, %bb.nk ], [ %.sroa.0914.3, %bb.nj ]
  %.2427 = phi i1 [ %.04251213, %bb.nk ], [ true, %bb.nj ]
  %.not529 = icmp eq ptr %.24341211, null
  br i1 %.not529, label %bb.nw, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.axi = load ptr, ptr %i.aue, align 8          ; 2 uses
  %i.axj = load ptr, ptr %i.aud, align 8          ; 4 uses
  %i.axk = ptrtoint ptr %i.axi to i64
  %i.axl = ptrtoint ptr %i.axj to i64
  %i.axm = sub i64 %i.axk, %i.axl                 ; 2 uses
  %i.axn = sdiv exact i64 %i.axm, 12
  %.not530 = icmp eq ptr %i.axi, %i.axj
  br i1 %.not530, label %bb.nw, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.axo = load i32, ptr %i.auf, align 8
  %.not531 = icmp eq i32 %i.axo, -1
  br i1 %.not531, label %bb.nq, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.axp = load ptr, ptr %i.aua, align 8
  %i.axq = load ptr, ptr %i.ati, align 8
  %i.axr = ptrtoint ptr %i.axp to i64
  %i.axs = ptrtoint ptr %i.axq to i64
  %i.axt = sub i64 %i.axr, %i.axs
  %.not532 = icmp ult i64 %i.axm, %i.axt
  br i1 %.not532, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.axu = load ptr, ptr %i.ato, align 8
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %i.axu, i64 %indvars.iv1438
  %i.axw = load i32, ptr %i.axv, align 4
  %i.axx = zext i32 %i.axw to i64
  %i.axy = getelementptr inbounds nuw [12 x i8], ptr %i.axj, i64 %i.axx
  br label %bb.nv

bb.nq:                                            ; preds = %bb.no, %bb.nn
  %i.axz = load ptr, ptr %i.aug, align 8
  %i.aya = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %indvars.iv1438
  %i.ayb = load i32, ptr %i.aya, align 4
  %i.ayc = zext i32 %i.ayb to i64                 ; 2 uses
  %.not533 = icmp ugt i64 %i.axn, %i.ayc
  br i1 %.not533, label %bb.nu, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.ayd = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ns unwind label %bb.nd

bb.ns:                                            ; preds = %bb.nr
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ayd, ptr noundef nonnull @.str.32)
          to label %bb.nt unwind label %bb.nd

bb.nt:                                            ; preds = %bb.ns
  %i.aye = load ptr, ptr %i.aug, align 8
  %i.ayf = getelementptr inbounds nuw [4 x i8], ptr %i.aye, i64 %indvars.iv1438
  store i32 0, ptr %i.ayf, align 4
  %.pre1465 = load ptr, ptr %i.aug, align 8
  %.phi.trans.insert1466 = getelementptr inbounds nuw [4 x i8], ptr %.pre1465, i64 %indvars.iv1438
  %.pre1467 = load i32, ptr %.phi.trans.insert1466, align 4
  %.pre1468 = load ptr, ptr %i.aud, align 8
  %.pre1475 = zext i32 %.pre1467 to i64
  br label %bb.nu

bb.nu:                                            ; preds = %bb.nt, %bb.nq
  %.pre-phi1476 = phi i64 [ %.pre1475, %bb.nt ], [ %i.ayc, %bb.nq ]
  %i.ayg = phi ptr [ %.pre1468, %bb.nt ], [ %i.axj, %bb.nq ]
  %i.ayh = getelementptr inbounds nuw [12 x i8], ptr %i.ayg, i64 %.pre-phi1476
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nu, %bb.np
  %.sink1816 = phi ptr [ %i.ayh, %bb.nu ], [ %i.axy, %bb.np ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.24341211, ptr noundef nonnull align 4 dereferenceable(12) %.sink1816, i64 12, i1 false)
  %i.ayi = getelementptr inbounds nuw i8, ptr %.24341211, i64 4 ; 2 uses
  %i.ayj = load float, ptr %i.ayi, align 4
  %i.ayk = fsub float 1.000000e+00, %i.ayj
  store float %i.ayk, ptr %i.ayi, align 4
  %i.ayl = getelementptr inbounds nuw i8, ptr %.24341211, i64 12
  br label %bb.nw

bb.nw:                                            ; preds = %bb.nv, %bb.nm, %bb.nl
  %.3435 = phi ptr [ %i.ayl, %bb.nv ], [ %.24341211, %bb.nm ], [ null, %bb.nl ] ; 2 uses
  %i.aym = load ptr, ptr %i.atz, align 8
  %i.ayn = getelementptr inbounds nuw [4 x i8], ptr %i.aym, i64 %indvars.iv1438
  store i32 %.14311212, ptr %i.ayn, align 4
  %indvars.iv.next1439 = add nuw nsw i64 %indvars.iv1438, 1 ; 2 uses
  %i.ayo = add i32 %.14311212, 1                  ; 2 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %.14371209, i64 12 ; 2 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %.14391208, i64 12 ; 2 uses
  %i.ayr = load i32, ptr %.04401223, align 8
  %i.ays = zext i32 %i.ayr to i64
  %i.ayt = icmp samesign ult i64 %indvars.iv.next1439, %i.ays
  br i1 %i.ayt, label %bb.mz, label %._crit_edge1217, !llvm.loop !41

bb.nx:                                            ; preds = %bb.lu, %._crit_edge1230
  %i.ayu = phi ptr [ %i.ani, %bb.lu ], [ %.pre1470, %._crit_edge1230 ] ; 2 uses
  %i.ayv = phi ptr [ %i.anj, %bb.lu ], [ %.pre1469, %._crit_edge1230 ] ; 2 uses
  %.1445 = phi i32 [ %.04441232, %bb.lu ], [ %i.ate, %._crit_edge1230 ]
  %indvars.iv.next1441 = add nuw nsw i64 %indvars.iv1440, 1 ; 2 uses
  %i.ayw = ptrtoint ptr %i.ayv to i64
  %i.ayx = ptrtoint ptr %i.ayu to i64
  %i.ayy = sub i64 %i.ayw, %i.ayx
  %i.ayz = sdiv exact i64 %i.ayy, 1072
  %i.aza = and i64 %i.ayz, 4294967295
  %i.azb = icmp samesign ult i64 %indvars.iv.next1441, %i.aza
  br i1 %i.azb, label %bb.lu, label %._crit_edge1235, !llvm.loop !42

bb.ny:                                            ; preds = %bb.my, %bb.nd, %bb.mn, %bb.mu, %bb.mv, %bb.mt, %bb.me
  %.pn534.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aou, %bb.me ], [ %i.arm, %bb.mn ], [ %i.atb, %bb.mt ], [ %i.atc, %bb.mu ], [ %i.atd, %bb.mv ], [ %i.auj, %bb.my ], [ %i.aux, %bb.nd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.body589

._crit_edge1235:                                  ; preds = %bb.nx, %bb.ls
  %i.azc = load i64, ptr %i.ajq, align 16         ; 2 uses
  %.idx = mul i64 %i.azc, 24
  %.add517 = add i64 %.idx, 8                     ; 2 uses
  %i.azd = icmp eq i64 %i.azc, 0
  br i1 %i.azd, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge1235, %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit
  %.idx516 = phi i64 [ %.add, %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit ], [ %.add517, %._crit_edge1235 ]
  %.add = add nsw i64 %.idx516, -24               ; 3 uses
  %.ptr518 = getelementptr inbounds i8, ptr %i.ajq, i64 %.add ; 2 uses
  %i.aze = load ptr, ptr %.ptr518, align 8        ; 3 uses
  %.not.i.i.i867 = icmp eq ptr %i.aze, null
  br i1 %.not.i.i.i867, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, label %bb.nz

bb.nz:                                            ; preds = %.preheader
  %i.azf = getelementptr inbounds nuw i8, ptr %.ptr518, i64 16
  %i.azg = load ptr, ptr %i.azf, align 8
  %i.azh = ptrtoint ptr %i.azg to i64
  %i.azi = ptrtoint ptr %i.aze to i64
  %i.azj = sub i64 %i.azh, %i.azi
  call void @_ZdlPvm(ptr noundef nonnull %i.aze, i64 noundef %i.azj) #25
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit:        ; preds = %.preheader, %bb.nz
  %i.azk = icmp eq i64 %.add, 8
  br i1 %i.azk, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, %._crit_edge1235
  call void @_ZdaPvm(ptr noundef nonnull %i.ajq, i64 noundef %.add517) #25
  %i.azl = load i32, ptr %i.aka, align 8          ; 2 uses
  %i.azm = load ptr, ptr %i.dj, align 8
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 1120
  store i32 %i.azl, ptr %i.azn, align 8
  %i.azo = zext i32 %i.azl to i64
  %i.azp = shl nuw nsw i64 %i.azo, 2
  %i.azq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.azp) #28
          to label %bb.oa unwind label %bb.lt

bb.oa:                                            ; preds = %.loopexit
  %i.azr = load ptr, ptr %i.dj, align 8
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 1128
  store ptr %i.azq, ptr %i.azs, align 8
  %i.azt = load i32, ptr %i.aka, align 8
  %.not1250 = icmp eq i32 %i.azt, 0
  br i1 %.not1250, label %._crit_edge1239, label %.lr.ph1238

._crit_edge1239:                                  ; preds = %.lr.ph1238, %bb.oa
  %i.azu = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.azv = load i32, ptr %i.azu, align 8
  %i.azw = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.azx = load i32, ptr %i.azw, align 8
  %i.azy = add i32 %i.azx, %i.azv
  %i.azz = load ptr, ptr %i.dj, align 8
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 1104
  store i32 %i.azy, ptr %i.baa, align 8
  %i.bab = load ptr, ptr %i.dj, align 8           ; 2 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %i.bab, i64 1104
  %i.bad = load i32, ptr %i.bac, align 8          ; 2 uses
  %.not521 = icmp eq i32 %i.bad, 0
  br i1 %.not521, label %bb.oj, label %bb.ob

.lr.ph1238:                                       ; preds = %bb.oa, %.lr.ph1238
  %indvars.iv1443 = phi i64 [ %indvars.iv.next1444, %.lr.ph1238 ], [ 0, %bb.oa ] ; 3 uses
  %i.bae = load ptr, ptr %i.dj, align 8
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bae, i64 1128
  %i.bag = load ptr, ptr %i.baf, align 8
  %i.bah = getelementptr inbounds nuw [4 x i8], ptr %i.bag, i64 %indvars.iv1443
  %i.bai = trunc nuw i64 %indvars.iv1443 to i32
  store i32 %i.bai, ptr %i.bah, align 4
  %indvars.iv.next1444 = add nuw nsw i64 %indvars.iv1443, 1 ; 2 uses
end_hunk_0
