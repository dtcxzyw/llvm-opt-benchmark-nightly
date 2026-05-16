inline.NumInlined: 896
inline.NumDeleted: 419
begin_hunk_0_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  br i1 %.04251213, label %bb.nj, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.avm = load i32, ptr %i.ava, align 4
  %i.avn = zext i32 %i.avm to i64
  %i.avo = load ptr, ptr %i.ati, align 8          ; 3 uses
  %i.avp = getelementptr inbounds nuw [12 x i8], ptr %i.avo, i64 %i.avn ; 2 uses
  %i.avq = getelementptr inbounds nuw i8, ptr %i.ava, i64 4
  %i.avr = load i32, ptr %i.avq, align 4
  %i.avs = zext i32 %i.avr to i64
  %i.avt = getelementptr inbounds nuw [12 x i8], ptr %i.avo, i64 %i.avs ; 3 uses
  %i.avu = load ptr, ptr %i.atp, align 8
  %i.avv = ptrtoint ptr %i.avu to i64
  %i.avw = ptrtoint ptr %i.ava to i64
  %i.avx = sub i64 %i.avv, %i.avw
  %i.avy = ashr exact i64 %i.avx, 2
  %i.avz = getelementptr [12 x i8], ptr %i.avo, i64 %i.avy ; 2 uses
  %i.awa = getelementptr i8, ptr %i.avz, i64 -12
  %i.awb = load float, ptr %i.avt, align 4
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avt, i64 4
  %i.awd = load float, ptr %i.awc, align 4
  %i.awe = getelementptr inbounds nuw i8, ptr %i.avt, i64 8
  %i.awf = load float, ptr %i.awe, align 4
  %i.awg = getelementptr inbounds nuw i8, ptr %i.avp, i64 8
  %i.awh = load float, ptr %i.awg, align 4        ; 2 uses
  %i.awi = fsub float %i.awf, %i.awh              ; 2 uses
  %i.awj = load <2 x float>, ptr %i.avp, align 4  ; 3 uses
  %i.awk = extractelement <2 x float> %i.awj, i64 0
  %i.awl = fsub float %i.awb, %i.awk              ; 2 uses
  %i.awm = extractelement <2 x float> %i.awj, i64 1
  %i.awn = fsub float %i.awd, %i.awm              ; 2 uses
  %i.awo = load <2 x float>, ptr %i.awa, align 4
  %i.awp = fsub <2 x float> %i.awo, %i.awj        ; 3 uses
  %i.awq = getelementptr i8, ptr %i.avz, i64 -4
  %i.awr = load float, ptr %i.awq, align 4
  %i.aws = fsub float %i.awr, %i.awh              ; 4 uses
  %i.awt = extractelement <2 x float> %i.awp, i64 1 ; 3 uses
  %i.awu = fmul float %i.awt, %i.awt
  %i.awv = extractelement <2 x float> %i.awp, i64 0 ; 3 uses
  %i.aww = call float @llvm.fmuladd.f32(float %i.awv, float %i.awv, float %i.awu)
  %i.awx = call noundef float @llvm.fmuladd.f32(float %i.aws, float %i.aws, float %i.aww) ; 2 uses
  %i.awy = fcmp oeq float %i.awx, 0.000000e+00
  br i1 %i.awy, label %bb.ni, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.nh
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.awx)
  %i.awz = fdiv float 1.000000e+00, %sqrt.i.i     ; 3 uses
  %i.axa = fmul float %i.awv, %i.awz
  %.sroa.0905.0.vec.insert = insertelement <2 x float> poison, float %i.axa, i64 0
  %i.axb = fmul float %i.awt, %i.awz
  %.sroa.0905.4.vec.insert = insertelement <2 x float> %.sroa.0905.0.vec.insert, float %i.axb, i64 1
  %i.axc = fmul float %i.aws, %i.awz
  br label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.10.0 = phi float [ %i.aws, %bb.nh ], [ %i.axc, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 2 uses
  %.sroa.0905.0 = phi <2 x float> [ %i.awp, %bb.nh ], [ %.sroa.0905.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 2 uses
  %.sroa.0905.4.vec.extract911 = extractelement <2 x float> %.sroa.0905.0, i64 1 ; 2 uses
  %i.axd = fneg float %.sroa.0905.4.vec.extract911
  %i.axe = fmul float %i.awi, %i.axd
  %i.axf = call float @llvm.fmuladd.f32(float %i.awn, float %.sroa.10.0, float %i.axe)
  %.sroa.0905.0.vec.extract908 = extractelement <2 x float> %.sroa.0905.0, i64 0 ; 2 uses
  %i.axg = fneg float %.sroa.10.0
  %i.axh = fmul float %i.awl, %i.axg
  %i.axi = call float @llvm.fmuladd.f32(float %i.awi, float %.sroa.0905.0.vec.extract908, float %i.axh)
  %i.axj = fneg float %.sroa.0905.0.vec.extract908
  %i.axk = fmul float %i.awn, %i.axj
  %i.axl = call float @llvm.fmuladd.f32(float %i.awl, float %.sroa.0905.4.vec.extract911, float %i.axk)
  %.sroa.0.0.vec.insert.i863 = insertelement <2 x float> poison, float %i.axf, i64 0
  %.sroa.0.4.vec.insert.i864 = insertelement <2 x float> %.sroa.0.0.vec.insert.i863, float %i.axi, i64 1
  br label %bb.nj

bb.nj:                                            ; preds = %bb.ni, %bb.ng
  %.sroa.7.1 = phi float [ %.sroa.7.01206, %bb.ng ], [ %i.axl, %bb.ni ] ; 2 uses
  %.sroa.0914.3 = phi <2 x float> [ %.sroa.0914.21207, %bb.ng ], [ %.sroa.0.4.vec.insert.i864, %bb.ni ] ; 2 uses
  store <2 x float> %.sroa.0914.3, ptr %.14371209, align 4
  %.sroa.7.0..1437.sroa_idx = getelementptr inbounds nuw i8, ptr %.14371209, i64 8
  store float %.sroa.7.1, ptr %.sroa.7.0..1437.sroa_idx, align 4
  br label %bb.nl

bb.nk:                                            ; preds = %bb.nf, %bb.ne
  %i.axm = getelementptr inbounds nuw [12 x i8], ptr %i.avf, i64 %i.avd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.14371209, ptr noundef nonnull align 4 dereferenceable(12) %i.axm, i64 12, i1 false)
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %bb.nj
  %.sroa.7.2 = phi float [ %.sroa.7.01206, %bb.nk ], [ %.sroa.7.1, %bb.nj ]
  %.sroa.0914.4 = phi <2 x float> [ %.sroa.0914.21207, %bb.nk ], [ %.sroa.0914.3, %bb.nj ]
  %.2427 = phi i1 [ %.04251213, %bb.nk ], [ true, %bb.nj ]
  %.not529 = icmp eq ptr %.24341211, null
  br i1 %.not529, label %bb.nw, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.axn = load ptr, ptr %i.aue, align 8          ; 2 uses
  %i.axo = load ptr, ptr %i.aud, align 8          ; 4 uses
  %i.axp = ptrtoint ptr %i.axn to i64
  %i.axq = ptrtoint ptr %i.axo to i64
  %i.axr = sub i64 %i.axp, %i.axq                 ; 2 uses
  %i.axs = sdiv exact i64 %i.axr, 12
  %.not530 = icmp eq ptr %i.axn, %i.axo
  br i1 %.not530, label %bb.nw, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.axt = load i32, ptr %i.auf, align 8
  %.not531 = icmp eq i32 %i.axt, -1
  br i1 %.not531, label %bb.nq, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.axu = load ptr, ptr %i.aua, align 8
  %i.axv = load ptr, ptr %i.ati, align 8
  %i.axw = ptrtoint ptr %i.axu to i64
  %i.axx = ptrtoint ptr %i.axv to i64
  %i.axy = sub i64 %i.axw, %i.axx
  %.not532 = icmp ult i64 %i.axr, %i.axy
  br i1 %.not532, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.axz = load ptr, ptr %i.ato, align 8
  %i.aya = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %indvars.iv1438
  %i.ayb = load i32, ptr %i.aya, align 4
  %i.ayc = zext i32 %i.ayb to i64
  %i.ayd = getelementptr inbounds nuw [12 x i8], ptr %i.axo, i64 %i.ayc
  br label %bb.nv

bb.nq:                                            ; preds = %bb.no, %bb.nn
  %i.aye = load ptr, ptr %i.aug, align 8
  %i.ayf = getelementptr inbounds nuw [4 x i8], ptr %i.aye, i64 %indvars.iv1438
  %i.ayg = load i32, ptr %i.ayf, align 4
  %i.ayh = zext i32 %i.ayg to i64                 ; 2 uses
  %.not533 = icmp ugt i64 %i.axs, %i.ayh
  br i1 %.not533, label %bb.nu, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.ayi = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ns unwind label %bb.nd

bb.ns:                                            ; preds = %bb.nr
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ayi, ptr noundef nonnull @.str.32)
          to label %bb.nt unwind label %bb.nd

