Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/byte_stream_split_internal_avx2?download=true
inline.NumInlined: 97
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi8EEEvPKhilPh:bb.a
  %i.cvu = insertelement <16 x i8> %i.cvt, i8 %i.cve, i64 7
  %i.cvv = insertelement <16 x i8> %i.cvu, i8 %i.cvf, i64 8
  %i.cvw = insertelement <16 x i8> %i.cvv, i8 %i.cvg, i64 9
  %i.cvx = insertelement <16 x i8> %i.cvw, i8 %i.cvh, i64 10
  %i.cvy = insertelement <16 x i8> %i.cvx, i8 %i.cvi, i64 11
  %i.cvz = insertelement <16 x i8> %i.cvy, i8 %i.cvj, i64 12
  %i.cwa = insertelement <16 x i8> %i.cvz, i8 %i.cvk, i64 13
  %i.cwb = insertelement <16 x i8> %i.cwa, i8 %i.cvl, i64 14
  %i.cwc = insertelement <16 x i8> %i.cwb, i8 %i.cvm, i64 15
  %i.cwd = getelementptr i8, ptr %i.clm, i64 %i.i
  store <16 x i8> %i.cwc, ptr %i.cwd, align 1, !tbaa !7, !alias.scope !247, !noalias !248
  %i.cwe = getelementptr inbounds nuw i8, ptr %i.ckh, i64 6
  %i.cwf = getelementptr i8, ptr %i.cki, i64 14
  %i.cwg = getelementptr i8, ptr %i.ckk, i64 22
  %i.cwh = getelementptr i8, ptr %i.ckm, i64 30
  %i.cwi = getelementptr i8, ptr %i.cko, i64 38
  %i.cwj = getelementptr i8, ptr %i.ckq, i64 46
  %i.cwk = getelementptr i8, ptr %i.cks, i64 54
  %i.cwl = getelementptr i8, ptr %i.cku, i64 62
  %i.cwm = getelementptr i8, ptr %i.ckw, i64 70
  %i.cwn = getelementptr i8, ptr %i.cky, i64 78
  %i.cwo = getelementptr i8, ptr %i.cla, i64 86
  %i.cwp = getelementptr i8, ptr %i.clc, i64 94
  %i.cwq = getelementptr i8, ptr %i.cle, i64 102
  %i.cwr = getelementptr i8, ptr %i.clg, i64 110
  %i.cws = getelementptr i8, ptr %i.cli, i64 118
  %i.cwt = getelementptr i8, ptr %i.clk, i64 126
  %i.cwu = load i8, ptr %i.cwe, align 1, !tbaa !7, !alias.scope !236
  %i.cwv = load i8, ptr %i.cwf, align 1, !tbaa !7, !alias.scope !236
  %i.cww = load i8, ptr %i.cwg, align 1, !tbaa !7, !alias.scope !236
  %i.cwx = load i8, ptr %i.cwh, align 1, !tbaa !7, !alias.scope !236
  %i.cwy = load i8, ptr %i.cwi, align 1, !tbaa !7, !alias.scope !236
  %i.cwz = load i8, ptr %i.cwj, align 1, !tbaa !7, !alias.scope !236
  %i.cxa = load i8, ptr %i.cwk, align 1, !tbaa !7, !alias.scope !236
  %i.cxb = load i8, ptr %i.cwl, align 1, !tbaa !7, !alias.scope !236
  %i.cxc = load i8, ptr %i.cwm, align 1, !tbaa !7, !alias.scope !236
  %i.cxd = load i8, ptr %i.cwn, align 1, !tbaa !7, !alias.scope !236
  %i.cxe = load i8, ptr %i.cwo, align 1, !tbaa !7, !alias.scope !236
  %i.cxf = load i8, ptr %i.cwp, align 1, !tbaa !7, !alias.scope !236
  %i.cxg = load i8, ptr %i.cwq, align 1, !tbaa !7, !alias.scope !236
  %i.cxh = load i8, ptr %i.cwr, align 1, !tbaa !7, !alias.scope !236
  %i.cxi = load i8, ptr %i.cws, align 1, !tbaa !7, !alias.scope !236
  %i.cxj = load i8, ptr %i.cwt, align 1, !tbaa !7, !alias.scope !236
  %i.cxk = insertelement <16 x i8> poison, i8 %i.cwu, i64 0
  %i.cxl = insertelement <16 x i8> %i.cxk, i8 %i.cwv, i64 1
  %i.cxm = insertelement <16 x i8> %i.cxl, i8 %i.cww, i64 2
  %i.cxn = insertelement <16 x i8> %i.cxm, i8 %i.cwx, i64 3
  %i.cxo = insertelement <16 x i8> %i.cxn, i8 %i.cwy, i64 4
  %i.cxp = insertelement <16 x i8> %i.cxo, i8 %i.cwz, i64 5
  %i.cxq = insertelement <16 x i8> %i.cxp, i8 %i.cxa, i64 6
  %i.cxr = insertelement <16 x i8> %i.cxq, i8 %i.cxb, i64 7
  %i.cxs = insertelement <16 x i8> %i.cxr, i8 %i.cxc, i64 8
  %i.cxt = insertelement <16 x i8> %i.cxs, i8 %i.cxd, i64 9
  %i.cxu = insertelement <16 x i8> %i.cxt, i8 %i.cxe, i64 10
  %i.cxv = insertelement <16 x i8> %i.cxu, i8 %i.cxf, i64 11
  %i.cxw = insertelement <16 x i8> %i.cxv, i8 %i.cxg, i64 12
  %i.cxx = insertelement <16 x i8> %i.cxw, i8 %i.cxh, i64 13
  %i.cxy = insertelement <16 x i8> %i.cxx, i8 %i.cxi, i64 14
  %i.cxz = insertelement <16 x i8> %i.cxy, i8 %i.cxj, i64 15
  %i.cya = getelementptr i8, ptr %i.clm, i64 %i.k
  store <16 x i8> %i.cxz, ptr %i.cya, align 1, !tbaa !7, !alias.scope !249, !noalias !250
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.ckh, i64 7
  %i.cyc = getelementptr i8, ptr %i.cki, i64 15
  %i.cyd = getelementptr i8, ptr %i.ckk, i64 23
  %i.cye = getelementptr i8, ptr %i.ckm, i64 31
  %i.cyf = getelementptr i8, ptr %i.cko, i64 39
  %i.cyg = getelementptr i8, ptr %i.ckq, i64 47
  %i.cyh = getelementptr i8, ptr %i.cks, i64 55
  %i.cyi = getelementptr i8, ptr %i.cku, i64 63
  %i.cyj = getelementptr i8, ptr %i.ckw, i64 71
  %i.cyk = getelementptr i8, ptr %i.cky, i64 79
  %i.cyl = getelementptr i8, ptr %i.cla, i64 87
  %i.cym = getelementptr i8, ptr %i.clc, i64 95
  %i.cyn = getelementptr i8, ptr %i.cle, i64 103
  %i.cyo = getelementptr i8, ptr %i.clg, i64 111
  %i.cyp = getelementptr i8, ptr %i.cli, i64 119
  %i.cyq = getelementptr i8, ptr %i.clk, i64 127
  %i.cyr = load i8, ptr %i.cyb, align 1, !tbaa !7, !alias.scope !236
  %i.cys = load i8, ptr %i.cyc, align 1, !tbaa !7, !alias.scope !236
  %i.cyt = load i8, ptr %i.cyd, align 1, !tbaa !7, !alias.scope !236
  %i.cyu = load i8, ptr %i.cye, align 1, !tbaa !7, !alias.scope !236
  %i.cyv = load i8, ptr %i.cyf, align 1, !tbaa !7, !alias.scope !236
  %i.cyw = load i8, ptr %i.cyg, align 1, !tbaa !7, !alias.scope !236
  %i.cyx = load i8, ptr %i.cyh, align 1, !tbaa !7, !alias.scope !236
  %i.cyy = load i8, ptr %i.cyi, align 1, !tbaa !7, !alias.scope !236
  %i.cyz = load i8, ptr %i.cyj, align 1, !tbaa !7, !alias.scope !236
  %i.cza = load i8, ptr %i.cyk, align 1, !tbaa !7, !alias.scope !236
  %i.czb = load i8, ptr %i.cyl, align 1, !tbaa !7, !alias.scope !236
  %i.czc = load i8, ptr %i.cym, align 1, !tbaa !7, !alias.scope !236
  %i.czd = load i8, ptr %i.cyn, align 1, !tbaa !7, !alias.scope !236
  %i.cze = load i8, ptr %i.cyo, align 1, !tbaa !7, !alias.scope !236
  %i.czf = load i8, ptr %i.cyp, align 1, !tbaa !7, !alias.scope !236
  %i.czg = load i8, ptr %i.cyq, align 1, !tbaa !7, !alias.scope !236
  %i.czh = insertelement <16 x i8> poison, i8 %i.cyr, i64 0
  %i.czi = insertelement <16 x i8> %i.czh, i8 %i.cys, i64 1
  %i.czj = insertelement <16 x i8> %i.czi, i8 %i.cyt, i64 2
  %i.czk = insertelement <16 x i8> %i.czj, i8 %i.cyu, i64 3
  %i.czl = insertelement <16 x i8> %i.czk, i8 %i.cyv, i64 4
  %i.czm = insertelement <16 x i8> %i.czl, i8 %i.cyw, i64 5
  %i.czn = insertelement <16 x i8> %i.czm, i8 %i.cyx, i64 6
  %i.czo = insertelement <16 x i8> %i.czn, i8 %i.cyy, i64 7
  %i.czp = insertelement <16 x i8> %i.czo, i8 %i.cyz, i64 8
  %i.czq = insertelement <16 x i8> %i.czp, i8 %i.cza, i64 9
  %i.czr = insertelement <16 x i8> %i.czq, i8 %i.czb, i64 10
  %i.czs = insertelement <16 x i8> %i.czr, i8 %i.czc, i64 11
  %i.czt = insertelement <16 x i8> %i.czs, i8 %i.czd, i64 12
  %i.czu = insertelement <16 x i8> %i.czt, i8 %i.cze, i64 13
  %i.czv = insertelement <16 x i8> %i.czu, i8 %i.czf, i64 14
  %i.czw = insertelement <16 x i8> %i.czv, i8 %i.czg, i64 15
  %i.czx = getelementptr i8, ptr %i.clm, i64 %i.m
  store <16 x i8> %i.czw, ptr %i.czx, align 1, !tbaa !7, !alias.scope !251, !noalias !236
  %index.next448 = add nuw i64 %index447, 16      ; 2 uses
  %i.czy = icmp eq i64 %index.next448, %n.vec446
  br i1 %i.czy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !216

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n449 = icmp eq i64 %i.cjo, 0
  br i1 %cmp.n449, label %.preheader102, label %.preheader103.preheader

