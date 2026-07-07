inline.NumInlined: 896
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.asq = add nsw i64 %i.asp, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.asm, i8 0, i64 %i.asq, i1 false)
  br label %.loopexit967

.loopexit967:                                     ; preds = %.loopexit967.loopexit, %bb.mq
  %i.asr = getelementptr inbounds nuw i8, ptr %i.anp, i64 24
  store ptr %i.asm, ptr %i.asr, align 8
  %i.ass = load i32, ptr %i.ang, align 8
  %i.ast = icmp ult i32 %.04441232, %i.ass
  br i1 %i.ast, label %bb.mr, label %bb.mw

bb.mr:                                            ; preds = %.loopexit967
  %i.asu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ark) #28
          to label %bb.ms unwind label %bb.mv     ; 3 uses

bb.ms:                                            ; preds = %bb.mr
  br i1 %i.ash, label %.loopexit966, label %.loopexit966.loopexit

.loopexit966.loopexit:                            ; preds = %bb.ms
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
  %.1439.lcssa = phi ptr [ %.04381224, %bb.mx ], [ %i.ayd, %bb.nw ]
  %.1437.lcssa = phi ptr [ %.04361225, %bb.mx ], [ %i.ayc, %bb.nw ]
  %.2434.lcssa = phi ptr [ %.14331226, %bb.mx ], [ %.3435, %bb.nw ]
  %.1431.lcssa = phi i32 [ %.04301227, %bb.mx ], [ %i.ayb, %bb.nw ]
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
  %.14311212 = phi i32 [ %.04301227, %.lr.ph1216 ], [ %i.ayb, %bb.nw ] ; 2 uses
  %.24341211 = phi ptr [ %.14331226, %.lr.ph1216 ], [ %.3435, %bb.nw ] ; 5 uses
  %.14371209 = phi ptr [ %.04361225, %.lr.ph1216 ], [ %i.ayc, %bb.nw ] ; 4 uses
  %.14391208 = phi ptr [ %.04381224, %.lr.ph1216 ], [ %i.ayd, %bb.nw ] ; 2 uses
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
  %10 = fsub float %i.awb, %i.awc                 ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avt, i64 4
  %11 = getelementptr inbounds nuw i8, ptr %i.avp, i64 4
  %i.awe = load <2 x float>, ptr %i.awd, align 4
  %12 = load <2 x float>, ptr %11, align 4        ; 3 uses
  %13 = fsub <2 x float> %i.awe, %12              ; 3 uses
  %14 = load <2 x float>, ptr %i.awa, align 4
  %15 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %16 = insertelement <2 x float> %15, float %i.awc, i64 0
  %i.awf = fsub <2 x float> %14, %16              ; 3 uses
  %i.awg = getelementptr i8, ptr %i.avz, i64 -4
  %i.awh = load float, ptr %i.awg, align 4
  %17 = extractelement <2 x float> %12, i64 1
  %i.awi = fsub float %i.awh, %17                 ; 4 uses
  %i.awj = extractelement <2 x float> %i.awf, i64 1 ; 3 uses
  %i.awk = fmul float %i.awj, %i.awj
  %i.awl = extractelement <2 x float> %i.awf, i64 0 ; 3 uses
  %i.awm = call float @llvm.fmuladd.f32(float %i.awl, float %i.awl, float %i.awk)
  %i.awn = call noundef float @llvm.fmuladd.f32(float %i.awi, float %i.awi, float %i.awm) ; 2 uses
  %i.awo = fcmp oeq float %i.awn, 0.000000e+00
  br i1 %i.awo, label %bb.ni, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.nh
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.awn)
  %i.awp = fdiv float 1.000000e+00, %sqrt.i.i     ; 3 uses
  %i.awq = fmul float %i.awl, %i.awp
  %.sroa.0905.0.vec.insert = insertelement <2 x float> poison, float %i.awq, i64 0
  %i.awr = fmul float %i.awj, %i.awp
  %.sroa.0905.4.vec.insert = insertelement <2 x float> %.sroa.0905.0.vec.insert, float %i.awr, i64 1
  %i.aws = fmul float %i.awi, %i.awp
  br label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.10.0 = phi float [ %i.awi, %bb.nh ], [ %i.aws, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 2 uses
  %.sroa.0905.0 = phi <2 x float> [ %i.awf, %bb.nh ], [ %.sroa.0905.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %.sroa.0905.4.vec.extract911 = extractelement <2 x float> %.sroa.0905.0, i64 1 ; 2 uses
  %.sroa.0905.4.vec.extract911.a = extractelement <2 x float> %.sroa.0905.0, i64 0
  %18 = fneg float %.sroa.10.0
  %i.awt = fneg float %.sroa.0905.4.vec.extract911
  %19 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %20 = insertelement <2 x float> %19, float %10, i64 1
  %21 = insertelement <2 x float> poison, float %i.awt, i64 0
  %22 = insertelement <2 x float> %21, float %18, i64 1
  %23 = fmul <2 x float> %20, %22
  %24 = shufflevector <2 x float> %.sroa.0905.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %25 = insertelement <2 x float> %24, float %.sroa.10.0, i64 0
  %26 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %25, <2 x float> %23)
  %27 = fneg float %.sroa.0905.4.vec.extract911.a
  %28 = extractelement <2 x float> %13, i64 0
  %29 = fmul float %28, %27
  %30 = call float @llvm.fmuladd.f32(float %10, float %.sroa.0905.4.vec.extract911, float %29)
  br label %bb.nj

bb.nj:                                            ; preds = %bb.ni, %bb.ng
  %.sroa.7.1 = phi float [ %.sroa.7.01206, %bb.ng ], [ %30, %bb.ni ] ; 2 uses
  %.sroa.0914.3 = phi <2 x float> [ %.sroa.0914.21207, %bb.ng ], [ %26, %bb.ni ] ; 2 uses
  store <2 x float> %.sroa.0914.3, ptr %.14371209, align 4
  %.sroa.7.0..1437.sroa_idx = getelementptr inbounds nuw i8, ptr %.14371209, i64 8
  store float %.sroa.7.1, ptr %.sroa.7.0..1437.sroa_idx, align 4
  br label %bb.nl

bb.nk:                                            ; preds = %bb.nf, %bb.ne
  %i.awu = getelementptr inbounds nuw [12 x i8], ptr %i.avf, i64 %i.avd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.14371209, ptr noundef nonnull align 4 dereferenceable(12) %i.awu, i64 12, i1 false)
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %bb.nj
  %.sroa.7.2 = phi float [ %.sroa.7.01206, %bb.nk ], [ %.sroa.7.1, %bb.nj ]
  %.sroa.0914.4 = phi <2 x float> [ %.sroa.0914.21207, %bb.nk ], [ %.sroa.0914.3, %bb.nj ]
  %.2427 = phi i1 [ %.04251213, %bb.nk ], [ true, %bb.nj ]
  %.not529 = icmp eq ptr %.24341211, null
  br i1 %.not529, label %bb.nw, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.awv = load ptr, ptr %i.aue, align 8          ; 2 uses
  %i.aww = load ptr, ptr %i.aud, align 8          ; 4 uses
  %i.awx = ptrtoint ptr %i.awv to i64
  %i.awy = ptrtoint ptr %i.aww to i64
  %i.awz = sub i64 %i.awx, %i.awy                 ; 2 uses
  %i.axa = sdiv exact i64 %i.awz, 12
  %.not530 = icmp eq ptr %i.awv, %i.aww
  br i1 %.not530, label %bb.nw, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.axb = load i32, ptr %i.auf, align 8
  %.not531 = icmp eq i32 %i.axb, -1
  br i1 %.not531, label %bb.nq, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.axc = load ptr, ptr %i.aua, align 8
  %i.axd = load ptr, ptr %i.ati, align 8
  %i.axe = ptrtoint ptr %i.axc to i64
  %i.axf = ptrtoint ptr %i.axd to i64
  %i.axg = sub i64 %i.axe, %i.axf
  %.not532 = icmp ult i64 %i.awz, %i.axg
  br i1 %.not532, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.axh = load ptr, ptr %i.ato, align 8
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %i.axh, i64 %indvars.iv1438
  %i.axj = load i32, ptr %i.axi, align 4
  %i.axk = zext i32 %i.axj to i64
  %i.axl = getelementptr inbounds nuw [12 x i8], ptr %i.aww, i64 %i.axk
  br label %bb.nv

