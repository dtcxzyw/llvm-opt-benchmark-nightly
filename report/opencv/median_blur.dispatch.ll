Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/median_blur.dispatch?download=true
inline.NumInlined: 1467
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN2cv12cpu_baseline10medianBlurERKNS_3MatERS1_i:bb.a
  %i.len = load i16, ptr %i.lef, align 2, !tbaa !123, !alias.scope !133
  %i.leo = insertelement <8 x i16> poison, i16 %i.leg, i64 0
  %i.lep = insertelement <8 x i16> %i.leo, i16 %i.leh, i64 1
  %i.leq = insertelement <8 x i16> %i.lep, i16 %i.lei, i64 2
  %i.ler = insertelement <8 x i16> %i.leq, i16 %i.lej, i64 3
  %i.les = insertelement <8 x i16> %i.ler, i16 %i.lek, i64 4
  %i.let = insertelement <8 x i16> %i.les, i16 %i.lel, i64 5
  %i.leu = insertelement <8 x i16> %i.let, i16 %i.lem, i64 6
  %i.lev = insertelement <8 x i16> %i.leu, i16 %i.len, i64 7
  %i.lew = add <8 x i16> %i.lev, %vec.phi1455     ; 2 uses
  %i.lex = getelementptr inbounds nuw i8, ptr %next.gep1467, i64 24
  %i.ley = getelementptr i8, ptr %i.ktk, i64 56
  %i.lez = getelementptr i8, ptr %i.ktl, i64 88
  %i.lfa = getelementptr i8, ptr %i.ktm, i64 120
  %i.lfb = getelementptr i8, ptr %i.ktn, i64 152
  %i.lfc = getelementptr i8, ptr %i.kto, i64 184
  %i.lfd = getelementptr i8, ptr %i.ktp, i64 216
  %i.lfe = getelementptr i8, ptr %i.ktq, i64 248
  %i.lff = load i16, ptr %i.lex, align 8, !tbaa !123, !alias.scope !133
  %i.lfg = load i16, ptr %i.ley, align 8, !tbaa !123, !alias.scope !133
  %i.lfh = load i16, ptr %i.lez, align 8, !tbaa !123, !alias.scope !133
  %i.lfi = load i16, ptr %i.lfa, align 8, !tbaa !123, !alias.scope !133
  %i.lfj = load i16, ptr %i.lfb, align 8, !tbaa !123, !alias.scope !133
  %i.lfk = load i16, ptr %i.lfc, align 8, !tbaa !123, !alias.scope !133
  %i.lfl = load i16, ptr %i.lfd, align 8, !tbaa !123, !alias.scope !133
  %i.lfm = load i16, ptr %i.lfe, align 8, !tbaa !123, !alias.scope !133
  %i.lfn = insertelement <8 x i16> poison, i16 %i.lff, i64 0
  %i.lfo = insertelement <8 x i16> %i.lfn, i16 %i.lfg, i64 1
  %i.lfp = insertelement <8 x i16> %i.lfo, i16 %i.lfh, i64 2
  %i.lfq = insertelement <8 x i16> %i.lfp, i16 %i.lfi, i64 3
  %i.lfr = insertelement <8 x i16> %i.lfq, i16 %i.lfj, i64 4
  %i.lfs = insertelement <8 x i16> %i.lfr, i16 %i.lfk, i64 5
  %i.lft = insertelement <8 x i16> %i.lfs, i16 %i.lfl, i64 6
  %i.lfu = insertelement <8 x i16> %i.lft, i16 %i.lfm, i64 7
  %i.lfv = add <8 x i16> %i.lfu, %vec.phi1454     ; 2 uses
  %i.lfw = getelementptr inbounds nuw i8, ptr %next.gep1467, i64 26
  %i.lfx = getelementptr i8, ptr %i.ktk, i64 58
  %i.lfy = getelementptr i8, ptr %i.ktl, i64 90
  %i.lfz = getelementptr i8, ptr %i.ktm, i64 122
  %i.lga = getelementptr i8, ptr %i.ktn, i64 154
  %i.lgb = getelementptr i8, ptr %i.kto, i64 186
  %i.lgc = getelementptr i8, ptr %i.ktp, i64 218
  %i.lgd = getelementptr i8, ptr %i.ktq, i64 250
  %i.lge = load i16, ptr %i.lfw, align 2, !tbaa !123, !alias.scope !133
  %i.lgf = load i16, ptr %i.lfx, align 2, !tbaa !123, !alias.scope !133
  %i.lgg = load i16, ptr %i.lfy, align 2, !tbaa !123, !alias.scope !133
  %i.lgh = load i16, ptr %i.lfz, align 2, !tbaa !123, !alias.scope !133
  %i.lgi = load i16, ptr %i.lga, align 2, !tbaa !123, !alias.scope !133
  %i.lgj = load i16, ptr %i.lgb, align 2, !tbaa !123, !alias.scope !133
  %i.lgk = load i16, ptr %i.lgc, align 2, !tbaa !123, !alias.scope !133
  %i.lgl = load i16, ptr %i.lgd, align 2, !tbaa !123, !alias.scope !133
  %i.lgm = insertelement <8 x i16> poison, i16 %i.lge, i64 0
  %i.lgn = insertelement <8 x i16> %i.lgm, i16 %i.lgf, i64 1
  %i.lgo = insertelement <8 x i16> %i.lgn, i16 %i.lgg, i64 2
  %i.lgp = insertelement <8 x i16> %i.lgo, i16 %i.lgh, i64 3
  %i.lgq = insertelement <8 x i16> %i.lgp, i16 %i.lgi, i64 4
  %i.lgr = insertelement <8 x i16> %i.lgq, i16 %i.lgj, i64 5
  %i.lgs = insertelement <8 x i16> %i.lgr, i16 %i.lgk, i64 6
  %i.lgt = insertelement <8 x i16> %i.lgs, i16 %i.lgl, i64 7
  %i.lgu = add <8 x i16> %i.lgt, %vec.phi1453     ; 2 uses
  %i.lgv = getelementptr inbounds nuw i8, ptr %next.gep1467, i64 28
  %i.lgw = getelementptr i8, ptr %i.ktk, i64 60
  %i.lgx = getelementptr i8, ptr %i.ktl, i64 92
  %i.lgy = getelementptr i8, ptr %i.ktm, i64 124
  %i.lgz = getelementptr i8, ptr %i.ktn, i64 156
  %i.lha = getelementptr i8, ptr %i.kto, i64 188
  %i.lhb = getelementptr i8, ptr %i.ktp, i64 220
  %i.lhc = getelementptr i8, ptr %i.ktq, i64 252
  %i.lhd = load i16, ptr %i.lgv, align 4, !tbaa !123, !alias.scope !133
  %i.lhe = load i16, ptr %i.lgw, align 4, !tbaa !123, !alias.scope !133
  %i.lhf = load i16, ptr %i.lgx, align 4, !tbaa !123, !alias.scope !133
  %i.lhg = load i16, ptr %i.lgy, align 4, !tbaa !123, !alias.scope !133
  %i.lhh = load i16, ptr %i.lgz, align 4, !tbaa !123, !alias.scope !133
  %i.lhi = load i16, ptr %i.lha, align 4, !tbaa !123, !alias.scope !133
  %i.lhj = load i16, ptr %i.lhb, align 4, !tbaa !123, !alias.scope !133
  %i.lhk = load i16, ptr %i.lhc, align 4, !tbaa !123, !alias.scope !133
  %i.lhl = insertelement <8 x i16> poison, i16 %i.lhd, i64 0
  %i.lhm = insertelement <8 x i16> %i.lhl, i16 %i.lhe, i64 1
  %i.lhn = insertelement <8 x i16> %i.lhm, i16 %i.lhf, i64 2
  %i.lho = insertelement <8 x i16> %i.lhn, i16 %i.lhg, i64 3
  %i.lhp = insertelement <8 x i16> %i.lho, i16 %i.lhh, i64 4
  %i.lhq = insertelement <8 x i16> %i.lhp, i16 %i.lhi, i64 5
  %i.lhr = insertelement <8 x i16> %i.lhq, i16 %i.lhj, i64 6
  %i.lhs = insertelement <8 x i16> %i.lhr, i16 %i.lhk, i64 7
  %i.lht = add <8 x i16> %i.lhs, %vec.phi1452     ; 2 uses
  %i.lhu = getelementptr inbounds nuw i8, ptr %next.gep1467, i64 30
  %i.lhv = getelementptr i8, ptr %i.ktk, i64 62
  %i.lhw = getelementptr i8, ptr %i.ktl, i64 94
  %i.lhx = getelementptr i8, ptr %i.ktm, i64 126
  %i.lhy = getelementptr i8, ptr %i.ktn, i64 158
  %i.lhz = getelementptr i8, ptr %i.kto, i64 190
  %i.lia = getelementptr i8, ptr %i.ktp, i64 222
  %i.lib = getelementptr i8, ptr %i.ktq, i64 254
  %i.lic = load i16, ptr %i.lhu, align 2, !tbaa !123, !alias.scope !133
  %i.lid = load i16, ptr %i.lhv, align 2, !tbaa !123, !alias.scope !133
  %i.lie = load i16, ptr %i.lhw, align 2, !tbaa !123, !alias.scope !133
  %i.lif = load i16, ptr %i.lhx, align 2, !tbaa !123, !alias.scope !133
  %i.lig = load i16, ptr %i.lhy, align 2, !tbaa !123, !alias.scope !133
  %i.lih = load i16, ptr %i.lhz, align 2, !tbaa !123, !alias.scope !133
  %i.lii = load i16, ptr %i.lia, align 2, !tbaa !123, !alias.scope !133
  %i.lij = load i16, ptr %i.lib, align 2, !tbaa !123, !alias.scope !133
  %i.lik = insertelement <8 x i16> poison, i16 %i.lic, i64 0
  %i.lil = insertelement <8 x i16> %i.lik, i16 %i.lid, i64 1
  %i.lim = insertelement <8 x i16> %i.lil, i16 %i.lie, i64 2
  %i.lin = insertelement <8 x i16> %i.lim, i16 %i.lif, i64 3
  %i.lio = insertelement <8 x i16> %i.lin, i16 %i.lig, i64 4
  %i.lip = insertelement <8 x i16> %i.lio, i16 %i.lih, i64 5
  %i.liq = insertelement <8 x i16> %i.lip, i16 %i.lii, i64 6
  %i.lir = insertelement <8 x i16> %i.liq, i16 %i.lij, i64 7
  %i.lis = add <8 x i16> %i.lir, %vec.phi         ; 2 uses
  %index.next1475 = add nuw i64 %index1451, 8     ; 2 uses
  %i.lit = icmp eq i64 %index.next1475, %n.vec1449
  br i1 %i.lit, label %middle.block1476, label %vector.body1450, !llvm.loop !109

