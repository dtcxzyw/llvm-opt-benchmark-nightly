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
  br label %.lr.ph1709.i.a

.preheader.loopexit.i:                            ; preds = %.lr.ph1709.i.a, %vec.epilog.middle.block1044, %middle.block1013
  %.lcssa500 = phi i32 [ %i.bhn, %vec.epilog.middle.block1044 ], [ %i.bgr, %middle.block1013 ], [ %251, %.lr.ph1709.i.a ]
  %.lcssa499 = phi i32 [ %i.bhm, %vec.epilog.middle.block1044 ], [ %i.bgq, %middle.block1013 ], [ %259, %.lr.ph1709.i.a ]
  %i.bho = getelementptr i8, ptr %.68311750.i, i64 %i.aee
  %scevgep2022.i = getelementptr i8, ptr %i.bho, i64 4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.ai
  %.7832.lcssa.i = phi ptr [ %.68311750.i, %bb.ai ], [ %scevgep2022.i, %.preheader.loopexit.i ] ; 11 uses
  %.1774.lcssa.i = phi i32 [ %.0773.i, %bb.ai ], [ %.lcssa500, %.preheader.loopexit.i ]
  %.1771.lcssa.i = phi i32 [ %.0770.i, %bb.ai ], [ %.lcssa499, %.preheader.loopexit.i ]
  %.0767.lcssa.i = phi ptr [ %.31791.i, %bb.ai ], [ %indvars.iv2020.i, %.preheader.loopexit.i ] ; 4 uses
  %.0765.lcssa.i = phi i32 [ 0, %bb.ai ], [ %i.adx, %.preheader.loopexit.i ] ; 6 uses
  %9 = add nuw nsw i32 %.0765.lcssa.i, 3
  %i.bhp = icmp slt i32 %9, %8
  br i1 %i.bhp, label %.lr.ph1726.i.preheader, label %._crit_edge1727.i

.lr.ph1726.i.preheader:                           ; preds = %.preheader.i
  %10 = add i32 %.0765.lcssa.i, 7
  %11 = tail call i32 @llvm.smax.i32(i32 %8, i32 %10)
  %i.bhq = add i32 %11, -4
  %12 = sub i32 %i.bhq, %.0765.lcssa.i            ; 2 uses
  %13 = lshr i32 %12, 2
  %narrow = add nuw nsw i32 %13, 1
  %14 = zext nneg i32 %narrow to i64              ; 2 uses
  %min.iters.check939 = icmp ult i32 %12, 28
  br i1 %min.iters.check939, label %.lr.ph1726.i.preheader1053, label %vector.ph940