bb.nq:                                            ; preds = %bb.no, %bb.nn
  %i.axm = load ptr, ptr %i.aug, align 8
  %i.axn = getelementptr inbounds nuw [4 x i8], ptr %i.axm, i64 %indvars.iv1438
  %i.axo = load i32, ptr %i.axn, align 4
  %i.axp = zext i32 %i.axo to i64                 ; 2 uses
  %.not533 = icmp ugt i64 %i.axa, %i.axp
  br i1 %.not533, label %bb.nu, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.axq = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ns unwind label %bb.nd

bb.ns:                                            ; preds = %bb.nr
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.axq, ptr noundef nonnull @.str.32)
          to label %bb.nt unwind label %bb.nd

bb.nt:                                            ; preds = %bb.ns
  %i.axr = load ptr, ptr %i.aug, align 8
  %i.axs = getelementptr inbounds nuw [4 x i8], ptr %i.axr, i64 %indvars.iv1438
  store i32 0, ptr %i.axs, align 4
  %.pre1465 = load ptr, ptr %i.aug, align 8
  %.phi.trans.insert1466 = getelementptr inbounds nuw [4 x i8], ptr %.pre1465, i64 %indvars.iv1438
  %.pre1467 = load i32, ptr %.phi.trans.insert1466, align 4
  %.pre1468 = load ptr, ptr %i.aud, align 8
  %.pre1475 = zext i32 %.pre1467 to i64
  br label %bb.nu