.preheader103.preheader:                          ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.080106.ph = phi i64 [ %i.bbz, %iter.check ], [ %i.bbz, %vector.memcheck ], [ %i.bde, %vec.epilog.iter.check ], [ %i.cjp, %vec.epilog.middle.block ]
  br label %.preheader103

.preheader103:                                    ; preds = %.preheader103.preheader, %.preheader103
  %.080106 = phi i64 [ %i.daq, %.preheader103 ], [ %.080106.ph, %.preheader103.preheader ] ; 3 uses
  %i.czz = shl nuw nsw i64 %.080106, 3
  %i.daa = getelementptr inbounds nuw i8, ptr %0, i64 %i.czz ; 8 uses
  %invariant.gep = getelementptr i8, ptr %3, i64 %.080106 ; 8 uses
  %i.dab = load i8, ptr %i.daa, align 1, !tbaa !7
  store i8 %i.dab, ptr %invariant.gep, align 1, !tbaa !7
  %i.dac = getelementptr inbounds nuw i8, ptr %i.daa, i64 1
  %i.dad = load i8, ptr %i.dac, align 1, !tbaa !7
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %2
  store i8 %i.dad, ptr %gep.1, align 1, !tbaa !7
  %i.dae = getelementptr inbounds nuw i8, ptr %i.daa, i64 2
  %i.daf = load i8, ptr %i.dae, align 1, !tbaa !7
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.c
  store i8 %i.daf, ptr %gep.2, align 1, !tbaa !7
  %i.dag = getelementptr inbounds nuw i8, ptr %i.daa, i64 3
  %i.dah = load i8, ptr %i.dag, align 1, !tbaa !7
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.e
  store i8 %i.dah, ptr %gep.3, align 1, !tbaa !7
  %i.dai = getelementptr inbounds nuw i8, ptr %i.daa, i64 4
  %i.daj = load i8, ptr %i.dai, align 1, !tbaa !7
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 %i.g
  store i8 %i.daj, ptr %gep.4, align 1, !tbaa !7
  %i.dak = getelementptr inbounds nuw i8, ptr %i.daa, i64 5
  %i.dal = load i8, ptr %i.dak, align 1, !tbaa !7
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 %i.i
  store i8 %i.dal, ptr %gep.5, align 1, !tbaa !7
  %i.dam = getelementptr inbounds nuw i8, ptr %i.daa, i64 6
  %i.dan = load i8, ptr %i.dam, align 1, !tbaa !7
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 %i.k
  store i8 %i.dan, ptr %gep.6, align 1, !tbaa !7
  %i.dao = getelementptr inbounds nuw i8, ptr %i.daa, i64 7
  %i.dap = load i8, ptr %i.dao, align 1, !tbaa !7
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 %i.m
  store i8 %i.dap, ptr %gep.7, align 1, !tbaa !7
  %i.daq = add nuw nsw i64 %.080106, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.daq, %2
  br i1 %exitcond.not, label %.preheader102, label %.preheader103, !llvm.loop !217

