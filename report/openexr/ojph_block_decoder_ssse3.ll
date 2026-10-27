Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_decoder_ssse3?download=true
inline.NumInlined: 42
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4ojph5local27ojph_decode_codeblock_ssse3EPhPjjjjjjjjb:bb.a
  %i.biv = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.biu, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.biw = add nuw nsw <16 x i8> %i.biv, %i.biu   ; 2 uses
  %i.bix = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.biw, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.biy = add <16 x i8> %i.bix, %i.biw           ; 2 uses
  %i.biz = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.biy, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.bja = trunc i32 %i.bij to i16
  %i.bjb = insertelement <8 x i16> poison, i16 %i.bja, i64 0
  %i.bjc = bitcast <8 x i16> %i.bjb to <16 x i8>
  %i.bjd = shufflevector <16 x i8> %i.bjc, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bje = and <16 x i8> %i.bjd, <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>
  %i.bjf = icmp ne <16 x i8> %i.bje, zeroinitializer
  %.neg972 = zext <16 x i1> %i.bjf to <16 x i8>
  %i.bjg = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %.neg972, <16 x i8> %i.biz) ; 4 uses
  %i.bjh = load <2 x i64>, ptr %.08101066, align 16, !tbaa !12
  %i.bji = shufflevector <16 x i8> %i.biq, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12, i32 16, i32 16, i32 16>
  %i.bjj = bitcast <16 x i8> %i.bji to <4 x i32>
  %i.bjk = icmp eq <4 x i32> %i.bjj, splat (i32 255)
  %i.bjl = shufflevector <16 x i8> %i.bjg, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12, i32 16, i32 16, i32 16>
  %i.bjm = bitcast <16 x i8> %i.bjl to <4 x i32>
  %i.bjn = shl <4 x i32> %i.bjm, splat (i32 31)
  %i.bjo = or disjoint <4 x i32> %i.bjn, %i.avx
  %i.bjp = select <4 x i1> %i.bjk, <4 x i32> %i.bjo, <4 x i32> zeroinitializer
  %i.bjq = bitcast <4 x i32> %i.bjp to <2 x i64>
  %i.bjr = or <2 x i64> %i.bjh, %i.bjq
  store <2 x i64> %i.bjr, ptr %.08101066, align 16, !tbaa !12
  %i.bjs = getelementptr inbounds nuw [4 x i8], ptr %.08101066, i64 %i.avy ; 3 uses
  %i.bjt = load <2 x i64>, ptr %i.bjs, align 16, !tbaa !12
  %i.bju = shufflevector <16 x i8> %i.biq, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 16, i32 16, i32 16, i32 5, i32 16, i32 16, i32 16, i32 9, i32 16, i32 16, i32 16, i32 13, i32 16, i32 16, i32 16>
  %i.bjv = bitcast <16 x i8> %i.bju to <4 x i32>
  %i.bjw = icmp eq <4 x i32> %i.bjv, splat (i32 255)
  %i.bjx = shufflevector <16 x i8> %i.bjg, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 16, i32 16, i32 16, i32 5, i32 16, i32 16, i32 16, i32 9, i32 16, i32 16, i32 16, i32 13, i32 16, i32 16, i32 16>
  %i.bjy = bitcast <16 x i8> %i.bjx to <4 x i32>
  %i.bjz = shl <4 x i32> %i.bjy, splat (i32 31)
  %i.bka = or disjoint <4 x i32> %i.bjz, %i.avx
  %i.bkb = select <4 x i1> %i.bjw, <4 x i32> %i.bka, <4 x i32> zeroinitializer
  %i.bkc = bitcast <4 x i32> %i.bkb to <2 x i64>
  %i.bkd = or <2 x i64> %i.bjt, %i.bkc
  store <2 x i64> %i.bkd, ptr %i.bjs, align 16, !tbaa !12
  %i.bke = getelementptr inbounds nuw [4 x i8], ptr %i.bjs, i64 %i.avy ; 3 uses
  %i.bkf = load <2 x i64>, ptr %i.bke, align 16, !tbaa !12
  %i.bkg = shufflevector <16 x i8> %i.biq, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 16, i32 16, i32 16, i32 6, i32 16, i32 16, i32 16, i32 10, i32 16, i32 16, i32 16, i32 14, i32 16, i32 16, i32 16>
  %i.bkh = bitcast <16 x i8> %i.bkg to <4 x i32>
  %i.bki = icmp eq <4 x i32> %i.bkh, splat (i32 255)
  %i.bkj = shufflevector <16 x i8> %i.bjg, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 16, i32 16, i32 16, i32 6, i32 16, i32 16, i32 16, i32 10, i32 16, i32 16, i32 16, i32 14, i32 16, i32 16, i32 16>
  %i.bkk = bitcast <16 x i8> %i.bkj to <4 x i32>
  %i.bkl = shl <4 x i32> %i.bkk, splat (i32 31)
  %i.bkm = or disjoint <4 x i32> %i.bkl, %i.avx
  %i.bkn = select <4 x i1> %i.bki, <4 x i32> %i.bkm, <4 x i32> zeroinitializer
  %i.bko = bitcast <4 x i32> %i.bkn to <2 x i64>
  %i.bkp = or <2 x i64> %i.bkf, %i.bko
  store <2 x i64> %i.bkp, ptr %i.bke, align 16, !tbaa !12
  %i.bkq = getelementptr inbounds nuw [4 x i8], ptr %i.bke, i64 %i.avy ; 2 uses
  %i.bkr = load <2 x i64>, ptr %i.bkq, align 16, !tbaa !12
  %i.bks = shufflevector <16 x i8> %i.biq, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 3, i32 16, i32 16, i32 16, i32 7, i32 16, i32 16, i32 16, i32 11, i32 16, i32 16, i32 16, i32 15, i32 16, i32 16, i32 16>
  %i.bkt = bitcast <16 x i8> %i.bks to <4 x i32>
  %i.bku = icmp eq <4 x i32> %i.bkt, splat (i32 255)
  %i.bkv = shufflevector <16 x i8> %i.bjg, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 3, i32 16, i32 16, i32 16, i32 7, i32 16, i32 16, i32 16, i32 11, i32 16, i32 16, i32 16, i32 15, i32 16, i32 16, i32 16>
  %i.bkw = bitcast <16 x i8> %i.bkv to <4 x i32>
  %i.bkx = shl <4 x i32> %i.bkw, splat (i32 31)
  %i.bky = or disjoint <4 x i32> %i.bkx, %i.avx
  %i.bkz = select <4 x i1> %i.bku, <4 x i32> %i.bky, <4 x i32> zeroinitializer
  %i.bla = bitcast <4 x i32> %i.bkz to <2 x i64>
  %i.blb = or <2 x i64> %i.bkr, %i.bla
  store <2 x i64> %i.blb, ptr %i.bkq, align 16, !tbaa !12
  %i.blc = bitcast <16 x i8> %i.biy to <8 x i16>
  %i.bld = extractelement <8 x i16> %i.blc, i64 7
  %i.ble = lshr i16 %i.bld, 8
  %i.blf = zext nneg i16 %i.ble to i32
  %i.blg = add nuw nsw i32 %.5789.3, %i.blf
  br label %.loopexit973

