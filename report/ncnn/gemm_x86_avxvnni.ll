Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avxvnni?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4ncnn36gemm_transB_packed_tile_int8_avxvnniERKNS_3MatES2_RS0_iiiiii:bb.a
  %scevgep2957.i = getelementptr i8, ptr %i.ajo, i64 4
  %i.ajp = load <4 x i32>, ptr %indvars.iv.i, align 1, !tbaa !17
  %i.ajq = sub <4 x i32> %.lcssa1866, %i.ajp
  br label %._crit_edge2279.i

._crit_edge2279.i:                                ; preds = %.epilog-lcssa2004, %bb.y
  %.131192.lcssa3119.i = phi ptr [ %scevgep2957.i, %.epilog-lcssa2004 ], [ %.1211912301.i, %bb.y ] ; 2 uses
  %.01296.lcssa3116.i = phi i32 [ %i.al, %.epilog-lcssa2004 ], [ 0, %bb.y ] ; 3 uses
  %i.ajr = phi <4 x i32> [ %i.ajq, %.epilog-lcssa2004 ], [ %i.ahx, %bb.y ] ; 2 uses
  %.11293.i = phi ptr [ %i.aen, %.epilog-lcssa2004 ], [ %.22308.i, %bb.y ] ; 2 uses
  %i.ajs = or disjoint i32 %.01296.lcssa3116.i, 1
  %i.ajt = icmp slt i32 %i.ajs, %8
  br i1 %i.ajt, label %.lr.ph2288.i, label %.preheader1876.i

.preheader1876.i:                                 ; preds = %.lr.ph2288.i, %._crit_edge2279.i
  %.lcssa1941.i = phi <4 x i32> [ %i.ajr, %._crit_edge2279.i ], [ %i.akt, %.lr.ph2288.i ] ; 3 uses
  %.11297.lcssa.i = phi i32 [ %.01296.lcssa3116.i, %._crit_edge2279.i ], [ %i.akw, %.lr.ph2288.i ] ; 5 uses
  %.21294.lcssa.i = phi ptr [ %.11293.i, %._crit_edge2279.i ], [ %i.aku, %.lr.ph2288.i ] ; 3 uses
  %.141193.lcssa.i = phi ptr [ %.131192.lcssa3119.i, %._crit_edge2279.i ], [ %i.akv, %.lr.ph2288.i ] ; 4 uses
  %i.aju = icmp slt i32 %.11297.lcssa.i, %8
  br i1 %i.aju, label %.lr.ph2296.i.preheader, label %._crit_edge2297.i

.lr.ph2296.i.preheader:                           ; preds = %.preheader1876.i
  %i.ajv = sub i32 %8, %.11297.lcssa.i
  %.neg2079 = add i32 %.11297.lcssa.i, 1
  %xtraiter2009 = and i32 %i.ajv, 1
  %lcmp.mod2010.not = icmp eq i32 %xtraiter2009, 0
  br i1 %lcmp.mod2010.not, label %.lr.ph2296.i.prol.loopexit, label %.lr.ph2296.i.prol

.lr.ph2296.i.prol:                                ; preds = %.lr.ph2296.i.preheader
  %i.ajw = load <8 x i8>, ptr %.21294.lcssa.i, align 1, !tbaa !17
  %i.ajx = load i8, ptr %.141193.lcssa.i, align 1, !tbaa !17
  %i.ajy = sext i8 %i.ajx to i16
  %i.ajz = insertelement <8 x i16> poison, i16 %i.ajy, i64 0
  %i.aka = shufflevector <8 x i16> %i.ajz, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.akb = sext <8 x i8> %i.ajw to <8 x i16>      ; 2 uses
  %i.akc = mul <8 x i16> %i.aka, %i.akb
  %i.akd = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.akb, <8 x i16> %i.aka)
  %i.ake = shufflevector <8 x i16> %i.akc, <8 x i16> %i.akd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.akf = bitcast <8 x i16> %i.ake to <4 x i32>
  %i.akg = add <4 x i32> %.lcssa1941.i, %i.akf    ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %.21294.lcssa.i, i64 4
  %i.aki = getelementptr inbounds nuw i8, ptr %.141193.lcssa.i, i64 1 ; 2 uses
  %i.akj = add nuw nsw i32 %.11297.lcssa.i, 1
  br label %.lr.ph2296.i.prol.loopexit

.lr.ph2296.i.prol.loopexit:                       ; preds = %.lr.ph2296.i.prol, %.lr.ph2296.i.preheader
  %.lcssa1872.unr = phi <4 x i32> [ poison, %.lr.ph2296.i.preheader ], [ %i.akg, %.lr.ph2296.i.prol ]
  %.lcssa1871.unr = phi ptr [ poison, %.lr.ph2296.i.preheader ], [ %i.aki, %.lr.ph2296.i.prol ]
  %.1511942295.i.unr = phi ptr [ %.141193.lcssa.i, %.lr.ph2296.i.preheader ], [ %i.aki, %.lr.ph2296.i.prol ]
  %.312952294.i.unr = phi ptr [ %.21294.lcssa.i, %.lr.ph2296.i.preheader ], [ %i.akh, %.lr.ph2296.i.prol ]
  %.212982293.i.unr = phi i32 [ %.11297.lcssa.i, %.lr.ph2296.i.preheader ], [ %i.akj, %.lr.ph2296.i.prol ]
  %.unr2011 = phi <4 x i32> [ %.lcssa1941.i, %.lr.ph2296.i.preheader ], [ %i.akg, %.lr.ph2296.i.prol ]
  %i.akk = icmp eq i32 %8, %.neg2079
  br i1 %i.akk, label %._crit_edge2297.i, label %.lr.ph2296.i

.lr.ph2288.i:                                     ; preds = %._crit_edge2279.i, %.lr.ph2288.i
  %.1411932286.i = phi ptr [ %i.akv, %.lr.ph2288.i ], [ %.131192.lcssa3119.i, %._crit_edge2279.i ] ; 2 uses
  %.212942285.i = phi ptr [ %i.aku, %.lr.ph2288.i ], [ %.11293.i, %._crit_edge2279.i ] ; 2 uses
  %.112972284.i = phi i32 [ %i.akw, %.lr.ph2288.i ], [ %.01296.lcssa3116.i, %._crit_edge2279.i ]
  %i.akl = phi <4 x i32> [ %i.akt, %.lr.ph2288.i ], [ %i.ajr, %._crit_edge2279.i ]
  %i.akm = load <8 x i8>, ptr %.212942285.i, align 1, !tbaa !17
  %i.akn = load i16, ptr %.1411932286.i, align 2, !tbaa !323
  %i.ako = insertelement <8 x i16> poison, i16 %i.akn, i64 0
  %i.akp = sext <8 x i8> %i.akm to <8 x i16>
  %i.akq = bitcast <8 x i16> %i.ako to <16 x i8>
  %i.akr = shufflevector <16 x i8> %i.akq, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aks = sext <8 x i8> %i.akr to <8 x i16>
  %i.akt = tail call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.akl, <8 x i16> %i.akp, <8 x i16> %i.aks) ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %.212942285.i, i64 8 ; 2 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %.1411932286.i, i64 2 ; 2 uses
  %i.akw = add nuw nsw i32 %.112972284.i, 2       ; 3 uses
  %i.akx = or disjoint i32 %i.akw, 1
  %i.aky = icmp slt i32 %i.akx, %8
  br i1 %i.aky, label %.lr.ph2288.i, label %.preheader1876.i, !llvm.loop !348

.lr.ph2296.i:                                     ; preds = %.lr.ph2296.i.prol.loopexit, %.lr.ph2296.i
  %.1511942295.i = phi ptr [ %i.alz, %.lr.ph2296.i ], [ %.1511942295.i.unr, %.lr.ph2296.i.prol.loopexit ] ; 3 uses
  %.312952294.i = phi ptr [ %i.aly, %.lr.ph2296.i ], [ %.312952294.i.unr, %.lr.ph2296.i.prol.loopexit ] ; 3 uses
  %.212982293.i = phi i32 [ %i.ama, %.lr.ph2296.i ], [ %.212982293.i.unr, %.lr.ph2296.i.prol.loopexit ]
  %i.akz = phi <4 x i32> [ %i.alx, %.lr.ph2296.i ], [ %.unr2011, %.lr.ph2296.i.prol.loopexit ]
  %i.ala = load <8 x i8>, ptr %.312952294.i, align 1, !tbaa !17
  %i.alb = load i8, ptr %.1511942295.i, align 1, !tbaa !17
  %i.alc = sext i8 %i.alb to i16
  %i.ald = insertelement <8 x i16> poison, i16 %i.alc, i64 0
  %i.ale = shufflevector <8 x i16> %i.ald, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.alf = sext <8 x i8> %i.ala to <8 x i16>      ; 2 uses
  %i.alg = mul <8 x i16> %i.ale, %i.alf
  %i.alh = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.alf, <8 x i16> %i.ale)
  %i.ali = shufflevector <8 x i16> %i.alg, <8 x i16> %i.alh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.alj = bitcast <8 x i16> %i.ali to <4 x i32>
  %i.alk = add <4 x i32> %i.akz, %i.alj
  %i.all = getelementptr inbounds nuw i8, ptr %.312952294.i, i64 4
  %i.alm = getelementptr inbounds nuw i8, ptr %.1511942295.i, i64 1
  %i.aln = load <8 x i8>, ptr %i.all, align 1, !tbaa !17
  %i.alo = load i8, ptr %i.alm, align 1, !tbaa !17
  %i.alp = sext i8 %i.alo to i16
  %i.alq = insertelement <8 x i16> poison, i16 %i.alp, i64 0
  %i.alr = shufflevector <8 x i16> %i.alq, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.als = sext <8 x i8> %i.aln to <8 x i16>      ; 2 uses
  %i.alt = mul <8 x i16> %i.alr, %i.als
  %i.alu = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.als, <8 x i16> %i.alr)
  %i.alv = shufflevector <8 x i16> %i.alt, <8 x i16> %i.alu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.alw = bitcast <8 x i16> %i.alv to <4 x i32>
  %i.alx = add <4 x i32> %i.alk, %i.alw           ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.312952294.i, i64 8
  %i.alz = getelementptr inbounds nuw i8, ptr %.1511942295.i, i64 2 ; 2 uses
  %i.ama = add nuw nsw i32 %.212982293.i, 2       ; 2 uses
  %exitcond2958.not.i.1 = icmp eq i32 %i.ama, %8
  br i1 %exitcond2958.not.i.1, label %._crit_edge2297.i, label %.lr.ph2296.i, !llvm.loop !349

._crit_edge2297.i:                                ; preds = %.lr.ph2296.i.prol.loopexit, %.lr.ph2296.i, %.preheader1876.i
  %.lcssa1942.i = phi <4 x i32> [ %.lcssa1941.i, %.preheader1876.i ], [ %.lcssa1872.unr, %.lr.ph2296.i.prol.loopexit ], [ %i.alx, %.lr.ph2296.i ]
  %.151194.lcssa.i = phi ptr [ %.141193.lcssa.i, %.preheader1876.i ], [ %.lcssa1871.unr, %.lr.ph2296.i.prol.loopexit ], [ %i.alz, %.lr.ph2296.i ]
  store <4 x i32> %.lcssa1942.i, ptr %.92302.i, align 16, !tbaa !17
  %i.amb = getelementptr inbounds nuw i8, ptr %.92302.i, i64 16 ; 2 uses
  %i.amc = add nuw nsw i32 %.312262300.i, 1       ; 2 uses
  %exitcond2959.not.i = icmp eq i32 %i.amc, %6
  br i1 %exitcond2959.not.i, label %._crit_edge2304.i, label %.lr.ph2303.i, !llvm.loop !350

._crit_edge2304.i:                                ; preds = %._crit_edge2297.i, %.preheader1880.i
  %.9.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader1880.i ], [ %i.amb, %._crit_edge2297.i ] ; 2 uses
  %i.amd = getelementptr inbounds i8, ptr %.22308.i, i64 %i.ai
  %spec.select1374.i = getelementptr inbounds nuw i8, ptr %i.amd, i64 %spec.select1374.idx.i ; 2 uses
  %i.ame = add nuw nsw i32 %.111212306.i, 4       ; 3 uses
  %i.amf = or disjoint i32 %i.ame, 3
  %i.amg = icmp slt i32 %i.amf, %4
  %i.amh = getelementptr i8, ptr %indvars.iv.i, i64 %spec.select1374.idx.i
  %scevgep2954.i = getelementptr i8, ptr %i.amh, i64 %i.ai
  %i.ami = getelementptr i8, ptr %indvars.iv501, i64 %spec.select1374.idx.i
  %scevgep502 = getelementptr i8, ptr %i.ami, i64 %i.ai
  br i1 %i.amg, label %.preheader1883.i, label %.preheader1875.i, !llvm.loop !351

.preheader1874.i:                                 ; preds = %._crit_edge2477.i, %.preheader1874.lr.ph.i
  %indvars.iv505 = phi ptr [ %scevgep506, %._crit_edge2477.i ], [ %scevgep504, %.preheader1874.lr.ph.i ] ; 3 uses
  %indvars.iv2966.i = phi ptr [ %scevgep2967.i, %._crit_edge2477.i ], [ %scevgep2965.i, %.preheader1874.lr.ph.i ] ; 5 uses
  %.42481.i = phi ptr [ %spec.select1375.i, %._crit_edge2477.i ], [ %.2.lcssa.i, %.preheader1874.lr.ph.i ] ; 42 uses
  %.102480.i = phi ptr [ %.14.lcssa.i, %._crit_edge2477.i ], [ %.51117.lcssa.i, %.preheader1874.lr.ph.i ] ; 2 uses
  %.211222479.i = phi i32 [ %i.czc, %._crit_edge2477.i ], [ %.11121.lcssa.i, %.preheader1874.lr.ph.i ]
  br i1 %i.uh, label %.lr.ph2344.i, label %.preheader1873.i