bb.nu:                                            ; preds = %bb.nt, %bb.nq
  %.pre-phi1476 = phi i64 [ %.pre1475, %bb.nt ], [ %i.axp, %bb.nq ]
  %i.axt = phi ptr [ %.pre1468, %bb.nt ], [ %i.aww, %bb.nq ]
  %i.axu = getelementptr inbounds nuw [12 x i8], ptr %i.axt, i64 %.pre-phi1476
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nu, %bb.np
  %.sink1816 = phi ptr [ %i.axu, %bb.nu ], [ %i.axl, %bb.np ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.24341211, ptr noundef nonnull align 4 dereferenceable(12) %.sink1816, i64 12, i1 false)
  %i.axv = getelementptr inbounds nuw i8, ptr %.24341211, i64 4 ; 2 uses
  %i.axw = load float, ptr %i.axv, align 4
  %i.axx = fsub float 1.000000e+00, %i.axw
  store float %i.axx, ptr %i.axv, align 4
  %i.axy = getelementptr inbounds nuw i8, ptr %.24341211, i64 12
  br label %bb.nw

bb.nw:                                            ; preds = %bb.nv, %bb.nm, %bb.nl
  %.3435 = phi ptr [ %i.axy, %bb.nv ], [ %.24341211, %bb.nm ], [ null, %bb.nl ] ; 2 uses
  %i.axz = load ptr, ptr %i.atz, align 8
  %i.aya = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %indvars.iv1438
  store i32 %.14311212, ptr %i.aya, align 4
  %indvars.iv.next1439 = add nuw nsw i64 %indvars.iv1438, 1 ; 2 uses
  %i.ayb = add i32 %.14311212, 1                  ; 2 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %.14371209, i64 12 ; 2 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %.14391208, i64 12 ; 2 uses
  %i.aye = load i32, ptr %.04401223, align 8
  %i.ayf = zext i32 %i.aye to i64
  %i.ayg = icmp samesign ult i64 %indvars.iv.next1439, %i.ayf
  br i1 %i.ayg, label %bb.mz, label %._crit_edge1217, !llvm.loop !41

