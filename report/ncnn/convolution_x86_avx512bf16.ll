Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512bf16?download=true
inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnn52convolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %scevgep2208.i = getelementptr i8, ptr %scevgep2205.i, i64 %i.abs ; 2 uses
  br i1 %i.kt, label %.preheader1579.preheader.i, label %._crit_edge1722.i

.preheader1579.lr.ph.i:                           ; preds = %.preheader1583.i
  br i1 %i.jr, label %.preheader1579.us.i, label %.preheader1579.preheader.i

.preheader1579.preheader.i:                       ; preds = %.preheader1579.lr.ph.i, %.preheader1583.thread.i
  %.01262.lcssa24772499.i = phi i32 [ %.01262.lcssa.i, %.preheader1579.lr.ph.i ], [ %i.kn, %.preheader1583.thread.i ] ; 2 uses
  %.01250.lcssa24782498.i = phi ptr [ %.01250.lcssa.i, %.preheader1579.lr.ph.i ], [ %i.adj, %.preheader1583.thread.i ]
  %.01231.lcssa24862497.i = phi ptr [ %.01231.lcssa.i, %.preheader1579.lr.ph.i ], [ %scevgep2208.i, %.preheader1583.thread.i ]
  %i.agj = sub i32 %i.ko, %.01262.lcssa24772499.i ; 2 uses
  %i.agk = lshr i32 %i.agj, 1
  %i.agl = and i32 %i.agk, 2147483644
  %narrow2432.i = add nuw i32 %i.agl, 4
  %i.agm = zext i32 %narrow2432.i to i64
  %i.agn = mul nsw i64 %i.agm, %i.jv
  %scevgep2236.i = getelementptr i8, ptr %.01231.lcssa24862497.i, i64 %i.agn
  %i.ago = add i32 %.01262.lcssa24772499.i, 8
  %i.agp = and i32 %i.agj, -8
  %i.agq = add i32 %i.ago, %i.agp
  br label %._crit_edge1722.i

.preheader1579.us.i:                              ; preds = %.preheader1579.lr.ph.i, %._crit_edge1710.us.i
  %.112321721.us.i = phi ptr [ %i.aiv, %._crit_edge1710.us.i ], [ %.01231.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112361720.us.i = phi ptr [ %i.aiw, %._crit_edge1710.us.i ], [ %.01235.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112381719.us.i = phi ptr [ %i.aix, %._crit_edge1710.us.i ], [ %.01237.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112401718.us.i = phi ptr [ %i.aiy, %._crit_edge1710.us.i ], [ %.01239.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112421717.us.i = phi ptr [ %i.aiz, %._crit_edge1710.us.i ], [ %.01241.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112451716.us.i = phi ptr [ %i.aja, %._crit_edge1710.us.i ], [ %.01244.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112471715.us.i = phi ptr [ %i.ajb, %._crit_edge1710.us.i ], [ %.01246.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112491714.us.i = phi ptr [ %i.ajc, %._crit_edge1710.us.i ], [ %.01248.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.212521713.us.i = phi ptr [ %i.aiu, %._crit_edge1710.us.i ], [ %.01250.lcssa.i, %.preheader1579.lr.ph.i ]
  %.112631712.us.i = phi i32 [ %i.ajd, %._crit_edge1710.us.i ], [ %.01262.lcssa.i, %.preheader1579.lr.ph.i ]
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.preheader1579.us.i
  %indvars.iv2237.i = phi i64 [ 0, %.preheader1579.us.i ], [ %indvars.iv.next2238.i, %bb.bb ] ; 9 uses
  %.312531708.us.i = phi ptr [ %.212521713.us.i, %.preheader1579.us.i ], [ %i.aiu, %bb.bb ] ; 9 uses
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %.112321721.us.i, i64 %indvars.iv2237.i
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %.112361720.us.i, i64 %indvars.iv2237.i
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %.112381719.us.i, i64 %indvars.iv2237.i
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %.112401718.us.i, i64 %indvars.iv2237.i
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %.112421717.us.i, i64 %indvars.iv2237.i
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %.112451716.us.i, i64 %indvars.iv2237.i
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %.112471715.us.i, i64 %indvars.iv2237.i
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %.112491714.us.i, i64 %indvars.iv2237.i
  %i.agz = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agr, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.aha = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ags, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahb = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agt, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahc = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agu, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahd = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agv, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahe = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agw, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahf = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agx, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahg = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agy, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahh = shufflevector <8 x float> %i.agz, <8 x float> %i.aha, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ahi = shufflevector <8 x float> %i.agz, <8 x float> %i.aha, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ahj = shufflevector <8 x float> %i.ahb, <8 x float> %i.ahc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ahk = shufflevector <8 x float> %i.ahb, <8 x float> %i.ahc, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ahl = shufflevector <8 x float> %i.ahd, <8 x float> %i.ahe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ahm = shufflevector <8 x float> %i.ahd, <8 x float> %i.ahe, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ahn = shufflevector <8 x float> %i.ahf, <8 x float> %i.ahg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aho = shufflevector <8 x float> %i.ahf, <8 x float> %i.ahg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ahp = shufflevector <8 x float> %i.ahh, <8 x float> %i.ahj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ahq = shufflevector <8 x float> %i.ahh, <8 x float> %i.ahj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ahr = shufflevector <8 x float> %i.ahi, <8 x float> %i.ahk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ahs = shufflevector <8 x float> %i.ahi, <8 x float> %i.ahk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.aht = shufflevector <8 x float> %i.ahl, <8 x float> %i.ahn, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ahu = shufflevector <8 x float> %i.ahl, <8 x float> %i.ahn, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ahv = shufflevector <8 x float> %i.ahm, <8 x float> %i.aho, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ahw = shufflevector <8 x float> %i.ahm, <8 x float> %i.aho, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ahx = shufflevector <8 x float> %i.ahp, <8 x float> %i.aht, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ahy = shufflevector <8 x float> %i.ahq, <8 x float> %i.ahu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ahz = shufflevector <8 x float> %i.ahr, <8 x float> %i.ahv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aia = shufflevector <8 x float> %i.ahs, <8 x float> %i.ahw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aib = shufflevector <8 x float> %i.ahp, <8 x float> %i.aht, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aic = shufflevector <8 x float> %i.ahq, <8 x float> %i.ahu, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aid = shufflevector <8 x float> %i.ahr, <8 x float> %i.ahv, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aie = shufflevector <8 x float> %i.ahs, <8 x float> %i.ahw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.aif = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ahx)
  store <8 x bfloat> %i.aif, ptr %.312531708.us.i, align 1, !tbaa !18
  %i.aig = getelementptr inbounds nuw i8, ptr %.312531708.us.i, i64 16
  %i.aih = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ahy)
  store <8 x bfloat> %i.aih, ptr %i.aig, align 1, !tbaa !18
  %i.aii = getelementptr inbounds nuw i8, ptr %.312531708.us.i, i64 32
  %i.aij = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ahz)
  store <8 x bfloat> %i.aij, ptr %i.aii, align 1, !tbaa !18
  %i.aik = getelementptr inbounds nuw i8, ptr %.312531708.us.i, i64 48
  %i.ail = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aia)
  store <8 x bfloat> %i.ail, ptr %i.aik, align 1, !tbaa !18
  %i.aim = getelementptr inbounds nuw i8, ptr %.312531708.us.i, i64 64
  %i.ain = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aib)
  store <8 x bfloat> %i.ain, ptr %i.aim, align 1, !tbaa !18
  %i.aio = getelementptr inbounds nuw i8, ptr %.312531708.us.i, i64 80
  %i.aip = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aic)
  store <8 x bfloat> %i.aip, ptr %i.aio, align 1, !tbaa !18
  %i.aiq = getelementptr inbounds nuw i8, ptr %.312531708.us.i, i64 96
  %i.air = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aid)
  store <8 x bfloat> %i.air, ptr %i.aiq, align 1, !tbaa !18
  %i.ais = getelementptr inbounds nuw i8, ptr %.312531708.us.i, i64 112
  %i.ait = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aie)
  store <8 x bfloat> %i.ait, ptr %i.ais, align 1, !tbaa !18
  %i.aiu = getelementptr inbounds nuw i8, ptr %.312531708.us.i, i64 128 ; 3 uses
  %indvars.iv.next2238.i = add nuw nsw i64 %indvars.iv2237.i, 1 ; 2 uses
  %exitcond2241.not.i = icmp eq i64 %indvars.iv.next2238.i, %wide.trip.count2234.i
  br i1 %exitcond2241.not.i, label %._crit_edge1710.us.i, label %bb.bb, !llvm.loop !70

._crit_edge1710.us.i:                             ; preds = %bb.bb
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %.112321721.us.i, i64 %i.jv ; 2 uses
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %.112361720.us.i, i64 %i.jv
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %.112381719.us.i, i64 %i.jv
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %.112401718.us.i, i64 %i.jv
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %.112421717.us.i, i64 %i.jv
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %.112451716.us.i, i64 %i.jv
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %.112471715.us.i, i64 %i.jv
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %.112491714.us.i, i64 %i.jv
  %i.ajd = add nuw nsw i32 %.112631712.us.i, 8    ; 3 uses
  %i.aje = or disjoint i32 %i.ajd, 7
  %i.ajf = icmp slt i32 %i.aje, %2
  br i1 %i.ajf, label %.preheader1579.us.i, label %._crit_edge1722.i, !llvm.loop !71

