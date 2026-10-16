Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_equalizer?download=true
inline.NumInlined: 22
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 31
begin_hunk_0_@process:bb.a
  %i.atc = fsub reassoc nsz arcp contract afn <4 x double> %i.atb, %i.ata
  %i.atd = fptrunc reassoc nsz arcp contract afn <4 x double> %i.atc to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.atd, <4 x ptr> align 4 %wide.gep1252, <4 x i1> splat (i1 true)), !tbaa !30, !alias.scope !135, !noalias !136
  %wide.load1267 = load <4 x float>, ptr %i.asi, align 4, !tbaa !30, !alias.scope !133 ; 2 uses
  %i.ate = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec1256, %wide.load1267
  %wide.load1268 = load <4 x float>, ptr %i.asm, align 4, !tbaa !30, !alias.scope !134 ; 2 uses
  %i.atf = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec1261, %wide.load1268
  %i.atg = fadd reassoc nsz arcp contract afn <4 x float> %i.atf, %i.ate
  %i.ath = fpext reassoc nsz arcp contract afn <4 x float> %i.atg to <4 x double>
  %i.ati = fadd reassoc nsz arcp contract afn <4 x float> %wide.load1268, %wide.load1267
  %i.atj = fpext reassoc nsz arcp contract afn <4 x float> %i.ati to <4 x double>
  %i.atk = fmul reassoc nsz arcp contract afn <4 x double> %i.atj, splat (double 2.000000e+00)
  %i.atl = fdiv reassoc nsz arcp contract afn <4 x double> %i.ath, %i.atk
  %wide.gep1269 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep1252, i64 4
  %i.atm = fpext reassoc nsz arcp contract afn <4 x float> %strided.vec1265 to <4 x double>
  %i.atn = fsub reassoc nsz arcp contract afn <4 x double> %i.atm, %i.atl
  %i.ato = fptrunc reassoc nsz arcp contract afn <4 x double> %i.atn to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ato, <4 x ptr> align 4 %wide.gep1269, <4 x i1> splat (i1 true)), !tbaa !30, !alias.scope !137, !noalias !138
  %wide.load1270 = load <4 x float>, ptr %i.asi, align 4, !tbaa !30, !alias.scope !133 ; 2 uses
  %i.atp = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec1257, %wide.load1270
  %wide.load1271 = load <4 x float>, ptr %i.asm, align 4, !tbaa !30, !alias.scope !134 ; 2 uses
  %i.atq = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec1262, %wide.load1271
  %i.atr = fadd reassoc nsz arcp contract afn <4 x float> %i.atq, %i.atp
  %i.ats = fpext reassoc nsz arcp contract afn <4 x float> %i.atr to <4 x double>
  %i.att = fadd reassoc nsz arcp contract afn <4 x float> %wide.load1271, %wide.load1270
  %i.atu = fpext reassoc nsz arcp contract afn <4 x float> %i.att to <4 x double>
  %i.atv = fmul reassoc nsz arcp contract afn <4 x double> %i.atu, splat (double 2.000000e+00)
  %i.atw = fdiv reassoc nsz arcp contract afn <4 x double> %i.ats, %i.atv
  %wide.gep1272 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep1252, i64 8
  %i.atx = fpext reassoc nsz arcp contract afn <4 x float> %strided.vec1266 to <4 x double>
  %i.aty = fsub reassoc nsz arcp contract afn <4 x double> %i.atx, %i.atw
  %i.atz = fptrunc reassoc nsz arcp contract afn <4 x double> %i.aty to <4 x float>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.atz, <4 x ptr> align 4 %wide.gep1272, <4 x i1> splat (i1 true)), !tbaa !30, !alias.scope !139, !noalias !140
  %index.next1273 = add nuw i64 %index1250, 4     ; 2 uses
  %vec.ind.next1274 = add nuw nsw <4 x i64> %vec.ind1251, splat (i64 4)
  %i.aua = icmp eq i64 %index.next1273, %n.vec1246
  br i1 %i.aua, label %.preheader323.i.preheader1310, label %vector.body1249, !llvm.loop !101