bb.nx:                                            ; preds = %bb.lu, %._crit_edge1230
  %i.ayh = phi ptr [ %i.ani, %bb.lu ], [ %.pre1470, %._crit_edge1230 ] ; 2 uses
  %i.ayi = phi ptr [ %i.anj, %bb.lu ], [ %.pre1469, %._crit_edge1230 ] ; 2 uses
  %.1445 = phi i32 [ %.04441232, %bb.lu ], [ %i.ate, %._crit_edge1230 ]
  %indvars.iv.next1441 = add nuw nsw i64 %indvars.iv1440, 1 ; 2 uses
  %i.ayj = ptrtoint ptr %i.ayi to i64
  %i.ayk = ptrtoint ptr %i.ayh to i64
  %i.ayl = sub i64 %i.ayj, %i.ayk
  %i.aym = sdiv exact i64 %i.ayl, 1072
  %i.ayn = and i64 %i.aym, 4294967295
  %i.ayo = icmp samesign ult i64 %indvars.iv.next1441, %i.ayn
  br i1 %i.ayo, label %bb.lu, label %._crit_edge1235, !llvm.loop !42

bb.ny:                                            ; preds = %bb.my, %bb.nd, %bb.mn, %bb.mu, %bb.mv, %bb.mt, %bb.me
  %.pn534.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aou, %bb.me ], [ %i.arm, %bb.mn ], [ %i.atb, %bb.mt ], [ %i.atc, %bb.mu ], [ %i.atd, %bb.mv ], [ %i.auj, %bb.my ], [ %i.aux, %bb.nd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.body589

._crit_edge1235:                                  ; preds = %bb.nx, %bb.ls
  %i.ayp = load i64, ptr %i.ajq, align 16         ; 2 uses
  %.idx = mul i64 %i.ayp, 24
  %.add517 = add i64 %.idx, 8                     ; 2 uses
  %i.ayq = icmp eq i64 %i.ayp, 0
  br i1 %i.ayq, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge1235, %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit
  %.idx516 = phi i64 [ %.add, %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit ], [ %.add517, %._crit_edge1235 ]
  %.add = add nsw i64 %.idx516, -24               ; 3 uses
  %.ptr518 = getelementptr inbounds i8, ptr %i.ajq, i64 %.add ; 2 uses
  %i.ayr = load ptr, ptr %.ptr518, align 8        ; 3 uses
  %.not.i.i.i867 = icmp eq ptr %i.ayr, null
  br i1 %.not.i.i.i867, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, label %bb.nz

bb.nz:                                            ; preds = %.preheader
  %i.ays = getelementptr inbounds nuw i8, ptr %.ptr518, i64 16
  %i.ayt = load ptr, ptr %i.ays, align 8
  %i.ayu = ptrtoint ptr %i.ayt to i64
  %i.ayv = ptrtoint ptr %i.ayr to i64
  %i.ayw = sub i64 %i.ayu, %i.ayv
  call void @_ZdlPvm(ptr noundef nonnull %i.ayr, i64 noundef %i.ayw) #25
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit:        ; preds = %.preheader, %bb.nz
  %i.ayx = icmp eq i64 %.add, 8
  br i1 %i.ayx, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, %._crit_edge1235
  call void @_ZdaPvm(ptr noundef nonnull %i.ajq, i64 noundef %.add517) #25
  %i.ayy = load i32, ptr %i.aka, align 8          ; 2 uses
  %i.ayz = load ptr, ptr %i.dj, align 8
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 1120
  store i32 %i.ayy, ptr %i.aza, align 8
  %i.azb = zext i32 %i.ayy to i64
  %i.azc = shl nuw nsw i64 %i.azb, 2
  %i.azd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.azc) #28
          to label %bb.oa unwind label %bb.lt

bb.oa:                                            ; preds = %.loopexit
  %i.aze = load ptr, ptr %i.dj, align 8
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 1128
  store ptr %i.azd, ptr %i.azf, align 8
  %i.azg = load i32, ptr %i.aka, align 8
  %.not1250 = icmp eq i32 %i.azg, 0
  br i1 %.not1250, label %._crit_edge1239, label %.lr.ph1238

