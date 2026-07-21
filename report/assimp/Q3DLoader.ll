inline.NumInlined: 896
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.asv = add nsw i64 %i.ark, -12                ; 2 uses
  %i.asw = urem i64 %i.asv, 12
  %i.asx = sub nuw nsw i64 %i.asv, %i.asw
  %i.asy = add nsw i64 %i.asx, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.asu, i8 0, i64 %i.asy, i1 false)
  br label %.loopexit966

.loopexit966:                                     ; preds = %.loopexit966.loopexit, %bb.ms
  %i.asz = getelementptr inbounds nuw i8, ptr %i.anp, i64 112
  store ptr %i.asu, ptr %i.asz, align 8
  %i.ata = getelementptr inbounds nuw i8, ptr %i.anp, i64 176
  store i32 2, ptr %i.ata, align 8
  br label %bb.mw

bb.mt:                                            ; preds = %._crit_edge1204
  %i.atb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ny

bb.mu:                                            ; preds = %.loopexit968
  %i.atc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ny

bb.mv:                                            ; preds = %bb.mr
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
  %.1439.lcssa = phi ptr [ %.04381224, %bb.mx ], [ %i.ayu, %bb.nw ]
  %.1437.lcssa = phi ptr [ %.04361225, %bb.mx ], [ %i.ayt, %bb.nw ]
  %.2434.lcssa = phi ptr [ %.14331226, %bb.mx ], [ %.3435, %bb.nw ]
  %.1431.lcssa = phi i32 [ %.04301227, %bb.mx ], [ %i.ays, %bb.nw ]
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
  %.14311212 = phi i32 [ %.04301227, %.lr.ph1216 ], [ %i.ays, %bb.nw ] ; 2 uses
  %.24341211 = phi ptr [ %.14331226, %.lr.ph1216 ], [ %.3435, %bb.nw ] ; 5 uses
  %.14371209 = phi ptr [ %.04361225, %.lr.ph1216 ], [ %i.ayt, %bb.nw ] ; 4 uses
  %.14391208 = phi ptr [ %.04381224, %.lr.ph1216 ], [ %i.ayu, %bb.nw ] ; 2 uses
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
  %i.awm = fsub <2 x float> %i.awj, %i.awl        ; 3 uses
  %i.awn = getelementptr i8, ptr %i.avz, i64 -4
  %i.awo = load float, ptr %i.awn, align 4
  %i.awp = extractelement <2 x float> %i.awh, i64 1
  %i.awq = fsub float %i.awo, %i.awp              ; 4 uses
  %10 = extractelement <2 x float> %i.awm, i64 1  ; 3 uses
  %11 = fmul float %10, %10
  %i.awr = extractelement <2 x float> %i.awm, i64 0 ; 3 uses
  %i.aws = call float @llvm.fmuladd.f32(float %i.awr, float %i.awr, float %11)
  %i.awt = call noundef float @llvm.fmuladd.f32(float %i.awq, float %i.awq, float %i.aws) ; 2 uses
  %i.awu = fcmp oeq float %i.awt, 0.000000e+00
  br i1 %i.awu, label %bb.ni, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.nh
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.awt)
  %i.awv = fdiv float 1.000000e+00, %sqrt.i.i     ; 3 uses
  %12 = fmul float %i.awr, %i.awv
  %.sroa.0905.0.vec.insert = insertelement <2 x float> poison, float %12, i64 0
  %13 = fmul float %10, %i.awv
  %.sroa.0905.4.vec.insert = insertelement <2 x float> %.sroa.0905.0.vec.insert, float %13, i64 1
  %i.aww = fmul float %i.awq, %i.awv
  br label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.10.0 = phi float [ %i.awq, %bb.nh ], [ %i.aww, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 2 uses
  %.sroa.0905.0 = phi <2 x float> [ %i.awm, %bb.nh ], [ %.sroa.0905.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %.sroa.0905.4.vec.extract911 = extractelement <2 x float> %.sroa.0905.0, i64 1 ; 2 uses
  %.sroa.0905.0.vec.extract908 = extractelement <2 x float> %.sroa.0905.0, i64 0
  %i.awx = fneg float %.sroa.10.0
  %i.awy = fneg float %.sroa.0905.4.vec.extract911
  %i.awz = shufflevector <2 x float> %i.awi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.axa = insertelement <2 x float> %i.awz, float %i.awd, i64 1
  %i.axb = insertelement <2 x float> poison, float %i.awy, i64 0
  %i.axc = insertelement <2 x float> %i.axb, float %i.awx, i64 1
  %i.axd = fmul <2 x float> %i.axa, %i.axc
  %i.axe = shufflevector <2 x float> %.sroa.0905.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.axf = insertelement <2 x float> %i.axe, float %.sroa.10.0, i64 0
  %i.axg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.awi, <2 x float> %i.axf, <2 x float> %i.axd)
  %i.axh = fneg float %.sroa.0905.0.vec.extract908
  %i.axi = extractelement <2 x float> %i.awi, i64 0
  %i.axj = fmul float %i.axi, %i.axh
  %i.axk = call float @llvm.fmuladd.f32(float %i.awd, float %.sroa.0905.4.vec.extract911, float %i.axj)
  br label %bb.nj

bb.nj:                                            ; preds = %bb.ni, %bb.ng
  %.sroa.7.1 = phi float [ %.sroa.7.01206, %bb.ng ], [ %i.axk, %bb.ni ] ; 2 uses
  %.sroa.0914.3 = phi <2 x float> [ %.sroa.0914.21207, %bb.ng ], [ %i.axg, %bb.ni ] ; 2 uses
  store <2 x float> %.sroa.0914.3, ptr %.14371209, align 4
  %.sroa.7.0..1437.sroa_idx = getelementptr inbounds nuw i8, ptr %.14371209, i64 8
  store float %.sroa.7.1, ptr %.sroa.7.0..1437.sroa_idx, align 4
  br label %bb.nl

bb.nk:                                            ; preds = %bb.nf, %bb.ne
  %i.axl = getelementptr inbounds nuw [12 x i8], ptr %i.avf, i64 %i.avd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.14371209, ptr noundef nonnull align 4 dereferenceable(12) %i.axl, i64 12, i1 false)
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %bb.nj
  %.sroa.7.2 = phi float [ %.sroa.7.01206, %bb.nk ], [ %.sroa.7.1, %bb.nj ]
  %.sroa.0914.4 = phi <2 x float> [ %.sroa.0914.21207, %bb.nk ], [ %.sroa.0914.3, %bb.nj ]
  %.2427 = phi i1 [ %.04251213, %bb.nk ], [ true, %bb.nj ]
  %.not529 = icmp eq ptr %.24341211, null
  br i1 %.not529, label %bb.nw, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.axm = load ptr, ptr %i.aue, align 8          ; 2 uses
  %i.axn = load ptr, ptr %i.aud, align 8          ; 4 uses
  %i.axo = ptrtoint ptr %i.axm to i64
  %i.axp = ptrtoint ptr %i.axn to i64
  %i.axq = sub i64 %i.axo, %i.axp                 ; 2 uses
  %i.axr = sdiv exact i64 %i.axq, 12
  %.not530 = icmp eq ptr %i.axm, %i.axn
  br i1 %.not530, label %bb.nw, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.axs = load i32, ptr %i.auf, align 8
  %.not531 = icmp eq i32 %i.axs, -1
  br i1 %.not531, label %bb.nq, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.axt = load ptr, ptr %i.aua, align 8
  %i.axu = load ptr, ptr %i.ati, align 8
  %i.axv = ptrtoint ptr %i.axt to i64
  %i.axw = ptrtoint ptr %i.axu to i64
  %i.axx = sub i64 %i.axv, %i.axw
  %.not532 = icmp ult i64 %i.axq, %i.axx
  br i1 %.not532, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.axy = load ptr, ptr %i.ato, align 8
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %i.axy, i64 %indvars.iv1438
  %i.aya = load i32, ptr %i.axz, align 4
  %i.ayb = zext i32 %i.aya to i64
  %i.ayc = getelementptr inbounds nuw [12 x i8], ptr %i.axn, i64 %i.ayb
  br label %bb.nv

