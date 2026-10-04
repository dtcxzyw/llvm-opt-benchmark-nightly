Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hough?download=true
inline.NumInlined: 2522
inline.NumDeleted: 933
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN2cvL12HoughCirclesERKNS_11_InputArrayERKNS_12_OutputArrayEiddddiiid:bb.a

bb.mp:                                            ; preds = %bb.nl, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE12emplace_backIJRiS6_EEERS2_DpOT_.exit.i
  %.sroa.0448.2.i = phi ptr [ %.sroa.0448.8.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE12emplace_backIJRiS6_EEERS2_DpOT_.exit.i ], [ %.sroa.0448.4.i, %bb.nl ] ; 4 uses
  %.sroa.11453.2.i = phi ptr [ %.sroa.11453.6.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE12emplace_backIJRiS6_EEERS2_DpOT_.exit.i ], [ %.sroa.11453.4.i, %bb.nl ]
  %.sroa.21.2.i = phi ptr [ %.sroa.21.8.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE12emplace_backIJRiS6_EEERS2_DpOT_.exit.i ], [ %.sroa.21.4.i, %bb.nl ] ; 4 uses
  %.0209.i = phi i1 [ false, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE12emplace_backIJRiS6_EEERS2_DpOT_.exit.i ], [ %i.bcp, %bb.nl ]
  %i.awq = getelementptr inbounds i8, ptr %.sroa.11453.2.i, i64 -8 ; 2 uses
  %i.awr = load <2 x i32>, ptr %i.awq, align 4, !tbaa !42 ; 4 uses
  %i.aws = extractelement <2 x i32> %i.awr, i64 1 ; 3 uses
  %i.awt = mul nsw i32 %i.aws, %i.asz
  %i.awu = extractelement <2 x i32> %i.awr, i64 0 ; 3 uses
  %i.awv = add nsw i32 %i.awt, %i.awu
  %i.aww = sext i32 %i.awv to i64                 ; 2 uses
  %i.awx = getelementptr inbounds [2 x i8], ptr %i.asv, i64 %i.aww
  %i.awy = load i16, ptr %i.awx, align 2, !tbaa !149 ; 2 uses
  %i.awz = sext i16 %i.awy to i32
  %i.axa = getelementptr inbounds [2 x i8], ptr %i.asx, i64 %i.aww
  %i.axb = load i16, ptr %i.axa, align 2, !tbaa !149 ; 2 uses
  %i.axc = sext i16 %i.axb to i32
  %i.axd = sitofp i16 %i.awy to float             ; 4 uses
  %i.axe = sitofp i16 %i.axb to float             ; 4 uses
  %i.axf = fmul nnan float %i.axe, %i.axe
  %i.axg = call float @llvm.fmuladd.f32(float %i.axd, float %i.axd, float %i.axf)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.axg)
  %i.axh = sitofp <2 x i32> %i.awr to <2 x float> ; 2 uses
  %i.axi = load ptr, ptr %i.aup, align 8, !tbaa !143 ; 8 uses
  %i.axj = load ptr, ptr %i.auq, align 8, !tbaa !142
  %.not.i322.i = icmp eq ptr %i.axi, %i.axj
  br i1 %.not.i322.i, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  store <2 x float> %i.axh, ptr %i.axi, align 4, !tbaa !44
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axi, i64 8
  store float %i.axd, ptr %i.axk, align 4, !tbaa !44
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axi, i64 12
  store float %i.axe, ptr %i.axl, align 4, !tbaa !44
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axi, i64 16
  store ptr %i.axm, ptr %i.aup, align 8, !tbaa !143
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12emplace_backIJffffEEERS2_DpOT_.exit.i

