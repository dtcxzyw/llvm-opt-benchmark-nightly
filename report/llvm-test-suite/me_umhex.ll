Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/me_umhex?download=true
inline.NumInlined: 78
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 27
begin_hunk_0_@UMHEXIntegerPelBlockMotionSearch:bb.a
  %i.avy = mul nsw i32 %i.avx, %12
  %i.avz = ashr i32 %i.avy, 16                    ; 3 uses
  %i.awa = icmp slt i32 %i.avz, %.29895
  br i1 %i.awa, label %bb.fn, label %bb.fp

bb.fn:                                            ; preds = %bb.fm
  %i.awb = load i32, ptr @dist_method, align 4, !tbaa !4
  %i.awc = zext nneg i32 %i.awb to i64
  %i.awd = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.awc
  %i.awe = load ptr, ptr %i.awd, align 8, !tbaa !10
  %i.awf = sub nsw i32 %.29895, %i.avz
  %i.awg = add nsw i32 %i.avn, 80
  %i.awh = add nsw i32 %i.avs, 80
  %i.awi = tail call i32 %i.awe(ptr noundef %0, i32 noundef %i.v, i32 noundef %i.w, i32 noundef %i.awf, i32 noundef %i.awg, i32 noundef %i.awh) #13
  %i.awj = add nsw i32 %i.awi, %i.avz             ; 2 uses
  %i.awk = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.awl = getelementptr inbounds [8 x i8], ptr %i.awk, i64 %i.avf
  %i.awm = load ptr, ptr %i.awl, align 8, !tbaa !34
  %i.awn = getelementptr inbounds i8, ptr %i.awm, i64 %i.avj
  store i8 1, ptr %i.awn, align 1, !tbaa !81
  %i.awo = icmp slt i32 %i.awj, %.29895
  br i1 %i.awo, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj
  %.29895.1 = phi i32 [ %.29895, %bb.fl ], [ %i.awj, %bb.fo ], [ %.29895, %bb.fn ], [ %.29895, %bb.fm ], [ %.29895, %bb.fk ], [ %.29895, %bb.fj ] ; 8 uses
  %.29864.1 = phi i32 [ %.29864, %bb.fl ], [ %.278621095, %bb.fo ], [ %.29864, %bb.fn ], [ %.29864, %bb.fm ], [ %.29864, %bb.fk ], [ %.29864, %bb.fj ] ; 5 uses
  %.29.1 = phi i32 [ %.271096, %bb.fl ], [ %i.auy, %bb.fo ], [ %.271096, %bb.fn ], [ %.271096, %bb.fm ], [ %.271096, %bb.fk ], [ %.271096, %bb.fj ] ; 5 uses
  %i.awp = add nsw i32 %.278621095, 1             ; 3 uses
  %i.awq = sub nsw i32 %i.awp, %i.af              ; 2 uses
  %i.awr = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.awq, i1 true)
  %.not984.2 = icmp sgt i32 %i.awr, %10
  br i1 %.not984.2, label %bb.fv, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.aws = sub nsw i32 %.271096, %i.ai            ; 2 uses
  %i.awt = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.aws, i1 true)
  %.not985.2 = icmp samesign ugt i32 %i.awt, %10
  br i1 %.not985.2, label %bb.fv, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.awu = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.awv = add nsw i32 %i.aws, %10
  %i.aww = sext i32 %i.awv to i64                 ; 2 uses
  %i.awx = getelementptr inbounds [8 x i8], ptr %i.awu, i64 %i.aww
  %i.awy = load ptr, ptr %i.awx, align 8, !tbaa !34
  %i.awz = add nsw i32 %i.awq, %10
  %i.axa = sext i32 %i.awz to i64                 ; 2 uses
  %i.axb = getelementptr inbounds i8, ptr %i.awy, i64 %i.axa
  %i.axc = load i8, ptr %i.axb, align 1, !tbaa !81
  %.not986.2 = icmp eq i8 %i.axc, 0
  br i1 %.not986.2, label %bb.fs, label %bb.fv

bb.fs:                                            ; preds = %bb.fr
  %i.axd = load ptr, ptr @mvbits, align 8, !tbaa !53 ; 2 uses
  %i.axe = shl i32 %i.awp, 2                      ; 2 uses
  %i.axf = sub nsw i32 %i.axe, %i.z
  %i.axg = sext i32 %i.axf to i64
  %i.axh = getelementptr inbounds [4 x i8], ptr %i.axd, i64 %i.axg
  %i.axi = load i32, ptr %i.axh, align 4, !tbaa !4
  %i.axj = shl i32 %.271096, 2                    ; 2 uses
  %i.axk = sub nsw i32 %i.axj, %i.ac
  %i.axl = sext i32 %i.axk to i64
  %i.axm = getelementptr inbounds [4 x i8], ptr %i.axd, i64 %i.axl
  %i.axn = load i32, ptr %i.axm, align 4, !tbaa !4
  %i.axo = add nsw i32 %i.axn, %i.axi
  %i.axp = mul nsw i32 %i.axo, %12
  %i.axq = ashr i32 %i.axp, 16                    ; 3 uses
  %i.axr = icmp slt i32 %i.axq, %.29895.1
  br i1 %i.axr, label %bb.ft, label %bb.fv

bb.ft:                                            ; preds = %bb.fs
  %i.axs = load i32, ptr @dist_method, align 4, !tbaa !4
  %i.axt = zext nneg i32 %i.axs to i64
  %i.axu = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.axt
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !10
  %i.axw = sub nsw i32 %.29895.1, %i.axq
  %i.axx = add nsw i32 %i.axe, 80
  %i.axy = add nsw i32 %i.axj, 80
  %i.axz = tail call i32 %i.axv(ptr noundef %0, i32 noundef %i.v, i32 noundef %i.w, i32 noundef %i.axw, i32 noundef %i.axx, i32 noundef %i.axy) #13
  %i.aya = add nsw i32 %i.axz, %i.axq             ; 2 uses
  %i.ayb = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.ayc = getelementptr inbounds [8 x i8], ptr %i.ayb, i64 %i.aww
  %i.ayd = load ptr, ptr %i.ayc, align 8, !tbaa !34
  %i.aye = getelementptr inbounds i8, ptr %i.ayd, i64 %i.axa
  store i8 1, ptr %i.aye, align 1, !tbaa !81
  %i.ayf = icmp slt i32 %i.aya, %.29895.1
  br i1 %i.ayf, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp
  %.29895.2 = phi i32 [ %.29895.1, %bb.fr ], [ %i.aya, %bb.fu ], [ %.29895.1, %bb.ft ], [ %.29895.1, %bb.fs ], [ %.29895.1, %bb.fq ], [ %.29895.1, %bb.fp ] ; 5 uses
  %.29864.2 = phi i32 [ %.29864.1, %bb.fr ], [ %i.awp, %bb.fu ], [ %.29864.1, %bb.ft ], [ %.29864.1, %bb.fs ], [ %.29864.1, %bb.fq ], [ %.29864.1, %bb.fp ] ; 2 uses
  %.29.2 = phi i32 [ %.29.1, %bb.fr ], [ %.271096, %bb.fu ], [ %.29.1, %bb.ft ], [ %.29.1, %bb.fs ], [ %.29.1, %bb.fq ], [ %.29.1, %bb.fp ] ; 2 uses
  %i.ayg = add nsw i32 %.271096, -1               ; 3 uses
  br i1 %.not984.1, label %bb.ga, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ayh = sub nsw i32 %i.ayg, %i.ai              ; 2 uses
  %i.ayi = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.ayh, i1 true)
  %.not985.3 = icmp samesign ugt i32 %i.ayi, %10
  br i1 %.not985.3, label %bb.ga, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ayj = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.ayk = add nsw i32 %i.ayh, %10
  %i.ayl = sext i32 %i.ayk to i64                 ; 2 uses
  %i.aym = getelementptr inbounds [8 x i8], ptr %i.ayj, i64 %i.ayl
  %i.ayn = load ptr, ptr %i.aym, align 8, !tbaa !34
  %i.ayo = add nsw i32 %i.auz, %10
  %i.ayp = sext i32 %i.ayo to i64                 ; 2 uses
  %i.ayq = getelementptr inbounds i8, ptr %i.ayn, i64 %i.ayp
  %i.ayr = load i8, ptr %i.ayq, align 1, !tbaa !81
  %.not986.3 = icmp eq i8 %i.ayr, 0
  br i1 %.not986.3, label %bb.fy, label %bb.ga