.preheader1866.i:                                 ; preds = %._crit_edge2477.i, %.preheader1875.i
  %.21122.lcssa.i = phi i32 [ %.11121.lcssa.i, %.preheader1875.i ], [ %i.czc, %._crit_edge2477.i ] ; 2 uses
  %.10.lcssa.i = phi ptr [ %.51117.lcssa.i, %.preheader1875.i ], [ %.14.lcssa.i, %._crit_edge2477.i ]
  %.4.lcssa.i = phi ptr [ %.2.lcssa.i, %.preheader1875.i ], [ %spec.select1375.i, %._crit_edge2477.i ] ; 3 uses
  %i.amj = icmp slt i32 %.21122.lcssa.i, %4
  br i1 %i.amj, label %.preheader1865.lr.ph.i, label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit

.preheader1865.lr.ph.i:                           ; preds = %.preheader1866.i
  %i.amk = icmp sgt i32 %6, 7
  %i.aml = icmp eq i32 %7, 0                      ; 4 uses
  %i.amm = icmp sgt i32 %8, 3                     ; 5 uses
  %i.amn = sext i32 %8 to i64                     ; 2 uses
  %spec.select1376.idx.i = select i1 %i.amm, i64 4, i64 0 ; 2 uses
  %i.amo = add i32 %8, -4                         ; 5 uses
  %i.amp = and i32 %i.amo, -4
  %i.amq = add i32 %i.amp, 4                      ; 4 uses
  %i.amr = and i32 %6, -8
  %i.ams = zext i32 %i.amo to i64                 ; 4 uses
  %i.amt = lshr i64 %i.ams, 2                     ; 4 uses
  %i.amu = shl nuw nsw i64 %i.amt, 4
  %i.amv = shl nuw nsw i64 %i.amt, 3
  %i.amw = and i64 %i.ams, 4294967292
  %i.amx = shl nuw nsw i64 %i.amt, 5
  %i.amy = and i64 %i.ams, 4294967292             ; 2 uses
  %scevgep508 = getelementptr i8, ptr %.4.lcssa.i, i64 %i.amy
  %i.amz = add nsw i64 %spec.select1376.idx.i, %i.amn ; 2 uses
  %i.ana = getelementptr i8, ptr %.4.lcssa.i, i64 %i.amy
  %scevgep511 = getelementptr i8, ptr %i.ana, i64 4
  %i.anb = add i32 %8, -2
  %i.anc = add nuw nsw i64 %i.amt, 1              ; 5 uses
  %i.and = add i32 %8, -4                         ; 3 uses
  %i.ane = lshr i32 %i.and, 2
  %i.anf = add nuw nsw i32 %i.ane, 1              ; 4 uses
  %xtraiter2048 = and i32 %i.anf, 3               ; 3 uses
  %i.ang = icmp ult i32 %i.and, 12
  %unroll_iter2058 = and i32 %i.anf, 2147483644
  %lcmp.mod2052.not = icmp eq i32 %xtraiter2048, 0
  %lcmp.mod2057 = icmp ne i32 %xtraiter2048, 0
  %xtraiter2064 = and i32 %i.anf, 3               ; 3 uses
  %i.anh = icmp ult i32 %i.and, 12
  %unroll_iter2073 = and i32 %i.anf, 2147483644
  %lcmp.mod2068.not = icmp eq i32 %xtraiter2064, 0
  %lcmp.mod2072 = icmp ne i32 %xtraiter2064, 0
  %min.iters.check1558 = icmp ult i32 %i.amo, 12
  %min.iters.check1560 = icmp ult i32 %i.amo, 60
  %i.ani = and i64 %i.anc, 12
  %n.vec1562 = and i64 %i.anc, 2147483632         ; 6 uses
  %i.anj = trunc nuw nsw i64 %n.vec1562 to i32
  %i.ank = shl i32 %i.anj, 2
  %i.anl = shl nuw nsw i64 %n.vec1562, 2
  %i.anm = shl nuw nsw i64 %n.vec1562, 3
  %cmp.n1601 = icmp eq i64 %i.anc, %n.vec1562
  %min.epilog.iters.check1611 = icmp eq i64 %i.ani, 0
  %n.vec1613 = and i64 %i.anc, 2147483644         ; 5 uses
  %i.ann = trunc nuw nsw i64 %n.vec1613 to i32
  %i.ano = shl i32 %i.ann, 2
  %i.anp = shl nuw nsw i64 %n.vec1613, 2
  %i.anq = shl nuw nsw i64 %n.vec1613, 3
  %cmp.n1630 = icmp eq i64 %i.anc, %n.vec1613
  %i.anr = lshr i64 %i.ams, 2
  %i.ans = add nuw nsw i64 %i.anr, 1              ; 2 uses
  %min.iters.check1361 = icmp ult i32 %i.amo, 28
  %n.vec1363 = and i64 %i.ans, 2147483640         ; 4 uses
  %i.ant = trunc nuw nsw i64 %n.vec1363 to i32
  %i.anu = shl i32 %i.ant, 2
  %i.anv = shl nuw nsw i64 %n.vec1363, 2          ; 2 uses
  %cmp.n1381 = icmp eq i64 %i.ans, %n.vec1363
  br label %.preheader1865.i

.preheader1873.i:                                 ; preds = %._crit_edge2337.i, %.preheader1874.i
  %.01315.lcssa.i = phi i32 [ 0, %.preheader1874.i ], [ %i.up, %._crit_edge2337.i ] ; 3 uses
  %.01299.lcssa.i = phi ptr [ %i.c, %.preheader1874.i ], [ %.31302.lcssa.i, %._crit_edge2337.i ] ; 2 uses
  %.11.lcssa.i = phi ptr [ %.102480.i, %.preheader1874.i ], [ %i.asu, %._crit_edge2337.i ] ; 2 uses
  %i.anw = or disjoint i32 %.01315.lcssa.i, 3
  %i.anx = icmp slt i32 %i.anw, %6
  br i1 %i.anx, label %.lr.ph2380.i.preheader, label %.preheader1872.i

.lr.ph2380.i.preheader:                           ; preds = %.preheader1873.i
  %i.any = getelementptr inbounds nuw i8, ptr %indvars.iv505, i64 16
  br label %.lr.ph2380.i

.lr.ph2344.i:                                     ; preds = %.preheader1874.i, %._crit_edge2337.i
  %.112343.i = phi ptr [ %i.asu, %._crit_edge2337.i ], [ %.102480.i, %.preheader1874.i ] ; 5 uses
  %.012992342.i = phi ptr [ %.31302.lcssa.i, %._crit_edge2337.i ], [ %i.c, %.preheader1874.i ] ; 4 uses
  %.013152341.i = phi i32 [ %i.asv, %._crit_edge2337.i ], [ 0, %.preheader1874.i ]
  br i1 %i.ui, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph2344.i
  %i.anz = load <8 x i32>, ptr %.112343.i, align 1, !tbaa !17
  %i.aoa = getelementptr inbounds nuw i8, ptr %.112343.i, i64 32
  %i.aob = load <8 x i32>, ptr %i.aoa, align 1, !tbaa !17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph2344.i
  %i.aoc = phi <8 x i32> [ %i.anz, %bb.z ], [ zeroinitializer, %.lr.ph2344.i ] ; 3 uses
  %i.aod = phi <8 x i32> [ %i.aob, %bb.z ], [ zeroinitializer, %.lr.ph2344.i ] ; 3 uses
  br i1 %i.uj, label %.lr.ph2316.i.preheader, label %._crit_edge2317.i

.lr.ph2316.i.preheader:                           ; preds = %bb.aa
  br i1 %i.vc, label %.lr.ph2316.i.epil.preheader, label %.lr.ph2316.i

.lr.ph2316.i:                                     ; preds = %.lr.ph2316.i.preheader, %.lr.ph2316.i
  %.113002314.i = phi ptr [ %i.aoz, %.lr.ph2316.i ], [ %.012992342.i, %.lr.ph2316.i.preheader ] ; 3 uses
  %.013192313.i = phi ptr [ %i.aoy, %.lr.ph2316.i ], [ %.42481.i, %.lr.ph2316.i.preheader ] ; 4 uses
  %i.aoe = phi <8 x i32> [ %i.aox, %.lr.ph2316.i ], [ %i.aod, %.lr.ph2316.i.preheader ]
  %i.aof = phi <8 x i32> [ %i.aow, %.lr.ph2316.i ], [ %i.aoc, %.lr.ph2316.i.preheader ]
  %niter2027 = phi i32 [ %niter2027.next.1, %.lr.ph2316.i ], [ 0, %.lr.ph2316.i.preheader ]
  %i.aog = load double, ptr %.013192313.i, align 1, !tbaa !17
  %i.aoh = insertelement <4 x double> poison, double %i.aog, i64 0
  %i.aoi = bitcast <4 x double> %i.aoh to <4 x i64>
  %i.aoj = shufflevector <4 x i64> %i.aoi, <4 x i64> poison, <4 x i32> zeroinitializer
  %.cast1352.i = bitcast <4 x i64> %i.aoj to <32 x i8> ; 2 uses
  %i.aok = shufflevector <32 x i8> %.cast1352.i, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.aol = load <32 x i8>, ptr %.113002314.i, align 1, !tbaa !17 ; 2 uses
  %i.aom = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aof, <32 x i8> %i.aol, <32 x i8> %.cast1352.i)
  %i.aon = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aoe, <32 x i8> %i.aol, <32 x i8> %i.aok)
  %i.aoo = getelementptr inbounds nuw i8, ptr %.013192313.i, i64 8
  %i.aop = getelementptr inbounds nuw i8, ptr %.113002314.i, i64 32
  %i.aoq = load double, ptr %i.aoo, align 1, !tbaa !17
  %i.aor = insertelement <4 x double> poison, double %i.aoq, i64 0
  %i.aos = bitcast <4 x double> %i.aor to <4 x i64>
  %i.aot = shufflevector <4 x i64> %i.aos, <4 x i64> poison, <4 x i32> zeroinitializer
  %.cast1352.i.1 = bitcast <4 x i64> %i.aot to <32 x i8> ; 2 uses
  %i.aou = shufflevector <32 x i8> %.cast1352.i.1, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.aov = load <32 x i8>, ptr %i.aop, align 1, !tbaa !17 ; 2 uses
  %i.aow = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aom, <32 x i8> %i.aov, <32 x i8> %.cast1352.i.1) ; 3 uses
  %i.aox = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aon, <32 x i8> %i.aov, <32 x i8> %i.aou) ; 3 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %.013192313.i, i64 16 ; 3 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %.113002314.i, i64 64 ; 2 uses
  %niter2027.next.1 = add i32 %niter2027, 2       ; 2 uses
  %niter2027.ncmp.1.not = icmp eq i32 %niter2027.next.1, %unroll_iter2026
  br i1 %niter2027.ncmp.1.not, label %.unr-lcssa2012, label %.lr.ph2316.i, !llvm.loop !352

.unr-lcssa2012:                                   ; preds = %.lr.ph2316.i
  %i.apa = getelementptr inbounds nuw i8, ptr %.013192313.i, i64 8
  br i1 %lcmp.mod2019.not.not, label %.lr.ph2316.i.epil.preheader, label %bb.ab

.lr.ph2316.i.epil.preheader:                      ; preds = %.unr-lcssa2012, %.lr.ph2316.i.preheader
  %.113002314.i.epil.init = phi ptr [ %.012992342.i, %.lr.ph2316.i.preheader ], [ %i.aoz, %.unr-lcssa2012 ]
  %.013192313.i.epil.init = phi ptr [ %.42481.i, %.lr.ph2316.i.preheader ], [ %i.aoy, %.unr-lcssa2012 ] ; 3 uses
  %.epil.init2016 = phi <8 x i32> [ %i.aod, %.lr.ph2316.i.preheader ], [ %i.aox, %.unr-lcssa2012 ]
  %.epil.init2018 = phi <8 x i32> [ %i.aoc, %.lr.ph2316.i.preheader ], [ %i.aow, %.unr-lcssa2012 ]
  tail call void @llvm.assume(i1 %lcmp.mod2025)
  %i.apb = load double, ptr %.013192313.i.epil.init, align 1, !tbaa !17
  %i.apc = insertelement <4 x double> poison, double %i.apb, i64 0
  %i.apd = bitcast <4 x double> %i.apc to <4 x i64>
  %i.ape = shufflevector <4 x i64> %i.apd, <4 x i64> poison, <4 x i32> zeroinitializer
  %.cast1352.i.epil = bitcast <4 x i64> %i.ape to <32 x i8> ; 2 uses
  %i.apf = shufflevector <32 x i8> %.cast1352.i.epil, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.apg = load <32 x i8>, ptr %.113002314.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.aph = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.epil.init2018, <32 x i8> %i.apg, <32 x i8> %.cast1352.i.epil)
  %i.api = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.epil.init2016, <32 x i8> %i.apg, <32 x i8> %i.apf)
  %i.apj = getelementptr inbounds nuw i8, ptr %.013192313.i.epil.init, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.unr-lcssa2012, %.lr.ph2316.i.epil.preheader
  %.013192313.i.lcssa = phi ptr [ %i.apa, %.unr-lcssa2012 ], [ %.013192313.i.epil.init, %.lr.ph2316.i.epil.preheader ]
  %.lcssa1740 = phi <8 x i32> [ %i.aow, %.unr-lcssa2012 ], [ %i.aph, %.lr.ph2316.i.epil.preheader ]
  %.lcssa1739 = phi <8 x i32> [ %i.aox, %.unr-lcssa2012 ], [ %i.api, %.lr.ph2316.i.epil.preheader ]
  %.lcssa1738 = phi ptr [ %i.aoy, %.unr-lcssa2012 ], [ %i.apj, %.lr.ph2316.i.epil.preheader ]
  %i.apk = getelementptr i8, ptr %.012992342.i, i64 %i.uw
  %scevgep503 = getelementptr i8, ptr %i.apk, i64 32
  %i.apl = load double, ptr %.lcssa1738, align 1, !tbaa !17
  %i.apm = insertelement <4 x double> poison, double %i.apl, i64 0
  %i.apn = bitcast <4 x double> %i.apm to <4 x i64>
  %i.apo = shufflevector <4 x i64> %i.apn, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.app = bitcast <4 x i64> %i.apo to <8 x i32>
  %i.apq = sub <8 x i32> %.lcssa1740, %i.app
  %i.apr = bitcast <4 x i64> %i.apo to <8 x i32>
  %i.aps = shufflevector <8 x i32> %i.apr, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.apt = sub <8 x i32> %.lcssa1739, %i.aps
  %i.apu = getelementptr inbounds nuw i8, ptr %.013192313.i.lcssa, i64 16
  br label %._crit_edge2317.i

