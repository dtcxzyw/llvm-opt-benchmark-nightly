inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 155
loop-unroll.NumUnrolled: 183
begin_hunk_0_@bary_mul_toom3:bb.a
  %i.axe = xor <4 x i32> %wide.load3026, splat (i32 -1)
  store <4 x i32> %i.axd, ptr %i.axb, align 4, !tbaa !7
  store <4 x i32> %i.axe, ptr %i.axc, align 4, !tbaa !7
  %index.next3027 = add nuw i64 %index3024, 8     ; 2 uses
  %i.axf = icmp eq i64 %index.next3027, %n.vec3022
  br i1 %i.axf, label %middle.block3028, label %vector.body3023, !llvm.loop !114

middle.block3028:                                 ; preds = %vector.body3023
  %cmp.n3029 = icmp eq i64 %i.awy, %n.vec3022
  br i1 %cmp.n3029, label %bary_2comp.exit1244, label %.lr.ph26.i1239.preheader3260

.lr.ph26.i1239.preheader3260:                     ; preds = %.lr.ph26.i1239.preheader, %middle.block3028
  %.125.i1240.ph = phi i64 [ %.124.i1237, %.lr.ph26.i1239.preheader ], [ %i.awz, %middle.block3028 ]
  br label %.lr.ph26.i1239

.lr.ph26.i1239:                                   ; preds = %.lr.ph26.i1239.preheader3260, %.lr.ph26.i1239
  %.125.i1240 = phi i64 [ %.1.i1241, %.lr.ph26.i1239 ], [ %.125.i1240.ph, %.lr.ph26.i1239.preheader3260 ] ; 3 uses
  %i.axg = getelementptr [4 x i8], ptr %i.ak, i64 %.125.i1240 ; 2 uses
  %i.axh = load i32, ptr %i.axg, align 4, !tbaa !7
  %i.axi = xor i32 %i.axh, -1
  store i32 %i.axi, ptr %i.axg, align 4, !tbaa !7
  %.1.i1241 = add nuw i64 %.125.i1240, 1
  %exitcond31.not.i1242 = icmp eq i64 %.125.i1240, %i.j
  br i1 %exitcond31.not.i1242, label %bary_2comp.exit1244, label %.lr.ph26.i1239, !llvm.loop !115

.lr.ph.i.i1250:                                   ; preds = %.lr.ph.i.i1250.preheader, %.lr.ph.i.i1250
  %.05779.i.i1251 = phi i64 [ %i.ayg, %.lr.ph.i.i1250 ], [ 0, %.lr.ph.i.i1250.preheader ] ; 5 uses
  %.05878.i.i1252 = phi i64 [ %i.ayf, %.lr.ph.i.i1250 ], [ 0, %.lr.ph.i.i1250.preheader ]
  %niter3492 = phi i64 [ %niter3492.next.1, %.lr.ph.i.i1250 ], [ 0, %.lr.ph.i.i1250.preheader ]
  %i.axj = getelementptr [4 x i8], ptr %i.ag, i64 %.05779.i.i1251
  %i.axk = load i32, ptr %i.axj, align 4, !tbaa !7
  %i.axl = zext i32 %i.axk to i64
  %i.axm = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i1251
  %i.axn = load i32, ptr %i.axm, align 4, !tbaa !7
  %i.axo = zext i32 %i.axn to i64
  %i.axp = add nuw nsw i64 %.05878.i.i1252, %i.axl
  %i.axq = add nuw nsw i64 %i.axp, %i.axo         ; 2 uses
  %i.axr = trunc i64 %i.axq to i32
  %i.axs = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1251
  store i32 %i.axr, ptr %i.axs, align 4, !tbaa !7
  %i.axt = lshr i64 %i.axq, 32
  %i.axu = or disjoint i64 %.05779.i.i1251, 1     ; 3 uses
  %i.axv = getelementptr [4 x i8], ptr %i.ag, i64 %i.axu
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !7
  %i.axx = zext i32 %i.axw to i64
  %i.axy = getelementptr [4 x i8], ptr %i.ah, i64 %i.axu
  %i.axz = load i32, ptr %i.axy, align 4, !tbaa !7
  %i.aya = zext i32 %i.axz to i64
  %i.ayb = add nuw nsw i64 %i.axt, %i.axx
  %i.ayc = add nuw nsw i64 %i.ayb, %i.aya         ; 2 uses
  %i.ayd = trunc i64 %i.ayc to i32
  %i.aye = getelementptr [4 x i8], ptr %i.ak, i64 %i.axu
  store i32 %i.ayd, ptr %i.aye, align 4, !tbaa !7
  %i.ayf = lshr i64 %i.ayc, 32                    ; 2 uses
  %i.ayg = add nuw i64 %.05779.i.i1251, 2         ; 2 uses
  %niter3492.next.1 = add i64 %niter3492, 2       ; 2 uses
  %niter3492.ncmp.1 = icmp eq i64 %niter3492.next.1, %i.j
  br i1 %niter3492.ncmp.1, label %.lr.ph.i.i1250.epil, label %.lr.ph.i.i1250, !llvm.loop !34