._crit_edge1722.i:                                ; preds = %._crit_edge1710.us.i, %.preheader1579.preheader.i, %.preheader1583.thread.i, %.preheader1583.i
  %.11263.lcssa.i = phi i32 [ %.01262.lcssa.i, %.preheader1583.i ], [ %i.kn, %.preheader1583.thread.i ], [ %i.agq, %.preheader1579.preheader.i ], [ %i.ajd, %._crit_edge1710.us.i ] ; 3 uses
  %.21252.lcssa.i = phi ptr [ %.01250.lcssa.i, %.preheader1583.i ], [ %i.adj, %.preheader1583.thread.i ], [ %.01250.lcssa24782498.i, %.preheader1579.preheader.i ], [ %i.aiu, %._crit_edge1710.us.i ] ; 2 uses
  %.11232.lcssa.i = phi ptr [ %.01231.lcssa.i, %.preheader1583.i ], [ %scevgep2208.i, %.preheader1583.thread.i ], [ %scevgep2236.i, %.preheader1579.preheader.i ], [ %i.aiv, %._crit_edge1710.us.i ] ; 2 uses
  %i.ajg = or disjoint i32 %.11263.lcssa.i, 3
  %i.ajh = icmp slt i32 %i.ajg, %2
  br i1 %i.ajh, label %.preheader1578.lr.ph.i, label %.preheader1582.i

.preheader1578.lr.ph.i:                           ; preds = %._crit_edge1722.i
  br i1 %i.jr, label %.preheader1578.us.i, label %._crit_edge1767.split.i

.preheader1578.us.i:                              ; preds = %.preheader1578.lr.ph.i, %._crit_edge1734.us.i
  %.212331738.us.i = phi ptr [ %i.alf, %._crit_edge1734.us.i ], [ %.11232.lcssa.i, %.preheader1578.lr.ph.i ] ; 4 uses
  %.412541737.us.i = phi ptr [ %.lcssa504, %._crit_edge1734.us.i ], [ %.21252.lcssa.i, %.preheader1578.lr.ph.i ] ; 2 uses
  %.212641736.us.i = phi i32 [ %i.alg, %._crit_edge1734.us.i ], [ %.11263.lcssa.i, %.preheader1578.lr.ph.i ]
  br i1 %i.kv, label %.epil.preheader539, label %.preheader1578.us.i.new

.preheader1578.us.i.new:                          ; preds = %.preheader1578.us.i, %.preheader1578.us.i.new
  %indvars.iv2244.i = phi i64 [ %indvars.iv.next2245.i.1, %.preheader1578.us.i.new ], [ 0, %.preheader1578.us.i ] ; 3 uses
  %.512551732.us.i = phi ptr [ %i.ako, %.preheader1578.us.i.new ], [ %.412541737.us.i, %.preheader1578.us.i ] ; 9 uses
  %niter546 = phi i64 [ %niter546.next.1, %.preheader1578.us.i.new ], [ 0, %.preheader1578.us.i ]
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %.212331738.us.i, i64 %indvars.iv2244.i ; 2 uses
  %i.ajj = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.aji, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ajk = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajj)
  store <8 x bfloat> %i.ajk, ptr %.512551732.us.i, align 1, !tbaa !18
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.aji, i64 %i.jz ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %.512551732.us.i, i64 16
  %i.ajn = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ajl, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ajo = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajn)
  store <8 x bfloat> %i.ajo, ptr %i.ajm, align 1, !tbaa !18
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.ajl, i64 %i.jz ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %.512551732.us.i, i64 32
  %i.ajr = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ajp, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ajs = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajr)
  store <8 x bfloat> %i.ajs, ptr %i.ajq, align 1, !tbaa !18
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.ajp, i64 %i.jz
  %i.aju = getelementptr inbounds nuw i8, ptr %.512551732.us.i, i64 48
  %i.ajv = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ajt, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ajw = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ajv)
  store <8 x bfloat> %i.ajw, ptr %i.aju, align 1, !tbaa !18
  %i.ajx = getelementptr inbounds nuw i8, ptr %.512551732.us.i, i64 64
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %.212331738.us.i, i64 %indvars.iv2244.i
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 4 ; 2 uses
  %i.aka = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ajz, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.akb = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aka)
  store <8 x bfloat> %i.akb, ptr %i.ajx, align 1, !tbaa !18
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %i.ajz, i64 %i.jz ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %.512551732.us.i, i64 80
  %i.ake = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.akc, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.akf = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ake)
  store <8 x bfloat> %i.akf, ptr %i.akd, align 1, !tbaa !18
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.jz ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %.512551732.us.i, i64 96
  %i.aki = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.akg, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.akj = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aki)
  store <8 x bfloat> %i.akj, ptr %i.akh, align 1, !tbaa !18
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr %i.akg, i64 %i.jz
  %i.akl = getelementptr inbounds nuw i8, ptr %.512551732.us.i, i64 112
  %i.akm = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.akk, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.akn = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.akm)
  store <8 x bfloat> %i.akn, ptr %i.akl, align 1, !tbaa !18
  %i.ako = getelementptr inbounds nuw i8, ptr %.512551732.us.i, i64 128 ; 3 uses
  %indvars.iv.next2245.i.1 = add nuw nsw i64 %indvars.iv2244.i, 2 ; 2 uses
  %niter546.next.1 = add i64 %niter546, 2         ; 2 uses
  %niter546.ncmp.1 = icmp eq i64 %niter546.next.1, %unroll_iter545
  br i1 %niter546.ncmp.1, label %._crit_edge1734.us.i.unr-lcssa, label %.preheader1578.us.i.new, !llvm.loop !72

._crit_edge1734.us.i.unr-lcssa:                   ; preds = %.preheader1578.us.i.new
  br i1 %lcmp.mod542.not, label %._crit_edge1734.us.i, label %.epil.preheader539

.epil.preheader539:                               ; preds = %._crit_edge1734.us.i.unr-lcssa, %.preheader1578.us.i
  %indvars.iv2244.i.epil.init = phi i64 [ 0, %.preheader1578.us.i ], [ %indvars.iv.next2245.i.1, %._crit_edge1734.us.i.unr-lcssa ]
  %.512551732.us.i.epil.init = phi ptr [ %.412541737.us.i, %.preheader1578.us.i ], [ %i.ako, %._crit_edge1734.us.i.unr-lcssa ] ; 5 uses
  tail call void @llvm.assume(i1 %lcmp.mod544)
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %.212331738.us.i, i64 %indvars.iv2244.i.epil.init ; 2 uses
  %i.akq = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.akp, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.akr = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.akq)
  store <8 x bfloat> %i.akr, ptr %.512551732.us.i.epil.init, align 1, !tbaa !18
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %i.akp, i64 %i.jz ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %.512551732.us.i.epil.init, i64 16
  %i.aku = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.aks, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.akv = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aku)
  store <8 x bfloat> %i.akv, ptr %i.akt, align 1, !tbaa !18
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.aks, i64 %i.jz ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %.512551732.us.i.epil.init, i64 32
  %i.aky = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.akw, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.akz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aky)
  store <8 x bfloat> %i.akz, ptr %i.akx, align 1, !tbaa !18
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %i.akw, i64 %i.jz
  %i.alb = getelementptr inbounds nuw i8, ptr %.512551732.us.i.epil.init, i64 48
  %i.alc = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ala, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ald = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.alc)
  store <8 x bfloat> %i.ald, ptr %i.alb, align 1, !tbaa !18
  %i.ale = getelementptr inbounds nuw i8, ptr %.512551732.us.i.epil.init, i64 64
  br label %._crit_edge1734.us.i

._crit_edge1734.us.i:                             ; preds = %._crit_edge1734.us.i.unr-lcssa, %.epil.preheader539
  %.lcssa504 = phi ptr [ %i.ako, %._crit_edge1734.us.i.unr-lcssa ], [ %i.ale, %.epil.preheader539 ] ; 2 uses
  %i.alf = getelementptr inbounds nuw [4 x i8], ptr %.212331738.us.i, i64 %i.kb ; 2 uses
  %i.alg = add nuw nsw i32 %.212641736.us.i, 4    ; 3 uses
  %i.alh = or disjoint i32 %i.alg, 3
  %i.ali = icmp slt i32 %i.alh, %2
  br i1 %i.ali, label %.preheader1578.us.i, label %.preheader1582.i, !llvm.loop !73

.preheader1582.i:                                 ; preds = %._crit_edge1734.us.i, %._crit_edge1722.i
  %.21264.lcssa.i = phi i32 [ %.11263.lcssa.i, %._crit_edge1722.i ], [ %i.alg, %._crit_edge1734.us.i ] ; 3 uses
  %.41254.lcssa.i = phi ptr [ %.21252.lcssa.i, %._crit_edge1722.i ], [ %.lcssa504, %._crit_edge1734.us.i ] ; 2 uses
  %.21233.lcssa.i = phi ptr [ %.11232.lcssa.i, %._crit_edge1722.i ], [ %i.alf, %._crit_edge1734.us.i ] ; 2 uses
  %i.alj = or disjoint i32 %.21264.lcssa.i, 1
  %i.alk = icmp slt i32 %i.alj, %2
  br i1 %i.alk, label %.preheader1577.lr.ph.i, label %.preheader1581.i