bb.fy:                                            ; preds = %bb.fx
  %i.ays = load ptr, ptr @mvbits, align 8, !tbaa !53 ; 2 uses
  %i.ayt = shl i32 %.278621095, 2                 ; 2 uses
  %i.ayu = sub nsw i32 %i.ayt, %i.z
  %i.ayv = sext i32 %i.ayu to i64
  %i.ayw = getelementptr inbounds [4 x i8], ptr %i.ays, i64 %i.ayv
  %i.ayx = load i32, ptr %i.ayw, align 4, !tbaa !4
  %i.ayy = shl i32 %i.ayg, 2                      ; 2 uses
  %i.ayz = sub nsw i32 %i.ayy, %i.ac
  %i.aza = sext i32 %i.ayz to i64
  %i.azb = getelementptr inbounds [4 x i8], ptr %i.ays, i64 %i.aza
  %i.azc = load i32, ptr %i.azb, align 4, !tbaa !4
  %i.azd = add nsw i32 %i.azc, %i.ayx
  %i.aze = mul nsw i32 %i.azd, %12
  %i.azf = ashr i32 %i.aze, 16                    ; 3 uses
  %i.azg = icmp slt i32 %i.azf, %.29895.2
  br i1 %i.azg, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.azh = load i32, ptr @dist_method, align 4, !tbaa !4
  %i.azi = zext nneg i32 %i.azh to i64
  %i.azj = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.azi
  %i.azk = load ptr, ptr %i.azj, align 8, !tbaa !10
  %i.azl = sub nsw i32 %.29895.2, %i.azf
  %i.azm = add nsw i32 %i.ayt, 80
  %i.azn = add nsw i32 %i.ayy, 80
  %i.azo = tail call i32 %i.azk(ptr noundef %0, i32 noundef %i.v, i32 noundef %i.w, i32 noundef %i.azl, i32 noundef %i.azm, i32 noundef %i.azn) #13
  %i.azp = add nsw i32 %i.azo, %i.azf             ; 2 uses
  %i.azq = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.azr = getelementptr inbounds [8 x i8], ptr %i.azq, i64 %i.ayl
  %i.azs = load ptr, ptr %i.azr, align 8, !tbaa !34
  %i.azt = getelementptr inbounds i8, ptr %i.azs, i64 %i.ayp
  store i8 1, ptr %i.azt, align 1, !tbaa !81
  %i.azu = icmp slt i32 %i.azp, %.29895.2
  br i1 %i.azu, label %.thread1240, label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv
  %i.azv = icmp eq i32 %.29864.2, %.278621095
  %i.azw = icmp eq i32 %.29.2, %.271096
  %or.cond1003 = select i1 %i.azv, i1 %i.azw, i1 false
  br i1 %or.cond1003, label %.loopexit, label %.thread1240

.loopexit:                                        ; preds = %bb.ev, %.thread1240, %bb.ga, %.loopexit1022, %.loopexit1020, %bb.bs, %bb.br
  %.30896 = phi i32 [ %.6872, %bb.br ], [ %.6872, %bb.bs ], [ %.29895.31245, %.thread1240 ], [ %.26892, %.loopexit1020 ], [ %.22888, %.loopexit1022 ], [ %.29895.2, %bb.ga ], [ %.21887, %bb.ev ] ; 13 uses
  %.30865 = phi i32 [ %.6841, %bb.br ], [ %.6841, %bb.bs ], [ %.29864.31247, %.thread1240 ], [ %.26861, %.loopexit1020 ], [ %.22857, %.loopexit1022 ], [ %.278621095, %bb.ga ], [ %.21856, %bb.ev ]
  %.30 = phi i32 [ %.6, %bb.br ], [ %.6, %bb.bs ], [ %.29.31248, %.thread1240 ], [ %.26, %.loopexit1020 ], [ %.22, %.loopexit1022 ], [ %.271096, %bb.ga ], [ %.21, %bb.ev ]
  %i.azx = ashr i32 %i.w, 2                       ; 2 uses
  %i.azy = icmp sgt i32 %i.azx, 0
  br i1 %i.azy, label %.preheader.lr.ph, label %._crit_edge1109.split

.preheader.lr.ph:                                 ; preds = %.loopexit
  %i.azz = ashr i32 %i.v, 2                       ; 7 uses
  %i.baa = icmp sgt i32 %i.azz, 0
  %i.bab = icmp eq i32 %2, 0
  %i.bac = icmp eq i16 %1, 0
  br i1 %i.baa, label %.preheader.preheader, label %._crit_edge1109.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bad = sext i32 %i.as to i64                  ; 2 uses
  %i.bae = sext i32 %i.ar to i64
  %wide.trip.count1156 = zext nneg i32 %i.azx to i64
  %wide.trip.count = zext nneg i32 %i.azz to i64  ; 2 uses
  %wide.trip.count1151 = zext nneg i32 %i.azz to i64
  %i.baf = icmp eq i32 %i.azz, 1
  %unroll_iter = and i32 %i.azz, 2147483646
  %i.bag = and i32 %i.v, 4
  %lcmp.mod.not = icmp eq i32 %i.bag, 0
  %lcmp.mod1274 = trunc i32 %i.azz to i1
  %xtraiter1275 = and i64 %wide.trip.count, 3     ; 3 uses
  %i.bah = icmp ult i32 %i.azz, 4
  %unroll_iter1278 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod1276.not = icmp eq i64 %xtraiter1275, 0
  %lcmp.mod1277 = icmp ne i64 %xtraiter1275, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge1107
  %indvars.iv1153 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next1154, %._crit_edge1107 ] ; 2 uses
  %i.bai = load ptr, ptr @img, align 8            ; 2 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bai, i64 180 ; 4 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %i.bai, i64 176 ; 4 uses
  %i.bal = add nsw i64 %indvars.iv1153, %i.bae    ; 8 uses
  %i.bam = load ptr, ptr @fastme_l0_cost, align 8
  %i.ban = getelementptr inbounds [8 x i8], ptr %i.bam, i64 %i.s
  br i1 %i.bab, label %.lr.ph1106.split.us, label %.lr.ph1106.split

.lr.ph1106.split.us:                              ; preds = %.preheader
  %i.bao = load ptr, ptr @fastme_ref_cost, align 8
  %i.bap = getelementptr inbounds [8 x i8], ptr %i.bao, i64 %i.bs
  %i.baq = load ptr, ptr %i.bap, align 8, !tbaa !41
  %i.bar = getelementptr inbounds [8 x i8], ptr %i.baq, i64 %i.s
  %i.bas = load ptr, ptr %i.bar, align 8, !tbaa !42 ; 2 uses
  br i1 %i.bac, label %.lr.ph1106.split.us.split.us, label %.lr.ph1106.split.us.split.preheader

.lr.ph1106.split.us.split.preheader:              ; preds = %.lr.ph1106.split.us
  %invariant.gep = getelementptr [8 x i8], ptr %i.bas, i64 %i.bad ; 5 uses
  br i1 %i.bah, label %.lr.ph1106.split.us.split.epil.preheader, label %.lr.ph1106.split.us.split