.loopexit973:                                     ; preds = %.loopexit973.loopexit, %bb.db
  %.6790 = phi i32 [ %.5789.3, %bb.db ], [ %i.blg, %.loopexit973.loopexit ] ; 3 uses
  %i.blh = sub i32 %i.bdk, %.6790
  store i32 %i.blh, ptr %i.avq, align 8, !tbaa !27
  %i.bli = lshr i32 %.6790, 3
  %i.blj = and i32 %i.bli, 24
  %i.blk = zext nneg i32 %i.blj to i64
  %i.bll = getelementptr inbounds nuw i8, ptr %i.avt, i64 %i.blk ; 2 uses
  %i.blm = and i32 %.6790, 63                     ; 2 uses
  %i.bln = load <2 x i64>, ptr %i.bll, align 8, !tbaa !12 ; 2 uses
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bll, i64 16
  %i.blp = load <2 x i64>, ptr %i.blo, align 8, !tbaa !12 ; 3 uses
  %i.blq = zext nneg i32 %i.blm to i64
  %i.blr = insertelement <2 x i64> poison, i64 %i.blq, i64 0
  %i.bls = shufflevector <2 x i64> %i.blr, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.blt = lshr <2 x i64> %i.bln, %i.bls
  %i.blu = shufflevector <2 x i64> %i.bln, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.blv = sub nuw nsw i32 64, %i.blm
  %i.blw = zext nneg i32 %i.blv to i64
  %i.blx = insertelement <2 x i64> poison, i64 %i.blw, i64 0
  %i.bly = shufflevector <2 x i64> %i.blx, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.blz = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.blu, <2 x i64> %i.bly)
  %i.bma = or <2 x i64> %i.blz, %i.blt
  %i.bmb = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.blp, <2 x i32> <i32 1, i32 2>
  %i.bmc = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.bmb, <2 x i64> %i.bly)
  %i.bmd = or <2 x i64> %i.bma, %i.bmc
  store <2 x i64> %i.bmd, ptr %i.avt, align 8, !tbaa !12
  %i.bme = lshr <2 x i64> %i.blp, %i.bls
  %i.bmf = shufflevector <2 x i64> %i.blp, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.bmg = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.bmf, <2 x i64> %i.bly)
  %i.bmh = or <2 x i64> %i.bmg, %i.bme
  store <2 x i64> %i.bmh, ptr %i.avz, align 8, !tbaa !12
  %i.bmi = or i32 %.9806.3, %i.axc                ; 3 uses
  %.pre = shl i32 %i.bmi, 1
  %.pre1189 = lshr i32 %i.bmi, 1
  br label %bb.dc

bb.dc:                                            ; preds = %.loopexit973, %bb.bo
  %.pre-phi1190 = phi i32 [ %.pre1189, %.loopexit973 ], [ %i.axf, %bb.bo ]
  %.pre-phi = phi i32 [ %.pre, %.loopexit973 ], [ %i.axd, %bb.bo ]
  %i.bmj = phi ptr [ %i.bdl, %.loopexit973 ], [ %i.awo, %bb.bo ] ; 2 uses
  %.10807 = phi i32 [ %i.bmi, %.loopexit973 ], [ %i.axc, %bb.bo ] ; 2 uses
  %i.bmk = trunc i32 %.10807 to i16
  store i16 %i.bmk, ptr %.08121064, align 4, !tbaa !65
  %i.bml = and i32 %.pre-phi, 57344
  %i.bmm = and i32 %.pre-phi1190, 28672
  %i.bmn = or i32 %i.bmm, %i.bml
  %i.bmo = or i32 %i.bmn, %.0808
  %i.bmp = or i32 %i.bmo, %.10807
  %i.bmq = and i32 %i.bmp, 61440
  %i.bmr = getelementptr inbounds nuw i8, ptr %.08101066, i64 16
  %i.bms = getelementptr inbounds nuw i8, ptr %.08111065, i64 2
  %i.bmt = getelementptr inbounds nuw i8, ptr %.08121064, i64 2
  %i.bmu = icmp ult i32 %i.awp, %6
  br i1 %i.bmu, label %.lr.ph1070, label %._crit_edge1071, !llvm.loop !57

bb.dd:                                            ; preds = %._crit_edge1079
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  call fastcc void @_ZN4ojph5localL12rev_init_mrpEPNS0_10rev_structEPhii(ptr noundef %15, ptr noundef nonnull %0, i32 noundef %4, i32 noundef %5)
  %.promoted1107 = load ptr, ptr %15, align 8
  br i1 %.not1143, label %._crit_edge1113, label %.lr.ph1112

.lr.ph1112:                                       ; preds = %bb.dd
  %i.bmv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.bmw = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 3 uses
  %i.bmx = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  %i.bmy = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.bmz = sub nsw i32 28, %2                     ; 4 uses
  %i.bna = zext i32 %8 to i64                     ; 3 uses
  br i1 %.not1131, label %._crit_edge1113, label %.lr.ph1096.us.preheader

.lr.ph1096.us.preheader:                          ; preds = %.lr.ph1112
  %.promoted1124 = load i8, ptr %i.bmx, align 8
  %.promoted1121 = load i32, ptr %i.bmv, align 8
  %.promoted1120 = load i64, ptr %i.bmy, align 8
  %.promoted = load i32, ptr %i.bmw, align 4
  %i.bnb = zext i32 %7 to i64
  br label %.lr.ph1096.us