._crit_edge2317.i:                                ; preds = %bb.ab, %bb.aa
  %.11300.lcssa3131.i = phi ptr [ %scevgep503, %bb.ab ], [ %.012992342.i, %bb.aa ] ; 2 uses
  %.01323.lcssa3128.i = phi i32 [ %i.uo, %bb.ab ], [ 0, %bb.aa ] ; 3 uses
  %i.apv = phi <8 x i32> [ %i.apq, %bb.ab ], [ %i.aoc, %bb.aa ] ; 2 uses
  %i.apw = phi <8 x i32> [ %i.apt, %bb.ab ], [ %i.aod, %bb.aa ] ; 2 uses
  %.11320.i = phi ptr [ %i.apu, %bb.ab ], [ %.42481.i, %bb.aa ] ; 2 uses
  %i.apx = or disjoint i32 %.01323.lcssa3128.i, 1
  %i.apy = icmp slt i32 %i.apx, %8
  br i1 %i.apy, label %.lr.ph2327.i, label %.preheader1870.i

.preheader1870.i:                                 ; preds = %.lr.ph2327.i, %._crit_edge2317.i
  %.lcssa1901.i = phi <8 x i32> [ %i.apv, %._crit_edge2317.i ], [ %i.arc, %.lr.ph2327.i ] ; 3 uses
  %.lcssa1900.i = phi <8 x i32> [ %i.apw, %._crit_edge2317.i ], [ %i.are, %.lr.ph2327.i ] ; 3 uses
  %.11324.lcssa.i = phi i32 [ %.01323.lcssa3128.i, %._crit_edge2317.i ], [ %i.arh, %.lr.ph2327.i ] ; 5 uses
  %.21321.lcssa.i = phi ptr [ %.11320.i, %._crit_edge2317.i ], [ %i.arf, %.lr.ph2327.i ] ; 3 uses
  %.21301.lcssa.i = phi ptr [ %.11300.lcssa3131.i, %._crit_edge2317.i ], [ %i.arg, %.lr.ph2327.i ] ; 4 uses
  %i.apz = icmp slt i32 %.11324.lcssa.i, %8
  br i1 %i.apz, label %.lr.ph2336.i.preheader, label %._crit_edge2337.i

.lr.ph2336.i.preheader:                           ; preds = %.preheader1870.i
  %i.aqa = sub i32 %8, %.11324.lcssa.i
  %.neg2080 = add i32 %.11324.lcssa.i, 1
  %xtraiter2028 = and i32 %i.aqa, 1
  %lcmp.mod2029.not = icmp eq i32 %xtraiter2028, 0
  br i1 %lcmp.mod2029.not, label %.lr.ph2336.i.prol.loopexit, label %.lr.ph2336.i.prol

.lr.ph2336.i.prol:                                ; preds = %.lr.ph2336.i.preheader
  %i.aqb = load i16, ptr %.21321.lcssa.i, align 2, !tbaa !323
  %i.aqc = insertelement <8 x i16> poison, i16 %i.aqb, i64 0
  %i.aqd = load <8 x i8>, ptr %.21301.lcssa.i, align 1, !tbaa !17
  %i.aqe = bitcast <8 x i16> %i.aqc to <16 x i8>
  %i.aqf = shufflevector <16 x i8> %i.aqe, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aqg = sext <8 x i8> %i.aqf to <8 x i16>      ; 2 uses
  %i.aqh = sext <8 x i8> %i.aqd to <8 x i16>      ; 2 uses
  %i.aqi = shufflevector <8 x i16> %i.aqg, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.aqj = mul nsw <8 x i16> %i.aqg, %i.aqh
  %i.aqk = sext <8 x i16> %i.aqj to <8 x i32>
  %i.aql = mul nsw <8 x i16> %i.aqi, %i.aqh
  %i.aqm = sext <8 x i16> %i.aql to <8 x i32>
  %i.aqn = add <8 x i32> %.lcssa1901.i, %i.aqk    ; 2 uses
  %i.aqo = add <8 x i32> %.lcssa1900.i, %i.aqm    ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %.21321.lcssa.i, i64 2
  %i.aqq = getelementptr inbounds nuw i8, ptr %.21301.lcssa.i, i64 8 ; 2 uses
  %i.aqr = add nuw nsw i32 %.11324.lcssa.i, 1
  br label %.lr.ph2336.i.prol.loopexit

.lr.ph2336.i.prol.loopexit:                       ; preds = %.lr.ph2336.i.prol, %.lr.ph2336.i.preheader
  %.lcssa1748.unr = phi <8 x i32> [ poison, %.lr.ph2336.i.preheader ], [ %i.aqn, %.lr.ph2336.i.prol ]
  %.lcssa1747.unr = phi <8 x i32> [ poison, %.lr.ph2336.i.preheader ], [ %i.aqo, %.lr.ph2336.i.prol ]
  %.lcssa1746.unr = phi ptr [ poison, %.lr.ph2336.i.preheader ], [ %i.aqq, %.lr.ph2336.i.prol ]
  %.313022335.i.unr = phi ptr [ %.21301.lcssa.i, %.lr.ph2336.i.preheader ], [ %i.aqq, %.lr.ph2336.i.prol ]
  %.313222334.i.unr = phi ptr [ %.21321.lcssa.i, %.lr.ph2336.i.preheader ], [ %i.aqp, %.lr.ph2336.i.prol ]
  %.213252333.i.unr = phi i32 [ %.11324.lcssa.i, %.lr.ph2336.i.preheader ], [ %i.aqr, %.lr.ph2336.i.prol ]
  %.unr2030 = phi <8 x i32> [ %.lcssa1900.i, %.lr.ph2336.i.preheader ], [ %i.aqo, %.lr.ph2336.i.prol ]
  %.unr2031 = phi <8 x i32> [ %.lcssa1901.i, %.lr.ph2336.i.preheader ], [ %i.aqn, %.lr.ph2336.i.prol ]
  %i.aqs = icmp eq i32 %8, %.neg2080
  br i1 %i.aqs, label %._crit_edge2337.i, label %.lr.ph2336.i

.lr.ph2327.i:                                     ; preds = %._crit_edge2317.i, %.lr.ph2327.i
  %.213012325.i = phi ptr [ %i.arg, %.lr.ph2327.i ], [ %.11300.lcssa3131.i, %._crit_edge2317.i ] ; 2 uses
  %.213212324.i = phi ptr [ %i.arf, %.lr.ph2327.i ], [ %.11320.i, %._crit_edge2317.i ] ; 2 uses
  %.113242323.i = phi i32 [ %i.arh, %.lr.ph2327.i ], [ %.01323.lcssa3128.i, %._crit_edge2317.i ]
  %i.aqt = phi <8 x i32> [ %i.are, %.lr.ph2327.i ], [ %i.apw, %._crit_edge2317.i ]
  %i.aqu = phi <8 x i32> [ %i.arc, %.lr.ph2327.i ], [ %i.apv, %._crit_edge2317.i ]
  %i.aqv = load float, ptr %.213212324.i, align 1, !tbaa !17
  %i.aqw = insertelement <4 x float> poison, float %i.aqv, i64 0
  %i.aqx = load <16 x i8>, ptr %.213012325.i, align 1, !tbaa !17
  %i.aqy = bitcast <4 x float> %i.aqw to <16 x i8>
  %i.aqz = shufflevector <16 x i8> %i.aqy, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ara = sext <16 x i8> %i.aqz to <16 x i16>    ; 2 uses
  %i.arb = sext <16 x i8> %i.aqx to <16 x i16>    ; 2 uses
  %i.arc = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.aqu, <16 x i16> %i.ara, <16 x i16> %i.arb) ; 2 uses
  %i.ard = shufflevector <16 x i16> %i.ara, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9>
  %i.are = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.aqt, <16 x i16> %i.ard, <16 x i16> %i.arb) ; 2 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %.213212324.i, i64 4 ; 2 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %.213012325.i, i64 16 ; 2 uses
  %i.arh = add nuw nsw i32 %.113242323.i, 2       ; 3 uses
  %i.ari = or disjoint i32 %i.arh, 1
  %i.arj = icmp slt i32 %i.ari, %8
  br i1 %i.arj, label %.lr.ph2327.i, label %.preheader1870.i, !llvm.loop !353

.lr.ph2336.i:                                     ; preds = %.lr.ph2336.i.prol.loopexit, %.lr.ph2336.i
  %.313022335.i = phi ptr [ %i.asr, %.lr.ph2336.i ], [ %.313022335.i.unr, %.lr.ph2336.i.prol.loopexit ] ; 3 uses
  %.313222334.i = phi ptr [ %i.asq, %.lr.ph2336.i ], [ %.313222334.i.unr, %.lr.ph2336.i.prol.loopexit ] ; 3 uses
  %.213252333.i = phi i32 [ %i.ass, %.lr.ph2336.i ], [ %.213252333.i.unr, %.lr.ph2336.i.prol.loopexit ]
  %i.ark = phi <8 x i32> [ %i.asp, %.lr.ph2336.i ], [ %.unr2030, %.lr.ph2336.i.prol.loopexit ]
  %i.arl = phi <8 x i32> [ %i.aso, %.lr.ph2336.i ], [ %.unr2031, %.lr.ph2336.i.prol.loopexit ]
  %i.arm = load i16, ptr %.313222334.i, align 2, !tbaa !323
  %i.arn = insertelement <8 x i16> poison, i16 %i.arm, i64 0
  %i.aro = load <8 x i8>, ptr %.313022335.i, align 1, !tbaa !17
  %i.arp = bitcast <8 x i16> %i.arn to <16 x i8>
  %i.arq = shufflevector <16 x i8> %i.arp, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.arr = sext <8 x i8> %i.arq to <8 x i16>      ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn36gemm_transB_packed_tile_int8_avxvnniERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.efc = zext <4 x i8> %i.efb to <4 x i32>
  %i.efd = mul nsw <4 x i32> %i.efc, %i.eev
  %i.efe = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.efd)
  %op.rdx1645 = add i32 %i.efe, %.111032553.i     ; 2 uses
  %i.eff = getelementptr inbounds nuw i8, ptr %.010972554.i, i64 4
  %i.efg = getelementptr inbounds nuw i8, ptr %.912152551.i, i64 8
  %i.efh = add nuw nsw i32 %.010932555.i, 4       ; 2 uses
  %i.efi = or disjoint i32 %i.efh, 3
  %i.efj = icmp slt i32 %i.efi, %8
  br i1 %i.efj, label %.lr.ph2557.i, label %.loopexit1636, !llvm.loop !390

.loopexit1636:                                    ; preds = %.lr.ph2557.i, %vec.epilog.middle.block1629, %middle.block1598
  %.lcssa790 = phi i32 [ %i.eet, %vec.epilog.middle.block1629 ], [ %i.dzs, %middle.block1598 ], [ %op.rdx1644, %.lr.ph2557.i ]
  %.lcssa789 = phi i32 [ %i.ees, %vec.epilog.middle.block1629 ], [ %i.dzr, %middle.block1598 ], [ %op.rdx1645, %.lr.ph2557.i ]
  %i.efk = getelementptr i8, ptr %.812142611.i, i64 %i.amv
  %scevgep2974.i = getelementptr i8, ptr %i.efk, i64 8
  %i.efl = load i32, ptr %indvars.iv512, align 4, !tbaa !43 ; 2 uses
  %i.efm = sub nsw i32 %.lcssa790, %i.efl
  %i.efn = sub nsw i32 %.lcssa789, %i.efl
  br label %._crit_edge2558.i

._crit_edge2558.i:                                ; preds = %.loopexit1636, %bb.ao
  %.01093.lcssa3203.i = phi i32 [ %i.amq, %.loopexit1636 ], [ 0, %bb.ao ] ; 6 uses
  %.91215.lcssa3198.i = phi ptr [ %scevgep2974.i, %.loopexit1636 ], [ %.812142611.i, %bb.ao ] ; 7 uses
  %.21109.i = phi i32 [ %i.efm, %.loopexit1636 ], [ %.01107.i, %bb.ao ] ; 4 uses
  %.21104.i = phi i32 [ %i.efn, %.loopexit1636 ], [ %.01102.i, %bb.ao ] ; 4 uses
  %.11098.i = phi ptr [ %i.ddt, %.loopexit1636 ], [ %.62663.i, %bb.ao ] ; 7 uses
  %i.efo = or disjoint i32 %.01093.lcssa3203.i, 1
  %i.efp = icmp slt i32 %i.efo, %8
  br i1 %i.efp, label %iter.check1529, label %.preheader.i

iter.check1529:                                   ; preds = %._crit_edge2558.i
  %i.efq = sub i32 %i.anb, %.01093.lcssa3203.i    ; 3 uses
  %i.efr = lshr i32 %i.efq, 1
  %narrow1640 = add nuw i32 %i.efr, 1
  %i.efs = zext i32 %narrow1640 to i64            ; 5 uses
  %min.iters.check1487 = icmp ult i32 %i.efq, 6
  br i1 %min.iters.check1487, label %.lr.ph2570.i.preheader, label %vector.main.loop.iter.check1488

vector.main.loop.iter.check1488:                  ; preds = %iter.check1529
  %min.iters.check1489 = icmp ult i32 %i.efq, 30
  br i1 %min.iters.check1489, label %vec.epilog.ph1533, label %vector.ph1490

