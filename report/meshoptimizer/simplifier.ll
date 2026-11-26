Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/simplifier?download=true
inline.NumInlined: 193
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a
  %i.axf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avw, <4 x float> %i.axe, <4 x float> %i.awa) ; 4 uses
  %i.axg = insertelement <2 x float> %i.awu, float %i.axb, i64 1
  %i.axh = insertelement <2 x float> poison, float %i.axb, i64 0
  %i.axi = shufflevector <2 x float> %i.axh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axj = fmul <2 x float> %i.axg, %i.axi
  %i.axk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.avy, <2 x float> %i.axj, <2 x float> %i.awb) ; 4 uses
  %i.axl = insertelement <4 x float> %i.awp, float %i.axb, i64 3
  %i.axm = fmul <4 x float> %i.avw, %i.axl
  store <4 x float> %i.axm, ptr %i.awv, align 16, !tbaa !44
  %i.axn = add nuw nsw i64 %.0210.i.i, 1          ; 2 uses
  %exitcond.not.i.i487 = icmp eq i64 %i.axn, %.0330
  br i1 %exitcond.not.i.i487, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i, label %bb.cw, !llvm.loop !92

_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i: ; preds = %bb.cw
  %i.axo = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.asy ; 5 uses
  %i.axp = load <4 x float>, ptr %i.axo, align 4, !tbaa !44
  %i.axq = fadd <4 x float> %i.aws, %i.axp
  store <4 x float> %i.axq, ptr %i.axo, align 4, !tbaa !44
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axo, i64 16 ; 2 uses
  %i.axs = load <4 x float>, ptr %i.axr, align 4, !tbaa !44
  %i.axt = fadd <4 x float> %i.axf, %i.axs
  store <4 x float> %i.axt, ptr %i.axr, align 4, !tbaa !44
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axo, i64 32 ; 2 uses
  %i.axv = load <2 x float>, ptr %i.axu, align 4, !tbaa !44
  %i.axw = fadd <2 x float> %i.axk, %i.axv
  store <2 x float> %i.axw, ptr %i.axu, align 4, !tbaa !44
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axo, i64 40 ; 2 uses
  %i.axy = load float, ptr %i.axx, align 4, !tbaa !48
  %i.axz = fadd float %i.auq, %i.axy
  store float %i.axz, ptr %i.axx, align 4, !tbaa !48
  %i.aya = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.ata ; 5 uses
  %i.ayb = load <4 x float>, ptr %i.aya, align 4, !tbaa !44
  %i.ayc = fadd <4 x float> %i.aws, %i.ayb
  store <4 x float> %i.ayc, ptr %i.aya, align 4, !tbaa !44
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.aya, i64 16 ; 2 uses
  %i.aye = load <4 x float>, ptr %i.ayd, align 4, !tbaa !44
  %i.ayf = fadd <4 x float> %i.axf, %i.aye
  store <4 x float> %i.ayf, ptr %i.ayd, align 4, !tbaa !44
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.aya, i64 32 ; 2 uses
  %i.ayh = load <2 x float>, ptr %i.ayg, align 4, !tbaa !44
  %i.ayi = fadd <2 x float> %i.axk, %i.ayh
  store <2 x float> %i.ayi, ptr %i.ayg, align 4, !tbaa !44
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.aya, i64 40 ; 2 uses
  %i.ayk = load float, ptr %i.ayj, align 4, !tbaa !48
  %i.ayl = fadd float %i.auq, %i.ayk
  store float %i.ayl, ptr %i.ayj, align 4, !tbaa !48
  %i.aym = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.atc ; 5 uses
  %i.ayn = load <4 x float>, ptr %i.aym, align 4, !tbaa !44
  %i.ayo = fadd <4 x float> %i.aws, %i.ayn
  store <4 x float> %i.ayo, ptr %i.aym, align 4, !tbaa !44
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.aym, i64 16 ; 2 uses
  %i.ayq = load <4 x float>, ptr %i.ayp, align 4, !tbaa !44
  %i.ayr = fadd <4 x float> %i.axf, %i.ayq
  store <4 x float> %i.ayr, ptr %i.ayp, align 4, !tbaa !44
  %i.ays = getelementptr inbounds nuw i8, ptr %i.aym, i64 32 ; 2 uses
  %i.ayt = load <2 x float>, ptr %i.ays, align 4, !tbaa !44
  %i.ayu = fadd <2 x float> %i.axk, %i.ayt
  store <2 x float> %i.ayu, ptr %i.ays, align 4, !tbaa !44
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.aym, i64 40 ; 2 uses
  %i.ayw = load float, ptr %i.ayv, align 4, !tbaa !48
  %i.ayx = fadd float %i.auq, %i.ayw
  store float %i.ayx, ptr %i.ayv, align 4, !tbaa !48
  %i.ayy = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.ate ; 3 uses
  br i1 %i.asp, label %.epil.preheader1324, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new

_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new: ; preds = %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new
  %.018.i.i = phi i64 [ %i.azk, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new ], [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ] ; 4 uses
  %niter1330 = phi i64 [ %niter1330.next.1, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new ], [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ]
  %i.ayz = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i.i
  %i.aza = getelementptr inbounds nuw [16 x i8], ptr %i.ayy, i64 %.018.i.i ; 2 uses
  %i.azb = load <4 x float>, ptr %i.ayz, align 16, !tbaa !44
  %i.azc = load <4 x float>, ptr %i.aza, align 4, !tbaa !44
  %i.azd = fadd <4 x float> %i.azb, %i.azc
  store <4 x float> %i.azd, ptr %i.aza, align 4, !tbaa !44
  %i.aze = or disjoint i64 %.018.i.i, 1           ; 2 uses
  %i.azf = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.aze
  %i.azg = getelementptr inbounds nuw [16 x i8], ptr %i.ayy, i64 %i.aze ; 2 uses
  %i.azh = load <4 x float>, ptr %i.azf, align 16, !tbaa !44
  %i.azi = load <4 x float>, ptr %i.azg, align 4, !tbaa !44
  %i.azj = fadd <4 x float> %i.azh, %i.azi
  store <4 x float> %i.azj, ptr %i.azg, align 4, !tbaa !44
  %i.azk = add nuw nsw i64 %.018.i.i, 2           ; 2 uses
  %niter1330.next.1 = add nuw i64 %niter1330, 2   ; 2 uses
  %niter1330.ncmp.1 = icmp eq i64 %niter1330.next.1, %unroll_iter1329
  br i1 %niter1330.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new, !llvm.loop !93

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa: ; preds = %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new
  br i1 %lcmp.mod1327.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i, label %.epil.preheader1324

.epil.preheader1324:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i
  %.018.i.i.epil.init = phi i64 [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ], [ %i.azk, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1328)
  %i.azl = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i.i.epil.init
  %i.azm = getelementptr inbounds nuw [16 x i8], ptr %i.ayy, i64 %.018.i.i.epil.init ; 2 uses
  %i.azn = load <4 x float>, ptr %i.azl, align 16, !tbaa !44
  %i.azo = load <4 x float>, ptr %i.azm, align 4, !tbaa !44
  %i.azp = fadd <4 x float> %i.azn, %i.azo
  store <4 x float> %i.azp, ptr %i.azm, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, %.epil.preheader1324
  %i.azq = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.atg ; 3 uses
  br i1 %i.asq, label %.epil.preheader1331, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new
  %.018.i43.i = phi i64 [ %i.bac, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ] ; 4 uses
  %niter1337 = phi i64 [ %niter1337.next.1, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ]
  %i.azr = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i43.i
  %i.azs = getelementptr inbounds nuw [16 x i8], ptr %i.azq, i64 %.018.i43.i ; 2 uses
  %i.azt = load <4 x float>, ptr %i.azr, align 16, !tbaa !44
  %i.azu = load <4 x float>, ptr %i.azs, align 4, !tbaa !44
  %i.azv = fadd <4 x float> %i.azt, %i.azu
  store <4 x float> %i.azv, ptr %i.azs, align 4, !tbaa !44
  %i.azw = or disjoint i64 %.018.i43.i, 1         ; 2 uses
  %i.azx = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.azw
  %i.azy = getelementptr inbounds nuw [16 x i8], ptr %i.azq, i64 %i.azw ; 2 uses
  %i.azz = load <4 x float>, ptr %i.azx, align 16, !tbaa !44
  %i.baa = load <4 x float>, ptr %i.azy, align 4, !tbaa !44
  %i.bab = fadd <4 x float> %i.azz, %i.baa
  store <4 x float> %i.bab, ptr %i.azy, align 4, !tbaa !44
  %i.bac = add nuw nsw i64 %.018.i43.i, 2         ; 2 uses
  %niter1337.next.1 = add nuw i64 %niter1337, 2   ; 2 uses
  %niter1337.ncmp.1 = icmp eq i64 %niter1337.next.1, %unroll_iter1336
  br i1 %niter1337.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new, !llvm.loop !93

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new
  br i1 %lcmp.mod1334.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i, label %.epil.preheader1331

.epil.preheader1331:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i
  %.018.i43.i.epil.init = phi i64 [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ], [ %i.bac, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1335)
  %i.bad = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i43.i.epil.init
  %i.bae = getelementptr inbounds nuw [16 x i8], ptr %i.azq, i64 %.018.i43.i.epil.init ; 2 uses
  %i.baf = load <4 x float>, ptr %i.bad, align 16, !tbaa !44
  %i.bag = load <4 x float>, ptr %i.bae, align 4, !tbaa !44
  %i.bah = fadd <4 x float> %i.baf, %i.bag
  store <4 x float> %i.bah, ptr %i.bae, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, %.epil.preheader1331
  %i.bai = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.ati ; 3 uses
  br i1 %i.asr, label %.epil.preheader1338, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new
  %.018.i46.i = phi i64 [ %i.bau, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ] ; 4 uses
  %niter1344 = phi i64 [ %niter1344.next.1, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ]
  %i.baj = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i46.i
  %i.bak = getelementptr inbounds nuw [16 x i8], ptr %i.bai, i64 %.018.i46.i ; 2 uses
  %i.bal = load <4 x float>, ptr %i.baj, align 16, !tbaa !44
  %i.bam = load <4 x float>, ptr %i.bak, align 4, !tbaa !44
  %i.ban = fadd <4 x float> %i.bal, %i.bam
  store <4 x float> %i.ban, ptr %i.bak, align 4, !tbaa !44
  %i.bao = or disjoint i64 %.018.i46.i, 1         ; 2 uses
  %i.bap = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.bao
  %i.baq = getelementptr inbounds nuw [16 x i8], ptr %i.bai, i64 %i.bao ; 2 uses
  %i.bar = load <4 x float>, ptr %i.bap, align 16, !tbaa !44
  %i.bas = load <4 x float>, ptr %i.baq, align 4, !tbaa !44
  %i.bat = fadd <4 x float> %i.bar, %i.bas
  store <4 x float> %i.bat, ptr %i.baq, align 4, !tbaa !44
  %i.bau = add nuw nsw i64 %.018.i46.i, 2         ; 2 uses
  %niter1344.next.1 = add nuw i64 %niter1344, 2   ; 2 uses
  %niter1344.ncmp.1 = icmp eq i64 %niter1344.next.1, %unroll_iter1343
  br i1 %niter1344.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new, !llvm.loop !93

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new
  br i1 %lcmp.mod1341.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i, label %.epil.preheader1338

.epil.preheader1338:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i
  %.018.i46.i.epil.init = phi i64 [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ], [ %i.bau, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1342)
  %i.bav = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i46.i.epil.init
  %i.baw = getelementptr inbounds nuw [16 x i8], ptr %i.bai, i64 %.018.i46.i.epil.init ; 2 uses
  %i.bax = load <4 x float>, ptr %i.bav, align 16, !tbaa !44
  %i.bay = load <4 x float>, ptr %i.baw, align 4, !tbaa !44
  %i.baz = fadd <4 x float> %i.bax, %i.bay
  store <4 x float> %i.baz, ptr %i.baw, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, %.epil.preheader1338
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  %i.bba = add i64 %.080.i, 3                     ; 2 uses
  %i.bbb = icmp ult i64 %i.bba, %2
  br i1 %i.bbb, label %.lr.ph.i485, label %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit, !llvm.loop !94