bb.o:                                             ; preds = %bb.o, %.lr.ph356.i
  %indvars.iv398.i = phi i64 [ 0, %.lr.ph356.i ], [ %indvars.iv.next399.i, %bb.o ] ; 3 uses
  %i.aub = trunc nsw i64 %indvars.iv398.i to i32
  %i.auc = ashr i32 %i.aub, %i.aag
  %i.aud = sext i32 %i.auc to i64
  %i.aue = getelementptr [4 x i8], ptr %i.arr, i64 %i.aud
  %i.auf = load float, ptr %i.aue, align 4, !tbaa !30
  %indvars.iv.next399.i = add nsw i64 %indvars.iv398.i, %i.abd ; 3 uses
  %i.aug = trunc nsw i64 %indvars.iv.next399.i to i32
  %i.auh = ashr i32 %i.aug, %i.aag
  %i.aui = sext i32 %i.auh to i64
  %i.auj = getelementptr [4 x i8], ptr %i.arr, i64 %i.aui
  %i.auk = load float, ptr %i.auj, align 4, !tbaa !30
  %i.aul = fsub reassoc nsz arcp contract afn float %i.auf, %i.auk
  %i.aum = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aul)
  %i.aun = fpext reassoc nsz arcp contract afn float %i.aum to double
  %i.auo = fadd reassoc nsz arcp contract afn double %i.aun, 1.000000e-05
  %i.aup = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.auo
  %i.auq = fptrunc reassoc nsz arcp contract afn double %i.aup to float
  %i.aur = getelementptr inbounds [4 x i8], ptr %i.aay, i64 %indvars.iv398.i
  store float %i.auq, ptr %i.aur, align 4, !tbaa !30
  %i.aus = icmp slt i64 %indvars.iv.next399.i, %i.abg
  br i1 %i.aus, label %bb.o, label %.preheader328.i

