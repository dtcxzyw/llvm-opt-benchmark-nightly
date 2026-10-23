Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastContour?download=true
inline.NumInlined: 300
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z15rcBuildContoursP9rcContextRK20rcCompactHeightfieldfiR12rcContourSeti:bb.a
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1314
  br i1 %epil.iter.cmp.not, label %._crit_edge165.i, label %bb.eo, !llvm.loop !53

._crit_edge165.i:                                 ; preds = %._crit_edge165.i.loopexit.unr-lcssa, %bb.eo, %._crit_edge.i381
  %.0101.lcssa.i = phi i32 [ %i.bgv, %._crit_edge.i381 ], [ %i.bjj, %._crit_edge165.i.loopexit.unr-lcssa ], [ %i.bij, %bb.eo ] ; 2 uses
  %i.bik = sext i32 %.0101.lcssa.i to i64
  %i.bil = shl nsw i64 %i.bik, 3
  %i.bim = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bil, i32 noundef 1) #9 ; 9 uses
  %.not.i383 = icmp eq ptr %i.bim, null
  br i1 %.not.i383, label %bb.eq, label %bb.er

bb.ep:                                            ; preds = %bb.ep, %.lr.ph164.i.new
  %indvars.iv199.i = phi i64 [ 0, %.lr.ph164.i.new ], [ %indvars.iv.next200.i.3, %bb.ep ] ; 5 uses
  %.0101162.i = phi i32 [ %i.bgv, %.lr.ph164.i.new ], [ %i.bjj, %bb.ep ]
  %niter1319 = phi i64 [ 0, %.lr.ph164.i.new ], [ %niter1319.next.3, %bb.ep ]
  %i.bin = getelementptr inbounds nuw [24 x i8], ptr %i.bgy, i64 %indvars.iv199.i
  %i.bio = load ptr, ptr %i.bin, align 8, !tbaa !150
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bio, i64 8
  %i.biq = load i32, ptr %i.bip, align 8, !tbaa !141
  %i.bir = add nsw i32 %i.biq, %.0101162.i
  %i.bis = getelementptr inbounds nuw [24 x i8], ptr %i.bgy, i64 %indvars.iv199.i
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bis, i64 24
  %i.biu = load ptr, ptr %i.bit, align 8, !tbaa !150
  %i.biv = getelementptr inbounds nuw i8, ptr %i.biu, i64 8
  %i.biw = load i32, ptr %i.biv, align 8, !tbaa !141
  %i.bix = add nsw i32 %i.biw, %i.bir
  %i.biy = getelementptr inbounds nuw [24 x i8], ptr %i.bgy, i64 %indvars.iv199.i
  %i.biz = getelementptr inbounds nuw i8, ptr %i.biy, i64 48
  %i.bja = load ptr, ptr %i.biz, align 8, !tbaa !150
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 8
  %i.bjc = load i32, ptr %i.bjb, align 8, !tbaa !141
  %i.bjd = add nsw i32 %i.bjc, %i.bix
  %i.bje = getelementptr inbounds nuw [24 x i8], ptr %i.bgy, i64 %indvars.iv199.i
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 72
  %i.bjg = load ptr, ptr %i.bjf, align 8, !tbaa !150
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bjg, i64 8
  %i.bji = load i32, ptr %i.bjh, align 8, !tbaa !141
  %i.bjj = add nsw i32 %i.bji, %i.bjd             ; 3 uses
  %indvars.iv.next200.i.3 = add nuw nsw i64 %indvars.iv199.i, 4 ; 2 uses
  %niter1319.next.3 = add i64 %niter1319, 4       ; 2 uses
  %niter1319.ncmp.3 = icmp eq i64 %niter1319.next.3, %unroll_iter1318
  br i1 %niter1319.ncmp.3, label %._crit_edge165.i.loopexit.unr-lcssa, label %bb.ep

bb.eq:                                            ; preds = %._crit_edge165.i
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %.0101.lcssa.i) #9
  br label %_ZL16mergeRegionHolesP9rcContextR15rcContourRegion.exit

