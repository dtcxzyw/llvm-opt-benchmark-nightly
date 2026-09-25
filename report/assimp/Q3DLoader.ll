Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Q3DLoader?download=true
inline.NumInlined: 896
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
bb.na:                                            ; preds = %.loopexit967, %.loopexit968
  %.0423 = phi ptr [ %i.atn, %.loopexit967 ], [ null, %.loopexit968 ]
  %i.aty = load ptr, ptr %i.anu, align 8          ; 2 uses
  %i.atz = load ptr, ptr %i.anw, align 8          ; 2 uses
  %.not9651225 = icmp eq ptr %i.aty, %i.atz
  br i1 %.not9651225, label %._crit_edge1234, label %.lr.ph1233

._crit_edge1234:                                  ; preds = %._crit_edge1221, %bb.na
  %i.aua = add i32 %.04321236, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %.pre1476 = load ptr, ptr %i.ajd, align 8
  %.pre1477 = load ptr, ptr %8, align 8
  br label %bb.ob

.lr.ph1233:                                       ; preds = %bb.na, %._crit_edge1221
  %.04211231 = phi i32 [ %.1422.lcssa, %._crit_edge1221 ], [ 0, %bb.na ] ; 2 uses
  %.14241230 = phi ptr [ %.2425.lcssa, %._crit_edge1221 ], [ %.0423, %bb.na ] ; 2 uses
  %.04271229 = phi ptr [ %.1428.lcssa, %._crit_edge1221 ], [ %i.atb, %bb.na ] ; 2 uses
  %.04291228 = phi ptr [ %.1430.lcssa, %._crit_edge1221 ], [ %i.arx, %bb.na ] ; 2 uses
  %.04311227 = phi ptr [ %i.avf, %._crit_edge1221 ], [ %i.aqp, %bb.na ] ; 6 uses
  %.sroa.0919.01226 = phi ptr [ %i.ave, %._crit_edge1221 ], [ %i.aty, %bb.na ] ; 3 uses
  %i.aub = load i32, ptr %.sroa.0919.01226, align 4
  %i.auc = zext i32 %i.aub to i64
  %i.aud = load ptr, ptr %9, align 8
  %i.aue = getelementptr inbounds nuw [104 x i8], ptr %i.aud, i64 %i.auc ; 11 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aue, i64 72
  %i.aug = getelementptr inbounds nuw i8, ptr %.sroa.0919.01226, i64 4
  %i.auh = load i32, ptr %i.aug, align 4
  %i.aui = zext i32 %i.auh to i64
  %i.auj = load ptr, ptr %i.auf, align 8
  %i.auk = getelementptr inbounds nuw [56 x i8], ptr %i.auj, i64 %i.aui ; 8 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 8 ; 2 uses
  %i.aum = load ptr, ptr %i.aul, align 8
  %i.aun = load ptr, ptr %i.auk, align 8
  %i.auo = ptrtoint ptr %i.aum to i64
  %i.aup = ptrtoint ptr %i.aun to i64
  %i.auq = sub i64 %i.auo, %i.aup                 ; 2 uses
  %i.aur = lshr exact i64 %i.auq, 2
  %i.aus = trunc i64 %i.aur to i32
  store i32 %i.aus, ptr %.04311227, align 8
  %i.aut = and i64 %i.auq, 17179869180
  %i.auu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aut) #28
          to label %bb.nb unwind label %bb.nc

bb.nb:                                            ; preds = %.lr.ph1233
  %i.auv = getelementptr inbounds nuw i8, ptr %.04311227, i64 8 ; 2 uses
  store ptr %i.auu, ptr %i.auv, align 8
  %i.auw = load i32, ptr %.04311227, align 8
  %.not1253 = icmp eq i32 %i.auw, 0
  br i1 %.not1253, label %._crit_edge1221, label %.lr.ph1220

