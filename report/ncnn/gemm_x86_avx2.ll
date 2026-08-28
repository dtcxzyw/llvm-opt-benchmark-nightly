Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx2?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4ncnn33gemm_transB_packed_tile_int8_avx2ERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.bec = mul <8 x i16> %i.bdz, %i.beb
  %i.bed = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.bdz, <8 x i16> %i.beb)
  %i.bee = shufflevector <8 x i16> %i.bec, <8 x i16> %i.bed, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bef = bitcast <8 x i16> %i.bee to <4 x i32>
  %i.beg = add <4 x i32> %i.bdv, %i.bef
  %i.beh = getelementptr inbounds nuw i8, ptr %.18061690.i, i64 1
  %i.bei = getelementptr inbounds nuw i8, ptr %.58301689.i, i64 4
  %i.bej = load i8, ptr %i.beh, align 1, !tbaa !17
  %i.bek = sext i8 %i.bej to i16
  %i.bel = insertelement <8 x i16> poison, i16 %i.bek, i64 0
  %i.bem = shufflevector <8 x i16> %i.bel, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ben = load <8 x i8>, ptr %i.bei, align 1, !tbaa !17
  %i.beo = sext <8 x i8> %i.ben to <8 x i16>      ; 2 uses
  %i.bep = mul <8 x i16> %i.bem, %i.beo
  %i.beq = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.bem, <8 x i16> %i.beo)
  %i.ber = shufflevector <8 x i16> %i.bep, <8 x i16> %i.beq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bes = bitcast <8 x i16> %i.ber to <4 x i32>
  %i.bet = add <4 x i32> %i.beg, %i.bes           ; 2 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %.18061690.i, i64 2
  %i.bev = getelementptr inbounds nuw i8, ptr %.58301689.i, i64 8 ; 2 uses
  %i.bew = add nuw nsw i32 %.18041691.i, 2        ; 2 uses
  %exitcond2018.not.i.1 = icmp eq i32 %i.bew, %8
  br i1 %exitcond2018.not.i.1, label %._crit_edge1693.i, label %.lr.ph1692.i, !llvm.loop !322

._crit_edge1693.i:                                ; preds = %.lr.ph1692.i.prol.loopexit, %.lr.ph1692.i, %.preheader1214.i
  %.lcssa1249.i = phi <4 x i32> [ %.lcssa1248.i, %.preheader1214.i ], [ %.lcssa1061.unr, %.lr.ph1692.i.prol.loopexit ], [ %i.bet, %.lr.ph1692.i ]
  %.5830.lcssa.i = phi ptr [ %.4829.lcssa.i, %.preheader1214.i ], [ %.lcssa1060.unr, %.lr.ph1692.i.prol.loopexit ], [ %i.bev, %.lr.ph1692.i ] ; 2 uses
  store <4 x i32> %.lcssa1249.i, ptr %.171698.i, align 1, !tbaa !17
  %i.bex = getelementptr inbounds nuw i8, ptr %.171698.i, i64 16 ; 2 uses
  %i.bey = add nuw nsw i32 %.18221697.i, 4        ; 3 uses
  %i.bez = or disjoint i32 %i.bey, 3
  %i.bfa = icmp slt i32 %i.bez, %6
  br i1 %i.bfa, label %.lr.ph1699.i, label %.preheader1217.i, !llvm.loop !323

.preheader1216.i:                                 ; preds = %._crit_edge1746.i, %.preheader1217.i
  %.6831.lcssa.i = phi ptr [ %.3828.lcssa.i, %.preheader1217.i ], [ %.9834.lcssa.i, %._crit_edge1746.i ]
  %.2823.lcssa.i = phi i32 [ %.1822.lcssa.i, %.preheader1217.i ], [ %i.bjg, %._crit_edge1746.i ] ; 2 uses
  %.18.lcssa.i = phi ptr [ %.17.lcssa.i, %.preheader1217.i ], [ %i.bjf, %._crit_edge1746.i ] ; 2 uses
  %i.bfb = icmp slt i32 %.2823.lcssa.i, %6
  br i1 %i.bfb, label %.lr.ph1786.i.preheader, label %._crit_edge1787.i

.lr.ph1786.i.preheader:                           ; preds = %.preheader1216.i
  %i.bfc = getelementptr i8, ptr %.31791.i, i64 %i.afd ; 2 uses
  br label %.lr.ph1786.i

.lr.ph1753.i:                                     ; preds = %.lr.ph1753.i.preheader, %._crit_edge1746.i
  %.181752.i = phi ptr [ %i.bjf, %._crit_edge1746.i ], [ %.17.lcssa.i, %.lr.ph1753.i.preheader ] ; 5 uses
  %.28231751.i = phi i32 [ %i.bjg, %._crit_edge1746.i ], [ %.1822.lcssa.i, %.lr.ph1753.i.preheader ]
  %.68311750.i = phi ptr [ %.9834.lcssa.i, %._crit_edge1746.i ], [ %.3828.lcssa.i, %.lr.ph1753.i.preheader ] ; 8 uses
  br i1 %i.adr, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph1753.i
  %i.bfd = load i32, ptr %.181752.i, align 4, !tbaa !135
  %i.bfe = getelementptr inbounds nuw i8, ptr %.181752.i, i64 4
  %i.bff = load i32, ptr %i.bfe, align 4, !tbaa !135
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph1753.i
  %.0773.i = phi i32 [ %i.bfd, %bb.ah ], [ 0, %.lr.ph1753.i ] ; 4 uses
  %.0770.i = phi i32 [ %i.bff, %bb.ah ], [ 0, %.lr.ph1753.i ] ; 4 uses
  br i1 %i.ads, label %iter.check1023, label %.preheader.i

iter.check1023:                                   ; preds = %bb.ai
  br i1 %min.iters.check981, label %.lr.ph1709.i.preheader, label %vector.main.loop.iter.check982

vector.main.loop.iter.check982:                   ; preds = %iter.check1023
  br i1 %min.iters.check983, label %vec.epilog.ph1027, label %vector.ph984

vector.ph984:                                     ; preds = %vector.main.loop.iter.check982
  %i.bfg = getelementptr i8, ptr %.68311750.i, i64 %i.aet
  %i.bfh = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0770.i, i64 0
  %i.bfi = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0773.i, i64 0
  br label %vector.body986

