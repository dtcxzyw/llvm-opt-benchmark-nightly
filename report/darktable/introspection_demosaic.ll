Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.aty = shl nsw i64 %i.aoc, 4
  %i.atz = shl nsw i64 %i.aoc, 2
  %scevgep1995 = getelementptr i8, ptr %i.anw, i64 -4
  %i.aua = shl nsw i64 %i.aoc, 4
  %i.aub = mul i32 %i.bo, 384
  %i.auc = shl i32 %i.bo, 2
  %i.aud = mul i32 %i.bo, 384
  %i.aue = shl i32 %i.bo, 2
  %scevgep2044 = getelementptr i8, ptr %i.anw, i64 -212
  %i.auf = mul nuw nsw i64 %i.aqf, 123
  %i.aug = select i1 %i.apa, i64 1547936, i64 773968
  %i.auh = mul nuw nsw i64 %i.aqf, 122
  %i.aui = add nuw nsw i64 %i.aqf, 1
  %i.auj = add nsw i32 %.neg.i511, 122
  %i.auk = mul nuw nsw i64 %i.aqf, 492            ; 5 uses
  %i.aul = select i1 %i.apa, i64 1905152, i64 952576
  %i.aum = mul nuw nsw i64 %i.aqf, 488            ; 9 uses
  %i.aun = add nuw nsw i64 %i.api, %i.auk         ; 2 uses
  %i.auo = select i1 %i.apa, i64 1905152, i64 952576
  %i.aup = select i1 %i.apa, i64 1905152, i64 952576
  %i.auq = add nuw nsw i64 %i.api, %i.auk         ; 2 uses
  %i.aur = select i1 %i.apa, i64 1905152, i64 952576
  %i.aus = select i1 %i.apa, i64 1905152, i64 952576
  %i.aut = add nuw nsw i64 %i.api, %i.auk         ; 2 uses
  %i.auu = select i1 %i.apa, i64 1905152, i64 952576
  %i.auv = select i1 %i.apa, i64 1905152, i64 952576
  %i.auw = add nuw nsw i64 %i.api, %i.auk         ; 2 uses
  %i.aux = select i1 %i.apa, i64 1905152, i64 952576
  %i.auy = select i1 %i.apa, i64 1905152, i64 952576
  %i.auz = mul nuw nsw i64 %i.aqe, 492            ; 3 uses
  %i.ava = add nuw nsw i64 %i.api, %i.auz
  %i.avb = add nuw nsw i64 %i.ava, 178608
  %i.avc = add nuw nsw i64 %i.api, %i.auz
  %i.avd = add nuw nsw i64 %i.api, %i.auz
  %scevgep3519 = getelementptr i8, ptr %i.d, i64 -8
  %i.ave = shl nuw nsw i64 %i.aod, 4              ; 3 uses
  %i.avf = getelementptr i8, ptr %i.anw, i64 %i.ave
  %scevgep4456 = getelementptr i8, ptr %i.avf, i64 -12
  %i.avg = shl nsw i64 %i.aoc, 4
  %i.avh = insertelement <4 x ptr> poison, ptr %i.anw, i64 0
  %i.avi = shufflevector <4 x ptr> %i.avh, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.avj = getelementptr i8, ptr %i.anw, <4 x i64> <i64 12, i64 8, i64 4, i64 4> ; 2 uses
  %i.avk = getelementptr i8, ptr %i.anw, i64 %i.ave
  %scevgep4459 = getelementptr i8, ptr %i.avk, i64 -8
  %scevgep4461 = getelementptr i8, ptr %i.anw, i64 8 ; 2 uses
  %i.avl = getelementptr i8, ptr %i.anw, i64 %i.ave
  %scevgep4462 = getelementptr i8, ptr %i.avl, i64 -4
  %i.avm = getelementptr i8, ptr %i.anw, <2 x i64> <i64 4, i64 12>
  %scevgep4464 = getelementptr i8, ptr %i.anw, i64 12
  %i.avn = shl nuw nsw i64 %i.aod, 4
  %i.avo = shl nuw nsw i64 %i.aod, 2
  %scevgep4466 = getelementptr i8, ptr %.1, i64 %i.avo
  %i.avp = shl nsw i64 %i.aoc, 2
  %i.avq = select i1 %i.apa, i64 1547936, i64 773968
  %i.avr = mul nuw nsw i64 %i.apv, 123
  %i.avs = add nsw i64 %i.aod, -1                 ; 2 uses
  %xtraiter4675 = and i64 %i.aod, 3               ; 3 uses
  %i.avt = icmp ult i64 %i.avs, 3
  %unroll_iter4678 = and i64 %i.aod, 2147483644
  %lcmp.mod4676.not = icmp eq i64 %xtraiter4675, 0
  %lcmp.mod4677 = icmp ne i64 %xtraiter4675, 0
  %xtraiter4680 = and i64 %i.aod, 1
  %i.avu = icmp eq i64 %i.avs, 0
  %unroll_iter4684 = and i64 %i.aod, 2147483646
  %lcmp.mod4682.not = icmp eq i64 %xtraiter4680, 0
  %lcmp.mod4683 = trunc i32 %i.bo to i1
  %i.avv = shufflevector <4 x ptr> %i.avj, <4 x ptr> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 poison>
  %i.avw = shufflevector <2 x ptr> %i.avm, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %min.iters.check4508 = icmp ult i32 %i.bo, 16
  %i.avx = insertelement <4 x ptr> %i.avw, ptr %scevgep4461, i64 3
  %n.vec4510 = and i64 %i.aod, 2147483640         ; 3 uses
  %cmp.n4528 = icmp eq i64 %n.vec4510, %i.aod
  %xtraiter4686 = and i64 %i.aod, 3               ; 2 uses
  %lcmp.mod4687.not = icmp eq i64 %xtraiter4686, 0
  %broadcast.splatinsert4421 = insertelement <8 x float> poison, float %i.any, i64 0
  %broadcast.splat4422 = shufflevector <8 x float> %broadcast.splatinsert4421, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %broadcast.splatinsert4443 = insertelement <8 x float> poison, float %i.any, i64 0
  %broadcast.splat4444 = shufflevector <8 x float> %broadcast.splatinsert4443, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert3699 = insertelement <8 x float> poison, float %i.eh, i64 0
  %broadcast.splat3700 = shufflevector <8 x float> %broadcast.splatinsert3699, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert3676 = insertelement <8 x float> poison, float %i.eh, i64 0 ; 2 uses
  %broadcast.splat3677 = shufflevector <8 x float> %broadcast.splatinsert3676, <8 x float> poison, <8 x i32> zeroinitializer
  %i.avy = shufflevector <8 x float> %broadcast.splatinsert3676, <8 x float> poison, <16 x i32> zeroinitializer
  %i.avz = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.awa = shufflevector <2 x float> %i.avz, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert3640 = insertelement <8 x float> poison, float %i.eh, i64 0
  %broadcast.splat3641 = shufflevector <8 x float> %broadcast.splatinsert3640, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.awb = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat3641
  %i.awc = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat3641
  %i.awd = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat3641
  %i.awe = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat3641
  %broadcast.splatinsert3661 = insertelement <4 x float> poison, float %i.eh, i64 0
  %broadcast.splat3662 = shufflevector <4 x float> %broadcast.splatinsert3661, <4 x float> poison, <4 x i32> zeroinitializer
  %i.awf = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat3662
  %i.awg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eh
  %broadcast.splatinsert2947 = insertelement <8 x float> poison, float %i.eh, i64 0 ; 2 uses
  %broadcast.splat2948 = shufflevector <8 x float> %broadcast.splatinsert2947, <8 x float> poison, <8 x i32> zeroinitializer
  %i.awh = shufflevector <8 x float> %broadcast.splatinsert2947, <8 x float> poison, <16 x i32> zeroinitializer
  %i.awi = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.eh, i64 0
  %i.awj = shufflevector <4 x float> %i.awi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %broadcast.splatinsert2864 = insertelement <8 x i64> poison, i64 %i.aoc, i64 0
  %broadcast.splat2865 = shufflevector <8 x i64> %broadcast.splatinsert2864, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2866 = insertelement <8 x i32> poison, i32 %i.apo, i64 0
  %broadcast.splat2867 = shufflevector <8 x i32> %broadcast.splatinsert2866, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2913 = insertelement <4 x i64> poison, i64 %i.aoc, i64 0
  %broadcast.splat2914 = shufflevector <4 x i64> %broadcast.splatinsert2913, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2915 = insertelement <4 x i32> poison, i32 %i.apo, i64 0
  %broadcast.splat2916 = shufflevector <4 x i32> %broadcast.splatinsert2915, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2777 = insertelement <8 x i64> poison, i64 %i.aoc, i64 0
  %broadcast.splat2778 = shufflevector <8 x i64> %broadcast.splatinsert2777, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2779 = insertelement <8 x i32> poison, i32 %i.apo, i64 0
  %broadcast.splat2780 = shufflevector <8 x i32> %broadcast.splatinsert2779, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2826 = insertelement <4 x i64> poison, i64 %i.aoc, i64 0
  %broadcast.splat2827 = shufflevector <4 x i64> %broadcast.splatinsert2826, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2828 = insertelement <4 x i32> poison, i32 %i.apo, i64 0
  %broadcast.splat2829 = shufflevector <4 x i32> %broadcast.splatinsert2828, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.awk = add nuw nsw i64 %i.aqe, 1
  %xtraiter4727 = and i64 %i.aqb, 4               ; 2 uses
  %unroll_iter4732 = and i64 %i.aqb, 8
  %lcmp.mod4729.not = icmp eq i64 %xtraiter4727, 0
  %lcmp.mod4731 = icmp ne i64 %xtraiter4727, 0
  %n.vec2696 = and i64 %i.aqb, 8
  %n.vec2622 = and i64 %i.aqb, 8
  %n.vec2577 = and i64 %i.aqb, 8
  %min.iters.check2015 = icmp ult i32 %i.bo, 9
  %stride.check2005 = icmp slt i32 %i.bo, 0
  %i.awl = and i64 %i.aoc, 7
  %i.awm = and i32 %i.bo, 7
  %i.awn = icmp eq i32 %i.awm, 0
  %i.awo = select i1 %i.awn, i64 8, i64 %i.awl
  %n.vec2017 = sub nsw i64 %i.aoc, %i.awo         ; 2 uses
  %i.awp = add nsw i64 %i.aoc, -1
  %i.awq = add nsw i64 %i.aoc, -2                 ; 3 uses
  %min.iters.check1980 = icmp ult i64 %i.awq, 9
  %stride.check1970 = icmp slt i32 %i.bo, 0
  %i.awr = and i64 %i.awq, 7                      ; 2 uses
  %i.aws = icmp eq i64 %i.awr, 0
  %i.awt = select i1 %i.aws, i64 8, i64 %i.awr
  %n.vec1982 = sub nsw i64 %i.awq, %i.awt         ; 2 uses
  %i.awu = add nsw i64 %n.vec1982, 2
  %i.awv = add nsw i64 %i.aoc, -1
  br label %bb.hc