bb.mr:                                            ; preds = %bb.mp
  %i.axn = load ptr, ptr %25, align 8, !tbaa !141 ; 5 uses
  %i.axo = ptrtoint ptr %i.axi to i64
  %i.axp = ptrtoint ptr %i.axn to i64             ; 2 uses
  %i.axq = sub i64 %i.axo, %i.axp                 ; 3 uses
  %i.axr = icmp eq i64 %i.axq, 9223372036854775792
  br i1 %i.axr, label %bb.ms, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.ms:                                            ; preds = %bb.mr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #23
          to label %.noexc379.i unwind label %.loopexit.split-lp538.i

.noexc379.i:                                      ; preds = %bb.ms
  unreachable

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.mr
  %i.axs = ashr exact i64 %i.axq, 4               ; 3 uses
  %.sroa.speculated.i.i.i276 = call i64 @llvm.umax.i64(i64 %i.axs, i64 1)
  %i.axt = add nsw i64 %.sroa.speculated.i.i.i276, %i.axs ; 2 uses
  %i.axu = icmp ult i64 %i.axt, %i.axs
  %i.axv = call i64 @llvm.umin.i64(i64 %i.axt, i64 576460752303423487)
  %i.axw = select i1 %i.axu, i64 576460752303423487, i64 %i.axv ; 3 uses
  %.not.i.i378.i = icmp ne i64 %i.axw, 0
  call void @llvm.assume(i1 %.not.i.i378.i)
  %i.axx = shl nuw nsw i64 %i.axw, 4
  %i.axy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.axx) #25
          to label %.noexc380.i unwind label %.loopexit537.i ; 5 uses

.noexc380.i:                                      ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 %i.axq ; 3 uses
  store <2 x float> %i.axh, ptr %i.axz, align 4, !tbaa !44
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axz, i64 8
  store float %i.axd, ptr %i.aya, align 4, !tbaa !44
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axz, i64 12
  store float %i.axe, ptr %i.ayb, align 4, !tbaa !44
  %.not13.i.i.i.i.i.i.i = icmp eq ptr %i.axn, %i.axi
  br i1 %.not13.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit37.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc380.i, %.lr.ph.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i = phi ptr [ %i.ayn, %.lr.ph.i.i.i.i.i.i.i ], [ %i.axy, %.noexc380.i ] ; 5 uses
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.aym, %.lr.ph.i.i.i.i.i.i.i ], [ %i.axn, %.noexc380.i ] ; 5 uses
  %i.ayc = load float, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !44
  store float %i.ayc, ptr %.015.i.i.i.i.i.i.i, align 4, !tbaa !44
  %i.ayd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 4
  %i.aye = load float, ptr %i.ayd, align 4, !tbaa !44
  %i.ayf = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 4
  store float %i.aye, ptr %i.ayf, align 4, !tbaa !44
  %i.ayg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.ayh = load float, ptr %i.ayg, align 4, !tbaa !44
  %i.ayi = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 8
  store float %i.ayh, ptr %i.ayi, align 4, !tbaa !44
  %i.ayj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 12
  %i.ayk = load float, ptr %i.ayj, align 4, !tbaa !44
  %i.ayl = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 12
  store float %i.ayk, ptr %i.ayl, align 4, !tbaa !44
  %i.aym = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ayn = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aym, %i.axi
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit37.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !7

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit37.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc380.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.axy, %.noexc380.i ], [ %i.ayn, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ayo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i38.i.i = icmp eq ptr %i.axn, null
  br i1 %.not.i38.i.i, label %.noexc323.i, label %bb.mt

bb.mt:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit37.i.i
  %i.ayp = load ptr, ptr %i.auq, align 8, !tbaa !142
  %i.ayq = ptrtoint ptr %i.ayp to i64
  %i.ayr = sub i64 %i.ayq, %i.axp
  call void @_ZdlPvm(ptr noundef nonnull %i.axn, i64 noundef %i.ayr) #24
  br label %.noexc323.i

.noexc323.i:                                      ; preds = %bb.mt, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit37.i.i
  store ptr %i.axy, ptr %25, align 8, !tbaa !141
  store ptr %i.ayo, ptr %i.aup, align 8, !tbaa !143
  %i.ays = getelementptr inbounds nuw [16 x i8], ptr %i.axy, i64 %i.axw
  store ptr %i.ays, ptr %i.auq, align 8, !tbaa !142
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12emplace_backIJffffEEERS2_DpOT_.exit.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12emplace_backIJffffEEERS2_DpOT_.exit.i: ; preds = %.noexc323.i, %bb.mq
  %i.ayt = mul nsw i32 %i.aws, %i.atd
  %i.ayu = add nsw i32 %i.ayt, %i.awu
  %i.ayv = sext i32 %i.ayu to i64
  %i.ayw = getelementptr inbounds i8, ptr %i.auk, i64 %i.ayv
  %i.ayx = load i8, ptr %i.ayw, align 1, !tbaa !37
  %i.ayy = icmp eq i8 %i.ayx, 1
  br i1 %i.ayy, label %bb.mz, label %bb.mu

.loopexit543.i:                                   ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit545.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.qa

.loopexit.split-lp544.i:                          ; preds = %bb.mn
  %lpad.loopexit.split-lp546.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.qa

.loopexit537.i:                                   ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit539.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.qa

.loopexit.split-lp538.i:                          ; preds = %bb.ms
  %lpad.loopexit.split-lp540.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.qa

bb.mu:                                            ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12emplace_backIJffffEEERS2_DpOT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.mv unwind label %bb.mx

bb.mv:                                            ; preds = %bb.mu
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @__func__._ZN2cvL15HoughCirclesAltERKNS_3MatERSt6vectorINS_15EstimatedCircleESaIS4_EEdddddd, ptr noundef nonnull @.str.1, i32 noundef 1862) #23
          to label %bb.mw unwind label %bb.my

