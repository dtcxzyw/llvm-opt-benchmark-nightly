Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/load_mfbacks?download=true
inline.NumInlined: 187
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN6LibRaw17phase_one_correctEv:bb.a

.loopexit435.1:                                   ; preds = %bb.hp
  %i.awi = load i16, ptr %i.at, align 8, !tbaa !71
  %.not643 = icmp eq i16 %i.awi, 0
  br i1 %.not643, label %._crit_edge633, label %.lr.ph632

.lr.ph632:                                        ; preds = %.loopexit435.1
  %i.awj = uitofp nneg i32 %i.avb to float        ; 2 uses
  %.not963 = icmp eq i32 %i.aux, 0
  %i.awk = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br i1 %.not963, label %.lr.ph632.split, label %.lr.ph632.split.us.preheader

.lr.ph632.split.us.preheader:                     ; preds = %.lr.ph632
  %i.awl = zext nneg i32 %i.aux to i64
  %wide.trip.count848 = zext nneg i32 %i.aux to i64
  br label %.lr.ph632.split.us

.lr.ph632.split.us:                               ; preds = %.lr.ph632.split.us.preheader, %._crit_edge629.split.us.us
  %.5331630.us = phi i32 [ %i.azo, %._crit_edge629.split.us.us ], [ 0, %.lr.ph632.split.us.preheader ] ; 3 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader432.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader432.us:                                 ; preds = %.lr.ph632.split.us
  %i.awm = load i16, ptr %i.av, align 2, !tbaa !72 ; 3 uses
  %.not647 = icmp eq i16 %i.awm, 0
  br i1 %.not647, label %._crit_edge629.split.us.us, label %.lr.ph628.us

.lr.ph628.us:                                     ; preds = %.preheader432.us
  %i.awn = zext i16 %i.awm to i32
  %i.awo = load ptr, ptr %i.aw, align 8, !tbaa !73
  %i.awp = uitofp nneg i32 %.5331630.us to float
  br label %bb.hq

bb.hq:                                            ; preds = %._crit_edge624.split.us.us.us, %.lr.ph628.us
  %i.awq = phi i32 [ %i.awn, %.lr.ph628.us ], [ %i.azm, %._crit_edge624.split.us.us.us ]
  %i.awr = phi i16 [ %i.awm, %.lr.ph628.us ], [ %i.azl, %._crit_edge624.split.us.us.us ]
  %storemerge627.us.us = phi i32 [ 0, %.lr.ph628.us ], [ %i.azk, %._crit_edge624.split.us.us.us ] ; 3 uses
  %i.aws = uitofp nneg i32 %storemerge627.us.us to float
  %i.awt = fmul nnan float %i.awj, %i.aws
  %i.awu = uitofp i16 %i.awr to float
  %i.awv = fdiv float %i.awt, %i.awu              ; 2 uses
  %i.aww = fptosi float %i.awv to i32             ; 5 uses
  %i.awx = uitofp nneg i32 %i.aww to float
  %i.awy = fsub float %i.awv, %i.awx              ; 2 uses
  %i.awz = mul nuw i32 %i.awq, %.5331630.us
  %i.axa = add nuw i32 %i.awz, %storemerge627.us.us
  %i.axb = zext i32 %i.axa to i64
  %i.axc = getelementptr inbounds nuw [2 x i8], ptr %i.awo, i64 %i.axb ; 2 uses
  %i.axd = load i16, ptr %i.axc, align 2, !tbaa !74
  %i.axe = uitofp i16 %i.axd to float
  %i.axf = fmul nnan float %i.axe, 5.000000e-01   ; 3 uses
  %i.axg = icmp samesign ugt i32 %i.avb, %i.aww
  br i1 %i.axg, label %.preheader.us.us.us.preheader, label %._crit_edge624.split.us.us.us

