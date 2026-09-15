Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/stb_image?download=true
inline.NumInlined: 822
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 80
loop-unroll.NumUnrolled: 110
begin_hunk_0_@_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii:bb.a

bb.an:                                            ; preds = %bb.am
  %i.aoc = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 2
  %i.aod = load i8, ptr %.2.lcssa, align 1, !tbaa !34
  %i.aoe = and i8 %i.aod, 32
  %.not590 = icmp eq i8 %i.aoe, 0
  %i.aof = select i1 %.not590, i8 0, i8 %i.aju
  store i8 %i.aof, ptr %i.aoc, align 1, !tbaa !34
  %.not692 = icmp eq i32 %.16.lcssa, 3
  br i1 %.not692, label %.thread672, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.aog = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 3
  %i.aoh = load i8, ptr %.2.lcssa, align 1, !tbaa !34
  %i.aoi = and i8 %i.aoh, 16
  %.not591 = icmp eq i8 %i.aoi, 0
  %i.aoj = select i1 %.not591, i8 0, i8 %i.aju
  store i8 %i.aoj, ptr %i.aog, align 1, !tbaa !34
  %i.aok = icmp samesign ugt i32 %.16.lcssa, 4
  br i1 %i.aok, label %bb.ap, label %.thread672

bb.ap:                                            ; preds = %bb.ao
  %i.aol = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 4
  %i.aom = load i8, ptr %.2.lcssa, align 1, !tbaa !34
  %i.aon = and i8 %i.aom, 8
  %.not592 = icmp eq i8 %i.aon, 0
  %i.aoo = select i1 %.not592, i8 0, i8 %i.aju
  store i8 %i.aoo, ptr %i.aol, align 1, !tbaa !34
  %.not693 = icmp eq i32 %.16.lcssa, 5
  br i1 %.not693, label %.thread672, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.aop = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 5
  %i.aoq = load i8, ptr %.2.lcssa, align 1, !tbaa !34
  %i.aor = and i8 %i.aoq, 4
  %.not593 = icmp eq i8 %i.aor, 0
  %i.aos = select i1 %.not593, i8 0, i8 %i.aju
  store i8 %i.aos, ptr %i.aop, align 1, !tbaa !34
  %i.aot = icmp eq i32 %.16.lcssa, 7
  br i1 %i.aot, label %bb.ar, label %.thread672

bb.ar:                                            ; preds = %bb.aq
  %i.aou = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 6
  %i.aov = load i8, ptr %.2.lcssa, align 1, !tbaa !34
  %i.aow = and i8 %i.aov, 2
  %.not594 = icmp eq i8 %i.aow, 0
  %i.aox = select i1 %.not594, i8 0, i8 %i.aju
  store i8 %i.aox, ptr %i.aou, align 1, !tbaa !34
  br label %.thread672

.thread672:                                       ; preds = %._crit_edge838, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %._crit_edge846, %bb.ai, %bb.ag, %bb.ak, %bb.aj, %bb.aq, %bb.ar, %._crit_edge854, %bb.ah
  br i1 %.not602, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %.thread672
  %i.aoy = load ptr, ptr %i.u, align 8, !tbaa !111
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 %i.ajp ; 16 uses
  br i1 %i.aiz, label %.preheader, label %.preheader698

.preheader698:                                    ; preds = %bb.as
  br i1 %i.aja, label %.lr.ph860.preheader, label %.loopexit

.lr.ph860.preheader:                              ; preds = %.preheader698
  br i1 %lcmp.mod1660.not.not, label %.lr.ph860.prol, label %.lr.ph860.prol.loopexit

.lr.ph860.prol:                                   ; preds = %.lr.ph860.preheader
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %i.aji ; 4 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 3
  store i8 -1, ptr %i.apb, align 1, !tbaa !34
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %i.ajj ; 3 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 2
  %i.ape = load i8, ptr %i.apd, align 1, !tbaa !34
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apa, i64 2
  store i8 %i.ape, ptr %i.apf, align 1, !tbaa !34
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apc, i64 1
  %i.aph = load i8, ptr %i.apg, align 1, !tbaa !34
  %i.api = getelementptr inbounds nuw i8, ptr %i.apa, i64 1
  store i8 %i.aph, ptr %i.api, align 1, !tbaa !34
  %i.apj = load i8, ptr %i.apc, align 1, !tbaa !34
  store i8 %i.apj, ptr %i.apa, align 1, !tbaa !34
  br label %.lr.ph860.prol.loopexit

.lr.ph860.prol.loopexit:                          ; preds = %.lr.ph860.prol, %.lr.ph860.preheader
  %indvars.iv971.unr = phi i64 [ %i.ajb, %.lr.ph860.preheader ], [ %indvars.iv.next972.prol, %.lr.ph860.prol ]
  br i1 %i.ajk, label %.loopexit, label %.lr.ph860