.preheader323.i:                                  ; preds = %.preheader323.i.preheader1310, %.preheader323.i
  %indvars.iv409.i = phi i64 [ %indvars.iv.next410.i, %.preheader323.i ], [ %indvars.iv409.i.ph, %.preheader323.i.preheader1310 ] ; 5 uses
  %i.aut = sub nsw i64 %indvars.iv409.i, %i.abd   ; 2 uses
  %i.auu = getelementptr inbounds [4 x i8], ptr %i.aay, i64 %i.aut ; 3 uses
  %i.auv = add nsw i64 %i.aut, %i.ars
  %.idx306.i = shl i64 %i.auv, 4
  %i.auw = getelementptr inbounds nuw i8, ptr %3, i64 %.idx306.i ; 3 uses
  %i.aux = getelementptr inbounds [4 x i8], ptr %i.aay, i64 %indvars.iv409.i ; 3 uses
  %.reass.i175 = add i64 %indvars.iv409.i, %i.art
  %.idx307.i = shl i64 %.reass.i175, 4
  %i.auy = getelementptr inbounds nuw i8, ptr %3, i64 %.idx307.i ; 3 uses
  %i.auz = add nsw i64 %indvars.iv409.i, %i.ars
  %.idx308.i = shl i64 %i.auz, 4
  %i.ava = getelementptr inbounds nuw i8, ptr %3, i64 %.idx308.i ; 4 uses
  %i.avb = load float, ptr %i.auu, align 4, !tbaa !30 ; 2 uses
  %i.avc = load float, ptr %i.auw, align 4, !tbaa !30
  %i.avd = fmul reassoc nsz arcp contract afn float %i.avc, %i.avb
  %i.ave = load float, ptr %i.aux, align 4, !tbaa !30 ; 2 uses
  %i.avf = load float, ptr %i.auy, align 4, !tbaa !30
  %i.avg = fmul reassoc nsz arcp contract afn float %i.avf, %i.ave
  %i.avh = fadd reassoc nsz arcp contract afn float %i.avg, %i.avd
  %i.avi = fpext reassoc nsz arcp contract afn float %i.avh to double
  %i.avj = fadd reassoc nsz arcp contract afn float %i.ave, %i.avb
  %i.avk = fpext reassoc nsz arcp contract afn float %i.avj to double
  %i.avl = fmul reassoc nsz arcp contract afn double %i.avk, 2.000000e+00
  %i.avm = fdiv reassoc nsz arcp contract afn double %i.avi, %i.avl
  %i.avn = load float, ptr %i.ava, align 4, !tbaa !30
  %i.avo = fpext reassoc nsz arcp contract afn float %i.avn to double
  %i.avp = fsub reassoc nsz arcp contract afn double %i.avo, %i.avm
  %i.avq = fptrunc reassoc nsz arcp contract afn double %i.avp to float
  store float %i.avq, ptr %i.ava, align 4, !tbaa !30
  %i.avr = load float, ptr %i.auu, align 4, !tbaa !30 ; 2 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %i.auw, i64 4
  %i.avt = load float, ptr %i.avs, align 4, !tbaa !30
  %i.avu = fmul reassoc nsz arcp contract afn float %i.avt, %i.avr
  %i.avv = load float, ptr %i.aux, align 4, !tbaa !30 ; 2 uses
  %i.avw = getelementptr inbounds nuw i8, ptr %i.auy, i64 4
  %i.avx = load float, ptr %i.avw, align 4, !tbaa !30
  %i.avy = fmul reassoc nsz arcp contract afn float %i.avx, %i.avv
  %i.avz = fadd reassoc nsz arcp contract afn float %i.avy, %i.avu
  %i.awa = fpext reassoc nsz arcp contract afn float %i.avz to double
  %i.awb = fadd reassoc nsz arcp contract afn float %i.avv, %i.avr
  %i.awc = fpext reassoc nsz arcp contract afn float %i.awb to double
  %i.awd = fmul reassoc nsz arcp contract afn double %i.awc, 2.000000e+00
  %i.awe = fdiv reassoc nsz arcp contract afn double %i.awa, %i.awd
  %i.awf = getelementptr inbounds nuw i8, ptr %i.ava, i64 4 ; 2 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %i.auw, i64 8
  %i.awh = load float, ptr %i.awg, align 4, !tbaa !30
  %i.awi = getelementptr inbounds nuw i8, ptr %i.auy, i64 8
  %i.awj = load float, ptr %i.awi, align 4, !tbaa !30
  %i.awk = getelementptr inbounds nuw i8, ptr %i.ava, i64 8
  %i.awl = load <2 x float>, ptr %i.awf, align 4, !tbaa !30
  %i.awm = fpext <2 x float> %i.awl to <2 x double> ; 2 uses
  %i.awn = extractelement <2 x double> %i.awm, i64 0
  %i.awo = fsub reassoc nsz arcp contract afn double %i.awn, %i.awe
  %i.awp = fptrunc reassoc nsz arcp contract afn double %i.awo to float
  store float %i.awp, ptr %i.awf, align 4, !tbaa !30
  %i.awq = load float, ptr %i.auu, align 4, !tbaa !30 ; 2 uses
  %i.awr = fmul reassoc nsz arcp contract afn float %i.awh, %i.awq
  %i.aws = load float, ptr %i.aux, align 4, !tbaa !30 ; 2 uses
  %i.awt = fmul reassoc nsz arcp contract afn float %i.awj, %i.aws
  %i.awu = fadd reassoc nsz arcp contract afn float %i.awt, %i.awr
  %i.awv = fpext reassoc nsz arcp contract afn float %i.awu to double
  %i.aww = fadd reassoc nsz arcp contract afn float %i.aws, %i.awq
  %i.awx = fpext reassoc nsz arcp contract afn float %i.aww to double
  %i.awy = fmul reassoc nsz arcp contract afn double %i.awx, 2.000000e+00
  %i.awz = fdiv reassoc nsz arcp contract afn double %i.awv, %i.awy
  %i.axa = extractelement <2 x double> %i.awm, i64 1
  %i.axb = fsub reassoc nsz arcp contract afn double %i.axa, %i.awz
  %i.axc = fptrunc reassoc nsz arcp contract afn double %i.axb to float
  store float %i.axc, ptr %i.awk, align 4, !tbaa !30
  %indvars.iv.next410.i = add nsw i64 %indvars.iv409.i, %i.abh ; 3 uses
  %i.axd = icmp slt i64 %indvars.iv.next410.i, %i.abg
  br i1 %i.axd, label %.preheader323.i, label %._crit_edge360.loopexit.i, !llvm.loop !102

