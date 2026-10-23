Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/decompress?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 15
begin_hunk_0_@BZ2_decompress:bb.a
.preheader1920:                                   ; preds = %.lr.ph2270, %.lr.ph2270.prol.loopexit
  %.lcssa3634 = phi i32 [ %.lcssa3634.unr, %.lr.ph2270.prol.loopexit ], [ %i.dnh, %.lr.ph2270 ] ; 2 uses
  %.not18452272 = icmp eq i32 %.lcssa3634, 0
  br i1 %.not18452272, label %._crit_edge2275, label %iter.check3476

iter.check3476:                                   ; preds = %bb.gx, %.preheader1920
  %.01519.lcssa3112 = phi i32 [ %.lcssa3634, %.preheader1920 ], [ %i.djl, %bb.gx ] ; 7 uses
  %i.dki = zext nneg i32 %.01519.lcssa3112 to i64 ; 5 uses
  %i.dkj = add nsw i32 %.01519.lcssa3112, -1      ; 3 uses
  %i.dkk = zext i32 %i.dkj to i64
  %i.dkl = add nuw nsw i64 %i.dkk, 1              ; 5 uses
  %min.iters.check3462 = icmp ult i32 %i.dkj, 3
  br i1 %min.iters.check3462, label %.lr.ph2274.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check3476
  %i.dkm = add i32 %.01519.lcssa3112, %i.djo
  %i.dkn = add i32 %i.djo, 1
  %i.dko = icmp ugt i32 %i.dkn, %i.dkm
  %i.dkp = sub nsw i32 0, %.01519.lcssa3112
  %i.dkq = icmp ugt i32 %i.djo, %i.dkp
  %i.dkr = or i1 %i.dko, %i.dkq
  br i1 %i.dkr, label %.lr.ph2274.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dks = add i32 %.01519.lcssa3112, %i.djo      ; 2 uses
  %i.dkt = add i32 %i.dks, -1
  %i.dku = zext i32 %i.dkt to i64
  %i.dkv = zext i32 %i.dks to i64
  %i.dkw = sub nsw i64 %i.dkv, %i.dku
  %diff.check = icmp ugt i64 %i.dkw, -32
  br i1 %diff.check, label %.lr.ph2274.preheader, label %vector.main.loop.iter.check3463

vector.main.loop.iter.check3463:                  ; preds = %vector.memcheck
  %min.iters.check3464 = icmp ult i32 %i.dkj, 31
  br i1 %min.iters.check3464, label %vec.epilog.ph3480, label %vector.ph3465

vector.ph3465:                                    ; preds = %vector.main.loop.iter.check3463
  %i.dkx = and i64 %i.dkl, 28
  %n.vec3466 = and i64 %i.dkl, 8589934560         ; 4 uses
  %i.dky = sub nsw i64 %i.dki, %n.vec3466
  br label %vector.body3467

vector.body3467:                                  ; preds = %vector.ph3465, %vector.body3467
  %index3468 = phi i64 [ 0, %vector.ph3465 ], [ %index.next3471, %vector.body3467 ] ; 2 uses
  %i.dkz = trunc i64 %index3468 to i32
  %i.dla = sub i32 %.01519.lcssa3112, %i.dkz
  %i.dlb = add i32 %i.djo, %i.dla                 ; 2 uses
  %i.dlc = add i32 %i.dlb, -1
  %i.dld = zext i32 %i.dlc to i64
  %i.dle = getelementptr inbounds nuw i8, ptr %i.djp, i64 %i.dld ; 2 uses
  %i.dlf = getelementptr inbounds i8, ptr %i.dle, i64 -15
  %i.dlg = getelementptr inbounds i8, ptr %i.dle, i64 -31
  %wide.load3469 = load <16 x i8>, ptr %i.dlf, align 1, !tbaa !76
  %wide.load3470 = load <16 x i8>, ptr %i.dlg, align 1, !tbaa !76
  %i.dlh = zext i32 %i.dlb to i64
  %i.dli = getelementptr inbounds nuw i8, ptr %i.djp, i64 %i.dlh ; 2 uses
  %i.dlj = getelementptr inbounds i8, ptr %i.dli, i64 -15
  %i.dlk = getelementptr inbounds i8, ptr %i.dli, i64 -31
  store <16 x i8> %wide.load3469, ptr %i.dlj, align 1, !tbaa !76
  store <16 x i8> %wide.load3470, ptr %i.dlk, align 1, !tbaa !76
  %index.next3471 = add nuw i64 %index3468, 32    ; 2 uses
  %i.dll = icmp eq i64 %index.next3471, %n.vec3466
  br i1 %i.dll, label %middle.block3472, label %vector.body3467, !llvm.loop !27