.preheader:                                       ; preds = %bb.as
  br i1 %i.aja, label %.lr.ph863.preheader, label %.loopexit

.lr.ph863.preheader:                              ; preds = %.preheader
  br i1 %lcmp.mod1663.not, label %.lr.ph863.prol.loopexit, label %.lr.ph863.prol

.lr.ph863.prol:                                   ; preds = %.lr.ph863.preheader, %.lr.ph863.prol
  %indvars.iv974.prol = phi i64 [ %indvars.iv.next975.prol, %.lr.ph863.prol ], [ %i.ajb, %.lr.ph863.preheader ] ; 3 uses
  %prol.iter1664 = phi i64 [ %prol.iter1664.next, %.lr.ph863.prol ], [ 0, %.lr.ph863.preheader ]
  %i.apk = shl nuw nsw i64 %indvars.iv974.prol, 1
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %i.apk ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 1
  store i8 -1, ptr %i.apm, align 1, !tbaa !34
  %i.apn = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %indvars.iv974.prol
  %i.apo = load i8, ptr %i.apn, align 1, !tbaa !34
  store i8 %i.apo, ptr %i.apl, align 1, !tbaa !34
  %indvars.iv.next975.prol = add nsw i64 %indvars.iv974.prol, -1 ; 2 uses
  %prol.iter1664.next = add i64 %prol.iter1664, 1 ; 2 uses
  %prol.iter1664.cmp.not = icmp eq i64 %prol.iter1664.next, %xtraiter1662
  br i1 %prol.iter1664.cmp.not, label %.lr.ph863.prol.loopexit, label %.lr.ph863.prol, !llvm.loop !638

.lr.ph863.prol.loopexit:                          ; preds = %.lr.ph863.prol, %.lr.ph863.preheader
  %indvars.iv974.unr = phi i64 [ %i.ajb, %.lr.ph863.preheader ], [ %indvars.iv.next975.prol, %.lr.ph863.prol ]
  br i1 %i.ajl, label %.loopexit, label %.lr.ph863

.lr.ph863:                                        ; preds = %.lr.ph863.prol.loopexit, %.lr.ph863
  %indvars.iv974 = phi i64 [ %indvars.iv.next975.3, %.lr.ph863 ], [ %indvars.iv974.unr, %.lr.ph863.prol.loopexit ] ; 6 uses
  %i.app = shl nuw nsw i64 %indvars.iv974, 1
  %i.apq = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %i.app ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 1
  store i8 -1, ptr %i.apr, align 1, !tbaa !34
  %i.aps = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %indvars.iv974
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !34
  store i8 %i.apt, ptr %i.apq, align 1, !tbaa !34
  %indvars.iv.next975 = add nsw i64 %indvars.iv974, -1 ; 2 uses
  %i.apu = shl nuw nsw i64 %indvars.iv.next975, 1
  %i.apv = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %i.apu ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 1
  store i8 -1, ptr %i.apw, align 1, !tbaa !34
  %i.apx = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %indvars.iv.next975
  %i.apy = load i8, ptr %i.apx, align 1, !tbaa !34
  store i8 %i.apy, ptr %i.apv, align 1, !tbaa !34
  %indvars.iv.next975.1 = add nsw i64 %indvars.iv974, -2 ; 2 uses
  %i.apz = shl nuw nsw i64 %indvars.iv.next975.1, 1
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %i.apz ; 2 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 1
  store i8 -1, ptr %i.aqb, align 1, !tbaa !34
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %indvars.iv.next975.1
  %i.aqd = load i8, ptr %i.aqc, align 1, !tbaa !34
  store i8 %i.aqd, ptr %i.aqa, align 1, !tbaa !34
  %indvars.iv.next975.2 = add nsw i64 %indvars.iv974, -3 ; 3 uses
  %i.aqe = shl nuw nsw i64 %indvars.iv.next975.2, 1
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %i.aqe ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 1
  store i8 -1, ptr %i.aqg, align 1, !tbaa !34
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %indvars.iv.next975.2
  %i.aqi = load i8, ptr %i.aqh, align 1, !tbaa !34
  store i8 %i.aqi, ptr %i.aqf, align 1, !tbaa !34
  %indvars.iv.next975.3 = add nsw i64 %indvars.iv974, -4
  %.not1038.3 = icmp eq i64 %indvars.iv.next975.2, 0
  br i1 %.not1038.3, label %.loopexit, label %.lr.ph863, !llvm.loop !639