vector.ph940:                                     ; preds = %.lr.ph1726.i.preheader
  %n.vec941 = and i64 %14, 2147483640             ; 5 uses
  %i.bhr = trunc nuw nsw i64 %n.vec941 to i32
  %15 = shl i32 %i.bhr, 2
  %16 = add i32 %.0765.lcssa.i, %15               ; 2 uses
  %i.bhs = shl nuw nsw i64 %n.vec941, 2
  %i.bht = getelementptr i8, ptr %.0767.lcssa.i, i64 %i.bhs ; 2 uses
  %17 = shl nuw nsw i64 %n.vec941, 3
  %18 = getelementptr i8, ptr %.7832.lcssa.i, i64 %17 ; 2 uses
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %vector.ph940
  %index943 = phi i64 [ 0, %vector.ph940 ], [ %index.next966, %vector.body942 ] ; 3 uses
  %vec.phi944 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.bij, %vector.body942 ]
  %vec.phi945 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %172, %vector.body942 ]
  %vec.phi946 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.bid, %vector.body942 ]
  %vec.phi947 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %69, %vector.body942 ]
  %vec.phi948 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.bii, %vector.body942 ]
  %vec.phi949 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.bie, %vector.body942 ]
  %vec.phi950 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %94, %vector.body942 ]
  %vec.phi951 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %42, %vector.body942 ]
  %19 = shl i64 %index943, 2
  %next.gep952 = getelementptr i8, ptr %.0767.lcssa.i, i64 %19
  %i.bhu = shl i64 %index943, 3                   ; 8 uses
  %next.gep953 = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhu ; 8 uses
  %20 = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhu ; 8 uses
  %next.gep954 = getelementptr i8, ptr %20, i64 8
  %21 = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhu ; 8 uses
  %next.gep955 = getelementptr i8, ptr %21, i64 16
  %22 = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhu ; 8 uses
  %next.gep956 = getelementptr i8, ptr %22, i64 24
  %23 = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhu ; 8 uses
  %next.gep957 = getelementptr i8, ptr %23, i64 32
  %24 = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhu ; 8 uses
  %next.gep958 = getelementptr i8, ptr %24, i64 40
  %i.bhv = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhu ; 8 uses
  %next.gep959 = getelementptr i8, ptr %i.bhv, i64 48
  %i.bhw = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhu ; 8 uses
  %next.gep960 = getelementptr i8, ptr %i.bhw, i64 56
  %wide.vec961 = load <32 x i8>, ptr %next.gep952, align 1, !tbaa !17 ; 4 uses
  %strided.vec962 = shufflevector <32 x i8> %wide.vec961, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec963 = shufflevector <32 x i8> %wide.vec961, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec964 = shufflevector <32 x i8> %wide.vec961, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec965 = shufflevector <32 x i8> %wide.vec961, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bhx = sext <8 x i8> %strided.vec962 to <8 x i32> ; 2 uses
  %25 = load i8, ptr %next.gep953, align 1, !tbaa !17
  %26 = load i8, ptr %next.gep954, align 1, !tbaa !17
  %27 = load i8, ptr %next.gep955, align 1, !tbaa !17
  %28 = load i8, ptr %next.gep956, align 1, !tbaa !17
  %29 = load i8, ptr %next.gep957, align 1, !tbaa !17
  %30 = load i8, ptr %next.gep958, align 1, !tbaa !17
  %31 = load i8, ptr %next.gep959, align 1, !tbaa !17
  %32 = load i8, ptr %next.gep960, align 1, !tbaa !17
  %33 = insertelement <8 x i8> poison, i8 %25, i64 0
  %34 = insertelement <8 x i8> %33, i8 %26, i64 1
  %35 = insertelement <8 x i8> %34, i8 %27, i64 2
  %36 = insertelement <8 x i8> %35, i8 %28, i64 3
  %37 = insertelement <8 x i8> %36, i8 %29, i64 4
  %38 = insertelement <8 x i8> %37, i8 %30, i64 5
  %39 = insertelement <8 x i8> %38, i8 %31, i64 6
  %40 = insertelement <8 x i8> %39, i8 %32, i64 7
  %i.bhy = sext <8 x i8> %40 to <8 x i32>
  %41 = mul nsw <8 x i32> %i.bhy, %i.bhx
  %42 = add <8 x i32> %41, %vec.phi951            ; 2 uses
  %43 = getelementptr inbounds nuw i8, ptr %next.gep953, i64 1
  %44 = getelementptr i8, ptr %20, i64 9
  %45 = getelementptr i8, ptr %21, i64 17
  %46 = getelementptr i8, ptr %22, i64 25
  %47 = getelementptr i8, ptr %23, i64 33
  %48 = getelementptr i8, ptr %24, i64 41
  %49 = getelementptr i8, ptr %i.bhv, i64 49
  %50 = getelementptr i8, ptr %i.bhw, i64 57
  %51 = load i8, ptr %43, align 1, !tbaa !17
  %52 = load i8, ptr %44, align 1, !tbaa !17
  %53 = load i8, ptr %45, align 1, !tbaa !17
  %54 = load i8, ptr %46, align 1, !tbaa !17
  %55 = load i8, ptr %47, align 1, !tbaa !17
  %56 = load i8, ptr %48, align 1, !tbaa !17
  %57 = load i8, ptr %49, align 1, !tbaa !17
  %58 = load i8, ptr %50, align 1, !tbaa !17
  %59 = insertelement <8 x i8> poison, i8 %51, i64 0
  %60 = insertelement <8 x i8> %59, i8 %52, i64 1
  %61 = insertelement <8 x i8> %60, i8 %53, i64 2
  %62 = insertelement <8 x i8> %61, i8 %54, i64 3
  %63 = insertelement <8 x i8> %62, i8 %55, i64 4
  %64 = insertelement <8 x i8> %63, i8 %56, i64 5
  %65 = insertelement <8 x i8> %64, i8 %57, i64 6
  %66 = insertelement <8 x i8> %65, i8 %58, i64 7
  %67 = sext <8 x i8> %66 to <8 x i32>
  %68 = mul nsw <8 x i32> %67, %i.bhx
  %69 = add <8 x i32> %68, %vec.phi947            ; 2 uses
  %i.bhz = sext <8 x i8> %strided.vec963 to <8 x i32> ; 2 uses
  %70 = getelementptr inbounds nuw i8, ptr %next.gep953, i64 2
  %71 = getelementptr i8, ptr %20, i64 10
  %72 = getelementptr i8, ptr %21, i64 18
  %73 = getelementptr i8, ptr %22, i64 26
  %74 = getelementptr i8, ptr %23, i64 34
  %75 = getelementptr i8, ptr %24, i64 42
  %76 = getelementptr i8, ptr %i.bhv, i64 50
  %77 = getelementptr i8, ptr %i.bhw, i64 58
  %78 = load i8, ptr %70, align 1, !tbaa !17
  %79 = load i8, ptr %71, align 1, !tbaa !17
  %80 = load i8, ptr %72, align 1, !tbaa !17
  %81 = load i8, ptr %73, align 1, !tbaa !17
  %82 = load i8, ptr %74, align 1, !tbaa !17
  %83 = load i8, ptr %75, align 1, !tbaa !17
  %84 = load i8, ptr %76, align 1, !tbaa !17
  %85 = load i8, ptr %77, align 1, !tbaa !17
  %86 = insertelement <8 x i8> poison, i8 %78, i64 0
  %87 = insertelement <8 x i8> %86, i8 %79, i64 1
  %88 = insertelement <8 x i8> %87, i8 %80, i64 2
  %89 = insertelement <8 x i8> %88, i8 %81, i64 3
  %90 = insertelement <8 x i8> %89, i8 %82, i64 4
  %91 = insertelement <8 x i8> %90, i8 %83, i64 5
  %92 = insertelement <8 x i8> %91, i8 %84, i64 6
  %93 = insertelement <8 x i8> %92, i8 %85, i64 7
  %i.bia = sext <8 x i8> %93 to <8 x i32>
  %i.bib = mul nsw <8 x i32> %i.bia, %i.bhz
  %94 = add <8 x i32> %i.bib, %vec.phi950         ; 2 uses
  %95 = getelementptr inbounds nuw i8, ptr %next.gep953, i64 3
  %96 = getelementptr i8, ptr %20, i64 11
  %97 = getelementptr i8, ptr %21, i64 19
  %98 = getelementptr i8, ptr %22, i64 27
  %99 = getelementptr i8, ptr %23, i64 35
  %100 = getelementptr i8, ptr %24, i64 43
  %101 = getelementptr i8, ptr %i.bhv, i64 51
  %102 = getelementptr i8, ptr %i.bhw, i64 59
  %103 = load i8, ptr %95, align 1, !tbaa !17
  %104 = load i8, ptr %96, align 1, !tbaa !17
  %105 = load i8, ptr %97, align 1, !tbaa !17
  %106 = load i8, ptr %98, align 1, !tbaa !17
  %107 = load i8, ptr %99, align 1, !tbaa !17
  %108 = load i8, ptr %100, align 1, !tbaa !17
  %109 = load i8, ptr %101, align 1, !tbaa !17
  %110 = load i8, ptr %102, align 1, !tbaa !17
  %111 = insertelement <8 x i8> poison, i8 %103, i64 0
  %112 = insertelement <8 x i8> %111, i8 %104, i64 1
  %113 = insertelement <8 x i8> %112, i8 %105, i64 2
  %114 = insertelement <8 x i8> %113, i8 %106, i64 3
  %115 = insertelement <8 x i8> %114, i8 %107, i64 4
  %116 = insertelement <8 x i8> %115, i8 %108, i64 5
  %117 = insertelement <8 x i8> %116, i8 %109, i64 6
  %118 = insertelement <8 x i8> %117, i8 %110, i64 7
  %119 = sext <8 x i8> %118 to <8 x i32>
  %i.bic = mul nsw <8 x i32> %119, %i.bhz
  %i.bid = add <8 x i32> %i.bic, %vec.phi946      ; 2 uses
  %120 = sext <8 x i8> %strided.vec964 to <8 x i32> ; 2 uses
  %121 = getelementptr inbounds nuw i8, ptr %next.gep953, i64 4
  %122 = getelementptr i8, ptr %20, i64 12
  %123 = getelementptr i8, ptr %21, i64 20
  %124 = getelementptr i8, ptr %22, i64 28
  %125 = getelementptr i8, ptr %23, i64 36
  %126 = getelementptr i8, ptr %24, i64 44
  %127 = getelementptr i8, ptr %i.bhv, i64 52
  %128 = getelementptr i8, ptr %i.bhw, i64 60
  %129 = load i8, ptr %121, align 1, !tbaa !17
  %130 = load i8, ptr %122, align 1, !tbaa !17
  %131 = load i8, ptr %123, align 1, !tbaa !17
  %132 = load i8, ptr %124, align 1, !tbaa !17
  %133 = load i8, ptr %125, align 1, !tbaa !17
  %134 = load i8, ptr %126, align 1, !tbaa !17
  %135 = load i8, ptr %127, align 1, !tbaa !17
  %136 = load i8, ptr %128, align 1, !tbaa !17
  %137 = insertelement <8 x i8> poison, i8 %129, i64 0
  %138 = insertelement <8 x i8> %137, i8 %130, i64 1
  %139 = insertelement <8 x i8> %138, i8 %131, i64 2
  %140 = insertelement <8 x i8> %139, i8 %132, i64 3
  %141 = insertelement <8 x i8> %140, i8 %133, i64 4
  %142 = insertelement <8 x i8> %141, i8 %134, i64 5
  %143 = insertelement <8 x i8> %142, i8 %135, i64 6
  %144 = insertelement <8 x i8> %143, i8 %136, i64 7
  %145 = sext <8 x i8> %144 to <8 x i32>
  %146 = mul nsw <8 x i32> %145, %120
  %i.bie = add <8 x i32> %146, %vec.phi949        ; 2 uses
  %147 = getelementptr inbounds nuw i8, ptr %next.gep953, i64 5
  %148 = getelementptr i8, ptr %20, i64 13
  %149 = getelementptr i8, ptr %21, i64 21
  %150 = getelementptr i8, ptr %22, i64 29
  %151 = getelementptr i8, ptr %23, i64 37
  %152 = getelementptr i8, ptr %24, i64 45
  %153 = getelementptr i8, ptr %i.bhv, i64 53
  %154 = getelementptr i8, ptr %i.bhw, i64 61
  %155 = load i8, ptr %147, align 1, !tbaa !17
  %156 = load i8, ptr %148, align 1, !tbaa !17
  %157 = load i8, ptr %149, align 1, !tbaa !17
  %158 = load i8, ptr %150, align 1, !tbaa !17
  %159 = load i8, ptr %151, align 1, !tbaa !17
  %160 = load i8, ptr %152, align 1, !tbaa !17
  %161 = load i8, ptr %153, align 1, !tbaa !17
  %162 = load i8, ptr %154, align 1, !tbaa !17
  %163 = insertelement <8 x i8> poison, i8 %155, i64 0
  %164 = insertelement <8 x i8> %163, i8 %156, i64 1
  %165 = insertelement <8 x i8> %164, i8 %157, i64 2
  %166 = insertelement <8 x i8> %165, i8 %158, i64 3
  %167 = insertelement <8 x i8> %166, i8 %159, i64 4
  %168 = insertelement <8 x i8> %167, i8 %160, i64 5
  %169 = insertelement <8 x i8> %168, i8 %161, i64 6
  %170 = insertelement <8 x i8> %169, i8 %162, i64 7
  %i.bif = sext <8 x i8> %170 to <8 x i32>
  %171 = mul nsw <8 x i32> %i.bif, %120
  %172 = add <8 x i32> %171, %vec.phi945          ; 2 uses
  %i.big = sext <8 x i8> %strided.vec965 to <8 x i32> ; 2 uses
  %173 = getelementptr inbounds nuw i8, ptr %next.gep953, i64 6
  %174 = getelementptr i8, ptr %20, i64 14
  %175 = getelementptr i8, ptr %21, i64 22
  %176 = getelementptr i8, ptr %22, i64 30
  %177 = getelementptr i8, ptr %23, i64 38
  %178 = getelementptr i8, ptr %24, i64 46
  %179 = getelementptr i8, ptr %i.bhv, i64 54
  %180 = getelementptr i8, ptr %i.bhw, i64 62
  %181 = load i8, ptr %173, align 1, !tbaa !17
  %182 = load i8, ptr %174, align 1, !tbaa !17
  %183 = load i8, ptr %175, align 1, !tbaa !17
  %184 = load i8, ptr %176, align 1, !tbaa !17
  %185 = load i8, ptr %177, align 1, !tbaa !17
  %186 = load i8, ptr %178, align 1, !tbaa !17
  %187 = load i8, ptr %179, align 1, !tbaa !17
  %188 = load i8, ptr %180, align 1, !tbaa !17
  %189 = insertelement <8 x i8> poison, i8 %181, i64 0
  %190 = insertelement <8 x i8> %189, i8 %182, i64 1
  %191 = insertelement <8 x i8> %190, i8 %183, i64 2
  %192 = insertelement <8 x i8> %191, i8 %184, i64 3
  %193 = insertelement <8 x i8> %192, i8 %185, i64 4
  %194 = insertelement <8 x i8> %193, i8 %186, i64 5
  %195 = insertelement <8 x i8> %194, i8 %187, i64 6
  %196 = insertelement <8 x i8> %195, i8 %188, i64 7
  %197 = sext <8 x i8> %196 to <8 x i32>
  %i.bih = mul nsw <8 x i32> %197, %i.big
  %i.bii = add <8 x i32> %i.bih, %vec.phi948      ; 2 uses
  %198 = getelementptr inbounds nuw i8, ptr %next.gep953, i64 7
  %199 = getelementptr i8, ptr %20, i64 15
  %200 = getelementptr i8, ptr %21, i64 23
  %201 = getelementptr i8, ptr %22, i64 31
  %202 = getelementptr i8, ptr %23, i64 39
  %203 = getelementptr i8, ptr %24, i64 47
  %204 = getelementptr i8, ptr %i.bhv, i64 55
  %205 = getelementptr i8, ptr %i.bhw, i64 63
  %206 = load i8, ptr %198, align 1, !tbaa !17
  %207 = load i8, ptr %199, align 1, !tbaa !17
  %208 = load i8, ptr %200, align 1, !tbaa !17
  %209 = load i8, ptr %201, align 1, !tbaa !17
  %210 = load i8, ptr %202, align 1, !tbaa !17
  %211 = load i8, ptr %203, align 1, !tbaa !17
  %212 = load i8, ptr %204, align 1, !tbaa !17
  %213 = load i8, ptr %205, align 1, !tbaa !17
  %214 = insertelement <8 x i8> poison, i8 %206, i64 0
  %215 = insertelement <8 x i8> %214, i8 %207, i64 1
  %216 = insertelement <8 x i8> %215, i8 %208, i64 2
  %217 = insertelement <8 x i8> %216, i8 %209, i64 3
  %218 = insertelement <8 x i8> %217, i8 %210, i64 4
  %219 = insertelement <8 x i8> %218, i8 %211, i64 5
  %220 = insertelement <8 x i8> %219, i8 %212, i64 6
  %221 = insertelement <8 x i8> %220, i8 %213, i64 7
  %222 = sext <8 x i8> %221 to <8 x i32>
  %223 = mul nsw <8 x i32> %222, %i.big
  %i.bij = add <8 x i32> %223, %vec.phi944        ; 2 uses
  %index.next966 = add nuw i64 %index943, 8       ; 2 uses
  %i.bik = icmp eq i64 %index.next966, %n.vec941
  br i1 %i.bik, label %middle.block967, label %vector.body942, !llvm.loop !326