bb.nt:                                            ; preds = %bb.ns
  %i.ayj = load ptr, ptr %i.aug, align 8
  %i.ayk = getelementptr inbounds nuw [4 x i8], ptr %i.ayj, i64 %indvars.iv1438
  store i32 0, ptr %i.ayk, align 4
  %.pre1465 = load ptr, ptr %i.aug, align 8
  %.phi.trans.insert1466 = getelementptr inbounds nuw [4 x i8], ptr %.pre1465, i64 %indvars.iv1438
  %.pre1467 = load i32, ptr %.phi.trans.insert1466, align 4
  %.pre1468 = load ptr, ptr %i.aud, align 8
  %.pre1475 = zext i32 %.pre1467 to i64
  br label %bb.nu

bb.nu:                                            ; preds = %bb.nt, %bb.nq
  %.pre-phi1476 = phi i64 [ %.pre1475, %bb.nt ], [ %i.ayh, %bb.nq ]
  %i.ayl = phi ptr [ %.pre1468, %bb.nt ], [ %i.axo, %bb.nq ]
  %i.aym = getelementptr inbounds nuw [12 x i8], ptr %i.ayl, i64 %.pre-phi1476
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nu, %bb.np
  %.sink1816 = phi ptr [ %i.aym, %bb.nu ], [ %i.ayd, %bb.np ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.24341211, ptr noundef nonnull align 4 dereferenceable(12) %.sink1816, i64 12, i1 false)
  %i.ayn = getelementptr inbounds nuw i8, ptr %.24341211, i64 4 ; 2 uses
  %i.ayo = load float, ptr %i.ayn, align 4
  %i.ayp = fsub float 1.000000e+00, %i.ayo
  store float %i.ayp, ptr %i.ayn, align 4
  %i.ayq = getelementptr inbounds nuw i8, ptr %.24341211, i64 12
  br label %bb.nw