vector.ph1490:                                    ; preds = %vector.main.loop.iter.check1488
  %i.eft = and i64 %i.efs, 12
  %n.vec1491 = and i64 %i.efs, 4294967280         ; 6 uses
  %i.efu = trunc nuw i64 %n.vec1491 to i32
  %i.efv = shl i32 %i.efu, 1
  %i.efw = add i32 %.01093.lcssa3203.i, %i.efv    ; 2 uses
  %i.efx = shl nuw nsw i64 %n.vec1491, 1
  %i.efy = getelementptr i8, ptr %.11098.i, i64 %i.efx ; 2 uses
  %i.efz = shl nuw nsw i64 %n.vec1491, 2
  %i.ega = getelementptr i8, ptr %.91215.lcssa3198.i, i64 %i.efz ; 2 uses
  %i.egb = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.21104.i, i64 0
  %i.egc = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.21109.i, i64 0
  br label %vector.body1492

vector.body1492:                                  ; preds = %vector.body1492, %vector.ph1490
  %index1493 = phi i64 [ 0, %vector.ph1490 ], [ %index.next1518, %vector.body1492 ] ; 3 uses
  %vec.phi1494 = phi <8 x i32> [ %i.egb, %vector.ph1490 ], [ %i.ehh, %vector.body1492 ]
  %vec.phi1495 = phi <8 x i32> [ zeroinitializer, %vector.ph1490 ], [ %i.ehi, %vector.body1492 ]
  %vec.phi1496 = phi <8 x i32> [ %i.egc, %vector.ph1490 ], [ %i.egv, %vector.body1492 ]
  %vec.phi1497 = phi <8 x i32> [ zeroinitializer, %vector.ph1490 ], [ %i.egw, %vector.body1492 ]
  %i.egd = shl i64 %index1493, 1                  ; 2 uses
  %next.gep1498 = getelementptr i8, ptr %.11098.i, i64 %i.egd
  %i.ege = getelementptr i8, ptr %.11098.i, i64 %i.egd
  %next.gep1499 = getelementptr i8, ptr %i.ege, i64 16
  %i.egf = shl i64 %index1493, 2                  ; 2 uses
  %next.gep1500 = getelementptr i8, ptr %.91215.lcssa3198.i, i64 %i.egf
  %i.egg = getelementptr i8, ptr %.91215.lcssa3198.i, i64 %i.egf
  %next.gep1501 = getelementptr i8, ptr %i.egg, i64 32
  %wide.vec1502 = load <16 x i8>, ptr %next.gep1498, align 1, !tbaa !17 ; 2 uses
  %strided.vec1503 = shufflevector <16 x i8> %wide.vec1502, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1504 = shufflevector <16 x i8> %wide.vec1502, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec1505 = load <16 x i8>, ptr %next.gep1499, align 1, !tbaa !17 ; 2 uses
  %strided.vec1506 = shufflevector <16 x i8> %wide.vec1505, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1507 = shufflevector <16 x i8> %wide.vec1505, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.egh = sext <8 x i8> %strided.vec1503 to <8 x i32> ; 2 uses
  %i.egi = sext <8 x i8> %strided.vec1506 to <8 x i32> ; 2 uses
  %wide.vec1508 = load <32 x i8>, ptr %next.gep1500, align 1, !tbaa !17 ; 4 uses
  %strided.vec1509 = shufflevector <32 x i8> %wide.vec1508, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1510 = shufflevector <32 x i8> %wide.vec1508, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1511 = shufflevector <32 x i8> %wide.vec1508, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1512 = shufflevector <32 x i8> %wide.vec1508, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec1513 = load <32 x i8>, ptr %next.gep1501, align 1, !tbaa !17 ; 4 uses
  %strided.vec1514 = shufflevector <32 x i8> %wide.vec1513, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1515 = shufflevector <32 x i8> %wide.vec1513, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1516 = shufflevector <32 x i8> %wide.vec1513, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1517 = shufflevector <32 x i8> %wide.vec1513, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.egj = sext <8 x i8> %strided.vec1509 to <8 x i32>
  %i.egk = sext <8 x i8> %strided.vec1514 to <8 x i32>
  %i.egl = mul nsw <8 x i32> %i.egj, %i.egh
  %i.egm = mul nsw <8 x i32> %i.egk, %i.egi
  %i.egn = add <8 x i32> %i.egl, %vec.phi1496
  %i.ego = add <8 x i32> %i.egm, %vec.phi1497
  %i.egp = sext <8 x i8> %strided.vec1504 to <8 x i32> ; 2 uses
  %i.egq = sext <8 x i8> %strided.vec1507 to <8 x i32> ; 2 uses
  %i.egr = sext <8 x i8> %strided.vec1510 to <8 x i32>
  %i.egs = sext <8 x i8> %strided.vec1515 to <8 x i32>
  %i.egt = mul nsw <8 x i32> %i.egr, %i.egp
  %i.egu = mul nsw <8 x i32> %i.egs, %i.egq
  %i.egv = add <8 x i32> %i.egn, %i.egt           ; 2 uses
  %i.egw = add <8 x i32> %i.ego, %i.egu           ; 2 uses
  %i.egx = sext <8 x i8> %strided.vec1511 to <8 x i32>
  %i.egy = sext <8 x i8> %strided.vec1516 to <8 x i32>
  %i.egz = mul nsw <8 x i32> %i.egx, %i.egh
  %i.eha = mul nsw <8 x i32> %i.egy, %i.egi
  %i.ehb = add <8 x i32> %i.egz, %vec.phi1494
  %i.ehc = add <8 x i32> %i.eha, %vec.phi1495
  %i.ehd = sext <8 x i8> %strided.vec1512 to <8 x i32>
  %i.ehe = sext <8 x i8> %strided.vec1517 to <8 x i32>
  %i.ehf = mul nsw <8 x i32> %i.ehd, %i.egp
  %i.ehg = mul nsw <8 x i32> %i.ehe, %i.egq
  %i.ehh = add <8 x i32> %i.ehb, %i.ehf           ; 2 uses
  %i.ehi = add <8 x i32> %i.ehc, %i.ehg           ; 2 uses
  %index.next1518 = add nuw i64 %index1493, 16    ; 2 uses
  %i.ehj = icmp eq i64 %index.next1518, %n.vec1491
  br i1 %i.ehj, label %middle.block1519, label %vector.body1492, !llvm.loop !391

middle.block1519:                                 ; preds = %vector.body1492
  %bin.rdx1520 = add <8 x i32> %i.ehi, %i.ehh
  %i.ehk = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1520) ; 3 uses
  %bin.rdx1521 = add <8 x i32> %i.egw, %i.egv
  %i.ehl = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1521) ; 3 uses
  %cmp.n1522 = icmp eq i64 %n.vec1491, %i.efs
  br i1 %cmp.n1522, label %.preheader.i, label %vec.epilog.iter.check1531

vec.epilog.iter.check1531:                        ; preds = %middle.block1519
  %min.epilog.iters.check1532 = icmp eq i64 %i.eft, 0
  br i1 %min.epilog.iters.check1532, label %.lr.ph2570.i.preheader, label %vec.epilog.ph1533, !prof !40

vec.epilog.ph1533:                                ; preds = %vector.main.loop.iter.check1488, %vec.epilog.iter.check1531
  %vec.epilog.resume.val1523 = phi i64 [ %n.vec1491, %vec.epilog.iter.check1531 ], [ 0, %vector.main.loop.iter.check1488 ]
  %bc.merge.rdx1526 = phi i32 [ %i.ehk, %vec.epilog.iter.check1531 ], [ %.21104.i, %vector.main.loop.iter.check1488 ]
  %bc.merge.rdx1527 = phi i32 [ %i.ehl, %vec.epilog.iter.check1531 ], [ %.21109.i, %vector.main.loop.iter.check1488 ]
  %n.vec1534 = and i64 %i.efs, 4294967292         ; 5 uses
  %i.ehm = trunc nuw i64 %n.vec1534 to i32
  %i.ehn = shl i32 %i.ehm, 1
  %i.eho = add i32 %.01093.lcssa3203.i, %i.ehn    ; 2 uses
  %i.ehp = shl nuw nsw i64 %n.vec1534, 1
  %i.ehq = getelementptr i8, ptr %.11098.i, i64 %i.ehp ; 2 uses
  %i.ehr = shl nuw nsw i64 %n.vec1534, 2
  %i.ehs = getelementptr i8, ptr %.91215.lcssa3198.i, i64 %i.ehr ; 2 uses
  %i.eht = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1526, i64 0
  %i.ehu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1527, i64 0
  br label %vec.epilog.vector.body1535

vec.epilog.vector.body1535:                       ; preds = %vec.epilog.vector.body1535, %vec.epilog.ph1533
  %index1536 = phi i64 [ %vec.epilog.resume.val1523, %vec.epilog.ph1533 ], [ %index.next1549, %vec.epilog.vector.body1535 ] ; 3 uses
  %vec.phi1537 = phi <4 x i32> [ %i.eht, %vec.epilog.ph1533 ], [ %i.eik, %vec.epilog.vector.body1535 ]
  %vec.phi1538 = phi <4 x i32> [ %i.ehu, %vec.epilog.ph1533 ], [ %i.eie, %vec.epilog.vector.body1535 ]
  %i.ehv = shl i64 %index1536, 1
  %next.gep1539 = getelementptr i8, ptr %.11098.i, i64 %i.ehv
  %i.ehw = shl i64 %index1536, 2
  %next.gep1540 = getelementptr i8, ptr %.91215.lcssa3198.i, i64 %i.ehw
  %wide.vec1541 = load <8 x i8>, ptr %next.gep1539, align 1, !tbaa !17 ; 2 uses
  %strided.vec1542 = shufflevector <8 x i8> %wide.vec1541, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1543 = shufflevector <8 x i8> %wide.vec1541, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ehx = sext <4 x i8> %strided.vec1542 to <4 x i32> ; 2 uses
  %wide.vec1544 = load <16 x i8>, ptr %next.gep1540, align 1, !tbaa !17 ; 4 uses
  %strided.vec1545 = shufflevector <16 x i8> %wide.vec1544, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1546 = shufflevector <16 x i8> %wide.vec1544, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1547 = shufflevector <16 x i8> %wide.vec1544, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec1548 = shufflevector <16 x i8> %wide.vec1544, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.ehy = sext <4 x i8> %strided.vec1545 to <4 x i32>
  %i.ehz = mul nsw <4 x i32> %i.ehy, %i.ehx
  %i.eia = add <4 x i32> %i.ehz, %vec.phi1538
  %i.eib = sext <4 x i8> %strided.vec1543 to <4 x i32> ; 2 uses
  %i.eic = sext <4 x i8> %strided.vec1546 to <4 x i32>
  %i.eid = mul nsw <4 x i32> %i.eic, %i.eib
  %i.eie = add <4 x i32> %i.eia, %i.eid           ; 2 uses
  %i.eif = sext <4 x i8> %strided.vec1547 to <4 x i32>
  %i.eig = mul nsw <4 x i32> %i.eif, %i.ehx
  %i.eih = add <4 x i32> %i.eig, %vec.phi1537
  %i.eii = sext <4 x i8> %strided.vec1548 to <4 x i32>
  %i.eij = mul nsw <4 x i32> %i.eii, %i.eib
  %i.eik = add <4 x i32> %i.eih, %i.eij           ; 2 uses
  %index.next1549 = add nuw i64 %index1536, 4     ; 2 uses
  %i.eil = icmp eq i64 %index.next1549, %n.vec1534
  br i1 %i.eil, label %vec.epilog.middle.block1550, label %vec.epilog.vector.body1535, !llvm.loop !392

vec.epilog.middle.block1550:                      ; preds = %vec.epilog.vector.body1535
  %i.eim = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eik) ; 2 uses
  %i.ein = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eie) ; 2 uses
  %cmp.n1551 = icmp eq i64 %n.vec1534, %i.efs
  br i1 %cmp.n1551, label %.preheader.i, label %.lr.ph2570.i.preheader

.lr.ph2570.i.preheader:                           ; preds = %iter.check1529, %vec.epilog.iter.check1531, %vec.epilog.middle.block1550
  %.110942568.i.ph = phi i32 [ %.01093.lcssa3203.i, %iter.check1529 ], [ %i.efw, %vec.epilog.iter.check1531 ], [ %i.eho, %vec.epilog.middle.block1550 ]
  %.210992567.i.ph = phi ptr [ %.11098.i, %iter.check1529 ], [ %i.efy, %vec.epilog.iter.check1531 ], [ %i.ehq, %vec.epilog.middle.block1550 ]
  %.311052566.i.ph = phi i32 [ %.21104.i, %iter.check1529 ], [ %i.ehk, %vec.epilog.iter.check1531 ], [ %i.eim, %vec.epilog.middle.block1550 ]
  %.311102565.i.ph = phi i32 [ %.21109.i, %iter.check1529 ], [ %i.ehl, %vec.epilog.iter.check1531 ], [ %i.ein, %vec.epilog.middle.block1550 ]
  %.1012162564.i.ph = phi ptr [ %.91215.lcssa3198.i, %iter.check1529 ], [ %i.ega, %vec.epilog.iter.check1531 ], [ %i.ehs, %vec.epilog.middle.block1550 ]
  br label %.lr.ph2570.i