._crit_edge360.loopexit.i:                        ; preds = %.preheader323.i
  %i.axe = trunc nsw i64 %indvars.iv.next410.i to i32
  br label %._crit_edge360.i

._crit_edge360.i:                                 ; preds = %._crit_edge360.loopexit.i, %.preheader328.i
  %.0284.lcssa.i = phi i32 [ %i.aad, %.preheader328.i ], [ %i.axe, %._crit_edge360.loopexit.i ] ; 3 uses
  %i.axf = icmp slt i32 %.0284.lcssa.i, %i.f
  br i1 %i.axf, label %.preheader325.i, label %.loopexit326.i

.preheader325.i:                                  ; preds = %._crit_edge360.i
  %i.axg = sub nsw i32 %.0284.lcssa.i, %i.aae
  %i.axh = sext i32 %i.axg to i64
  %i.axi = add nsw i64 %i.ars, %i.axh
  %.idx304.i = shl i64 %i.axi, 4
  %i.axj = getelementptr inbounds nuw i8, ptr %3, i64 %.idx304.i ; 2 uses
  %i.axk = sext i32 %.0284.lcssa.i to i64
  %i.axl = add nsw i64 %i.ars, %i.axk
  %.idx305.i = shl i64 %i.axl, 4
  %i.axm = getelementptr inbounds nuw i8, ptr %3, i64 %.idx305.i ; 3 uses
  %i.axn = load <2 x float>, ptr %i.axj, align 4, !tbaa !30
  %i.axo = fmul reassoc nsz arcp contract afn <2 x float> %i.axn, splat (float 5.000000e-01)
  %i.axp = load <2 x float>, ptr %i.axm, align 4, !tbaa !30
  %i.axq = fsub reassoc nsz arcp contract afn <2 x float> %i.axp, %i.axo
  store <2 x float> %i.axq, ptr %i.axm, align 4, !tbaa !30
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axj, i64 8
  %i.axs = load float, ptr %i.axr, align 4, !tbaa !30
  %i.axt = fmul reassoc nsz arcp contract afn float %i.axs, 5.000000e-01
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axm, i64 8 ; 2 uses
  %i.axv = load float, ptr %i.axu, align 4, !tbaa !30
  %i.axw = fsub reassoc nsz arcp contract afn float %i.axv, %i.axt
  store float %i.axw, ptr %i.axu, align 4, !tbaa !30
  br label %.loopexit326.i

.loopexit326.i:                                   ; preds = %.preheader325.i, %._crit_edge360.i
  br i1 %i.abf, label %.preheader.i173.preheader, label %._crit_edge365.i

.preheader.i173.preheader:                        ; preds = %.loopexit326.i
  %or.cond1277.not = xor i1 %or.cond1277, true
  %.not1308.not = xor i1 %.not1308, true
  %brmerge1320 = select i1 %or.cond1277.not, i1 true, i1 %.not1308.not
  br i1 %brmerge1320, label %.preheader.i173.preheader1309, label %vector.ph1006

vector.ph1006:                                    ; preds = %.preheader.i173.preheader
  %broadcast.splatinsert1008 = insertelement <8 x i64> poison, i64 %i.ars, i64 0
  %broadcast.splat1009 = shufflevector <8 x i64> %broadcast.splatinsert1008, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body1013