bb.er:                                            ; preds = %._crit_edge165.i
  %i.bjk = load ptr, ptr %i.bgm, align 8, !tbaa !147 ; 3 uses
  %i.bjl = load i32, ptr %i.bgn, align 8, !tbaa !148
  %i.bjm = icmp sgt i32 %i.bjl, 0
  br i1 %i.bjm, label %.lr.ph192.i, label %_ZL16mergeRegionHolesP9rcContextR15rcContourRegion.exit

.lr.ph192.i:                                      ; preds = %bb.er
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjk, i64 8 ; 2 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bim, i64 4
  br label %bb.es

bb.es:                                            ; preds = %bb.fe, %.lr.ph192.i
  %indvars.iv208.i = phi i64 [ 0, %.lr.ph192.i ], [ %indvars.iv.next209.i, %bb.fe ] ; 5 uses
  %i.bjp = load ptr, ptr %i.bgr, align 8, !tbaa !149
  %i.bjq = getelementptr inbounds nuw [24 x i8], ptr %i.bjp, i64 %indvars.iv208.i ; 2 uses
  %i.bjr = load ptr, ptr %i.bjq, align 8, !tbaa !150 ; 7 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjr, i64 8 ; 6 uses
  %i.bjt = load i32, ptr %i.bjs, align 8, !tbaa !141
  %i.bju = icmp sgt i32 %i.bjt, 0
  br i1 %i.bju, label %.lr.ph187.i, label %._crit_edge188.i

.lr.ph187.i:                                      ; preds = %bb.es
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bjq, i64 16
  %i.bjw = load i32, ptr %i.bjv, align 8, !tbaa !151
  %i.bjx = getelementptr inbounds nuw [8 x i8], ptr %i.bim, i64 %indvars.iv208.i
  br label %bb.et

bb.et:                                            ; preds = %.thread135.i, %.lr.ph187.i
  %.0104185.i = phi i32 [ 0, %.lr.ph187.i ], [ %i.bpj, %.thread135.i ]
  %.0105183.i = phi i32 [ %i.bjw, %.lr.ph187.i ], [ %i.bpi, %.thread135.i ] ; 3 uses
  %i.bjy = load ptr, ptr %i.bjr, align 8, !tbaa !139
  %i.bjz = shl nsw i32 %.0105183.i, 2
  %i.bka = sext i32 %i.bjz to i64
  %i.bkb = getelementptr inbounds [4 x i8], ptr %i.bjy, i64 %i.bka ; 5 uses
  %i.bkc = load i32, ptr %i.bjn, align 8, !tbaa !141 ; 4 uses
  %i.bkd = icmp sgt i32 %i.bkc, 0
  br i1 %i.bkd, label %.lr.ph170.i, label %._crit_edge171.thread.i

._crit_edge171.thread.i:                          ; preds = %bb.et
  tail call void @qsort(ptr noundef nonnull %i.bim, i64 noundef 0, i64 noundef 8, ptr noundef nonnull @_ZL15compareDiagDistPKvS0_) #9
  br label %.thread135.i