middle.block1476:                                 ; preds = %vector.body1450
  %i.liu = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.lis) ; 2 uses
  %i.liv = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.lht) ; 2 uses
  %i.liw = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.lgu) ; 2 uses
  %i.lix = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.lfv) ; 2 uses
  %i.liy = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.lew) ; 2 uses
  %i.liz = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.ldx) ; 2 uses
  %i.lja = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.lcy) ; 2 uses
  %i.ljb = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.lbz) ; 2 uses
  %i.ljc = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.lba) ; 2 uses
  %i.ljd = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.lab) ; 2 uses
  %i.lje = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.kzc) ; 2 uses
  %i.ljf = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.kyd) ; 2 uses
  %i.ljg = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.kxe) ; 2 uses
  %i.ljh = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.kwf) ; 2 uses
  %i.lji = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.kvg) ; 2 uses
  %i.ljj = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.kuh) ; 2 uses
  store i16 %i.ljj, ptr %6, align 16, !tbaa !123, !alias.scope !134, !noalias !133
  store i16 %i.lji, ptr %.phi.trans.insert.i, align 2, !tbaa !123, !alias.scope !134, !noalias !133
  store i16 %i.ljh, ptr %.phi.trans.insert588.i, align 4, !tbaa !123, !alias.scope !134, !noalias !133
  store i16 %i.ljg, ptr %.phi.trans.insert590.i, align 2, !tbaa !123, !alias.scope !134, !noalias !133
  store i16 %i.ljf, ptr %.phi.trans.insert592.i, align 8, !tbaa !123, !alias.scope !134, !noalias !133
  store i16 %i.lje, ptr %.phi.trans.insert594.i, align 2, !tbaa !123, !alias.scope !134, !noalias !133
  store i16 %i.ljd, ptr %.phi.trans.insert596.i, align 4, !tbaa !123, !alias.scope !134, !noalias !133
  store i16 %i.ljc, ptr %.phi.trans.insert598.i, align 2, !tbaa !123, !alias.scope !134, !noalias !133
  store i16 %i.ljb, ptr %.phi.trans.insert600.i, align 16, !tbaa !123, !alias.scope !134, !noalias !133
  store i16 %i.lja, ptr %.phi.trans.insert602.i, align 2, !tbaa !123, !alias.scope !134, !noalias !133
  store i16 %i.liz, ptr %.phi.trans.insert604.i, align 4, !tbaa !123, !alias.scope !134, !noalias !133
  store i16 %i.liy, ptr %.phi.trans.insert606.i, align 2, !tbaa !123, !alias.scope !134, !noalias !133
  store i16 %i.lix, ptr %.phi.trans.insert608.i, align 8, !tbaa !123, !alias.scope !134, !noalias !133
  store i16 %i.liw, ptr %.phi.trans.insert610.i, align 2, !tbaa !123, !alias.scope !134, !noalias !133
  store i16 %i.liv, ptr %.phi.trans.insert612.i, align 4, !tbaa !123, !alias.scope !134, !noalias !133
  store i16 %i.liu, ptr %.phi.trans.insert614.i, align 2, !tbaa !123, !alias.scope !134, !noalias !133
  %i.ljk = insertelement <16 x i16> poison, i16 %i.ljj, i64 0
  %i.ljl = insertelement <16 x i16> %i.ljk, i16 %i.lji, i64 1
  %i.ljm = insertelement <16 x i16> %i.ljl, i16 %i.ljh, i64 2
  %i.ljn = insertelement <16 x i16> %i.ljm, i16 %i.ljg, i64 3
  %i.ljo = insertelement <16 x i16> %i.ljn, i16 %i.ljf, i64 4
  %i.ljp = insertelement <16 x i16> %i.ljo, i16 %i.lje, i64 5
  %i.ljq = insertelement <16 x i16> %i.ljp, i16 %i.ljd, i64 6
  %i.ljr = insertelement <16 x i16> %i.ljq, i16 %i.ljc, i64 7
  %i.ljs = insertelement <16 x i16> %i.ljr, i16 %i.ljb, i64 8
  %i.ljt = insertelement <16 x i16> %i.ljs, i16 %i.lja, i64 9
  %i.lju = insertelement <16 x i16> %i.ljt, i16 %i.liz, i64 10
  %i.ljv = insertelement <16 x i16> %i.lju, i16 %i.liy, i64 11
  %i.ljw = insertelement <16 x i16> %i.ljv, i16 %i.lix, i64 12
  %i.ljx = insertelement <16 x i16> %i.ljw, i16 %i.liw, i64 13
  %i.ljy = insertelement <16 x i16> %i.ljx, i16 %i.liv, i64 14
  %i.ljz = insertelement <16 x i16> %i.ljy, i16 %i.liu, i64 15
  br i1 %cmp.n1477, label %.preheader448.i, label %.preheader446.i.preheader

.preheader446.i.preheader:                        ; preds = %.preheader446.preheader.i, %middle.block1476
  %.0306473.i.ph = phi ptr [ %i.ksj, %middle.block1476 ], [ %i.ksh, %.preheader446.preheader.i ] ; 2 uses
  %.3472.i.ph = phi i32 [ %i.kco, %middle.block1476 ], [ 0, %.preheader446.preheader.i ] ; 4 uses
  %.ph = phi <16 x i16> [ %i.ljz, %middle.block1476 ], [ %i.ksi, %.preheader446.preheader.i ] ; 2 uses
  %i.lka = sub i32 %i.kai, %.3472.i.ph
  %xtraiter = and i32 %i.lka, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader446.i.prol.loopexit, label %.preheader446.i.prol