_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i, %_ZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_.exit, %_ZN7meshoptL18fillVertexQuadricsEPNS_7QuadricEPKNS_7Vector3EmPKjPKhS6_j.exit
  %i.bbc = and i32 %13, 8
  %.not405 = icmp ne i32 %i.bbc, 0                ; 3 uses
  br i1 %.not405, label %bb.cx, label %.loopexit729

bb.cx:                                            ; preds = %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit
  %i.bbd = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bbe = invoke noundef ptr %i.bbd(i64 noundef %i.iu)
          to label %bb.cy unwind label %bb.ec, !inline_history !4 ; 6 uses

bb.cy:                                            ; preds = %bb.cx
  %i.bbf = load i64, ptr %i.ek, align 8, !tbaa !26 ; 3 uses
  %i.bbg = add nuw nsw i64 %i.bbf, 1              ; 2 uses
  store i64 %i.bbg, ptr %i.ek, align 8, !tbaa !26
  %i.bbh = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.bbf
  store ptr %i.bbe, ptr %i.bbh, align 8, !tbaa !27
  %i.bbi = call fastcc noundef i64 @_ZN7meshoptL15buildComponentsEPjmPKjmS2_(ptr noundef %i.bbe, i64 noundef %.0706, ptr noundef %0, i64 noundef %2, ptr noundef %i.iv) ; 8 uses
  %i.bbj = shl nuw nsw i64 %i.bbi, 4
  %i.bbk = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bbl = invoke noundef ptr %i.bbk(i64 noundef %i.bbj)
          to label %bb.cz unwind label %bb.ec, !inline_history !6 ; 10 uses

bb.cz:                                            ; preds = %bb.cy
  %i.bbm = add nuw nsw i64 %i.bbf, 2
  store i64 %i.bbm, ptr %i.ek, align 8, !tbaa !26
  %i.bbn = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.bbg
  store ptr %i.bbl, ptr %i.bbn, align 8, !tbaa !27
  call fastcc void @_ZN7meshoptL17measureComponentsEPfmPKjPKNS_7Vector3Em(ptr noundef %i.bbl, i64 noundef %i.bbi, ptr noundef %i.bbe, ptr noundef %i.zc, i64 noundef %.0706)
  %.not834 = icmp eq i64 %i.bbi, 0
  br i1 %.not834, label %.loopexit729, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.cz
  %xtraiter1345 = and i64 %i.bbi, 3               ; 3 uses
  %i.bbo = icmp samesign ult i64 %i.bbi, 4
  br i1 %i.bbo, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter1350 = and i64 %i.bbi, 4294967292
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph.a, %.lr.ph.preheader.new
  %.0342778 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %31, %.lr.ph.a ] ; 5 uses
  %.0700777 = phi float [ f0x7F7FFFFF, %.lr.ph.preheader.new ], [ %..3, %.lr.ph.a ] ; 2 uses
  %niter1351 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter1351.next.3, %.lr.ph.a ]
  %18 = getelementptr inbounds nuw [4 x i8], ptr %i.bbl, i64 %.0342778
  %19 = load float, ptr %18, align 4, !tbaa !44   ; 2 uses
  %20 = fcmp ogt float %.0700777, %19
  %. = select i1 %20, float %19, float %.0700777  ; 2 uses
  %i.bbp = getelementptr inbounds nuw [4 x i8], ptr %i.bbl, i64 %.0342778
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbp, i64 4
  %21 = load float, ptr %i.bbq, align 4, !tbaa !44 ; 2 uses
  %22 = fcmp ogt float %., %21
  %..1 = select i1 %22, float %21, float %.       ; 2 uses
  %23 = getelementptr inbounds nuw [4 x i8], ptr %i.bbl, i64 %.0342778
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %25 = load float, ptr %24, align 4, !tbaa !44   ; 2 uses
  %26 = fcmp ogt float %..1, %25
  %..2 = select i1 %26, float %25, float %..1     ; 2 uses
  %27 = getelementptr inbounds nuw [4 x i8], ptr %i.bbl, i64 %.0342778
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 12
  %29 = load float, ptr %28, align 4, !tbaa !44   ; 2 uses
  %30 = fcmp ogt float %..2, %29
  %..3 = select i1 %30, float %29, float %..2     ; 3 uses
  %31 = add nuw nsw i64 %.0342778, 4              ; 2 uses
  %niter1351.next.3 = add nuw nsw i64 %niter1351, 4 ; 2 uses
  %niter1351.ncmp.3 = icmp eq i64 %niter1351.next.3, %unroll_iter1350
  br i1 %niter1351.ncmp.3, label %.loopexit729.loopexit.unr-lcssa, label %.lr.ph.a, !llvm.loop !95