.preheader1577.lr.ph.i:                           ; preds = %.preheader1582.i
  br i1 %i.jr, label %.preheader1577.us.i, label %._crit_edge1767.split.i

.preheader1577.us.i:                              ; preds = %.preheader1577.lr.ph.i, %._crit_edge1750.us.i
  %.312341754.us.i = phi ptr [ %i.amk, %._crit_edge1750.us.i ], [ %.21233.lcssa.i, %.preheader1577.lr.ph.i ] ; 4 uses
  %.712571753.us.i = phi ptr [ %.lcssa507, %._crit_edge1750.us.i ], [ %.41254.lcssa.i, %.preheader1577.lr.ph.i ] ; 2 uses
  %.312651752.us.i = phi i32 [ %i.aml, %._crit_edge1750.us.i ], [ %.21264.lcssa.i, %.preheader1577.lr.ph.i ]
  br i1 %i.kw, label %.epil.preheader547, label %.preheader1577.us.i.new

.preheader1577.us.i.new:                          ; preds = %.preheader1577.us.i, %.preheader1577.us.i.new
  %indvars.iv2250.i = phi i64 [ %indvars.iv.next2251.i.1, %.preheader1577.us.i.new ], [ 0, %.preheader1577.us.i ] ; 3 uses
  %.812581748.us.i = phi ptr [ %i.amb, %.preheader1577.us.i.new ], [ %.712571753.us.i, %.preheader1577.us.i ] ; 5 uses
  %niter554 = phi i64 [ %niter554.next.1, %.preheader1577.us.i.new ], [ 0, %.preheader1577.us.i ]
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %.312341754.us.i, i64 %indvars.iv2250.i ; 2 uses
  %i.alm = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.all, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aln = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.alm)
  store <8 x bfloat> %i.aln, ptr %.812581748.us.i, align 1, !tbaa !18
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.all, i64 %i.jz
  %i.alp = getelementptr inbounds nuw i8, ptr %.812581748.us.i, i64 16
  %i.alq = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.alo, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.alr = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.alq)
  store <8 x bfloat> %i.alr, ptr %i.alp, align 1, !tbaa !18
  %i.als = getelementptr inbounds nuw i8, ptr %.812581748.us.i, i64 32
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %.312341754.us.i, i64 %indvars.iv2250.i
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 4 ; 2 uses
  %i.alv = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.alu, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.alw = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.alv)
  store <8 x bfloat> %i.alw, ptr %i.als, align 1, !tbaa !18
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.alu, i64 %i.jz
  %i.aly = getelementptr inbounds nuw i8, ptr %.812581748.us.i, i64 48
  %i.alz = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.alx, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ama = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.alz)
  store <8 x bfloat> %i.ama, ptr %i.aly, align 1, !tbaa !18
  %i.amb = getelementptr inbounds nuw i8, ptr %.812581748.us.i, i64 64 ; 3 uses
  %indvars.iv.next2251.i.1 = add nuw nsw i64 %indvars.iv2250.i, 2 ; 2 uses
  %niter554.next.1 = add i64 %niter554, 2         ; 2 uses
  %niter554.ncmp.1 = icmp eq i64 %niter554.next.1, %unroll_iter553
  br i1 %niter554.ncmp.1, label %._crit_edge1750.us.i.unr-lcssa, label %.preheader1577.us.i.new, !llvm.loop !74

._crit_edge1750.us.i.unr-lcssa:                   ; preds = %.preheader1577.us.i.new
  br i1 %lcmp.mod550.not, label %._crit_edge1750.us.i, label %.epil.preheader547

.epil.preheader547:                               ; preds = %._crit_edge1750.us.i.unr-lcssa, %.preheader1577.us.i
  %indvars.iv2250.i.epil.init = phi i64 [ 0, %.preheader1577.us.i ], [ %indvars.iv.next2251.i.1, %._crit_edge1750.us.i.unr-lcssa ]
  %.812581748.us.i.epil.init = phi ptr [ %.712571753.us.i, %.preheader1577.us.i ], [ %i.amb, %._crit_edge1750.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod552)
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %.312341754.us.i, i64 %indvars.iv2250.i.epil.init ; 2 uses
  %i.amd = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.amc, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ame = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.amd)
  store <8 x bfloat> %i.ame, ptr %.812581748.us.i.epil.init, align 1, !tbaa !18
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %i.amc, i64 %i.jz
  %i.amg = getelementptr inbounds nuw i8, ptr %.812581748.us.i.epil.init, i64 16
  %i.amh = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amf, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ami = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.amh)
  store <8 x bfloat> %i.ami, ptr %i.amg, align 1, !tbaa !18
  %i.amj = getelementptr inbounds nuw i8, ptr %.812581748.us.i.epil.init, i64 32
  br label %._crit_edge1750.us.i

._crit_edge1750.us.i:                             ; preds = %._crit_edge1750.us.i.unr-lcssa, %.epil.preheader547
  %.lcssa507 = phi ptr [ %i.amb, %._crit_edge1750.us.i.unr-lcssa ], [ %i.amj, %.epil.preheader547 ] ; 2 uses
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %.312341754.us.i, i64 %i.kd ; 2 uses
  %i.aml = add nuw nsw i32 %.312651752.us.i, 2    ; 3 uses
  %i.amm = or disjoint i32 %i.aml, 1
  %i.amn = icmp slt i32 %i.amm, %2
  br i1 %i.amn, label %.preheader1577.us.i, label %.preheader1581.i, !llvm.loop !75

.preheader1581.i:                                 ; preds = %._crit_edge1750.us.i, %.preheader1582.i
  %.31265.lcssa.i = phi i32 [ %.21264.lcssa.i, %.preheader1582.i ], [ %i.aml, %._crit_edge1750.us.i ] ; 2 uses
  %.71257.lcssa.i = phi ptr [ %.41254.lcssa.i, %.preheader1582.i ], [ %.lcssa507, %._crit_edge1750.us.i ]
  %.31234.lcssa.i = phi ptr [ %.21233.lcssa.i, %.preheader1582.i ], [ %i.amk, %._crit_edge1750.us.i ] ; 5 uses
  %i.amo = icmp sge i32 %.31265.lcssa.i, %2
  %brmerge2000.i = or i1 %i.ke, %i.amo
  br i1 %brmerge2000.i, label %._crit_edge1767.split.i, label %.preheader1576.i

.preheader1576.i:                                 ; preds = %.preheader1581.i, %._crit_edge1763.i
  %.1012601766.i = phi ptr [ %.lcssa510, %._crit_edge1763.i ], [ %.71257.lcssa.i, %.preheader1581.i ] ; 2 uses
  %.412661765.i = phi i32 [ %i.amt, %._crit_edge1763.i ], [ %.31265.lcssa.i, %.preheader1581.i ]
  br i1 %i.kx, label %.epil.preheader555, label %.preheader1576.i.new

._crit_edge1763.i.unr-lcssa:                      ; preds = %.preheader1576.i.new
  br i1 %lcmp.mod558.not, label %._crit_edge1763.i, label %.epil.preheader555

.epil.preheader555:                               ; preds = %._crit_edge1763.i.unr-lcssa, %.preheader1576.i
  %indvars.iv2255.i.epil.init = phi i64 [ 0, %.preheader1576.i ], [ %indvars.iv.next2256.i.3, %._crit_edge1763.i.unr-lcssa ]
  %.1112611761.i.epil.init = phi ptr [ %.1012601766.i, %.preheader1576.i ], [ %i.anm, %._crit_edge1763.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod560)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.epil.preheader555
  %indvars.iv2255.i.epil = phi i64 [ %indvars.iv2255.i.epil.init, %.epil.preheader555 ], [ %indvars.iv.next2256.i.epil, %bb.bc ] ; 2 uses
  %.1112611761.i.epil = phi ptr [ %.1112611761.i.epil.init, %.epil.preheader555 ], [ %i.ams, %bb.bc ] ; 2 uses
  %epil.iter557 = phi i64 [ 0, %.epil.preheader555 ], [ %epil.iter557.next, %bb.bc ]
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %.31234.lcssa.i, i64 %indvars.iv2255.i.epil
  %i.amq = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.amp, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.amr = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.amq)
  store <8 x bfloat> %i.amr, ptr %.1112611761.i.epil, align 1, !tbaa !18
  %i.ams = getelementptr inbounds nuw i8, ptr %.1112611761.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2256.i.epil = add nuw nsw i64 %indvars.iv2255.i.epil, 1
  %epil.iter557.next = add i64 %epil.iter557, 1   ; 2 uses
  %epil.iter557.cmp.not = icmp eq i64 %epil.iter557.next, %xtraiter556
  br i1 %epil.iter557.cmp.not, label %._crit_edge1763.i, label %bb.bc, !llvm.loop !76