.lr.ph.i.i1250.epil:                              ; preds = %.lr.ph.i.i1250.preheader, %.lr.ph.i.i1250
  %.05779.i.i1251.epil.init = phi i64 [ 0, %.lr.ph.i.i1250.preheader ], [ %i.ayg, %.lr.ph.i.i1250 ] ; 3 uses
  %.05878.i.i1252.epil.init = phi i64 [ 0, %.lr.ph.i.i1250.preheader ], [ %i.ayf, %.lr.ph.i.i1250 ]
  %i.ayh = getelementptr [4 x i8], ptr %i.ag, i64 %.05779.i.i1251.epil.init
  %i.ayi = load i32, ptr %i.ayh, align 4, !tbaa !7
  %i.ayj = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i1251.epil.init
  %i.ayk = load i32, ptr %i.ayj, align 4, !tbaa !7
  %i.ayl = trunc nuw nsw i64 %.05878.i.i1252.epil.init to i32
  %i.aym = add i32 %i.ayi, %i.ayl
  %i.ayn = add i32 %i.aym, %i.ayk
  %i.ayo = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1251.epil.init
  store i32 %i.ayn, ptr %i.ayo, align 4, !tbaa !7
  br label %bary_2comp.exit1244

bary_2comp.exit1244:                              ; preds = %bb.ay, %.lr.ph26.i1239, %.lr.ph.i.i1250.epil, %middle.block3028, %.lr.ph.i.i1199.epil, %bb.az
  %.not587 = phi i32 [ 0, %.lr.ph.i.i1199.epil ], [ 1, %middle.block3028 ], [ 0, %.lr.ph.i.i1250.epil ], [ 1, %bb.az ], [ 1, %.lr.ph26.i1239 ], [ 1, %bb.ay ] ; 4 uses
  %.0544 = phi i32 [ 1, %.lr.ph.i.i1199.epil ], [ 0, %middle.block3028 ], [ 1, %.lr.ph.i.i1250.epil ], [ 0, %bb.az ], [ 0, %.lr.ph26.i1239 ], [ 0, %bb.ay ] ; 5 uses
  %min.iters.check3032 = icmp ult i64 %i.f, 12
  br i1 %min.iters.check3032, label %scalar.ph3031.preheader, label %vector.ph3033

vector.ph3033:                                    ; preds = %bary_2comp.exit1244
  %n.vec3034 = and i64 %i.j, -8                   ; 2 uses
  br label %vector.body3035