bb.mw:                                            ; preds = %bb.mv
  unreachable

bb.mx:                                            ; preds = %bb.mu
  %i.ayz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.my:                                            ; preds = %bb.mv
  %i.aza = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.azb = load ptr, ptr %26, align 8, !tbaa !36  ; 2 uses
  %i.azc = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.azd = icmp eq ptr %i.azb, %i.azc
  br i1 %i.azd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.my
  %i.aze = load i64, ptr %i.azc, align 8, !tbaa !37
  %i.azf = add i64 %i.aze, 1
  call void @_ZdlPvm(ptr noundef %i.azb, i64 noundef %i.azf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.my, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.mx
  %.pn284.i = phi { ptr, i32 } [ %i.ayz, %bb.mx ], [ %i.aza, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.aza, %bb.my ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %bb.qa

bb.mz:                                            ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12emplace_backIJffffEEERS2_DpOT_.exit.i
  %i.azg = insertelement <2 x i32> poison, i32 %i.awz, i64 0
  %i.azh = insertelement <2 x i32> %i.azg, i32 %i.axc, i64 1
  %i.azi = shl nsw <2 x i32> %i.azh, splat (i32 10)
  %i.azj = sitofp <2 x i32> %i.azi to <2 x float>
  %i.azk = insertelement <2 x float> poison, float %sqrt.i, i64 0
  %i.azl = shufflevector <2 x float> %i.azk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.azm = fdiv <2 x float> %i.azj, %i.azl        ; 2 uses
  %i.azn = shufflevector <2 x float> %i.azm, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.azo = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.azn) ; 3 uses
  %i.azp = shufflevector <2 x float> %i.azm, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.azq = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.azp) ; 3 uses
  %i.azr = sitofp <2 x i32> %i.awr to <2 x double>
  %i.azs = fmul <2 x double> %i.asf, %i.azr
  %123 = fmul <2 x double> %i.azs, splat (double 1.024000e+03) ; 2 uses
  %i.azt = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %123) ; 2 uses
  %124 = shufflevector <2 x double> %123, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.azu = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %124) ; 2 uses
  br i1 %.not306651.i, label %.preheader.split.i.preheader, label %.lr.ph656.preheader.i