vector.body986:                                   ; preds = %vector.body986, %vector.ph984
  %index987 = phi i64 [ 0, %vector.ph984 ], [ %index.next1012, %vector.body986 ] ; 3 uses
  %vec.phi988 = phi <8 x i32> [ %i.bfh, %vector.ph984 ], [ %i.bgn, %vector.body986 ]
  %vec.phi989 = phi <8 x i32> [ zeroinitializer, %vector.ph984 ], [ %i.bgo, %vector.body986 ]
  %vec.phi990 = phi <8 x i32> [ %i.bfi, %vector.ph984 ], [ %i.bgb, %vector.body986 ]
  %vec.phi991 = phi <8 x i32> [ zeroinitializer, %vector.ph984 ], [ %i.bgc, %vector.body986 ]
  %i.bfj = shl i64 %index987, 1                   ; 2 uses
  %next.gep992 = getelementptr i8, ptr %.31791.i, i64 %i.bfj
  %i.bfk = getelementptr i8, ptr %.31791.i, i64 %i.bfj
  %next.gep993 = getelementptr i8, ptr %i.bfk, i64 16
  %i.bfl = shl i64 %index987, 2                   ; 2 uses
  %next.gep994 = getelementptr i8, ptr %.68311750.i, i64 %i.bfl
  %i.bfm = getelementptr i8, ptr %.68311750.i, i64 %i.bfl
  %next.gep995 = getelementptr i8, ptr %i.bfm, i64 32
  %wide.vec996 = load <16 x i8>, ptr %next.gep992, align 1, !tbaa !17 ; 2 uses
  %strided.vec997 = shufflevector <16 x i8> %wide.vec996, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec998 = shufflevector <16 x i8> %wide.vec996, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec999 = load <16 x i8>, ptr %next.gep993, align 1, !tbaa !17 ; 2 uses
  %strided.vec1000 = shufflevector <16 x i8> %wide.vec999, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1001 = shufflevector <16 x i8> %wide.vec999, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.bfn = sext <8 x i8> %strided.vec997 to <8 x i32> ; 2 uses
  %i.bfo = sext <8 x i8> %strided.vec1000 to <8 x i32> ; 2 uses
  %wide.vec1002 = load <32 x i8>, ptr %next.gep994, align 1, !tbaa !17 ; 4 uses
  %strided.vec1003 = shufflevector <32 x i8> %wide.vec1002, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1004 = shufflevector <32 x i8> %wide.vec1002, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1005 = shufflevector <32 x i8> %wide.vec1002, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1006 = shufflevector <32 x i8> %wide.vec1002, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec1007 = load <32 x i8>, ptr %next.gep995, align 1, !tbaa !17 ; 4 uses
  %strided.vec1008 = shufflevector <32 x i8> %wide.vec1007, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1009 = shufflevector <32 x i8> %wide.vec1007, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1010 = shufflevector <32 x i8> %wide.vec1007, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1011 = shufflevector <32 x i8> %wide.vec1007, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bfp = sext <8 x i8> %strided.vec1003 to <8 x i32>
  %i.bfq = sext <8 x i8> %strided.vec1008 to <8 x i32>
  %i.bfr = mul nsw <8 x i32> %i.bfp, %i.bfn
  %i.bfs = mul nsw <8 x i32> %i.bfq, %i.bfo
  %i.bft = add <8 x i32> %i.bfr, %vec.phi990
  %i.bfu = add <8 x i32> %i.bfs, %vec.phi991
  %i.bfv = sext <8 x i8> %strided.vec998 to <8 x i32> ; 2 uses
  %i.bfw = sext <8 x i8> %strided.vec1001 to <8 x i32> ; 2 uses
  %i.bfx = sext <8 x i8> %strided.vec1004 to <8 x i32>
  %i.bfy = sext <8 x i8> %strided.vec1009 to <8 x i32>
  %i.bfz = mul nsw <8 x i32> %i.bfx, %i.bfv
  %i.bga = mul nsw <8 x i32> %i.bfy, %i.bfw
  %i.bgb = add <8 x i32> %i.bft, %i.bfz           ; 2 uses
  %i.bgc = add <8 x i32> %i.bfu, %i.bga           ; 2 uses
  %i.bgd = sext <8 x i8> %strided.vec1005 to <8 x i32>
  %i.bge = sext <8 x i8> %strided.vec1010 to <8 x i32>
  %i.bgf = mul nsw <8 x i32> %i.bgd, %i.bfn
  %i.bgg = mul nsw <8 x i32> %i.bge, %i.bfo
  %i.bgh = add <8 x i32> %i.bgf, %vec.phi988
  %i.bgi = add <8 x i32> %i.bgg, %vec.phi989
  %i.bgj = sext <8 x i8> %strided.vec1006 to <8 x i32>
  %i.bgk = sext <8 x i8> %strided.vec1011 to <8 x i32>
  %i.bgl = mul nsw <8 x i32> %i.bgj, %i.bfv
  %i.bgm = mul nsw <8 x i32> %i.bgk, %i.bfw
  %i.bgn = add <8 x i32> %i.bgh, %i.bgl           ; 2 uses
  %i.bgo = add <8 x i32> %i.bgi, %i.bgm           ; 2 uses
  %index.next1012 = add nuw i64 %index987, 16     ; 2 uses
  %i.bgp = icmp eq i64 %index.next1012, %n.vec985
  br i1 %i.bgp, label %middle.block1013, label %vector.body986, !llvm.loop !324

middle.block1013:                                 ; preds = %vector.body986
  %bin.rdx1014 = add <8 x i32> %i.bgo, %i.bgn
  %i.bgq = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1014) ; 3 uses
  %bin.rdx1015 = add <8 x i32> %i.bgc, %i.bgb
  %i.bgr = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1015) ; 3 uses
  br i1 %cmp.n1016, label %.preheader.loopexit.i, label %vec.epilog.iter.check1025

vec.epilog.iter.check1025:                        ; preds = %middle.block1013
  br i1 %min.epilog.iters.check1026, label %.lr.ph1709.i.preheader, label %vec.epilog.ph1027, !prof !310

vec.epilog.ph1027:                                ; preds = %vector.main.loop.iter.check982, %vec.epilog.iter.check1025
  %vec.epilog.resume.val1017 = phi i64 [ %n.vec985, %vec.epilog.iter.check1025 ], [ 0, %vector.main.loop.iter.check982 ]
  %bc.merge.rdx1020 = phi i32 [ %i.bgq, %vec.epilog.iter.check1025 ], [ %.0770.i, %vector.main.loop.iter.check982 ]
  %bc.merge.rdx1021 = phi i32 [ %i.bgr, %vec.epilog.iter.check1025 ], [ %.0773.i, %vector.main.loop.iter.check982 ]
  %i.bgs = getelementptr i8, ptr %.68311750.i, i64 %i.aex
  %i.bgt = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1020, i64 0
  %i.bgu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1021, i64 0
  br label %vec.epilog.vector.body1029

vec.epilog.vector.body1029:                       ; preds = %vec.epilog.vector.body1029, %vec.epilog.ph1027
  %index1030 = phi i64 [ %vec.epilog.resume.val1017, %vec.epilog.ph1027 ], [ %index.next1043, %vec.epilog.vector.body1029 ] ; 3 uses
  %vec.phi1031 = phi <4 x i32> [ %i.bgt, %vec.epilog.ph1027 ], [ %i.bhk, %vec.epilog.vector.body1029 ]
  %vec.phi1032 = phi <4 x i32> [ %i.bgu, %vec.epilog.ph1027 ], [ %i.bhe, %vec.epilog.vector.body1029 ]
  %i.bgv = shl i64 %index1030, 1
  %next.gep1033 = getelementptr i8, ptr %.31791.i, i64 %i.bgv
  %i.bgw = shl i64 %index1030, 2
  %next.gep1034 = getelementptr i8, ptr %.68311750.i, i64 %i.bgw
  %wide.vec1035 = load <8 x i8>, ptr %next.gep1033, align 1, !tbaa !17 ; 2 uses
  %strided.vec1036 = shufflevector <8 x i8> %wide.vec1035, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1037 = shufflevector <8 x i8> %wide.vec1035, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bgx = sext <4 x i8> %strided.vec1036 to <4 x i32> ; 2 uses
  %wide.vec1038 = load <16 x i8>, ptr %next.gep1034, align 1, !tbaa !17 ; 4 uses
  %strided.vec1039 = shufflevector <16 x i8> %wide.vec1038, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1040 = shufflevector <16 x i8> %wide.vec1038, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1041 = shufflevector <16 x i8> %wide.vec1038, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec1042 = shufflevector <16 x i8> %wide.vec1038, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.bgy = sext <4 x i8> %strided.vec1039 to <4 x i32>
  %i.bgz = mul nsw <4 x i32> %i.bgy, %i.bgx
  %i.bha = add <4 x i32> %i.bgz, %vec.phi1032
  %i.bhb = sext <4 x i8> %strided.vec1037 to <4 x i32> ; 2 uses
  %i.bhc = sext <4 x i8> %strided.vec1040 to <4 x i32>
  %i.bhd = mul nsw <4 x i32> %i.bhc, %i.bhb
  %i.bhe = add <4 x i32> %i.bha, %i.bhd           ; 2 uses
  %i.bhf = sext <4 x i8> %strided.vec1041 to <4 x i32>
  %i.bhg = mul nsw <4 x i32> %i.bhf, %i.bgx
  %i.bhh = add <4 x i32> %i.bhg, %vec.phi1031
  %i.bhi = sext <4 x i8> %strided.vec1042 to <4 x i32>
  %i.bhj = mul nsw <4 x i32> %i.bhi, %i.bhb
  %i.bhk = add <4 x i32> %i.bhh, %i.bhj           ; 2 uses
  %index.next1043 = add nuw i64 %index1030, 4     ; 2 uses
  %i.bhl = icmp eq i64 %index.next1043, %n.vec1028
  br i1 %i.bhl, label %vec.epilog.middle.block1044, label %vec.epilog.vector.body1029, !llvm.loop !325

vec.epilog.middle.block1044:                      ; preds = %vec.epilog.vector.body1029
  %i.bhm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bhk) ; 2 uses
  %i.bhn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bhe) ; 2 uses
  br i1 %cmp.n1045, label %.preheader.loopexit.i, label %.lr.ph1709.i.preheader

.lr.ph1709.i.preheader:                           ; preds = %iter.check1023, %vec.epilog.iter.check1025, %vec.epilog.middle.block1044
  %.07651707.i.ph = phi i32 [ 0, %iter.check1023 ], [ %i.aer, %vec.epilog.iter.check1025 ], [ %i.aev, %vec.epilog.middle.block1044 ]
  %.07671706.i.ph = phi ptr [ %.31791.i, %iter.check1023 ], [ %i.bbt, %vec.epilog.iter.check1025 ], [ %i.bbu, %vec.epilog.middle.block1044 ]
  %.17711705.i.ph = phi i32 [ %.0770.i, %iter.check1023 ], [ %i.bgq, %vec.epilog.iter.check1025 ], [ %i.bhm, %vec.epilog.middle.block1044 ]
  %.17741704.i.ph = phi i32 [ %.0773.i, %iter.check1023 ], [ %i.bgr, %vec.epilog.iter.check1025 ], [ %i.bhn, %vec.epilog.middle.block1044 ]
  %.78321703.i.ph = phi ptr [ %.68311750.i, %iter.check1023 ], [ %i.bfg, %vec.epilog.iter.check1025 ], [ %i.bgs, %vec.epilog.middle.block1044 ]
  br label %vector.body886