vector.body3035:                                  ; preds = %vector.body3035, %vector.ph3033
  %index3036 = phi i64 [ 0, %vector.ph3033 ], [ %index.next3042, %vector.body3035 ] ; 2 uses
  %vector.recur = phi <4 x i64> [ <i64 poison, i64 poison, i64 poison, i64 0>, %vector.ph3033 ], [ %i.ayu, %vector.body3035 ]
  %i.ayp = xor i64 %index3036, -1
  %i.ayq = getelementptr [4 x i8], ptr %i.al, i64 %i.ayp ; 2 uses
  %i.ayr = getelementptr i8, ptr %i.ayq, i64 -12  ; 2 uses
  %i.ays = getelementptr i8, ptr %i.ayq, i64 -28  ; 2 uses
  %wide.load3037 = load <4 x i32>, ptr %i.ayr, align 4, !tbaa !7
  %wide.load3038 = load <4 x i32>, ptr %i.ays, align 4, !tbaa !7
  %reverse = shufflevector <4 x i32> %wide.load3037, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse3039 = shufflevector <4 x i32> %wide.load3038, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ayt = zext <4 x i32> %reverse to <4 x i64>   ; 3 uses
  %i.ayu = zext <4 x i32> %reverse3039 to <4 x i64> ; 4 uses
  %i.ayv = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.ayt, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ayw = shufflevector <4 x i64> %i.ayt, <4 x i64> %i.ayu, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ayx = shl nuw <4 x i64> %i.ayv, splat (i64 32)
  %i.ayy = shl nuw <4 x i64> %i.ayw, splat (i64 32)
  %i.ayz = or disjoint <4 x i64> %i.ayx, %i.ayt
  %i.aza = or disjoint <4 x i64> %i.ayy, %i.ayu
  %i.azb = lshr <4 x i64> %i.ayz, splat (i64 1)
  %i.azc = lshr <4 x i64> %i.aza, splat (i64 1)
  %i.azd = trunc <4 x i64> %i.azb to <4 x i32>
  %i.aze = trunc <4 x i64> %i.azc to <4 x i32>
  %reverse3040 = shufflevector <4 x i32> %i.azd, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse3041 = shufflevector <4 x i32> %i.aze, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse3040, ptr %i.ayr, align 4, !tbaa !7
  store <4 x i32> %reverse3041, ptr %i.ays, align 4, !tbaa !7
  %index.next3042 = add nuw i64 %index3036, 8     ; 2 uses
  %i.azf = icmp eq i64 %index.next3042, %n.vec3034
  br i1 %i.azf, label %middle.block3043, label %vector.body3035, !llvm.loop !116

middle.block3043:                                 ; preds = %vector.body3035
  %vector.recur.extract = extractelement <4 x i64> %i.ayu, i64 3
  br label %scalar.ph3031.preheader

scalar.ph3031.preheader:                          ; preds = %middle.block3043, %bary_2comp.exit1244
  %.017.i1282.ph = phi i64 [ 0, %bary_2comp.exit1244 ], [ %n.vec3034, %middle.block3043 ]
  %.014.in16.i.ph = phi i64 [ 0, %bary_2comp.exit1244 ], [ %vector.recur.extract, %middle.block3043 ]
  br label %scalar.ph3031

scalar.ph3031:                                    ; preds = %scalar.ph3031.preheader, %scalar.ph3031
  %.017.i1282 = phi i64 [ %i.azn, %scalar.ph3031 ], [ %.017.i1282.ph, %scalar.ph3031.preheader ] ; 3 uses
  %.014.in16.i = phi i64 [ %i.azj, %scalar.ph3031 ], [ %.014.in16.i.ph, %scalar.ph3031.preheader ]
  %.014.i = shl nuw i64 %.014.in16.i, 32
  %i.azg = xor i64 %.017.i1282, -1
  %i.azh = getelementptr [4 x i8], ptr %i.al, i64 %i.azg ; 2 uses
  %i.azi = load i32, ptr %i.azh, align 4, !tbaa !7
  %i.azj = zext i32 %i.azi to i64                 ; 2 uses
  %i.azk = or disjoint i64 %.014.i, %i.azj
  %i.azl = lshr i64 %i.azk, 1
  %i.azm = trunc i64 %i.azl to i32
  store i32 %i.azm, ptr %i.azh, align 4, !tbaa !7
  %i.azn = add nuw i64 %.017.i1282, 1
  %exitcond.not.i1283 = icmp eq i64 %.017.i1282, %i.j
  br i1 %exitcond.not.i1283, label %bary_small_rshift.exit, label %scalar.ph3031, !llvm.loop !117

bary_small_rshift.exit:                           ; preds = %scalar.ph3031
  br i1 %i.arp, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bary_small_rshift.exit
  br i1 %.not97.i.i, label %.loopexit74.i.i1300, label %.lr.ph.i.i1285