middle.block967:                                  ; preds = %vector.body942
  %224 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bij) ; 2 uses
  %225 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %172) ; 2 uses
  %226 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bid) ; 2 uses
  %227 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %69) ; 2 uses
  %228 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bii) ; 2 uses
  %i.bil = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bie) ; 2 uses
  %229 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %94) ; 2 uses
  %i.bim = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %42) ; 2 uses
  %cmp.n968 = icmp eq i64 %n.vec941, %14
  %230 = insertelement <8 x i32> poison, i32 %i.bim, i64 0
  %231 = insertelement <8 x i32> %230, i32 %227, i64 1
  %232 = insertelement <8 x i32> %231, i32 %229, i64 2
  %233 = insertelement <8 x i32> %232, i32 %226, i64 3
  %234 = insertelement <8 x i32> %233, i32 %i.bil, i64 4
  %235 = insertelement <8 x i32> %234, i32 %225, i64 5
  %236 = insertelement <8 x i32> %235, i32 %228, i64 6
  %237 = insertelement <8 x i32> %236, i32 %224, i64 7
  br i1 %cmp.n968, label %._crit_edge1727.i, label %.lr.ph1726.i.preheader1053

.lr.ph1726.i.preheader1053:                       ; preds = %.lr.ph1726.i.preheader, %middle.block967
  %.17661717.i.ph = phi i32 [ %.0765.lcssa.i, %.lr.ph1726.i.preheader ], [ %16, %middle.block967 ]
  %.17681716.i.ph = phi ptr [ %.0767.lcssa.i, %.lr.ph1726.i.preheader ], [ %i.bht, %middle.block967 ]
  %.88331715.i.ph = phi ptr [ %.7832.lcssa.i, %.lr.ph1726.i.preheader ], [ %18, %middle.block967 ]
  %.ph1054 = phi <8 x i32> [ zeroinitializer, %.lr.ph1726.i.preheader ], [ %237, %middle.block967 ]
  br label %.lr.ph1726.i