bb.nq:                                            ; preds = %bb.no, %bb.nn
  %i.ayd = load ptr, ptr %i.aug, align 8
  %i.aye = getelementptr inbounds nuw [4 x i8], ptr %i.ayd, i64 %indvars.iv1438
  %i.ayf = load i32, ptr %i.aye, align 4
  %i.ayg = zext i32 %i.ayf to i64                 ; 2 uses
  %.not533 = icmp ugt i64 %i.axr, %i.ayg
  br i1 %.not533, label %bb.nu, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.ayh = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ns unwind label %bb.nd

bb.ns:                                            ; preds = %bb.nr
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ayh, ptr noundef nonnull @.str.32)
          to label %bb.nt unwind label %bb.nd

bb.nt:                                            ; preds = %bb.ns
  %i.ayi = load ptr, ptr %i.aug, align 8
  %i.ayj = getelementptr inbounds nuw [4 x i8], ptr %i.ayi, i64 %indvars.iv1438
  store i32 0, ptr %i.ayj, align 4
  %.pre1465 = load ptr, ptr %i.aug, align 8
  %.phi.trans.insert1466 = getelementptr inbounds nuw [4 x i8], ptr %.pre1465, i64 %indvars.iv1438
  %.pre1467 = load i32, ptr %.phi.trans.insert1466, align 4
  %.pre1468 = load ptr, ptr %i.aud, align 8
  %.pre1475 = zext i32 %.pre1467 to i64
  br label %bb.nu