.preheader102:                                    ; preds = %.preheader103, %middle.block, %vec.epilog.middle.block, %bb.c
  %.not = icmp eq i64 %i.bby, 0
  br i1 %.not, label %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhilPh.exit, label %.preheader98.preheader

.preheader98.preheader:                           ; preds = %.preheader102, %.preheader98.preheader
  %.078113 = phi i64 [ %i.dfk, %.preheader98.preheader ], [ 0, %.preheader102 ] ; 3 uses
  %i.dar = shl nuw i64 %.078113, 8
  %i.das = getelementptr i8, ptr %0, i64 %i.dar   ; 8 uses
  %.sroa.0.0.copyload = load <32 x i8>, ptr %i.das, align 1 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.das, i64 32
  %.sroa.4.0.copyload = load <32 x i8>, ptr %.sroa.4.0..sroa_idx, align 1 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.das, i64 64
  %.sroa.5.0.copyload = load <32 x i8>, ptr %.sroa.5.0..sroa_idx, align 1 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.das, i64 96
  %.sroa.6.0.copyload = load <32 x i8>, ptr %.sroa.6.0..sroa_idx, align 1 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.das, i64 128
  %.sroa.7.0.copyload = load <32 x i8>, ptr %.sroa.7.0..sroa_idx, align 1 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.das, i64 160
  %.sroa.8.0.copyload = load <32 x i8>, ptr %.sroa.8.0..sroa_idx, align 1 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.das, i64 192
  %.sroa.9.0.copyload = load <32 x i8>, ptr %.sroa.9.0..sroa_idx, align 1 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.das, i64 224
  %.sroa.10.0.copyload = load <32 x i8>, ptr %.sroa.10.0..sroa_idx, align 1 ; 2 uses
  %i.dat = shufflevector <32 x i8> %.sroa.0.0.copyload, <32 x i8> %.sroa.4.0.copyload, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.dau = shufflevector <32 x i8> %.sroa.0.0.copyload, <32 x i8> %.sroa.4.0.copyload, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.dav = shufflevector <32 x i8> %i.dat, <32 x i8> %i.dau, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.daw = bitcast <32 x i8> %i.dat to <8 x i32>
  %i.dax = bitcast <32 x i8> %i.dau to <8 x i32>
  %i.day = shufflevector <8 x i32> %i.daw, <8 x i32> %i.dax, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.daz = bitcast <8 x i32> %i.day to <32 x i8>  ; 2 uses
  %i.dba = shufflevector <32 x i8> %i.dav, <32 x i8> %i.daz, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.dbb = shufflevector <32 x i8> %i.dav, <32 x i8> %i.daz, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.dbc = shufflevector <32 x i8> %i.dba, <32 x i8> %i.dbb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.dbd = bitcast <32 x i8> %i.dba to <8 x i32>
  %i.dbe = bitcast <32 x i8> %i.dbb to <8 x i32>
  %i.dbf = shufflevector <8 x i32> %i.dbd, <8 x i32> %i.dbe, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dbg = bitcast <8 x i32> %i.dbf to <32 x i8>  ; 2 uses
  %i.dbh = shufflevector <32 x i8> %i.dbc, <32 x i8> %i.dbg, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 4 uses
  %i.dbi = shufflevector <32 x i8> %i.dbc, <32 x i8> %i.dbg, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 5 uses
  %i.dbj = shufflevector <32 x i8> %i.dbh, <32 x i8> %i.dbi, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 3 uses
  %i.dbk = bitcast <32 x i8> %i.dbh to <8 x i32>
  %i.dbl = bitcast <32 x i8> %i.dbi to <8 x i32>
  %i.dbm = shufflevector <8 x i32> %i.dbk, <8 x i32> %i.dbl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.dbn = shufflevector <32 x i8> %.sroa.5.0.copyload, <32 x i8> %.sroa.6.0.copyload, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.dbo = shufflevector <32 x i8> %.sroa.5.0.copyload, <32 x i8> %.sroa.6.0.copyload, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.dbp = shufflevector <32 x i8> %i.dbn, <32 x i8> %i.dbo, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.dbq = bitcast <32 x i8> %i.dbn to <8 x i32>
  %i.dbr = bitcast <32 x i8> %i.dbo to <8 x i32>
  %i.dbs = shufflevector <8 x i32> %i.dbq, <8 x i32> %i.dbr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dbt = bitcast <8 x i32> %i.dbs to <32 x i8>  ; 2 uses
  %i.dbu = shufflevector <32 x i8> %i.dbp, <32 x i8> %i.dbt, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.dbv = shufflevector <32 x i8> %i.dbp, <32 x i8> %i.dbt, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.dbw = shufflevector <32 x i8> %i.dbu, <32 x i8> %i.dbv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.dbx = bitcast <32 x i8> %i.dbu to <8 x i32>
  %i.dby = bitcast <32 x i8> %i.dbv to <8 x i32>
  %i.dbz = shufflevector <8 x i32> %i.dbx, <8 x i32> %i.dby, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dca = bitcast <8 x i32> %i.dbz to <32 x i8>  ; 2 uses
  %i.dcb = shufflevector <32 x i8> %i.dbw, <32 x i8> %i.dca, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 4 uses
  %i.dcc = shufflevector <32 x i8> %i.dbw, <32 x i8> %i.dca, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 5 uses
  %i.dcd = shufflevector <32 x i8> %i.dcb, <32 x i8> %i.dcc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 3 uses
  %i.dce = bitcast <32 x i8> %i.dcb to <8 x i32>
  %i.dcf = bitcast <32 x i8> %i.dcc to <8 x i32>
  %i.dcg = shufflevector <8 x i32> %i.dce, <8 x i32> %i.dcf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.dch = shufflevector <32 x i8> %.sroa.7.0.copyload, <32 x i8> %.sroa.8.0.copyload, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.dci = shufflevector <32 x i8> %.sroa.7.0.copyload, <32 x i8> %.sroa.8.0.copyload, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.dcj = shufflevector <32 x i8> %i.dch, <32 x i8> %i.dci, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.dck = bitcast <32 x i8> %i.dch to <8 x i32>
  %i.dcl = bitcast <32 x i8> %i.dci to <8 x i32>
  %i.dcm = shufflevector <8 x i32> %i.dck, <8 x i32> %i.dcl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dcn = bitcast <8 x i32> %i.dcm to <32 x i8>  ; 2 uses
  %i.dco = shufflevector <32 x i8> %i.dcj, <32 x i8> %i.dcn, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.dcp = shufflevector <32 x i8> %i.dcj, <32 x i8> %i.dcn, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.dcq = shufflevector <32 x i8> %i.dco, <32 x i8> %i.dcp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.dcr = bitcast <32 x i8> %i.dco to <8 x i32>
  %i.dcs = bitcast <32 x i8> %i.dcp to <8 x i32>
  %i.dct = shufflevector <8 x i32> %i.dcr, <8 x i32> %i.dcs, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dcu = bitcast <8 x i32> %i.dct to <32 x i8>  ; 2 uses
  %i.dcv = shufflevector <32 x i8> %i.dcq, <32 x i8> %i.dcu, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 4 uses
  %i.dcw = shufflevector <32 x i8> %i.dcq, <32 x i8> %i.dcu, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 5 uses
  %i.dcx = shufflevector <32 x i8> %i.dcv, <32 x i8> %i.dcw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 3 uses
  %i.dcy = bitcast <32 x i8> %i.dcv to <8 x i32>
  %i.dcz = bitcast <32 x i8> %i.dcw to <8 x i32>
  %i.dda = shufflevector <8 x i32> %i.dcy, <8 x i32> %i.dcz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ddb = shufflevector <32 x i8> %.sroa.9.0.copyload, <32 x i8> %.sroa.10.0.copyload, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.ddc = shufflevector <32 x i8> %.sroa.9.0.copyload, <32 x i8> %.sroa.10.0.copyload, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ddd = shufflevector <32 x i8> %i.ddb, <32 x i8> %i.ddc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.dde = bitcast <32 x i8> %i.ddb to <8 x i32>
  %i.ddf = bitcast <32 x i8> %i.ddc to <8 x i32>
  %i.ddg = shufflevector <8 x i32> %i.dde, <8 x i32> %i.ddf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ddh = bitcast <8 x i32> %i.ddg to <32 x i8>  ; 2 uses
  %i.ddi = shufflevector <32 x i8> %i.ddd, <32 x i8> %i.ddh, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.ddj = shufflevector <32 x i8> %i.ddd, <32 x i8> %i.ddh, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ddk = shufflevector <32 x i8> %i.ddi, <32 x i8> %i.ddj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.ddl = bitcast <32 x i8> %i.ddi to <8 x i32>
  %i.ddm = bitcast <32 x i8> %i.ddj to <8 x i32>
  %i.ddn = shufflevector <8 x i32> %i.ddl, <8 x i32> %i.ddm, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ddo = bitcast <8 x i32> %i.ddn to <32 x i8>  ; 2 uses
  %i.ddp = shufflevector <32 x i8> %i.ddk, <32 x i8> %i.ddo, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 4 uses
  %i.ddq = shufflevector <32 x i8> %i.ddk, <32 x i8> %i.ddo, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 5 uses
  %i.ddr = shufflevector <32 x i8> %i.ddp, <32 x i8> %i.ddq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 3 uses
  %i.dds = bitcast <32 x i8> %i.ddp to <8 x i32>
  %i.ddt = bitcast <32 x i8> %i.ddq to <8 x i32>
  %i.ddu = shufflevector <8 x i32> %i.dds, <8 x i32> %i.ddt, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ddv = shufflevector <32 x i8> %i.dbh, <32 x i8> %i.dcv, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ddw = bitcast <32 x i8> %i.ddv to <4 x i64>
  %i.ddx = shufflevector <32 x i8> %i.dbj, <32 x i8> %i.dcx, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %i.ddy = bitcast <32 x i8> %i.ddx to <4 x i64>
  %i.ddz = shufflevector <32 x i8> %i.dbj, <32 x i8> %i.dcx, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.dea = bitcast <32 x i8> %i.ddz to <4 x i64>
  %4 = shufflevector <4 x i64> %i.ddy, <4 x i64> %i.dea, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.deb = shufflevector <8 x i32> %i.dbm, <8 x i32> %i.dda, <4 x i32> <i32 2, i32 3, i32 10, i32 11>
  %i.dec = bitcast <4 x i32> %i.deb to <2 x i64>
  %i.ded = shufflevector <32 x i8> %i.dbi, <32 x i8> %i.dcw, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %i.dee = bitcast <32 x i8> %i.ded to <8 x i32>
  %i.def = shufflevector <32 x i8> %i.dbi, <32 x i8> %i.dcw, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.deg = bitcast <32 x i8> %i.def to <8 x i32>
  %5 = shufflevector <8 x i32> %i.dee, <8 x i32> %i.deg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.deh = shufflevector <32 x i8> %i.dcb, <32 x i8> %i.ddp, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dei = bitcast <32 x i8> %i.deh to <4 x i64>
  %i.dej = shufflevector <32 x i8> %i.dcd, <32 x i8> %i.ddr, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %i.dek = bitcast <32 x i8> %i.dej to <4 x i64>
  %i.del = shufflevector <32 x i8> %i.dcd, <32 x i8> %i.ddr, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.dem = bitcast <32 x i8> %i.del to <4 x i64>
  %6 = shufflevector <4 x i64> %i.dek, <4 x i64> %i.dem, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.den = shufflevector <8 x i32> %i.dcg, <8 x i32> %i.ddu, <4 x i32> <i32 2, i32 3, i32 10, i32 11>
  %i.deo = bitcast <4 x i32> %i.den to <2 x i64>
  %i.dep = shufflevector <32 x i8> %i.dcc, <32 x i8> %i.ddq, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %i.deq = bitcast <32 x i8> %i.dep to <8 x i32>
  %i.der = shufflevector <32 x i8> %i.dcc, <32 x i8> %i.ddq, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.des = bitcast <32 x i8> %i.der to <8 x i32>
  %7 = shufflevector <8 x i32> %i.deq, <8 x i32> %i.des, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.det = shufflevector <32 x i8> %i.dbh, <32 x i8> %i.dcb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.deu = shufflevector <32 x i8> %i.dcv, <32 x i8> %i.ddp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dev = shufflevector <32 x i8> %i.det, <32 x i8> %i.deu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.dew = shufflevector <4 x i64> %i.ddw, <4 x i64> %i.dei, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %8 = shufflevector <4 x i64> %4, <4 x i64> %6, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %9 = shufflevector <4 x i64> %4, <4 x i64> %6, <2 x i32> <i32 1, i32 5>
  %10 = shufflevector <2 x i64> %9, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %11 = shufflevector <4 x i64> %8, <4 x i64> %10, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %12 = shufflevector <32 x i8> %i.dbj, <32 x i8> %i.dcd, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %13 = bitcast <32 x i8> %12 to <4 x i64>
  %14 = shufflevector <32 x i8> %i.dcx, <32 x i8> %i.ddr, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %15 = bitcast <32 x i8> %14 to <4 x i64>
  %16 = shufflevector <4 x i64> %13, <4 x i64> %15, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.dex = shufflevector <8 x i32> %i.dbm, <8 x i32> %i.dcg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dey = shufflevector <8 x i32> %i.dda, <8 x i32> %i.ddu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dez = shufflevector <8 x i32> %i.dex, <8 x i32> %i.dey, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dfa = shufflevector <2 x i64> %i.dec, <2 x i64> %i.deo, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %17 = shufflevector <8 x i32> %5, <8 x i32> %7, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %18 = bitcast <8 x i32> %17 to <4 x i64>
  %19 = shufflevector <8 x i32> %5, <8 x i32> %7, <4 x i32> <i32 2, i32 3, i32 10, i32 11>
  %20 = bitcast <4 x i32> %19 to <2 x i64>
  %21 = shufflevector <2 x i64> %20, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %22 = shufflevector <4 x i64> %18, <4 x i64> %21, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %23 = shufflevector <32 x i8> %i.dbi, <32 x i8> %i.dcc, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %24 = bitcast <32 x i8> %23 to <8 x i32>
  %25 = shufflevector <32 x i8> %i.dcw, <32 x i8> %i.ddq, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %26 = bitcast <32 x i8> %25 to <8 x i32>
  %27 = shufflevector <8 x i32> %24, <8 x i32> %26, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dfb = shl nuw nsw i64 %.078113, 5            ; 8 uses
  %i.dfc = getelementptr inbounds nuw i8, ptr %3, i64 %i.dfb
  store <32 x i8> %i.dev, ptr %i.dfc, align 1, !tbaa !7
  %i.dfd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dfb
  store <4 x i64> %i.dew, ptr %i.dfd, align 1, !tbaa !7
  %i.dfe = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dfb
  store <4 x i64> %11, ptr %i.dfe, align 1, !tbaa !7
  %i.dff = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.dfb
  store <4 x i64> %16, ptr %i.dff, align 1, !tbaa !7
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dfb
  store <8 x i32> %i.dez, ptr %i.dfg, align 1, !tbaa !7
  %i.dfh = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dfb
  store <4 x i64> %i.dfa, ptr %i.dfh, align 1, !tbaa !7
  %i.dfi = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dfb
  store <4 x i64> %22, ptr %i.dfi, align 1, !tbaa !7
  %i.dfj = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.dfb
  store <8 x i32> %27, ptr %i.dfj, align 1, !tbaa !7
  %i.dfk = add nuw nsw i64 %.078113, 1            ; 2 uses
  %exitcond127.not = icmp eq i64 %i.dfk, %i.bby
  br i1 %exitcond127.not, label %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhilPh.exit, label %.preheader98.preheader, !llvm.loop !218