.preheader.us.us.us.preheader:                    ; preds = %bb.hq
  %i.axh = add nuw nsw i32 %i.aww, 2
  %invariant.smin.us.us = call i32 @llvm.smin.i32(i32 %i.axh, i32 %i.avb)
  %i.axi = add nuw nsw i32 %i.aww, 1
  %i.axj = mul i32 %i.aux, %i.axi
  %i.axk = add i32 %i.axj, -1
  %i.axl = zext nneg i32 %i.aww to i64            ; 2 uses
  %i.axm = zext nneg i32 %invariant.smin.us.us to i64
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.preheader.us.us.us.preheader, %bb.hy
  %indvars.iv850 = phi i64 [ %i.axl, %.preheader.us.us.us.preheader ], [ %indvars.iv.next851, %bb.hy ] ; 3 uses
  %indvars.iv845 = phi i32 [ %i.axk, %.preheader.us.us.us.preheader ], [ %indvars.iv.next846, %bb.hy ] ; 2 uses
  %i.axn = mul nuw nsw i64 %indvars.iv850, %i.awl
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hs, %.preheader.us.us.us
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %bb.hs ], [ 0, %.preheader.us.us.us ] ; 3 uses
  %i.axo = add nuw nsw i64 %indvars.iv843, %i.axn ; 2 uses
  %i.axp = getelementptr inbounds nuw [2 x i8], ptr %i.avx, i64 %i.axo
  %i.axq = load i16, ptr %i.axp, align 2, !tbaa !74
  %i.axr = uitofp i16 %i.axq to float
  %i.axs = fcmp olt float %i.axf, %i.axr
  br i1 %i.axs, label %._crit_edge620.us.us.us.split.loop.exit, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %indvars.iv.next844 = add nuw nsw i64 %indvars.iv843, 1 ; 2 uses
  %exitcond849.not = icmp eq i64 %indvars.iv.next844, %wide.trip.count848
  br i1 %exitcond849.not, label %._crit_edge620.us.us.us, label %bb.hr, !llvm.loop !151

._crit_edge620.us.us.us.split.loop.exit:          ; preds = %bb.hr
  %i.axt = trunc nsw i64 %i.axo to i32
  %i.axu = trunc nuw nsw i64 %indvars.iv843 to i32
  br label %._crit_edge620.us.us.us

._crit_edge620.us.us.us:                          ; preds = %bb.hs, %._crit_edge620.us.us.us.split.loop.exit
  %.lcssa = phi i32 [ %i.axt, %._crit_edge620.us.us.us.split.loop.exit ], [ %indvars.iv845, %bb.hs ] ; 6 uses
  %.3318.lcssa.us.us.us = phi i32 [ %i.axu, %._crit_edge620.us.us.us.split.loop.exit ], [ %i.aux, %bb.hs ] ; 2 uses
  %i.axv = icmp eq i32 %.3318.lcssa.us.us.us, 0
  br i1 %i.axv, label %bb.hw, label %bb.ht

bb.ht:                                            ; preds = %._crit_edge620.us.us.us
  %i.axw = icmp ne i32 %.3318.lcssa.us.us.us, %i.aux
  %i.axx = icmp sgt i32 %.lcssa, 0
  %or.cond17.not431.us.us.us = and i1 %i.axw, %i.axx
  %.not362.us.us.us = icmp ult i32 %.lcssa, %i.avr
  %or.cond.us.us.us = and i1 %.not362.us.us.us, %or.cond17.not431.us.us.us
  br i1 %or.cond.us.us.us, label %bb.hu, label %bb.hw