._crit_edge1763.i:                                ; preds = %bb.bc, %._crit_edge1763.i.unr-lcssa
  %.lcssa510 = phi ptr [ %i.anm, %._crit_edge1763.i.unr-lcssa ], [ %i.ams, %bb.bc ]
  %i.amt = add nuw nsw i32 %.412661765.i, 1       ; 2 uses
  %exitcond2260.not.i = icmp eq i32 %i.amt, %2
  br i1 %exitcond2260.not.i, label %._crit_edge1767.split.i, label %.preheader1576.i, !llvm.loop !77

.preheader1576.i.new:                             ; preds = %.preheader1576.i, %.preheader1576.i.new
  %indvars.iv2255.i = phi i64 [ %indvars.iv.next2256.i.3, %.preheader1576.i.new ], [ 0, %.preheader1576.i ] ; 5 uses
  %.1112611761.i = phi ptr [ %i.anm, %.preheader1576.i.new ], [ %.1012601766.i, %.preheader1576.i ] ; 5 uses
  %niter562 = phi i64 [ %niter562.next.3, %.preheader1576.i.new ], [ 0, %.preheader1576.i ]
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr %.31234.lcssa.i, i64 %indvars.iv2255.i
  %i.amv = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.amu, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.amw = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.amv)
  store <8 x bfloat> %i.amw, ptr %.1112611761.i, align 1, !tbaa !18
  %i.amx = getelementptr inbounds nuw i8, ptr %.1112611761.i, i64 16
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %.31234.lcssa.i, i64 %indvars.iv2255.i
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 4
  %i.ana = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amz, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.anb = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ana)
  store <8 x bfloat> %i.anb, ptr %i.amx, align 1, !tbaa !18
  %i.anc = getelementptr inbounds nuw i8, ptr %.1112611761.i, i64 32
  %i.and = getelementptr inbounds nuw [4 x i8], ptr %.31234.lcssa.i, i64 %indvars.iv2255.i
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 8
  %i.anf = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ane, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ang = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.anf)
  store <8 x bfloat> %i.ang, ptr %i.anc, align 1, !tbaa !18
  %i.anh = getelementptr inbounds nuw i8, ptr %.1112611761.i, i64 48
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %.31234.lcssa.i, i64 %indvars.iv2255.i
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 12
  %i.ank = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.anj, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.anl = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ank)
  store <8 x bfloat> %i.anl, ptr %i.anh, align 1, !tbaa !18
  %i.anm = getelementptr inbounds nuw i8, ptr %.1112611761.i, i64 64 ; 3 uses
  %indvars.iv.next2256.i.3 = add nuw nsw i64 %indvars.iv2255.i, 4 ; 2 uses
  %niter562.next.3 = add i64 %niter562, 4         ; 2 uses
  %niter562.ncmp.3 = icmp eq i64 %niter562.next.3, %unroll_iter561
  br i1 %niter562.ncmp.3, label %._crit_edge1763.i.unr-lcssa, label %.preheader1576.i.new, !llvm.loop !78

._crit_edge1767.split.i:                          ; preds = %._crit_edge1763.i, %.preheader1581.i, %.preheader1577.lr.ph.i, %.preheader1578.lr.ph.i
  %indvars.iv.next2264.i = add nuw nsw i64 %indvars.iv2263.i, 8 ; 3 uses
  %i.ann = icmp slt i64 %indvars.iv.next2264.i, %invariant.op.i
  %indvars.iv.next2207.i = add i32 %indvars.iv2206.i, %i.kl
  %indvars.iv.next2262.i = add i32 %indvars.iv2261.i, 8
  br i1 %i.ann, label %_ZN4ncnn3MatD2Ev.exit1303.i, label %.preheader1575.loopexit.i, !llvm.loop !79

.preheader1566.loopexit.i:                        ; preds = %._crit_edge1853.split.i
  %i.ano = trunc nuw nsw i64 %indvars.iv.next2314.i to i32
  br label %.preheader1566.i

.preheader1566.i:                                 ; preds = %.preheader1566.loopexit.i, %.preheader1575.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1575.i ], [ %i.ano, %.preheader1566.loopexit.i ] ; 4 uses
  %i.anp = or disjoint i32 %.2.lcssa.i, 1         ; 3 uses
  %i.anq = icmp slt i32 %i.anp, %3
  br i1 %i.anq, label %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i, label %.preheader1556.i

_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i:                ; preds = %.preheader1566.i
  %i.anr = mul i32 %i.a, %2                       ; 5 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ant = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.anu = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %i.anv = shufflevector <4 x i32> %i.anu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.anw = mul <4 x i32> %i.anv, <i32 0, i32 1, i32 2, i32 3> ; 6 uses
  %i.anx = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %i.any = shufflevector <8 x i32> %i.anx, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.anz = mul <8 x i32> %i.any, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 6 uses
  %i.aoa = insertelement <16 x i32> poison, i32 %i.a, i64 0
  %i.aob = shufflevector <16 x i32> %i.aoa, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.aoc = mul <16 x i32> %i.aob, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 6 uses
  %i.aod = icmp sgt i32 %2, 15
  %i.aoe = icmp sgt i32 %i.a, 0                   ; 4 uses
  %i.aof = shl i32 %i.a, 4
  %i.aog = sext i32 %i.aof to i64                 ; 3 uses
  %i.aoh = shl i32 %i.a, 3
  %i.aoi = sext i32 %i.aoh to i64                 ; 3 uses
  %i.aoj = shl i32 %i.a, 2
  %i.aok = sext i32 %i.aoj to i64                 ; 2 uses
  %i.aol = sext i32 %i.a to i64                   ; 6 uses
  %i.aom = shl i32 %i.a, 1
  %i.aon = sext i32 %i.aom to i64                 ; 2 uses
  %i.aoo = icmp slt i32 %i.a, 1
  %i.aop = add i32 %2, -16                        ; 2 uses
  %i.aoq = lshr i32 %i.aop, 2
  %i.aor = and i32 %i.aoq, 1073741820
  %narrow2435.i = add nuw nsw i32 %i.aor, 4
  %i.aos = zext nneg i32 %narrow2435.i to i64
  %i.aot = mul nsw i64 %i.aog, %i.aos
  %i.aou = mul i32 %i.anr, %.2.lcssa.i
  %i.aov = shl i32 %i.anr, 1                      ; 2 uses
  %i.aow = mul i32 %i.anp, %i.anr
  %i.aox = and i32 %i.aop, -16
  %i.aoy = add nuw i32 %i.aox, 16                 ; 4 uses
  %i.aoz = add i32 %2, -8
  %i.apa = sext i32 %.2.lcssa.i to i64
  %i.apb = sext i32 %3 to i64
  %i.apc = or disjoint i32 %i.aoy, 7
  %i.apd = icmp slt i32 %i.apc, %2
  %wide.trip.count2326.i = zext i32 %i.a to i64   ; 19 uses
  %i.ape = add nsw i64 %wide.trip.count2326.i, -1 ; 3 uses
  %xtraiter580 = and i64 %wide.trip.count2326.i, 1
  %i.apf = icmp eq i64 %i.ape, 0
  %unroll_iter585 = and i64 %wide.trip.count2326.i, 2147483646
  %lcmp.mod582.not = icmp eq i64 %xtraiter580, 0
  %lcmp.mod584 = trunc i32 %i.a to i1
  %xtraiter588 = and i64 %wide.trip.count2326.i, 1
  %i.apg = icmp eq i64 %i.ape, 0
  %unroll_iter593 = and i64 %wide.trip.count2326.i, 2147483646
  %lcmp.mod590.not = icmp eq i64 %xtraiter588, 0
  %lcmp.mod592 = trunc i32 %i.a to i1
  %xtraiter596 = and i64 %wide.trip.count2326.i, 1
  %i.aph = icmp eq i64 %i.ape, 0
  %unroll_iter601 = and i64 %wide.trip.count2326.i, 2147483646
  %lcmp.mod598.not = icmp eq i64 %xtraiter596, 0
  %lcmp.mod600 = trunc i32 %i.a to i1
  %min.iters.check334 = icmp ult i32 %i.a, 4
  %min.iters.check336 = icmp ult i32 %i.a, 16
  %i.api = and i64 %wide.trip.count2326.i, 12
  %n.vec338 = and i64 %wide.trip.count2326.i, 2147483632 ; 5 uses
  %i.apj = shl nuw nsw i64 %n.vec338, 3
  %cmp.n349 = icmp eq i64 %n.vec338, %wide.trip.count2326.i
  %min.epilog.iters.check354 = icmp eq i64 %i.api, 0
  %n.vec356 = and i64 %wide.trip.count2326.i, 2147483644 ; 4 uses
  %i.apk = shl nuw nsw i64 %n.vec356, 3
  %cmp.n367 = icmp eq i64 %n.vec356, %wide.trip.count2326.i
  %min.iters.check = icmp ult i32 %i.a, 4
  %min.iters.check322 = icmp ult i32 %i.a, 16
  %i.apl = and i64 %wide.trip.count2326.i, 12
  %n.vec = and i64 %wide.trip.count2326.i, 2147483632 ; 5 uses
  %i.apm = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count2326.i
  %min.epilog.iters.check = icmp eq i64 %i.apl, 0
  %n.vec324 = and i64 %wide.trip.count2326.i, 2147483644 ; 4 uses
  %i.apn = shl nuw nsw i64 %n.vec324, 2
  %cmp.n331 = icmp eq i64 %n.vec324, %wide.trip.count2326.i
  br label %_ZN4ncnn3MatD2Ev.exit1301.i