.lr.ph1220:                                       ; preds = %bb.nb
  %i.aux = getelementptr inbounds nuw i8, ptr %i.aue, i64 8 ; 2 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aue, i64 24
  %i.auz = getelementptr inbounds nuw i8, ptr %i.aue, i64 32
  %i.ava = getelementptr inbounds nuw i8, ptr %i.aue, i64 48 ; 2 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.aue, i64 56
  %i.avc = getelementptr inbounds nuw i8, ptr %i.aue, i64 96
  %i.avd = getelementptr inbounds nuw i8, ptr %i.auk, i64 24 ; 3 uses
  br label %bb.nd

._crit_edge1221:                                  ; preds = %bb.oa, %bb.nb
  %.1430.lcssa = phi ptr [ %.04291228, %bb.nb ], [ %i.azn, %bb.oa ]
  %.1428.lcssa = phi ptr [ %.04271229, %bb.nb ], [ %i.azm, %bb.oa ]
  %.2425.lcssa = phi ptr [ %.14241230, %bb.nb ], [ %.3426, %bb.oa ]
  %.1422.lcssa = phi i32 [ %.04211231, %bb.nb ], [ %i.azl, %bb.oa ]
  %i.ave = getelementptr inbounds nuw i8, ptr %.sroa.0919.01226, i64 8 ; 2 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %.04311227, i64 16
  %.not965 = icmp eq ptr %i.ave, %i.atz
  br i1 %.not965, label %._crit_edge1234, label %.lr.ph1233, !llvm.loop !35

bb.nc:                                            ; preds = %.lr.ph1233
  %i.avg = landingpad { ptr, i32 }
          cleanup
  br label %bb.oc

bb.nd:                                            ; preds = %.lr.ph1220, %bb.oa
  %indvars.iv1444 = phi i64 [ 0, %.lr.ph1220 ], [ %indvars.iv.next1445, %bb.oa ] ; 10 uses
  %.04181217 = phi i1 [ false, %.lr.ph1220 ], [ %.2420, %bb.oa ] ; 2 uses
  %.14221216 = phi i32 [ %.04211231, %.lr.ph1220 ], [ %i.azl, %bb.oa ] ; 2 uses
  %.24251215 = phi ptr [ %.14241230, %.lr.ph1220 ], [ %.3426, %bb.oa ] ; 5 uses
  %.14281213 = phi ptr [ %.04271229, %.lr.ph1220 ], [ %i.azm, %bb.oa ] ; 4 uses
  %.14301212 = phi ptr [ %.04291228, %.lr.ph1220 ], [ %i.azn, %bb.oa ] ; 2 uses
  %.sroa.0915.01211 = phi <2 x float> [ zeroinitializer, %.lr.ph1220 ], [ %.sroa.0915.2, %bb.oa ] ; 2 uses
  %.sroa.7.01210 = phi float [ 0.000000e+00, %.lr.ph1220 ], [ %.sroa.7.2, %bb.oa ] ; 2 uses
  %i.avh = load ptr, ptr %i.auk, align 8
  %i.avi = getelementptr inbounds nuw [4 x i8], ptr %i.avh, i64 %indvars.iv1444
  %i.avj = load i32, ptr %i.avi, align 4
  %i.avk = zext i32 %i.avj to i64                 ; 2 uses
  %i.avl = load ptr, ptr %i.aux, align 8
  %i.avm = load ptr, ptr %i.aue, align 8          ; 2 uses
  %i.avn = ptrtoint ptr %i.avl to i64
  %i.avo = ptrtoint ptr %i.avm to i64
  %i.avp = sub i64 %i.avn, %i.avo
  %i.avq = sdiv exact i64 %i.avp, 12
  %.not525 = icmp ugt i64 %i.avq, %i.avk
  br i1 %.not525, label %bb.ni, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.avr = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.nf unwind label %bb.nh

bb.nf:                                            ; preds = %bb.ne
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.avr, ptr noundef nonnull @.str.31)
          to label %bb.ng unwind label %bb.nh