.lr.ph1106.split.us.split.us:                     ; preds = %.lr.ph1106.split.us
  %i.bat = load ptr, ptr %i.ban, align 8, !tbaa !42
  %13 = trunc nsw i64 %i.bal to i32
  br label %bb.gb

bb.gb:                                            ; preds = %bb.gb, %.lr.ph1106.split.us.split.us
  %indvars.iv1148 = phi i64 [ %indvars.iv.next1149, %bb.gb ], [ 0, %.lr.ph1106.split.us.split.us ] ; 2 uses
  %i.bau = add nsw i64 %indvars.iv1148, %i.bad    ; 2 uses
  %i.bav = getelementptr inbounds [8 x i8], ptr %i.bas, i64 %i.bau
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !53
  %i.bax = getelementptr inbounds [4 x i8], ptr %i.baw, i64 %i.bal
  store i32 %.30896, ptr %i.bax, align 4, !tbaa !4
  %i.bay = load i32, ptr %i.baj, align 4, !tbaa !95
  %i.baz = ashr i32 %i.bay, 2
  %14 = trunc nsw i64 %i.bau to i32
  %15 = add i32 %i.baz, %14
  %16 = sext i32 %15 to i64
  %i.bba = getelementptr inbounds [8 x i8], ptr %i.bat, i64 %16
  %i.bbb = load ptr, ptr %i.bba, align 8, !tbaa !53
  %i.bbc = load i32, ptr %i.bak, align 8, !tbaa !96
  %i.bbd = ashr i32 %i.bbc, 2
  %17 = add i32 %i.bbd, %13
  %18 = sext i32 %17 to i64
  %i.bbe = getelementptr inbounds [4 x i8], ptr %i.bbb, i64 %18
  store i32 %.30896, ptr %i.bbe, align 4, !tbaa !4
  %indvars.iv.next1149 = add nuw nsw i64 %indvars.iv1148, 1 ; 2 uses
  %exitcond1152.not = icmp eq i64 %indvars.iv.next1149, %wide.trip.count1151
  br i1 %exitcond1152.not, label %._crit_edge1107, label %bb.gb, !llvm.loop !97