.preheader.i:                                     ; preds = %.lr.ph2570.i, %middle.block1519, %vec.epilog.middle.block1550, %._crit_edge2558.i
  %.101216.lcssa.i = phi ptr [ %.91215.lcssa3198.i, %._crit_edge2558.i ], [ %i.ehs, %vec.epilog.middle.block1550 ], [ %i.ega, %middle.block1519 ], [ %i.etd, %.lr.ph2570.i ] ; 11 uses
  %.31110.lcssa.i = phi i32 [ %.21109.i, %._crit_edge2558.i ], [ %i.ein, %vec.epilog.middle.block1550 ], [ %i.ehl, %middle.block1519 ], [ %i.esr, %.lr.ph2570.i ]
  %.31105.lcssa.i = phi i32 [ %.21104.i, %._crit_edge2558.i ], [ %i.eim, %vec.epilog.middle.block1550 ], [ %i.ehk, %middle.block1519 ], [ %i.etb, %.lr.ph2570.i ]
  %.21099.lcssa.i = phi ptr [ %.11098.i, %._crit_edge2558.i ], [ %i.ehq, %vec.epilog.middle.block1550 ], [ %i.efy, %middle.block1519 ], [ %i.etc, %.lr.ph2570.i ] ; 4 uses
  %.11094.lcssa.i = phi i32 [ %.01093.lcssa3203.i, %._crit_edge2558.i ], [ %i.eho, %vec.epilog.middle.block1550 ], [ %i.efw, %middle.block1519 ], [ %i.ete, %.lr.ph2570.i ] ; 6 uses
  %i.eio = add nuw nsw i32 %.11094.lcssa.i, 3
  %i.eip = icmp slt i32 %i.eio, %8
  br i1 %i.eip, label %.lr.ph2587.i.preheader, label %._crit_edge2588.i

.lr.ph2587.i.preheader:                           ; preds = %.preheader.i
  %9 = add i32 %.11094.lcssa.i, 7
  %10 = tail call i32 @llvm.smax.i32(i32 %8, i32 %9)
  %11 = add i32 %10, -4
  %i.eiq = sub i32 %11, %.11094.lcssa.i           ; 2 uses
  %i.eir = lshr i32 %i.eiq, 2
  %narrow1641 = add nuw nsw i32 %i.eir, 1
  %i.eis = zext nneg i32 %narrow1641 to i64       ; 2 uses
  %min.iters.check1445 = icmp ult i32 %i.eiq, 28
  br i1 %min.iters.check1445, label %.lr.ph2587.i.preheader1650, label %vector.ph1446

vector.ph1446:                                    ; preds = %.lr.ph2587.i.preheader
  %n.vec1447 = and i64 %i.eis, 2147483640         ; 5 uses
  %i.eit = trunc nuw nsw i64 %n.vec1447 to i32
  %i.eiu = shl i32 %i.eit, 2
  %i.eiv = add i32 %.11094.lcssa.i, %i.eiu        ; 2 uses
  %i.eiw = shl nuw nsw i64 %n.vec1447, 2
  %i.eix = getelementptr i8, ptr %.21099.lcssa.i, i64 %i.eiw ; 2 uses
  %i.eiy = shl nuw nsw i64 %n.vec1447, 3
  %i.eiz = getelementptr i8, ptr %.101216.lcssa.i, i64 %i.eiy ; 2 uses
  br label %vector.body1448

vector.body1448:                                  ; preds = %vector.body1448, %vector.ph1446
  %index1449 = phi i64 [ 0, %vector.ph1446 ], [ %index.next1472, %vector.body1448 ] ; 3 uses
  %vec.phi1450 = phi <8 x i32> [ zeroinitializer, %vector.ph1446 ], [ %i.erm, %vector.body1448 ]
  %vec.phi1451 = phi <8 x i32> [ zeroinitializer, %vector.ph1446 ], [ %i.epj, %vector.body1448 ]
  %vec.phi1452 = phi <8 x i32> [ zeroinitializer, %vector.ph1446 ], [ %i.eng, %vector.body1448 ]
  %vec.phi1453 = phi <8 x i32> [ zeroinitializer, %vector.ph1446 ], [ %i.eld, %vector.body1448 ]
  %vec.phi1454 = phi <8 x i32> [ zeroinitializer, %vector.ph1446 ], [ %i.eql, %vector.body1448 ]
  %vec.phi1455 = phi <8 x i32> [ zeroinitializer, %vector.ph1446 ], [ %i.eoi, %vector.body1448 ]
  %vec.phi1456 = phi <8 x i32> [ zeroinitializer, %vector.ph1446 ], [ %i.emf, %vector.body1448 ]
  %vec.phi1457 = phi <8 x i32> [ zeroinitializer, %vector.ph1446 ], [ %i.ekc, %vector.body1448 ]
  %i.eja = shl i64 %index1449, 2
  %next.gep1458 = getelementptr i8, ptr %.21099.lcssa.i, i64 %i.eja
  %i.ejb = shl i64 %index1449, 3                  ; 8 uses
  %next.gep1459 = getelementptr i8, ptr %.101216.lcssa.i, i64 %i.ejb ; 8 uses
  %i.ejc = getelementptr i8, ptr %.101216.lcssa.i, i64 %i.ejb ; 8 uses
  %next.gep1460 = getelementptr i8, ptr %i.ejc, i64 8
  %i.ejd = getelementptr i8, ptr %.101216.lcssa.i, i64 %i.ejb ; 8 uses
  %next.gep1461 = getelementptr i8, ptr %i.ejd, i64 16
  %i.eje = getelementptr i8, ptr %.101216.lcssa.i, i64 %i.ejb ; 8 uses
  %next.gep1462 = getelementptr i8, ptr %i.eje, i64 24
  %i.ejf = getelementptr i8, ptr %.101216.lcssa.i, i64 %i.ejb ; 8 uses
  %next.gep1463 = getelementptr i8, ptr %i.ejf, i64 32
  %i.ejg = getelementptr i8, ptr %.101216.lcssa.i, i64 %i.ejb ; 8 uses
  %next.gep1464 = getelementptr i8, ptr %i.ejg, i64 40
  %i.ejh = getelementptr i8, ptr %.101216.lcssa.i, i64 %i.ejb ; 8 uses
  %next.gep1465 = getelementptr i8, ptr %i.ejh, i64 48
  %i.eji = getelementptr i8, ptr %.101216.lcssa.i, i64 %i.ejb ; 8 uses
  %next.gep1466 = getelementptr i8, ptr %i.eji, i64 56
  %wide.vec1467 = load <32 x i8>, ptr %next.gep1458, align 1, !tbaa !17 ; 4 uses
  %strided.vec1468 = shufflevector <32 x i8> %wide.vec1467, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1469 = shufflevector <32 x i8> %wide.vec1467, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1470 = shufflevector <32 x i8> %wide.vec1467, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1471 = shufflevector <32 x i8> %wide.vec1467, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.ejj = sext <8 x i8> %strided.vec1468 to <8 x i32> ; 2 uses
  %i.ejk = load i8, ptr %next.gep1459, align 1, !tbaa !17
  %i.ejl = load i8, ptr %next.gep1460, align 1, !tbaa !17
  %i.ejm = load i8, ptr %next.gep1461, align 1, !tbaa !17
  %i.ejn = load i8, ptr %next.gep1462, align 1, !tbaa !17
  %i.ejo = load i8, ptr %next.gep1463, align 1, !tbaa !17
  %i.ejp = load i8, ptr %next.gep1464, align 1, !tbaa !17
  %i.ejq = load i8, ptr %next.gep1465, align 1, !tbaa !17
  %i.ejr = load i8, ptr %next.gep1466, align 1, !tbaa !17
  %i.ejs = insertelement <8 x i8> poison, i8 %i.ejk, i64 0
  %i.ejt = insertelement <8 x i8> %i.ejs, i8 %i.ejl, i64 1
  %i.eju = insertelement <8 x i8> %i.ejt, i8 %i.ejm, i64 2
  %i.ejv = insertelement <8 x i8> %i.eju, i8 %i.ejn, i64 3
  %i.ejw = insertelement <8 x i8> %i.ejv, i8 %i.ejo, i64 4
  %i.ejx = insertelement <8 x i8> %i.ejw, i8 %i.ejp, i64 5
  %i.ejy = insertelement <8 x i8> %i.ejx, i8 %i.ejq, i64 6
  %i.ejz = insertelement <8 x i8> %i.ejy, i8 %i.ejr, i64 7
  %i.eka = sext <8 x i8> %i.ejz to <8 x i32>
  %i.ekb = mul nsw <8 x i32> %i.eka, %i.ejj
  %i.ekc = add <8 x i32> %i.ekb, %vec.phi1457     ; 2 uses
  %i.ekd = getelementptr inbounds nuw i8, ptr %next.gep1459, i64 1
  %i.eke = getelementptr i8, ptr %i.ejc, i64 9
  %i.ekf = getelementptr i8, ptr %i.ejd, i64 17
  %i.ekg = getelementptr i8, ptr %i.eje, i64 25
  %i.ekh = getelementptr i8, ptr %i.ejf, i64 33
  %i.eki = getelementptr i8, ptr %i.ejg, i64 41
  %i.ekj = getelementptr i8, ptr %i.ejh, i64 49
  %i.ekk = getelementptr i8, ptr %i.eji, i64 57
  %i.ekl = load i8, ptr %i.ekd, align 1, !tbaa !17
  %i.ekm = load i8, ptr %i.eke, align 1, !tbaa !17
  %i.ekn = load i8, ptr %i.ekf, align 1, !tbaa !17
  %i.eko = load i8, ptr %i.ekg, align 1, !tbaa !17
  %i.ekp = load i8, ptr %i.ekh, align 1, !tbaa !17
  %i.ekq = load i8, ptr %i.eki, align 1, !tbaa !17
  %i.ekr = load i8, ptr %i.ekj, align 1, !tbaa !17
  %i.eks = load i8, ptr %i.ekk, align 1, !tbaa !17
  %i.ekt = insertelement <8 x i8> poison, i8 %i.ekl, i64 0
  %i.eku = insertelement <8 x i8> %i.ekt, i8 %i.ekm, i64 1
  %i.ekv = insertelement <8 x i8> %i.eku, i8 %i.ekn, i64 2
  %i.ekw = insertelement <8 x i8> %i.ekv, i8 %i.eko, i64 3
  %i.ekx = insertelement <8 x i8> %i.ekw, i8 %i.ekp, i64 4
  %i.eky = insertelement <8 x i8> %i.ekx, i8 %i.ekq, i64 5
  %i.ekz = insertelement <8 x i8> %i.eky, i8 %i.ekr, i64 6
  %i.ela = insertelement <8 x i8> %i.ekz, i8 %i.eks, i64 7
  %i.elb = sext <8 x i8> %i.ela to <8 x i32>
  %i.elc = mul nsw <8 x i32> %i.elb, %i.ejj
  %i.eld = add <8 x i32> %i.elc, %vec.phi1453     ; 2 uses
  %i.ele = sext <8 x i8> %strided.vec1469 to <8 x i32> ; 2 uses
  %i.elf = getelementptr inbounds nuw i8, ptr %next.gep1459, i64 2
  %i.elg = getelementptr i8, ptr %i.ejc, i64 10
  %i.elh = getelementptr i8, ptr %i.ejd, i64 18
  %i.eli = getelementptr i8, ptr %i.eje, i64 26
  %i.elj = getelementptr i8, ptr %i.ejf, i64 34
  %i.elk = getelementptr i8, ptr %i.ejg, i64 42
  %i.ell = getelementptr i8, ptr %i.ejh, i64 50
  %i.elm = getelementptr i8, ptr %i.eji, i64 58
  %i.eln = load i8, ptr %i.elf, align 1, !tbaa !17
  %i.elo = load i8, ptr %i.elg, align 1, !tbaa !17
  %i.elp = load i8, ptr %i.elh, align 1, !tbaa !17
  %i.elq = load i8, ptr %i.eli, align 1, !tbaa !17
  %i.elr = load i8, ptr %i.elj, align 1, !tbaa !17
  %i.els = load i8, ptr %i.elk, align 1, !tbaa !17
  %i.elt = load i8, ptr %i.ell, align 1, !tbaa !17
  %i.elu = load i8, ptr %i.elm, align 1, !tbaa !17
  %i.elv = insertelement <8 x i8> poison, i8 %i.eln, i64 0
  %i.elw = insertelement <8 x i8> %i.elv, i8 %i.elo, i64 1
  %i.elx = insertelement <8 x i8> %i.elw, i8 %i.elp, i64 2
  %i.ely = insertelement <8 x i8> %i.elx, i8 %i.elq, i64 3
  %i.elz = insertelement <8 x i8> %i.ely, i8 %i.elr, i64 4
  %i.ema = insertelement <8 x i8> %i.elz, i8 %i.els, i64 5
  %i.emb = insertelement <8 x i8> %i.ema, i8 %i.elt, i64 6
  %i.emc = insertelement <8 x i8> %i.emb, i8 %i.elu, i64 7
  %i.emd = sext <8 x i8> %i.emc to <8 x i32>
  %i.eme = mul nsw <8 x i32> %i.emd, %i.ele
  %i.emf = add <8 x i32> %i.eme, %vec.phi1456     ; 2 uses
  %i.emg = getelementptr inbounds nuw i8, ptr %next.gep1459, i64 3
  %i.emh = getelementptr i8, ptr %i.ejc, i64 11
  %i.emi = getelementptr i8, ptr %i.ejd, i64 19
  %i.emj = getelementptr i8, ptr %i.eje, i64 27
  %i.emk = getelementptr i8, ptr %i.ejf, i64 35
  %i.eml = getelementptr i8, ptr %i.ejg, i64 43
  %i.emm = getelementptr i8, ptr %i.ejh, i64 51
  %i.emn = getelementptr i8, ptr %i.eji, i64 59
  %i.emo = load i8, ptr %i.emg, align 1, !tbaa !17
  %i.emp = load i8, ptr %i.emh, align 1, !tbaa !17
  %i.emq = load i8, ptr %i.emi, align 1, !tbaa !17
  %i.emr = load i8, ptr %i.emj, align 1, !tbaa !17
  %i.ems = load i8, ptr %i.emk, align 1, !tbaa !17
  %i.emt = load i8, ptr %i.eml, align 1, !tbaa !17
  %i.emu = load i8, ptr %i.emm, align 1, !tbaa !17
  %i.emv = load i8, ptr %i.emn, align 1, !tbaa !17
  %i.emw = insertelement <8 x i8> poison, i8 %i.emo, i64 0
  %i.emx = insertelement <8 x i8> %i.emw, i8 %i.emp, i64 1
  %i.emy = insertelement <8 x i8> %i.emx, i8 %i.emq, i64 2
  %i.emz = insertelement <8 x i8> %i.emy, i8 %i.emr, i64 3
  %i.ena = insertelement <8 x i8> %i.emz, i8 %i.ems, i64 4
  %i.enb = insertelement <8 x i8> %i.ena, i8 %i.emt, i64 5
  %i.enc = insertelement <8 x i8> %i.enb, i8 %i.emu, i64 6
  %i.end = insertelement <8 x i8> %i.enc, i8 %i.emv, i64 7
  %i.ene = sext <8 x i8> %i.end to <8 x i32>
  %i.enf = mul nsw <8 x i32> %i.ene, %i.ele
  %i.eng = add <8 x i32> %i.enf, %vec.phi1452     ; 2 uses
  %i.enh = sext <8 x i8> %strided.vec1470 to <8 x i32> ; 2 uses
  %i.eni = getelementptr inbounds nuw i8, ptr %next.gep1459, i64 4
  %i.enj = getelementptr i8, ptr %i.ejc, i64 12
  %i.enk = getelementptr i8, ptr %i.ejd, i64 20
  %i.enl = getelementptr i8, ptr %i.eje, i64 28
  %i.enm = getelementptr i8, ptr %i.ejf, i64 36
  %i.enn = getelementptr i8, ptr %i.ejg, i64 44
  %i.eno = getelementptr i8, ptr %i.ejh, i64 52
  %i.enp = getelementptr i8, ptr %i.eji, i64 60
  %i.enq = load i8, ptr %i.eni, align 1, !tbaa !17
  %i.enr = load i8, ptr %i.enj, align 1, !tbaa !17
  %i.ens = load i8, ptr %i.enk, align 1, !tbaa !17
  %i.ent = load i8, ptr %i.enl, align 1, !tbaa !17
  %i.enu = load i8, ptr %i.enm, align 1, !tbaa !17
  %i.env = load i8, ptr %i.enn, align 1, !tbaa !17
  %i.enw = load i8, ptr %i.eno, align 1, !tbaa !17
  %i.enx = load i8, ptr %i.enp, align 1, !tbaa !17
  %i.eny = insertelement <8 x i8> poison, i8 %i.enq, i64 0
  %i.enz = insertelement <8 x i8> %i.eny, i8 %i.enr, i64 1
  %i.eoa = insertelement <8 x i8> %i.enz, i8 %i.ens, i64 2
  %i.eob = insertelement <8 x i8> %i.eoa, i8 %i.ent, i64 3
  %i.eoc = insertelement <8 x i8> %i.eob, i8 %i.enu, i64 4
  %i.eod = insertelement <8 x i8> %i.eoc, i8 %i.env, i64 5
  %i.eoe = insertelement <8 x i8> %i.eod, i8 %i.enw, i64 6
  %i.eof = insertelement <8 x i8> %i.eoe, i8 %i.enx, i64 7
  %i.eog = sext <8 x i8> %i.eof to <8 x i32>
  %i.eoh = mul nsw <8 x i32> %i.eog, %i.enh
  %i.eoi = add <8 x i32> %i.eoh, %vec.phi1455     ; 2 uses
  %i.eoj = getelementptr inbounds nuw i8, ptr %next.gep1459, i64 5
  %i.eok = getelementptr i8, ptr %i.ejc, i64 13
  %i.eol = getelementptr i8, ptr %i.ejd, i64 21
  %i.eom = getelementptr i8, ptr %i.eje, i64 29
  %i.eon = getelementptr i8, ptr %i.ejf, i64 37
  %i.eoo = getelementptr i8, ptr %i.ejg, i64 45
  %i.eop = getelementptr i8, ptr %i.ejh, i64 53
  %i.eoq = getelementptr i8, ptr %i.eji, i64 61
  %i.eor = load i8, ptr %i.eoj, align 1, !tbaa !17
  %i.eos = load i8, ptr %i.eok, align 1, !tbaa !17
  %i.eot = load i8, ptr %i.eol, align 1, !tbaa !17
  %i.eou = load i8, ptr %i.eom, align 1, !tbaa !17
  %i.eov = load i8, ptr %i.eon, align 1, !tbaa !17
  %i.eow = load i8, ptr %i.eoo, align 1, !tbaa !17
  %i.eox = load i8, ptr %i.eop, align 1, !tbaa !17
  %i.eoy = load i8, ptr %i.eoq, align 1, !tbaa !17
  %i.eoz = insertelement <8 x i8> poison, i8 %i.eor, i64 0
  %i.epa = insertelement <8 x i8> %i.eoz, i8 %i.eos, i64 1
  %i.epb = insertelement <8 x i8> %i.epa, i8 %i.eot, i64 2
  %i.epc = insertelement <8 x i8> %i.epb, i8 %i.eou, i64 3
