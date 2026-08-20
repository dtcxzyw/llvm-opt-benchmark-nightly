inline.NumInlined: 3272
inline.NumDeleted: 881
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN3gmxL18spreadForceWrapperENS_8ArrayRefIKNS_11BasicVectorIfEEEENS0_IS2_EENS_19VirtualSitesHandler14VirialHandlingES5_PA3_fbNS0_IK9t_iparamsEEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLSE_95EEEPK5t_pbc:bb.a
  %i.bgn = fmul <2 x float> %i.bgm, %i.bgc        ; 3 uses
  %i.bgo = insertelement <2 x float> poison, float %i.bgk, i64 0
  %i.bgp = shufflevector <2 x float> %i.bgo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bgq = fmul <2 x float> %i.bfi, %i.bgp        ; 4 uses
  %i.bgr = fmul float %i.bew, %i.bgk              ; 4 uses
  %i.bgs = fadd float %i.beu, 1.000000e+00
  %i.bgt = getelementptr inbounds [12 x i8], ptr %1, i64 %i.bdh ; 3 uses
  %i.bgu = fsub <2 x float> %i.bdc, %i.bgn        ; 2 uses
  %i.bgv = insertelement <2 x float> poison, float %i.beu, i64 0
  %i.bgw = shufflevector <2 x float> %i.bgv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bgx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bgw, <2 x float> %i.bgh, <2 x float> %i.bgu)
  %i.bgy = fadd <2 x float> %i.bgq, %i.bgx
  %i.bgz = load <2 x float>, ptr %i.bgt, align 4, !tbaa !89
  %i.bha = fadd <2 x float> %i.bgz, %i.bgy
  store <2 x float> %i.bha, ptr %i.bgt, align 4, !tbaa !89
  %i.bhb = fsub float %i.bde, %i.bgi              ; 2 uses
  %i.bhc = call float @llvm.fmuladd.f32(float %i.beu, float %i.bgj, float %i.bhb)
  %i.bhd = fadd float %i.bgr, %i.bhc
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgt, i64 8 ; 2 uses
  %i.bhf = load float, ptr %i.bhe, align 4, !tbaa !89
  %i.bhg = fadd float %i.bhf, %i.bhd
  store float %i.bhg, ptr %i.bhe, align 4, !tbaa !89
  %i.bhh = fneg float %i.bgs                      ; 2 uses
  %i.bhi = getelementptr inbounds [12 x i8], ptr %1, i64 %i.bdf ; 3 uses
  %i.bhj = insertelement <2 x float> poison, float %i.bhh, i64 0
  %i.bhk = shufflevector <2 x float> %i.bhj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhk, <2 x float> %i.bgh, <2 x float> %i.bgn)
  %i.bhm = fsub <2 x float> %i.bhl, %i.bgq
  %i.bhn = load <2 x float>, ptr %i.bhi, align 4, !tbaa !89
  %i.bho = fadd <2 x float> %i.bhn, %i.bhm
  store <2 x float> %i.bho, ptr %i.bhi, align 4, !tbaa !89
  %i.bhp = call float @llvm.fmuladd.f32(float %i.bhh, float %i.bgj, float %i.bgi)
  %i.bhq = fsub float %i.bhp, %i.bgr
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhi, i64 8 ; 2 uses
  %i.bhs = load float, ptr %i.bhr, align 4, !tbaa !89
  %i.bht = fadd float %i.bhs, %i.bhq
  store float %i.bht, ptr %i.bhr, align 4, !tbaa !89
  %i.bhu = getelementptr inbounds [12 x i8], ptr %1, i64 %i.beg ; 3 uses
  %i.bhv = load <2 x float>, ptr %i.bhu, align 4, !tbaa !89
  %i.bhw = fadd <2 x float> %i.bhv, %i.bgh
  store <2 x float> %i.bhw, ptr %i.bhu, align 4, !tbaa !89
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhu, i64 8 ; 2 uses
  %i.bhy = load float, ptr %i.bhx, align 4, !tbaa !89
  %i.bhz = fadd float %i.bgj, %i.bhy
  store float %i.bhz, ptr %i.bhx, align 4, !tbaa !89
  br i1 %.not.i130.i, label %bb.be, label %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit79.i.i

_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit79.i.i: ; preds = %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit75.i.i
  %i.bia = getelementptr inbounds [12 x i8], ptr %0, i64 %i.bda
  %i.bib = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.bia, ptr noundef nonnull %i.bdi, ptr noundef nonnull %i.ai)
  br label %bb.be