.preheader.loopexit.i:                            ; preds = %vector.body886, %vec.epilog.middle.block1044, %middle.block1013
  %.lcssa500 = phi i32 [ %i.bhn, %vec.epilog.middle.block1044 ], [ %i.bgr, %middle.block1013 ], [ %46, %vector.body886 ]
  %.lcssa499 = phi i32 [ %i.bhm, %vec.epilog.middle.block1044 ], [ %i.bgq, %middle.block1013 ], [ %56, %vector.body886 ]
  %i.bho = getelementptr i8, ptr %.68311750.i, i64 %i.aee
  %scevgep2022.i = getelementptr i8, ptr %i.bho, i64 4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.ai
  %.7832.lcssa.i = phi ptr [ %.68311750.i, %bb.ai ], [ %scevgep2022.i, %.preheader.loopexit.i ] ; 7 uses
  %.1774.lcssa.i = phi i32 [ %.0773.i, %bb.ai ], [ %.lcssa500, %.preheader.loopexit.i ] ; 4 uses
  %.1771.lcssa.i = phi i32 [ %.0770.i, %bb.ai ], [ %.lcssa499, %.preheader.loopexit.i ] ; 4 uses
  %.0767.lcssa.i = phi ptr [ %.31791.i, %bb.ai ], [ %indvars.iv2020.i, %.preheader.loopexit.i ] ; 5 uses
  %.0765.lcssa.i = phi i32 [ 0, %bb.ai ], [ %i.adx, %.preheader.loopexit.i ] ; 5 uses
  %i.bhp = icmp slt i32 %.0765.lcssa.i, %8
  br i1 %i.bhp, label %.lr.ph1726.i.preheader, label %._crit_edge1746.i

.lr.ph1726.i.preheader:                           ; preds = %.preheader.i
  %9 = xor i32 %.0765.lcssa.i, -1
  %i.bhq = add i32 %8, %9                         ; 3 uses
  %10 = zext i32 %i.bhq to i64
  %11 = add nuw nsw i64 %10, 1                    ; 5 uses
  %min.iters.check939 = icmp ult i32 %i.bhq, 3
  br i1 %min.iters.check939, label %vector.ph884, label %vector.main.loop.iter.check838

vector.main.loop.iter.check838:                   ; preds = %.lr.ph1726.i.preheader
  %min.iters.check839 = icmp ult i32 %i.bhq, 15
  br i1 %min.iters.check839, label %.lr.ph1709.i.a, label %vector.ph940

vector.ph940:                                     ; preds = %vector.main.loop.iter.check838
  %12 = and i64 %11, 12
  %n.vec941 = and i64 %11, 8589934576             ; 6 uses
  %i.bhr = trunc i64 %n.vec941 to i32
  %13 = add i32 %.0765.lcssa.i, %i.bhr
  %14 = getelementptr i8, ptr %.0767.lcssa.i, i64 %n.vec941
  %i.bhs = shl nuw nsw i64 %n.vec941, 1
  %i.bht = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhs ; 2 uses
  %15 = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.1771.lcssa.i, i64 0
  %16 = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.1774.lcssa.i, i64 0
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %vector.ph940
  %index943 = phi i64 [ 0, %vector.ph940 ], [ %index.next966, %vector.body942 ] ; 3 uses
  %vec.phi948 = phi <8 x i32> [ %15, %vector.ph940 ], [ %i.bii, %vector.body942 ]
  %vec.phi949 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.bij, %vector.body942 ]
  %vec.phi950 = phi <8 x i32> [ %16, %vector.ph940 ], [ %i.bid, %vector.body942 ]
  %vec.phi951 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.bie, %vector.body942 ]
  %next.gep952 = getelementptr i8, ptr %.0767.lcssa.i, i64 %index943 ; 2 uses
  %i.bhu = shl i64 %index943, 1                   ; 2 uses
  %i.bhv = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhu
  %next.gep959 = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhu
  %i.bhw = getelementptr i8, ptr %next.gep959, i64 16
  %next.gep960 = getelementptr i8, ptr %next.gep952, i64 8
  %wide.load851 = load <8 x i8>, ptr %next.gep952, align 1, !tbaa !17
  %wide.load852 = load <8 x i8>, ptr %next.gep960, align 1, !tbaa !17
  %i.bhx = sext <8 x i8> %wide.load851 to <8 x i32> ; 2 uses
  %i.bhy = sext <8 x i8> %wide.load852 to <8 x i32> ; 2 uses
  %wide.vec853 = load <16 x i8>, ptr %i.bhv, align 1, !tbaa !17 ; 2 uses
  %strided.vec854 = shufflevector <16 x i8> %wide.vec853, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec855 = shufflevector <16 x i8> %wide.vec853, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec856 = load <16 x i8>, ptr %i.bhw, align 1, !tbaa !17 ; 2 uses
  %strided.vec857 = shufflevector <16 x i8> %wide.vec856, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec858 = shufflevector <16 x i8> %wide.vec856, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.bhz = sext <8 x i8> %strided.vec854 to <8 x i32>
  %i.bia = sext <8 x i8> %strided.vec857 to <8 x i32>
  %i.bib = mul nsw <8 x i32> %i.bhz, %i.bhx
  %i.bic = mul nsw <8 x i32> %i.bia, %i.bhy
  %i.bid = add <8 x i32> %i.bib, %vec.phi950      ; 2 uses
  %i.bie = add <8 x i32> %i.bic, %vec.phi951      ; 2 uses
  %i.bif = sext <8 x i8> %strided.vec855 to <8 x i32>
  %i.big = sext <8 x i8> %strided.vec858 to <8 x i32>
  %17 = mul nsw <8 x i32> %i.bif, %i.bhx
  %i.bih = mul nsw <8 x i32> %i.big, %i.bhy
  %i.bii = add <8 x i32> %17, %vec.phi948         ; 2 uses
  %i.bij = add <8 x i32> %i.bih, %vec.phi949      ; 2 uses
  %index.next966 = add nuw i64 %index943, 16      ; 2 uses
  %i.bik = icmp eq i64 %index.next966, %n.vec941
  br i1 %i.bik, label %middle.block967, label %vector.body942, !llvm.loop !326

middle.block967:                                  ; preds = %vector.body942
  %bin.rdx861 = add <8 x i32> %i.bij, %i.bii
  %i.bil = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx861) ; 3 uses
  %bin.rdx862 = add <8 x i32> %i.bie, %i.bid
  %i.bim = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx862) ; 3 uses
  %cmp.n968 = icmp eq i64 %11, %n.vec941
  br i1 %cmp.n968, label %._crit_edge1746.i, label %.lr.ph1726.i.preheader1053

.lr.ph1726.i.preheader1053:                       ; preds = %middle.block967
  %min.epilog.iters.check873 = icmp eq i64 %12, 0
  br i1 %min.epilog.iters.check873, label %vector.ph884, label %.lr.ph1709.i.a, !prof !310

.lr.ph1709.i.a:                                   ; preds = %vector.main.loop.iter.check838, %.lr.ph1726.i.preheader1053
  %vec.epilog.resume.val864 = phi i64 [ %n.vec941, %.lr.ph1726.i.preheader1053 ], [ 0, %vector.main.loop.iter.check838 ]
  %.17711705.i.a = phi i32 [ %i.bil, %.lr.ph1726.i.preheader1053 ], [ %.1771.lcssa.i, %vector.main.loop.iter.check838 ]
  %.17741704.i.a = phi i32 [ %i.bim, %.lr.ph1726.i.preheader1053 ], [ %.1774.lcssa.i, %vector.main.loop.iter.check838 ]
  %n.vec875 = and i64 %11, 8589934588             ; 5 uses
  %18 = trunc i64 %n.vec875 to i32
  %i.bin = add i32 %.0765.lcssa.i, %18
  %i.bio = getelementptr i8, ptr %.0767.lcssa.i, i64 %n.vec875
  %19 = shl nuw nsw i64 %n.vec875, 1
  %i.bip = getelementptr i8, ptr %.7832.lcssa.i, i64 %19 ; 2 uses
  %20 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.17711705.i.a, i64 0
  %21 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.17741704.i.a, i64 0
  br label %._crit_edge1727.i