._crit_edge:                                      ; preds = %bb.sg, %.thread726
  br i1 %.not75.i, label %bb.sh, label %bb.si

bb.hc:                                            ; preds = %.lr.ph, %bb.sg
  %indvars.iv1249 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1250, %bb.sg ] ; 3 uses
  %indvars1251 = trunc i64 %indvars.iv1249 to i32 ; 2 uses
  %i.aww = mul i64 %indvars.iv1249, %i.atp        ; 2 uses
  %i.awx = mul nsw i32 %.0684720, %indvars1251
  %i.awy = trunc i64 %i.aww to i32                ; 2 uses
  %i.awz = add i32 %i.anz, %i.awy
  %. = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.awz) ; 2 uses
  %i.axa = trunc i64 %i.aww to i32
  %i.axb = sub i32 %i.axa, %.0688708714           ; 2 uses
  %i.axc = tail call i32 @llvm.smax.i32(i32 %i.axb, i32 0) ; 4 uses
  %i.axd = sub nsw i32 %., %i.axc                 ; 2 uses
  %i.axe = select i1 %.not75.i, i32 %i.axd, i32 %i.bq ; 64 uses
  %i.axf = tail call i32 @llvm.smin.i32(i32 %i.axb, i32 0)
  %i.axg = add nsw i32 %i.axf, %.0688708714       ; 2 uses
  %i.axh = sub nsw i32 %i.axe, %i.axg             ; 2 uses
  %i.axi = icmp sgt i32 %i.axh, 0
  br i1 %i.axi, label %bb.hd, label %bb.sg

bb.hd:                                            ; preds = %bb.hc
  br i1 %.not75.i, label %bb.he, label %bb.hg

bb.he:                                            ; preds = %bb.hd
  %i.axj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.axk = and i32 %i.axj, 25165824
  %or.cond434.not = icmp eq i32 %i.axk, 25165824
  br i1 %or.cond434.not, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.26, i32 noundef %indvars1251, i32 noundef %.0682723, i32 noundef %i.awx, i32 noundef %i.axc, i32 noundef %., i32 noundef %i.axd) #27
  br label %bb.hg

bb.hg:                                            ; preds = %bb.he, %bb.hf, %bb.hd
  %i.axl = mul nsw i32 %i.axc, %i.bo
  %i.axm = shl i32 %i.axl, %i.aoa
  %i.axn = sext i32 %i.axm to i64                 ; 4 uses
  %i.axo = getelementptr [4 x i8], ptr %.1, i64 %i.axn ; 68 uses
  br i1 %i.cv, label %bb.hh, label %bb.hv

bb.hh:                                            ; preds = %bb.hg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.axp = icmp slt i32 %i.axe, 1
  %brmerge = select i1 %i.axp, i1 true, i1 %i.aob
  br i1 %brmerge, label %demosaic_box3.exit, label %.preheader59.preheader.i

.preheader59.preheader.i:                         ; preds = %bb.hh
  %wide.trip.count76.i = zext nneg i32 %i.axe to i64
  br label %.preheader59.i

.preheader59.i:                                   ; preds = %._crit_edge.i, %.preheader59.preheader.i
  %indvars.iv73.i = phi i64 [ 0, %.preheader59.preheader.i ], [ %indvars.iv.next74.i, %._crit_edge.i ] ; 5 uses
  %i.axq = mul nuw nsw i64 %indvars.iv73.i, %i.aod
  %i.axr = trunc i64 %indvars.iv73.i to i32       ; 16 uses
  %i.axs = add i32 %i.axr, -1                     ; 9 uses
  %i.axt = icmp slt i32 %i.axs, %i.axe
  %i.axu = shl i32 %i.axs, 1
  %i.axv = and i32 %i.axu, 14                     ; 3 uses
  %i.axw = zext nneg i32 %i.axs to i64
  %i.axx = mul nuw nsw i64 %i.axw, %i.aod
  %i.axy = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.axx ; 3 uses
  %or.cond.1.i = icmp sgt i32 %i.axs, -1
  %i.axz = icmp slt i32 %i.axr, 2147483646
  %i.aya = icmp sgt i32 %i.axe, %i.axr
  %i.ayb = shl i32 %i.axr, 1
  %i.ayc = and i32 %i.ayb, 14                     ; 3 uses
  %i.ayd = and i64 %indvars.iv73.i, 4294967295
  %i.aye = mul nuw nsw i64 %i.ayd, %i.aod
  %i.ayf = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.aye ; 3 uses
  %or.cond.1.i.1 = icmp sgt i32 %i.axr, -1
  %i.ayg = add nsw i32 %i.axr, 1                  ; 4 uses
  %i.ayh = icmp slt i32 %i.ayg, %i.axe
  %i.ayi = shl i32 %i.ayg, 1
  %i.ayj = and i32 %i.ayi, 14                     ; 3 uses
  %i.ayk = zext nneg i32 %i.ayg to i64
  %i.ayl = mul nuw nsw i64 %i.ayk, %i.aod
  %i.aym = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.ayl ; 3 uses
  %or.cond.1.i.2 = icmp sgt i32 %i.axr, -2
  %i.ayn = icmp slt i32 %i.axs, %i.axe
  %i.ayo = add i32 %i.axr, 599
  %i.ayp = srem i32 %i.ayo, 6
  %i.ayq = sext i32 %i.ayp to i64
  %i.ayr = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.ayq ; 3 uses
  %i.ays = zext nneg i32 %i.axs to i64
  %i.ayt = mul nuw nsw i64 %i.ays, %i.aod
  %i.ayu = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.ayt ; 3 uses
  %or.cond.us.1.i.us = icmp sgt i32 %i.axs, -1
  %i.ayv = icmp slt i32 %i.axr, 2147483646
  %i.ayw = icmp sgt i32 %i.axe, %i.axr
  %i.ayx = and i64 %indvars.iv73.i, 4294967295
  %i.ayy = mul nuw nsw i64 %i.ayx, %i.aod
  %i.ayz = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.ayy ; 3 uses
  %or.cond.us.1.i.us.1 = icmp sgt i32 %i.axr, -1
  %i.aza = add nsw i32 %i.axr, 1                  ; 3 uses
  %i.azb = icmp slt i32 %i.aza, %i.axe
  %i.azc = insertelement <2 x i32> poison, i32 %i.axr, i64 0
  %i.azd = shufflevector <2 x i32> %i.azc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aze = add nsw <2 x i32> %i.azd, <i32 600, i32 601>
  %i.azf = srem <2 x i32> %i.aze, splat (i32 6)   ; 2 uses
  %i.azg = extractelement <2 x i32> %i.azf, i64 0
  %i.azh = sext i32 %i.azg to i64
  %i.azi = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.azh ; 3 uses
  %i.azj = extractelement <2 x i32> %i.azf, i64 1
  %i.azk = sext i32 %i.azj to i64
  %i.azl = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.azk ; 3 uses
  %i.azm = zext nneg i32 %i.aza to i64
  %i.azn = mul nuw nsw i64 %i.azm, %i.aod
  %i.azo = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.azn ; 3 uses
  %or.cond.us.1.i.us.2 = icmp sgt i32 %i.axr, -2
  br label %bb.hi