_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhilPh.exit: ; preds = %.preheader98.preheader, %.preheader96.preheader.i, %.preheader102, %.preheader100.i
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i8> @llvm.x86.sse3.ldu.dq(ptr) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!4, !4, i64 0}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = !{!"branch_weights", i32 8, i32 56}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, i1 false, !"LVerDomain"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !8, !9, !10}
!18 = distinct !{!18, !8, !9, !10}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !8, !9}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, i1 false, !"LVerDomain"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22}
!26 = distinct !{!26, !8, !9, !10}
!27 = distinct !{!27, !8, !9, !10}
!28 = distinct !{!28, !8, !9}
!29 = distinct !{!29, i1 false, !"_ZN5xsimd6kernel6detail14load_unalignedINS_4avx2EhaEENS_5batchIT1_T_EEPKT0_NS0_7convertIS5_EERKNS_6commonENS1_20with_fast_conversionE"}
!30 = distinct !{!30, !29, !"_ZN5xsimd6kernel6detail14load_unalignedINS_4avx2EhaEENS_5batchIT1_T_EEPKT0_NS0_7convertIS5_EERKNS_6commonENS1_20with_fast_conversionE: argument 0"}
!31 = distinct !{!31, i1 false, !"_ZN5xsimd6kernel14load_unalignedINS_4avx2EhvEENS_5batchIT0_T_EEPKS4_NS0_7convertIS4_EERKNS_3avxE"}
!32 = distinct !{!32, !31, !"_ZN5xsimd6kernel14load_unalignedINS_4avx2EhvEENS_5batchIT0_T_EEPKS4_NS0_7convertIS4_EERKNS_3avxE: argument 0"}
!33 = distinct !{!33, !8}
!34 = !{!14}
!35 = !{!15}
!36 = !{!16}
!37 = !{!15, !14}
!38 = !{!23}
!39 = !{!24}
!40 = !{!25}
!41 = !{!24, !23}
!42 = !{!32, !30}
!43 = distinct !{!43, i1 false, !"LVerDomain"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !43}
!47 = distinct !{!47, !43}
!48 = distinct !{!48, !43}
!49 = distinct !{!49, !8, !9, !10}
!50 = distinct !{!50, !8, !9}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, i1 false, !"LVerDomain"}
!53 = distinct !{!53, !52}
!54 = distinct !{!54, !52}
!55 = distinct !{!55, !52}
!56 = distinct !{!56, !52}
!57 = distinct !{!57, !52}
!58 = distinct !{!58, !8, !9, !10}
!59 = distinct !{!59, !8, !9}
!60 = distinct !{!60, i1 false, !"_ZN5xsimd6kernel6detail14load_unalignedINS_4avx2EhaEENS_5batchIT1_T_EEPKT0_NS0_7convertIS5_EERKNS_6commonENS1_20with_fast_conversionE"}
!61 = distinct !{!61, !60, !"_ZN5xsimd6kernel6detail14load_unalignedINS_4avx2EhaEENS_5batchIT1_T_EEPKT0_NS0_7convertIS5_EERKNS_6commonENS1_20with_fast_conversionE: argument 0"}
!62 = distinct !{!62, i1 false, !"_ZN5xsimd6kernel14load_unalignedINS_4avx2EhvEENS_5batchIT0_T_EEPKS4_NS0_7convertIS4_EERKNS_3avxE"}
!63 = distinct !{!63, !62, !"_ZN5xsimd6kernel14load_unalignedINS_4avx2EhvEENS_5batchIT0_T_EEPKS4_NS0_7convertIS4_EERKNS_3avxE: argument 0"}
!64 = distinct !{!64, !8}
!65 = !{!44}
!66 = !{!45}
!67 = !{!46}
!68 = !{!47}
!69 = !{!48}
!70 = !{!47, !46, !45, !44}
!71 = !{!53}
!72 = !{!54}
!73 = !{!55}
!74 = !{!56}
!75 = !{!57}
!76 = !{!56, !55, !54, !53}
!77 = !{!63, !61}
!78 = distinct !{!78, i1 false, !"LVerDomain"}
!79 = distinct !{!79, !78}
!80 = distinct !{!80, !78}
!81 = distinct !{!81, !78}
!82 = distinct !{!82, !78}
!83 = distinct !{!83, !78}
!84 = distinct !{!84, !78}
!85 = distinct !{!85, !78}
!86 = distinct !{!86, !78}
!87 = distinct !{!87, !78}
!88 = distinct !{!88, !8, !9, !10}
!89 = distinct !{!89, !8, !9}
!90 = distinct !{!90, !8}
!91 = distinct !{!91, i1 false, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !91}
!95 = distinct !{!95, !91}
!96 = distinct !{!96, !91}
!97 = distinct !{!97, !91}
!98 = distinct !{!98, !91}
!99 = distinct !{!99, !91}
!100 = distinct !{!100, !91}
!101 = distinct !{!101, !8, !9, !10}
!102 = distinct !{!102, !8, !9}
!103 = distinct !{!103, i1 false, !"_ZN5xsimd6kernel6detail14load_unalignedINS_4avx2EhaEENS_5batchIT1_T_EEPKT0_NS0_7convertIS5_EERKNS_6commonENS1_20with_fast_conversionE"}
!104 = distinct !{!104, !103, !"_ZN5xsimd6kernel6detail14load_unalignedINS_4avx2EhaEENS_5batchIT1_T_EEPKT0_NS0_7convertIS5_EERKNS_6commonENS1_20with_fast_conversionE: argument 0"}
!105 = distinct !{!105, i1 false, !"_ZN5xsimd6kernel14load_unalignedINS_4avx2EhvEENS_5batchIT0_T_EEPKS4_NS0_7convertIS4_EERKNS_3avxE"}
!106 = distinct !{!106, !105, !"_ZN5xsimd6kernel14load_unalignedINS_4avx2EhvEENS_5batchIT0_T_EEPKS4_NS0_7convertIS4_EERKNS_3avxE: argument 0"}
!107 = distinct !{!107, !8}
!108 = !{!79}
!109 = !{!80}
!110 = !{!81}
!111 = !{!82}
!112 = !{!83}
!113 = !{!84}
!114 = !{!85}
!115 = !{!86}
!116 = !{!87}
!117 = !{!86, !85, !84, !83, !82, !81, !80, !79}
!118 = !{!92}
!119 = !{!93}
!120 = !{!94}
!121 = !{!95}
!122 = !{!96}
!123 = !{!97}
!124 = !{!98}
!125 = !{!99}
!126 = !{!100}
!127 = !{!99, !98, !97, !96, !95, !94, !93, !92}
!128 = !{!106, !104}
!129 = distinct !{!129, i1 false, !"LVerDomain"}
!130 = distinct !{!130, !129}
!131 = distinct !{!131, !129}
!132 = distinct !{!132, !129}
!133 = distinct !{!133, !8, !9, !10}
!134 = distinct !{!134, !8, !9, !10}
!135 = distinct !{!135, !12}
!136 = distinct !{!136, !8, !9}
!137 = distinct !{!137, !8}
!138 = distinct !{!138, i1 false, !"LVerDomain"}
!139 = distinct !{!139, !138}
!140 = distinct !{!140, !138}
!141 = distinct !{!141, !138}
!142 = distinct !{!142, !8, !9, !10}
!143 = distinct !{!143, !8, !9, !10}
!144 = distinct !{!144, !8, !9}
!145 = distinct !{!145, !8}
!146 = !{!130}
!147 = !{!131}
!148 = !{!132, !130}
!149 = !{!132}
!150 = !{!139}
!151 = !{!140}
!152 = !{!141, !139}
!153 = !{!141}
!154 = distinct !{!154, i1 false, !"LVerDomain"}
!155 = distinct !{!155, !154}
!156 = distinct !{!156, !154}
!157 = distinct !{!157, !154}
!158 = distinct !{!158, !154}
!159 = distinct !{!159, !154}
!160 = distinct !{!160, !8, !9, !10}
!161 = distinct !{!161, !8, !9, !10}
!162 = distinct !{!162, !8, !9}
!163 = distinct !{!163, !8}
!164 = distinct !{!164, i1 false, !"LVerDomain"}
!165 = distinct !{!165, !164}
!166 = distinct !{!166, !164}
!167 = distinct !{!167, !164}
!168 = distinct !{!168, !164}
!169 = distinct !{!169, !164}
!170 = distinct !{!170, !8, !9, !10}
end_hunk_0