.lr.ph1096.us:                                    ; preds = %.lr.ph1096.us.preheader, %._crit_edge1097.us
  %indvars.iv1187 = phi i64 [ 0, %.lr.ph1096.us.preheader ], [ %indvars.iv.next1188, %._crit_edge1097.us ] ; 3 uses
  %.promoted11061128.us = phi i8 [ %.promoted1124, %.lr.ph1096.us.preheader ], [ %.promoted11061126.us, %._crit_edge1097.us ] ; 2 uses
  %.promoted10991123.us = phi i32 [ %.promoted1121, %.lr.ph1096.us.preheader ], [ %i.bwd, %._crit_edge1097.us ]
  %i.bnc = phi i64 [ %.promoted1120, %.lr.ph1096.us.preheader ], [ %i.bwc, %._crit_edge1097.us ]
  %.promoted11011119.us = phi i32 [ %.promoted, %.lr.ph1096.us.preheader ], [ %.promoted11011115.us, %._crit_edge1097.us ] ; 2 uses
  %.lcssa10821090.lcssa11081109.us = phi ptr [ %.promoted1107, %.lr.ph1096.us.preheader ], [ %.lcssa10821087.us, %._crit_edge1097.us ]
  %i.bnd = lshr exact i64 %indvars.iv1187, 2
  %i.bne = trunc nuw nsw i64 %i.bnd to i32
  %i.bnf = mul i32 %i.asf, %i.bne
  %i.bng = zext i32 %i.bnf to i64
  %i.bnh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bng
  %i.bni = trunc nuw i64 %indvars.iv1187 to i32
  %i.bnj = mul i32 %8, %i.bni
  %i.bnk = zext i32 %i.bnj to i64
  %i.bnl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bnk
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph1096.us, %.loopexit.us
  %.promoted11061127.us = phi i8 [ %.promoted11061128.us, %.lr.ph1096.us ], [ %.promoted11061126.us, %.loopexit.us ]
  %.promoted11011118.us = phi i32 [ %.promoted11011119.us, %.lr.ph1096.us ], [ %.promoted11011115.us, %.loopexit.us ] ; 2 uses
  %i.bnm = phi i8 [ %.promoted11061128.us, %.lr.ph1096.us ], [ %i.btl, %.loopexit.us ] ; 2 uses
  %.lcssa10831105.us = phi i32 [ %.promoted11011119.us, %.lr.ph1096.us ], [ %.lcssa10831102.us, %.loopexit.us ] ; 9 uses
  %.pre.i1100.us = phi i64 [ %i.bnc, %.lr.ph1096.us ], [ %i.bwc, %.loopexit.us ] ; 2 uses
  %i.bnn = phi i32 [ %.promoted10991123.us, %.lr.ph1096.us ], [ %i.bwd, %.loopexit.us ] ; 4 uses
  %.07651094.us = phi i32 [ 0, %.lr.ph1096.us ], [ %i.bwe, %.loopexit.us ]
  %.07661093.us = phi ptr [ %i.bnl, %.lr.ph1096.us ], [ %i.bwf, %.loopexit.us ] ; 4 uses
  %.07671092.us = phi ptr [ %i.bnh, %.lr.ph1096.us ], [ %i.bto, %.loopexit.us ] ; 2 uses
  %.lcssa108210901091.us = phi ptr [ %.lcssa10821090.lcssa11081109.us, %.lr.ph1096.us ], [ %.lcssa10821087.us, %.loopexit.us ] ; 7 uses
  %i.bno = icmp ult i32 %i.bnn, 32
  br i1 %i.bno, label %bb.df, label %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us

bb.df:                                            ; preds = %bb.de
  %i.bnp = icmp sgt i32 %.lcssa10831105.us, 3
  br i1 %i.bnp, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.bnq = icmp sgt i32 %.lcssa10831105.us, 0
  br i1 %i.bnq, label %.preheader.i.i.us.preheader, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us

.preheader.i.i.us.preheader:                      ; preds = %bb.dg
  %xtraiter1354 = and i32 %.lcssa10831105.us, 3   ; 3 uses
  %i.bnr = icmp ult i32 %.lcssa10831105.us, 4
  br i1 %i.bnr, label %.preheader.i.i.us.epil.preheader, label %.preheader.i.i.us.preheader.new

.preheader.i.i.us.preheader.new:                  ; preds = %.preheader.i.i.us.preheader
  %unroll_iter1361 = and i32 %.lcssa10831105.us, 2147483644
  br label %.preheader.i.i.us

.preheader.i.i.us:                                ; preds = %.preheader.i.i.us, %.preheader.i.i.us.preheader.new
  %i.bns = phi ptr [ %.lcssa108210901091.us, %.preheader.i.i.us.preheader.new ], [ %i.boc, %.preheader.i.i.us ] ; 5 uses
  %.047.i.i.us = phi i32 [ 0, %.preheader.i.i.us.preheader.new ], [ %i.boh, %.preheader.i.i.us ]
  %.04446.i.i.us = phi i32 [ 24, %.preheader.i.i.us.preheader.new ], [ %i.boi, %.preheader.i.i.us ] ; 3 uses
  %niter1362 = phi i32 [ 0, %.preheader.i.i.us.preheader.new ], [ %niter1362.next.3, %.preheader.i.i.us ]
  %i.bnt = getelementptr inbounds i8, ptr %i.bns, i64 -1
  %i.bnu = load i8, ptr %i.bns, align 1, !tbaa !12
  %i.bnv = zext i8 %i.bnu to i32
  %i.bnw = shl i32 %i.bnv, %.04446.i.i.us
  %i.bnx = or i32 %i.bnw, %.047.i.i.us
  %i.bny = getelementptr inbounds i8, ptr %i.bns, i64 -2
  %i.bnz = load i8, ptr %i.bnt, align 1, !tbaa !12
  %i.boa = zext i8 %i.bnz to i32
  %16 = getelementptr inbounds i8, ptr %i.bns, i64 -3
  %17 = load i8, ptr %i.bny, align 1, !tbaa !12
  %18 = zext i8 %17 to i32
  %i.bob = add nsw i32 %.04446.i.i.us, -24
  %i.boc = getelementptr inbounds i8, ptr %i.bns, i64 -4 ; 2 uses
  %i.bod = load i8, ptr %16, align 1, !tbaa !12
  %i.boe = zext i8 %i.bod to i32
  %i.bof = shl nuw nsw i32 %i.boa, 16
  %19 = shl nuw nsw i32 %18, 8
  %20 = or disjoint i32 %i.bof, %19
  %21 = or disjoint i32 %20, %i.boe
  %i.bog = shl i32 %21, %i.bob
  %i.boh = or i32 %i.bog, %i.bnx                  ; 3 uses
  %i.boi = add nsw i32 %.04446.i.i.us, -32        ; 2 uses
  %niter1362.next.3 = add i32 %niter1362, 4       ; 2 uses
  %niter1362.ncmp.3.not = icmp eq i32 %niter1362.next.3, %unroll_iter1361
  br i1 %niter1362.ncmp.3.not, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us.unr-lcssa, label %.preheader.i.i.us, !llvm.loop !1

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us.unr-lcssa: ; preds = %.preheader.i.i.us
  %lcmp.mod1358.not = icmp eq i32 %xtraiter1354, 0
  br i1 %lcmp.mod1358.not, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us, label %.preheader.i.i.us.epil.preheader