.preheader.split.i.preheader:                     ; preds = %.critedge.1.i, %bb.nb, %bb.mz
  br label %.preheader.split.i

.lr.ph656.preheader.i:                            ; preds = %bb.mz
  %i.azv = mul i32 %i.azo, %.sroa.speculated469.i ; 2 uses
  %i.azw = add nsw i32 %i.azt, %i.azv
  %i.azx = mul i32 %i.azq, %.sroa.speculated469.i ; 2 uses
  %i.azy = add nsw i32 %i.azu, %i.azx
  br label %bb.na

bb.na:                                            ; preds = %.critedge.i, %.lr.ph656.preheader.i
  %.0203654.i = phi i32 [ %.sroa.speculated469.i, %.lr.ph656.preheader.i ], [ %i.bbf, %.critedge.i ] ; 2 uses
  %.0204653.i = phi i32 [ %i.azy, %.lr.ph656.preheader.i ], [ %i.bbe, %.critedge.i ] ; 2 uses
  %.0205652.i = phi i32 [ %i.azw, %.lr.ph656.preheader.i ], [ %i.bbd, %.critedge.i ] ; 2 uses
  %i.azz = add nsw i32 %.0205652.i, 64            ; 2 uses
  %i.baa = add nsw i32 %.0204653.i, 64            ; 2 uses
  %i.bab = ashr i32 %i.azz, 10                    ; 2 uses
  %i.bac = ashr i32 %i.baa, 10                    ; 2 uses
  %.not307.i = icmp ult i32 %i.bab, %i.asi
  %.not308.i = icmp ult i32 %i.bac, %i.asj
  %or.cond.i = select i1 %.not307.i, i1 %.not308.i, i1 false
  br i1 %or.cond.i, label %.critedge.i, label %._crit_edge657.i

.critedge.i:                                      ; preds = %bb.na
  %i.bad = lshr i32 %i.baa, 7
  %i.bae = lshr i32 %i.azz, 7
  %i.baf = mul nsw i32 %i.bac, %i.asp
  %i.bag = sext i32 %i.baf to i64
  %i.bah = getelementptr inbounds [4 x i8], ptr %i.asn, i64 %i.bag
  %i.bai = sext i32 %i.bab to i64
  %i.baj = getelementptr inbounds [4 x i8], ptr %i.bah, i64 %i.bai ; 5 uses
  %i.bak = and i32 %i.bae, 7                      ; 3 uses
  %i.bal = and i32 %i.bad, 7                      ; 3 uses
  %i.bam = sub nuw nsw i32 8, %i.bak              ; 2 uses
  %i.ban = sub nuw nsw i32 8, %i.bal              ; 2 uses
  %i.bao = mul nuw nsw i32 %i.bam, %i.ban
  %i.bap = load i32, ptr %i.baj, align 4, !tbaa !42
  %i.baq = add nsw i32 %i.bap, %i.bao
  store i32 %i.baq, ptr %i.baj, align 4, !tbaa !42
  %i.bar = mul nuw nsw i32 %i.ban, %i.bak
  %i.bas = getelementptr inbounds nuw i8, ptr %i.baj, i64 4 ; 2 uses
  %i.bat = load i32, ptr %i.bas, align 4, !tbaa !42
  %i.bau = add nsw i32 %i.bat, %i.bar
  store i32 %i.bau, ptr %i.bas, align 4, !tbaa !42
  %i.bav = mul nuw nsw i32 %i.bam, %i.bal
  %i.baw = getelementptr inbounds i8, ptr %i.baj, i64 %i.aur ; 2 uses
  %i.bax = load i32, ptr %i.baw, align 4, !tbaa !42
  %i.bay = add nsw i32 %i.bax, %i.bav
  store i32 %i.bay, ptr %i.baw, align 4, !tbaa !42
  %i.baz = mul nuw nsw i32 %i.bak, %i.bal
  %i.bba = getelementptr inbounds i8, ptr %i.baj, i64 %i.aus ; 2 uses
  %i.bbb = load i32, ptr %i.bba, align 4, !tbaa !42
  %i.bbc = add nsw i32 %i.bbb, %i.baz
  store i32 %i.bbc, ptr %i.bba, align 4, !tbaa !42
  %i.bbd = add nsw i32 %.0205652.i, %i.azo
  %i.bbe = add nsw i32 %.0204653.i, %i.azq
  %i.bbf = add nuw nsw i32 %.0203654.i, 1
  %.not306.not.i = icmp slt i32 %.0203654.i, %i.asb
  br i1 %.not306.not.i, label %bb.na, label %._crit_edge657.i, !llvm.loop !296