.lr.ph860:                                        ; preds = %.lr.ph860.prol.loopexit, %.lr.ph860
  %indvars.iv971 = phi i64 [ %indvars.iv.next972.1, %.lr.ph860 ], [ %indvars.iv971.unr, %.lr.ph860.prol.loopexit ] ; 4 uses
  %i.aqj = shl nuw nsw i64 %indvars.iv971, 2
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %i.aqj ; 4 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 3
  store i8 -1, ptr %i.aql, align 1, !tbaa !34
  %i.aqm = mul nuw nsw i64 %indvars.iv971, 3
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %i.aqm ; 3 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 2
  %i.aqp = load i8, ptr %i.aqo, align 1, !tbaa !34
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqk, i64 2
  store i8 %i.aqp, ptr %i.aqq, align 1, !tbaa !34
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqn, i64 1
  %i.aqs = load i8, ptr %i.aqr, align 1, !tbaa !34
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqk, i64 1
  store i8 %i.aqs, ptr %i.aqt, align 1, !tbaa !34
  %i.aqu = load i8, ptr %i.aqn, align 1, !tbaa !34
  store i8 %i.aqu, ptr %i.aqk, align 1, !tbaa !34
  %indvars.iv.next972 = add nsw i64 %indvars.iv971, -1 ; 3 uses
  %i.aqv = shl nuw nsw i64 %indvars.iv.next972, 2
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %i.aqv ; 4 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 3
  store i8 -1, ptr %i.aqx, align 1, !tbaa !34
  %i.aqy = mul nuw nsw i64 %indvars.iv.next972, 3
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %i.aqy ; 3 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 2
  %i.arb = load i8, ptr %i.ara, align 1, !tbaa !34
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqw, i64 2
  store i8 %i.arb, ptr %i.arc, align 1, !tbaa !34
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqz, i64 1
  %i.are = load i8, ptr %i.ard, align 1, !tbaa !34
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqw, i64 1
  store i8 %i.are, ptr %i.arf, align 1, !tbaa !34
  %i.arg = load i8, ptr %i.aqz, align 1, !tbaa !34
  store i8 %i.arg, ptr %i.aqw, align 1, !tbaa !34
  %indvars.iv.next972.1 = add nsw i64 %indvars.iv971, -2
  %.not1037.1 = icmp eq i64 %indvars.iv.next972, 0
  br i1 %.not1037.1, label %.loopexit, label %.lr.ph860, !llvm.loop !640

.loopexit:                                        ; preds = %.lr.ph860.prol.loopexit, %.lr.ph860, %.lr.ph863.prol.loopexit, %.lr.ph863, %.preheader698, %.preheader, %.thread672
  %indvars.iv.next978 = add nuw nsw i64 %indvars.iv977, 1 ; 2 uses
  %exitcond981.not = icmp eq i64 %indvars.iv.next978, %wide.trip.count980
  br i1 %exitcond981.not, label %.loopexit704, label %bb.ae, !llvm.loop !641

bb.at:                                            ; preds = %._crit_edge828
  br i1 %i.a, label %bb.au, label %.loopexit704

bb.au:                                            ; preds = %._crit_edge828.thread, %bb.at
  %i.arh = mul i32 %i.c, %5                       ; 4 uses
  %.not868 = icmp eq i32 %i.arh, 0
  br i1 %.not868, label %.loopexit704, label %.lr.ph833.preheader

.lr.ph833.preheader:                              ; preds = %bb.au
  %i.ari = load ptr, ptr %i.u, align 8, !tbaa !111 ; 2 uses
  %xtraiter1665 = and i32 %i.arh, 3               ; 3 uses
  %i.arj = icmp ult i32 %i.arh, 4
  br i1 %i.arj, label %.lr.ph833.epil.preheader, label %.lr.ph833.preheader.new

.lr.ph833.preheader.new:                          ; preds = %.lr.ph833.preheader
  %unroll_iter1669 = and i32 %i.arh, -4
  br label %.lr.ph833.a

