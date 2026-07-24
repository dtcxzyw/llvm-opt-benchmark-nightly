inline.NumInlined: 305
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@opj_t1_clbl_decode_processor:bb.a
  %i.bht = load float, ptr %i.bhs, align 8, !tbaa !170
  %i.bhu = fmul float %i.bht, 5.000000e-01        ; 3 uses
  %i.bhv = insertelement <4 x float> poison, float %i.bhu, i64 0
  %i.bhw = shufflevector <4 x float> %i.bhv, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bhx = and i32 %i.bhg, -16                    ; 2 uses
  %.not396 = icmp eq i32 %i.bhx, 0
  br i1 %.not396, label %.preheader288, label %.lr.ph

.preheader288.loopexit:                           ; preds = %.lr.ph
  %i.bhy = and i32 %i.bhg, -16
  br label %.preheader288

.preheader288:                                    ; preds = %.preheader288.loopexit, %bb.kz
  %.3249.lcssa = phi i32 [ 0, %bb.kz ], [ %i.bhy, %.preheader288.loopexit ] ; 3 uses
  %.0.lcssa = phi ptr [ %i.bfa, %bb.kz ], [ %i.bjf, %.preheader288.loopexit ] ; 3 uses
  %i.bhz = icmp ult i32 %.3249.lcssa, %i.bhg
  br i1 %i.bhz, label %.lr.ph375.preheader, label %.loopexit

.lr.ph375.preheader:                              ; preds = %.preheader288
  %i.bia = and i32 %i.bhg, 15
  %i.bib = add nsw i32 %i.bia, -1                 ; 2 uses
  %i.bic = zext i32 %i.bib to i64
  %i.bid = add nuw nsw i64 %i.bic, 1              ; 2 uses
  %min.iters.check795 = icmp ult i32 %i.bib, 7
  br i1 %min.iters.check795, label %.lr.ph375.preheader857, label %vector.ph796

vector.ph796:                                     ; preds = %.lr.ph375.preheader
  %n.vec798 = and i64 %i.bid, 8589934584          ; 4 uses
  %i.bie = shl nuw nsw i64 %n.vec798, 2
  %i.bif = getelementptr i8, ptr %.0.lcssa, i64 %i.bie
  %i.big = trunc i64 %n.vec798 to i32
  %i.bih = add i32 %.3249.lcssa, %i.big
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bhu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body799

vector.body799:                                   ; preds = %vector.body799, %vector.ph796
  %index800 = phi i64 [ 0, %vector.ph796 ], [ %index.next802, %vector.body799 ] ; 2 uses
  %i.bii = shl i64 %index800, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %i.bii ; 4 uses
  %i.bij = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3
  %wide.load801 = load <4 x i32>, ptr %i.bij, align 4, !tbaa !3
  %i.bik = sitofp <4 x i32> %wide.load to <4 x float>
  %i.bil = sitofp <4 x i32> %wide.load801 to <4 x float>
  %i.bim = fmul <4 x float> %broadcast.splat, %i.bik
  %i.bin = fmul <4 x float> %broadcast.splat, %i.bil
  %i.bio = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %i.bim, ptr %next.gep, align 4
  store <4 x float> %i.bin, ptr %i.bio, align 4
  %index.next802 = add nuw i64 %index800, 8       ; 2 uses
  %i.bip = icmp eq i64 %index.next802, %n.vec798
  br i1 %i.bip, label %middle.block803, label %vector.body799, !llvm.loop !171

middle.block803:                                  ; preds = %vector.body799
  %cmp.n804 = icmp eq i64 %i.bid, %n.vec798
  br i1 %cmp.n804, label %.loopexit, label %.lr.ph375.preheader857

.lr.ph375.preheader857:                           ; preds = %.lr.ph375.preheader, %middle.block803
  %.1374.ph = phi ptr [ %.0.lcssa, %.lr.ph375.preheader ], [ %i.bif, %middle.block803 ]
  %.4373.ph = phi i32 [ %.3249.lcssa, %.lr.ph375.preheader ], [ %i.bih, %middle.block803 ]
  br label %.lr.ph375