.preheader.i.i.us.epil.preheader:                 ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us.unr-lcssa, %.preheader.i.i.us.preheader
  %.epil.init = phi ptr [ %.lcssa108210901091.us, %.preheader.i.i.us.preheader ], [ %i.boc, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us.unr-lcssa ]
  %.047.i.i.us.epil.init = phi i32 [ 0, %.preheader.i.i.us.preheader ], [ %i.boh, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us.unr-lcssa ]
  %.04446.i.i.us.epil.init = phi i32 [ 24, %.preheader.i.i.us.preheader ], [ %i.boi, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us.unr-lcssa ]
  %lcmp.mod1360 = icmp ne i32 %xtraiter1354, 0
  tail call void @llvm.assume(i1 %lcmp.mod1360)
  br label %.preheader.i.i.us.epil

.preheader.i.i.us.epil:                           ; preds = %.preheader.i.i.us.epil, %.preheader.i.i.us.epil.preheader
  %i.boj = phi ptr [ %i.bok, %.preheader.i.i.us.epil ], [ %.epil.init, %.preheader.i.i.us.epil.preheader ] ; 2 uses
  %.047.i.i.us.epil = phi i32 [ %i.boo, %.preheader.i.i.us.epil ], [ %.047.i.i.us.epil.init, %.preheader.i.i.us.epil.preheader ]
  %.04446.i.i.us.epil = phi i32 [ %i.bop, %.preheader.i.i.us.epil ], [ %.04446.i.i.us.epil.init, %.preheader.i.i.us.epil.preheader ] ; 2 uses
  %epil.iter1355 = phi i32 [ %epil.iter1355.next, %.preheader.i.i.us.epil ], [ 0, %.preheader.i.i.us.epil.preheader ]
  %i.bok = getelementptr inbounds i8, ptr %i.boj, i64 -1
  %i.bol = load i8, ptr %i.boj, align 1, !tbaa !12
  %i.bom = zext i8 %i.bol to i32
  %i.bon = shl i32 %i.bom, %.04446.i.i.us.epil
  %i.boo = or i32 %i.bon, %.047.i.i.us.epil       ; 2 uses
  %i.bop = add nsw i32 %.04446.i.i.us.epil, -8
  %epil.iter1355.next = add i32 %epil.iter1355, 1 ; 2 uses
  %epil.iter1355.cmp.not = icmp eq i32 %epil.iter1355.next, %xtraiter1354
  br i1 %epil.iter1355.cmp.not, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us, label %.preheader.i.i.us.epil, !llvm.loop !58

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us: ; preds = %.preheader.i.i.us.epil, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us.unr-lcssa
  %.lcssa = phi i32 [ %i.boh, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us.unr-lcssa ], [ %i.boo, %.preheader.i.i.us.epil ]
  %scevgep1183 = getelementptr i8, ptr %.lcssa108210901091.us, i64 -1
  %i.boq = add nsw i32 %.lcssa10831105.us, -1
  %i.bor = zext nneg i32 %i.boq to i64
  %i.bos = sub nsw i64 0, %i.bor
  %scevgep1184 = getelementptr i8, ptr %scevgep1183, i64 %i.bos
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split