.lr.ph170.i:                                      ; preds = %bb.et
  %i.bke = load ptr, ptr %i.bjk, align 8, !tbaa !139 ; 7 uses
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bkb, i64 8 ; 4 uses
  %i.bkg = zext nneg i32 %i.bkc to i64            ; 2 uses
  %.not239.i = icmp eq i32 %i.bkc, 1              ; 2 uses
  %i.bkh = select i1 %.not239.i, i64 0, i64 4
  %i.bki = getelementptr inbounds nuw [4 x i8], ptr %i.bke, i64 %i.bkh ; 2 uses
  %i.bkj = shl i32 %i.bkc, 2
  %i.bkk = add i32 %i.bkj, -4
  %i.bkl = sext i32 %i.bkk to i64
  %i.bkm = getelementptr inbounds [4 x i8], ptr %i.bke, i64 %i.bkl ; 2 uses
  %i.bkn = load i32, ptr %i.bke, align 4, !tbaa !12 ; 6 uses
  %i.bko = load i32, ptr %i.bkm, align 4, !tbaa !12 ; 4 uses
  %i.bkp = sub nsw i32 %i.bkn, %i.bko
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bki, i64 8
  %i.bkr = load i32, ptr %i.bkq, align 4, !tbaa !12 ; 3 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bkm, i64 8
  %i.bkt = load i32, ptr %i.bks, align 4, !tbaa !12 ; 3 uses
  %i.bku = sub nsw i32 %i.bkr, %i.bkt
  %i.bkv = mul nsw i32 %i.bku, %i.bkp
  %i.bkw = load i32, ptr %i.bki, align 4, !tbaa !12 ; 3 uses
  %i.bkx = sub nsw i32 %i.bkw, %i.bko
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bke, i64 8
  %i.bkz = load i32, ptr %i.bky, align 4, !tbaa !12 ; 6 uses
  %.neg.i.i.i.peel.i = sub i32 %i.bkt, %i.bkz     ; 2 uses
  %.neg8.i.i.i.peel.i = mul i32 %.neg.i.i.i.peel.i, %i.bkx
  %i.bla = add i32 %.neg8.i.i.i.peel.i, %i.bkv
  %i.blb = icmp slt i32 %i.bla, 1
  %i.blc = load i32, ptr %i.bkb, align 4, !tbaa !12 ; 5 uses
  %i.bld = sub nsw i32 %i.blc, %i.bkn             ; 2 uses
  br i1 %i.blb, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %.lr.ph170.i
  %i.ble = sub nsw i32 %i.bkr, %i.bkz
  %i.blf = mul nsw i32 %i.bld, %i.ble
  %i.blg = sub nsw i32 %i.bkw, %i.bkn
  %i.blh = load i32, ptr %i.bkf, align 4, !tbaa !12 ; 3 uses
  %.neg.i.i27.i.peel.i = sub i32 %i.bkz, %i.blh   ; 3 uses
  %.neg8.i.i28.i.peel.i = mul i32 %.neg.i.i27.i.peel.i, %i.blg
  %i.bli = add i32 %.neg8.i.i28.i.peel.i, %i.blf
  %i.blj = icmp slt i32 %i.bli, 1
  %i.blk = sub nsw i32 %i.bkn, %i.blc             ; 3 uses
  br i1 %i.blj, label %_ZL6inConeiiPKiS0_.exit.peel.i, label %_ZL6inConeiiPKiS0_.exit.thread.peel.i

_ZL6inConeiiPKiS0_.exit.peel.i:                   ; preds = %bb.eu
  %i.bll = sub nsw i32 %i.bkt, %i.blh
  %i.blm = mul nsw i32 %i.bll, %i.blk
  %i.bln = sub nsw i32 %i.bko, %i.blc
  %.neg.i.i29.i.peel.i = sub i32 %i.blh, %i.bkz
  %.neg8.i.i30.i.peel.i = mul i32 %.neg.i.i29.i.peel.i, %i.bln
  %i.blo = add i32 %.neg8.i.i30.i.peel.i, %i.blm
  %i.blp = icmp sgt i32 %i.blo, 0
  br i1 %i.blp, label %_ZL6inConeiiPKiS0_.exit.thread.peel.i, label %_ZL6inConeiiPKiS0_.exit.thread131.peel.i

bb.ev:                                            ; preds = %.lr.ph170.i
  %i.blq = mul nsw i32 %i.bld, %.neg.i.i.i.peel.i
  %i.blr = sub nsw i32 %i.bko, %i.bkn
  %i.bls = load i32, ptr %i.bkf, align 4, !tbaa !12 ; 3 uses
  %.neg.i.i23.i.peel.i = sub i32 %i.bkz, %i.bls   ; 2 uses
  %.neg8.i.i24.i.peel.i = mul i32 %.neg.i.i23.i.peel.i, %i.blr
  %i.blt = add i32 %.neg8.i.i24.i.peel.i, %i.blq
  %i.blu = icmp slt i32 %i.blt, 0
  br i1 %i.blu, label %.split.peel.i, label %_ZL6inConeiiPKiS0_.exit.thread131.peel.i

.split.peel.i:                                    ; preds = %bb.ev
  %i.blv = sub nsw i32 %i.bkn, %i.blc             ; 2 uses
  %i.blw = sub nsw i32 %i.bkr, %i.bls
  %i.blx = mul nsw i32 %i.blw, %i.blv
  %i.bly = sub nsw i32 %i.bkw, %i.blc
  %.neg.i.i25.i.peel.i = sub i32 %i.bls, %i.bkz
  %.neg8.i.i26.i.peel.i = mul i32 %.neg.i.i25.i.peel.i, %i.bly
  %i.blz = add i32 %.neg8.i.i26.i.peel.i, %i.blx
  %i.bma = icmp slt i32 %i.blz, 0
  br i1 %i.bma, label %_ZL6inConeiiPKiS0_.exit.thread.peel.i, label %_ZL6inConeiiPKiS0_.exit.thread131.peel.i