._crit_edge.i:                                    ; preds = %.preheader.i
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next74.i, %wide.trip.count76.i
  br i1 %exitcond77.not.i, label %demosaic_box3.exit, label %.preheader59.i

bb.hi:                                            ; preds = %.preheader.i, %.preheader59.i
  %indvars.iv.i = phi i64 [ 0, %.preheader59.i ], [ %i.azu, %.preheader.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #27, !noalias !472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, i8 0, i64 16, i1 false), !noalias !472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #27, !noalias !472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !noalias !472
  %i.azp = add nsw i64 %indvars.iv.i, -1          ; 7 uses
  %i.azq = trunc nsw i64 %i.azp to i32            ; 7 uses
  %i.azr = and i32 %i.azq, 1                      ; 3 uses
  %i.azs = trunc i64 %indvars.iv.i to i32         ; 3 uses
  %i.azt = and i32 %i.azs, 1                      ; 3 uses
  %i.azu = add nuw nsw i64 %indvars.iv.i, 1       ; 10 uses
  %6 = icmp samesign ult i64 %i.azu, %i.aod       ; 6 uses
  %7 = trunc nuw nsw i64 %i.azu to i32
  %i.azv = and i32 %7, 1                          ; 3 uses
  %i.azw = add i32 %i.azs, 599
  %i.azx = srem i32 %i.azw, 6
  %i.azy = sext i32 %i.azx to i64                 ; 3 uses
  %i.azz = insertelement <2 x i32> poison, i32 %i.azs, i64 0
  %i.baa = shufflevector <2 x i32> %i.azz, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bab = add <2 x i32> %i.baa, <i32 600, i32 601>
  %i.bac = srem <2 x i32> %i.bab, splat (i32 6)   ; 2 uses
  %i.bad = extractelement <2 x i32> %i.bac, i64 0
  %i.bae = sext i32 %i.bad to i64                 ; 3 uses
  %i.baf = extractelement <2 x i32> %i.bac, i64 1
  %i.bag = sext i32 %i.baf to i64                 ; 3 uses
  br i1 %i.bd, label %.split1053.us.preheader, label %.split1053.preheader

.split1053.preheader:                             ; preds = %bb.hi
  br i1 %i.axt, label %.split.i, label %.split62.us.i

.split1053.us.preheader:                          ; preds = %bb.hi
  br i1 %i.ayn, label %.split.i.us, label %.split62.us.i.us

.split.i.us:                                      ; preds = %.split1053.us.preheader
  %i.bah = or i32 %i.axs, %i.azq
  %or.cond.us.i.us = icmp sgt i32 %i.bah, -1
  br i1 %or.cond.us.i.us, label %bb.hj, label %.split.split.us.1.i.us

bb.hj:                                            ; preds = %.split.i.us
  %i.bai = getelementptr inbounds i8, ptr %i.ayr, i64 %i.azy
  %i.baj = load i8, ptr %i.bai, align 1, !tbaa !133, !noalias !472
  %i.bak = getelementptr inbounds nuw [4 x i8], ptr %i.ayu, i64 %i.azp
  %i.bal = load float, ptr %i.bak, align 4, !tbaa !12, !alias.scope !471, !noalias !470 ; 2 uses
  %i.bam = fcmp reassoc nsz arcp contract afn olt float %i.bal, 0.000000e+00
  %spec.select.us.i.us = select reassoc nsz arcp contract afn i1 %i.bam, float 0.000000e+00, float %i.bal
  %i.ban = zext i8 %i.baj to i64                  ; 2 uses
  %i.bao = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ban ; 2 uses
  %i.bap = load float, ptr %i.bao, align 4, !tbaa !12, !noalias !472
  %i.baq = fadd reassoc nsz arcp contract afn float %spec.select.us.i.us, %i.bap
  store float %i.baq, ptr %i.bao, align 4, !tbaa !12, !noalias !472
  %i.bar = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ban ; 2 uses
  %i.bas = load float, ptr %i.bar, align 4, !tbaa !12, !noalias !472
  %i.bat = fadd reassoc nsz arcp contract afn float %i.bas, 1.000000e+00
  store float %i.bat, ptr %i.bar, align 4, !tbaa !12, !noalias !472
  br label %.split.split.us.1.i.us

.split.split.us.1.i.us:                           ; preds = %bb.hj, %.split.i.us
  br i1 %or.cond.us.1.i.us, label %bb.hk, label %.split1053.us.1

bb.hk:                                            ; preds = %.split.split.us.1.i.us
  %i.bau = getelementptr inbounds i8, ptr %i.ayr, i64 %i.bae
  %i.bav = load i8, ptr %i.bau, align 1, !tbaa !133, !noalias !472
  %i.baw = getelementptr inbounds nuw [4 x i8], ptr %i.ayu, i64 %indvars.iv.i
  %i.bax = load float, ptr %i.baw, align 4, !tbaa !12, !alias.scope !471, !noalias !470 ; 2 uses
  %i.bay = fcmp reassoc nsz arcp contract afn olt float %i.bax, 0.000000e+00
  %spec.select.us.1.i.us = select reassoc nsz arcp contract afn i1 %i.bay, float 0.000000e+00, float %i.bax
  %i.baz = zext i8 %i.bav to i64                  ; 2 uses
  %i.bba = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.baz ; 2 uses
  %i.bbb = load float, ptr %i.bba, align 4, !tbaa !12, !noalias !472
  %i.bbc = fadd reassoc nsz arcp contract afn float %spec.select.us.1.i.us, %i.bbb
  store float %i.bbc, ptr %i.bba, align 4, !tbaa !12, !noalias !472
  %i.bbd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.baz ; 2 uses
  %i.bbe = load float, ptr %i.bbd, align 4, !tbaa !12, !noalias !472
  %i.bbf = fadd reassoc nsz arcp contract afn float %i.bbe, 1.000000e+00
  store float %i.bbf, ptr %i.bbd, align 4, !tbaa !12, !noalias !472
  br i1 %6, label %.split62.us.sink.split.i.us, label %.split62.us.i.us

.split62.us.sink.split.i.us:                      ; preds = %bb.hk
  %i.bbg = getelementptr inbounds i8, ptr %i.ayr, i64 %i.bag
  %i.bbh = load i8, ptr %i.bbg, align 1, !tbaa !133, !noalias !472
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr %i.ayu, i64 %i.azu
  %i.bbj = load float, ptr %i.bbi, align 4, !tbaa !12, !alias.scope !471, !noalias !470 ; 2 uses
  %i.bbk = fcmp reassoc nsz arcp contract afn olt float %i.bbj, 0.000000e+00
  %spec.select.us.2.i.us = select reassoc nsz arcp contract afn i1 %i.bbk, float 0.000000e+00, float %i.bbj
  %i.bbl = zext i8 %i.bbh to i64                  ; 2 uses
  %i.bbm = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bbl ; 2 uses
  %i.bbn = load float, ptr %i.bbm, align 4, !tbaa !12, !noalias !472
  %i.bbo = fadd reassoc nsz arcp contract afn float %i.bbn, %spec.select.us.2.i.us
  store float %i.bbo, ptr %i.bbm, align 4, !tbaa !12, !noalias !472
  %i.bbp = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bbl ; 2 uses
  %i.bbq = load float, ptr %i.bbp, align 4, !tbaa !12, !noalias !472
  %i.bbr = fadd reassoc nsz arcp contract afn float %i.bbq, 1.000000e+00
  store float %i.bbr, ptr %i.bbp, align 4, !tbaa !12, !noalias !472
  br label %.split62.us.i.us

.split62.us.i.us:                                 ; preds = %.split62.us.sink.split.i.us, %bb.hk, %.split1053.us.preheader
  br i1 %i.ayv, label %.split1053.us.1, label %.preheader.i

.split1053.us.1:                                  ; preds = %.split.split.us.1.i.us, %.split62.us.i.us
  br i1 %i.ayw, label %.split.i.us.1, label %.split62.us.i.us.1

.split.i.us.1:                                    ; preds = %.split1053.us.1
  %i.bbs = or i32 %i.axr, %i.azq
  %or.cond.us.i.us.1 = icmp sgt i32 %i.bbs, -1
  br i1 %or.cond.us.i.us.1, label %bb.hl, label %.split.split.us.1.i.us.1

bb.hl:                                            ; preds = %.split.i.us.1
  %i.bbt = getelementptr inbounds i8, ptr %i.azi, i64 %i.azy
  %i.bbu = load i8, ptr %i.bbt, align 1, !tbaa !133, !noalias !472
  %i.bbv = getelementptr inbounds nuw [4 x i8], ptr %i.ayz, i64 %i.azp
  %i.bbw = load float, ptr %i.bbv, align 4, !tbaa !12, !alias.scope !471, !noalias !470 ; 2 uses
  %i.bbx = fcmp reassoc nsz arcp contract afn olt float %i.bbw, 0.000000e+00
  %spec.select.us.i.us.1 = select reassoc nsz arcp contract afn i1 %i.bbx, float 0.000000e+00, float %i.bbw
  %i.bby = zext i8 %i.bbu to i64                  ; 2 uses
  %i.bbz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bby ; 2 uses
  %i.bca = load float, ptr %i.bbz, align 4, !tbaa !12, !noalias !472
  %i.bcb = fadd reassoc nsz arcp contract afn float %spec.select.us.i.us.1, %i.bca
  store float %i.bcb, ptr %i.bbz, align 4, !tbaa !12, !noalias !472
  %i.bcc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bby ; 2 uses
  %i.bcd = load float, ptr %i.bcc, align 4, !tbaa !12, !noalias !472
  %i.bce = fadd reassoc nsz arcp contract afn float %i.bcd, 1.000000e+00
  store float %i.bce, ptr %i.bcc, align 4, !tbaa !12, !noalias !472
  br label %.split.split.us.1.i.us.1

.split.split.us.1.i.us.1:                         ; preds = %bb.hl, %.split.i.us.1
  br i1 %or.cond.us.1.i.us.1, label %bb.hm, label %.split62.us.i.us.1

bb.hm:                                            ; preds = %.split.split.us.1.i.us.1
  %i.bcf = getelementptr inbounds i8, ptr %i.azi, i64 %i.bae
  %i.bcg = load i8, ptr %i.bcf, align 1, !tbaa !133, !noalias !472
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %i.ayz, i64 %indvars.iv.i
  %i.bci = load float, ptr %i.bch, align 4, !tbaa !12, !alias.scope !471, !noalias !470 ; 2 uses
  %i.bcj = fcmp reassoc nsz arcp contract afn olt float %i.bci, 0.000000e+00
  %spec.select.us.1.i.us.1 = select reassoc nsz arcp contract afn i1 %i.bcj, float 0.000000e+00, float %i.bci
  %i.bck = zext i8 %i.bcg to i64                  ; 2 uses
  %i.bcl = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bck ; 2 uses
  %i.bcm = load float, ptr %i.bcl, align 4, !tbaa !12, !noalias !472
  %i.bcn = fadd reassoc nsz arcp contract afn float %spec.select.us.1.i.us.1, %i.bcm
  store float %i.bcn, ptr %i.bcl, align 4, !tbaa !12, !noalias !472
  %i.bco = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bck ; 2 uses
  %i.bcp = load float, ptr %i.bco, align 4, !tbaa !12, !noalias !472
  %i.bcq = fadd reassoc nsz arcp contract afn float %i.bcp, 1.000000e+00
  store float %i.bcq, ptr %i.bco, align 4, !tbaa !12, !noalias !472
  br i1 %6, label %.split62.us.sink.split.i.us.1, label %.split62.us.i.us.1

.split62.us.sink.split.i.us.1:                    ; preds = %bb.hm
  %i.bcr = getelementptr inbounds i8, ptr %i.azi, i64 %i.bag
  %i.bcs = load i8, ptr %i.bcr, align 1, !tbaa !133, !noalias !472
  %i.bct = getelementptr inbounds nuw [4 x i8], ptr %i.ayz, i64 %i.azu
  %i.bcu = load float, ptr %i.bct, align 4, !tbaa !12, !alias.scope !471, !noalias !470 ; 2 uses
  %i.bcv = fcmp reassoc nsz arcp contract afn olt float %i.bcu, 0.000000e+00
  %spec.select.us.2.i.us.1 = select reassoc nsz arcp contract afn i1 %i.bcv, float 0.000000e+00, float %i.bcu
  %i.bcw = zext i8 %i.bcs to i64                  ; 2 uses
  %i.bcx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bcw ; 2 uses
  %i.bcy = load float, ptr %i.bcx, align 4, !tbaa !12, !noalias !472
  %i.bcz = fadd reassoc nsz arcp contract afn float %i.bcy, %spec.select.us.2.i.us.1
  store float %i.bcz, ptr %i.bcx, align 4, !tbaa !12, !noalias !472
  %i.bda = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bcw ; 2 uses
  %i.bdb = load float, ptr %i.bda, align 4, !tbaa !12, !noalias !472
  %i.bdc = fadd reassoc nsz arcp contract afn float %i.bdb, 1.000000e+00
  store float %i.bdc, ptr %i.bda, align 4, !tbaa !12, !noalias !472
  br label %.split62.us.i.us.1

.split62.us.i.us.1:                               ; preds = %.split62.us.sink.split.i.us.1, %bb.hm, %.split.split.us.1.i.us.1, %.split1053.us.1
  br i1 %i.azb, label %.split.i.us.2, label %.preheader.i

.split.i.us.2:                                    ; preds = %.split62.us.i.us.1
  %i.bdd = or i32 %i.aza, %i.azq
  %or.cond.us.i.us.2 = icmp sgt i32 %i.bdd, -1
  br i1 %or.cond.us.i.us.2, label %bb.hn, label %.split.split.us.1.i.us.2

bb.hn:                                            ; preds = %.split.i.us.2
  %i.bde = getelementptr inbounds i8, ptr %i.azl, i64 %i.azy
  %i.bdf = load i8, ptr %i.bde, align 1, !tbaa !133, !noalias !472
  %i.bdg = getelementptr inbounds nuw [4 x i8], ptr %i.azo, i64 %i.azp
  %i.bdh = load float, ptr %i.bdg, align 4, !tbaa !12, !alias.scope !471, !noalias !470 ; 2 uses
  %i.bdi = fcmp reassoc nsz arcp contract afn olt float %i.bdh, 0.000000e+00
  %spec.select.us.i.us.2 = select reassoc nsz arcp contract afn i1 %i.bdi, float 0.000000e+00, float %i.bdh
  %i.bdj = zext i8 %i.bdf to i64                  ; 2 uses
  %i.bdk = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bdj ; 2 uses
  %i.bdl = load float, ptr %i.bdk, align 4, !tbaa !12, !noalias !472
  %i.bdm = fadd reassoc nsz arcp contract afn float %spec.select.us.i.us.2, %i.bdl
  store float %i.bdm, ptr %i.bdk, align 4, !tbaa !12, !noalias !472
  %i.bdn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bdj ; 2 uses
  %i.bdo = load float, ptr %i.bdn, align 4, !tbaa !12, !noalias !472
  %i.bdp = fadd reassoc nsz arcp contract afn float %i.bdo, 1.000000e+00
  store float %i.bdp, ptr %i.bdn, align 4, !tbaa !12, !noalias !472
  br label %.split.split.us.1.i.us.2

.split.split.us.1.i.us.2:                         ; preds = %bb.hn, %.split.i.us.2
  br i1 %or.cond.us.1.i.us.2, label %bb.ho, label %.preheader.i

bb.ho:                                            ; preds = %.split.split.us.1.i.us.2
  %i.bdq = getelementptr inbounds i8, ptr %i.azl, i64 %i.bae
  %i.bdr = load i8, ptr %i.bdq, align 1, !tbaa !133, !noalias !472
  %i.bds = getelementptr inbounds nuw [4 x i8], ptr %i.azo, i64 %indvars.iv.i
  %i.bdt = load float, ptr %i.bds, align 4, !tbaa !12, !alias.scope !471, !noalias !470 ; 2 uses
  %i.bdu = fcmp reassoc nsz arcp contract afn olt float %i.bdt, 0.000000e+00
  %spec.select.us.1.i.us.2 = select reassoc nsz arcp contract afn i1 %i.bdu, float 0.000000e+00, float %i.bdt
  %i.bdv = zext i8 %i.bdr to i64                  ; 2 uses
  %i.bdw = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bdv ; 2 uses
  %i.bdx = load float, ptr %i.bdw, align 4, !tbaa !12, !noalias !472
  %i.bdy = fadd reassoc nsz arcp contract afn float %spec.select.us.1.i.us.2, %i.bdx
  store float %i.bdy, ptr %i.bdw, align 4, !tbaa !12, !noalias !472
  %i.bdz = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bdv ; 2 uses
  %i.bea = load float, ptr %i.bdz, align 4, !tbaa !12, !noalias !472
  %i.beb = fadd reassoc nsz arcp contract afn float %i.bea, 1.000000e+00
  store float %i.beb, ptr %i.bdz, align 4, !tbaa !12, !noalias !472
  br i1 %6, label %.split62.us.sink.split.i.us.2, label %.preheader.i

.split62.us.sink.split.i.us.2:                    ; preds = %bb.ho
  %i.bec = getelementptr inbounds i8, ptr %i.azl, i64 %i.bag
  %i.bed = load i8, ptr %i.bec, align 1, !tbaa !133, !noalias !472
  %i.bee = getelementptr inbounds nuw [4 x i8], ptr %i.azo, i64 %i.azu
  %i.bef = load float, ptr %i.bee, align 4, !tbaa !12, !alias.scope !471, !noalias !470 ; 2 uses
  %i.beg = fcmp reassoc nsz arcp contract afn olt float %i.bef, 0.000000e+00
  %spec.select.us.2.i.us.2 = select reassoc nsz arcp contract afn i1 %i.beg, float 0.000000e+00, float %i.bef
  %i.beh = zext i8 %i.bed to i64
  br label %.preheader.i.sink.split

.preheader.i.sink.split:                          ; preds = %.split62.us.sink.split.i.us.2, %.split62.us.sink.split.i.2
  %.sink1607 = phi i64 [ %i.bhr, %.split62.us.sink.split.i.2 ], [ %i.beh, %.split62.us.sink.split.i.us.2 ] ; 2 uses
  %spec.select.2.i.2.sink = phi float [ %spec.select.2.i.2, %.split62.us.sink.split.i.2 ], [ %spec.select.us.2.i.us.2, %.split62.us.sink.split.i.us.2 ]
  %i.bei = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.sink1607 ; 2 uses
  %i.bej = load float, ptr %i.bei, align 4, !tbaa !12, !noalias !472
  %i.bek = fadd reassoc nsz arcp contract afn float %i.bej, %spec.select.2.i.2.sink
  store float %i.bek, ptr %i.bei, align 4, !tbaa !12, !noalias !472
  %i.bel = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.sink1607 ; 2 uses
  %i.bem = load float, ptr %i.bel, align 4, !tbaa !12, !noalias !472
  %i.ben = fadd reassoc nsz arcp contract afn float %i.bem, 1.000000e+00
  store float %i.ben, ptr %i.bel, align 4, !tbaa !12, !noalias !472
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.sink.split, %.split62.us.i.1, %.split.split.1.i.2, %bb.hs, %.split62.us.i, %.split62.us.i.us, %bb.ho, %.split.split.us.1.i.us.2, %.split62.us.i.us.1
  %i.beo = add nuw nsw i64 %indvars.iv.i, %i.axq
  %.idx.i = shl i64 %i.beo, 4
  %i.bep = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i
  %i.beq = load <4 x float>, ptr %i.k, align 16, !tbaa !12, !noalias !472
  %i.ber = load <4 x float>, ptr %i.l, align 16, !tbaa !12, !noalias !472 ; 2 uses
  %i.bes = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ber, splat (float 1.000000e+00)
  %i.bet = select <4 x i1> %i.bes, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ber
  %i.beu = fdiv reassoc nsz arcp contract afn <4 x float> %i.beq, %i.bet
  store <4 x float> %i.beu, ptr %i.bep, align 4, !tbaa !12, !alias.scope !470, !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #27, !noalias !472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #27, !noalias !472
  %exitcond.not.i = icmp eq i64 %i.azu, %i.aod
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.hi

.split.i:                                         ; preds = %.split1053.preheader
  %i.bev = or i32 %i.axs, %i.azq
  %or.cond.i471 = icmp sgt i32 %i.bev, -1
  br i1 %or.cond.i471, label %bb.ht, label %.split.split.1.i

.split62.us.i:                                    ; preds = %bb.hu, %.split62.us.sink.split.i, %.split1053.preheader
  br i1 %i.axz, label %.split1053.1, label %.preheader.i

.split1053.1:                                     ; preds = %.split.split.1.i, %.split62.us.i
  br i1 %i.aya, label %.split.i.1, label %.split62.us.i.1

.split.i.1:                                       ; preds = %.split1053.1
  %i.bew = or i32 %i.axr, %i.azq
  %or.cond.i471.1 = icmp sgt i32 %i.bew, -1
  br i1 %or.cond.i471.1, label %bb.hp, label %.split.split.1.i.1

bb.hp:                                            ; preds = %.split.i.1
  %.tr.i.i.1 = or disjoint i32 %i.ayc, %i.azr
  %i.bex = shl nuw nsw i32 %.tr.i.i.1, 1
  %i.bey = lshr i32 %.fr1070, %i.bex
  %i.bez = and i32 %i.bey, 3
  %i.bfa = getelementptr inbounds nuw [4 x i8], ptr %i.ayf, i64 %i.azp
  %i.bfb = load float, ptr %i.bfa, align 4, !tbaa !12, !alias.scope !471, !noalias !470 ; 2 uses
  %i.bfc = fcmp reassoc nsz arcp contract afn olt float %i.bfb, 0.000000e+00
  %spec.select.i472.1 = select reassoc nsz arcp contract afn i1 %i.bfc, float 0.000000e+00, float %i.bfb
  %i.bfd = zext nneg i32 %i.bez to i64            ; 2 uses
  %i.bfe = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bfd ; 2 uses
  %i.bff = load float, ptr %i.bfe, align 4, !tbaa !12, !noalias !472
  %i.bfg = fadd reassoc nsz arcp contract afn float %spec.select.i472.1, %i.bff
  store float %i.bfg, ptr %i.bfe, align 4, !tbaa !12, !noalias !472
  %i.bfh = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bfd ; 2 uses
  %i.bfi = load float, ptr %i.bfh, align 4, !tbaa !12, !noalias !472
  %i.bfj = fadd reassoc nsz arcp contract afn float %i.bfi, 1.000000e+00
  store float %i.bfj, ptr %i.bfh, align 4, !tbaa !12, !noalias !472
  br label %.split.split.1.i.1

.split.split.1.i.1:                               ; preds = %bb.hp, %.split.i.1
  br i1 %or.cond.1.i.1, label %bb.hq, label %.split62.us.i.1

bb.hq:                                            ; preds = %.split.split.1.i.1
  %.tr.i.1.i.1 = or disjoint i32 %i.ayc, %i.azt
  %i.bfk = shl nuw nsw i32 %.tr.i.1.i.1, 1
  %i.bfl = lshr i32 %.fr1070, %i.bfk
  %i.bfm = and i32 %i.bfl, 3
  %i.bfn = getelementptr inbounds nuw [4 x i8], ptr %i.ayf, i64 %indvars.iv.i
  %i.bfo = load float, ptr %i.bfn, align 4, !tbaa !12, !alias.scope !471, !noalias !470 ; 2 uses
  %i.bfp = fcmp reassoc nsz arcp contract afn olt float %i.bfo, 0.000000e+00
  %spec.select.1.i.1 = select reassoc nsz arcp contract afn i1 %i.bfp, float 0.000000e+00, float %i.bfo
  %i.bfq = zext nneg i32 %i.bfm to i64            ; 2 uses
  %i.bfr = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bfq ; 2 uses
  %i.bfs = load float, ptr %i.bfr, align 4, !tbaa !12, !noalias !472
  %i.bft = fadd reassoc nsz arcp contract afn float %spec.select.1.i.1, %i.bfs
  store float %i.bft, ptr %i.bfr, align 4, !tbaa !12, !noalias !472
  %i.bfu = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bfq ; 2 uses
  %i.bfv = load float, ptr %i.bfu, align 4, !tbaa !12, !noalias !472
  %i.bfw = fadd reassoc nsz arcp contract afn float %i.bfv, 1.000000e+00
  store float %i.bfw, ptr %i.bfu, align 4, !tbaa !12, !noalias !472
  br i1 %6, label %.split62.us.sink.split.i.1, label %.split62.us.i.1

.split62.us.sink.split.i.1:                       ; preds = %bb.hq
  %.tr.i.2.i.1 = or disjoint i32 %i.ayc, %i.azv
  %i.bfx = shl nuw nsw i32 %.tr.i.2.i.1, 1
  %i.bfy = lshr i32 %.fr1070, %i.bfx
  %i.bfz = and i32 %i.bfy, 3
  %i.bga = getelementptr inbounds nuw [4 x i8], ptr %i.ayf, i64 %i.azu
  %i.bgb = load float, ptr %i.bga, align 4, !tbaa !12, !alias.scope !471, !noalias !470 ; 2 uses
  %i.bgc = fcmp reassoc nsz arcp contract afn olt float %i.bgb, 0.000000e+00
  %spec.select.2.i.1 = select reassoc nsz arcp contract afn i1 %i.bgc, float 0.000000e+00, float %i.bgb
  %i.bgd = zext nneg i32 %i.bfz to i64            ; 2 uses
  %i.bge = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bgd ; 2 uses
  %i.bgf = load float, ptr %i.bge, align 4, !tbaa !12, !noalias !472
  %i.bgg = fadd reassoc nsz arcp contract afn float %i.bgf, %spec.select.2.i.1
  store float %i.bgg, ptr %i.bge, align 4, !tbaa !12, !noalias !472
  %i.bgh = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bgd ; 2 uses
  %i.bgi = load float, ptr %i.bgh, align 4, !tbaa !12, !noalias !472
  %i.bgj = fadd reassoc nsz arcp contract afn float %i.bgi, 1.000000e+00
  store float %i.bgj, ptr %i.bgh, align 4, !tbaa !12, !noalias !472
  br label %.split62.us.i.1

.split62.us.i.1:                                  ; preds = %.split62.us.sink.split.i.1, %bb.hq, %.split.split.1.i.1, %.split1053.1
  br i1 %i.ayh, label %.split.i.2, label %.preheader.i

.split.i.2:                                       ; preds = %.split62.us.i.1
  %i.bgk = or i32 %i.ayg, %i.azq
  %or.cond.i471.2 = icmp sgt i32 %i.bgk, -1
  br i1 %or.cond.i471.2, label %bb.hr, label %.split.split.1.i.2

bb.hr:                                            ; preds = %.split.i.2
  %.tr.i.i.2 = or disjoint i32 %i.ayj, %i.azr
  %i.bgl = shl nuw nsw i32 %.tr.i.i.2, 1
  %i.bgm = lshr i32 %.fr1070, %i.bgl
  %i.bgn = and i32 %i.bgm, 3
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %i.aym, i64 %i.azp
  %i.bgp = load float, ptr %i.bgo, align 4, !tbaa !12, !alias.scope !471, !noalias !470 ; 2 uses
  %i.bgq = fcmp reassoc nsz arcp contract afn olt float %i.bgp, 0.000000e+00
  %spec.select.i472.2 = select reassoc nsz arcp contract afn i1 %i.bgq, float 0.000000e+00, float %i.bgp
  %i.bgr = zext nneg i32 %i.bgn to i64            ; 2 uses
  %i.bgs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bgr ; 2 uses
  %i.bgt = load float, ptr %i.bgs, align 4, !tbaa !12, !noalias !472
  %i.bgu = fadd reassoc nsz arcp contract afn float %spec.select.i472.2, %i.bgt
  store float %i.bgu, ptr %i.bgs, align 4, !tbaa !12, !noalias !472
  %i.bgv = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bgr ; 2 uses
  %i.bgw = load float, ptr %i.bgv, align 4, !tbaa !12, !noalias !472
  %i.bgx = fadd reassoc nsz arcp contract afn float %i.bgw, 1.000000e+00
  store float %i.bgx, ptr %i.bgv, align 4, !tbaa !12, !noalias !472
  br label %.split.split.1.i.2

.split.split.1.i.2:                               ; preds = %bb.hr, %.split.i.2
  br i1 %or.cond.1.i.2, label %bb.hs, label %.preheader.i

bb.hs:                                            ; preds = %.split.split.1.i.2
  %.tr.i.1.i.2 = or disjoint i32 %i.ayj, %i.azt
  %i.bgy = shl nuw nsw i32 %.tr.i.1.i.2, 1
  %i.bgz = lshr i32 %.fr1070, %i.bgy
  %i.bha = and i32 %i.bgz, 3
  %i.bhb = getelementptr inbounds nuw [4 x i8], ptr %i.aym, i64 %indvars.iv.i
  %i.bhc = load float, ptr %i.bhb, align 4, !tbaa !12, !alias.scope !471, !noalias !470 ; 2 uses
  %i.bhd = fcmp reassoc nsz arcp contract afn olt float %i.bhc, 0.000000e+00
  %spec.select.1.i.2 = select reassoc nsz arcp contract afn i1 %i.bhd, float 0.000000e+00, float %i.bhc
  %i.bhe = zext nneg i32 %i.bha to i64            ; 2 uses
  %i.bhf = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bhe ; 2 uses
  %i.bhg = load float, ptr %i.bhf, align 4, !tbaa !12, !noalias !472
  %i.bhh = fadd reassoc nsz arcp contract afn float %spec.select.1.i.2, %i.bhg
  store float %i.bhh, ptr %i.bhf, align 4, !tbaa !12, !noalias !472
  %i.bhi = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bhe ; 2 uses
  %i.bhj = load float, ptr %i.bhi, align 4, !tbaa !12, !noalias !472
  %i.bhk = fadd reassoc nsz arcp contract afn float %i.bhj, 1.000000e+00
  store float %i.bhk, ptr %i.bhi, align 4, !tbaa !12, !noalias !472
  br i1 %6, label %.split62.us.sink.split.i.2, label %.preheader.i

.split62.us.sink.split.i.2:                       ; preds = %bb.hs
  %.tr.i.2.i.2 = or disjoint i32 %i.ayj, %i.azv
  %i.bhl = shl nuw nsw i32 %.tr.i.2.i.2, 1
  %i.bhm = lshr i32 %.fr1070, %i.bhl
  %i.bhn = and i32 %i.bhm, 3
  %i.bho = getelementptr inbounds nuw [4 x i8], ptr %i.aym, i64 %i.azu
  %i.bhp = load float, ptr %i.bho, align 4, !tbaa !12, !alias.scope !471, !noalias !470 ; 2 uses
  %i.bhq = fcmp reassoc nsz arcp contract afn olt float %i.bhp, 0.000000e+00
  %spec.select.2.i.2 = select reassoc nsz arcp contract afn i1 %i.bhq, float 0.000000e+00, float %i.bhp
  %i.bhr = zext nneg i32 %i.bhn to i64
  br label %.preheader.i.sink.split

bb.ht:                                            ; preds = %.split.i
  %.tr.i.i = or disjoint i32 %i.axv, %i.azr
  %i.bhs = shl nuw nsw i32 %.tr.i.i, 1
  %i.bht = lshr i32 %.fr1070, %i.bhs
  %i.bhu = and i32 %i.bht, 3
  %i.bhv = getelementptr inbounds nuw [4 x i8], ptr %i.axy, i64 %i.azp
  %i.bhw = load float, ptr %i.bhv, align 4, !tbaa !12, !alias.scope !471, !noalias !470 ; 2 uses
  %i.bhx = fcmp reassoc nsz arcp contract afn olt float %i.bhw, 0.000000e+00
  %spec.select.i472 = select reassoc nsz arcp contract afn i1 %i.bhx, float 0.000000e+00, float %i.bhw
  %i.bhy = zext nneg i32 %i.bhu to i64            ; 2 uses
  %i.bhz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bhy ; 2 uses
  %i.bia = load float, ptr %i.bhz, align 4, !tbaa !12, !noalias !472
  %i.bib = fadd reassoc nsz arcp contract afn float %spec.select.i472, %i.bia
  store float %i.bib, ptr %i.bhz, align 4, !tbaa !12, !noalias !472
  %i.bic = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bhy ; 2 uses
  %i.bid = load float, ptr %i.bic, align 4, !tbaa !12, !noalias !472
  %i.bie = fadd reassoc nsz arcp contract afn float %i.bid, 1.000000e+00
  store float %i.bie, ptr %i.bic, align 4, !tbaa !12, !noalias !472
  br label %.split.split.1.i

.split.split.1.i:                                 ; preds = %bb.ht, %.split.i
  br i1 %or.cond.1.i, label %bb.hu, label %.split1053.1

bb.hu:                                            ; preds = %.split.split.1.i
  %.tr.i.1.i = or disjoint i32 %i.axv, %i.azt
  %i.bif = shl nuw nsw i32 %.tr.i.1.i, 1
  %i.big = lshr i32 %.fr1070, %i.bif
  %i.bih = and i32 %i.big, 3
  %i.bii = getelementptr inbounds nuw [4 x i8], ptr %i.axy, i64 %indvars.iv.i
  %i.bij = load float, ptr %i.bii, align 4, !tbaa !12, !alias.scope !471, !noalias !470 ; 2 uses
  %i.bik = fcmp reassoc nsz arcp contract afn olt float %i.bij, 0.000000e+00
  %spec.select.1.i = select reassoc nsz arcp contract afn i1 %i.bik, float 0.000000e+00, float %i.bij
  %i.bil = zext nneg i32 %i.bih to i64            ; 2 uses
  %i.bim = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bil ; 2 uses
  %i.bin = load float, ptr %i.bim, align 4, !tbaa !12, !noalias !472
  %i.bio = fadd reassoc nsz arcp contract afn float %spec.select.1.i, %i.bin
  store float %i.bio, ptr %i.bim, align 4, !tbaa !12, !noalias !472
  %i.bip = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bil ; 2 uses
  %i.biq = load float, ptr %i.bip, align 4, !tbaa !12, !noalias !472
  %i.bir = fadd reassoc nsz arcp contract afn float %i.biq, 1.000000e+00
  store float %i.bir, ptr %i.bip, align 4, !tbaa !12, !noalias !472
  br i1 %6, label %.split62.us.sink.split.i, label %.split62.us.i

.split62.us.sink.split.i:                         ; preds = %bb.hu
  %.tr.i.2.i = or disjoint i32 %i.axv, %i.azv
  %i.bis = shl nuw nsw i32 %.tr.i.2.i, 1
  %i.bit = lshr i32 %.fr1070, %i.bis
  %i.biu = and i32 %i.bit, 3
  %i.biv = getelementptr inbounds nuw [4 x i8], ptr %i.axy, i64 %i.azu
  %i.biw = load float, ptr %i.biv, align 4, !tbaa !12, !alias.scope !471, !noalias !470 ; 2 uses
  %i.bix = fcmp reassoc nsz arcp contract afn olt float %i.biw, 0.000000e+00
  %spec.select.2.i = select reassoc nsz arcp contract afn i1 %i.bix, float 0.000000e+00, float %i.biw
  %i.biy = zext nneg i32 %i.biu to i64            ; 2 uses
  %i.biz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.biy ; 2 uses
  %i.bja = load float, ptr %i.biz, align 4, !tbaa !12, !noalias !472
  %i.bjb = fadd reassoc nsz arcp contract afn float %i.bja, %spec.select.2.i
  store float %i.bjb, ptr %i.biz, align 4, !tbaa !12, !noalias !472
  %i.bjc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.biy ; 2 uses
  %i.bjd = load float, ptr %i.bjc, align 4, !tbaa !12, !noalias !472
  %i.bje = fadd reassoc nsz arcp contract afn float %i.bjd, 1.000000e+00
  store float %i.bje, ptr %i.bjc, align 4, !tbaa !12, !noalias !472
  br label %.split62.us.i

bb.hv:                                            ; preds = %bb.hg
  switch i32 %.0394, label %bb.hz [
    i32 7, label %bb.hw
    i32 3, label %bb.hx
    i32 4, label %bb.hy
  ]

bb.hw:                                            ; preds = %bb.hv
  %i.bjf = sext i32 %i.axe to i64
  %i.bjg = mul i64 %i.aoe, %i.bjf
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.anw, ptr noundef %i.axo, i64 noundef %i.bjg) #27
  br label %demosaic_box3.exit