._crit_edge1727.i:                                ; preds = %._crit_edge1727.i, %.lr.ph1709.i.a
  %index877 = phi i64 [ %vec.epilog.resume.val864, %.lr.ph1709.i.a ], [ %index.next886, %._crit_edge1727.i ] ; 3 uses
  %vec.phi878 = phi <4 x i32> [ %20, %.lr.ph1709.i.a ], [ %29, %._crit_edge1727.i ]
  %vec.phi879 = phi <4 x i32> [ %21, %.lr.ph1709.i.a ], [ %26, %._crit_edge1727.i ]
  %next.gep880 = getelementptr i8, ptr %.0767.lcssa.i, i64 %index877
  %22 = shl i64 %index877, 1
  %next.gep881 = getelementptr i8, ptr %.7832.lcssa.i, i64 %22
  %wide.load882 = load <4 x i8>, ptr %next.gep880, align 1, !tbaa !17
  %23 = sext <4 x i8> %wide.load882 to <4 x i32>  ; 2 uses
  %wide.vec883 = load <8 x i8>, ptr %next.gep881, align 1, !tbaa !17 ; 2 uses
  %strided.vec884 = shufflevector <8 x i8> %wide.vec883, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec885 = shufflevector <8 x i8> %wide.vec883, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %24 = sext <4 x i8> %strided.vec884 to <4 x i32>
  %25 = mul nsw <4 x i32> %24, %23
  %26 = add <4 x i32> %25, %vec.phi879            ; 2 uses
  %27 = sext <4 x i8> %strided.vec885 to <4 x i32>
  %28 = mul nsw <4 x i32> %27, %23
  %29 = add <4 x i32> %28, %vec.phi878            ; 2 uses
  %index.next886 = add nuw i64 %index877, 4       ; 2 uses
  %30 = icmp eq i64 %index.next886, %n.vec875
  br i1 %30, label %iter.check914, label %._crit_edge1727.i, !llvm.loop !327

iter.check914:                                    ; preds = %._crit_edge1727.i
  %31 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %29) ; 2 uses
  %32 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %26) ; 2 uses
  %cmp.n888 = icmp eq i64 %11, %n.vec875
  br i1 %cmp.n888, label %._crit_edge1746.i, label %vector.ph884

vector.ph884:                                     ; preds = %.lr.ph1726.i.preheader, %.lr.ph1726.i.preheader1053, %iter.check914
  %.21743.i.ph = phi i32 [ %.0765.lcssa.i, %.lr.ph1726.i.preheader ], [ %13, %.lr.ph1726.i.preheader1053 ], [ %i.bin, %iter.check914 ]
  %.27691742.i.ph = phi ptr [ %.0767.lcssa.i, %.lr.ph1726.i.preheader ], [ %14, %.lr.ph1726.i.preheader1053 ], [ %i.bio, %iter.check914 ]
  %.27721741.i.ph = phi i32 [ %.1771.lcssa.i, %.lr.ph1726.i.preheader ], [ %i.bil, %.lr.ph1726.i.preheader1053 ], [ %31, %iter.check914 ]
  %.27751740.i.ph = phi i32 [ %.1774.lcssa.i, %.lr.ph1726.i.preheader ], [ %i.bim, %.lr.ph1726.i.preheader1053 ], [ %32, %iter.check914 ]
  %.98341739.i.ph = phi ptr [ %.7832.lcssa.i, %.lr.ph1726.i.preheader ], [ %i.bht, %.lr.ph1726.i.preheader1053 ], [ %i.bip, %iter.check914 ]
  br label %.lr.ph1745.i

vector.body886:                                   ; preds = %.lr.ph1709.i.preheader, %vector.body886
  %.07651707.i = phi i32 [ %59, %vector.body886 ], [ %.07651707.i.ph, %.lr.ph1709.i.preheader ]
  %.07671706.i = phi ptr [ %57, %vector.body886 ], [ %.07671706.i.ph, %.lr.ph1709.i.preheader ] ; 3 uses
  %.17711705.i = phi i32 [ %56, %vector.body886 ], [ %.17711705.i.ph, %.lr.ph1709.i.preheader ]
  %.17741704.i = phi i32 [ %46, %vector.body886 ], [ %.17741704.i.ph, %.lr.ph1709.i.preheader ]
  %.78321703.i = phi ptr [ %58, %vector.body886 ], [ %.78321703.i.ph, %.lr.ph1709.i.preheader ] ; 5 uses
  %33 = load i8, ptr %.07671706.i, align 1, !tbaa !17
  %34 = sext i8 %33 to i32                        ; 2 uses
  %35 = load i8, ptr %.78321703.i, align 1, !tbaa !17
  %36 = sext i8 %35 to i32
  %37 = mul nsw i32 %36, %34
  %38 = add nsw i32 %37, %.17741704.i
  %39 = getelementptr inbounds nuw i8, ptr %.07671706.i, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !17
  %41 = sext i8 %40 to i32                        ; 2 uses
  %42 = getelementptr inbounds nuw i8, ptr %.78321703.i, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !17
  %44 = sext i8 %43 to i32
  %45 = mul nsw i32 %44, %41
  %46 = add nsw i32 %38, %45                      ; 2 uses
  %47 = getelementptr inbounds nuw i8, ptr %.78321703.i, i64 2
  %48 = load i8, ptr %47, align 1, !tbaa !17
  %49 = sext i8 %48 to i32
  %50 = mul nsw i32 %49, %34
  %51 = add nsw i32 %50, %.17711705.i
  %52 = getelementptr inbounds nuw i8, ptr %.78321703.i, i64 3
  %53 = load i8, ptr %52, align 1, !tbaa !17
  %54 = sext i8 %53 to i32
  %55 = mul nsw i32 %54, %41
  %56 = add nsw i32 %51, %55                      ; 2 uses
  %57 = getelementptr inbounds nuw i8, ptr %.07671706.i, i64 2
  %58 = getelementptr inbounds nuw i8, ptr %.78321703.i, i64 4
  %59 = add nuw nsw i32 %.07651707.i, 2           ; 2 uses
  %60 = or disjoint i32 %59, 1
  %61 = icmp slt i32 %60, %8
  br i1 %61, label %vector.body886, label %.preheader.loopexit.i, !llvm.loop !328

.lr.ph1745.i:                                     ; preds = %vector.ph884, %.lr.ph1745.i
  %.21743.i = phi i32 [ %i.bjd, %.lr.ph1745.i ], [ %.21743.i.ph, %vector.ph884 ]
  %.27691742.i = phi ptr [ %i.bjb, %.lr.ph1745.i ], [ %.27691742.i.ph, %vector.ph884 ] ; 2 uses
  %.27721741.i = phi i32 [ %i.bja, %.lr.ph1745.i ], [ %.27721741.i.ph, %vector.ph884 ]
  %.27751740.i = phi i32 [ %i.biv, %.lr.ph1745.i ], [ %.27751740.i.ph, %vector.ph884 ]
  %.98341739.i = phi ptr [ %i.bjc, %.lr.ph1745.i ], [ %.98341739.i.ph, %vector.ph884 ] ; 3 uses
  %i.biq = load i8, ptr %.27691742.i, align 1, !tbaa !17
  %i.bir = sext i8 %i.biq to i32                  ; 2 uses
  %i.bis = load i8, ptr %.98341739.i, align 1, !tbaa !17
  %i.bit = sext i8 %i.bis to i32
  %i.biu = mul nsw i32 %i.bit, %i.bir
  %i.biv = add nsw i32 %i.biu, %.27751740.i       ; 2 uses
  %i.biw = getelementptr inbounds nuw i8, ptr %.98341739.i, i64 1
  %i.bix = load i8, ptr %i.biw, align 1, !tbaa !17
  %i.biy = sext i8 %i.bix to i32
  %i.biz = mul nsw i32 %i.biy, %i.bir
  %i.bja = add nsw i32 %i.biz, %.27721741.i       ; 2 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %.27691742.i, i64 1
  %i.bjc = getelementptr inbounds nuw i8, ptr %.98341739.i, i64 2 ; 2 uses
  %i.bjd = add nuw nsw i32 %.21743.i, 1           ; 2 uses
  %exitcond2023.not.i = icmp eq i32 %i.bjd, %8
  br i1 %exitcond2023.not.i, label %._crit_edge1746.i, label %.lr.ph1745.i, !llvm.loop !329

._crit_edge1746.i:                                ; preds = %.lr.ph1745.i, %middle.block967, %iter.check914, %.preheader.i
  %.9834.lcssa.i = phi ptr [ %.7832.lcssa.i, %.preheader.i ], [ %i.bip, %iter.check914 ], [ %i.bht, %middle.block967 ], [ %i.bjc, %.lr.ph1745.i ] ; 2 uses
  %.2775.lcssa.i = phi i32 [ %.1774.lcssa.i, %.preheader.i ], [ %32, %iter.check914 ], [ %i.bim, %middle.block967 ], [ %i.biv, %.lr.ph1745.i ]
  %.2772.lcssa.i = phi i32 [ %.1771.lcssa.i, %.preheader.i ], [ %31, %iter.check914 ], [ %i.bil, %middle.block967 ], [ %i.bja, %.lr.ph1745.i ]
  store i32 %.2775.lcssa.i, ptr %.181752.i, align 4, !tbaa !135
  %i.bje = getelementptr inbounds nuw i8, ptr %.181752.i, i64 4
  store i32 %.2772.lcssa.i, ptr %i.bje, align 4, !tbaa !135
  %i.bjf = getelementptr inbounds nuw i8, ptr %.181752.i, i64 8 ; 2 uses
  %i.bjg = add nuw nsw i32 %.28231751.i, 2        ; 3 uses
  %i.bjh = or disjoint i32 %i.bjg, 1
  %i.bji = icmp slt i32 %i.bjh, %6
  br i1 %i.bji, label %.lr.ph1753.i, label %.preheader1216.i, !llvm.loop !330

