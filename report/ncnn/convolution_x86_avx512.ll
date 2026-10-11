Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512?download=true
inline.NumInlined: 389
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 154
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 372
begin_hunk_0_@_ZN4ncnn22Convolution_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
.preheader1583.i:                                 ; preds = %._crit_edge1676.us.i, %_ZN4ncnn3MatD2Ev.exit1329.i
  %.01284.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.apy, %._crit_edge1676.us.i ] ; 4 uses
  %.01242.lcssa.i = phi ptr [ %i.bic, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.bkg, %._crit_edge1676.us.i ] ; 3 uses
  %.01240.lcssa.i = phi ptr [ %i.bhr, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.bko, %._crit_edge1676.us.i ]
  %.01237.lcssa.i = phi ptr [ %i.bho, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.bkn, %._crit_edge1676.us.i ]
  %.01235.lcssa.i = phi ptr [ %i.bhk, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.bkm, %._crit_edge1676.us.i ]
  %.01233.lcssa.i = phi ptr [ %i.bhg, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.bkl, %._crit_edge1676.us.i ]
  %.01231.lcssa.i = phi ptr [ %i.bhc, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.bkk, %._crit_edge1676.us.i ]
  %.01228.lcssa.i = phi ptr [ %i.bgy, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.bkj, %._crit_edge1676.us.i ]
  %.01226.lcssa.i = phi ptr [ %i.bgu, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.bki, %._crit_edge1676.us.i ]
  %.01222.lcssa.i = phi ptr [ %i.bgq, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.bkh, %._crit_edge1676.us.i ] ; 3 uses
  %i.bks = or disjoint i32 %.01284.lcssa.i, 7
  %i.bkt = icmp slt i32 %i.bks, %i.cn
  br i1 %i.bkt, label %.preheader1579.lr.ph.i, label %._crit_edge1722.i

.preheader1583.thread.i:                          ; preds = %.preheader1580.lr.ph.i
  %scevgep2205.i = getelementptr i8, ptr %i.bgm, i64 %i.apu
  %scevgep2208.i = getelementptr i8, ptr %scevgep2205.i, i64 %i.bgl ; 2 uses
  br i1 %i.aqe, label %.preheader1579.preheader.i, label %._crit_edge1722.i

.preheader1579.lr.ph.i:                           ; preds = %.preheader1583.i
  br i1 %i.apd, label %.preheader1579.us.i, label %.preheader1579.preheader.i

.preheader1579.preheader.i:                       ; preds = %.preheader1579.lr.ph.i, %.preheader1583.thread.i
  %.01284.lcssa24772499.i = phi i32 [ %.01284.lcssa.i, %.preheader1579.lr.ph.i ], [ %i.apy, %.preheader1583.thread.i ] ; 2 uses
  %.01242.lcssa24782498.i = phi ptr [ %.01242.lcssa.i, %.preheader1579.lr.ph.i ], [ %i.bic, %.preheader1583.thread.i ]
  %.01222.lcssa24862497.i = phi ptr [ %.01222.lcssa.i, %.preheader1579.lr.ph.i ], [ %scevgep2208.i, %.preheader1583.thread.i ]
  %i.bku = sub i32 %i.apz, %.01284.lcssa24772499.i ; 2 uses
  %i.bkv = lshr i32 %i.bku, 1
  %i.bkw = and i32 %i.bkv, 2147483644
  %narrow2432.i = add nuw i32 %i.bkw, 4
  %i.bkx = zext i32 %narrow2432.i to i64
  %i.bky = mul nsw i64 %i.bkx, %i.aph
  %scevgep2236.i = getelementptr i8, ptr %.01222.lcssa24862497.i, i64 %i.bky
  %i.bkz = add i32 %.01284.lcssa24772499.i, 8
  %i.bla = and i32 %i.bku, -8
  %i.blb = add i32 %i.bkz, %i.bla
  br label %._crit_edge1722.i