bb.dh:                                            ; preds = %bb.df
  %i.bot = getelementptr inbounds i8, ptr %.lcssa108210901091.us, i64 -3
  %i.bou = load i32, ptr %i.bot, align 4, !tbaa !25
  %i.bov = getelementptr inbounds i8, ptr %.lcssa108210901091.us, i64 -4
  %i.bow = add nsw i32 %.lcssa10831105.us, -4
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split: ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us, %bb.dh
  %.sink = phi i32 [ %i.bow, %bb.dh ], [ 0, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us ] ; 3 uses
  %.lcssa10821089.us.ph = phi ptr [ %i.bov, %bb.dh ], [ %scevgep1184, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us ]
  %.1.i.i.us.ph = phi i32 [ %i.bou, %bb.dh ], [ %.lcssa, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.loopexit.us ]
  store i32 %.sink, ptr %i.bmw, align 4, !tbaa !30
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us: ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split, %bb.dg
  %.promoted11011117.us = phi i32 [ %.promoted11011118.us, %bb.dg ], [ %.sink, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split ] ; 2 uses
  %.lcssa10831104.us = phi i32 [ %.lcssa10831105.us, %bb.dg ], [ %.sink, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split ] ; 9 uses
  %.lcssa10821089.us = phi ptr [ %.lcssa108210901091.us, %bb.dg ], [ %.lcssa10821089.us.ph, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split ] ; 7 uses
  %.1.i.i.us = phi i32 [ 0, %bb.dg ], [ %.1.i.i.us.ph, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us.sink.split ] ; 9 uses
  %i.box = lshr i32 %.1.i.i.us, 24
  %i.boy = trunc nuw i8 %i.bnm to i1
  %i.boz = and i32 %.1.i.i.us, 2130706432
  %i.bpa = icmp eq i32 %i.boz, 2130706432
  %i.bpb = select i1 %i.boy, i1 %i.bpa, i1 false
  %i.bpc = select i1 %i.bpb, i32 7, i32 8         ; 2 uses
  %i.bpd = icmp ugt i32 %.1.i.i.us, -1879048193
  %i.bpe = lshr i32 %.1.i.i.us, 16
  %i.bpf = and i32 %i.bpe, 255                    ; 2 uses
  %i.bpg = shl nuw nsw i32 %i.bpf, %i.bpc
  %i.bph = or i32 %i.bpg, %i.box
  %i.bpi = and i32 %.1.i.i.us, 8323072
  %i.bpj = icmp eq i32 %i.bpi, 8323072
  %i.bpk = and i1 %i.bpd, %i.bpj
  %i.bpl = select i1 %i.bpk, i32 7, i32 8
  %i.bpm = add nuw nsw i32 %i.bpc, %i.bpl         ; 2 uses
  %i.bpn = icmp samesign ugt i32 %i.bpf, 143
  %i.bpo = lshr i32 %.1.i.i.us, 8
  %i.bpp = and i32 %i.bpo, 255                    ; 2 uses
  %i.bpq = shl nuw nsw i32 %i.bpp, %i.bpm
  %i.bpr = or i32 %i.bph, %i.bpq
  %i.bps = and i32 %.1.i.i.us, 32512
  %i.bpt = icmp eq i32 %i.bps, 32512
  %i.bpu = select i1 %i.bpn, i1 %i.bpt, i1 false
  %i.bpv = select i1 %i.bpu, i32 7, i32 8
  %i.bpw = add nuw nsw i32 %i.bpm, %i.bpv         ; 2 uses
  %i.bpx = icmp samesign ugt i32 %i.bpp, 143
  %i.bpy = and i32 %.1.i.i.us, 255                ; 2 uses
  %i.bpz = shl nuw i32 %i.bpy, %i.bpw
  %i.bqa = or i32 %i.bpr, %i.bpz
  %i.bqb = and i32 %.1.i.i.us, 127
  %i.bqc = icmp eq i32 %i.bqb, 127
  %i.bqd = select i1 %i.bpx, i1 %i.bqc, i1 false
  %i.bqe = select i1 %i.bqd, i32 7, i32 8
  %i.bqf = icmp samesign ugt i32 %i.bpy, 143      ; 2 uses
  %i.bqg = zext i1 %i.bqf to i8                   ; 3 uses
  %i.bqh = zext i32 %i.bqa to i64
  %i.bqi = zext nneg i32 %i.bnn to i64
  %i.bqj = shl nuw nsw i64 %i.bqh, %i.bqi
  %i.bqk = or i64 %i.bqj, %.pre.i1100.us          ; 3 uses
  store i64 %i.bqk, ptr %i.bmy, align 8, !tbaa !22
  %i.bql = add nuw nsw i32 %i.bqe, %i.bnn
  %i.bqm = add nuw nsw i32 %i.bql, %i.bpw         ; 5 uses
  store i32 %i.bqm, ptr %i.bmv, align 8, !tbaa !23
  store i8 %i.bqg, ptr %i.bmx, align 8, !tbaa !31
  %i.bqn = icmp samesign ult i32 %i.bqm, 32
  br i1 %i.bqn, label %bb.di, label %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us

bb.di:                                            ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us
  %i.bqo = icmp sgt i32 %.lcssa10831104.us, 3
  br i1 %i.bqo, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.bqp = icmp sgt i32 %.lcssa10831104.us, 0
  br i1 %i.bqp, label %.preheader.i7.i.us.preheader, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us

.preheader.i7.i.us.preheader:                     ; preds = %bb.dj
  %xtraiter1363 = and i32 %.lcssa10831104.us, 3   ; 3 uses
  %i.bqq = icmp ult i32 %.lcssa10831104.us, 4
  br i1 %i.bqq, label %.preheader.i7.i.us.epil.preheader, label %.preheader.i7.i.us.preheader.new

.preheader.i7.i.us.preheader.new:                 ; preds = %.preheader.i7.i.us.preheader
  %unroll_iter1372 = and i32 %.lcssa10831104.us, 2147483644
  br label %.preheader.i7.i.us

.preheader.i7.i.us:                               ; preds = %.preheader.i7.i.us, %.preheader.i7.i.us.preheader.new
  %i.bqr = phi ptr [ %.lcssa10821089.us, %.preheader.i7.i.us.preheader.new ], [ %i.brb, %.preheader.i7.i.us ] ; 5 uses
  %.047.i9.i.us = phi i32 [ 0, %.preheader.i7.i.us.preheader.new ], [ %i.brg, %.preheader.i7.i.us ]
  %.04446.i10.i.us = phi i32 [ 24, %.preheader.i7.i.us.preheader.new ], [ %i.brh, %.preheader.i7.i.us ] ; 3 uses
  %niter1373 = phi i32 [ 0, %.preheader.i7.i.us.preheader.new ], [ %niter1373.next.3, %.preheader.i7.i.us ]
  %i.bqs = getelementptr inbounds i8, ptr %i.bqr, i64 -1
  %i.bqt = load i8, ptr %i.bqr, align 1, !tbaa !12
  %i.bqu = zext i8 %i.bqt to i32
  %i.bqv = shl i32 %i.bqu, %.04446.i10.i.us
  %i.bqw = or i32 %i.bqv, %.047.i9.i.us
  %i.bqx = getelementptr inbounds i8, ptr %i.bqr, i64 -2
  %i.bqy = load i8, ptr %i.bqs, align 1, !tbaa !12
  %i.bqz = zext i8 %i.bqy to i32
  %22 = getelementptr inbounds i8, ptr %i.bqr, i64 -3
  %23 = load i8, ptr %i.bqx, align 1, !tbaa !12
  %24 = zext i8 %23 to i32
  %i.bra = add nsw i32 %.04446.i10.i.us, -24
  %i.brb = getelementptr inbounds i8, ptr %i.bqr, i64 -4 ; 2 uses
  %i.brc = load i8, ptr %22, align 1, !tbaa !12
  %i.brd = zext i8 %i.brc to i32
  %i.bre = shl nuw nsw i32 %i.bqz, 16
  %25 = shl nuw nsw i32 %24, 8
  %26 = or disjoint i32 %i.bre, %25
  %27 = or disjoint i32 %26, %i.brd
  %i.brf = shl i32 %27, %i.bra
  %i.brg = or i32 %i.brf, %i.bqw                  ; 3 uses
  %i.brh = add nsw i32 %.04446.i10.i.us, -32      ; 2 uses
  %niter1373.next.3 = add i32 %niter1373, 4       ; 2 uses
  %niter1373.ncmp.3.not = icmp eq i32 %niter1373.next.3, %unroll_iter1372
  br i1 %niter1373.ncmp.3.not, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us.unr-lcssa, label %.preheader.i7.i.us, !llvm.loop !1

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us.unr-lcssa: ; preds = %.preheader.i7.i.us
  %lcmp.mod1369.not = icmp eq i32 %xtraiter1363, 0
  br i1 %lcmp.mod1369.not, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us, label %.preheader.i7.i.us.epil.preheader