.lr.ph1106.split.us.split:                        ; preds = %.lr.ph1106.split.us.split.preheader, %.lr.ph1106.split.us.split
  %indvars.iv1144 = phi i64 [ %indvars.iv.next1145.3, %.lr.ph1106.split.us.split ], [ 0, %.lr.ph1106.split.us.split.preheader ] ; 5 uses
  %niter1279 = phi i64 [ %niter1279.next.3, %.lr.ph1106.split.us.split ], [ 0, %.lr.ph1106.split.us.split.preheader ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1144
  %i.bbf = load ptr, ptr %gep, align 8, !tbaa !53
  %i.bbg = getelementptr inbounds [4 x i8], ptr %i.bbf, i64 %i.bal
  store i32 %.30896, ptr %i.bbg, align 4, !tbaa !4
  %i.bbh = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1144
  %gep.1 = getelementptr i8, ptr %i.bbh, i64 8
  %i.bbi = load ptr, ptr %gep.1, align 8, !tbaa !53
  %i.bbj = getelementptr inbounds [4 x i8], ptr %i.bbi, i64 %i.bal
  store i32 %.30896, ptr %i.bbj, align 4, !tbaa !4
  %i.bbk = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1144
  %gep.2 = getelementptr i8, ptr %i.bbk, i64 16
  %i.bbl = load ptr, ptr %gep.2, align 8, !tbaa !53
  %i.bbm = getelementptr inbounds [4 x i8], ptr %i.bbl, i64 %i.bal
  store i32 %.30896, ptr %i.bbm, align 4, !tbaa !4
  %i.bbn = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1144
  %gep.3 = getelementptr i8, ptr %i.bbn, i64 24
  %i.bbo = load ptr, ptr %gep.3, align 8, !tbaa !53
  %i.bbp = getelementptr inbounds [4 x i8], ptr %i.bbo, i64 %i.bal
  store i32 %.30896, ptr %i.bbp, align 4, !tbaa !4
  %indvars.iv.next1145.3 = add nuw nsw i64 %indvars.iv1144, 4 ; 2 uses
  %niter1279.next.3 = add i64 %niter1279, 4       ; 2 uses
  %niter1279.ncmp.3 = icmp eq i64 %niter1279.next.3, %unroll_iter1278
  br i1 %niter1279.ncmp.3, label %._crit_edge1107.loopexit1268.unr-lcssa, label %.lr.ph1106.split.us.split, !llvm.loop !97

.lr.ph1106.split:                                 ; preds = %.preheader
  %i.bbq = load ptr, ptr @fastme_l1_cost, align 8
  %i.bbr = getelementptr inbounds [8 x i8], ptr %i.bbq, i64 %i.s
  %i.bbs = load ptr, ptr %i.bbr, align 8, !tbaa !42 ; 3 uses
  %19 = trunc nsw i64 %i.bal to i32               ; 3 uses
  br i1 %i.baf, label %.epil.preheader, label %.lr.ph1106.split.new

.lr.ph1106.split.new:                             ; preds = %.lr.ph1106.split, %.lr.ph1106.split.new
  %.08201105 = phi i32 [ %i.bco, %.lr.ph1106.split.new ], [ 0, %.lr.ph1106.split ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph1106.split.new ], [ 0, %.lr.ph1106.split ]
  %i.bbt = load i32, ptr %i.baj, align 4, !tbaa !95
  %i.bbu = ashr i32 %i.bbt, 2
  %i.bbv = add nsw i32 %.08201105, %i.as
  %i.bbw = add i32 %i.bbv, %i.bbu
  %i.bbx = sext i32 %i.bbw to i64
  %i.bby = getelementptr inbounds [8 x i8], ptr %i.bbs, i64 %i.bbx
  %i.bbz = load ptr, ptr %i.bby, align 8, !tbaa !53
  %i.bca = load i32, ptr %i.bak, align 8, !tbaa !96
  %i.bcb = ashr i32 %i.bca, 2
  %20 = add i32 %i.bcb, %19
  %21 = sext i32 %20 to i64
  %i.bcc = getelementptr inbounds [4 x i8], ptr %i.bbz, i64 %21
  store i32 %.30896, ptr %i.bcc, align 4, !tbaa !4
  %i.bcd = or disjoint i32 %.08201105, 1
  %i.bce = load i32, ptr %i.baj, align 4, !tbaa !95
  %i.bcf = ashr i32 %i.bce, 2
  %i.bcg = add nsw i32 %i.bcd, %i.as
  %i.bch = add i32 %i.bcg, %i.bcf
  %i.bci = sext i32 %i.bch to i64
  %i.bcj = getelementptr inbounds [8 x i8], ptr %i.bbs, i64 %i.bci
  %i.bck = load ptr, ptr %i.bcj, align 8, !tbaa !53
  %i.bcl = load i32, ptr %i.bak, align 8, !tbaa !96
  %i.bcm = ashr i32 %i.bcl, 2
  %22 = add i32 %i.bcm, %19
  %23 = sext i32 %22 to i64
  %i.bcn = getelementptr inbounds [4 x i8], ptr %i.bck, i64 %23
  store i32 %.30896, ptr %i.bcn, align 4, !tbaa !4
  %i.bco = add nuw nsw i32 %.08201105, 2          ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1107.loopexit1269.unr-lcssa, label %.lr.ph1106.split.new, !llvm.loop !97

._crit_edge1107.loopexit1268.unr-lcssa:           ; preds = %.lr.ph1106.split.us.split
  br i1 %lcmp.mod1276.not, label %._crit_edge1107, label %.lr.ph1106.split.us.split.epil.preheader

.lr.ph1106.split.us.split.epil.preheader:         ; preds = %._crit_edge1107.loopexit1268.unr-lcssa, %.lr.ph1106.split.us.split.preheader
  %indvars.iv1144.epil.init = phi i64 [ 0, %.lr.ph1106.split.us.split.preheader ], [ %indvars.iv.next1145.3, %._crit_edge1107.loopexit1268.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1277)
  br label %.lr.ph1106.split.us.split.epil

.lr.ph1106.split.us.split.epil:                   ; preds = %.lr.ph1106.split.us.split.epil, %.lr.ph1106.split.us.split.epil.preheader
  %indvars.iv1144.epil = phi i64 [ %indvars.iv1144.epil.init, %.lr.ph1106.split.us.split.epil.preheader ], [ %indvars.iv.next1145.epil, %.lr.ph1106.split.us.split.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1106.split.us.split.epil.preheader ], [ %epil.iter.next, %.lr.ph1106.split.us.split.epil ]
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1144.epil
  %i.bcp = load ptr, ptr %gep.epil, align 8, !tbaa !53
  %i.bcq = getelementptr inbounds [4 x i8], ptr %i.bcp, i64 %i.bal
  store i32 %.30896, ptr %i.bcq, align 4, !tbaa !4
  %indvars.iv.next1145.epil = add nuw nsw i64 %indvars.iv1144.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1275
  br i1 %epil.iter.cmp.not, label %._crit_edge1107, label %.lr.ph1106.split.us.split.epil, !llvm.loop !98

._crit_edge1107.loopexit1269.unr-lcssa:           ; preds = %.lr.ph1106.split.new
  br i1 %lcmp.mod.not, label %._crit_edge1107, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1107.loopexit1269.unr-lcssa, %.lr.ph1106.split
  %.08201105.epil.init = phi i32 [ 0, %.lr.ph1106.split ], [ %i.bco, %._crit_edge1107.loopexit1269.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1274)
  %i.bcr = load i32, ptr %i.baj, align 4, !tbaa !95
  %i.bcs = ashr i32 %i.bcr, 2
  %i.bct = add nsw i32 %.08201105.epil.init, %i.as
  %i.bcu = add i32 %i.bct, %i.bcs
  %i.bcv = sext i32 %i.bcu to i64
  %i.bcw = getelementptr inbounds [8 x i8], ptr %i.bbs, i64 %i.bcv
  %i.bcx = load ptr, ptr %i.bcw, align 8, !tbaa !53
  %i.bcy = load i32, ptr %i.bak, align 8, !tbaa !96
  %i.bcz = ashr i32 %i.bcy, 2
  %24 = add i32 %i.bcz, %19
  %25 = sext i32 %24 to i64
  %i.bda = getelementptr inbounds [4 x i8], ptr %i.bcx, i64 %25
  store i32 %.30896, ptr %i.bda, align 4, !tbaa !4
  br label %._crit_edge1107

._crit_edge1107:                                  ; preds = %.epil.preheader, %._crit_edge1107.loopexit1269.unr-lcssa, %._crit_edge1107.loopexit1268.unr-lcssa, %.lr.ph1106.split.us.split.epil, %bb.gb
  %indvars.iv.next1154 = add nuw nsw i64 %indvars.iv1153, 1 ; 2 uses
  %exitcond1157.not = icmp eq i64 %indvars.iv.next1154, %wide.trip.count1156
  br i1 %exitcond1157.not, label %._crit_edge1109.split, label %.preheader, !llvm.loop !100

._crit_edge1109.split:                            ; preds = %._crit_edge1107, %.preheader.lr.ph, %.loopexit
  %i.bdb = icmp eq i16 %1, 0
  %.pre1163 = sext i16 %i.aq to i64               ; 2 uses
  br i1 %i.bdb, label %._crit_edge1109.split._crit_edge, label %bb.gc

bb.gc:                                            ; preds = %._crit_edge1109.split
  %i.bdc = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %.pre1163
  %i.bdd = load i32, ptr %i.bdc, align 4, !tbaa !4
  %i.bde = icmp sgt i32 %i.bdd, %.30896
  br i1 %i.bde, label %._crit_edge1109.split._crit_edge, label %bb.gd

._crit_edge1109.split._crit_edge:                 ; preds = %._crit_edge1109.split, %bb.gc
  %i.bdf = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %.pre1163
  store i32 %.30896, ptr %i.bdf, align 4, !tbaa !4
  br label %bb.gd

bb.gd:                                            ; preds = %._crit_edge1109.split._crit_edge, %bb.gc
  %i.bdg = sub nsw i32 %.30865, %3
  %i.bdh = trunc i32 %i.bdg to i16
  store i16 %i.bdh, ptr %8, align 2, !tbaa !50
  %i.bdi = sub nsw i32 %.30, %4
  %i.bdj = trunc i32 %i.bdi to i16
  store i16 %i.bdj, ptr %9, align 2, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.30896
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @UMHEX_setup(i16 noundef signext %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2096
  %i.c = load i32, ptr %i.b, align 8, !tbaa !101  ; 4 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @frame_ctr, i64 4), align 4, !tbaa !4
  %i.e = add nsw i32 %i.c, 1
  %i.f = srem i32 %i.d, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]    ; 4 uses
  %i.h = icmp sgt i32 %4, 1                       ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = zext nneg i32 %4 to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @__const.UMHEX_setup.indication_blocktype, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = sext i32 %2 to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %5, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !102
  %i.o = sext i32 %3 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !78
  %i.r = sext i32 %1 to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !103
  %i.u = sext i16 %0 to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !104
  %i.x = sext i32 %i.k to i64                     ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !87   ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !50
  %i.ab = sext i16 %i.aa to i32
  store i32 %i.ab, ptr @pred_MV_uplayer, align 4, !tbaa !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !50
  %i.ae = sext i16 %i.ad to i32
  store i32 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @pred_MV_uplayer, i64 4), align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.x, %bb.d ], [ 0, %bb.c ]
  store i1 false, ptr @pred_MV_ref_flag, align 4
  %i.af = icmp eq i32 %1, 0
  br i1 %i.af, label %bb.f, label %.thread121

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr @img, align 8, !tbaa !10  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 15312
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !105
  %.not112 = icmp eq i32 %i.ai, 0
  br i1 %.not112, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp sgt i16 %0, 1
  br i1 %i.aj, label %.thread129.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !56
  %i.am = icmp eq i32 %i.al, 1
  %or.cond = icmp ult i16 %0, 2
  %or.cond116 = and i1 %or.cond, %i.am
  br i1 %or.cond116, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.an = sext i32 %2 to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %5, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !102
  %i.aq = sext i32 %3 to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !103
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !104
  %i.aw = sext i32 %4 to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !87 ; 2 uses
  %i.az = sub nsw i32 0, %i.g                     ; 2 uses
  %i.ba = sub nsw i32 %i.c, %i.g
  %i.bb = sitofp i32 %i.ba to float
  %i.bc = fadd float %i.bb, 1.000000e+00
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !50
  %i.bf = load i16, ptr %i.ay, align 2, !tbaa !50
  %i.bg = sext i16 %i.be to i32
  %i.bh = sext i16 %i.bf to i32
  %i.bi = mul nsw i32 %i.bg, %i.az
  %i.bj = mul nsw i32 %i.bh, %i.az
  %i.bk = insertelement <2 x i32> poison, i32 %i.bj, i64 0
  %i.bl = insertelement <2 x i32> %i.bk, i32 %i.bi, i64 1
  %i.bm = sitofp <2 x i32> %i.bl to <2 x float>
  %i.bn = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fdiv <2 x float> %i.bm, %i.bo
  %i.bq = fptosi <2 x float> %i.bp to <2 x i32>
  store <2 x i32> %i.bq, ptr @pred_MV_ref, align 4, !tbaa !4
  store i1 true, ptr @pred_MV_ref_flag, align 4
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.br = icmp sgt i16 %0, 0
  br i1 %i.br, label %.thread129, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !56
  %i.bu = icmp eq i32 %i.bt, 1
  %i.bv = icmp eq i16 %0, 0
  %or.cond5 = and i1 %i.bv, %i.bu
  br i1 %or.cond5, label %bb.l, label %.thread121