vector.body1013:                                  ; preds = %vector.body1013, %vector.ph1006
  %index1014 = phi i64 [ 0, %vector.ph1006 ], [ %index.next1037, %vector.body1013 ] ; 4 uses
  %vec.ind1015 = phi <8 x i64> [ %induction1012, %vector.ph1006 ], [ %vec.ind.next1038, %vector.body1013 ] ; 2 uses
  %i.axx = sub nuw nsw i64 %index1014, %i.abd     ; 2 uses
  %i.axy = getelementptr inbounds [4 x i8], ptr %i.aay, i64 %i.axx ; 3 uses
  %i.axz = add nsw i64 %i.axx, %i.ars
  %i.aya = shl i64 %i.axz, 4
  %i.ayb = getelementptr inbounds nuw i8, ptr %3, i64 %i.aya
  %i.ayc = getelementptr inbounds [4 x i8], ptr %i.aay, i64 %index1014 ; 3 uses
  %i.ayd = add i64 %index1014, %i.art
  %i.aye = shl i64 %i.ayd, 4
  %i.ayf = getelementptr inbounds nuw i8, ptr %3, i64 %i.aye
  %i.ayg = add nsw <8 x i64> %vec.ind1015, %broadcast.splat1009
  %i.ayh = shl <8 x i64> %i.ayg, splat (i64 4)
  %wide.gep1016 = getelementptr inbounds nuw i8, ptr %3, <8 x i64> %i.ayh ; 4 uses
  %i.ayi = extractelement <8 x ptr> %wide.gep1016, i64 0
  %wide.load1017 = load <8 x float>, ptr %i.axy, align 32, !tbaa !30, !alias.scope !141 ; 2 uses
  %wide.vec1018 = load <32 x float>, ptr %i.ayb, align 4, !tbaa !30 ; 3 uses
  %strided.vec1019 = shufflevector <32 x float> %wide.vec1018, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1020 = shufflevector <32 x float> %wide.vec1018, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1021 = shufflevector <32 x float> %wide.vec1018, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ayj = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1019, %wide.load1017
  %wide.load1022 = load <8 x float>, ptr %i.ayc, align 32, !tbaa !30, !alias.scope !142 ; 2 uses
  %wide.vec1023 = load <32 x float>, ptr %i.ayf, align 4, !tbaa !30 ; 3 uses
  %strided.vec1024 = shufflevector <32 x float> %wide.vec1023, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1025 = shufflevector <32 x float> %wide.vec1023, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1026 = shufflevector <32 x float> %wide.vec1023, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ayk = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1024, %wide.load1022
  %i.ayl = fadd reassoc nsz arcp contract afn <8 x float> %i.ayk, %i.ayj
  %i.aym = fadd reassoc nsz arcp contract afn <8 x float> %wide.load1022, %wide.load1017
  %i.ayn = fdiv reassoc nsz arcp contract afn <8 x float> %i.ayl, %i.aym
  %wide.vec1027 = load <32 x float>, ptr %i.ayi, align 4, !tbaa !30 ; 3 uses
  %strided.vec1028 = shufflevector <32 x float> %wide.vec1027, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1029 = shufflevector <32 x float> %wide.vec1027, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1030 = shufflevector <32 x float> %wide.vec1027, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ayo = fadd reassoc nsz arcp contract afn <8 x float> %i.ayn, %strided.vec1028
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ayo, <8 x ptr> align 4 %wide.gep1016, <8 x i1> splat (i1 true)), !tbaa !30, !alias.scope !143, !noalias !144
  %wide.load1031 = load <8 x float>, ptr %i.axy, align 32, !tbaa !30, !alias.scope !141 ; 2 uses
  %i.ayp = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1020, %wide.load1031
  %wide.load1032 = load <8 x float>, ptr %i.ayc, align 32, !tbaa !30, !alias.scope !142 ; 2 uses
  %i.ayq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1025, %wide.load1032
  %i.ayr = fadd reassoc nsz arcp contract afn <8 x float> %i.ayq, %i.ayp
  %i.ays = fadd reassoc nsz arcp contract afn <8 x float> %wide.load1032, %wide.load1031
  %i.ayt = fdiv reassoc nsz arcp contract afn <8 x float> %i.ayr, %i.ays
  %wide.gep1033 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1016, i64 4
  %i.ayu = fadd reassoc nsz arcp contract afn <8 x float> %i.ayt, %strided.vec1029
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ayu, <8 x ptr> align 4 %wide.gep1033, <8 x i1> splat (i1 true)), !tbaa !30, !alias.scope !145, !noalias !146
  %wide.load1034 = load <8 x float>, ptr %i.axy, align 32, !tbaa !30, !alias.scope !141 ; 2 uses
  %i.ayv = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1021, %wide.load1034
  %wide.load1035 = load <8 x float>, ptr %i.ayc, align 32, !tbaa !30, !alias.scope !142 ; 2 uses
  %i.ayw = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1026, %wide.load1035
  %i.ayx = fadd reassoc nsz arcp contract afn <8 x float> %i.ayw, %i.ayv
  %i.ayy = fadd reassoc nsz arcp contract afn <8 x float> %wide.load1035, %wide.load1034
  %i.ayz = fdiv reassoc nsz arcp contract afn <8 x float> %i.ayx, %i.ayy
  %wide.gep1036 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1016, i64 8
  %i.aza = fadd reassoc nsz arcp contract afn <8 x float> %i.ayz, %strided.vec1030
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.aza, <8 x ptr> align 4 %wide.gep1036, <8 x i1> splat (i1 true)), !tbaa !30, !alias.scope !147, !noalias !148
  %index.next1037 = add nuw i64 %index1014, 8     ; 2 uses
  %vec.ind.next1038 = add nsw <8 x i64> %vec.ind1015, splat (i64 8)
  %i.azb = icmp eq i64 %index.next1037, %n.vec1007
  br i1 %i.azb, label %.preheader.i173.preheader1309, label %vector.body1013, !llvm.loop !115