.lr.ph:                                           ; preds = %bb.kz, %.lr.ph
  %.0370 = phi ptr [ %i.bjf, %.lr.ph ], [ %i.bfa, %bb.kz ] ; 6 uses
  %.3249369 = phi i32 [ %i.bjg, %.lr.ph ], [ 0, %bb.kz ]
  %i.biq = load <4 x i32>, ptr %.0370, align 16, !tbaa !48
  %i.bir = sitofp <4 x i32> %i.biq to <4 x float>
  %i.bis = getelementptr inbounds nuw i8, ptr %.0370, i64 16 ; 2 uses
  %i.bit = load <4 x i32>, ptr %i.bis, align 16, !tbaa !48
  %i.biu = sitofp <4 x i32> %i.bit to <4 x float>
  %i.biv = getelementptr inbounds nuw i8, ptr %.0370, i64 32 ; 2 uses
  %i.biw = load <4 x i32>, ptr %i.biv, align 16, !tbaa !48
  %i.bix = sitofp <4 x i32> %i.biw to <4 x float>
  %i.biy = getelementptr inbounds nuw i8, ptr %.0370, i64 48 ; 2 uses
  %i.biz = load <4 x i32>, ptr %i.biy, align 16, !tbaa !48
  %i.bja = sitofp <4 x i32> %i.biz to <4 x float>
  %i.bjb = fmul <4 x float> %i.bhw, %i.bir
  store <4 x float> %i.bjb, ptr %.0370, align 16, !tbaa !48
  %i.bjc = fmul <4 x float> %i.bhw, %i.biu
  store <4 x float> %i.bjc, ptr %i.bis, align 16, !tbaa !48
  %i.bjd = fmul <4 x float> %i.bhw, %i.bix
  store <4 x float> %i.bjd, ptr %i.biv, align 16, !tbaa !48
  %i.bje = fmul <4 x float> %i.bhw, %i.bja
  store <4 x float> %i.bje, ptr %i.biy, align 16, !tbaa !48
  %i.bjf = getelementptr inbounds nuw i8, ptr %.0370, i64 64 ; 2 uses
  %i.bjg = add nuw i32 %.3249369, 16              ; 2 uses
  %i.bjh = icmp ult i32 %i.bjg, %i.bhx
  br i1 %i.bjh, label %.lr.ph, label %.preheader288.loopexit, !llvm.loop !172

.lr.ph375:                                        ; preds = %.lr.ph375.preheader857, %.lr.ph375
  %.1374 = phi ptr [ %i.bjl, %.lr.ph375 ], [ %.1374.ph, %.lr.ph375.preheader857 ] ; 3 uses
  %.4373 = phi i32 [ %i.bjm, %.lr.ph375 ], [ %.4373.ph, %.lr.ph375.preheader857 ]
  %i.bji = load i32, ptr %.1374, align 4, !tbaa !3
  %i.bjj = sitofp i32 %i.bji to float
  %i.bjk = fmul float %i.bhu, %i.bjj
  store float %i.bjk, ptr %.1374, align 4
  %i.bjl = getelementptr inbounds nuw i8, ptr %.1374, i64 4
  %i.bjm = add nuw i32 %.4373, 1                  ; 2 uses
  %exitcond484.not = icmp eq i32 %i.bjm, %i.bhg
  br i1 %exitcond484.not, label %.loopexit, label %.lr.ph375, !llvm.loop !173

bb.la:                                            ; preds = %.loopexit292
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.bjo = load i32, ptr %i.bjn, align 4, !tbaa !167
  %i.bjp = icmp eq i32 %i.bjo, 1
  %i.bjq = zext i32 %i.av to i64                  ; 7 uses
  br i1 %i.bjp, label %bb.lb, label %bb.ld

bb.lb:                                            ; preds = %bb.la
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.bjs = load ptr, ptr %i.bjr, align 8, !tbaa !174 ; 2 uses
  %i.bjt = sext i32 %.0245 to i64                 ; 2 uses
  %i.bju = mul nsw i64 %i.bjt, %i.bjq
  %i.bjv = sext i32 %.0244 to i64                 ; 2 uses
  %i.bjw = getelementptr [4 x i8], ptr %i.bjs, i64 %i.bju
  %i.bjx = getelementptr [4 x i8], ptr %i.bjw, i64 %i.bjv ; 2 uses
  %.not398 = icmp eq i32 %i.bff, 0
  br i1 %.not398, label %.loopexit, label %.preheader283.lr.ph