.lr.ph1786.i:                                     ; preds = %.lr.ph1786.i.preheader, %._crit_edge1780.i
  %.191785.i = phi ptr [ %i.bnc, %._crit_edge1780.i ], [ %.18.lcssa.i, %.lr.ph1786.i.preheader ] ; 3 uses
  %.38241784.i = phi i32 [ %i.bnd, %._crit_edge1780.i ], [ %.2823.lcssa.i, %.lr.ph1786.i.preheader ]
  %.108351783.i = phi ptr [ %.12837.lcssa.i, %._crit_edge1780.i ], [ %.6831.lcssa.i, %.lr.ph1786.i.preheader ] ; 4 uses
  br i1 %i.adr, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph1786.i
  %i.bjj = load i32, ptr %.191785.i, align 4, !tbaa !135
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph1786.i
  %.0755.i = phi i32 [ %i.bjj, %bb.aj ], [ 0, %.lr.ph1786.i ]
  br i1 %i.adt, label %.lr.ph1765.i.preheader, label %._crit_edge1766.i

.lr.ph1765.i.preheader:                           ; preds = %bb.ak
  br i1 %min.iters.check849, label %.lr.ph1765.i.preheader1052, label %vector.ph850

vector.ph850:                                     ; preds = %.lr.ph1765.i.preheader
  %i.bjk = getelementptr i8, ptr %.108351783.i, i64 %i.afd ; 2 uses
  br label %vector.body852

vector.body852:                                   ; preds = %vector.body852, %vector.ph850
  %index853 = phi i64 [ 0, %vector.ph850 ], [ %index.next870, %vector.body852 ] ; 2 uses
  %vec.phi854 = phi <8 x i32> [ zeroinitializer, %vector.ph850 ], [ %i.bkb, %vector.body852 ]
  %vec.phi855 = phi <8 x i32> [ zeroinitializer, %vector.ph850 ], [ %i.bjx, %vector.body852 ]
  %vec.phi856 = phi <8 x i32> [ zeroinitializer, %vector.ph850 ], [ %i.bjt, %vector.body852 ]
  %vec.phi857 = phi <8 x i32> [ zeroinitializer, %vector.ph850 ], [ %i.bjp, %vector.body852 ]
  %i.bjl = shl i64 %index853, 2                   ; 2 uses
  %next.gep858 = getelementptr i8, ptr %.31791.i, i64 %i.bjl
  %next.gep859 = getelementptr i8, ptr %.108351783.i, i64 %i.bjl
  %wide.vec860 = load <32 x i8>, ptr %next.gep858, align 1, !tbaa !17 ; 4 uses
  %strided.vec861 = shufflevector <32 x i8> %wide.vec860, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec862 = shufflevector <32 x i8> %wide.vec860, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec863 = shufflevector <32 x i8> %wide.vec860, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec864 = shufflevector <32 x i8> %wide.vec860, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bjm = sext <8 x i8> %strided.vec861 to <8 x i32>
  %wide.vec865 = load <32 x i8>, ptr %next.gep859, align 1, !tbaa !17 ; 4 uses
  %strided.vec866 = shufflevector <32 x i8> %wide.vec865, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec867 = shufflevector <32 x i8> %wide.vec865, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec868 = shufflevector <32 x i8> %wide.vec865, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec869 = shufflevector <32 x i8> %wide.vec865, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bjn = sext <8 x i8> %strided.vec866 to <8 x i32>
  %i.bjo = mul nsw <8 x i32> %i.bjn, %i.bjm
  %i.bjp = add <8 x i32> %i.bjo, %vec.phi857      ; 2 uses
  %i.bjq = sext <8 x i8> %strided.vec862 to <8 x i32>
  %i.bjr = sext <8 x i8> %strided.vec867 to <8 x i32>
  %i.bjs = mul nsw <8 x i32> %i.bjr, %i.bjq
  %i.bjt = add <8 x i32> %i.bjs, %vec.phi856      ; 2 uses
  %i.bju = sext <8 x i8> %strided.vec863 to <8 x i32>
  %i.bjv = sext <8 x i8> %strided.vec868 to <8 x i32>
  %i.bjw = mul nsw <8 x i32> %i.bjv, %i.bju
  %i.bjx = add <8 x i32> %i.bjw, %vec.phi855      ; 2 uses
  %i.bjy = sext <8 x i8> %strided.vec864 to <8 x i32>
  %i.bjz = sext <8 x i8> %strided.vec869 to <8 x i32>
  %i.bka = mul nsw <8 x i32> %i.bjz, %i.bjy
  %i.bkb = add <8 x i32> %i.bka, %vec.phi854      ; 2 uses
  %index.next870 = add nuw i64 %index853, 8       ; 2 uses
  %i.bkc = icmp eq i64 %index.next870, %n.vec851
  br i1 %i.bkc, label %middle.block871, label %vector.body852, !llvm.loop !331

middle.block871:                                  ; preds = %vector.body852
  %i.bkd = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bkb)
  %i.bke = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bjx)
  %i.bkf = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bjt)
  %i.bkg = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bjp)
  %i.bkh = insertelement <4 x i32> poison, i32 %i.bkg, i64 0
  %i.bki = insertelement <4 x i32> %i.bkh, i32 %i.bkf, i64 1
  %i.bkj = insertelement <4 x i32> %i.bki, i32 %i.bke, i64 2
  %i.bkk = insertelement <4 x i32> %i.bkj, i32 %i.bkd, i64 3 ; 2 uses
  br i1 %cmp.n872, label %._crit_edge1766.i, label %.lr.ph1765.i.preheader1052

.lr.ph1765.i.preheader1052:                       ; preds = %.lr.ph1765.i.preheader, %middle.block871
  %.07521759.i.ph = phi i32 [ 0, %.lr.ph1765.i.preheader ], [ %i.afc, %middle.block871 ]
  %.07531758.i.ph = phi ptr [ %.31791.i, %.lr.ph1765.i.preheader ], [ %i.bfc, %middle.block871 ]
  %.118361757.i.ph = phi ptr [ %.108351783.i, %.lr.ph1765.i.preheader ], [ %i.bjk, %middle.block871 ]
  %.ph = phi <4 x i32> [ zeroinitializer, %.lr.ph1765.i.preheader ], [ %i.bkk, %middle.block871 ]
  br label %.lr.ph1765.i

.lr.ph1765.i:                                     ; preds = %.lr.ph1765.i.preheader1052, %.lr.ph1765.i
  %.07521759.i = phi i32 [ %i.bku, %.lr.ph1765.i ], [ %.07521759.i.ph, %.lr.ph1765.i.preheader1052 ]
  %.07531758.i = phi ptr [ %i.bks, %.lr.ph1765.i ], [ %.07531758.i.ph, %.lr.ph1765.i.preheader1052 ] ; 2 uses
  %.118361757.i = phi ptr [ %i.bkt, %.lr.ph1765.i ], [ %.118361757.i.ph, %.lr.ph1765.i.preheader1052 ] ; 2 uses
  %i.bkl = phi <4 x i32> [ %i.bkr, %.lr.ph1765.i ], [ %.ph, %.lr.ph1765.i.preheader1052 ]
  %i.bkm = load <4 x i8>, ptr %.07531758.i, align 1, !tbaa !17
  %i.bkn = sext <4 x i8> %i.bkm to <4 x i32>
  %i.bko = load <4 x i8>, ptr %.118361757.i, align 1, !tbaa !17
  %i.bkp = sext <4 x i8> %i.bko to <4 x i32>
  %i.bkq = mul nsw <4 x i32> %i.bkp, %i.bkn
  %i.bkr = add nsw <4 x i32> %i.bkq, %i.bkl       ; 2 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %.07531758.i, i64 4 ; 2 uses
  %i.bkt = getelementptr inbounds nuw i8, ptr %.118361757.i, i64 4 ; 2 uses
  %i.bku = add nuw nsw i32 %.07521759.i, 4        ; 2 uses
  %i.bkv = or disjoint i32 %i.bku, 3
  %i.bkw = icmp slt i32 %i.bkv, %8
  br i1 %i.bkw, label %.lr.ph1765.i, label %._crit_edge1766.i, !llvm.loop !332