middle.block3472:                                 ; preds = %vector.body3467
  %cmp.n3473 = icmp eq i64 %i.dkl, %n.vec3466
  br i1 %cmp.n3473, label %._crit_edge2275, label %vec.epilog.iter.check3478

vec.epilog.iter.check3478:                        ; preds = %middle.block3472
  %min.epilog.iters.check3479 = icmp eq i64 %i.dkx, 0
  br i1 %min.epilog.iters.check3479, label %.lr.ph2274.preheader, label %vec.epilog.ph3480, !prof !102

vec.epilog.ph3480:                                ; preds = %vector.main.loop.iter.check3463, %vec.epilog.iter.check3478
  %vec.epilog.resume.val3474 = phi i64 [ %n.vec3466, %vec.epilog.iter.check3478 ], [ 0, %vector.main.loop.iter.check3463 ]
  %n.vec3481 = and i64 %i.dkl, 8589934588         ; 3 uses
  %i.dlm = sub nsw i64 %i.dki, %n.vec3481
  br label %vec.epilog.vector.body3482

vec.epilog.vector.body3482:                       ; preds = %vec.epilog.vector.body3482, %vec.epilog.ph3480
  %index3483 = phi i64 [ %vec.epilog.resume.val3474, %vec.epilog.ph3480 ], [ %index.next3485, %vec.epilog.vector.body3482 ] ; 2 uses
  %i.dln = trunc i64 %index3483 to i32
  %i.dlo = sub i32 %.01519.lcssa3112, %i.dln
  %i.dlp = add i32 %i.djo, %i.dlo                 ; 2 uses
  %i.dlq = add i32 %i.dlp, -1
  %i.dlr = zext i32 %i.dlq to i64
  %i.dls = getelementptr inbounds nuw i8, ptr %i.djp, i64 %i.dlr
  %i.dlt = getelementptr inbounds i8, ptr %i.dls, i64 -3
  %wide.load3484 = load <4 x i8>, ptr %i.dlt, align 1, !tbaa !76
  %i.dlu = zext i32 %i.dlp to i64
  %i.dlv = getelementptr inbounds nuw i8, ptr %i.djp, i64 %i.dlu
  %i.dlw = getelementptr inbounds i8, ptr %i.dlv, i64 -3
  store <4 x i8> %wide.load3484, ptr %i.dlw, align 1, !tbaa !76
  %index.next3485 = add nuw i64 %index3483, 4     ; 2 uses
  %i.dlx = icmp eq i64 %index.next3485, %n.vec3481
  br i1 %i.dlx, label %vec.epilog.middle.block3486, label %vec.epilog.vector.body3482, !llvm.loop !28

vec.epilog.middle.block3486:                      ; preds = %vec.epilog.vector.body3482
  %cmp.n3487 = icmp eq i64 %i.dkl, %n.vec3481
  br i1 %cmp.n3487, label %._crit_edge2275, label %.lr.ph2274.preheader

.lr.ph2274.preheader:                             ; preds = %iter.check3476, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check3478, %vec.epilog.middle.block3486
  %indvars.iv2565.ph = phi i64 [ %i.dki, %iter.check3476 ], [ %i.dki, %vector.scevcheck ], [ %i.dki, %vector.memcheck ], [ %i.dky, %vec.epilog.iter.check3478 ], [ %i.dlm, %vec.epilog.middle.block3486 ] ; 4 uses
  %i.dly = trunc i64 %indvars.iv2565.ph to i32    ; 2 uses
  %xtraiter3726 = and i32 %i.dly, 1
  %lcmp.mod3727.not = icmp eq i32 %xtraiter3726, 0
  br i1 %lcmp.mod3727.not, label %.lr.ph2274.prol.loopexit, label %.lr.ph2274.prol

.lr.ph2274.prol:                                  ; preds = %.lr.ph2274.preheader
  %i.dlz = trunc nuw i64 %indvars.iv2565.ph to i32
  %i.dma = add i32 %i.djo, %i.dlz                 ; 2 uses
  %i.dmb = add i32 %i.dma, -1
  %i.dmc = zext i32 %i.dmb to i64
  %i.dmd = getelementptr inbounds nuw i8, ptr %i.djp, i64 %i.dmc
  %i.dme = load i8, ptr %i.dmd, align 1, !tbaa !76
  %i.dmf = zext i32 %i.dma to i64
  %i.dmg = getelementptr inbounds nuw i8, ptr %i.djp, i64 %i.dmf
  store i8 %i.dme, ptr %i.dmg, align 1, !tbaa !76
  %indvars.iv.next2566.prol = add nsw i64 %indvars.iv2565.ph, -1
  br label %.lr.ph2274.prol.loopexit