.lr.ph1709.i.a:                                   ; preds = %.lr.ph1709.i.preheader, %.lr.ph1709.i.a
  %.07651707.i = phi i32 [ %261, %.lr.ph1709.i.a ], [ %.07651707.i.ph, %.lr.ph1709.i.preheader ]
  %.07671706.i = phi ptr [ %260, %.lr.ph1709.i.a ], [ %.07671706.i.ph, %.lr.ph1709.i.preheader ] ; 3 uses
  %.17711705.i.a = phi i32 [ %259, %.lr.ph1709.i.a ], [ %.17711705.i.ph, %.lr.ph1709.i.preheader ]
  %.17741704.i.a = phi i32 [ %251, %.lr.ph1709.i.a ], [ %.17741704.i.ph, %.lr.ph1709.i.preheader ]
  %.78321703.i = phi ptr [ %i.bip, %.lr.ph1709.i.a ], [ %.78321703.i.ph, %.lr.ph1709.i.preheader ] ; 5 uses
  %238 = load i8, ptr %.07671706.i, align 1, !tbaa !17
  %239 = sext i8 %238 to i32                      ; 2 uses
  %240 = load i8, ptr %.78321703.i, align 1, !tbaa !17
  %241 = sext i8 %240 to i32
  %242 = mul nsw i32 %241, %239
  %243 = add nsw i32 %242, %.17741704.i.a
  %244 = getelementptr inbounds nuw i8, ptr %.07671706.i, i64 1
  %245 = load i8, ptr %244, align 1, !tbaa !17
  %246 = sext i8 %245 to i32                      ; 2 uses
  %247 = getelementptr inbounds nuw i8, ptr %.78321703.i, i64 1
  %248 = load i8, ptr %247, align 1, !tbaa !17
  %249 = sext i8 %248 to i32
  %250 = mul nsw i32 %249, %246
  %251 = add nsw i32 %243, %250                   ; 2 uses
  %252 = getelementptr inbounds nuw i8, ptr %.78321703.i, i64 2
  %253 = load i8, ptr %252, align 1, !tbaa !17
  %254 = sext i8 %253 to i32
  %255 = mul nsw i32 %254, %239
  %i.bin = add nsw i32 %255, %.17711705.i.a
  %i.bio = getelementptr inbounds nuw i8, ptr %.78321703.i, i64 3
  %256 = load i8, ptr %i.bio, align 1, !tbaa !17
  %257 = sext i8 %256 to i32
  %258 = mul nsw i32 %257, %246
  %259 = add nsw i32 %i.bin, %258                 ; 2 uses
  %260 = getelementptr inbounds nuw i8, ptr %.07671706.i, i64 2
  %i.bip = getelementptr inbounds nuw i8, ptr %.78321703.i, i64 4
  %261 = add nuw nsw i32 %.07651707.i, 2          ; 2 uses
  %262 = or disjoint i32 %261, 1
  %263 = icmp slt i32 %262, %8
  br i1 %263, label %.lr.ph1709.i.a, label %.preheader.loopexit.i, !llvm.loop !327