bb.hx:                                            ; preds = %bb.hv
  %i.bjh = icmp slt i32 %i.axe, 1
  %brmerge1060 = select i1 %i.bjh, i1 true, i1 %i.aob
  br i1 %brmerge1060, label %demosaic_box3.exit, label %.preheader24.preheader.i

.preheader24.preheader.i:                         ; preds = %bb.hx
  %wide.trip.count34.i = zext nneg i32 %i.axe to i64 ; 3 uses
  %i.bji = add nsw i64 %wide.trip.count34.i, -1   ; 2 uses
  %i.bjj = mul i64 %i.avg, %i.bji                 ; 3 uses
  %scevgep4457 = getelementptr i8, ptr %scevgep4456, i64 %i.bjj
  %scevgep4460 = getelementptr i8, ptr %scevgep4459, i64 %i.bjj ; 2 uses
  %scevgep4463 = getelementptr i8, ptr %scevgep4462, i64 %i.bjj ; 4 uses
  %i.bjk = mul i64 %i.avn, %wide.trip.count34.i
  %scevgep4465 = getelementptr i8, ptr %i.anw, i64 %i.bjk ; 4 uses
  %i.bjl = mul i64 %i.avp, %i.bji
  %i.bjm = shl nsw i64 %i.axn, 2
  %i.bjn = getelementptr i8, ptr %scevgep4466, i64 %i.bjl
  %scevgep4467 = getelementptr i8, ptr %i.bjn, i64 %i.bjm ; 4 uses
  %i.bjo = insertelement <4 x ptr> poison, ptr %scevgep4460, i64 0 ; 2 uses
  %i.bjp = insertelement <4 x ptr> %i.bjo, ptr %scevgep4463, i64 1
  %i.bjq = insertelement <4 x ptr> %i.bjp, ptr %scevgep4465, i64 2
  %i.bjr = insertelement <4 x ptr> %i.bjq, ptr %scevgep4467, i64 3
  %i.bjs = insertelement <4 x ptr> poison, ptr %scevgep4457, i64 0
  %i.bjt = shufflevector <4 x ptr> %i.bjs, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bju = insertelement <4 x ptr> %i.bjo, ptr %scevgep4465, i64 1
  %i.bjv = insertelement <4 x ptr> %i.bju, ptr %scevgep4467, i64 2
  %i.bjw = insertelement <4 x ptr> %i.bjv, ptr %scevgep4463, i64 3
  %i.bjx = insertelement <4 x ptr> poison, ptr %scevgep4465, i64 0
  %i.bjy = insertelement <4 x ptr> %i.bjx, ptr %scevgep4463, i64 1
  %i.bjz = insertelement <4 x ptr> %i.bjy, ptr %scevgep4460, i64 2
  %i.bka = shufflevector <4 x ptr> %i.bjz, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.bkb = icmp ult <4 x ptr> %i.avi, %i.bjr
  %i.bkc = insertelement <4 x ptr> %i.avv, ptr %i.axo, i64 3
  %i.bkd = icmp ult <4 x ptr> %i.bkc, %i.bjt
  %i.bke = and <4 x i1> %i.bkb, %i.bkd
  %i.bkf = icmp ult <4 x ptr> %i.avj, %i.bjw
  %i.bkg = insertelement <4 x ptr> %i.avx, ptr %i.axo, i64 2
  %i.bkh = icmp ult <4 x ptr> %i.bkg, %i.bka
  %i.bki = and <4 x i1> %i.bkf, %i.bkh
  %bound04499 = icmp ult ptr %scevgep4461, %scevgep4467
  %bound14500 = icmp ult ptr %i.axo, %scevgep4463
  %found.conflict4501 = and i1 %bound04499, %bound14500
  %bound04503 = icmp ult ptr %scevgep4464, %scevgep4467
  %bound14504 = icmp ult ptr %i.axo, %scevgep4465
  %found.conflict4505 = and i1 %bound04503, %bound14504
  %rdx.op = or <4 x i1> %i.bke, %i.bki
  %i.bkj = bitcast <4 x i1> %rdx.op to i4
  %i.bkk = icmp ne i4 %i.bkj, 0
  %op.rdx4596 = or i1 %i.bkk, %found.conflict4501
  %op.rdx4597 = or i1 %op.rdx4596, %found.conflict4505
  br label %.preheader24.i