bb.ng:                                            ; preds = %bb.nf
  %i.avs = load ptr, ptr %i.auk, align 8
  %i.avt = getelementptr inbounds nuw [4 x i8], ptr %i.avs, i64 %indvars.iv1444
  store i32 0, ptr %i.avt, align 4
  %.pre1468 = load ptr, ptr %i.auk, align 8
  %.phi.trans.insert1469 = getelementptr inbounds nuw [4 x i8], ptr %.pre1468, i64 %indvars.iv1444
  %.pre1470 = load i32, ptr %.phi.trans.insert1469, align 4
  %.pre1471 = load ptr, ptr %i.aue, align 8
  %.pre1480 = zext i32 %.pre1470 to i64
  br label %bb.ni

bb.nh:                                            ; preds = %bb.nw, %bb.nv, %bb.nf, %bb.ne
  %i.avu = landingpad { ptr, i32 }
          cleanup
  br label %bb.oc

bb.ni:                                            ; preds = %bb.ng, %bb.nd
  %.pre-phi1481 = phi i64 [ %.pre1480, %bb.ng ], [ %i.avk, %bb.nd ]
  %i.avv = phi ptr [ %.pre1471, %bb.ng ], [ %i.avm, %bb.nd ]
  %i.avw = getelementptr inbounds nuw [12 x i8], ptr %i.avv, i64 %.pre-phi1481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.14301212, ptr noundef nonnull align 4 dereferenceable(12) %i.avw, i64 12, i1 false)
  %i.avx = load ptr, ptr %i.auk, align 8          ; 4 uses
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %i.avx, i64 %indvars.iv1444
  %i.avz = load i32, ptr %i.avy, align 4
  %i.awa = zext i32 %i.avz to i64                 ; 2 uses
  %i.awb = load ptr, ptr %i.auz, align 8
  %i.awc = load ptr, ptr %i.auy, align 8          ; 2 uses
  %i.awd = ptrtoint ptr %i.awb to i64
  %i.awe = ptrtoint ptr %i.awc to i64
  %i.awf = sub i64 %i.awd, %i.awe
  %i.awg = sdiv exact i64 %i.awf, 12
  %.not526 = icmp ugt i64 %i.awg, %i.awa
  br i1 %.not526, label %bb.no, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.awh = load i32, ptr %.04311227, align 8
  %i.awi = icmp ugt i32 %i.awh, 2
  br i1 %i.awi, label %bb.nk, label %bb.no