.preheader1579.us.i:                              ; preds = %.preheader1579.lr.ph.i, %._crit_edge1710.us.i
  %.112231721.us.i = phi ptr [ %i.bmy, %._crit_edge1710.us.i ], [ %.01222.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112271720.us.i = phi ptr [ %i.bmz, %._crit_edge1710.us.i ], [ %.01226.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112291719.us.i = phi ptr [ %i.bna, %._crit_edge1710.us.i ], [ %.01228.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112321718.us.i = phi ptr [ %i.bnb, %._crit_edge1710.us.i ], [ %.01231.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112341717.us.i = phi ptr [ %i.bnc, %._crit_edge1710.us.i ], [ %.01233.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112361716.us.i = phi ptr [ %i.bnd, %._crit_edge1710.us.i ], [ %.01235.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112381715.us.i = phi ptr [ %i.bne, %._crit_edge1710.us.i ], [ %.01237.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112411714.us.i = phi ptr [ %i.bnf, %._crit_edge1710.us.i ], [ %.01240.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.212441713.us.i = phi ptr [ %i.bmx, %._crit_edge1710.us.i ], [ %.01242.lcssa.i, %.preheader1579.lr.ph.i ]
  %.112851712.us.i = phi i32 [ %i.bng, %._crit_edge1710.us.i ], [ %.01284.lcssa.i, %.preheader1579.lr.ph.i ]
  br label %bb.le

bb.le:                                            ; preds = %bb.le, %.preheader1579.us.i
  %indvars.iv2237.i = phi i64 [ 0, %.preheader1579.us.i ], [ %indvars.iv.next2238.i, %bb.le ] ; 9 uses
  %.312451709.us.i = phi ptr [ %.212441713.us.i, %.preheader1579.us.i ], [ %i.bmx, %bb.le ] ; 9 uses
  %i.blc = getelementptr inbounds nuw [4 x i8], ptr %.112231721.us.i, i64 %indvars.iv2237.i
  %i.bld = getelementptr inbounds nuw [4 x i8], ptr %.112271720.us.i, i64 %indvars.iv2237.i
  %i.ble = getelementptr inbounds nuw [4 x i8], ptr %.112291719.us.i, i64 %indvars.iv2237.i
  %i.blf = getelementptr inbounds nuw [4 x i8], ptr %.112321718.us.i, i64 %indvars.iv2237.i
  %i.blg = getelementptr inbounds nuw [4 x i8], ptr %.112341717.us.i, i64 %indvars.iv2237.i
  %i.blh = getelementptr inbounds nuw [4 x i8], ptr %.112361716.us.i, i64 %indvars.iv2237.i
  %i.bli = getelementptr inbounds nuw [4 x i8], ptr %.112381715.us.i, i64 %indvars.iv2237.i
  %i.blj = getelementptr inbounds nuw [4 x i8], ptr %.112411714.us.i, i64 %indvars.iv2237.i
  %i.blk = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.blc, <8 x i32> %i.aoy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bll = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bld, <8 x i32> %i.aoy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.blm = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ble, <8 x i32> %i.aoy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bln = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.blf, <8 x i32> %i.aoy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.blo = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.blg, <8 x i32> %i.aoy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.blp = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.blh, <8 x i32> %i.aoy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.blq = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bli, <8 x i32> %i.aoy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.blr = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.blj, <8 x i32> %i.aoy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bls = shufflevector <8 x float> %i.blk, <8 x float> %i.bll, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.blt = shufflevector <8 x float> %i.blk, <8 x float> %i.bll, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.blu = shufflevector <8 x float> %i.blm, <8 x float> %i.bln, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.blv = shufflevector <8 x float> %i.blm, <8 x float> %i.bln, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.blw = shufflevector <8 x float> %i.blo, <8 x float> %i.blp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.blx = shufflevector <8 x float> %i.blo, <8 x float> %i.blp, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bly = shufflevector <8 x float> %i.blq, <8 x float> %i.blr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.blz = shufflevector <8 x float> %i.blq, <8 x float> %i.blr, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bma = shufflevector <8 x float> %i.bls, <8 x float> %i.blu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.bmb = shufflevector <8 x float> %i.bls, <8 x float> %i.blu, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.bmc = shufflevector <8 x float> %i.blt, <8 x float> %i.blv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.bmd = shufflevector <8 x float> %i.blt, <8 x float> %i.blv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.bme = shufflevector <8 x float> %i.blw, <8 x float> %i.bly, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.bmf = shufflevector <8 x float> %i.blw, <8 x float> %i.bly, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.bmg = shufflevector <8 x float> %i.blx, <8 x float> %i.blz, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.bmh = shufflevector <8 x float> %i.blx, <8 x float> %i.blz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.bmi = shufflevector <8 x float> %i.bma, <8 x float> %i.bme, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.bmj = shufflevector <8 x float> %i.bmb, <8 x float> %i.bmf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.bmk = shufflevector <8 x float> %i.bmc, <8 x float> %i.bmg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.bml = shufflevector <8 x float> %i.bmd, <8 x float> %i.bmh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.bmm = shufflevector <8 x float> %i.bma, <8 x float> %i.bme, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.bmn = shufflevector <8 x float> %i.bmb, <8 x float> %i.bmf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.bmo = shufflevector <8 x float> %i.bmc, <8 x float> %i.bmg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.bmp = shufflevector <8 x float> %i.bmd, <8 x float> %i.bmh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.bmi, ptr %.312451709.us.i, align 32, !tbaa !85
  %i.bmq = getelementptr inbounds nuw i8, ptr %.312451709.us.i, i64 32
  store <8 x float> %i.bmj, ptr %i.bmq, align 32, !tbaa !85
  %i.bmr = getelementptr inbounds nuw i8, ptr %.312451709.us.i, i64 64
  store <8 x float> %i.bmk, ptr %i.bmr, align 32, !tbaa !85
  %i.bms = getelementptr inbounds nuw i8, ptr %.312451709.us.i, i64 96
  store <8 x float> %i.bml, ptr %i.bms, align 32, !tbaa !85
  %i.bmt = getelementptr inbounds nuw i8, ptr %.312451709.us.i, i64 128
  store <8 x float> %i.bmm, ptr %i.bmt, align 32, !tbaa !85
  %i.bmu = getelementptr inbounds nuw i8, ptr %.312451709.us.i, i64 160
  store <8 x float> %i.bmn, ptr %i.bmu, align 32, !tbaa !85
  %i.bmv = getelementptr inbounds nuw i8, ptr %.312451709.us.i, i64 192
  store <8 x float> %i.bmo, ptr %i.bmv, align 32, !tbaa !85
  %i.bmw = getelementptr inbounds nuw i8, ptr %.312451709.us.i, i64 224
  store <8 x float> %i.bmp, ptr %i.bmw, align 32, !tbaa !85
  %i.bmx = getelementptr inbounds nuw i8, ptr %.312451709.us.i, i64 256 ; 3 uses
  %indvars.iv.next2238.i = add nuw nsw i64 %indvars.iv2237.i, 1 ; 2 uses
  %exitcond2241.not.i = icmp eq i64 %indvars.iv.next2238.i, %wide.trip.count2234.i
  br i1 %exitcond2241.not.i, label %._crit_edge1710.us.i, label %bb.le, !llvm.loop !139

._crit_edge1710.us.i:                             ; preds = %bb.le
  %i.bmy = getelementptr inbounds nuw [4 x i8], ptr %.112231721.us.i, i64 %i.aph ; 2 uses
  %i.bmz = getelementptr inbounds nuw [4 x i8], ptr %.112271720.us.i, i64 %i.aph
  %i.bna = getelementptr inbounds nuw [4 x i8], ptr %.112291719.us.i, i64 %i.aph
  %i.bnb = getelementptr inbounds nuw [4 x i8], ptr %.112321718.us.i, i64 %i.aph
  %i.bnc = getelementptr inbounds nuw [4 x i8], ptr %.112341717.us.i, i64 %i.aph
  %i.bnd = getelementptr inbounds nuw [4 x i8], ptr %.112361716.us.i, i64 %i.aph
  %i.bne = getelementptr inbounds nuw [4 x i8], ptr %.112381715.us.i, i64 %i.aph
  %i.bnf = getelementptr inbounds nuw [4 x i8], ptr %.112411714.us.i, i64 %i.aph
  %i.bng = add nuw nsw i32 %.112851712.us.i, 8    ; 3 uses
  %i.bnh = or disjoint i32 %i.bng, 7
  %i.bni = icmp slt i32 %i.bnh, %i.cn
  br i1 %i.bni, label %.preheader1579.us.i, label %._crit_edge1722.i, !llvm.loop !140

._crit_edge1722.i:                                ; preds = %._crit_edge1710.us.i, %.preheader1579.preheader.i, %.preheader1583.thread.i, %.preheader1583.i
  %.11285.lcssa.i = phi i32 [ %.01284.lcssa.i, %.preheader1583.i ], [ %i.apy, %.preheader1583.thread.i ], [ %i.blb, %.preheader1579.preheader.i ], [ %i.bng, %._crit_edge1710.us.i ] ; 3 uses
  %.21244.lcssa.i = phi ptr [ %.01242.lcssa.i, %.preheader1583.i ], [ %i.bic, %.preheader1583.thread.i ], [ %.01242.lcssa24782498.i, %.preheader1579.preheader.i ], [ %i.bmx, %._crit_edge1710.us.i ] ; 2 uses
  %.11223.lcssa.i = phi ptr [ %.01222.lcssa.i, %.preheader1583.i ], [ %scevgep2208.i, %.preheader1583.thread.i ], [ %scevgep2236.i, %.preheader1579.preheader.i ], [ %i.bmy, %._crit_edge1710.us.i ] ; 2 uses
  %i.bnj = or disjoint i32 %.11285.lcssa.i, 3
  %i.bnk = icmp slt i32 %i.bnj, %i.cn
  br i1 %i.bnk, label %.preheader1578.lr.ph.i, label %.preheader1582.i

.preheader1578.lr.ph.i:                           ; preds = %._crit_edge1722.i
  br i1 %i.apd, label %.preheader1578.us.i, label %._crit_edge1767.split.i

.preheader1578.us.i:                              ; preds = %.preheader1578.lr.ph.i, %._crit_edge1734.us.i
  %.212241738.us.i = phi ptr [ %i.bow, %._crit_edge1734.us.i ], [ %.11223.lcssa.i, %.preheader1578.lr.ph.i ] ; 4 uses
  %.412461737.us.i = phi ptr [ %.lcssa1043, %._crit_edge1734.us.i ], [ %.21244.lcssa.i, %.preheader1578.lr.ph.i ] ; 2 uses
  %.212861736.us.i = phi i32 [ %i.box, %._crit_edge1734.us.i ], [ %.11285.lcssa.i, %.preheader1578.lr.ph.i ]
  br i1 %i.aqg, label %.epil.preheader1079, label %.preheader1578.us.i.new

.preheader1578.us.i.new:                          ; preds = %.preheader1578.us.i, %.preheader1578.us.i.new
  %indvars.iv2244.i = phi i64 [ %indvars.iv.next2245.i.1, %.preheader1578.us.i.new ], [ 0, %.preheader1578.us.i ] ; 3 uses
  %.512471733.us.i = phi ptr [ %i.boj, %.preheader1578.us.i.new ], [ %.412461737.us.i, %.preheader1578.us.i ] ; 9 uses
  %niter1086 = phi i64 [ %niter1086.next.1, %.preheader1578.us.i.new ], [ 0, %.preheader1578.us.i ]
  %i.bnl = getelementptr inbounds nuw [4 x i8], ptr %.212241738.us.i, i64 %indvars.iv2244.i ; 2 uses
  %i.bnm = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bnl, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bnm, ptr %.512471733.us.i, align 32, !tbaa !85
  %i.bnn = getelementptr inbounds nuw [4 x i8], ptr %i.bnl, i64 %i.apk ; 2 uses
  %i.bno = getelementptr inbounds nuw i8, ptr %.512471733.us.i, i64 32
  %i.bnp = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bnn, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bnp, ptr %i.bno, align 32, !tbaa !85
  %i.bnq = getelementptr inbounds nuw [4 x i8], ptr %i.bnn, i64 %i.apk ; 2 uses
  %i.bnr = getelementptr inbounds nuw i8, ptr %.512471733.us.i, i64 64
  %i.bns = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bnq, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bns, ptr %i.bnr, align 32, !tbaa !85
  %i.bnt = getelementptr inbounds nuw [4 x i8], ptr %i.bnq, i64 %i.apk
  %i.bnu = getelementptr inbounds nuw i8, ptr %.512471733.us.i, i64 96
  %i.bnv = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bnt, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bnv, ptr %i.bnu, align 32, !tbaa !85
  %i.bnw = getelementptr inbounds nuw i8, ptr %.512471733.us.i, i64 128
  %i.bnx = getelementptr inbounds nuw [4 x i8], ptr %.212241738.us.i, i64 %indvars.iv2244.i
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnx, i64 4 ; 2 uses
  %i.bnz = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bny, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bnz, ptr %i.bnw, align 32, !tbaa !85
  %i.boa = getelementptr inbounds nuw [4 x i8], ptr %i.bny, i64 %i.apk ; 2 uses
  %i.bob = getelementptr inbounds nuw i8, ptr %.512471733.us.i, i64 160
  %i.boc = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.boa, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.boc, ptr %i.bob, align 32, !tbaa !85
  %i.bod = getelementptr inbounds nuw [4 x i8], ptr %i.boa, i64 %i.apk ; 2 uses
  %i.boe = getelementptr inbounds nuw i8, ptr %.512471733.us.i, i64 192
  %i.bof = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bod, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bof, ptr %i.boe, align 32, !tbaa !85
  %i.bog = getelementptr inbounds nuw [4 x i8], ptr %i.bod, i64 %i.apk
  %i.boh = getelementptr inbounds nuw i8, ptr %.512471733.us.i, i64 224
  %i.boi = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bog, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.boi, ptr %i.boh, align 32, !tbaa !85
  %i.boj = getelementptr inbounds nuw i8, ptr %.512471733.us.i, i64 256 ; 3 uses
  %indvars.iv.next2245.i.1 = add nuw nsw i64 %indvars.iv2244.i, 2 ; 2 uses
  %niter1086.next.1 = add i64 %niter1086, 2       ; 2 uses
  %niter1086.ncmp.1 = icmp eq i64 %niter1086.next.1, %unroll_iter1085
  br i1 %niter1086.ncmp.1, label %._crit_edge1734.us.i.unr-lcssa, label %.preheader1578.us.i.new, !llvm.loop !141

._crit_edge1734.us.i.unr-lcssa:                   ; preds = %.preheader1578.us.i.new
  br i1 %lcmp.mod1082.not, label %._crit_edge1734.us.i, label %.epil.preheader1079

.epil.preheader1079:                              ; preds = %._crit_edge1734.us.i.unr-lcssa, %.preheader1578.us.i
  %indvars.iv2244.i.epil.init = phi i64 [ 0, %.preheader1578.us.i ], [ %indvars.iv.next2245.i.1, %._crit_edge1734.us.i.unr-lcssa ]
  %.512471733.us.i.epil.init = phi ptr [ %.412461737.us.i, %.preheader1578.us.i ], [ %i.boj, %._crit_edge1734.us.i.unr-lcssa ] ; 5 uses
  call void @llvm.assume(i1 %lcmp.mod1084)
  %i.bok = getelementptr inbounds nuw [4 x i8], ptr %.212241738.us.i, i64 %indvars.iv2244.i.epil.init ; 2 uses
  %i.bol = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bok, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bol, ptr %.512471733.us.i.epil.init, align 32, !tbaa !85
  %i.bom = getelementptr inbounds nuw [4 x i8], ptr %i.bok, i64 %i.apk ; 2 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %.512471733.us.i.epil.init, i64 32
  %i.boo = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bom, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.boo, ptr %i.bon, align 32, !tbaa !85
  %i.bop = getelementptr inbounds nuw [4 x i8], ptr %i.bom, i64 %i.apk ; 2 uses
  %i.boq = getelementptr inbounds nuw i8, ptr %.512471733.us.i.epil.init, i64 64
  %i.bor = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bop, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bor, ptr %i.boq, align 32, !tbaa !85
  %i.bos = getelementptr inbounds nuw [4 x i8], ptr %i.bop, i64 %i.apk
  %i.bot = getelementptr inbounds nuw i8, ptr %.512471733.us.i.epil.init, i64 96
  %i.bou = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bos, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bou, ptr %i.bot, align 32, !tbaa !85
  %i.bov = getelementptr inbounds nuw i8, ptr %.512471733.us.i.epil.init, i64 128
  br label %._crit_edge1734.us.i

._crit_edge1734.us.i:                             ; preds = %._crit_edge1734.us.i.unr-lcssa, %.epil.preheader1079
  %.lcssa1043 = phi ptr [ %i.boj, %._crit_edge1734.us.i.unr-lcssa ], [ %i.bov, %.epil.preheader1079 ] ; 2 uses
  %i.bow = getelementptr inbounds nuw [4 x i8], ptr %.212241738.us.i, i64 %i.apm ; 2 uses
  %i.box = add nuw nsw i32 %.212861736.us.i, 4    ; 3 uses
  %i.boy = or disjoint i32 %i.box, 3
  %i.boz = icmp slt i32 %i.boy, %i.cn
  br i1 %i.boz, label %.preheader1578.us.i, label %.preheader1582.i, !llvm.loop !142

.preheader1582.i:                                 ; preds = %._crit_edge1734.us.i, %._crit_edge1722.i
  %.21286.lcssa.i = phi i32 [ %.11285.lcssa.i, %._crit_edge1722.i ], [ %i.box, %._crit_edge1734.us.i ] ; 3 uses
  %.41246.lcssa.i = phi ptr [ %.21244.lcssa.i, %._crit_edge1722.i ], [ %.lcssa1043, %._crit_edge1734.us.i ] ; 2 uses
  %.21224.lcssa.i = phi ptr [ %.11223.lcssa.i, %._crit_edge1722.i ], [ %i.bow, %._crit_edge1734.us.i ] ; 2 uses
  %i.bpa = or disjoint i32 %.21286.lcssa.i, 1
  %i.bpb = icmp slt i32 %i.bpa, %i.cn
  br i1 %i.bpb, label %.preheader1577.lr.ph.i, label %.preheader1581.i

.preheader1577.lr.ph.i:                           ; preds = %.preheader1582.i
  br i1 %i.apd, label %.preheader1577.us.i, label %._crit_edge1767.split.i

.preheader1577.us.i:                              ; preds = %.preheader1577.lr.ph.i, %._crit_edge1750.us.i
  %.312251754.us.i = phi ptr [ %i.bqj, %._crit_edge1750.us.i ], [ %.21224.lcssa.i, %.preheader1577.lr.ph.i ] ; 6 uses
  %.712491753.us.i = phi ptr [ %.lcssa1046, %._crit_edge1750.us.i ], [ %.41246.lcssa.i, %.preheader1577.lr.ph.i ] ; 2 uses
  %.312871752.us.i = phi i32 [ %i.bqk, %._crit_edge1750.us.i ], [ %.21286.lcssa.i, %.preheader1577.lr.ph.i ]
  br i1 %i.aqh, label %.epil.preheader1087, label %.preheader1577.us.i.new

.preheader1577.us.i.new:                          ; preds = %.preheader1577.us.i, %.preheader1577.us.i.new
  %indvars.iv2250.i = phi i64 [ %indvars.iv.next2251.i.3, %.preheader1577.us.i.new ], [ 0, %.preheader1577.us.i ] ; 5 uses
  %.812501749.us.i = phi ptr [ %i.bqc, %.preheader1577.us.i.new ], [ %.712491753.us.i, %.preheader1577.us.i ] ; 9 uses
  %niter1094 = phi i64 [ %niter1094.next.3, %.preheader1577.us.i.new ], [ 0, %.preheader1577.us.i ]
  %i.bpc = getelementptr inbounds nuw [4 x i8], ptr %.312251754.us.i, i64 %indvars.iv2250.i ; 2 uses
  %i.bpd = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bpc, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bpd, ptr %.812501749.us.i, align 32, !tbaa !85
  %i.bpe = getelementptr inbounds nuw [4 x i8], ptr %i.bpc, i64 %i.apk
  %i.bpf = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 32
  %i.bpg = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bpe, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bpg, ptr %i.bpf, align 32, !tbaa !85
  %i.bph = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 64
  %i.bpi = getelementptr inbounds nuw [4 x i8], ptr %.312251754.us.i, i64 %indvars.iv2250.i
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpi, i64 4 ; 2 uses
  %i.bpk = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bpj, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bpk, ptr %i.bph, align 32, !tbaa !85
  %i.bpl = getelementptr inbounds nuw [4 x i8], ptr %i.bpj, i64 %i.apk
  %i.bpm = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 96
  %i.bpn = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bpl, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bpn, ptr %i.bpm, align 32, !tbaa !85
  %i.bpo = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 128
  %i.bpp = getelementptr inbounds nuw [4 x i8], ptr %.312251754.us.i, i64 %indvars.iv2250.i
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpp, i64 8 ; 2 uses
  %i.bpr = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bpq, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bpr, ptr %i.bpo, align 32, !tbaa !85
  %i.bps = getelementptr inbounds nuw [4 x i8], ptr %i.bpq, i64 %i.apk
  %i.bpt = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 160
  %i.bpu = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bps, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bpu, ptr %i.bpt, align 32, !tbaa !85
  %i.bpv = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 192
  %i.bpw = getelementptr inbounds nuw [4 x i8], ptr %.312251754.us.i, i64 %indvars.iv2250.i
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bpw, i64 12 ; 2 uses
  %i.bpy = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bpx, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bpy, ptr %i.bpv, align 32, !tbaa !85
  %i.bpz = getelementptr inbounds nuw [4 x i8], ptr %i.bpx, i64 %i.apk
  %i.bqa = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 224
  %i.bqb = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bpz, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqb, ptr %i.bqa, align 32, !tbaa !85
  %i.bqc = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 256 ; 3 uses
  %indvars.iv.next2251.i.3 = add nuw nsw i64 %indvars.iv2250.i, 4 ; 2 uses
  %niter1094.next.3 = add i64 %niter1094, 4       ; 2 uses
  %niter1094.ncmp.3 = icmp eq i64 %niter1094.next.3, %unroll_iter1093
  br i1 %niter1094.ncmp.3, label %._crit_edge1750.us.i.unr-lcssa, label %.preheader1577.us.i.new, !llvm.loop !143

._crit_edge1750.us.i.unr-lcssa:                   ; preds = %.preheader1577.us.i.new
  br i1 %lcmp.mod1090.not, label %._crit_edge1750.us.i, label %.epil.preheader1087

.epil.preheader1087:                              ; preds = %._crit_edge1750.us.i.unr-lcssa, %.preheader1577.us.i
  %indvars.iv2250.i.epil.init = phi i64 [ 0, %.preheader1577.us.i ], [ %indvars.iv.next2251.i.3, %._crit_edge1750.us.i.unr-lcssa ]
  %.812501749.us.i.epil.init = phi ptr [ %.712491753.us.i, %.preheader1577.us.i ], [ %i.bqc, %._crit_edge1750.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1092)
  br label %bb.lf

bb.lf:                                            ; preds = %bb.lf, %.epil.preheader1087
  %indvars.iv2250.i.epil = phi i64 [ %indvars.iv2250.i.epil.init, %.epil.preheader1087 ], [ %indvars.iv.next2251.i.epil, %bb.lf ] ; 2 uses
  %.812501749.us.i.epil = phi ptr [ %.812501749.us.i.epil.init, %.epil.preheader1087 ], [ %i.bqi, %bb.lf ] ; 3 uses
  %epil.iter1089 = phi i64 [ 0, %.epil.preheader1087 ], [ %epil.iter1089.next, %bb.lf ]
  %i.bqd = getelementptr inbounds nuw [4 x i8], ptr %.312251754.us.i, i64 %indvars.iv2250.i.epil ; 2 uses
  %i.bqe = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bqd, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqe, ptr %.812501749.us.i.epil, align 32, !tbaa !85
  %i.bqf = getelementptr inbounds nuw [4 x i8], ptr %i.bqd, i64 %i.apk
  %i.bqg = getelementptr inbounds nuw i8, ptr %.812501749.us.i.epil, i64 32
  %i.bqh = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bqf, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqh, ptr %i.bqg, align 32, !tbaa !85
  %i.bqi = getelementptr inbounds nuw i8, ptr %.812501749.us.i.epil, i64 64 ; 2 uses
  %indvars.iv.next2251.i.epil = add nuw nsw i64 %indvars.iv2250.i.epil, 1
  %epil.iter1089.next = add i64 %epil.iter1089, 1 ; 2 uses
  %epil.iter1089.cmp.not = icmp eq i64 %epil.iter1089.next, %xtraiter1088
  br i1 %epil.iter1089.cmp.not, label %._crit_edge1750.us.i, label %bb.lf, !llvm.loop !144

._crit_edge1750.us.i:                             ; preds = %bb.lf, %._crit_edge1750.us.i.unr-lcssa
  %.lcssa1046 = phi ptr [ %i.bqc, %._crit_edge1750.us.i.unr-lcssa ], [ %i.bqi, %bb.lf ] ; 2 uses
  %i.bqj = getelementptr inbounds nuw [4 x i8], ptr %.312251754.us.i, i64 %i.apo ; 2 uses
  %i.bqk = add nuw nsw i32 %.312871752.us.i, 2    ; 3 uses
  %i.bql = or disjoint i32 %i.bqk, 1
  %i.bqm = icmp slt i32 %i.bql, %i.cn
  br i1 %i.bqm, label %.preheader1577.us.i, label %.preheader1581.i, !llvm.loop !145

.preheader1581.i:                                 ; preds = %._crit_edge1750.us.i, %.preheader1582.i
  %.31287.lcssa.i = phi i32 [ %.21286.lcssa.i, %.preheader1582.i ], [ %i.bqk, %._crit_edge1750.us.i ] ; 2 uses
  %.71249.lcssa.i = phi ptr [ %.41246.lcssa.i, %.preheader1582.i ], [ %.lcssa1046, %._crit_edge1750.us.i ]
  %.31225.lcssa.i = phi ptr [ %.21224.lcssa.i, %.preheader1582.i ], [ %i.bqj, %._crit_edge1750.us.i ] ; 9 uses
  %i.bqn = icmp sge i32 %.31287.lcssa.i, %i.cn
  %brmerge2000.i = or i1 %i.app, %i.bqn
  br i1 %brmerge2000.i, label %._crit_edge1767.split.i, label %.preheader1576.i

.preheader1576.i:                                 ; preds = %.preheader1581.i, %._crit_edge1763.i
  %.1012521766.i = phi ptr [ %.lcssa1049, %._crit_edge1763.i ], [ %.71249.lcssa.i, %.preheader1581.i ] ; 2 uses
  %.412881765.i = phi i32 [ %i.bqr, %._crit_edge1763.i ], [ %.31287.lcssa.i, %.preheader1581.i ]
  br i1 %i.aqi, label %.epil.preheader1095, label %.preheader1576.i.new

._crit_edge1763.i.unr-lcssa:                      ; preds = %.preheader1576.i.new
  br i1 %lcmp.mod1098.not, label %._crit_edge1763.i, label %.epil.preheader1095

.epil.preheader1095:                              ; preds = %._crit_edge1763.i.unr-lcssa, %.preheader1576.i
  %indvars.iv2255.i.epil.init = phi i64 [ 0, %.preheader1576.i ], [ %indvars.iv.next2256.i.7, %._crit_edge1763.i.unr-lcssa ]
  %.1112531762.i.epil.init = phi ptr [ %.1012521766.i, %.preheader1576.i ], [ %i.brw, %._crit_edge1763.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1100)
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lg, %.epil.preheader1095
  %indvars.iv2255.i.epil = phi i64 [ %indvars.iv2255.i.epil.init, %.epil.preheader1095 ], [ %indvars.iv.next2256.i.epil, %bb.lg ] ; 2 uses
  %.1112531762.i.epil = phi ptr [ %.1112531762.i.epil.init, %.epil.preheader1095 ], [ %i.bqq, %bb.lg ] ; 2 uses
  %epil.iter1097 = phi i64 [ 0, %.epil.preheader1095 ], [ %epil.iter1097.next, %bb.lg ]
  %i.bqo = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i.epil
  %i.bqp = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bqo, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqp, ptr %.1112531762.i.epil, align 32, !tbaa !85
  %i.bqq = getelementptr inbounds nuw i8, ptr %.1112531762.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2256.i.epil = add nuw nsw i64 %indvars.iv2255.i.epil, 1
  %epil.iter1097.next = add i64 %epil.iter1097, 1 ; 2 uses
  %epil.iter1097.cmp.not = icmp eq i64 %epil.iter1097.next, %xtraiter1096
  br i1 %epil.iter1097.cmp.not, label %._crit_edge1763.i, label %bb.lg, !llvm.loop !146

._crit_edge1763.i:                                ; preds = %bb.lg, %._crit_edge1763.i.unr-lcssa
  %.lcssa1049 = phi ptr [ %i.brw, %._crit_edge1763.i.unr-lcssa ], [ %i.bqq, %bb.lg ]
  %i.bqr = add nuw nsw i32 %.412881765.i, 1       ; 2 uses
  %exitcond2260.not.i = icmp eq i32 %i.bqr, %i.cn
  br i1 %exitcond2260.not.i, label %._crit_edge1767.split.i, label %.preheader1576.i, !llvm.loop !147

.preheader1576.i.new:                             ; preds = %.preheader1576.i, %.preheader1576.i.new
  %indvars.iv2255.i = phi i64 [ %indvars.iv.next2256.i.7, %.preheader1576.i.new ], [ 0, %.preheader1576.i ] ; 9 uses
  %.1112531762.i = phi ptr [ %i.brw, %.preheader1576.i.new ], [ %.1012521766.i, %.preheader1576.i ] ; 9 uses
  %niter1102 = phi i64 [ %niter1102.next.7, %.preheader1576.i.new ], [ 0, %.preheader1576.i ]
  %i.bqs = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.bqt = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bqs, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqt, ptr %.1112531762.i, align 32, !tbaa !85
  %i.bqu = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 32
  %i.bqv = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqv, i64 4
  %i.bqx = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bqw, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqx, ptr %i.bqu, align 32, !tbaa !85
  %i.bqy = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 64
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqz, i64 8
  %i.brb = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bra, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brb, ptr %i.bqy, align 32, !tbaa !85
  %i.brc = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 96
  %i.brd = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.bre = getelementptr inbounds nuw i8, ptr %i.brd, i64 12
  %i.brf = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bre, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brf, ptr %i.brc, align 32, !tbaa !85
  %i.brg = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 128
  %i.brh = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brh, i64 16
  %i.brj = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bri, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brj, ptr %i.brg, align 32, !tbaa !85
  %i.brk = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 160
  %i.brl = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.brm = getelementptr inbounds nuw i8, ptr %i.brl, i64 20
  %i.brn = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.brm, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brn, ptr %i.brk, align 32, !tbaa !85
  %i.bro = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 192
  %i.brp = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brp, i64 24
  %i.brr = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.brq, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brr, ptr %i.bro, align 32, !tbaa !85
  %i.brs = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 224
  %i.brt = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2255.i
  %i.bru = getelementptr inbounds nuw i8, ptr %i.brt, i64 28
  %i.brv = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bru, <8 x i32> %i.apj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brv, ptr %i.brs, align 32, !tbaa !85
  %i.brw = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 256 ; 3 uses
  %indvars.iv.next2256.i.7 = add nuw nsw i64 %indvars.iv2255.i, 8 ; 2 uses
  %niter1102.next.7 = add i64 %niter1102, 8       ; 2 uses
  %niter1102.ncmp.7 = icmp eq i64 %niter1102.next.7, %unroll_iter1101
  br i1 %niter1102.ncmp.7, label %._crit_edge1763.i.unr-lcssa, label %.preheader1576.i.new, !llvm.loop !148

._crit_edge1767.split.i:                          ; preds = %._crit_edge1763.i, %.preheader1581.i, %.preheader1577.lr.ph.i, %.preheader1578.lr.ph.i
  %indvars.iv.next2264.i = add nuw nsw i64 %indvars.iv2263.i, 8 ; 3 uses
  %i.brx = icmp slt i64 %indvars.iv.next2264.i, %invariant.op.i
  %indvars.iv.next2207.i = add i32 %indvars.iv2206.i, %i.apw
end_hunk_0
begin_hunk_1_@_ZN4ncnn22Convolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.bhu = bitcast <8 x float> %i.bgx to <8 x i32>
  %i.bhv = lshr <8 x i32> %i.bhu, splat (i32 16)  ; 2 uses
  %i.bhw = shufflevector <8 x i32> %i.bhv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bhx = shufflevector <8 x i32> %i.bhv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bhy = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bhw, <4 x i32> %i.bhx)
  store <8 x i16> %i.bhy, ptr %i.bht, align 1, !tbaa !85
  %i.bhz = getelementptr inbounds nuw i8, ptr %.312591714.us.i, i64 64
  %i.bia = bitcast <8 x float> %i.bgy to <8 x i32>
  %i.bib = lshr <8 x i32> %i.bia, splat (i32 16)  ; 2 uses
  %i.bic = shufflevector <8 x i32> %i.bib, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bid = shufflevector <8 x i32> %i.bib, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bie = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bic, <4 x i32> %i.bid)
  store <8 x i16> %i.bie, ptr %i.bhz, align 1, !tbaa !85
  %i.bif = getelementptr inbounds nuw i8, ptr %.312591714.us.i, i64 80
  %i.big = bitcast <8 x float> %i.bgz to <8 x i32>
  %i.bih = lshr <8 x i32> %i.big, splat (i32 16)  ; 2 uses
  %i.bii = shufflevector <8 x i32> %i.bih, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bij = shufflevector <8 x i32> %i.bih, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bik = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bii, <4 x i32> %i.bij)
  store <8 x i16> %i.bik, ptr %i.bif, align 1, !tbaa !85
  %i.bil = getelementptr inbounds nuw i8, ptr %.312591714.us.i, i64 96
  %i.bim = bitcast <8 x float> %i.bha to <8 x i32>
  %i.bin = lshr <8 x i32> %i.bim, splat (i32 16)  ; 2 uses
  %i.bio = shufflevector <8 x i32> %i.bin, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bip = shufflevector <8 x i32> %i.bin, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.biq = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bio, <4 x i32> %i.bip)
  store <8 x i16> %i.biq, ptr %i.bil, align 1, !tbaa !85
  %i.bir = getelementptr inbounds nuw i8, ptr %.312591714.us.i, i64 112
  %i.bis = bitcast <8 x float> %i.bhb to <8 x i32>
  %i.bit = lshr <8 x i32> %i.bis, splat (i32 16)  ; 2 uses
  %i.biu = shufflevector <8 x i32> %i.bit, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.biv = shufflevector <8 x i32> %i.bit, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.biw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.biu, <4 x i32> %i.biv)
  store <8 x i16> %i.biw, ptr %i.bir, align 1, !tbaa !85
  %i.bix = getelementptr inbounds nuw i8, ptr %.312591714.us.i, i64 128 ; 3 uses
  %indvars.iv.next2244.i = add nuw nsw i64 %indvars.iv2243.i, 1 ; 2 uses
  %exitcond2247.not.i = icmp eq i64 %indvars.iv.next2244.i, %wide.trip.count2240.i
  br i1 %exitcond2247.not.i, label %._crit_edge1716.us.i, label %bb.fm, !llvm.loop !566

._crit_edge1716.us.i:                             ; preds = %bb.fm
  %i.biy = getelementptr inbounds nuw [4 x i8], ptr %.112381727.us.i, i64 %i.aac ; 2 uses
  %i.biz = getelementptr inbounds nuw [4 x i8], ptr %.112421726.us.i, i64 %i.aac
  %i.bja = getelementptr inbounds nuw [4 x i8], ptr %.112441725.us.i, i64 %i.aac
  %i.bjb = getelementptr inbounds nuw [4 x i8], ptr %.112461724.us.i, i64 %i.aac
  %i.bjc = getelementptr inbounds nuw [4 x i8], ptr %.112481723.us.i, i64 %i.aac
  %i.bjd = getelementptr inbounds nuw [4 x i8], ptr %.112511722.us.i, i64 %i.aac
  %i.bje = getelementptr inbounds nuw [4 x i8], ptr %.112531721.us.i, i64 %i.aac
  %i.bjf = getelementptr inbounds nuw [4 x i8], ptr %.112551720.us.i, i64 %i.aac
  %i.bjg = add nuw nsw i32 %.112691718.us.i, 8    ; 3 uses
  %i.bjh = or disjoint i32 %i.bjg, 7
  %i.bji = icmp slt i32 %i.bjh, %i.t
  br i1 %i.bji, label %.preheader1585.us.i, label %._crit_edge1728.i, !llvm.loop !567

._crit_edge1728.i:                                ; preds = %._crit_edge1716.us.i, %.preheader1585.preheader.i, %.preheader1589.thread.i, %.preheader1589.i
  %.11269.lcssa.i = phi i32 [ %.01268.lcssa.i, %.preheader1589.i ], [ %i.aat, %.preheader1589.thread.i ], [ %i.bfn, %.preheader1585.preheader.i ], [ %i.bjg, %._crit_edge1716.us.i ] ; 3 uses
  %.21258.lcssa.i = phi ptr [ %.01256.lcssa.i, %.preheader1589.i ], [ %i.bak, %.preheader1589.thread.i ], [ %.01256.lcssa24842504.i, %.preheader1585.preheader.i ], [ %i.bix, %._crit_edge1716.us.i ] ; 2 uses
  %.11238.lcssa.i = phi ptr [ %.01237.lcssa.i, %.preheader1589.i ], [ %scevgep2214.i, %.preheader1589.thread.i ], [ %scevgep2242.i, %.preheader1585.preheader.i ], [ %i.biy, %._crit_edge1716.us.i ] ; 2 uses
  %i.bjj = or disjoint i32 %.11269.lcssa.i, 3
  %i.bjk = icmp slt i32 %i.bjj, %i.t
  br i1 %i.bjk, label %.preheader1584.lr.ph.i, label %.preheader1588.i

.preheader1584.lr.ph.i:                           ; preds = %._crit_edge1728.i
  br i1 %i.zy, label %.preheader1584.us.i, label %._crit_edge1773.split.i

.preheader1584.us.i:                              ; preds = %.preheader1584.lr.ph.i, %._crit_edge1740.us.i
  %.212391744.us.i = phi ptr [ %i.bkr, %._crit_edge1740.us.i ], [ %.11238.lcssa.i, %.preheader1584.lr.ph.i ] ; 2 uses
  %.412601743.us.i = phi ptr [ %i.bkq, %._crit_edge1740.us.i ], [ %.21258.lcssa.i, %.preheader1584.lr.ph.i ]
  %.212701742.us.i = phi i32 [ %i.bks, %._crit_edge1740.us.i ], [ %.11269.lcssa.i, %.preheader1584.lr.ph.i ]
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fn, %.preheader1584.us.i
  %indvars.iv2250.i = phi i64 [ 0, %.preheader1584.us.i ], [ %indvars.iv.next2251.i, %bb.fn ] ; 2 uses
  %.512611738.us.i = phi ptr [ %.412601743.us.i, %.preheader1584.us.i ], [ %i.bkq, %bb.fn ] ; 5 uses
  %i.bjl = getelementptr inbounds nuw [4 x i8], ptr %.212391744.us.i, i64 %indvars.iv2250.i ; 2 uses
  %i.bjm = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bjl, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bjn = bitcast <8 x float> %i.bjm to <8 x i32>
  %i.bjo = lshr <8 x i32> %i.bjn, splat (i32 16)  ; 2 uses
  %i.bjp = shufflevector <8 x i32> %i.bjo, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bjq = shufflevector <8 x i32> %i.bjo, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bjr = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bjp, <4 x i32> %i.bjq)
  store <8 x i16> %i.bjr, ptr %.512611738.us.i, align 1, !tbaa !85
  %i.bjs = getelementptr inbounds nuw [4 x i8], ptr %i.bjl, i64 %i.aaf ; 2 uses
  %i.bjt = getelementptr inbounds nuw i8, ptr %.512611738.us.i, i64 16
  %i.bju = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bjs, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bjv = bitcast <8 x float> %i.bju to <8 x i32>
  %i.bjw = lshr <8 x i32> %i.bjv, splat (i32 16)  ; 2 uses
  %i.bjx = shufflevector <8 x i32> %i.bjw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bjy = shufflevector <8 x i32> %i.bjw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bjz = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bjx, <4 x i32> %i.bjy)
  store <8 x i16> %i.bjz, ptr %i.bjt, align 1, !tbaa !85
  %i.bka = getelementptr inbounds nuw [4 x i8], ptr %i.bjs, i64 %i.aaf ; 2 uses
  %i.bkb = getelementptr inbounds nuw i8, ptr %.512611738.us.i, i64 32
  %i.bkc = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bka, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bkd = bitcast <8 x float> %i.bkc to <8 x i32>
  %i.bke = lshr <8 x i32> %i.bkd, splat (i32 16)  ; 2 uses
  %i.bkf = shufflevector <8 x i32> %i.bke, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bkg = shufflevector <8 x i32> %i.bke, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bkh = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bkf, <4 x i32> %i.bkg)
  store <8 x i16> %i.bkh, ptr %i.bkb, align 1, !tbaa !85
  %i.bki = getelementptr inbounds nuw [4 x i8], ptr %i.bka, i64 %i.aaf
  %i.bkj = getelementptr inbounds nuw i8, ptr %.512611738.us.i, i64 48
  %i.bkk = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bki, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bkl = bitcast <8 x float> %i.bkk to <8 x i32>
  %i.bkm = lshr <8 x i32> %i.bkl, splat (i32 16)  ; 2 uses
  %i.bkn = shufflevector <8 x i32> %i.bkm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bko = shufflevector <8 x i32> %i.bkm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bkp = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bkn, <4 x i32> %i.bko)
  store <8 x i16> %i.bkp, ptr %i.bkj, align 1, !tbaa !85
  %i.bkq = getelementptr inbounds nuw i8, ptr %.512611738.us.i, i64 64 ; 3 uses
  %indvars.iv.next2251.i = add nuw nsw i64 %indvars.iv2250.i, 1 ; 2 uses
  %exitcond2254.not.i = icmp eq i64 %indvars.iv.next2251.i, %wide.trip.count2240.i
  br i1 %exitcond2254.not.i, label %._crit_edge1740.us.i, label %bb.fn, !llvm.loop !568