bb.l:                                             ; preds = %bb.k
  %i.bw = sext i32 %2 to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %5, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !102
  %i.bz = sext i32 %3 to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !78
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !103
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !104
  %i.cf = sext i32 %4 to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !87 ; 2 uses
  %i.ci = sub nsw i32 0, %i.g                     ; 2 uses
  %i.cj = sub nsw i32 %i.c, %i.g
  %i.ck = sitofp i32 %i.cj to float
  %i.cl = fadd float %i.ck, 1.000000e+00
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !50
  %i.co = load i16, ptr %i.ch, align 2, !tbaa !50
  %i.cp = sext i16 %i.cn to i32
  %i.cq = sext i16 %i.co to i32
  %i.cr = mul nsw i32 %i.cp, %i.ci
  %i.cs = mul nsw i32 %i.cq, %i.ci
  %i.ct = insertelement <2 x i32> poison, i32 %i.cs, i64 0
  %i.cu = insertelement <2 x i32> %i.ct, i32 %i.cr, i64 1
  %i.cv = sitofp <2 x i32> %i.cu to <2 x float>
  %i.cw = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fdiv <2 x float> %i.cv, %i.cx
  %i.cz = fptosi <2 x float> %i.cy to <2 x i32>
  store <2 x i32> %i.cz, ptr @pred_MV_ref, align 4, !tbaa !4
  store i1 true, ptr @pred_MV_ref_flag, align 4
  br label %.thread121

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.da = icmp eq i16 %0, 1
  br i1 %i.da, label %.thread130, label %.thread121

.thread129:                                       ; preds = %bb.j
  %i.db = sext i32 %2 to i64
end_hunk_0
begin_hunk_1_@UMHEXBipredIntegerPelBlockMotionSearch:bb.a
  store i8 1, ptr %i.bcw, align 1, !tbaa !81
  %i.bcx = icmp slt i32 %i.bcs, %.281076
  br i1 %i.bcx, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb
  %.281076.1 = phi i32 [ %.281076, %bb.fd ], [ %i.bcs, %bb.fg ], [ %.281076, %bb.ff ], [ %.281076, %bb.fe ], [ %.281076, %bb.fc ], [ %.281076, %bb.fb ] ; 8 uses
  %.281030.1 = phi i32 [ %.281030, %bb.fd ], [ %.2610281310, %bb.fg ], [ %.281030, %bb.ff ], [ %.281030, %bb.fe ], [ %.281030, %bb.fc ], [ %.281030, %bb.fb ] ; 5 uses
  %.28.1 = phi i32 [ %.261311, %bb.fd ], [ %i.bbc, %bb.fg ], [ %.261311, %bb.ff ], [ %.261311, %bb.fe ], [ %.261311, %bb.fc ], [ %.261311, %bb.fb ] ; 5 uses
  %i.bcy = add nsw i32 %.2610281310, 1            ; 3 uses
  %i.bcz = sub nsw i32 %i.bcy, %i.as              ; 2 uses
  %i.bda = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.bcz, i1 true)
  %.not1173.2 = icmp sgt i32 %i.bda, %14
  br i1 %.not1173.2, label %bb.fn, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.bdb = sub nsw i32 %.261311, %i.at            ; 2 uses
  %i.bdc = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.bdb, i1 true)
  %.not1174.2 = icmp samesign ugt i32 %i.bdc, %14
  br i1 %.not1174.2, label %bb.fn, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.bdd = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.bde = add nsw i32 %i.bdb, %14
  %i.bdf = sext i32 %i.bde to i64                 ; 2 uses
  %i.bdg = getelementptr inbounds [8 x i8], ptr %i.bdd, i64 %i.bdf
  %i.bdh = load ptr, ptr %i.bdg, align 8, !tbaa !34
  %i.bdi = add nsw i32 %i.bcz, %14
  %i.bdj = sext i32 %i.bdi to i64                 ; 2 uses
  %i.bdk = getelementptr inbounds i8, ptr %i.bdh, i64 %i.bdj
  %i.bdl = load i8, ptr %i.bdk, align 1, !tbaa !81
  %.not1175.2 = icmp eq i8 %i.bdl, 0
  br i1 %.not1175.2, label %bb.fk, label %bb.fn

bb.fk:                                            ; preds = %bb.fj
  %i.bdm = load ptr, ptr @mvbits, align 8, !tbaa !53 ; 4 uses
  %i.bdn = getelementptr inbounds [4 x i8], ptr %i.bdm, i64 %i.hz
  %i.bdo = load i32, ptr %i.bdn, align 4, !tbaa !4
  %i.bdp = getelementptr inbounds [4 x i8], ptr %i.bdm, i64 %i.if
  %i.bdq = load i32, ptr %i.bdp, align 4, !tbaa !4
  %i.bdr = add nsw i32 %i.bdq, %i.bdo
  %i.bds = mul nsw i32 %i.bdr, %16
  %i.bdt = ashr i32 %i.bds, 16
  %i.bdu = shl i32 %i.bcy, 2                      ; 2 uses
  %i.bdv = sub nsw i32 %i.bdu, %i.x
  %i.bdw = sext i32 %i.bdv to i64
  %i.bdx = getelementptr inbounds [4 x i8], ptr %i.bdm, i64 %i.bdw
  %i.bdy = load i32, ptr %i.bdx, align 4, !tbaa !4
  %i.bdz = shl i32 %.261311, 2                    ; 2 uses
  %i.bea = sub nsw i32 %i.bdz, %i.z
  %i.beb = sext i32 %i.bea to i64
  %i.bec = getelementptr inbounds [4 x i8], ptr %i.bdm, i64 %i.beb
  %i.bed = load i32, ptr %i.bec, align 4, !tbaa !4
  %i.bee = add nsw i32 %i.bed, %i.bdy
  %i.bef = mul nsw i32 %i.bee, %16
  %i.beg = ashr i32 %i.bef, 16
  %i.beh = add nsw i32 %i.beg, %i.bdt             ; 3 uses
  %i.bei = icmp slt i32 %i.beh, %.281076.1
  br i1 %i.bei, label %bb.fl, label %bb.fn