.preheader.i173.preheader1309:                    ; preds = %vector.body1013, %.preheader.i173.preheader
  %indvars.iv420.i.ph = phi i64 [ %i.abd, %.preheader.i173.preheader ], [ %n.vec1007, %vector.body1013 ]
  br label %.preheader.i173

.preheader.i173:                                  ; preds = %.preheader.i173.preheader1309, %.preheader.i173
  %indvars.iv420.i = phi i64 [ %indvars.iv.next421.i, %.preheader.i173 ], [ %indvars.iv420.i.ph, %.preheader.i173.preheader1309 ] ; 5 uses
  %i.azc = sub nsw i64 %indvars.iv420.i, %i.abd   ; 2 uses
  %i.azd = getelementptr inbounds [4 x i8], ptr %i.aay, i64 %i.azc ; 3 uses
  %i.aze = add nsw i64 %i.azc, %i.ars
  %.idx301.i = shl i64 %i.aze, 4
  %i.azf = getelementptr inbounds nuw i8, ptr %3, i64 %.idx301.i ; 3 uses
  %i.azg = getelementptr inbounds [4 x i8], ptr %i.aay, i64 %indvars.iv420.i ; 3 uses
  %.reass437.i = add i64 %indvars.iv420.i, %i.art
  %.idx302.i = shl i64 %.reass437.i, 4
  %i.azh = getelementptr inbounds nuw i8, ptr %3, i64 %.idx302.i ; 3 uses
  %i.azi = add nsw i64 %indvars.iv420.i, %i.ars
  %.idx303.i = shl i64 %i.azi, 4
  %i.azj = getelementptr inbounds nuw i8, ptr %3, i64 %.idx303.i ; 4 uses
  %i.azk = load float, ptr %i.azd, align 4, !tbaa !30 ; 2 uses
  %i.azl = load float, ptr %i.azf, align 4, !tbaa !30
  %i.azm = fmul reassoc nsz arcp contract afn float %i.azl, %i.azk
  %i.azn = load float, ptr %i.azg, align 4, !tbaa !30 ; 2 uses
  %i.azo = load float, ptr %i.azh, align 4, !tbaa !30
  %i.azp = fmul reassoc nsz arcp contract afn float %i.azo, %i.azn
  %i.azq = fadd reassoc nsz arcp contract afn float %i.azp, %i.azm
  %i.azr = fadd reassoc nsz arcp contract afn float %i.azn, %i.azk
  %i.azs = fdiv reassoc nsz arcp contract afn float %i.azq, %i.azr
  %i.azt = load float, ptr %i.azj, align 4, !tbaa !30
  %i.azu = fadd reassoc nsz arcp contract afn float %i.azs, %i.azt
  store float %i.azu, ptr %i.azj, align 4, !tbaa !30
  %i.azv = load float, ptr %i.azd, align 4, !tbaa !30 ; 2 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azf, i64 4
  %i.azx = load float, ptr %i.azw, align 4, !tbaa !30
  %i.azy = fmul reassoc nsz arcp contract afn float %i.azx, %i.azv
  %i.azz = load float, ptr %i.azg, align 4, !tbaa !30 ; 2 uses
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azh, i64 4
  %i.bab = load float, ptr %i.baa, align 4, !tbaa !30
  %i.bac = fmul reassoc nsz arcp contract afn float %i.bab, %i.azz
  %i.bad = fadd reassoc nsz arcp contract afn float %i.bac, %i.azy
  %i.bae = fadd reassoc nsz arcp contract afn float %i.azz, %i.azv
  %i.baf = fdiv reassoc nsz arcp contract afn float %i.bad, %i.bae
  %i.bag = getelementptr inbounds nuw i8, ptr %i.azj, i64 4 ; 2 uses
  %i.bah = load float, ptr %i.bag, align 4, !tbaa !30
  %i.bai = fadd reassoc nsz arcp contract afn float %i.baf, %i.bah
  store float %i.bai, ptr %i.bag, align 4, !tbaa !30
  %i.baj = load float, ptr %i.azd, align 4, !tbaa !30 ; 2 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %i.azf, i64 8
  %i.bal = load float, ptr %i.bak, align 4, !tbaa !30
  %i.bam = fmul reassoc nsz arcp contract afn float %i.bal, %i.baj
  %i.ban = load float, ptr %i.azg, align 4, !tbaa !30 ; 2 uses
  %i.bao = getelementptr inbounds nuw i8, ptr %i.azh, i64 8
  %i.bap = load float, ptr %i.bao, align 4, !tbaa !30
  %i.baq = fmul reassoc nsz arcp contract afn float %i.bap, %i.ban
  %i.bar = fadd reassoc nsz arcp contract afn float %i.baq, %i.bam
  %i.bas = fadd reassoc nsz arcp contract afn float %i.ban, %i.baj
  %i.bat = fdiv reassoc nsz arcp contract afn float %i.bar, %i.bas
  %i.bau = getelementptr inbounds nuw i8, ptr %i.azj, i64 8 ; 2 uses
  %i.bav = load float, ptr %i.bau, align 4, !tbaa !30
  %i.baw = fadd reassoc nsz arcp contract afn float %i.bat, %i.bav
  store float %i.baw, ptr %i.bau, align 4, !tbaa !30
  %indvars.iv.next421.i = add nsw i64 %indvars.iv420.i, %i.abh ; 3 uses
  %i.bax = icmp slt i64 %indvars.iv.next421.i, %i.abg
  br i1 %i.bax, label %.preheader.i173, label %._crit_edge365.loopexit.i, !llvm.loop !116