bb.be:                                            ; preds = %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit79.i.i, %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit75.i.i
  %.0.i104.i = phi i32 [ %i.bib, %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit79.i.i ], [ 22, %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit75.i.i ] ; 2 uses
  %i.bic = icmp ne i32 %.0.i104.i, 22
  %i.bid = icmp ne i32 %.0.i60.i.i, 22
  %or.cond.i105.i = or i1 %i.bid, %i.bic
  %i.bie = icmp ne i32 %.0.i74.i.i, 22
  %or.cond3.i106.i = or i1 %i.bie, %or.cond.i105.i
  br i1 %or.cond3.i106.i, label %bb.bf, label %_ZN3gmxL16spread_vsite3FADILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKiffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.bif = sext i32 %.0.i104.i to i64
  %i.big = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.bif ; 3 uses
  %i.bih = getelementptr inbounds nuw i8, ptr %i.big, i64 8 ; 2 uses
  %i.bii = load float, ptr %i.bih, align 4, !tbaa !89
  %i.bij = fsub float %i.bii, %i.bde
  %i.bik = load <2 x float>, ptr %i.big, align 4, !tbaa !89
  %i.bil = fsub <2 x float> %i.bik, %i.bdc
  store <2 x float> %i.bil, ptr %i.big, align 4, !tbaa !89
  store float %i.bij, ptr %i.bih, align 4, !tbaa !89
  %i.bim = fsub float 1.000000e+00, %i.beu
  %i.bin = fneg float %i.bim                      ; 2 uses
  %i.bio = insertelement <2 x float> poison, float %i.bin, i64 0
  %i.bip = shufflevector <2 x float> %i.bio, <2 x float> poison, <2 x i32> zeroinitializer
  %i.biq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bip, <2 x float> %i.bgh, <2 x float> %i.bgu)
  %i.bir = fadd <2 x float> %i.bgq, %i.biq
  %i.bis = load <2 x float>, ptr %i.ang, align 4, !tbaa !89
  %i.bit = fadd <2 x float> %i.bir, %i.bis
  store <2 x float> %i.bit, ptr %i.ang, align 4, !tbaa !89
  %i.biu = call float @llvm.fmuladd.f32(float %i.bin, float %i.bgj, float %i.bhb)
  %i.biv = fadd float %i.bgr, %i.biu
  %i.biw = load float, ptr %i.ani, align 4, !tbaa !89
  %i.bix = fadd float %i.biv, %i.biw
  store float %i.bix, ptr %i.ani, align 4, !tbaa !89
  %i.biy = sext i32 %.0.i60.i.i to i64
  %i.biz = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.biy ; 3 uses
  %i.bja = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bfh, <2 x float> %i.bgh, <2 x float> %i.bgn)
  %i.bjb = fsub <2 x float> %i.bja, %i.bgq
  %i.bjc = load <2 x float>, ptr %i.biz, align 4, !tbaa !89
  %i.bjd = fadd <2 x float> %i.bjb, %i.bjc
  store <2 x float> %i.bjd, ptr %i.biz, align 4, !tbaa !89
  %i.bje = call float @llvm.fmuladd.f32(float %i.bev, float %i.bgj, float %i.bgi)
  %i.bjf = fsub float %i.bje, %i.bgr
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.biz, i64 8 ; 2 uses
  %i.bjh = load float, ptr %i.bjg, align 4, !tbaa !89
  %i.bji = fadd float %i.bjf, %i.bjh
  store float %i.bji, ptr %i.bjg, align 4, !tbaa !89
  %i.bjj = sext i32 %.0.i74.i.i to i64
  %i.bjk = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.bjj ; 3 uses
  %i.bjl = load <2 x float>, ptr %i.bjk, align 4, !tbaa !89
  %i.bjm = fadd <2 x float> %i.bgh, %i.bjl
  store <2 x float> %i.bjm, ptr %i.bjk, align 4, !tbaa !89
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjk, i64 8 ; 2 uses
  %i.bjo = load float, ptr %i.bjn, align 4, !tbaa !89
  %i.bjp = fadd float %i.bgj, %i.bjo
  store float %i.bjp, ptr %i.bjn, align 4, !tbaa !89
  br label %_ZN3gmxL16spread_vsite3FADILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKiffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

_ZN3gmxL16spread_vsite3FADILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKiffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i: ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #12
  br label %bb.ca