bb.nw:                                            ; preds = %bb.nv, %bb.nm, %bb.nl
  %.3435 = phi ptr [ %i.ayq, %bb.nv ], [ %.24341211, %bb.nm ], [ null, %bb.nl ] ; 2 uses
  %i.ayr = load ptr, ptr %i.atz, align 8
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr %i.ayr, i64 %indvars.iv1438
  store i32 %.14311212, ptr %i.ays, align 4
  %indvars.iv.next1439 = add nuw nsw i64 %indvars.iv1438, 1 ; 2 uses
  %i.ayt = add i32 %.14311212, 1                  ; 2 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %.14371209, i64 12 ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %.14391208, i64 12 ; 2 uses
  %i.ayw = load i32, ptr %.04401223, align 8
  %i.ayx = zext i32 %i.ayw to i64
  %i.ayy = icmp samesign ult i64 %indvars.iv.next1439, %i.ayx
  br i1 %i.ayy, label %bb.mz, label %._crit_edge1217, !llvm.loop !41

bb.nx:                                            ; preds = %bb.lu, %._crit_edge1230
  %i.ayz = phi ptr [ %i.ani, %bb.lu ], [ %.pre1470, %._crit_edge1230 ] ; 2 uses
  %i.aza = phi ptr [ %i.anj, %bb.lu ], [ %.pre1469, %._crit_edge1230 ] ; 2 uses
  %.1445 = phi i32 [ %.04441232, %bb.lu ], [ %i.ate, %._crit_edge1230 ]
  %indvars.iv.next1441 = add nuw nsw i64 %indvars.iv1440, 1 ; 2 uses
  %i.azb = ptrtoint ptr %i.aza to i64
  %i.azc = ptrtoint ptr %i.ayz to i64
  %i.azd = sub i64 %i.azb, %i.azc
  %i.aze = sdiv exact i64 %i.azd, 1072
  %i.azf = and i64 %i.aze, 4294967295
  %i.azg = icmp samesign ult i64 %indvars.iv.next1441, %i.azf
  br i1 %i.azg, label %bb.lu, label %._crit_edge1235, !llvm.loop !42

bb.ny:                                            ; preds = %bb.my, %bb.nd, %bb.mn, %bb.mu, %bb.mv, %bb.mt, %bb.me
  %.pn534.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aou, %bb.me ], [ %i.arm, %bb.mn ], [ %i.atb, %bb.mt ], [ %i.atc, %bb.mu ], [ %i.atd, %bb.mv ], [ %i.auj, %bb.my ], [ %i.aux, %bb.nd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.body589

._crit_edge1235:                                  ; preds = %bb.nx, %bb.ls
  %i.azh = load i64, ptr %i.ajq, align 8          ; 2 uses
  %.idx = mul i64 %i.azh, 24
  %.add517 = add i64 %.idx, 8                     ; 2 uses
  %i.azi = icmp eq i64 %i.azh, 0
  br i1 %i.azi, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge1235, %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit
  %.idx516 = phi i64 [ %.add, %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit ], [ %.add517, %._crit_edge1235 ]
  %.add = add nsw i64 %.idx516, -24               ; 3 uses
  %.ptr518 = getelementptr inbounds i8, ptr %i.ajq, i64 %.add ; 2 uses
  %i.azj = load ptr, ptr %.ptr518, align 8        ; 3 uses
  %.not.i.i.i867 = icmp eq ptr %i.azj, null
  br i1 %.not.i.i.i867, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, label %bb.nz

bb.nz:                                            ; preds = %.preheader
  %i.azk = getelementptr inbounds nuw i8, ptr %.ptr518, i64 16
  %i.azl = load ptr, ptr %i.azk, align 8
  %i.azm = ptrtoint ptr %i.azl to i64
  %i.azn = ptrtoint ptr %i.azj to i64
  %i.azo = sub i64 %i.azm, %i.azn
  call void @_ZdlPvm(ptr noundef nonnull %i.azj, i64 noundef %i.azo) #25
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit:        ; preds = %.preheader, %bb.nz
  %i.azp = icmp eq i64 %.add, 8
  br i1 %i.azp, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, %._crit_edge1235
  call void @_ZdaPvm(ptr noundef nonnull %i.ajq, i64 noundef %.add517) #25
  %i.azq = load i32, ptr %i.aka, align 8          ; 2 uses
  %i.azr = load ptr, ptr %i.dj, align 8
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 1120
  store i32 %i.azq, ptr %i.azs, align 8
  %i.azt = zext i32 %i.azq to i64
  %i.azu = shl nuw nsw i64 %i.azt, 2
  %i.azv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.azu) #28
          to label %bb.oa unwind label %bb.lt

bb.oa:                                            ; preds = %.loopexit
  %i.azw = load ptr, ptr %i.dj, align 8
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azw, i64 1128
  store ptr %i.azv, ptr %i.azx, align 8
  %i.azy = load i32, ptr %i.aka, align 8
  %.not1250 = icmp eq i32 %i.azy, 0
  br i1 %.not1250, label %._crit_edge1239, label %.lr.ph1238