.preheader283.lr.ph:                              ; preds = %bb.lb
  %i.bjy = ptrtoaddr ptr %i.bjs to i64
  %i.bjz = and i32 %i.bfd, -4                     ; 2 uses
  %.not399 = icmp eq i32 %i.bjz, 0
  %i.bka = zext i32 %i.bjz to i64
  %wide.trip.count503 = zext i32 %i.bff to i64
  %wide.trip.count498 = zext i32 %i.bfd to i64    ; 5 uses
  %i.bkb = mul nsw i64 %i.bjt, %i.bjq
  %i.bkc = add i64 %i.bkb, %i.bjv
  %i.bkd = shl i64 %i.bkc, 2
  %i.bke = add i64 %i.bkd, %i.bjy
  %i.bkf = sub i64 %i.bke, %i.bfb
  %i.bkg = shl nuw nsw i64 %i.bjq, 2
  %i.bkh = add nsw i64 %wide.trip.count498, -1
  br label %.preheader283

.preheader283:                                    ; preds = %.preheader283.lr.ph, %._crit_edge392
  %indvars.iv500 = phi i64 [ 0, %.preheader283.lr.ph ], [ %indvars.iv.next501, %._crit_edge392 ] ; 8 uses
  %i.bki = mul i64 %i.bkg, %indvars.iv500
  %i.bkj = add i64 %i.bkf, %i.bki
  %i.bkk = trunc i64 %indvars.iv500 to i32
  %i.bkl = mul i32 %i.bfd, %i.bkk
  %i.bkm = trunc i64 %indvars.iv500 to i32
  %i.bkn = mul i32 %i.bfd, %i.bkm
  br i1 %.not399, label %.preheader, label %.lr.ph388

.lr.ph388:                                        ; preds = %.preheader283
  %i.bko = trunc nuw i64 %indvars.iv500 to i32
  %i.bkp = mul i32 %i.bfd, %i.bko
  %i.bkq = mul nuw i64 %indvars.iv500, %i.bjq
  %i.bkr = getelementptr inbounds nuw [4 x i8], ptr %i.bjx, i64 %i.bkq
  br label %bb.lc

.preheader.loopexit:                              ; preds = %bb.lc
  %i.bks = trunc nuw i64 %indvars.iv.next493 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader283
  %.5.lcssa = phi i32 [ 0, %.preheader283 ], [ %i.bks, %.preheader.loopexit ] ; 4 uses
  %i.bkt = icmp ult i32 %.5.lcssa, %i.bfd
  br i1 %i.bkt, label %.lr.ph391, label %._crit_edge392

.lr.ph391:                                        ; preds = %.preheader
  %i.bku = trunc nuw i64 %indvars.iv500 to i32
  %i.bkv = mul i32 %i.bfd, %i.bku                 ; 4 uses
  %i.bkw = mul nuw i64 %indvars.iv500, %i.bjq
  %i.bkx = getelementptr inbounds nuw [4 x i8], ptr %i.bjx, i64 %i.bkw ; 4 uses
  %i.bky = zext i32 %.5.lcssa to i64              ; 8 uses
  %i.bkz = sub nsw i64 %wide.trip.count498, %i.bky ; 3 uses
  %min.iters.check841 = icmp ult i64 %i.bkz, 12
  br i1 %min.iters.check841, label %scalar.ph840.preheader, label %vector.scevcheck839