_ZL6inConeiiPKiS0_.exit.thread.peel.i:            ; preds = %.split.peel.i, %_ZL6inConeiiPKiS0_.exit.peel.i, %bb.eu
  %.pre-phi222.i = phi i32 [ %i.blk, %_ZL6inConeiiPKiS0_.exit.peel.i ], [ %i.blv, %.split.peel.i ], [ %i.blk, %bb.eu ] ; 2 uses
  %.pre-phi219.i = phi i32 [ %.neg.i.i27.i.peel.i, %_ZL6inConeiiPKiS0_.exit.peel.i ], [ %.neg.i.i23.i.peel.i, %.split.peel.i ], [ %.neg.i.i27.i.peel.i, %bb.eu ] ; 2 uses
  store i32 0, ptr %i.bim, align 4, !tbaa !152
  %i.bmb = mul nsw i32 %.pre-phi222.i, %.pre-phi222.i
  %i.bmc = mul nsw i32 %.pre-phi219.i, %.pre-phi219.i
  %i.bmd = add nuw nsw i32 %i.bmc, %i.bmb
  store i32 %i.bmd, ptr %i.bjo, align 4, !tbaa !16
  br label %_ZL6inConeiiPKiS0_.exit.thread131.peel.i

_ZL6inConeiiPKiS0_.exit.thread131.peel.i:         ; preds = %_ZL6inConeiiPKiS0_.exit.thread.peel.i, %.split.peel.i, %bb.ev, %_ZL6inConeiiPKiS0_.exit.peel.i
  %.1.peel.i = phi i32 [ 1, %_ZL6inConeiiPKiS0_.exit.thread.peel.i ], [ 0, %_ZL6inConeiiPKiS0_.exit.peel.i ], [ 0, %.split.peel.i ], [ 0, %bb.ev ] ; 2 uses
  br i1 %.not239.i, label %._crit_edge171.i, label %.peel.next.i

._crit_edge171.i:                                 ; preds = %_ZL6inConeiiPKiS0_.exit.thread131.i, %_ZL6inConeiiPKiS0_.exit.thread131.peel.i
  %.0103.lcssa.i = phi i32 [ %.1.peel.i, %_ZL6inConeiiPKiS0_.exit.thread131.peel.i ], [ %.1.i386, %_ZL6inConeiiPKiS0_.exit.thread131.i ] ; 3 uses
  %i.bme = sext i32 %.0103.lcssa.i to i64
  tail call void @qsort(ptr noundef nonnull %i.bim, i64 noundef %i.bme, i64 noundef 8, ptr noundef nonnull @_ZL15compareDiagDistPKvS0_) #9
  %i.bmf = icmp sgt i32 %.0103.lcssa.i, 0
  br i1 %i.bmf, label %.lr.ph182.i, label %.thread135.i

.lr.ph182.i:                                      ; preds = %._crit_edge171.i
  %i.bmg = load ptr, ptr %i.bjk, align 8, !tbaa !139 ; 2 uses
  %i.bmh = load i32, ptr %i.bjx, align 4, !tbaa !152
  %i.bmi = load i32, ptr %i.bjn, align 8, !tbaa !141
  %wide.trip.count215.i = zext nneg i32 %.0103.lcssa.i to i64
  br label %bb.ez