.lr.ph2274.prol.loopexit:                         ; preds = %.lr.ph2274.prol, %.lr.ph2274.preheader
  %indvars.iv2565.unr = phi i64 [ %indvars.iv2565.ph, %.lr.ph2274.preheader ], [ %indvars.iv.next2566.prol, %.lr.ph2274.prol ]
  %i.dmh = icmp eq i32 %i.dly, 1
  br i1 %i.dmh, label %._crit_edge2275, label %.lr.ph2274.preheader.new

.lr.ph2274.preheader.new:                         ; preds = %.lr.ph2274.prol.loopexit
  %invariant.op3869 = add i32 -1, %i.djo
  br label %.lr.ph2274

.lr.ph2270:                                       ; preds = %.lr.ph2270, %.lr.ph2270.preheader.new
  %indvars.iv2562 = phi i64 [ %indvars.iv2562.unr, %.lr.ph2270.preheader.new ], [ %indvars.iv.next2563.3, %.lr.ph2270 ] ; 5 uses
  %i.dmi = trunc i64 %indvars.iv2562 to i32
  %i.dmj = add i32 %i.djo, %i.dmi
  %i.dmk = sext i32 %i.dmj to i64
  %i.dml = getelementptr i8, ptr %i.djp, i64 %i.dmk ; 2 uses
  %i.dmm = getelementptr i8, ptr %i.dml, i64 -3
  %i.dmn = getelementptr i8, ptr %i.dml, i64 -4
  %i.dmo = load <4 x i8>, ptr %i.dmn, align 1, !tbaa !76
  store <4 x i8> %i.dmo, ptr %i.dmm, align 1, !tbaa !76
  %i.dmp = trunc i64 %indvars.iv2562 to i32
  %.reass = add i32 %i.dmp, %invariant.op
  %i.dmq = sext i32 %.reass to i64
  %i.dmr = getelementptr i8, ptr %i.djp, i64 %i.dmq ; 2 uses
  %i.dms = getelementptr i8, ptr %i.dmr, i64 -3
  %i.dmt = getelementptr i8, ptr %i.dmr, i64 -4
  %i.dmu = load <4 x i8>, ptr %i.dmt, align 1, !tbaa !76
  store <4 x i8> %i.dmu, ptr %i.dms, align 1, !tbaa !76
  %i.dmv = trunc i64 %indvars.iv2562 to i32
  %.reass3866 = add i32 %i.dmv, %invariant.op3865
  %i.dmw = sext i32 %.reass3866 to i64
  %i.dmx = getelementptr i8, ptr %i.djp, i64 %i.dmw ; 2 uses
  %i.dmy = getelementptr i8, ptr %i.dmx, i64 -3
  %i.dmz = getelementptr i8, ptr %i.dmx, i64 -4
  %i.dna = load <4 x i8>, ptr %i.dmz, align 1, !tbaa !76
  store <4 x i8> %i.dna, ptr %i.dmy, align 1, !tbaa !76
  %i.dnb = trunc i64 %indvars.iv2562 to i32
  %.reass3868 = add i32 %i.dnb, %invariant.op3867
  %i.dnc = sext i32 %.reass3868 to i64
  %i.dnd = getelementptr i8, ptr %i.djp, i64 %i.dnc ; 2 uses
  %i.dne = getelementptr i8, ptr %i.dnd, i64 -3
  %i.dnf = getelementptr i8, ptr %i.dnd, i64 -4
  %i.dng = load <4 x i8>, ptr %i.dnf, align 1, !tbaa !76
  store <4 x i8> %i.dng, ptr %i.dne, align 1, !tbaa !76
  %indvars.iv.next2563.3 = add i64 %indvars.iv2562, -16 ; 2 uses
  %i.dnh = trunc i64 %indvars.iv.next2563.3 to i32 ; 2 uses
  %i.dni = icmp ugt i32 %i.dnh, 3
  br i1 %i.dni, label %.lr.ph2270, label %.preheader1920, !llvm.loop !29