_ZN4ncnn3MatD2Ev.exit1302.i:                      ; preds = %._crit_edge1853.split.i, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i
  %indvars.iv2313.i = phi i64 [ %i.abi, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i ], [ %indvars.iv.next2314.i, %._crit_edge1853.split.i ] ; 2 uses
  %i.apo = phi i32 [ %i.zp, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i ], [ %i.aym, %._crit_edge1853.split.i ]
  %i.app = phi <4 x i32> [ %i.abe, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i ], [ %i.ayl, %._crit_edge1853.split.i ] ; 2 uses
  %i.apq = sext <4 x i32> %i.app to <4 x i64>
  %i.apr = shl nsw <4 x i64> %i.apq, splat (i64 2) ; 4 uses
  %i.aps = load ptr, ptr %0, align 8, !tbaa !15   ; 5 uses
  %i.apt = trunc i64 %indvars.iv2313.i to i32     ; 6 uses
  %i.apu = mul i32 %i.zu, %i.apt
  %i.apv = sext i32 %i.apu to i64
  %i.apw = getelementptr inbounds [4 x i8], ptr %i.aps, i64 %i.apv ; 2 uses
  %i.apx = add i32 %i.apt, 1
  %i.apy = mul i32 %i.apx, %i.zu
  %i.apz = sext i32 %i.apy to i64
  %i.aqa = getelementptr inbounds [4 x i8], ptr %i.aps, i64 %i.apz ; 2 uses
  %i.aqb = add i32 %i.apt, 2
end_hunk_0
begin_hunk_1_@_ZN4ncnn52convolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %scevgep2289.i = getelementptr i8, ptr %.01207.lcssa25252536.i, i64 %i.asp
  %i.asq = add i32 %.01191.lcssa25272534.i, 8
  %i.asr = and i32 %i.asl, -8
  %i.ass = add i32 %i.asq, %i.asr
  br label %.preheader1573.i

.preheader1570.us.i:                              ; preds = %.preheader1570.lr.ph.i, %._crit_edge1794.us.i
  %.111921801.us.i = phi i32 [ %i.atv, %._crit_edge1794.us.i ], [ %.01191.lcssa.i, %.preheader1570.lr.ph.i ]
  %.211981800.us.i = phi ptr [ %i.atq, %._crit_edge1794.us.i ], [ %.01196.lcssa.i, %.preheader1570.lr.ph.i ]
  %.112081799.us.i = phi ptr [ %i.atu, %._crit_edge1794.us.i ], [ %.01207.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  %.112111798.us.i = phi ptr [ %i.att, %._crit_edge1794.us.i ], [ %.01210.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  %.112141797.us.i = phi ptr [ %i.ats, %._crit_edge1794.us.i ], [ %.01213.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  %.112171796.us.i = phi ptr [ %i.atr, %._crit_edge1794.us.i ], [ %.01216.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.preheader1570.us.i
  %indvars.iv2290.i = phi i64 [ 0, %.preheader1570.us.i ], [ %indvars.iv.next2291.i, %bb.be ] ; 5 uses
  %.311991792.us.i = phi ptr [ %.211981800.us.i, %.preheader1570.us.i ], [ %i.atq, %bb.be ] ; 5 uses
  %i.ast = getelementptr inbounds nuw [4 x i8], ptr %.112171796.us.i, i64 %indvars.iv2290.i
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %.112141797.us.i, i64 %indvars.iv2290.i
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %.112111798.us.i, i64 %indvars.iv2290.i
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %.112081799.us.i, i64 %indvars.iv2290.i
  %i.asx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ast, <8 x i32> %i.aac, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.asy = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.asu, <8 x i32> %i.aac, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.asz = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.asv, <8 x i32> %i.aac, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ata = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.asw, <8 x i32> %i.aac, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.atb = shufflevector <8 x float> %i.asx, <8 x float> %i.asy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.atc = shufflevector <8 x float> %i.asx, <8 x float> %i.asy, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.atd = shufflevector <8 x float> %i.asz, <8 x float> %i.ata, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ate = shufflevector <8 x float> %i.asz, <8 x float> %i.ata, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.atf = shufflevector <8 x float> %i.atb, <8 x float> %i.atd, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.atg = shufflevector <8 x float> %i.atc, <8 x float> %i.ate, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.ath = shufflevector <8 x float> %i.atb, <8 x float> %i.atd, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.ati = shufflevector <8 x float> %i.atc, <8 x float> %i.ate, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.atj = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.atf)
  store <8 x bfloat> %i.atj, ptr %.311991792.us.i, align 1, !tbaa !18
  %i.atk = getelementptr inbounds nuw i8, ptr %.311991792.us.i, i64 16
  %i.atl = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.atg)
  store <8 x bfloat> %i.atl, ptr %i.atk, align 1, !tbaa !18
  %i.atm = getelementptr inbounds nuw i8, ptr %.311991792.us.i, i64 32
  %i.atn = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ath)
  store <8 x bfloat> %i.atn, ptr %i.atm, align 1, !tbaa !18
  %i.ato = getelementptr inbounds nuw i8, ptr %.311991792.us.i, i64 48
  %i.atp = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ati)
  store <8 x bfloat> %i.atp, ptr %i.ato, align 1, !tbaa !18
  %i.atq = getelementptr inbounds nuw i8, ptr %.311991792.us.i, i64 64 ; 3 uses
  %indvars.iv.next2291.i = add nuw nsw i64 %indvars.iv2290.i, 1 ; 2 uses
  %exitcond2294.not.i = icmp eq i64 %indvars.iv.next2291.i, %wide.trip.count2284.i
  br i1 %exitcond2294.not.i, label %._crit_edge1794.us.i, label %bb.be, !llvm.loop !84

._crit_edge1794.us.i:                             ; preds = %bb.be
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr %.112171796.us.i, i64 %i.aal ; 2 uses
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %.112141797.us.i, i64 %i.aal ; 2 uses
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %.112111798.us.i, i64 %i.aal ; 2 uses
  %i.atu = getelementptr inbounds nuw [4 x i8], ptr %.112081799.us.i, i64 %i.aal ; 2 uses
  %i.atv = add nuw nsw i32 %.111921801.us.i, 8    ; 3 uses
  %i.atw = or disjoint i32 %i.atv, 7
  %i.atx = icmp slt i32 %i.atw, %2
  br i1 %i.atx, label %.preheader1570.us.i, label %.preheader1573.i, !llvm.loop !85

.preheader1573.i:                                 ; preds = %._crit_edge1794.us.i, %.preheader1570.preheader.i, %.preheader1574.thread.i, %.preheader1574.i
  %.11217.lcssa.i = phi ptr [ %.01216.lcssa.i, %.preheader1574.i ], [ %scevgep2271.i, %.preheader1574.thread.i ], [ %scevgep2286.i, %.preheader1570.preheader.i ], [ %i.atr, %._crit_edge1794.us.i ] ; 2 uses
  %.11214.lcssa.i = phi ptr [ %.01213.lcssa.i, %.preheader1574.i ], [ %scevgep2274.i, %.preheader1574.thread.i ], [ %scevgep2287.i, %.preheader1570.preheader.i ], [ %i.ats, %._crit_edge1794.us.i ]
  %.11211.lcssa.i = phi ptr [ %.01210.lcssa.i, %.preheader1574.i ], [ %scevgep2277.i, %.preheader1574.thread.i ], [ %scevgep2288.i, %.preheader1570.preheader.i ], [ %i.att, %._crit_edge1794.us.i ]
  %.11208.lcssa.i = phi ptr [ %.01207.lcssa.i, %.preheader1574.i ], [ %scevgep2280.i, %.preheader1574.thread.i ], [ %scevgep2289.i, %.preheader1570.preheader.i ], [ %i.atu, %._crit_edge1794.us.i ]
  %.21198.lcssa.i = phi ptr [ %.01196.lcssa.i, %.preheader1574.i ], [ %i.aqv, %.preheader1574.thread.i ], [ %.01196.lcssa25262535.i, %.preheader1570.preheader.i ], [ %i.atq, %._crit_edge1794.us.i ] ; 2 uses
  %.11192.lcssa.i = phi i32 [ %.01191.lcssa.i, %.preheader1574.i ], [ %i.abg, %.preheader1574.thread.i ], [ %i.ass, %.preheader1570.preheader.i ], [ %i.atv, %._crit_edge1794.us.i ] ; 3 uses
  %i.aty = or disjoint i32 %.11192.lcssa.i, 3
  %i.atz = icmp slt i32 %i.aty, %2
  br i1 %i.atz, label %.preheader1569.lr.ph.i, label %._crit_edge1824.i