.lr.ph833.a:                                      ; preds = %.lr.ph833.a, %.lr.ph833.preheader.new
  %.0831 = phi ptr [ %i.ari, %.lr.ph833.preheader.new ], [ %30, %.lr.ph833.a ] ; 10 uses
  %niter1670 = phi i32 [ 0, %.lr.ph833.preheader.new ], [ %niter1670.next.3, %.lr.ph833.a ]
  %8 = load i8, ptr %.0831, align 1, !tbaa !34
  %9 = zext i8 %8 to i16
  %10 = shl nuw i16 %9, 8
  %i.ark = getelementptr inbounds nuw i8, ptr %.0831, i64 1
  %11 = load i8, ptr %i.ark, align 1, !tbaa !34
  %12 = zext i8 %11 to i16
  %13 = or disjoint i16 %10, %12
  store i16 %13, ptr %.0831, align 2, !tbaa !41
  %i.arl = getelementptr i8, ptr %.0831, i64 2    ; 2 uses
  %14 = load i8, ptr %i.arl, align 2, !tbaa !34
  %15 = zext i8 %14 to i16
  %16 = shl nuw i16 %15, 8
  %i.arm = getelementptr i8, ptr %.0831, i64 3
  %i.arn = load i8, ptr %i.arm, align 1, !tbaa !34
  %17 = zext i8 %i.arn to i16
  %18 = or disjoint i16 %16, %17
  store i16 %18, ptr %i.arl, align 2, !tbaa !41
  %19 = getelementptr i8, ptr %.0831, i64 4       ; 2 uses
  %i.aro = load i8, ptr %19, align 2, !tbaa !34
  %20 = zext i8 %i.aro to i16
  %21 = shl nuw i16 %20, 8
  %i.arp = getelementptr i8, ptr %.0831, i64 5
  %22 = load i8, ptr %i.arp, align 1, !tbaa !34
  %23 = zext i8 %22 to i16
  %24 = or disjoint i16 %21, %23
  store i16 %24, ptr %19, align 2, !tbaa !41
  %i.arq = getelementptr i8, ptr %.0831, i64 6    ; 2 uses
  %i.arr = load i8, ptr %i.arq, align 2, !tbaa !34
  %25 = zext i8 %i.arr to i16
  %26 = shl nuw i16 %25, 8
  %27 = getelementptr i8, ptr %.0831, i64 7
  %i.ars = load i8, ptr %27, align 1, !tbaa !34
  %28 = zext i8 %i.ars to i16
  %29 = or disjoint i16 %26, %28
  store i16 %29, ptr %i.arq, align 2, !tbaa !41
  %30 = getelementptr i8, ptr %.0831, i64 8       ; 2 uses
  %niter1670.next.3 = add i32 %niter1670, 4       ; 2 uses
  %niter1670.ncmp.3 = icmp eq i32 %niter1670.next.3, %unroll_iter1669
  br i1 %niter1670.ncmp.3, label %.loopexit704.loopexit.unr-lcssa, label %.lr.ph833.a, !llvm.loop !642

.loopexit704.sink.split:                          ; preds = %bb.g, %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, %_ZL21stbi__mul2sizes_validii.exit12.i, %_ZL21stbi__mul2sizes_validii.exit.i, %bb.d, %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %_ZL17stbi__malloc_mad3iiii.exit, %_ZL17stbi__malloc_mad3iiii.exit.thread
  %.str.57.sink = phi ptr [ @.str.56, %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge ], [ @.str.26, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ @.str.27, %_ZL17stbi__malloc_mad3iiii.exit ], [ @.str.27, %_ZL17stbi__malloc_mad3iiii.exit.thread ], [ @.str.26, %_ZL21stbi__mul2sizes_validii.exit.thread15.i ], [ @.str.26, %bb.d ], [ @.str.26, %_ZL21stbi__mul2sizes_validii.exit.i ], [ @.str.57, %bb.g ]
  store ptr %.str.57.sink, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %.loopexit704

.loopexit704.loopexit.unr-lcssa:                  ; preds = %.lr.ph833.a
  %lcmp.mod1667.not = icmp eq i32 %xtraiter1665, 0
  br i1 %lcmp.mod1667.not, label %.loopexit704, label %.lr.ph833.epil.preheader

.lr.ph833.epil.preheader:                         ; preds = %.loopexit704.loopexit.unr-lcssa, %.lr.ph833.preheader
  %.0831.epil.init = phi ptr [ %i.ari, %.lr.ph833.preheader ], [ %30, %.loopexit704.loopexit.unr-lcssa ]
  %lcmp.mod1668 = icmp ne i32 %xtraiter1665, 0
  tail call void @llvm.assume(i1 %lcmp.mod1668)
  br label %.lr.ph833.epil

.lr.ph833.epil:                                   ; preds = %.lr.ph833.epil, %.lr.ph833.epil.preheader
  %.0831.epil = phi ptr [ %31, %.lr.ph833.epil ], [ %.0831.epil.init, %.lr.ph833.epil.preheader ] ; 4 uses
  %epil.iter1666 = phi i32 [ %epil.iter1666.next, %.lr.ph833.epil ], [ 0, %.lr.ph833.epil.preheader ]
  %i.art = load i8, ptr %.0831.epil, align 1, !tbaa !34
  %i.aru = zext i8 %i.art to i16
  %i.arv = shl nuw i16 %i.aru, 8
  %i.arw = getelementptr inbounds nuw i8, ptr %.0831.epil, i64 1
  %i.arx = load i8, ptr %i.arw, align 1, !tbaa !34
  %i.ary = zext i8 %i.arx to i16
  %i.arz = or disjoint i16 %i.arv, %i.ary
  store i16 %i.arz, ptr %.0831.epil, align 2, !tbaa !41
  %31 = getelementptr i8, ptr %.0831.epil, i64 2
  %epil.iter1666.next = add i32 %epil.iter1666, 1 ; 2 uses
  %epil.iter1666.cmp.not = icmp eq i32 %epil.iter1666.next, %xtraiter1665
  br i1 %epil.iter1666.cmp.not, label %.loopexit704, label %.lr.ph833.epil, !llvm.loop !643