._crit_edge365.loopexit.i:                        ; preds = %.preheader.i173
  %i.bay = trunc nsw i64 %indvars.iv.next421.i to i32
  br label %._crit_edge365.i

._crit_edge365.i:                                 ; preds = %._crit_edge365.loopexit.i, %.loopexit326.i
  %.1.lcssa.i170 = phi i32 [ %i.aae, %.loopexit326.i ], [ %i.bay, %._crit_edge365.loopexit.i ] ; 3 uses
  %i.baz = icmp slt i32 %.1.lcssa.i170, %i.f
  br i1 %i.baz, label %.preheader324.i, label %.loopexit.i171

.preheader324.i:                                  ; preds = %._crit_edge365.i
  %i.bba = sub nsw i32 %.1.lcssa.i170, %i.aae
  %i.bbb = sext i32 %i.bba to i64
  %i.bbc = add nsw i64 %i.ars, %i.bbb
  %.idx.i172 = shl i64 %i.bbc, 4
  %i.bbd = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i172 ; 2 uses
  %i.bbe = sext i32 %.1.lcssa.i170 to i64
  %i.bbf = add nsw i64 %i.ars, %i.bbe
  %.idx300.i = shl i64 %i.bbf, 4
  %i.bbg = getelementptr inbounds nuw i8, ptr %3, i64 %.idx300.i ; 3 uses
  %i.bbh = load <2 x float>, ptr %i.bbd, align 4, !tbaa !30
  %i.bbi = load <2 x float>, ptr %i.bbg, align 4, !tbaa !30
  %i.bbj = fadd reassoc nsz arcp contract afn <2 x float> %i.bbi, %i.bbh
  store <2 x float> %i.bbj, ptr %i.bbg, align 4, !tbaa !30
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbd, i64 8
  %i.bbl = load float, ptr %i.bbk, align 4, !tbaa !30
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbg, i64 8 ; 2 uses
  %i.bbn = load float, ptr %i.bbm, align 4, !tbaa !30
  %i.bbo = fadd reassoc nsz arcp contract afn float %i.bbn, %i.bbl
  store float %i.bbo, ptr %i.bbm, align 4, !tbaa !30
  br label %.loopexit.i171