bb.nk:                                            ; preds = %bb.nj
  br i1 %.04181217, label %bb.nn, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.awj = load i32, ptr %i.avx, align 4
  %i.awk = zext i32 %i.awj to i64
  %i.awl = load ptr, ptr %i.aue, align 8          ; 3 uses
  %i.awm = getelementptr inbounds nuw [12 x i8], ptr %i.awl, i64 %i.awk ; 2 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %i.avx, i64 4
  %i.awo = load i32, ptr %i.awn, align 4
  %i.awp = zext i32 %i.awo to i64
  %i.awq = getelementptr inbounds nuw [12 x i8], ptr %i.awl, i64 %i.awp ; 2 uses
  %i.awr = load ptr, ptr %i.aul, align 8
  %i.aws = ptrtoint ptr %i.awr to i64
  %i.awt = ptrtoint ptr %i.avx to i64
  %i.awu = sub i64 %i.aws, %i.awt
  %i.awv = ashr exact i64 %i.awu, 2
  %i.aww = getelementptr [12 x i8], ptr %i.awl, i64 %i.awv ; 2 uses
  %i.awx = getelementptr i8, ptr %i.aww, i64 -12
  %i.awy = load float, ptr %i.awq, align 4
  %i.awz = load float, ptr %i.awm, align 4        ; 2 uses
  %i.axa = fsub float %i.awy, %i.awz              ; 2 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awq, i64 4
  %i.axc = getelementptr inbounds nuw i8, ptr %i.awm, i64 4
  %i.axd = load <2 x float>, ptr %i.axb, align 4
  %i.axe = load <2 x float>, ptr %i.axc, align 4  ; 3 uses
  %i.axf = fsub <2 x float> %i.axd, %i.axe        ; 3 uses
  %i.axg = load <2 x float>, ptr %i.awx, align 4
  %i.axh = shufflevector <2 x float> %i.axe, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.axi = insertelement <2 x float> %i.axh, float %i.awz, i64 0
  %i.axj = fsub <2 x float> %i.axg, %i.axi        ; 5 uses
  %i.axk = getelementptr i8, ptr %i.aww, i64 -4
  %i.axl = load float, ptr %i.axk, align 4
  %i.axm = extractelement <2 x float> %i.axe, i64 1
  %i.axn = fsub float %i.axl, %i.axm              ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.axj, %i.axj
  %i.axo = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.axp = extractelement <2 x float> %i.axj, i64 0 ; 2 uses
  %i.axq = call float @llvm.fmuladd.f32(float %i.axp, float %i.axp, float %i.axo)
  %i.axr = call noundef float @llvm.fmuladd.f32(float %i.axn, float %i.axn, float %i.axq) ; 2 uses
  %i.axs = fcmp oeq float %i.axr, 0.000000e+00
  br i1 %i.axs, label %bb.nm, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.nl
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.axr)
  %i.axt = fdiv float 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.axu = insertelement <2 x float> poison, float %i.axt, i64 0
  %i.axv = shufflevector <2 x float> %i.axu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axw = fmul <2 x float> %i.axj, %i.axv
  %i.axx = fmul float %i.axn, %i.axt
  br label %bb.nm

bb.nm:                                            ; preds = %bb.nl, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.10.0 = phi float [ %i.axn, %bb.nl ], [ %i.axx, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 2 uses
  %.sroa.0906.0 = phi <2 x float> [ %i.axj, %bb.nl ], [ %i.axw, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %.sroa.0906.4.vec.extract912 = extractelement <2 x float> %.sroa.0906.0, i64 1 ; 2 uses
  %.sroa.0906.4.vec.extract912.a = extractelement <2 x float> %.sroa.0906.0, i64 0
  %10 = fneg float %.sroa.0906.4.vec.extract912
  %i.axy = fneg float %.sroa.10.0
  %i.axz = shufflevector <2 x float> %i.axf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aya = insertelement <2 x float> %i.axz, float %i.axa, i64 1
  %11 = insertelement <2 x float> poison, float %10, i64 0
  %i.ayb = insertelement <2 x float> %11, float %i.axy, i64 1
  %12 = fmul <2 x float> %i.aya, %i.ayb
  %13 = shufflevector <2 x float> %.sroa.0906.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ayc = insertelement <2 x float> %13, float %.sroa.10.0, i64 0
  %14 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.axf, <2 x float> %i.ayc, <2 x float> %12)
  %15 = fneg float %.sroa.0906.4.vec.extract912.a
  %16 = extractelement <2 x float> %i.axf, i64 0
  %17 = fmul float %16, %15
  %i.ayd = call float @llvm.fmuladd.f32(float %i.axa, float %.sroa.0906.4.vec.extract912, float %17)
  br label %bb.nn

bb.nn:                                            ; preds = %bb.nm, %bb.nk
  %.sroa.7.1 = phi float [ %.sroa.7.01210, %bb.nk ], [ %i.ayd, %bb.nm ] ; 2 uses
  %.sroa.0915.1 = phi <2 x float> [ %.sroa.0915.01211, %bb.nk ], [ %14, %bb.nm ] ; 2 uses
  store <2 x float> %.sroa.0915.1, ptr %.14281213, align 4
  %.sroa.7.0..1428.sroa_idx = getelementptr inbounds nuw i8, ptr %.14281213, i64 8
  store float %.sroa.7.1, ptr %.sroa.7.0..1428.sroa_idx, align 4
  br label %bb.np

bb.no:                                            ; preds = %bb.nj, %bb.ni
  %i.aye = getelementptr inbounds nuw [12 x i8], ptr %i.awc, i64 %i.awa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.14281213, ptr noundef nonnull align 4 dereferenceable(12) %i.aye, i64 12, i1 false)
  br label %bb.np