.preheader1569.lr.ph.i:                           ; preds = %.preheader1573.i
  br i1 %i.aah, label %.preheader1569.us.i, label %._crit_edge1853.split.i

.preheader1569.us.i:                              ; preds = %.preheader1569.lr.ph.i, %._crit_edge1816.us.i
  %.211931823.us.i = phi i32 [ %i.avg, %._crit_edge1816.us.i ], [ %.11192.lcssa.i, %.preheader1569.lr.ph.i ]
  %.412001822.us.i = phi ptr [ %i.avb, %._crit_edge1816.us.i ], [ %.21198.lcssa.i, %.preheader1569.lr.ph.i ]
  %.212091821.us.i = phi ptr [ %i.avf, %._crit_edge1816.us.i ], [ %.11208.lcssa.i, %.preheader1569.lr.ph.i ] ; 2 uses
  %.212121820.us.i = phi ptr [ %i.ave, %._crit_edge1816.us.i ], [ %.11211.lcssa.i, %.preheader1569.lr.ph.i ] ; 2 uses
  %.212151819.us.i = phi ptr [ %i.avd, %._crit_edge1816.us.i ], [ %.11214.lcssa.i, %.preheader1569.lr.ph.i ] ; 2 uses
  %.212181818.us.i = phi ptr [ %i.avc, %._crit_edge1816.us.i ], [ %.11217.lcssa.i, %.preheader1569.lr.ph.i ] ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.preheader1569.us.i
  %indvars.iv2296.i = phi i64 [ 0, %.preheader1569.us.i ], [ %indvars.iv.next2297.i, %bb.bf ] ; 5 uses
  %.512011814.us.i = phi ptr [ %.412001822.us.i, %.preheader1569.us.i ], [ %i.avb, %bb.bf ] ; 3 uses
  %i.aua = getelementptr inbounds nuw [4 x i8], ptr %.212181818.us.i, i64 %indvars.iv2296.i
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %.212151819.us.i, i64 %indvars.iv2296.i
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr %.212121820.us.i, i64 %indvars.iv2296.i
  %i.aud = getelementptr inbounds nuw [4 x i8], ptr %.212091821.us.i, i64 %indvars.iv2296.i
  %i.aue = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.aua, <4 x i32> %i.zz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.auf = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.aub, <4 x i32> %i.zz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.aug = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.auc, <4 x i32> %i.zz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.auh = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.aud, <4 x i32> %i.zz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.aui = shufflevector <4 x float> %i.aue, <4 x float> %i.auf, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.auj = shufflevector <4 x float> %i.aug, <4 x float> %i.auh, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.auk = shufflevector <4 x float> %i.aue, <4 x float> %i.auf, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aul = shufflevector <4 x float> %i.aug, <4 x float> %i.auh, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aum = shufflevector <4 x float> %i.aui, <4 x float> %i.auj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aun = shufflevector <4 x float> %i.auj, <4 x float> %i.aui, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.auo = shufflevector <4 x float> %i.auk, <4 x float> %i.aul, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aup = shufflevector <4 x float> %i.aul, <4 x float> %i.auk, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.auq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.aum)
  %i.aur = bitcast <8 x bfloat> %i.auq to <2 x i64>
  %i.aus = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.aun)
  %i.aut = bitcast <8 x bfloat> %i.aus to <2 x i64>
  %i.auu = shufflevector <2 x i64> %i.aur, <2 x i64> %i.aut, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.auu, ptr %.512011814.us.i, align 1, !tbaa !18
  %i.auv = getelementptr inbounds nuw i8, ptr %.512011814.us.i, i64 16
  %i.auw = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.auo)
  %i.aux = bitcast <8 x bfloat> %i.auw to <2 x i64>
  %i.auy = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.aup)
  %i.auz = bitcast <8 x bfloat> %i.auy to <2 x i64>
  %i.ava = shufflevector <2 x i64> %i.aux, <2 x i64> %i.auz, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.ava, ptr %i.auv, align 1, !tbaa !18
  %i.avb = getelementptr inbounds nuw i8, ptr %.512011814.us.i, i64 32 ; 3 uses
  %indvars.iv.next2297.i = add nuw nsw i64 %indvars.iv2296.i, 1 ; 2 uses
  %exitcond2300.not.i = icmp eq i64 %indvars.iv.next2297.i, %wide.trip.count2284.i
  br i1 %exitcond2300.not.i, label %._crit_edge1816.us.i, label %bb.bf, !llvm.loop !86

._crit_edge1816.us.i:                             ; preds = %bb.bf
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %.212181818.us.i, i64 %i.aan ; 2 uses
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %.212151819.us.i, i64 %i.aan
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %.212121820.us.i, i64 %i.aan
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %.212091821.us.i, i64 %i.aan
  %i.avg = add nuw nsw i32 %.211931823.us.i, 4    ; 3 uses
  %i.avh = or disjoint i32 %i.avg, 3
  %i.avi = icmp slt i32 %i.avh, %2
  br i1 %i.avi, label %.preheader1569.us.i, label %._crit_edge1824.i, !llvm.loop !87

._crit_edge1824.i:                                ; preds = %._crit_edge1816.us.i, %.preheader1573.i
  %.21218.lcssa.i = phi ptr [ %.11217.lcssa.i, %.preheader1573.i ], [ %i.avc, %._crit_edge1816.us.i ] ; 2 uses
  %.41200.lcssa.i = phi ptr [ %.21198.lcssa.i, %.preheader1573.i ], [ %i.avb, %._crit_edge1816.us.i ] ; 2 uses
  %.21193.lcssa.i = phi i32 [ %.11192.lcssa.i, %.preheader1573.i ], [ %i.avg, %._crit_edge1816.us.i ] ; 3 uses
  %i.avj = or disjoint i32 %.21193.lcssa.i, 1
  %i.avk = icmp slt i32 %i.avj, %2
  br i1 %i.avk, label %.preheader1568.lr.ph.i, label %.preheader1572.i

.preheader1568.lr.ph.i:                           ; preds = %._crit_edge1824.i
  br i1 %i.aah, label %.preheader1568.us.i, label %._crit_edge1853.split.i

.preheader1568.us.i:                              ; preds = %.preheader1568.lr.ph.i, %._crit_edge1836.us.i
  %.311941840.us.i = phi i32 [ %i.awx, %._crit_edge1836.us.i ], [ %.21193.lcssa.i, %.preheader1568.lr.ph.i ]
  %.612021839.us.i = phi ptr [ %.lcssa488, %._crit_edge1836.us.i ], [ %.41200.lcssa.i, %.preheader1568.lr.ph.i ] ; 2 uses
  %.312191838.us.i = phi ptr [ %i.aww, %._crit_edge1836.us.i ], [ %.21218.lcssa.i, %.preheader1568.lr.ph.i ] ; 4 uses
  br i1 %i.abp, label %.epil.preheader563, label %.preheader1568.us.i.new

.preheader1568.us.i.new:                          ; preds = %.preheader1568.us.i, %.preheader1568.us.i.new
  %indvars.iv2302.i = phi i64 [ %indvars.iv.next2303.i.1, %.preheader1568.us.i.new ], [ 0, %.preheader1568.us.i ] ; 3 uses
  %.712031834.us.i = phi ptr [ %i.awj, %.preheader1568.us.i.new ], [ %.612021839.us.i, %.preheader1568.us.i ] ; 5 uses
  %niter570 = phi i64 [ %niter570.next.1, %.preheader1568.us.i.new ], [ 0, %.preheader1568.us.i ]
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %.312191838.us.i, i64 %indvars.iv2302.i ; 2 uses
  %i.avm = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.avl, <4 x i32> %i.aaq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.avn = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.avm)
  %i.avo = bitcast <8 x bfloat> %i.avn to <2 x i64>
  %i.avp = extractelement <2 x i64> %i.avo, i64 0
  store i64 %i.avp, ptr %.712031834.us.i, align 1, !tbaa !18
  %i.avq = getelementptr inbounds nuw [4 x i8], ptr %i.avl, i64 %i.aar
  %i.avr = getelementptr inbounds nuw i8, ptr %.712031834.us.i, i64 8
  %i.avs = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.avq, <4 x i32> %i.aaq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.avt = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.avs)
  %i.avu = bitcast <8 x bfloat> %i.avt to <2 x i64>
  %i.avv = extractelement <2 x i64> %i.avu, i64 0
  store i64 %i.avv, ptr %i.avr, align 1, !tbaa !18
  %i.avw = getelementptr inbounds nuw i8, ptr %.712031834.us.i, i64 16
  %i.avx = getelementptr inbounds nuw [4 x i8], ptr %.312191838.us.i, i64 %indvars.iv2302.i
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 4 ; 2 uses
  %i.avz = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.avy, <4 x i32> %i.aaq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.awa = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.avz)
  %i.awb = bitcast <8 x bfloat> %i.awa to <2 x i64>
  %i.awc = extractelement <2 x i64> %i.awb, i64 0
  store i64 %i.awc, ptr %i.avw, align 1, !tbaa !18
  %i.awd = getelementptr inbounds nuw [4 x i8], ptr %i.avy, i64 %i.aar
  %i.awe = getelementptr inbounds nuw i8, ptr %.712031834.us.i, i64 24
  %i.awf = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.awd, <4 x i32> %i.aaq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.awg = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.awf)
  %i.awh = bitcast <8 x bfloat> %i.awg to <2 x i64>
  %i.awi = extractelement <2 x i64> %i.awh, i64 0
  store i64 %i.awi, ptr %i.awe, align 1, !tbaa !18
  %i.awj = getelementptr inbounds nuw i8, ptr %.712031834.us.i, i64 32 ; 3 uses
  %indvars.iv.next2303.i.1 = add nuw nsw i64 %indvars.iv2302.i, 2 ; 2 uses
  %niter570.next.1 = add i64 %niter570, 2         ; 2 uses
  %niter570.ncmp.1 = icmp eq i64 %niter570.next.1, %unroll_iter569
  br i1 %niter570.ncmp.1, label %._crit_edge1836.us.i.unr-lcssa, label %.preheader1568.us.i.new, !llvm.loop !88

