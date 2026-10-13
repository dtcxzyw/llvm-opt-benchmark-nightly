Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/locallaplacian?download=true
inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 58
begin_hunk_0_@local_laplacian_internal:bb.a
  %i.asy = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.asx ; 3 uses
  %i.asz = load float, ptr %i.asy, align 4, !tbaa !21
  %i.ata = sext i32 %i.ast to i64
  %i.atb = getelementptr [4 x i8], ptr %i.aja, i64 %i.ata ; 3 uses
  %i.atc = getelementptr i8, ptr %i.atb, i64 -4
  %i.atd = load float, ptr %i.atc, align 4, !tbaa !21
  %i.ate = fadd reassoc nsz arcp contract afn float %i.atd, %i.asz
  %i.atf = load float, ptr %i.atb, align 4, !tbaa !21
  %i.atg = fmul reassoc nsz arcp contract afn float %i.atf, 6.000000e+00
  %i.ath = fadd reassoc nsz arcp contract afn float %i.ate, %i.atg
  %i.ati = getelementptr i8, ptr %i.atb, i64 4
  %i.atj = load float, ptr %i.ati, align 4, !tbaa !21
  %i.atk = fadd reassoc nsz arcp contract afn float %i.ath, %i.atj
  %i.atl = add nsw i32 %i.ast, %i.aji
  %i.atm = sext i32 %i.atl to i64
  %i.atn = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.atm ; 2 uses
  %i.ato = load float, ptr %i.atn, align 4, !tbaa !21
  %i.atp = fadd reassoc nsz arcp contract afn float %i.atk, %i.ato
  %i.atq = fmul reassoc nsz arcp contract afn float %i.atp, 6.000000e+00
  %i.atr = getelementptr i8, ptr %i.asy, i64 -4
  %i.ats = load float, ptr %i.atr, align 4, !tbaa !21
  %i.att = fadd reassoc nsz arcp contract afn float %i.ats, %i.atq
  %i.atu = getelementptr i8, ptr %i.asy, i64 4
  %i.atv = load float, ptr %i.atu, align 4, !tbaa !21
  %i.atw = add i32 %i.ast, %i.ajh
  %i.atx = sext i32 %i.atw to i64
  %i.aty = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.atx
  %i.atz = load float, ptr %i.aty, align 4, !tbaa !21
  %i.aua = getelementptr i8, ptr %i.atn, i64 4
  %i.aub = load float, ptr %i.aua, align 4, !tbaa !21
  %i.auc = fadd reassoc nsz arcp contract afn float %i.atz, %i.atv
  %i.aud = fadd reassoc nsz arcp contract afn float %i.auc, %i.att
  %i.aue = fadd reassoc nsz arcp contract afn float %i.aud, %i.aub
  %i.auf = fmul reassoc nsz arcp contract afn float %i.aue, 1.562500e-02
  br label %ll_expand_gaussian.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.aug = sext i32 %i.ast to i64
  %i.auh = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.aug ; 2 uses
  %i.aui = load float, ptr %i.auh, align 4, !tbaa !21
  %i.auj = getelementptr i8, ptr %i.auh, i64 4
  %i.auk = load float, ptr %i.auj, align 4, !tbaa !21
  %i.aul = fadd reassoc nsz arcp contract afn float %i.auk, %i.aui
  %i.aum = fpext reassoc nsz arcp contract afn float %i.aul to double
  %.reass21.i = fmul reassoc nsz arcp contract afn double %i.aum, 3.750000e-01
  %i.aun = sub nsw i32 %i.ast, %i.aji
  %i.auo = sext i32 %i.aun to i64
  %i.aup = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.auo
  %i.auq = add nsw i32 %i.ast, %i.aji
  %i.aur = sext i32 %i.auq to i64
  %i.aus = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.aur
  %i.aut = load <2 x float>, ptr %i.aup, align 4, !tbaa !21
  %i.auu = load <2 x float>, ptr %i.aus, align 4, !tbaa !21
  %i.auv = shufflevector <2 x float> %i.auu, <2 x float> %i.aut, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.auw = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.auv)
  %i.aux = fpext reassoc nsz arcp contract afn float %i.auw to double
  %.reass22.i = fmul reassoc nsz arcp contract afn double %i.aux, 6.250000e-02
  %i.auy = fadd reassoc nsz arcp contract afn double %.reass22.i, %.reass21.i
  %i.auz = fptrunc reassoc nsz arcp contract afn double %i.auy to float
  br label %ll_expand_gaussian.exit.i

bb.am:                                            ; preds = %bb.aj
  %i.ava = sext i32 %i.ast to i64
  %i.avb = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.ava ; 2 uses
  %i.avc = add nsw i32 %i.ast, %i.aji
  %i.avd = sext i32 %i.avc to i64
  %i.ave = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.avd
  %i.avf = getelementptr i8, ptr %i.avb, i64 -4
  %i.avg = load float, ptr %i.avf, align 4, !tbaa !21
  %i.avh = add i32 %i.ast, %i.ajh
  %i.avi = sext i32 %i.avh to i64
  %i.avj = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.avi
  %i.avk = load float, ptr %i.avj, align 4, !tbaa !21
  %i.avl = load <2 x float>, ptr %i.avb, align 4, !tbaa !21
  %i.avm = load <2 x float>, ptr %i.ave, align 4, !tbaa !21
  %i.avn = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.avk, i64 1
  %i.avo = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.avg, i64 1
  %i.avp = fadd reassoc nsz arcp contract afn <2 x float> %i.avm, %i.avn
  %i.avq = fadd reassoc nsz arcp contract afn <2 x float> %i.avo, %i.avl
  %i.avr = fadd reassoc nsz arcp contract afn <2 x float> %i.avp, %i.avq
  %i.avs = fpext <2 x float> %i.avr to <2 x double> ; 2 uses
  %i.avt = extractelement <2 x double> %i.avs, i64 0
  %.reass.i = fmul reassoc nsz arcp contract afn double %i.avt, 3.750000e-01
  %i.avu = extractelement <2 x double> %i.avs, i64 1
  %.reass20.i = fmul reassoc nsz arcp contract afn double %i.avu, 6.250000e-02
  %i.avv = fadd reassoc nsz arcp contract afn double %.reass20.i, %.reass.i
  %i.avw = fptrunc reassoc nsz arcp contract afn double %i.avv to float
  br label %ll_expand_gaussian.exit.i

default.unreachable:                              ; preds = %bb.aj
  unreachable

bb.an:                                            ; preds = %bb.aj
  %i.avx = sext i32 %i.ast to i64
  %i.avy = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.avx
  %i.avz = add nsw i32 %i.ast, %i.aji
  %i.awa = sext i32 %i.avz to i64
  %i.awb = getelementptr inbounds [4 x i8], ptr %i.aja, i64 %i.awa
  %i.awc = load <2 x float>, ptr %i.avy, align 4, !tbaa !21
  %i.awd = load <2 x float>, ptr %i.awb, align 4, !tbaa !21
  %i.awe = shufflevector <2 x float> %i.awd, <2 x float> %i.awc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.awf = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.awe)
  %i.awg = fmul reassoc nsz arcp contract afn float %i.awf, 2.500000e-01
  br label %ll_expand_gaussian.exit.i

ll_expand_gaussian.exit.i:                        ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %.0.i.i = phi nsz float [ %i.auf, %bb.ak ], [ %i.auz, %bb.al ], [ %i.avw, %bb.am ], [ %i.awg, %bb.an ]
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store float %.0.i.i, ptr %gep.i, align 4, !tbaa !21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i795 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i795, label %._crit_edge.i, label %bb.aj

gauss_expand.exit:                                ; preds = %.loopexit.i.i, %bb.ai
  %i.awh = mul nsw i32 %.pre-phi, %.05.lcssa.i775822
  %i.awi = sext i32 %i.awh to i64
  %i.awj = getelementptr inbounds [4 x i8], ptr %i.ajc, i64 %i.awi
  %i.awk = getelementptr inbounds [4 x i8], ptr %i.ajc, i64 %i.asl
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.awj, ptr align 4 %i.awk, i64 %i.ash, i1 false)
  %i.awl = icmp sgt i32 %.05.lcssa.i783, 0
  %i.awm = icmp sgt i32 %.05.lcssa.i775822, 0
  %or.cond1143 = select i1 %i.awl, i1 %i.awm, i1 false
  br i1 %or.cond1143, label %.preheader846.lr.ph.split, label %._crit_edge899.split