.lr.ph2274:                                       ; preds = %.lr.ph2274, %.lr.ph2274.preheader.new
  %indvars.iv2565 = phi i64 [ %indvars.iv2565.unr, %.lr.ph2274.preheader.new ], [ %indvars.iv.next2566.1, %.lr.ph2274 ] ; 3 uses
  %i.dnj = trunc nuw i64 %indvars.iv2565 to i32
  %i.dnk = add i32 %i.djo, %i.dnj                 ; 2 uses
  %i.dnl = add i32 %i.dnk, -1
  %i.dnm = zext i32 %i.dnl to i64
  %i.dnn = getelementptr inbounds nuw i8, ptr %i.djp, i64 %i.dnm
  %i.dno = load i8, ptr %i.dnn, align 1, !tbaa !76
  %i.dnp = zext i32 %i.dnk to i64
  %i.dnq = getelementptr inbounds nuw i8, ptr %i.djp, i64 %i.dnp
  store i8 %i.dno, ptr %i.dnq, align 1, !tbaa !76
  %i.dnr = trunc i64 %indvars.iv2565 to i32
  %.reass3870 = add i32 %i.dnr, %invariant.op3869 ; 2 uses
  %i.dns = add i32 %.reass3870, -1
  %i.dnt = zext i32 %i.dns to i64
  %i.dnu = getelementptr inbounds nuw i8, ptr %i.djp, i64 %i.dnt
  %i.dnv = load i8, ptr %i.dnu, align 1, !tbaa !76
  %i.dnw = zext i32 %.reass3870 to i64
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.djp, i64 %i.dnw
  store i8 %i.dnv, ptr %i.dnx, align 1, !tbaa !76
  %indvars.iv.next2566.1 = add nsw i64 %indvars.iv2565, -2 ; 2 uses
  %i.dny = and i64 %indvars.iv.next2566.1, 4294967295
  %.not1845.1 = icmp eq i64 %i.dny, 0
  br i1 %.not1845.1, label %._crit_edge2275, label %.lr.ph2274, !llvm.loop !30

._crit_edge2275:                                  ; preds = %.lr.ph2274.prol.loopexit, %.lr.ph2274, %middle.block3472, %vec.epilog.middle.block3486, %.preheader1920
  %i.dnz = sext i32 %i.djo to i64
  %i.doa = getelementptr inbounds i8, ptr %i.djp, i64 %i.dnz
  store i8 %i.djt, ptr %i.doa, align 1, !tbaa !76
  br label %.loopexit1923

bb.gy:                                            ; preds = %bb.gw
  %i.dob = lshr i32 %i.djl, 4
  %i.doc = and i32 %i.djl, 15                     ; 2 uses
  %i.dod = getelementptr inbounds nuw i8, ptr %0, i64 7820 ; 6 uses
  %i.doe = zext nneg i32 %i.dob to i64            ; 2 uses
  %i.dof = getelementptr inbounds nuw [4 x i8], ptr %i.dod, i64 %i.doe ; 3 uses
  %i.dog = load i32, ptr %i.dof, align 4, !tbaa !98 ; 3 uses
  %i.doh = add nsw i32 %i.dog, %i.doc
  %i.doi = getelementptr inbounds nuw i8, ptr %0, i64 3724 ; 37 uses
  %i.doj = sext i32 %i.doh to i64
  %i.dok = getelementptr inbounds i8, ptr %i.doi, i64 %i.doj
  %i.dol = load i8, ptr %i.dok, align 1, !tbaa !76 ; 3 uses
  %.not2401 = icmp eq i32 %i.doc, 0
  br i1 %.not2401, label %.lr.ph2262.preheader.a, label %.lr.ph2257.preheader

.lr.ph2257.preheader:                             ; preds = %bb.gy
  %i.dom = sext i32 %i.dog to i64
  %i.don = add i32 %.01569, 15
  %i.doo = and i32 %i.don, 15
  %i.dop = zext nneg i32 %i.doo to i64
  %i.doq = add nsw i64 %i.dom, %i.dop
  br label %.lr.ph2257

.lr.ph2257:                                       ; preds = %.lr.ph2257.preheader, %.lr.ph2257
  %indvars.iv2547 = phi i64 [ %i.doq, %.lr.ph2257.preheader ], [ %indvars.iv.next2548, %.lr.ph2257 ] ; 2 uses
  %i.dor = getelementptr i8, ptr %i.doi, i64 %indvars.iv2547 ; 2 uses
  %i.dos = getelementptr i8, ptr %i.dor, i64 -1
  %i.dot = load i8, ptr %i.dos, align 1, !tbaa !76
  store i8 %i.dot, ptr %i.dor, align 1, !tbaa !76
  %indvars.iv.next2548 = add nsw i64 %indvars.iv2547, -1 ; 2 uses
  %i.dou = load i32, ptr %i.dof, align 4, !tbaa !98 ; 2 uses
  %i.dov = sext i32 %i.dou to i64
  %i.dow = icmp sgt i64 %indvars.iv.next2548, %i.dov
  br i1 %i.dow, label %.lr.ph2257, label %.lr.ph2262.preheader.a, !llvm.loop !31