._crit_edge1239:                                  ; preds = %.lr.ph1238, %bb.oa
  %i.azz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.baa = load i32, ptr %i.azz, align 8
  %i.bab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bac = load i32, ptr %i.bab, align 8
  %i.bad = add i32 %i.bac, %i.baa
  %i.bae = load ptr, ptr %i.dj, align 8
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bae, i64 1104
  store i32 %i.bad, ptr %i.baf, align 8
  %i.bag = load ptr, ptr %i.dj, align 8           ; 2 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 1104
  %i.bai = load i32, ptr %i.bah, align 8          ; 2 uses
  %.not521 = icmp eq i32 %i.bai, 0
  br i1 %.not521, label %bb.oj, label %bb.ob

.lr.ph1238:                                       ; preds = %bb.oa, %.lr.ph1238
  %indvars.iv1443 = phi i64 [ %indvars.iv.next1444, %.lr.ph1238 ], [ 0, %bb.oa ] ; 3 uses
  %i.baj = load ptr, ptr %i.dj, align 8
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baj, i64 1128
  %i.bal = load ptr, ptr %i.bak, align 8
  %i.bam = getelementptr inbounds nuw [4 x i8], ptr %i.bal, i64 %indvars.iv1443
  %i.ban = trunc nuw i64 %indvars.iv1443 to i32
  store i32 %i.ban, ptr %i.bam, align 4
  %indvars.iv.next1444 = add nuw nsw i64 %indvars.iv1443, 1 ; 2 uses
  %i.bao = load i32, ptr %i.aka, align 8
  %i.bap = zext i32 %i.bao to i64
  %i.baq = icmp samesign ult i64 %indvars.iv.next1444, %i.bap
  br i1 %i.baq, label %.lr.ph1238, label %._crit_edge1239, !llvm.loop !43

bb.ob:                                            ; preds = %._crit_edge1239
  %i.bar = zext i32 %i.bai to i64
  %i.bas = shl nuw nsw i64 %i.bar, 3
  %i.bat = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bas) #28
          to label %bb.oc unwind label %bb.lt

bb.oc:                                            ; preds = %bb.ob
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bag, i64 1112
  store ptr %i.bat, ptr %i.bau, align 8
  %i.bav = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #28
          to label %bb.od unwind label %bb.og     ; 8 uses

bb.od:                                            ; preds = %bb.oc
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.bav)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875 unwind label %bb.oh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875: ; preds = %bb.od
  %i.baw = load ptr, ptr %i.dj, align 8
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baw, i64 1112
  %i.bay = load ptr, ptr %i.bax, align 8
  store ptr %i.bav, ptr %i.bay, align 8
  %i.baz = load ptr, ptr %i.dj, align 8           ; 2 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %i.bav, i64 1096
  store ptr %i.baz, ptr %i.bba, align 8
  store i32 8, ptr %i.bav, align 8
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bav, i64 4
  store i64 8388068007926313809, ptr %i.bbb, align 4
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bav, i64 12
  store i8 0, ptr %i.bbc, align 4
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.baz, i64 1028
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bav, i64 1028 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bbe, ptr noundef nonnull align 4 dereferenceable(64) %i.bbd, i64 64, i1 false)
  %i.bbf = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %i.bbe)
          to label %bb.oe unwind label %bb.og     ; 0 uses

bb.oe:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875
  %i.bbg = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #28
          to label %bb.of unwind label %bb.og     ; 8 uses

bb.of:                                            ; preds = %bb.oe
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.bbg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit883 unwind label %bb.oi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit883: ; preds = %bb.of
  %i.bbh = load ptr, ptr %i.dj, align 8
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbh, i64 1112
  %i.bbj = load ptr, ptr %i.bbi, align 8
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbj, i64 8
  store ptr %i.bbg, ptr %i.bbk, align 8
  %i.bbl = load ptr, ptr %i.dj, align 8           ; 2 uses
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbg, i64 1096
  store ptr %i.bbl, ptr %i.bbm, align 8
  store i32 9, ptr %i.bbg, align 8
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbg, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bbn, ptr noundef nonnull align 1 dereferenceable(9) @.str.17, i64 9, i1 false)
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbg, i64 13
  store i8 0, ptr %i.bbo, align 1
  %.phi.trans.insert1471 = getelementptr inbounds nuw i8, ptr %i.bbl, i64 1112
  %.pre1472 = load ptr, ptr %.phi.trans.insert1471, align 8
  %i.bbp = load ptr, ptr %.pre1472, align 8
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbp, i64 1028
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbg, i64 1028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bbr, ptr noundef nonnull align 4 dereferenceable(64) %i.bbq, i64 64, i1 false)
  br label %bb.oj

bb.og:                                            ; preds = %bb.oe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875, %bb.oc
  %i.bbs = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.oh:                                            ; preds = %bb.od
  %i.bbt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bav, i64 noundef 1144) #25
  br label %.body589

bb.oi:                                            ; preds = %bb.of
  %i.bbu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bbg, i64 noundef 1144) #25
  br label %.body589