bb.bg:                                            ; preds = %.lr.ph.split.i24
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.aod, i64 4
  %i.bjr = load float, ptr %i.bjq, align 4, !tbaa !79 ; 3 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.aod, i64 8
  %i.bjt = load float, ptr %i.bjs, align 4, !tbaa !79 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #12
  %i.bju = getelementptr inbounds nuw i8, ptr %.076113.i, i64 4
  %i.bjv = load i32, ptr %i.bju, align 4, !tbaa !88
  %i.bjw = getelementptr inbounds nuw i8, ptr %.076113.i, i64 8
  %i.bjx = load i32, ptr %i.bjw, align 4, !tbaa !88
  %i.bjy = getelementptr inbounds nuw i8, ptr %.076113.i, i64 12
  %i.bjz = load i32, ptr %i.bjy, align 4, !tbaa !88
  %i.bka = getelementptr inbounds nuw i8, ptr %.076113.i, i64 16
  %i.bkb = load i32, ptr %i.bka, align 4, !tbaa !88 ; 2 uses
  %i.bkc = sext i32 %i.bjz to i64                 ; 2 uses
  %i.bkd = getelementptr inbounds [12 x i8], ptr %0, i64 %i.bkc ; 3 uses
  %i.bke = sext i32 %i.bjx to i64                 ; 2 uses
  %i.bkf = getelementptr inbounds [12 x i8], ptr %0, i64 %i.bke ; 5 uses
  br i1 %.not.i130.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.bkg = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.bkd, ptr noundef nonnull %i.bkf, ptr noundef nonnull %i.ag)
  %i.bkh = sext i32 %i.bkb to i64                 ; 2 uses
  %i.bki = getelementptr inbounds [12 x i8], ptr %0, i64 %i.bkh
  %i.bkj = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.bki, ptr noundef nonnull %i.bkf, ptr noundef nonnull %i.ah)
  %i.bkk = load <2 x float>, ptr %.phi.trans.insert56.i.i, align 4, !tbaa !89
  %.pre58.i.i27 = load float, ptr %i.ah, align 4, !tbaa !89
  %.pre60.i.i = load float, ptr %.phi.trans.insert59.i.i, align 4, !tbaa !89
  %.pre62.i.i = load float, ptr %.phi.trans.insert61.i.i, align 4, !tbaa !89
  %.pre63.i.i28 = load float, ptr %i.ag, align 4, !tbaa !89
  br label %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit52.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.bkl = load float, ptr %i.bkd, align 4, !tbaa !89
  %i.bkm = load float, ptr %i.bkf, align 4, !tbaa !89 ; 2 uses
  %i.bkn = fsub float %i.bkl, %i.bkm              ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkd, i64 4
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bkf, i64 4
  store float %i.bkn, ptr %i.ag, align 4, !tbaa !89
  %i.bkq = sext i32 %i.bkb to i64                 ; 2 uses
  %i.bkr = getelementptr inbounds [12 x i8], ptr %0, i64 %i.bkq ; 2 uses
  %i.bks = load float, ptr %i.bkr, align 4, !tbaa !89
  %i.bkt = fsub float %i.bks, %i.bkm              ; 2 uses
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkr, i64 4
  %i.bkv = load <2 x float>, ptr %i.bkp, align 4, !tbaa !89 ; 2 uses
  %i.bkw = load <2 x float>, ptr %i.bko, align 4, !tbaa !89
  %i.bkx = fsub <2 x float> %i.bkw, %i.bkv        ; 3 uses
  store <2 x float> %i.bkx, ptr %.phi.trans.insert61.i.i, align 4, !tbaa !89
  %i.bky = load <2 x float>, ptr %i.bku, align 4, !tbaa !89
  %i.bkz = fsub <2 x float> %i.bky, %i.bkv        ; 2 uses
  store float %i.bkt, ptr %i.ah, align 4, !tbaa !89
  store <2 x float> %i.bkz, ptr %.phi.trans.insert56.i.i, align 4, !tbaa !89
  %i.bla = extractelement <2 x float> %i.bkx, i64 0
  %i.blb = extractelement <2 x float> %i.bkx, i64 1
  br label %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit52.i.i