._crit_edge657.i:                                 ; preds = %.critedge.i, %bb.na
  %i.bbg = sub i32 %i.azt, %i.azv
  %i.bbh = sub i32 %i.azu, %i.azx
  br label %bb.nb

bb.nb:                                            ; preds = %.critedge.1.i, %._crit_edge657.i
  %.0203654.1.i = phi i32 [ %.sroa.speculated469.i, %._crit_edge657.i ], [ %i.bco, %.critedge.1.i ] ; 2 uses
  %.0204653.1.i = phi i32 [ %i.bbh, %._crit_edge657.i ], [ %i.bcn, %.critedge.1.i ] ; 2 uses
  %.0205652.1.i = phi i32 [ %i.bbg, %._crit_edge657.i ], [ %i.bcm, %.critedge.1.i ] ; 2 uses
  %i.bbi = add nsw i32 %.0205652.1.i, 64          ; 2 uses
  %i.bbj = add nsw i32 %.0204653.1.i, 64          ; 2 uses
  %i.bbk = ashr i32 %i.bbi, 10                    ; 2 uses
  %i.bbl = ashr i32 %i.bbj, 10                    ; 2 uses
  %.not307.1.i = icmp ult i32 %i.bbk, %i.asi
  %.not308.1.i = icmp ult i32 %i.bbl, %i.asj
  %or.cond.1.i = select i1 %.not307.1.i, i1 %.not308.1.i, i1 false
  br i1 %or.cond.1.i, label %.critedge.1.i, label %.preheader.split.i.preheader

.critedge.1.i:                                    ; preds = %bb.nb
  %i.bbm = lshr i32 %i.bbj, 7
  %i.bbn = lshr i32 %i.bbi, 7
  %i.bbo = mul nsw i32 %i.bbl, %i.asp
  %i.bbp = sext i32 %i.bbo to i64
  %i.bbq = getelementptr inbounds [4 x i8], ptr %i.asn, i64 %i.bbp
  %i.bbr = sext i32 %i.bbk to i64
  %i.bbs = getelementptr inbounds [4 x i8], ptr %i.bbq, i64 %i.bbr ; 5 uses
  %i.bbt = and i32 %i.bbn, 7                      ; 3 uses
  %i.bbu = and i32 %i.bbm, 7                      ; 3 uses
  %i.bbv = sub nuw nsw i32 8, %i.bbt              ; 2 uses
  %i.bbw = sub nuw nsw i32 8, %i.bbu              ; 2 uses
  %i.bbx = mul nuw nsw i32 %i.bbv, %i.bbw
  %i.bby = load i32, ptr %i.bbs, align 4, !tbaa !42
  %i.bbz = add nsw i32 %i.bby, %i.bbx
  store i32 %i.bbz, ptr %i.bbs, align 4, !tbaa !42
  %i.bca = mul nuw nsw i32 %i.bbw, %i.bbt
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bbs, i64 4 ; 2 uses
  %i.bcc = load i32, ptr %i.bcb, align 4, !tbaa !42
  %i.bcd = add nsw i32 %i.bcc, %i.bca
  store i32 %i.bcd, ptr %i.bcb, align 4, !tbaa !42
  %i.bce = mul nuw nsw i32 %i.bbv, %i.bbu
  %i.bcf = getelementptr inbounds i8, ptr %i.bbs, i64 %i.aur ; 2 uses
  %i.bcg = load i32, ptr %i.bcf, align 4, !tbaa !42
  %i.bch = add nsw i32 %i.bcg, %i.bce
  store i32 %i.bch, ptr %i.bcf, align 4, !tbaa !42
  %i.bci = mul nuw nsw i32 %i.bbt, %i.bbu
  %i.bcj = getelementptr inbounds i8, ptr %i.bbs, i64 %i.aus ; 2 uses
  %i.bck = load i32, ptr %i.bcj, align 4, !tbaa !42
  %i.bcl = add nsw i32 %i.bck, %i.bci
  store i32 %i.bcl, ptr %i.bcj, align 4, !tbaa !42
  %i.bcm = sub nsw i32 %.0205652.1.i, %i.azo
  %i.bcn = sub nsw i32 %.0204653.1.i, %i.azq
  %i.bco = add nuw nsw i32 %.0203654.1.i, 1
  %.not306.not.1.i = icmp slt i32 %.0203654.1.i, %i.asb
  br i1 %.not306.not.1.i, label %bb.nb, label %.preheader.split.i.preheader, !llvm.loop !296