.lr.ph.i.i1285:                                   ; preds = %bb.ba, %.lr.ph.i.i1285
  %.06278.i.i1286 = phi i64 [ %i.bal, %.lr.ph.i.i1285 ], [ 0, %bb.ba ] ; 5 uses
  %.06377.i.i1287 = phi i64 [ %i.bak, %.lr.ph.i.i1285 ], [ 0, %bb.ba ]
  %i.azo = getelementptr [4 x i8], ptr %i.ah, i64 %.06278.i.i1286
  %i.azp = load i32, ptr %i.azo, align 4, !tbaa !7
  %i.azq = zext i32 %i.azp to i64
  %i.azr = getelementptr [4 x i8], ptr %i.af, i64 %.06278.i.i1286
  %i.azs = load i32, ptr %i.azr, align 4, !tbaa !7
  %i.azt = zext i32 %i.azs to i64
  %i.azu = sub nsw i64 %i.azq, %i.azt
  %i.azv = add nsw i64 %i.azu, %.06377.i.i1287    ; 2 uses
  %i.azw = trunc i64 %i.azv to i32
  %i.azx = getelementptr [4 x i8], ptr %i.al, i64 %.06278.i.i1286
  store i32 %i.azw, ptr %i.azx, align 4, !tbaa !7
  %i.azy = ashr i64 %i.azv, 32
  %i.azz = or disjoint i64 %.06278.i.i1286, 1     ; 3 uses
  %i.baa = getelementptr [4 x i8], ptr %i.ah, i64 %i.azz
  %i.bab = load i32, ptr %i.baa, align 4, !tbaa !7
  %i.bac = zext i32 %i.bab to i64
  %i.bad = getelementptr [4 x i8], ptr %i.af, i64 %i.azz
  %i.bae = load i32, ptr %i.bad, align 4, !tbaa !7
  %i.baf = zext i32 %i.bae to i64
  %i.bag = sub nsw i64 %i.bac, %i.baf
  %i.bah = add nsw i64 %i.bag, %i.azy             ; 2 uses
  %i.bai = trunc i64 %i.bah to i32
  %i.baj = getelementptr [4 x i8], ptr %i.al, i64 %i.azz
  store i32 %i.bai, ptr %i.baj, align 4, !tbaa !7
  %i.bak = ashr i64 %i.bah, 32                    ; 2 uses
  %i.bal = add nuw i64 %.06278.i.i1286, 2         ; 2 uses
  %exitcond.not.i.i1288.1 = icmp eq i64 %i.bal, %i.j
  br i1 %exitcond.not.i.i1288.1, label %._crit_edge.i.i1289, label %.lr.ph.i.i1285, !llvm.loop !48

._crit_edge.i.i1289:                              ; preds = %.lr.ph.i.i1285
  %i.bam = icmp eq i64 %i.bak, 0
  br i1 %i.bam, label %.loopexit74.i.i1300, label %.loopexit71.i.i1293

.loopexit71.i.i1293:                              ; preds = %._crit_edge.i.i1289
  %i.ban = getelementptr [4 x i8], ptr %i.ah, i64 %i.j
  %i.bao = load i32, ptr %i.ban, align 4, !tbaa !7
  %i.bap = zext i32 %i.bao to i64
  %i.baq = add nsw i64 %i.bap, -1                 ; 2 uses
  %i.bar = trunc i64 %i.baq to i32
  %i.bas = getelementptr [4 x i8], ptr %i.al, i64 %i.j
  store i32 %i.bar, ptr %i.bas, align 4, !tbaa !7
  %i.bat = icmp ult i64 %i.baq, 4294967296
  br i1 %i.bat, label %.loopexit74.i.i1300, label %.lr.ph.i1320

.loopexit74.i.i1300:                              ; preds = %bb.ba, %._crit_edge.i.i1289, %.loopexit71.i.i1293
  %.5.i.i1301 = phi i64 [ %i.l, %.loopexit71.i.i1293 ], [ %i.j, %._crit_edge.i.i1289 ], [ %i.j, %bb.ba ] ; 6 uses
  %i.bau = icmp ne ptr %i.ah, %i.al
  %i.bav = icmp ule i64 %.5.i.i1301, %i.j
  %or.cond1991 = and i1 %i.bau, %i.bav
  br i1 %or.cond1991, label %.lr.ph93.i.i1308.preheader, label %bary_2comp.exit1330