.loopexit729.loopexit.unr-lcssa:                  ; preds = %.lr.ph.a
  %lcmp.mod1347.not = icmp eq i64 %xtraiter1345, 0
  br i1 %lcmp.mod1347.not, label %.loopexit729, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit729.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0342778.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %31, %.loopexit729.loopexit.unr-lcssa ]
  %.0700777.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.preheader ], [ %..3, %.loopexit729.loopexit.unr-lcssa ]
  %lcmp.mod1349 = icmp ne i64 %xtraiter1345, 0
  call void @llvm.assume(i1 %lcmp.mod1349)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0342778.epil = phi i64 [ %32, %.lr.ph.epil ], [ %.0342778.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0700777.epil = phi float [ %..epil, %.lr.ph.epil ], [ %.0700777.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter1346 = phi i64 [ %epil.iter1346.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr %i.bbl, i64 %.0342778.epil
  %i.bbs = load float, ptr %i.bbr, align 4, !tbaa !44 ; 2 uses
  %i.bbt = fcmp ogt float %.0700777.epil, %i.bbs
  %..epil = select i1 %i.bbt, float %i.bbs, float %.0700777.epil ; 2 uses
  %32 = add nuw nsw i64 %.0342778.epil, 1
  %epil.iter1346.next = add i64 %epil.iter1346, 1 ; 2 uses
  %epil.iter1346.cmp.not = icmp eq i64 %epil.iter1346.next, %xtraiter1345
  br i1 %epil.iter1346.cmp.not, label %.loopexit729, label %.lr.ph.epil, !llvm.loop !96

.loopexit729:                                     ; preds = %.loopexit729.loopexit.unr-lcssa, %.lr.ph.epil, %bb.cz, %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit
  %.1701 = phi float [ 0.000000e+00, %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit ], [ f0x7F7FFFFF, %bb.cz ], [ %..3, %.loopexit729.loopexit.unr-lcssa ], [ %..epil, %.lr.ph.epil ] ; 3 uses
  %.0345 = phi ptr [ null, %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit ], [ %i.bbe, %bb.cz ], [ %i.bbe, %.lr.ph.epil ], [ %i.bbe, %.loopexit729.loopexit.unr-lcssa ] ; 2 uses
  %.0344 = phi ptr [ null, %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit ], [ %i.bbl, %bb.cz ], [ %i.bbl, %.lr.ph.epil ], [ %i.bbl, %.loopexit729.loopexit.unr-lcssa ] ; 5 uses
  %.0343 = phi i64 [ 0, %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit ], [ 0, %bb.cz ], [ %i.bbi, %.lr.ph.epil ], [ %i.bbi, %.loopexit729.loopexit.unr-lcssa ] ; 5 uses
  br i1 %.not88.i, label %_ZN7meshoptL18boundEdgeCollapsesERKNS_13EdgeAdjacencyEmmPh.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit729
  %.pre.i494 = load i32, ptr %i.ej, align 4, !tbaa !28 ; 2 uses
  %min.iters.check1187 = icmp ult i64 %.0706, 4
  br i1 %min.iters.check1187, label %.lr.ph.i495.preheader, label %vector.ph1188

vector.ph1188:                                    ; preds = %.lr.ph.preheader.i
  %n.vec1189 = and i64 %.0706, -4                 ; 3 uses
  %vector.recur.init = insertelement <2 x i32> poison, i32 %.pre.i494, i64 1
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.body1190, %vector.ph1188
  %index1191 = phi i64 [ 0, %vector.ph1188 ], [ %index.next1197, %vector.body1190 ] ; 3 uses
  %vector.recur = phi <2 x i32> [ %vector.recur.init, %vector.ph1188 ], [ %wide.load1196, %vector.body1190 ]
  %vec.phi.a = phi <2 x i64> [ zeroinitializer, %vector.ph1188 ], [ %i.bcn, %vector.body1190 ]
  %vec.phi1192.a = phi <2 x i64> [ zeroinitializer, %vector.ph1188 ], [ %i.bco, %vector.body1190 ]
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.jd, i64 %index1191 ; 2 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 2
  %wide.load1193.a = load <2 x i8>, ptr %i.bbu, align 1, !tbaa !29
  %wide.load1194.a = load <2 x i8>, ptr %i.bbv, align 1, !tbaa !29
  %i.bbw = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index1191 ; 2 uses
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbw, i64 4
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbw, i64 12
  %wide.load1195 = load <2 x i32>, ptr %i.bbx, align 4, !tbaa !28 ; 3 uses
  %wide.load1196 = load <2 x i32>, ptr %i.bby, align 4, !tbaa !28 ; 4 uses
  %i.bbz = shufflevector <2 x i32> %vector.recur, <2 x i32> %wide.load1195, <2 x i32> <i32 1, i32 2>
  %i.bca = shufflevector <2 x i32> %wide.load1195, <2 x i32> %wide.load1196, <2 x i32> <i32 1, i32 2>
  %i.bcb = sub <2 x i32> %wide.load1195, %i.bbz
  %i.bcc = sub <2 x i32> %wide.load1196, %i.bca
  %i.bcd = and <2 x i8> %wide.load1193.a, splat (i8 -3)
  %i.bce = and <2 x i8> %wide.load1194.a, splat (i8 -3)
  %i.bcf = icmp eq <2 x i8> %i.bcd, zeroinitializer
  %i.bcg = icmp eq <2 x i8> %i.bce, zeroinitializer
  %i.bch = zext <2 x i32> %i.bcb to <2 x i64>
  %i.bci = zext <2 x i32> %i.bcc to <2 x i64>
  %i.bcj = select <2 x i1> %i.bcf, <2 x i64> %i.bch, <2 x i64> zeroinitializer
  %i.bck = select <2 x i1> %i.bcg, <2 x i64> %i.bci, <2 x i64> zeroinitializer
  %i.bcl = freeze <2 x i64> %i.bcj
  %i.bcm = freeze <2 x i64> %i.bck
  %i.bcn = add <2 x i64> %i.bcl, %vec.phi.a       ; 2 uses
  %i.bco = add <2 x i64> %i.bcm, %vec.phi1192.a   ; 2 uses
  %index.next1197 = add nuw i64 %index1191, 4     ; 2 uses
  %i.bcp = icmp eq i64 %index.next1197, %n.vec1189
  br i1 %i.bcp, label %middle.block1198, label %vector.body1190, !llvm.loop !97

middle.block1198:                                 ; preds = %vector.body1190
  %bin.rdx = add <2 x i64> %i.bco, %i.bcn
  %i.bcq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %vector.recur.extract = extractelement <2 x i32> %wide.load1196, i64 1
  %cmp.n1199 = icmp eq i64 %.0706, %n.vec1189
  br i1 %cmp.n1199, label %._crit_edge.loopexit.i, label %.lr.ph.i495.preheader

.lr.ph.i495.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block1198
  %.ph = phi i32 [ %.pre.i494, %.lr.ph.preheader.i ], [ %vector.recur.extract, %middle.block1198 ]
  %.02.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.bcq, %middle.block1198 ]
  %.0161.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec1189, %middle.block1198 ]
  br label %.lr.ph.i495

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i495, %middle.block1198
  %.lcssa1081 = phi i64 [ %i.bcq, %middle.block1198 ], [ %i.bdc, %.lr.ph.i495 ]
  %i.bcr = lshr i64 %.lcssa1081, 1
  br label %_ZN7meshoptL18boundEdgeCollapsesERKNS_13EdgeAdjacencyEmmPh.exit

.lr.ph.i495:                                      ; preds = %.lr.ph.i495.preheader, %.lr.ph.i495
  %i.bcs = phi i32 [ %i.bcx, %.lr.ph.i495 ], [ %.ph, %.lr.ph.i495.preheader ]
  %.02.i = phi i64 [ %i.bdc, %.lr.ph.i495 ], [ %.02.i.ph, %.lr.ph.i495.preheader ]
  %.0161.i = phi i64 [ %i.bcv, %.lr.ph.i495 ], [ %.0161.i.ph, %.lr.ph.i495.preheader ] ; 2 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.0161.i
  %i.bcu = load i8, ptr %i.bct, align 1, !tbaa !29
  %i.bcv = add nuw i64 %.0161.i, 1                ; 3 uses
  %i.bcw = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.bcv
  %i.bcx = load i32, ptr %i.bcw, align 4, !tbaa !28 ; 2 uses
  %i.bcy = sub i32 %i.bcx, %i.bcs
  %i.bcz = and i8 %i.bcu, -3
  %or.cond.i496 = icmp eq i8 %i.bcz, 0
  %i.bda = zext i32 %i.bcy to i64
  %i.bdb = select i1 %or.cond.i496, i64 %i.bda, i64 0
  %.fr837 = freeze i64 %i.bdb
  %i.bdc = add i64 %.fr837, %.02.i                ; 2 uses
  %exitcond.not.i497 = icmp eq i64 %i.bcv, %.0706
  br i1 %exitcond.not.i497, label %._crit_edge.loopexit.i, label %.lr.ph.i495, !llvm.loop !98

_ZN7meshoptL18boundEdgeCollapsesERKNS_13EdgeAdjacencyEmmPh.exit: ; preds = %.loopexit729, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i64 [ 0, %.loopexit729 ], [ %i.bcr, %._crit_edge.loopexit.i ]
  %i.bdd = add i64 %2, 3
  %i.bde = sub i64 %i.bdd, %.0.lcssa.i            ; 6 uses
  %i.bdf = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bdg = icmp ugt i64 %i.bde, 1537228672809129301
  %i.bdh = mul nuw i64 %i.bde, 12
  %i.bdi = select i1 %i.bdg, i64 -1, i64 %i.bdh
  %i.bdj = invoke noundef ptr %i.bdf(i64 noundef %i.bdi)
          to label %bb.da unwind label %bb.ec, !inline_history !99 ; 13 uses

bb.da:                                            ; preds = %_ZN7meshoptL18boundEdgeCollapsesERKNS_13EdgeAdjacencyEmmPh.exit
  %i.bdk = load i64, ptr %i.ek, align 8, !tbaa !26 ; 5 uses
  %i.bdl = add nuw nsw i64 %i.bdk, 1              ; 2 uses
  store i64 %i.bdl, ptr %i.ek, align 8, !tbaa !26
  %i.bdm = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.bdk
  store ptr %i.bdj, ptr %i.bdm, align 8, !tbaa !27
  %i.bdn = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bdo = icmp ugt i64 %i.bde, 4611686018427387903
  %i.bdp = shl nuw i64 %i.bde, 2
  %i.bdq = select i1 %i.bdo, i64 -1, i64 %i.bdp
  %i.bdr = invoke noundef ptr %i.bdn(i64 noundef %i.bdq)
          to label %bb.db unwind label %bb.ec, !inline_history !4 ; 6 uses

bb.db:                                            ; preds = %bb.da
  %i.bds = add nuw nsw i64 %i.bdk, 2              ; 2 uses
  store i64 %i.bds, ptr %i.ek, align 8, !tbaa !26
  %i.bdt = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.bdl
  store ptr %i.bdr, ptr %i.bdt, align 8, !tbaa !27
  %i.bdu = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bdv = invoke noundef ptr %i.bdu(i64 noundef %i.iu)
          to label %bb.dc unwind label %bb.ec, !inline_history !4 ; 16 uses

bb.dc:                                            ; preds = %bb.db
  %i.bdw = add nuw nsw i64 %i.bdk, 3              ; 2 uses
  store i64 %i.bdw, ptr %i.ek, align 8, !tbaa !26
  %i.bdx = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.bds
  store ptr %i.bdv, ptr %i.bdx, align 8, !tbaa !27
  %i.bdy = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bdz = invoke noundef ptr %i.bdy(i64 noundef %.0706)
          to label %bb.dd unwind label %bb.ec, !inline_history !68 ; 17 uses

bb.dd:                                            ; preds = %bb.dc
  %i.bea = add nuw nsw i64 %i.bdk, 4
  store i64 %i.bea, ptr %i.ek, align 8, !tbaa !26
  %i.beb = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.bdw
  store ptr %i.bdz, ptr %i.beb, align 8, !tbaa !27
  %i.bec = and i32 %13, 4
  %.not406 = icmp eq i32 %i.bec, 0
  %i.bed = select i1 %.not406, float 1.000000e+00, float %i.zf ; 3 uses
  %i.bee = fmul float %12, %12
  %i.bef = fmul float %i.bed, %i.bed
  %i.beg = fdiv float %i.bee, %i.bef              ; 5 uses
  %i.beh = icmp ugt i64 %2, %11
  br i1 %i.beh, label %.lr.ph786, label %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread

.lr.ph786:                                        ; preds = %bb.dd
  %i.bei = icmp ult i64 %i.bde, 3
  %.not.i544 = icmp eq ptr %.0346, null
  br i1 %i.bei, label %.lr.ph786.split.us, label %.preheader.i506.preheader.preheader

.preheader.i506.preheader.preheader:              ; preds = %.lr.ph786
  %min.iters.check1202 = icmp ult i64 %.0706, 8
  %n.vec1204 = and i64 %.0706, -8                 ; 3 uses
  %cmp.n1209 = icmp eq i64 %.0706, %n.vec1204
  %xtraiter1368 = and i64 %.0330, 1
  %i.bej = icmp eq i64 %.0330, 1
  %unroll_iter1372 = and i64 %.0330, -2
  %lcmp.mod1370.not = icmp eq i64 %xtraiter1368, 0
  %lcmp.mod1371 = trunc i64 %.0330 to i1
  br label %.preheader.i506.preheader

.lr.ph786.split.us:                               ; preds = %.lr.ph786
  call fastcc void @_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef %0, i64 noundef %2, i64 noundef %.0706, ptr noundef %i.iv)
  br label %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread

.preheader.i506.preheader:                        ; preds = %.preheader.i506.preheader.preheader, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit
  %.0339784 = phi i64 [ %.3, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit ], [ %2, %.preheader.i506.preheader.preheader ] ; 6 uses
  %.0684783 = phi float [ %i.ctg, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit ], [ 0.000000e+00, %.preheader.i506.preheader.preheader ] ; 2 uses
  %.0692782 = phi float [ %.8, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit ], [ 0.000000e+00, %.preheader.i506.preheader.preheader ] ; 2 uses
  %.2702781 = phi float [ %.3703, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit ], [ %.1701, %.preheader.i506.preheader.preheader ] ; 4 uses
  call fastcc void @_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef %0, i64 noundef %.0339784, i64 noundef %.0706, ptr noundef %i.iv)
  br label %.preheader.i506

.preheader.i506:                                  ; preds = %.preheader.i506.preheader, %bb.eb
  %.093.i = phi i64 [ %.4.2.i, %bb.eb ], [ 0, %.preheader.i506.preheader ] ; 7 uses
  %.07792.i = phi i64 [ %i.bin, %bb.eb ], [ 0, %.preheader.i506.preheader ] ; 2 uses
  %i.bek = getelementptr [4 x i8], ptr %0, i64 %.07792.i ; 4 uses
  %i.bel = load i32, ptr %i.bek, align 4, !tbaa !28 ; 4 uses
  %i.bem = getelementptr i8, ptr %i.bek, i64 4    ; 2 uses
  %i.ben = load i32, ptr %i.bem, align 4, !tbaa !28 ; 9 uses
  %i.beo = zext i32 %i.bel to i64                 ; 3 uses
  %i.bep = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.beo
  %i.beq = load i32, ptr %i.bep, align 4, !tbaa !28 ; 3 uses
  %i.ber = zext i32 %i.ben to i64                 ; 8 uses
  %i.bes = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.ber
  %i.bet = load i32, ptr %i.bes, align 4, !tbaa !28 ; 6 uses
  %i.beu = icmp eq i32 %i.beq, %i.bet
  br i1 %i.beu, label %bb.dl, label %bb.de

bb.de:                                            ; preds = %.preheader.i506
  %i.bev = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.beo
  %i.bew = load i8, ptr %i.bev, align 1, !tbaa !29 ; 3 uses
  %i.bex = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.ber
  %i.bey = load i8, ptr %i.bex, align 1, !tbaa !29 ; 3 uses
  %i.bez = zext i8 %i.bew to i64                  ; 3 uses
  %i.bfa = getelementptr inbounds nuw [5 x i8], ptr @_ZN7meshoptL12kCanCollapseE, i64 %i.bez
  %i.bfb = zext i8 %i.bey to i64                  ; 3 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfa, i64 %i.bfb
  %i.bfd = load i8, ptr %i.bfc, align 1, !tbaa !29 ; 3 uses
  %i.bfe = getelementptr inbounds nuw [5 x i8], ptr @_ZN7meshoptL12kCanCollapseE, i64 %i.bfb
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 %i.bez
  %i.bfg = load i8, ptr %i.bff, align 1, !tbaa !29 ; 2 uses
  %i.bfh = or i8 %i.bfg, %i.bfd
  %.not.i507 = icmp eq i8 %i.bfh, 0
  br i1 %.not.i507, label %bb.dl, label %bb.df