._crit_edge1740.us.i:                             ; preds = %bb.fn
  %i.bkr = getelementptr inbounds nuw [4 x i8], ptr %.212391744.us.i, i64 %i.aah ; 2 uses
  %i.bks = add nuw nsw i32 %.212701742.us.i, 4    ; 3 uses
  %i.bkt = or disjoint i32 %i.bks, 3
  %i.bku = icmp slt i32 %i.bkt, %i.t
  br i1 %i.bku, label %.preheader1584.us.i, label %.preheader1588.i, !llvm.loop !569

.preheader1588.i:                                 ; preds = %._crit_edge1740.us.i, %._crit_edge1728.i
  %.21270.lcssa.i = phi i32 [ %.11269.lcssa.i, %._crit_edge1728.i ], [ %i.bks, %._crit_edge1740.us.i ] ; 3 uses
  %.41260.lcssa.i = phi ptr [ %.21258.lcssa.i, %._crit_edge1728.i ], [ %i.bkq, %._crit_edge1740.us.i ] ; 2 uses
  %.21239.lcssa.i = phi ptr [ %.11238.lcssa.i, %._crit_edge1728.i ], [ %i.bkr, %._crit_edge1740.us.i ] ; 2 uses
  %i.bkv = or disjoint i32 %.21270.lcssa.i, 1
  %i.bkw = icmp slt i32 %i.bkv, %i.t
  br i1 %i.bkw, label %.preheader1583.lr.ph.i, label %.preheader1587.i