.lr.ph1726.i:                                     ; preds = %.lr.ph1726.i.preheader1053, %.lr.ph1726.i
  %.17661717.i = phi i32 [ %274, %.lr.ph1726.i ], [ %.17661717.i.ph, %.lr.ph1726.i.preheader1053 ] ; 2 uses
  %.17681716.i = phi ptr [ %272, %.lr.ph1726.i ], [ %.17681716.i.ph, %.lr.ph1726.i.preheader1053 ] ; 2 uses
  %.88331715.i = phi ptr [ %273, %.lr.ph1726.i ], [ %.88331715.i.ph, %.lr.ph1726.i.preheader1053 ] ; 2 uses
  %264 = phi <8 x i32> [ %271, %.lr.ph1726.i ], [ %.ph1054, %.lr.ph1726.i.preheader1053 ]
  %265 = load <4 x i8>, ptr %.17681716.i, align 1, !tbaa !17
  %266 = sext <4 x i8> %265 to <4 x i32>
  %267 = shufflevector <4 x i32> %266, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %268 = load <8 x i8>, ptr %.88331715.i, align 1, !tbaa !17
  %269 = sext <8 x i8> %268 to <8 x i32>
  %270 = mul nsw <8 x i32> %267, %269
  %271 = add nsw <8 x i32> %270, %264             ; 9 uses
  %272 = getelementptr inbounds nuw i8, ptr %.17681716.i, i64 4 ; 2 uses
  %273 = getelementptr inbounds nuw i8, ptr %.88331715.i, i64 8 ; 2 uses
  %274 = add nuw nsw i32 %.17661717.i, 4          ; 2 uses
  %275 = add nuw nsw i32 %.17661717.i, 7
  %276 = icmp slt i32 %275, %8
  br i1 %276, label %.lr.ph1726.i, label %._crit_edge1727.i.loopexit, !llvm.loop !328

._crit_edge1727.i.loopexit:                       ; preds = %.lr.ph1726.i
  %277 = extractelement <8 x i32> %271, i64 7
  %278 = extractelement <8 x i32> %271, i64 6
  %279 = extractelement <8 x i32> %271, i64 5
  %280 = extractelement <8 x i32> %271, i64 4
  %281 = extractelement <8 x i32> %271, i64 3
  %282 = extractelement <8 x i32> %271, i64 2
  %283 = extractelement <8 x i32> %271, i64 1
  %284 = extractelement <8 x i32> %271, i64 0
  br label %._crit_edge1727.i