.lr.ph2262.preheader.a:                           ; preds = %.lr.ph2257, %bb.gy
  %.lcssa2040 = phi i32 [ %i.dog, %bb.gy ], [ %i.dou, %.lr.ph2257 ]
  %i.dox = add nsw i32 %.lcssa2040, 1
  store i32 %i.dox, ptr %i.dof, align 4, !tbaa !98
  br label %.lr.ph2262

.lr.ph2262:                                       ; preds = %.lr.ph2262.preheader.a, %.lr.ph2262
  %indvars.iv2550 = phi i64 [ %i.doe, %.lr.ph2262.preheader.a ], [ %indvars.iv.next2551, %.lr.ph2262 ] ; 3 uses
  %i.doy = getelementptr inbounds nuw [4 x i8], ptr %i.dod, i64 %indvars.iv2550 ; 3 uses
  %i.doz = load i32, ptr %i.doy, align 4, !tbaa !98
  %i.dpa = add nsw i32 %i.doz, -1                 ; 2 uses
  store i32 %i.dpa, ptr %i.doy, align 4, !tbaa !98
  %i.dpb = getelementptr i8, ptr %i.doy, i64 -4
  %i.dpc = load i32, ptr %i.dpb, align 4, !tbaa !98
  %i.dpd = sext i32 %i.dpc to i64
  %i.dpe = getelementptr i8, ptr %i.doi, i64 %i.dpd
  %i.dpf = getelementptr i8, ptr %i.dpe, i64 15
  %i.dpg = load i8, ptr %i.dpf, align 1, !tbaa !76
  %i.dph = sext i32 %i.dpa to i64
  %i.dpi = getelementptr inbounds i8, ptr %i.doi, i64 %i.dph
  store i8 %i.dpg, ptr %i.dpi, align 1, !tbaa !76
  %indvars.iv.next2551 = add nsw i64 %indvars.iv2550, -1
  %1 = icmp samesign ugt i64 %indvars.iv2550, 1
  br i1 %1, label %.lr.ph2262, label %._crit_edge2263, !llvm.loop !32

._crit_edge2263:                                  ; preds = %.lr.ph2262
  %i.dpj = load i32, ptr %i.dod, align 4, !tbaa !98
  %i.dpk = add nsw i32 %i.dpj, -1                 ; 2 uses
  store i32 %i.dpk, ptr %i.dod, align 4, !tbaa !98
  %i.dpl = sext i32 %i.dpk to i64
  %i.dpm = getelementptr inbounds i8, ptr %i.doi, i64 %i.dpl
  store i8 %i.dol, ptr %i.dpm, align 1, !tbaa !76
  %i.dpn = load i32, ptr %i.dod, align 4, !tbaa !98
  %i.dpo = icmp eq i32 %i.dpn, 0
  br i1 %i.dpo, label %.preheader1921, label %.loopexit1923