end_hunk_1
begin_hunk_2_@_ZN4ncnn36gemm_transB_packed_tile_int8_avxvnniERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.evn = add <8 x i32> %i.evl, %vec.phi1395     ; 2 uses
  %index.next1409 = add nuw i64 %index1393, 16    ; 2 uses
  %i.evo = icmp eq i64 %index.next1409, %n.vec1391
  br i1 %i.evo, label %middle.block1410, label %vector.body1392, !llvm.loop !396

middle.block1410:                                 ; preds = %vector.body1392
  %bin.rdx1411 = add <8 x i32> %i.evn, %i.evm
  %i.evp = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1411) ; 3 uses
  %bin.rdx1412 = add <8 x i32> %i.evh, %i.evg
  %i.evq = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1412) ; 3 uses
  %cmp.n1413 = icmp eq i64 %i.euo, %n.vec1391
  br i1 %cmp.n1413, label %._crit_edge2607.i, label %vec.epilog.iter.check1422

vec.epilog.iter.check1422:                        ; preds = %middle.block1410
  %min.epilog.iters.check1423 = icmp eq i64 %i.eup, 0
  br i1 %min.epilog.iters.check1423, label %.lr.ph2606.i.preheader, label %vec.epilog.ph1424, !prof !40

vec.epilog.ph1424:                                ; preds = %vector.main.loop.iter.check1388, %vec.epilog.iter.check1422
  %vec.epilog.resume.val1414 = phi i64 [ %n.vec1391, %vec.epilog.iter.check1422 ], [ 0, %vector.main.loop.iter.check1388 ]
  %bc.merge.rdx1417 = phi i32 [ %i.evp, %vec.epilog.iter.check1422 ], [ %i.euj, %vector.main.loop.iter.check1388 ]
  %bc.merge.rdx1418 = phi i32 [ %i.evq, %vec.epilog.iter.check1422 ], [ %i.euf, %vector.main.loop.iter.check1388 ]
  %n.vec1425 = and i64 %i.euo, 8589934588         ; 5 uses
  %i.evr = trunc i64 %n.vec1425 to i32
  %i.evs = add i32 %.21095.lcssa.i, %i.evr
  %i.evt = getelementptr i8, ptr %.31100.lcssa.i, i64 %n.vec1425
  %i.evu = shl nuw nsw i64 %n.vec1425, 1
  %i.evv = getelementptr i8, ptr %.111217.lcssa.i, i64 %i.evu ; 2 uses
  %i.evw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1417, i64 0
  %i.evx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1418, i64 0
  br label %vec.epilog.vector.body1426

vec.epilog.vector.body1426:                       ; preds = %vec.epilog.vector.body1426, %vec.epilog.ph1424
  %index1427 = phi i64 [ %vec.epilog.resume.val1414, %vec.epilog.ph1424 ], [ %index.next1436, %vec.epilog.vector.body1426 ] ; 3 uses
  %vec.phi1428 = phi <4 x i32> [ %i.evw, %vec.epilog.ph1424 ], [ %i.ewf, %vec.epilog.vector.body1426 ]
  %vec.phi1429 = phi <4 x i32> [ %i.evx, %vec.epilog.ph1424 ], [ %i.ewc, %vec.epilog.vector.body1426 ]
  %next.gep1430 = getelementptr i8, ptr %.31100.lcssa.i, i64 %index1427
  %i.evy = shl i64 %index1427, 1
  %next.gep1431 = getelementptr i8, ptr %.111217.lcssa.i, i64 %i.evy
  %wide.load1432 = load <4 x i8>, ptr %next.gep1430, align 1, !tbaa !17
  %i.evz = sext <4 x i8> %wide.load1432 to <4 x i32> ; 2 uses
  %wide.vec1433 = load <8 x i8>, ptr %next.gep1431, align 1, !tbaa !17 ; 2 uses
  %strided.vec1434 = shufflevector <8 x i8> %wide.vec1433, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1435 = shufflevector <8 x i8> %wide.vec1433, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ewa = sext <4 x i8> %strided.vec1434 to <4 x i32>
  %i.ewb = mul nsw <4 x i32> %i.ewa, %i.evz
  %i.ewc = add <4 x i32> %i.ewb, %vec.phi1429     ; 2 uses
  %i.ewd = sext <4 x i8> %strided.vec1435 to <4 x i32>
  %i.ewe = mul nsw <4 x i32> %i.ewd, %i.evz
  %i.ewf = add <4 x i32> %i.ewe, %vec.phi1428     ; 2 uses
  %index.next1436 = add nuw i64 %index1427, 4     ; 2 uses
  %i.ewg = icmp eq i64 %index.next1436, %n.vec1425
  br i1 %i.ewg, label %vec.epilog.middle.block1437, label %vec.epilog.vector.body1426, !llvm.loop !397

vec.epilog.middle.block1437:                      ; preds = %vec.epilog.vector.body1426
  %i.ewh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ewf) ; 2 uses
  %i.ewi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ewc) ; 2 uses
  %cmp.n1438 = icmp eq i64 %i.euo, %n.vec1425
  br i1 %cmp.n1438, label %._crit_edge2607.i, label %.lr.ph2606.i.preheader

.lr.ph2606.i.preheader:                           ; preds = %iter.check1420, %vec.epilog.iter.check1422, %vec.epilog.middle.block1437
  %.310962604.i.ph = phi i32 [ %.21095.lcssa.i, %iter.check1420 ], [ %i.eur, %vec.epilog.iter.check1422 ], [ %i.evs, %vec.epilog.middle.block1437 ]
  %.411012603.i.ph = phi ptr [ %.31100.lcssa.i, %iter.check1420 ], [ %i.eus, %vec.epilog.iter.check1422 ], [ %i.evt, %vec.epilog.middle.block1437 ]
  %.411062602.i.ph = phi i32 [ %i.euj, %iter.check1420 ], [ %i.evp, %vec.epilog.iter.check1422 ], [ %i.ewh, %vec.epilog.middle.block1437 ]
  %.411112601.i.ph = phi i32 [ %i.euf, %iter.check1420 ], [ %i.evq, %vec.epilog.iter.check1422 ], [ %i.ewi, %vec.epilog.middle.block1437 ]
  %.1212182600.i.ph = phi ptr [ %.111217.lcssa.i, %iter.check1420 ], [ %i.euu, %vec.epilog.iter.check1422 ], [ %i.evv, %vec.epilog.middle.block1437 ]
  br label %.lr.ph2606.i

.lr.ph2606.i:                                     ; preds = %.lr.ph2606.i.preheader, %.lr.ph2606.i
  %.310962604.i = phi i32 [ %i.eww, %.lr.ph2606.i ], [ %.310962604.i.ph, %.lr.ph2606.i.preheader ]
  %.411012603.i = phi ptr [ %i.ewu, %.lr.ph2606.i ], [ %.411012603.i.ph, %.lr.ph2606.i.preheader ] ; 2 uses
  %.411062602.i = phi i32 [ %i.ewt, %.lr.ph2606.i ], [ %.411062602.i.ph, %.lr.ph2606.i.preheader ]
  %.411112601.i = phi i32 [ %i.ewo, %.lr.ph2606.i ], [ %.411112601.i.ph, %.lr.ph2606.i.preheader ]
  %.1212182600.i = phi ptr [ %i.ewv, %.lr.ph2606.i ], [ %.1212182600.i.ph, %.lr.ph2606.i.preheader ] ; 3 uses
  %i.ewj = load i8, ptr %.411012603.i, align 1, !tbaa !17
  %i.ewk = sext i8 %i.ewj to i32                  ; 2 uses
  %i.ewl = load i8, ptr %.1212182600.i, align 1, !tbaa !17
  %i.ewm = sext i8 %i.ewl to i32
  %i.ewn = mul nsw i32 %i.ewm, %i.ewk
  %i.ewo = add nsw i32 %i.ewn, %.411112601.i      ; 2 uses
  %i.ewp = getelementptr inbounds nuw i8, ptr %.1212182600.i, i64 1
  %i.ewq = load i8, ptr %i.ewp, align 1, !tbaa !17
  %i.ewr = sext i8 %i.ewq to i32
  %i.ews = mul nsw i32 %i.ewr, %i.ewk
  %i.ewt = add nsw i32 %i.ews, %.411062602.i      ; 2 uses
  %i.ewu = getelementptr inbounds nuw i8, ptr %.411012603.i, i64 1
  %i.ewv = getelementptr inbounds nuw i8, ptr %.1212182600.i, i64 2 ; 2 uses
  %i.eww = add nuw nsw i32 %.310962604.i, 1       ; 2 uses
  %exitcond2975.not.i = icmp eq i32 %i.eww, %8
  br i1 %exitcond2975.not.i, label %._crit_edge2607.i, label %.lr.ph2606.i, !llvm.loop !398