bb.np:                                            ; preds = %bb.no, %bb.nn
  %.sroa.7.2 = phi float [ %.sroa.7.01210, %bb.no ], [ %.sroa.7.1, %bb.nn ]
  %.sroa.0915.2 = phi <2 x float> [ %.sroa.0915.01211, %bb.no ], [ %.sroa.0915.1, %bb.nn ]
  %.2420 = phi i1 [ %.04181217, %bb.no ], [ true, %bb.nn ]
  %.not529 = icmp eq ptr %.24251215, null
  br i1 %.not529, label %bb.oa, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.ayf = load ptr, ptr %i.avb, align 8          ; 2 uses
  %i.ayg = load ptr, ptr %i.ava, align 8          ; 4 uses
  %i.ayh = ptrtoint ptr %i.ayf to i64
  %i.ayi = ptrtoint ptr %i.ayg to i64
  %i.ayj = sub i64 %i.ayh, %i.ayi                 ; 2 uses
  %i.ayk = sdiv exact i64 %i.ayj, 12
  %.not530 = icmp eq ptr %i.ayf, %i.ayg
  br i1 %.not530, label %bb.oa, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.ayl = load i32, ptr %i.avc, align 8
  %.not531 = icmp eq i32 %i.ayl, -1
  br i1 %.not531, label %bb.nu, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.aym = load ptr, ptr %i.aux, align 8
  %i.ayn = load ptr, ptr %i.aue, align 8
  %i.ayo = ptrtoint ptr %i.aym to i64
  %i.ayp = ptrtoint ptr %i.ayn to i64
  %i.ayq = sub i64 %i.ayo, %i.ayp
  %.not532 = icmp ult i64 %i.ayj, %i.ayq
  br i1 %.not532, label %bb.nu, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.ayr = load ptr, ptr %i.auk, align 8
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr %i.ayr, i64 %indvars.iv1444
  %i.ayt = load i32, ptr %i.ays, align 4
  %i.ayu = zext i32 %i.ayt to i64
  %i.ayv = getelementptr inbounds nuw [12 x i8], ptr %i.ayg, i64 %i.ayu
  br label %bb.nz

bb.nu:                                            ; preds = %bb.ns, %bb.nr
  %i.ayw = load ptr, ptr %i.avd, align 8
  %i.ayx = getelementptr inbounds nuw [4 x i8], ptr %i.ayw, i64 %indvars.iv1444
  %i.ayy = load i32, ptr %i.ayx, align 4
  %i.ayz = zext i32 %i.ayy to i64                 ; 2 uses
  %.not533 = icmp ugt i64 %i.ayk, %i.ayz
  br i1 %.not533, label %bb.ny, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.aza = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.nw unwind label %bb.nh

bb.nw:                                            ; preds = %bb.nv
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.aza, ptr noundef nonnull @.str.32)
          to label %bb.nx unwind label %bb.nh

bb.nx:                                            ; preds = %bb.nw
  %i.azb = load ptr, ptr %i.avd, align 8
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %i.azb, i64 %indvars.iv1444
  store i32 0, ptr %i.azc, align 4
  %.pre1472 = load ptr, ptr %i.avd, align 8
  %.phi.trans.insert1473 = getelementptr inbounds nuw [4 x i8], ptr %.pre1472, i64 %indvars.iv1444
  %.pre1474 = load i32, ptr %.phi.trans.insert1473, align 4
  %.pre1475 = load ptr, ptr %i.ava, align 8
  %.pre1482 = zext i32 %.pre1474 to i64
  br label %bb.ny