vector.scevcheck839:                              ; preds = %.lr.ph391
  %i.bla = xor i64 %i.bky, -1
  %i.blb = add nsw i64 %i.bla, %wide.trip.count498 ; 2 uses
  %i.blc = add i32 %.5.lcssa, %i.bkn
  %i.bld = trunc i64 %i.blb to i32
  %i.ble = xor i32 %i.blc, -1
  %i.blf = icmp ult i32 %i.ble, %i.bld
  %i.blg = icmp ugt i64 %i.blb, 4294967295
  %i.blh = or i1 %i.blf, %i.blg
  br i1 %i.blh, label %scalar.ph840.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck839
  %i.bli = shl nuw nsw i64 %i.bky, 2
  %i.blj = add i64 %i.bkj, %i.bli
  %i.blk = add i32 %.5.lcssa, %i.bkl
  %i.bll = zext i32 %i.blk to i64
  %i.blm = shl nuw nsw i64 %i.bll, 2
  %i.bln = sub i64 %i.blm, %i.blj
  %diff.check = icmp ugt i64 %i.bln, -32
  br i1 %diff.check, label %scalar.ph840.preheader, label %vector.ph842

vector.ph842:                                     ; preds = %vector.memcheck
  %n.vec844 = and i64 %i.bkz, -8                  ; 3 uses
  %i.blo = add nsw i64 %n.vec844, %i.bky
  br label %vector.body845

vector.body845:                                   ; preds = %vector.body845, %vector.ph842
  %index846 = phi i64 [ 0, %vector.ph842 ], [ %index.next849, %vector.body845 ] ; 2 uses
  %i.blp = add i64 %index846, %i.bky              ; 2 uses
  %i.blq = trunc nuw i64 %i.blp to i32
  %i.blr = add i32 %i.bkv, %i.blq
  %i.bls = zext i32 %i.blr to i64
  %i.blt = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bls ; 2 uses
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blt, i64 16
  %wide.load847 = load <4 x i32>, ptr %i.blt, align 4, !tbaa !3
  %wide.load848 = load <4 x i32>, ptr %i.blu, align 4, !tbaa !3
  %i.blv = sdiv <4 x i32> %wide.load847, splat (i32 2)
  %i.blw = sdiv <4 x i32> %wide.load848, splat (i32 2)
  %i.blx = getelementptr inbounds nuw [4 x i8], ptr %i.bkx, i64 %i.blp ; 2 uses
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blx, i64 16
  store <4 x i32> %i.blv, ptr %i.blx, align 4, !tbaa !3
  store <4 x i32> %i.blw, ptr %i.bly, align 4, !tbaa !3
  %index.next849 = add nuw i64 %index846, 8       ; 2 uses
  %i.blz = icmp eq i64 %index.next849, %n.vec844
  br i1 %i.blz, label %middle.block850, label %vector.body845, !llvm.loop !175

middle.block850:                                  ; preds = %vector.body845
  %cmp.n851 = icmp eq i64 %i.bkz, %n.vec844
  br i1 %cmp.n851, label %._crit_edge392, label %scalar.ph840.preheader

scalar.ph840.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck839, %.lr.ph391, %middle.block850
  %indvars.iv495.ph = phi i64 [ %i.bky, %vector.memcheck ], [ %i.bky, %vector.scevcheck839 ], [ %i.bky, %.lr.ph391 ], [ %i.blo, %middle.block850 ] ; 6 uses
  %i.bma = sub nsw i64 %wide.trip.count498, %indvars.iv495.ph
  %xtraiter932 = and i64 %i.bma, 1
  %lcmp.mod933.not = icmp eq i64 %xtraiter932, 0
  br i1 %lcmp.mod933.not, label %scalar.ph840.prol.loopexit, label %scalar.ph840.prol

scalar.ph840.prol:                                ; preds = %scalar.ph840.preheader
  %i.bmb = trunc nuw i64 %indvars.iv495.ph to i32
  %i.bmc = add i32 %i.bkv, %i.bmb
  %i.bmd = zext i32 %i.bmc to i64
  %i.bme = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bmd
  %i.bmf = load i32, ptr %i.bme, align 4, !tbaa !3
  %i.bmg = sdiv i32 %i.bmf, 2
  %i.bmh = getelementptr inbounds nuw [4 x i8], ptr %i.bkx, i64 %indvars.iv495.ph
  store i32 %i.bmg, ptr %i.bmh, align 4, !tbaa !3
  %indvars.iv.next496.prol = add nuw nsw i64 %indvars.iv495.ph, 1
  br label %scalar.ph840.prol.loopexit