_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit52.i.i: ; preds = %bb.bi, %bb.bh
  %i.blc = phi float [ %.pre63.i.i28, %bb.bh ], [ %i.bkn, %bb.bi ] ; 2 uses
  %i.bld = phi float [ %.pre62.i.i, %bb.bh ], [ %i.bla, %bb.bi ] ; 2 uses
  %i.ble = phi float [ %.pre60.i.i, %bb.bh ], [ %i.blb, %bb.bi ] ; 2 uses
  %i.blf = phi float [ %.pre58.i.i27, %bb.bh ], [ %i.bkt, %bb.bi ] ; 2 uses
  %i.blg = phi i64 [ %i.bkh, %bb.bh ], [ %i.bkq, %bb.bi ]
  %.0.i53.i.i = phi i32 [ %i.bkg, %bb.bh ], [ 22, %bb.bi ] ; 2 uses
  %.0.i51.i.i = phi i32 [ %i.bkj, %bb.bh ], [ 22, %bb.bi ] ; 2 uses
  %i.blh = phi <2 x float> [ %i.bkk, %bb.bh ], [ %i.bkz, %bb.bi ] ; 2 uses
  %i.bli = sext i32 %i.bjv to i64                 ; 2 uses
  %i.blj = getelementptr inbounds [12 x i8], ptr %1, i64 %i.bli ; 2 uses
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blj, i64 8
  %i.bll = fneg float %i.blf
  %i.blm = extractelement <2 x float> %i.blh, i64 0 ; 2 uses
  %i.bln = fneg float %i.blm
  %i.blo = fneg float %i.bld
  %i.blp = fneg float %i.ble
  %i.blq = getelementptr inbounds [12 x i8], ptr %1, i64 %i.bke ; 3 uses
  %i.blr = load float, ptr %i.blq, align 4, !tbaa !89
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blq, i64 4 ; 2 uses
  %i.blt = load float, ptr %i.blk, align 4, !tbaa !89 ; 5 uses
  %i.blu = load <2 x float>, ptr %i.blj, align 4, !tbaa !89 ; 3 uses
  %i.blv = extractelement <2 x float> %i.blu, i64 0 ; 4 uses
  %i.blw = fmul float %i.bjt, %i.blv              ; 4 uses
  %i.blx = fmul float %i.bjt, %i.blt              ; 4 uses
  %i.bly = extractelement <2 x float> %i.blu, i64 1 ; 4 uses
  %i.blz = fmul float %i.bjt, %i.bly              ; 3 uses
  %10 = fneg float %i.blz                         ; 2 uses
  %i.bma = getelementptr inbounds [12 x i8], ptr %1, i64 %i.bkc ; 3 uses
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.bma, i64 8 ; 2 uses
  %i.bmc = getelementptr inbounds [12 x i8], ptr %1, i64 %i.blg ; 3 uses
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bmc, i64 8 ; 2 uses
  %11 = fmul float %i.ble, %i.blz
  %12 = call float @llvm.fmuladd.f32(float %i.bjr, float %i.blv, float %11)
  %13 = call float @llvm.fmuladd.f32(float %i.blo, float %i.blx, float %12) ; 2 uses
  %14 = extractelement <2 x float> %i.blh, i64 1  ; 2 uses
  %i.bme = fmul float %14, %10
  %i.bmf = call float @llvm.fmuladd.f32(float %i.aoe, float %i.blv, float %i.bme)
  %i.bmg = call float @llvm.fmuladd.f32(float %i.blm, float %i.blx, float %i.bmf) ; 2 uses
  %15 = fsub float %i.blv, %i.bmg
  %16 = fsub float %15, %13                       ; 2 uses
  %17 = fadd float %i.blr, %16
  store float %17, ptr %i.blq, align 4, !tbaa !89
  %i.bmh = load <2 x float>, ptr %i.bls, align 4, !tbaa !89
  %i.bmi = fmul float %i.blc, %10
  %i.bmj = fmul float %i.bjr, %i.bly
  %i.bmk = call float @llvm.fmuladd.f32(float %i.bld, float %i.blw, float %i.bmi)
  %i.bml = call float @llvm.fmuladd.f32(float %i.blp, float %i.blw, float %i.bmj)
  %i.bmm = call float @llvm.fmuladd.f32(float %i.bjr, float %i.blt, float %i.bmk) ; 3 uses
  %i.bmn = call float @llvm.fmuladd.f32(float %i.blc, float %i.blx, float %i.bml) ; 2 uses
  %i.bmo = fmul float %i.blf, %i.blz
  %i.bmp = fmul float %i.aoe, %i.bly
  %i.bmq = call float @llvm.fmuladd.f32(float %i.bln, float %i.blw, float %i.bmo)
  %i.bmr = call float @llvm.fmuladd.f32(float %14, float %i.blw, float %i.bmp)
  %i.bms = call float @llvm.fmuladd.f32(float %i.aoe, float %i.blt, float %i.bmq) ; 3 uses
  %i.bmt = call float @llvm.fmuladd.f32(float %i.bll, float %i.blx, float %i.bmr) ; 2 uses
  %i.bmu = fsub float %i.blt, %i.bms
  %i.bmv = fsub float %i.bly, %i.bmt
  %i.bmw = fsub float %i.bmu, %i.bmm
  %i.bmx = fsub float %i.bmv, %i.bmn
  %i.bmy = insertelement <2 x float> poison, float %i.bmx, i64 0
  %i.bmz = insertelement <2 x float> %i.bmy, float %i.bmw, i64 1 ; 2 uses
  %i.bna = fadd <2 x float> %i.bmh, %i.bmz
  store <2 x float> %i.bna, ptr %i.bls, align 4, !tbaa !89
  %i.bnb = load float, ptr %i.bmb, align 4, !tbaa !89
  %i.bnc = fadd float %i.bms, %i.bnb
  store float %i.bnc, ptr %i.bmb, align 4, !tbaa !89
  %i.bnd = load float, ptr %i.bmd, align 4, !tbaa !89
  %i.bne = fadd float %i.bmm, %i.bnd
  %i.bnf = load <2 x float>, ptr %i.bma, align 4, !tbaa !89
  %i.bng = insertelement <2 x float> poison, float %i.bmg, i64 0
  %i.bnh = insertelement <2 x float> %i.bng, float %i.bmt, i64 1 ; 2 uses
  %i.bni = fadd <2 x float> %i.bnh, %i.bnf
  store <2 x float> %i.bni, ptr %i.bma, align 4, !tbaa !89
  %i.bnj = load <2 x float>, ptr %i.bmc, align 4, !tbaa !89
  %i.bnk = insertelement <2 x float> poison, float %13, i64 0
  %i.bnl = insertelement <2 x float> %i.bnk, float %i.bmn, i64 1 ; 2 uses
  %i.bnm = fadd <2 x float> %i.bnl, %i.bnj
  store <2 x float> %i.bnm, ptr %i.bmc, align 4, !tbaa !89
  store float %i.bne, ptr %i.bmd, align 4, !tbaa !89
  br i1 %.not.i130.i, label %bb.bj, label %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit55.i.i