._crit_edge1836.us.i.unr-lcssa:                   ; preds = %.preheader1568.us.i.new
  br i1 %lcmp.mod566.not, label %._crit_edge1836.us.i, label %.epil.preheader563

.epil.preheader563:                               ; preds = %._crit_edge1836.us.i.unr-lcssa, %.preheader1568.us.i
  %indvars.iv2302.i.epil.init = phi i64 [ 0, %.preheader1568.us.i ], [ %indvars.iv.next2303.i.1, %._crit_edge1836.us.i.unr-lcssa ]
  %.712031834.us.i.epil.init = phi ptr [ %.612021839.us.i, %.preheader1568.us.i ], [ %i.awj, %._crit_edge1836.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod568)
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %.312191838.us.i, i64 %indvars.iv2302.i.epil.init ; 2 uses
  %i.awl = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.awk, <4 x i32> %i.aaq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.awm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.awl)
  %i.awn = bitcast <8 x bfloat> %i.awm to <2 x i64>
  %i.awo = extractelement <2 x i64> %i.awn, i64 0
  store i64 %i.awo, ptr %.712031834.us.i.epil.init, align 1, !tbaa !18
  %i.awp = getelementptr inbounds nuw [4 x i8], ptr %i.awk, i64 %i.aar
  %i.awq = getelementptr inbounds nuw i8, ptr %.712031834.us.i.epil.init, i64 8
  %i.awr = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.awp, <4 x i32> %i.aaq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aws = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.awr)
  %i.awt = bitcast <8 x bfloat> %i.aws to <2 x i64>
  %i.awu = extractelement <2 x i64> %i.awt, i64 0
  store i64 %i.awu, ptr %i.awq, align 1, !tbaa !18
  %i.awv = getelementptr inbounds nuw i8, ptr %.712031834.us.i.epil.init, i64 16
  br label %._crit_edge1836.us.i

._crit_edge1836.us.i:                             ; preds = %._crit_edge1836.us.i.unr-lcssa, %.epil.preheader563
  %.lcssa488 = phi ptr [ %i.awj, %._crit_edge1836.us.i.unr-lcssa ], [ %i.awv, %.epil.preheader563 ] ; 2 uses
  %i.aww = getelementptr inbounds nuw [4 x i8], ptr %.312191838.us.i, i64 %i.aat ; 2 uses
  %i.awx = add nuw nsw i32 %.311941840.us.i, 2    ; 3 uses
  %i.awy = or disjoint i32 %i.awx, 1
  %i.awz = icmp slt i32 %i.awy, %2
  br i1 %i.awz, label %.preheader1568.us.i, label %.preheader1572.i, !llvm.loop !89

.preheader1572.i:                                 ; preds = %._crit_edge1836.us.i, %._crit_edge1824.i
  %.31219.lcssa.i = phi ptr [ %.21218.lcssa.i, %._crit_edge1824.i ], [ %i.aww, %._crit_edge1836.us.i ] ; 5 uses
  %.61202.lcssa.i = phi ptr [ %.41200.lcssa.i, %._crit_edge1824.i ], [ %.lcssa488, %._crit_edge1836.us.i ]
  %.31194.lcssa.i = phi i32 [ %.21193.lcssa.i, %._crit_edge1824.i ], [ %i.awx, %._crit_edge1836.us.i ] ; 2 uses
  %i.axa = icmp sge i32 %.31194.lcssa.i, %2
  %brmerge2003.i = or i1 %i.aau, %i.axa
  br i1 %brmerge2003.i, label %._crit_edge1853.split.i, label %.preheader1567.i

.preheader1567.i:                                 ; preds = %.preheader1572.i, %._crit_edge1849.i
  %.411951852.i = phi i32 [ %i.axh, %._crit_edge1849.i ], [ %.31194.lcssa.i, %.preheader1572.i ]
  %.912051851.i = phi ptr [ %.lcssa491, %._crit_edge1849.i ], [ %.61202.lcssa.i, %.preheader1572.i ] ; 2 uses
  br i1 %i.abq, label %.epil.preheader571, label %.preheader1567.i.new

._crit_edge1849.i.unr-lcssa:                      ; preds = %.preheader1567.i.new
  br i1 %lcmp.mod574.not, label %._crit_edge1849.i, label %.epil.preheader571

.epil.preheader571:                               ; preds = %._crit_edge1849.i.unr-lcssa, %.preheader1567.i
  %indvars.iv2307.i.epil.init = phi i64 [ 0, %.preheader1567.i ], [ %indvars.iv.next2308.i.3, %._crit_edge1849.i.unr-lcssa ]
  %.1012061847.i.epil.init = phi ptr [ %.912051851.i, %.preheader1567.i ], [ %i.ayi, %._crit_edge1849.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod576)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.epil.preheader571
  %indvars.iv2307.i.epil = phi i64 [ %indvars.iv2307.i.epil.init, %.epil.preheader571 ], [ %indvars.iv.next2308.i.epil, %bb.bg ] ; 2 uses
  %.1012061847.i.epil = phi ptr [ %.1012061847.i.epil.init, %.epil.preheader571 ], [ %i.axg, %bb.bg ] ; 2 uses
  %epil.iter573 = phi i64 [ 0, %.epil.preheader571 ], [ %epil.iter573.next, %bb.bg ]
  %i.axb = getelementptr inbounds nuw [4 x i8], ptr %.31219.lcssa.i, i64 %indvars.iv2307.i.epil
  %i.axc = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.axb, <4 x i32> %i.aaq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.axd = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.axc)
  %i.axe = bitcast <8 x bfloat> %i.axd to <2 x i64>
  %i.axf = extractelement <2 x i64> %i.axe, i64 0
  store i64 %i.axf, ptr %.1012061847.i.epil, align 1, !tbaa !18
  %i.axg = getelementptr inbounds nuw i8, ptr %.1012061847.i.epil, i64 8 ; 2 uses
  %indvars.iv.next2308.i.epil = add nuw nsw i64 %indvars.iv2307.i.epil, 1
  %epil.iter573.next = add i64 %epil.iter573, 1   ; 2 uses
  %epil.iter573.cmp.not = icmp eq i64 %epil.iter573.next, %xtraiter572
  br i1 %epil.iter573.cmp.not, label %._crit_edge1849.i, label %bb.bg, !llvm.loop !90

._crit_edge1849.i:                                ; preds = %bb.bg, %._crit_edge1849.i.unr-lcssa
  %.lcssa491 = phi ptr [ %i.ayi, %._crit_edge1849.i.unr-lcssa ], [ %i.axg, %bb.bg ]
  %i.axh = add nuw nsw i32 %.411951852.i, 1       ; 2 uses
  %exitcond2312.not.i = icmp eq i32 %i.axh, %2
  br i1 %exitcond2312.not.i, label %._crit_edge1853.split.i, label %.preheader1567.i, !llvm.loop !91