end_hunk_0
begin_hunk_1_@meshopt_simplifySloppy:bb.a
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 12
  %i.ld = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index316 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index316 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 36
  %i.lh = load float, ptr %i.la, align 4, !tbaa !49
  %i.li = load float, ptr %i.lc, align 4, !tbaa !49
  %i.lj = load float, ptr %i.le, align 4, !tbaa !49
  %i.lk = load float, ptr %i.lg, align 4, !tbaa !49
  %i.ll = insertelement <4 x float> poison, float %i.lh, i64 0
  %i.lm = insertelement <4 x float> %i.ll, float %i.li, i64 1
  %i.ln = insertelement <4 x float> %i.lm, float %i.lj, i64 2
  %i.lo = insertelement <4 x float> %i.ln, float %i.lk, i64 3
  %i.lp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lo, <4 x float> %broadcast.splat314, <4 x float> splat (float 5.000000e-01))
  %i.lq = fptosi <4 x float> %i.lp to <4 x i32>
  %i.lr = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ld, i64 28
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lf, i64 40
  %i.lv = load float, ptr %i.lr, align 4, !tbaa !50
  %i.lw = load float, ptr %i.ls, align 4, !tbaa !50
  %i.lx = load float, ptr %i.lt, align 4, !tbaa !50
  %i.ly = load float, ptr %i.lu, align 4, !tbaa !50
  %i.lz = insertelement <4 x float> poison, float %i.lv, i64 0
  %i.ma = insertelement <4 x float> %i.lz, float %i.lw, i64 1
  %i.mb = insertelement <4 x float> %i.ma, float %i.lx, i64 2
  %i.mc = insertelement <4 x float> %i.mb, float %i.ly, i64 3
  %i.md = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mc, <4 x float> %broadcast.splat314, <4 x float> splat (float 5.000000e-01))
  %i.me = fptosi <4 x float> %i.md to <4 x i32>
  %i.mf = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lb, i64 20
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lf, i64 44
  %i.mj = load float, ptr %i.mf, align 4, !tbaa !46
  %i.mk = load float, ptr %i.mg, align 4, !tbaa !46
  %i.ml = load float, ptr %i.mh, align 4, !tbaa !46
  %i.mm = load float, ptr %i.mi, align 4, !tbaa !46
  %i.mn = insertelement <4 x float> poison, float %i.mj, i64 0
  %i.mo = insertelement <4 x float> %i.mn, float %i.mk, i64 1
  %i.mp = insertelement <4 x float> %i.mo, float %i.ml, i64 2
  %i.mq = insertelement <4 x float> %i.mp, float %i.mm, i64 3
  %i.mr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mq, <4 x float> %broadcast.splat314, <4 x float> splat (float 5.000000e-01))
  %i.ms = fptosi <4 x float> %i.mr to <4 x i32>
  %i.mt = shl <4 x i32> %i.lq, splat (i32 20)
  %i.mu = shl <4 x i32> %i.me, splat (i32 10)
  %i.mv = or <4 x i32> %i.mu, %i.mt
  %i.mw = or <4 x i32> %i.mv, %i.ms
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index316
  store <4 x i32> %i.mw, ptr %i.mx, align 4, !tbaa !28
  %index.next317 = add nuw i64 %index316, 4       ; 2 uses
  %i.my = icmp eq i64 %index.next317, %n.vec312
  br i1 %i.my, label %middle.block318, label %vector.body315, !llvm.loop !174

middle.block318:                                  ; preds = %vector.body315
  %cmp.n319 = icmp eq i64 %4, %n.vec312
  br i1 %cmp.n319, label %.lr.ph33.i, label %.lr.ph.split.us.i195.preheader336

.lr.ph.split.us.i195.preheader336:                ; preds = %.lr.ph.split.us.i195.preheader, %middle.block318
  %.024.us.i196.ph = phi i64 [ 0, %.lr.ph.split.us.i195.preheader ], [ %n.vec312, %middle.block318 ]
  %i.mz = insertelement <2 x float> poison, float %i.kx, i64 0
  %i.na = shufflevector <2 x float> %i.mz, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.us.i195

.lr.ph.split.us.i195:                             ; preds = %.lr.ph.split.us.i195.preheader336, %.lr.ph.split.us.i195
  %.024.us.i196 = phi i64 [ %i.nn, %.lr.ph.split.us.i195 ], [ %.024.us.i196.ph, %.lr.ph.split.us.i195.preheader336 ] ; 3 uses
  %i.nb = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.024.us.i196 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !46
  %i.ne = tail call float @llvm.fmuladd.f32(float %i.nd, float %i.kx, float 5.000000e-01)
  %i.nf = fptosi float %i.ne to i32
  %i.ng = load <2 x float>, ptr %i.nb, align 4, !tbaa !44
  %i.nh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ng, <2 x float> %i.na, <2 x float> splat (float 5.000000e-01))
  %i.ni = fptosi <2 x float> %i.nh to <2 x i32>
  %i.nj = shl <2 x i32> %i.ni, <i32 20, i32 10>   ; 2 uses
  %shift325 = shufflevector <2 x i32> %i.nj, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop326 = or <2 x i32> %shift325, %i.nj
  %i.nk = extractelement <2 x i32> %foldExtExtBinop326, i64 0
  %i.nl = or i32 %i.nk, %i.nf
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.024.us.i196
  store i32 %i.nl, ptr %i.nm, align 4, !tbaa !28
  %i.nn = add nuw i64 %.024.us.i196, 1            ; 2 uses
  %exitcond27.not.i197 = icmp eq i64 %i.nn, %4
  br i1 %exitcond27.not.i197, label %.lr.ph33.i, label %.lr.ph.split.us.i195, !llvm.loop !175

.lr.ph.split.i190:                                ; preds = %.lr.ph.split.i190.preheader, %bb.aa
  %.024.i191 = phi i64 [ %i.oh, %bb.aa ], [ 0, %.lr.ph.split.i190.preheader ] ; 5 uses
  %i.no = getelementptr inbounds nuw i8, ptr %6, i64 %.024.i191
  %i.np = load i8, ptr %i.no, align 1, !tbaa !29
  %i.nq = and i8 %i.np, 1
  %.not23.i192 = icmp eq i8 %i.nq, 0
  br i1 %.not23.i192, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.i190
  %i.nr = trunc i64 %.024.i191 to i32
  %i.ns = or i32 %i.nr, 1073741824
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.split.i190
  %i.nt = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.024.i191 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !46
  %i.nw = tail call float @llvm.fmuladd.f32(float %i.nv, float %i.kx, float 5.000000e-01)
  %i.nx = fptosi float %i.nw to i32
  %i.ny = load <2 x float>, ptr %i.nt, align 4, !tbaa !44
  %i.nz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ny, <2 x float> %i.kz, <2 x float> splat (float 5.000000e-01))
  %i.oa = fptosi <2 x float> %i.nz to <2 x i32>
  %i.ob = shl <2 x i32> %i.oa, <i32 20, i32 10>   ; 2 uses
  %i.oc = extractelement <2 x i32> %i.ob, i64 1
  %i.od = or i32 %i.oc, %i.nx
  %i.oe = extractelement <2 x i32> %i.ob, i64 0
  %i.of = or i32 %i.od, %i.oe
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink.i193 = phi i32 [ %i.of, %bb.z ], [ %i.ns, %bb.y ]
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.024.i191
  store i32 %.sink.i193, ptr %i.og, align 4, !tbaa !28
  %i.oh = add nuw i64 %.024.i191, 1               ; 2 uses
  %exitcond.not.i194 = icmp eq i64 %i.oh, %4
  br i1 %exitcond.not.i194, label %.lr.ph33.i, label %.lr.ph.split.i190, !llvm.loop !169

_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread: ; preds = %bb.x
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kr, i8 -1, i64 %i.kp, i1 false)
  br label %bb.ae

.lr.ph33.i:                                       ; preds = %.lr.ph.split.us.i195, %bb.aa, %middle.block318
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kr, i8 -1, i64 %i.kp, i1 false)
  %i.oi = add i64 %.0.i, -1                       ; 3 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %.lr.ph33.i
  %.032.i = phi i64 [ 0, %.lr.ph33.i ], [ %i.pn, %bb.ad ] ; 4 uses
  %.01930.i = phi i64 [ 0, %.lr.ph33.i ], [ %.1.i, %bb.ad ] ; 3 uses
  %i.oj = trunc i64 %.032.i to i32
  %i.ok = and i64 %.032.i, 4294967295
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !28 ; 3 uses
  %i.on = lshr i32 %i.om, 13
  %i.oo = xor i32 %i.on, %i.om
  %i.op = mul i32 %i.oo, 1540483477               ; 2 uses
  %i.oq = lshr i32 %i.op, 15
  %i.or = xor i32 %i.oq, %i.op
  %i.os = zext i32 %i.or to i64
  %i.ot = and i64 %i.oi, %i.os                    ; 3 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.ot
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !28 ; 2 uses
  %i.ow = icmp eq i32 %i.ov, -1
  br i1 %i.ow, label %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %bb.ab, %bb.ac
  %.pr.i = phi i32 [ %i.pf, %bb.ac ], [ %i.ov, %bb.ab ]
  %.02313.i29.i = phi i64 [ %i.pd, %bb.ac ], [ %i.ot, %bb.ab ]
  %.02214.i28.i = phi i64 [ %i.pb, %bb.ac ], [ 0, %bb.ab ]
  %i.ox = zext i32 %.pr.i to i64                  ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ox
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !28
  %i.pa = icmp eq i32 %i.oz, %i.om
  br i1 %i.pa, label %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i200
  %i.pb = add i64 %.02214.i28.i, 1                ; 3 uses
  %i.pc = add i64 %i.pb, %.02313.i29.i
  %i.pd = and i64 %i.pc, %i.oi                    ; 3 uses
  %.not.i.i = icmp ule i64 %i.pb, %i.oi
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.pd
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !28 ; 2 uses
  %i.pg = icmp eq i32 %i.pf, -1
  br i1 %i.pg, label %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph.i200

_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i: ; preds = %bb.ac, %bb.ab
  %.02313.i.lcssa27.i = phi i64 [ %i.ot, %bb.ab ], [ %i.pd, %bb.ac ]
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %.02313.i.lcssa27.i
  store i32 %i.oj, ptr %i.ph, align 4, !tbaa !28
  %i.pi = add i64 %.01930.i, 1
  %i.pj = trunc i64 %.01930.i to i32
  br label %bb.ad

_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i: ; preds = %.lr.ph.i200
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.ox
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !28
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i
  %.sink.i201 = phi i32 [ %i.pl, %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i ], [ %i.pj, %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i ]
  %.1.i = phi i64 [ %.01930.i, %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i ], [ %i.pi, %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i ] ; 4 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %.032.i
  store i32 %.sink.i201, ptr %i.pm, align 4, !tbaa !28
  %i.pn = add nuw i64 %.032.i, 1                  ; 2 uses
  %exitcond.not.i202 = icmp eq i64 %i.pn, %4
  br i1 %exitcond.not.i202, label %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit, label %bb.ab, !llvm.loop !11

_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit:    ; preds = %bb.ad
  %i.po = icmp ugt i64 %.1.i, 419244183493398900
  %i.pp = mul i64 %.1.i, 44                       ; 2 uses
  %spec.select = select i1 %i.po, i64 -1, i64 %i.pp
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread
  %i.pq = phi i64 [ 0, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread ], [ %i.pp, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit ]
  %.019.lcssa.i222 = phi i64 [ 0, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread ], [ %.1.i, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit ] ; 6 uses
  %i.pr = phi i64 [ 0, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread ], [ %spec.select, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit ]
  %i.ps = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.pt = invoke noundef ptr %i.ps(i64 noundef %i.pr)
          to label %bb.af unwind label %bb.aw, !inline_history !7 ; 6 uses