_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit55.i.i: ; preds = %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit52.i.i
  %i.bnn = getelementptr inbounds [12 x i8], ptr %0, i64 %i.bli
  %i.bno = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.bnn, ptr noundef nonnull %i.bkf, ptr noundef nonnull %i.af)
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit55.i.i, %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit52.i.i
  %.0.i110.i = phi i32 [ %i.bno, %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit55.i.i ], [ 22, %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit52.i.i ] ; 2 uses
  %i.bnp = icmp ne i32 %.0.i110.i, 22
  %i.bnq = icmp ne i32 %.0.i53.i.i, 22
  %or.cond.i111.i = or i1 %i.bnq, %i.bnp
  %i.bnr = icmp ne i32 %.0.i51.i.i, 22
  %or.cond3.i112.i = or i1 %i.bnr, %or.cond.i111.i
  br i1 %or.cond3.i112.i, label %bb.bk, label %_ZN3gmxL16spread_vsite3OUTILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

bb.bk:                                            ; preds = %bb.bj
  %i.bns = sext i32 %.0.i110.i to i64
  %i.bnt = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.bns ; 3 uses
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bnt, i64 8 ; 2 uses
  %i.bnv = load float, ptr %i.bnu, align 4, !tbaa !89
  %i.bnw = fsub float %i.bnv, %i.blt
  %i.bnx = load <2 x float>, ptr %i.bnt, align 4, !tbaa !89
  %i.bny = fsub <2 x float> %i.bnx, %i.blu
  store <2 x float> %i.bny, ptr %i.bnt, align 4, !tbaa !89
  store float %i.bnw, ptr %i.bnu, align 4, !tbaa !89
  %i.bnz = load float, ptr %i.ang, align 4, !tbaa !89
  %i.boa = fadd float %16, %i.bnz
  store float %i.boa, ptr %i.ang, align 4, !tbaa !89
  %i.bob = load <2 x float>, ptr %i.anh, align 4, !tbaa !89
  %i.boc = fadd <2 x float> %i.bmz, %i.bob
  store <2 x float> %i.boc, ptr %i.anh, align 4, !tbaa !89
  %i.bod = sext i32 %.0.i53.i.i to i64
  %i.boe = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.bod ; 3 uses
  %i.bof = getelementptr inbounds nuw i8, ptr %i.boe, i64 8 ; 2 uses
  %i.bog = load float, ptr %i.bof, align 4, !tbaa !89
  %i.boh = fadd float %i.bms, %i.bog
  %i.boi = load <2 x float>, ptr %i.boe, align 4, !tbaa !89
  %i.boj = fadd <2 x float> %i.bnh, %i.boi
  store <2 x float> %i.boj, ptr %i.boe, align 4, !tbaa !89
  store float %i.boh, ptr %i.bof, align 4, !tbaa !89
  %i.bok = sext i32 %.0.i51.i.i to i64
  %i.bol = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.bok ; 3 uses
  %i.bom = getelementptr inbounds nuw i8, ptr %i.bol, i64 8 ; 2 uses
  %i.bon = load float, ptr %i.bom, align 4, !tbaa !89
  %i.boo = fadd float %i.bmm, %i.bon
  %i.bop = load <2 x float>, ptr %i.bol, align 4, !tbaa !89
  %i.boq = fadd <2 x float> %i.bnl, %i.bop
  store <2 x float> %i.boq, ptr %i.bol, align 4, !tbaa !89
  store float %i.boo, ptr %i.bom, align 4, !tbaa !89
  br label %_ZN3gmxL16spread_vsite3OUTILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i

_ZN3gmxL16spread_vsite3OUTILNS_19VirtualSitesHandler14VirialHandlingE1EEEvPKifffNS_8ArrayRefIKNS_11BasicVectorIfEEEENS5_IS7_EESA_PA3_fPK5t_pbc.exit.i: ; preds = %bb.bk, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #12
  br label %bb.ca