.lr.ph93.i.i1308.preheader:                       ; preds = %.loopexit74.i.i1300
  %8 = or disjoint i64 %i.j, 1
  %9 = sub nuw i64 %8, %.5.i.i1301                ; 3 uses
  %min.iters.check3061 = icmp ult i64 %9, 12
  br i1 %min.iters.check3061, label %.lr.ph93.i.i1308.preheader3251, label %vector.memcheck3058

vector.memcheck3058:                              ; preds = %.lr.ph93.i.i1308.preheader
  %i.baw = shl i64 %i.g, 5
  %i.bax = or disjoint i64 %i.baw, 19
  %diff.check3059 = icmp ult i64 %i.bax, 31
  br i1 %diff.check3059, label %.lr.ph93.i.i1308.preheader3251, label %vector.ph3062

vector.ph3062:                                    ; preds = %vector.memcheck3058
  %n.vec3063 = and i64 %9, -8                     ; 3 uses
  %i.bay = add i64 %.5.i.i1301, %n.vec3063
  br label %vector.body3064

vector.body3064:                                  ; preds = %vector.body3064, %vector.ph3062
  %index3065 = phi i64 [ 0, %vector.ph3062 ], [ %index.next3068, %vector.body3064 ] ; 2 uses
  %i.baz = add nuw i64 %.5.i.i1301, %index3065    ; 2 uses
  %i.bba = getelementptr [4 x i8], ptr %i.ah, i64 %i.baz ; 2 uses
  %i.bbb = getelementptr i8, ptr %i.bba, i64 16
  %wide.load3066 = load <4 x i32>, ptr %i.bba, align 4, !tbaa !7
  %wide.load3067 = load <4 x i32>, ptr %i.bbb, align 4, !tbaa !7
  %i.bbc = getelementptr [4 x i8], ptr %i.al, i64 %i.baz ; 2 uses
  %i.bbd = getelementptr i8, ptr %i.bbc, i64 16
  store <4 x i32> %wide.load3066, ptr %i.bbc, align 4, !tbaa !7
  store <4 x i32> %wide.load3067, ptr %i.bbd, align 4, !tbaa !7
  %index.next3068 = add nuw i64 %index3065, 8     ; 2 uses
  %i.bbe = icmp eq i64 %index.next3068, %n.vec3063
  br i1 %i.bbe, label %middle.block3069, label %vector.body3064, !llvm.loop !118

middle.block3069:                                 ; preds = %vector.body3064
  %cmp.n3070 = icmp eq i64 %9, %n.vec3063
  br i1 %cmp.n3070, label %bary_2comp.exit1330, label %.lr.ph93.i.i1308.preheader3251

.lr.ph93.i.i1308.preheader3251:                   ; preds = %vector.memcheck3058, %.lr.ph93.i.i1308.preheader, %middle.block3069
  %.692.i.i1309.ph = phi i64 [ %.5.i.i1301, %vector.memcheck3058 ], [ %.5.i.i1301, %.lr.ph93.i.i1308.preheader ], [ %i.bay, %middle.block3069 ] ; 4 uses
  %i.bbf = or disjoint i64 %i.j, 1
  %i.bbg = sub i64 %i.bbf, %.692.i.i1309.ph
  %i.bbh = sub i64 %i.j, %.692.i.i1309.ph
  %xtraiter3500 = and i64 %i.bbg, 3               ; 2 uses
  %lcmp.mod3501.not = icmp eq i64 %xtraiter3500, 0
  br i1 %lcmp.mod3501.not, label %.lr.ph93.i.i1308.prol.loopexit, label %.lr.ph93.i.i1308.prol

.lr.ph93.i.i1308.prol:                            ; preds = %.lr.ph93.i.i1308.preheader3251, %.lr.ph93.i.i1308.prol
  %.692.i.i1309.prol = phi i64 [ %i.bbl, %.lr.ph93.i.i1308.prol ], [ %.692.i.i1309.ph, %.lr.ph93.i.i1308.preheader3251 ] ; 3 uses
  %prol.iter3502 = phi i64 [ %prol.iter3502.next, %.lr.ph93.i.i1308.prol ], [ 0, %.lr.ph93.i.i1308.preheader3251 ]
  %i.bbi = getelementptr [4 x i8], ptr %i.ah, i64 %.692.i.i1309.prol
  %i.bbj = load i32, ptr %i.bbi, align 4, !tbaa !7
  %i.bbk = getelementptr [4 x i8], ptr %i.al, i64 %.692.i.i1309.prol
  store i32 %i.bbj, ptr %i.bbk, align 4, !tbaa !7
  %i.bbl = add nuw i64 %.692.i.i1309.prol, 1      ; 2 uses
  %prol.iter3502.next = add i64 %prol.iter3502, 1 ; 2 uses
  %prol.iter3502.cmp.not = icmp eq i64 %prol.iter3502.next, %xtraiter3500
  br i1 %prol.iter3502.cmp.not, label %.lr.ph93.i.i1308.prol.loopexit, label %.lr.ph93.i.i1308.prol, !llvm.loop !119