.preheader.i7.i.us.epil.preheader:                ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us.unr-lcssa, %.preheader.i7.i.us.preheader
  %.epil.init1366 = phi ptr [ %.lcssa10821089.us, %.preheader.i7.i.us.preheader ], [ %i.brb, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us.unr-lcssa ]
  %.047.i9.i.us.epil.init = phi i32 [ 0, %.preheader.i7.i.us.preheader ], [ %i.brg, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us.unr-lcssa ]
  %.04446.i10.i.us.epil.init = phi i32 [ 24, %.preheader.i7.i.us.preheader ], [ %i.brh, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us.unr-lcssa ]
  %lcmp.mod1371 = icmp ne i32 %xtraiter1363, 0
  tail call void @llvm.assume(i1 %lcmp.mod1371)
  br label %.preheader.i7.i.us.epil

.preheader.i7.i.us.epil:                          ; preds = %.preheader.i7.i.us.epil, %.preheader.i7.i.us.epil.preheader
  %i.bri = phi ptr [ %i.brj, %.preheader.i7.i.us.epil ], [ %.epil.init1366, %.preheader.i7.i.us.epil.preheader ] ; 2 uses
  %.047.i9.i.us.epil = phi i32 [ %i.brn, %.preheader.i7.i.us.epil ], [ %.047.i9.i.us.epil.init, %.preheader.i7.i.us.epil.preheader ]
  %.04446.i10.i.us.epil = phi i32 [ %i.bro, %.preheader.i7.i.us.epil ], [ %.04446.i10.i.us.epil.init, %.preheader.i7.i.us.epil.preheader ] ; 2 uses
  %epil.iter1364 = phi i32 [ %epil.iter1364.next, %.preheader.i7.i.us.epil ], [ 0, %.preheader.i7.i.us.epil.preheader ]
  %i.brj = getelementptr inbounds i8, ptr %i.bri, i64 -1
  %i.brk = load i8, ptr %i.bri, align 1, !tbaa !12
  %i.brl = zext i8 %i.brk to i32
  %i.brm = shl i32 %i.brl, %.04446.i10.i.us.epil
  %i.brn = or i32 %i.brm, %.047.i9.i.us.epil      ; 2 uses
  %i.bro = add nsw i32 %.04446.i10.i.us.epil, -8
  %epil.iter1364.next = add i32 %epil.iter1364, 1 ; 2 uses
  %epil.iter1364.cmp.not = icmp eq i32 %epil.iter1364.next, %xtraiter1363
  br i1 %epil.iter1364.cmp.not, label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us, label %.preheader.i7.i.us.epil, !llvm.loop !59

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us: ; preds = %.preheader.i7.i.us.epil, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us.unr-lcssa
  %.lcssa1332 = phi i32 [ %i.brg, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us.unr-lcssa ], [ %i.brn, %.preheader.i7.i.us.epil ]
  %scevgep1185 = getelementptr i8, ptr %.lcssa10821089.us, i64 -1
  %i.brp = add nsw i32 %.lcssa10831104.us, -1
  %i.brq = zext nneg i32 %i.brp to i64
  %i.brr = sub nsw i64 0, %i.brq
  %scevgep1186 = getelementptr i8, ptr %scevgep1185, i64 %i.brr
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split

bb.dk:                                            ; preds = %bb.di
  %i.brs = getelementptr inbounds i8, ptr %.lcssa10821089.us, i64 -3
  %i.brt = load i32, ptr %i.brs, align 4, !tbaa !25
  %i.bru = getelementptr inbounds i8, ptr %.lcssa10821089.us, i64 -4
  %i.brv = add nsw i32 %.lcssa10831104.us, -4
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split: ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us, %bb.dk
  %.sink1249 = phi i32 [ %i.brv, %bb.dk ], [ 0, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us ] ; 3 uses
  %.lcssa10821088.us.ph = phi ptr [ %i.bru, %bb.dk ], [ %scevgep1186, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us ]
  %.1.i6.i.us.ph = phi i32 [ %i.brt, %bb.dk ], [ %.lcssa1332, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.loopexit.us ]
  store i32 %.sink1249, ptr %i.bmw, align 4, !tbaa !30
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us: ; preds = %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split, %bb.dj
  %.promoted11011116.us = phi i32 [ %.promoted11011117.us, %bb.dj ], [ %.sink1249, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split ]
  %.lcssa10831103.us = phi i32 [ %.lcssa10831104.us, %bb.dj ], [ %.sink1249, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split ]
  %.lcssa10821088.us = phi ptr [ %.lcssa10821089.us, %bb.dj ], [ %.lcssa10821088.us.ph, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split ]
  %.1.i6.i.us = phi i32 [ 0, %bb.dj ], [ %.1.i6.i.us.ph, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us.sink.split ] ; 9 uses
  %i.brw = lshr i32 %.1.i6.i.us, 24
  %i.brx = and i32 %.1.i6.i.us, 2130706432
  %i.bry = icmp eq i32 %i.brx, 2130706432
  %i.brz = select i1 %i.bqf, i1 %i.bry, i1 false
  %i.bsa = select i1 %i.brz, i32 7, i32 8         ; 2 uses
  %i.bsb = icmp ugt i32 %.1.i6.i.us, -1879048193
  %i.bsc = lshr i32 %.1.i6.i.us, 16
  %i.bsd = and i32 %i.bsc, 255                    ; 2 uses
  %i.bse = shl nuw nsw i32 %i.bsd, %i.bsa
  %i.bsf = or i32 %i.bse, %i.brw
  %i.bsg = and i32 %.1.i6.i.us, 8323072
  %i.bsh = icmp eq i32 %i.bsg, 8323072
  %i.bsi = and i1 %i.bsb, %i.bsh
  %i.bsj = select i1 %i.bsi, i32 7, i32 8
  %i.bsk = add nuw nsw i32 %i.bsa, %i.bsj         ; 2 uses
  %i.bsl = icmp samesign ugt i32 %i.bsd, 143
  %i.bsm = lshr i32 %.1.i6.i.us, 8
  %i.bsn = and i32 %i.bsm, 255                    ; 2 uses
  %i.bso = shl nuw nsw i32 %i.bsn, %i.bsk
  %i.bsp = or i32 %i.bsf, %i.bso
  %i.bsq = and i32 %.1.i6.i.us, 32512
  %i.bsr = icmp eq i32 %i.bsq, 32512
  %i.bss = select i1 %i.bsl, i1 %i.bsr, i1 false
  %i.bst = select i1 %i.bss, i32 7, i32 8
  %i.bsu = add nuw nsw i32 %i.bsk, %i.bst         ; 2 uses
  %i.bsv = icmp samesign ugt i32 %i.bsn, 143
  %i.bsw = and i32 %.1.i6.i.us, 255               ; 2 uses
  %i.bsx = shl nuw i32 %i.bsw, %i.bsu
  %i.bsy = or i32 %i.bsp, %i.bsx
  %i.bsz = and i32 %.1.i6.i.us, 127
  %i.bta = icmp eq i32 %i.bsz, 127
  %i.btb = select i1 %i.bsv, i1 %i.bta, i1 false
  %i.btc = select i1 %i.btb, i32 7, i32 8
  %i.btd = icmp samesign ugt i32 %i.bsw, 143
  %i.bte = zext i1 %i.btd to i8                   ; 3 uses
  %i.btf = zext i32 %i.bsy to i64
  %i.btg = zext nneg i32 %i.bqm to i64
  %i.bth = shl nuw nsw i64 %i.btf, %i.btg
  %i.bti = or i64 %i.bth, %i.bqk
  %i.btj = add nuw nsw i32 %i.btc, %i.bqm
  %i.btk = add nuw nsw i32 %i.btj, %i.bsu
  store i8 %i.bte, ptr %i.bmx, align 8, !tbaa !31
  br label %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us