._crit_edge1239:                                  ; preds = %.lr.ph1238, %bb.oa
  %i.azh = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.azi = load i32, ptr %i.azh, align 8
  %i.azj = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.azk = load i32, ptr %i.azj, align 8
  %i.azl = add i32 %i.azk, %i.azi
  %i.azm = load ptr, ptr %i.dj, align 8
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 1104
  store i32 %i.azl, ptr %i.azn, align 8
  %i.azo = load ptr, ptr %i.dj, align 8           ; 2 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azo, i64 1104
  %i.azq = load i32, ptr %i.azp, align 8          ; 2 uses
  %.not521 = icmp eq i32 %i.azq, 0
  br i1 %.not521, label %bb.oj, label %bb.ob

.lr.ph1238:                                       ; preds = %bb.oa, %.lr.ph1238
  %indvars.iv1443 = phi i64 [ %indvars.iv.next1444, %.lr.ph1238 ], [ 0, %bb.oa ] ; 3 uses
  %i.azr = load ptr, ptr %i.dj, align 8
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 1128
  %i.azt = load ptr, ptr %i.azs, align 8
  %i.azu = getelementptr inbounds nuw [4 x i8], ptr %i.azt, i64 %indvars.iv1443
  %i.azv = trunc nuw i64 %indvars.iv1443 to i32
  store i32 %i.azv, ptr %i.azu, align 4
  %indvars.iv.next1444 = add nuw nsw i64 %indvars.iv1443, 1 ; 2 uses
  %i.azw = load i32, ptr %i.aka, align 8
  %i.azx = zext i32 %i.azw to i64
  %i.azy = icmp samesign ult i64 %indvars.iv.next1444, %i.azx
  br i1 %i.azy, label %.lr.ph1238, label %._crit_edge1239, !llvm.loop !43

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  invoke void @__cxa_rethrow() #26
          to label %bb.k unwind label %bb.g

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.bx

bb.j:                                             ; preds = %bb.g
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  tail call void @__clang_call_terminate(ptr %i.cb) #29
  unreachable

bb.k:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775632
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #26
  unreachable

_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 1072                ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 8603891825424231)
  %i.l = select i1 %i.j, i64 8603891825424231, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 1072
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1040
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1072) %i.q, i8 0, i64 1040, i1 false)
  store <2 x float> splat (float 6.000000e-01), ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1048
  store float 6.000000e-01, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1052
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1068
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.u, align 4
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit ] ; 13 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit ] ; 13 uses
  %i.v = load i32, ptr %.01214.i.i.i.i.i, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.w, i8 0, i64 1024, i1 false)
  %spec.select.i.i.i.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.v, i32 1023) ; 2 uses
  store i32 %spec.select.i.i.i.i.i.i.i.i, ptr %.015.i.i.i.i.i, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4
  %i.y = zext nneg i32 %spec.select.i.i.i.i.i.i.i.i to i64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull align 4 %i.x, i64 %i.y, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  store i8 0, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1028
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1028
  %i.ac = load float, ptr %i.ab, align 4
  store float %i.ac, ptr %i.aa, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1032
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1032
  %i.af = load float, ptr %i.ae, align 4
  store float %i.af, ptr %i.ad, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1036
  %i.ah = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1036
  %i.ai = load float, ptr %i.ah, align 4
  store float %i.ai, ptr %i.ag, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1040
  %i.ak = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1040
  %i.al = load float, ptr %i.ak, align 4
  store float %i.al, ptr %i.aj, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1044
  %i.an = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1044
  %i.ao = load float, ptr %i.an, align 4
  store float %i.ao, ptr %i.am, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1048
  %i.aq = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1048
  %i.ar = load float, ptr %i.aq, align 4
  store float %i.ar, ptr %i.ap, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1052
  %i.at = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1052
  %i.au = load float, ptr %i.at, align 4
  store float %i.au, ptr %i.as, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1056
  %i.aw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1056
  %i.ax = load float, ptr %i.aw, align 4
  store float %i.ax, ptr %i.av, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1060
  %i.az = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1060
  %i.ba = load float, ptr %i.az, align 4
  store float %i.ba, ptr %i.ay, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1064
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1064
  %i.bd = load i64, ptr %i.bc, align 4
  store i64 %i.bd, ptr %i.bb, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1072 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1072 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !52

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.bf, %.lr.ph.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 1072 ; 2 uses
  %.not13.i.i.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i27, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i28