.preheader846.lr.ph.split:                        ; preds = %gauss_expand.exit
  %i.awn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv1041
  %i.awo = load ptr, ptr %i.awn, align 8, !tbaa !17
  %i.awp = zext nneg i32 %.05.lcssa.i775822 to i64 ; 2 uses
  %wide.trip.count1039 = zext nneg i32 %.05.lcssa.i783 to i64
  br label %.preheader846

.preheader846:                                    ; preds = %.preheader846.lr.ph.split, %._crit_edge897
  %indvars.iv1036 = phi i64 [ 0, %.preheader846.lr.ph.split ], [ %indvars.iv.next1037, %._crit_edge897 ] ; 3 uses
  %i.awq = mul nuw nsw i64 %indvars.iv1036, %i.awp
  %i.awr = trunc nuw nsw i64 %indvars.iv1036 to i32 ; 2 uses
  br label %bb.ao

._crit_edge899.split:                             ; preds = %._crit_edge897, %gauss_expand.exit
  %indvars.iv.next1042 = add nsw i64 %indvars.iv1041, -1
  %i.aws = icmp sgt i64 %indvars.iv1041, 0
  %indvar.next1666 = add i64 %indvar1665, 1
  br i1 %i.aws, label %bb.ah, label %.preheader844.preheader

._crit_edge897:                                   ; preds = %.critedge
  %indvars.iv.next1037 = add nuw nsw i64 %indvars.iv1036, 1 ; 2 uses
  %exitcond1040.not = icmp eq i64 %indvars.iv.next1037, %wide.trip.count1039
  br i1 %exitcond1040.not, label %._crit_edge899.split, label %.preheader846

bb.ao:                                            ; preds = %.preheader846, %.critedge
  %indvars.iv1031 = phi i64 [ 0, %.preheader846 ], [ %indvars.iv.next1032, %.critedge ] ; 3 uses
  %i.awt = add nuw nsw i64 %indvars.iv1031, %i.awq ; 2 uses
  %i.awu = getelementptr inbounds nuw [4 x i8], ptr %i.awo, i64 %i.awt
  %i.awv = load float, ptr %i.awu, align 4, !tbaa !21 ; 5 uses
  %i.aww = fcmp reassoc nsz arcp contract afn ugt float %.pre1075, %i.awv
  br i1 %i.aww, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.awx = fcmp reassoc nsz arcp contract afn ugt float %i.ahr, %i.awv
  br i1 %i.awx, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.awy = fcmp reassoc nsz arcp contract afn ugt float %i.ahs, %i.awv
  br i1 %i.awy, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.awz = fcmp reassoc nsz arcp contract afn ugt float %i.aht, %i.awv
  %spec.select1144 = select i1 %i.awz, i32 4, i32 5
  br label %.critedge

.critedge:                                        ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.0529.lcssa = phi i32 [ 3, %bb.aq ], [ 1, %bb.ao ], [ 2, %bb.ap ], [ %spec.select1144, %bb.ar ] ; 2 uses
  %i.axa = add nsw i32 %.0529.lcssa, -1
  %i.axb = zext nneg i32 %i.axa to i64            ; 2 uses
  %i.axc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.axb
  %i.axd = load float, ptr %i.axc, align 4, !tbaa !21 ; 2 uses
  %i.axe = fsub reassoc nsz arcp contract afn float %i.awv, %i.axd
  %i.axf = zext nneg i32 %.0529.lcssa to i64      ; 2 uses
  %i.axg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.axf
  %i.axh = load float, ptr %i.axg, align 4, !tbaa !21
  %i.axi = fsub reassoc nsz arcp contract afn float %i.axh, %i.axd
  %i.axj = fdiv reassoc nsz arcp contract afn float %i.axe, %i.axi ; 3 uses
  %i.axk = fcmp reassoc nsz arcp contract afn ogt float %i.axj, 0.000000e+00
  %i.axl = fcmp reassoc nsz arcp contract afn olt float %i.axj, 1.000000e+00
  %spec.select644 = select reassoc nsz arcp contract afn i1 %i.axl, float %i.axj, float 1.000000e+00
  %i.axm = select reassoc nsz arcp contract afn i1 %i.axk, float %spec.select644, float 0.000000e+00
  %i.axn = getelementptr inbounds nuw [240 x i8], ptr %i.h, i64 %i.axb ; 2 uses
  %i.axo = getelementptr inbounds nuw [8 x i8], ptr %i.axn, i64 %i.aiy
  %i.axp = load ptr, ptr %i.axo, align 8, !tbaa !17
  %i.axq = getelementptr inbounds nuw [8 x i8], ptr %i.axn, i64 %indvars.iv1041
  %i.axr = load ptr, ptr %i.axq, align 8, !tbaa !17
  %i.axs = trunc nuw nsw i64 %indvars.iv1031 to i32 ; 2 uses
  %i.axt = tail call reassoc nsz arcp contract afn fastcc float @ll_laplacian(ptr noundef %i.axp, ptr noundef %i.axr, i32 noundef %i.axs, i32 noundef %i.awr, i32 noundef %.05.lcssa.i775822, i32 noundef %.05.lcssa.i783) ; 2 uses
  %i.axu = getelementptr inbounds nuw [240 x i8], ptr %i.h, i64 %i.axf ; 2 uses
  %i.axv = getelementptr inbounds nuw [8 x i8], ptr %i.axu, i64 %i.aiy
  %i.axw = load ptr, ptr %i.axv, align 8, !tbaa !17
  %i.axx = getelementptr inbounds nuw [8 x i8], ptr %i.axu, i64 %indvars.iv1041
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !17
  %i.axz = tail call reassoc nsz arcp contract afn fastcc float @ll_laplacian(ptr noundef %i.axw, ptr noundef %i.axy, i32 noundef %i.axs, i32 noundef %i.awr, i32 noundef %.05.lcssa.i775822, i32 noundef %.05.lcssa.i783)
  %i.aya = fsub reassoc nsz arcp contract afn float %i.axz, %i.axt
  %i.ayb = fmul reassoc nsz arcp contract afn float %i.aya, %i.axm
  %i.ayc = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %i.awt ; 2 uses
  %i.ayd = load float, ptr %i.ayc, align 4, !tbaa !21
  %9 = fadd reassoc nsz arcp contract afn float %i.ayd, %i.axt
  %i.aye = fadd reassoc nsz arcp contract afn float %9, %i.ayb
  store float %i.aye, ptr %i.ayc, align 4, !tbaa !21
  %indvars.iv.next1032 = add nuw nsw i64 %indvars.iv1031, 1 ; 2 uses
  %exitcond1035.not = icmp eq i64 %indvars.iv.next1032, %i.awp
  br i1 %exitcond1035.not, label %._crit_edge897, label %bb.ao

.preheader844:                                    ; preds = %.preheader844.preheader, %._crit_edge905
  %indvars.iv1049 = phi i64 [ 0, %.preheader844.preheader ], [ %indvars.iv.next1050, %._crit_edge905 ] ; 3 uses
  %i.ayf = add nuw nsw i64 %indvars.iv1049, %i.ahv
  %i.ayg = mul nsw i64 %i.ayf, %i.ahw
  %i.ayh = mul nuw nsw i64 %indvars.iv1049, %i.ahx ; 4 uses
  %gep1142 = getelementptr [4 x i8], ptr %invariant.gep1141, i64 %i.ayg ; 4 uses
  %brmerge1771 = select i1 %min.iters.check1303, i1 true, i1 %conflict.rdx
  br i1 %brmerge1771, label %scalar.ph.preheader, label %vector.ph1304