.preheader1583.lr.ph.i:                           ; preds = %.preheader1588.i
  br i1 %i.zy, label %.preheader1583.us.i, label %._crit_edge1773.split.i

.preheader1583.us.i:                              ; preds = %.preheader1583.lr.ph.i, %._crit_edge1756.us.i
  %.312401760.us.i = phi ptr [ %i.bmu, %._crit_edge1756.us.i ], [ %.21239.lcssa.i, %.preheader1583.lr.ph.i ] ; 4 uses
  %.712631759.us.i = phi ptr [ %.lcssa748, %._crit_edge1756.us.i ], [ %.41260.lcssa.i, %.preheader1583.lr.ph.i ] ; 2 uses
  %.312711758.us.i = phi i32 [ %i.bmv, %._crit_edge1756.us.i ], [ %.21270.lcssa.i, %.preheader1583.lr.ph.i ]
  br i1 %i.abb, label %.epil.preheader773, label %.preheader1583.us.i.new

.preheader1583.us.i.new:                          ; preds = %.preheader1583.us.i, %.preheader1583.us.i.new
  %indvars.iv2256.i = phi i64 [ %indvars.iv.next2257.i.1, %.preheader1583.us.i.new ], [ 0, %.preheader1583.us.i ] ; 3 uses
  %.812641754.us.i = phi ptr [ %i.bmd, %.preheader1583.us.i.new ], [ %.712631759.us.i, %.preheader1583.us.i ] ; 5 uses
  %niter779 = phi i64 [ %niter779.next.1, %.preheader1583.us.i.new ], [ 0, %.preheader1583.us.i ]
  %i.bkx = getelementptr inbounds nuw [4 x i8], ptr %.312401760.us.i, i64 %indvars.iv2256.i ; 2 uses
  %i.bky = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bkx, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bkz = bitcast <8 x float> %i.bky to <8 x i32>
  %i.bla = lshr <8 x i32> %i.bkz, splat (i32 16)  ; 2 uses
  %i.blb = shufflevector <8 x i32> %i.bla, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.blc = shufflevector <8 x i32> %i.bla, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bld = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.blb, <4 x i32> %i.blc)
  store <8 x i16> %i.bld, ptr %.812641754.us.i, align 1, !tbaa !85
  %i.ble = getelementptr inbounds nuw [4 x i8], ptr %i.bkx, i64 %i.aaf
  %i.blf = getelementptr inbounds nuw i8, ptr %.812641754.us.i, i64 16
  %i.blg = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ble, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blh = bitcast <8 x float> %i.blg to <8 x i32>
  %i.bli = lshr <8 x i32> %i.blh, splat (i32 16)  ; 2 uses
  %i.blj = shufflevector <8 x i32> %i.bli, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.blk = shufflevector <8 x i32> %i.bli, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bll = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.blj, <4 x i32> %i.blk)
  store <8 x i16> %i.bll, ptr %i.blf, align 1, !tbaa !85
  %i.blm = getelementptr inbounds nuw i8, ptr %.812641754.us.i, i64 32
  %i.bln = getelementptr inbounds nuw [4 x i8], ptr %.312401760.us.i, i64 %indvars.iv2256.i
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bln, i64 4 ; 2 uses
  %i.blp = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.blo, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blq = bitcast <8 x float> %i.blp to <8 x i32>
  %i.blr = lshr <8 x i32> %i.blq, splat (i32 16)  ; 2 uses
  %i.bls = shufflevector <8 x i32> %i.blr, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.blt = shufflevector <8 x i32> %i.blr, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.blu = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bls, <4 x i32> %i.blt)
  store <8 x i16> %i.blu, ptr %i.blm, align 1, !tbaa !85
  %i.blv = getelementptr inbounds nuw [4 x i8], ptr %i.blo, i64 %i.aaf
  %i.blw = getelementptr inbounds nuw i8, ptr %.812641754.us.i, i64 48
  %i.blx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.blv, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bly = bitcast <8 x float> %i.blx to <8 x i32>
  %i.blz = lshr <8 x i32> %i.bly, splat (i32 16)  ; 2 uses
  %i.bma = shufflevector <8 x i32> %i.blz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bmb = shufflevector <8 x i32> %i.blz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bmc = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bma, <4 x i32> %i.bmb)
  store <8 x i16> %i.bmc, ptr %i.blw, align 1, !tbaa !85
  %i.bmd = getelementptr inbounds nuw i8, ptr %.812641754.us.i, i64 64 ; 3 uses
  %indvars.iv.next2257.i.1 = add nuw nsw i64 %indvars.iv2256.i, 2 ; 2 uses
  %niter779.next.1 = add i64 %niter779, 2         ; 2 uses
  %niter779.ncmp.1 = icmp eq i64 %niter779.next.1, %unroll_iter778
  br i1 %niter779.ncmp.1, label %._crit_edge1756.us.i.unr-lcssa, label %.preheader1583.us.i.new, !llvm.loop !570