.preheader1921:                                   ; preds = %._crit_edge2263, %.preheader1921
  %indvars.iv2557 = phi i64 [ %indvars.iv.next2558, %.preheader1921 ], [ 15, %._crit_edge2263 ] ; 3 uses
  %indvars.iv2555 = phi i64 [ %indvars.iv.next2556, %.preheader1921 ], [ 4095, %._crit_edge2263 ] ; 17 uses
  %i.dpp = getelementptr inbounds nuw [4 x i8], ptr %i.dod, i64 %indvars.iv2557 ; 17 uses
  %i.dpq = load i32, ptr %i.dpp, align 4, !tbaa !98
  %i.dpr = sext i32 %i.dpq to i64
  %i.dps = getelementptr i8, ptr %i.doi, i64 %i.dpr
  %i.dpt = getelementptr i8, ptr %i.dps, i64 15
  %i.dpu = load i8, ptr %i.dpt, align 1, !tbaa !76
  %i.dpv = getelementptr inbounds i8, ptr %i.doi, i64 %indvars.iv2555
  store i8 %i.dpu, ptr %i.dpv, align 1, !tbaa !76
  %i.dpw = load i32, ptr %i.dpp, align 4, !tbaa !98
  %i.dpx = sext i32 %i.dpw to i64
  %i.dpy = getelementptr i8, ptr %i.doi, i64 %i.dpx
  %i.dpz = getelementptr i8, ptr %i.dpy, i64 14
  %i.dqa = load i8, ptr %i.dpz, align 1, !tbaa !76
  %i.dqb = getelementptr i8, ptr %i.doi, i64 %indvars.iv2555
  %i.dqc = getelementptr i8, ptr %i.dqb, i64 -1
  store i8 %i.dqa, ptr %i.dqc, align 1, !tbaa !76
  %i.dqd = load i32, ptr %i.dpp, align 4, !tbaa !98
  %i.dqe = sext i32 %i.dqd to i64
  %i.dqf = getelementptr i8, ptr %i.doi, i64 %i.dqe
  %i.dqg = getelementptr i8, ptr %i.dqf, i64 13
  %i.dqh = load i8, ptr %i.dqg, align 1, !tbaa !76
  %i.dqi = getelementptr i8, ptr %i.doi, i64 %indvars.iv2555
  %i.dqj = getelementptr i8, ptr %i.dqi, i64 -2
  store i8 %i.dqh, ptr %i.dqj, align 1, !tbaa !76
  %i.dqk = load i32, ptr %i.dpp, align 4, !tbaa !98
  %i.dql = sext i32 %i.dqk to i64
  %i.dqm = getelementptr i8, ptr %i.doi, i64 %i.dql
  %i.dqn = getelementptr i8, ptr %i.dqm, i64 12
  %i.dqo = load i8, ptr %i.dqn, align 1, !tbaa !76
  %i.dqp = getelementptr i8, ptr %i.doi, i64 %indvars.iv2555
  %i.dqq = getelementptr i8, ptr %i.dqp, i64 -3
  store i8 %i.dqo, ptr %i.dqq, align 1, !tbaa !76
  %i.dqr = load i32, ptr %i.dpp, align 4, !tbaa !98
  %i.dqs = sext i32 %i.dqr to i64
  %i.dqt = getelementptr i8, ptr %i.doi, i64 %i.dqs
  %i.dqu = getelementptr i8, ptr %i.dqt, i64 11
  %i.dqv = load i8, ptr %i.dqu, align 1, !tbaa !76
  %i.dqw = getelementptr i8, ptr %i.doi, i64 %indvars.iv2555
  %i.dqx = getelementptr i8, ptr %i.dqw, i64 -4
  store i8 %i.dqv, ptr %i.dqx, align 1, !tbaa !76
  %i.dqy = load i32, ptr %i.dpp, align 4, !tbaa !98
  %i.dqz = sext i32 %i.dqy to i64
  %i.dra = getelementptr i8, ptr %i.doi, i64 %i.dqz
  %i.drb = getelementptr i8, ptr %i.dra, i64 10
  %i.drc = load i8, ptr %i.drb, align 1, !tbaa !76
  %i.drd = getelementptr i8, ptr %i.doi, i64 %indvars.iv2555
  %i.dre = getelementptr i8, ptr %i.drd, i64 -5
  store i8 %i.drc, ptr %i.dre, align 1, !tbaa !76
  %i.drf = load i32, ptr %i.dpp, align 4, !tbaa !98
  %i.drg = sext i32 %i.drf to i64
  %i.drh = getelementptr i8, ptr %i.doi, i64 %i.drg
  %i.dri = getelementptr i8, ptr %i.drh, i64 9
  %i.drj = load i8, ptr %i.dri, align 1, !tbaa !76
  %i.drk = getelementptr i8, ptr %i.doi, i64 %indvars.iv2555
  %i.drl = getelementptr i8, ptr %i.drk, i64 -6
  store i8 %i.drj, ptr %i.drl, align 1, !tbaa !76
  %i.drm = load i32, ptr %i.dpp, align 4, !tbaa !98
  %i.drn = sext i32 %i.drm to i64
  %i.dro = getelementptr i8, ptr %i.doi, i64 %i.drn
  %i.drp = getelementptr i8, ptr %i.dro, i64 8
  %i.drq = load i8, ptr %i.drp, align 1, !tbaa !76
  %i.drr = getelementptr i8, ptr %i.doi, i64 %indvars.iv2555
  %i.drs = getelementptr i8, ptr %i.drr, i64 -7
  store i8 %i.drq, ptr %i.drs, align 1, !tbaa !76
  %i.drt = load i32, ptr %i.dpp, align 4, !tbaa !98
  %i.dru = sext i32 %i.drt to i64
  %i.drv = getelementptr i8, ptr %i.doi, i64 %i.dru
  %i.drw = getelementptr i8, ptr %i.drv, i64 7
  %i.drx = load i8, ptr %i.drw, align 1, !tbaa !76
  %i.dry = getelementptr i8, ptr %i.doi, i64 %indvars.iv2555
  %i.drz = getelementptr i8, ptr %i.dry, i64 -8
  store i8 %i.drx, ptr %i.drz, align 1, !tbaa !76
  %i.dsa = load i32, ptr %i.dpp, align 4, !tbaa !98
  %i.dsb = sext i32 %i.dsa to i64
  %i.dsc = getelementptr i8, ptr %i.doi, i64 %i.dsb
  %i.dsd = getelementptr i8, ptr %i.dsc, i64 6
  %i.dse = load i8, ptr %i.dsd, align 1, !tbaa !76
  %i.dsf = getelementptr i8, ptr %i.doi, i64 %indvars.iv2555
  %i.dsg = getelementptr i8, ptr %i.dsf, i64 -9
  store i8 %i.dse, ptr %i.dsg, align 1, !tbaa !76
  %i.dsh = load i32, ptr %i.dpp, align 4, !tbaa !98
  %i.dsi = sext i32 %i.dsh to i64
  %i.dsj = getelementptr i8, ptr %i.doi, i64 %i.dsi
  %i.dsk = getelementptr i8, ptr %i.dsj, i64 5
  %i.dsl = load i8, ptr %i.dsk, align 1, !tbaa !76
  %i.dsm = getelementptr i8, ptr %i.doi, i64 %indvars.iv2555
  %i.dsn = getelementptr i8, ptr %i.dsm, i64 -10
  store i8 %i.dsl, ptr %i.dsn, align 1, !tbaa !76
  %i.dso = load i32, ptr %i.dpp, align 4, !tbaa !98
  %i.dsp = sext i32 %i.dso to i64
  %i.dsq = getelementptr i8, ptr %i.doi, i64 %i.dsp
  %i.dsr = getelementptr i8, ptr %i.dsq, i64 4
  %i.dss = load i8, ptr %i.dsr, align 1, !tbaa !76
  %i.dst = getelementptr i8, ptr %i.doi, i64 %indvars.iv2555
  %i.dsu = getelementptr i8, ptr %i.dst, i64 -11
  store i8 %i.dss, ptr %i.dsu, align 1, !tbaa !76
  %i.dsv = load i32, ptr %i.dpp, align 4, !tbaa !98
  %i.dsw = sext i32 %i.dsv to i64
  %i.dsx = getelementptr i8, ptr %i.doi, i64 %i.dsw
  %i.dsy = getelementptr i8, ptr %i.dsx, i64 3
  %i.dsz = load i8, ptr %i.dsy, align 1, !tbaa !76
  %i.dta = getelementptr i8, ptr %i.doi, i64 %indvars.iv2555
  %i.dtb = getelementptr i8, ptr %i.dta, i64 -12
  store i8 %i.dsz, ptr %i.dtb, align 1, !tbaa !76
  %i.dtc = load i32, ptr %i.dpp, align 4, !tbaa !98
  %i.dtd = sext i32 %i.dtc to i64
  %i.dte = getelementptr i8, ptr %i.doi, i64 %i.dtd
  %i.dtf = getelementptr i8, ptr %i.dte, i64 2
  %i.dtg = load i8, ptr %i.dtf, align 1, !tbaa !76
  %i.dth = getelementptr i8, ptr %i.doi, i64 %indvars.iv2555
  %i.dti = getelementptr i8, ptr %i.dth, i64 -13
  store i8 %i.dtg, ptr %i.dti, align 1, !tbaa !76
  %i.dtj = load i32, ptr %i.dpp, align 4, !tbaa !98
  %i.dtk = sext i32 %i.dtj to i64
  %i.dtl = getelementptr i8, ptr %i.doi, i64 %i.dtk
  %i.dtm = getelementptr i8, ptr %i.dtl, i64 1
  %i.dtn = load i8, ptr %i.dtm, align 1, !tbaa !76
  %i.dto = getelementptr i8, ptr %i.doi, i64 %indvars.iv2555
  %i.dtp = getelementptr i8, ptr %i.dto, i64 -14
  store i8 %i.dtn, ptr %i.dtp, align 1, !tbaa !76
  %indvars.iv.next2553.14 = add nsw i64 %indvars.iv2555, -15 ; 2 uses
  %i.dtq = load i32, ptr %i.dpp, align 4, !tbaa !98
  %i.dtr = sext i32 %i.dtq to i64
  %i.dts = getelementptr inbounds i8, ptr %i.doi, i64 %i.dtr
  %i.dtt = load i8, ptr %i.dts, align 1, !tbaa !76
  %i.dtu = getelementptr inbounds i8, ptr %i.doi, i64 %indvars.iv.next2553.14
  store i8 %i.dtt, ptr %i.dtu, align 1, !tbaa !76
  %i.dtv = trunc nsw i64 %indvars.iv.next2553.14 to i32
  %indvars.iv.next2556 = add nsw i64 %indvars.iv2555, -16
  store i32 %i.dtv, ptr %i.dpp, align 4, !tbaa !98
  %indvars.iv.next2558 = add nsw i64 %indvars.iv2557, -1
  %.not3109 = icmp eq i64 %indvars.iv2557, 0
  br i1 %.not3109, label %.loopexit1923, label %.preheader1921, !llvm.loop !33