.preheader446.i.prol:                             ; preds = %.preheader446.i.preheader, %.preheader446.i.prol
  %.0306473.i.prol = phi ptr [ %i.lkf, %.preheader446.i.prol ], [ %.0306473.i.ph, %.preheader446.i.preheader ] ; 2 uses
  %.3472.i.prol = phi i32 [ %i.lke, %.preheader446.i.prol ], [ %.3472.i.ph, %.preheader446.i.preheader ]
  %i.lkb = phi <16 x i16> [ %i.lkd, %.preheader446.i.prol ], [ %.ph, %.preheader446.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader446.i.prol ], [ 0, %.preheader446.i.preheader ]
  %i.lkc = load <16 x i16>, ptr %.0306473.i.prol, align 2, !tbaa !123
  %i.lkd = add <16 x i16> %i.lkc, %i.lkb          ; 3 uses
  store <16 x i16> %i.lkd, ptr %6, align 16, !tbaa !123
  %i.lke = add nuw nsw i32 %.3472.i.prol, 1       ; 2 uses
  %i.lkf = getelementptr inbounds nuw i8, ptr %.0306473.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader446.i.prol.loopexit, label %.preheader446.i.prol, !llvm.loop !111

.preheader446.i.prol.loopexit:                    ; preds = %.preheader446.i.prol, %.preheader446.i.preheader
  %.0306473.i.unr = phi ptr [ %.0306473.i.ph, %.preheader446.i.preheader ], [ %i.lkf, %.preheader446.i.prol ]
  %.3472.i.unr = phi i32 [ %.3472.i.ph, %.preheader446.i.preheader ], [ %i.lke, %.preheader446.i.prol ]
  %.unr = phi <16 x i16> [ %.ph, %.preheader446.i.preheader ], [ %i.lkd, %.preheader446.i.prol ]
  %i.lkg = sub i32 %.3472.i.ph, %i.kai
  %i.lkh = icmp ugt i32 %i.lkg, -4
  br i1 %i.lkh, label %.preheader448.i, label %.preheader446.i

.preheader448.i:                                  ; preds = %.preheader446.i.prol.loopexit, %.preheader446.i, %middle.block1476
  br i1 %i.kds, label %.lr.ph493.i, label %._crit_edge494.i

.lr.ph493.i:                                      ; preds = %.preheader448.i
  %i.lki = mul nsw i64 %indvars.iv560.i, %i.kdm   ; 2 uses
  %invariant.gep.i551 = getelementptr i8, ptr %i.kmj, i64 %indvars.iv560.i
  br label %.preheader445.preheader.i

.preheader446.i:                                  ; preds = %.preheader446.i.prol.loopexit, %.preheader446.i
  %.0306473.i = phi ptr [ %i.lkw, %.preheader446.i ], [ %.0306473.i.unr, %.preheader446.i.prol.loopexit ] ; 5 uses
  %.3472.i = phi i32 [ %i.lkv, %.preheader446.i ], [ %.3472.i.unr, %.preheader446.i.prol.loopexit ]
  %i.lkj = phi <16 x i16> [ %i.lku, %.preheader446.i ], [ %.unr, %.preheader446.i.prol.loopexit ]
  %i.lkk = load <16 x i16>, ptr %.0306473.i, align 2, !tbaa !123
  %i.lkl = add <16 x i16> %i.lkk, %i.lkj          ; 2 uses
  store <16 x i16> %i.lkl, ptr %6, align 16, !tbaa !123
  %i.lkm = getelementptr inbounds nuw i8, ptr %.0306473.i, i64 32
  %i.lkn = load <16 x i16>, ptr %i.lkm, align 2, !tbaa !123
  %i.lko = add <16 x i16> %i.lkn, %i.lkl          ; 2 uses
  store <16 x i16> %i.lko, ptr %6, align 16, !tbaa !123
  %i.lkp = getelementptr inbounds nuw i8, ptr %.0306473.i, i64 64
  %i.lkq = load <16 x i16>, ptr %i.lkp, align 2, !tbaa !123
  %i.lkr = add <16 x i16> %i.lkq, %i.lko          ; 2 uses
  store <16 x i16> %i.lkr, ptr %6, align 16, !tbaa !123
  %i.lks = getelementptr inbounds nuw i8, ptr %.0306473.i, i64 96
  %i.lkt = load <16 x i16>, ptr %i.lks, align 2, !tbaa !123
  %i.lku = add <16 x i16> %i.lkt, %i.lkr          ; 2 uses
  store <16 x i16> %i.lku, ptr %6, align 16, !tbaa !123
  %i.lkv = add nuw nsw i32 %.3472.i, 4            ; 2 uses
  %i.lkw = getelementptr inbounds nuw i8, ptr %.0306473.i, i64 128
  %exitcond533.not.i.3 = icmp eq i32 %i.lkv, %i.kai
  br i1 %exitcond533.not.i.3, label %.preheader448.i, label %.preheader446.i, !llvm.loop !112