.peel.next.i:                                     ; preds = %_ZL6inConeiiPKiS0_.exit.thread131.peel.i, %_ZL6inConeiiPKiS0_.exit.thread131.i
  %indvars.iv202.i = phi i64 [ %indvars.iv.next203.i, %_ZL6inConeiiPKiS0_.exit.thread131.i ], [ 1, %_ZL6inConeiiPKiS0_.exit.thread131.peel.i ] ; 3 uses
  %.0103167.i = phi i32 [ %.1.i386, %_ZL6inConeiiPKiS0_.exit.thread131.i ], [ %.1.peel.i, %_ZL6inConeiiPKiS0_.exit.thread131.peel.i ] ; 5 uses
  %.idx.i385 = shl nuw nsw i64 %indvars.iv202.i, 4
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bke, i64 %.idx.i385 ; 2 uses
  %indvars.iv.next203.i = add nuw nsw i64 %indvars.iv202.i, 1 ; 4 uses
  %i.bmk = icmp samesign ult i64 %indvars.iv.next203.i, %i.bkg
  %i.bml = shl i64 %indvars.iv.next203.i, 2
  %i.bmm = and i64 %i.bml, 4294967292
  %i.bmn = select i1 %i.bmk, i64 %i.bmm, i64 0
  %i.bmo = getelementptr inbounds nuw [4 x i8], ptr %i.bke, i64 %i.bmn ; 2 uses
  %i.bmp = trunc i64 %indvars.iv202.i to i32      ; 2 uses
  %i.bmq = shl i32 %i.bmp, 2
  %i.bmr = add i32 %i.bmq, -4
  %i.bms = sext i32 %i.bmr to i64
  %i.bmt = getelementptr inbounds [4 x i8], ptr %i.bke, i64 %i.bms ; 2 uses
  %i.bmu = load i32, ptr %i.bmj, align 4, !tbaa !12 ; 6 uses
  %i.bmv = load i32, ptr %i.bmt, align 4, !tbaa !12 ; 4 uses
  %i.bmw = sub nsw i32 %i.bmu, %i.bmv
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bmo, i64 8
  %i.bmy = load i32, ptr %i.bmx, align 4, !tbaa !12 ; 3 uses
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmt, i64 8
  %i.bna = load i32, ptr %i.bmz, align 4, !tbaa !12 ; 3 uses
  %i.bnb = sub nsw i32 %i.bmy, %i.bna
  %i.bnc = mul nsw i32 %i.bnb, %i.bmw
  %i.bnd = load i32, ptr %i.bmo, align 4, !tbaa !12 ; 3 uses
  %i.bne = sub nsw i32 %i.bnd, %i.bmv
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bmj, i64 8
  %i.bng = load i32, ptr %i.bnf, align 4, !tbaa !12 ; 6 uses
  %.neg.i.i.i.i = sub i32 %i.bna, %i.bng          ; 2 uses
  %.neg8.i.i.i.i = mul i32 %.neg.i.i.i.i, %i.bne
  %i.bnh = add i32 %.neg8.i.i.i.i, %i.bnc
  %i.bni = icmp slt i32 %i.bnh, 1
  %i.bnj = load i32, ptr %i.bkb, align 4, !tbaa !12 ; 5 uses
  %i.bnk = sub nsw i32 %i.bnj, %i.bmu             ; 2 uses
  br i1 %i.bni, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %.peel.next.i
  %i.bnl = mul nsw i32 %i.bnk, %.neg.i.i.i.i
  %i.bnm = sub nsw i32 %i.bmv, %i.bmu
  %i.bnn = load i32, ptr %i.bkf, align 4, !tbaa !12 ; 3 uses
  %.neg.i.i23.i.i = sub i32 %i.bng, %i.bnn        ; 2 uses
  %.neg8.i.i24.i.i = mul i32 %.neg.i.i23.i.i, %i.bnm
  %i.bno = add i32 %.neg8.i.i24.i.i, %i.bnl
  %i.bnp = icmp slt i32 %i.bno, 0
  br i1 %i.bnp, label %.split.i387, label %_ZL6inConeiiPKiS0_.exit.thread131.i

.split.i387:                                      ; preds = %bb.ew
  %i.bnq = sub nsw i32 %i.bmu, %i.bnj             ; 2 uses
  %i.bnr = sub nsw i32 %i.bmy, %i.bnn
  %i.bns = mul nsw i32 %i.bnr, %i.bnq
  %i.bnt = sub nsw i32 %i.bnd, %i.bnj
  %.neg.i.i25.i.i = sub i32 %i.bnn, %i.bng
  %.neg8.i.i26.i.i = mul i32 %.neg.i.i25.i.i, %i.bnt
  %i.bnu = add i32 %.neg8.i.i26.i.i, %i.bns
  %i.bnv = icmp slt i32 %i.bnu, 0
  br i1 %i.bnv, label %_ZL6inConeiiPKiS0_.exit.thread.i, label %_ZL6inConeiiPKiS0_.exit.thread131.i