scalar.ph.preheader:                              ; preds = %.preheader844, %vector.body1308
  %indvars.iv1044.ph = phi i64 [ %n.vec1305, %vector.body1308 ], [ 0, %.preheader844 ] ; 6 uses
  %i.ayi = sub nsw i64 %wide.trip.count1047, %indvars.iv1044.ph
  %xtraiter1696 = and i64 %i.ayi, 1
  %lcmp.mod1697.not = icmp eq i64 %xtraiter1696, 0
  br i1 %lcmp.mod1697.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ayj = getelementptr [4 x i8], ptr %gep1142, i64 %indvars.iv1044.ph
  %i.ayk = load float, ptr %i.ayj, align 4, !tbaa !21
  %i.ayl = fmul reassoc nsz arcp contract afn float %i.ayk, 1.000000e+02
  %i.aym = add nuw nsw i64 %indvars.iv1044.ph, %i.ayh
  %i.ayn = shl nsw i64 %i.aym, 2                  ; 3 uses
  %i.ayo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ayn
  store float %i.ayl, ptr %i.ayo, align 4, !tbaa !21
  %i.ayp = or disjoint i64 %i.ayn, 1              ; 2 uses
  %i.ayq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ayp
  %i.ayr = load float, ptr %i.ayq, align 4, !tbaa !21
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ayp
  store float %i.ayr, ptr %i.ays, align 4, !tbaa !21
  %i.ayt = or disjoint i64 %i.ayn, 2              ; 2 uses
  %i.ayu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ayt
  %i.ayv = load float, ptr %i.ayu, align 4, !tbaa !21
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ayt
  store float %i.ayv, ptr %i.ayw, align 4, !tbaa !21
  %indvars.iv.next1045.prol = add nuw nsw i64 %indvars.iv1044.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv1044.unr = phi i64 [ %indvars.iv1044.ph, %scalar.ph.preheader ], [ %indvars.iv.next1045.prol, %scalar.ph.prol ]
  %i.ayx = icmp eq i64 %indvars.iv1044.ph, %i.ain
  br i1 %i.ayx, label %._crit_edge905, label %scalar.ph

vector.ph1304:                                    ; preds = %.preheader844
  %broadcast.splatinsert1306 = insertelement <4 x i64> poison, i64 %i.ayh, i64 0
  %broadcast.splat1307 = shufflevector <4 x i64> %broadcast.splatinsert1306, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1308

vector.body1308:                                  ; preds = %vector.body1308, %vector.ph1304
  %index1309 = phi i64 [ 0, %vector.ph1304 ], [ %index.next1316, %vector.body1308 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1304 ], [ %vec.ind.next, %vector.body1308 ] ; 2 uses
  %i.ayy = getelementptr [4 x i8], ptr %gep1142, i64 %index1309
  %wide.load1310 = load <4 x float>, ptr %i.ayy, align 4, !tbaa !21, !alias.scope !160
  %i.ayz = fmul reassoc nsz arcp contract afn <4 x float> %wide.load1310, splat (float 1.000000e+02)
  %i.aza = add nuw nsw <4 x i64> %vec.ind, %broadcast.splat1307
  %i.azb = shl nsw <4 x i64> %i.aza, splat (i64 2) ; 3 uses
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %1, <4 x i64> %i.azb
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ayz, <4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !21, !alias.scope !161, !noalias !162
  %i.azc = or disjoint <4 x i64> %i.azb, splat (i64 1) ; 2 uses
  %i.azd = extractelement <4 x i64> %i.azc, i64 0
  %i.aze = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.azd
  %wide.vec1311 = load <16 x float>, ptr %i.aze, align 4, !tbaa !21, !alias.scope !163 ; 2 uses
  %strided.vec1312 = shufflevector <16 x float> %wide.vec1311, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1313 = shufflevector <16 x float> %wide.vec1311, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %wide.gep1314 = getelementptr inbounds nuw [4 x i8], ptr %1, <4 x i64> %i.azc
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec1312, <4 x ptr> align 4 %wide.gep1314, <4 x i1> splat (i1 true)), !tbaa !21, !alias.scope !161, !noalias !162
  %i.azf = or disjoint <4 x i64> %i.azb, splat (i64 2)
  %wide.gep1315 = getelementptr inbounds nuw [4 x i8], ptr %1, <4 x i64> %i.azf
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec1313, <4 x ptr> align 4 %wide.gep1315, <4 x i1> splat (i1 true)), !tbaa !21, !alias.scope !161, !noalias !162
  %index.next1316 = add nuw i64 %index1309, 4     ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.azg = icmp eq i64 %index.next1316, %n.vec1305
  br i1 %i.azg, label %scalar.ph.preheader, label %vector.body1308, !llvm.loop !102

._crit_edge907.split:                             ; preds = %._crit_edge905
  br i1 %.not, label %.thread825.peel, label %bb.as

._crit_edge905:                                   ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %indvars.iv.next1050 = add nuw nsw i64 %indvars.iv1049, 1 ; 2 uses
  %exitcond1053.not = icmp eq i64 %indvars.iv.next1050, %wide.trip.count1052
  br i1 %exitcond1053.not, label %._crit_edge907.split, label %.preheader844

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045.1, %scalar.ph ], [ %indvars.iv1044.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.azh = getelementptr [4 x i8], ptr %gep1142, i64 %indvars.iv1044
  %i.azi = load float, ptr %i.azh, align 4, !tbaa !21
  %i.azj = fmul reassoc nsz arcp contract afn float %i.azi, 1.000000e+02
  %i.azk = add nuw nsw i64 %indvars.iv1044, %i.ayh
  %i.azl = shl nsw i64 %i.azk, 2                  ; 3 uses
  %i.azm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.azl
  store float %i.azj, ptr %i.azm, align 4, !tbaa !21
  %i.azn = or disjoint i64 %i.azl, 1              ; 2 uses
  %i.azo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.azn
  %i.azp = load float, ptr %i.azo, align 4, !tbaa !21
  %i.azq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.azn
  store float %i.azp, ptr %i.azq, align 4, !tbaa !21
  %i.azr = or disjoint i64 %i.azl, 2              ; 2 uses
  %i.azs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.azr
  %i.azt = load float, ptr %i.azs, align 4, !tbaa !21
  %i.azu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.azr
  store float %i.azt, ptr %i.azu, align 4, !tbaa !21
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 1 ; 2 uses
  %i.azv = getelementptr [4 x i8], ptr %gep1142, i64 %indvars.iv.next1045
  %i.azw = load float, ptr %i.azv, align 4, !tbaa !21
  %i.azx = fmul reassoc nsz arcp contract afn float %i.azw, 1.000000e+02
  %i.azy = add nuw nsw i64 %indvars.iv.next1045, %i.ayh
  %i.azz = shl nsw i64 %i.azy, 2                  ; 3 uses
  %i.baa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.azz
  store float %i.azx, ptr %i.baa, align 4, !tbaa !21
  %i.bab = or disjoint i64 %i.azz, 1              ; 2 uses
  %i.bac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bab
  %i.bad = load float, ptr %i.bac, align 4, !tbaa !21
  %i.bae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bab
  store float %i.bad, ptr %i.bae, align 4, !tbaa !21
  %i.baf = or disjoint i64 %i.azz, 2              ; 2 uses
  %i.bag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.baf
  %i.bah = load float, ptr %i.bag, align 4, !tbaa !21
  %i.bai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.baf
  store float %i.bah, ptr %i.bai, align 4, !tbaa !21
  %indvars.iv.next1045.1 = add nuw nsw i64 %indvars.iv1044, 2 ; 2 uses
  %exitcond1048.not.1 = icmp eq i64 %indvars.iv.next1045.1, %wide.trip.count1047
  br i1 %exitcond1048.not.1, label %._crit_edge905, label %scalar.ph, !llvm.loop !103

bb.as:                                            ; preds = %._crit_edge907.split
  %i.baj = load i32, ptr %8, align 8, !tbaa !18
  %i.bak = icmp eq i32 %i.baj, 1
  br i1 %i.bak, label %.lr.ph910, label %.thread809.thread.thread

.lr.ph910:                                        ; preds = %bb.as
  %i.bal = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %storemerge, ptr %i.bal, align 8, !tbaa !15
  %i.bam = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %2, ptr %i.bam, align 8, !tbaa !111
  %i.ban = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %3, ptr %i.ban, align 4, !tbaa !164
  %i.bao = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.pre, ptr %i.bao, align 8, !tbaa !112
  %i.bap = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 %.pre1074, ptr %i.bap, align 4, !tbaa !113
  %i.baq = getelementptr inbounds nuw i8, ptr %8, i64 288
  store i32 %i.m, ptr %i.baq, align 8, !tbaa !16
  %i.bar = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bas = tail call i32 @llvm.umax.i32(i32 %i.m, i32 1)
  %i.bat = shl nuw nsw i32 %i.bas, 3
  %i.bau = zext nneg i32 %i.bat to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bar, ptr noundef nonnull align 16 dereferenceable(1) %i.f, i64 %i.bau, i1 false), !tbaa !17
  br label %.thread809.thread