_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us: ; preds = %bb.de, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us
  %.promoted11061126.us = phi i8 [ %i.bte, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %i.bqg, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.promoted11061127.us, %bb.de ] ; 2 uses
  %.promoted11011115.us = phi i32 [ %.promoted11011116.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %.promoted11011117.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.promoted11011118.us, %bb.de ] ; 2 uses
  %i.btl = phi i8 [ %i.bte, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %i.bqg, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %i.bnm, %bb.de ]
  %.lcssa10831102.us = phi i32 [ %.lcssa10831103.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %.lcssa10831104.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.lcssa10831105.us, %bb.de ]
  %i.btm = phi i32 [ %i.btk, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %i.bqm, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %i.bnn, %bb.de ]
  %.lcssa10821087.us = phi ptr [ %.lcssa10821088.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %.lcssa10821089.us, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.lcssa108210901091.us, %bb.de ] ; 3 uses
  %i.btn = phi i64 [ %i.bti, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit11.i.us ], [ %i.bqk, %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit.i.us ], [ %.pre.i1100.us, %bb.de ] ; 2 uses
  %i.bto = getelementptr inbounds nuw i8, ptr %.07671092.us, i64 2
  %i.btp = load i16, ptr %.07671092.us, align 2, !tbaa !65 ; 2 uses
  %.not892.us = icmp eq i16 %i.btp, 0
  br i1 %.not892.us, label %.loopexit.us, label %.loopexit.us.loopexit