bb.ex:                                            ; preds = %.peel.next.i
  %i.bnw = sub nsw i32 %i.bmy, %i.bng
  %i.bnx = mul nsw i32 %i.bnk, %i.bnw
  %i.bny = sub nsw i32 %i.bnd, %i.bmu
  %i.bnz = load i32, ptr %i.bkf, align 4, !tbaa !12 ; 3 uses
  %.neg.i.i27.i.i = sub i32 %i.bng, %i.bnz        ; 3 uses
  %.neg8.i.i28.i.i = mul i32 %.neg.i.i27.i.i, %i.bny
  %i.boa = add i32 %.neg8.i.i28.i.i, %i.bnx
  %i.bob = icmp slt i32 %i.boa, 1
  %i.boc = sub nsw i32 %i.bmu, %i.bnj             ; 3 uses
  br i1 %i.bob, label %_ZL6inConeiiPKiS0_.exit.i, label %_ZL6inConeiiPKiS0_.exit.thread.i

_ZL6inConeiiPKiS0_.exit.i:                        ; preds = %bb.ex
  %i.bod = sub nsw i32 %i.bna, %i.bnz
  %i.boe = mul nsw i32 %i.bod, %i.boc
  %i.bof = sub nsw i32 %i.bmv, %i.bnj
  %.neg.i.i29.i.i = sub i32 %i.bnz, %i.bng
  %.neg8.i.i30.i.i = mul i32 %.neg.i.i29.i.i, %i.bof
  %i.bog = add i32 %.neg8.i.i30.i.i, %i.boe
  %i.boh = icmp sgt i32 %i.bog, 0
  br i1 %i.boh, label %_ZL6inConeiiPKiS0_.exit.thread.i, label %_ZL6inConeiiPKiS0_.exit.thread131.i

_ZL6inConeiiPKiS0_.exit.thread.i:                 ; preds = %_ZL6inConeiiPKiS0_.exit.i, %bb.ex, %.split.i387
  %.pre-phi224.i = phi i32 [ %i.boc, %_ZL6inConeiiPKiS0_.exit.i ], [ %i.bnq, %.split.i387 ], [ %i.boc, %bb.ex ] ; 2 uses
  %.pre-phi220.i = phi i32 [ %.neg.i.i27.i.i, %_ZL6inConeiiPKiS0_.exit.i ], [ %.neg.i.i23.i.i, %.split.i387 ], [ %.neg.i.i27.i.i, %bb.ex ] ; 2 uses
  %i.boi = sext i32 %.0103167.i to i64
  %i.boj = getelementptr inbounds [8 x i8], ptr %i.bim, i64 %i.boi ; 2 uses
  store i32 %i.bmp, ptr %i.boj, align 4, !tbaa !152
  %i.bok = mul nsw i32 %.pre-phi224.i, %.pre-phi224.i
  %i.bol = mul nsw i32 %.pre-phi220.i, %.pre-phi220.i
  %i.bom = add nuw nsw i32 %i.bol, %i.bok
  %i.bon = getelementptr inbounds nuw i8, ptr %i.boj, i64 4
  store i32 %i.bom, ptr %i.bon, align 4, !tbaa !16
  %i.boo = add nsw i32 %.0103167.i, 1
  br label %_ZL6inConeiiPKiS0_.exit.thread131.i

_ZL6inConeiiPKiS0_.exit.thread131.i:              ; preds = %_ZL6inConeiiPKiS0_.exit.thread.i, %_ZL6inConeiiPKiS0_.exit.i, %.split.i387, %bb.ew
  %.1.i386 = phi i32 [ %i.boo, %_ZL6inConeiiPKiS0_.exit.thread.i ], [ %.0103167.i, %_ZL6inConeiiPKiS0_.exit.i ], [ %.0103167.i, %.split.i387 ], [ %.0103167.i, %bb.ew ] ; 2 uses
  %exitcond206.not.i = icmp eq i64 %indvars.iv.next203.i, %i.bkg
  br i1 %exitcond206.not.i, label %._crit_edge171.i, label %.peel.next.i, !llvm.loop !54