bb.fl:                                            ; preds = %bb.fk
  %i.bej = load ptr, ptr @computeBiPred, align 8, !tbaa !10
  %i.bek = sub nsw i32 %.281076.1, %i.beh
  %i.bel = add nsw i32 %i.bdu, 80
  %i.bem = add nsw i32 %i.bdz, 80
  %i.ben = tail call i32 %i.bej(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.bek, i32 noundef %i.iz, i32 noundef %i.ja, i32 noundef %i.bel, i32 noundef %i.bem) #13
  %i.beo = add nsw i32 %i.ben, %i.beh             ; 2 uses
  %i.bep = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.beq = getelementptr inbounds [8 x i8], ptr %i.bep, i64 %i.bdf
  %i.ber = load ptr, ptr %i.beq, align 8, !tbaa !34
  %i.bes = getelementptr inbounds i8, ptr %i.ber, i64 %i.bdj
  store i8 1, ptr %i.bes, align 1, !tbaa !81
  %i.bet = icmp slt i32 %i.beo, %.281076.1
  br i1 %i.bet, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh
  %.281076.2 = phi i32 [ %.281076.1, %bb.fj ], [ %i.beo, %bb.fm ], [ %.281076.1, %bb.fl ], [ %.281076.1, %bb.fk ], [ %.281076.1, %bb.fi ], [ %.281076.1, %bb.fh ] ; 5 uses
  %.281030.2 = phi i32 [ %.281030.1, %bb.fj ], [ %i.bcy, %bb.fm ], [ %.281030.1, %bb.fl ], [ %.281030.1, %bb.fk ], [ %.281030.1, %bb.fi ], [ %.281030.1, %bb.fh ] ; 2 uses
  %.28.2 = phi i32 [ %.28.1, %bb.fj ], [ %.261311, %bb.fm ], [ %.28.1, %bb.fl ], [ %.28.1, %bb.fk ], [ %.28.1, %bb.fi ], [ %.28.1, %bb.fh ] ; 2 uses
  %i.beu = add nsw i32 %.261311, -1               ; 3 uses
  br i1 %.not1173.1, label %bb.fs, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.bev = sub nsw i32 %i.beu, %i.at              ; 2 uses
  %i.bew = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.bev, i1 true)
  %.not1174.3 = icmp samesign ugt i32 %i.bew, %14
  br i1 %.not1174.3, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.bex = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.bey = add nsw i32 %i.bev, %14
  %i.bez = sext i32 %i.bey to i64                 ; 2 uses
  %i.bfa = getelementptr inbounds [8 x i8], ptr %i.bex, i64 %i.bez
  %i.bfb = load ptr, ptr %i.bfa, align 8, !tbaa !34
  %i.bfc = add nsw i32 %i.bbd, %14
  %i.bfd = sext i32 %i.bfc to i64                 ; 2 uses
  %i.bfe = getelementptr inbounds i8, ptr %i.bfb, i64 %i.bfd
  %i.bff = load i8, ptr %i.bfe, align 1, !tbaa !81
  %.not1175.3 = icmp eq i8 %i.bff, 0
  br i1 %.not1175.3, label %bb.fq, label %bb.fs

bb.fq:                                            ; preds = %bb.fp
  %i.bfg = load ptr, ptr @mvbits, align 8, !tbaa !53 ; 4 uses
  %i.bfh = getelementptr inbounds [4 x i8], ptr %i.bfg, i64 %i.hz
  %i.bfi = load i32, ptr %i.bfh, align 4, !tbaa !4
  %i.bfj = getelementptr inbounds [4 x i8], ptr %i.bfg, i64 %i.if
  %i.bfk = load i32, ptr %i.bfj, align 4, !tbaa !4
  %i.bfl = add nsw i32 %i.bfk, %i.bfi
  %i.bfm = mul nsw i32 %i.bfl, %16
  %i.bfn = ashr i32 %i.bfm, 16
  %i.bfo = shl i32 %.2610281310, 2                ; 2 uses
  %i.bfp = sub nsw i32 %i.bfo, %i.x
  %i.bfq = sext i32 %i.bfp to i64
  %i.bfr = getelementptr inbounds [4 x i8], ptr %i.bfg, i64 %i.bfq
  %i.bfs = load i32, ptr %i.bfr, align 4, !tbaa !4
  %i.bft = shl i32 %i.beu, 2                      ; 2 uses
  %i.bfu = sub nsw i32 %i.bft, %i.z
  %i.bfv = sext i32 %i.bfu to i64
  %i.bfw = getelementptr inbounds [4 x i8], ptr %i.bfg, i64 %i.bfv
  %i.bfx = load i32, ptr %i.bfw, align 4, !tbaa !4
  %i.bfy = add nsw i32 %i.bfx, %i.bfs
  %i.bfz = mul nsw i32 %i.bfy, %16
  %i.bga = ashr i32 %i.bfz, 16
  %i.bgb = add nsw i32 %i.bga, %i.bfn             ; 3 uses
  %i.bgc = icmp slt i32 %i.bgb, %.281076.2
  br i1 %i.bgc, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.bgd = load ptr, ptr @computeBiPred, align 8, !tbaa !10
  %i.bge = sub nsw i32 %.281076.2, %i.bgb
  %i.bgf = add nsw i32 %i.bfo, 80
  %i.bgg = add nsw i32 %i.bft, 80
  %i.bgh = tail call i32 %i.bgd(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.bge, i32 noundef %i.iz, i32 noundef %i.ja, i32 noundef %i.bgf, i32 noundef %i.bgg) #13
  %i.bgi = add nsw i32 %i.bgh, %i.bgb             ; 2 uses
  %i.bgj = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.bgk = getelementptr inbounds [8 x i8], ptr %i.bgj, i64 %i.bez
  %i.bgl = load ptr, ptr %i.bgk, align 8, !tbaa !34
  %i.bgm = getelementptr inbounds i8, ptr %i.bgl, i64 %i.bfd
  store i8 1, ptr %i.bgm, align 1, !tbaa !81
  %i.bgn = icmp slt i32 %i.bgi, %.281076.2
  br i1 %i.bgn, label %.thread1470, label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn
  %i.bgo = icmp eq i32 %.281030.2, %.2610281310
  %i.bgp = icmp eq i32 %.28.2, %.261311
  %or.cond1187 = select i1 %i.bgo, i1 %i.bgp, i1 false
  br i1 %or.cond1187, label %.loopexit, label %.thread1470

.loopexit:                                        ; preds = %bb.en, %.thread1470, %bb.fs, %.loopexit1236, %.loopexit1234, %.loopexit1241
  %.291077 = phi i32 [ %.61054, %.loopexit1241 ], [ %.281076.31475, %.thread1470 ], [ %.251073, %.loopexit1234 ], [ %.211069, %.loopexit1236 ], [ %.281076.2, %bb.fs ], [ %.201068, %bb.en ] ; 7 uses
  %.291031 = phi i32 [ %.61008, %.loopexit1241 ], [ %.281030.31477, %.thread1470 ], [ %.251027, %.loopexit1234 ], [ %.211023, %.loopexit1236 ], [ %.2610281310, %bb.fs ], [ %.201022, %bb.en ]
  %.29 = phi i32 [ %.6, %.loopexit1241 ], [ %.28.31478, %.thread1470 ], [ %.25, %.loopexit1234 ], [ %.21, %.loopexit1236 ], [ %.261311, %bb.fs ], [ %.20, %bb.en ]
  %i.bgq = ashr i32 %i.r, 2                       ; 2 uses
  %i.bgr = icmp sgt i32 %i.bgq, 0
  br i1 %i.bgr, label %.preheader.lr.ph, label %._crit_edge1323.split