scalar.ph840.prol.loopexit:                       ; preds = %scalar.ph840.prol, %scalar.ph840.preheader
  %indvars.iv495.unr = phi i64 [ %indvars.iv495.ph, %scalar.ph840.preheader ], [ %indvars.iv.next496.prol, %scalar.ph840.prol ]
  %i.bmi = icmp eq i64 %indvars.iv495.ph, %i.bkh
  br i1 %i.bmi, label %._crit_edge392, label %scalar.ph840

bb.lc:                                            ; preds = %.lr.ph388, %bb.lc
  %indvars.iv492 = phi i64 [ 0, %.lr.ph388 ], [ %indvars.iv.next493, %bb.lc ] ; 3 uses
  %i.bmj = trunc nuw i64 %indvars.iv492 to i32
  %i.bmk = add i32 %i.bkp, %i.bmj                 ; 4 uses
  %i.bml = zext i32 %i.bmk to i64
  %i.bmm = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bml
  %i.bmn = load i32, ptr %i.bmm, align 4, !tbaa !3
  %i.bmo = add i32 %i.bmk, 1
  %i.bmp = zext i32 %i.bmo to i64
  %i.bmq = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bmp
  %i.bmr = load i32, ptr %i.bmq, align 4, !tbaa !3
  %i.bms = add i32 %i.bmk, 2
  %i.bmt = zext i32 %i.bms to i64
  %i.bmu = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bmt
  %i.bmv = load i32, ptr %i.bmu, align 4, !tbaa !3
  %i.bmw = add i32 %i.bmk, 3
  %i.bmx = zext i32 %i.bmw to i64
  %i.bmy = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bmx
  %i.bmz = load i32, ptr %i.bmy, align 4, !tbaa !3
  %i.bna = getelementptr inbounds nuw [4 x i8], ptr %i.bkr, i64 %indvars.iv492
  %i.bnb = insertelement <4 x i32> poison, i32 %i.bmn, i64 0
  %i.bnc = insertelement <4 x i32> %i.bnb, i32 %i.bmr, i64 1
  %i.bnd = insertelement <4 x i32> %i.bnc, i32 %i.bmv, i64 2
  %i.bne = insertelement <4 x i32> %i.bnd, i32 %i.bmz, i64 3
  %i.bnf = sdiv <4 x i32> %i.bne, splat (i32 2)
  store <4 x i32> %i.bnf, ptr %i.bna, align 4, !tbaa !3
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 4 ; 3 uses
  %i.bng = icmp samesign ult i64 %indvars.iv.next493, %i.bka
  br i1 %i.bng, label %bb.lc, label %.preheader.loopexit, !llvm.loop !176

scalar.ph840:                                     ; preds = %scalar.ph840.prol.loopexit, %scalar.ph840
  %indvars.iv495 = phi i64 [ %indvars.iv.next496.1, %scalar.ph840 ], [ %indvars.iv495.unr, %scalar.ph840.prol.loopexit ] ; 4 uses
  %i.bnh = trunc nuw i64 %indvars.iv495 to i32
  %i.bni = add i32 %i.bkv, %i.bnh
  %i.bnj = zext i32 %i.bni to i64
  %i.bnk = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bnj
  %i.bnl = load i32, ptr %i.bnk, align 4, !tbaa !3
  %i.bnm = sdiv i32 %i.bnl, 2
  %i.bnn = getelementptr inbounds nuw [4 x i8], ptr %i.bkx, i64 %indvars.iv495
  store i32 %i.bnm, ptr %i.bnn, align 4, !tbaa !3
  %indvars.iv.next496 = add nuw nsw i64 %indvars.iv495, 1 ; 2 uses
  %i.bno = trunc nuw i64 %indvars.iv.next496 to i32
  %i.bnp = add i32 %i.bkv, %i.bno
  %i.bnq = zext i32 %i.bnp to i64
  %i.bnr = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bnq
  %i.bns = load i32, ptr %i.bnr, align 4, !tbaa !3
  %i.bnt = sdiv i32 %i.bns, 2
  %i.bnu = getelementptr inbounds nuw [4 x i8], ptr %i.bkx, i64 %indvars.iv.next496
  store i32 %i.bnt, ptr %i.bnu, align 4, !tbaa !3
  %indvars.iv.next496.1 = add nuw nsw i64 %indvars.iv495, 2 ; 2 uses
  %exitcond499.not.1 = icmp eq i64 %indvars.iv.next496.1, %wide.trip.count498
  br i1 %exitcond499.not.1, label %._crit_edge392, label %scalar.ph840, !llvm.loop !177