bb.hu:                                            ; preds = %bb.ht
  %i.axy = zext nneg i32 %.lcssa to i64
  %i.axz = getelementptr inbounds nuw [2 x i8], ptr %i.avx, i64 %i.axy ; 2 uses
  %i.aya = load i16, ptr %i.axz, align 2, !tbaa !74 ; 3 uses
  %i.ayb = getelementptr i8, ptr %i.axz, i64 -2
  %i.ayc = load i16, ptr %i.ayb, align 2, !tbaa !74 ; 2 uses
  %.not363.us.us.us = icmp eq i16 %i.aya, %i.ayc
  br i1 %.not363.us.us.us, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.ayd = zext i16 %i.ayc to i32
  %i.aye = zext i16 %i.aya to i32
  %i.ayf = sub nsw i32 %i.aye, %i.ayd
  %i.ayg = uitofp i16 %i.aya to float
  %i.ayh = fsub float %i.ayg, %i.axf
  %i.ayi = sitofp i32 %i.ayf to float
  %i.ayj = fdiv float %i.ayh, %i.ayi
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu, %bb.ht, %._crit_edge620.us.us.us
  %.0304.us.us.us = phi float [ 0.000000e+00, %._crit_edge620.us.us.us ], [ 0.000000e+00, %bb.ht ], [ %i.ayj, %bb.hv ], [ 0.000000e+00, %bb.hu ] ; 2 uses
  %i.ayk = icmp ult i32 %.lcssa, %i.avr
  br i1 %i.ayk, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.ayl = call i32 @llvm.smax.i32(i32 %.lcssa, i32 1)
  %i.aym = zext nneg i32 %i.ayl to i64
  %i.ayn = getelementptr [4 x i8], ptr %i.avt, i64 %i.aym
  %i.ayo = getelementptr i8, ptr %i.ayn, i64 -4
  %i.ayp = load float, ptr %i.ayo, align 4, !tbaa !77
  %i.ayq = zext nneg i32 %.lcssa to i64
  %i.ayr = getelementptr inbounds nuw [4 x i8], ptr %i.avt, i64 %i.ayq
  %i.ays = load float, ptr %i.ayr, align 4, !tbaa !77
  %i.ayt = fsub float 1.000000e+00, %.0304.us.us.us
  %i.ayu = fmul float %i.ayt, %i.ays
  %i.ayv = call float @llvm.fmuladd.f32(float %i.ayp, float %.0304.us.us.us, float %i.ayu)
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hw, %bb.hx
  %.sink1020 = phi float [ %i.ayv, %bb.hx ], [ 0.000000e+00, %bb.hw ]
  %i.ayw = sub nsw i64 %indvars.iv850, %i.axl
  %i.ayx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ayw
  store float %.sink1020, ptr %i.ayx, align 4, !tbaa !77
  %indvars.iv.next851 = add nuw nsw i64 %indvars.iv850, 1 ; 2 uses
  %i.ayy = icmp samesign ult i64 %indvars.iv.next851, %i.axm
  %indvars.iv.next846 = add i32 %indvars.iv845, %i.aux
  br i1 %i.ayy, label %.preheader.us.us.us, label %._crit_edge624.split.us.us.us, !llvm.loop !152

._crit_edge624.split.us.us.us:                    ; preds = %bb.hy, %bb.hq
  %i.ayz = load float, ptr %i.a, align 4, !tbaa !77
  %i.aza = fsub float 1.000000e+00, %i.awy
  %i.azb = load float, ptr %i.awk, align 4, !tbaa !77
  %i.azc = fmul float %i.awy, %i.azb
  %i.azd = call float @llvm.fmuladd.f32(float %i.ayz, float %i.aza, float %i.azc)
  %i.aze = call float @llvm.fmuladd.f32(float %i.azd, float %i.awp, float %i.axf)
  %i.azf = fmul float %i.aze, 2.000000e+00
  %i.azg = fptosi float %i.azf to i32
  %i.azh = call i32 @llvm.smax.i32(i32 %i.azg, i32 0)
  %i.azi = call i32 @llvm.umin.i32(i32 %i.azh, i32 65535)
  %i.azj = trunc nuw i32 %i.azi to i16
  store i16 %i.azj, ptr %i.axc, align 2, !tbaa !74
  %i.azk = add nuw nsw i32 %storemerge627.us.us, 1 ; 2 uses
  %i.azl = load i16, ptr %i.av, align 2, !tbaa !72 ; 2 uses
  %i.azm = zext i16 %i.azl to i32                 ; 2 uses
  %i.azn = icmp samesign ult i32 %i.azk, %i.azm
  br i1 %i.azn, label %bb.hq, label %._crit_edge629.split.us.us, !llvm.loop !153

._crit_edge629.split.us.us:                       ; preds = %._crit_edge624.split.us.us.us, %.preheader432.us
  %i.azo = add nuw nsw i32 %.5331630.us, 1        ; 2 uses
  %i.azp = load i16, ptr %i.at, align 8, !tbaa !71
  %i.azq = zext i16 %i.azp to i32
  %i.azr = icmp samesign ult i32 %i.azo, %i.azq
  br i1 %i.azr, label %.lr.ph632.split.us, label %._crit_edge633, !llvm.loop !154