.lr.ph93.i.i1308.prol.loopexit:                   ; preds = %.lr.ph93.i.i1308.prol, %.lr.ph93.i.i1308.preheader3251
  %.692.i.i1309.unr = phi i64 [ %.692.i.i1309.ph, %.lr.ph93.i.i1308.preheader3251 ], [ %i.bbl, %.lr.ph93.i.i1308.prol ]
  %i.bbm = icmp ult i64 %i.bbh, 3
  br i1 %i.bbm, label %bary_2comp.exit1330, label %.lr.ph93.i.i1308

.lr.ph93.i.i1308:                                 ; preds = %.lr.ph93.i.i1308.prol.loopexit, %.lr.ph93.i.i1308
  %.692.i.i1309 = phi i64 [ %i.bcc, %.lr.ph93.i.i1308 ], [ %.692.i.i1309.unr, %.lr.ph93.i.i1308.prol.loopexit ] ; 6 uses
  %i.bbn = getelementptr [4 x i8], ptr %i.ah, i64 %.692.i.i1309
  %i.bbo = load i32, ptr %i.bbn, align 4, !tbaa !7
  %i.bbp = getelementptr [4 x i8], ptr %i.al, i64 %.692.i.i1309
  store i32 %i.bbo, ptr %i.bbp, align 4, !tbaa !7
  %i.bbq = add nuw i64 %.692.i.i1309, 1           ; 2 uses
  %i.bbr = getelementptr [4 x i8], ptr %i.ah, i64 %i.bbq
  %i.bbs = load i32, ptr %i.bbr, align 4, !tbaa !7
  %i.bbt = getelementptr [4 x i8], ptr %i.al, i64 %i.bbq
  store i32 %i.bbs, ptr %i.bbt, align 4, !tbaa !7
  %i.bbu = add nuw i64 %.692.i.i1309, 2           ; 2 uses
  %i.bbv = getelementptr [4 x i8], ptr %i.ah, i64 %i.bbu
  %i.bbw = load i32, ptr %i.bbv, align 4, !tbaa !7
  %i.bbx = getelementptr [4 x i8], ptr %i.al, i64 %i.bbu
  store i32 %i.bbw, ptr %i.bbx, align 4, !tbaa !7
  %i.bby = add nuw i64 %.692.i.i1309, 3           ; 3 uses
  %i.bbz = getelementptr [4 x i8], ptr %i.ah, i64 %i.bby
  %i.bca = load i32, ptr %i.bbz, align 4, !tbaa !7
  %i.bcb = getelementptr [4 x i8], ptr %i.al, i64 %i.bby
  store i32 %i.bca, ptr %i.bcb, align 4, !tbaa !7
  %i.bcc = add nuw i64 %.692.i.i1309, 4
  %exitcond111.not.i.i1310.3 = icmp eq i64 %i.bby, %i.j
  br i1 %exitcond111.not.i.i1310.3, label %bary_2comp.exit1330, label %.lr.ph93.i.i1308, !llvm.loop !120

.lr.ph.i1320:                                     ; preds = %.loopexit71.i.i1293, %bb.bb
  %.023.i1321 = phi i64 [ %i.bcf, %bb.bb ], [ 0, %.loopexit71.i.i1293 ] ; 6 uses
  %i.bcd = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1321
  %i.bce = load i32, ptr %i.bcd, align 4, !tbaa !7 ; 2 uses
  %.not.i1322 = icmp eq i32 %i.bce, 0
  br i1 %.not.i1322, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i1320
  %i.bcf = add nuw i64 %.023.i1321, 1
  %exitcond.not.i1329 = icmp eq i64 %.023.i1321, %i.j
  br i1 %exitcond.not.i1329, label %bary_2comp.exit1330.thr_comm, label %.lr.ph.i1320, !llvm.loop !55