bb.ny:                                            ; preds = %bb.nx, %bb.nu
  %.pre-phi1483 = phi i64 [ %.pre1482, %bb.nx ], [ %i.ayz, %bb.nu ]
  %i.azd = phi ptr [ %.pre1475, %bb.nx ], [ %i.ayg, %bb.nu ]
  %i.aze = getelementptr inbounds nuw [12 x i8], ptr %i.azd, i64 %.pre-phi1483
  br label %bb.nz

bb.nz:                                            ; preds = %bb.ny, %bb.nt
  %.sink1826 = phi ptr [ %i.aze, %bb.ny ], [ %i.ayv, %bb.nt ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.24251215, ptr noundef nonnull align 4 dereferenceable(12) %.sink1826, i64 12, i1 false)
  %i.azf = getelementptr inbounds nuw i8, ptr %.24251215, i64 4 ; 2 uses
  %i.azg = load float, ptr %i.azf, align 4
  %i.azh = fsub float 1.000000e+00, %i.azg
  store float %i.azh, ptr %i.azf, align 4
  %i.azi = getelementptr inbounds nuw i8, ptr %.24251215, i64 12
  br label %bb.oa

bb.oa:                                            ; preds = %bb.nz, %bb.nq, %bb.np
  %.3426 = phi ptr [ %i.azi, %bb.nz ], [ %.24251215, %bb.nq ], [ null, %bb.np ] ; 2 uses
  %i.azj = load ptr, ptr %i.auv, align 8
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr %i.azj, i64 %indvars.iv1444
  store i32 %.14221216, ptr %i.azk, align 4
  %indvars.iv.next1445 = add nuw nsw i64 %indvars.iv1444, 1 ; 2 uses
  %i.azl = add i32 %.14221216, 1                  ; 2 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %.14281213, i64 12 ; 2 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %.14301212, i64 12 ; 2 uses
  %i.azo = load i32, ptr %.04311227, align 8
  %i.azp = zext i32 %i.azo to i64
  %i.azq = icmp samesign ult i64 %indvars.iv.next1445, %i.azp
  br i1 %i.azq, label %bb.nd, label %._crit_edge1221, !llvm.loop !36

bb.ob:                                            ; preds = %bb.ly, %._crit_edge1234
  %i.azr = phi ptr [ %i.ans, %bb.ly ], [ %.pre1477, %._crit_edge1234 ] ; 2 uses
  %i.azs = phi ptr [ %i.ant, %bb.ly ], [ %.pre1476, %._crit_edge1234 ] ; 2 uses
  %.1433 = phi i32 [ %.04321236, %bb.ly ], [ %i.aua, %._crit_edge1234 ]
  %indvars.iv.next1447 = add nuw nsw i64 %indvars.iv1446, 1 ; 2 uses
  %i.azt = ptrtoint ptr %i.azs to i64
  %i.azu = ptrtoint ptr %i.azr to i64
  %i.azv = sub i64 %i.azt, %i.azu
  %i.azw = sdiv exact i64 %i.azv, 1072
  %i.azx = and i64 %i.azw, 4294967295
  %i.azy = icmp samesign ult i64 %indvars.iv.next1447, %i.azx
  br i1 %i.azy, label %bb.ly, label %._crit_edge1239, !llvm.loop !37