.thread809:                                       ; preds = %vec.epilog.vector.body1342, %.lr.ph912.prol.loopexit, %.lr.ph912, %middle.block1333
  br i1 %.not, label %.thread825.peel, label %.thread809.thread

.thread809.thread:                                ; preds = %.lr.ph910, %.thread809
  %.pr1103 = load i32, ptr %8, align 8, !tbaa !18
  %.not1100 = icmp eq i32 %.pr1103, 1
  br i1 %.not1100, label %.peel.next, label %.thread809.thread.thread

.thread809.thread.thread:                         ; preds = %bb.as, %.thread809.thread
  %i.bav = load ptr, ptr %i.e, align 16, !tbaa !17
  tail call void @free(ptr noundef %i.bav) #14
  %.pr.peel = load i32, ptr %8, align 8, !tbaa !18
  %.not627.peel = icmp eq i32 %.pr.peel, 1
  br i1 %.not627.peel, label %.peel.next, label %bb.at

.thread825.peel:                                  ; preds = %._crit_edge907.split, %.thread809
  %i.baw = load ptr, ptr %i.e, align 16, !tbaa !17
  tail call void @free(ptr noundef %i.baw) #14
  br label %bb.at

bb.at:                                            ; preds = %.thread825.peel, %.thread809.thread.thread
  %i.bax = load ptr, ptr %i.f, align 16, !tbaa !17
  tail call void @free(ptr noundef %i.bax) #14
  br label %.peel.next

.peel.next:                                       ; preds = %.thread809.thread, %.thread809.thread.thread, %bb.at
  %i.bay = load ptr, ptr %i.h, align 16, !tbaa !17
  tail call void @free(ptr noundef %i.bay) #14
  %gep.1.peel = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.baz = load ptr, ptr %gep.1.peel, align 16, !tbaa !17
  tail call void @free(ptr noundef %i.baz) #14
  %gep.2.peel = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.bba = load ptr, ptr %gep.2.peel, align 16, !tbaa !17
  tail call void @free(ptr noundef %i.bba) #14
  %gep.3.peel = getelementptr inbounds nuw i8, ptr %i.h, i64 720
  %i.bbb = load ptr, ptr %gep.3.peel, align 16, !tbaa !17
  tail call void @free(ptr noundef %i.bbb) #14
  %gep.4.peel = getelementptr inbounds nuw i8, ptr %i.h, i64 960
  %i.bbc = load ptr, ptr %gep.4.peel, align 16, !tbaa !17
  tail call void @free(ptr noundef %i.bbc) #14
  %gep.5.peel = getelementptr inbounds nuw i8, ptr %i.h, i64 1200
  %i.bbd = load ptr, ptr %gep.5.peel, align 16, !tbaa !17
  tail call void @free(ptr noundef %i.bbd) #14
  br label %bb.au

.loopexit1067:                                    ; preds = %.thread826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  br label %.loopexit

bb.au:                                            ; preds = %.peel.next, %.thread826
  %indvars.iv1062 = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next1063, %.thread826 ] ; 4 uses
  %i.bbe = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv1062
  %i.bbf = load ptr, ptr %i.bbe, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bbf) #14
  br i1 %.not, label %.thread825, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.pr = load i32, ptr %8, align 8, !tbaa !18
  %.not627 = icmp eq i32 %.pr, 1
  br i1 %.not627, label %.thread826, label %.thread825

.thread825:                                       ; preds = %bb.au, %bb.av
  %i.bbg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv1062
  %i.bbh = load ptr, ptr %i.bbg, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bbh) #14
  br label %.thread826

.thread826:                                       ; preds = %.thread825, %bb.av
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1062 ; 6 uses
  %i.bbi = load ptr, ptr %invariant.gep, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bbi) #14
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 240
  %i.bbj = load ptr, ptr %gep.1, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bbj) #14
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 480
  %i.bbk = load ptr, ptr %gep.2, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bbk) #14
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 720
  %i.bbl = load ptr, ptr %gep.3, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bbl) #14
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 960
  %i.bbm = load ptr, ptr %gep.4, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bbm) #14
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1200
  %i.bbn = load ptr, ptr %gep.5, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bbn) #14
  %indvars.iv.next1063 = add nuw nsw i64 %indvars.iv1062, 1 ; 2 uses
  %exitcond1065.not = icmp eq i64 %indvars.iv.next1063, 30
  br i1 %exitcond1065.not, label %.loopexit1067, label %bb.au, !llvm.loop !104

.loopexit:                                        ; preds = %vec.epilog.vector.body1373, %.lr.ph918.prol.loopexit, %.lr.ph918, %middle.block1364, %.loopexit1067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.aw