bb.oj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit883, %._crit_edge1239
  %i.bbv = load ptr, ptr %9, align 8              ; 3 uses
  %i.bbw = load ptr, ptr %i.aig, align 8          ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bbv, %i.bbw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp11Q3DImporter4MeshES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.oj, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.bbx, %.lr.ph.i.i.i ], [ %i.bbv, %bb.oj ] ; 2 uses
  call void @_ZN6Assimp11Q3DImporter4MeshD2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %.05.i.i.i) #24
  %i.bbx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i884 = icmp eq ptr %i.bbx, %i.bbw
  br i1 %.not.i.i.i884, label %_ZSt8_DestroyIPN6Assimp11Q3DImporter4MeshES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !44

_ZSt8_DestroyIPN6Assimp11Q3DImporter4MeshES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %9, align 8
  br label %_ZSt8_DestroyIPN6Assimp11Q3DImporter4MeshES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp11Q3DImporter4MeshES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp11Q3DImporter4MeshES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.oj
  %i.bby = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp11Q3DImporter4MeshES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.bbv, %bb.oj ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bby, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EED2Ev.exit, label %bb.ok

bb.ok:                                            ; preds = %_ZSt8_DestroyIPN6Assimp11Q3DImporter4MeshES2_EvT_S4_RSaIT0_E.exit.i
  %i.bbz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bca = load ptr, ptr %i.bbz, align 8
  %i.bcb = ptrtoint ptr %i.bca to i64
  %i.bcc = ptrtoint ptr %i.bby to i64
  %i.bcd = sub i64 %i.bcb, %i.bcc
  call void @_ZdlPvm(ptr noundef nonnull %i.bby, i64 noundef %i.bcd) #25
  br label %_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp11Q3DImporter4MeshES2_EvT_S4_RSaIT0_E.exit.i, %bb.ok
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.bce = load ptr, ptr %8, align 8              ; 3 uses
  %.not.i.i.i885 = icmp eq ptr %i.bce, null
  br i1 %.not.i.i.i885, label %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EED2Ev.exit, label %bb.ol

bb.ol:                                            ; preds = %_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EED2Ev.exit
  %i.bcf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bcg = load ptr, ptr %i.bcf, align 8
  %i.bch = ptrtoint ptr %i.bcg to i64
  %i.bci = ptrtoint ptr %i.bce to i64
  %i.bcj = sub i64 %i.bch, %i.bci
  call void @_ZdlPvm(ptr noundef nonnull %i.bce, i64 noundef %i.bcj) #25
  br label %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EED2Ev.exit, %bb.ol
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.bck = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bcl = load ptr, ptr %i.bck, align 8          ; 2 uses
  %i.bcm = icmp eq ptr %i.bcl, null
  br i1 %i.bcm, label %bb.on, label %bb.om

bb.om:                                            ; preds = %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bcl) #25
  br label %bb.on

bb.on:                                            ; preds = %bb.om, %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EED2Ev.exit
  %i.bcn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bco = load ptr, ptr %i.bcn, align 8          ; 8 uses
  %.not.i.i.i886 = icmp eq ptr %i.bco, null
  br i1 %.not.i.i.i886, label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bco, i64 8 ; 4 uses
  %i.bcq = load atomic i64, ptr %i.bcp acquire, align 8 ; 2 uses
  %i.bcr = icmp eq i64 %i.bcq, 4294967297
  %i.bcs = trunc i64 %i.bcq to i32                ; 2 uses
  br i1 %i.bcr, label %bb.op, label %bb.oq

bb.op:                                            ; preds = %bb.oo
  store i32 0, ptr %i.bcp, align 8
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bco, i64 12
  store i32 0, ptr %i.bct, align 4
  %i.bcu = load ptr, ptr %i.bco, align 8
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 16
  %i.bcw = load ptr, ptr %i.bcv, align 8
  call void %i.bcw(ptr noundef nonnull align 8 dereferenceable(16) %i.bco) #24, !inline_history !45
  %i.bcx = load ptr, ptr %i.bco, align 8
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcx, i64 24
  %i.bcz = load ptr, ptr %i.bcy, align 8
  call void %i.bcz(ptr noundef nonnull align 8 dereferenceable(16) %i.bco) #24, !inline_history !45
  br label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit

bb.oq:                                            ; preds = %bb.oo
  %i.bda = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i887 = icmp eq i8 %i.bda, 0
  br i1 %.not.i.i.i.i887, label %bb.os, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.bdb = add nsw i32 %i.bcs, -1
  store i32 %i.bdb, ptr %i.bcp, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.os:                                            ; preds = %bb.oq
  %i.bdc = atomicrmw volatile add ptr %i.bcp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.os, %bb.or
  %.0.i.i.i.i.i = phi i32 [ %i.bcs, %bb.or ], [ %i.bdc, %bb.os ]
  %i.bdd = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bdd, label %bb.ot, label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit, !prof !46

bb.ot:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bco) #24
  br label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit

_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit:      ; preds = %bb.on, %bb.op, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ot
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