.preheader445.preheader.i:                        ; preds = %bb.pw, %.lr.ph493.i
  %indvars.iv558.i = phi i64 [ %i.kcb, %.lr.ph493.i ], [ %indvars.iv.next559.i, %bb.pw ] ; 4 uses
  %i.lkx = add nuw nsw i64 %indvars.iv558.i, %i.kcb ; 5 uses
  %i.lky = add nsw i64 %i.lkx, %i.lki
  %.idx.i = shl nsw i64 %i.lky, 5
  %i.lkz = getelementptr inbounds i8, ptr %i.kbf, i64 %.idx.i ; 16 uses
  %i.lla = load i16, ptr %i.lkz, align 16, !tbaa !123
  %i.llb = load i16, ptr %6, align 16, !tbaa !123
  %i.llc = add i16 %i.llb, %i.lla                 ; 3 uses
  store i16 %i.llc, ptr %6, align 16, !tbaa !123
  %i.lld = getelementptr inbounds nuw i8, ptr %i.lkz, i64 2
  %i.lle = load i16, ptr %i.lld, align 2, !tbaa !123
  %i.llf = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !123
  %i.llg = add i16 %i.llf, %i.lle                 ; 3 uses
  store i16 %i.llg, ptr %.phi.trans.insert.i, align 2, !tbaa !123
  %i.llh = getelementptr inbounds nuw i8, ptr %i.lkz, i64 4
  %i.lli = load i16, ptr %i.llh, align 4, !tbaa !123
  %i.llj = load i16, ptr %.phi.trans.insert588.i, align 4, !tbaa !123
  %i.llk = add i16 %i.llj, %i.lli                 ; 3 uses
  store i16 %i.llk, ptr %.phi.trans.insert588.i, align 4, !tbaa !123
  %i.lll = getelementptr inbounds nuw i8, ptr %i.lkz, i64 6
  %i.llm = load i16, ptr %i.lll, align 2, !tbaa !123
  %i.lln = load i16, ptr %.phi.trans.insert590.i, align 2, !tbaa !123
  %i.llo = add i16 %i.lln, %i.llm                 ; 3 uses
  store i16 %i.llo, ptr %.phi.trans.insert590.i, align 2, !tbaa !123
  %i.llp = getelementptr inbounds nuw i8, ptr %i.lkz, i64 8
  %i.llq = load i16, ptr %i.llp, align 8, !tbaa !123
  %i.llr = load i16, ptr %.phi.trans.insert592.i, align 8, !tbaa !123
  %i.lls = add i16 %i.llr, %i.llq                 ; 3 uses
  store i16 %i.lls, ptr %.phi.trans.insert592.i, align 8, !tbaa !123
  %i.llt = getelementptr inbounds nuw i8, ptr %i.lkz, i64 10
  %i.llu = load i16, ptr %i.llt, align 2, !tbaa !123
  %i.llv = load i16, ptr %.phi.trans.insert594.i, align 2, !tbaa !123
  %i.llw = add i16 %i.llv, %i.llu                 ; 3 uses
  store i16 %i.llw, ptr %.phi.trans.insert594.i, align 2, !tbaa !123
  %i.llx = getelementptr inbounds nuw i8, ptr %i.lkz, i64 12
  %i.lly = load i16, ptr %i.llx, align 4, !tbaa !123
  %i.llz = load i16, ptr %.phi.trans.insert596.i, align 4, !tbaa !123
  %i.lma = add i16 %i.llz, %i.lly                 ; 3 uses
  store i16 %i.lma, ptr %.phi.trans.insert596.i, align 4, !tbaa !123
  %i.lmb = getelementptr inbounds nuw i8, ptr %i.lkz, i64 14
  %i.lmc = load i16, ptr %i.lmb, align 2, !tbaa !123
  %i.lmd = load i16, ptr %.phi.trans.insert598.i, align 2, !tbaa !123
  %i.lme = add i16 %i.lmd, %i.lmc                 ; 3 uses
  store i16 %i.lme, ptr %.phi.trans.insert598.i, align 2, !tbaa !123
  %i.lmf = getelementptr inbounds nuw i8, ptr %i.lkz, i64 16
  %i.lmg = load i16, ptr %i.lmf, align 16, !tbaa !123
  %i.lmh = load i16, ptr %.phi.trans.insert600.i, align 16, !tbaa !123
  %i.lmi = add i16 %i.lmh, %i.lmg                 ; 3 uses
  store i16 %i.lmi, ptr %.phi.trans.insert600.i, align 16, !tbaa !123
  %i.lmj = getelementptr inbounds nuw i8, ptr %i.lkz, i64 18
  %i.lmk = load i16, ptr %i.lmj, align 2, !tbaa !123
  %i.lml = load i16, ptr %.phi.trans.insert602.i, align 2, !tbaa !123
  %i.lmm = add i16 %i.lml, %i.lmk                 ; 3 uses
  store i16 %i.lmm, ptr %.phi.trans.insert602.i, align 2, !tbaa !123
  %i.lmn = getelementptr inbounds nuw i8, ptr %i.lkz, i64 20
  %i.lmo = load i16, ptr %i.lmn, align 4, !tbaa !123
  %i.lmp = load i16, ptr %.phi.trans.insert604.i, align 4, !tbaa !123
  %i.lmq = add i16 %i.lmp, %i.lmo                 ; 3 uses
  store i16 %i.lmq, ptr %.phi.trans.insert604.i, align 4, !tbaa !123
  %i.lmr = getelementptr inbounds nuw i8, ptr %i.lkz, i64 22
  %i.lms = load i16, ptr %i.lmr, align 2, !tbaa !123
  %i.lmt = load i16, ptr %.phi.trans.insert606.i, align 2, !tbaa !123
  %i.lmu = add i16 %i.lmt, %i.lms                 ; 3 uses
  store i16 %i.lmu, ptr %.phi.trans.insert606.i, align 2, !tbaa !123
  %i.lmv = getelementptr inbounds nuw i8, ptr %i.lkz, i64 24
  %i.lmw = load i16, ptr %i.lmv, align 8, !tbaa !123
  %i.lmx = load i16, ptr %.phi.trans.insert608.i, align 8, !tbaa !123
  %i.lmy = add i16 %i.lmx, %i.lmw                 ; 3 uses
  store i16 %i.lmy, ptr %.phi.trans.insert608.i, align 8, !tbaa !123
  %i.lmz = getelementptr inbounds nuw i8, ptr %i.lkz, i64 26
  %i.lna = load i16, ptr %i.lmz, align 2, !tbaa !123
  %i.lnb = load i16, ptr %.phi.trans.insert610.i, align 2, !tbaa !123
  %i.lnc = add i16 %i.lnb, %i.lna                 ; 3 uses
  store i16 %i.lnc, ptr %.phi.trans.insert610.i, align 2, !tbaa !123
  %i.lnd = getelementptr inbounds nuw i8, ptr %i.lkz, i64 28
  %i.lne = load i16, ptr %i.lnd, align 4, !tbaa !123
  %i.lnf = load i16, ptr %.phi.trans.insert612.i, align 4, !tbaa !123
  %i.lng = add i16 %i.lnf, %i.lne                 ; 3 uses
  store i16 %i.lng, ptr %.phi.trans.insert612.i, align 4, !tbaa !123
  %i.lnh = getelementptr inbounds nuw i8, ptr %i.lkz, i64 30
  %i.lni = load i16, ptr %i.lnh, align 2, !tbaa !123
  %i.lnj = load i16, ptr %.phi.trans.insert614.i, align 2, !tbaa !123
  %i.lnk = add i16 %i.lnj, %i.lni                 ; 3 uses
  store i16 %i.lnk, ptr %.phi.trans.insert614.i, align 2, !tbaa !123
  %i.lnl = zext i16 %i.llc to i32                 ; 3 uses
  %i.lnm = icmp slt i32 %i.kby, %i.lnl
  br i1 %i.lnm, label %bb.pc, label %.preheader445.1.i

.preheader445.1.i:                                ; preds = %.preheader445.preheader.i
  %i.lnn = zext i16 %i.llg to i32
  %i.lno = add nuw nsw i32 %i.lnn, %i.lnl         ; 3 uses
  %i.lnp = icmp samesign ugt i32 %i.lno, %i.kby
  br i1 %i.lnp, label %bb.pc, label %.preheader445.2.i

.preheader445.2.i:                                ; preds = %.preheader445.1.i
  %i.lnq = zext i16 %i.llk to i32
  %i.lnr = add nuw nsw i32 %i.lno, %i.lnq         ; 3 uses
  %i.lns = icmp samesign ugt i32 %i.lnr, %i.kby
  br i1 %i.lns, label %bb.pc, label %.preheader445.3.i

.preheader445.3.i:                                ; preds = %.preheader445.2.i
  %i.lnt = zext i16 %i.llo to i32
  %i.lnu = add nuw nsw i32 %i.lnr, %i.lnt         ; 3 uses
  %i.lnv = icmp samesign ugt i32 %i.lnu, %i.kby
  br i1 %i.lnv, label %bb.pc, label %.preheader445.4.i

.preheader445.4.i:                                ; preds = %.preheader445.3.i
  %i.lnw = zext i16 %i.lls to i32
  %i.lnx = add nuw nsw i32 %i.lnu, %i.lnw         ; 3 uses
  %i.lny = icmp samesign ugt i32 %i.lnx, %i.kby
  br i1 %i.lny, label %bb.pc, label %.preheader445.5.i

.preheader445.5.i:                                ; preds = %.preheader445.4.i
  %i.lnz = zext i16 %i.llw to i32
  %i.loa = add nuw nsw i32 %i.lnx, %i.lnz         ; 3 uses
  %i.lob = icmp samesign ugt i32 %i.loa, %i.kby
  br i1 %i.lob, label %bb.pc, label %.preheader445.6.i

.preheader445.6.i:                                ; preds = %.preheader445.5.i
  %i.loc = zext i16 %i.lma to i32
  %i.lod = add nuw nsw i32 %i.loa, %i.loc         ; 3 uses
  %i.loe = icmp samesign ugt i32 %i.lod, %i.kby
  br i1 %i.loe, label %bb.pc, label %.preheader445.7.i

.preheader445.7.i:                                ; preds = %.preheader445.6.i
  %i.lof = zext i16 %i.lme to i32
  %i.log = add nuw nsw i32 %i.lod, %i.lof         ; 3 uses
  %i.loh = icmp samesign ugt i32 %i.log, %i.kby
  br i1 %i.loh, label %bb.pc, label %.preheader445.8.i

.preheader445.8.i:                                ; preds = %.preheader445.7.i
  %i.loi = zext i16 %i.lmi to i32
  %i.loj = add nuw nsw i32 %i.log, %i.loi         ; 3 uses
  %i.lok = icmp samesign ugt i32 %i.loj, %i.kby
  br i1 %i.lok, label %bb.pc, label %.preheader445.9.i

.preheader445.9.i:                                ; preds = %.preheader445.8.i
  %i.lol = zext i16 %i.lmm to i32
  %i.lom = add nuw nsw i32 %i.loj, %i.lol         ; 3 uses
  %i.lon = icmp samesign ugt i32 %i.lom, %i.kby
  br i1 %i.lon, label %bb.pc, label %.preheader445.10.i

.preheader445.10.i:                               ; preds = %.preheader445.9.i
  %i.loo = zext i16 %i.lmq to i32
  %i.lop = add nuw nsw i32 %i.lom, %i.loo         ; 3 uses
  %i.loq = icmp samesign ugt i32 %i.lop, %i.kby
  br i1 %i.loq, label %bb.pc, label %.preheader445.11.i

.preheader445.11.i:                               ; preds = %.preheader445.10.i
  %i.lor = zext i16 %i.lmu to i32
  %i.los = add nuw nsw i32 %i.lop, %i.lor         ; 3 uses
  %i.lot = icmp samesign ugt i32 %i.los, %i.kby
  br i1 %i.lot, label %bb.pc, label %.preheader445.12.i

.preheader445.12.i:                               ; preds = %.preheader445.11.i
  %i.lou = zext i16 %i.lmy to i32
  %i.lov = add nuw nsw i32 %i.los, %i.lou         ; 3 uses
  %i.low = icmp samesign ugt i32 %i.lov, %i.kby
  br i1 %i.low, label %bb.pc, label %.preheader445.13.i