bb.oc:                                            ; preds = %bb.nc, %bb.nh, %bb.mr, %bb.my, %bb.mz, %bb.mx, %bb.mi
  %.pn534.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ape, %bb.mi ], [ %i.ary, %bb.mr ], [ %i.atv, %bb.mx ], [ %i.atw, %bb.my ], [ %i.atx, %bb.mz ], [ %i.avg, %bb.nc ], [ %i.avu, %bb.nh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.body589

._crit_edge1239:                                  ; preds = %bb.ob, %bb.lw
  %i.azz = load i64, ptr %i.akh, align 16         ; 2 uses
  %.idx = mul i64 %i.azz, 24
  %.add517 = add i64 %.idx, 8                     ; 2 uses
  %i.baa = icmp eq i64 %i.azz, 0
  br i1 %i.baa, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge1239, %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit
  %.idx516 = phi i64 [ %.add, %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit ], [ %.add517, %._crit_edge1239 ]
  %.add = add nsw i64 %.idx516, -24               ; 3 uses
  %.ptr518 = getelementptr inbounds i8, ptr %i.akh, i64 %.add ; 2 uses
  %i.bab = load ptr, ptr %.ptr518, align 8        ; 3 uses
  %.not.i.i.i867 = icmp eq ptr %i.bab, null
  br i1 %.not.i.i.i867, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, label %bb.od

bb.od:                                            ; preds = %.preheader
  %i.bac = getelementptr inbounds nuw i8, ptr %.ptr518, i64 16
  %i.bad = load ptr, ptr %i.bac, align 8
  %i.bae = ptrtoint ptr %i.bad to i64
  %i.baf = ptrtoint ptr %i.bab to i64
  %i.bag = sub i64 %i.bae, %i.baf
  call void @_ZdlPvm(ptr noundef nonnull %i.bab, i64 noundef %i.bag) #25
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit:        ; preds = %.preheader, %bb.od
  %i.bah = icmp eq i64 %.add, 8
  br i1 %i.bah, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, %._crit_edge1239
  call void @_ZdaPvm(ptr noundef nonnull %i.akh, i64 noundef %.add517) #25
  %i.bai = load i32, ptr %i.akr, align 8          ; 2 uses
  %i.baj = load ptr, ptr %i.dj, align 8
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baj, i64 1120
  store i32 %i.bai, ptr %i.bak, align 8
  %i.bal = zext i32 %i.bai to i64
  %i.bam = shl nuw nsw i64 %i.bal, 2
  %i.ban = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bam) #28
          to label %bb.oe unwind label %bb.lx

bb.oe:                                            ; preds = %.loopexit
  %i.bao = load ptr, ptr %i.dj, align 8
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bao, i64 1128
  store ptr %i.ban, ptr %i.bap, align 8
  %i.baq = load i32, ptr %i.akr, align 8
  %.not1254 = icmp eq i32 %i.baq, 0
  br i1 %.not1254, label %._crit_edge1243, label %.lr.ph1242

._crit_edge1243:                                  ; preds = %.lr.ph1242, %bb.oe
  %i.bar = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bas = load i32, ptr %i.bar, align 8
  %i.bat = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bau = load i32, ptr %i.bat, align 8
  %i.bav = add i32 %i.bau, %i.bas
  %i.baw = load ptr, ptr %i.dj, align 8
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baw, i64 1104
  store i32 %i.bav, ptr %i.bax, align 8
  %i.bay = load ptr, ptr %i.dj, align 8
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bay, i64 1104
  %i.bba = load i32, ptr %i.baz, align 8          ; 2 uses
  %.not521 = icmp eq i32 %i.bba, 0
  br i1 %.not521, label %bb.on, label %bb.of

.lr.ph1242:                                       ; preds = %bb.oe, %.lr.ph1242
  %indvars.iv1449 = phi i64 [ %indvars.iv.next1450, %.lr.ph1242 ], [ 0, %bb.oe ] ; 3 uses
  %i.bbb = load ptr, ptr %i.dj, align 8
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bbb, i64 1128
  %i.bbd = load ptr, ptr %i.bbc, align 8
  %i.bbe = getelementptr inbounds nuw [4 x i8], ptr %i.bbd, i64 %indvars.iv1449
  %i.bbf = trunc nuw i64 %indvars.iv1449 to i32
  store i32 %i.bbf, ptr %i.bbe, align 4
  %indvars.iv.next1450 = add nuw nsw i64 %indvars.iv1449, 1 ; 2 uses
end_hunk_0