.body589:                                         ; preds = %.loopexit970, %.loopexit.split-lp, %.loopexit1007, %.loopexit.split-lp1008, %.loopexit1001, %.loopexit.split-lp1002, %.loopexit994, %.loopexit.split-lp995, %.loopexit989, %.loopexit.split-lp990, %.loopexit984, %.loopexit.split-lp985, %.loopexit1012, %.loopexit.split-lp1013, %bb.bj, %bb.kw, %bb.kk, %bb.hq, %bb.ig, %bb.hv, %bb.hu, %bb.fs, %bb.bu, %bb.cq, %bb.ep, %.body615, %bb.de, %bb.df, %bb.bw, %bb.kt, %bb.lf, %bb.ik, %bb.im, %bb.bm, %bb.br, %bb.bv, %bb.cd, %bb.ci, %bb.cl, %bb.cn, %bb.cf, %bb.do, %bb.di, %bb.dk, %bb.dr, %bb.dt, %bb.fh, %bb.fk, %bb.dz, %bb.ee, %bb.eh, %bb.ej, %bb.eb, %bb.ew, %bb.eu, %bb.er, %bb.fb, %bb.fd, %bb.fv, %bb.ga, %bb.gg, %bb.gm, %bb.gs, %bb.gy, %bb.hb, %bb.gv, %bb.gp, %bb.gj, %bb.gd, %bb.fx, %bb.fo, %bb.hk, %bb.hn, %bb.hh, %bb.ib, %bb.ie, %bb.ih, %bb.hy, %bb.ip, %bb.iq, %bb.ix, %bb.jc, %bb.jh, %bb.kg, %bb.jn, %bb.jk, %bb.je, %bb.ja, %bb.iu, %bb.jt, %bb.jw, %bb.kh, %bb.jq, %bb.ka, %bb.ki, %bb.kd, %bb.kj, %bb.ko, %bb.kr, %bb.km, %bb.og, %bb.oh, %bb.oi, %bb.ma, %bb.md, %bb.ny, %bb.mc, %bb.mb, %bb.lt, %bb.bd, %bb.bi, %bb.bh, %bb.aw
  %.merged559 = phi { ptr, i32 } [ %.pn479, %bb.bd ], [ %i.ed, %bb.bi ], [ %i.ec, %bb.bh ], [ %i.cy, %bb.aw ], [ %i.ee, %bb.bj ], [ %i.aik, %bb.kw ], [ %i.agw, %bb.kd ], [ %i.akg, %bb.lf ], [ %i.ahx, %bb.kt ], [ %i.zc, %bb.ig ], [ %i.ox, %bb.ep ], [ %i.sz, %bb.fs ], [ %i.yy, %bb.ie ], [ %i.fc, %bb.bu ], [ %i.fe, %bb.bw ], [ %i.zo, %bb.im ], [ %i.fw, %bb.cd ], [ %i.hf, %bb.cq ], [ %i.ez, %bb.br ], [ %i.gw, %bb.cl ], [ %i.lo, %bb.do ], [ %i.kw, %bb.di ], [ %eh.lpad-body616, %.body615 ], [ %i.kh, %bb.df ], [ %i.kg, %bb.de ], [ %i.rz, %bb.fk ], [ %i.lu, %bb.dr ], [ %i.nu, %bb.eh ], [ %i.pn, %bb.eu ], [ %i.qr, %bb.fb ], [ %i.xw, %bb.hq ], [ %i.wq, %bb.hb ], [ %i.xz, %bb.hv ], [ %i.xy, %bb.hu ], [ %i.xr, %bb.hn ], [ %i.bbt, %bb.oh ], [ %i.zq, %bb.ip ], [ %i.bbs, %bb.og ], [ %i.afe, %bb.jn ], [ %i.agh, %bb.jw ], [ %i.agq, %bb.ka ], [ %i.ahe, %bb.kk ], [ %i.ahu, %bb.kr ], [ %i.ek, %bb.bm ], [ %i.zm, %bb.ik ], [ %i.bbu, %bb.oi ], [ %i.fd, %bb.bv ], [ %lpad.loopexit.split-lp1015, %.loopexit.split-lp1013 ], [ %i.gc, %bb.cf ], [ %i.gl, %bb.ci ], [ %i.hb, %bb.cn ], [ %lpad.loopexit.split-lp987, %.loopexit.split-lp985 ], [ %i.li, %bb.dk ], [ %i.lz, %bb.dt ], [ %i.mu, %bb.dz ], [ %i.rp, %bb.fh ], [ %lpad.loopexit.split-lp992, %.loopexit.split-lp990 ], [ %i.na, %bb.eb ], [ %i.nj, %bb.ee ], [ %i.nz, %bb.ej ], [ %i.pd, %bb.er ], [ %i.ps, %bb.ew ], [ %i.ra, %bb.fd ], [ %i.ss, %bb.fo ], [ %i.tf, %bb.fv ], [ %i.to, %bb.fx ], [ %i.tw, %bb.ga ], [ %i.ue, %bb.gd ], [ %i.um, %bb.gg ], [ %i.uu, %bb.gj ], [ %i.vc, %bb.gm ], [ %i.vk, %bb.gp ], [ %i.vs, %bb.gs ], [ %i.wa, %bb.gv ], [ %i.wi, %bb.gy ], [ %lpad.loopexit.split-lp997, %.loopexit.split-lp995 ], [ %i.xf, %bb.hh ], [ %i.xm, %bb.hk ], [ %lpad.loopexit.split-lp1004, %.loopexit.split-lp1002 ], [ %i.yl, %bb.hy ], [ %i.yr, %bb.ib ], [ %i.zd, %bb.ih ], [ %i.adf, %bb.iq ], [ %i.adq, %bb.iu ], [ %i.adw, %bb.ix ], [ %i.aec, %bb.ja ], [ %i.aek, %bb.jc ], [ %i.aeo, %bb.je ], [ %i.aet, %bb.jh ], [ %i.aey, %bb.jk ], [ %i.aha, %bb.kg ], [ %i.afu, %bb.jq ], [ %i.aga, %bb.jt ], [ %i.ahb, %bb.kh ], [ %i.ahc, %bb.ki ], [ %i.ahd, %bb.kj ], [ %i.ahj, %bb.km ], [ %i.ahl, %bb.ko ], [ %lpad.loopexit.split-lp1010, %.loopexit.split-lp1008 ], [ %i.anh, %bb.lt ], [ %i.aot, %bb.md ], [ %i.aoq, %bb.ma ], [ %i.aor, %bb.mb ], [ %i.aos, %bb.mc ], [ %.pn534.pn.pn.pn.pn.pn.pn, %bb.ny ], [ %lpad.loopexit1014, %.loopexit1012 ], [ %lpad.loopexit986, %.loopexit984 ], [ %lpad.loopexit991, %.loopexit989 ], [ %lpad.loopexit996, %.loopexit994 ], [ %lpad.loopexit1003, %.loopexit1001 ], [ %lpad.loopexit1009, %.loopexit1007 ], [ %lpad.loopexit, %.loopexit970 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bde = load ptr, ptr %9, align 8              ; 3 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bdg = load ptr, ptr %i.bdf, align 8          ; 2 uses
  %.not4.i.i.i888 = icmp eq ptr %i.bde, %i.bdg
  br i1 %.not4.i.i.i888, label %_ZSt8_DestroyIPN6Assimp11Q3DImporter4MeshES2_EvT_S4_RSaIT0_E.exit.i894, label %.lr.ph.i.i.i889

.lr.ph.i.i.i889:                                  ; preds = %.body589, %.lr.ph.i.i.i889
  %.05.i.i.i890 = phi ptr [ %i.bdh, %.lr.ph.i.i.i889 ], [ %i.bde, %.body589 ] ; 2 uses
  call void @_ZN6Assimp11Q3DImporter4MeshD2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %.05.i.i.i890) #24
  %i.bdh = getelementptr inbounds nuw i8, ptr %.05.i.i.i890, i64 104 ; 2 uses
  %.not.i.i.i891 = icmp eq ptr %i.bdh, %i.bdg
  br i1 %.not.i.i.i891, label %_ZSt8_DestroyIPN6Assimp11Q3DImporter4MeshES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i892, label %.lr.ph.i.i.i889, !llvm.loop !44