bb.bl:                                            ; preds = %.lr.ph.split.i24
  %i.bor = getelementptr inbounds nuw i8, ptr %i.aod, i64 4
  %i.bos = load float, ptr %i.bor, align 4, !tbaa !79 ; 6 uses
  %i.bot = getelementptr inbounds nuw i8, ptr %i.aod, i64 8
  %i.bou = load float, ptr %i.bot, align 4, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #12
  %i.bov = getelementptr inbounds nuw i8, ptr %.076113.i, i64 4
  %i.bow = load i32, ptr %i.bov, align 4, !tbaa !88
  %i.box = getelementptr inbounds nuw i8, ptr %.076113.i, i64 8
  %i.boy = load i32, ptr %i.box, align 4, !tbaa !88
  %i.boz = getelementptr inbounds nuw i8, ptr %.076113.i, i64 12
  %i.bpa = load i32, ptr %i.boz, align 4, !tbaa !88
  %i.bpb = getelementptr inbounds nuw i8, ptr %.076113.i, i64 16
  %i.bpc = load i32, ptr %i.bpb, align 4, !tbaa !88 ; 2 uses
  %i.bpd = getelementptr inbounds nuw i8, ptr %.076113.i, i64 20
  %i.bpe = load i32, ptr %i.bpd, align 4, !tbaa !88 ; 2 uses
  %i.bpf = sext i32 %i.bpa to i64                 ; 2 uses
  %i.bpg = getelementptr inbounds [12 x i8], ptr %0, i64 %i.bpf ; 5 uses
  %i.bph = sext i32 %i.boy to i64                 ; 2 uses
  %i.bpi = getelementptr inbounds [12 x i8], ptr %0, i64 %i.bph ; 4 uses
  br i1 %.not.i130.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.bpj = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.bpg, ptr noundef nonnull %i.bpi, ptr noundef nonnull %i.ac)
  %i.bpk = sext i32 %i.bpc to i64                 ; 2 uses
  %i.bpl = getelementptr inbounds [12 x i8], ptr %0, i64 %i.bpk
  %i.bpm = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.bpl, ptr noundef nonnull %i.bpg, ptr noundef nonnull %i.ad)
  %i.bpn = sext i32 %i.bpe to i64                 ; 2 uses
  %i.bpo = getelementptr inbounds [12 x i8], ptr %0, i64 %i.bpn
  %i.bpp = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.bpo, ptr noundef nonnull %i.bpg, ptr noundef nonnull %i.ae)
  %i.bpq = load <2 x float>, ptr %i.ac, align 8, !tbaa !89
  %i.bpr = load <2 x float>, ptr %i.ad, align 8, !tbaa !89
  %i.bps = load <2 x float>, ptr %i.ae, align 8, !tbaa !89
  %.pre54.i.i = load float, ptr %i.anj, align 8, !tbaa !89
  %.pre56.i.i26 = load float, ptr %.phi.trans.insert55.i.i, align 8, !tbaa !89
  %.pre58.i117.i = load float, ptr %.phi.trans.insert57.i.i13, align 8, !tbaa !89
  br label %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit92.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bpg, i64 8
  %i.bpu = load float, ptr %i.bpt, align 4, !tbaa !89 ; 3 uses
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpi, i64 8
  %i.bpw = load float, ptr %i.bpv, align 4, !tbaa !89
  %i.bpx = fsub float %i.bpu, %i.bpw              ; 2 uses
  store float %i.bpx, ptr %i.anj, align 8, !tbaa !89
  %i.bpy = sext i32 %i.bpc to i64                 ; 2 uses
  %i.bpz = getelementptr inbounds [12 x i8], ptr %0, i64 %i.bpy ; 2 uses
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpz, i64 8
  %i.bqb = load float, ptr %i.bqa, align 4, !tbaa !89
  %i.bqc = fsub float %i.bqb, %i.bpu              ; 2 uses
  store float %i.bqc, ptr %.phi.trans.insert55.i.i, align 8, !tbaa !89
  %i.bqd = sext i32 %i.bpe to i64                 ; 2 uses
  %i.bqe = getelementptr inbounds [12 x i8], ptr %0, i64 %i.bqd ; 2 uses
  %i.bqf = load <2 x float>, ptr %i.bpg, align 4, !tbaa !89 ; 3 uses
  %i.bqg = load <2 x float>, ptr %i.bpi, align 4, !tbaa !89
  %i.bqh = fsub <2 x float> %i.bqf, %i.bqg        ; 2 uses
  store <2 x float> %i.bqh, ptr %i.ac, align 8, !tbaa !89
  %i.bqi = load <2 x float>, ptr %i.bpz, align 4, !tbaa !89
  %i.bqj = fsub <2 x float> %i.bqi, %i.bqf        ; 2 uses
  store <2 x float> %i.bqj, ptr %i.ad, align 8, !tbaa !89
  %i.bqk = load <2 x float>, ptr %i.bqe, align 4, !tbaa !89
  %i.bql = fsub <2 x float> %i.bqk, %i.bqf        ; 2 uses
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqe, i64 8
  %i.bqn = load float, ptr %i.bqm, align 4, !tbaa !89
  %i.bqo = fsub float %i.bqn, %i.bpu              ; 2 uses
  store <2 x float> %i.bql, ptr %i.ae, align 8, !tbaa !89
  store float %i.bqo, ptr %.phi.trans.insert57.i.i13, align 8, !tbaa !89
  br label %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit92.i.i