.preheader445.13.i:                               ; preds = %.preheader445.12.i
  %i.lox = zext i16 %i.lnc to i32
  %i.loy = add nuw nsw i32 %i.lov, %i.lox         ; 3 uses
  %i.loz = icmp samesign ugt i32 %i.loy, %i.kby
  br i1 %i.loz, label %bb.pc, label %.preheader445.14.i

.preheader445.14.i:                               ; preds = %.preheader445.13.i
  %i.lpa = zext i16 %i.lng to i32
  %i.lpb = add nuw nsw i32 %i.loy, %i.lpa         ; 3 uses
  %i.lpc = icmp samesign ugt i32 %i.lpb, %i.kby
  br i1 %i.lpc, label %bb.pc, label %.preheader445.15.i

.preheader445.15.i:                               ; preds = %.preheader445.14.i
  %i.lpd = zext i16 %i.lnk to i32
  %i.lpe = add nuw nsw i32 %i.lpb, %i.lpd
  %i.lpf = icmp samesign ugt i32 %i.lpe, %i.kby
  br i1 %i.lpf, label %bb.pc, label %.critedge.i

.critedge.i:                                      ; preds = %.preheader445.15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.lpg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.lpg, ptr %7, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.lpg, ptr noundef nonnull align 1 dereferenceable(6) @.str.13, i64 6, i1 false)
  %i.lph = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 6, ptr %i.lph, align 8, !tbaa !32
  %i.lpi = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i8 0, ptr %i.lpi, align 2, !tbaa !26
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv12cpu_baselineL16medianBlur_8u_O1ERKNS_3MatERS1_i, ptr noundef nonnull @.str.1, i32 noundef 242) #14
          to label %bb.pa unwind label %bb.pb

bb.pa:                                            ; preds = %.critedge.i
  unreachable

bb.pb:                                            ; preds = %.critedge.i
  %i.lpj = landingpad { ptr, i32 }
          cleanup
  %i.lpk = load ptr, ptr %7, align 8, !tbaa !25   ; 2 uses
  %i.lpl = icmp eq ptr %i.lpk, %i.lpg
  br i1 %i.lpl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377.i: ; preds = %bb.pb
  %i.lpm = load i64, ptr %i.lpg, align 8, !tbaa !26
  %i.lpn = add i64 %i.lpm, 1
  call void @_ZdlPvm(ptr noundef %i.lpk, i64 noundef %i.lpn) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379.i: ; preds = %bb.pb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %_ZNSt6vectorItSaItEED2Ev.exit388.i

bb.pc:                                            ; preds = %.preheader445.15.i, %.preheader445.14.i, %.preheader445.13.i, %.preheader445.12.i, %.preheader445.11.i, %.preheader445.10.i, %.preheader445.9.i, %.preheader445.8.i, %.preheader445.7.i, %.preheader445.6.i, %.preheader445.5.i, %.preheader445.4.i, %.preheader445.3.i, %.preheader445.2.i, %.preheader445.1.i, %.preheader445.preheader.i
  %.0303476.lcssa.i = phi i32 [ 0, %.preheader445.preheader.i ], [ %i.lnl, %.preheader445.1.i ], [ %i.lno, %.preheader445.2.i ], [ %i.lnr, %.preheader445.3.i ], [ %i.lnu, %.preheader445.4.i ], [ %i.lnx, %.preheader445.5.i ], [ %i.loa, %.preheader445.6.i ], [ %i.lod, %.preheader445.7.i ], [ %i.log, %.preheader445.8.i ], [ %i.loj, %.preheader445.9.i ], [ %i.lom, %.preheader445.10.i ], [ %i.lop, %.preheader445.11.i ], [ %i.los, %.preheader445.12.i ], [ %i.lov, %.preheader445.13.i ], [ %i.loy, %.preheader445.14.i ], [ %i.lpb, %.preheader445.15.i ]
  %.1312475.lcssa.wide.i = phi i64 [ 0, %.preheader445.preheader.i ], [ 1, %.preheader445.1.i ], [ 2, %.preheader445.2.i ], [ 3, %.preheader445.3.i ], [ 4, %.preheader445.4.i ], [ 5, %.preheader445.5.i ], [ 6, %.preheader445.6.i ], [ 7, %.preheader445.7.i ], [ 8, %.preheader445.8.i ], [ 9, %.preheader445.9.i ], [ 10, %.preheader445.10.i ], [ 11, %.preheader445.11.i ], [ 12, %.preheader445.12.i ], [ 13, %.preheader445.13.i ], [ 14, %.preheader445.14.i ], [ 15, %.preheader445.15.i ] ; 6 uses
  %.lcssa.sroa.phi.i = phi ptr [ %.sroa.0.i, %.preheader445.preheader.i ], [ %.sroa.5.i, %.preheader445.1.i ], [ %.sroa.6.i, %.preheader445.2.i ], [ %.sroa.7.i, %.preheader445.3.i ], [ %.sroa.8.i, %.preheader445.4.i ], [ %.sroa.9.i, %.preheader445.5.i ], [ %.sroa.10.i, %.preheader445.6.i ], [ %.sroa.11.i, %.preheader445.7.i ], [ %.sroa.12.i, %.preheader445.8.i ], [ %.sroa.13.i, %.preheader445.9.i ], [ %.sroa.14.i, %.preheader445.10.i ], [ %.sroa.15.i, %.preheader445.11.i ], [ %.sroa.16.i, %.preheader445.12.i ], [ %.sroa.17.i, %.preheader445.13.i ], [ %.sroa.18.i, %.preheader445.14.i ], [ %.sroa.19.i, %.preheader445.15.i ] ; 3 uses
  %i.lpo = trunc nuw nsw i64 %.1312475.lcssa.wide.i to i8
  %i.lpp = load i16, ptr %.lcssa.sroa.phi.i, align 2, !tbaa !123 ; 3 uses
  %i.lpq = sub nuw nsw i64 %indvars.iv558.i, %i.kcb ; 5 uses
  %i.lpr = zext i16 %i.lpp to i64                 ; 2 uses
  %.not.i552 = icmp samesign ult i64 %i.lpq, %i.lpr
  br i1 %.not.i552, label %bb.pe, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.lps = getelementptr inbounds nuw [32 x i8], ptr %i.kbu, i64 %.1312475.lcssa.wide.i ; 17 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.lps, i8 0, i64 32, i1 false)
  %i.lpt = trunc i64 %i.lpq to i16                ; 3 uses
  store i16 %i.lpt, ptr %.lcssa.sroa.phi.i, align 2, !tbaa !123
  %i.lpu = and i64 %i.lpq, 65535
  %.not502.i = icmp samesign ult i64 %i.lkx, %i.lpu
  br i1 %.not502.i, label %._crit_edge480.i, label %.preheader444.preheader.i

.preheader444.preheader.i:                        ; preds = %bb.pd
  %i.lpv = trunc nuw nsw i64 %i.lpq to i32
  %i.lpw = or disjoint i64 %.1312475.lcssa.wide.i, %i.kmk
  %i.lpx = trunc nuw nsw i64 %i.lpw to i32
  %i.lpy = mul nsw i32 %i.kcz, %i.lpx
  %i.lpz = add i32 %i.lpy, %i.lpv
  %i.lqa = shl nsw i32 %i.lpz, 4
  %i.lqb = sext i32 %i.lqa to i64
  %i.lqc = getelementptr inbounds [2 x i8], ptr %i.kbj, i64 %i.lqb
  %i.lqd = getelementptr inbounds nuw i8, ptr %i.lps, i64 2
  %i.lqe = getelementptr inbounds nuw i8, ptr %i.lps, i64 4
  %i.lqf = getelementptr inbounds nuw i8, ptr %i.lps, i64 6
  %i.lqg = getelementptr inbounds nuw i8, ptr %i.lps, i64 8
  %i.lqh = getelementptr inbounds nuw i8, ptr %i.lps, i64 10
  %i.lqi = getelementptr inbounds nuw i8, ptr %i.lps, i64 12
  %i.lqj = getelementptr inbounds nuw i8, ptr %i.lps, i64 14
  %i.lqk = getelementptr inbounds nuw i8, ptr %i.lps, i64 16
  %i.lql = getelementptr inbounds nuw i8, ptr %i.lps, i64 18
  %i.lqm = getelementptr inbounds nuw i8, ptr %i.lps, i64 20
  %i.lqn = getelementptr inbounds nuw i8, ptr %i.lps, i64 22
  %i.lqo = getelementptr inbounds nuw i8, ptr %i.lps, i64 24
  %i.lqp = getelementptr inbounds nuw i8, ptr %i.lps, i64 26
  %i.lqq = getelementptr inbounds nuw i8, ptr %i.lps, i64 28
  %i.lqr = getelementptr inbounds nuw i8, ptr %i.lps, i64 30
  br label %.preheader444.i