._crit_edge2607.i:                                ; preds = %.lr.ph2606.i, %middle.block1410, %vec.epilog.middle.block1437, %._crit_edge2588.i
  %.121218.lcssa.i = phi ptr [ %.111217.lcssa.i, %._crit_edge2588.i ], [ %i.evv, %vec.epilog.middle.block1437 ], [ %i.euu, %middle.block1410 ], [ %i.ewv, %.lr.ph2606.i ] ; 2 uses
  %.41111.lcssa.i = phi i32 [ %i.euf, %._crit_edge2588.i ], [ %i.ewi, %vec.epilog.middle.block1437 ], [ %i.evq, %middle.block1410 ], [ %i.ewo, %.lr.ph2606.i ]
  %.41106.lcssa.i = phi i32 [ %i.euj, %._crit_edge2588.i ], [ %i.ewh, %vec.epilog.middle.block1437 ], [ %i.evp, %middle.block1410 ], [ %i.ewt, %.lr.ph2606.i ]
  store i32 %.41111.lcssa.i, ptr %.182613.i, align 4, !tbaa !43
  %i.ewx = getelementptr inbounds nuw i8, ptr %.182613.i, i64 4
  store i32 %.41106.lcssa.i, ptr %i.ewx, align 4, !tbaa !43
  %i.ewy = getelementptr inbounds nuw i8, ptr %.182613.i, i64 8 ; 2 uses
  %i.ewz = add nuw nsw i32 %.212042612.i, 2       ; 3 uses
  %i.exa = or disjoint i32 %i.ewz, 1
  %i.exb = icmp slt i32 %i.exa, %6
  br i1 %i.exb, label %.lr.ph2614.i, label %.preheader1862.i, !llvm.loop !399

.lr.ph2658.i:                                     ; preds = %.lr.ph2658.i.preheader, %._crit_edge2652.i
  %.192657.i = phi ptr [ %i.fco, %._crit_edge2652.i ], [ %.18.lcssa.i, %.lr.ph2658.i.preheader ] ; 3 uses
  %.312052656.i = phi i32 [ %i.fcp, %._crit_edge2652.i ], [ %.21204.lcssa.i, %.lr.ph2658.i.preheader ]
  %.1312192655.i = phi ptr [ %.161222.lcssa.i, %._crit_edge2652.i ], [ %.81214.lcssa.i, %.lr.ph2658.i.preheader ] ; 5 uses
  br i1 %i.aml, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph2658.i
  %i.exc = load i32, ptr %.192657.i, align 4, !tbaa !43
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph2658.i
  %.01081.i = phi i32 [ %i.exc, %bb.ap ], [ 0, %.lr.ph2658.i ] ; 3 uses
  br i1 %i.amm, label %.lr.ph2623.i.preheader, label %._crit_edge2624.i

.lr.ph2623.i.preheader:                           ; preds = %bb.aq
  br i1 %min.iters.check1361, label %.lr.ph2623.i.preheader1649, label %vector.ph1362

vector.ph1362:                                    ; preds = %.lr.ph2623.i.preheader
  %i.exd = getelementptr i8, ptr %.1312192655.i, i64 %i.anv
  %i.exe = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.01081.i, i64 0
  br label %vector.body1364

vector.body1364:                                  ; preds = %vector.body1364, %vector.ph1362
  %index1365 = phi i64 [ 0, %vector.ph1362 ], [ %index.next1379, %vector.body1364 ] ; 2 uses
  %vec.phi1366 = phi <8 x i32> [ %i.exe, %vector.ph1362 ], [ %i.exv, %vector.body1364 ]
  %i.exf = shl i64 %index1365, 2                  ; 2 uses
  %next.gep1367 = getelementptr i8, ptr %.62663.i, i64 %i.exf
  %next.gep1368 = getelementptr i8, ptr %.1312192655.i, i64 %i.exf
  %wide.vec1369 = load <32 x i8>, ptr %next.gep1367, align 1, !tbaa !17 ; 4 uses
  %strided.vec1370 = shufflevector <32 x i8> %wide.vec1369, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1371 = shufflevector <32 x i8> %wide.vec1369, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1372 = shufflevector <32 x i8> %wide.vec1369, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1373 = shufflevector <32 x i8> %wide.vec1369, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.exg = sext <8 x i8> %strided.vec1370 to <8 x i32>
  %wide.vec1374 = load <32 x i8>, ptr %next.gep1368, align 1, !tbaa !17 ; 4 uses
  %strided.vec1375 = shufflevector <32 x i8> %wide.vec1374, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1376 = shufflevector <32 x i8> %wide.vec1374, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1377 = shufflevector <32 x i8> %wide.vec1374, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1378 = shufflevector <32 x i8> %wide.vec1374, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.exh = zext <8 x i8> %strided.vec1375 to <8 x i32>
  %i.exi = mul nsw <8 x i32> %i.exh, %i.exg
  %i.exj = add <8 x i32> %i.exi, %vec.phi1366
  %i.exk = sext <8 x i8> %strided.vec1371 to <8 x i32>
  %i.exl = zext <8 x i8> %strided.vec1376 to <8 x i32>
  %i.exm = mul nsw <8 x i32> %i.exl, %i.exk
  %i.exn = add <8 x i32> %i.exj, %i.exm
  %i.exo = sext <8 x i8> %strided.vec1372 to <8 x i32>
  %i.exp = zext <8 x i8> %strided.vec1377 to <8 x i32>
  %i.exq = mul nsw <8 x i32> %i.exp, %i.exo
  %i.exr = add <8 x i32> %i.exn, %i.exq
  %i.exs = sext <8 x i8> %strided.vec1373 to <8 x i32>
  %i.ext = zext <8 x i8> %strided.vec1378 to <8 x i32>
  %i.exu = mul nsw <8 x i32> %i.ext, %i.exs
  %i.exv = add <8 x i32> %i.exr, %i.exu           ; 2 uses
  %index.next1379 = add nuw i64 %index1365, 8     ; 2 uses
  %i.exw = icmp eq i64 %index.next1379, %n.vec1363
  br i1 %i.exw, label %middle.block1380, label %vector.body1364, !llvm.loop !400

middle.block1380:                                 ; preds = %vector.body1364
  %i.exx = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.exv) ; 2 uses
  br i1 %cmp.n1381, label %.loopexit, label %.lr.ph2623.i.preheader1649

.lr.ph2623.i.preheader1649:                       ; preds = %.lr.ph2623.i.preheader, %middle.block1380
  %.010742621.i.ph = phi i32 [ 0, %.lr.ph2623.i.preheader ], [ %i.anu, %middle.block1380 ]
  %.010772620.i.ph = phi ptr [ %.62663.i, %.lr.ph2623.i.preheader ], [ %i.dij, %middle.block1380 ]
  %.110822619.i.ph = phi i32 [ %.01081.i, %.lr.ph2623.i.preheader ], [ %i.exx, %middle.block1380 ]
  %.1412202618.i.ph = phi ptr [ %.1312192655.i, %.lr.ph2623.i.preheader ], [ %i.exd, %middle.block1380 ]
  br label %.lr.ph2623.i

.lr.ph2623.i:                                     ; preds = %.lr.ph2623.i.preheader1649, %.lr.ph2623.i
  %.010742621.i = phi i32 [ %i.eyg, %.lr.ph2623.i ], [ %.010742621.i.ph, %.lr.ph2623.i.preheader1649 ]
  %.010772620.i = phi ptr [ %i.eye, %.lr.ph2623.i ], [ %.010772620.i.ph, %.lr.ph2623.i.preheader1649 ] ; 2 uses
  %.110822619.i = phi i32 [ %op.rdx1643, %.lr.ph2623.i ], [ %.110822619.i.ph, %.lr.ph2623.i.preheader1649 ]
  %.1412202618.i = phi ptr [ %i.eyf, %.lr.ph2623.i ], [ %.1412202618.i.ph, %.lr.ph2623.i.preheader1649 ] ; 2 uses
  %i.exy = load <4 x i8>, ptr %.010772620.i, align 1, !tbaa !17
  %i.exz = sext <4 x i8> %i.exy to <4 x i32>
  %i.eya = load <4 x i8>, ptr %.1412202618.i, align 1, !tbaa !17
  %i.eyb = zext <4 x i8> %i.eya to <4 x i32>
  %i.eyc = mul nsw <4 x i32> %i.eyb, %i.exz
  %i.eyd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eyc)
  %op.rdx1643 = add i32 %i.eyd, %.110822619.i     ; 2 uses
  %i.eye = getelementptr inbounds nuw i8, ptr %.010772620.i, i64 4
  %i.eyf = getelementptr inbounds nuw i8, ptr %.1412202618.i, i64 4
  %i.eyg = add nuw nsw i32 %.010742621.i, 4       ; 2 uses
  %i.eyh = or disjoint i32 %i.eyg, 3
  %i.eyi = icmp slt i32 %i.eyh, %8
  br i1 %i.eyi, label %.lr.ph2623.i, label %.loopexit, !llvm.loop !401

.loopexit:                                        ; preds = %.lr.ph2623.i, %middle.block1380
  %.lcssa812 = phi i32 [ %i.exx, %middle.block1380 ], [ %op.rdx1643, %.lr.ph2623.i ]
  %i.eyj = getelementptr i8, ptr %.1312192655.i, i64 %i.amw
  %scevgep2976.i = getelementptr i8, ptr %i.eyj, i64 4
  %i.eyk = load i32, ptr %indvars.iv512, align 4, !tbaa !43
  %i.eyl = sub nsw i32 %.lcssa812, %i.eyk
  br label %._crit_edge2624.i

._crit_edge2624.i:                                ; preds = %.loopexit, %bb.aq
  %.01074.lcssa3213.i = phi i32 [ %i.amq, %.loopexit ], [ 0, %bb.aq ] ; 6 uses
  %.141220.lcssa3209.i = phi ptr [ %scevgep2976.i, %.loopexit ], [ %.1312192655.i, %bb.aq ] ; 4 uses
  %.21083.i = phi i32 [ %i.eyl, %.loopexit ], [ %.01081.i, %bb.aq ]
  %.11078.i = phi ptr [ %i.dii, %.loopexit ], [ %.62663.i, %bb.aq ] ; 4 uses
  %i.eym = or disjoint i32 %.01074.lcssa3213.i, 3
  %i.eyn = icmp slt i32 %i.eym, %8
  br i1 %i.eyn, label %.lr.ph2637.i.preheader, label %._crit_edge2638.i

.lr.ph2637.i.preheader:                           ; preds = %._crit_edge2624.i
  %12 = add i32 %.01074.lcssa3213.i, 7
  %13 = tail call i32 @llvm.smax.i32(i32 %8, i32 %12)
  %14 = add i32 %13, -4
  %i.eyo = sub i32 %14, %.01074.lcssa3213.i       ; 2 uses
  %i.eyp = lshr i32 %i.eyo, 2
  %narrow1642 = add nuw nsw i32 %i.eyp, 1
  %i.eyq = zext nneg i32 %narrow1642 to i64       ; 2 uses
  %min.iters.check1329 = icmp ult i32 %i.eyo, 28
  br i1 %min.iters.check1329, label %.lr.ph2637.i.preheader1648, label %vector.ph1330

vector.ph1330:                                    ; preds = %.lr.ph2637.i.preheader
  %n.vec1331 = and i64 %i.eyq, 2147483640         ; 4 uses
  %i.eyr = trunc nuw nsw i64 %n.vec1331 to i32
  %i.eys = shl i32 %i.eyr, 2
  %i.eyt = add i32 %.01074.lcssa3213.i, %i.eys    ; 2 uses
  %i.eyu = shl nuw nsw i64 %n.vec1331, 2          ; 2 uses
  %i.eyv = getelementptr i8, ptr %.11078.i, i64 %i.eyu ; 2 uses
  %i.eyw = getelementptr i8, ptr %.141220.lcssa3209.i, i64 %i.eyu ; 2 uses
  br label %vector.body1332

vector.body1332:                                  ; preds = %vector.body1332, %vector.ph1330
  %index1333 = phi i64 [ 0, %vector.ph1330 ], [ %index.next1350, %vector.body1332 ] ; 2 uses
  %vec.phi1334 = phi <8 x i32> [ zeroinitializer, %vector.ph1330 ], [ %i.ezn, %vector.body1332 ]
  %vec.phi1335 = phi <8 x i32> [ zeroinitializer, %vector.ph1330 ], [ %i.ezj, %vector.body1332 ]
  %vec.phi1336 = phi <8 x i32> [ zeroinitializer, %vector.ph1330 ], [ %i.ezf, %vector.body1332 ]
  %vec.phi1337 = phi <8 x i32> [ zeroinitializer, %vector.ph1330 ], [ %i.ezb, %vector.body1332 ]
  %i.eyx = shl i64 %index1333, 2                  ; 2 uses
  %next.gep1338 = getelementptr i8, ptr %.11078.i, i64 %i.eyx
  %next.gep1339 = getelementptr i8, ptr %.141220.lcssa3209.i, i64 %i.eyx
  %wide.vec1340 = load <32 x i8>, ptr %next.gep1338, align 1, !tbaa !17 ; 4 uses
  %strided.vec1341 = shufflevector <32 x i8> %wide.vec1340, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1342 = shufflevector <32 x i8> %wide.vec1340, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1343 = shufflevector <32 x i8> %wide.vec1340, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1344 = shufflevector <32 x i8> %wide.vec1340, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.eyy = sext <8 x i8> %strided.vec1341 to <8 x i32>
  %wide.vec1345 = load <32 x i8>, ptr %next.gep1339, align 1, !tbaa !17 ; 4 uses
  %strided.vec1346 = shufflevector <32 x i8> %wide.vec1345, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1347 = shufflevector <32 x i8> %wide.vec1345, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1348 = shufflevector <32 x i8> %wide.vec1345, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1349 = shufflevector <32 x i8> %wide.vec1345, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.eyz = sext <8 x i8> %strided.vec1346 to <8 x i32>
  %i.eza = mul nsw <8 x i32> %i.eyz, %i.eyy
  %i.ezb = add <8 x i32> %i.eza, %vec.phi1337     ; 2 uses
  %i.ezc = sext <8 x i8> %strided.vec1342 to <8 x i32>
  %i.ezd = sext <8 x i8> %strided.vec1347 to <8 x i32>
  %i.eze = mul nsw <8 x i32> %i.ezd, %i.ezc
  %i.ezf = add <8 x i32> %i.eze, %vec.phi1336     ; 2 uses
  %i.ezg = sext <8 x i8> %strided.vec1343 to <8 x i32>
  %i.ezh = sext <8 x i8> %strided.vec1348 to <8 x i32>
  %i.ezi = mul nsw <8 x i32> %i.ezh, %i.ezg
  %i.ezj = add <8 x i32> %i.ezi, %vec.phi1335     ; 2 uses
  %i.ezk = sext <8 x i8> %strided.vec1344 to <8 x i32>
  %i.ezl = sext <8 x i8> %strided.vec1349 to <8 x i32>
  %i.ezm = mul nsw <8 x i32> %i.ezl, %i.ezk
  %i.ezn = add <8 x i32> %i.ezm, %vec.phi1334     ; 2 uses
  %index.next1350 = add nuw i64 %index1333, 8     ; 2 uses
  %i.ezo = icmp eq i64 %index.next1350, %n.vec1331
  br i1 %i.ezo, label %middle.block1351, label %vector.body1332, !llvm.loop !402