._crit_edge1756.us.i.unr-lcssa:                   ; preds = %.preheader1583.us.i.new
  br i1 %lcmp.mod775.not, label %._crit_edge1756.us.i, label %.epil.preheader773

.epil.preheader773:                               ; preds = %._crit_edge1756.us.i.unr-lcssa, %.preheader1583.us.i
  %indvars.iv2256.i.epil.init = phi i64 [ 0, %.preheader1583.us.i ], [ %indvars.iv.next2257.i.1, %._crit_edge1756.us.i.unr-lcssa ]
  %.812641754.us.i.epil.init = phi ptr [ %.712631759.us.i, %.preheader1583.us.i ], [ %i.bmd, %._crit_edge1756.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod777)
  %i.bme = getelementptr inbounds nuw [4 x i8], ptr %.312401760.us.i, i64 %indvars.iv2256.i.epil.init ; 2 uses
  %i.bmf = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bme, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bmg = bitcast <8 x float> %i.bmf to <8 x i32>
  %i.bmh = lshr <8 x i32> %i.bmg, splat (i32 16)  ; 2 uses
  %i.bmi = shufflevector <8 x i32> %i.bmh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bmj = shufflevector <8 x i32> %i.bmh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bmk = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bmi, <4 x i32> %i.bmj)
  store <8 x i16> %i.bmk, ptr %.812641754.us.i.epil.init, align 1, !tbaa !85
  %i.bml = getelementptr inbounds nuw [4 x i8], ptr %i.bme, i64 %i.aaf
  %i.bmm = getelementptr inbounds nuw i8, ptr %.812641754.us.i.epil.init, i64 16
  %i.bmn = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bml, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bmo = bitcast <8 x float> %i.bmn to <8 x i32>
  %i.bmp = lshr <8 x i32> %i.bmo, splat (i32 16)  ; 2 uses
  %i.bmq = shufflevector <8 x i32> %i.bmp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bmr = shufflevector <8 x i32> %i.bmp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bms = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bmq, <4 x i32> %i.bmr)
  store <8 x i16> %i.bms, ptr %i.bmm, align 1, !tbaa !85
  %i.bmt = getelementptr inbounds nuw i8, ptr %.812641754.us.i.epil.init, i64 32
  br label %._crit_edge1756.us.i

._crit_edge1756.us.i:                             ; preds = %._crit_edge1756.us.i.unr-lcssa, %.epil.preheader773
  %.lcssa748 = phi ptr [ %i.bmd, %._crit_edge1756.us.i.unr-lcssa ], [ %i.bmt, %.epil.preheader773 ] ; 2 uses
  %i.bmu = getelementptr inbounds nuw [4 x i8], ptr %.312401760.us.i, i64 %i.aaj ; 2 uses
  %i.bmv = add nuw nsw i32 %.312711758.us.i, 2    ; 3 uses
  %i.bmw = or disjoint i32 %i.bmv, 1
  %i.bmx = icmp slt i32 %i.bmw, %i.t
  br i1 %i.bmx, label %.preheader1583.us.i, label %.preheader1587.i, !llvm.loop !571

.preheader1587.i:                                 ; preds = %._crit_edge1756.us.i, %.preheader1588.i
  %.31271.lcssa.i = phi i32 [ %.21270.lcssa.i, %.preheader1588.i ], [ %i.bmv, %._crit_edge1756.us.i ] ; 2 uses
  %.71263.lcssa.i = phi ptr [ %.41260.lcssa.i, %.preheader1588.i ], [ %.lcssa748, %._crit_edge1756.us.i ]
  %.31240.lcssa.i = phi ptr [ %.21239.lcssa.i, %.preheader1588.i ], [ %i.bmu, %._crit_edge1756.us.i ] ; 5 uses
  %i.bmy = icmp sge i32 %.31271.lcssa.i, %i.t
  %brmerge2006.i = or i1 %i.aak, %i.bmy
  br i1 %brmerge2006.i, label %._crit_edge1773.split.i, label %.preheader1582.i

.preheader1582.i:                                 ; preds = %.preheader1587.i, %._crit_edge1769.i
  %.1012661772.i = phi ptr [ %.lcssa751, %._crit_edge1769.i ], [ %.71263.lcssa.i, %.preheader1587.i ] ; 2 uses
  %.412721771.i = phi i32 [ %i.bnh, %._crit_edge1769.i ], [ %.31271.lcssa.i, %.preheader1587.i ]
  br i1 %i.abc, label %.epil.preheader780, label %.preheader1582.i.new

._crit_edge1769.i.unr-lcssa:                      ; preds = %.preheader1582.i.new
  br i1 %lcmp.mod782.not, label %._crit_edge1769.i, label %.epil.preheader780

.epil.preheader780:                               ; preds = %._crit_edge1769.i.unr-lcssa, %.preheader1582.i
  %indvars.iv2261.i.epil.init = phi i64 [ 0, %.preheader1582.i ], [ %indvars.iv.next2262.i.3, %._crit_edge1769.i.unr-lcssa ]
  %.1112671767.i.epil.init = phi ptr [ %.1012661772.i, %.preheader1582.i ], [ %i.boq, %._crit_edge1769.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod784)
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fo, %.epil.preheader780
  %indvars.iv2261.i.epil = phi i64 [ %indvars.iv2261.i.epil.init, %.epil.preheader780 ], [ %indvars.iv.next2262.i.epil, %bb.fo ] ; 2 uses
  %.1112671767.i.epil = phi ptr [ %.1112671767.i.epil.init, %.epil.preheader780 ], [ %i.bng, %bb.fo ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader780 ], [ %epil.iter.next, %bb.fo ]
  %i.bmz = getelementptr inbounds nuw [4 x i8], ptr %.31240.lcssa.i, i64 %indvars.iv2261.i.epil
  %i.bna = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bmz, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bnb = bitcast <8 x float> %i.bna to <8 x i32>
  %i.bnc = lshr <8 x i32> %i.bnb, splat (i32 16)  ; 2 uses
  %i.bnd = shufflevector <8 x i32> %i.bnc, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bne = shufflevector <8 x i32> %i.bnc, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bnf = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bnd, <4 x i32> %i.bne)
  store <8 x i16> %i.bnf, ptr %.1112671767.i.epil, align 1, !tbaa !85
  %i.bng = getelementptr inbounds nuw i8, ptr %.1112671767.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2262.i.epil = add nuw nsw i64 %indvars.iv2261.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter781
  br i1 %epil.iter.cmp.not, label %._crit_edge1769.i, label %bb.fo, !llvm.loop !572

._crit_edge1769.i:                                ; preds = %bb.fo, %._crit_edge1769.i.unr-lcssa
  %.lcssa751 = phi ptr [ %i.boq, %._crit_edge1769.i.unr-lcssa ], [ %i.bng, %bb.fo ]
  %i.bnh = add nuw nsw i32 %.412721771.i, 1       ; 2 uses
  %exitcond2266.not.i = icmp eq i32 %i.bnh, %i.t
  br i1 %exitcond2266.not.i, label %._crit_edge1773.split.i, label %.preheader1582.i, !llvm.loop !573

.preheader1582.i.new:                             ; preds = %.preheader1582.i, %.preheader1582.i.new
  %indvars.iv2261.i = phi i64 [ %indvars.iv.next2262.i.3, %.preheader1582.i.new ], [ 0, %.preheader1582.i ] ; 5 uses
  %.1112671767.i = phi ptr [ %i.boq, %.preheader1582.i.new ], [ %.1012661772.i, %.preheader1582.i ] ; 5 uses
  %niter786 = phi i64 [ %niter786.next.3, %.preheader1582.i.new ], [ 0, %.preheader1582.i ]
  %i.bni = getelementptr inbounds nuw [4 x i8], ptr %.31240.lcssa.i, i64 %indvars.iv2261.i
  %i.bnj = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bni, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bnk = bitcast <8 x float> %i.bnj to <8 x i32>
  %i.bnl = lshr <8 x i32> %i.bnk, splat (i32 16)  ; 2 uses
  %i.bnm = shufflevector <8 x i32> %i.bnl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bnn = shufflevector <8 x i32> %i.bnl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bno = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bnm, <4 x i32> %i.bnn)
  store <8 x i16> %i.bno, ptr %.1112671767.i, align 1, !tbaa !85
  %i.bnp = getelementptr inbounds nuw i8, ptr %.1112671767.i, i64 16
  %i.bnq = getelementptr inbounds nuw [4 x i8], ptr %.31240.lcssa.i, i64 %indvars.iv2261.i
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnq, i64 4
  %i.bns = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bnr, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bnt = bitcast <8 x float> %i.bns to <8 x i32>
  %i.bnu = lshr <8 x i32> %i.bnt, splat (i32 16)  ; 2 uses
  %i.bnv = shufflevector <8 x i32> %i.bnu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bnw = shufflevector <8 x i32> %i.bnu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bnx = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bnv, <4 x i32> %i.bnw)
  store <8 x i16> %i.bnx, ptr %i.bnp, align 1, !tbaa !85
  %i.bny = getelementptr inbounds nuw i8, ptr %.1112671767.i, i64 32
  %i.bnz = getelementptr inbounds nuw [4 x i8], ptr %.31240.lcssa.i, i64 %indvars.iv2261.i
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnz, i64 8
  %i.bob = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.boa, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.boc = bitcast <8 x float> %i.bob to <8 x i32>
  %i.bod = lshr <8 x i32> %i.boc, splat (i32 16)  ; 2 uses
  %i.boe = shufflevector <8 x i32> %i.bod, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bof = shufflevector <8 x i32> %i.bod, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bog = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.boe, <4 x i32> %i.bof)
  store <8 x i16> %i.bog, ptr %i.bny, align 1, !tbaa !85
  %i.boh = getelementptr inbounds nuw i8, ptr %.1112671767.i, i64 48
  %i.boi = getelementptr inbounds nuw [4 x i8], ptr %.31240.lcssa.i, i64 %indvars.iv2261.i
  %i.boj = getelementptr inbounds nuw i8, ptr %i.boi, i64 12
  %i.bok = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.boj, <8 x i32> %i.aae, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bol = bitcast <8 x float> %i.bok to <8 x i32>
  %i.bom = lshr <8 x i32> %i.bol, splat (i32 16)  ; 2 uses
  %i.bon = shufflevector <8 x i32> %i.bom, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.boo = shufflevector <8 x i32> %i.bom, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bop = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bon, <4 x i32> %i.boo)
  store <8 x i16> %i.bop, ptr %i.boh, align 1, !tbaa !85
  %i.boq = getelementptr inbounds nuw i8, ptr %.1112671767.i, i64 64 ; 3 uses
  %indvars.iv.next2262.i.3 = add nuw nsw i64 %indvars.iv2261.i, 4 ; 2 uses
  %niter786.next.3 = add i64 %niter786, 4         ; 2 uses
  %niter786.ncmp.3 = icmp eq i64 %niter786.next.3, %unroll_iter785
  br i1 %niter786.ncmp.3, label %._crit_edge1769.i.unr-lcssa, label %.preheader1582.i.new, !llvm.loop !574

._crit_edge1773.split.i:                          ; preds = %._crit_edge1769.i, %.preheader1587.i, %.preheader1583.lr.ph.i, %.preheader1584.lr.ph.i
  %indvars.iv.next2270.i = add nuw nsw i64 %indvars.iv2269.i, 8 ; 3 uses
  %i.bor = icmp slt i64 %indvars.iv.next2270.i, %invariant.op.i
  %indvars.iv.next2213.i = add i32 %indvars.iv2212.i, %i.aar
  %indvars.iv.next2268.i = add i32 %indvars.iv2267.i, 8
  br i1 %i.bor, label %_ZN4ncnn3MatD2Ev.exit1305.i, label %.preheader1581.loopexit.i, !llvm.loop !575

.preheader1572.loopexit.i:                        ; preds = %._crit_edge1859.split.i
  %i.bos = trunc nuw nsw i64 %indvars.iv.next2320.i to i32
  br label %.preheader1572.i

.preheader1572.i:                                 ; preds = %.preheader1572.loopexit.i, %.preheader1581.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1581.i ], [ %i.bos, %.preheader1572.loopexit.i ] ; 4 uses
  %i.bot = or disjoint i32 %.2.lcssa.i, 1         ; 3 uses
  %i.bou = icmp slt i32 %i.bot, %i.ek
  br i1 %i.bou, label %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i, label %.preheader1562.i