bb.nc:                                            ; preds = %bb.nj
  %i.bcp = icmp eq i32 %.1202.i, 0                ; 2 uses
  %brmerge.demorgan.i = and i1 %.0209.i, %i.bcp
  br i1 %brmerge.demorgan.i, label %bb.nk, label %bb.nl

.preheader.split.i:                               ; preds = %.preheader.split.i.preheader, %bb.nj
  %indvars.iv747.i = phi i64 [ %indvars.iv.next748.i, %bb.nj ], [ 0, %.preheader.split.i.preheader ] ; 2 uses
  %.0201665.i = phi i32 [ %.1202.i, %bb.nj ], [ 0, %.preheader.split.i.preheader ] ; 3 uses
  %.sroa.21.3664.i = phi ptr [ %.sroa.21.4.i, %bb.nj ], [ %.sroa.21.2.i, %.preheader.split.i.preheader ] ; 9 uses
  %.sroa.11453.3663.i = phi ptr [ %.sroa.11453.4.i, %bb.nj ], [ %i.awq, %.preheader.split.i.preheader ] ; 6 uses
  %.sroa.0448.3662.i = phi ptr [ %.sroa.0448.4.i, %bb.nj ], [ %.sroa.0448.2.i, %.preheader.split.i.preheader ] ; 10 uses
  %i.bcq = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN2cvL15HoughCirclesAltERKNS_3MatERSt6vectorINS_15EstimatedCircleESaIS4_EEdddddd.n33, i64 %indvars.iv747.i ; 2 uses
  %i.bcr = load i32, ptr %i.bcq, align 8, !tbaa !42
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcq, i64 4
  %i.bct = load i32, ptr %i.bcs, align 4, !tbaa !42
  %i.bcu = add nsw i32 %i.bcr, %i.aws             ; 4 uses
  %i.bcv = add nsw i32 %i.bct, %i.awu             ; 4 uses
  %i.bcw = mul nsw i32 %i.bcu, %i.atd
  %i.bcx = add nsw i32 %i.bcw, %i.bcv
  %i.bcy = sext i32 %i.bcx to i64
  %i.bcz = getelementptr inbounds i8, ptr %i.auk, i64 %i.bcy ; 2 uses
  %i.bda = load i8, ptr %i.bcz, align 1, !tbaa !37
  %.not286.i = icmp eq i8 %i.bda, 0
  br i1 %.not286.i, label %bb.nd, label %bb.nj