bb.nu:                                            ; preds = %bb.nt, %bb.nq
  %.pre-phi1476 = phi i64 [ %.pre1475, %bb.nt ], [ %i.ayg, %bb.nq ]
  %i.ayk = phi ptr [ %.pre1468, %bb.nt ], [ %i.axn, %bb.nq ]
  %i.ayl = getelementptr inbounds nuw [12 x i8], ptr %i.ayk, i64 %.pre-phi1476
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nu, %bb.np
  %.sink1816 = phi ptr [ %i.ayl, %bb.nu ], [ %i.ayc, %bb.np ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.24341211, ptr noundef nonnull align 4 dereferenceable(12) %.sink1816, i64 12, i1 false)
  %i.aym = getelementptr inbounds nuw i8, ptr %.24341211, i64 4 ; 2 uses
  %i.ayn = load float, ptr %i.aym, align 4
  %i.ayo = fsub float 1.000000e+00, %i.ayn
  store float %i.ayo, ptr %i.aym, align 4
  %i.ayp = getelementptr inbounds nuw i8, ptr %.24341211, i64 12
  br label %bb.nw

bb.nw:                                            ; preds = %bb.nv, %bb.nm, %bb.nl
  %.3435 = phi ptr [ %i.ayp, %bb.nv ], [ %.24341211, %bb.nm ], [ null, %bb.nl ] ; 2 uses
  %i.ayq = load ptr, ptr %i.atz, align 8
  %i.ayr = getelementptr inbounds nuw [4 x i8], ptr %i.ayq, i64 %indvars.iv1438
  store i32 %.14311212, ptr %i.ayr, align 4
  %indvars.iv.next1439 = add nuw nsw i64 %indvars.iv1438, 1 ; 2 uses
  %i.ays = add i32 %.14311212, 1                  ; 2 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %.14371209, i64 12 ; 2 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %.14391208, i64 12 ; 2 uses
  %i.ayv = load i32, ptr %.04401223, align 8
  %i.ayw = zext i32 %i.ayv to i64
  %i.ayx = icmp samesign ult i64 %indvars.iv.next1439, %i.ayw
  br i1 %i.ayx, label %bb.mz, label %._crit_edge1217, !llvm.loop !41