_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i:                ; preds = %.preheader1572.i
  %i.bov = mul i32 %i.ps, %i.t                    ; 5 uses
  %i.bow = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.box = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.boy = insertelement <4 x i32> poison, i32 %i.ps, i64 0
  %i.boz = shufflevector <4 x i32> %i.boy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bpa = mul <4 x i32> %i.boz, <i32 0, i32 1, i32 2, i32 3> ; 6 uses
  %i.bpb = insertelement <8 x i32> poison, i32 %i.ps, i64 0
  %i.bpc = shufflevector <8 x i32> %i.bpb, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bpd = mul <8 x i32> %i.bpc, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 6 uses
  %i.bpe = insertelement <16 x i32> poison, i32 %i.ps, i64 0
  %i.bpf = shufflevector <16 x i32> %i.bpe, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bpg = mul <16 x i32> %i.bpf, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 6 uses
  %i.bph = icmp sgt i32 %i.t, 15
  %i.bpi = icmp sgt i32 %i.ps, 0                  ; 4 uses
  %i.bpj = shl i32 %i.ps, 4
  %i.bpk = sext i32 %i.bpj to i64                 ; 3 uses
  %i.bpl = shl i32 %i.ps, 3
  %i.bpm = sext i32 %i.bpl to i64                 ; 3 uses
  %i.bpn = shl i32 %i.ps, 2
  %i.bpo = sext i32 %i.bpn to i64                 ; 2 uses
  %i.bpp = sext i32 %i.ps to i64                  ; 6 uses
  %i.bpq = shl i32 %i.ps, 1
  %i.bpr = sext i32 %i.bpq to i64                 ; 2 uses
  %i.bps = icmp slt i32 %i.ps, 1
  %i.bpt = add i32 %i.t, -16                      ; 2 uses
  %i.bpu = lshr i32 %i.bpt, 2
  %i.bpv = and i32 %i.bpu, 1073741820
  %narrow2441.i = add nuw nsw i32 %i.bpv, 4
  %i.bpw = zext nneg i32 %narrow2441.i to i64
  %i.bpx = mul nsw i64 %i.bpk, %i.bpw
  %i.bpy = mul i32 %i.bov, %.2.lcssa.i
  %i.bpz = shl i32 %i.bov, 1                      ; 2 uses
  %i.bqa = mul i32 %i.bot, %i.bov
  %i.bqb = and i32 %i.bpt, -16
  %i.bqc = add nuw i32 %i.bqb, 16                 ; 4 uses
  %i.bqd = add i32 %i.t, -8
  %i.bqe = sext i32 %.2.lcssa.i to i64
  %i.bqf = sext i32 %i.ek to i64
  %i.bqg = or disjoint i32 %i.bqc, 7
  %i.bqh = icmp slt i32 %i.bqg, %i.t
  %wide.trip.count2332.i = zext i32 %i.ps to i64  ; 19 uses
  %i.bqi = add nsw i64 %wide.trip.count2332.i, -1 ; 3 uses
  %xtraiter804 = and i64 %wide.trip.count2332.i, 1
  %i.bqj = icmp eq i64 %i.bqi, 0
  %unroll_iter809 = and i64 %wide.trip.count2332.i, 2147483646
  %lcmp.mod806.not = icmp eq i64 %xtraiter804, 0
  %lcmp.mod808 = trunc i32 %i.ps to i1
  %xtraiter812 = and i64 %wide.trip.count2332.i, 1
  %i.bqk = icmp eq i64 %i.bqi, 0
  %unroll_iter817 = and i64 %wide.trip.count2332.i, 2147483646
  %lcmp.mod814.not = icmp eq i64 %xtraiter812, 0
  %lcmp.mod816 = trunc i32 %i.ps to i1
  %xtraiter820 = and i64 %wide.trip.count2332.i, 1
  %i.bql = icmp eq i64 %i.bqi, 0
  %unroll_iter825 = and i64 %wide.trip.count2332.i, 2147483646
  %lcmp.mod822.not = icmp eq i64 %xtraiter820, 0
  %lcmp.mod824 = trunc i32 %i.ps to i1
  %min.iters.check525 = icmp ult i32 %i.ps, 4
  %min.iters.check527 = icmp ult i32 %i.ps, 16
  %i.bqm = and i64 %wide.trip.count2332.i, 12
  %n.vec529 = and i64 %wide.trip.count2332.i, 2147483632 ; 5 uses
  %i.bqn = shl nuw nsw i64 %n.vec529, 3
  %cmp.n540 = icmp eq i64 %n.vec529, %wide.trip.count2332.i
  %min.epilog.iters.check545 = icmp eq i64 %i.bqm, 0
  %n.vec547 = and i64 %wide.trip.count2332.i, 2147483644 ; 4 uses
  %i.bqo = shl nuw nsw i64 %n.vec547, 3
  %cmp.n558 = icmp eq i64 %n.vec547, %wide.trip.count2332.i
  %min.iters.check = icmp ult i32 %i.ps, 4
  %min.iters.check513 = icmp ult i32 %i.ps, 16
  %i.bqp = and i64 %wide.trip.count2332.i, 12
  %n.vec = and i64 %wide.trip.count2332.i, 2147483632 ; 5 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnn22Convolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.bvl = bitcast <8 x float> %i.bvh to <8 x i32>
  %i.bvm = lshr <8 x i32> %i.bvl, splat (i32 16)  ; 2 uses
  %i.bvn = shufflevector <8 x i32> %i.bvm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bvo = shufflevector <8 x i32> %i.bvm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bvp = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bvn, <4 x i32> %i.bvo)
  store <8 x i16> %i.bvp, ptr %.312051798.us.i, align 1, !tbaa !85
  %i.bvq = getelementptr inbounds nuw i8, ptr %.312051798.us.i, i64 16
  %i.bvr = bitcast <8 x float> %i.bvi to <8 x i32>
  %i.bvs = lshr <8 x i32> %i.bvr, splat (i32 16)  ; 2 uses
  %i.bvt = shufflevector <8 x i32> %i.bvs, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bvu = shufflevector <8 x i32> %i.bvs, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bvv = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bvt, <4 x i32> %i.bvu)
  store <8 x i16> %i.bvv, ptr %i.bvq, align 1, !tbaa !85
  %i.bvw = getelementptr inbounds nuw i8, ptr %.312051798.us.i, i64 32
  %i.bvx = bitcast <8 x float> %i.bvj to <8 x i32>
  %i.bvy = lshr <8 x i32> %i.bvx, splat (i32 16)  ; 2 uses
  %i.bvz = shufflevector <8 x i32> %i.bvy, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bwa = shufflevector <8 x i32> %i.bvy, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bwb = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bvz, <4 x i32> %i.bwa)
  store <8 x i16> %i.bwb, ptr %i.bvw, align 1, !tbaa !85
  %i.bwc = getelementptr inbounds nuw i8, ptr %.312051798.us.i, i64 48
  %i.bwd = bitcast <8 x float> %i.bvk to <8 x i32>
  %i.bwe = lshr <8 x i32> %i.bwd, splat (i32 16)  ; 2 uses
  %i.bwf = shufflevector <8 x i32> %i.bwe, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bwg = shufflevector <8 x i32> %i.bwe, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bwh = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bwf, <4 x i32> %i.bwg)
  store <8 x i16> %i.bwh, ptr %i.bwc, align 1, !tbaa !85
  %i.bwi = getelementptr inbounds nuw i8, ptr %.312051798.us.i, i64 64 ; 3 uses
  %indvars.iv.next2297.i = add nuw nsw i64 %indvars.iv2296.i, 1 ; 2 uses
  %exitcond2300.not.i = icmp eq i64 %indvars.iv.next2297.i, %wide.trip.count2290.i
  br i1 %exitcond2300.not.i, label %._crit_edge1800.us.i, label %bb.fq, !llvm.loop !580

._crit_edge1800.us.i:                             ; preds = %bb.fq
  %i.bwj = getelementptr inbounds nuw [4 x i8], ptr %.112231802.us.i, i64 %i.axn ; 2 uses
  %i.bwk = getelementptr inbounds nuw [4 x i8], ptr %.112201803.us.i, i64 %i.axn ; 2 uses
  %i.bwl = getelementptr inbounds nuw [4 x i8], ptr %.112171804.us.i, i64 %i.axn ; 2 uses
  %i.bwm = getelementptr inbounds nuw [4 x i8], ptr %.112141805.us.i, i64 %i.axn ; 2 uses
  %i.bwn = add nuw nsw i32 %.111981807.us.i, 8    ; 3 uses
  %i.bwo = or disjoint i32 %i.bwn, 7
  %i.bwp = icmp slt i32 %i.bwo, %i.t
  br i1 %i.bwp, label %.preheader1576.us.i, label %.preheader1579.i, !llvm.loop !581

.preheader1579.i:                                 ; preds = %._crit_edge1800.us.i, %.preheader1576.preheader.i, %.preheader1580.thread.i, %.preheader1580.i
  %.11223.lcssa.i = phi ptr [ %.01222.lcssa.i, %.preheader1580.i ], [ %scevgep2277.i, %.preheader1580.thread.i ], [ %scevgep2292.i, %.preheader1576.preheader.i ], [ %i.bwj, %._crit_edge1800.us.i ] ; 2 uses
  %.11220.lcssa.i = phi ptr [ %.01219.lcssa.i, %.preheader1580.i ], [ %scevgep2280.i, %.preheader1580.thread.i ], [ %scevgep2293.i, %.preheader1576.preheader.i ], [ %i.bwk, %._crit_edge1800.us.i ]
  %.11217.lcssa.i = phi ptr [ %.01216.lcssa.i, %.preheader1580.i ], [ %scevgep2283.i, %.preheader1580.thread.i ], [ %scevgep2294.i, %.preheader1576.preheader.i ], [ %i.bwl, %._crit_edge1800.us.i ]
  %.11214.lcssa.i = phi ptr [ %.01213.lcssa.i, %.preheader1580.i ], [ %scevgep2286.i, %.preheader1580.thread.i ], [ %scevgep2295.i, %.preheader1576.preheader.i ], [ %i.bwm, %._crit_edge1800.us.i ]
  %.21204.lcssa.i = phi ptr [ %.01202.lcssa.i, %.preheader1580.i ], [ %i.brz, %.preheader1580.thread.i ], [ %.01202.lcssa25322541.i, %.preheader1576.preheader.i ], [ %i.bwi, %._crit_edge1800.us.i ] ; 2 uses
  %.11198.lcssa.i = phi i32 [ %.01197.lcssa.i, %.preheader1580.i ], [ %i.ayh, %.preheader1580.thread.i ], [ %i.buu, %.preheader1576.preheader.i ], [ %i.bwn, %._crit_edge1800.us.i ] ; 3 uses
  %i.bwq = or disjoint i32 %.11198.lcssa.i, 3
  %i.bwr = icmp slt i32 %i.bwq, %i.t
  br i1 %i.bwr, label %.preheader1575.lr.ph.i, label %._crit_edge1830.i

.preheader1575.lr.ph.i:                           ; preds = %.preheader1579.i
  br i1 %i.axj, label %.preheader1575.us.i, label %._crit_edge1859.split.i

.preheader1575.us.i:                              ; preds = %.preheader1575.lr.ph.i, %._crit_edge1822.us.i
  %.211991829.us.i = phi i32 [ %i.byg, %._crit_edge1822.us.i ], [ %.11198.lcssa.i, %.preheader1575.lr.ph.i ]
  %.412061828.us.i = phi ptr [ %i.byb, %._crit_edge1822.us.i ], [ %.21204.lcssa.i, %.preheader1575.lr.ph.i ]
  %.212151827.us.i = phi ptr [ %i.byf, %._crit_edge1822.us.i ], [ %.11214.lcssa.i, %.preheader1575.lr.ph.i ] ; 2 uses
  %.212181826.us.i = phi ptr [ %i.bye, %._crit_edge1822.us.i ], [ %.11217.lcssa.i, %.preheader1575.lr.ph.i ] ; 2 uses
  %.212211825.us.i = phi ptr [ %i.byd, %._crit_edge1822.us.i ], [ %.11220.lcssa.i, %.preheader1575.lr.ph.i ] ; 2 uses
  %.212241824.us.i = phi ptr [ %i.byc, %._crit_edge1822.us.i ], [ %.11223.lcssa.i, %.preheader1575.lr.ph.i ] ; 2 uses
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fr, %.preheader1575.us.i
  %indvars.iv2302.i = phi i64 [ 0, %.preheader1575.us.i ], [ %indvars.iv.next2303.i, %bb.fr ] ; 5 uses
  %.512071820.us.i = phi ptr [ %.412061828.us.i, %.preheader1575.us.i ], [ %i.byb, %bb.fr ] ; 3 uses
  %i.bws = getelementptr inbounds nuw [4 x i8], ptr %.212241824.us.i, i64 %indvars.iv2302.i
  %i.bwt = getelementptr inbounds nuw [4 x i8], ptr %.212211825.us.i, i64 %indvars.iv2302.i
  %i.bwu = getelementptr inbounds nuw [4 x i8], ptr %.212181826.us.i, i64 %indvars.iv2302.i
  %i.bwv = getelementptr inbounds nuw [4 x i8], ptr %.212151827.us.i, i64 %indvars.iv2302.i
  %i.bww = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bws, <4 x i32> %i.axb, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bwx = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bwt, <4 x i32> %i.axb, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bwy = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bwu, <4 x i32> %i.axb, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bwz = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bwv, <4 x i32> %i.axb, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bxa = shufflevector <4 x float> %i.bww, <4 x float> %i.bwx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bxb = shufflevector <4 x float> %i.bwy, <4 x float> %i.bwz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bxc = shufflevector <4 x float> %i.bww, <4 x float> %i.bwx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bxd = shufflevector <4 x float> %i.bwy, <4 x float> %i.bwz, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bxe = shufflevector <4 x float> %i.bxa, <4 x float> %i.bxb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bxf = shufflevector <4 x float> %i.bxb, <4 x float> %i.bxa, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bxg = shufflevector <4 x float> %i.bxc, <4 x float> %i.bxd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bxh = shufflevector <4 x float> %i.bxd, <4 x float> %i.bxc, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bxi = bitcast <4 x float> %i.bxe to <4 x i32>
  %i.bxj = lshr <4 x i32> %i.bxi, splat (i32 16)
  %i.bxk = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bxj, <4 x i32> poison)
  %i.bxl = bitcast <8 x i16> %i.bxk to <2 x i64>
  %i.bxm = bitcast <4 x float> %i.bxf to <4 x i32>
  %i.bxn = lshr <4 x i32> %i.bxm, splat (i32 16)
  %i.bxo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bxn, <4 x i32> poison)
  %i.bxp = bitcast <8 x i16> %i.bxo to <2 x i64>
  %i.bxq = shufflevector <2 x i64> %i.bxl, <2 x i64> %i.bxp, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bxq, ptr %.512071820.us.i, align 1, !tbaa !85
  %i.bxr = getelementptr inbounds nuw i8, ptr %.512071820.us.i, i64 16
  %i.bxs = bitcast <4 x float> %i.bxg to <4 x i32>
  %i.bxt = lshr <4 x i32> %i.bxs, splat (i32 16)
  %i.bxu = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bxt, <4 x i32> poison)
  %i.bxv = bitcast <8 x i16> %i.bxu to <2 x i64>
  %i.bxw = bitcast <4 x float> %i.bxh to <4 x i32>
  %i.bxx = lshr <4 x i32> %i.bxw, splat (i32 16)
  %i.bxy = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bxx, <4 x i32> poison)
  %i.bxz = bitcast <8 x i16> %i.bxy to <2 x i64>
  %i.bya = shufflevector <2 x i64> %i.bxv, <2 x i64> %i.bxz, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bya, ptr %i.bxr, align 1, !tbaa !85
  %i.byb = getelementptr inbounds nuw i8, ptr %.512071820.us.i, i64 32 ; 3 uses
  %indvars.iv.next2303.i = add nuw nsw i64 %indvars.iv2302.i, 1 ; 2 uses
  %exitcond2306.not.i = icmp eq i64 %indvars.iv.next2303.i, %wide.trip.count2290.i
  br i1 %exitcond2306.not.i, label %._crit_edge1822.us.i, label %bb.fr, !llvm.loop !582