.loopexit704:                                     ; preds = %.loopexit, %.loopexit704.loopexit.unr-lcssa, %.lr.ph833.epil, %.loopexit704.sink.split, %._crit_edge828.thread, %bb.au, %bb.at
  %.2570 = phi i32 [ 1, %bb.au ], [ 1, %._crit_edge828.thread ], [ 1, %bb.at ], [ 1, %.loopexit704.loopexit.unr-lcssa ], [ 0, %.loopexit704.sink.split ], [ 1, %.lr.ph833.epil ], [ 1, %.loopexit ]
  ret i32 %.2570
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !35
  %i.g = load i8, ptr %i.b, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !31
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZL10stbi__get8P13stbi__context.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !30
  %i.q = tail call noundef i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p), !inline_history !11 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = sext i32 %i.q to i64
  %i.u = getelementptr inbounds i8, ptr %i.n, i64 %i.t
  %.pre.i.i = load i8, ptr %i.n, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i: ; preds = %bb.f, %bb.e
  %i.v = phi i8 [ 0, %bb.e ], [ %.pre.i.i, %bb.f ]
  %.sink.i.i.i = phi ptr [ %i.s, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  store ptr %.sink.i.i.i, ptr %i.c, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.w, ptr %i.a, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit.i

_ZL10stbi__get8P13stbi__context.exit.i:           ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i, %bb.c, %bb.b
  %i.x = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.y = phi ptr [ %i.f, %bb.b ], [ %i.w, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.b, %bb.c ] ; 4 uses
  %.0.i.i = phi i8 [ %i.g, %bb.b ], [ %i.v, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ 0, %bb.c ]
  %i.z = icmp ult ptr %i.y, %i.x
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !35
  %i.ab = load i8, ptr %i.y, align 1, !tbaa !34
  br label %_ZL13stbi__get16leP13stbi__context.exit

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !31
  %.not.i2.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i2.i, label %_ZL13stbi__get16leP13stbi__context.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !30
  %i.al = tail call noundef i32 %i.af(ptr noundef %i.ah, ptr noundef nonnull %i.ai, i32 noundef %i.ak), !inline_history !11 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ac, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.ai, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i

bb.k:                                             ; preds = %bb.i
  %i.ao = sext i32 %i.al to i64
  %i.ap = getelementptr inbounds i8, ptr %i.ai, i64 %i.ao
  %.pre.i3.i = load i8, ptr %i.ai, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i: ; preds = %bb.k, %bb.j
  %i.aq = phi i8 [ 0, %bb.j ], [ %.pre.i3.i, %bb.k ]
  %.sink.i.i5.i = phi ptr [ %i.an, %bb.j ], [ %i.ap, %bb.k ] ; 2 uses
  store ptr %.sink.i.i5.i, ptr %i.c, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !35
  br label %_ZL13stbi__get16leP13stbi__context.exit

_ZL13stbi__get16leP13stbi__context.exit:          ; preds = %bb.g, %bb.h, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i
  %i.as = phi ptr [ %i.x, %bb.g ], [ %.sink.i.i5.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i ], [ %i.x, %bb.h ] ; 3 uses
  %i.at = phi ptr [ %i.aa, %bb.g ], [ %i.ar, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i ], [ %i.y, %bb.h ] ; 4 uses
  %.0.i6.i = phi i8 [ %i.ab, %bb.g ], [ %i.aq, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i ], [ 0, %bb.h ]
  %i.au = icmp ult ptr %i.at, %i.as
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZL13stbi__get16leP13stbi__context.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  store ptr %i.av, ptr %i.a, align 8, !tbaa !35
  %i.aw = load i8, ptr %i.at, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit.i6

bb.m:                                             ; preds = %_ZL13stbi__get16leP13stbi__context.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !31
  %.not.i.i2 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i2, label %_ZL10stbi__get8P13stbi__context.exit.i6, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !30
  %i.bg = tail call noundef i32 %i.ba(ptr noundef %i.bc, ptr noundef nonnull %i.bd, i32 noundef %i.bf), !inline_history !11 ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ax, align 8, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.bd, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i4

bb.p:                                             ; preds = %bb.n
  %i.bj = sext i32 %i.bg to i64
  %i.bk = getelementptr inbounds i8, ptr %i.bd, i64 %i.bj
  %.pre.i.i3 = load i8, ptr %i.bd, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i4

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i4: ; preds = %bb.p, %bb.o
  %i.bl = phi i8 [ 0, %bb.o ], [ %.pre.i.i3, %bb.p ]
  %.sink.i.i.i5 = phi ptr [ %i.bi, %bb.o ], [ %i.bk, %bb.p ] ; 2 uses
  store ptr %.sink.i.i.i5, ptr %i.c, align 8, !tbaa !36
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit.i6

_ZL10stbi__get8P13stbi__context.exit.i6:          ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i4, %bb.m, %bb.l
  %i.bn = phi ptr [ %i.as, %bb.l ], [ %.sink.i.i.i5, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i4 ], [ %i.as, %bb.m ]
  %i.bo = phi ptr [ %i.av, %bb.l ], [ %i.bm, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i4 ], [ %i.at, %bb.m ] ; 3 uses
  %.0.i.i7 = phi i8 [ %i.aw, %bb.l ], [ %i.bl, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i4 ], [ 0, %bb.m ]
  %i.bp = icmp ult ptr %i.bo, %i.bn
  br i1 %i.bp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i6
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store ptr %i.bq, ptr %i.a, align 8, !tbaa !35
  %i.br = load i8, ptr %i.bo, align 1, !tbaa !34
  br label %_ZL13stbi__get16leP13stbi__context.exit13

bb.r:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i6
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !31
  %.not.i2.i8 = icmp eq i32 %i.bt, 0
  br i1 %.not.i2.i8, label %_ZL13stbi__get16leP13stbi__context.exit13, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !33
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !29
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !30
  %i.cb = tail call noundef i32 %i.bv(ptr noundef %i.bx, ptr noundef nonnull %i.by, i32 noundef %i.ca), !inline_history !11 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bs, align 8, !tbaa !31
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.by, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i10

bb.u:                                             ; preds = %bb.s
  %i.ce = sext i32 %i.cb to i64
  %i.cf = getelementptr inbounds i8, ptr %i.by, i64 %i.ce
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v4f32
!442 = distinct !{!442, !62}
!443 = distinct !{!443, !42}
!444 = distinct !{!444, !42}
!445 = distinct !{!445, !42}
!446 = !{!64, !18, i64 18056}
!447 = !{!64, !18, i64 18060}
!448 = !{!64, !18, i64 18072}
!449 = !{!64, !18, i64 18076}
!450 = !{!84, !18, i64 40}
!451 = !{!84, !18, i64 92}
!452 = distinct !{null}
!453 = distinct !{!453, !42}
!454 = distinct !{!454, !42}
!455 = distinct !{!455, !42}
!456 = distinct !{!456, !42}
!457 = distinct !{!457, !42}
!458 = distinct !{!458, !42, !43, !44}
!459 = distinct !{!459, !42, !43, !44}
!460 = distinct !{!460, !42, !43}
!461 = distinct !{!461, !"LVerDomain"}
!462 = distinct !{!462, !461}
!463 = distinct !{!463, !461}
!464 = distinct !{!464, !42, !43, !44}
!465 = distinct !{!465, !42, !43}
!466 = !{!462}
!467 = !{!463}
!468 = distinct !{!468, !42, !43, !44}
!469 = distinct !{!469, !42, !43, !44}
!470 = distinct !{!470, !42, !44, !43}
!471 = distinct !{!471, !42}
!472 = distinct !{!472, !42}
!473 = distinct !{!473, !42}
!474 = distinct !{!474, !42, !103}
!475 = distinct !{!475, !42}
!476 = distinct !{!476, !42}
!477 = distinct !{!477, !42}
!478 = distinct !{!478, !42}
!479 = distinct !{!479, !42}
!480 = distinct !{!480, !42}
!481 = distinct !{!481, !42}
!482 = distinct !{!482, !42}
!483 = distinct !{!483, !42}
!484 = distinct !{!484, !42}
!485 = distinct !{!485, !62}
!486 = distinct !{!486, !42}
!487 = distinct !{!487, !42, !43, !44}
!488 = distinct !{!488, !42, !43, !44}
!489 = distinct !{!489, !42, !43, !44}
!490 = distinct !{!490, !42, !43, !44}
!491 = distinct !{!491, !42, !43, !44}
!492 = distinct !{!492, !42, !43, !44}
!493 = distinct !{!493, !62}
!494 = distinct !{!494, !42, !43, !44}
!495 = distinct !{!495, !42, !43, !44}
!496 = distinct !{!496, !62}
!497 = distinct !{!497, !62}
!498 = distinct !{!498, !42, !43, !44}
!499 = distinct !{!499, !42, !43, !44}
!500 = distinct !{!500, !42, !44, !43}
!501 = distinct !{!501, !42}
!502 = distinct !{!502, !42}
!503 = distinct !{!503, !42, !44, !43}
!504 = distinct !{!504, !42}
!505 = distinct !{!505, !42}
!506 = distinct !{!506, !42}
!507 = distinct !{!507, !42, !44, !43}
!508 = distinct !{!508, !42, !44, !43}
!509 = distinct !{!509, !42, !44, !43}
!510 = distinct !{!510, !42, !44, !43}
!511 = distinct !{!511, !42}
!512 = distinct !{!512, !42}
!513 = !{!"branch_weights", i32 8, i32 8}
!514 = distinct !{!514, !62}
!515 = distinct !{!515, !62}
!516 = distinct !{!516, !62}
!517 = distinct !{!517, !62}
!518 = distinct !{!518, !42, !43, !44}
!519 = distinct !{!519, !62}
!520 = distinct !{!520, !62}
!521 = distinct !{!521, !42, !43, !44}
!522 = distinct !{!522, !42, !44, !43}
!523 = distinct !{!523, !42}
!524 = distinct !{!524, !42}
!525 = distinct !{!525, !42, !44, !43}
!526 = distinct !{!526, !42}
!527 = distinct !{!527, !42}
!528 = distinct !{!528, !42}
!529 = distinct !{!529, !42}
!530 = distinct !{!530, !42}
!531 = distinct !{!531, !42}
!532 = distinct !{!532, !42}
!533 = distinct !{!533, !42}
!534 = distinct !{!534, !42}
!535 = distinct !{!535, !"LVerDomain"}
!536 = distinct !{!536, !535}
!537 = distinct !{!537, !535}
!538 = distinct !{!538, !42, !43, !44}
!539 = distinct !{!539, !62}
!540 = distinct !{!540, !42, !43}
!541 = distinct !{!541, !42}
!542 = !{!536}
!543 = !{!537}
!544 = distinct !{!544, !42}
!545 = distinct !{!545, !42}
!546 = distinct !{!546, !62}
!547 = distinct !{!547, !42}
!548 = distinct !{!548, !42}
!549 = distinct !{!549, !42}
!550 = distinct !{!550, !62}
!551 = distinct !{!551, !62}
!552 = distinct !{!552, !42}
!553 = distinct !{!553, !42, !43, !44}
!554 = distinct !{!554, !42, !43, !44}
!555 = distinct !{!555, !42, !43, !44}
!556 = distinct !{!556, !42, !43, !44}
!557 = distinct !{!557, !42, !43, !44}
!558 = distinct !{!558, !42, !43, !44}
!559 = distinct !{!559, !42, !43, !44}
!560 = distinct !{!560, !42, !43, !44}
!561 = distinct !{!561, !42, !43, !44}
!562 = distinct !{!562, !42, !43, !44}
!563 = distinct !{!563, !62}
!564 = distinct !{!564, !42, !43, !44}
!565 = distinct !{!565, !42, !43, !44}
!566 = distinct !{!566, !42, !43}
!567 = distinct !{!567, !42, !43}
!568 = distinct !{!568, !42, !43}
!569 = distinct !{!569, !42, !43}
!570 = distinct !{!570, !42, !43}
!571 = distinct !{!571, !42, !43}
!572 = distinct !{!572, !"LVerDomain"}
!573 = distinct !{!573, !572}
!574 = distinct !{!574, !572}
!575 = distinct !{!575, !42, !43, !44}
!576 = distinct !{!576, !42, !43, !44}
!577 = distinct !{!577, !62}
!578 = distinct !{!578, !42, !43}
!579 = distinct !{!579, !42}
!580 = distinct !{!580, !"LVerDomain"}
!581 = distinct !{!581, !580}
!582 = distinct !{!582, !580}
!583 = distinct !{!583, !580}
!584 = distinct !{!584, !42, !43, !44}
!585 = distinct !{!585, !42, !43, !44}
!586 = distinct !{!586, !42, !43}
!587 = distinct !{!587, !42}
!588 = distinct !{!588, !"LVerDomain"}
!589 = distinct !{!589, !588}
!590 = distinct !{!590, !588}
!591 = distinct !{!591, !588}
!592 = distinct !{!592, !42, !43, !44}
!593 = distinct !{!593, !42, !43, !44}
!594 = distinct !{!594, !62}
!595 = distinct !{!595, !42, !43}
!596 = distinct !{!596, !42}
!597 = distinct !{!597, !"LVerDomain"}
!598 = distinct !{!598, !597}
!599 = distinct !{!599, !597}
!600 = distinct !{!600, !597}
!601 = distinct !{!601, !597}
!602 = distinct !{!602, !42, !43, !44}
!603 = distinct !{!603, !42, !43, !44}
!604 = distinct !{!604, !42, !43}
!605 = distinct !{!605, !42}
!606 = distinct !{!606, !"LVerDomain"}
!607 = distinct !{!607, !606}
!608 = distinct !{!608, !606}
!609 = distinct !{!609, !606}
!610 = distinct !{!610, !606}
!611 = distinct !{!611, !606}
!612 = distinct !{!612, !42, !43, !44}
!613 = distinct !{!613, !42, !43, !44}
!614 = distinct !{!614, !42, !43}
!615 = distinct !{!615, !42}
!616 = distinct !{!616, !"LVerDomain"}
!617 = distinct !{!617, !616}
!618 = distinct !{!618, !616}
!619 = distinct !{!619, !616}
!620 = distinct !{!620, !42, !43, !44}
!621 = distinct !{!621, !42, !43, !44}
!622 = distinct !{!622, !42, !43}
!623 = distinct !{!623, !42}
!624 = distinct !{!624, !"LVerDomain"}
!625 = distinct !{!625, !624}
!626 = distinct !{!626, !624}
!627 = distinct !{!627, !624}
!628 = distinct !{!628, !42, !43, !44}
!629 = distinct !{!629, !42, !43, !44}
!630 = distinct !{!630, !42, !43}
!631 = distinct !{!631, !42}
!632 = distinct !{!632, !42}
!633 = distinct !{!633, !62}
!634 = distinct !{!634, !42}
!635 = distinct !{!635, !42}
!636 = distinct !{!636, !42}
!637 = distinct !{!637, !42}
!638 = distinct !{!638, !62}
!639 = distinct !{!639, !42}
!640 = distinct !{!640, !42}
!641 = distinct !{!641, !42}
!642 = distinct !{!642, !42}
!643 = distinct !{!643, !62}
!644 = !{!573}
!645 = !{!574}
!646 = !{!581}
!647 = !{!582}
!648 = !{!583}
!649 = !{!581, !582}
!650 = !{!589}
!651 = !{!590}
!652 = !{!591}
!653 = !{!589, !590}
!654 = !{!598}
!655 = !{!599}
!656 = !{!600}
!657 = !{!601}
!658 = !{!598, !599, !600}
!659 = !{!607}
!660 = !{!608}
!661 = !{!609}
!662 = !{!610}
!663 = !{!611}
!664 = !{!607, !608, !609, !610}
!665 = !{!617}
!666 = !{!618}
!667 = !{!619}
!668 = !{!617, !618}
!669 = !{!625}
!670 = !{!626}
!671 = !{!627}
!672 = !{!625, !626}
!673 = distinct !{!673, !42}
!674 = distinct !{!674, !42}
!675 = distinct !{null, ptr @_ZL10stbi__get8P13stbi__context, null}
!676 = distinct !{!676, !42}
!677 = distinct !{!677, !62}
!678 = distinct !{!678, !42}
!679 = distinct !{null, ptr @_ZL10stbi__skipP13stbi__contexti}
!680 = distinct !{!680, !42}
!681 = distinct !{!681, !42, !50}
!682 = distinct !{!682, !42}
!683 = distinct !{!683, !42}
!684 = distinct !{!684, !42}
!685 = !{!46, !18, i64 48}
!686 = !{!46, !18, i64 34888}
!687 = !{!135, !17, i64 2}
!688 = !{!46, !18, i64 40}
!689 = distinct !{!689, !42}
!690 = distinct !{!690, !42}
!691 = !{!46, !18, i64 34912}
!692 = distinct !{null, null}
!693 = distinct !{null, ptr @_ZL10stbi__get8P13stbi__context, null}
!694 = distinct !{!694, !42}
!695 = distinct !{!695, !42}
!696 = distinct !{!696, !42}
!697 = distinct !{!697, !42}
!698 = distinct !{!698, !42}
!699 = distinct !{!699, !42}
!700 = distinct !{!700, !42}
!701 = distinct !{!701, !62}
!702 = distinct !{!702, !42}
!703 = distinct !{!703, !42, !43}
!704 = distinct !{!704, !42}
!705 = distinct !{!705, !42}
!706 = distinct !{!706, !42}
!707 = distinct !{!707, !42}
!708 = distinct !{null, null}
!709 = distinct !{!709, !42}
!710 = distinct !{null}
!711 = distinct !{!711, !42}
!712 = distinct !{null, null, null}
!713 = distinct !{!713, !42}
!714 = distinct !{!714, !42, !43, !44}
!715 = distinct !{!715, !42}
!716 = distinct !{!716, !42}
!717 = distinct !{!717, !42}
!718 = distinct !{!718, !42}
end_hunk_1