.preheader.lr.ph:                                 ; preds = %.loopexit
  %i.bgs = ashr i32 %i.q, 2                       ; 6 uses
  %i.bgt = icmp sgt i32 %i.bgs, 0
  br i1 %i.bgt, label %.preheader.preheader, label %._crit_edge1323.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bgu = add nsw i32 %i.bgs, -1                 ; 2 uses
  %i.bgv = icmp eq i32 %i.bgu, 0
  %unroll_iter = and i32 %i.bgs, 2147483646
  %i.bgw = and i32 %i.q, 4
  %lcmp.mod.not = icmp eq i32 %i.bgw, 0
  %lcmp.mod1515 = trunc i32 %i.bgs to i1
  %i.bgx = icmp eq i32 %i.bgu, 0
  %unroll_iter1520 = and i32 %i.bgs, 2147483646
  %i.bgy = and i32 %i.q, 4
  %lcmp.mod1518.not = icmp eq i32 %i.bgy, 0
  %lcmp.mod1519 = trunc i32 %i.bgs to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge1321
  %.510471322 = phi i32 [ %i.bkh, %._crit_edge1321 ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.bgz = load ptr, ptr @img, align 8            ; 2 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgz, i64 180 ; 6 uses
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgz, i64 176 ; 6 uses
  %i.bhc = add nsw i32 %.510471322, %i.aq         ; 6 uses
  br i1 %i.ch, label %.lr.ph1320.split.us, label %.lr.ph1320.split

.lr.ph1320.split.us:                              ; preds = %.preheader
  %i.bhd = load ptr, ptr @fastme_l0_cost_bipred, align 8
  %i.bhe = getelementptr inbounds [8 x i8], ptr %i.bhd, i64 %i.n
  %i.bhf = load ptr, ptr %i.bhe, align 8, !tbaa !42 ; 3 uses
  br i1 %i.bgx, label %.epil.preheader1516, label %.lr.ph1320.split.us.new

.lr.ph1320.split.us.new:                          ; preds = %.lr.ph1320.split.us, %.lr.ph1320.split.us.new
  %.010351319.us = phi i32 [ %i.bif, %.lr.ph1320.split.us.new ], [ 0, %.lr.ph1320.split.us ] ; 3 uses
  %niter1521 = phi i32 [ %niter1521.next.1, %.lr.ph1320.split.us.new ], [ 0, %.lr.ph1320.split.us ]
  %i.bhg = load i32, ptr %i.bha, align 4, !tbaa !95
  %i.bhh = ashr i32 %i.bhg, 2
  %i.bhi = add nsw i32 %.010351319.us, %i.ar
  %i.bhj = add i32 %i.bhi, %i.bhh
  %i.bhk = sext i32 %i.bhj to i64
  %i.bhl = getelementptr inbounds [8 x i8], ptr %i.bhf, i64 %i.bhk
  %i.bhm = load ptr, ptr %i.bhl, align 8, !tbaa !53
  %i.bhn = load i32, ptr %i.bhb, align 8, !tbaa !96
  %i.bho = ashr i32 %i.bhn, 2
  %i.bhp = add i32 %i.bhc, %i.bho
  %i.bhq = sext i32 %i.bhp to i64
  %i.bhr = getelementptr inbounds [4 x i8], ptr %i.bhm, i64 %i.bhq
  store i32 %.291077, ptr %i.bhr, align 4, !tbaa !4
  %i.bhs = or disjoint i32 %.010351319.us, 1
  %i.bht = load i32, ptr %i.bha, align 4, !tbaa !95
  %i.bhu = ashr i32 %i.bht, 2
  %i.bhv = add nsw i32 %i.bhs, %i.ar
  %i.bhw = add i32 %i.bhv, %i.bhu
  %i.bhx = sext i32 %i.bhw to i64
  %i.bhy = getelementptr inbounds [8 x i8], ptr %i.bhf, i64 %i.bhx
  %i.bhz = load ptr, ptr %i.bhy, align 8, !tbaa !53
  %i.bia = load i32, ptr %i.bhb, align 8, !tbaa !96
  %i.bib = ashr i32 %i.bia, 2
  %i.bic = add i32 %i.bhc, %i.bib
  %i.bid = sext i32 %i.bic to i64
  %i.bie = getelementptr inbounds [4 x i8], ptr %i.bhz, i64 %i.bid
  store i32 %.291077, ptr %i.bie, align 4, !tbaa !4
  %i.bif = add nuw nsw i32 %.010351319.us, 2      ; 2 uses
  %niter1521.next.1 = add nuw nsw i32 %niter1521, 2 ; 2 uses
  %niter1521.ncmp.1 = icmp eq i32 %niter1521.next.1, %unroll_iter1520
  br i1 %niter1521.ncmp.1, label %._crit_edge1321.loopexit.unr-lcssa, label %.lr.ph1320.split.us.new, !llvm.loop !130

.lr.ph1320.split:                                 ; preds = %.preheader
  %i.big = load ptr, ptr @fastme_l1_cost_bipred, align 8
  %i.bih = getelementptr inbounds [8 x i8], ptr %i.big, i64 %i.n
  %i.bii = load ptr, ptr %i.bih, align 8, !tbaa !42 ; 3 uses
  br i1 %i.bgv, label %.epil.preheader, label %.lr.ph1320.split.new

.lr.ph1320.split.new:                             ; preds = %.lr.ph1320.split, %.lr.ph1320.split.new
  %.010351319 = phi i32 [ %i.bji, %.lr.ph1320.split.new ], [ 0, %.lr.ph1320.split ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph1320.split.new ], [ 0, %.lr.ph1320.split ]
  %i.bij = load i32, ptr %i.bha, align 4, !tbaa !95
  %i.bik = ashr i32 %i.bij, 2
  %i.bil = add nsw i32 %.010351319, %i.ar
  %i.bim = add i32 %i.bil, %i.bik
  %i.bin = sext i32 %i.bim to i64
  %i.bio = getelementptr inbounds [8 x i8], ptr %i.bii, i64 %i.bin
  %i.bip = load ptr, ptr %i.bio, align 8, !tbaa !53
  %i.biq = load i32, ptr %i.bhb, align 8, !tbaa !96
  %i.bir = ashr i32 %i.biq, 2
  %i.bis = add i32 %i.bhc, %i.bir
  %i.bit = sext i32 %i.bis to i64
  %i.biu = getelementptr inbounds [4 x i8], ptr %i.bip, i64 %i.bit
  store i32 %.291077, ptr %i.biu, align 4, !tbaa !4
  %i.biv = or disjoint i32 %.010351319, 1
  %i.biw = load i32, ptr %i.bha, align 4, !tbaa !95
  %i.bix = ashr i32 %i.biw, 2
  %i.biy = add nsw i32 %i.biv, %i.ar
  %i.biz = add i32 %i.biy, %i.bix
  %i.bja = sext i32 %i.biz to i64
  %i.bjb = getelementptr inbounds [8 x i8], ptr %i.bii, i64 %i.bja
  %i.bjc = load ptr, ptr %i.bjb, align 8, !tbaa !53
  %i.bjd = load i32, ptr %i.bhb, align 8, !tbaa !96
  %i.bje = ashr i32 %i.bjd, 2
  %i.bjf = add i32 %i.bhc, %i.bje
  %i.bjg = sext i32 %i.bjf to i64
  %i.bjh = getelementptr inbounds [4 x i8], ptr %i.bjc, i64 %i.bjg
  store i32 %.291077, ptr %i.bjh, align 4, !tbaa !4
  %i.bji = add nuw nsw i32 %.010351319, 2         ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1321.loopexit1510.unr-lcssa, label %.lr.ph1320.split.new, !llvm.loop !130

._crit_edge1321.loopexit.unr-lcssa:               ; preds = %.lr.ph1320.split.us.new
  br i1 %lcmp.mod1518.not, label %._crit_edge1321, label %.epil.preheader1516

.epil.preheader1516:                              ; preds = %._crit_edge1321.loopexit.unr-lcssa, %.lr.ph1320.split.us
  %.010351319.us.epil.init = phi i32 [ 0, %.lr.ph1320.split.us ], [ %i.bif, %._crit_edge1321.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1519)
  %i.bjj = load i32, ptr %i.bha, align 4, !tbaa !95
  %i.bjk = ashr i32 %i.bjj, 2
  %i.bjl = add nsw i32 %.010351319.us.epil.init, %i.ar
  %i.bjm = add i32 %i.bjl, %i.bjk
  %i.bjn = sext i32 %i.bjm to i64
  %i.bjo = getelementptr inbounds [8 x i8], ptr %i.bhf, i64 %i.bjn
  %i.bjp = load ptr, ptr %i.bjo, align 8, !tbaa !53
  %i.bjq = load i32, ptr %i.bhb, align 8, !tbaa !96
  %i.bjr = ashr i32 %i.bjq, 2
  %i.bjs = add i32 %i.bhc, %i.bjr
  %i.bjt = sext i32 %i.bjs to i64
  %i.bju = getelementptr inbounds [4 x i8], ptr %i.bjp, i64 %i.bjt
  store i32 %.291077, ptr %i.bju, align 4, !tbaa !4
  br label %._crit_edge1321

._crit_edge1321.loopexit1510.unr-lcssa:           ; preds = %.lr.ph1320.split.new
  br i1 %lcmp.mod.not, label %._crit_edge1321, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1321.loopexit1510.unr-lcssa, %.lr.ph1320.split
  %.010351319.epil.init = phi i32 [ 0, %.lr.ph1320.split ], [ %i.bji, %._crit_edge1321.loopexit1510.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1515)
  %i.bjv = load i32, ptr %i.bha, align 4, !tbaa !95
  %i.bjw = ashr i32 %i.bjv, 2
  %i.bjx = add nsw i32 %.010351319.epil.init, %i.ar
  %i.bjy = add i32 %i.bjx, %i.bjw
  %i.bjz = sext i32 %i.bjy to i64
  %i.bka = getelementptr inbounds [8 x i8], ptr %i.bii, i64 %i.bjz
  %i.bkb = load ptr, ptr %i.bka, align 8, !tbaa !53
  %i.bkc = load i32, ptr %i.bhb, align 8, !tbaa !96
  %i.bkd = ashr i32 %i.bkc, 2
  %i.bke = add i32 %i.bhc, %i.bkd
  %i.bkf = sext i32 %i.bke to i64
  %i.bkg = getelementptr inbounds [4 x i8], ptr %i.bkb, i64 %i.bkf
  store i32 %.291077, ptr %i.bkg, align 4, !tbaa !4
  br label %._crit_edge1321

._crit_edge1321:                                  ; preds = %.epil.preheader, %._crit_edge1321.loopexit1510.unr-lcssa, %.epil.preheader1516, %._crit_edge1321.loopexit.unr-lcssa
  %i.bkh = add nuw nsw i32 %.510471322, 1         ; 2 uses
  %exitcond1357.not = icmp eq i32 %i.bkh, %i.bgq
  br i1 %exitcond1357.not, label %._crit_edge1323.split, label %.preheader, !llvm.loop !131

._crit_edge1323.split:                            ; preds = %._crit_edge1321, %.preheader.lr.ph, %.loopexit
  %i.bki = sub nsw i32 %.291031, %3
  %i.bkj = trunc i32 %i.bki to i16
  store i16 %i.bkj, ptr %10, align 2, !tbaa !50
  %i.bkk = sub nsw i32 %.29, %4
  %i.bkl = trunc i32 %i.bkk to i16
  store i16 %i.bkl, ptr %11, align 2, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.291077
}