.preheader24.i:                                   ; preds = %._crit_edge.i478, %.preheader24.preheader.i
  %indvars.iv31.i = phi i64 [ 0, %.preheader24.preheader.i ], [ %indvars.iv.next32.i, %._crit_edge.i478 ] ; 3 uses
  %i.bkl = mul nuw nsw i64 %indvars.iv31.i, %i.aoc ; 6 uses
  %i.bkm = mul nuw nsw i64 %indvars.iv31.i, %i.aod ; 6 uses
  %brmerge4866 = select i1 %min.iters.check4508, i1 true, i1 %op.rdx4597
  br i1 %brmerge4866, label %.preheader.i473.preheader, label %vector.ph4509

vector.ph4509:                                    ; preds = %.preheader24.i
  %broadcast.splatinsert4511 = insertelement <8 x i64> poison, i64 %i.bkl, i64 0
  %broadcast.splat4512 = shufflevector <8 x i64> %broadcast.splatinsert4511, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert4513 = insertelement <8 x i64> poison, i64 %i.bkm, i64 0
  %broadcast.splat4514 = shufflevector <8 x i64> %broadcast.splatinsert4513, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body4515

vector.body4515:                                  ; preds = %vector.body4515, %vector.ph4509
  %index4516 = phi i64 [ 0, %vector.ph4509 ], [ %index.next4525, %vector.body4515 ]
  %vec.ind4517 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph4509 ], [ %vec.ind.next4526, %vector.body4515 ] ; 3 uses
  %i.bkn = add nuw nsw <8 x i64> %vec.ind4517, %broadcast.splat4512 ; 2 uses
  %i.bko = extractelement <8 x i64> %i.bkn, i64 0
  %i.bkp = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.bko
  %i.bkq = shl <8 x i64> %i.bkn, splat (i64 4)
  %wide.gep4518 = getelementptr inbounds nuw i8, ptr %i.anw, <8 x i64> %i.bkq ; 3 uses
  %wide.load4519 = load <8 x float>, ptr %i.bkp, align 4, !tbaa !12, !alias.scope !473 ; 3 uses
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load4519, <8 x ptr> align 4 %wide.gep4518, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !474, !noalias !475
  %wide.gep4520 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep4518, i64 4
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load4519, <8 x ptr> align 4 %wide.gep4520, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !476, !noalias !477
  %wide.gep4522 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep4518, i64 8
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load4519, <8 x ptr> align 4 %wide.gep4522, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !478, !noalias !479
  %i.bkr = add nuw nsw <8 x i64> %vec.ind4517, %broadcast.splat4514
  %i.bks = shl <8 x i64> %i.bkr, splat (i64 4)
  %wide.gep4523 = getelementptr inbounds nuw i8, ptr %i.anw, <8 x i64> %i.bks
  %wide.gep4524 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep4523, i64 12
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep4524, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !480, !noalias !473
  %index.next4525 = add nuw i64 %index4516, 8     ; 2 uses
  %vec.ind.next4526 = add nuw nsw <8 x i64> %vec.ind4517, splat (i64 8)
  %i.bkt = icmp eq i64 %index.next4525, %n.vec4510
  br i1 %i.bkt, label %middle.block4527, label %vector.body4515, !llvm.loop !210

