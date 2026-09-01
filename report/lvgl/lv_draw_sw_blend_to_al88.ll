Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_al88?download=true
inline.NumInlined: 113
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@lv_draw_sw_blend_image_to_al88:bb.a
._crit_edge245.i:                                 ; preds = %lv_color_16a_16a_mix.exit199.i
  %i.aug = getelementptr inbounds nuw i8, ptr %.3249.i, i64 %i.ase
  %i.auh = getelementptr inbounds nuw i8, ptr %.3127248.i, i64 %i.asf
  %i.aui = getelementptr inbounds i8, ptr %.1140246.i, i64 %i.asg
  %i.auj = add nuw nsw i32 %.3132247.i, 1         ; 2 uses
  %exitcond278.not.i = icmp eq i32 %i.auj, %i.ajx
  br i1 %exitcond278.not.i, label %al88_image_blend.exit, label %.preheader233.i, !llvm.loop !107

.preheader236.i116:                               ; preds = %._crit_edge.i137, %.preheader236.preheader.i
  %i.auk = phi i8 [ %i.axc, %._crit_edge.i137 ], [ -1, %.preheader236.preheader.i ]
  %i.aul = phi i8 [ %i.axd, %._crit_edge.i137 ], [ -1, %.preheader236.preheader.i ]
  %.4243.i = phi ptr [ %i.axf, %._crit_edge.i137 ], [ %i.aka, %.preheader236.preheader.i ] ; 2 uses
  %.4128242.i = phi ptr [ %i.axg, %._crit_edge.i137 ], [ %i.ake, %.preheader236.preheader.i ] ; 2 uses
  %.4133241.i = phi i32 [ %i.axh, %._crit_edge.i137 ], [ 0, %.preheader236.preheader.i ]
  %.2141240.i = phi ptr [ %.3142.i, %._crit_edge.i137 ], [ %i.aki, %.preheader236.preheader.i ] ; 3 uses
  %i.aum = icmp eq ptr %.2141240.i, null          ; 2 uses
  br label %bb.he

bb.he:                                            ; preds = %blend_non_normal_pixel.exit.i134, %.preheader236.i116
  %i.aun = phi i8 [ %i.auk, %.preheader236.i116 ], [ %i.axc, %blend_non_normal_pixel.exit.i134 ] ; 6 uses
  %i.auo = phi i8 [ %i.aul, %.preheader236.i116 ], [ %i.axd, %blend_non_normal_pixel.exit.i134 ] ; 6 uses
  %indvars.iv.i117 = phi i64 [ 0, %.preheader236.i116 ], [ %indvars.iv.next.i135, %blend_non_normal_pixel.exit.i134 ] ; 4 uses
  %i.aup = getelementptr inbounds nuw [2 x i8], ptr %.4128242.i, i64 %indvars.iv.i117 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.aup, align 1, !tbaa !24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aup, i64 1
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !24 ; 2 uses
  br i1 %i.aum, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.auq = zext i8 %.sroa.4.0.copyload.i to i16
  %i.aur = mul nuw i16 %i.auq, %i.akt
  %i.aus = lshr i16 %i.aur, 8
  br label %bb.hh

bb.hg:                                            ; preds = %bb.he
  %i.aut = zext i8 %.sroa.4.0.copyload.i to i32
  %i.auu = getelementptr inbounds nuw i8, ptr %.2141240.i, i64 %indvars.iv.i117
  %i.auv = load i8, ptr %i.auu, align 1, !tbaa !24
  %i.auw = zext i8 %i.auv to i32
  %i.aux = mul nuw nsw i32 %i.aut, %i.aks
  %i.auy = mul nuw nsw i32 %i.aux, %i.auw
  %i.auz = lshr i32 %i.auy, 16
  %i.ava = trunc nuw nsw i32 %i.auz to i16
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %.sroa.4.0.i118 = phi i16 [ %i.aus, %bb.hf ], [ %i.ava, %bb.hg ] ; 8 uses
  %i.avb = getelementptr inbounds nuw [2 x i8], ptr %.4243.i, i64 %indvars.iv.i117 ; 8 uses
  %i.avc = load i32, ptr %i.akn, align 4, !tbaa !57
  %.sroa.4.0.insert.shift.i119 = shl nuw i16 %.sroa.4.0.i118, 8
  %.sroa.0.0.insert.ext.i120 = zext i8 %.sroa.0.0.copyload.i to i16 ; 4 uses
  switch i32 %i.avc, label %blend_non_normal_pixel.exit.i134 [
    i32 1, label %bb.hi
    i32 2, label %bb.hj
    i32 3, label %bb.hk
    i32 4, label %bb.hl
  ]

bb.hi:                                            ; preds = %bb.hh
  %i.avd = load i8, ptr %i.avb, align 1, !tbaa !58
  %i.ave = zext i8 %i.avd to i16
  %i.avf = add nuw nsw i16 %i.ave, %.sroa.0.0.insert.ext.i120
  %spec.select24.i.i144 = call i16 @llvm.umin.i16(i16 %i.avf, i16 255)
  br label %bb.hm

bb.hj:                                            ; preds = %bb.hh
  %i.avg = load i8, ptr %i.avb, align 1, !tbaa !58
  %i.avh = zext i8 %i.avg to i16
  %i.avi = sub nsw i16 %i.avh, %.sroa.0.0.insert.ext.i120
  %spec.select2223.i.i143 = call i16 @llvm.smax.i16(i16 %i.avi, i16 0)
  br label %bb.hm

bb.hk:                                            ; preds = %bb.hh
  %i.avj = load i8, ptr %i.avb, align 1, !tbaa !58
  %i.avk = zext i8 %i.avj to i16
  %i.avl = mul nuw i16 %i.avk, %.sroa.0.0.insert.ext.i120
  %i.avm = lshr i16 %i.avl, 8
  br label %bb.hm

bb.hl:                                            ; preds = %bb.hh
  %i.avn = load i8, ptr %i.avb, align 1, !tbaa !58
  %i.avo = zext i8 %i.avn to i16
  %i.avp = sub nsw i16 %i.avo, %.sroa.0.0.insert.ext.i120
  %i.avq = call i16 @llvm.abs.i16(i16 %i.avp, i1 true)
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk, %bb.hj, %bb.hi
  %.sroa.0.0.i.i121 = phi i16 [ %spec.select24.i.i144, %bb.hi ], [ %spec.select2223.i.i143, %bb.hj ], [ %i.avm, %bb.hk ], [ %i.avq, %bb.hl ] ; 3 uses
  %.sroa.0.0.insert.insert.i.i122 = add nuw nsw i16 %.sroa.0.0.i.i121, %.sroa.4.0.insert.shift.i119 ; 4 uses
  %i.avr = icmp ugt i16 %.sroa.4.0.i118, 252
  br i1 %i.avr, label %.sink.split.i.i.i132, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avb, i64 1
  %i.avt = load i8, ptr %i.avs, align 1, !tbaa !35 ; 4 uses
  %i.avu = icmp ult i8 %i.avt, 3
  br i1 %i.avu, label %.sink.split.i.i.i132, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.avv = icmp samesign ult i16 %.sroa.4.0.i118, 3
  br i1 %i.avv, label %blend_non_normal_pixel.exit.i134, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.avw = icmp eq i8 %i.avt, -1
  br i1 %i.avw, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.avx = load i16, ptr %i.avb, align 1          ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i.i139 = and i16 %i.avx, -256
  %narrow.i.i.i.i140 = mul nuw i16 %.sroa.0.0.i.i121, %.sroa.4.0.i118
  %i.avy = and i16 %i.avx, 255
  %i.avz = xor i16 %.sroa.4.0.i118, 255
  %narrow5.i.i.i.i141 = mul nuw i16 %i.avy, %i.avz
  %i.awa = add i16 %narrow5.i.i.i.i141, %narrow.i.i.i.i140
  %i.awb = lshr i16 %i.awa, 8
  %.sroa.03.0.insert.insert.i.i.i.i142 = or disjoint i16 %i.awb, %.sroa.4.0.extract.shift.i.i.i.i139
  br label %.sink.split.i.i.i132

bb.hr:                                            ; preds = %bb.hp
  %i.awc = load i8, ptr %i.aku, align 1, !tbaa !39
  %.not.i.i.i123 = icmp eq i8 %i.avt, %i.awc
  %i.awd = load i8, ptr %i.akv, align 1
  %i.awe = zext i8 %i.awd to i16
  %.not54.i.i.i124 = icmp eq i16 %.sroa.4.0.i118, %i.awe
  %or.cond223.i125 = select i1 %.not.i.i.i123, i1 %.not54.i.i.i124, i1 false
  br i1 %or.cond223.i125, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.awf = xor i16 %.sroa.4.0.i118, 255
  %i.awg = xor i8 %i.avt, -1
  %i.awh = zext i8 %i.awg to i16
  %i.awi = mul nuw i16 %i.awf, %i.awh
  %i.awj = xor i16 %i.awi, -1
  %i.awk = lshr i16 %i.awj, 8                     ; 2 uses
  %i.awl = trunc nuw i16 %i.awk to i8
  %narrow.i.i200.i = mul nuw i16 %.sroa.4.0.i118, 255
  %i.awm = udiv i16 %narrow.i.i200.i, %i.awk
  %i.awn = trunc i16 %i.awm to i8
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.awo = phi i8 [ %i.aun, %bb.hr ], [ %i.awl, %bb.hs ] ; 2 uses
  %i.awp = phi i8 [ %i.auo, %bb.hr ], [ %i.awn, %bb.hs ] ; 2 uses
  %i.awq = load i16, ptr %i.avb, align 1          ; 4 uses
  %i.awr = load i16, ptr %i.akl, align 2
  %i.aws = icmp eq i16 %i.awq, %i.awr
  %i.awt = load i16, ptr %2, align 2
  %i.awu = icmp eq i16 %.sroa.0.0.insert.insert.i.i122, %i.awt
  %or.cond225.i126 = select i1 %i.aws, i1 %i.awu, i1 false
  br i1 %or.cond225.i126, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  store i16 %.sroa.0.0.insert.insert.i.i122, ptr %2, align 2
  store i16 %i.awq, ptr %i.akl, align 2
  %.sroa.6.0.insert.ext44.i.i.i127 = zext i8 %i.awp to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i56.i.i.i128 = and i16 %i.awq, -256
  %narrow.i57.i.i.i129 = mul nuw i16 %.sroa.0.0.i.i121, %.sroa.6.0.insert.ext44.i.i.i127
  %i.awv = and i16 %i.awq, 255
  %i.aww = xor i16 %.sroa.6.0.insert.ext44.i.i.i127, 255
  %narrow5.i58.i.i.i130 = mul nuw i16 %i.awv, %i.aww
  %i.awx = add i16 %narrow5.i58.i.i.i130, %narrow.i57.i.i.i129
  %i.awy = lshr i16 %i.awx, 8
  %.sroa.03.0.insert.insert.i59.i.i.i131 = or disjoint i16 %i.awy, %.sroa.4.0.extract.shift.i56.i.i.i128
  store i16 %.sroa.03.0.insert.insert.i59.i.i.i131, ptr %i.akm, align 2
  store i8 %i.awo, ptr %i.akw, align 1, !tbaa !40
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %i.awz = load i16, ptr %i.akm, align 2
  br label %.sink.split.i.i.i132

.sink.split.i.i.i132:                             ; preds = %bb.hv, %bb.hq, %bb.hn, %bb.hm
  %i.axa = phi i8 [ %i.awo, %bb.hv ], [ %i.aun, %bb.hq ], [ %i.aun, %bb.hn ], [ %i.aun, %bb.hm ]
  %i.axb = phi i8 [ %i.awp, %bb.hv ], [ %i.auo, %bb.hq ], [ %i.auo, %bb.hn ], [ %i.auo, %bb.hm ]
  %.sink.i.i.i133 = phi i16 [ %i.awz, %bb.hv ], [ %.sroa.03.0.insert.insert.i.i.i.i142, %bb.hq ], [ %.sroa.0.0.insert.insert.i.i122, %bb.hn ], [ %.sroa.0.0.insert.insert.i.i122, %bb.hm ]
  store i16 %.sink.i.i.i133, ptr %i.avb, align 1
  br label %blend_non_normal_pixel.exit.i134

blend_non_normal_pixel.exit.i134:                 ; preds = %.sink.split.i.i.i132, %bb.ho, %bb.hh
  %i.axc = phi i8 [ %i.aun, %bb.hh ], [ %i.aun, %bb.ho ], [ %i.axa, %.sink.split.i.i.i132 ] ; 2 uses
  %i.axd = phi i8 [ %i.auo, %bb.hh ], [ %i.auo, %bb.ho ], [ %i.axb, %.sink.split.i.i.i132 ] ; 2 uses
  %indvars.iv.next.i135 = add nuw nsw i64 %indvars.iv.i117, 1 ; 2 uses
  %exitcond.not.i136 = icmp eq i64 %indvars.iv.next.i135, %wide.trip.count.i115
  br i1 %exitcond.not.i136, label %._crit_edge.i137, label %bb.he, !llvm.loop !108

._crit_edge.i137:                                 ; preds = %blend_non_normal_pixel.exit.i134
  %i.axe = getelementptr inbounds i8, ptr %.2141240.i, i64 %i.akx
  %.3142.i = select i1 %i.aum, ptr null, ptr %i.axe
  %i.axf = getelementptr inbounds nuw i8, ptr %.4243.i, i64 %i.aky
  %i.axg = getelementptr inbounds nuw i8, ptr %.4128242.i, i64 %i.akz
  %i.axh = add nuw nsw i32 %.4133241.i, 1         ; 2 uses
  %exitcond272.not.i138 = icmp eq i32 %i.axh, %i.ajx
  br i1 %exitcond272.not.i138, label %al88_image_blend.exit, label %.preheader236.i116, !llvm.loop !109

al88_image_blend.exit:                            ; preds = %._crit_edge.i137, %._crit_edge245.i, %._crit_edge251.i, %._crit_edge257.i, %._crit_edge262.i, %.preheader237.i114, %.preheader236.lr.ph.i, %.preheader226.i, %.preheader.lr.ph.i164, %.preheader228.i, %.preheader227.lr.ph.i, %.preheader231.i, %.preheader230.lr.ph.i, %bb.gt, %.preheader233.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.jv