bb.aw:                                            ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @apply_curve(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = sub i32 %3, %4                           ; 10 uses
  %i.d = icmp ult i32 %4, %i.c
  br i1 %i.d, label %.lr.ph66, label %._crit_edge67

.lr.ph66:                                         ; preds = %bb.a
  %i.e = zext i32 %4 to i64                       ; 30 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  %i.f = sub i32 %2, %4                           ; 6 uses
  %i.g = icmp ult i32 %4, %i.f
  %i.h = fmul reassoc nsz arcp contract afn float %6, 2.000000e+00 ; 5 uses
  %i.i = fmul reassoc nsz arcp contract afn float %6, -2.000000e+00 ; 2 uses
  %i.j = fmul reassoc nsz arcp contract afn float %8, %6
  %i.k = fadd reassoc nsz arcp contract afn float %i.j, %6
  %i.l = fneg reassoc nsz arcp contract afn float %i.k ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn float %7, %6
  %i.n = fsub reassoc nsz arcp contract afn float %i.m, %6 ; 2 uses
  %i.o = fsub reassoc nsz arcp contract afn float %5, %6 ; 2 uses
  %i.p = fadd reassoc nsz arcp contract afn float %6, %5 ; 2 uses
  %.not = icmp eq i32 %4, 0                       ; 3 uses
  %i.q = icmp ult i32 %i.f, %2                    ; 2 uses
  %i.r = add i32 %i.f, -1
  %i.s = zext i32 %i.r to i64                     ; 3 uses
  br i1 %i.g, label %.lr.ph.us.preheader, label %.lr.ph66.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph66
  %i.t = fmul reassoc nsz arcp contract afn float %6, f0x3EAAAAAB
  %i.u = fmul reassoc nsz arcp contract afn float %i.t, %i.h ; 2 uses
  %i.v = sext i32 %i.f to i64                     ; 5 uses
  %wide.trip.count122 = zext i32 %i.c to i64
  %i.w = add i32 %4, -1                           ; 3 uses
  %i.x = zext i32 %i.w to i64
  %i.y = add nuw nsw i64 %i.x, 1                  ; 5 uses
  %i.z = shl i32 %4, 1
  %i.aa = xor i32 %i.z, -1
  %i.ab = add i32 %2, %i.aa                       ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check288 = icmp ult i32 %i.ab, 7
  %i.ae = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ae, -32
  %or.cond = or i1 %min.iters.check288, %diff.check
  %n.vec290 = and i64 %i.ad, 8589934584           ; 4 uses
  %i.af = trunc i64 %n.vec290 to i32
  %i.ag = add i32 %4, %i.af
  %i.ah = shl nuw nsw i64 %n.vec290, 2            ; 2 uses
  %broadcast.splatinsert291 = insertelement <8 x float> poison, float %5, i64 0
  %broadcast.splat292 = shufflevector <8 x float> %broadcast.splatinsert291, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert293 = insertelement <8 x float> poison, float %i.h, i64 0
  %broadcast.splat294 = shufflevector <8 x float> %broadcast.splatinsert293, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert295 = insertelement <8 x float> poison, float %i.i, i64 0
  %broadcast.splat296 = shufflevector <8 x float> %broadcast.splatinsert295, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert297 = insertelement <8 x float> poison, float %6, i64 0
  %broadcast.splat298 = shufflevector <8 x float> %broadcast.splatinsert297, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert299 = insertelement <8 x float> poison, float %i.l, i64 0
  %broadcast.splat300 = shufflevector <8 x float> %broadcast.splatinsert299, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert301 = insertelement <8 x float> poison, float %i.n, i64 0
  %broadcast.splat302 = shufflevector <8 x float> %broadcast.splatinsert301, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert303 = insertelement <8 x float> poison, float %8, i64 0
  %broadcast.splat304 = shufflevector <8 x float> %broadcast.splatinsert303, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert305 = insertelement <8 x float> poison, float %i.o, i64 0
  %broadcast.splat306 = shufflevector <8 x float> %broadcast.splatinsert305, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert307 = insertelement <8 x float> poison, float %7, i64 0
  %broadcast.splat308 = shufflevector <8 x float> %broadcast.splatinsert307, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert309 = insertelement <8 x float> poison, float %i.p, i64 0
  %broadcast.splat310 = shufflevector <8 x float> %broadcast.splatinsert309, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert311 = insertelement <8 x float> poison, float %9, i64 0
  %broadcast.splat312 = shufflevector <8 x float> %broadcast.splatinsert311, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert313 = insertelement <8 x float> poison, float %i.u, i64 0
  %broadcast.splat314 = shufflevector <8 x float> %broadcast.splatinsert313, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ai = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat298
  %i.aj = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat298
  %i.ak = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat314
  %cmp.n322 = icmp eq i64 %i.ad, %n.vec290
  %i.al = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %6
  %i.am = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %6
  %i.an = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.u
  %min.iters.check261 = icmp ult i32 %4, 4
  %min.iters.check263 = icmp ult i32 %4, 32
  %i.ao = and i64 %i.e, 28
  %n.vec265 = and i64 %i.e, 4294967264            ; 4 uses
  %cmp.n272 = icmp eq i64 %n.vec265, %i.e
  %min.epilog.iters.check277 = icmp eq i64 %i.ao, 0
  %n.vec279 = and i64 %i.e, 4294967292            ; 3 uses
  %cmp.n286 = icmp eq i64 %n.vec279, %i.e
  %min.iters.check233 = icmp ult i32 %i.w, 7
  %min.iters.check235 = icmp ult i32 %i.w, 31
  %i.ap = and i64 %i.y, 24
  %n.vec237 = and i64 %i.y, 8589934560            ; 4 uses
  %i.aq = add nsw i64 %n.vec237, %i.v
  %cmp.n244 = icmp eq i64 %i.y, %n.vec237
  %min.epilog.iters.check250 = icmp eq i64 %i.ap, 0
  %n.vec252 = and i64 %i.y, 8589934584            ; 3 uses
  %i.ar = add nsw i64 %n.vec252, %i.v
  %cmp.n259 = icmp eq i64 %i.y, %n.vec252
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv119 = phi i64 [ %i.e, %.lr.ph.us.preheader ], [ %indvars.iv.next120, %._crit_edge.us ] ; 2 uses
  %i.as = trunc nuw i64 %indvars.iv119 to i32
  %i.at = mul i32 %2, %i.as
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %gep.us = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.au ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au ; 8 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.e ; 4 uses
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph289

vector.ph289:                                     ; preds = %.lr.ph.us
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.ah
  %i.ay = getelementptr i8, ptr %gep.us, i64 %i.ah
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph289
  %index316 = phi i64 [ 0, %vector.ph289 ], [ %index.next320, %vector.body315 ] ; 2 uses
  %i.az = shl i64 %index316, 2                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aw, i64 %i.az
  %next.gep317 = getelementptr i8, ptr %gep.us, i64 %i.az
  %wide.load = load <8 x float>, ptr %next.gep317, align 4, !tbaa !21
  %i.ba = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %broadcast.splat292 ; 10 uses
  %i.bb = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.ba, %broadcast.splat294 ; 2 uses
  %i.bc = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.ba, %broadcast.splat296
  %i.bd = and <8 x i1> %i.bb, %i.bc               ; 2 uses
  %i.be = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ba, zeroinitializer ; 2 uses
  %i.bf = xor <8 x i1> %i.be, splat (i1 true)
  %i.bg = and <8 x i1> %i.bd, %i.bf
  %i.bh = fmul reassoc nsz arcp contract afn <8 x float> %i.ba, splat (float -5.000000e-01)
  %i.bi = fmul reassoc nsz arcp contract afn <8 x float> %i.bh, %i.ai ; 3 uses
  %i.bj = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bi, zeroinitializer
  %i.bk = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.bi, splat (float 1.000000e+00)
  %i.bl = select reassoc nsz arcp contract afn <8 x i1> %i.bk, <8 x float> %i.bi, <8 x float> splat (float 1.000000e+00)
  %i.bm = select reassoc nsz arcp contract afn <8 x i1> %i.bj, <8 x float> %i.bl, <8 x float> zeroinitializer ; 3 uses
  %i.bn = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.bm
  %i.bo = fmul reassoc nsz arcp contract afn <8 x float> %i.bm, %broadcast.splat300
  %i.bp = fmul reassoc nsz arcp contract afn <8 x float> %i.bn, %broadcast.splat294
  %i.bq = fsub reassoc nsz arcp contract afn <8 x float> %i.bo, %i.bp
  %i.br = fmul reassoc nsz arcp contract afn <8 x float> %i.bq, %i.bm
  %i.bs = fadd reassoc nsz arcp contract afn <8 x float> %i.br, %broadcast.splat292
  %i.bt = and <8 x i1> %i.bd, %i.be
  %i.bu = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ba, splat (float 5.000000e-01)
  %i.bv = fmul reassoc nsz arcp contract afn <8 x float> %i.bu, %i.aj ; 3 uses
  %i.bw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bv, zeroinitializer
  %i.bx = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.bv, splat (float 1.000000e+00)
  %i.by = select reassoc nsz arcp contract afn <8 x i1> %i.bx, <8 x float> %i.bv, <8 x float> splat (float 1.000000e+00)
  %i.bz = select reassoc nsz arcp contract afn <8 x i1> %i.bw, <8 x float> %i.by, <8 x float> zeroinitializer ; 2 uses
  %i.ca = fmul reassoc nsz arcp contract afn <8 x float> %i.bz, %broadcast.splat302
  %i.cb = fadd reassoc nsz arcp contract afn <8 x float> %i.ca, %broadcast.splat294
  %i.cc = fmul reassoc nsz arcp contract afn <8 x float> %i.cb, %i.bz
  %i.cd = fadd reassoc nsz arcp contract afn <8 x float> %i.cc, %broadcast.splat292
  %i.ce = fadd reassoc nsz arcp contract afn <8 x float> %i.ba, %broadcast.splat298
  %i.cf = fmul reassoc nsz arcp contract afn <8 x float> %i.ce, %broadcast.splat304
  %i.cg = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat306, %i.cf
  %i.ch = fsub reassoc nsz arcp contract afn <8 x float> %i.ba, %broadcast.splat298
  %i.ci = fmul reassoc nsz arcp contract afn <8 x float> %i.ch, %broadcast.splat308
  %i.cj = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat310, %i.ci
  %predphi = select nsz <8 x i1> %i.bb, <8 x float> %i.cg, <8 x float> %i.cj
  %predphi318 = select nsz <8 x i1> %i.bt, <8 x float> %i.cd, <8 x float> %predphi
  %predphi319 = select nsz <8 x i1> %i.bg, <8 x float> %i.bs, <8 x float> %predphi318
  %i.ck = fmul reassoc nsz arcp contract afn <8 x float> %i.ba, %broadcast.splat312
  %i.cl = fmul reassoc nsz arcp contract afn <8 x float> %i.ba, %i.ba
  %i.cm = fmul reassoc nsz arcp contract afn <8 x float> %i.cl, splat (float 1.140130e+07)
  %i.cn = fmul reassoc nsz arcp contract afn <8 x float> %i.cm, %i.ak
  %i.co = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x4E7E0000), %i.cn
  %i.cp = fptosi <8 x float> %i.co to <8 x i32>
  %i.cq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cp, <8 x i32> zeroinitializer)
  %i.cr = bitcast <8 x i32> %i.cq to <8 x float>
  %i.cs = fmul reassoc nsz arcp contract afn <8 x float> %i.ck, %i.cr
  %i.ct = fadd reassoc nsz arcp contract afn <8 x float> %predphi319, %i.cs
  store <8 x float> %i.ct, ptr %next.gep, align 4, !tbaa !21
  %index.next320 = add nuw i64 %index316, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next320, %n.vec290
  br i1 %i.cu, label %middle.block321, label %vector.body315, !llvm.loop !166