_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit92.i.i: ; preds = %bb.bn, %bb.bm
  %i.bqp = phi float [ %.pre58.i117.i, %bb.bm ], [ %i.bqo, %bb.bn ]
  %i.bqq = phi float [ %.pre56.i.i26, %bb.bm ], [ %i.bqc, %bb.bn ]
  %i.bqr = phi float [ %.pre54.i.i, %bb.bm ], [ %i.bpx, %bb.bn ]
  %i.bqs = phi i64 [ %i.bpn, %bb.bm ], [ %i.bqd, %bb.bn ]
  %.0.i8820.i.i = phi i32 [ %i.bpm, %bb.bm ], [ 22, %bb.bn ] ; 2 uses
  %.0.i1418.i.i = phi i32 [ %i.bpj, %bb.bm ], [ 22, %bb.bn ] ; 2 uses
  %i.bqt = phi i64 [ %i.bpk, %bb.bm ], [ %i.bpy, %bb.bn ]
  %.0.i91.i.i = phi i32 [ %i.bpp, %bb.bm ], [ 22, %bb.bn ] ; 2 uses
  %i.bqu = phi <2 x float> [ %i.bps, %bb.bm ], [ %i.bql, %bb.bn ]
  %i.bqv = phi <2 x float> [ %i.bpr, %bb.bm ], [ %i.bqj, %bb.bn ]
  %i.bqw = phi <2 x float> [ %i.bpq, %bb.bm ], [ %i.bqh, %bb.bn ]
  %i.bqx = insertelement <2 x float> poison, float %i.aoe, i64 0
  %i.bqy = shufflevector <2 x float> %i.bqx, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bqz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bqy, <2 x float> %i.bqv, <2 x float> %i.bqw)
  %i.bra = call float @llvm.fmuladd.f32(float %i.aoe, float %i.bqq, float %i.bqr)
  %i.brb = call float @llvm.fmuladd.f32(float %i.bos, float %i.bqp, float %i.bra) ; 4 uses
  %i.brc = sext i32 %i.bow to i64                 ; 2 uses
  %i.brd = getelementptr inbounds [12 x i8], ptr %1, i64 %i.brc ; 2 uses
  %i.bre = getelementptr inbounds nuw i8, ptr %i.brd, i64 8
  %i.brf = load float, ptr %i.bre, align 4, !tbaa !89 ; 5 uses
  %i.brg = insertelement <2 x float> poison, float %i.bos, i64 0
  %i.brh = shufflevector <2 x float> %i.brg, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bri = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.brh, <2 x float> %i.bqu, <2 x float> %i.bqz) ; 5 uses
  %foldExtExtBinop28 = fmul <2 x float> %i.bri, %i.bri
  %i.brj = extractelement <2 x float> %foldExtExtBinop28, i64 1
  %i.brk = extractelement <2 x float> %i.bri, i64 0 ; 3 uses
  %i.brl = call float @llvm.fmuladd.f32(float %i.brk, float %i.brk, float %i.brj)
  %i.brm = call noundef float @llvm.fmuladd.f32(float %i.brb, float %i.brb, float %i.brl)
  %sqrt.i.i118.i = call float @llvm.sqrt.f32(float %i.brm)
  %i.brn = fdiv float 1.000000e+00, %sqrt.i.i118.i ; 3 uses
  %i.bro = fmul float %i.bou, %i.brn              ; 2 uses
  %i.brp = load <2 x float>, ptr %i.brd, align 4, !tbaa !89 ; 6 uses
  %foldExtExtBinop24 = fmul <2 x float> %i.bri, %i.brp
  %i.brq = extractelement <2 x float> %foldExtExtBinop24, i64 1
  %i.brr = extractelement <2 x float> %i.brp, i64 0
  %i.brs = call float @llvm.fmuladd.f32(float %i.brk, float %i.brr, float %i.brq)
  %i.brt = call noundef float @llvm.fmuladd.f32(float %i.brb, float %i.brf, float %i.brs)
  %i.bru = fmul float %i.brn, %i.brt
  %i.brv = fneg float %i.brn
  %i.brw = fmul float %i.bru, %i.brv              ; 2 uses
  %i.brx = insertelement <2 x float> poison, float %i.brw, i64 0
  %i.bry = shufflevector <2 x float> %i.brx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.brz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bry, <2 x float> %i.bri, <2 x float> %i.brp)
  %i.bsa = insertelement <2 x float> poison, float %i.bro, i64 0
  %i.bsb = shufflevector <2 x float> %i.bsa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bsc = fmul <2 x float> %i.bsb, %i.brz        ; 8 uses
  %i.bsd = call float @llvm.fmuladd.f32(float %i.brw, float %i.brb, float %i.brf)
  %i.bse = fmul float %i.bro, %i.bsd              ; 8 uses
  %i.bsf = fsub float 1.000000e+00, %i.aoe
  %i.bsg = fsub float %i.bsf, %i.bos              ; 2 uses
  %i.bsh = getelementptr inbounds [12 x i8], ptr %1, i64 %i.bph ; 3 uses
  %i.bsi = getelementptr inbounds [12 x i8], ptr %1, i64 %i.bpf ; 3 uses
  %i.bsj = getelementptr inbounds [12 x i8], ptr %1, i64 %i.bqt ; 3 uses
  %i.bsk = getelementptr inbounds [12 x i8], ptr %1, i64 %i.bqs ; 3 uses
  %i.bsl = fsub <2 x float> %i.brp, %i.bsc
  %i.bsm = load <2 x float>, ptr %i.bsh, align 4, !tbaa !89
  %i.bsn = fadd <2 x float> %i.bsm, %i.bsl
  store <2 x float> %i.bsn, ptr %i.bsh, align 4, !tbaa !89
  %i.bso = load <2 x float>, ptr %i.bsi, align 4, !tbaa !89
  %i.bsp = insertelement <2 x float> poison, float %i.bsg, i64 0
  %i.bsq = shufflevector <2 x float> %i.bsp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bsr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bsq, <2 x float> %i.bsc, <2 x float> %i.bso)
  store <2 x float> %i.bsr, ptr %i.bsi, align 4, !tbaa !89
  %i.bss = load <2 x float>, ptr %i.bsj, align 4, !tbaa !89
  %i.bst = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bqy, <2 x float> %i.bsc, <2 x float> %i.bss)
  store <2 x float> %i.bst, ptr %i.bsj, align 4, !tbaa !89
  %i.bsu = load <2 x float>, ptr %i.bsk, align 4, !tbaa !89
  %i.bsv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.brh, <2 x float> %i.bsc, <2 x float> %i.bsu)
  store <2 x float> %i.bsv, ptr %i.bsk, align 4, !tbaa !89
  %i.bsw = fsub float %i.brf, %i.bse
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsh, i64 8 ; 2 uses
  %i.bsy = load float, ptr %i.bsx, align 4, !tbaa !89
  %i.bsz = fadd float %i.bsw, %i.bsy
  store float %i.bsz, ptr %i.bsx, align 4, !tbaa !89
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsi, i64 8 ; 2 uses
  %i.btb = load float, ptr %i.bta, align 4, !tbaa !89
  %i.btc = call float @llvm.fmuladd.f32(float %i.bsg, float %i.bse, float %i.btb)
  store float %i.btc, ptr %i.bta, align 4, !tbaa !89
  %i.btd = getelementptr inbounds nuw i8, ptr %i.bsj, i64 8 ; 2 uses
  %i.bte = load float, ptr %i.btd, align 4, !tbaa !89
  %i.btf = call float @llvm.fmuladd.f32(float %i.aoe, float %i.bse, float %i.bte)
  store float %i.btf, ptr %i.btd, align 4, !tbaa !89
  %i.btg = getelementptr inbounds nuw i8, ptr %i.bsk, i64 8 ; 2 uses
  %i.bth = load float, ptr %i.btg, align 4, !tbaa !89
  %i.bti = call float @llvm.fmuladd.f32(float %i.bos, float %i.bse, float %i.bth)
  store float %i.bti, ptr %i.btg, align 4, !tbaa !89
  br i1 %.not.i130.i, label %bb.bo, label %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit95.i.i

_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit95.i.i: ; preds = %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit92.i.i
  %i.btj = getelementptr inbounds [12 x i8], ptr %0, i64 %i.brc
  %i.btk = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.btj, ptr noundef nonnull %i.bpi, ptr noundef nonnull %i.ab)
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit95.i.i, %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit92.i.i
  %.0.i119.i = phi i32 [ %i.btk, %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit95.i.i ], [ 22, %_ZN3gmxL12pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit92.i.i ] ; 2 uses
  %i.btl = icmp ne i32 %.0.i119.i, 22
  %i.btm = icmp ne i32 %.0.i1418.i.i, 22
end_hunk_0