bb.hw:                                            ; preds = %bb.a
  %i.axi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.axj = load i32, ptr %i.axi, align 8, !tbaa !48 ; 11 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !49 ; 11 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.axn = load i8, ptr %i.axm, align 8, !tbaa !50
  %.fr246.i = freeze i8 %i.axn                    ; 7 uses
  %i.axo = load ptr, ptr %0, align 8, !tbaa !51   ; 8 uses
  %i.axp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.axq = load i32, ptr %i.axp, align 8, !tbaa !52 ; 5 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.axs = load ptr, ptr %i.axr, align 8, !tbaa !53 ; 8 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.axu = load i32, ptr %i.axt, align 8, !tbaa !54 ; 5 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.axw = load ptr, ptr %i.axv, align 8, !tbaa !55 ; 5 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.axy = load i32, ptr %i.axx, align 8, !tbaa !56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @lv_memset(ptr noundef nonnull %1, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.axz = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.axz, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.aya = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.aya, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.ayb = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ayc = load i32, ptr %i.ayb, align 4, !tbaa !57
  %i.ayd = icmp eq i32 %i.ayc, 0
  br i1 %i.ayd, label %bb.hx, label %i1_image_blend.exit

bb.hx:                                            ; preds = %bb.hw
  %i.aye = icmp eq ptr %i.axw, null               ; 2 uses
  %i.ayf = zext i8 %.fr246.i to i32               ; 2 uses
  %i.ayg = icmp ugt i8 %.fr246.i, -4              ; 2 uses
  %or.cond.i183 = and i1 %i.ayg, %i.aye
  br i1 %or.cond.i183, label %.preheader202.i264, label %bb.hy

.preheader202.i264:                               ; preds = %bb.hx
  %i.ayh = icmp sgt i32 %i.axl, 0
  br i1 %i.ayh, label %.preheader.lr.ph.i265, label %i1_image_blend.exit

.preheader.lr.ph.i265:                            ; preds = %.preheader202.i264
  %i.ayi = icmp sgt i32 %i.axj, 0
  %i.ayj = zext i32 %i.axq to i64                 ; 2 uses
  %i.ayk = zext i32 %i.axu to i64                 ; 2 uses
  br i1 %i.ayi, label %.preheader.preheader.i266, label %i1_image_blend.exit

.preheader.preheader.i266:                        ; preds = %.preheader.lr.ph.i265
  %wide.trip.count281.i = zext nneg i32 %i.axj to i64 ; 7 uses
  %6 = add nsw i32 %i.axl, -1
  %7 = zext i32 %6 to i64                         ; 2 uses
  %8 = mul nuw i64 %i.ayj, %7
  %9 = shl nuw nsw i64 %wide.trip.count281.i, 1
  %10 = getelementptr i8, ptr %i.axo, i64 %8
  %scevgep = getelementptr i8, ptr %10, i64 %9
  %11 = add nsw i64 %wide.trip.count281.i, -1
  %12 = lshr i64 %11, 3
  %13 = mul nuw i64 %i.ayk, %7
  %14 = getelementptr i8, ptr %i.axs, i64 %12
  %15 = getelementptr i8, ptr %14, i64 %13
  %scevgep581 = getelementptr i8, ptr %15, i64 1
  %min.iters.check = icmp ult i32 %i.axj, 8
  %bound0 = icmp ult ptr %i.axo, %scevgep581
  %bound1 = icmp ult ptr %i.axs, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %xtraiter.a = and i64 %wide.trip.count281.i, 2147483640 ; 3 uses
  %i.ayl = icmp eq i64 %xtraiter.a, %wide.trip.count281.i
  %unroll_iter = and i64 %wide.trip.count281.i, 1
  %lcmp.mod.not = icmp eq i64 %unroll_iter, 0
  %16 = add nsw i64 %wide.trip.count281.i, -1
  br label %.preheader.i267

.preheader.i267:                                  ; preds = %._crit_edge242.i, %.preheader.preheader.i266
  %.0245.i = phi ptr [ %i.azc, %._crit_edge242.i ], [ %i.axo, %.preheader.preheader.i266 ] ; 5 uses
  %.0125244.i = phi ptr [ %i.azd, %._crit_edge242.i ], [ %i.axs, %.preheader.preheader.i266 ] ; 5 uses
  %.0130243.i = phi i32 [ %i.aze, %._crit_edge242.i ], [ 0, %.preheader.preheader.i266 ]
  %brmerge686 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge686, label %scalar.ph.preheader, label %.preheader.i267.new

.preheader.i267.new:                              ; preds = %.preheader.i267, %.preheader.i267.new
  %niter = phi i64 [ %indvars.iv.next279.i.1.a, %.preheader.i267.new ], [ 0, %.preheader.i267 ] ; 3 uses
  %vec.ind = phi <8 x i8> [ %vec.ind.next, %.preheader.i267.new ], [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>, %.preheader.i267 ] ; 2 uses
  %i.aym = lshr exact i64 %niter, 3
  %i.ayn = and i64 %i.aym, 536870911
  %i.ayo = getelementptr inbounds nuw i8, ptr %.0125244.i, i64 %i.ayn
  %i.ayp = load i8, ptr %i.ayo, align 1, !tbaa !24, !alias.scope !110
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.ayp, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %17 = and <8 x i8> %vec.ind, splat (i8 7)
  %18 = xor <8 x i8> %17, splat (i8 7)
  %19 = lshr <8 x i8> %broadcast.splat, %18
  %20 = and <8 x i8> %19, splat (i8 1)
  %21 = sub nsw <8 x i8> zeroinitializer, %20
  %i.ayq = getelementptr inbounds nuw [2 x i8], ptr %.0245.i, i64 %niter
  %interleaved.vec = shufflevector <8 x i8> %21, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.ayq, align 1, !tbaa !24, !alias.scope !113, !noalias !110
  %indvars.iv.next279.i.1.a = add nuw i64 %niter, 8 ; 2 uses
  %vec.ind.next = add <8 x i8> %vec.ind, splat (i8 8)
  %niter.ncmp.1 = icmp eq i64 %indvars.iv.next279.i.1.a, %xtraiter.a
  br i1 %niter.ncmp.1, label %middle.block, label %.preheader.i267.new, !llvm.loop !115

middle.block:                                     ; preds = %.preheader.i267.new
  br i1 %i.ayl, label %._crit_edge242.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i267, %middle.block
  %indvars.iv278.i.ph = phi i64 [ %xtraiter.a, %middle.block ], [ 0, %.preheader.i267 ] ; 5 uses
  br i1 %lcmp.mod.not, label %._crit_edge242.i.unr-lcssa, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %22 = lshr exact i64 %indvars.iv278.i.ph, 3
  %23 = getelementptr inbounds nuw i8, ptr %.0125244.i, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !24
  %.neg = ashr i8 %24, 7
  %25 = getelementptr inbounds nuw [2 x i8], ptr %.0245.i, i64 %indvars.iv278.i.ph ; 2 uses
  store i8 %.neg, ptr %25, align 1, !tbaa !58
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 1
  store i8 -1, ptr %26, align 1, !tbaa !35
  %indvars.iv.next279.i.prol = or disjoint i64 %indvars.iv278.i.ph, 1
  br label %._crit_edge242.i.unr-lcssa

._crit_edge242.i.unr-lcssa:                       ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv278.i.unr = phi i64 [ %indvars.iv278.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next279.i.prol, %scalar.ph.prol ]
  %27 = icmp eq i64 %indvars.iv278.i.ph, %16
  br i1 %27, label %._crit_edge242.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge242.i.unr-lcssa, %.epil.preheader
  %indvars.iv278.i.epil.init = phi i64 [ %indvars.iv.next279.i.1, %.epil.preheader ], [ %indvars.iv278.i.unr, %._crit_edge242.i.unr-lcssa ] ; 5 uses
  %28 = trunc i64 %indvars.iv278.i.epil.init to i8
  %29 = lshr i64 %indvars.iv278.i.epil.init, 3
  %30 = and i64 %29, 536870911
  %31 = getelementptr inbounds nuw i8, ptr %.0125244.i, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !24
  %33 = and i8 %28, 7
  %34 = xor i8 %33, 7
  %35 = lshr i8 %32, %34
  %36 = and i8 %35, 1
  %narrow150.i = sub nsw i8 0, %36
  %37 = getelementptr inbounds nuw [2 x i8], ptr %.0245.i, i64 %indvars.iv278.i.epil.init ; 2 uses
  store i8 %narrow150.i, ptr %37, align 1, !tbaa !58
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 1
  store i8 -1, ptr %38, align 1, !tbaa !35
  %indvars.iv.next279.i = add nuw nsw i64 %indvars.iv278.i.epil.init, 1 ; 3 uses
  %i.ayr = trunc i64 %indvars.iv.next279.i to i8
  %i.ays = lshr i64 %indvars.iv.next279.i, 3
  %i.ayt = and i64 %i.ays, 536870911
  %i.ayu = getelementptr inbounds nuw i8, ptr %.0125244.i, i64 %i.ayt
  %i.ayv = load i8, ptr %i.ayu, align 1, !tbaa !24
  %i.ayw = and i8 %i.ayr, 7
  %i.ayx = xor i8 %i.ayw, 7
  %i.ayy = lshr i8 %i.ayv, %i.ayx
  %i.ayz = and i8 %i.ayy, 1
  %narrow150.i.epil = sub nsw i8 0, %i.ayz
  %i.aza = getelementptr inbounds nuw [2 x i8], ptr %.0245.i, i64 %indvars.iv.next279.i ; 2 uses
  store i8 %narrow150.i.epil, ptr %i.aza, align 1, !tbaa !58
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 1
  store i8 -1, ptr %i.azb, align 1, !tbaa !35
  %indvars.iv.next279.i.1 = add nuw nsw i64 %indvars.iv278.i.epil.init, 2 ; 2 uses
  %exitcond282.not.i268.1 = icmp eq i64 %indvars.iv.next279.i.1, %wide.trip.count281.i
  br i1 %exitcond282.not.i268.1, label %._crit_edge242.i, label %.epil.preheader, !llvm.loop !116

._crit_edge242.i:                                 ; preds = %._crit_edge242.i.unr-lcssa, %.epil.preheader, %middle.block
  %i.azc = getelementptr inbounds nuw i8, ptr %.0245.i, i64 %i.ayj
  %i.azd = getelementptr inbounds nuw i8, ptr %.0125244.i, i64 %i.ayk
  %i.aze = add nuw nsw i32 %.0130243.i, 1         ; 2 uses
  %exitcond283.not.i269 = icmp eq i32 %i.aze, %i.axl
  br i1 %exitcond283.not.i269, label %i1_image_blend.exit, label %.preheader.i267, !llvm.loop !117

bb.hy:                                            ; preds = %bb.hx
  %i.azf = icmp ult i8 %.fr246.i, -3              ; 2 uses
  %or.cond5.i184 = and i1 %i.azf, %i.aye
  br i1 %or.cond5.i184, label %.preheader204.i, label %bb.ii

.preheader204.i:                                  ; preds = %bb.hy
  %i.azg = icmp sgt i32 %i.axl, 0
  br i1 %i.azg, label %.preheader203.lr.ph.i, label %i1_image_blend.exit

.preheader203.lr.ph.i:                            ; preds = %.preheader204.i
  %i.azh = icmp sgt i32 %i.axj, 0
  %.sroa.417.0.insert.ext.i = zext i8 %.fr246.i to i16 ; 4 uses
  %.sroa.417.0.insert.shift.i240 = shl nuw i16 %.sroa.417.0.insert.ext.i, 8 ; 2 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.azj = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.azk = xor i16 %.sroa.417.0.insert.ext.i, 255 ; 2 uses
  %narrow.i.i241 = mul nuw i16 %.sroa.417.0.insert.ext.i, 255
  %i.azl = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.azm = zext i32 %i.axq to i64                 ; 2 uses
  %i.azn = zext i32 %i.axu to i64                 ; 2 uses
  br i1 %i.azh, label %.preheader203.lr.ph.split.i, label %i1_image_blend.exit

.preheader203.lr.ph.split.i:                      ; preds = %.preheader203.lr.ph.i
  %i.azo = icmp ult i8 %.fr246.i, 3
  %wide.trip.count275.i = zext nneg i32 %i.axj to i64 ; 2 uses
  br i1 %i.azo, label %.preheader203.us.i, label %.preheader203.i242

.preheader203.us.i:                               ; preds = %.preheader203.lr.ph.split.i, %._crit_edge233.split.us.us.i
  %.1237.us.i = phi ptr [ %i.bad, %._crit_edge233.split.us.us.i ], [ %i.axo, %.preheader203.lr.ph.split.i ] ; 2 uses
  %.1126235.us.i = phi ptr [ %i.bae, %._crit_edge233.split.us.us.i ], [ %i.axs, %.preheader203.lr.ph.split.i ] ; 2 uses
  %.1131234.us.i = phi i32 [ %i.baf, %._crit_edge233.split.us.us.i ], [ 0, %.preheader203.lr.ph.split.i ]
  br label %bb.hz

bb.hz:                                            ; preds = %lv_color_16a_16a_mix.exit.us.us.i259, %.preheader203.us.i
  %indvars.iv272.i = phi i64 [ %indvars.iv.next273.i, %lv_color_16a_16a_mix.exit.us.us.i259 ], [ 0, %.preheader203.us.i ] ; 4 uses
  %i.azp = getelementptr inbounds nuw [2 x i8], ptr %.1237.us.i, i64 %indvars.iv272.i ; 2 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 1
  %i.azr = load i8, ptr %i.azq, align 1, !tbaa !35
  %i.azs = icmp ult i8 %i.azr, 3
  br i1 %i.azs, label %.sink.split.i.us.us.i261, label %lv_color_16a_16a_mix.exit.us.us.i259

.sink.split.i.us.us.i261:                         ; preds = %bb.hz
  %i.azt = trunc nuw nsw i64 %indvars.iv272.i to i32
  %i.azu = and i32 %i.azt, 7
  %i.azv = lshr exact i32 128, %i.azu
  %i.azw = lshr i64 %indvars.iv272.i, 3
  %i.azx = and i64 %i.azw, 536870911
  %i.azy = getelementptr inbounds nuw i8, ptr %.1126235.us.i, i64 %i.azx
  %i.azz = load i8, ptr %i.azy, align 1, !tbaa !24
  %i.baa = zext i8 %i.azz to i32
  %i.bab = and i32 %i.azv, %i.baa
  %i.bac = icmp eq i32 %i.bab, 0
  %.sroa.016.0.insert.ext.us.us.i262 = select i1 %i.bac, i16 0, i16 255
  %.sroa.016.0.insert.insert.us.us.i263 = or disjoint i16 %.sroa.016.0.insert.ext.us.us.i262, %.sroa.417.0.insert.shift.i240
  store i16 %.sroa.016.0.insert.insert.us.us.i263, ptr %i.azp, align 1
  br label %lv_color_16a_16a_mix.exit.us.us.i259

lv_color_16a_16a_mix.exit.us.us.i259:             ; preds = %.sink.split.i.us.us.i261, %bb.hz
  %indvars.iv.next273.i = add nuw nsw i64 %indvars.iv272.i, 1 ; 2 uses
  %exitcond276.not.i = icmp eq i64 %indvars.iv.next273.i, %wide.trip.count275.i
  br i1 %exitcond276.not.i, label %._crit_edge233.split.us.us.i, label %bb.hz, !llvm.loop !118

._crit_edge233.split.us.us.i:                     ; preds = %lv_color_16a_16a_mix.exit.us.us.i259
  %i.bad = getelementptr inbounds nuw i8, ptr %.1237.us.i, i64 %i.azm
  %i.bae = getelementptr inbounds nuw i8, ptr %.1126235.us.i, i64 %i.azn
  %i.baf = add nuw nsw i32 %.1131234.us.i, 1      ; 2 uses
  %exitcond277.not.i260 = icmp eq i32 %i.baf, %i.axl
  br i1 %exitcond277.not.i260, label %i1_image_blend.exit, label %.preheader203.us.i, !llvm.loop !119

.preheader203.i242:                               ; preds = %.preheader203.lr.ph.split.i, %._crit_edge233.split.i
  %i.bag = phi i8 [ %i.bbz, %._crit_edge233.split.i ], [ -1, %.preheader203.lr.ph.split.i ]
  %i.bah = phi i8 [ %i.bca, %._crit_edge233.split.i ], [ -1, %.preheader203.lr.ph.split.i ]
  %.1237.i = phi ptr [ %i.bcb, %._crit_edge233.split.i ], [ %i.axo, %.preheader203.lr.ph.split.i ] ; 2 uses
  %.1126235.i = phi ptr [ %i.bcc, %._crit_edge233.split.i ], [ %i.axs, %.preheader203.lr.ph.split.i ] ; 2 uses
  %.1131234.i = phi i32 [ %i.bcd, %._crit_edge233.split.i ], [ 0, %.preheader203.lr.ph.split.i ]
  br label %bb.ia

bb.ia:                                            ; preds = %.sink.split.i.i252, %.preheader203.i242
  %i.bai = phi i8 [ %i.bag, %.preheader203.i242 ], [ %i.bbz, %.sink.split.i.i252 ] ; 3 uses
  %i.baj = phi i8 [ %i.bah, %.preheader203.i242 ], [ %i.bca, %.sink.split.i.i252 ] ; 3 uses
  %indvars.iv266.i = phi i64 [ 0, %.preheader203.i242 ], [ %indvars.iv.next267.i, %.sink.split.i.i252 ] ; 4 uses
  %i.bak = trunc nuw nsw i64 %indvars.iv266.i to i32
  %i.bal = lshr i64 %indvars.iv266.i, 3
  %i.bam = and i64 %i.bal, 536870911
  %i.ban = getelementptr inbounds nuw i8, ptr %.1126235.i, i64 %i.bam
  %i.bao = load i8, ptr %i.ban, align 1, !tbaa !24
  %i.bap = zext i8 %i.bao to i32
  %i.baq = and i32 %i.bak, 7
  %i.bar = getelementptr inbounds nuw [2 x i8], ptr %.1237.i, i64 %indvars.iv266.i ; 4 uses
  %i.bas = lshr exact i32 128, %i.baq
  %i.bat = and i32 %i.bas, %i.bap
  %i.bau = icmp eq i32 %i.bat, 0
  %.sroa.016.0.insert.ext.i243 = select i1 %i.bau, i16 0, i16 255 ; 3 uses
  %.sroa.016.0.insert.insert.i244 = or disjoint i16 %.sroa.016.0.insert.ext.i243, %.sroa.417.0.insert.shift.i240 ; 3 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bar, i64 1
  %i.baw = load i8, ptr %i.bav, align 1, !tbaa !35 ; 4 uses
  %i.bax = icmp ult i8 %i.baw, 3
  br i1 %i.bax, label %.sink.split.i.i252, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.bay = icmp eq i8 %i.baw, -1
  br i1 %i.bay, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.baz = load i16, ptr %i.bar, align 1          ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i255 = and i16 %i.baz, -256
  %narrow.i.i.i256 = mul nuw i16 %.sroa.016.0.insert.ext.i243, %.sroa.417.0.insert.ext.i
  %i.bba = and i16 %i.baz, 255
  %narrow5.i.i.i257 = mul nuw i16 %i.bba, %i.azk
  %i.bbb = add i16 %narrow5.i.i.i257, %narrow.i.i.i256
  %i.bbc = lshr i16 %i.bbb, 8
  %.sroa.03.0.insert.insert.i.i.i258 = or disjoint i16 %i.bbc, %.sroa.4.0.extract.shift.i.i.i255
  br label %.sink.split.i.i252

bb.id:                                            ; preds = %bb.ib
  %i.bbd = load i8, ptr %i.azi, align 1, !tbaa !39
  %.not.i.i245 = icmp eq i8 %i.baw, %i.bbd
  %i.bbe = load i8, ptr %i.azj, align 1
  %.not54.i.i246 = icmp eq i8 %.fr246.i, %i.bbe
  %or.cond184.i = select i1 %.not.i.i245, i1 %.not54.i.i246, i1 false
  br i1 %or.cond184.i, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.bbf = xor i8 %i.baw, -1
  %i.bbg = zext i8 %i.bbf to i16
  %i.bbh = mul nuw i16 %i.azk, %i.bbg
  %i.bbi = xor i16 %i.bbh, -1
  %i.bbj = lshr i16 %i.bbi, 8                     ; 2 uses
  %i.bbk = trunc nuw i16 %i.bbj to i8
  %i.bbl = udiv i16 %narrow.i.i241, %i.bbj
  %i.bbm = trunc i16 %i.bbl to i8
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %i.bbn = phi i8 [ %i.bai, %bb.id ], [ %i.bbk, %bb.ie ] ; 2 uses
  %i.bbo = phi i8 [ %i.baj, %bb.id ], [ %i.bbm, %bb.ie ] ; 2 uses
  %i.bbp = load i16, ptr %i.bar, align 1          ; 4 uses
  %i.bbq = load i16, ptr %i.axz, align 2
  %i.bbr = icmp eq i16 %i.bbp, %i.bbq
  %i.bbs = load i16, ptr %1, align 2
  %i.bbt = icmp eq i16 %.sroa.016.0.insert.insert.i244, %i.bbs
  %or.cond186.i = select i1 %i.bbr, i1 %i.bbt, i1 false
  br i1 %or.cond186.i, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  store i16 %.sroa.016.0.insert.insert.i244, ptr %1, align 2
  store i16 %i.bbp, ptr %i.axz, align 2
  %.sroa.6.0.insert.ext44.i.i247 = zext i8 %i.bbo to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i56.i.i248 = and i16 %i.bbp, -256
  %narrow.i57.i.i249 = mul nuw i16 %.sroa.016.0.insert.ext.i243, %.sroa.6.0.insert.ext44.i.i247
  %i.bbu = and i16 %i.bbp, 255
  %i.bbv = xor i16 %.sroa.6.0.insert.ext44.i.i247, 255
  %narrow5.i58.i.i250 = mul nuw i16 %i.bbu, %i.bbv
  %i.bbw = add i16 %narrow5.i58.i.i250, %narrow.i57.i.i249
  %i.bbx = lshr i16 %i.bbw, 8
  %.sroa.03.0.insert.insert.i59.i.i251 = or disjoint i16 %i.bbx, %.sroa.4.0.extract.shift.i56.i.i248
  store i16 %.sroa.03.0.insert.insert.i59.i.i251, ptr %i.aya, align 2
  store i8 %i.bbn, ptr %i.azl, align 1, !tbaa !40
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %i.bby = load i16, ptr %i.aya, align 2
  br label %.sink.split.i.i252

.sink.split.i.i252:                               ; preds = %bb.ih, %bb.ic, %bb.ia
  %i.bbz = phi i8 [ %i.bbn, %bb.ih ], [ %i.bai, %bb.ic ], [ %i.bai, %bb.ia ] ; 2 uses
  %i.bca = phi i8 [ %i.bbo, %bb.ih ], [ %i.baj, %bb.ic ], [ %i.baj, %bb.ia ] ; 2 uses
  %.sink.i.i253 = phi i16 [ %i.bby, %bb.ih ], [ %.sroa.03.0.insert.insert.i.i.i258, %bb.ic ], [ %.sroa.016.0.insert.insert.i244, %bb.ia ]
  store i16 %.sink.i.i253, ptr %i.bar, align 1
  %indvars.iv.next267.i = add nuw nsw i64 %indvars.iv266.i, 1 ; 2 uses
  %exitcond270.not.i = icmp eq i64 %indvars.iv.next267.i, %wide.trip.count275.i
  br i1 %exitcond270.not.i, label %._crit_edge233.split.i, label %bb.ia, !llvm.loop !118

._crit_edge233.split.i:                           ; preds = %.sink.split.i.i252
  %i.bcb = getelementptr inbounds nuw i8, ptr %.1237.i, i64 %i.azm
  %i.bcc = getelementptr inbounds nuw i8, ptr %.1126235.i, i64 %i.azn
  %i.bcd = add nuw nsw i32 %.1131234.i, 1         ; 2 uses
  %exitcond271.not.i254 = icmp eq i32 %i.bcd, %i.axl
  br i1 %exitcond271.not.i254, label %i1_image_blend.exit, label %.preheader203.i242, !llvm.loop !119

bb.ii:                                            ; preds = %bb.hy
  %i.bce = icmp ne ptr %i.axw, null               ; 2 uses
  %or.cond8.i185 = and i1 %i.ayg, %i.bce
  br i1 %or.cond8.i185, label %.preheader207.i, label %bb.it

.preheader207.i:                                  ; preds = %bb.ii
  %i.bcf = icmp sgt i32 %i.axl, 0
  br i1 %i.bcf, label %.preheader206.lr.ph.i, label %i1_image_blend.exit

.preheader206.lr.ph.i:                            ; preds = %.preheader207.i
  %i.bcg = icmp sgt i32 %i.axj, 0
  %i.bch = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bci = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bcj = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bck = zext i32 %i.axq to i64
  %i.bcl = zext i32 %i.axu to i64
  %i.bcm = sext i32 %i.axy to i64
  br i1 %i.bcg, label %.preheader206.preheader.i, label %i1_image_blend.exit

.preheader206.preheader.i:                        ; preds = %.preheader206.lr.ph.i
  %wide.trip.count263.i = zext nneg i32 %i.axj to i64
  br label %.preheader206.i

.preheader206.i:                                  ; preds = %._crit_edge227.i, %.preheader206.preheader.i
  %i.bcn = phi i8 [ %i.beo, %._crit_edge227.i ], [ -1, %.preheader206.preheader.i ]
  %i.bco = phi i8 [ %i.bep, %._crit_edge227.i ], [ -1, %.preheader206.preheader.i ]
  %.2231.i = phi ptr [ %i.beq, %._crit_edge227.i ], [ %i.axo, %.preheader206.preheader.i ] ; 2 uses
  %.2127230.i = phi ptr [ %i.ber, %._crit_edge227.i ], [ %i.axs, %.preheader206.preheader.i ] ; 2 uses
  %.2132229.i = phi i32 [ %i.bet, %._crit_edge227.i ], [ 0, %.preheader206.preheader.i ]
  %.0140228.i = phi ptr [ %i.bes, %._crit_edge227.i ], [ %i.axw, %.preheader206.preheader.i ] ; 2 uses
  br label %bb.ij

bb.ij:                                            ; preds = %lv_color_16a_16a_mix.exit165.i234, %.preheader206.i
  %i.bcp = phi i8 [ %i.bcn, %.preheader206.i ], [ %i.beo, %lv_color_16a_16a_mix.exit165.i234 ] ; 5 uses
  %i.bcq = phi i8 [ %i.bco, %.preheader206.i ], [ %i.bep, %lv_color_16a_16a_mix.exit165.i234 ] ; 5 uses
  %indvars.iv260.i = phi i64 [ 0, %.preheader206.i ], [ %indvars.iv.next261.i, %lv_color_16a_16a_mix.exit165.i234 ] ; 5 uses
  %i.bcr = trunc nuw nsw i64 %indvars.iv260.i to i32
  %i.bcs = lshr i64 %indvars.iv260.i, 3
  %i.bct = and i64 %i.bcs, 536870911
  %i.bcu = getelementptr inbounds nuw i8, ptr %.2127230.i, i64 %i.bct
  %i.bcv = load i8, ptr %i.bcu, align 1, !tbaa !24
  %i.bcw = zext i8 %i.bcv to i32
  %i.bcx = and i32 %i.bcr, 7
  %i.bcy = getelementptr inbounds nuw i8, ptr %.0140228.i, i64 %indvars.iv260.i
  %i.bcz = load i8, ptr %i.bcy, align 1, !tbaa !24 ; 4 uses
  %i.bda = getelementptr inbounds nuw [2 x i8], ptr %.2231.i, i64 %indvars.iv260.i ; 4 uses
  %.sroa.415.0.insert.ext.i223 = zext i8 %i.bcz to i16 ; 5 uses
  %.sroa.415.0.insert.shift.i224 = shl nuw i16 %.sroa.415.0.insert.ext.i223, 8
  %i.bdb = lshr exact i32 128, %i.bcx
  %i.bdc = and i32 %i.bdb, %i.bcw
  %i.bdd = icmp eq i32 %i.bdc, 0
  %.sroa.014.0.insert.ext.i225 = select i1 %i.bdd, i16 0, i16 255 ; 3 uses
  %.sroa.014.0.insert.insert.i226 = or disjoint i16 %.sroa.014.0.insert.ext.i225, %.sroa.415.0.insert.shift.i224 ; 4 uses
  %i.bde = icmp ugt i8 %i.bcz, -4
  br i1 %i.bde, label %.sink.split.i158.i232, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bda, i64 1
  %i.bdg = load i8, ptr %i.bdf, align 1, !tbaa !35 ; 4 uses
  %i.bdh = icmp ult i8 %i.bdg, 3
  br i1 %i.bdh, label %.sink.split.i158.i232, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.bdi = icmp ult i8 %i.bcz, 3
  br i1 %i.bdi, label %lv_color_16a_16a_mix.exit165.i234, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.bdj = icmp eq i8 %i.bdg, -1
  br i1 %i.bdj, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.bdk = load i16, ptr %i.bda, align 1          ; 2 uses
  %.sroa.4.0.extract.shift.i.i161.i236 = and i16 %i.bdk, -256
  %narrow.i.i162.i237 = mul nuw i16 %.sroa.014.0.insert.ext.i225, %.sroa.415.0.insert.ext.i223
  %i.bdl = and i16 %i.bdk, 255
  %i.bdm = xor i16 %.sroa.415.0.insert.ext.i223, 255
  %narrow5.i.i163.i238 = mul nuw i16 %i.bdl, %i.bdm
  %i.bdn = add i16 %narrow5.i.i163.i238, %narrow.i.i162.i237
  %i.bdo = lshr i16 %i.bdn, 8
  %.sroa.03.0.insert.insert.i.i164.i239 = or disjoint i16 %i.bdo, %.sroa.4.0.extract.shift.i.i161.i236
  br label %.sink.split.i158.i232

bb.io:                                            ; preds = %bb.im
  %i.bdp = load i8, ptr %i.bch, align 1, !tbaa !39
  %.not.i151.i = icmp eq i8 %i.bdg, %i.bdp
  %i.bdq = load i8, ptr %i.bci, align 1
  %.not54.i160.i227 = icmp eq i8 %i.bcz, %i.bdq
  %or.cond189.i = select i1 %.not.i151.i, i1 %.not54.i160.i227, i1 false
  br i1 %or.cond189.i, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.bdr = xor i16 %.sroa.415.0.insert.ext.i223, 255
  %i.bds = xor i8 %i.bdg, -1
  %i.bdt = zext i8 %i.bds to i16
  %i.bdu = mul nuw i16 %i.bdr, %i.bdt
  %i.bdv = xor i16 %i.bdu, -1
  %i.bdw = lshr i16 %i.bdv, 8                     ; 2 uses
  %i.bdx = trunc nuw i16 %i.bdw to i8
  %narrow.i152.i = mul nuw i16 %.sroa.415.0.insert.ext.i223, 255
  %i.bdy = udiv i16 %narrow.i152.i, %i.bdw
  %i.bdz = trunc i16 %i.bdy to i8
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %i.bea = phi i8 [ %i.bcp, %bb.io ], [ %i.bdx, %bb.ip ] ; 2 uses
  %i.beb = phi i8 [ %i.bcq, %bb.io ], [ %i.bdz, %bb.ip ] ; 2 uses
  %i.bec = load i16, ptr %i.bda, align 1          ; 4 uses
  %i.bed = load i16, ptr %i.axz, align 2
  %i.bee = icmp eq i16 %i.bec, %i.bed
  %i.bef = load i16, ptr %1, align 2
  %i.beg = icmp eq i16 %.sroa.014.0.insert.insert.i226, %i.bef
  %or.cond191.i = select i1 %i.bee, i1 %i.beg, i1 false
  br i1 %or.cond191.i, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  store i16 %.sroa.014.0.insert.insert.i226, ptr %1, align 2
  store i16 %i.bec, ptr %i.axz, align 2
  %.sroa.6.0.insert.ext44.i153.i = zext i8 %i.beb to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i56.i154.i228 = and i16 %i.bec, -256
  %narrow.i57.i155.i229 = mul nuw i16 %.sroa.014.0.insert.ext.i225, %.sroa.6.0.insert.ext44.i153.i
  %i.beh = and i16 %i.bec, 255
  %i.bei = xor i16 %.sroa.6.0.insert.ext44.i153.i, 255
  %narrow5.i58.i156.i230 = mul nuw i16 %i.beh, %i.bei
  %i.bej = add i16 %narrow5.i58.i156.i230, %narrow.i57.i155.i229
  %i.bek = lshr i16 %i.bej, 8
  %.sroa.03.0.insert.insert.i59.i157.i231 = or disjoint i16 %i.bek, %.sroa.4.0.extract.shift.i56.i154.i228
  store i16 %.sroa.03.0.insert.insert.i59.i157.i231, ptr %i.aya, align 2
  store i8 %i.bea, ptr %i.bcj, align 1, !tbaa !40
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %i.bel = load i16, ptr %i.aya, align 2
  br label %.sink.split.i158.i232

.sink.split.i158.i232:                            ; preds = %bb.is, %bb.in, %bb.ik, %bb.ij
  %i.bem = phi i8 [ %i.bea, %bb.is ], [ %i.bcp, %bb.in ], [ %i.bcp, %bb.ik ], [ %i.bcp, %bb.ij ]
  %i.ben = phi i8 [ %i.beb, %bb.is ], [ %i.bcq, %bb.in ], [ %i.bcq, %bb.ik ], [ %i.bcq, %bb.ij ]
  %.sink.i159.i233 = phi i16 [ %i.bel, %bb.is ], [ %.sroa.03.0.insert.insert.i.i164.i239, %bb.in ], [ %.sroa.014.0.insert.insert.i226, %bb.ik ], [ %.sroa.014.0.insert.insert.i226, %bb.ij ]
  store i16 %.sink.i159.i233, ptr %i.bda, align 1
  br label %lv_color_16a_16a_mix.exit165.i234

lv_color_16a_16a_mix.exit165.i234:                ; preds = %.sink.split.i158.i232, %bb.il
  %i.beo = phi i8 [ %i.bcp, %bb.il ], [ %i.bem, %.sink.split.i158.i232 ] ; 2 uses
  %i.bep = phi i8 [ %i.bcq, %bb.il ], [ %i.ben, %.sink.split.i158.i232 ] ; 2 uses
  %indvars.iv.next261.i = add nuw nsw i64 %indvars.iv260.i, 1 ; 2 uses
  %exitcond264.not.i = icmp eq i64 %indvars.iv.next261.i, %wide.trip.count263.i
  br i1 %exitcond264.not.i, label %._crit_edge227.i, label %bb.ij, !llvm.loop !120

._crit_edge227.i:                                 ; preds = %lv_color_16a_16a_mix.exit165.i234
  %i.beq = getelementptr inbounds nuw i8, ptr %.2231.i, i64 %i.bck
  %i.ber = getelementptr inbounds nuw i8, ptr %.2127230.i, i64 %i.bcl
  %i.bes = getelementptr inbounds i8, ptr %.0140228.i, i64 %i.bcm
  %i.bet = add nuw nsw i32 %.2132229.i, 1         ; 2 uses
  %exitcond265.not.i235 = icmp eq i32 %i.bet, %i.axl
  br i1 %exitcond265.not.i235, label %i1_image_blend.exit, label %.preheader206.i, !llvm.loop !121

bb.it:                                            ; preds = %bb.ii
  %or.cond11.i186 = and i1 %i.azf, %i.bce
  %i.beu = icmp sgt i32 %i.axl, 0                 ; 2 uses
  br i1 %or.cond11.i186, label %.preheader210.i, label %.preheader213.i

.preheader213.i:                                  ; preds = %bb.it
  br i1 %i.beu, label %.preheader212.lr.ph.i, label %i1_image_blend.exit

.preheader212.lr.ph.i:                            ; preds = %.preheader213.i
  %i.bev = icmp sgt i32 %i.axj, 0
  %i.bew = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bex = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bey = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bez = sext i32 %i.axy to i64
  %i.bfa = zext i32 %i.axq to i64
  %i.bfb = zext i32 %i.axu to i64
  br i1 %i.bev, label %.preheader212.preheader.i, label %i1_image_blend.exit

.preheader212.preheader.i:                        ; preds = %.preheader212.lr.ph.i
  %wide.trip.count.i187 = zext nneg i32 %i.axj to i64
  br label %.preheader212.i

.preheader210.i:                                  ; preds = %bb.it
  br i1 %i.beu, label %.preheader209.lr.ph.i, label %i1_image_blend.exit

.preheader209.lr.ph.i:                            ; preds = %.preheader210.i
  %i.bfc = icmp sgt i32 %i.axj, 0
  %i.bfd = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bfe = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bff = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bfg = zext i32 %i.axq to i64
  %i.bfh = zext i32 %i.axu to i64
  %i.bfi = sext i32 %i.axy to i64
  br i1 %i.bfc, label %.preheader209.preheader.i, label %i1_image_blend.exit

.preheader209.preheader.i:                        ; preds = %.preheader209.lr.ph.i
  %wide.trip.count257.i = zext nneg i32 %i.axj to i64
  br label %.preheader209.i215

.preheader209.i215:                               ; preds = %._crit_edge221.i, %.preheader209.preheader.i
  %i.bfj = phi i8 [ %i.bhn, %._crit_edge221.i ], [ -1, %.preheader209.preheader.i ]
  %i.bfk = phi i8 [ %i.bho, %._crit_edge221.i ], [ -1, %.preheader209.preheader.i ]
  %.3225.i = phi ptr [ %i.bhp, %._crit_edge221.i ], [ %i.axo, %.preheader209.preheader.i ] ; 2 uses
  %.3128224.i = phi ptr [ %i.bhq, %._crit_edge221.i ], [ %i.axs, %.preheader209.preheader.i ] ; 2 uses
  %.3133223.i = phi i32 [ %i.bhs, %._crit_edge221.i ], [ 0, %.preheader209.preheader.i ]
  %.1141222.i = phi ptr [ %i.bhr, %._crit_edge221.i ], [ %i.axw, %.preheader209.preheader.i ] ; 2 uses
  br label %bb.iu

bb.iu:                                            ; preds = %lv_color_16a_16a_mix.exit180.i, %.preheader209.i215
  %i.bfl = phi i8 [ %i.bfj, %.preheader209.i215 ], [ %i.bhn, %lv_color_16a_16a_mix.exit180.i ] ; 5 uses
  %i.bfm = phi i8 [ %i.bfk, %.preheader209.i215 ], [ %i.bho, %lv_color_16a_16a_mix.exit180.i ] ; 5 uses
  %indvars.iv254.i = phi i64 [ 0, %.preheader209.i215 ], [ %indvars.iv.next255.i, %lv_color_16a_16a_mix.exit180.i ] ; 5 uses
  %i.bfn = trunc nuw nsw i64 %indvars.iv254.i to i32
  %i.bfo = lshr i64 %indvars.iv254.i, 3
  %i.bfp = and i64 %i.bfo, 536870911
  %i.bfq = getelementptr inbounds nuw i8, ptr %.3128224.i, i64 %i.bfp
  %i.bfr = load i8, ptr %i.bfq, align 1, !tbaa !24
  %i.bfs = zext i8 %i.bfr to i32
  %i.bft = and i32 %i.bfn, 7
  %i.bfu = getelementptr inbounds nuw i8, ptr %.1141222.i, i64 %indvars.iv254.i
  %i.bfv = load i8, ptr %i.bfu, align 1, !tbaa !24
  %i.bfw = zext i8 %i.bfv to i32
  %i.bfx = mul nuw nsw i32 %i.bfw, %i.ayf         ; 3 uses
  %i.bfy = getelementptr inbounds nuw [2 x i8], ptr %.3225.i, i64 %indvars.iv254.i ; 4 uses
  %tr.sh.diff.i216 = trunc nuw i32 %i.bfx to i16  ; 2 uses
  %.sroa.413.0.insert.shift.i217 = and i16 %tr.sh.diff.i216, -256
  %i.bfz = lshr exact i32 128, %i.bft
  %i.bga = and i32 %i.bfz, %i.bfs
  %i.bgb = icmp eq i32 %i.bga, 0
  %.sroa.012.0.insert.ext.i218 = select i1 %i.bgb, i16 0, i16 255 ; 3 uses
  %.sroa.012.0.insert.insert.i219 = or disjoint i16 %.sroa.413.0.insert.shift.i217, %.sroa.012.0.insert.ext.i218 ; 4 uses
  %.sroa.6.0.extract.shift.i.i220 = lshr i16 %tr.sh.diff.i216, 8 ; 5 uses
  %i.bgc = icmp samesign ugt i32 %i.bfx, 64767
  br i1 %i.bgc, label %.sink.split.i173.i, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfy, i64 1
  %i.bge = load i8, ptr %i.bgd, align 1, !tbaa !35 ; 4 uses
  %i.bgf = icmp ult i8 %i.bge, 3
  br i1 %i.bgf, label %.sink.split.i173.i, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.bgg = icmp samesign ult i32 %i.bfx, 768
  br i1 %i.bgg, label %lv_color_16a_16a_mix.exit180.i, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.bgh = icmp eq i8 %i.bge, -1
  br i1 %i.bgh, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.bgi = load i16, ptr %i.bfy, align 1          ; 2 uses
  %.sroa.4.0.extract.shift.i.i176.i = and i16 %i.bgi, -256
  %narrow.i.i177.i222 = mul nuw i16 %.sroa.6.0.extract.shift.i.i220, %.sroa.012.0.insert.ext.i218
  %i.bgj = and i16 %i.bgi, 255
  %i.bgk = xor i16 %.sroa.6.0.extract.shift.i.i220, 255
  %narrow5.i.i178.i = mul nuw i16 %i.bgj, %i.bgk
  %i.bgl = add i16 %narrow5.i.i178.i, %narrow.i.i177.i222
  %i.bgm = lshr i16 %i.bgl, 8
  %.sroa.03.0.insert.insert.i.i179.i = or disjoint i16 %i.bgm, %.sroa.4.0.extract.shift.i.i176.i
  br label %.sink.split.i173.i

bb.iz:                                            ; preds = %bb.ix
  %i.bgn = load i8, ptr %i.bfd, align 1, !tbaa !39
  %.not.i166.i = icmp eq i8 %i.bge, %i.bgn
  %i.bgo = load i8, ptr %i.bfe, align 1
  %i.bgp = zext i8 %i.bgo to i16
  %.not54.i175.i = icmp eq i16 %.sroa.6.0.extract.shift.i.i220, %i.bgp
  %or.cond194.i = select i1 %.not.i166.i, i1 %.not54.i175.i, i1 false
  br i1 %or.cond194.i, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.bgq = xor i16 %.sroa.6.0.extract.shift.i.i220, 255
  %i.bgr = xor i8 %i.bge, -1
  %i.bgs = zext i8 %i.bgr to i16
  %i.bgt = mul nuw i16 %i.bgq, %i.bgs
  %i.bgu = xor i16 %i.bgt, -1
  %i.bgv = lshr i16 %i.bgu, 8                     ; 2 uses
  %i.bgw = trunc nuw i16 %i.bgv to i8
  %narrow.i167.i = mul nuw i16 %.sroa.6.0.extract.shift.i.i220, 255
  %i.bgx = udiv i16 %narrow.i167.i, %i.bgv
  %i.bgy = trunc i16 %i.bgx to i8
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %i.bgz = phi i8 [ %i.bfl, %bb.iz ], [ %i.bgw, %bb.ja ] ; 2 uses
  %i.bha = phi i8 [ %i.bfm, %bb.iz ], [ %i.bgy, %bb.ja ] ; 2 uses
  %i.bhb = load i16, ptr %i.bfy, align 1          ; 4 uses
  %i.bhc = load i16, ptr %i.axz, align 2
  %i.bhd = icmp eq i16 %i.bhb, %i.bhc
  %i.bhe = load i16, ptr %1, align 2
  %i.bhf = icmp eq i16 %.sroa.012.0.insert.insert.i219, %i.bhe
  %or.cond196.i = select i1 %i.bhd, i1 %i.bhf, i1 false
  br i1 %or.cond196.i, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  store i16 %.sroa.012.0.insert.insert.i219, ptr %1, align 2
  store i16 %i.bhb, ptr %i.axz, align 2
  %.sroa.6.0.insert.ext44.i168.i = zext i8 %i.bha to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i56.i169.i = and i16 %i.bhb, -256
  %narrow.i57.i170.i = mul nuw i16 %.sroa.012.0.insert.ext.i218, %.sroa.6.0.insert.ext44.i168.i
  %i.bhg = and i16 %i.bhb, 255
  %i.bhh = xor i16 %.sroa.6.0.insert.ext44.i168.i, 255
  %narrow5.i58.i171.i = mul nuw i16 %i.bhg, %i.bhh
  %i.bhi = add i16 %narrow5.i58.i171.i, %narrow.i57.i170.i
  %i.bhj = lshr i16 %i.bhi, 8
  %.sroa.03.0.insert.insert.i59.i172.i = or disjoint i16 %i.bhj, %.sroa.4.0.extract.shift.i56.i169.i
  store i16 %.sroa.03.0.insert.insert.i59.i172.i, ptr %i.aya, align 2
  store i8 %i.bgz, ptr %i.bff, align 1, !tbaa !40
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  %i.bhk = load i16, ptr %i.aya, align 2
  br label %.sink.split.i173.i

.sink.split.i173.i:                               ; preds = %bb.jd, %bb.iy, %bb.iv, %bb.iu
  %i.bhl = phi i8 [ %i.bgz, %bb.jd ], [ %i.bfl, %bb.iy ], [ %i.bfl, %bb.iv ], [ %i.bfl, %bb.iu ]
  %i.bhm = phi i8 [ %i.bha, %bb.jd ], [ %i.bfm, %bb.iy ], [ %i.bfm, %bb.iv ], [ %i.bfm, %bb.iu ]
  %.sink.i174.i = phi i16 [ %i.bhk, %bb.jd ], [ %.sroa.03.0.insert.insert.i.i179.i, %bb.iy ], [ %.sroa.012.0.insert.insert.i219, %bb.iv ], [ %.sroa.012.0.insert.insert.i219, %bb.iu ]
  store i16 %.sink.i174.i, ptr %i.bfy, align 1
  br label %lv_color_16a_16a_mix.exit180.i

lv_color_16a_16a_mix.exit180.i:                   ; preds = %.sink.split.i173.i, %bb.iw
  %i.bhn = phi i8 [ %i.bfl, %bb.iw ], [ %i.bhl, %.sink.split.i173.i ] ; 2 uses
  %i.bho = phi i8 [ %i.bfm, %bb.iw ], [ %i.bhm, %.sink.split.i173.i ] ; 2 uses
  %indvars.iv.next255.i = add nuw nsw i64 %indvars.iv254.i, 1 ; 2 uses
  %exitcond258.not.i = icmp eq i64 %indvars.iv.next255.i, %wide.trip.count257.i
  br i1 %exitcond258.not.i, label %._crit_edge221.i, label %bb.iu, !llvm.loop !122

._crit_edge221.i:                                 ; preds = %lv_color_16a_16a_mix.exit180.i
  %i.bhp = getelementptr inbounds nuw i8, ptr %.3225.i, i64 %i.bfg
  %i.bhq = getelementptr inbounds nuw i8, ptr %.3128224.i, i64 %i.bfh
  %i.bhr = getelementptr inbounds i8, ptr %.1141222.i, i64 %i.bfi
  %i.bhs = add nuw nsw i32 %.3133223.i, 1         ; 2 uses
  %exitcond259.not.i221 = icmp eq i32 %i.bhs, %i.axl
  br i1 %exitcond259.not.i221, label %i1_image_blend.exit, label %.preheader209.i215, !llvm.loop !123

.preheader212.i:                                  ; preds = %._crit_edge.i206, %.preheader212.preheader.i
  %i.bht = phi i8 [ %i.bko, %._crit_edge.i206 ], [ -1, %.preheader212.preheader.i ]
  %i.bhu = phi i8 [ %i.bkp, %._crit_edge.i206 ], [ -1, %.preheader212.preheader.i ]
  %.4219.i = phi ptr [ %i.bkr, %._crit_edge.i206 ], [ %i.axo, %.preheader212.preheader.i ] ; 2 uses
  %.4129218.i = phi ptr [ %i.bks, %._crit_edge.i206 ], [ %i.axs, %.preheader212.preheader.i ] ; 2 uses
  %.4134217.i = phi i32 [ %i.bkt, %._crit_edge.i206 ], [ 0, %.preheader212.preheader.i ]
  %.2142216.i = phi ptr [ %.3143.i207, %._crit_edge.i206 ], [ %i.axw, %.preheader212.preheader.i ] ; 3 uses
  %i.bhv = icmp eq ptr %.2142216.i, null          ; 2 uses
  br label %bb.je

bb.je:                                            ; preds = %blend_non_normal_pixel.exit.i203, %.preheader212.i
  %i.bhw = phi i8 [ %i.bht, %.preheader212.i ], [ %i.bko, %blend_non_normal_pixel.exit.i203 ] ; 6 uses
  %i.bhx = phi i8 [ %i.bhu, %.preheader212.i ], [ %i.bkp, %blend_non_normal_pixel.exit.i203 ] ; 6 uses
  %indvars.iv.i188 = phi i64 [ 0, %.preheader212.i ], [ %indvars.iv.next.i204, %blend_non_normal_pixel.exit.i203 ] ; 5 uses
  %i.bhy = trunc nuw nsw i64 %indvars.iv.i188 to i32
  %i.bhz = lshr i64 %indvars.iv.i188, 3
  %i.bia = and i64 %i.bhz, 536870911
  %i.bib = getelementptr inbounds nuw i8, ptr %.4129218.i, i64 %i.bia
  %i.bic = load i8, ptr %i.bib, align 1, !tbaa !24
  %i.bid = zext i8 %i.bic to i32
  %i.bie = and i32 %i.bhy, 7
  br i1 %i.bhv, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.bif = getelementptr inbounds nuw i8, ptr %.2142216.i, i64 %indvars.iv.i188
  %i.big = load i8, ptr %i.bif, align 1, !tbaa !24
  %i.bih = zext i8 %i.big to i32
  %i.bii = mul nuw nsw i32 %i.bih, %i.ayf
  %i.bij = lshr i32 %i.bii, 8
  %i.bik = trunc nuw i32 %i.bij to i8
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.je
  %.sroa.4.0.i189 = phi i8 [ %i.bik, %bb.jf ], [ %.fr246.i, %bb.je ] ; 4 uses
  %i.bil = getelementptr inbounds nuw [2 x i8], ptr %.4219.i, i64 %indvars.iv.i188 ; 8 uses
  %i.bim = load i32, ptr %i.ayb, align 4, !tbaa !57
  %.sroa.4.0.insert.ext.i = zext i8 %.sroa.4.0.i189 to i16 ; 5 uses
  %.sroa.4.0.insert.shift.i190 = shl nuw i16 %.sroa.4.0.insert.ext.i, 8
  %i.bin = lshr exact i32 128, %i.bie
  %i.bio = and i32 %i.bin, %i.bid
  %i.bip = icmp eq i32 %i.bio, 0
  %.sroa.0.0.insert.ext.i191 = select i1 %i.bip, i16 0, i16 255 ; 4 uses
  switch i32 %i.bim, label %blend_non_normal_pixel.exit.i203 [
    i32 1, label %bb.jh
    i32 2, label %bb.ji
    i32 3, label %bb.jj
    i32 4, label %bb.jk
  ]

bb.jh:                                            ; preds = %bb.jg
  %i.biq = load i8, ptr %i.bil, align 1, !tbaa !58
  %i.bir = zext i8 %i.biq to i16
  %i.bis = add nuw nsw i16 %.sroa.0.0.insert.ext.i191, %i.bir
  %spec.select24.i.i214 = call i16 @llvm.umin.i16(i16 %i.bis, i16 255)
  br label %bb.jl

bb.ji:                                            ; preds = %bb.jg
  %i.bit = load i8, ptr %i.bil, align 1, !tbaa !58
  %i.biu = zext i8 %i.bit to i16
  %i.biv = sub nsw i16 %i.biu, %.sroa.0.0.insert.ext.i191
  %spec.select2223.i.i213 = call i16 @llvm.smax.i16(i16 %i.biv, i16 0)
  br label %bb.jl

bb.jj:                                            ; preds = %bb.jg
  %i.biw = load i8, ptr %i.bil, align 1, !tbaa !58
  %i.bix = zext i8 %i.biw to i16
  %i.biy = mul nuw i16 %.sroa.0.0.insert.ext.i191, %i.bix
  %i.biz = lshr i16 %i.biy, 8
  br label %bb.jl

bb.jk:                                            ; preds = %bb.jg
  %i.bja = load i8, ptr %i.bil, align 1, !tbaa !58
  %i.bjb = zext i8 %i.bja to i16
  %i.bjc = sub nsw i16 %i.bjb, %.sroa.0.0.insert.ext.i191
  %i.bjd = call i16 @llvm.abs.i16(i16 %i.bjc, i1 true)
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj, %bb.ji, %bb.jh
  %.sroa.0.0.i.i192 = phi i16 [ %spec.select24.i.i214, %bb.jh ], [ %spec.select2223.i.i213, %bb.ji ], [ %i.biz, %bb.jj ], [ %i.bjd, %bb.jk ] ; 3 uses
  %.sroa.0.0.insert.insert.i.i193 = add nuw nsw i16 %.sroa.0.0.i.i192, %.sroa.4.0.insert.shift.i190 ; 4 uses
  %i.bje = icmp ugt i8 %.sroa.4.0.i189, -4
  br i1 %i.bje, label %.sink.split.i.i.i201, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bil, i64 1
  %i.bjg = load i8, ptr %i.bjf, align 1, !tbaa !35 ; 4 uses
  %i.bjh = icmp ult i8 %i.bjg, 3
  br i1 %i.bjh, label %.sink.split.i.i.i201, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.bji = icmp ult i8 %.sroa.4.0.i189, 3
  br i1 %i.bji, label %blend_non_normal_pixel.exit.i203, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.bjj = icmp eq i8 %i.bjg, -1
  br i1 %i.bjj, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.bjk = load i16, ptr %i.bil, align 1          ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i.i209 = and i16 %i.bjk, -256
  %narrow.i.i.i.i210 = mul nuw i16 %.sroa.0.0.i.i192, %.sroa.4.0.insert.ext.i
  %i.bjl = and i16 %i.bjk, 255
  %i.bjm = xor i16 %.sroa.4.0.insert.ext.i, 255
  %narrow5.i.i.i.i211 = mul nuw i16 %i.bjl, %i.bjm
  %i.bjn = add i16 %narrow5.i.i.i.i211, %narrow.i.i.i.i210
  %i.bjo = lshr i16 %i.bjn, 8
  %.sroa.03.0.insert.insert.i.i.i.i212 = or disjoint i16 %i.bjo, %.sroa.4.0.extract.shift.i.i.i.i209
  br label %.sink.split.i.i.i201

bb.jq:                                            ; preds = %bb.jo
  %i.bjp = load i8, ptr %i.bew, align 1, !tbaa !39
  %.not.i.i.i194 = icmp eq i8 %i.bjg, %i.bjp
  %i.bjq = load i8, ptr %i.bex, align 1
  %.not54.i.i.i195 = icmp eq i8 %.sroa.4.0.i189, %i.bjq
  %or.cond199.i = select i1 %.not.i.i.i194, i1 %.not54.i.i.i195, i1 false
  br i1 %or.cond199.i, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.bjr = xor i16 %.sroa.4.0.insert.ext.i, 255
  %i.bjs = xor i8 %i.bjg, -1
  %i.bjt = zext i8 %i.bjs to i16
  %i.bju = mul nuw i16 %i.bjr, %i.bjt
  %i.bjv = xor i16 %i.bju, -1
  %i.bjw = lshr i16 %i.bjv, 8                     ; 2 uses
  %i.bjx = trunc nuw i16 %i.bjw to i8
  %narrow.i.i181.i = mul nuw i16 %.sroa.4.0.insert.ext.i, 255
  %i.bjy = udiv i16 %narrow.i.i181.i, %i.bjw
  %i.bjz = trunc i16 %i.bjy to i8
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %i.bka = phi i8 [ %i.bhw, %bb.jq ], [ %i.bjx, %bb.jr ] ; 2 uses
  %i.bkb = phi i8 [ %i.bhx, %bb.jq ], [ %i.bjz, %bb.jr ] ; 2 uses
  %i.bkc = load i16, ptr %i.bil, align 1          ; 4 uses
  %i.bkd = load i16, ptr %i.axz, align 2
  %i.bke = icmp eq i16 %i.bkc, %i.bkd
  %i.bkf = load i16, ptr %1, align 2
  %i.bkg = icmp eq i16 %.sroa.0.0.insert.insert.i.i193, %i.bkf
  %or.cond201.i = select i1 %i.bke, i1 %i.bkg, i1 false
  br i1 %or.cond201.i, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  store i16 %.sroa.0.0.insert.insert.i.i193, ptr %1, align 2
  store i16 %i.bkc, ptr %i.axz, align 2
  %.sroa.6.0.insert.ext44.i.i.i196 = zext i8 %i.bkb to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i56.i.i.i197 = and i16 %i.bkc, -256
  %narrow.i57.i.i.i198 = mul nuw i16 %.sroa.0.0.i.i192, %.sroa.6.0.insert.ext44.i.i.i196
  %i.bkh = and i16 %i.bkc, 255
  %i.bki = xor i16 %.sroa.6.0.insert.ext44.i.i.i196, 255
  %narrow5.i58.i.i.i199 = mul nuw i16 %i.bkh, %i.bki
  %i.bkj = add i16 %narrow5.i58.i.i.i199, %narrow.i57.i.i.i198
  %i.bkk = lshr i16 %i.bkj, 8
  %.sroa.03.0.insert.insert.i59.i.i.i200 = or disjoint i16 %i.bkk, %.sroa.4.0.extract.shift.i56.i.i.i197
  store i16 %.sroa.03.0.insert.insert.i59.i.i.i200, ptr %i.aya, align 2
  store i8 %i.bka, ptr %i.bey, align 1, !tbaa !40
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js
  %i.bkl = load i16, ptr %i.aya, align 2
  br label %.sink.split.i.i.i201

.sink.split.i.i.i201:                             ; preds = %bb.ju, %bb.jp, %bb.jm, %bb.jl
  %i.bkm = phi i8 [ %i.bka, %bb.ju ], [ %i.bhw, %bb.jp ], [ %i.bhw, %bb.jm ], [ %i.bhw, %bb.jl ]
  %i.bkn = phi i8 [ %i.bkb, %bb.ju ], [ %i.bhx, %bb.jp ], [ %i.bhx, %bb.jm ], [ %i.bhx, %bb.jl ]
  %.sink.i.i.i202 = phi i16 [ %i.bkl, %bb.ju ], [ %.sroa.03.0.insert.insert.i.i.i.i212, %bb.jp ], [ %.sroa.0.0.insert.insert.i.i193, %bb.jm ], [ %.sroa.0.0.insert.insert.i.i193, %bb.jl ]
  store i16 %.sink.i.i.i202, ptr %i.bil, align 1
  br label %blend_non_normal_pixel.exit.i203

blend_non_normal_pixel.exit.i203:                 ; preds = %.sink.split.i.i.i201, %bb.jn, %bb.jg
  %i.bko = phi i8 [ %i.bhw, %bb.jg ], [ %i.bhw, %bb.jn ], [ %i.bkm, %.sink.split.i.i.i201 ] ; 2 uses
  %i.bkp = phi i8 [ %i.bhx, %bb.jg ], [ %i.bhx, %bb.jn ], [ %i.bkn, %.sink.split.i.i.i201 ] ; 2 uses
  %indvars.iv.next.i204 = add nuw nsw i64 %indvars.iv.i188, 1 ; 2 uses
  %exitcond.not.i205 = icmp eq i64 %indvars.iv.next.i204, %wide.trip.count.i187
  br i1 %exitcond.not.i205, label %._crit_edge.i206, label %bb.je, !llvm.loop !124

._crit_edge.i206:                                 ; preds = %blend_non_normal_pixel.exit.i203
  %i.bkq = getelementptr inbounds i8, ptr %.2142216.i, i64 %i.bez
  %.3143.i207 = select i1 %i.bhv, ptr null, ptr %i.bkq
  %i.bkr = getelementptr inbounds nuw i8, ptr %.4219.i, i64 %i.bfa
  %i.bks = getelementptr inbounds nuw i8, ptr %.4129218.i, i64 %i.bfb
  %i.bkt = add nuw nsw i32 %.4134217.i, 1         ; 2 uses
  %exitcond253.not.i208 = icmp eq i32 %i.bkt, %i.axl
  br i1 %exitcond253.not.i208, label %i1_image_blend.exit, label %.preheader212.i, !llvm.loop !125

i1_image_blend.exit:                              ; preds = %._crit_edge.i206, %._crit_edge221.i, %._crit_edge227.i, %._crit_edge233.split.i, %._crit_edge233.split.us.us.i, %._crit_edge242.i, %bb.hw, %.preheader202.i264, %.preheader.lr.ph.i265, %.preheader204.i, %.preheader203.lr.ph.i, %.preheader207.i, %.preheader206.lr.ph.i, %.preheader213.i, %.preheader212.lr.ph.i, %.preheader210.i, %.preheader209.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %bb.jv

bb.jv:                                            ; preds = %bb.a, %i1_image_blend.exit, %al88_image_blend.exit, %l8_image_blend.exit, %argb8888_image_blend.exit, %bb.bb, %bb.ba, %rgb565_image_blend.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rgb888_image_blend(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext range(i8 3, 5) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_color_mix_alpha_cache_t, align 2 ; 27 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !48   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !49   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8, !tbaa !50
  %.fr294 = freeze i8 %i.f                        ; 6 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !51     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !52   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !56   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @lv_memset(ptr noundef nonnull %2, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.r, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.s, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 9 uses
  store i8 -1, ptr %i.t, align 2, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 7 ; 9 uses
  store i8 -1, ptr %i.u, align 1, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !57
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %.preheader231

.preheader231:                                    ; preds = %bb.a
  %i.y = icmp sgt i32 %i.d, 0
  br i1 %i.y, label %.preheader230.lr.ph, label %.loopexit

.preheader230.lr.ph:                              ; preds = %.preheader231
  %i.z = icmp sgt i32 %i.b, 0
  %i.aa = zext i8 %.fr294 to i16                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ae = sext i32 %i.q to i64
  %i.af = zext i32 %i.i to i64
  %i.ag = sext i32 %i.m to i64
  br i1 %i.z, label %.preheader230.preheader, label %.loopexit

.preheader230.preheader:                          ; preds = %.preheader230.lr.ph
  %i.ah = zext nneg i8 %1 to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.preheader230

bb.b:                                             ; preds = %bb.a
  %i.ai = icmp eq ptr %i.o, null                  ; 2 uses
  %i.aj = zext i8 %.fr294 to i16                  ; 5 uses
  %i.ak = icmp ugt i8 %.fr294, -4                 ; 2 uses
  %or.cond = and i1 %i.ai, %i.ak
  %i.al = icmp sgt i32 %i.d, 0                    ; 4 uses
  %or.cond290 = select i1 %or.cond, i1 %i.al, i1 false
  br i1 %or.cond290, label %.preheader227.lr.ph, label %.loopexit229

.preheader227.lr.ph:                              ; preds = %bb.b
  %i.am = icmp sgt i32 %i.b, 0
  %i.an = zext i32 %i.i to i64
  %i.ao = sext i32 %i.m to i64
  br i1 %i.am, label %.preheader227.us.preheader, label %.loopexit

.preheader227.us.preheader:                       ; preds = %.preheader227.lr.ph
  %i.ap = zext nneg i8 %1 to i64
  %wide.trip.count329 = zext nneg i32 %i.b to i64
  br label %.preheader227.us

.preheader227.us:                                 ; preds = %.preheader227.us.preheader, %._crit_edge241.us
  %.0137244.us = phi ptr [ %i.au, %._crit_edge241.us ], [ %i.g, %.preheader227.us.preheader ] ; 2 uses
  %.0139243.us = phi ptr [ %i.av, %._crit_edge241.us ], [ %i.k, %.preheader227.us.preheader ] ; 2 uses
  %.0147242.us = phi i32 [ %i.aw, %._crit_edge241.us ], [ 0, %.preheader227.us.preheader ]
  br label %bb.c

bb.c:                                             ; preds = %.preheader227.us, %bb.c
  %indvars.iv324 = phi i64 [ 0, %.preheader227.us ], [ %indvars.iv.next325, %bb.c ] ; 2 uses
  %indvars.iv322 = phi i64 [ 0, %.preheader227.us ], [ %indvars.iv.next323, %bb.c ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0139243.us, i64 %indvars.iv322
  %i.ar = call zeroext i8 @lv_color24_luminance(ptr noundef %i.aq) #6
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.0137244.us, i64 %indvars.iv324 ; 2 uses
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !58
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 -1, ptr %i.at, align 1, !tbaa !35
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, %i.ap
  %exitcond330.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count329
  br i1 %exitcond330.not, label %._crit_edge241.us, label %bb.c, !llvm.loop !126

._crit_edge241.us:                                ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %.0137244.us, i64 %i.an ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.0139243.us, i64 %i.ao ; 2 uses
  %i.aw = add nuw nsw i32 %.0147242.us, 1         ; 2 uses
  %exitcond331.not = icmp eq i32 %i.aw, %i.d
  br i1 %exitcond331.not, label %.loopexit229, label %.preheader227.us, !llvm.loop !127

.loopexit229:                                     ; preds = %._crit_edge241.us, %bb.b
  %.1140 = phi ptr [ %i.k, %bb.b ], [ %i.av, %._crit_edge241.us ] ; 3 uses
  %.1 = phi ptr [ %i.g, %bb.b ], [ %i.au, %._crit_edge241.us ] ; 3 uses
  %i.ax = icmp ult i8 %.fr294, -3                 ; 2 uses
  %or.cond5 = and i1 %i.ai, %i.ax
  %or.cond291 = select i1 %or.cond5, i1 %i.al, i1 false
  br i1 %or.cond291, label %.preheader224.lr.ph, label %.loopexit226

.preheader224.lr.ph:                              ; preds = %.loopexit229
  %i.ay = icmp sgt i32 %i.b, 0
  %.sroa.420.0.insert.shift = shl nuw i16 %i.aj, 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.bb = xor i16 %i.aj, 255                      ; 2 uses
  %narrow.i = mul nuw i16 %i.aj, 255
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.bd = zext i32 %i.i to i64                    ; 2 uses
  %i.be = sext i32 %i.m to i64                    ; 2 uses
  br i1 %i.ay, label %.preheader224.lr.ph.split.us, label %.loopexit

.preheader224.lr.ph.split.us:                     ; preds = %.preheader224.lr.ph
  %i.bf = icmp ult i8 %.fr294, 3
  %i.bg = zext nneg i8 %1 to i64                  ; 2 uses
  %wide.trip.count351 = zext nneg i32 %i.b to i64 ; 2 uses
  br i1 %i.bf, label %.preheader224.us.us, label %.preheader224.us

.preheader224.us.us:                              ; preds = %.preheader224.lr.ph.split.us, %._crit_edge249.split.us.us.us
  %.2253.us.us = phi ptr [ %i.bn, %._crit_edge249.split.us.us.us ], [ %.1, %.preheader224.lr.ph.split.us ] ; 2 uses
  %.2141251.us.us = phi ptr [ %i.bo, %._crit_edge249.split.us.us.us ], [ %.1140, %.preheader224.lr.ph.split.us ] ; 2 uses
  %.1148250.us.us = phi i32 [ %i.bp, %._crit_edge249.split.us.us.us ], [ 0, %.preheader224.lr.ph.split.us ]
  br label %bb.d

bb.d:                                             ; preds = %lv_color_16a_16a_mix.exit.us.us.us, %.preheader224.us.us
  %indvars.iv346 = phi i64 [ %indvars.iv.next347, %lv_color_16a_16a_mix.exit.us.us.us ], [ 0, %.preheader224.us.us ] ; 2 uses
  %indvars.iv344 = phi i64 [ %indvars.iv.next345, %lv_color_16a_16a_mix.exit.us.us.us ], [ 0, %.preheader224.us.us ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.2141251.us.us, i64 %indvars.iv344
  %i.bi = call zeroext i8 @lv_color24_luminance(ptr noundef %i.bh) #6
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.2253.us.us, i64 %indvars.iv346 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !35
  %i.bm = icmp ult i8 %i.bl, 3
  br i1 %i.bm, label %.sink.split.i.us.us.us, label %lv_color_16a_16a_mix.exit.us.us.us

.sink.split.i.us.us.us:                           ; preds = %bb.d
  %.sroa.019.0.insert.ext.us.us.us = zext i8 %i.bi to i16
  %.sroa.019.0.insert.insert.us.us.us = or disjoint i16 %.sroa.420.0.insert.shift, %.sroa.019.0.insert.ext.us.us.us
  store i16 %.sroa.019.0.insert.insert.us.us.us, ptr %i.bj, align 1
  br label %lv_color_16a_16a_mix.exit.us.us.us

lv_color_16a_16a_mix.exit.us.us.us:               ; preds = %bb.d, %.sink.split.i.us.us.us
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, %i.bg
  %exitcond352.not = icmp eq i64 %indvars.iv.next347, %wide.trip.count351
  br i1 %exitcond352.not, label %._crit_edge249.split.us.us.us, label %bb.d, !llvm.loop !128

._crit_edge249.split.us.us.us:                    ; preds = %lv_color_16a_16a_mix.exit.us.us.us
  %i.bn = getelementptr inbounds nuw i8, ptr %.2253.us.us, i64 %i.bd ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.2141251.us.us, i64 %i.be ; 2 uses
  %i.bp = add nuw nsw i32 %.1148250.us.us, 1      ; 2 uses
  %exitcond353.not = icmp eq i32 %i.bp, %i.d
  br i1 %exitcond353.not, label %.loopexit226, label %.preheader224.us.us, !llvm.loop !129

.preheader224.us:                                 ; preds = %.preheader224.lr.ph.split.us, %._crit_edge249.split.us262
  %.2253.us = phi ptr [ %i.cx, %._crit_edge249.split.us262 ], [ %.1, %.preheader224.lr.ph.split.us ] ; 2 uses
  %.2141251.us = phi ptr [ %i.cy, %._crit_edge249.split.us262 ], [ %.1140, %.preheader224.lr.ph.split.us ] ; 2 uses
  %.1148250.us = phi i32 [ %i.cz, %._crit_edge249.split.us262 ], [ 0, %.preheader224.lr.ph.split.us ]
  br label %bb.e

bb.e:                                             ; preds = %.preheader224.us, %.sink.split.i.us261
  %indvars.iv336 = phi i64 [ 0, %.preheader224.us ], [ %indvars.iv.next337, %.sink.split.i.us261 ] ; 2 uses
  %indvars.iv334 = phi i64 [ 0, %.preheader224.us ], [ %indvars.iv.next335, %.sink.split.i.us261 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.2141251.us, i64 %indvars.iv334
  %i.br = call zeroext i8 @lv_color24_luminance(ptr noundef %i.bq) #6
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.2253.us, i64 %indvars.iv336 ; 4 uses
  %.sroa.019.0.insert.ext.us259 = zext i8 %i.br to i16 ; 3 uses
  %.sroa.019.0.insert.insert.us260 = or disjoint i16 %.sroa.420.0.insert.shift, %.sroa.019.0.insert.ext.us259 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !35  ; 4 uses
  %i.bv = icmp ult i8 %i.bu, 3
  br i1 %i.bv, label %.sink.split.i.us261, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bw = icmp eq i8 %i.bu, -1
  br i1 %i.bw, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bx = load i8, ptr %i.az, align 1, !tbaa !39
  %.not.i.us = icmp eq i8 %i.bu, %i.bx
  %i.by = load i8, ptr %i.ba, align 1
  %.not54.i.us = icmp eq i8 %.fr294, %i.by
  %or.cond202.us = select i1 %.not.i.us, i1 %.not54.i.us, i1 false
  br i1 %or.cond202.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = xor i8 %i.bu, -1
  %i.ca = zext i8 %i.bz to i16
  %i.cb = mul nuw i16 %i.bb, %i.ca
  %i.cc = xor i16 %i.cb, -1
  %i.cd = lshr i16 %i.cc, 8                       ; 2 uses
  %i.ce = trunc nuw i16 %i.cd to i8
  store i8 %i.ce, ptr %i.t, align 2, !tbaa !19
  %i.cf = udiv i16 %narrow.i, %i.cd
  %i.cg = trunc i16 %i.cf to i8
  store i8 %i.cg, ptr %i.u, align 1, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ch = load i16, ptr %i.bs, align 1            ; 4 uses
  %i.ci = load i16, ptr %i.r, align 2
  %i.cj = icmp eq i16 %i.ch, %i.ci
  %i.ck = load i16, ptr %2, align 2
  %i.cl = icmp eq i16 %.sroa.019.0.insert.insert.us260, %i.ck
  %or.cond204.us = select i1 %i.cj, i1 %i.cl, i1 false
  br i1 %or.cond204.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i16 %.sroa.019.0.insert.insert.us260, ptr %2, align 2
  store i16 %i.ch, ptr %i.r, align 2
  %i.cm = load i8, ptr %i.u, align 1, !tbaa !22
  %.sroa.6.0.insert.ext44.i.us = zext i8 %i.cm to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i56.i.us = and i16 %i.ch, -256
  %narrow.i57.i.us = mul nuw i16 %.sroa.6.0.insert.ext44.i.us, %.sroa.019.0.insert.ext.us259
  %i.cn = and i16 %i.ch, 255
  %i.co = xor i16 %.sroa.6.0.insert.ext44.i.us, 255
  %narrow5.i58.i.us = mul nuw i16 %i.cn, %i.co
  %i.cp = add i16 %narrow5.i58.i.us, %narrow.i57.i.us
  %i.cq = lshr i16 %i.cp, 8
  %.sroa.03.0.insert.insert.i59.i.us = or disjoint i16 %i.cq, %.sroa.4.0.extract.shift.i56.i.us
  store i16 %.sroa.03.0.insert.insert.i59.i.us, ptr %i.s, align 2
  %i.cr = load i8, ptr %i.t, align 2, !tbaa !19
  store i8 %i.cr, ptr %i.bc, align 1, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cs = load i16, ptr %i.s, align 2
  br label %.sink.split.i.us261

bb.l:                                             ; preds = %bb.f
  %i.ct = load i16, ptr %i.bs, align 1            ; 2 uses
  %.sroa.4.0.extract.shift.i.i.us = and i16 %i.ct, -256
  %narrow.i.i.us = mul nuw i16 %.sroa.019.0.insert.ext.us259, %i.aj
  %i.cu = and i16 %i.ct, 255
  %narrow5.i.i.us = mul nuw i16 %i.cu, %i.bb
  %i.cv = add i16 %narrow5.i.i.us, %narrow.i.i.us
  %i.cw = lshr i16 %i.cv, 8
  %.sroa.03.0.insert.insert.i.i.us = or disjoint i16 %i.cw, %.sroa.4.0.extract.shift.i.i.us
  br label %.sink.split.i.us261

.sink.split.i.us261:                              ; preds = %bb.l, %bb.k, %bb.e
  %.sink.i.us = phi i16 [ %i.cs, %bb.k ], [ %.sroa.03.0.insert.insert.i.i.us, %bb.l ], [ %.sroa.019.0.insert.insert.us260, %bb.e ]
  store i16 %.sink.i.us, ptr %i.bs, align 1
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 2 uses
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, %i.bg
  %exitcond342.not = icmp eq i64 %indvars.iv.next337, %wide.trip.count351
  br i1 %exitcond342.not, label %._crit_edge249.split.us262, label %bb.e, !llvm.loop !128

._crit_edge249.split.us262:                       ; preds = %.sink.split.i.us261
  %i.cx = getelementptr inbounds nuw i8, ptr %.2253.us, i64 %i.bd ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.2141251.us, i64 %i.be ; 2 uses
  %i.cz = add nuw nsw i32 %.1148250.us, 1         ; 2 uses
  %exitcond343.not = icmp eq i32 %i.cz, %i.d
  br i1 %exitcond343.not, label %.loopexit226, label %.preheader224.us, !llvm.loop !129

.loopexit226:                                     ; preds = %._crit_edge249.split.us262, %._crit_edge249.split.us.us.us, %.loopexit229
  %.3142 = phi ptr [ %.1140, %.loopexit229 ], [ %i.bo, %._crit_edge249.split.us.us.us ], [ %i.cy, %._crit_edge249.split.us262 ] ; 3 uses
  %.3 = phi ptr [ %.1, %.loopexit229 ], [ %i.bn, %._crit_edge249.split.us.us.us ], [ %i.cx, %._crit_edge249.split.us262 ] ; 3 uses
  %i.da = icmp ne ptr %i.o, null
  %or.cond8 = and i1 %i.da, %i.ak
  %or.cond292 = select i1 %or.cond8, i1 %i.al, i1 false
  br i1 %or.cond292, label %.preheader221.lr.ph, label %.loopexit223

.preheader221.lr.ph:                              ; preds = %.loopexit226
  %i.db = icmp sgt i32 %i.b, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.df = zext i32 %i.i to i64                    ; 2 uses
  %i.dg = sext i32 %i.m to i64                    ; 2 uses
  %i.dh = sext i32 %i.q to i64                    ; 2 uses
  br i1 %i.db, label %.preheader221.us.preheader, label %.preheader221.preheader

.preheader221.preheader:                          ; preds = %.preheader221.lr.ph
  %i.di = zext nneg i32 %i.d to i64               ; 3 uses
  %i.dj = mul nuw nsw i64 %i.di, %i.df
  %scevgep354 = getelementptr i8, ptr %.3, i64 %i.dj
  %i.dk = mul nsw i64 %i.di, %i.dg
  %scevgep355 = getelementptr i8, ptr %.3142, i64 %i.dk
  %i.dl = mul nsw i64 %i.di, %i.dh
  %scevgep356 = getelementptr i8, ptr %i.o, i64 %i.dl
  br label %.loopexit223

.preheader221.us.preheader:                       ; preds = %.preheader221.lr.ph
  %i.dm = zext nneg i8 %1 to i64
  %wide.trip.count366 = zext nneg i32 %i.b to i64
  br label %.preheader221.us

.preheader221.us:                                 ; preds = %.preheader221.us.preheader, %._crit_edge271.us
  %.4275.us = phi ptr [ %i.fc, %._crit_edge271.us ], [ %.3, %.preheader221.us.preheader ] ; 2 uses
  %.4143274.us = phi ptr [ %i.fd, %._crit_edge271.us ], [ %.3142, %.preheader221.us.preheader ] ; 2 uses
  %.2149273.us = phi i32 [ %i.ff, %._crit_edge271.us ], [ 0, %.preheader221.us.preheader ]
  %.0162272.us = phi ptr [ %i.fe, %._crit_edge271.us ], [ %i.o, %.preheader221.us.preheader ] ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader221.us, %lv_color_16a_16a_mix.exit183.us
  %indvars.iv359 = phi i64 [ 0, %.preheader221.us ], [ %indvars.iv.next360, %lv_color_16a_16a_mix.exit183.us ] ; 2 uses
  %indvars.iv357 = phi i64 [ 0, %.preheader221.us ], [ %indvars.iv.next358, %lv_color_16a_16a_mix.exit183.us ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.4143274.us, i64 %indvars.iv359
  %i.do = call zeroext i8 @lv_color24_luminance(ptr noundef %i.dn) #6
  %i.dp = getelementptr inbounds nuw i8, ptr %.0162272.us, i64 %indvars.iv357
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !24  ; 4 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %.4275.us, i64 %indvars.iv357 ; 6 uses
  %.sroa.416.0.insert.ext.us = zext i8 %i.dq to i16 ; 5 uses
  %.sroa.416.0.insert.shift.us = shl nuw i16 %.sroa.416.0.insert.ext.us, 8
  %.sroa.015.0.insert.ext.us = zext i8 %i.do to i16 ; 3 uses
  %.sroa.015.0.insert.insert.us = or disjoint i16 %.sroa.416.0.insert.shift.us, %.sroa.015.0.insert.ext.us ; 4 uses
  %i.ds = icmp ugt i8 %i.dq, -4
  br i1 %i.ds, label %.sink.split.i176.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !35  ; 4 uses
  %i.dv = icmp ult i8 %i.du, 3
  br i1 %i.dv, label %.sink.split.i176.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dw = icmp ult i8 %i.dq, 3
  br i1 %i.dw, label %lv_color_16a_16a_mix.exit183.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dx = icmp eq i8 %i.du, -1
  br i1 %i.dx, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dy = load i8, ptr %i.dc, align 1, !tbaa !39
  %.not.i169.us = icmp eq i8 %i.du, %i.dy
  %i.dz = load i8, ptr %i.dd, align 1
  %.not54.i178.us = icmp eq i8 %i.dq, %i.dz
  %or.cond207.us = select i1 %.not.i169.us, i1 %.not54.i178.us, i1 false
  br i1 %or.cond207.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ea = xor i16 %.sroa.416.0.insert.ext.us, 255
  %i.eb = xor i8 %i.du, -1
  %i.ec = zext i8 %i.eb to i16
  %i.ed = mul nuw i16 %i.ea, %i.ec
  %i.ee = xor i16 %i.ed, -1
  %i.ef = lshr i16 %i.ee, 8                       ; 2 uses
  %i.eg = trunc nuw i16 %i.ef to i8
  store i8 %i.eg, ptr %i.t, align 2, !tbaa !19
  %narrow.i170.us = mul nuw i16 %.sroa.416.0.insert.ext.us, 255
  %i.eh = udiv i16 %narrow.i170.us, %i.ef
  %i.ei = trunc i16 %i.eh to i8
  store i8 %i.ei, ptr %i.u, align 1, !tbaa !22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ej = load i16, ptr %i.dr, align 1
  %i.ek = load i16, ptr %i.r, align 2
  %i.el = icmp eq i16 %i.ej, %i.ek
  %i.em = load i16, ptr %2, align 2
  %i.en = icmp eq i16 %.sroa.015.0.insert.insert.us, %i.em
  %or.cond209.us = select i1 %i.el, i1 %i.en, i1 false
  br i1 %or.cond209.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i16 %.sroa.015.0.insert.insert.us, ptr %2, align 2
  %i.eo = load i16, ptr %i.dr, align 1
  store i16 %i.eo, ptr %i.r, align 2
  %i.ep = load i8, ptr %i.u, align 1, !tbaa !22
  %.sroa.6.0.insert.ext44.i171.us = zext i8 %i.ep to i16 ; 2 uses
  %i.eq = load i16, ptr %i.dr, align 1            ; 2 uses
  %.sroa.4.0.extract.shift.i56.i172.us = and i16 %i.eq, -256
  %narrow.i57.i173.us = mul nuw i16 %.sroa.6.0.insert.ext44.i171.us, %.sroa.015.0.insert.ext.us
  %i.er = and i16 %i.eq, 255
  %i.es = xor i16 %.sroa.6.0.insert.ext44.i171.us, 255
  %narrow5.i58.i174.us = mul nuw i16 %i.er, %i.es
  %i.et = add i16 %narrow5.i58.i174.us, %narrow.i57.i173.us
  %i.eu = lshr i16 %i.et, 8
  %.sroa.03.0.insert.insert.i59.i175.us = or disjoint i16 %i.eu, %.sroa.4.0.extract.shift.i56.i172.us
  store i16 %.sroa.03.0.insert.insert.i59.i175.us, ptr %i.s, align 2
  %i.ev = load i8, ptr %i.t, align 2, !tbaa !19
  store i8 %i.ev, ptr %i.de, align 1, !tbaa !40
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ew = load i16, ptr %i.s, align 2
  br label %.sink.split.i176.us

bb.v:                                             ; preds = %bb.p
  %i.ex = load i16, ptr %i.dr, align 1            ; 2 uses
  %.sroa.4.0.extract.shift.i.i179.us = and i16 %i.ex, -256
  %narrow.i.i180.us = mul nuw i16 %.sroa.416.0.insert.ext.us, %.sroa.015.0.insert.ext.us
  %i.ey = and i16 %i.ex, 255
  %i.ez = xor i16 %.sroa.416.0.insert.ext.us, 255
  %narrow5.i.i181.us = mul nuw i16 %i.ey, %i.ez
  %i.fa = add i16 %narrow5.i.i181.us, %narrow.i.i180.us
  %i.fb = lshr i16 %i.fa, 8
  %.sroa.03.0.insert.insert.i.i182.us = or disjoint i16 %i.fb, %.sroa.4.0.extract.shift.i.i179.us
  br label %.sink.split.i176.us

.sink.split.i176.us:                              ; preds = %bb.v, %bb.u, %bb.n, %bb.m
  %.sink.i177.us = phi i16 [ %i.ew, %bb.u ], [ %.sroa.03.0.insert.insert.i.i182.us, %bb.v ], [ %.sroa.015.0.insert.insert.us, %bb.n ], [ %.sroa.015.0.insert.insert.us, %bb.m ]
  store i16 %.sink.i177.us, ptr %i.dr, align 1
  br label %lv_color_16a_16a_mix.exit183.us

lv_color_16a_16a_mix.exit183.us:                  ; preds = %.sink.split.i176.us, %bb.o
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1 ; 2 uses
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, %i.dm
  %exitcond367.not = icmp eq i64 %indvars.iv.next358, %wide.trip.count366
  br i1 %exitcond367.not, label %._crit_edge271.us, label %bb.m, !llvm.loop !130

._crit_edge271.us:                                ; preds = %lv_color_16a_16a_mix.exit183.us
  %i.fc = getelementptr inbounds nuw i8, ptr %.4275.us, i64 %i.df ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %.4143274.us, i64 %i.dg ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %.0162272.us, i64 %i.dh ; 2 uses
  %i.ff = add nuw nsw i32 %.2149273.us, 1         ; 2 uses
  %exitcond368.not = icmp eq i32 %i.ff, %i.d
  br i1 %exitcond368.not, label %.loopexit223, label %.preheader221.us, !llvm.loop !131

.loopexit223:                                     ; preds = %._crit_edge271.us, %.preheader221.preheader, %.loopexit226
  %.1163 = phi ptr [ %i.o, %.loopexit226 ], [ %scevgep356, %.preheader221.preheader ], [ %i.fe, %._crit_edge271.us ] ; 2 uses
  %.5144 = phi ptr [ %.3142, %.loopexit226 ], [ %scevgep355, %.preheader221.preheader ], [ %i.fd, %._crit_edge271.us ]
  %.5 = phi ptr [ %.3, %.loopexit226 ], [ %scevgep354, %.preheader221.preheader ], [ %i.fc, %._crit_edge271.us ]
  %i.fg = icmp ne ptr %.1163, null
  %or.cond11 = and i1 %i.fg, %i.ax
  %or.cond293 = select i1 %or.cond11, i1 %i.al, i1 false
  br i1 %or.cond293, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.loopexit223
  %i.fh = icmp sgt i32 %i.b, 0
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.fl = zext i32 %i.i to i64
  %i.fm = sext i32 %i.m to i64
  %i.fn = sext i32 %i.q to i64
  br i1 %i.fh, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.fo = zext nneg i8 %1 to i64
  %wide.trip.count378 = zext nneg i32 %i.b to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge285
  %.6289 = phi ptr [ %i.hh, %._crit_edge285 ], [ %.5, %.preheader.preheader ] ; 2 uses
  %.6145288 = phi ptr [ %i.hi, %._crit_edge285 ], [ %.5144, %.preheader.preheader ] ; 2 uses
  %.3150287 = phi i32 [ %i.hk, %._crit_edge285 ], [ 0, %.preheader.preheader ]
  %.2164286 = phi ptr [ %i.hj, %._crit_edge285 ], [ %.1163, %.preheader.preheader ] ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.preheader, %lv_color_16a_16a_mix.exit198
  %indvars.iv371 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next372, %lv_color_16a_16a_mix.exit198 ] ; 2 uses
  %indvars.iv369 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next370, %lv_color_16a_16a_mix.exit198 ] ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.6145288, i64 %indvars.iv371
  %i.fq = call zeroext i8 @lv_color24_luminance(ptr noundef %i.fp) #6
  %i.fr = getelementptr inbounds nuw i8, ptr %.2164286, i64 %indvars.iv369
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !24
  %i.ft = zext i8 %i.fs to i16
  %i.fu = mul nuw i16 %i.ft, %i.aj                ; 4 uses
  %.sroa.413.0.insert.shift = and i16 %i.fu, -256
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %.6289, i64 %indvars.iv369 ; 6 uses
  %.sroa.012.0.insert.ext = zext i8 %i.fq to i16  ; 3 uses
  %.sroa.012.0.insert.insert = or disjoint i16 %.sroa.413.0.insert.shift, %.sroa.012.0.insert.ext ; 4 uses
  %.sroa.6.0.extract.shift.i = lshr i16 %i.fu, 8  ; 5 uses
  %i.fw = icmp ugt i16 %i.fu, -769
  br i1 %i.fw, label %.sink.split.i191, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !35  ; 4 uses
  %i.fz = icmp ult i8 %i.fy, 3
  br i1 %i.fz, label %.sink.split.i191, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ga = icmp ult i16 %i.fu, 768
  br i1 %i.ga, label %lv_color_16a_16a_mix.exit198, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gb = icmp eq i8 %i.fy, -1
  br i1 %i.gb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gc = load i16, ptr %i.fv, align 1            ; 2 uses
  %.sroa.4.0.extract.shift.i.i194 = and i16 %i.gc, -256
  %narrow.i.i195 = mul nuw i16 %.sroa.6.0.extract.shift.i, %.sroa.012.0.insert.ext
  %i.gd = and i16 %i.gc, 255
  %i.ge = xor i16 %.sroa.6.0.extract.shift.i, 255
  %narrow5.i.i196 = mul nuw i16 %i.gd, %i.ge
  %i.gf = add i16 %narrow5.i.i196, %narrow.i.i195
  %i.gg = lshr i16 %i.gf, 8
  %.sroa.03.0.insert.insert.i.i197 = or disjoint i16 %i.gg, %.sroa.4.0.extract.shift.i.i194
  br label %.sink.split.i191

bb.ab:                                            ; preds = %bb.z
  %i.gh = load i8, ptr %i.fi, align 1, !tbaa !39
  %.not.i184 = icmp eq i8 %i.fy, %i.gh
  %i.gi = load i8, ptr %i.fj, align 1
  %i.gj = zext i8 %i.gi to i16
  %.not54.i193 = icmp eq i16 %.sroa.6.0.extract.shift.i, %i.gj
  %or.cond212 = select i1 %.not.i184, i1 %.not54.i193, i1 false
  br i1 %or.cond212, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gk = xor i16 %.sroa.6.0.extract.shift.i, 255
  %i.gl = xor i8 %i.fy, -1
  %i.gm = zext i8 %i.gl to i16
  %i.gn = mul nuw i16 %i.gk, %i.gm
  %i.go = xor i16 %i.gn, -1
  %i.gp = lshr i16 %i.go, 8                       ; 2 uses
  %i.gq = trunc nuw i16 %i.gp to i8
  store i8 %i.gq, ptr %i.t, align 2, !tbaa !19
  %narrow.i185 = mul nuw i16 %.sroa.6.0.extract.shift.i, 255
  %i.gr = udiv i16 %narrow.i185, %i.gp
  %i.gs = trunc i16 %i.gr to i8
  store i8 %i.gs, ptr %i.u, align 1, !tbaa !22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.gt = load i16, ptr %i.fv, align 1
  %i.gu = load i16, ptr %i.r, align 2
  %i.gv = icmp eq i16 %i.gt, %i.gu
  %i.gw = load i16, ptr %2, align 2
  %i.gx = icmp eq i16 %.sroa.012.0.insert.insert, %i.gw
  %or.cond214 = select i1 %i.gv, i1 %i.gx, i1 false
  br i1 %or.cond214, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i16 %.sroa.012.0.insert.insert, ptr %2, align 2
  %i.gy = load i16, ptr %i.fv, align 1
  store i16 %i.gy, ptr %i.r, align 2
  %i.gz = load i8, ptr %i.u, align 1, !tbaa !22
  %.sroa.6.0.insert.ext44.i186 = zext i8 %i.gz to i16 ; 2 uses
  %i.ha = load i16, ptr %i.fv, align 1            ; 2 uses
  %.sroa.4.0.extract.shift.i56.i187 = and i16 %i.ha, -256
  %narrow.i57.i188 = mul nuw i16 %.sroa.6.0.insert.ext44.i186, %.sroa.012.0.insert.ext
  %i.hb = and i16 %i.ha, 255
  %i.hc = xor i16 %.sroa.6.0.insert.ext44.i186, 255
  %narrow5.i58.i189 = mul nuw i16 %i.hb, %i.hc
  %i.hd = add i16 %narrow5.i58.i189, %narrow.i57.i188
  %i.he = lshr i16 %i.hd, 8
  %.sroa.03.0.insert.insert.i59.i190 = or disjoint i16 %i.he, %.sroa.4.0.extract.shift.i56.i187
  store i16 %.sroa.03.0.insert.insert.i59.i190, ptr %i.s, align 2
  %i.hf = load i8, ptr %i.t, align 2, !tbaa !19
  store i8 %i.hf, ptr %i.fk, align 1, !tbaa !40
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.hg = load i16, ptr %i.s, align 2
  br label %.sink.split.i191

.sink.split.i191:                                 ; preds = %bb.af, %bb.aa, %bb.x, %bb.w
  %.sink.i192 = phi i16 [ %i.hg, %bb.af ], [ %.sroa.03.0.insert.insert.i.i197, %bb.aa ], [ %.sroa.012.0.insert.insert, %bb.x ], [ %.sroa.012.0.insert.insert, %bb.w ]
  store i16 %.sink.i192, ptr %i.fv, align 1
  br label %lv_color_16a_16a_mix.exit198

lv_color_16a_16a_mix.exit198:                     ; preds = %bb.y, %.sink.split.i191
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, %i.fo
  %exitcond379.not = icmp eq i64 %indvars.iv.next370, %wide.trip.count378
  br i1 %exitcond379.not, label %._crit_edge285, label %bb.w, !llvm.loop !132

._crit_edge285:                                   ; preds = %lv_color_16a_16a_mix.exit198
  %i.hh = getelementptr inbounds nuw i8, ptr %.6289, i64 %i.fl
  %i.hi = getelementptr inbounds i8, ptr %.6145288, i64 %i.fm
  %i.hj = getelementptr inbounds i8, ptr %.2164286, i64 %i.fn
  %i.hk = add nuw nsw i32 %.3150287, 1            ; 2 uses
  %exitcond380.not = icmp eq i32 %i.hk, %i.d
  br i1 %exitcond380.not, label %.loopexit, label %.preheader, !llvm.loop !133

.preheader230:                                    ; preds = %.preheader230.preheader, %._crit_edge
  %.7238 = phi ptr [ %i.jt, %._crit_edge ], [ %i.g, %.preheader230.preheader ] ; 2 uses
  %.7146237 = phi ptr [ %i.ju, %._crit_edge ], [ %i.k, %.preheader230.preheader ] ; 2 uses
  %.4151236 = phi i32 [ %i.jv, %._crit_edge ], [ 0, %.preheader230.preheader ]
  %.3165235 = phi ptr [ %.4166, %._crit_edge ], [ %i.o, %.preheader230.preheader ] ; 3 uses
  %i.hl = icmp eq ptr %.3165235, null             ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader230, %blend_non_normal_pixel.exit
  %indvars.iv315 = phi i64 [ 0, %.preheader230 ], [ %indvars.iv.next316, %blend_non_normal_pixel.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader230 ], [ %indvars.iv.next, %blend_non_normal_pixel.exit ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.7146237, i64 %indvars.iv
  %i.hn = call zeroext i8 @lv_color24_luminance(ptr noundef %i.hm) #6
  br i1 %i.hl, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ho = getelementptr inbounds nuw i8, ptr %.3165235, i64 %indvars.iv315
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !24
  %i.hq = zext i8 %i.hp to i16
  %i.hr = mul nuw i16 %i.hq, %i.aa
  %i.hs = lshr i16 %i.hr, 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.sroa.4.0 = phi i16 [ %i.hs, %bb.ah ], [ %i.aa, %bb.ag ] ; 8 uses
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %.7238, i64 %indvars.iv315 ; 8 uses
  %i.hu = load i32, ptr %i.v, align 4, !tbaa !57
  %.sroa.4.0.insert.shift = shl nuw i16 %.sroa.4.0, 8
  %.sroa.0.0.insert.ext = zext i8 %i.hn to i16    ; 4 uses
  switch i32 %i.hu, label %blend_non_normal_pixel.exit [
    i32 1, label %bb.aj
    i32 2, label %bb.ak
    i32 3, label %bb.al
    i32 4, label %bb.am
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.hv = load i8, ptr %i.ht, align 1, !tbaa !58
  %i.hw = zext i8 %i.hv to i16
  %i.hx = add nuw nsw i16 %i.hw, %.sroa.0.0.insert.ext
  %spec.select24.i = call i16 @llvm.umin.i16(i16 %i.hx, i16 255)
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.hy = load i8, ptr %i.ht, align 1, !tbaa !58
  %i.hz = zext i8 %i.hy to i16
  %i.ia = sub nsw i16 %i.hz, %.sroa.0.0.insert.ext
  %spec.select2223.i = call i16 @llvm.smax.i16(i16 %i.ia, i16 0)
  br label %bb.an

bb.al:                                            ; preds = %bb.ai
  %i.ib = load i8, ptr %i.ht, align 1, !tbaa !58
  %i.ic = zext i8 %i.ib to i16
  %i.id = mul nuw i16 %i.ic, %.sroa.0.0.insert.ext
  %i.ie = lshr i16 %i.id, 8
  br label %bb.an

bb.am:                                            ; preds = %bb.ai
  %i.if = load i8, ptr %i.ht, align 1, !tbaa !58
  %i.ig = zext i8 %i.if to i16
  %i.ih = sub nsw i16 %i.ig, %.sroa.0.0.insert.ext
  %i.ii = call i16 @llvm.abs.i16(i16 %i.ih, i1 true)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %.sroa.0.0.i = phi i16 [ %spec.select24.i, %bb.aj ], [ %spec.select2223.i, %bb.ak ], [ %i.ie, %bb.al ], [ %i.ii, %bb.am ] ; 3 uses
  %.sroa.0.0.insert.insert.i = add nuw nsw i16 %.sroa.0.0.i, %.sroa.4.0.insert.shift ; 4 uses
  %i.ij = icmp samesign ugt i16 %.sroa.4.0, 252
  br i1 %i.ij, label %.sink.split.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ht, i64 1
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !35  ; 4 uses
  %i.im = icmp ult i8 %i.il, 3
  br i1 %i.im, label %.sink.split.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.in = icmp samesign ult i16 %.sroa.4.0, 3
  br i1 %i.in, label %blend_non_normal_pixel.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.io = icmp eq i8 %i.il, -1
  br i1 %i.io, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ip = load i16, ptr %i.ht, align 1            ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i = and i16 %i.ip, -256
  %narrow.i.i.i = mul nuw i16 %.sroa.0.0.i, %.sroa.4.0
  %i.iq = and i16 %i.ip, 255
  %i.ir = xor i16 %.sroa.4.0, 255
  %narrow5.i.i.i = mul nuw i16 %i.iq, %i.ir
  %i.is = add i16 %narrow5.i.i.i, %narrow.i.i.i
  %i.it = lshr i16 %i.is, 8
  %.sroa.03.0.insert.insert.i.i.i = or disjoint i16 %i.it, %.sroa.4.0.extract.shift.i.i.i
  br label %.sink.split.i.i

bb.as:                                            ; preds = %bb.aq
  %i.iu = load i8, ptr %i.ab, align 1, !tbaa !39
  %.not.i.i = icmp eq i8 %i.il, %i.iu
  %i.iv = load i8, ptr %i.ac, align 1
  %i.iw = zext i8 %i.iv to i16
  %.not54.i.i = icmp eq i16 %.sroa.4.0, %i.iw
  %or.cond217 = select i1 %.not.i.i, i1 %.not54.i.i, i1 false
  br i1 %or.cond217, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ix = xor i16 %.sroa.4.0, 255
  %i.iy = xor i8 %i.il, -1
  %i.iz = zext i8 %i.iy to i16
  %i.ja = mul nuw i16 %i.ix, %i.iz
  %i.jb = xor i16 %i.ja, -1
  %i.jc = lshr i16 %i.jb, 8                       ; 2 uses
  %i.jd = trunc nuw i16 %i.jc to i8
  store i8 %i.jd, ptr %i.t, align 2, !tbaa !19
  %narrow.i.i199 = mul nuw i16 %.sroa.4.0, 255
  %i.je = udiv i16 %narrow.i.i199, %i.jc
  %i.jf = trunc i16 %i.je to i8
  store i8 %i.jf, ptr %i.u, align 1, !tbaa !22
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.jg = load i16, ptr %i.ht, align 1            ; 4 uses
  %i.jh = load i16, ptr %i.r, align 2
  %i.ji = icmp eq i16 %i.jg, %i.jh
  %i.jj = load i16, ptr %2, align 2
  %i.jk = icmp eq i16 %.sroa.0.0.insert.insert.i, %i.jj
  %or.cond219 = select i1 %i.ji, i1 %i.jk, i1 false
  br i1 %or.cond219, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i16 %.sroa.0.0.insert.insert.i, ptr %2, align 2
  store i16 %i.jg, ptr %i.r, align 2
  %i.jl = load i8, ptr %i.u, align 1, !tbaa !22
  %.sroa.6.0.insert.ext44.i.i = zext i8 %i.jl to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i56.i.i = and i16 %i.jg, -256
  %narrow.i57.i.i = mul nuw i16 %.sroa.0.0.i, %.sroa.6.0.insert.ext44.i.i
  %i.jm = and i16 %i.jg, 255
  %i.jn = xor i16 %.sroa.6.0.insert.ext44.i.i, 255
  %narrow5.i58.i.i = mul nuw i16 %i.jm, %i.jn
  %i.jo = add i16 %narrow5.i58.i.i, %narrow.i57.i.i
  %i.jp = lshr i16 %i.jo, 8
  %.sroa.03.0.insert.insert.i59.i.i = or disjoint i16 %i.jp, %.sroa.4.0.extract.shift.i56.i.i
  store i16 %.sroa.03.0.insert.insert.i59.i.i, ptr %i.s, align 2
  %i.jq = load i8, ptr %i.t, align 2, !tbaa !19
  store i8 %i.jq, ptr %i.ad, align 1, !tbaa !40
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.jr = load i16, ptr %i.s, align 2
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.aw, %bb.ar, %bb.ao, %bb.an
  %.sink.i.i = phi i16 [ %i.jr, %bb.aw ], [ %.sroa.03.0.insert.insert.i.i.i, %bb.ar ], [ %.sroa.0.0.insert.insert.i, %bb.ao ], [ %.sroa.0.0.insert.insert.i, %bb.an ]
  store i16 %.sink.i.i, ptr %i.ht, align 1
  br label %blend_non_normal_pixel.exit

blend_non_normal_pixel.exit:                      ; preds = %bb.ai, %bb.ap, %.sink.split.i.i
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ah
  %exitcond.not = icmp eq i64 %indvars.iv.next316, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ag, !llvm.loop !134

._crit_edge:                                      ; preds = %blend_non_normal_pixel.exit
  %i.js = getelementptr inbounds i8, ptr %.3165235, i64 %i.ae
  %.4166 = select i1 %i.hl, ptr null, ptr %i.js
  %i.jt = getelementptr inbounds nuw i8, ptr %.7238, i64 %i.af
  %i.ju = getelementptr inbounds i8, ptr %.7146237, i64 %i.ag
  %i.jv = add nuw nsw i32 %.4151236, 1            ; 2 uses
  %exitcond320.not = icmp eq i32 %i.jv, %i.d
  br i1 %exitcond320.not, label %.loopexit, label %.preheader230, !llvm.loop !135

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge285, %.preheader227.lr.ph, %.preheader224.lr.ph, %.preheader231, %.preheader230.lr.ph, %.preheader.lr.ph, %.loopexit223
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret void
}

declare zeroext i8 @lv_color16_luminance(i16) local_unnamed_addr #2

declare zeroext i8 @lv_color24_luminance(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @lv_color32_luminance(i32) local_unnamed_addr #2

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 8}
!9 = !{!"_lv_draw_sw_blend_fill_dsc_t", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !11, i64 24, !5, i64 32, !12, i64 36, !6, i64 39, !13, i64 40}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2}
!13 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!14 = !{!9, !5, i64 12}
!15 = !{!9, !6, i64 39}
!16 = !{!9, !11, i64 24}
!17 = !{!9, !5, i64 32}
!18 = !{!9, !5, i64 16}
!19 = !{!20, !6, i64 6}
!20 = !{!"", !21, i64 0, !21, i64 2, !21, i64 4, !6, i64 6, !6, i64 7}
!21 = !{!"", !6, i64 0, !6, i64 1}
!22 = !{!20, !6, i64 7}
!23 = !{!9, !10, i64 0}
!24 = !{!6, !6, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26, !28, !29}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = distinct !{!30, !26}
!31 = distinct !{!31, !26, !29, !28}
!32 = !{!"branch_weights", i32 4, i32 12}
!33 = distinct !{!33, !26, !29, !28}
!34 = distinct !{!34, !26, !28, !29}
!35 = !{!21, !6, i64 1}
!36 = distinct !{!36, !26, !29, !28}
!37 = distinct !{!37, !26, !28, !29}
!38 = distinct !{!38, !26}
!39 = !{!20, !6, i64 3}
!40 = !{!20, !6, i64 5}
!41 = distinct !{!41, !26}
!42 = distinct !{!42, !26}
!43 = distinct !{!43, !26}
!44 = distinct !{!44, !26}
!45 = distinct !{!45, !26}
!46 = !{!47, !5, i64 52}
!47 = !{!"_lv_draw_sw_blend_image_dsc_t", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !11, i64 24, !5, i64 32, !10, i64 40, !5, i64 48, !5, i64 52, !6, i64 56, !5, i64 60, !13, i64 64, !13, i64 80}
!48 = !{!47, !5, i64 8}
!49 = !{!47, !5, i64 12}
!50 = !{!47, !6, i64 56}
!51 = !{!47, !10, i64 0}
!52 = !{!47, !5, i64 16}
!53 = !{!47, !10, i64 40}
!54 = !{!47, !5, i64 48}
!55 = !{!47, !11, i64 24}
!56 = !{!47, !5, i64 32}
!57 = !{!47, !5, i64 60}
!58 = !{!21, !6, i64 0}
!59 = distinct !{!59, !26}
!60 = distinct !{!60, !26}
!61 = distinct !{!61, !26}
!62 = distinct !{!62, !26}
!63 = distinct !{!63, !26}
!64 = distinct !{!64, !26}
!65 = distinct !{!65, !26}
!66 = distinct !{!66, !26}
!67 = distinct !{!67, !26}
!68 = distinct !{!68, !26}
!69 = !{!70, !6, i64 3}
!70 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3}
!71 = distinct !{!71, !26}
!72 = distinct !{!72, !26}
!73 = distinct !{!73, !26}
!74 = distinct !{!74, !26}
!75 = distinct !{!75, !26}
!76 = distinct !{!76, !26}
!77 = distinct !{!77, !26}
!78 = distinct !{!78, !26}
!79 = distinct !{!79, !26}
!80 = distinct !{!80, !26}
!81 = !{!82}
!82 = distinct !{!82, !83}
!83 = distinct !{!83, !"LVerDomain"}
!84 = !{!85}
!85 = distinct !{!85, !83}
!86 = distinct !{!86, !26, !29, !28}
!87 = distinct !{!87, !26, !29, !28}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = distinct !{!90, !26, !29}
!91 = distinct !{!91, !26}
!92 = distinct !{!92, !26}
!93 = distinct !{!93, !26}
!94 = distinct !{!94, !26}
!95 = distinct !{!95, !26}
!96 = distinct !{!96, !26}
!97 = distinct !{!97, !26}
!98 = distinct !{!98, !26}
!99 = distinct !{!99, !26}
!100 = distinct !{!100, !26}
!101 = distinct !{!101, !26}
!102 = distinct !{!102, !26}
!103 = distinct !{!103, !26}
!104 = distinct !{!104, !26}
!105 = distinct !{!105, !26}
!106 = distinct !{!106, !26}
!107 = distinct !{!107, !26}
!108 = distinct !{!108, !26}
!109 = distinct !{!109, !26}
!110 = !{!111}
!111 = distinct !{!111, !112}
!112 = distinct !{!112, !"LVerDomain"}
!113 = !{!114}
!114 = distinct !{!114, !112}
!115 = distinct !{!115, !26, !29, !28}
!116 = distinct !{!116, !26, !29}
!117 = distinct !{!117, !26}
!118 = distinct !{!118, !26}
!119 = distinct !{!119, !26}
!120 = distinct !{!120, !26}
!121 = distinct !{!121, !26}
!122 = distinct !{!122, !26}
!123 = distinct !{!123, !26}
!124 = distinct !{!124, !26}
!125 = distinct !{!125, !26}
!126 = distinct !{!126, !26}
!127 = distinct !{!127, !26}
!128 = distinct !{!128, !26}
!129 = distinct !{!129, !26}
!130 = distinct !{!130, !26}
!131 = distinct !{!131, !26}
!132 = distinct !{!132, !26}
!133 = distinct !{!133, !26}
!134 = distinct !{!134, !26}
!135 = distinct !{!135, !26}
end_hunk_0