._crit_edge1822.us.i:                             ; preds = %bb.fr
  %i.byc = getelementptr inbounds nuw [4 x i8], ptr %.212241824.us.i, i64 %i.axp ; 2 uses
  %i.byd = getelementptr inbounds nuw [4 x i8], ptr %.212211825.us.i, i64 %i.axp
  %i.bye = getelementptr inbounds nuw [4 x i8], ptr %.212181826.us.i, i64 %i.axp
  %i.byf = getelementptr inbounds nuw [4 x i8], ptr %.212151827.us.i, i64 %i.axp
  %i.byg = add nuw nsw i32 %.211991829.us.i, 4    ; 3 uses
  %i.byh = or disjoint i32 %i.byg, 3
  %i.byi = icmp slt i32 %i.byh, %i.t
  br i1 %i.byi, label %.preheader1575.us.i, label %._crit_edge1830.i, !llvm.loop !583

._crit_edge1830.i:                                ; preds = %._crit_edge1822.us.i, %.preheader1579.i
  %.21224.lcssa.i = phi ptr [ %.11223.lcssa.i, %.preheader1579.i ], [ %i.byc, %._crit_edge1822.us.i ] ; 2 uses
  %.41206.lcssa.i = phi ptr [ %.21204.lcssa.i, %.preheader1579.i ], [ %i.byb, %._crit_edge1822.us.i ] ; 2 uses
  %.21199.lcssa.i = phi i32 [ %.11198.lcssa.i, %.preheader1579.i ], [ %i.byg, %._crit_edge1822.us.i ] ; 3 uses
  %i.byj = or disjoint i32 %.21199.lcssa.i, 1
  %i.byk = icmp slt i32 %i.byj, %i.t
  br i1 %i.byk, label %.preheader1574.lr.ph.i, label %.preheader1578.i

.preheader1574.lr.ph.i:                           ; preds = %._crit_edge1830.i
  br i1 %i.axj, label %.preheader1574.us.i, label %._crit_edge1859.split.i

.preheader1574.us.i:                              ; preds = %.preheader1574.lr.ph.i, %._crit_edge1842.us.i
  %.312001846.us.i = phi i32 [ %i.caj, %._crit_edge1842.us.i ], [ %.21199.lcssa.i, %.preheader1574.lr.ph.i ]
  %.612081845.us.i = phi ptr [ %.lcssa729, %._crit_edge1842.us.i ], [ %.41206.lcssa.i, %.preheader1574.lr.ph.i ] ; 2 uses
  %.312251844.us.i = phi ptr [ %i.cai, %._crit_edge1842.us.i ], [ %.21224.lcssa.i, %.preheader1574.lr.ph.i ] ; 4 uses
  br i1 %i.ayq, label %.epil.preheader787, label %.preheader1574.us.i.new

.preheader1574.us.i.new:                          ; preds = %.preheader1574.us.i, %.preheader1574.us.i.new
  %indvars.iv2308.i = phi i64 [ %indvars.iv.next2309.i.1, %.preheader1574.us.i.new ], [ 0, %.preheader1574.us.i ] ; 3 uses
  %.712091840.us.i = phi ptr [ %i.bzr, %.preheader1574.us.i.new ], [ %.612081845.us.i, %.preheader1574.us.i ] ; 5 uses
  %niter794 = phi i64 [ %niter794.next.1, %.preheader1574.us.i.new ], [ 0, %.preheader1574.us.i ]
  %i.byl = getelementptr inbounds nuw [4 x i8], ptr %.312251844.us.i, i64 %indvars.iv2308.i ; 2 uses
  %i.bym = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.byl, <4 x i32> %i.axr, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.byn = bitcast <4 x float> %i.bym to <4 x i32>
  %i.byo = lshr <4 x i32> %i.byn, splat (i32 16)
  %i.byp = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.byo, <4 x i32> poison)
  %i.byq = bitcast <8 x i16> %i.byp to <2 x i64>
  %i.byr = extractelement <2 x i64> %i.byq, i64 0
  store i64 %i.byr, ptr %.712091840.us.i, align 1, !tbaa !85
  %i.bys = getelementptr inbounds nuw [4 x i8], ptr %i.byl, i64 %i.axs
  %i.byt = getelementptr inbounds nuw i8, ptr %.712091840.us.i, i64 8
  %i.byu = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bys, <4 x i32> %i.axr, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.byv = bitcast <4 x float> %i.byu to <4 x i32>
  %i.byw = lshr <4 x i32> %i.byv, splat (i32 16)
  %i.byx = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.byw, <4 x i32> poison)
  %i.byy = bitcast <8 x i16> %i.byx to <2 x i64>
  %i.byz = extractelement <2 x i64> %i.byy, i64 0
  store i64 %i.byz, ptr %i.byt, align 1, !tbaa !85
  %i.bza = getelementptr inbounds nuw i8, ptr %.712091840.us.i, i64 16
  %i.bzb = getelementptr inbounds nuw [4 x i8], ptr %.312251844.us.i, i64 %indvars.iv2308.i
  %i.bzc = getelementptr inbounds nuw i8, ptr %i.bzb, i64 4 ; 2 uses
  %i.bzd = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bzc, <4 x i32> %i.axr, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bze = bitcast <4 x float> %i.bzd to <4 x i32>
  %i.bzf = lshr <4 x i32> %i.bze, splat (i32 16)
  %i.bzg = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bzf, <4 x i32> poison)
  %i.bzh = bitcast <8 x i16> %i.bzg to <2 x i64>
  %i.bzi = extractelement <2 x i64> %i.bzh, i64 0
  store i64 %i.bzi, ptr %i.bza, align 1, !tbaa !85
  %i.bzj = getelementptr inbounds nuw [4 x i8], ptr %i.bzc, i64 %i.axs
  %i.bzk = getelementptr inbounds nuw i8, ptr %.712091840.us.i, i64 24
  %i.bzl = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bzj, <4 x i32> %i.axr, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bzm = bitcast <4 x float> %i.bzl to <4 x i32>
  %i.bzn = lshr <4 x i32> %i.bzm, splat (i32 16)
  %i.bzo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bzn, <4 x i32> poison)
  %i.bzp = bitcast <8 x i16> %i.bzo to <2 x i64>
  %i.bzq = extractelement <2 x i64> %i.bzp, i64 0
  store i64 %i.bzq, ptr %i.bzk, align 1, !tbaa !85
  %i.bzr = getelementptr inbounds nuw i8, ptr %.712091840.us.i, i64 32 ; 3 uses
  %indvars.iv.next2309.i.1 = add nuw nsw i64 %indvars.iv2308.i, 2 ; 2 uses
  %niter794.next.1 = add i64 %niter794, 2         ; 2 uses
  %niter794.ncmp.1 = icmp eq i64 %niter794.next.1, %unroll_iter793
  br i1 %niter794.ncmp.1, label %._crit_edge1842.us.i.unr-lcssa, label %.preheader1574.us.i.new, !llvm.loop !584

._crit_edge1842.us.i.unr-lcssa:                   ; preds = %.preheader1574.us.i.new
  br i1 %lcmp.mod790.not, label %._crit_edge1842.us.i, label %.epil.preheader787

.epil.preheader787:                               ; preds = %._crit_edge1842.us.i.unr-lcssa, %.preheader1574.us.i
  %indvars.iv2308.i.epil.init = phi i64 [ 0, %.preheader1574.us.i ], [ %indvars.iv.next2309.i.1, %._crit_edge1842.us.i.unr-lcssa ]
  %.712091840.us.i.epil.init = phi ptr [ %.612081845.us.i, %.preheader1574.us.i ], [ %i.bzr, %._crit_edge1842.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod792)
  %i.bzs = getelementptr inbounds nuw [4 x i8], ptr %.312251844.us.i, i64 %indvars.iv2308.i.epil.init ; 2 uses
  %i.bzt = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bzs, <4 x i32> %i.axr, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bzu = bitcast <4 x float> %i.bzt to <4 x i32>
  %i.bzv = lshr <4 x i32> %i.bzu, splat (i32 16)
  %i.bzw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bzv, <4 x i32> poison)
  %i.bzx = bitcast <8 x i16> %i.bzw to <2 x i64>
  %i.bzy = extractelement <2 x i64> %i.bzx, i64 0
  store i64 %i.bzy, ptr %.712091840.us.i.epil.init, align 1, !tbaa !85
  %i.bzz = getelementptr inbounds nuw [4 x i8], ptr %i.bzs, i64 %i.axs
  %i.caa = getelementptr inbounds nuw i8, ptr %.712091840.us.i.epil.init, i64 8
  %i.cab = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bzz, <4 x i32> %i.axr, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cac = bitcast <4 x float> %i.cab to <4 x i32>
  %i.cad = lshr <4 x i32> %i.cac, splat (i32 16)
  %i.cae = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cad, <4 x i32> poison)
  %i.caf = bitcast <8 x i16> %i.cae to <2 x i64>
  %i.cag = extractelement <2 x i64> %i.caf, i64 0
  store i64 %i.cag, ptr %i.caa, align 1, !tbaa !85
  %i.cah = getelementptr inbounds nuw i8, ptr %.712091840.us.i.epil.init, i64 16
  br label %._crit_edge1842.us.i

._crit_edge1842.us.i:                             ; preds = %._crit_edge1842.us.i.unr-lcssa, %.epil.preheader787
  %.lcssa729 = phi ptr [ %i.bzr, %._crit_edge1842.us.i.unr-lcssa ], [ %i.cah, %.epil.preheader787 ] ; 2 uses
  %i.cai = getelementptr inbounds nuw [4 x i8], ptr %.312251844.us.i, i64 %i.axu ; 2 uses
  %i.caj = add nuw nsw i32 %.312001846.us.i, 2    ; 3 uses
  %i.cak = or disjoint i32 %i.caj, 1
  %i.cal = icmp slt i32 %i.cak, %i.t
  br i1 %i.cal, label %.preheader1574.us.i, label %.preheader1578.i, !llvm.loop !585

.preheader1578.i:                                 ; preds = %._crit_edge1842.us.i, %._crit_edge1830.i
  %.31225.lcssa.i = phi ptr [ %.21224.lcssa.i, %._crit_edge1830.i ], [ %i.cai, %._crit_edge1842.us.i ] ; 5 uses
  %.61208.lcssa.i = phi ptr [ %.41206.lcssa.i, %._crit_edge1830.i ], [ %.lcssa729, %._crit_edge1842.us.i ]
  %.31200.lcssa.i = phi i32 [ %.21199.lcssa.i, %._crit_edge1830.i ], [ %i.caj, %._crit_edge1842.us.i ] ; 2 uses
  %i.cam = icmp sge i32 %.31200.lcssa.i, %i.t
  %brmerge2009.i = or i1 %i.axv, %i.cam
  br i1 %brmerge2009.i, label %._crit_edge1859.split.i, label %.preheader1573.i

.preheader1573.i:                                 ; preds = %.preheader1578.i, %._crit_edge1855.i
  %.412011858.i = phi i32 [ %i.cav, %._crit_edge1855.i ], [ %.31200.lcssa.i, %.preheader1578.i ]
  %.912111857.i = phi ptr [ %.lcssa732, %._crit_edge1855.i ], [ %.61208.lcssa.i, %.preheader1578.i ] ; 2 uses
  br i1 %i.ayr, label %.epil.preheader795, label %.preheader1573.i.new