.lr.ph614:                                        ; preds = %bb.hn, %bb.hz
  %indvars.iv826 = phi i64 [ %indvars.iv.next827, %bb.hz ], [ 0, %bb.hn ] ; 2 uses
  %i.azs = invoke noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.hz unwind label %.loopexit.split-lp.thread973

bb.hz:                                            ; preds = %.lr.ph614
  %i.azt = getelementptr inbounds nuw [2 x i8], ptr %i.avx, i64 %indvars.iv826
  store i16 %i.azs, ptr %i.azt, align 2, !tbaa !74
  %indvars.iv.next827 = add nuw nsw i64 %indvars.iv826, 1 ; 2 uses
  %exitcond830.not = icmp eq i64 %indvars.iv.next827, %i.avu
  br i1 %exitcond830.not, label %.lr.ph614.1, label %.lr.ph614, !llvm.loop !150

.lr.ph632.split:                                  ; preds = %.lr.ph632, %._crit_edge629.split
  %.5331630 = phi i32 [ %i.bbs, %._crit_edge629.split ], [ 0, %.lr.ph632 ] ; 3 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader432 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader432:                                    ; preds = %.lr.ph632.split
  %i.azu = load i16, ptr %i.av, align 2, !tbaa !72 ; 3 uses
  %.not646 = icmp eq i16 %i.azu, 0
  br i1 %.not646, label %._crit_edge629.split, label %.lr.ph628

.lr.ph628:                                        ; preds = %.preheader432
  %i.azv = load ptr, ptr %i.aw, align 8, !tbaa !73
  %i.azw = uitofp nneg i32 %.5331630 to float
  %2 = zext i16 %i.azu to i32
  br label %bb.ia

bb.ia:                                            ; preds = %.lr.ph628, %._crit_edge624.split
  %i.azx = phi i32 [ %2, %.lr.ph628 ], [ %i.bbq, %._crit_edge624.split ]
  %i.azy = phi i16 [ %i.azu, %.lr.ph628 ], [ %i.bbp, %._crit_edge624.split ]
  %storemerge627 = phi i32 [ 0, %.lr.ph628 ], [ %i.bbo, %._crit_edge624.split ] ; 3 uses
  %i.azz = uitofp nneg i32 %storemerge627 to float
  %i.baa = fmul nnan float %i.awj, %i.azz
  %i.bab = uitofp i16 %i.azy to float
  %i.bac = fdiv float %i.baa, %i.bab              ; 2 uses
  %i.bad = fptosi float %i.bac to i32             ; 4 uses
  %i.bae = uitofp nneg i32 %i.bad to float
  %i.baf = fsub float %i.bac, %i.bae              ; 2 uses
  %i.bag = mul nuw i32 %i.azx, %.5331630
  %i.bah = add nuw i32 %i.bag, %storemerge627
  %i.bai = zext i32 %i.bah to i64
  %i.baj = getelementptr inbounds nuw [2 x i8], ptr %i.azv, i64 %i.bai ; 2 uses
  %i.bak = load i16, ptr %i.baj, align 2, !tbaa !74
  %i.bal = uitofp i16 %i.bak to float
  %i.bam = fmul nnan float %i.bal, 5.000000e-01
  %i.ban = icmp samesign ugt i32 %i.avb, %i.bad
  br i1 %i.ban, label %.preheader.lr.ph.split.split.us, label %._crit_edge624.split