middle.block4527:                                 ; preds = %vector.body4515
  br i1 %cmp.n4528, label %._crit_edge.i478, label %.preheader.i473.preheader

.preheader.i473.preheader:                        ; preds = %.preheader24.i, %middle.block4527
  %indvars.iv.i474.ph = phi i64 [ %n.vec4510, %middle.block4527 ], [ 0, %.preheader24.i ] ; 3 uses
  br i1 %lcmp.mod4687.not, label %.preheader.i473.prol.loopexit, label %.preheader.i473.prol

.preheader.i473.prol:                             ; preds = %.preheader.i473.preheader, %.preheader.i473.prol
  %indvars.iv.i474.prol = phi i64 [ %indvars.iv.next.i476.prol, %.preheader.i473.prol ], [ %indvars.iv.i474.ph, %.preheader.i473.preheader ] ; 3 uses
  %prol.iter4688 = phi i64 [ %prol.iter4688.next, %.preheader.i473.prol ], [ 0, %.preheader.i473.preheader ]
  %i.bku = add nuw nsw i64 %indvars.iv.i474.prol, %i.bkl ; 2 uses
  %i.bkv = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.bku ; 2 uses
  %.idx23.i.prol = shl i64 %i.bku, 4
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx23.i.prol ; 2 uses
  %i.bkx = load float, ptr %i.bkv, align 4, !tbaa !12
  %i.bky = insertelement <2 x float> poison, float %i.bkx, i64 0
  %i.bkz = shufflevector <2 x float> %i.bky, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.bkz, ptr %i.bkw, align 4, !tbaa !12
  %i.bla = load float, ptr %i.bkv, align 4, !tbaa !12
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bkw, i64 8
  store float %i.bla, ptr %i.blb, align 4, !tbaa !12
  %i.blc = add nuw nsw i64 %indvars.iv.i474.prol, %i.bkm
  %.idx.i475.prol = shl i64 %i.blc, 4
  %i.bld = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i475.prol
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bld, i64 12
  store float 0.000000e+00, ptr %i.ble, align 4, !tbaa !12
  %indvars.iv.next.i476.prol = add nuw nsw i64 %indvars.iv.i474.prol, 1 ; 2 uses
  %prol.iter4688.next = add i64 %prol.iter4688, 1 ; 2 uses
  %prol.iter4688.cmp.not = icmp eq i64 %prol.iter4688.next, %xtraiter4686
  br i1 %prol.iter4688.cmp.not, label %.preheader.i473.prol.loopexit, label %.preheader.i473.prol, !llvm.loop !211