bb.nx:                                            ; preds = %bb.lu, %._crit_edge1230
  %i.ayy = phi ptr [ %i.ani, %bb.lu ], [ %.pre1470, %._crit_edge1230 ] ; 2 uses
  %i.ayz = phi ptr [ %i.anj, %bb.lu ], [ %.pre1469, %._crit_edge1230 ] ; 2 uses
  %.1445 = phi i32 [ %.04441232, %bb.lu ], [ %i.ate, %._crit_edge1230 ]
  %indvars.iv.next1441 = add nuw nsw i64 %indvars.iv1440, 1 ; 2 uses
  %i.aza = ptrtoint ptr %i.ayz to i64
  %i.azb = ptrtoint ptr %i.ayy to i64
  %i.azc = sub i64 %i.aza, %i.azb
  %i.azd = sdiv exact i64 %i.azc, 1072
  %i.aze = and i64 %i.azd, 4294967295
  %i.azf = icmp samesign ult i64 %indvars.iv.next1441, %i.aze
  br i1 %i.azf, label %bb.lu, label %._crit_edge1235, !llvm.loop !42

bb.ny:                                            ; preds = %bb.my, %bb.nd, %bb.mn, %bb.mu, %bb.mv, %bb.mt, %bb.me
  %.pn534.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aou, %bb.me ], [ %i.arm, %bb.mn ], [ %i.atb, %bb.mt ], [ %i.atc, %bb.mu ], [ %i.atd, %bb.mv ], [ %i.auj, %bb.my ], [ %i.aux, %bb.nd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.body589

._crit_edge1235:                                  ; preds = %bb.nx, %bb.ls
  %i.azg = load i64, ptr %i.ajq, align 16         ; 2 uses
  %.idx = mul i64 %i.azg, 24
  %.add517 = add i64 %.idx, 8                     ; 2 uses
  %i.azh = icmp eq i64 %i.azg, 0
  br i1 %i.azh, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge1235, %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit
  %.idx516 = phi i64 [ %.add, %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit ], [ %.add517, %._crit_edge1235 ]
  %.add = add nsw i64 %.idx516, -24               ; 3 uses
  %.ptr518 = getelementptr inbounds i8, ptr %i.ajq, i64 %.add ; 2 uses
  %i.azi = load ptr, ptr %.ptr518, align 8        ; 3 uses
  %.not.i.i.i867 = icmp eq ptr %i.azi, null
  br i1 %.not.i.i.i867, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, label %bb.nz

bb.nz:                                            ; preds = %.preheader
  %i.azj = getelementptr inbounds nuw i8, ptr %.ptr518, i64 16
  %i.azk = load ptr, ptr %i.azj, align 8
  %i.azl = ptrtoint ptr %i.azk to i64
  %i.azm = ptrtoint ptr %i.azi to i64
  %i.azn = sub i64 %i.azl, %i.azm
  call void @_ZdlPvm(ptr noundef nonnull %i.azi, i64 noundef %i.azn) #25
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit:        ; preds = %.preheader, %bb.nz
  %i.azo = icmp eq i64 %.add, 8
  br i1 %i.azo, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, %._crit_edge1235
  call void @_ZdaPvm(ptr noundef nonnull %i.ajq, i64 noundef %.add517) #25
  %i.azp = load i32, ptr %i.aka, align 8          ; 2 uses
  %i.azq = load ptr, ptr %i.dj, align 8
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 1120
  store i32 %i.azp, ptr %i.azr, align 8
  %i.azs = zext i32 %i.azp to i64
  %i.azt = shl nuw nsw i64 %i.azs, 2
  %i.azu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.azt) #28
          to label %bb.oa unwind label %bb.lt

bb.oa:                                            ; preds = %.loopexit
  %i.azv = load ptr, ptr %i.dj, align 8
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 1128
  store ptr %i.azu, ptr %i.azw, align 8
  %i.azx = load i32, ptr %i.aka, align 8
  %.not1250 = icmp eq i32 %i.azx, 0
  br i1 %.not1250, label %._crit_edge1239, label %.lr.ph1238

._crit_edge1239:                                  ; preds = %.lr.ph1238, %bb.oa
  %i.azy = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.azz = load i32, ptr %i.azy, align 8
  %i.baa = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bab = load i32, ptr %i.baa, align 8
  %i.bac = add i32 %i.bab, %i.azz
  %i.bad = load ptr, ptr %i.dj, align 8
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bad, i64 1104
end_hunk_0