bb.bc:                                            ; preds = %.lr.ph.i1320
  %i.bcg = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1321
  %i.bch = sub i32 0, %i.bce
  store i32 %i.bch, ptr %i.bcg, align 4, !tbaa !7
  %.124.i1323 = add i64 %.023.i1321, 1            ; 4 uses
  %.not2017 = icmp ugt i64 %.124.i1323, %i.j
  br i1 %.not2017, label %bary_2comp.exit1330.thr_comm, label %.lr.ph26.i1325.preheader

.lr.ph26.i1325.preheader:                         ; preds = %bb.bc
  %i.bci = sub i64 %i.j, %.023.i1321              ; 3 uses
  %min.iters.check3047 = icmp ult i64 %i.bci, 8
  br i1 %min.iters.check3047, label %.lr.ph26.i1325.preheader3252, label %vector.ph3048

vector.ph3048:                                    ; preds = %.lr.ph26.i1325.preheader
  %n.vec3049 = and i64 %i.bci, -8                 ; 3 uses
  %i.bcj = add i64 %.124.i1323, %n.vec3049
  %i.bck = getelementptr [4 x i8], ptr %i.al, i64 %.124.i1323
  br label %vector.body3050

vector.body3050:                                  ; preds = %vector.body3050, %vector.ph3048
  %index3051 = phi i64 [ 0, %vector.ph3048 ], [ %index.next3054, %vector.body3050 ] ; 2 uses
  %i.bcl = getelementptr [4 x i8], ptr %i.bck, i64 %index3051 ; 3 uses
  %i.bcm = getelementptr i8, ptr %i.bcl, i64 16   ; 2 uses
  %wide.load3052 = load <4 x i32>, ptr %i.bcl, align 4, !tbaa !7
  %wide.load3053 = load <4 x i32>, ptr %i.bcm, align 4, !tbaa !7
  %i.bcn = xor <4 x i32> %wide.load3052, splat (i32 -1)
  %i.bco = xor <4 x i32> %wide.load3053, splat (i32 -1)
  store <4 x i32> %i.bcn, ptr %i.bcl, align 4, !tbaa !7
  store <4 x i32> %i.bco, ptr %i.bcm, align 4, !tbaa !7
  %index.next3054 = add nuw i64 %index3051, 8     ; 2 uses
  %i.bcp = icmp eq i64 %index.next3054, %n.vec3049
  br i1 %i.bcp, label %middle.block3055, label %vector.body3050, !llvm.loop !121

middle.block3055:                                 ; preds = %vector.body3050
  %cmp.n3056 = icmp eq i64 %i.bci, %n.vec3049
  br i1 %cmp.n3056, label %bary_2comp.exit1330.thr_comm, label %.lr.ph26.i1325.preheader3252

.lr.ph26.i1325.preheader3252:                     ; preds = %.lr.ph26.i1325.preheader, %middle.block3055
  %.125.i1326.ph = phi i64 [ %.124.i1323, %.lr.ph26.i1325.preheader ], [ %i.bcj, %middle.block3055 ]
  br label %.lr.ph26.i1325

.lr.ph26.i1325:                                   ; preds = %.lr.ph26.i1325.preheader3252, %.lr.ph26.i1325
  %.125.i1326 = phi i64 [ %.1.i1327, %.lr.ph26.i1325 ], [ %.125.i1326.ph, %.lr.ph26.i1325.preheader3252 ] ; 3 uses
  %i.bcq = getelementptr [4 x i8], ptr %i.al, i64 %.125.i1326 ; 2 uses
  %i.bcr = load i32, ptr %i.bcq, align 4, !tbaa !7
  %i.bcs = xor i32 %i.bcr, -1
  store i32 %i.bcs, ptr %i.bcq, align 4, !tbaa !7
  %.1.i1327 = add nuw i64 %.125.i1326, 1
  %exitcond31.not.i1328 = icmp eq i64 %.125.i1326, %i.j
  br i1 %exitcond31.not.i1328, label %bary_2comp.exit1330.thr_comm, label %.lr.ph26.i1325, !llvm.loop !122