bb.ey:                                            ; preds = %._crit_edge178.i
  %indvars.iv.next213.i = add nuw nsw i64 %indvars.iv212.i, 1 ; 2 uses
  %exitcond216.not.i = icmp eq i64 %indvars.iv.next213.i, %wide.trip.count215.i
  br i1 %exitcond216.not.i, label %.thread135.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %.lr.ph182.i
  %indvars.iv212.i = phi i64 [ 0, %.lr.ph182.i ], [ %indvars.iv.next213.i, %bb.ey ] ; 2 uses
  %i.bop = getelementptr inbounds nuw [8 x i8], ptr %i.bim, i64 %indvars.iv212.i
  %i.boq = load i32, ptr %i.bop, align 4, !tbaa !152 ; 3 uses
  %i.bor = shl nsw i32 %i.boq, 2
  %i.bos = sext i32 %i.bor to i64
  %i.bot = getelementptr inbounds [4 x i8], ptr %i.bmg, i64 %i.bos ; 2 uses
  %i.bou = tail call fastcc noundef zeroext i1 @_ZL19intersectSegContourPKiS0_iiS0_(ptr noundef %i.bot, ptr noundef nonnull %i.bkb, i32 noundef %i.bmh, i32 noundef %i.bmi, ptr noundef %i.bmg) ; 2 uses
  %i.bov = load i32, ptr %i.bgn, align 8, !tbaa !148
  %i.bow = sext i32 %i.bov to i64                 ; 2 uses
  %i.box = icmp sge i64 %indvars.iv208.i, %i.bow
  %.not117173.i = or i1 %i.bou, %i.box
  br i1 %.not117173.i, label %._crit_edge178.i, label %.lr.ph177.i

.lr.ph177.i:                                      ; preds = %bb.ez
  %i.boy = load ptr, ptr %i.bgr, align 8, !tbaa !149
  br label %bb.fa

._crit_edge178.i:                                 ; preds = %bb.fa, %bb.ez
  %.098.in.lcssa.i = phi i1 [ %i.bou, %bb.ez ], [ %i.bpe, %bb.fa ]
  br i1 %.098.in.lcssa.i, label %bb.ey, label %bb.fb

bb.fa:                                            ; preds = %bb.fa, %.lr.ph177.i
  %indvars.iv210.i = phi i64 [ %indvars.iv208.i, %.lr.ph177.i ], [ %indvars.iv.next211.i, %bb.fa ] ; 2 uses
  %i.boz = getelementptr inbounds nuw [24 x i8], ptr %i.boy, i64 %indvars.iv210.i
  %i.bpa = load ptr, ptr %i.boz, align 8, !tbaa !150 ; 2 uses
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.bpa, i64 8
  %i.bpc = load i32, ptr %i.bpb, align 8, !tbaa !141
  %i.bpd = load ptr, ptr %i.bpa, align 8, !tbaa !139
  %i.bpe = tail call fastcc noundef zeroext i1 @_ZL19intersectSegContourPKiS0_iiS0_(ptr noundef %i.bot, ptr noundef nonnull %i.bkb, i32 noundef -1, i32 noundef %i.bpc, ptr noundef %i.bpd) ; 2 uses
  %indvars.iv.next211.i = add nuw nsw i64 %indvars.iv210.i, 1 ; 2 uses
  %i.bpf = icmp sge i64 %indvars.iv.next211.i, %i.bow
  %.not117.i = or i1 %i.bpf, %i.bpe
  br i1 %.not117.i, label %._crit_edge178.i, label %bb.fa

bb.fb:                                            ; preds = %._crit_edge178.i
  %.not118.i = icmp eq i32 %i.boq, -1
  br i1 %.not118.i, label %.thread135.i, label %.thread148.i

.thread135.i:                                     ; preds = %bb.ey, %bb.fb, %._crit_edge171.i, %._crit_edge171.thread.i
  %i.bpg = add nsw i32 %.0105183.i, 1
  %i.bph = load i32, ptr %i.bjs, align 8, !tbaa !141 ; 2 uses
  %i.bpi = srem i32 %i.bpg, %i.bph
  %i.bpj = add nuw nsw i32 %.0104185.i, 1         ; 2 uses
  %i.bpk = icmp slt i32 %i.bpj, %i.bph
  br i1 %i.bpk, label %bb.et, label %._crit_edge188.i