middle.block321:                                  ; preds = %vector.body315
  br i1 %cmp.n322, label %..preheader55_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block321
  %.04959.us.ph = phi i32 [ %4, %.lr.ph.us ], [ %i.ag, %middle.block321 ]
  %.05058.us.ph = phi ptr [ %i.aw, %.lr.ph.us ], [ %i.ax, %middle.block321 ]
  %.05157.us.ph = phi ptr [ %gep.us, %.lr.ph.us ], [ %i.ay, %middle.block321 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %curve_scalar.exit.us
  %.04959.us = phi i32 [ %i.ei, %curve_scalar.exit.us ], [ %.04959.us.ph, %scalar.ph.preheader ]
  %.05058.us = phi ptr [ %i.eh, %curve_scalar.exit.us ], [ %.05058.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.05157.us = phi ptr [ %i.cv, %curve_scalar.exit.us ], [ %.05157.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.05157.us, i64 4
  %i.cw = load float, ptr %.05157.us, align 4, !tbaa !21
  %i.cx = fsub reassoc nsz arcp contract afn float %i.cw, %5 ; 10 uses
  %i.cy = fcmp reassoc nsz arcp contract afn ogt float %i.cx, %i.h
  br i1 %i.cy, label %bb.g, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.cz = fcmp reassoc nsz arcp contract afn olt float %i.cx, %i.i
  br i1 %i.cz, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.da = fcmp reassoc nsz arcp contract afn ogt float %i.cx, 0.000000e+00
  br i1 %i.da, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.db = fmul reassoc nsz arcp contract afn float %i.cx, -5.000000e-01
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, %i.al ; 3 uses
  %i.dd = fcmp reassoc nsz arcp contract afn ogt float %i.dc, 0.000000e+00
  %i.de = fcmp reassoc nsz arcp contract afn olt float %i.dc, 1.000000e+00
  %spec.select.i.us = select reassoc nsz arcp contract afn i1 %i.de, float %i.dc, float 1.000000e+00
  %i.df = select reassoc nsz arcp contract afn i1 %i.dd, float %spec.select.i.us, float 0.000000e+00 ; 3 uses
  %i.dg = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.df
  %.neg.i.us = fmul reassoc nsz arcp contract afn float %i.df, %i.l
  %.neg63.i.us = fmul reassoc nsz arcp contract afn float %i.dg, %i.h
  %i.dh = fsub reassoc nsz arcp contract afn float %.neg.i.us, %.neg63.i.us
  %reass.mul.i.us = fmul reassoc nsz arcp contract afn float %i.dh, %i.df
  %i.di = fadd reassoc nsz arcp contract afn float %reass.mul.i.us, %5
  br label %curve_scalar.exit.us

bb.e:                                             ; preds = %bb.c
  %i.dj = fmul reassoc nnan nsz arcp contract afn float %i.cx, 5.000000e-01
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.am ; 3 uses
end_hunk_0
begin_hunk_1_@gauss_reduce:bb.a
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk     ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -8
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !21
  %i.bo = getelementptr i8, ptr %i.bl, i64 -4
  store float %i.bn, ptr %i.bo, align 4, !tbaa !21
  %indvars.iv.next37.i.3 = add nuw nsw i64 %indvars.iv36.i, 4
  %sext99.3 = mul i64 %sext, %indvars.iv.next37.i.3
  %i.bp = ashr exact i64 %sext99.3, 30
  %i.bq = getelementptr i8, ptr %1, i64 %i.bp     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %i.bs = load float, ptr %i.br, align 4, !tbaa !21
  %i.bt = getelementptr i8, ptr %i.bq, i64 -4
  store float %i.bs, ptr %i.bt, align 4, !tbaa !21
  %indvars.iv.next37.i.4 = add nuw nsw i64 %indvars.iv36.i, 5
  %sext99.4 = mul i64 %sext, %indvars.iv.next37.i.4
  %i.bu = ashr exact i64 %sext99.4, 30
  %i.bv = getelementptr i8, ptr %1, i64 %i.bu     ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !21
  %i.by = getelementptr i8, ptr %i.bv, i64 -4
  store float %i.bx, ptr %i.by, align 4, !tbaa !21
  %indvars.iv.next37.i.5 = add nuw nsw i64 %indvars.iv36.i, 6
  %sext99.5 = mul i64 %sext, %indvars.iv.next37.i.5
  %i.bz = ashr exact i64 %sext99.5, 30
  %i.ca = getelementptr i8, ptr %1, i64 %i.bz     ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !21
  %i.cd = getelementptr i8, ptr %i.ca, i64 -4
  store float %i.cc, ptr %i.cd, align 4, !tbaa !21
  %indvars.iv.next37.i.6 = add nuw nsw i64 %indvars.iv36.i, 7
  %sext99.6 = mul i64 %sext, %indvars.iv.next37.i.6
  %i.ce = ashr exact i64 %sext99.6, 30
  %i.cf = getelementptr i8, ptr %1, i64 %i.ce     ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !21
  %i.ci = getelementptr i8, ptr %i.cf, i64 -4
  store float %i.ch, ptr %i.ci, align 4, !tbaa !21
  %indvars.iv.next37.i.7 = add nuw nsw i64 %indvars.iv36.i, 8 ; 3 uses
  %sext99.7 = mul i64 %sext, %indvars.iv.next37.i.7
  %i.cj = ashr exact i64 %sext99.7, 30
  %i.ck = getelementptr i8, ptr %1, i64 %i.cj     ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -8
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !21
  %i.cn = getelementptr i8, ptr %i.ck, i64 -4
  store float %i.cm, ptr %i.cn, align 4, !tbaa !21
  %niter142.next.7 = add i64 %niter142, 8         ; 2 uses
  %niter142.ncmp.7 = icmp eq i64 %niter142.next.7, %unroll_iter141
  br i1 %niter142.ncmp.7, label %ll_fill_boundary1.exit.loopexit.unr-lcssa, label %.lr.ph34.i

ll_fill_boundary1.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph34.i
  %lcmp.mod139.not = icmp eq i64 %xtraiter137, 0
  br i1 %lcmp.mod139.not, label %ll_fill_boundary1.exit, label %.lr.ph34.i.epil.preheader

.lr.ph34.i.epil.preheader:                        ; preds = %ll_fill_boundary1.exit.loopexit.unr-lcssa, %.lr.ph34.i.preheader
  %indvars.iv36.i.epil.init = phi i64 [ 1, %.lr.ph34.i.preheader ], [ %indvars.iv.next37.i.7, %ll_fill_boundary1.exit.loopexit.unr-lcssa ]
  %lcmp.mod140 = icmp ne i64 %xtraiter137, 0
  tail call void @llvm.assume(i1 %lcmp.mod140)
  br label %.lr.ph34.i.epil

.lr.ph34.i.epil:                                  ; preds = %.lr.ph34.i.epil, %.lr.ph34.i.epil.preheader
  %indvars.iv36.i.epil = phi i64 [ %indvars.iv.next37.i.epil, %.lr.ph34.i.epil ], [ %indvars.iv36.i.epil.init, %.lr.ph34.i.epil.preheader ]
  %epil.iter138 = phi i64 [ %epil.iter138.next, %.lr.ph34.i.epil ], [ 0, %.lr.ph34.i.epil.preheader ]
  %indvars.iv.next37.i.epil = add nuw nsw i64 %indvars.iv36.i.epil, 1 ; 2 uses
  %sext99.epil = mul i64 %sext, %indvars.iv.next37.i.epil
  %i.co = ashr exact i64 %sext99.epil, 30
  %i.cp = getelementptr i8, ptr %1, i64 %i.co     ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 -8
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !21
  %i.cs = getelementptr i8, ptr %i.cp, i64 -4
  store float %i.cr, ptr %i.cs, align 4, !tbaa !21
  %epil.iter138.next = add i64 %epil.iter138, 1   ; 2 uses
  %epil.iter138.cmp.not = icmp eq i64 %epil.iter138.next, %xtraiter137
  br i1 %epil.iter138.cmp.not, label %ll_fill_boundary1.exit, label %.lr.ph34.i.epil, !llvm.loop !226

ll_fill_boundary1.exit:                           ; preds = %ll_fill_boundary1.exit.loopexit.unr-lcssa, %.lr.ph34.i.epil, %._crit_edge111
  %i.ct = ashr exact i64 %sext, 30                ; 3 uses
  %i.cu = getelementptr inbounds i8, ptr %1, i64 %i.ct
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %i.cu, i64 %i.ct, i1 false)
  %sext101 = mul i64 %sext, %i.e
  %i.cv = ashr exact i64 %sext101, 30
  %i.cw = getelementptr inbounds i8, ptr %1, i64 %i.cv
  %i.cx = add nuw i64 %i.e, 4294967295
  %sext102 = mul i64 %sext, %i.cx
  %i.cy = ashr exact i64 %sext102, 30
  %i.cz = getelementptr inbounds i8, ptr %1, i64 %i.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cw, ptr align 4 %i.cz, i64 %i.ct, i1 false)
  ret void

bb.b:                                             ; preds = %.lr.ph110, %bb.d
  %.052108 = phi i64 [ 1, %.lr.ph110 ], [ %i.hj, %bb.d ] ; 3 uses
  %i.da = shl nuw i64 %.052108, 1
  %i.db = add i64 %i.da, -2
  %i.dc = mul i64 %i.db, %2
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dc ; 8 uses
  %i.de = mul i64 %.052108, %i.c
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %i.dh = getelementptr [4 x i8], ptr %i.dd, i64 %2 ; 2 uses
  %i.di = getelementptr i8, ptr %i.dd, i64 %.idx.i ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dd, i64 %.idx41.i ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx42.i ; 2 uses
  %.sroa.957.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dl = load <2 x float>, ptr %i.dd, align 4, !tbaa !21
  %i.dm = load <2 x float>, ptr %i.dh, align 4, !tbaa !21
  %i.dn = load <2 x float>, ptr %i.di, align 4, !tbaa !21 ; 2 uses
  %i.do = load <2 x float>, ptr %i.dj, align 4, !tbaa !21
  %i.dp = load <2 x float>, ptr %i.dk, align 4, !tbaa !21
  %i.dq = fadd reassoc nsz arcp contract afn <2 x float> %i.dn, %i.dm
  %i.dr = fadd reassoc nsz arcp contract afn <2 x float> %i.dq, %i.do
  %i.ds = fmul reassoc nsz arcp contract afn <2 x float> %i.dn, splat (float 2.000000e+00)
  %i.dt = fmul reassoc nsz arcp contract afn <2 x float> %i.dr, splat (float 4.000000e+00)
  %i.du = fadd reassoc nsz arcp contract afn <2 x float> %i.ds, %i.dl
  %i.dv = fadd reassoc nsz arcp contract afn <2 x float> %i.dp, %i.dt
  %i.dw = fadd reassoc nsz arcp contract afn <2 x float> %i.dv, %i.du ; 3 uses
  %i.dx = load <2 x float>, ptr %.sroa.957.0..sroa_idx.i, align 4, !tbaa !21
  %i.dy = load <2 x float>, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !21
  %i.dz = load <2 x float>, ptr %.sroa.551.0..sroa_idx.i, align 4, !tbaa !21 ; 2 uses
  %i.ea = load <2 x float>, ptr %.sroa.547.0..sroa_idx.i, align 4, !tbaa !21
  %i.eb = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !21
  %i.ec = fadd reassoc nsz arcp contract afn <2 x float> %i.dz, %i.dy
  %i.ed = fadd reassoc nsz arcp contract afn <2 x float> %i.ec, %i.ea
  %i.ee = fmul reassoc nsz arcp contract afn <2 x float> %i.dz, splat (float 2.000000e+00)
  %i.ef = fmul reassoc nsz arcp contract afn <2 x float> %i.ed, splat (float 4.000000e+00)
  %i.eg = fadd reassoc nsz arcp contract afn <2 x float> %i.ee, %i.dx
  %i.eh = fadd reassoc nsz arcp contract afn <2 x float> %i.eb, %i.ef
  %i.ei = fadd reassoc nsz arcp contract afn <2 x float> %i.eh, %i.eg ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ej = extractelement <2 x float> %i.dw, i64 1
  %i.ek = extractelement <2 x float> %i.dw, i64 0
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.051.lcssa = phi ptr [ %i.dd, %bb.b ], [ %i.eo, %.lr.ph ]
  %i.el = phi <2 x float> [ %i.ei, %bb.b ], [ %i.fr, %.lr.ph ]
  %i.em = phi <2 x float> [ %i.dw, %bb.b ], [ %i.ff, %.lr.ph ] ; 2 uses
  br i1 %.not.not, label %bb.c, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.6118.1 = phi nsz float [ %i.fv, %.lr.ph ], [ %i.ej, %.lr.ph.preheader ]
  %.sroa.0116.1 = phi nsz float [ %i.fs, %.lr.ph ], [ %i.ek, %.lr.ph.preheader ]
  %.050105 = phi i64 [ %i.gn, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.051104 = phi ptr [ %i.eo, %.lr.ph ], [ %i.dd, %.lr.ph.preheader ] ; 2 uses
  %i.en = phi <2 x float> [ %i.fr, %.lr.ph ], [ %i.ei, %.lr.ph.preheader ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.051104, i64 16 ; 7 uses
  %i.ep = getelementptr [4 x i8], ptr %i.eo, i64 %2 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.eo, i64 %.idx.i ; 2 uses
  %i.er = getelementptr i8, ptr %i.eo, i64 %.idx41.i ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.idx42.i ; 2 uses
  %.sroa.957.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %.051104, i64 24
  %.sroa.7.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.551.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.sroa.547.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.sroa.5.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.et = fmul reassoc nsz arcp contract afn float %.sroa.6118.1, 4.000000e+00
  %i.eu = load <2 x float>, ptr %i.eo, align 4, !tbaa !21
  %i.ev = load <2 x float>, ptr %i.ep, align 4, !tbaa !21
  %i.ew = load <2 x float>, ptr %i.eq, align 4, !tbaa !21 ; 2 uses
  %i.ex = load <2 x float>, ptr %i.er, align 4, !tbaa !21
  %i.ey = load <2 x float>, ptr %i.es, align 4, !tbaa !21
  %i.ez = fadd reassoc nsz arcp contract afn <2 x float> %i.ew, %i.ev
  %i.fa = fadd reassoc nsz arcp contract afn <2 x float> %i.ez, %i.ex
  %i.fb = fmul reassoc nsz arcp contract afn <2 x float> %i.ew, splat (float 2.000000e+00)
  %i.fc = fmul reassoc nsz arcp contract afn <2 x float> %i.fa, splat (float 4.000000e+00)
  %i.fd = fadd reassoc nsz arcp contract afn <2 x float> %i.fb, %i.eu
  %i.fe = fadd reassoc nsz arcp contract afn <2 x float> %i.ey, %i.fc
  %i.ff = fadd reassoc nsz arcp contract afn <2 x float> %i.fe, %i.fd ; 3 uses
  %i.fg = load <2 x float>, ptr %.sroa.957.0..sroa_idx.i62, align 4, !tbaa !21
  %i.fh = load <2 x float>, ptr %.sroa.7.0..sroa_idx.i69, align 4, !tbaa !21
  %i.fi = load <2 x float>, ptr %.sroa.551.0..sroa_idx.i76, align 4, !tbaa !21 ; 2 uses
  %i.fj = load <2 x float>, ptr %.sroa.547.0..sroa_idx.i83, align 4, !tbaa !21
  %i.fk = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i90, align 4, !tbaa !21
  %i.fl = fadd reassoc nsz arcp contract afn <2 x float> %i.fi, %i.fh
  %i.fm = fadd reassoc nsz arcp contract afn <2 x float> %i.fl, %i.fj
  %i.fn = fmul reassoc nsz arcp contract afn <2 x float> %i.fi, splat (float 2.000000e+00)
  %i.fo = fmul reassoc nsz arcp contract afn <2 x float> %i.fm, splat (float 4.000000e+00)
  %i.fp = fadd reassoc nsz arcp contract afn <2 x float> %i.fn, %i.fg
  %i.fq = fadd reassoc nsz arcp contract afn <2 x float> %i.fk, %i.fo
  %i.fr = fadd reassoc nsz arcp contract afn <2 x float> %i.fq, %i.fp ; 3 uses
  %i.fs = extractelement <2 x float> %i.ff, i64 0 ; 3 uses
  %i.ft = fadd reassoc nsz arcp contract afn float %.sroa.0116.1, %i.fs
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.050105
  %i.fv = extractelement <2 x float> %i.ff, i64 1 ; 2 uses
  %i.fw = extractelement <2 x float> %i.en, i64 1 ; 2 uses
  %i.fx = fadd reassoc nsz arcp contract afn float %i.fv, %i.fw
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fx, 4.000000e+00
  %i.fz = extractelement <2 x float> %i.fr, i64 0
  %i.ga = extractelement <2 x float> %i.en, i64 0 ; 2 uses
  %i.gb = fmul reassoc nsz arcp contract afn float %i.ga, 6.000000e+00
  %i.gc = fmul reassoc nsz arcp contract afn float %i.fw, 4.000000e+00
  %i.gd = fadd reassoc nsz arcp contract afn float %i.ft, %i.et
  %i.ge = fadd reassoc nsz arcp contract afn float %i.gd, %i.gb
  %i.gf = fadd reassoc nsz arcp contract afn float %i.ge, %i.gc
  %i.gg = fadd reassoc nsz arcp contract afn float %i.ga, %i.fy
  %i.gh = fmul reassoc nsz arcp contract afn float %i.fs, 6.000000e+00
  %i.gi = fadd reassoc nsz arcp contract afn float %i.fz, %i.gh
  %i.gj = fadd reassoc nsz arcp contract afn float %i.gi, %i.gg
  %i.gk = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.gl = insertelement <2 x float> %i.gk, float %i.gj, i64 1
  %i.gm = fmul reassoc nsz arcp contract afn <2 x float> %i.gl, splat (float 3.906250e-03)
  store <2 x float> %i.gm, ptr %i.fu, align 4, !tbaa !21
  %i.gn = add i64 %.050105, 2                     ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.g
  br i1 %i.go, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %._crit_edge
  %i.gp = getelementptr inbounds nuw i8, ptr %.051.lcssa, i64 16 ; 5 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !21
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %2
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !21
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx41.i
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !21
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx.i
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !21
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx42.i
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !21
  %i.gz = fadd reassoc nsz arcp contract afn float %i.gu, %i.gs
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gz, 4.000000e+00
  %i.hb = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.hc = insertelement <4 x float> %i.hb, float %i.gw, i64 1
  %i.hd = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.he = shufflevector <4 x float> %i.hc, <4 x float> %i.hd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hf = fmul reassoc nsz arcp contract afn <4 x float> %i.he, <float 4.000000e+00, float 6.000000e+00, float 6.000000e+00, float 4.000000e+00>
  %op.rdx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.ha, <4 x float> %i.hf)
  %op.rdx131 = fadd reassoc nsz arcp contract afn float %i.gy, %i.gq
  %op.rdx132 = fadd reassoc nsz arcp contract afn float %op.rdx, %op.rdx131
  %i.hg = extractelement <2 x float> %i.em, i64 0
  %op.rdx133 = fadd reassoc nsz arcp contract afn float %op.rdx132, %i.hg
  %i.hh = fmul reassoc nsz arcp contract afn float %op.rdx133, 3.906250e-03
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.g
  store float %i.hh, ptr %i.hi, align 4, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.hj = add nuw nsw i64 %.052108, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.hj, %i.e
  br i1 %exitcond.not, label %._crit_edge111, label %bb.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #8

declare void @dt_dump_pfm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc float @ll_laplacian(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %4, -1
  %i.c = and i32 %i.b, -2
  %i.d = add nsw i32 %i.c, -1
  %. = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ 1, %bb.a ], [ %., %bb.b ]      ; 2 uses
  %i.f = icmp sgt i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %5, -1
  %i.h = and i32 %i.g, -2
  %i.i = add nsw i32 %i.h, -1
  %.20 = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi i32 [ 1, %bb.c ], [ %.20, %bb.d ]    ; 2 uses
  %i.k = add nsw i32 %4, -1
  %i.l = sdiv i32 %i.k, 2                         ; 3 uses
  %i.m = add nsw i32 %i.l, 1                      ; 7 uses
  %i.n = sdiv i32 %i.j, 2
  %i.o = mul nsw i32 %i.n, %i.m
  %i.p = sdiv i32 %i.e, 2
  %i.q = add nsw i32 %i.o, %i.p                   ; 12 uses
  %i.r = and i32 %i.e, 1
  %i.s = shl i32 %i.j, 1
  %i.t = and i32 %i.s, 2
  %i.u = or disjoint i32 %i.t, %i.r
  switch i32 %i.u, label %default.unreachable [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = sub nsw i32 %i.q, %i.m
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w ; 3 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !21
  %i.z = sext i32 %i.q to i64
  %i.aa = getelementptr [4 x i8], ptr %0, i64 %i.z ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !21
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, %i.y
  %i.ae = load float, ptr %i.aa, align 4, !tbaa !21
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, 6.000000e+00
  %i.ag = fadd reassoc nsz arcp contract afn float %i.ad, %i.af
  %i.ah = getelementptr i8, ptr %i.aa, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !21
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ag, %i.ai
  %i.ak = add nsw i32 %i.q, %i.m
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !21
  %i.ao = fadd reassoc nsz arcp contract afn float %i.aj, %i.an
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, 6.000000e+00
  %i.aq = getelementptr i8, ptr %i.x, i64 -4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !21
  %i.as = fadd reassoc nsz arcp contract afn float %i.ar, %i.ap
  %i.at = getelementptr i8, ptr %i.x, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !21
  %i.av = add i32 %i.q, %i.l
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !21
  %i.az = getelementptr i8, ptr %i.am, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !21
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ay, %i.au
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, %i.as
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.ba
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, 1.562500e-02
  br label %ll_expand_gaussian.exit

bb.g:                                             ; preds = %bb.e
  %i.bf = sext i32 %i.q to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bf ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !21
  %i.bi = getelementptr i8, ptr %i.bg, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !21
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, %i.bh
  %i.bl = fpext reassoc nsz arcp contract afn float %i.bk to double
  %i.bm = fmul reassoc nsz arcp contract afn double %i.bl, 2.400000e+01
  %i.bn = sub nsw i32 %i.q, %i.m
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bo ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !21
  %i.br = getelementptr i8, ptr %i.bp, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !21
  %i.bt = fadd reassoc nsz arcp contract afn float %i.bs, %i.bq
  %i.bu = add nsw i32 %i.q, %i.m
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !21
  %i.by = fadd reassoc nsz arcp contract afn float %i.bt, %i.bx
  %i.bz = getelementptr i8, ptr %i.bw, i64 4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !21
  %i.cb = fadd reassoc nsz arcp contract afn float %i.by, %i.ca
  %i.cc = fpext reassoc nsz arcp contract afn float %i.cb to double
  %i.cd = fmul reassoc nsz arcp contract afn double %i.cc, 4.000000e+00
  %i.ce = fadd reassoc nsz arcp contract afn double %i.cd, %i.bm
  %i.cf = fmul reassoc nsz arcp contract afn double %i.ce, 1.562500e-02
  %i.cg = fptrunc reassoc nsz arcp contract afn double %i.cf to float
  br label %ll_expand_gaussian.exit

bb.h:                                             ; preds = %bb.e
  %i.ch = sext i32 %i.q to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ch ; 2 uses
  %i.cj = add nsw i32 %i.q, %i.m
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.ci, i64 -4
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !21
  %i.co = add i32 %i.q, %i.l
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !21
  %i.cs = load <2 x float>, ptr %i.ci, align 4, !tbaa !21
  %i.ct = load <2 x float>, ptr %i.cl, align 4, !tbaa !21
  %i.cu = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.cr, i64 1
  %i.cv = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.cn, i64 1
  %i.cw = fadd reassoc nsz arcp contract afn <2 x float> %i.ct, %i.cu
  %i.cx = fadd reassoc nsz arcp contract afn <2 x float> %i.cv, %i.cs
  %i.cy = fadd reassoc nsz arcp contract afn <2 x float> %i.cw, %i.cx
  %i.cz = fpext <2 x float> %i.cy to <2 x double> ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0
  %i.db = fmul reassoc nsz arcp contract afn double %i.da, 2.400000e+01
  %i.dc = extractelement <2 x double> %i.cz, i64 1
  %i.dd = fmul reassoc nsz arcp contract afn double %i.dc, 4.000000e+00
  %i.de = fadd reassoc nsz arcp contract afn double %i.dd, %i.db
  %i.df = fmul reassoc nsz arcp contract afn double %i.de, 1.562500e-02
  %i.dg = fptrunc reassoc nsz arcp contract afn double %i.df to float
  br label %ll_expand_gaussian.exit

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.dh = sext i32 %i.q to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dh ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !21
  %i.dk = getelementptr i8, ptr %i.di, i64 4
end_hunk_1