._crit_edge1727.i:                                ; preds = %._crit_edge1727.i.loopexit, %middle.block967, %.preheader.i
  %.8833.lcssa.i = phi ptr [ %.7832.lcssa.i, %.preheader.i ], [ %18, %middle.block967 ], [ %273, %._crit_edge1727.i.loopexit ] ; 7 uses
  %.1768.lcssa.i = phi ptr [ %.0767.lcssa.i, %.preheader.i ], [ %i.bht, %middle.block967 ], [ %272, %._crit_edge1727.i.loopexit ] ; 5 uses
  %.1766.lcssa.i = phi i32 [ %.0765.lcssa.i, %.preheader.i ], [ %16, %middle.block967 ], [ %274, %._crit_edge1727.i.loopexit ] ; 5 uses
  %.0764.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.bim, %middle.block967 ], [ %284, %._crit_edge1727.i.loopexit ]
  %.0763.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %229, %middle.block967 ], [ %282, %._crit_edge1727.i.loopexit ]
  %.0762.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.bil, %middle.block967 ], [ %280, %._crit_edge1727.i.loopexit ]
  %.0761.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %228, %middle.block967 ], [ %278, %._crit_edge1727.i.loopexit ]
  %.0760.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %227, %middle.block967 ], [ %283, %._crit_edge1727.i.loopexit ]
  %.0759.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %226, %middle.block967 ], [ %281, %._crit_edge1727.i.loopexit ]
  %.0758.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %225, %middle.block967 ], [ %279, %._crit_edge1727.i.loopexit ]
  %.0757.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %224, %middle.block967 ], [ %277, %._crit_edge1727.i.loopexit ]
  %285 = add i32 %.0764.lcssa.i, %.1774.lcssa.i
  %286 = add i32 %285, %.0763.lcssa.i
  %287 = add i32 %286, %.0762.lcssa.i
  %288 = add i32 %287, %.0761.lcssa.i             ; 4 uses
  %289 = add i32 %.0760.lcssa.i, %.1771.lcssa.i
  %290 = add i32 %289, %.0759.lcssa.i
  %291 = add i32 %290, %.0758.lcssa.i
  %292 = add i32 %291, %.0757.lcssa.i             ; 4 uses
  %293 = icmp slt i32 %.1766.lcssa.i, %8
  br i1 %293, label %iter.check914, label %._crit_edge1746.i

iter.check914:                                    ; preds = %._crit_edge1727.i
  %294 = xor i32 %.1766.lcssa.i, -1
  %295 = add i32 %8, %294                         ; 3 uses
  %296 = zext i32 %295 to i64
  %297 = add nuw nsw i64 %296, 1                  ; 5 uses
  %min.iters.check881 = icmp ult i32 %295, 3
  br i1 %min.iters.check881, label %.lr.ph1745.i.preheader, label %vector.main.loop.iter.check882

vector.main.loop.iter.check882:                   ; preds = %iter.check914
  %min.iters.check883 = icmp ult i32 %295, 15
  br i1 %min.iters.check883, label %vec.epilog.ph918, label %vector.ph884

vector.ph884:                                     ; preds = %vector.main.loop.iter.check882
  %298 = and i64 %297, 12
  %n.vec885 = and i64 %297, 8589934576            ; 6 uses
  %299 = trunc i64 %n.vec885 to i32
  %300 = add i32 %.1766.lcssa.i, %299
  %301 = getelementptr i8, ptr %.1768.lcssa.i, i64 %n.vec885
  %302 = shl nuw nsw i64 %n.vec885, 1
  %303 = getelementptr i8, ptr %.8833.lcssa.i, i64 %302 ; 2 uses
  %304 = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %292, i64 0
  %305 = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %288, i64 0
  br label %vector.body886

vector.body886:                                   ; preds = %vector.body886, %vector.ph884
  %index887 = phi i64 [ 0, %vector.ph884 ], [ %index.next903, %vector.body886 ] ; 3 uses
  %vec.phi888 = phi <8 x i32> [ %304, %vector.ph884 ], [ %321, %vector.body886 ]
  %vec.phi889 = phi <8 x i32> [ zeroinitializer, %vector.ph884 ], [ %322, %vector.body886 ]
  %vec.phi890 = phi <8 x i32> [ %305, %vector.ph884 ], [ %315, %vector.body886 ]
  %vec.phi891 = phi <8 x i32> [ zeroinitializer, %vector.ph884 ], [ %316, %vector.body886 ]
  %next.gep892 = getelementptr i8, ptr %.1768.lcssa.i, i64 %index887 ; 2 uses
  %306 = shl i64 %index887, 1                     ; 2 uses
  %next.gep893 = getelementptr i8, ptr %.8833.lcssa.i, i64 %306
  %307 = getelementptr i8, ptr %.8833.lcssa.i, i64 %306
  %next.gep894 = getelementptr i8, ptr %307, i64 16
  %308 = getelementptr i8, ptr %next.gep892, i64 8
  %wide.load895 = load <8 x i8>, ptr %next.gep892, align 1, !tbaa !17
  %wide.load896 = load <8 x i8>, ptr %308, align 1, !tbaa !17
  %309 = sext <8 x i8> %wide.load895 to <8 x i32> ; 2 uses
  %310 = sext <8 x i8> %wide.load896 to <8 x i32> ; 2 uses
  %wide.vec897 = load <16 x i8>, ptr %next.gep893, align 1, !tbaa !17 ; 2 uses
  %strided.vec898 = shufflevector <16 x i8> %wide.vec897, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec899 = shufflevector <16 x i8> %wide.vec897, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec900 = load <16 x i8>, ptr %next.gep894, align 1, !tbaa !17 ; 2 uses
  %strided.vec901 = shufflevector <16 x i8> %wide.vec900, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec902 = shufflevector <16 x i8> %wide.vec900, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %311 = sext <8 x i8> %strided.vec898 to <8 x i32>
  %312 = sext <8 x i8> %strided.vec901 to <8 x i32>
  %313 = mul nsw <8 x i32> %311, %309
  %314 = mul nsw <8 x i32> %312, %310
  %315 = add <8 x i32> %313, %vec.phi890          ; 2 uses
  %316 = add <8 x i32> %314, %vec.phi891          ; 2 uses
  %317 = sext <8 x i8> %strided.vec899 to <8 x i32>
  %318 = sext <8 x i8> %strided.vec902 to <8 x i32>
  %319 = mul nsw <8 x i32> %317, %309
  %320 = mul nsw <8 x i32> %318, %310
  %321 = add <8 x i32> %319, %vec.phi888          ; 2 uses
  %322 = add <8 x i32> %320, %vec.phi889          ; 2 uses
  %index.next903 = add nuw i64 %index887, 16      ; 2 uses
  %323 = icmp eq i64 %index.next903, %n.vec885
  br i1 %323, label %middle.block904, label %vector.body886, !llvm.loop !329