bb.af:                                            ; preds = %bb.ae
  store i64 5, ptr %i.g, align 8, !tbaa !26
  %i.pu = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.pt, ptr %i.pu, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.pt, i8 0, i64 %i.pq, i1 false)
  br i1 %.not.i179, label %_ZN7meshoptL16fillCellQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_.exit, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %bb.af, %bb.ah
  %.067.i = phi i64 [ %i.ud, %bb.ah ], [ 0, %bb.af ] ; 2 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.067.i ; 3 uses
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !28
  %i.px = getelementptr i8, ptr %i.pv, i64 4
  %i.py = load i32, ptr %i.px, align 4, !tbaa !28
  %i.pz = getelementptr i8, ptr %i.pv, i64 8
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !28
  %i.qb = zext i32 %i.pw to i64                   ; 2 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.qb
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !28 ; 3 uses
  %i.qe = zext i32 %i.py to i64                   ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.qe
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !28 ; 2 uses
  %i.qh = zext i32 %i.qa to i64                   ; 2 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.qh
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !28 ; 2 uses
  %i.qk = icmp eq i32 %i.qd, %i.qg
  %i.ql = icmp eq i32 %i.qd, %i.qj
  %i.qm = and i1 %i.qk, %i.ql                     ; 2 uses
  %i.qn = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.qb ; 2 uses
  %i.qo = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.qe
  %i.qp = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.qh
  %i.qq = select i1 %i.qm, float 3.000000e+00, float 1.000000e+00
  %i.qr = load <3 x float>, ptr %i.qo, align 4, !tbaa !44
  %i.qs = shufflevector <3 x float> %i.qr, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.qt = load float, ptr %i.qn, align 4, !tbaa !49
  %i.qu = load <3 x float>, ptr %i.qn, align 4, !tbaa !44 ; 3 uses
  %i.qv = shufflevector <3 x float> %i.qu, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.qw = fsub <4 x float> %i.qs, %i.qv           ; 2 uses
  %i.qx = load <3 x float>, ptr %i.qp, align 4, !tbaa !44
  %i.qy = shufflevector <3 x float> %i.qx, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.qz = shufflevector <3 x float> %i.qu, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.ra = fsub <4 x float> %i.qy, %i.qz           ; 2 uses
  %i.rb = fneg <4 x float> %i.ra
  %i.rc = shufflevector <4 x float> %i.rb, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.rd = shufflevector <4 x float> %i.qw, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.re = fmul <4 x float> %i.rd, %i.rc
  %i.rf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qw, <4 x float> %i.ra, <4 x float> %i.re) ; 6 uses
  %foldExtExtBinop328 = fmul <4 x float> %i.rf, %i.rf
  %i.rg = extractelement <4 x float> %foldExtExtBinop328, i64 1
  %i.rh = extractelement <4 x float> %i.rf, i64 0 ; 2 uses
  %i.ri = tail call float @llvm.fmuladd.f32(float %i.rh, float %i.rh, float %i.rg)
  %i.rj = extractelement <4 x float> %i.rf, i64 2 ; 2 uses
  %i.rk = tail call float @llvm.fmuladd.f32(float %i.rj, float %i.rj, float %i.ri) ; 2 uses
  %sqrt.i.i.i = tail call float @llvm.sqrt.f32(float %i.rk) ; 2 uses
  %i.rl = fcmp ogt float %i.rk, 0.000000e+00
  %i.rm = insertelement <4 x float> poison, float %sqrt.i.i.i, i64 0
  %i.rn = shufflevector <4 x float> %i.rm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ro = fdiv <4 x float> %i.rf, %i.rn
  %i.rp = insertelement <4 x i1> poison, i1 %i.rl, i64 0
  %i.rq = shufflevector <4 x i1> %i.rp, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.rr = select <4 x i1> %i.rq, <4 x float> %i.ro, <4 x float> %i.rf ; 7 uses
  %shift330 = shufflevector <4 x float> %i.rr, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop331 = fmul <4 x float> %i.qv, %shift330
  %i.rs = extractelement <4 x float> %foldExtExtBinop331, i64 0
  %i.rt = extractelement <4 x float> %i.rr, i64 0
  %i.ru = tail call float @llvm.fmuladd.f32(float %i.rt, float %i.qt, float %i.rs)
  %i.rv = extractelement <4 x float> %i.rr, i64 2
  %i.rw = extractelement <3 x float> %i.qu, i64 2
  %i.rx = tail call float @llvm.fmuladd.f32(float %i.rv, float %i.rw, float %i.ru)
  %i.ry = fneg float %i.rx                        ; 2 uses
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %sqrt.i.i.i)
  %i.rz = fmul float %i.qq, %sqrt.i.i             ; 5 uses
  %i.sa = shufflevector <4 x float> %i.rr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.sb = insertelement <4 x float> poison, float %i.rz, i64 0
  %i.sc = shufflevector <4 x float> %i.sb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sd = fmul <4 x float> %i.sa, %i.sc           ; 2 uses
  %i.se = fmul float %i.rz, %i.ry                 ; 2 uses
  %i.sf = fmul <4 x float> %i.rr, %i.sd           ; 3 uses
  %i.sg = shufflevector <4 x float> %i.rr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.sh = shufflevector <4 x float> %i.sd, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.si = insertelement <2 x float> %i.sh, float %i.se, i64 1
  %i.sj = shufflevector <2 x float> %i.si, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.sk = fmul <4 x float> %i.sg, %i.sj           ; 3 uses
  %i.sl = shufflevector <4 x float> %i.rr, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.sm = insertelement <2 x float> %i.sl, float %i.ry, i64 1
  %i.sn = insertelement <2 x float> poison, float %i.se, i64 0
  %i.so = shufflevector <2 x float> %i.sn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sp = fmul <2 x float> %i.sm, %i.so           ; 3 uses
  %i.sq = zext i32 %i.qd to i64
  %i.sr = getelementptr inbounds nuw [44 x i8], ptr %i.pt, i64 %i.sq ; 5 uses
  %i.ss = load <4 x float>, ptr %i.sr, align 4, !tbaa !44
  %i.st = fadd <4 x float> %i.ss, %i.sf
  store <4 x float> %i.st, ptr %i.sr, align 4, !tbaa !44
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 16 ; 2 uses
  %i.sv = load <4 x float>, ptr %i.su, align 4, !tbaa !44
  %i.sw = fadd <4 x float> %i.sv, %i.sk
  store <4 x float> %i.sw, ptr %i.su, align 4, !tbaa !44
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sr, i64 32 ; 2 uses
  %i.sy = load <2 x float>, ptr %i.sx, align 4, !tbaa !44
  %i.sz = fadd <2 x float> %i.sp, %i.sy
  store <2 x float> %i.sz, ptr %i.sx, align 4, !tbaa !44
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sr, i64 40 ; 2 uses
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !48
  %i.tc = fadd float %i.rz, %i.tb
  store float %i.tc, ptr %i.ta, align 4, !tbaa !48
  br i1 %i.qm, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i204
  %i.td = zext i32 %i.qg to i64
  %i.te = getelementptr inbounds nuw [44 x i8], ptr %i.pt, i64 %i.td ; 5 uses
  %i.tf = load <4 x float>, ptr %i.te, align 4, !tbaa !44
  %i.tg = fadd <4 x float> %i.sf, %i.tf
  store <4 x float> %i.tg, ptr %i.te, align 4, !tbaa !44
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 16 ; 2 uses
  %i.ti = load <4 x float>, ptr %i.th, align 4, !tbaa !44
  %i.tj = fadd <4 x float> %i.sk, %i.ti
  store <4 x float> %i.tj, ptr %i.th, align 4, !tbaa !44
  %i.tk = getelementptr inbounds nuw i8, ptr %i.te, i64 32 ; 2 uses
  %i.tl = load <2 x float>, ptr %i.tk, align 4, !tbaa !44
  %i.tm = fadd <2 x float> %i.sp, %i.tl
  store <2 x float> %i.tm, ptr %i.tk, align 4, !tbaa !44
  %i.tn = getelementptr inbounds nuw i8, ptr %i.te, i64 40 ; 2 uses
  %i.to = load float, ptr %i.tn, align 4, !tbaa !48
  %i.tp = fadd float %i.rz, %i.to
  store float %i.tp, ptr %i.tn, align 4, !tbaa !48
  %i.tq = zext i32 %i.qj to i64
  %i.tr = getelementptr inbounds nuw [44 x i8], ptr %i.pt, i64 %i.tq ; 5 uses
  %i.ts = load <4 x float>, ptr %i.tr, align 4, !tbaa !44
  %i.tt = fadd <4 x float> %i.sf, %i.ts
  store <4 x float> %i.tt, ptr %i.tr, align 4, !tbaa !44
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 16 ; 2 uses
  %i.tv = load <4 x float>, ptr %i.tu, align 4, !tbaa !44
  %i.tw = fadd <4 x float> %i.sk, %i.tv
  store <4 x float> %i.tw, ptr %i.tu, align 4, !tbaa !44
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tr, i64 32 ; 2 uses
  %i.ty = load <2 x float>, ptr %i.tx, align 4, !tbaa !44
  %i.tz = fadd <2 x float> %i.sp, %i.ty
  store <2 x float> %i.tz, ptr %i.tx, align 4, !tbaa !44
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tr, i64 40 ; 2 uses
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !48
  %i.uc = fadd float %i.rz, %i.ub
  store float %i.uc, ptr %i.ua, align 4, !tbaa !48
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i204
  %i.ud = add i64 %.067.i, 3                      ; 2 uses
  %i.ue = icmp ult i64 %i.ud, %2
  br i1 %i.ue, label %.lr.ph.i204, label %_ZN7meshoptL16fillCellQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_.exit, !llvm.loop !176

_ZN7meshoptL16fillCellQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_.exit: ; preds = %bb.ah, %bb.af
  %i.uf = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.ug = icmp ugt i64 %.019.lcssa.i222, 4611686018427387903
  %i.uh = shl i64 %.019.lcssa.i222, 2             ; 2 uses
  %i.ui = select i1 %i.ug, i64 -1, i64 %i.uh      ; 2 uses
  %i.uj = invoke noundef ptr %i.uf(i64 noundef %i.ui)
          to label %bb.ai unwind label %bb.aw, !inline_history !4 ; 6 uses

bb.ai:                                            ; preds = %_ZN7meshoptL16fillCellQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_.exit
  %i.uk = load i64, ptr %i.g, align 8, !tbaa !26  ; 4 uses
  %i.ul = add nuw nsw i64 %i.uk, 1                ; 2 uses
  store i64 %i.ul, ptr %i.g, align 8, !tbaa !26
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.uk
  store ptr %i.uj, ptr %i.um, align 8, !tbaa !27
  %i.un = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.uo = invoke noundef ptr %i.un(i64 noundef %i.ui)
          to label %bb.aj unwind label %bb.aw, !inline_history !6 ; 8 uses

bb.aj:                                            ; preds = %bb.ai
  %i.up = add nuw nsw i64 %i.uk, 2                ; 2 uses
  store i64 %i.up, ptr %i.g, align 8, !tbaa !26
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ul
  store ptr %i.uo, ptr %i.uq, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.uj, i8 -1, i64 %i.uh, i1 false)
  br i1 %.not25.i167, label %_ZN7meshoptL13fillCellRemapEPjPfmPKjPKNS_7QuadricEPKNS_7Vector3Em.exit, label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %bb.aj, %bb.am
  %.021.i208 = phi i64 [ %i.wu, %bb.am ], [ 0, %bb.aj ] ; 4 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %.021.i208
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !28
  %i.ut = zext i32 %i.us to i64                   ; 4 uses
  %i.uu = getelementptr inbounds nuw [44 x i8], ptr %i.pt, i64 %i.ut ; 9 uses
  %i.uv = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.021.i208 ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uu, i64 24
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !51
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uu, i64 28
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uu, i64 12
  %i.va = load float, ptr %i.uz, align 4, !tbaa !52
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !50 ; 3 uses
  %i.vd = tail call float @llvm.fmuladd.f32(float %i.va, float %i.vc, float %i.ux)
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !46 ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  %i.vh = load float, ptr %i.uv, align 4, !tbaa !49 ; 3 uses
  %i.vi = fmul float %i.vd, 2.000000e+00
  %i.vj = load <2 x float>, ptr %i.uy, align 4, !tbaa !44
  %i.vk = load <2 x float>, ptr %i.vg, align 4, !tbaa !44
  %i.vl = shufflevector <2 x float> %i.vk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vm = insertelement <2 x float> poison, float %i.vf, i64 0
  %i.vn = insertelement <2 x float> %i.vm, float %i.vh, i64 1
  %i.vo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vl, <2 x float> %i.vn, <2 x float> %i.vj)
  %i.vp = fmul <2 x float> %i.vo, splat (float 2.000000e+00) ; 2 uses
  %i.vq = load float, ptr %i.uu, align 4, !tbaa !53
  %i.vr = tail call float @llvm.fmuladd.f32(float %i.vq, float %i.vh, float %i.vi)
  %i.vs = getelementptr inbounds nuw i8, ptr %i.uu, i64 4
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !54
  %i.vu = extractelement <2 x float> %i.vp, i64 0
  %i.vv = tail call float @llvm.fmuladd.f32(float %i.vt, float %i.vc, float %i.vu)
  %i.vw = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !55
  %i.vy = extractelement <2 x float> %i.vp, i64 1
  %i.vz = tail call float @llvm.fmuladd.f32(float %i.vx, float %i.vf, float %i.vy)
  %i.wa = getelementptr inbounds nuw i8, ptr %i.uu, i64 36
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !56
  %i.wc = tail call float @llvm.fmuladd.f32(float %i.vr, float %i.vh, float %i.wb)
  %i.wd = tail call float @llvm.fmuladd.f32(float %i.vv, float %i.vc, float %i.wc)
  %i.we = tail call noundef float @llvm.fmuladd.f32(float %i.vz, float %i.vf, float %i.wd)
  %i.wf = getelementptr inbounds nuw i8, ptr %i.uu, i64 40
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !48 ; 2 uses
  %i.wh = fcmp oeq float %i.wg, 0.000000e+00
  %i.wi = fdiv float 1.000000e+00, %i.wg
  %i.wj = select i1 %i.wh, float 0.000000e+00, float %i.wi
  %i.wk = tail call float @llvm.fabs.f32(float %i.we)
  %i.wl = fmul float %i.wj, %i.wk                 ; 2 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.ut ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !28
  %i.wo = icmp eq i32 %i.wn, -1
  br i1 %i.wo, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i207
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %i.ut
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !44
  %i.wr = fcmp ogt float %i.wq, %i.wl
  br i1 %i.wr, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i207
  %i.ws = trunc i64 %.021.i208 to i32
  store i32 %i.ws, ptr %i.wm, align 4, !tbaa !28
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %i.ut
  store float %i.wl, ptr %i.wt, align 4, !tbaa !44
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.wu = add nuw i64 %.021.i208, 1               ; 2 uses
  %exitcond.not.i209 = icmp eq i64 %i.wu, %4
  br i1 %exitcond.not.i209, label %_ZN7meshoptL13fillCellRemapEPjPfmPKjPKNS_7QuadricEPKNS_7Vector3Em.exit, label %.lr.ph.i207, !llvm.loop !177