bb.nd:                                            ; preds = %.preheader.split.i
  %i.bdb = mul nsw i32 %i.bcu, %i.ast
  %i.bdc = add nsw i32 %i.bdb, %i.bcv
  %i.bdd = sext i32 %i.bdc to i64
  %i.bde = getelementptr inbounds i8, ptr %i.asr, i64 %i.bdd
  %i.bdf = load i8, ptr %i.bde, align 1, !tbaa !37
  %.not287.i = icmp eq i8 %i.bdf, 0
  br i1 %.not287.i, label %bb.nj, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  store i8 1, ptr %i.bcz, align 1, !tbaa !37
  %.not.i324.i = icmp eq ptr %.sroa.11453.3663.i, %.sroa.21.3664.i
  br i1 %.not.i324.i, label %bb.ng, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  store i32 %i.bcv, ptr %.sroa.11453.3663.i, align 4, !tbaa !147
  %i.bdg = getelementptr inbounds nuw i8, ptr %.sroa.11453.3663.i, i64 4
  store i32 %i.bcu, ptr %i.bdg, align 4, !tbaa !148
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE12emplace_backIJRiS6_EEERS2_DpOT_.exit339.i

bb.ng:                                            ; preds = %bb.ne
  %i.bdh = ptrtoint ptr %.sroa.21.3664.i to i64
  %i.bdi = ptrtoint ptr %.sroa.0448.3662.i to i64
  %i.bdj = sub i64 %i.bdh, %i.bdi                 ; 4 uses
  %i.bdk = icmp eq i64 %i.bdj, 9223372036854775800
  br i1 %i.bdk, label %bb.nh, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i325.i

bb.nh:                                            ; preds = %bb.ng
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #23
          to label %.noexc337.i unwind label %.loopexit.split-lp533.i

.noexc337.i:                                      ; preds = %bb.nh
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i325.i: ; preds = %bb.ng
  %i.bdl = ashr exact i64 %i.bdj, 3               ; 3 uses
  %.sroa.speculated.i.i.i326.i = call i64 @llvm.umax.i64(i64 %i.bdl, i64 1)
  %i.bdm = add nsw i64 %.sroa.speculated.i.i.i326.i, %i.bdl ; 2 uses
  %i.bdn = icmp ult i64 %i.bdm, %i.bdl
  %i.bdo = call i64 @llvm.umin.i64(i64 %i.bdm, i64 1152921504606846975)
  %i.bdp = select i1 %i.bdn, i64 1152921504606846975, i64 %i.bdo ; 3 uses
  %.not.i.i.i327.i = icmp ne i64 %i.bdp, 0
  call void @llvm.assume(i1 %.not.i.i.i327.i)
  %i.bdq = shl nuw nsw i64 %i.bdp, 3
  %i.bdr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bdq) #25
          to label %.noexc338.i unwind label %.loopexit532.i ; 5 uses

.noexc338.i:                                      ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i325.i
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 %i.bdj ; 2 uses
  store i32 %i.bcv, ptr %i.bds, align 4, !tbaa !147
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 4
  store i32 %i.bcu, ptr %i.bdt, align 4, !tbaa !148
  %.not10.i.i.i.i.i328.i = icmp eq ptr %.sroa.0448.3662.i, %.sroa.21.3664.i
  br i1 %.not10.i.i.i.i.i328.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i333.i, label %.lr.ph.i.i.i.i.i329.i

.lr.ph.i.i.i.i.i329.i:                            ; preds = %.noexc338.i, %.lr.ph.i.i.i.i.i329.i
  %.012.i.i.i.i.i330.i = phi ptr [ %i.bdw, %.lr.ph.i.i.i.i.i329.i ], [ %i.bdr, %.noexc338.i ] ; 2 uses
  %.0911.i.i.i.i.i331.i = phi ptr [ %i.bdv, %.lr.ph.i.i.i.i.i329.i ], [ %.sroa.0448.3662.i, %.noexc338.i ] ; 2 uses
end_hunk_0