.loopexit1923:                                    ; preds = %.preheader1921, %._crit_edge2263, %._crit_edge2275
  %.01398 = phi i8 [ %i.djt, %._crit_edge2275 ], [ %i.dol, %._crit_edge2263 ], [ %i.dol, %.preheader1921 ]
  %i.dtw = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.dtx = getelementptr inbounds nuw i8, ptr %0, i64 3468
  %i.dty = zext i8 %.01398 to i64
  %i.dtz = getelementptr inbounds nuw i8, ptr %i.dtx, i64 %i.dty
  %i.dua = load i8, ptr %i.dtz, align 1, !tbaa !76 ; 3 uses
  %i.dub = zext i8 %i.dua to i64
  %i.duc = getelementptr inbounds nuw [4 x i8], ptr %i.dtw, i64 %i.dub ; 2 uses
  %i.dud = load i32, ptr %i.duc, align 4, !tbaa !98
  %i.due = add nsw i32 %i.dud, 1
  store i32 %i.due, ptr %i.duc, align 4, !tbaa !98
  %i.duf = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dug = load i8, ptr %i.duf, align 4, !tbaa !80
  %.not1846 = icmp eq i8 %i.dug, 0
  %i.duh = sext i32 %.31597 to i64                ; 2 uses
  br i1 %.not1846, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %.loopexit1923
  %i.dui = zext i8 %i.dua to i16
  %i.duj = getelementptr inbounds nuw i8, ptr %0, i64 3160
  %i.duk = load ptr, ptr %i.duj, align 8, !tbaa !83
  %i.dul = getelementptr inbounds [2 x i8], ptr %i.duk, i64 %i.duh
  store i16 %i.dui, ptr %i.dul, align 2, !tbaa !100
  br label %bb.hb