.loopexit.us.loopexit:                            ; preds = %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us
  %i.btq = insertelement <8 x i16> poison, i16 %i.btp, i64 0
  %i.btr = bitcast <8 x i16> %i.btq to <16 x i8>
  %i.bts = shufflevector <16 x i8> %i.btr, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.btt = and <16 x i8> %i.bts, <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>
  %i.btu = icmp ne <16 x i8> %i.btt, zeroinitializer
  %.neg.us = zext <16 x i1> %i.btu to <16 x i8>   ; 6 uses
  %i.btv = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %.neg.us, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.btw = add nuw nsw <16 x i8> %i.btv, %.neg.us ; 2 uses
  %i.btx = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.btw, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.bty = add nuw nsw <16 x i8> %i.btx, %i.btw   ; 2 uses
  %i.btz = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bty, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bua = add nuw nsw <16 x i8> %i.btz, %i.bty   ; 2 uses
  %i.bub = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bua, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.buc = add <16 x i8> %i.bub, %i.bua           ; 5 uses
  %i.bud = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.buc, <16 x i32> <i32 15, i32 poison, i32 poison, i32 poison, i32 19, i32 poison, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 poison, i32 27, i32 poison, i32 poison, i32 poison>
  %i.bue = trunc i64 %i.btn to i16
  %i.buf = insertelement <8 x i16> poison, i16 %i.bue, i64 0
  %i.bug = bitcast <8 x i16> %i.buf to <16 x i8>
  %i.buh = shufflevector <16 x i8> %i.bug, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bui = and <16 x i8> %i.buh, <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>
  %.not969.us = icmp eq <16 x i8> %i.bui, zeroinitializer
  %i.buj = select <16 x i1> %.not969.us, <16 x i8> splat (i8 3), <16 x i8> splat (i8 1) ; 4 uses
  %i.buk = load <2 x i64>, ptr %.07661093.us, align 16, !tbaa !12
  %i.bul = shufflevector <16 x i8> %.neg.us, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12, i32 16, i32 16, i32 16>
  %.not970.us = icmp eq <16 x i8> %i.bul, zeroinitializer
  %i.bum = shufflevector <16 x i8> %i.bud, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12, i32 16, i32 16, i32 16>
  %i.bun = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.buj, <16 x i8> %i.bum)
  %i.buo = select <16 x i1> %.not970.us, <16 x i8> zeroinitializer, <16 x i8> %i.bun
  %i.bup = bitcast <16 x i8> %i.buo to <4 x i32>
  %i.buq = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.bup, i32 range(i32 -17, 32) %i.bmz)
  %i.bur = bitcast <4 x i32> %i.buq to <2 x i64>
  %i.bus = xor <2 x i64> %i.buk, %i.bur
  store <2 x i64> %i.bus, ptr %.07661093.us, align 16, !tbaa !12
  %i.but = getelementptr inbounds nuw [4 x i8], ptr %.07661093.us, i64 %i.bna ; 3 uses
  %i.buu = load <2 x i64>, ptr %i.but, align 16, !tbaa !12
  %i.buv = shufflevector <16 x i8> %.neg.us, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 16, i32 16, i32 16, i32 5, i32 16, i32 16, i32 16, i32 9, i32 16, i32 16, i32 16, i32 13, i32 16, i32 16, i32 16>
  %.not970.us.1 = icmp eq <16 x i8> %i.buv, zeroinitializer
  %i.buw = shufflevector <16 x i8> %i.buc, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 4, i32 16, i32 16, i32 16, i32 8, i32 16, i32 16, i32 16, i32 12, i32 16, i32 16, i32 16>
  %i.bux = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.buj, <16 x i8> %i.buw)
  %i.buy = select <16 x i1> %.not970.us.1, <16 x i8> zeroinitializer, <16 x i8> %i.bux
  %i.buz = bitcast <16 x i8> %i.buy to <4 x i32>
  %i.bva = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.buz, i32 range(i32 -17, 32) %i.bmz)
  %i.bvb = bitcast <4 x i32> %i.bva to <2 x i64>
  %i.bvc = xor <2 x i64> %i.buu, %i.bvb
  store <2 x i64> %i.bvc, ptr %i.but, align 16, !tbaa !12
  %i.bvd = getelementptr inbounds nuw [4 x i8], ptr %i.but, i64 %i.bna ; 3 uses
  %i.bve = load <2 x i64>, ptr %i.bvd, align 16, !tbaa !12
  %i.bvf = shufflevector <16 x i8> %.neg.us, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 16, i32 16, i32 16, i32 6, i32 16, i32 16, i32 16, i32 10, i32 16, i32 16, i32 16, i32 14, i32 16, i32 16, i32 16>
  %.not970.us.2 = icmp eq <16 x i8> %i.bvf, zeroinitializer
  %i.bvg = shufflevector <16 x i8> %i.buc, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 16, i32 16, i32 16, i32 5, i32 16, i32 16, i32 16, i32 9, i32 16, i32 16, i32 16, i32 13, i32 16, i32 16, i32 16>
  %i.bvh = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.buj, <16 x i8> %i.bvg)
  %i.bvi = select <16 x i1> %.not970.us.2, <16 x i8> zeroinitializer, <16 x i8> %i.bvh
  %i.bvj = bitcast <16 x i8> %i.bvi to <4 x i32>
  %i.bvk = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.bvj, i32 range(i32 -17, 32) %i.bmz)
  %i.bvl = bitcast <4 x i32> %i.bvk to <2 x i64>
  %i.bvm = xor <2 x i64> %i.bve, %i.bvl
  store <2 x i64> %i.bvm, ptr %i.bvd, align 16, !tbaa !12
  %i.bvn = getelementptr inbounds nuw [4 x i8], ptr %i.bvd, i64 %i.bna ; 2 uses
  %i.bvo = load <2 x i64>, ptr %i.bvn, align 16, !tbaa !12
  %i.bvp = shufflevector <16 x i8> %.neg.us, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 3, i32 16, i32 16, i32 16, i32 7, i32 16, i32 16, i32 16, i32 11, i32 16, i32 16, i32 16, i32 15, i32 16, i32 16, i32 16>
  %.not970.us.3 = icmp eq <16 x i8> %i.bvp, zeroinitializer
  %i.bvq = shufflevector <16 x i8> %i.buc, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 16, i32 16, i32 16, i32 6, i32 16, i32 16, i32 16, i32 10, i32 16, i32 16, i32 16, i32 14, i32 16, i32 16, i32 16>
  %i.bvr = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.buj, <16 x i8> %i.bvq)
  %i.bvs = select <16 x i1> %.not970.us.3, <16 x i8> zeroinitializer, <16 x i8> %i.bvr
  %i.bvt = bitcast <16 x i8> %i.bvs to <4 x i32>
  %i.bvu = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.bvt, i32 range(i32 -17, 32) %i.bmz)
  %i.bvv = bitcast <4 x i32> %i.bvu to <2 x i64>
  %i.bvw = xor <2 x i64> %i.bvo, %i.bvv
  store <2 x i64> %i.bvw, ptr %i.bvn, align 16, !tbaa !12
  %i.bvx = bitcast <16 x i8> %i.buc to <8 x i16>
  %i.bvy = extractelement <8 x i16> %i.bvx, i64 7
  %i.bvz = lshr i16 %i.bvy, 8
  %i.bwa = zext nneg i16 %i.bvz to i32
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.loopexit.us.loopexit, %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us
  %.0764.us = phi i32 [ 0, %_ZN4ojph5localL13rev_fetch_mrpEPNS0_10rev_structE.exit.us ], [ %i.bwa, %.loopexit.us.loopexit ] ; 2 uses
  %i.bwb = zext nneg i32 %.0764.us to i64
  %i.bwc = lshr i64 %i.btn, %i.bwb                ; 3 uses
  store i64 %i.bwc, ptr %i.bmy, align 8, !tbaa !22
  %i.bwd = sub i32 %i.btm, %.0764.us              ; 3 uses
  store i32 %i.bwd, ptr %i.bmv, align 8, !tbaa !23
  %i.bwe = add nuw i32 %.07651094.us, 4           ; 2 uses
  %i.bwf = getelementptr inbounds nuw i8, ptr %.07661093.us, i64 16
  %i.bwg = icmp ult i32 %i.bwe, %6
  br i1 %i.bwg, label %bb.de, label %._crit_edge1097.us, !llvm.loop !60

._crit_edge1097.us:                               ; preds = %.loopexit.us
  store ptr %.lcssa10821087.us, ptr %15, align 8
  %indvars.iv.next1188 = add nuw nsw i64 %indvars.iv1187, 4 ; 2 uses
  %i.bwh = icmp samesign ult i64 %indvars.iv.next1188, %i.bnb
  br i1 %i.bwh, label %.lr.ph1096.us, label %._crit_edge1113, !llvm.loop !61

end_hunk_0