_ZN7meshoptL13fillCellRemapEPjPfmPKjPKNS_7QuadricEPKNS_7Vector3Em.exit: ; preds = %bb.am, %bb.aj
  %.not239 = icmp eq i64 %.019.lcssa.i222, 0
  br i1 %.not239, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN7meshoptL13fillCellRemapEPjPfmPKjPKNS_7QuadricEPKNS_7Vector3Em.exit
  %xtraiter = and i64 %.019.lcssa.i222, 3         ; 3 uses
  %i.wv = icmp ult i64 %.019.lcssa.i222, 4
  br i1 %i.wv, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.019.lcssa.i222, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0238.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %27, %._crit_edge.loopexit.unr-lcssa ]
  %.0119237.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %..0119.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod345 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod345)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0238.epil = phi i64 [ %14, %.lr.ph.epil ], [ %.0238.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0119237.epil = phi float [ %..0119.epil, %.lr.ph.epil ], [ %.0119237.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %.0238.epil
  %12 = load float, ptr %11, align 4, !tbaa !44   ; 2 uses
  %13 = fcmp olt float %.0119237.epil, %12
  %..0119.epil = select i1 %13, float %12, float %.0119237.epil ; 2 uses
  %14 = add nuw i64 %.0238.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !178

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN7meshoptL13fillCellRemapEPjPfmPKjPKNS_7QuadricEPKNS_7Vector3Em.exit
  %.0119.lcssa = phi float [ 0.000000e+00, %_ZN7meshoptL13fillCellRemapEPjPfmPKjPKNS_7QuadricEPKNS_7Vector3Em.exit ], [ %..0119.3, %._crit_edge.loopexit.unr-lcssa ], [ %..0119.epil, %.lr.ph.epil ]
  %i.ww = lshr i64 %.1124.lcssa, 2
  %i.wx = add i64 %i.ww, %.1124.lcssa
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %._crit_edge
  %.0.i210 = phi i64 [ 1, %._crit_edge ], [ %i.wz, %bb.an ] ; 5 uses
  %i.wy = icmp ult i64 %.0.i210, %i.wx
  %i.wz = shl i64 %.0.i210, 1
  br i1 %i.wy, label %bb.an, label %_ZN7meshoptL12hashBuckets2Em.exit211, !llvm.loop !0

_ZN7meshoptL12hashBuckets2Em.exit211:             ; preds = %bb.an
  %i.xa = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.xb = icmp ugt i64 %.0.i210, 4611686018427387903
  %i.xc = shl i64 %.0.i210, 2                     ; 2 uses
  %i.xd = select i1 %i.xb, i64 -1, i64 %i.xc
  %i.xe = invoke noundef ptr %i.xa(i64 noundef %i.xd)
          to label %bb.ao unwind label %bb.aw, !inline_history !4 ; 5 uses

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0238 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %27, %.lr.ph ] ; 5 uses
  %.0119237 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %..0119.3, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %15 = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %.0238
  %16 = load float, ptr %15, align 4, !tbaa !44   ; 2 uses
  %17 = fcmp olt float %.0119237, %16
  %..0119 = select i1 %17, float %16, float %.0119237 ; 2 uses
  %18 = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %.0238
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %20 = load float, ptr %19, align 4, !tbaa !44   ; 2 uses
  %21 = fcmp olt float %..0119, %20
  %..0119.1 = select i1 %21, float %20, float %..0119 ; 2 uses
  %22 = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %.0238
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 8
  %24 = load float, ptr %23, align 4, !tbaa !44   ; 2 uses
  %25 = fcmp olt float %..0119.1, %24
  %..0119.2 = select i1 %25, float %24, float %..0119.1 ; 2 uses
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %.0238
  %26 = getelementptr inbounds nuw i8, ptr %i.xf, i64 12
  %i.xg = load float, ptr %26, align 4, !tbaa !44 ; 2 uses
  %i.xh = fcmp olt float %..0119.2, %i.xg
  %..0119.3 = select i1 %i.xh, float %i.xg, float %..0119.2 ; 3 uses
  %27 = add nuw i64 %.0238, 4                     ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !179

bb.ao:                                            ; preds = %_ZN7meshoptL12hashBuckets2Em.exit211
  %i.xi = add nuw nsw i64 %i.uk, 3                ; 2 uses
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.up
  store ptr %i.xe, ptr %i.xj, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xe, i8 -1, i64 %i.xc, i1 false)
  br i1 %.not.i179, label %_ZN7meshoptL15filterTrianglesEPjS0_mPKjmS2_S2_.exit, label %.lr.ph90.i

.lr.ph90.i:                                       ; preds = %bb.ao
  %i.xk = add i64 %.0.i210, -1                    ; 3 uses
  br label %bb.ap

._crit_edge.loopexit.i:                           ; preds = %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i
  %i.xl = mul i64 %.2.i, 3
  br label %_ZN7meshoptL15filterTrianglesEPjS0_mPKjmS2_S2_.exit

bb.ap:                                            ; preds = %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, %.lr.ph90.i
  %.088.i = phi i64 [ 0, %.lr.ph90.i ], [ %.2.i, %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i ] ; 6 uses
  %.05887.i = phi i64 [ 0, %.lr.ph90.i ], [ %i.aae, %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i ] ; 2 uses
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05887.i ; 3 uses
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !28
  %i.xo = zext i32 %i.xn to i64
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.xo
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !28 ; 3 uses
  %i.xr = getelementptr i8, ptr %i.xm, i64 4
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !28
  %i.xt = zext i32 %i.xs to i64
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.xt
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !28 ; 3 uses
  %i.xw = getelementptr i8, ptr %i.xm, i64 8
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !28
  %i.xy = zext i32 %i.xx to i64
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.xy
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !28 ; 3 uses
  %.not.i213 = icmp eq i32 %i.xq, %i.xv
  %.not73.i = icmp eq i32 %i.xq, %i.ya
  %.not74.i = icmp eq i32 %i.xv, %i.ya
  %i.yb = or i1 %.not73.i, %.not74.i
  %or.cond75.i = select i1 %.not.i213, i1 true, i1 %i.yb
  br i1 %or.cond75.i, label %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.yc = zext i32 %i.xq to i64
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.yc
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !28 ; 5 uses
  %i.yf = zext i32 %i.xv to i64
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.yf
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !28 ; 6 uses
  %i.yi = zext i32 %i.ya to i64
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.yi
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !28 ; 6 uses
  %i.yl = icmp ult i32 %i.yh, %i.ye
  %i.ym = icmp ult i32 %i.yh, %i.yk
  %or.cond76.i = select i1 %i.yl, i1 %i.ym, i1 false
  br i1 %or.cond76.i, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.yn = icmp ult i32 %i.yk, %i.ye
  %i.yo = icmp ult i32 %i.yk, %i.yh
  %or.cond77.i = and i1 %i.yn, %i.yo
  br i1 %or.cond77.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.061.i = phi i32 [ %i.ye, %bb.ar ], [ %i.yk, %bb.as ], [ %i.yh, %bb.aq ]
  %.060.i = phi i32 [ %i.yh, %bb.ar ], [ %i.ye, %bb.as ], [ %i.yk, %bb.aq ]
  %.059.i = phi i32 [ %i.yk, %bb.ar ], [ %i.yh, %bb.as ], [ %i.ye, %bb.aq ]
  %.idx.i = mul i64 %.088.i, 12
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i ; 3 uses
  store i32 %.061.i, ptr %i.yp, align 4, !tbaa !28
  %i.yq = getelementptr i8, ptr %i.yp, i64 4
  store i32 %.060.i, ptr %i.yq, align 4, !tbaa !28
  %i.yr = getelementptr i8, ptr %i.yp, i64 8
  store i32 %.059.i, ptr %i.yr, align 4, !tbaa !28
  %i.ys = trunc i64 %.088.i to i32
  %i.yt = mul i64 %.088.i, 3
  %i.yu = and i64 %i.yt, 4294967295
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.yu ; 3 uses
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !28 ; 2 uses
  %i.yx = mul i32 %i.yw, 73856093
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yv, i64 4
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !28 ; 2 uses
  %i.za = mul i32 %i.yz, 19349663
  %i.zb = xor i32 %i.za, %i.yx
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !28 ; 2 uses
  %i.ze = mul i32 %i.zd, 83492791
  %i.zf = xor i32 %i.zb, %i.ze
  %i.zg = zext i32 %i.zf to i64
  %i.zh = and i64 %i.xk, %i.zg                    ; 3 uses
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %i.zh
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !28 ; 2 uses
  %i.zk = icmp eq i32 %i.zj, -1
  br i1 %i.zk, label %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph.i214

.lr.ph.i214:                                      ; preds = %bb.at, %_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i
  %.pr.i215 = phi i32 [ %i.aaa, %_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i ], [ %i.zj, %bb.at ]
  %.02313.i86.i = phi i64 [ %i.zy, %_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i ], [ %i.zh, %bb.at ]
  %.02214.i85.i = phi i64 [ %i.zw, %_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i ], [ 0, %bb.at ]
  %i.zl = mul i32 %.pr.i215, 3
  %i.zm = zext i32 %i.zl to i64
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.zm ; 3 uses
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !28
  %i.zp = icmp eq i32 %i.zo, %i.yw
  br i1 %i.zp, label %bb.au, label %_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i

bb.au:                                            ; preds = %.lr.ph.i214
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zn, i64 4
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !28
  %i.zs = icmp eq i32 %i.zr, %i.yz
  br i1 %i.zs, label %_ZNK7meshopt14TriangleHasher5equalEjj.exit.i.i, label %_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i