middle.block904:                                  ; preds = %vector.body886
  %bin.rdx905 = add <8 x i32> %322, %321
  %324 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx905) ; 3 uses
  %bin.rdx906 = add <8 x i32> %316, %315
  %325 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx906) ; 3 uses
  %cmp.n907 = icmp eq i64 %297, %n.vec885
  br i1 %cmp.n907, label %._crit_edge1746.i, label %vec.epilog.iter.check916

vec.epilog.iter.check916:                         ; preds = %middle.block904
  %min.epilog.iters.check917 = icmp eq i64 %298, 0
  br i1 %min.epilog.iters.check917, label %.lr.ph1745.i.preheader, label %vec.epilog.ph918, !prof !310

vec.epilog.ph918:                                 ; preds = %vector.main.loop.iter.check882, %vec.epilog.iter.check916
  %vec.epilog.resume.val908 = phi i64 [ %n.vec885, %vec.epilog.iter.check916 ], [ 0, %vector.main.loop.iter.check882 ]
  %bc.merge.rdx911 = phi i32 [ %324, %vec.epilog.iter.check916 ], [ %292, %vector.main.loop.iter.check882 ]
  %bc.merge.rdx912 = phi i32 [ %325, %vec.epilog.iter.check916 ], [ %288, %vector.main.loop.iter.check882 ]
  %n.vec919 = and i64 %297, 8589934588            ; 5 uses
  %326 = trunc i64 %n.vec919 to i32
  %327 = add i32 %.1766.lcssa.i, %326
  %328 = getelementptr i8, ptr %.1768.lcssa.i, i64 %n.vec919
  %329 = shl nuw nsw i64 %n.vec919, 1
  %330 = getelementptr i8, ptr %.8833.lcssa.i, i64 %329 ; 2 uses
  %331 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx911, i64 0
  %332 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx912, i64 0
  br label %vec.epilog.vector.body920

vec.epilog.vector.body920:                        ; preds = %vec.epilog.vector.body920, %vec.epilog.ph918
  %index921 = phi i64 [ %vec.epilog.resume.val908, %vec.epilog.ph918 ], [ %index.next930, %vec.epilog.vector.body920 ] ; 3 uses
  %vec.phi922 = phi <4 x i32> [ %331, %vec.epilog.ph918 ], [ %340, %vec.epilog.vector.body920 ]
  %vec.phi923 = phi <4 x i32> [ %332, %vec.epilog.ph918 ], [ %337, %vec.epilog.vector.body920 ]
  %next.gep924 = getelementptr i8, ptr %.1768.lcssa.i, i64 %index921
  %333 = shl i64 %index921, 1
  %next.gep925 = getelementptr i8, ptr %.8833.lcssa.i, i64 %333
  %wide.load926 = load <4 x i8>, ptr %next.gep924, align 1, !tbaa !17
  %334 = sext <4 x i8> %wide.load926 to <4 x i32> ; 2 uses
  %wide.vec927 = load <8 x i8>, ptr %next.gep925, align 1, !tbaa !17 ; 2 uses
  %strided.vec928 = shufflevector <8 x i8> %wide.vec927, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec929 = shufflevector <8 x i8> %wide.vec927, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %335 = sext <4 x i8> %strided.vec928 to <4 x i32>
  %336 = mul nsw <4 x i32> %335, %334
  %337 = add <4 x i32> %336, %vec.phi923          ; 2 uses
  %338 = sext <4 x i8> %strided.vec929 to <4 x i32>
  %339 = mul nsw <4 x i32> %338, %334
  %340 = add <4 x i32> %339, %vec.phi922          ; 2 uses
  %index.next930 = add nuw i64 %index921, 4       ; 2 uses
  %341 = icmp eq i64 %index.next930, %n.vec919
  br i1 %341, label %vec.epilog.middle.block931, label %vec.epilog.vector.body920, !llvm.loop !330

vec.epilog.middle.block931:                       ; preds = %vec.epilog.vector.body920
  %342 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %340) ; 2 uses
  %343 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %337) ; 2 uses
  %cmp.n932 = icmp eq i64 %297, %n.vec919
  br i1 %cmp.n932, label %._crit_edge1746.i, label %.lr.ph1745.i.preheader

.lr.ph1745.i.preheader:                           ; preds = %iter.check914, %vec.epilog.iter.check916, %vec.epilog.middle.block931
  %.21743.i.ph = phi i32 [ %.1766.lcssa.i, %iter.check914 ], [ %300, %vec.epilog.iter.check916 ], [ %327, %vec.epilog.middle.block931 ]
  %.27691742.i.ph = phi ptr [ %.1768.lcssa.i, %iter.check914 ], [ %301, %vec.epilog.iter.check916 ], [ %328, %vec.epilog.middle.block931 ]
  %.27721741.i.ph = phi i32 [ %292, %iter.check914 ], [ %324, %vec.epilog.iter.check916 ], [ %342, %vec.epilog.middle.block931 ]
  %.27751740.i.ph = phi i32 [ %288, %iter.check914 ], [ %325, %vec.epilog.iter.check916 ], [ %343, %vec.epilog.middle.block931 ]
  %.98341739.i.ph = phi ptr [ %.8833.lcssa.i, %iter.check914 ], [ %303, %vec.epilog.iter.check916 ], [ %330, %vec.epilog.middle.block931 ]
  br label %.lr.ph1745.i