._crit_edge1766.i:                                ; preds = %.lr.ph1765.i, %middle.block871, %bb.ak
  %.11836.lcssa.i = phi ptr [ %.108351783.i, %bb.ak ], [ %i.bjk, %middle.block871 ], [ %i.bkt, %.lr.ph1765.i ] ; 6 uses
  %.0753.lcssa.i = phi ptr [ %.31791.i, %bb.ak ], [ %i.bfc, %middle.block871 ], [ %i.bks, %.lr.ph1765.i ] ; 5 uses
  %.0752.lcssa.i = phi i32 [ 0, %bb.ak ], [ %i.aef, %middle.block871 ], [ %i.aef, %.lr.ph1765.i ] ; 5 uses
  %i.bkx = phi <4 x i32> [ zeroinitializer, %bb.ak ], [ %i.bkk, %middle.block871 ], [ %i.bkr, %.lr.ph1765.i ]
  %i.bky = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bkx)
  %op.rdx = add i32 %i.bky, %.0755.i              ; 4 uses
  %i.bkz = icmp slt i32 %.0752.lcssa.i, %8
  br i1 %i.bkz, label %iter.check828, label %._crit_edge1780.i

iter.check828:                                    ; preds = %._crit_edge1766.i
  %i.bla = xor i32 %.0752.lcssa.i, -1
  %i.blb = add i32 %8, %i.bla                     ; 3 uses
  %i.blc = zext i32 %i.blb to i64
  %i.bld = add nuw nsw i64 %i.blc, 1              ; 5 uses
  %min.iters.check796 = icmp ult i32 %i.blb, 3
  br i1 %min.iters.check796, label %.lr.ph1779.i.preheader, label %vector.main.loop.iter.check797

vector.main.loop.iter.check797:                   ; preds = %iter.check828
  %min.iters.check798 = icmp ult i32 %i.blb, 31
  br i1 %min.iters.check798, label %vec.epilog.ph832, label %vector.ph799

vector.ph799:                                     ; preds = %vector.main.loop.iter.check797
  %i.ble = and i64 %i.bld, 28
  %n.vec800 = and i64 %i.bld, 8589934560          ; 6 uses
  %i.blf = trunc i64 %n.vec800 to i32
  %i.blg = add i32 %.0752.lcssa.i, %i.blf
  %i.blh = getelementptr i8, ptr %.0753.lcssa.i, i64 %n.vec800
  %i.bli = getelementptr i8, ptr %.11836.lcssa.i, i64 %n.vec800 ; 2 uses
  %i.blj = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %op.rdx, i64 0
  br label %vector.body801

vector.body801:                                   ; preds = %vector.body801, %vector.ph799
  %index802 = phi i64 [ 0, %vector.ph799 ], [ %index.next817, %vector.body801 ] ; 3 uses
  %vec.phi803 = phi <8 x i32> [ %i.blj, %vector.ph799 ], [ %i.bmc, %vector.body801 ]
  %vec.phi804 = phi <8 x i32> [ zeroinitializer, %vector.ph799 ], [ %i.bmd, %vector.body801 ]
  %vec.phi805 = phi <8 x i32> [ zeroinitializer, %vector.ph799 ], [ %i.bme, %vector.body801 ]
  %vec.phi806 = phi <8 x i32> [ zeroinitializer, %vector.ph799 ], [ %i.bmf, %vector.body801 ]
  %next.gep807 = getelementptr i8, ptr %.0753.lcssa.i, i64 %index802 ; 4 uses
  %next.gep808 = getelementptr i8, ptr %.11836.lcssa.i, i64 %index802 ; 4 uses
  %i.blk = getelementptr i8, ptr %next.gep807, i64 8
  %i.bll = getelementptr i8, ptr %next.gep807, i64 16
  %i.blm = getelementptr i8, ptr %next.gep807, i64 24
  %wide.load809 = load <8 x i8>, ptr %next.gep807, align 1, !tbaa !17
  %wide.load810 = load <8 x i8>, ptr %i.blk, align 1, !tbaa !17
  %wide.load811 = load <8 x i8>, ptr %i.bll, align 1, !tbaa !17
  %wide.load812 = load <8 x i8>, ptr %i.blm, align 1, !tbaa !17
  %i.bln = sext <8 x i8> %wide.load809 to <8 x i32>
  %i.blo = sext <8 x i8> %wide.load810 to <8 x i32>
  %i.blp = sext <8 x i8> %wide.load811 to <8 x i32>
  %i.blq = sext <8 x i8> %wide.load812 to <8 x i32>
  %i.blr = getelementptr i8, ptr %next.gep808, i64 8
  %i.bls = getelementptr i8, ptr %next.gep808, i64 16
  %i.blt = getelementptr i8, ptr %next.gep808, i64 24
  %wide.load813 = load <8 x i8>, ptr %next.gep808, align 1, !tbaa !17
  %wide.load814 = load <8 x i8>, ptr %i.blr, align 1, !tbaa !17
  %wide.load815 = load <8 x i8>, ptr %i.bls, align 1, !tbaa !17
  %wide.load816 = load <8 x i8>, ptr %i.blt, align 1, !tbaa !17
  %i.blu = sext <8 x i8> %wide.load813 to <8 x i32>
  %i.blv = sext <8 x i8> %wide.load814 to <8 x i32>
  %i.blw = sext <8 x i8> %wide.load815 to <8 x i32>
  %i.blx = sext <8 x i8> %wide.load816 to <8 x i32>
  %i.bly = mul nsw <8 x i32> %i.blu, %i.bln
  %i.blz = mul nsw <8 x i32> %i.blv, %i.blo
  %i.bma = mul nsw <8 x i32> %i.blw, %i.blp
  %i.bmb = mul nsw <8 x i32> %i.blx, %i.blq
  %i.bmc = add <8 x i32> %i.bly, %vec.phi803      ; 2 uses
  %i.bmd = add <8 x i32> %i.blz, %vec.phi804      ; 2 uses
  %i.bme = add <8 x i32> %i.bma, %vec.phi805      ; 2 uses
  %i.bmf = add <8 x i32> %i.bmb, %vec.phi806      ; 2 uses
  %index.next817 = add nuw i64 %index802, 32      ; 2 uses
  %i.bmg = icmp eq i64 %index.next817, %n.vec800
  br i1 %i.bmg, label %middle.block818, label %vector.body801, !llvm.loop !333

middle.block818:                                  ; preds = %vector.body801
  %bin.rdx819 = add <8 x i32> %i.bmd, %i.bmc
  %bin.rdx820 = add <8 x i32> %i.bme, %bin.rdx819
  %bin.rdx821 = add <8 x i32> %i.bmf, %bin.rdx820
  %i.bmh = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx821) ; 3 uses
  %cmp.n822 = icmp eq i64 %i.bld, %n.vec800
  br i1 %cmp.n822, label %._crit_edge1780.i, label %vec.epilog.iter.check830

vec.epilog.iter.check830:                         ; preds = %middle.block818
  %min.epilog.iters.check831 = icmp eq i64 %i.ble, 0
  br i1 %min.epilog.iters.check831, label %.lr.ph1779.i.preheader, label %vec.epilog.ph832, !prof !168

vec.epilog.ph832:                                 ; preds = %vector.main.loop.iter.check797, %vec.epilog.iter.check830
  %vec.epilog.resume.val823 = phi i64 [ %n.vec800, %vec.epilog.iter.check830 ], [ 0, %vector.main.loop.iter.check797 ]
  %bc.merge.rdx826 = phi i32 [ %i.bmh, %vec.epilog.iter.check830 ], [ %op.rdx, %vector.main.loop.iter.check797 ]
  %n.vec833 = and i64 %i.bld, 8589934588          ; 5 uses
  %i.bmi = trunc i64 %n.vec833 to i32
  %i.bmj = add i32 %.0752.lcssa.i, %i.bmi
  %i.bmk = getelementptr i8, ptr %.0753.lcssa.i, i64 %n.vec833
  %i.bml = getelementptr i8, ptr %.11836.lcssa.i, i64 %n.vec833 ; 2 uses
  %i.bmm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx826, i64 0
  br label %vec.epilog.vector.body834

vec.epilog.vector.body834:                        ; preds = %vec.epilog.vector.body834, %vec.epilog.ph832
  %index835 = phi i64 [ %vec.epilog.resume.val823, %vec.epilog.ph832 ], [ %index.next841, %vec.epilog.vector.body834 ] ; 3 uses
  %vec.phi836 = phi <4 x i32> [ %i.bmm, %vec.epilog.ph832 ], [ %i.bmq, %vec.epilog.vector.body834 ]
  %next.gep837 = getelementptr i8, ptr %.0753.lcssa.i, i64 %index835
  %next.gep838 = getelementptr i8, ptr %.11836.lcssa.i, i64 %index835
  %wide.load839 = load <4 x i8>, ptr %next.gep837, align 1, !tbaa !17
  %i.bmn = sext <4 x i8> %wide.load839 to <4 x i32>
  %wide.load840 = load <4 x i8>, ptr %next.gep838, align 1, !tbaa !17
  %i.bmo = sext <4 x i8> %wide.load840 to <4 x i32>
  %i.bmp = mul nsw <4 x i32> %i.bmo, %i.bmn
  %i.bmq = add <4 x i32> %i.bmp, %vec.phi836      ; 2 uses
  %index.next841 = add nuw i64 %index835, 4       ; 2 uses
  %i.bmr = icmp eq i64 %index.next841, %n.vec833
  br i1 %i.bmr, label %vec.epilog.middle.block842, label %vec.epilog.vector.body834, !llvm.loop !334