.preheader.i473.prol.loopexit:                    ; preds = %.preheader.i473.prol, %.preheader.i473.preheader
  %indvars.iv.i474.unr = phi i64 [ %indvars.iv.i474.ph, %.preheader.i473.preheader ], [ %indvars.iv.next.i476.prol, %.preheader.i473.prol ]
  %i.blf = sub nsw i64 %indvars.iv.i474.ph, %i.aod
  %i.blg = icmp ugt i64 %i.blf, -4
  br i1 %i.blg, label %._crit_edge.i478, label %.preheader.i473

.preheader.i473:                                  ; preds = %.preheader.i473.prol.loopexit, %.preheader.i473
  %indvars.iv.i474 = phi i64 [ %indvars.iv.next.i476.3, %.preheader.i473 ], [ %indvars.iv.i474.unr, %.preheader.i473.prol.loopexit ] ; 6 uses
  %i.blh = add nuw nsw i64 %indvars.iv.i474, %i.bkl ; 2 uses
  %i.bli = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.blh ; 2 uses
  %.idx23.i = shl i64 %i.blh, 4
  %i.blj = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx23.i ; 2 uses
  %i.blk = load float, ptr %i.bli, align 4, !tbaa !12
  %i.bll = insertelement <2 x float> poison, float %i.blk, i64 0
  %i.blm = shufflevector <2 x float> %i.bll, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.blm, ptr %i.blj, align 4, !tbaa !12
  %i.bln = load float, ptr %i.bli, align 4, !tbaa !12
  %i.blo = getelementptr inbounds nuw i8, ptr %i.blj, i64 8
  store float %i.bln, ptr %i.blo, align 4, !tbaa !12
  %i.blp = add nuw nsw i64 %indvars.iv.i474, %i.bkm
  %.idx.i475 = shl i64 %i.blp, 4
  %i.blq = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i475
  %i.blr = getelementptr inbounds nuw i8, ptr %i.blq, i64 12
  store float 0.000000e+00, ptr %i.blr, align 4, !tbaa !12
  %indvars.iv.next.i476 = add nuw nsw i64 %indvars.iv.i474, 1 ; 2 uses
  %i.bls = add nuw nsw i64 %indvars.iv.next.i476, %i.bkl ; 2 uses
  %i.blt = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.bls ; 2 uses
  %.idx23.i.1 = shl i64 %i.bls, 4
  %i.blu = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx23.i.1 ; 2 uses
  %i.blv = load float, ptr %i.blt, align 4, !tbaa !12
  %i.blw = insertelement <2 x float> poison, float %i.blv, i64 0
  %i.blx = shufflevector <2 x float> %i.blw, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.blx, ptr %i.blu, align 4, !tbaa !12
  %i.bly = load float, ptr %i.blt, align 4, !tbaa !12
  %i.blz = getelementptr inbounds nuw i8, ptr %i.blu, i64 8
  store float %i.bly, ptr %i.blz, align 4, !tbaa !12
  %i.bma = add nuw nsw i64 %indvars.iv.next.i476, %i.bkm
  %.idx.i475.1 = shl i64 %i.bma, 4
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i475.1
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bmb, i64 12
  store float 0.000000e+00, ptr %i.bmc, align 4, !tbaa !12
  %indvars.iv.next.i476.1 = add nuw nsw i64 %indvars.iv.i474, 2 ; 2 uses
  %i.bmd = add nuw nsw i64 %indvars.iv.next.i476.1, %i.bkl ; 2 uses
  %i.bme = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.bmd ; 2 uses
  %.idx23.i.2 = shl i64 %i.bmd, 4
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx23.i.2 ; 2 uses
  %i.bmg = load float, ptr %i.bme, align 4, !tbaa !12
end_hunk_0