.lr.ph1745.i:                                     ; preds = %.lr.ph1745.i.preheader, %.lr.ph1745.i
  %.21743.i = phi i32 [ %i.bjd, %.lr.ph1745.i ], [ %.21743.i.ph, %.lr.ph1745.i.preheader ]
  %.27691742.i = phi ptr [ %i.bjb, %.lr.ph1745.i ], [ %.27691742.i.ph, %.lr.ph1745.i.preheader ] ; 2 uses
  %.27721741.i = phi i32 [ %i.bja, %.lr.ph1745.i ], [ %.27721741.i.ph, %.lr.ph1745.i.preheader ]
  %.27751740.i = phi i32 [ %i.biv, %.lr.ph1745.i ], [ %.27751740.i.ph, %.lr.ph1745.i.preheader ]
  %.98341739.i = phi ptr [ %i.bjc, %.lr.ph1745.i ], [ %.98341739.i.ph, %.lr.ph1745.i.preheader ] ; 3 uses
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
  br i1 %exitcond2023.not.i, label %._crit_edge1746.i, label %.lr.ph1745.i, !llvm.loop !331

._crit_edge1746.i:                                ; preds = %.lr.ph1745.i, %middle.block904, %vec.epilog.middle.block931, %._crit_edge1727.i
  %.9834.lcssa.i = phi ptr [ %.8833.lcssa.i, %._crit_edge1727.i ], [ %330, %vec.epilog.middle.block931 ], [ %303, %middle.block904 ], [ %i.bjc, %.lr.ph1745.i ] ; 2 uses
  %.2775.lcssa.i = phi i32 [ %288, %._crit_edge1727.i ], [ %343, %vec.epilog.middle.block931 ], [ %325, %middle.block904 ], [ %i.biv, %.lr.ph1745.i ]
  %.2772.lcssa.i = phi i32 [ %292, %._crit_edge1727.i ], [ %342, %vec.epilog.middle.block931 ], [ %324, %middle.block904 ], [ %i.bja, %.lr.ph1745.i ]
  store i32 %.2775.lcssa.i, ptr %.181752.i, align 4, !tbaa !135
  %i.bje = getelementptr inbounds nuw i8, ptr %.181752.i, i64 4
  store i32 %.2772.lcssa.i, ptr %i.bje, align 4, !tbaa !135
  %i.bjf = getelementptr inbounds nuw i8, ptr %.181752.i, i64 8 ; 2 uses
  %i.bjg = add nuw nsw i32 %.28231751.i, 2        ; 3 uses
  %i.bjh = or disjoint i32 %i.bjg, 1
  %i.bji = icmp slt i32 %i.bjh, %6
  br i1 %i.bji, label %.lr.ph1753.i, label %.preheader1216.i, !llvm.loop !332

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
  br i1 %i.bkc, label %middle.block871, label %vector.body852, !llvm.loop !333

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
  br i1 %i.bkw, label %.lr.ph1765.i, label %._crit_edge1766.i, !llvm.loop !334

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
  br i1 %i.bmg, label %middle.block818, label %vector.body801, !llvm.loop !335

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
  br i1 %i.bmr, label %vec.epilog.middle.block842, label %vec.epilog.vector.body834, !llvm.loop !336

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
  br i1 %exitcond2024.not.i, label %._crit_edge1780.i, label %.lr.ph1779.i, !llvm.loop !337

._crit_edge1780.i:                                ; preds = %.lr.ph1779.i, %middle.block818, %vec.epilog.middle.block842, %._crit_edge1766.i
  %.12837.lcssa.i = phi ptr [ %.11836.lcssa.i, %._crit_edge1766.i ], [ %i.bml, %vec.epilog.middle.block842 ], [ %i.bli, %middle.block818 ], [ %i.bna, %.lr.ph1779.i ]
  %.1756.lcssa.i = phi i32 [ %op.rdx, %._crit_edge1766.i ], [ %i.bms, %vec.epilog.middle.block842 ], [ %i.bmh, %middle.block818 ], [ %i.bmy, %.lr.ph1779.i ]
  store i32 %.1756.lcssa.i, ptr %.191785.i, align 4, !tbaa !135
  %i.bnc = getelementptr inbounds nuw i8, ptr %.191785.i, i64 4 ; 2 uses
  %i.bnd = add nuw nsw i32 %.38241784.i, 1        ; 2 uses
  %exitcond2025.not.i = icmp eq i32 %i.bnd, %6
  br i1 %exitcond2025.not.i, label %._crit_edge1787.i, label %.lr.ph1786.i, !llvm.loop !338

._crit_edge1787.i:                                ; preds = %._crit_edge1780.i, %.preheader1216.i
  %.19.lcssa.i = phi ptr [ %.18.lcssa.i, %.preheader1216.i ], [ %i.bnc, %._crit_edge1780.i ]
  %i.bne = getelementptr inbounds i8, ptr %.31791.i, i64 %i.adu
  %i.bnf = add nuw nsw i32 %.37861789.i, 1        ; 2 uses
  %scevgep2021.i = getelementptr i8, ptr %indvars.iv2020.i, i64 %i.adu
  %exitcond2026.not.i = icmp eq i32 %i.bnf, %4
  br i1 %exitcond2026.not.i, label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit, label %.preheader1219.i, !llvm.loop !339

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
!327 = distinct !{!327, !22, !40, !39}
!328 = distinct !{!328, !22, !40, !39}
!329 = distinct !{!329, !22, !39, !40}
!330 = distinct !{!330, !22, !39, !40}
!331 = distinct !{!331, !22, !40, !39}
!332 = distinct !{!332, !22}
!333 = distinct !{!333, !22, !39, !40}
!334 = distinct !{!334, !22, !40, !39}
!335 = distinct !{!335, !22, !39, !40}
!336 = distinct !{!336, !22, !39, !40}
!337 = distinct !{!337, !22, !40, !39}
!338 = distinct !{!338, !22}
!339 = distinct !{!339, !22}
end_hunk_1