vec.epilog.middle.block842:                       ; preds = %vec.epilog.vector.body834
  %i.bms = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bmq) ; 2 uses
  %cmp.n843 = icmp eq i64 %i.bld, %n.vec833
  br i1 %cmp.n843, label %._crit_edge1780.i, label %.lr.ph1779.i.preheader

.lr.ph1779.i.preheader:                           ; preds = %iter.check828, %vec.epilog.iter.check830, %vec.epilog.middle.block842
  %.11777.i.ph = phi i32 [ %.0752.lcssa.i, %iter.check828 ], [ %i.blg, %vec.epilog.iter.check830 ], [ %i.bmj, %vec.epilog.middle.block842 ]
  %.17541776.i.ph = phi ptr [ %.0753.lcssa.i, %iter.check828 ], [ %i.blh, %vec.epilog.iter.check830 ], [ %i.bmk, %vec.epilog.middle.block842 ]
  %.17561775.i.ph = phi i32 [ %op.rdx, %iter.check828 ], [ %i.bmh, %vec.epilog.iter.check830 ], [ %i.bms, %vec.epilog.middle.block842 ]
  %.128371774.i.ph = phi ptr [ %.11836.lcssa.i, %iter.check828 ], [ %i.bli, %vec.epilog.iter.check830 ], [ %i.bml, %vec.epilog.middle.block842 ]
  br label %.lr.ph1779.i

.lr.ph1779.i:                                     ; preds = %.lr.ph1779.i.preheader, %.lr.ph1779.i
  %.11777.i = phi i32 [ %i.bnb, %.lr.ph1779.i ], [ %.11777.i.ph, %.lr.ph1779.i.preheader ]
  %.17541776.i = phi ptr [ %i.bmz, %.lr.ph1779.i ], [ %.17541776.i.ph, %.lr.ph1779.i.preheader ] ; 2 uses
  %.17561775.i = phi i32 [ %i.bmy, %.lr.ph1779.i ], [ %.17561775.i.ph, %.lr.ph1779.i.preheader ]
  %.128371774.i = phi ptr [ %i.bna, %.lr.ph1779.i ], [ %.128371774.i.ph, %.lr.ph1779.i.preheader ] ; 2 uses
  %i.bmt = load i8, ptr %.17541776.i, align 1, !tbaa !17
  %i.bmu = sext i8 %i.bmt to i32
  %i.bmv = load i8, ptr %.128371774.i, align 1, !tbaa !17
  %i.bmw = sext i8 %i.bmv to i32
  %i.bmx = mul nsw i32 %i.bmw, %i.bmu
  %i.bmy = add nsw i32 %i.bmx, %.17561775.i       ; 2 uses
  %i.bmz = getelementptr inbounds nuw i8, ptr %.17541776.i, i64 1
  %i.bna = getelementptr inbounds nuw i8, ptr %.128371774.i, i64 1 ; 2 uses
  %i.bnb = add nuw nsw i32 %.11777.i, 1           ; 2 uses
  %exitcond2024.not.i = icmp eq i32 %i.bnb, %8
  br i1 %exitcond2024.not.i, label %._crit_edge1780.i, label %.lr.ph1779.i, !llvm.loop !335

._crit_edge1780.i:                                ; preds = %.lr.ph1779.i, %middle.block818, %vec.epilog.middle.block842, %._crit_edge1766.i
  %.12837.lcssa.i = phi ptr [ %.11836.lcssa.i, %._crit_edge1766.i ], [ %i.bml, %vec.epilog.middle.block842 ], [ %i.bli, %middle.block818 ], [ %i.bna, %.lr.ph1779.i ]
  %.1756.lcssa.i = phi i32 [ %op.rdx, %._crit_edge1766.i ], [ %i.bms, %vec.epilog.middle.block842 ], [ %i.bmh, %middle.block818 ], [ %i.bmy, %.lr.ph1779.i ]
  store i32 %.1756.lcssa.i, ptr %.191785.i, align 4, !tbaa !135
  %i.bnc = getelementptr inbounds nuw i8, ptr %.191785.i, i64 4 ; 2 uses
  %i.bnd = add nuw nsw i32 %.38241784.i, 1        ; 2 uses
  %exitcond2025.not.i = icmp eq i32 %i.bnd, %6
  br i1 %exitcond2025.not.i, label %._crit_edge1787.i, label %.lr.ph1786.i, !llvm.loop !336

._crit_edge1787.i:                                ; preds = %._crit_edge1780.i, %.preheader1216.i
  %.19.lcssa.i = phi ptr [ %.18.lcssa.i, %.preheader1216.i ], [ %i.bnc, %._crit_edge1780.i ]
  %i.bne = getelementptr inbounds i8, ptr %.31791.i, i64 %i.adu
  %i.bnf = add nuw nsw i32 %.37861789.i, 1        ; 2 uses
  %scevgep2021.i = getelementptr i8, ptr %indvars.iv2020.i, i64 %i.adu
  %exitcond2026.not.i = icmp eq i32 %i.bnf, %4
  br i1 %exitcond2026.not.i, label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit, label %.preheader1219.i, !llvm.loop !337

_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit: ; preds = %._crit_edge1787.i, %bb.b, %bb.d, %.preheader1220.i
  ret void
}