.preheader.lr.ph.split.split.us:                  ; preds = %bb.ia
  %i.bao = add nuw i32 %i.bad, 2
  %invariant.smin = call i32 @llvm.smin.i32(i32 %i.bao, i32 %i.avb)
  %i.bap = load float, ptr %i.avt, align 4, !tbaa !77 ; 2 uses
  %i.baq = call float @llvm.fmuladd.f32(float %i.bap, float 0.000000e+00, float %i.bap) ; 2 uses
  %i.bar = zext nneg i32 %i.bad to i64            ; 5 uses
  %i.bas = sext i32 %invariant.smin to i64        ; 2 uses
  %i.bat = add nuw nsw i64 %i.bar, 1
  %i.bau = call i64 @llvm.smax.i64(i64 %i.bas, i64 %i.bat)
  %i.bav = sub nsw i64 %i.bau, %i.bar             ; 3 uses
  %min.iters.check1131 = icmp ult i64 %i.bav, 8
  br i1 %min.iters.check1131, label %.preheader.us625.preheader, label %vector.ph1132

vector.ph1132:                                    ; preds = %.preheader.lr.ph.split.split.us
  %n.vec1133 = and i64 %i.bav, -8                 ; 3 uses
  %i.baw = add i64 %n.vec1133, %i.bar
  %broadcast.splatinsert1134 = insertelement <4 x float> poison, float %i.baq, i64 0
  %broadcast.splat1135 = shufflevector <4 x float> %broadcast.splatinsert1134, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %vector.ph1132
  %index1137 = phi i64 [ 0, %vector.ph1132 ], [ %index.next1138, %vector.body1136 ] ; 2 uses
  %i.bax = getelementptr inbounds [4 x i8], ptr %i.a, i64 %index1137 ; 2 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 16
  store <4 x float> %broadcast.splat1135, ptr %i.bax, align 4, !tbaa !77
  store <4 x float> %broadcast.splat1135, ptr %i.bay, align 4, !tbaa !77
  %index.next1138 = add nuw i64 %index1137, 8     ; 2 uses
  %i.baz = icmp eq i64 %index.next1138, %n.vec1133
  br i1 %i.baz, label %middle.block1139, label %vector.body1136, !llvm.loop !155

middle.block1139:                                 ; preds = %vector.body1136
  %cmp.n1140 = icmp eq i64 %i.bav, %n.vec1133
  br i1 %cmp.n1140, label %._crit_edge624.split, label %.preheader.us625.preheader

.preheader.us625.preheader:                       ; preds = %.preheader.lr.ph.split.split.us, %middle.block1139
  %indvars.iv837.ph = phi i64 [ %i.bar, %.preheader.lr.ph.split.split.us ], [ %i.baw, %middle.block1139 ]
  br label %.preheader.us625

.preheader.us625:                                 ; preds = %.preheader.us625.preheader, %.preheader.us625
  %indvars.iv837 = phi i64 [ %indvars.iv.next838, %.preheader.us625 ], [ %indvars.iv837.ph, %.preheader.us625.preheader ] ; 2 uses
  %i.bba = sub nsw i64 %indvars.iv837, %i.bar
  %i.bbb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bba
  store float %i.baq, ptr %i.bbb, align 4, !tbaa !77
  %indvars.iv.next838 = add nuw nsw i64 %indvars.iv837, 1 ; 2 uses
  %i.bbc = icmp slt i64 %indvars.iv.next838, %i.bas
  br i1 %i.bbc, label %.preheader.us625, label %._crit_edge624.split, !llvm.loop !156

._crit_edge624.split:                             ; preds = %.preheader.us625, %middle.block1139, %bb.ia
  %i.bbd = load float, ptr %i.a, align 4, !tbaa !77
  %i.bbe = fsub float 1.000000e+00, %i.baf
  %i.bbf = load float, ptr %i.awk, align 4, !tbaa !77
  %i.bbg = fmul float %i.baf, %i.bbf
  %i.bbh = call float @llvm.fmuladd.f32(float %i.bbd, float %i.bbe, float %i.bbg)
  %i.bbi = call float @llvm.fmuladd.f32(float %i.bbh, float %i.azw, float %i.bam)
  %i.bbj = fmul float %i.bbi, 2.000000e+00
  %i.bbk = fptosi float %i.bbj to i32
  %i.bbl = call i32 @llvm.smax.i32(i32 %i.bbk, i32 0)
  %i.bbm = call i32 @llvm.umin.i32(i32 %i.bbl, i32 65535)
  %i.bbn = trunc nuw i32 %i.bbm to i16
  store i16 %i.bbn, ptr %i.baj, align 2, !tbaa !74
  %i.bbo = add nuw nsw i32 %storemerge627, 1      ; 2 uses
  %i.bbp = load i16, ptr %i.av, align 2, !tbaa !72 ; 2 uses
  %i.bbq = zext i16 %i.bbp to i32                 ; 2 uses
  %i.bbr = icmp samesign ult i32 %i.bbo, %i.bbq
  br i1 %i.bbr, label %bb.ia, label %._crit_edge629.split, !llvm.loop !153