_ZNK7meshopt14TriangleHasher5equalEjj.exit.i.i:   ; preds = %bb.au
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zn, i64 8
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !28
  %i.zv = icmp eq i32 %i.zu, %i.zd
  br i1 %i.zv, label %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, label %_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i

_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i: ; preds = %_ZNK7meshopt14TriangleHasher5equalEjj.exit.i.i, %bb.au, %.lr.ph.i214
  %i.zw = add i64 %.02214.i85.i, 1                ; 3 uses
  %i.zx = add i64 %i.zw, %.02313.i86.i
  %i.zy = and i64 %i.zx, %i.xk                    ; 3 uses
  %.not.i.i216 = icmp ule i64 %i.zw, %i.xk
  tail call void @llvm.assume(i1 %.not.i.i216)
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %i.zy
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !28 ; 2 uses
  %i.aab = icmp eq i32 %i.aaa, -1
  br i1 %i.aab, label %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph.i214

_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i: ; preds = %_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i, %bb.at
  %.02313.i.lcssa84.i = phi i64 [ %i.zh, %bb.at ], [ %i.zy, %_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i ]
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %.02313.i.lcssa84.i
  %i.aad = add i64 %.088.i, 1
  store i32 %i.ys, ptr %i.aac, align 4, !tbaa !28
  br label %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i

_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i: ; preds = %_ZNK7meshopt14TriangleHasher5equalEjj.exit.i.i, %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, %bb.ap
  %.2.i = phi i64 [ %.088.i, %bb.ap ], [ %i.aad, %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i ], [ %.088.i, %_ZNK7meshopt14TriangleHasher5equalEjj.exit.i.i ] ; 2 uses
  %i.aae = add i64 %.05887.i, 3                   ; 2 uses
  %i.aaf = icmp ult i64 %i.aae, %2
  br i1 %i.aaf, label %bb.ap, label %._crit_edge.loopexit.i, !llvm.loop !180

_ZN7meshoptL15filterTrianglesEPjS0_mPKjmS2_S2_.exit: ; preds = %._crit_edge.loopexit.i, %bb.ao
  %.0.lcssa.i217 = phi i64 [ 0, %bb.ao ], [ %i.xl, %._crit_edge.loopexit.i ] ; 2 uses
  %.not161 = icmp eq ptr %9, null
  br i1 %.not161, label %.lr.ph.i218.preheader, label %bb.av

bb.av:                                            ; preds = %_ZN7meshoptL15filterTrianglesEPjS0_mPKjmS2_S2_.exit
  %i.aag = tail call float @sqrtf(float noundef %.0119.lcssa) #14
  br label %.lr.ph.i218.preheader.sink.split

bb.aw:                                            ; preds = %_ZN7meshoptL12hashBuckets2Em.exit211, %bb.ai, %_ZN7meshoptL16fillCellQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_.exit, %bb.ae, %bb.w, %_ZN7meshoptL12hashBuckets2Em.exit, %bb.b, %bb.a
  %i.aah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  resume { ptr, i32 } %i.aah

.lr.ph.i218.preheader.sink.split:                 ; preds = %bb.t, %bb.av
  %.sink = phi float [ %i.aag, %bb.av ], [ 1.000000e+00, %bb.t ]
  %.ph = phi i64 [ %i.xi, %bb.av ], [ 2, %bb.t ]
  %.0141.ph = phi i64 [ %.0.lcssa.i217, %bb.av ], [ 0, %bb.t ]
  store float %.sink, ptr %9, align 4, !tbaa !44
  br label %.lr.ph.i218.preheader

.lr.ph.i218.preheader:                            ; preds = %.lr.ph.i218.preheader.sink.split, %bb.t, %_ZN7meshoptL15filterTrianglesEPjS0_mPKjmS2_S2_.exit
  %i.aai = phi i64 [ 2, %bb.t ], [ %i.xi, %_ZN7meshoptL15filterTrianglesEPjS0_mPKjmS2_S2_.exit ], [ %.ph, %.lr.ph.i218.preheader.sink.split ]
  %.0141 = phi i64 [ 0, %bb.t ], [ %.0.lcssa.i217, %_ZN7meshoptL15filterTrianglesEPjS0_mPKjmS2_S2_.exit ], [ %.0141.ph, %.lr.ph.i218.preheader.sink.split ]
  br label %.lr.ph.i218

.lr.ph.i218:                                      ; preds = %.lr.ph.i218.preheader, %bb.ax
  %.04.i = phi i64 [ %i.aan, %bb.ax ], [ %i.aai, %.lr.ph.i218.preheader ] ; 2 uses
  %i.aaj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !32
  %i.aak = getelementptr [8 x i8], ptr %10, i64 %.04.i
  %i.aal = getelementptr i8, ptr %i.aak, i64 -8
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !27
  invoke void %i.aaj(ptr noundef %i.aam)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %.lr.ph.i218
  %i.aan = add i64 %.04.i, -1                     ; 2 uses
  %.not.i219 = icmp eq i64 %i.aan, 0
  br i1 %.not.i219, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i218, !llvm.loop !9

bb.ay:                                            ; preds = %.lr.ph.i218
  %i.aao = landingpad { ptr, i32 }
          catch ptr null
  %i.aap = extractvalue { ptr, i32 } %i.aao, 0
  tail call void @__clang_call_terminate(ptr %i.aap) #15
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  ret i64 %.0141
}

; Function Attrs: mustprogress uwtable
define dso_local i64 @meshopt_simplifyPrune(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, float noundef %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
end_hunk_1
begin_hunk_2_@meshopt_simplifyPoints:bb.a
  %i.qy = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.054.i ; 3 uses
  %i.qz = zext i32 %i.qx to i64                   ; 4 uses
  %i.ra = getelementptr inbounds nuw [28 x i8], ptr %i.ji, i64 %i.qz ; 6 uses
  %i.rb = mul i64 %.054.i, %i.jk
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.rb
  %i.rd = select i1 %.not.i152, ptr @_ZZN7meshoptL13fillCellRemapEPjPfmPKjPKNS_9ReservoirEPKNS_7Vector3EPKfmfmE11dummy_color, ptr %i.rc ; 3 uses
  %i.re = load float, ptr %i.qy, align 4, !tbaa !49
  %i.rf = load float, ptr %i.ra, align 4, !tbaa !194
  %i.rg = fsub float %i.re, %i.rf                 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qy, i64 4
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !50
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ra, i64 4
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !195
  %i.rl = fsub float %i.ri, %i.rk                 ; 2 uses
  %i.rm = fmul float %i.rl, %i.rl
  %i.rn = tail call float @llvm.fmuladd.f32(float %i.rg, float %i.rg, float %i.rm)
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !46
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !196
  %i.rs = fsub float %i.rp, %i.rr                 ; 2 uses
  %i.rt = tail call float @llvm.fmuladd.f32(float %i.rs, float %i.rs, float %i.rn)
  %i.ru = load float, ptr %i.rd, align 4, !tbaa !44
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ra, i64 12
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !197
  %i.rx = fsub float %i.ru, %i.rw                 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rd, i64 4
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !44
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !198
  %i.sc = fsub float %i.rz, %i.sb                 ; 2 uses
  %i.sd = fmul float %i.sc, %i.sc
  %i.se = tail call float @llvm.fmuladd.f32(float %i.rx, float %i.rx, float %i.sd)
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !44
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ra, i64 20
  %i.si = load float, ptr %i.sh, align 4, !tbaa !199
  %i.sj = fsub float %i.sg, %i.si                 ; 2 uses
  %i.sk = tail call float @llvm.fmuladd.f32(float %i.sj, float %i.sj, float %i.se)
  %i.sl = tail call float @llvm.fmuladd.f32(float %i.qv, float %i.sk, float %i.rt) ; 2 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.qz ; 2 uses
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !28
  %i.so = icmp eq i32 %i.sn, -1
  br i1 %i.so, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %i.qz
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !44
  %i.sr = fcmp ogt float %i.sq, %i.sl
  br i1 %i.sr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ss = trunc i64 %.054.i to i32
  store i32 %i.ss, ptr %i.sm, align 4, !tbaa !28
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %i.qz
  store float %i.sl, ptr %i.st, align 4, !tbaa !44
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.su = add nuw i64 %.054.i, 1                  ; 2 uses
  %exitcond.not.i153 = icmp eq i64 %i.su, %2
  br i1 %exitcond.not.i153, label %_ZN7meshoptL13fillCellRemapEPjPfmPKjPKNS_9ReservoirEPKNS_7Vector3EPKfmfm.exit, label %bb.y, !llvm.loop !191

_ZN7meshoptL13fillCellRemapEPjPfmPKjPKNS_9ReservoirEPKNS_7Vector3EPKfmfm.exit: ; preds = %bb.ab, %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %i.qm, i64 %i.qk, i1 false)
  br label %.lr.ph.i154.preheader

bb.ac:                                            ; preds = %bb.w, %_ZN7meshoptL18fillCellReservoirsEPNS_9ReservoirEmPKNS_7Vector3EPKfmmPKj.exit, %bb.u, %bb.p, %_ZN7meshoptL12hashBuckets2Em.exit, %bb.c, %bb.b
  %i.sv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  resume { ptr, i32 } %i.sv

.lr.ph.i154.preheader:                            ; preds = %_ZN7meshoptL13fillCellRemapEPjPfmPKjPKNS_9ReservoirEPKNS_7Vector3EPKfmfm.exit, %.critedge
  %i.sw = phi i64 [ 7, %_ZN7meshoptL13fillCellRemapEPjPfmPKjPKNS_9ReservoirEPKNS_7Vector3EPKfmfm.exit ], [ 3, %.critedge ]
  %.0 = phi i64 [ %.019.lcssa.i158, %_ZN7meshoptL13fillCellRemapEPjPfmPKjPKNS_9ReservoirEPKNS_7Vector3EPKfmfm.exit ], [ 0, %.critedge ]
  br label %.lr.ph.i154

.lr.ph.i154:                                      ; preds = %.lr.ph.i154.preheader, %bb.ad
  %.04.i = phi i64 [ %i.tb, %bb.ad ], [ %i.sw, %.lr.ph.i154.preheader ] ; 2 uses
  %i.sx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !32
  %i.sy = getelementptr [8 x i8], ptr %8, i64 %.04.i
  %i.sz = getelementptr i8, ptr %i.sy, i64 -8
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !27
  invoke void %i.sx(ptr noundef %i.ta)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i154
  %i.tb = add i64 %.04.i, -1                      ; 2 uses
  %.not.i155 = icmp eq i64 %i.tb, 0
  br i1 %.not.i155, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i154, !llvm.loop !9