_ZSt8_DestroyIPN6Assimp11Q3DImporter4MeshES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i892: ; preds = %.lr.ph.i.i.i889
  %.pr.i893 = load ptr, ptr %9, align 8
  br label %_ZSt8_DestroyIPN6Assimp11Q3DImporter4MeshES2_EvT_S4_RSaIT0_E.exit.i894

_ZSt8_DestroyIPN6Assimp11Q3DImporter4MeshES2_EvT_S4_RSaIT0_E.exit.i894: ; preds = %_ZSt8_DestroyIPN6Assimp11Q3DImporter4MeshES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i892, %.body589
  %i.bdi = phi ptr [ %.pr.i893, %_ZSt8_DestroyIPN6Assimp11Q3DImporter4MeshES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i892 ], [ %i.bde, %.body589 ] ; 3 uses
  %.not.i.i1.i895 = icmp eq ptr %i.bdi, null
  br i1 %.not.i.i1.i895, label %_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EED2Ev.exit896, label %bb.ou

bb.ou:                                            ; preds = %_ZSt8_DestroyIPN6Assimp11Q3DImporter4MeshES2_EvT_S4_RSaIT0_E.exit.i894
  %i.bdj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bdk = load ptr, ptr %i.bdj, align 8
  %i.bdl = ptrtoint ptr %i.bdk to i64
  %i.bdm = ptrtoint ptr %i.bdi to i64
  %i.bdn = sub i64 %i.bdl, %i.bdm
  call void @_ZdlPvm(ptr noundef nonnull %i.bdi, i64 noundef %i.bdn) #25
  br label %_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EED2Ev.exit896

_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EED2Ev.exit896: ; preds = %_ZSt8_DestroyIPN6Assimp11Q3DImporter4MeshES2_EvT_S4_RSaIT0_E.exit.i894, %bb.ou
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.ov

bb.ov:                                            ; preds = %bb.au, %_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EED2Ev.exit896, %bb.an
  %.merged558 = phi { ptr, i32 } [ %.merged559, %_ZNSt6vectorIN6Assimp11Q3DImporter4MeshESaIS2_EED2Ev.exit896 ], [ %i.cn, %bb.an ], [ %.pn477, %bb.au ]
  %i.bdo = load ptr, ptr %8, align 8              ; 3 uses
  %.not.i.i.i897 = icmp eq ptr %i.bdo, null
  br i1 %.not.i.i.i897, label %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EED2Ev.exit898, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.bdp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bdq = load ptr, ptr %i.bdp, align 8
  %i.bdr = ptrtoint ptr %i.bdq to i64
  %i.bds = ptrtoint ptr %i.bdo to i64
  %i.bdt = sub i64 %i.bdr, %i.bds
  call void @_ZdlPvm(ptr noundef nonnull %i.bdo, i64 noundef %i.bdt) #25
  br label %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EED2Ev.exit898

_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EED2Ev.exit898: ; preds = %bb.ov, %bb.ow
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.body