._crit_edge629.split:                             ; preds = %._crit_edge624.split, %.preheader432
  %i.bbs = add nuw nsw i32 %.5331630, 1           ; 2 uses
  %i.bbt = load i16, ptr %i.at, align 8, !tbaa !71
  %i.bbu = zext i16 %i.bbt to i32
  %i.bbv = icmp samesign ult i32 %i.bbs, %i.bbu
  br i1 %i.bbv, label %.lr.ph632.split, label %._crit_edge633, !llvm.loop !154

._crit_edge633:                                   ; preds = %._crit_edge629.split.us.us, %._crit_edge629.split, %.loopexit435.1
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.avt)
          to label %bb.id unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ib:                                            ; preds = %bb.hj
  %i.bbw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.if unwind label %bb.ih

bb.ic:                                            ; preds = %.loopexit.split-lp.thread, %bb.hj, %.loopexit.split-lp
  invoke void @__cxa_end_catch()
          to label %._crit_edge897 unwind label %bb.t

._crit_edge897:                                   ; preds = %bb.ic
  %.pre = load ptr, ptr %1, align 8, !tbaa !164
  br label %bb.id

bb.id:                                            ; preds = %._crit_edge897, %._crit_edge633, %.loopexit450
  %i.bbx = phi ptr [ %i.ati, %.loopexit450 ], [ %.pre, %._crit_edge897 ], [ %i.ati, %._crit_edge633 ] ; 4 uses
  %.1334 = phi i32 [ 0, %.loopexit450 ], [ -100010, %._crit_edge897 ], [ 0, %._crit_edge633 ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.bbx, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.bby = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.bbx, ptr %i.bby, align 8, !tbaa !162
  %i.bbz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bca = load ptr, ptr %i.bbz, align 8, !tbaa !163
  %i.bcb = ptrtoint ptr %i.bca to i64
  %i.bcc = ptrtoint ptr %i.bbx to i64
  %i.bcd = sub i64 %i.bcb, %i.bcc
  call void @_ZdlPvm(ptr noundef nonnull %i.bbx, i64 noundef %i.bcd) #24
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.id, %bb.ie
  %.1334982 = phi i32 [ %.1334, %bb.ie ], [ %.1334, %bb.id ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.1334982

bb.if:                                            ; preds = %bb.t, %bb.ib
  %.pn383.pn = phi { ptr, i32 } [ %i.bbw, %bb.ib ], [ %i.ha, %bb.t ]
  %i.bce = load ptr, ptr %1, align 8, !tbaa !164  ; 4 uses
  %.not.i.i403 = icmp eq ptr %i.bce, null
  br i1 %.not.i.i403, label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit404, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.bcf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.bce, ptr %i.bcf, align 8, !tbaa !162
  %i.bcg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bch = load ptr, ptr %i.bcg, align 8, !tbaa !163
  %i.bci = ptrtoint ptr %i.bch to i64
  %i.bcj = ptrtoint ptr %i.bce to i64
  %i.bck = sub i64 %i.bci, %i.bcj
  call void @_ZdlPvm(ptr noundef nonnull %i.bce, i64 noundef %i.bck) #24
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit404

_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit404: ; preds = %bb.if, %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %.pn383.pn

bb.ih:                                            ; preds = %bb.ib
  %i.bcl = landingpad { ptr, i32 }
          catch ptr null
  %i.bcm = extractvalue { ptr, i32 } %i.bcl, 0
  call void @__clang_call_terminate(ptr %i.bcm) #25
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare i32 @__gxx_personality_v0(...)

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

declare void @_ZN6LibRaw12cubic_splineEPKiS1_i(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
end_hunk_0