._crit_edge392:                                   ; preds = %scalar.ph840.prol.loopexit, %scalar.ph840, %middle.block850, %.preheader
  %indvars.iv.next501 = add nuw nsw i64 %indvars.iv500, 1 ; 2 uses
  %exitcond504.not = icmp eq i64 %indvars.iv.next501, %wide.trip.count503
  br i1 %exitcond504.not, label %.loopexit, label %.preheader283, !llvm.loop !178

bb.ld:                                            ; preds = %bb.la
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.bnw = load float, ptr %i.bnv, align 8, !tbaa !170
  %i.bnx = fmul float %i.bnw, 5.000000e-01        ; 2 uses
  %i.bny = icmp ne i32 %i.bff, 0
  %i.bnz = icmp ne i32 %i.bfd, 0
  %or.cond395 = select i1 %i.bny, i1 %i.bnz, i1 false
  br i1 %or.cond395, label %.preheader284.preheader, label %.loopexit

.preheader284.preheader:                          ; preds = %bb.ld
  %i.boa = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.bob = load ptr, ptr %i.boa, align 8, !tbaa !174
  %i.boc = sext i32 %.0245 to i64
  %i.bod = mul nsw i64 %i.boc, %i.bjq
  %i.boe = getelementptr [4 x i8], ptr %i.bob, i64 %i.bod
  %i.bof = sext i32 %.0244 to i64
  %i.bog = getelementptr [4 x i8], ptr %i.boe, i64 %i.bof
  %i.boh = zext i32 %i.bfd to i64                 ; 2 uses
  %min.iters.check821 = icmp ult i32 %i.bfd, 8
  %n.vec824 = and i64 %i.boh, 4294967288          ; 4 uses
  %i.boi = shl nuw nsw i64 %n.vec824, 2           ; 2 uses
  %i.boj = trunc nuw i64 %n.vec824 to i32
  %broadcast.splatinsert825 = insertelement <4 x float> poison, float %i.bnx, i64 0
  %broadcast.splat826 = shufflevector <4 x float> %broadcast.splatinsert825, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n835 = icmp eq i64 %n.vec824, %i.boh
  br label %.preheader284

.preheader284:                                    ; preds = %.preheader284.preheader, %._crit_edge382
  %.2386 = phi ptr [ %.lcssa, %._crit_edge382 ], [ %i.bfa, %.preheader284.preheader ] ; 3 uses
  %.0243385 = phi ptr [ %i.bpa, %._crit_edge382 ], [ %i.bog, %.preheader284.preheader ] ; 4 uses
  %.3253384 = phi i32 [ %i.bpb, %._crit_edge382 ], [ 0, %.preheader284.preheader ]
  br i1 %min.iters.check821, label %scalar.ph820.preheader, label %vector.ph822

vector.ph822:                                     ; preds = %.preheader284
  %i.bok = getelementptr i8, ptr %.2386, i64 %i.boi ; 2 uses
  %i.bol = getelementptr i8, ptr %.0243385, i64 %i.boi
  br label %vector.body827

vector.body827:                                   ; preds = %vector.body827, %vector.ph822
  %index828 = phi i64 [ 0, %vector.ph822 ], [ %index.next833, %vector.body827 ] ; 2 uses
  %i.bom = shl i64 %index828, 2                   ; 2 uses
  %next.gep829 = getelementptr i8, ptr %.2386, i64 %i.bom ; 2 uses
  %next.gep830 = getelementptr i8, ptr %.0243385, i64 %i.bom ; 2 uses
  %i.bon = getelementptr i8, ptr %next.gep829, i64 16
  %wide.load831 = load <4 x i32>, ptr %next.gep829, align 4, !tbaa !3
  %wide.load832 = load <4 x i32>, ptr %i.bon, align 4, !tbaa !3
  %i.boo = sitofp <4 x i32> %wide.load831 to <4 x float>
  %i.bop = sitofp <4 x i32> %wide.load832 to <4 x float>
  %i.boq = fmul <4 x float> %broadcast.splat826, %i.boo
  %i.bor = fmul <4 x float> %broadcast.splat826, %i.bop
  %i.bos = getelementptr i8, ptr %next.gep830, i64 16
  store <4 x float> %i.boq, ptr %next.gep830, align 4, !tbaa !179
  store <4 x float> %i.bor, ptr %i.bos, align 4, !tbaa !179
  %index.next833 = add nuw i64 %index828, 8       ; 2 uses
  %i.bot = icmp eq i64 %index.next833, %n.vec824
  br i1 %i.bot, label %middle.block834, label %vector.body827, !llvm.loop !180