._crit_edge188.i:                                 ; preds = %.thread135.i, %bb.es
  %i.bpl = load ptr, ptr %i.bgm, align 8, !tbaa !147
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef %i.bpl, ptr noundef nonnull %i.bjr) #9
  br label %bb.fe

.thread148.i:                                     ; preds = %bb.fb
  %i.bpm = load ptr, ptr %i.bgm, align 8, !tbaa !147 ; 4 uses
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 8 ; 4 uses
  %i.bpo = load i32, ptr %i.bpn, align 8, !tbaa !141
  %i.bpp = load i32, ptr %i.bjs, align 8, !tbaa !141
  %i.bpq = add i32 %i.bpo, 2
  %i.bpr = add i32 %i.bpq, %i.bpp
  %i.bps = sext i32 %i.bpr to i64
  %i.bpt = shl nsw i64 %i.bps, 4
  %i.bpu = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bpt, i32 noundef 0) #9 ; 4 uses
  %.not.i.not.i = icmp eq ptr %i.bpu, null
  br i1 %.not.i.not.i, label %_ZL13mergeContoursR9rcContourS0_ii.exit.i, label %.preheader56.i.i

.preheader56.i.i:                                 ; preds = %.thread148.i
  %i.bpv = load i32, ptr %i.bpn, align 8, !tbaa !141 ; 2 uses
  %.not5457.i.i = icmp slt i32 %i.bpv, 0
  br i1 %.not5457.i.i, label %.preheader.i.i, label %.lr.ph.i119.i

.lr.ph.i119.i:                                    ; preds = %.preheader56.i.i
  %i.bpw = load ptr, ptr %i.bpm, align 8, !tbaa !139
  br label %bb.fc

.preheader.loopexit.i.i:                          ; preds = %bb.fc
  %i.bpx = trunc nuw i64 %indvars.iv.next.i122.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.preheader56.i.i
  %.050.lcssa.i.i = phi i32 [ 0, %.preheader56.i.i ], [ %i.bpx, %.preheader.loopexit.i.i ] ; 2 uses
  %i.bpy = load i32, ptr %i.bjs, align 8, !tbaa !141 ; 2 uses
  %.not5560.i.i = icmp slt i32 %i.bpy, 0
  br i1 %.not5560.i.i, label %_ZL13mergeContoursR9rcContourS0_ii.exit.thread.i, label %.lr.ph63.i.i

.lr.ph63.i.i:                                     ; preds = %.preheader.i.i
  %i.bpz = load ptr, ptr %i.bjr, align 8, !tbaa !139
  %i.bqa = zext i32 %.050.lcssa.i.i to i64
  br label %bb.fd

bb.fc:                                            ; preds = %bb.fc, %.lr.ph.i119.i
  %indvars.iv.i120.i = phi i64 [ 0, %.lr.ph.i119.i ], [ %indvars.iv.next.i122.i, %bb.fc ] ; 3 uses
  %i.bqb = phi i32 [ %i.bpv, %.lr.ph.i119.i ], [ %i.bqs, %bb.fc ]
  %indvars66.i.i = trunc i64 %indvars.iv.i120.i to i32 ; 2 uses
  %.idx.i121.i = shl nuw nsw i64 %indvars.iv.i120.i, 4
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bpu, i64 %.idx.i121.i ; 4 uses
  %i.bqd = add nsw i32 %i.boq, %indvars66.i.i
  %i.bqe = srem i32 %i.bqd, %i.bqb
  %i.bqf = shl nsw i32 %i.bqe, 2
  %i.bqg = sext i32 %i.bqf to i64
  %i.bqh = getelementptr inbounds [4 x i8], ptr %i.bpw, i64 %i.bqg ; 4 uses
  %i.bqi = load i32, ptr %i.bqh, align 4, !tbaa !12
  store i32 %i.bqi, ptr %i.bqc, align 4, !tbaa !12
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqh, i64 4
  %i.bqk = load i32, ptr %i.bqj, align 4, !tbaa !12
end_hunk_0