.body:                                            ; preds = %bb.am, %bb.ag, %bb.al, %bb.ac, %bb.ak, %bb.y, %bb.aj, %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566, %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EED2Ev.exit898, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587, %bb.i, %bb.h
  %.merged553 = phi { ptr, i32 } [ %i.af, %bb.h ], [ %i.ag, %bb.i ], [ %.pn551957, %bb.p ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568 ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587 ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566 ], [ %i.bn, %bb.v ], [ %i.br, %bb.y ], [ %.merged558, %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EED2Ev.exit898 ], [ %i.bw, %bb.ac ], [ %i.cj, %bb.aj ], [ %i.ck, %bb.ak ], [ %i.cl, %bb.al ], [ %i.cm, %bb.am ], [ %i.cb, %bb.ag ]
  %i.bdu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bdv = load ptr, ptr %i.bdu, align 8          ; 2 uses
  %i.bdw = icmp eq ptr %i.bdv, null
  br i1 %i.bdw, label %bb.oy, label %bb.ox

bb.ox:                                            ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.bdv) #25
  br label %bb.oy

bb.oy:                                            ; preds = %bb.ox, %.body
  %i.bdx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bdy = load ptr, ptr %i.bdx, align 8          ; 8 uses
  %.not.i.i.i899 = icmp eq ptr %i.bdy, null
  br i1 %.not.i.i.i899, label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit903, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 8 ; 4 uses
  %i.bea = load atomic i64, ptr %i.bdz acquire, align 8 ; 2 uses
  %i.beb = icmp eq i64 %i.bea, 4294967297
  %i.bec = trunc i64 %i.bea to i32                ; 2 uses
  br i1 %i.beb, label %bb.pa, label %bb.pb

bb.pa:                                            ; preds = %bb.oz
  store i32 0, ptr %i.bdz, align 8
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bdy, i64 12
  store i32 0, ptr %i.bed, align 4
  %i.bee = load ptr, ptr %i.bdy, align 8
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 16
  %i.beg = load ptr, ptr %i.bef, align 8
  call void %i.beg(ptr noundef nonnull align 8 dereferenceable(16) %i.bdy) #24, !inline_history !45
  %i.beh = load ptr, ptr %i.bdy, align 8
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beh, i64 24
  %i.bej = load ptr, ptr %i.bei, align 8
  call void %i.bej(ptr noundef nonnull align 8 dereferenceable(16) %i.bdy) #24, !inline_history !45
  br label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit903

bb.pb:                                            ; preds = %bb.oz
  %i.bek = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i900 = icmp eq i8 %i.bek, 0
  br i1 %.not.i.i.i.i900, label %bb.pd, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.bel = add nsw i32 %i.bec, -1
  store i32 %i.bel, ptr %i.bdz, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i901

bb.pd:                                            ; preds = %bb.pb
  %i.bem = atomicrmw volatile add ptr %i.bdz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i901

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i901: ; preds = %bb.pd, %bb.pc
  %.0.i.i.i.i.i902 = phi i32 [ %i.bec, %bb.pc ], [ %i.bem, %bb.pd ]
  %i.ben = icmp eq i32 %.0.i.i.i.i.i902, 1
  br i1 %i.ben, label %bb.pe, label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit903, !prof !46

bb.pe:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i901
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bdy) #24
  br label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit903

_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit903:   ; preds = %bb.oy, %bb.pa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i901, %bb.pe
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.pf

bb.pf:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit903, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565
  %.merged = phi { ptr, i32 } [ %.merged553, %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit903 ], [ %i.u, %bb.d ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565 ]
  resume { ptr, i32 } %.merged

bb.pg:                                            ; preds = %bb.bd, %bb.au
  %i.beo = landingpad { ptr, i32 }
          catch ptr null
  %i.bep = extractvalue { ptr, i32 } %i.beo, 0
  call void @__clang_call_terminate(ptr %i.bep) #29
  unreachable

bb.ph:                                            ; preds = %bb.kv, %bb.ht, %bb.dd, %bb.ba, %bb.ar, %bb.n, %bb.g
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA25_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #24
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #24
  resume { ptr, i32 } %i.o
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12StreamReaderILb0ELb0EEC2EPNS_8IOStreamEb(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %i.b = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #24 ; 0 uses
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1) #24, !inline_history !47
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #26
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.j, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #29
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit: ; preds = %bb.a
  %i.m = zext i1 %2 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.o, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.p, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  store i8 %i.m, ptr %i.r, align 8
  invoke void @_ZN6Assimp12StreamReaderILb0ELb0EE11InternBeginEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit
  ret void

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA34_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA34_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
end_hunk_0
begin_hunk_1_@_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA25_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_:bb.a
  invoke void @_ZN15DeadlyErrorBaseC2IJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #24
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %3, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %3, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #24
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #24
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12StreamReaderILb0ELb0EE11InternBeginEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.40)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 2 uses
  %i.m = icmp eq i64 %i.g, %i.l
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.41)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.p = sub i64 %i.g, %i.l                       ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #28 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.q, ptr %i.s, align 8
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.q, i64 noundef 1, i64 noundef %i.p)
  %i.y = load ptr, ptr %i.r, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.z, ptr %i.ab, align 8
  ret void

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.n, %bb.h ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !69
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !69
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #24, !inline_history !70
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #24, !inline_history !70
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA34_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(34) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(34) %2) #24
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(34) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #24
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA42_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(42) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(42) %2) #24
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(42) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #24
  resume { ptr, i32 } %i.q
}
end_hunk_1