bb.bd:                                            ; preds = %bary_small_rshift.exit
  br i1 %.not97.i.i, label %.loopexit71.i.i1350, label %.lr.ph.i.i1336

.preheader72.i.i1340:                             ; preds = %.lr.ph.i.i1336
  %i.bct = icmp eq i64 %i.bdq, 0
  br i1 %i.bct, label %.loopexit71.i.i1350, label %bary_2comp.exit1330.thr_comm.loopexit2230

.lr.ph.i.i1336:                                   ; preds = %bb.bd, %.lr.ph.i.i1336
  %.05779.i.i1337 = phi i64 [ %i.bdr, %.lr.ph.i.i1336 ], [ 0, %bb.bd ] ; 5 uses
  %.05878.i.i1338 = phi i64 [ %i.bdq, %.lr.ph.i.i1336 ], [ 0, %bb.bd ]
  %i.bcu = getelementptr [4 x i8], ptr %i.af, i64 %.05779.i.i1337
  %i.bcv = load i32, ptr %i.bcu, align 4, !tbaa !7
  %i.bcw = zext i32 %i.bcv to i64
  %i.bcx = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i1337
  %i.bcy = load i32, ptr %i.bcx, align 4, !tbaa !7
  %i.bcz = zext i32 %i.bcy to i64
  %i.bda = add nuw nsw i64 %.05878.i.i1338, %i.bcw
  %i.bdb = add nuw nsw i64 %i.bda, %i.bcz         ; 2 uses
  %i.bdc = trunc i64 %i.bdb to i32
  %i.bdd = getelementptr [4 x i8], ptr %i.al, i64 %.05779.i.i1337
  store i32 %i.bdc, ptr %i.bdd, align 4, !tbaa !7
  %i.bde = lshr i64 %i.bdb, 32
  %i.bdf = or disjoint i64 %.05779.i.i1337, 1     ; 3 uses
  %i.bdg = getelementptr [4 x i8], ptr %i.af, i64 %i.bdf
  %i.bdh = load i32, ptr %i.bdg, align 4, !tbaa !7
  %i.bdi = zext i32 %i.bdh to i64
  %i.bdj = getelementptr [4 x i8], ptr %i.ah, i64 %i.bdf
  %i.bdk = load i32, ptr %i.bdj, align 4, !tbaa !7
  %i.bdl = zext i32 %i.bdk to i64
  %i.bdm = add nuw nsw i64 %i.bde, %i.bdi
  %i.bdn = add nuw nsw i64 %i.bdm, %i.bdl         ; 2 uses
  %i.bdo = trunc i64 %i.bdn to i32
  %i.bdp = getelementptr [4 x i8], ptr %i.al, i64 %i.bdf
  store i32 %i.bdo, ptr %i.bdp, align 4, !tbaa !7
  %i.bdq = lshr i64 %i.bdn, 32                    ; 2 uses
  %i.bdr = add nuw i64 %.05779.i.i1337, 2         ; 2 uses
  %exitcond.not.i.i1339.1 = icmp eq i64 %i.bdr, %i.j
  br i1 %exitcond.not.i.i1339.1, label %.preheader72.i.i1340, label %.lr.ph.i.i1336, !llvm.loop !34

bary_2comp.exit1330.thr_comm.loopexit2230:        ; preds = %.preheader72.i.i1340
  %i.bds = getelementptr [4 x i8], ptr %i.ah, i64 %i.j
  %i.bdt = load i32, ptr %i.bds, align 4, !tbaa !7
  %i.bdu = add i32 %i.bdt, 1
  br label %bary_2comp.exit1330.thr_comm.sink.split

.loopexit71.i.i1350:                              ; preds = %bb.bd, %.preheader72.i.i1340
  %i.bdv = icmp eq ptr %i.ah, %i.al
  br i1 %i.bdv, label %bary_2comp.exit1330.thr_comm, label %.preheader.i.i1354

.preheader.i.i1354:                               ; preds = %.loopexit71.i.i1350
  %i.bdw = getelementptr [4 x i8], ptr %i.ah, i64 %i.j
  %i.bdx = load i32, ptr %i.bdw, align 4, !tbaa !7
  br label %bary_2comp.exit1330.thr_comm.sink.split
end_hunk_0