bb.ha:                                            ; preds = %.loopexit1923
  %i.dum = zext i8 %i.dua to i32
  %i.dun = getelementptr inbounds nuw i8, ptr %0, i64 3152
  %i.duo = load ptr, ptr %i.dun, align 8, !tbaa !85
  %i.dup = getelementptr inbounds [4 x i8], ptr %i.duo, i64 %i.duh
  store i32 %i.dum, ptr %i.dup, align 4, !tbaa !98
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %i.duq = add nsw i32 %.31597, 1                 ; 2 uses
  %i.dur = icmp eq i32 %.41558, 0
  br i1 %i.dur, label %bb.hc, label %bb.he

bb.hc:                                            ; preds = %bb.hb
  %i.dus = add nsw i32 %.41543, 1                 ; 4 uses
  %.not1847 = icmp slt i32 %i.dus, %.121510
  br i1 %.not1847, label %bb.hd, label %.loopexit

bb.hd:                                            ; preds = %bb.hc
  %i.dut = getelementptr inbounds nuw i8, ptr %0, i64 7884
  %i.duu = sext i32 %i.dus to i64
  %i.duv = getelementptr inbounds i8, ptr %i.dut, i64 %i.duu
  %i.duw = load i8, ptr %i.duv, align 1, !tbaa !76 ; 2 uses
  %i.dux = zext i8 %i.duw to i32
  %i.duy = getelementptr inbounds nuw i8, ptr %0, i64 64012
  %i.duz = zext i8 %i.duw to i64                  ; 4 uses
  %i.dva = getelementptr inbounds nuw [4 x i8], ptr %i.duy, i64 %i.duz
end_hunk_0