middle.block1351:                                 ; preds = %vector.body1332
  %i.ezp = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ezn)
  %i.ezq = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ezj)
  %i.ezr = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ezf)
  %i.ezs = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ezb)
  %cmp.n1352 = icmp eq i64 %n.vec1331, %i.eyq
  %i.ezt = insertelement <4 x i32> poison, i32 %i.ezs, i64 0
  %i.ezu = insertelement <4 x i32> %i.ezt, i32 %i.ezr, i64 1
  %i.ezv = insertelement <4 x i32> %i.ezu, i32 %i.ezq, i64 2
  %i.ezw = insertelement <4 x i32> %i.ezv, i32 %i.ezp, i64 3 ; 2 uses
  br i1 %cmp.n1352, label %._crit_edge2638.i, label %.lr.ph2637.i.preheader1648

.lr.ph2637.i.preheader1648:                       ; preds = %.lr.ph2637.i.preheader, %middle.block1351
  %.110752631.i.ph = phi i32 [ %.01074.lcssa3213.i, %.lr.ph2637.i.preheader ], [ %i.eyt, %middle.block1351 ]
  %.210792630.i.ph = phi ptr [ %.11078.i, %.lr.ph2637.i.preheader ], [ %i.eyv, %middle.block1351 ]
  %.1512212629.i.ph = phi ptr [ %.141220.lcssa3209.i, %.lr.ph2637.i.preheader ], [ %i.eyw, %middle.block1351 ]
  %.ph = phi <4 x i32> [ zeroinitializer, %.lr.ph2637.i.preheader ], [ %i.ezw, %middle.block1351 ]
  br label %.lr.ph2637.i

.lr.ph2637.i:                                     ; preds = %.lr.ph2637.i.preheader1648, %.lr.ph2637.i
  %.110752631.i = phi i32 [ %i.fag, %.lr.ph2637.i ], [ %.110752631.i.ph, %.lr.ph2637.i.preheader1648 ]
  %.210792630.i = phi ptr [ %i.fae, %.lr.ph2637.i ], [ %.210792630.i.ph, %.lr.ph2637.i.preheader1648 ] ; 2 uses
  %.1512212629.i = phi ptr [ %i.faf, %.lr.ph2637.i ], [ %.1512212629.i.ph, %.lr.ph2637.i.preheader1648 ] ; 2 uses
  %i.ezx = phi <4 x i32> [ %i.fad, %.lr.ph2637.i ], [ %.ph, %.lr.ph2637.i.preheader1648 ]
  %i.ezy = load <4 x i8>, ptr %.210792630.i, align 1, !tbaa !17
  %i.ezz = sext <4 x i8> %i.ezy to <4 x i32>
  %i.faa = load <4 x i8>, ptr %.1512212629.i, align 1, !tbaa !17
  %i.fab = sext <4 x i8> %i.faa to <4 x i32>
  %i.fac = mul nsw <4 x i32> %i.fab, %i.ezz
  %i.fad = add nsw <4 x i32> %i.fac, %i.ezx       ; 2 uses
  %i.fae = getelementptr inbounds nuw i8, ptr %.210792630.i, i64 4 ; 2 uses
  %i.faf = getelementptr inbounds nuw i8, ptr %.1512212629.i, i64 4 ; 2 uses
  %i.fag = add nuw nsw i32 %.110752631.i, 4       ; 3 uses
  %i.fah = or disjoint i32 %i.fag, 3
  %i.fai = icmp slt i32 %i.fah, %8
  br i1 %i.fai, label %.lr.ph2637.i, label %._crit_edge2638.i, !llvm.loop !403

._crit_edge2638.i:                                ; preds = %.lr.ph2637.i, %middle.block1351, %._crit_edge2624.i
  %.151221.lcssa.i = phi ptr [ %.141220.lcssa3209.i, %._crit_edge2624.i ], [ %i.eyw, %middle.block1351 ], [ %i.faf, %.lr.ph2637.i ] ; 6 uses
  %.21079.lcssa.i = phi ptr [ %.11078.i, %._crit_edge2624.i ], [ %i.eyv, %middle.block1351 ], [ %i.fae, %.lr.ph2637.i ] ; 5 uses
  %.11075.lcssa.i = phi i32 [ %.01074.lcssa3213.i, %._crit_edge2624.i ], [ %i.eyt, %middle.block1351 ], [ %i.fag, %.lr.ph2637.i ] ; 5 uses
  %i.faj = phi <4 x i32> [ zeroinitializer, %._crit_edge2624.i ], [ %i.ezw, %middle.block1351 ], [ %i.fad, %.lr.ph2637.i ]
  %i.fak = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.faj)
  %op.rdx = add i32 %i.fak, %.21083.i             ; 4 uses
  %i.fal = icmp slt i32 %.11075.lcssa.i, %8
  br i1 %i.fal, label %iter.check1308, label %._crit_edge2652.i

iter.check1308:                                   ; preds = %._crit_edge2638.i
  %i.fam = xor i32 %.11075.lcssa.i, -1
  %i.fan = add i32 %8, %i.fam                     ; 3 uses
  %i.fao = zext i32 %i.fan to i64
  %i.fap = add nuw nsw i64 %i.fao, 1              ; 5 uses
  %min.iters.check1276 = icmp ult i32 %i.fan, 3
  br i1 %min.iters.check1276, label %.lr.ph2651.i.preheader, label %vector.main.loop.iter.check1277

vector.main.loop.iter.check1277:                  ; preds = %iter.check1308
  %min.iters.check1278 = icmp ult i32 %i.fan, 31
  br i1 %min.iters.check1278, label %vec.epilog.ph1312, label %vector.ph1279

vector.ph1279:                                    ; preds = %vector.main.loop.iter.check1277
  %i.faq = and i64 %i.fap, 28
  %n.vec1280 = and i64 %i.fap, 8589934560         ; 6 uses
  %i.far = trunc i64 %n.vec1280 to i32
  %i.fas = add i32 %.11075.lcssa.i, %i.far
  %i.fat = getelementptr i8, ptr %.21079.lcssa.i, i64 %n.vec1280
  %i.fau = getelementptr i8, ptr %.151221.lcssa.i, i64 %n.vec1280 ; 2 uses
  %i.fav = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %op.rdx, i64 0
  br label %vector.body1281

vector.body1281:                                  ; preds = %vector.body1281, %vector.ph1279
  %index1282 = phi i64 [ 0, %vector.ph1279 ], [ %index.next1297, %vector.body1281 ] ; 3 uses
  %vec.phi1283 = phi <8 x i32> [ %i.fav, %vector.ph1279 ], [ %i.fbo, %vector.body1281 ]
  %vec.phi1284 = phi <8 x i32> [ zeroinitializer, %vector.ph1279 ], [ %i.fbp, %vector.body1281 ]
  %vec.phi1285 = phi <8 x i32> [ zeroinitializer, %vector.ph1279 ], [ %i.fbq, %vector.body1281 ]
  %vec.phi1286 = phi <8 x i32> [ zeroinitializer, %vector.ph1279 ], [ %i.fbr, %vector.body1281 ]
  %next.gep1287 = getelementptr i8, ptr %.21079.lcssa.i, i64 %index1282 ; 4 uses
  %next.gep1288 = getelementptr i8, ptr %.151221.lcssa.i, i64 %index1282 ; 4 uses
  %i.faw = getelementptr i8, ptr %next.gep1287, i64 8
  %i.fax = getelementptr i8, ptr %next.gep1287, i64 16
  %i.fay = getelementptr i8, ptr %next.gep1287, i64 24
  %wide.load1289 = load <8 x i8>, ptr %next.gep1287, align 1, !tbaa !17
  %wide.load1290 = load <8 x i8>, ptr %i.faw, align 1, !tbaa !17
  %wide.load1291 = load <8 x i8>, ptr %i.fax, align 1, !tbaa !17
  %wide.load1292 = load <8 x i8>, ptr %i.fay, align 1, !tbaa !17
  %i.faz = sext <8 x i8> %wide.load1289 to <8 x i32>
  %i.fba = sext <8 x i8> %wide.load1290 to <8 x i32>
  %i.fbb = sext <8 x i8> %wide.load1291 to <8 x i32>
  %i.fbc = sext <8 x i8> %wide.load1292 to <8 x i32>
  %i.fbd = getelementptr i8, ptr %next.gep1288, i64 8
  %i.fbe = getelementptr i8, ptr %next.gep1288, i64 16
  %i.fbf = getelementptr i8, ptr %next.gep1288, i64 24
  %wide.load1293 = load <8 x i8>, ptr %next.gep1288, align 1, !tbaa !17
  %wide.load1294 = load <8 x i8>, ptr %i.fbd, align 1, !tbaa !17
  %wide.load1295 = load <8 x i8>, ptr %i.fbe, align 1, !tbaa !17
  %wide.load1296 = load <8 x i8>, ptr %i.fbf, align 1, !tbaa !17
  %i.fbg = sext <8 x i8> %wide.load1293 to <8 x i32>
  %i.fbh = sext <8 x i8> %wide.load1294 to <8 x i32>
  %i.fbi = sext <8 x i8> %wide.load1295 to <8 x i32>
  %i.fbj = sext <8 x i8> %wide.load1296 to <8 x i32>
  %i.fbk = mul nsw <8 x i32> %i.fbg, %i.faz
  %i.fbl = mul nsw <8 x i32> %i.fbh, %i.fba
  %i.fbm = mul nsw <8 x i32> %i.fbi, %i.fbb
  %i.fbn = mul nsw <8 x i32> %i.fbj, %i.fbc
  %i.fbo = add <8 x i32> %i.fbk, %vec.phi1283     ; 2 uses
  %i.fbp = add <8 x i32> %i.fbl, %vec.phi1284     ; 2 uses
  %i.fbq = add <8 x i32> %i.fbm, %vec.phi1285     ; 2 uses
  %i.fbr = add <8 x i32> %i.fbn, %vec.phi1286     ; 2 uses
  %index.next1297 = add nuw i64 %index1282, 32    ; 2 uses
  %i.fbs = icmp eq i64 %index.next1297, %n.vec1280
  br i1 %i.fbs, label %middle.block1298, label %vector.body1281, !llvm.loop !404

middle.block1298:                                 ; preds = %vector.body1281
  %bin.rdx1299 = add <8 x i32> %i.fbp, %i.fbo
  %bin.rdx1300 = add <8 x i32> %i.fbq, %bin.rdx1299
  %bin.rdx1301 = add <8 x i32> %i.fbr, %bin.rdx1300
  %i.fbt = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1301) ; 3 uses
  %cmp.n1302 = icmp eq i64 %i.fap, %n.vec1280
  br i1 %cmp.n1302, label %._crit_edge2652.i, label %vec.epilog.iter.check1310

vec.epilog.iter.check1310:                        ; preds = %middle.block1298
  %min.epilog.iters.check1311 = icmp eq i64 %i.faq, 0
  br i1 %min.epilog.iters.check1311, label %.lr.ph2651.i.preheader, label %vec.epilog.ph1312, !prof !122

vec.epilog.ph1312:                                ; preds = %vector.main.loop.iter.check1277, %vec.epilog.iter.check1310
  %vec.epilog.resume.val1303 = phi i64 [ %n.vec1280, %vec.epilog.iter.check1310 ], [ 0, %vector.main.loop.iter.check1277 ]
  %bc.merge.rdx1306 = phi i32 [ %i.fbt, %vec.epilog.iter.check1310 ], [ %op.rdx, %vector.main.loop.iter.check1277 ]
  %n.vec1313 = and i64 %i.fap, 8589934588         ; 5 uses
  %i.fbu = trunc i64 %n.vec1313 to i32
  %i.fbv = add i32 %.11075.lcssa.i, %i.fbu
  %i.fbw = getelementptr i8, ptr %.21079.lcssa.i, i64 %n.vec1313
  %i.fbx = getelementptr i8, ptr %.151221.lcssa.i, i64 %n.vec1313 ; 2 uses
  %i.fby = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1306, i64 0
  br label %vec.epilog.vector.body1314

vec.epilog.vector.body1314:                       ; preds = %vec.epilog.vector.body1314, %vec.epilog.ph1312
  %index1315 = phi i64 [ %vec.epilog.resume.val1303, %vec.epilog.ph1312 ], [ %index.next1321, %vec.epilog.vector.body1314 ] ; 3 uses
  %vec.phi1316 = phi <4 x i32> [ %i.fby, %vec.epilog.ph1312 ], [ %i.fcc, %vec.epilog.vector.body1314 ]
  %next.gep1317 = getelementptr i8, ptr %.21079.lcssa.i, i64 %index1315
  %next.gep1318 = getelementptr i8, ptr %.151221.lcssa.i, i64 %index1315
  %wide.load1319 = load <4 x i8>, ptr %next.gep1317, align 1, !tbaa !17
  %i.fbz = sext <4 x i8> %wide.load1319 to <4 x i32>
  %wide.load1320 = load <4 x i8>, ptr %next.gep1318, align 1, !tbaa !17
  %i.fca = sext <4 x i8> %wide.load1320 to <4 x i32>
  %i.fcb = mul nsw <4 x i32> %i.fca, %i.fbz
  %i.fcc = add <4 x i32> %i.fcb, %vec.phi1316     ; 2 uses
end_hunk_2