.preheader444.i:                                  ; preds = %.preheader444.i, %.preheader444.preheader.i
  %i.lqs = phi i16 [ %i.ltd, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lqt = phi i16 [ %i.lta, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lqu = phi i16 [ %i.lsx, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lqv = phi i16 [ %i.lsu, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lqw = phi i16 [ %i.lsr, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lqx = phi i16 [ %i.lso, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lqy = phi i16 [ %i.lsl, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lqz = phi i16 [ %i.lsi, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lra = phi i16 [ %i.lsf, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lrb = phi i16 [ %i.lsc, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lrc = phi i16 [ %i.lrz, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lrd = phi i16 [ %i.lrw, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lre = phi i16 [ %i.lrt, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lrf = phi i16 [ %i.lrq, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lrg = phi i16 [ %i.lrn, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %i.lrh = phi i16 [ %i.lrk, %.preheader444.i ], [ 0, %.preheader444.preheader.i ]
  %.1307479.i = phi ptr [ %i.ltf, %.preheader444.i ], [ %i.lqc, %.preheader444.preheader.i ] ; 17 uses
  %i.lri = phi i16 [ %i.lte, %.preheader444.i ], [ %i.lpt, %.preheader444.preheader.i ]
  %i.lrj = load i16, ptr %.1307479.i, align 2, !tbaa !123
  %i.lrk = add i16 %i.lrj, %i.lrh                 ; 2 uses
  store i16 %i.lrk, ptr %i.lps, align 16, !tbaa !123
  %i.lrl = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 2
  %i.lrm = load i16, ptr %i.lrl, align 2, !tbaa !123
  %i.lrn = add i16 %i.lrm, %i.lrg                 ; 2 uses
  store i16 %i.lrn, ptr %i.lqd, align 2, !tbaa !123
  %i.lro = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 4
  %i.lrp = load i16, ptr %i.lro, align 2, !tbaa !123
  %i.lrq = add i16 %i.lrp, %i.lrf                 ; 2 uses
  store i16 %i.lrq, ptr %i.lqe, align 4, !tbaa !123
  %i.lrr = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 6
  %i.lrs = load i16, ptr %i.lrr, align 2, !tbaa !123
  %i.lrt = add i16 %i.lrs, %i.lre                 ; 2 uses
  store i16 %i.lrt, ptr %i.lqf, align 2, !tbaa !123
  %i.lru = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 8
  %i.lrv = load i16, ptr %i.lru, align 2, !tbaa !123
  %i.lrw = add i16 %i.lrv, %i.lrd                 ; 2 uses
  store i16 %i.lrw, ptr %i.lqg, align 8, !tbaa !123
  %i.lrx = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 10
  %i.lry = load i16, ptr %i.lrx, align 2, !tbaa !123
  %i.lrz = add i16 %i.lry, %i.lrc                 ; 2 uses
  store i16 %i.lrz, ptr %i.lqh, align 2, !tbaa !123
  %i.lsa = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 12
  %i.lsb = load i16, ptr %i.lsa, align 2, !tbaa !123
  %i.lsc = add i16 %i.lsb, %i.lrb                 ; 2 uses
  store i16 %i.lsc, ptr %i.lqi, align 4, !tbaa !123
  %i.lsd = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 14
  %i.lse = load i16, ptr %i.lsd, align 2, !tbaa !123
  %i.lsf = add i16 %i.lse, %i.lra                 ; 2 uses
  store i16 %i.lsf, ptr %i.lqj, align 2, !tbaa !123
  %i.lsg = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 16
  %i.lsh = load i16, ptr %i.lsg, align 2, !tbaa !123
  %i.lsi = add i16 %i.lsh, %i.lqz                 ; 2 uses
  store i16 %i.lsi, ptr %i.lqk, align 16, !tbaa !123
  %i.lsj = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 18
  %i.lsk = load i16, ptr %i.lsj, align 2, !tbaa !123
  %i.lsl = add i16 %i.lsk, %i.lqy                 ; 2 uses
  store i16 %i.lsl, ptr %i.lql, align 2, !tbaa !123
  %i.lsm = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 20
  %i.lsn = load i16, ptr %i.lsm, align 2, !tbaa !123
  %i.lso = add i16 %i.lsn, %i.lqx                 ; 2 uses
  store i16 %i.lso, ptr %i.lqm, align 4, !tbaa !123
  %i.lsp = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 22
  %i.lsq = load i16, ptr %i.lsp, align 2, !tbaa !123
  %i.lsr = add i16 %i.lsq, %i.lqw                 ; 2 uses
  store i16 %i.lsr, ptr %i.lqn, align 2, !tbaa !123
  %i.lss = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 24
  %i.lst = load i16, ptr %i.lss, align 2, !tbaa !123
  %i.lsu = add i16 %i.lst, %i.lqv                 ; 2 uses
  store i16 %i.lsu, ptr %i.lqo, align 8, !tbaa !123
  %i.lsv = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 26
  %i.lsw = load i16, ptr %i.lsv, align 2, !tbaa !123
  %i.lsx = add i16 %i.lsw, %i.lqu                 ; 2 uses
  store i16 %i.lsx, ptr %i.lqp, align 2, !tbaa !123
  %i.lsy = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 28
  %i.lsz = load i16, ptr %i.lsy, align 2, !tbaa !123
  %i.lta = add i16 %i.lsz, %i.lqt                 ; 2 uses
  store i16 %i.lta, ptr %i.lqq, align 4, !tbaa !123
  %i.ltb = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 30
  %i.ltc = load i16, ptr %i.ltb, align 2, !tbaa !123
  %i.ltd = add i16 %i.ltc, %i.lqs                 ; 2 uses
  store i16 %i.ltd, ptr %i.lqr, align 2, !tbaa !123
  %i.lte = add i16 %i.lri, 1                      ; 3 uses
  %i.ltf = getelementptr inbounds nuw i8, ptr %.1307479.i, i64 32
  %i.ltg = zext i16 %i.lte to i64
  %.not503.i = icmp samesign ult i64 %i.lkx, %i.ltg
  br i1 %.not503.i, label %._crit_edge480.i, label %.preheader444.i, !llvm.loop !113

bb.pe:                                            ; preds = %bb.pc
  %i.lth = or disjoint i64 %.1312475.lcssa.wide.i, %i.kmk
  %i.lti = trunc nuw nsw i64 %i.lth to i32
  %i.ltj = mul nsw i32 %i.kde, %i.lti
  %i.ltk = sext i32 %i.ltj to i64
  %i.ltl = getelementptr inbounds [2 x i8], ptr %i.kbj, i64 %i.ltk ; 2 uses
  %.not346487.i = icmp samesign ult i64 %i.lkx, %i.lpr
  br i1 %.not346487.i, label %._crit_edge480.i, label %.preheader.lr.ph.i554

.preheader.lr.ph.i554:                            ; preds = %bb.pe
  %i.ltm = getelementptr inbounds nuw [32 x i8], ptr %i.kbu, i64 %.1312475.lcssa.wide.i ; 17 uses
  %.phi.trans.insert616.i = getelementptr inbounds nuw i8, ptr %i.ltm, i64 14 ; 2 uses
  %.pre617.i = load i16, ptr %.phi.trans.insert616.i, align 2, !tbaa !123
  %i.ltn = getelementptr inbounds nuw i8, ptr %i.ltm, i64 2 ; 2 uses
  %i.lto = getelementptr inbounds nuw i8, ptr %i.ltm, i64 4 ; 2 uses
  %i.ltp = getelementptr inbounds nuw i8, ptr %i.ltm, i64 6 ; 2 uses
  %i.ltq = getelementptr inbounds nuw i8, ptr %i.ltm, i64 8 ; 2 uses
  %i.ltr = getelementptr inbounds nuw i8, ptr %i.ltm, i64 10 ; 2 uses
  %i.lts = getelementptr inbounds nuw i8, ptr %i.ltm, i64 12 ; 2 uses
  %i.ltt = getelementptr inbounds nuw i8, ptr %i.ltm, i64 16 ; 2 uses
  %i.ltu = getelementptr inbounds nuw i8, ptr %i.ltm, i64 18 ; 2 uses
  %i.ltv = getelementptr inbounds nuw i8, ptr %i.ltm, i64 20 ; 2 uses
  %i.ltw = getelementptr inbounds nuw i8, ptr %i.ltm, i64 22 ; 2 uses
  %i.ltx = getelementptr inbounds nuw i8, ptr %i.ltm, i64 24 ; 2 uses
  %i.lty = getelementptr inbounds nuw i8, ptr %i.ltm, i64 26 ; 2 uses
  %i.ltz = getelementptr inbounds nuw i8, ptr %i.ltm, i64 28 ; 2 uses
  %i.lua = getelementptr inbounds nuw i8, ptr %i.ltm, i64 30 ; 2 uses
  %.promoted.i = load i16, ptr %i.ltm, align 16, !tbaa !123
  %.promoted677.i = load i16, ptr %i.ltn, align 2, !tbaa !123
  %.promoted678.i = load i16, ptr %i.lto, align 4, !tbaa !123
  %.promoted679.i = load i16, ptr %i.ltp, align 2, !tbaa !123
  %.promoted680.i = load i16, ptr %i.ltq, align 8, !tbaa !123
  %.promoted681.i = load i16, ptr %i.ltr, align 2, !tbaa !123
  %.promoted682.i = load i16, ptr %i.lts, align 4, !tbaa !123
  %.promoted683.i = load i16, ptr %i.ltt, align 16, !tbaa !123
  %.promoted684.i = load i16, ptr %i.ltu, align 2, !tbaa !123
  %.promoted685.i = load i16, ptr %i.ltv, align 4, !tbaa !123
  %.promoted686.i = load i16, ptr %i.ltw, align 2, !tbaa !123
  %.promoted687.i = load i16, ptr %i.ltx, align 8, !tbaa !123
  %.promoted688.i = load i16, ptr %i.lty, align 2, !tbaa !123
  %.promoted689.i = load i16, ptr %i.ltz, align 4, !tbaa !123
  %.promoted690.i = load i16, ptr %i.lua, align 2, !tbaa !123
  br label %.preheader.i555

.preheader.i555:                                  ; preds = %.preheader.i555, %.preheader.lr.ph.i554
  %i.lub = phi i16 [ %.promoted690.i, %.preheader.lr.ph.i554 ], [ %i.lyp, %.preheader.i555 ]
  %i.luc = phi i16 [ %.promoted689.i, %.preheader.lr.ph.i554 ], [ %i.lyj, %.preheader.i555 ]
  %i.lud = phi i16 [ %.promoted688.i, %.preheader.lr.ph.i554 ], [ %i.lyd, %.preheader.i555 ]
  %i.lue = phi i16 [ %.promoted687.i, %.preheader.lr.ph.i554 ], [ %i.lxx, %.preheader.i555 ]
  %i.luf = phi i16 [ %.promoted686.i, %.preheader.lr.ph.i554 ], [ %i.lxr, %.preheader.i555 ]
  %i.lug = phi i16 [ %.promoted685.i, %.preheader.lr.ph.i554 ], [ %i.lxl, %.preheader.i555 ]
  %i.luh = phi i16 [ %.promoted684.i, %.preheader.lr.ph.i554 ], [ %i.lxf, %.preheader.i555 ]
  %i.lui = phi i16 [ %.promoted683.i, %.preheader.lr.ph.i554 ], [ %i.lwz, %.preheader.i555 ]
  %i.luj = phi i16 [ %.promoted682.i, %.preheader.lr.ph.i554 ], [ %i.lwn, %.preheader.i555 ]
  %i.luk = phi i16 [ %.promoted681.i, %.preheader.lr.ph.i554 ], [ %i.lwh, %.preheader.i555 ]
  %i.lul = phi i16 [ %.promoted680.i, %.preheader.lr.ph.i554 ], [ %i.lwb, %.preheader.i555 ]
  %i.lum = phi i16 [ %.promoted679.i, %.preheader.lr.ph.i554 ], [ %i.lvv, %.preheader.i555 ]
  %i.lun = phi i16 [ %.promoted678.i, %.preheader.lr.ph.i554 ], [ %i.lvp, %.preheader.i555 ]
  %i.luo = phi i16 [ %.promoted677.i, %.preheader.lr.ph.i554 ], [ %i.lvj, %.preheader.i555 ]
  %i.lup = phi i16 [ %.promoted.i, %.preheader.lr.ph.i554 ], [ %i.lvd, %.preheader.i555 ]
  %i.luq = phi i16 [ %.pre617.i, %.preheader.lr.ph.i554 ], [ %i.lwt, %.preheader.i555 ]
  %i.lur = phi i16 [ %i.lpp, %.preheader.lr.ph.i554 ], [ %i.lyq, %.preheader.i555 ] ; 2 uses
  %i.lus = zext i16 %i.lur to i32                 ; 2 uses
  %i.lut = shl nuw nsw i32 %i.lus, 4
  %sub.i = sub nsw i32 %i.lus, %i.kbz
  %i.luu = call i32 @llvm.smax.i32(i32 %sub.i, i32 0)
  %i.luv = shl nuw nsw i32 %i.luu, 4
  %i.luw = zext nneg i32 %i.luv to i64
  %i.lux = zext nneg i32 %i.lut to i64
  %i.luy = getelementptr inbounds nuw [2 x i8], ptr %i.ltl, i64 %i.lux ; 16 uses
  %i.luz = load i16, ptr %i.luy, align 16, !tbaa !123
  %i.lva = getelementptr inbounds nuw [2 x i8], ptr %i.ltl, i64 %i.luw ; 16 uses
  %i.lvb = load i16, ptr %i.lva, align 16, !tbaa !123
  %i.lvc = sub i16 %i.luz, %i.lvb
  %i.lvd = add i16 %i.lvc, %i.lup                 ; 2 uses
  store i16 %i.lvd, ptr %i.ltm, align 16, !tbaa !123
  %i.lve = getelementptr inbounds nuw i8, ptr %i.luy, i64 2
  %i.lvf = load i16, ptr %i.lve, align 2, !tbaa !123
  %i.lvg = getelementptr inbounds nuw i8, ptr %i.lva, i64 2
  %i.lvh = load i16, ptr %i.lvg, align 2, !tbaa !123
  %i.lvi = sub i16 %i.lvf, %i.lvh
  %i.lvj = add i16 %i.lvi, %i.luo                 ; 2 uses
  store i16 %i.lvj, ptr %i.ltn, align 2, !tbaa !123
  %i.lvk = getelementptr inbounds nuw i8, ptr %i.luy, i64 4
  %i.lvl = load i16, ptr %i.lvk, align 4, !tbaa !123
  %i.lvm = getelementptr inbounds nuw i8, ptr %i.lva, i64 4
  %i.lvn = load i16, ptr %i.lvm, align 4, !tbaa !123
  %i.lvo = sub i16 %i.lvl, %i.lvn
  %i.lvp = add i16 %i.lvo, %i.lun                 ; 2 uses
  store i16 %i.lvp, ptr %i.lto, align 4, !tbaa !123
  %i.lvq = getelementptr inbounds nuw i8, ptr %i.luy, i64 6
  %i.lvr = load i16, ptr %i.lvq, align 2, !tbaa !123
  %i.lvs = getelementptr inbounds nuw i8, ptr %i.lva, i64 6
  %i.lvt = load i16, ptr %i.lvs, align 2, !tbaa !123
  %i.lvu = sub i16 %i.lvr, %i.lvt
  %i.lvv = add i16 %i.lvu, %i.lum                 ; 2 uses
  store i16 %i.lvv, ptr %i.ltp, align 2, !tbaa !123
  %i.lvw = getelementptr inbounds nuw i8, ptr %i.luy, i64 8
  %i.lvx = load i16, ptr %i.lvw, align 8, !tbaa !123
  %i.lvy = getelementptr inbounds nuw i8, ptr %i.lva, i64 8
  %i.lvz = load i16, ptr %i.lvy, align 8, !tbaa !123
  %i.lwa = sub i16 %i.lvx, %i.lvz
  %i.lwb = add i16 %i.lwa, %i.lul                 ; 2 uses
  store i16 %i.lwb, ptr %i.ltq, align 8, !tbaa !123
  %i.lwc = getelementptr inbounds nuw i8, ptr %i.luy, i64 10
  %i.lwd = load i16, ptr %i.lwc, align 2, !tbaa !123
  %i.lwe = getelementptr inbounds nuw i8, ptr %i.lva, i64 10
  %i.lwf = load i16, ptr %i.lwe, align 2, !tbaa !123
  %i.lwg = sub i16 %i.lwd, %i.lwf
  %i.lwh = add i16 %i.lwg, %i.luk                 ; 2 uses
  store i16 %i.lwh, ptr %i.ltr, align 2, !tbaa !123
  %i.lwi = getelementptr inbounds nuw i8, ptr %i.luy, i64 12
  %i.lwj = load i16, ptr %i.lwi, align 4, !tbaa !123
  %i.lwk = getelementptr inbounds nuw i8, ptr %i.lva, i64 12
  %i.lwl = load i16, ptr %i.lwk, align 4, !tbaa !123
  %i.lwm = sub i16 %i.lwj, %i.lwl
  %i.lwn = add i16 %i.lwm, %i.luj                 ; 2 uses
  store i16 %i.lwn, ptr %i.lts, align 4, !tbaa !123
  %i.lwo = getelementptr inbounds nuw i8, ptr %i.luy, i64 14
  %i.lwp = load i16, ptr %i.lwo, align 2, !tbaa !123
  %i.lwq = getelementptr inbounds nuw i8, ptr %i.lva, i64 14
  %i.lwr = load i16, ptr %i.lwq, align 2, !tbaa !123
  %i.lws = sub i16 %i.lwp, %i.lwr
  %i.lwt = add i16 %i.lws, %i.luq                 ; 2 uses
  store i16 %i.lwt, ptr %.phi.trans.insert616.i, align 2, !tbaa !123
  %i.lwu = getelementptr inbounds nuw i8, ptr %i.luy, i64 16
  %i.lwv = load i16, ptr %i.lwu, align 16, !tbaa !123
  %i.lww = getelementptr inbounds nuw i8, ptr %i.lva, i64 16
  %i.lwx = load i16, ptr %i.lww, align 16, !tbaa !123
  %i.lwy = sub i16 %i.lwv, %i.lwx
  %i.lwz = add i16 %i.lwy, %i.lui                 ; 2 uses
  store i16 %i.lwz, ptr %i.ltt, align 16, !tbaa !123
  %i.lxa = getelementptr inbounds nuw i8, ptr %i.luy, i64 18
  %i.lxb = load i16, ptr %i.lxa, align 2, !tbaa !123
  %i.lxc = getelementptr inbounds nuw i8, ptr %i.lva, i64 18
  %i.lxd = load i16, ptr %i.lxc, align 2, !tbaa !123
  %i.lxe = sub i16 %i.lxb, %i.lxd
  %i.lxf = add i16 %i.lxe, %i.luh                 ; 2 uses
  store i16 %i.lxf, ptr %i.ltu, align 2, !tbaa !123
  %i.lxg = getelementptr inbounds nuw i8, ptr %i.luy, i64 20
  %i.lxh = load i16, ptr %i.lxg, align 4, !tbaa !123
  %i.lxi = getelementptr inbounds nuw i8, ptr %i.lva, i64 20
  %i.lxj = load i16, ptr %i.lxi, align 4, !tbaa !123
  %i.lxk = sub i16 %i.lxh, %i.lxj
  %i.lxl = add i16 %i.lxk, %i.lug                 ; 2 uses
  store i16 %i.lxl, ptr %i.ltv, align 4, !tbaa !123
  %i.lxm = getelementptr inbounds nuw i8, ptr %i.luy, i64 22
  %i.lxn = load i16, ptr %i.lxm, align 2, !tbaa !123
  %i.lxo = getelementptr inbounds nuw i8, ptr %i.lva, i64 22
  %i.lxp = load i16, ptr %i.lxo, align 2, !tbaa !123
  %i.lxq = sub i16 %i.lxn, %i.lxp
  %i.lxr = add i16 %i.lxq, %i.luf                 ; 2 uses
  store i16 %i.lxr, ptr %i.ltw, align 2, !tbaa !123
  %i.lxs = getelementptr inbounds nuw i8, ptr %i.luy, i64 24
  %i.lxt = load i16, ptr %i.lxs, align 8, !tbaa !123
  %i.lxu = getelementptr inbounds nuw i8, ptr %i.lva, i64 24
  %i.lxv = load i16, ptr %i.lxu, align 8, !tbaa !123
  %i.lxw = sub i16 %i.lxt, %i.lxv
  %i.lxx = add i16 %i.lxw, %i.lue                 ; 2 uses
  store i16 %i.lxx, ptr %i.ltx, align 8, !tbaa !123
  %i.lxy = getelementptr inbounds nuw i8, ptr %i.luy, i64 26
  %i.lxz = load i16, ptr %i.lxy, align 2, !tbaa !123
  %i.lya = getelementptr inbounds nuw i8, ptr %i.lva, i64 26
  %i.lyb = load i16, ptr %i.lya, align 2, !tbaa !123
  %i.lyc = sub i16 %i.lxz, %i.lyb
  %i.lyd = add i16 %i.lyc, %i.lud                 ; 2 uses
  store i16 %i.lyd, ptr %i.lty, align 2, !tbaa !123
  %i.lye = getelementptr inbounds nuw i8, ptr %i.luy, i64 28
  %i.lyf = load i16, ptr %i.lye, align 4, !tbaa !123
  %i.lyg = getelementptr inbounds nuw i8, ptr %i.lva, i64 28
  %i.lyh = load i16, ptr %i.lyg, align 4, !tbaa !123
  %i.lyi = sub i16 %i.lyf, %i.lyh
  %i.lyj = add i16 %i.lyi, %i.luc                 ; 2 uses
  store i16 %i.lyj, ptr %i.ltz, align 4, !tbaa !123
  %i.lyk = getelementptr inbounds nuw i8, ptr %i.luy, i64 30
  %i.lyl = load i16, ptr %i.lyk, align 2, !tbaa !123
  %i.lym = getelementptr inbounds nuw i8, ptr %i.lva, i64 30
  %i.lyn = load i16, ptr %i.lym, align 2, !tbaa !123
  %i.lyo = sub i16 %i.lyl, %i.lyn
  %i.lyp = add i16 %i.lyo, %i.lub                 ; 2 uses
  store i16 %i.lyp, ptr %i.lua, align 2, !tbaa !123
  %i.lyq = add i16 %i.lur, 1                      ; 3 uses
  %i.lyr = zext i16 %i.lyq to i64
  %.not346.i = icmp samesign ult i64 %i.lkx, %i.lyr
  br i1 %.not346.i, label %._crit_edge480.i, label %.preheader.i555, !llvm.loop !114

._crit_edge480.i:                                 ; preds = %.preheader444.i, %.preheader.i555, %bb.pe, %bb.pd
  %storemerge.i = phi i16 [ %i.lyq, %.preheader.i555 ], [ %i.lpt, %bb.pd ], [ %i.lpp, %bb.pe ], [ %i.lte, %.preheader444.i ]
  store i16 %storemerge.i, ptr %.lcssa.sroa.phi.i, align 2
  %i.lys = add nsw i64 %i.lpq, %i.lki
  %.idx666.i = shl nsw i64 %i.lys, 5
  %i.lyt = getelementptr inbounds i8, ptr %i.kbf, i64 %.idx666.i ; 16 uses
  %i.lyu = load i16, ptr %i.lyt, align 16, !tbaa !123
  %i.lyv = sub i16 %i.llc, %i.lyu
  store i16 %i.lyv, ptr %6, align 16, !tbaa !123
  %i.lyw = getelementptr inbounds nuw i8, ptr %i.lyt, i64 2
  %i.lyx = load i16, ptr %i.lyw, align 2, !tbaa !123
  %i.lyy = sub i16 %i.llg, %i.lyx
  store i16 %i.lyy, ptr %.phi.trans.insert.i, align 2, !tbaa !123
  %i.lyz = getelementptr inbounds nuw i8, ptr %i.lyt, i64 4
  %i.lza = load i16, ptr %i.lyz, align 4, !tbaa !123
  %i.lzb = sub i16 %i.llk, %i.lza
  store i16 %i.lzb, ptr %.phi.trans.insert588.i, align 4, !tbaa !123
  %i.lzc = getelementptr inbounds nuw i8, ptr %i.lyt, i64 6
end_hunk_0