._crit_edge1855.i.unr-lcssa:                      ; preds = %.preheader1573.i.new
  br i1 %lcmp.mod798.not, label %._crit_edge1855.i, label %.epil.preheader795

.epil.preheader795:                               ; preds = %._crit_edge1855.i.unr-lcssa, %.preheader1573.i
  %indvars.iv2313.i.epil.init = phi i64 [ 0, %.preheader1573.i ], [ %indvars.iv.next2314.i.3, %._crit_edge1855.i.unr-lcssa ]
  %.1012121853.i.epil.init = phi ptr [ %.912111857.i, %.preheader1573.i ], [ %i.cce, %._crit_edge1855.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod800)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fs, %.epil.preheader795
  %indvars.iv2313.i.epil = phi i64 [ %indvars.iv2313.i.epil.init, %.epil.preheader795 ], [ %indvars.iv.next2314.i.epil, %bb.fs ] ; 2 uses
  %.1012121853.i.epil = phi ptr [ %.1012121853.i.epil.init, %.epil.preheader795 ], [ %i.cau, %bb.fs ] ; 2 uses
  %epil.iter797 = phi i64 [ 0, %.epil.preheader795 ], [ %epil.iter797.next, %bb.fs ]
  %i.can = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2313.i.epil
  %i.cao = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.can, <4 x i32> %i.axr, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cap = bitcast <4 x float> %i.cao to <4 x i32>
  %i.caq = lshr <4 x i32> %i.cap, splat (i32 16)
  %i.car = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.caq, <4 x i32> poison)
  %i.cas = bitcast <8 x i16> %i.car to <2 x i64>
  %i.cat = extractelement <2 x i64> %i.cas, i64 0
  store i64 %i.cat, ptr %.1012121853.i.epil, align 1, !tbaa !85
  %i.cau = getelementptr inbounds nuw i8, ptr %.1012121853.i.epil, i64 8 ; 2 uses
  %indvars.iv.next2314.i.epil = add nuw nsw i64 %indvars.iv2313.i.epil, 1
  %epil.iter797.next = add i64 %epil.iter797, 1   ; 2 uses
  %epil.iter797.cmp.not = icmp eq i64 %epil.iter797.next, %xtraiter796
  br i1 %epil.iter797.cmp.not, label %._crit_edge1855.i, label %bb.fs, !llvm.loop !586

._crit_edge1855.i:                                ; preds = %bb.fs, %._crit_edge1855.i.unr-lcssa
  %.lcssa732 = phi ptr [ %i.cce, %._crit_edge1855.i.unr-lcssa ], [ %i.cau, %bb.fs ]
  %i.cav = add nuw nsw i32 %.412011858.i, 1       ; 2 uses
  %exitcond2318.not.i = icmp eq i32 %i.cav, %i.t
  br i1 %exitcond2318.not.i, label %._crit_edge1859.split.i, label %.preheader1573.i, !llvm.loop !587

.preheader1573.i.new:                             ; preds = %.preheader1573.i, %.preheader1573.i.new
  %indvars.iv2313.i = phi i64 [ %indvars.iv.next2314.i.3, %.preheader1573.i.new ], [ 0, %.preheader1573.i ] ; 5 uses
  %.1012121853.i = phi ptr [ %i.cce, %.preheader1573.i.new ], [ %.912111857.i, %.preheader1573.i ] ; 5 uses
  %niter802 = phi i64 [ %niter802.next.3, %.preheader1573.i.new ], [ 0, %.preheader1573.i ]
  %i.caw = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2313.i
  %i.cax = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.caw, <4 x i32> %i.axr, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cay = bitcast <4 x float> %i.cax to <4 x i32>
  %i.caz = lshr <4 x i32> %i.cay, splat (i32 16)
  %i.cba = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.caz, <4 x i32> poison)
  %i.cbb = bitcast <8 x i16> %i.cba to <2 x i64>
  %i.cbc = extractelement <2 x i64> %i.cbb, i64 0
  store i64 %i.cbc, ptr %.1012121853.i, align 1, !tbaa !85
  %i.cbd = getelementptr inbounds nuw i8, ptr %.1012121853.i, i64 8
  %i.cbe = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2313.i
  %i.cbf = getelementptr inbounds nuw i8, ptr %i.cbe, i64 4
  %i.cbg = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cbf, <4 x i32> %i.axr, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cbh = bitcast <4 x float> %i.cbg to <4 x i32>
  %i.cbi = lshr <4 x i32> %i.cbh, splat (i32 16)
  %i.cbj = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cbi, <4 x i32> poison)
  %i.cbk = bitcast <8 x i16> %i.cbj to <2 x i64>
  %i.cbl = extractelement <2 x i64> %i.cbk, i64 0
  store i64 %i.cbl, ptr %i.cbd, align 1, !tbaa !85
  %i.cbm = getelementptr inbounds nuw i8, ptr %.1012121853.i, i64 16
  %i.cbn = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2313.i
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.cbn, i64 8
  %i.cbp = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cbo, <4 x i32> %i.axr, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cbq = bitcast <4 x float> %i.cbp to <4 x i32>
  %i.cbr = lshr <4 x i32> %i.cbq, splat (i32 16)
  %i.cbs = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cbr, <4 x i32> poison)
  %i.cbt = bitcast <8 x i16> %i.cbs to <2 x i64>
  %i.cbu = extractelement <2 x i64> %i.cbt, i64 0
  store i64 %i.cbu, ptr %i.cbm, align 1, !tbaa !85
  %i.cbv = getelementptr inbounds nuw i8, ptr %.1012121853.i, i64 24
  %i.cbw = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2313.i
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbw, i64 12
  %i.cby = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cbx, <4 x i32> %i.axr, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cbz = bitcast <4 x float> %i.cby to <4 x i32>
  %i.cca = lshr <4 x i32> %i.cbz, splat (i32 16)
  %i.ccb = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cca, <4 x i32> poison)
  %i.ccc = bitcast <8 x i16> %i.ccb to <2 x i64>
  %i.ccd = extractelement <2 x i64> %i.ccc, i64 0
  store i64 %i.ccd, ptr %i.cbv, align 1, !tbaa !85
  %i.cce = getelementptr inbounds nuw i8, ptr %.1012121853.i, i64 32 ; 3 uses
  %indvars.iv.next2314.i.3 = add nuw nsw i64 %indvars.iv2313.i, 4 ; 2 uses
  %niter802.next.3 = add i64 %niter802, 4         ; 2 uses
  %niter802.ncmp.3 = icmp eq i64 %niter802.next.3, %unroll_iter801
  br i1 %niter802.ncmp.3, label %._crit_edge1855.i.unr-lcssa, label %.preheader1573.i.new, !llvm.loop !588

._crit_edge1859.split.i:                          ; preds = %._crit_edge1855.i, %.preheader1578.i, %.preheader1574.lr.ph.i, %.preheader1575.lr.ph.i
  %indvars.iv.next2320.i = add nuw nsw i64 %indvars.iv2319.i, 4 ; 3 uses
  %i.ccf = or disjoint i64 %indvars.iv.next2320.i, 3 ; 2 uses
  %i.ccg = icmp slt i64 %i.ccf, %i.ayk
  %i.cch = add <4 x i32> %i.bqt, %i.ayo
  %i.cci = trunc nuw nsw i64 %i.ccf to i32
  br i1 %i.ccg, label %_ZN4ncnn3MatD2Ev.exit1304.i, label %.preheader1572.loopexit.i, !llvm.loop !589

.preheader1562.loopexit.i:                        ; preds = %._crit_edge1936.split.i
  %i.ccj = trunc nsw i64 %indvars.iv.next2362.i to i32
  br label %.preheader1562.i

.preheader1562.i:                                 ; preds = %.preheader1562.loopexit.i, %.preheader1572.i
  %.3.lcssa.i = phi i32 [ %.2.lcssa.i, %.preheader1572.i ], [ %i.ccj, %.preheader1562.loopexit.i ] ; 3 uses
  %i.cck = icmp slt i32 %.3.lcssa.i, %i.ek
  br i1 %i.cck, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1562.i
  %i.ccl = mul i32 %i.ps, %i.t                    ; 3 uses
  %i.ccm = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.ccn = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cco = insertelement <4 x i32> poison, i32 %i.ps, i64 0
  %i.ccp = shufflevector <4 x i32> %i.cco, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ccq = mul <4 x i32> %i.ccp, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.ccr = insertelement <8 x i32> poison, i32 %i.ps, i64 0
  %i.ccs = shufflevector <8 x i32> %i.ccr, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cct = mul <8 x i32> %i.ccs, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.ccu = insertelement <16 x i32> poison, i32 %i.ps, i64 0
  %i.ccv = shufflevector <16 x i32> %i.ccu, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ccw = mul <16 x i32> %i.ccv, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 3 uses
  %i.ccx = icmp sgt i32 %i.t, 15
  %i.ccy = icmp sgt i32 %i.ps, 0                  ; 4 uses
  %i.ccz = shl i32 %i.ps, 4
  %i.cda = sext i32 %i.ccz to i64                 ; 2 uses
  %i.cdb = shl i32 %i.ps, 3
  %i.cdc = sext i32 %i.cdb to i64                 ; 2 uses
  %i.cdd = shl i32 %i.ps, 2
  %i.cde = sext i32 %i.cdd to i64
  %i.cdf = sext i32 %i.ps to i64                  ; 3 uses
  %i.cdg = shl i32 %i.ps, 1
  %i.cdh = sext i32 %i.cdg to i64
  %i.cdi = icmp slt i32 %i.ps, 1
  %i.cdj = add i32 %i.t, -16                      ; 2 uses
  %i.cdk = lshr i32 %i.cdj, 2
  %i.cdl = and i32 %i.cdk, 1073741820
  %narrow2443.i = add nuw nsw i32 %i.cdl, 4
  %i.cdm = zext nneg i32 %narrow2443.i to i64
  %i.cdn = mul nsw i64 %i.cda, %i.cdm
  %i.cdo = mul i32 %i.ccl, %.3.lcssa.i
  %i.cdp = and i32 %i.cdj, -16
  %i.cdq = add nuw i32 %i.cdp, 16                 ; 4 uses
  %i.cdr = add i32 %i.t, -8
  %i.cds = sext i32 %.3.lcssa.i to i64
  %wide.trip.count2400.i = sext i32 %i.ek to i64
  %i.cdt = or disjoint i32 %i.cdq, 7
  %i.cdu = icmp slt i32 %i.cdt, %i.t
  %wide.trip.count2371.i = zext i32 %i.ps to i64  ; 19 uses
  %i.cdv = add nsw i64 %wide.trip.count2371.i, -1 ; 3 uses
  %xtraiter828 = and i64 %wide.trip.count2371.i, 1
  %i.cdw = icmp eq i64 %i.cdv, 0
  %unroll_iter833 = and i64 %wide.trip.count2371.i, 2147483646
  %lcmp.mod830.not = icmp eq i64 %xtraiter828, 0
  %lcmp.mod832 = trunc i32 %i.ps to i1
  %xtraiter836 = and i64 %wide.trip.count2371.i, 3 ; 3 uses
  %i.cdx = icmp ult i64 %i.cdv, 3
  %unroll_iter841 = and i64 %wide.trip.count2371.i, 2147483644
  %lcmp.mod838.not = icmp eq i64 %xtraiter836, 0
  %lcmp.mod840 = icmp ne i64 %xtraiter836, 0
  %xtraiter844 = and i64 %wide.trip.count2371.i, 3 ; 3 uses
  %i.cdy = icmp ult i64 %i.cdv, 3
  %unroll_iter849 = and i64 %wide.trip.count2371.i, 2147483644
  %lcmp.mod846.not = icmp eq i64 %xtraiter844, 0
  %lcmp.mod848 = icmp ne i64 %xtraiter844, 0
  %min.iters.check592 = icmp ult i32 %i.ps, 8
  %min.iters.check594 = icmp ult i32 %i.ps, 32
  %i.cdz = and i64 %wide.trip.count2371.i, 24
  %n.vec596 = and i64 %wide.trip.count2371.i, 2147483616 ; 5 uses
  %i.cea = shl nuw nsw i64 %n.vec596, 2
  %cmp.n609 = icmp eq i64 %n.vec596, %wide.trip.count2371.i
  %min.epilog.iters.check614 = icmp eq i64 %i.cdz, 0
  %n.vec616 = and i64 %wide.trip.count2371.i, 2147483640 ; 4 uses
  %i.ceb = shl nuw nsw i64 %n.vec616, 2
  %cmp.n625 = icmp eq i64 %n.vec616, %wide.trip.count2371.i
  %min.iters.check561 = icmp ult i32 %i.ps, 8
  %min.iters.check563 = icmp ult i32 %i.ps, 64
  %i.cec = and i64 %wide.trip.count2371.i, 56
  %n.vec565 = and i64 %wide.trip.count2371.i, 2147483584 ; 5 uses
  %i.ced = shl nuw nsw i64 %n.vec565, 1
  %cmp.n575 = icmp eq i64 %n.vec565, %wide.trip.count2371.i
end_hunk_2