middle.block834:                                  ; preds = %vector.body827
  br i1 %cmp.n835, label %._crit_edge382, label %scalar.ph820.preheader

scalar.ph820.preheader:                           ; preds = %.preheader284, %middle.block834
  %.3380.ph = phi ptr [ %.2386, %.preheader284 ], [ %i.bok, %middle.block834 ]
  %.0242379.ph = phi ptr [ %.0243385, %.preheader284 ], [ %i.bol, %middle.block834 ]
  %.7378.ph = phi i32 [ 0, %.preheader284 ], [ %i.boj, %middle.block834 ]
  br label %scalar.ph820

scalar.ph820:                                     ; preds = %scalar.ph820.preheader, %scalar.ph820
  %.3380 = phi ptr [ %i.box, %scalar.ph820 ], [ %.3380.ph, %scalar.ph820.preheader ] ; 2 uses
  %.0242379 = phi ptr [ %i.boy, %scalar.ph820 ], [ %.0242379.ph, %scalar.ph820.preheader ] ; 2 uses
  %.7378 = phi i32 [ %i.boz, %scalar.ph820 ], [ %.7378.ph, %scalar.ph820.preheader ]
  %i.bou = load i32, ptr %.3380, align 4, !tbaa !3
  %i.bov = sitofp i32 %i.bou to float
  %i.bow = fmul float %i.bnx, %i.bov
  store float %i.bow, ptr %.0242379, align 4, !tbaa !179
  %i.box = getelementptr inbounds nuw i8, ptr %.3380, i64 4 ; 2 uses
  %i.boy = getelementptr inbounds nuw i8, ptr %.0242379, i64 4
  %i.boz = add nuw i32 %.7378, 1                  ; 2 uses
  %exitcond490.not = icmp eq i32 %i.boz, %i.bfd
  br i1 %exitcond490.not, label %._crit_edge382, label %scalar.ph820, !llvm.loop !181

._crit_edge382:                                   ; preds = %scalar.ph820, %middle.block834
  %.lcssa = phi ptr [ %i.bok, %middle.block834 ], [ %i.box, %scalar.ph820 ]
  %i.bpa = getelementptr inbounds nuw [4 x i8], ptr %.0243385, i64 %i.bjq
  %i.bpb = add nuw i32 %.3253384, 1               ; 2 uses
  %exitcond491.not = icmp eq i32 %i.bpb, %i.bff
  br i1 %exitcond491.not, label %.loopexit, label %.preheader284, !llvm.loop !182

.loopexit.sink.split:                             ; preds = %bb.y, %.critedge.i, %bb.ac, %bb.v, %bb.u, %bb.g, %bb.n, %opj_t1_destroy.exit
  %.sink.in = phi ptr [ %i.aw, %bb.u ], [ %i.aa, %bb.g ], [ %i.aw, %opj_t1_destroy.exit ], [ %i.aw, %bb.n ], [ %i.aw, %bb.v ], [ %i.aw, %bb.ac ], [ %i.aw, %.critedge.i ], [ %i.aw, %bb.y ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !73
  store volatile i32 0, ptr %.sink, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph375, %.lr.ph377, %._crit_edge382, %._crit_edge392, %middle.block803, %middle.block817, %.loopexit.sink.split, %bb.lb, %bb.ld, %.preheader286, %.preheader288, %bb.k
  tail call void @opj_free(ptr noundef nonnull %0) #12
  ret void
}
end_hunk_0