declare i32 @computeBiPredSAD2(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #6

declare i32 @computeBiPredSAD1(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #6

; Function Attrs: nounwind uwtable
define dso_local void @UMHEXSetMotionVectorPredictor(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i16 noundef signext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef writeonly captures(none) %9) local_unnamed_addr #4 {
bb.a:
  %10 = alloca %struct.pix_pos, align 4           ; 18 uses
  %11 = alloca %struct.pix_pos, align 4           ; 19 uses
  %12 = alloca %struct.pix_pos, align 4           ; 21 uses
  %13 = alloca %struct.pix_pos, align 4           ; 7 uses
  %i.a = shl nsw i32 %5, 2                        ; 3 uses
  %i.b = shl nsw i32 %6, 2                        ; 2 uses
  %i.c = load ptr, ptr @img, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !46   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.f = load i32, ptr @bipred_flag, align 4, !tbaa !4
  %.not = icmp eq i32 %i.f, 0                     ; 2 uses
  %i.g = load ptr, ptr @fastme_l0_cost_bipred, align 8
  %i.h = load ptr, ptr @fastme_l0_cost, align 8
  %i.i = select i1 %.not, ptr %i.h, ptr %i.g      ; 4 uses
  %i.j = load ptr, ptr @fastme_l1_cost_bipred, align 8
  %i.k = load ptr, ptr @fastme_l1_cost, align 8
  %i.l = select i1 %.not, ptr %i.k, ptr %i.j      ; 4 uses
  store i32 0, ptr @SAD_a, align 4, !tbaa !4
  store i32 0, ptr @SAD_b, align 4, !tbaa !4
  store i32 0, ptr @SAD_c, align 4, !tbaa !4
  store i32 0, ptr @SAD_d, align 4, !tbaa !4
  %i.m = add nsw i32 %i.a, -1                     ; 2 uses
  call void @getLuma4x4Neighbour(i32 noundef %i.e, i32 noundef %i.m, i32 noundef %i.b, ptr noundef nonnull %10) #13
  %i.n = add nsw i32 %i.b, -1                     ; 3 uses
  call void @getLuma4x4Neighbour(i32 noundef %i.e, i32 noundef %i.a, i32 noundef %i.n, ptr noundef nonnull %11) #13
  %i.o = add nsw i32 %7, %i.a                     ; 3 uses
  call void @getLuma4x4Neighbour(i32 noundef %i.e, i32 noundef %i.o, i32 noundef %i.n, ptr noundef nonnull %12) #13
  call void @getLuma4x4Neighbour(i32 noundef %i.e, i32 noundef %i.m, i32 noundef %i.n, ptr noundef nonnull %13) #13
  %i.p = icmp sgt i32 %6, 0
  br i1 %i.p, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.q = icmp slt i32 %5, 2
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp eq i32 %6, 2
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = icmp eq i32 %7, 16
  br i1 %i.s, label %.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.t = icmp eq i32 %i.o, 8
  br i1 %i.t, label %.thread, label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.u = icmp eq i32 %i.o, 16
  br i1 %i.u, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f, %bb.a
  %.pr = load i32, ptr %12, align 4, !tbaa !132
  %.not174 = icmp eq i32 %.pr, 0
  br i1 %.not174, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %12, ptr noundef nonnull align 4 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !134
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.v = load ptr, ptr @img, align 8, !tbaa !10   ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 15268
  %i.x = load i32, ptr %i.w, align 4, !tbaa !44
  %.not175 = icmp eq i32 %i.x, 0                  ; 2 uses
  br i1 %.not175, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr %10, align 4, !tbaa !132   ; 3 uses
  %.not176 = icmp eq i32 %i.y, 0
  br i1 %.not176, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !135
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !136
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !81
  %i.aj = sext i8 %i.ai to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ak = phi i32 [ %i.aj, %bb.j ], [ -1, %bb.i ] ; 2 uses
  %i.al = load i32, ptr %11, align 4, !tbaa !132  ; 3 uses
  %.not177 = icmp eq i32 %i.al, 0
  br i1 %.not177, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !135
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !136
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !81
  %i.aw = sext i8 %i.av to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ax = phi i32 [ %i.aw, %bb.l ], [ -1, %bb.k ] ; 2 uses
  %i.ay = load i32, ptr %12, align 4, !tbaa !132  ; 2 uses
  %.not178 = icmp eq i32 %i.ay, 0
  br i1 %.not178, label %bb.ah, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !135
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !34
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !136
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !81
  %i.bj = sext i8 %i.bi to i32
  br label %bb.ah

bb.o:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 14224
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !45 ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !46
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [536 x i8], ptr %i.bl, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 424
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !47
  %.not179 = icmp eq i32 %i.br, 0
  %i.bs = load i32, ptr %10, align 4, !tbaa !132  ; 6 uses
  %.not180 = icmp eq i32 %i.bs, 0                 ; 2 uses
  br i1 %.not179, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not180, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !137
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [536 x i8], ptr %i.bl, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 424
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !47
  %.not187 = icmp eq i32 %i.by, 0
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !135
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !34
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !136
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !81
  %i.cj = sext i8 %i.ci to i32
  %i.ck = zext i1 %.not187 to i32
  %spec.select279 = shl nsw i32 %i.cj, %i.ck
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
end_hunk_1