bb.ae:                                            ; preds = %.lr.ph.i154
  %i.tc = landingpad { ptr, i32 }
          catch ptr null
  %i.td = extractvalue { ptr, i32 } %i.tc, 0
  tail call void @__clang_call_terminate(ptr %i.td) #15
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %_ZN17meshopt_AllocatorD2Ev.exit
  %.1 = phi i64 [ %.0, %_ZN17meshopt_AllocatorD2Ev.exit ], [ 0, %bb.a ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @meshopt_simplifyScale(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = lshr i64 %2, 2
  %.not87.i = icmp eq i64 %1, 0
  br i1 %.not87.i, label %_ZN7meshoptL16rescalePositionsEPNS_7Vector3EPKfmmPKjPf.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.a, %.lr.ph.split.us.i
  %.sroa.0108.0.i = phi float [ %..us.i, %.lr.ph.split.us.i ], [ f0x7F7FFFFF, %bb.a ] ; 2 uses
  %.sroa.0.0.i = phi float [ %i.j, %.lr.ph.split.us.i ], [ f0xFF7FFFFF, %bb.a ] ; 2 uses
  %.06780.us.i = phi i64 [ %i.q, %.lr.ph.split.us.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = phi <2 x float> [ %i.p, %.lr.ph.split.us.i ], [ splat (float f0xFF7FFFFF), %bb.a ] ; 2 uses
  %i.c = phi <2 x float> [ %i.o, %.lr.ph.split.us.i ], [ splat (float f0x7F7FFFFF), %bb.a ] ; 2 uses
  %i.d = and i64 %.06780.us.i, 4294967295
  %i.e = mul i64 %i.d, %i.a
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !44 ; 4 uses
  %i.h = fcmp ogt float %.sroa.0108.0.i, %i.g
  %..us.i = select i1 %i.h, float %i.g, float %.sroa.0108.0.i ; 2 uses
  %i.i = fcmp olt float %.sroa.0.0.i, %i.g
  %i.j = select i1 %i.i, float %i.g, float %.sroa.0.0.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.l = load <2 x float>, ptr %i.k, align 4, !tbaa !44 ; 4 uses
  %i.m = fcmp ogt <2 x float> %i.c, %i.l
  %i.n = fcmp olt <2 x float> %i.b, %i.l
  %i.o = select <2 x i1> %i.m, <2 x float> %i.l, <2 x float> %i.c ; 2 uses
  %i.p = select <2 x i1> %i.n, <2 x float> %i.l, <2 x float> %i.b ; 2 uses
  %i.q = add nuw i64 %.06780.us.i, 1              ; 2 uses
  %exitcond97.not.i = icmp eq i64 %i.q, %1
  br i1 %exitcond97.not.i, label %_ZN7meshoptL16rescalePositionsEPNS_7Vector3EPKfmmPKjPf.exit.loopexit, label %.lr.ph.split.us.i, !llvm.loop !10

_ZN7meshoptL16rescalePositionsEPNS_7Vector3EPKfmmPKjPf.exit.loopexit: ; preds = %.lr.ph.split.us.i
  %i.r = fsub float %i.j, %..us.i
  %i.s = fsub <2 x float> %i.p, %i.o
  br label %_ZN7meshoptL16rescalePositionsEPNS_7Vector3EPKfmmPKjPf.exit

_ZN7meshoptL16rescalePositionsEPNS_7Vector3EPKfmmPKjPf.exit: ; preds = %_ZN7meshoptL16rescalePositionsEPNS_7Vector3EPKfmmPKjPf.exit.loopexit, %bb.a
  %i.t = phi float [ -inf, %bb.a ], [ %i.r, %_ZN7meshoptL16rescalePositionsEPNS_7Vector3EPKfmmPKjPf.exit.loopexit ] ; 2 uses
  %i.u = phi <2 x float> [ splat (float -inf), %bb.a ], [ %i.s, %_ZN7meshoptL16rescalePositionsEPNS_7Vector3EPKfmmPKjPf.exit.loopexit ] ; 2 uses
  %i.v = fcmp olt float %i.t, 0.000000e+00
  %i.w = select i1 %i.v, float 0.000000e+00, float %i.t ; 2 uses
  %i.x = extractelement <2 x float> %i.u, i64 0   ; 2 uses
  %i.y = fcmp olt float %i.x, %i.w
  %i.z = select i1 %i.y, float %i.w, float %i.x   ; 2 uses
  %i.aa = extractelement <2 x float> %i.u, i64 1  ; 2 uses
  %i.ab = fcmp olt float %i.aa, %i.z
  %i.ac = select i1 %i.ab, float %i.z, float %i.aa
  ret float %i.ac
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{!0, !30}
!1 = distinct !{!1, !30}
!2 = distinct !{!2, !30}
!3 = distinct !{!3, !30}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{!8, !30}
!9 = distinct !{!9, !30}
!10 = distinct !{!10, !30}
!11 = distinct !{!11, !30}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"any pointer", !17, i64 0}
!22 = !{!"_ZTSN17meshopt_Allocator7StorageE", !21, i64 0, !21, i64 8}
!23 = !{!22, !21, i64 0}
!24 = !{!"long", !17, i64 0}
!25 = !{!"_ZTS17meshopt_Allocator", !17, i64 0, !24, i64 192}
!26 = !{!25, !24, i64 192}
!27 = !{!21, !21, i64 0}
!28 = !{!18, !18, i64 0}
!29 = !{!17, !17, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!22, !21, i64 8}
!33 = !{!"p1 int", !21, i64 0}
!34 = !{!"p1 _ZTSN7meshopt13EdgeAdjacency4EdgeE", !21, i64 0}
!35 = !{!"_ZTSN7meshopt13EdgeAdjacencyE", !33, i64 0, !34, i64 8}
!36 = !{!35, !33, i64 0}
!37 = !{!35, !34, i64 8}
!38 = !{!"_ZTSN7meshopt13EdgeAdjacency4EdgeE", !18, i64 0, !18, i64 4}
!39 = !{!38, !18, i64 0}
!40 = !{!38, !18, i64 4}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = !{!"float", !17, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"_ZTSN7meshopt7Vector3E", !43, i64 0, !43, i64 4, !43, i64 8}
!46 = !{!45, !43, i64 8}
!47 = !{!"_ZTSN7meshopt7QuadricE", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40}
!48 = !{!47, !43, i64 40}
!49 = !{!45, !43, i64 0}
!50 = !{!45, !43, i64 4}
!51 = !{!47, !43, i64 24}
!52 = !{!47, !43, i64 12}
!53 = !{!47, !43, i64 0}
!54 = !{!47, !43, i64 4}
!55 = !{!47, !43, i64 8}
!56 = !{!47, !43, i64 36}
!57 = distinct !{null, null}
!58 = distinct !{!58, !30}
!59 = distinct !{!59, !31}
!60 = distinct !{null, null}
!61 = distinct !{!61, !30}
!62 = distinct !{null, null}
!63 = distinct !{!63, !30}
!64 = distinct !{null, null}
!65 = distinct !{null, null}
!66 = distinct !{!66, !31}
!67 = distinct !{!67, !31}
!68 = distinct !{null}
!69 = distinct !{!69, !30}
!70 = distinct !{!70, !30}
!71 = distinct !{!71, !30}
!72 = distinct !{!72, !30}
!73 = distinct !{!73, !30}
!74 = distinct !{!74, !30}
!75 = distinct !{!75, !30}
!76 = distinct !{!76, !30}
!77 = distinct !{!77, !30}
!78 = distinct !{!78, !30}
!79 = distinct !{!79, !30}
!80 = distinct !{!80, !30}
!81 = distinct !{!81, !30, !41, !42}
!82 = distinct !{!82, !30, !41, !42}
!83 = distinct !{!83, !30, !42, !41}
!84 = distinct !{!84, !30}
!85 = distinct !{!85, !30}
!86 = distinct !{!86, !30}
!87 = distinct !{null}
!88 = distinct !{!88, !30}
!89 = distinct !{!89, !30}
!90 = distinct !{!90, !30}
!91 = distinct !{!91, !30}
!92 = distinct !{!92, !30}
!93 = distinct !{!93, !30}
!94 = distinct !{!94, !30}
!95 = distinct !{!95, !30}
!96 = distinct !{!96, !31}
!97 = distinct !{!97, !30, !41, !42}
!98 = distinct !{!98, !30, !42, !41}
!99 = distinct !{null}
!100 = distinct !{!100, !30}
!101 = distinct !{!101, !30}
!102 = distinct !{!102, !30}
!103 = distinct !{!103, !30}
!104 = distinct !{!104, !30}
!105 = distinct !{!105, !30}
!106 = distinct !{!106, !30}
!107 = distinct !{!107, !30}
!108 = distinct !{!108, !30, !41, !42}
!109 = distinct !{!109, !30}
!110 = distinct !{!110, !30}
!111 = distinct !{!111, !30}
!112 = distinct !{!112, !30, !42, !41}
!113 = distinct !{!113, !30}
!114 = distinct !{!114, !30}
!115 = distinct !{!115, !30}
!116 = distinct !{!116, !30}
!117 = distinct !{!117, !30}
!118 = distinct !{!118, !30}
!119 = distinct !{!119, !30}
!120 = distinct !{!120, !30}
!121 = distinct !{!121, !30}
!122 = distinct !{!122, !30}
!123 = distinct !{!123, !30}
!124 = distinct !{!124, !30}
!125 = distinct !{!125, !30}
!126 = distinct !{!126, !30}
!127 = distinct !{!127, !30}
!128 = distinct !{!128, !30}
!129 = distinct !{!129, !30}
!130 = distinct !{!130, !30}
!131 = distinct !{!131, !31}
!132 = !{!"branch_weights", i32 8, i32 24}
!133 = !{!47, !43, i64 32}
!134 = !{!"_ZTSN7meshopt8CollapseE", !18, i64 0, !18, i64 4, !17, i64 8}
!135 = !{!134, !18, i64 0}
!136 = !{!134, !18, i64 4}
!137 = !{!47, !43, i64 28}
!138 = !{!47, !43, i64 20}
!139 = !{!47, !43, i64 16}
!140 = !{!"_ZTSN7meshopt11QuadricGradE", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!141 = !{!140, !43, i64 0}
!142 = !{!140, !43, i64 4}
!143 = !{!140, !43, i64 8}
!144 = !{!140, !43, i64 12}
!145 = !{i64 0, i64 4, !44, i64 4, i64 4, !44, i64 8, i64 4, !44}
!146 = distinct !{!146, !31}
!147 = distinct !{!147, !31}
!148 = distinct !{null}
!149 = distinct !{!149, !30, !41, !42}
!150 = distinct !{!150, !30}
!151 = distinct !{!151, !30, !42, !41}
!152 = distinct !{!152, !30}
!153 = distinct !{!153, !30, !41, !42}
!154 = distinct !{!154, !30, !42, !41}
!155 = distinct !{!155, !30, !41, !42}
!156 = distinct !{!156, !30, !42, !41}
!157 = distinct !{!157, !30}
!158 = distinct !{!158, !30}
!159 = distinct !{!159, !30}
!160 = distinct !{!160, !30}
!161 = distinct !{!161, !30, !41, !42}
!162 = distinct !{!162, !30}
!163 = distinct !{!163, !30, !42, !41}
!164 = distinct !{!164, !30, !41, !42}
!165 = distinct !{!165, !30}
!166 = distinct !{!166, !30, !42, !41}
!167 = distinct !{!167, !30, !41, !42}
!168 = distinct !{!168, !30, !42, !41}
!169 = distinct !{!169, !30}
!170 = distinct !{!170, !30}
!171 = distinct !{!171, !30, !41, !42}
!172 = distinct !{!172, !30, !42, !41}
!173 = distinct !{!173, !30}
!174 = distinct !{!174, !30, !41, !42}
!175 = distinct !{!175, !30, !42, !41}
!176 = distinct !{!176, !30}
!177 = distinct !{!177, !30}
!178 = distinct !{!178, !31}
!179 = distinct !{!179, !30}
!180 = distinct !{!180, !30}
!181 = distinct !{!181, !30, !41, !42}
!182 = distinct !{!182, !30, !42, !41}
!183 = distinct !{!183, !30}
!184 = distinct !{!184, !30}
!185 = distinct !{!185, !30, !41, !42}
!186 = distinct !{!186, !30, !42, !41}
!187 = distinct !{null}
!188 = distinct !{!188, !30}
!189 = distinct !{!189, !30, !41, !42}
!190 = distinct !{!190, !30, !42, !41}
!191 = distinct !{!191, !30}
!192 = !{!"_ZTSN7meshopt9ReservoirE", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24}
!193 = !{!192, !43, i64 24}
!194 = !{!192, !43, i64 0}
!195 = !{!192, !43, i64 4}
!196 = !{!192, !43, i64 8}
!197 = !{!192, !43, i64 12}
!198 = !{!192, !43, i64 16}
!199 = !{!192, !43, i64 20}
end_hunk_2