declare void @_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn36gemm_transB_packed_tile_int8_avxvnniERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.copysign.v4f32(<4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.copysign.v8f32(<8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.round.v8f32(<8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.round.v16f32(<16 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN4ncnn3MatE", !11, i64 0, !12, i64 8, !13, i64 16, !6, i64 24, !14, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"p1 _ZTSN4ncnn9AllocatorE", !11, i64 0}
!15 = !{!10, !6, i64 44}
!16 = !{!10, !13, i64 16}
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
!30 = !{!31}
!31 = distinct !{!31, !32}
!32 = distinct !{!32, !"LVerDomain"}
!33 = !{!34}
!34 = distinct !{!34, !32}
!35 = !{!36}
!36 = distinct !{!36, !32}
!37 = !{!34, !31}
!38 = distinct !{!38, !22, !39, !40}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"branch_weights", i32 8, i32 24}
!42 = distinct !{!42, !22, !39, !40}
!43 = !{!44}
!44 = distinct !{!44, !45}
!45 = distinct !{!45, !"LVerDomain"}
!46 = !{!47}
!47 = distinct !{!47, !45}
!48 = !{!49}
!49 = distinct !{!49, !45}
!50 = !{!47, !44}
!51 = distinct !{!51, !22, !39, !40}
!52 = distinct !{!52, !22, !39, !40}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !22, !39}
!55 = distinct !{!55, !22, !39}
!56 = distinct !{!56, !22}
!57 = distinct !{!57, !22, !39, !40}
!58 = !{!"branch_weights", i32 8, i32 120}
!59 = distinct !{!59, !22, !39, !40}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !22, !39}
!62 = distinct !{!62, !22}
!63 = distinct !{!63, !22}
!64 = distinct !{!64, !22}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, !22}
!67 = distinct !{!67, !22}
!68 = distinct !{!68, !22}
!69 = distinct !{!69, !22}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !22}
!72 = distinct !{!72, !22}
!73 = distinct !{!73, !22}
!74 = distinct !{!74, !22}
!75 = distinct !{!75, !19}
!76 = distinct !{!76, !22}
!77 = distinct !{!77, !19}
!78 = distinct !{!78, !19}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !22}
!81 = distinct !{!81, !22}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !19}
!84 = distinct !{!84, !22}
!85 = distinct !{!85, !22}
!86 = distinct !{!86, !22}
!87 = !{!88}
!88 = distinct !{!88, !89}
!89 = distinct !{!89, !"LVerDomain"}
!90 = !{!91}
!91 = distinct !{!91, !89}
!92 = !{!93}
!93 = distinct !{!93, !89}
!94 = !{!91, !88}
!95 = distinct !{!95, !22, !39, !40}
!96 = distinct !{!96, !22, !39, !40}
!97 = !{!98}
!98 = distinct !{!98, !99}
!99 = distinct !{!99, !"LVerDomain"}
!100 = !{!101}
!101 = distinct !{!101, !99}
!102 = !{!103}
!103 = distinct !{!103, !99}
!104 = !{!101, !98}
!105 = distinct !{!105, !22, !39, !40}
!106 = distinct !{!106, !22, !39, !40}
!107 = distinct !{!107, !19}
!108 = distinct !{!108, !22, !39}
!109 = distinct !{!109, !22, !39}
!110 = distinct !{!110, !22}
!111 = distinct !{!111, !22, !39, !40}
!112 = distinct !{!112, !22, !39, !40}
!113 = distinct !{!113, !19}
!114 = distinct !{!114, !22, !39}
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i32
!127 = distinct !{!127, !22}
!128 = distinct !{!128, !19}
!129 = distinct !{!129, !22}
!130 = !{!10, !6, i64 24}
!131 = !{!10, !6, i64 40}
!132 = !{!10, !13, i64 64}
!133 = !{!13, !13, i64 0}
!134 = distinct !{!134, !22}
!135 = !{!6, !6, i64 0}
!136 = distinct !{!136, !22}
!137 = distinct !{!137, !22}
!138 = distinct !{!138, !22}
!139 = distinct !{!139, !22}
!140 = distinct !{!140, !22}
!141 = distinct !{!141, !22}
!142 = distinct !{!142, !22}
!143 = distinct !{!143, !22}
!144 = distinct !{!144, !22}
!145 = distinct !{!145, !22}
!146 = distinct !{!146, !22}
!147 = !{!148, !148, i64 0}
!148 = !{!"float", !7, i64 0}
!149 = distinct !{!149, !22}
!150 = !{!151}
!151 = distinct !{!151, !152}
!152 = distinct !{!152, !"LVerDomain"}
!153 = !{!154}
!154 = distinct !{!154, !152}
!155 = !{!156}
!156 = distinct !{!156, !152}
!157 = !{!154, !151}
!158 = distinct !{!158, !22, !39, !40}
!159 = distinct !{!159, !22}
!160 = distinct !{!160, !22, !39}
!161 = distinct !{!161, !22}
!162 = !{!163}
!163 = distinct !{!163, !164}
!164 = distinct !{!164, !"LVerDomain"}
!165 = !{!166}
!166 = distinct !{!166, !164}
!167 = distinct !{!167, !22, !39, !40}
!168 = !{!"branch_weights", i32 4, i32 28}
!169 = distinct !{!169, !22, !39, !40}
!170 = distinct !{!170, !22}
!171 = distinct !{!171, !22, !39}
!172 = distinct !{!172, !22}
!173 = distinct !{!173, !22}
!174 = distinct !{!174, !22}
!175 = distinct !{!175, !22}
!176 = distinct !{!176, !22}
!177 = distinct !{!177, !22}
!178 = distinct !{!178, !22}
!179 = distinct !{!179, !22}
!180 = distinct !{!180, !22}
!181 = distinct !{!181, !22}
!182 = distinct !{!182, !22}
!183 = distinct !{!183, !22}
!184 = distinct !{!184, !22}
!185 = distinct !{!185, !22}
!186 = distinct !{!186, !22}
!187 = distinct !{!187, !22}
!188 = distinct !{!188, !22}
!189 = distinct !{!189, !22}
!190 = distinct !{!190, !22}
!191 = distinct !{!191, !22}
!192 = distinct !{!192, !22}
!193 = distinct !{!193, !22}
!194 = distinct !{!194, !22}
!195 = distinct !{!195, !22}
!196 = distinct !{!196, !22}
!197 = distinct !{!197, !22}
!198 = distinct !{!198, !22}
!199 = distinct !{!199, !22}
!200 = distinct !{!200, !22}
!201 = distinct !{!201, !22}
!202 = distinct !{!202, !22}
!203 = distinct !{!203, !22}
!204 = distinct !{!204, !22}
!205 = distinct !{!205, !22}
!206 = distinct !{!206, !22}
!207 = !{!208}
!208 = distinct !{!208, !209}
!209 = distinct !{!209, !"LVerDomain"}
!210 = !{!211}
!211 = distinct !{!211, !209}
!212 = !{!213}
!213 = distinct !{!213, !209}
!214 = !{!211, !208}
!215 = distinct !{!215, !22, !39, !40}
!216 = distinct !{!216, !22}
!217 = distinct !{!217, !22, !39}
!218 = distinct !{!218, !22}
!219 = !{!220}
!220 = distinct !{!220, !221}
!221 = distinct !{!221, !"LVerDomain"}
!222 = !{!223}
!223 = distinct !{!223, !221}
!224 = distinct !{!224, !22, !39, !40}
!225 = distinct !{!225, !22, !39, !40}
!226 = distinct !{!226, !22}
!227 = distinct !{!227, !22, !39}
!228 = distinct !{!228, !22}
!229 = distinct !{!229, !22}
!230 = distinct !{!230, !22}
!231 = distinct !{!231, !22}
!232 = distinct !{!232, !22}
!233 = distinct !{!233, !22}
!234 = distinct !{!234, !22}
!235 = distinct !{!235, !22}
!236 = distinct !{!236, !22}
!237 = distinct !{!237, !22}
!238 = distinct !{!238, !22}
!239 = distinct !{!239, !22}
!240 = distinct !{!240, !22}
!241 = distinct !{!241, !22}
!242 = distinct !{!242, !22}
!243 = distinct !{!243, !22}
!244 = distinct !{!244, !22}
!245 = distinct !{!245, !22}
!246 = distinct !{!246, !22}
!247 = distinct !{!247, !22}
!248 = distinct !{!248, !22}
!249 = distinct !{!249, !22}
!250 = distinct !{!250, !22}
!251 = distinct !{!251, !22}
!252 = distinct !{!252, !22}
!253 = distinct !{!253, !22}
!254 = distinct !{!254, !22}
!255 = distinct !{!255, !22}
!256 = distinct !{!256, !22}
!257 = distinct !{!257, !22}
!258 = distinct !{!258, !22}
!259 = distinct !{!259, !22}
!260 = distinct !{!260, !22}
!261 = distinct !{!261, !22}
!262 = distinct !{!262, !22}
!263 = distinct !{!263, !22}
!264 = distinct !{!264, !22}
!265 = distinct !{!265, !22}
!266 = distinct !{!266, !22}
!267 = distinct !{!267, !22}
!268 = distinct !{!268, !22}
!269 = distinct !{!269, !22}
!270 = distinct !{!270, !22}
!271 = distinct !{!271, !22}
!272 = distinct !{!272, !22}
!273 = distinct !{!273, !22}
!274 = distinct !{!274, !22}
!275 = distinct !{!275, !22}
!276 = !{!277, !277, i64 0}
!277 = !{!"short", !7, i64 0}
!278 = distinct !{!278, !22}
!279 = distinct !{!279, !22}
!280 = distinct !{!280, !22}
!281 = distinct !{!281, !22}
!282 = distinct !{!282, !22}
!283 = distinct !{!283, !22}
!284 = distinct !{!284, !22}
!285 = distinct !{!285, !22}
!286 = distinct !{!286, !22}
!287 = distinct !{!287, !22}
!288 = distinct !{!288, !22}
!289 = distinct !{!289, !22}
!290 = distinct !{!290, !22}
!291 = distinct !{!291, !22}
!292 = distinct !{!292, !22}
!293 = distinct !{!293, !22}
!294 = distinct !{!294, !22}
!295 = distinct !{!295, !22}
!296 = distinct !{!296, !22}
!297 = distinct !{!297, !22}
!298 = distinct !{!298, !22}
!299 = distinct !{!299, !22}
!300 = distinct !{!300, !22}
!301 = distinct !{!301, !22}
!302 = distinct !{!302, !22}
!303 = distinct !{!303, !22}
!304 = distinct !{!304, !22, !39, !40}
!305 = distinct !{!305, !22, !39, !40}
!306 = distinct !{!306, !22, !40, !39}
!307 = distinct !{!307, !22, !40, !39}
!308 = distinct !{!308, !22}
!309 = distinct !{!309, !22, !39, !40}
!310 = !{!"branch_weights", i32 4, i32 12}
!311 = distinct !{!311, !22, !39, !40}
!312 = distinct !{!312, !22, !39, !40}
!313 = distinct !{!313, !22, !39, !40}
!314 = distinct !{!314, !22, !40, !39}
!315 = distinct !{!315, !22, !40, !39}
!316 = distinct !{!316, !22}
!317 = distinct !{!317, !22}
!318 = distinct !{!318, !22}
!319 = distinct !{!319, !22}
!320 = distinct !{!320, !22}
!321 = distinct !{!321, !22}
!322 = distinct !{!322, !22}
!323 = distinct !{!323, !22}
!324 = distinct !{!324, !22, !39, !40}
!325 = distinct !{!325, !22, !39, !40}
!326 = distinct !{!326, !22, !39, !40}
!327 = distinct !{!327, !22, !39, !40}
!328 = distinct !{!328, !22, !40, !39}
!329 = distinct !{!329, !22, !40, !39}
!330 = distinct !{!330, !22}
!331 = distinct !{!331, !22, !39, !40}
!332 = distinct !{!332, !22, !40, !39}
!333 = distinct !{!333, !22, !39, !40}
!334 = distinct !{!334, !22, !39, !40}
!335 = distinct !{!335, !22, !40, !39}
!336 = distinct !{!336, !22}
!337 = distinct !{!337, !22}
end_hunk_1