.preheader1567.i.new:                             ; preds = %.preheader1567.i, %.preheader1567.i.new
  %indvars.iv2307.i = phi i64 [ %indvars.iv.next2308.i.3, %.preheader1567.i.new ], [ 0, %.preheader1567.i ] ; 5 uses
  %.1012061847.i = phi ptr [ %i.ayi, %.preheader1567.i.new ], [ %.912051851.i, %.preheader1567.i ] ; 5 uses
  %niter578 = phi i64 [ %niter578.next.3, %.preheader1567.i.new ], [ 0, %.preheader1567.i ]
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %.31219.lcssa.i, i64 %indvars.iv2307.i
  %i.axj = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.axi, <4 x i32> %i.aaq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.axk = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.axj)
  %i.axl = bitcast <8 x bfloat> %i.axk to <2 x i64>
  %i.axm = extractelement <2 x i64> %i.axl, i64 0
  store i64 %i.axm, ptr %.1012061847.i, align 1, !tbaa !18
  %i.axn = getelementptr inbounds nuw i8, ptr %.1012061847.i, i64 8
  %i.axo = getelementptr inbounds nuw [4 x i8], ptr %.31219.lcssa.i, i64 %indvars.iv2307.i
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 4
  %i.axq = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.axp, <4 x i32> %i.aaq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.axr = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.axq)
  %i.axs = bitcast <8 x bfloat> %i.axr to <2 x i64>
  %i.axt = extractelement <2 x i64> %i.axs, i64 0
  store i64 %i.axt, ptr %i.axn, align 1, !tbaa !18
  %i.axu = getelementptr inbounds nuw i8, ptr %.1012061847.i, i64 16
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %.31219.lcssa.i, i64 %indvars.iv2307.i
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 8
  %i.axx = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.axw, <4 x i32> %i.aaq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.axy = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.axx)
  %i.axz = bitcast <8 x bfloat> %i.axy to <2 x i64>
  %i.aya = extractelement <2 x i64> %i.axz, i64 0
  store i64 %i.aya, ptr %i.axu, align 1, !tbaa !18
  %i.ayb = getelementptr inbounds nuw i8, ptr %.1012061847.i, i64 24
  %i.ayc = getelementptr inbounds nuw [4 x i8], ptr %.31219.lcssa.i, i64 %indvars.iv2307.i
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayc, i64 12
  %i.aye = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.ayd, <4 x i32> %i.aaq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ayf = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.aye)
  %i.ayg = bitcast <8 x bfloat> %i.ayf to <2 x i64>
  %i.ayh = extractelement <2 x i64> %i.ayg, i64 0
  store i64 %i.ayh, ptr %i.ayb, align 1, !tbaa !18
  %i.ayi = getelementptr inbounds nuw i8, ptr %.1012061847.i, i64 32 ; 3 uses
  %indvars.iv.next2308.i.3 = add nuw nsw i64 %indvars.iv2307.i, 4 ; 2 uses
  %niter578.next.3 = add i64 %niter578, 4         ; 2 uses
  %niter578.ncmp.3 = icmp eq i64 %niter578.next.3, %unroll_iter577
  br i1 %niter578.ncmp.3, label %._crit_edge1849.i.unr-lcssa, label %.preheader1567.i.new, !llvm.loop !92

._crit_edge1853.split.i:                          ; preds = %._crit_edge1849.i, %.preheader1572.i, %.preheader1568.lr.ph.i, %.preheader1569.lr.ph.i
  %indvars.iv.next2314.i = add nuw nsw i64 %indvars.iv2313.i, 4 ; 3 uses
  %i.ayj = or disjoint i64 %indvars.iv.next2314.i, 3 ; 2 uses
  %i.ayk = icmp slt i64 %i.ayj, %i.abj
  %i.ayl = add <4 x i32> %i.app, %i.abn
  %i.aym = trunc nuw nsw i64 %i.ayj to i32
  br i1 %i.ayk, label %_ZN4ncnn3MatD2Ev.exit1302.i, label %.preheader1566.loopexit.i, !llvm.loop !93

.preheader1556.loopexit.i:                        ; preds = %._crit_edge1930.split.i
  %i.ayn = trunc nsw i64 %indvars.iv.next2356.i to i32
  br label %.preheader1556.i

.preheader1556.i:                                 ; preds = %.preheader1556.loopexit.i, %.preheader1566.i
  %.3.lcssa.i = phi i32 [ %.2.lcssa.i, %.preheader1566.i ], [ %i.ayn, %.preheader1556.loopexit.i ] ; 3 uses
  %i.ayo = icmp slt i32 %.3.lcssa.i, %3
  br i1 %i.ayo, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1556.i
  %i.ayp = mul i32 %i.a, %2                       ; 3 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ayr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ays = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %i.ayt = shufflevector <4 x i32> %i.ays, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ayu = mul <4 x i32> %i.ayt, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.ayv = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %i.ayw = shufflevector <8 x i32> %i.ayv, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ayx = mul <8 x i32> %i.ayw, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.ayy = insertelement <16 x i32> poison, i32 %i.a, i64 0
  %i.ayz = shufflevector <16 x i32> %i.ayy, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.aza = mul <16 x i32> %i.ayz, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 5 uses
  %i.azb = icmp sgt i32 %2, 15
  %i.azc = icmp sgt i32 %i.a, 0                   ; 4 uses
  %i.azd = shl i32 %i.a, 4
  %i.aze = sext i32 %i.azd to i64                 ; 2 uses
  %i.azf = shl i32 %i.a, 3
  %i.azg = sext i32 %i.azf to i64                 ; 2 uses
  %i.azh = shl i32 %i.a, 2
  %i.azi = sext i32 %i.azh to i64
  %i.azj = sext i32 %i.a to i64                   ; 3 uses
  %i.azk = shl i32 %i.a, 1
  %i.azl = sext i32 %i.azk to i64
  %i.azm = icmp slt i32 %i.a, 1
  %i.azn = add i32 %2, -16                        ; 2 uses
  %i.azo = lshr i32 %i.azn, 2
  %i.azp = and i32 %i.azo, 1073741820
  %narrow2437.i = add nuw nsw i32 %i.azp, 4
  %i.azq = zext nneg i32 %narrow2437.i to i64
  %i.azr = mul nsw i64 %i.aze, %i.azq
  %i.azs = mul i32 %i.ayp, %.3.lcssa.i
  %i.azt = and i32 %i.azn, -16
  %i.azu = add nuw i32 %i.azt, 16                 ; 4 uses
  %i.azv = add i32 %2, -8
  %i.azw = sext i32 %.3.lcssa.i to i64
  %wide.trip.count2394.i = sext i32 %3 to i64
  %i.azx = or disjoint i32 %i.azu, 7
  %i.azy = icmp slt i32 %i.azx, %2
  %wide.trip.count2365.i = zext i32 %i.a to i64   ; 19 uses
  %i.azz = add nsw i64 %wide.trip.count2365.i, -1 ; 3 uses
  %xtraiter604 = and i64 %wide.trip.count2365.i, 3 ; 3 uses
  %i.baa = icmp ult i64 %i.azz, 3
  %unroll_iter609 = and i64 %wide.trip.count2365.i, 2147483644
  %lcmp.mod606.not = icmp eq i64 %xtraiter604, 0
  %lcmp.mod608 = icmp ne i64 %xtraiter604, 0
  %xtraiter612 = and i64 %wide.trip.count2365.i, 3 ; 3 uses
  %i.bab = icmp ult i64 %i.azz, 3
  %unroll_iter617 = and i64 %wide.trip.count2365.i, 2147483644
  %lcmp.mod614.not = icmp eq i64 %xtraiter612, 0
  %lcmp.mod616 = icmp ne i64 %xtraiter612, 0
  %xtraiter620 = and i64 %wide.trip.count2365.i, 3 ; 3 uses
  %i.bac = icmp ult i64 %i.azz, 3
  %unroll_iter625 = and i64 %wide.trip.count2365.i, 2147483644
  %lcmp.mod622.not = icmp eq i64 %xtraiter620, 0
  %lcmp.mod624 = icmp ne i64 %xtraiter620, 0
  %min.iters.check401 = icmp ult i32 %i.a, 8
  %min.iters.check403 = icmp ult i32 %i.a, 32
  %i.bad = and i64 %wide.trip.count2365.i, 24
  %n.vec405 = and i64 %wide.trip.count2365.i, 2147483616 ; 5 uses
  %i.bae = shl nuw nsw i64 %n.vec405, 2
  %cmp.n418 = icmp eq i64 %n.vec405, %wide.trip.count2365.i
  %min.epilog.iters.check423 = icmp eq i64 %i.bad, 0
  %n.vec425 = and i64 %wide.trip.count2365.i, 2147483640 ; 4 uses
  %i.baf = shl nuw nsw i64 %n.vec425, 2
  %cmp.n434 = icmp eq i64 %n.vec425, %wide.trip.count2365.i
  %min.iters.check370 = icmp ult i32 %i.a, 8
  %min.iters.check372 = icmp ult i32 %i.a, 64
  %i.bag = and i64 %wide.trip.count2365.i, 56
  %n.vec374 = and i64 %wide.trip.count2365.i, 2147483584 ; 5 uses
  %i.bah = shl nuw nsw i64 %n.vec374, 1
  %cmp.n384 = icmp eq i64 %n.vec374, %wide.trip.count2365.i
  %min.epilog.iters.check389 = icmp eq i64 %i.bag, 0
  %n.vec391 = and i64 %wide.trip.count2365.i, 2147483640 ; 4 uses
  %i.bai = shl nuw nsw i64 %n.vec391, 1
  %cmp.n398 = icmp eq i64 %n.vec391, %wide.trip.count2365.i
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit1301.i:                      ; preds = %._crit_edge1930.split.i, %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i
  %indvars.iv2355.i = phi i64 [ %i.apa, %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i ], [ %indvars.iv.next2356.i, %._crit_edge1930.split.i ] ; 2 uses
  %indvars.iv2320.i = phi i32 [ %i.aow, %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i ], [ %indvars.iv.next2321.i, %._crit_edge1930.split.i ] ; 2 uses
  %indvars.iv2317.i = phi i32 [ %i.aou, %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i ], [ %indvars.iv.next2318.i, %._crit_edge1930.split.i ] ; 2 uses
  %i.baj = phi i32 [ %i.anp, %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i ], [ %i.bif, %._crit_edge1930.split.i ]
  %i.bak = sext i32 %indvars.iv2317.i to i64
end_hunk_1