.loopexit.i171:                                   ; preds = %.preheader324.i, %._crit_edge365.i
  %indvars.iv.next428.i = add nuw nsw i64 %indvars.iv427.i, 1 ; 2 uses
  %exitcond431.not.i = icmp eq i64 %indvars.iv.next428.i, %wide.trip.count430.i
  br i1 %exitcond431.not.i, label %dt_iop_equalizer_iwtf.exit, label %.preheader329.i

dt_iop_equalizer_iwtf.exit:                       ; preds = %.loopexit.i171, %._crit_edge354.i
  call void @free(ptr noundef %i.aay) #19
  %i.bbp = icmp sgt i64 %indvars.iv271, 2
  br i1 %i.bbp, label %bb.m, label %.lr.ph235.preheader

._crit_edge236:                                   ; preds = %.lr.ph235, %._crit_edge198
  call void @free(ptr noundef %i.an) #19
  ret void

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %.lr.ph235
  %indvars.iv274 = phi i64 [ 1, %.lr.ph235.preheader ], [ %indvars.iv.next275, %.lr.ph235 ] ; 2 uses
  %i.bbq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv274
  %i.bbr = load ptr, ptr %i.bbq, align 8, !tbaa !122
  call void @free(ptr noundef %i.bbr) #19
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count277
  br i1 %exitcond278.not, label %._crit_edge236, label %.lr.ph235
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #7 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !29  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !34   ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load float, ptr %1, align 4, !tbaa !30
  %i.g = load float, ptr %i.c, align 4, !tbaa !30
  store float %i.f, ptr %i.e, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store float %i.g, ptr %i.h, align 4, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.l = load float, ptr %i.k, align 4, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store float %i.j, ptr %i.m, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store float %i.l, ptr %i.n, align 4, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load float, ptr %i.q, align 4, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store float %i.p, ptr %i.s, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store float %i.r, ptr %i.t, align 4, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load float, ptr %i.u, align 4, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.x = load float, ptr %i.w, align 4, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store float %i.v, ptr %i.y, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store float %i.x, ptr %i.z, align 4, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store float %i.ab, ptr %i.ae, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store float %i.ad, ptr %i.af, align 4, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store float %i.ah, ptr %i.ak, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 68
end_hunk_0