.lr.ph.i.i.i.i.i28:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i28
  %.015.i.i.i.i.i29 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i28 ], [ %i.bg, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 7 uses
  %.01214.i.i.i.i.i30 = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i28 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 7 uses
  %i.bh = load i32, ptr %.01214.i.i.i.i.i30, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.bi, i8 0, i64 1024, i1 false)
  %spec.select.i.i.i.i.i.i.i.i31 = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 1023) ; 2 uses
  store i32 %spec.select.i.i.i.i.i.i.i.i31, ptr %.015.i.i.i.i.i29, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 4
  %i.bk = zext nneg i32 %spec.select.i.i.i.i.i.i.i.i31 to i64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bi, ptr nonnull align 4 %i.bj, i64 %i.bk, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk
  store i8 0, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1028
  %i.bn = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1028
  %i.bo = load <4 x float>, ptr %i.bn, align 4
  store <4 x float> %i.bo, ptr %i.bm, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1044
  %i.bq = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1044
  %i.br = load <4 x float>, ptr %i.bq, align 4
  store <4 x float> %i.br, ptr %i.bp, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1060
  %i.bt = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1060
  %i.bu = load float, ptr %i.bt, align 4
  store float %i.bu, ptr %i.bs, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1064
  %i.bw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1064
  %i.bx = load i64, ptr %i.bw, align 4
  store i64 %i.bx, ptr %i.bv, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1072 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1072 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.by, %i.b
  br i1 %.not.i.i.i.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i28, !llvm.loop !52

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit34: ; preds = %.lr.ph.i.i.i.i.i28, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i33 = phi ptr [ %i.bg, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.bz, %.lr.ph.i.i.i.i.i28 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN6Assimp11Q3DImporter8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit34
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cd) #25
  br label %_ZNSt12_Vector_baseIN6Assimp11Q3DImporter8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp11Q3DImporter8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i33, ptr %i.a, align 8
  %i.ce = getelementptr inbounds nuw [1072 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ce, ptr %i.ca, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noreturn }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(none) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{null}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!8 = distinct !{!8, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4FaceES2_SaIS2_EEvPT_PT0_RT1_"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!29 = distinct !{!29, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_"}
!30 = !{!31}
!31 = distinct !{!31, !29, !"_ZSt19__relocate_object_aISt4pairIjjES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!32 = distinct !{!32, !5, !33, !34}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = distinct !{!35, !5, !33}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{null, ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = distinct !{null, null, null, null}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc: argument 0"}
!50 = distinct !{!50, !"_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc"}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4MeshES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!55 = distinct !{!55, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4MeshES2_SaIS2_EEvPT_PT0_RT1_"}
!56 = !{!57}
!57 = distinct !{!57, !55, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4MeshES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!58 = distinct !{!58, !5}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!61 = distinct !{!61, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!64 = distinct !{!64, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!67 = distinct !{!67, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!68 = !{!66, !63, !60}
!69 = distinct !{null, null}
!70 = distinct !{null}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!73 = distinct !{!73, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!76 = distinct !{!76, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!79 = distinct !{!79, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!82 = distinct !{!82, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!83 = !{!81, !78, !75, !72}
!84 = distinct !{!84, !5}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4MeshES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!87 = distinct !{!87, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4MeshES2_SaIS2_EEvPT_PT0_RT1_"}
!88 = !{!89}
!89 = distinct !{!89, !87, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4MeshES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4MeshES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!92 = distinct !{!92, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4MeshES2_SaIS2_EEvPT_PT0_RT1_"}
!93 = !{!94}
!94 = distinct !{!94, !92, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4MeshES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!95 = !{!96, !98}
!96 = distinct !{!96, !97, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!97 = distinct !{!97, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!98 = distinct !{!98, !97, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!99 = distinct !{!99, !5}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!102 = distinct !{!102, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4FaceES2_SaIS2_EEvPT_PT0_RT1_"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!107 = distinct !{!107, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4FaceES2_SaIS2_EEvPT_PT0_RT1_"}
!108 = !{!109}
!109 = distinct !{!109, !107, !"_ZSt19__relocate_object_aIN6Assimp11Q3DImporter4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
end_hunk_1
