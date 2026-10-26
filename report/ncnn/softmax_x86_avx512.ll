Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/softmax_x86_avx512?download=true
inline.NumInlined: 28
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN4ncnnL7softmaxEPfiimiS0_S0_:bb.a
  %lcmp.mod972.not = icmp eq i32 %xtraiter971, 0
  br i1 %lcmp.mod972.not, label %.lr.ph907.i.prol.loopexit, label %.lr.ph907.i.prol

.lr.ph907.i.prol:                                 ; preds = %.lr.ph907.i.preheader, %.lr.ph907.i.prol
  %.2526906.i.prol = phi ptr [ %i.brq, %.lr.ph907.i.prol ], [ %.1525.lcssa.i, %.lr.ph907.i.preheader ] ; 3 uses
  %.2529905.i.prol = phi ptr [ %i.brr, %.lr.ph907.i.prol ], [ %.1528.lcssa.i, %.lr.ph907.i.preheader ] ; 2 uses
  %.2532904.i.prol = phi i32 [ %i.brs, %.lr.ph907.i.prol ], [ %.1531.lcssa.i, %.lr.ph907.i.preheader ]
  %prol.iter973 = phi i32 [ %prol.iter973.next, %.lr.ph907.i.prol ], [ 0, %.lr.ph907.i.preheader ]
  %i.brl = load <8 x float>, ptr %.2526906.i.prol, align 1, !tbaa !49
  %i.brm = load float, ptr %.2529905.i.prol, align 4, !tbaa !53
  %i.brn = insertelement <8 x float> poison, float %i.brm, i64 0
  %i.bro = shufflevector <8 x float> %i.brn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.brp = fmul fast <8 x float> %i.bro, %i.brl
  store <8 x float> %i.brp, ptr %.2526906.i.prol, align 1, !tbaa !49
  %i.brq = getelementptr inbounds nuw i8, ptr %.2526906.i.prol, i64 32 ; 2 uses
  %i.brr = getelementptr inbounds nuw i8, ptr %.2529905.i.prol, i64 4 ; 2 uses
  %i.brs = add nuw nsw i32 %.2532904.i.prol, 1    ; 2 uses
  %prol.iter973.next = add i32 %prol.iter973, 1   ; 2 uses
  %prol.iter973.cmp.not = icmp eq i32 %prol.iter973.next, %xtraiter971
  br i1 %prol.iter973.cmp.not, label %.lr.ph907.i.prol.loopexit, label %.lr.ph907.i.prol, !llvm.loop !129

.lr.ph907.i.prol.loopexit:                        ; preds = %.lr.ph907.i.prol, %.lr.ph907.i.preheader
  %.2526906.i.unr = phi ptr [ %.1525.lcssa.i, %.lr.ph907.i.preheader ], [ %i.brq, %.lr.ph907.i.prol ]
  %.2529905.i.unr = phi ptr [ %.1528.lcssa.i, %.lr.ph907.i.preheader ], [ %i.brr, %.lr.ph907.i.prol ]
  %.2532904.i.unr = phi i32 [ %.1531.lcssa.i, %.lr.ph907.i.preheader ], [ %i.brs, %.lr.ph907.i.prol ]
  %i.brt = sub i32 %.1531.lcssa.i, %4
  %i.bru = icmp ugt i32 %i.brt, -4
  br i1 %i.bru, label %._crit_edge908.i, label %.lr.ph907.i

.lr.ph900.i:                                      ; preds = %.preheader814.i, %.lr.ph900.i
  %.1525899.i = phi ptr [ %i.bsv, %.lr.ph900.i ], [ %.0524.lcssa.i, %.preheader814.i ] ; 6 uses
  %.1528898.i = phi ptr [ %i.bsw, %.lr.ph900.i ], [ %.0527.lcssa.i, %.preheader814.i ] ; 5 uses
  %.1531897.i = phi i32 [ %i.bsx, %.lr.ph900.i ], [ %.0530.lcssa.i, %.preheader814.i ]
  %i.brv = load <8 x float>, ptr %.1525899.i, align 1, !tbaa !49
  %i.brw = getelementptr inbounds nuw i8, ptr %.1525899.i, i64 32 ; 2 uses
  %i.brx = load <8 x float>, ptr %i.brw, align 1, !tbaa !49
  %i.bry = getelementptr inbounds nuw i8, ptr %.1525899.i, i64 64 ; 2 uses
  %i.brz = load <8 x float>, ptr %i.bry, align 1, !tbaa !49
  %i.bsa = getelementptr inbounds nuw i8, ptr %.1525899.i, i64 96 ; 2 uses
  %i.bsb = load <8 x float>, ptr %i.bsa, align 1, !tbaa !49
  %i.bsc = load float, ptr %.1528898.i, align 4, !tbaa !53
  %i.bsd = insertelement <8 x float> poison, float %i.bsc, i64 0
  %i.bse = shufflevector <8 x float> %i.bsd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bsf = fmul fast <8 x float> %i.bse, %i.brv
  %i.bsg = getelementptr inbounds nuw i8, ptr %.1528898.i, i64 4
  %i.bsh = load float, ptr %i.bsg, align 4, !tbaa !53
  %i.bsi = insertelement <8 x float> poison, float %i.bsh, i64 0
  %i.bsj = shufflevector <8 x float> %i.bsi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bsk = fmul fast <8 x float> %i.bsj, %i.brx
  %i.bsl = getelementptr inbounds nuw i8, ptr %.1528898.i, i64 8
  %i.bsm = load float, ptr %i.bsl, align 4, !tbaa !53
  %i.bsn = insertelement <8 x float> poison, float %i.bsm, i64 0
  %i.bso = shufflevector <8 x float> %i.bsn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bsp = fmul fast <8 x float> %i.bso, %i.brz
  %i.bsq = getelementptr inbounds nuw i8, ptr %.1528898.i, i64 12
  %i.bsr = load float, ptr %i.bsq, align 4, !tbaa !53
  %i.bss = insertelement <8 x float> poison, float %i.bsr, i64 0
  %i.bst = shufflevector <8 x float> %i.bss, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bsu = fmul fast <8 x float> %i.bst, %i.bsb
  store <8 x float> %i.bsf, ptr %.1525899.i, align 1, !tbaa !49
  store <8 x float> %i.bsk, ptr %i.brw, align 1, !tbaa !49
  store <8 x float> %i.bsp, ptr %i.bry, align 1, !tbaa !49
  store <8 x float> %i.bsu, ptr %i.bsa, align 1, !tbaa !49
  %i.bsv = getelementptr inbounds nuw i8, ptr %.1525899.i, i64 128 ; 2 uses
  %i.bsw = getelementptr inbounds nuw i8, ptr %.1528898.i, i64 16 ; 2 uses
  %i.bsx = add nuw nsw i32 %.1531897.i, 4         ; 3 uses
  %i.bsy = or disjoint i32 %i.bsx, 3
  %i.bsz = icmp slt i32 %i.bsy, %4
  br i1 %i.bsz, label %.lr.ph900.i, label %.preheader.i86, !llvm.loop !130

.lr.ph907.i:                                      ; preds = %.lr.ph907.i.prol.loopexit, %.lr.ph907.i
  %.2526906.i = phi ptr [ %i.bua, %.lr.ph907.i ], [ %.2526906.i.unr, %.lr.ph907.i.prol.loopexit ] ; 6 uses
  %.2529905.i = phi ptr [ %i.bub, %.lr.ph907.i ], [ %.2529905.i.unr, %.lr.ph907.i.prol.loopexit ] ; 5 uses
  %.2532904.i = phi i32 [ %i.buc, %.lr.ph907.i ], [ %.2532904.i.unr, %.lr.ph907.i.prol.loopexit ]
  %i.bta = load <8 x float>, ptr %.2526906.i, align 1, !tbaa !49
  %i.btb = load float, ptr %.2529905.i, align 4, !tbaa !53
  %i.btc = insertelement <8 x float> poison, float %i.btb, i64 0
  %i.btd = shufflevector <8 x float> %i.btc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bte = fmul fast <8 x float> %i.btd, %i.bta
  store <8 x float> %i.bte, ptr %.2526906.i, align 1, !tbaa !49
  %i.btf = getelementptr inbounds nuw i8, ptr %.2526906.i, i64 32 ; 2 uses
  %i.btg = getelementptr inbounds nuw i8, ptr %.2529905.i, i64 4
  %i.bth = load <8 x float>, ptr %i.btf, align 1, !tbaa !49
  %i.bti = load float, ptr %i.btg, align 4, !tbaa !53
  %i.btj = insertelement <8 x float> poison, float %i.bti, i64 0
  %i.btk = shufflevector <8 x float> %i.btj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.btl = fmul fast <8 x float> %i.btk, %i.bth
  store <8 x float> %i.btl, ptr %i.btf, align 1, !tbaa !49
  %i.btm = getelementptr inbounds nuw i8, ptr %.2526906.i, i64 64 ; 2 uses
  %i.btn = getelementptr inbounds nuw i8, ptr %.2529905.i, i64 8
  %i.bto = load <8 x float>, ptr %i.btm, align 1, !tbaa !49
  %i.btp = load float, ptr %i.btn, align 4, !tbaa !53
  %i.btq = insertelement <8 x float> poison, float %i.btp, i64 0
  %i.btr = shufflevector <8 x float> %i.btq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bts = fmul fast <8 x float> %i.btr, %i.bto
  store <8 x float> %i.bts, ptr %i.btm, align 1, !tbaa !49
  %i.btt = getelementptr inbounds nuw i8, ptr %.2526906.i, i64 96 ; 2 uses
  %i.btu = getelementptr inbounds nuw i8, ptr %.2529905.i, i64 12
  %i.btv = load <8 x float>, ptr %i.btt, align 1, !tbaa !49
  %i.btw = load float, ptr %i.btu, align 4, !tbaa !53
  %i.btx = insertelement <8 x float> poison, float %i.btw, i64 0
  %i.bty = shufflevector <8 x float> %i.btx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.btz = fmul fast <8 x float> %i.bty, %i.btv
  store <8 x float> %i.btz, ptr %i.btt, align 1, !tbaa !49
  %i.bua = getelementptr inbounds nuw i8, ptr %.2526906.i, i64 128
  %i.bub = getelementptr inbounds nuw i8, ptr %.2529905.i, i64 16
  %i.buc = add nuw nsw i32 %.2532904.i, 4         ; 2 uses
  %exitcond946.not.i.3 = icmp eq i32 %i.buc, %4
  br i1 %exitcond946.not.i.3, label %._crit_edge908.i, label %.lr.ph907.i, !llvm.loop !131

._crit_edge908.i:                                 ; preds = %.lr.ph907.i.prol.loopexit, %.lr.ph907.i, %.preheader.i86
  %indvars.iv.next948.i = add nuw nsw i64 %indvars.iv947.i, 1 ; 2 uses
  %exitcond951.not.i = icmp eq i64 %indvars.iv.next948.i, %wide.trip.count950.i
  br i1 %exitcond951.not.i, label %_ZN4ncnnL13softmax_pack8EPfimiS0_S0_.exit, label %bb.g, !llvm.loop !132

_ZN4ncnnL13softmax_pack8EPfimiS0_S0_.exit:        ; preds = %._crit_edge908.i, %.preheader815.i
  switch i32 %2, label %_ZN4ncnnL13softmax_pack1EPfimiS0_S0_.exit [
    i32 4, label %bb.h
    i32 1, label %bb.k
  ]

bb.h:                                             ; preds = %.split, %_ZN4ncnnL14softmax_pack16EPfimiS0_S0_.exit, %_ZN4ncnnL13softmax_pack8EPfimiS0_S0_.exit
  %i.bud = icmp sgt i32 %1, 0                     ; 2 uses
  br i1 %i.bud, label %.lr.ph777.i, label %.preheader744.i

.lr.ph777.i:                                      ; preds = %bb.h
  %i.bue = and i32 %4, -16                        ; 2 uses
  %wide.trip.count.i96 = zext nneg i32 %1 to i64  ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i100, %.lr.ph777.i
  %indvars.iv.i97 = phi i64 [ 0, %.lr.ph777.i ], [ %indvars.iv.next.i101, %._crit_edge.i100 ] ; 2 uses
  %i.buf = mul i64 %indvars.iv.i97, %3
  %i.bug = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.buf ; 2 uses
  br i1 %i.a, label %.lr.ph.i104, label %.preheader751.i

.preheader751.i:                                  ; preds = %.lr.ph.i104, %bb.i
  %.0445.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.bue, %.lr.ph.i104 ] ; 3 uses
  %.0441.lcssa.i = phi ptr [ %5, %bb.i ], [ %i.bvd, %.lr.ph.i104 ] ; 2 uses
  %.0440.lcssa.i = phi ptr [ %i.bug, %bb.i ], [ %i.bvc, %.lr.ph.i104 ] ; 2 uses
  %i.buh = or disjoint i32 %.0445.lcssa.i, 7
  %i.bui = icmp slt i32 %i.buh, %4
  br i1 %i.bui, label %.lr.ph760.i, label %.preheader750.i

.lr.ph.i104:                                      ; preds = %bb.i, %.lr.ph.i104
  %.0440754.i = phi ptr [ %i.bvc, %.lr.ph.i104 ], [ %i.bug, %bb.i ] ; 5 uses
  %.0441753.i = phi ptr [ %i.bvd, %.lr.ph.i104 ], [ %5, %bb.i ] ; 3 uses
  %.0445752.i = phi i32 [ %i.bve, %.lr.ph.i104 ], [ 0, %bb.i ]
  %i.buj = load <16 x float>, ptr %.0440754.i, align 1, !tbaa !49 ; 2 uses
  %i.buk = getelementptr inbounds nuw i8, ptr %.0440754.i, i64 64
  %i.bul = load <16 x float>, ptr %i.buk, align 1, !tbaa !49 ; 2 uses
  %i.bum = getelementptr inbounds nuw i8, ptr %.0440754.i, i64 128
  %i.bun = load <16 x float>, ptr %i.bum, align 1, !tbaa !49 ; 2 uses
  %i.buo = getelementptr inbounds nuw i8, ptr %.0440754.i, i64 192
  %i.bup = load <16 x float>, ptr %i.buo, align 1, !tbaa !49 ; 2 uses
  %i.buq = shufflevector <16 x float> %i.buj, <16 x float> %i.bul, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>
  %i.bur = shufflevector <16 x float> %i.buj, <16 x float> %i.bul, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>
  %i.bus = shufflevector <16 x float> %i.bun, <16 x float> %i.bup, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>
  %i.but = shufflevector <16 x float> %i.bun, <16 x float> %i.bup, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>
  %i.buu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.buq, <16 x float> nofpclass(nan inf) %i.bur, i32 4) ; 2 uses
  %i.buv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bus, <16 x float> nofpclass(nan inf) %i.but, i32 4) ; 2 uses
  %i.buw = shufflevector <16 x float> %i.buu, <16 x float> %i.buv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>
  %i.bux = shufflevector <16 x float> %i.buu, <16 x float> %i.buv, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>
  %i.buy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.buw, <16 x float> nofpclass(nan inf) %i.bux, i32 4)
  %i.buz = shufflevector <16 x float> %i.buy, <16 x float> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 2, i32 6, i32 10, i32 14, i32 1, i32 5, i32 9, i32 13, i32 3, i32 7, i32 11, i32 15>
  %i.bva = load <16 x float>, ptr %.0441753.i, align 1, !tbaa !49
  %i.bvb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bva, <16 x float> nofpclass(nan inf) %i.buz, i32 4)
  store <16 x float> %i.bvb, ptr %.0441753.i, align 1, !tbaa !49
  %i.bvc = getelementptr inbounds nuw i8, ptr %.0440754.i, i64 256 ; 2 uses
  %i.bvd = getelementptr inbounds nuw i8, ptr %.0441753.i, i64 64 ; 2 uses
  %i.bve = add nuw nsw i32 %.0445752.i, 16        ; 2 uses
  %i.bvf = or disjoint i32 %i.bve, 15
  %i.bvg = icmp slt i32 %i.bvf, %4
  br i1 %i.bvg, label %.lr.ph.i104, label %.preheader751.i, !llvm.loop !133

.preheader750.i:                                  ; preds = %.lr.ph760.i, %.preheader751.i
  %.1446.lcssa.i = phi i32 [ %.0445.lcssa.i, %.preheader751.i ], [ %i.bwb, %.lr.ph760.i ] ; 3 uses
  %.1442.lcssa.i = phi ptr [ %.0441.lcssa.i, %.preheader751.i ], [ %i.bwa, %.lr.ph760.i ] ; 2 uses
  %.1.lcssa.i98 = phi ptr [ %.0440.lcssa.i, %.preheader751.i ], [ %i.bvz, %.lr.ph760.i ] ; 2 uses
  %i.bvh = or disjoint i32 %.1446.lcssa.i, 3
  %i.bvi = icmp slt i32 %i.bvh, %4
  br i1 %i.bvi, label %.lr.ph767.i, label %.preheader749.i

.lr.ph760.i:                                      ; preds = %.preheader751.i, %.lr.ph760.i
  %.1759.i = phi ptr [ %i.bvz, %.lr.ph760.i ], [ %.0440.lcssa.i, %.preheader751.i ] ; 5 uses
  %.1442758.i = phi ptr [ %i.bwa, %.lr.ph760.i ], [ %.0441.lcssa.i, %.preheader751.i ] ; 3 uses
  %.1446757.i = phi i32 [ %i.bwb, %.lr.ph760.i ], [ %.0445.lcssa.i, %.preheader751.i ]
  %i.bvj = load <8 x float>, ptr %.1759.i, align 1, !tbaa !49 ; 2 uses
  %i.bvk = getelementptr inbounds nuw i8, ptr %.1759.i, i64 32
  %i.bvl = load <8 x float>, ptr %i.bvk, align 1, !tbaa !49 ; 2 uses
  %i.bvm = getelementptr inbounds nuw i8, ptr %.1759.i, i64 64
  %i.bvn = load <8 x float>, ptr %i.bvm, align 1, !tbaa !49 ; 2 uses
  %i.bvo = getelementptr inbounds nuw i8, ptr %.1759.i, i64 96
  %i.bvp = load <8 x float>, ptr %i.bvo, align 1, !tbaa !49 ; 2 uses
  %i.bvq = shufflevector <8 x float> %i.bvj, <8 x float> %i.bvl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.bvr = shufflevector <8 x float> %i.bvj, <8 x float> %i.bvl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.bvs = shufflevector <8 x float> %i.bvn, <8 x float> %i.bvp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.bvt = shufflevector <8 x float> %i.bvn, <8 x float> %i.bvp, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.bvu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bvq, <8 x float> nofpclass(nan inf) %i.bvr) ; 2 uses
  %i.bvv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bvs, <8 x float> nofpclass(nan inf) %i.bvt) ; 2 uses
  %7 = shufflevector <8 x float> %i.bvu, <8 x float> %i.bvv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %8 = shufflevector <8 x float> %i.bvu, <8 x float> %i.bvv, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %9 = shufflevector <8 x float> %7, <8 x float> %8, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %10 = shufflevector <8 x float> %7, <8 x float> %8, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.bvw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %9, <8 x float> nofpclass(nan inf) %10)
  %i.bvx = load <8 x float>, ptr %.1442758.i, align 1, !tbaa !49
  %i.bvy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bvx, <8 x float> nofpclass(nan inf) %i.bvw)
  store <8 x float> %i.bvy, ptr %.1442758.i, align 1, !tbaa !49
  %i.bvz = getelementptr inbounds nuw i8, ptr %.1759.i, i64 128 ; 2 uses
  %i.bwa = getelementptr inbounds nuw i8, ptr %.1442758.i, i64 32 ; 2 uses
  %i.bwb = add nuw nsw i32 %.1446757.i, 8         ; 3 uses
  %i.bwc = or disjoint i32 %i.bwb, 7
  %i.bwd = icmp slt i32 %i.bwc, %4
  br i1 %i.bwd, label %.lr.ph760.i, label %.preheader750.i, !llvm.loop !134

.preheader749.i:                                  ; preds = %.lr.ph767.i, %.preheader750.i
  %.2447.lcssa.i = phi i32 [ %.1446.lcssa.i, %.preheader750.i ], [ %i.bxo, %.lr.ph767.i ] ; 5 uses
  %.2443.lcssa.i = phi ptr [ %.1442.lcssa.i, %.preheader750.i ], [ %i.bxn, %.lr.ph767.i ] ; 4 uses
  %.2.lcssa.i99 = phi ptr [ %.1.lcssa.i98, %.preheader750.i ], [ %i.bxm, %.lr.ph767.i ] ; 3 uses
  %i.bwe = icmp slt i32 %.2447.lcssa.i, %4
  br i1 %i.bwe, label %.lr.ph774.i.preheader, label %._crit_edge.i100

.lr.ph774.i.preheader:                            ; preds = %.preheader749.i
  %i.bwf = sub i32 %4, %.2447.lcssa.i
  %.neg1019 = add i32 %.2447.lcssa.i, 1
  %xtraiter974 = and i32 %i.bwf, 1
  %lcmp.mod975.not = icmp eq i32 %xtraiter974, 0
  br i1 %lcmp.mod975.not, label %.lr.ph774.i.prol.loopexit, label %.lr.ph774.i.prol

.lr.ph774.i.prol:                                 ; preds = %.lr.ph774.i.preheader
  %i.bwg = load <4 x float>, ptr %.2.lcssa.i99, align 1, !tbaa !49 ; 2 uses
  %i.bwh = shufflevector <4 x float> %i.bwg, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.bwi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bwg, <4 x float> nofpclass(nan inf) %i.bwh) ; 2 uses
  %i.bwj = shufflevector <4 x float> %i.bwi, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bwk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.bwi, <4 x float> nofpclass(nan inf) %i.bwj)
  %i.bwl = extractelement <4 x float> %i.bwk, i64 0 ; 2 uses
  %i.bwm = load float, ptr %.2443.lcssa.i, align 4, !tbaa !53 ; 2 uses
  %i.bwn = fcmp fast olt float %i.bwm, %i.bwl
  %.sroa.speculated.i102.prol = select i1 %i.bwn, float %i.bwl, float %i.bwm
  store float %.sroa.speculated.i102.prol, ptr %.2443.lcssa.i, align 4, !tbaa !53
  %i.bwo = getelementptr inbounds nuw i8, ptr %.2.lcssa.i99, i64 16
  %i.bwp = getelementptr inbounds nuw i8, ptr %.2443.lcssa.i, i64 4
  %i.bwq = add nuw nsw i32 %.2447.lcssa.i, 1
  br label %.lr.ph774.i.prol.loopexit

.lr.ph774.i.prol.loopexit:                        ; preds = %.lr.ph774.i.prol, %.lr.ph774.i.preheader
  %.3773.i.unr = phi ptr [ %.2.lcssa.i99, %.lr.ph774.i.preheader ], [ %i.bwo, %.lr.ph774.i.prol ]
  %.3444772.i.unr = phi ptr [ %.2443.lcssa.i, %.lr.ph774.i.preheader ], [ %i.bwp, %.lr.ph774.i.prol ]
  %.3448771.i.unr = phi i32 [ %.2447.lcssa.i, %.lr.ph774.i.preheader ], [ %i.bwq, %.lr.ph774.i.prol ]
  %i.bwr = icmp eq i32 %4, %.neg1019
  br i1 %i.bwr, label %._crit_edge.i100, label %.lr.ph774.i

.lr.ph767.i:                                      ; preds = %.preheader750.i, %.lr.ph767.i
  %.2766.i = phi ptr [ %i.bxm, %.lr.ph767.i ], [ %.1.lcssa.i98, %.preheader750.i ] ; 5 uses
  %.2443765.i = phi ptr [ %i.bxn, %.lr.ph767.i ], [ %.1442.lcssa.i, %.preheader750.i ] ; 3 uses
  %.2447764.i = phi i32 [ %i.bxo, %.lr.ph767.i ], [ %.1446.lcssa.i, %.preheader750.i ]
  %i.bws = load <4 x float>, ptr %.2766.i, align 1, !tbaa !49 ; 2 uses
  %i.bwt = getelementptr inbounds nuw i8, ptr %.2766.i, i64 16
  %i.bwu = load <4 x float>, ptr %i.bwt, align 1, !tbaa !49 ; 2 uses
  %i.bwv = getelementptr inbounds nuw i8, ptr %.2766.i, i64 32
  %i.bww = load <4 x float>, ptr %i.bwv, align 1, !tbaa !49 ; 2 uses
  %i.bwx = getelementptr inbounds nuw i8, ptr %.2766.i, i64 48
  %i.bwy = load <4 x float>, ptr %i.bwx, align 1, !tbaa !49 ; 2 uses
  %i.bwz = shufflevector <4 x float> %i.bws, <4 x float> %i.bwu, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bxa = shufflevector <4 x float> %i.bww, <4 x float> %i.bwy, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bxb = shufflevector <4 x float> %i.bws, <4 x float> %i.bwu, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bxc = shufflevector <4 x float> %i.bww, <4 x float> %i.bwy, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bxd = shufflevector <4 x float> %i.bwz, <4 x float> %i.bxa, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bxe = shufflevector <4 x float> %i.bxa, <4 x float> %i.bwz, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bxf = shufflevector <4 x float> %i.bxb, <4 x float> %i.bxc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bxg = shufflevector <4 x float> %i.bxc, <4 x float> %i.bxb, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bxh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bxd, <4 x float> nofpclass(nan inf) %i.bxe)
  %i.bxi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bxf, <4 x float> nofpclass(nan inf) %i.bxg)
  %i.bxj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bxh, <4 x float> nofpclass(nan inf) %i.bxi)
  %i.bxk = load <4 x float>, ptr %.2443765.i, align 1, !tbaa !49
  %i.bxl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bxk, <4 x float> nofpclass(nan inf) %i.bxj)
  store <4 x float> %i.bxl, ptr %.2443765.i, align 1, !tbaa !49
  %i.bxm = getelementptr inbounds nuw i8, ptr %.2766.i, i64 64 ; 2 uses
  %i.bxn = getelementptr inbounds nuw i8, ptr %.2443765.i, i64 16 ; 2 uses
  %i.bxo = add nuw nsw i32 %.2447764.i, 4         ; 3 uses
  %i.bxp = or disjoint i32 %i.bxo, 3
  %i.bxq = icmp slt i32 %i.bxp, %4
  br i1 %i.bxq, label %.lr.ph767.i, label %.preheader749.i, !llvm.loop !135

.lr.ph774.i:                                      ; preds = %.lr.ph774.i.prol.loopexit, %.lr.ph774.i
  %.3773.i = phi ptr [ %i.byj, %.lr.ph774.i ], [ %.3773.i.unr, %.lr.ph774.i.prol.loopexit ] ; 3 uses
  %.3444772.i = phi ptr [ %i.byk, %.lr.ph774.i ], [ %.3444772.i.unr, %.lr.ph774.i.prol.loopexit ] ; 4 uses
  %.3448771.i = phi i32 [ %i.byl, %.lr.ph774.i ], [ %.3448771.i.unr, %.lr.ph774.i.prol.loopexit ]
  %i.bxr = load <4 x float>, ptr %.3773.i, align 1, !tbaa !49 ; 2 uses
  %i.bxs = shufflevector <4 x float> %i.bxr, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.bxt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bxr, <4 x float> nofpclass(nan inf) %i.bxs) ; 2 uses
  %i.bxu = shufflevector <4 x float> %i.bxt, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bxv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.bxt, <4 x float> nofpclass(nan inf) %i.bxu)
  %i.bxw = extractelement <4 x float> %i.bxv, i64 0 ; 2 uses
  %i.bxx = load float, ptr %.3444772.i, align 4, !tbaa !53 ; 2 uses
  %i.bxy = fcmp fast olt float %i.bxx, %i.bxw
  %.sroa.speculated.i102 = select i1 %i.bxy, float %i.bxw, float %i.bxx
  store float %.sroa.speculated.i102, ptr %.3444772.i, align 4, !tbaa !53
  %i.bxz = getelementptr inbounds nuw i8, ptr %.3773.i, i64 16
  %i.bya = getelementptr inbounds nuw i8, ptr %.3444772.i, i64 4 ; 2 uses
  %i.byb = load <4 x float>, ptr %i.bxz, align 1, !tbaa !49 ; 2 uses
  %i.byc = shufflevector <4 x float> %i.byb, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.byd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.byb, <4 x float> nofpclass(nan inf) %i.byc) ; 2 uses
  %i.bye = shufflevector <4 x float> %i.byd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.byf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.byd, <4 x float> nofpclass(nan inf) %i.bye)
  %i.byg = extractelement <4 x float> %i.byf, i64 0 ; 2 uses
  %i.byh = load float, ptr %i.bya, align 4, !tbaa !53 ; 2 uses
  %i.byi = fcmp fast olt float %i.byh, %i.byg
  %.sroa.speculated.i102.1 = select i1 %i.byi, float %i.byg, float %i.byh
  store float %.sroa.speculated.i102.1, ptr %i.bya, align 4, !tbaa !53
  %i.byj = getelementptr inbounds nuw i8, ptr %.3773.i, i64 32
  %i.byk = getelementptr inbounds nuw i8, ptr %.3444772.i, i64 8
  %i.byl = add nuw nsw i32 %.3448771.i, 2         ; 2 uses
  %exitcond.not.i103.1 = icmp eq i32 %i.byl, %4
  br i1 %exitcond.not.i103.1, label %._crit_edge.i100, label %.lr.ph774.i, !llvm.loop !136

._crit_edge.i100:                                 ; preds = %.lr.ph774.i.prol.loopexit, %.lr.ph774.i, %.preheader749.i
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i97, 1 ; 2 uses
  %exitcond898.not.i = icmp eq i64 %indvars.iv.next.i101, %wide.trip.count.i96
  br i1 %exitcond898.not.i, label %.preheader748.i, label %bb.i, !llvm.loop !137

.preheader744.i:                                  ; preds = %._crit_edge811.i, %bb.h
  br i1 %i.a, label %.lr.ph816.i.preheader, label %.preheader743.i

.lr.ph816.i.preheader:                            ; preds = %.preheader744.i
  %i.bym = add nsw i32 %4, -16                    ; 2 uses
  %i.byn = lshr i32 %i.bym, 4                     ; 2 uses
  %i.byo = add nuw nsw i32 %i.byn, 1              ; 2 uses
  %i.byp = icmp eq i32 %i.byn, 0
  br i1 %i.byp, label %.lr.ph816.i.epil.preheader, label %.lr.ph816.i.preheader.new

.lr.ph816.i.preheader.new:                        ; preds = %.lr.ph816.i.preheader
  %unroll_iter982 = and i32 %i.byo, 536870910
  br label %.lr.ph816.i

.preheader748.i:                                  ; preds = %._crit_edge.i100, %._crit_edge811.i
  %indvars.iv900.i = phi i64 [ %indvars.iv.next901.i, %._crit_edge811.i ], [ 0, %._crit_edge.i100 ] ; 2 uses
  %i.byq = mul i64 %indvars.iv900.i, %3
  %i.byr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.byq ; 2 uses
  br i1 %i.a, label %.lr.ph783.i, label %.preheader747.i

.preheader747.i:                                  ; preds = %.lr.ph783.i, %.preheader748.i
  %.0462.lcssa.i = phi i32 [ 0, %.preheader748.i ], [ %i.bue, %.lr.ph783.i ] ; 3 uses
  %.0458.lcssa.i = phi ptr [ %6, %.preheader748.i ], [ %i.cdm, %.lr.ph783.i ] ; 2 uses
  %.0454.lcssa.i = phi ptr [ %5, %.preheader748.i ], [ %i.cdl, %.lr.ph783.i ] ; 2 uses
  %.0450.lcssa.i = phi ptr [ %i.byr, %.preheader748.i ], [ %i.cdk, %.lr.ph783.i ] ; 2 uses
  %i.bys = or disjoint i32 %.0462.lcssa.i, 7
  %i.byt = icmp slt i32 %i.bys, %4
  br i1 %i.byt, label %.lr.ph792.i, label %.preheader746.i

.lr.ph783.i:                                      ; preds = %.preheader748.i, %.lr.ph783.i
  %.0450781.i = phi ptr [ %i.cdk, %.lr.ph783.i ], [ %i.byr, %.preheader748.i ] ; 6 uses
  %.0454780.i = phi ptr [ %i.cdl, %.lr.ph783.i ], [ %5, %.preheader748.i ] ; 2 uses
  %.0458779.i = phi ptr [ %i.cdm, %.lr.ph783.i ], [ %6, %.preheader748.i ] ; 3 uses
  %.0462778.i = phi i32 [ %i.cdn, %.lr.ph783.i ], [ 0, %.preheader748.i ]
  %i.byu = load <16 x float>, ptr %.0450781.i, align 1, !tbaa !49
  %i.byv = getelementptr inbounds nuw i8, ptr %.0450781.i, i64 64 ; 2 uses
  %i.byw = load <16 x float>, ptr %i.byv, align 1, !tbaa !49
  %i.byx = getelementptr inbounds nuw i8, ptr %.0450781.i, i64 128 ; 2 uses
  %i.byy = load <16 x float>, ptr %i.byx, align 1, !tbaa !49
  %i.byz = getelementptr inbounds nuw i8, ptr %.0450781.i, i64 192 ; 2 uses
  %i.bza = load <16 x float>, ptr %i.byz, align 1, !tbaa !49
  %i.bzb = load <16 x float>, ptr %.0454780.i, align 1, !tbaa !49 ; 4 uses
  %i.bzc = shufflevector <16 x float> %i.bzb, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.bzd = shufflevector <16 x float> %i.bzb, <16 x float> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7>
  %i.bze = shufflevector <16 x float> %i.bzb, <16 x float> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 10, i32 10, i32 10, i32 10, i32 11, i32 11, i32 11, i32 11>
  %i.bzf = shufflevector <16 x float> %i.bzb, <16 x float> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 14, i32 14, i32 14, i32 14, i32 15, i32 15, i32 15, i32 15>
  %i.bzg = fsub fast <16 x float> %i.byu, %i.bzc
  %i.bzh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.bzg, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.bzi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bzh, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.bzj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bzi, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bzk = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bzj, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.bzl = fcmp fast ogt <16 x float> %i.bzk, %i.bzj
  %i.bzm = fadd fast <16 x float> %i.bzk, splat (float -1.000000e+00)
  %i.bzn = select fast <16 x i1> %i.bzl, <16 x float> %i.bzm, <16 x float> %i.bzk ; 2 uses
  %i.bzo = fneg fast <16 x float> %i.bzn          ; 2 uses
  %i.bzp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzo, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bzi)
  %i.bzq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzo, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bzp) ; 8 uses
  %i.bzr = fmul fast <16 x float> %i.bzq, %i.bzq
  %i.bzs = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bzq, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.bzt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bzs, <16 x float> nofpclass(nan inf) %i.bzq, <16 x float> splat (float f0x3C088908))
  %i.bzu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bzt, <16 x float> nofpclass(nan inf) %i.bzq, <16 x float> splat (float f0x3D2AA9C1))
  %i.bzv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bzu, <16 x float> nofpclass(nan inf) %i.bzq, <16 x float> splat (float f0x3E2AAAAA))
  %i.bzw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bzv, <16 x float> nofpclass(nan inf) %i.bzq, <16 x float> splat (float 5.000000e-01))
  %i.bzx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bzw, <16 x float> nofpclass(nan inf) %i.bzr, <16 x float> nofpclass(nan inf) %i.bzq)
  %i.bzy = fadd fast <16 x float> %i.bzx, splat (float 1.000000e+00)
  %i.bzz = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bzn, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.caa = shl <16 x i32> %i.bzz, splat (i32 23)
  %i.cab = add <16 x i32> %i.caa, splat (i32 1065353216)
  %i.cac = bitcast <16 x i32> %i.cab to <16 x float>
  %i.cad = fmul fast <16 x float> %i.bzy, %i.cac  ; 3 uses
  %i.cae = fsub fast <16 x float> %i.byw, %i.bzd
  %i.caf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.cae, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.cag = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.caf, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.cah = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cag, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.cai = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.cah, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.caj = fcmp fast ogt <16 x float> %i.cai, %i.cah
  %i.cak = fadd fast <16 x float> %i.cai, splat (float -1.000000e+00)
  %i.cal = select fast <16 x i1> %i.caj, <16 x float> %i.cak, <16 x float> %i.cai ; 2 uses
  %i.cam = fneg fast <16 x float> %i.cal          ; 2 uses
  %i.can = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cam, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.cag)
  %i.cao = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cam, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.can) ; 8 uses
  %i.cap = fmul fast <16 x float> %i.cao, %i.cao
  %i.caq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cao, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.car = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.caq, <16 x float> nofpclass(nan inf) %i.cao, <16 x float> splat (float f0x3C088908))
end_hunk_0
begin_hunk_1_@_ZN4ncnnL7softmaxEPfiimiS0_S0_:bb.a
  %i.ccd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ccc, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.cce = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ccd, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ccf = fcmp fast ogt <16 x float> %i.cce, %i.ccd
  %i.ccg = fadd fast <16 x float> %i.cce, splat (float -1.000000e+00)
  %i.cch = select fast <16 x i1> %i.ccf, <16 x float> %i.ccg, <16 x float> %i.cce ; 2 uses
  %i.cci = fneg fast <16 x float> %i.cch          ; 2 uses
  %i.ccj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cci, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ccc)
  %i.cck = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cci, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ccj) ; 8 uses
  %i.ccl = fmul fast <16 x float> %i.cck, %i.cck
  %i.ccm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cck, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ccn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ccm, <16 x float> nofpclass(nan inf) %i.cck, <16 x float> splat (float f0x3C088908))
  %i.cco = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ccn, <16 x float> nofpclass(nan inf) %i.cck, <16 x float> splat (float f0x3D2AA9C1))
  %i.ccp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cco, <16 x float> nofpclass(nan inf) %i.cck, <16 x float> splat (float f0x3E2AAAAA))
  %i.ccq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ccp, <16 x float> nofpclass(nan inf) %i.cck, <16 x float> splat (float 5.000000e-01))
  %i.ccr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ccq, <16 x float> nofpclass(nan inf) %i.ccl, <16 x float> nofpclass(nan inf) %i.cck)
  %i.ccs = fadd fast <16 x float> %i.ccr, splat (float 1.000000e+00)
  %i.cct = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.cch, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ccu = shl <16 x i32> %i.cct, splat (i32 23)
  %i.ccv = add <16 x i32> %i.ccu, splat (i32 1065353216)
  %i.ccw = bitcast <16 x i32> %i.ccv to <16 x float>
  %i.ccx = fmul fast <16 x float> %i.ccs, %i.ccw  ; 3 uses
  store <16 x float> %i.cad, ptr %.0450781.i, align 1, !tbaa !49
  store <16 x float> %i.cbb, ptr %i.byv, align 1, !tbaa !49
  store <16 x float> %i.cbz, ptr %i.byx, align 1, !tbaa !49
  store <16 x float> %i.ccx, ptr %i.byz, align 1, !tbaa !49
  %i.ccy = shufflevector <16 x float> %i.cad, <16 x float> %i.cbb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>
  %i.ccz = shufflevector <16 x float> %i.cad, <16 x float> %i.cbb, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>
  %i.cda = shufflevector <16 x float> %i.cbz, <16 x float> %i.ccx, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>
  %i.cdb = shufflevector <16 x float> %i.cbz, <16 x float> %i.ccx, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>
  %i.cdc = fadd fast <16 x float> %i.ccy, %i.ccz  ; 2 uses
  %i.cdd = fadd fast <16 x float> %i.cda, %i.cdb  ; 2 uses
  %i.cde = shufflevector <16 x float> %i.cdc, <16 x float> %i.cdd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>
  %i.cdf = shufflevector <16 x float> %i.cdc, <16 x float> %i.cdd, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>
  %i.cdg = fadd fast <16 x float> %i.cde, %i.cdf
  %i.cdh = shufflevector <16 x float> %i.cdg, <16 x float> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 2, i32 6, i32 10, i32 14, i32 1, i32 5, i32 9, i32 13, i32 3, i32 7, i32 11, i32 15>
  %i.cdi = load <16 x float>, ptr %.0458779.i, align 1, !tbaa !49
  %i.cdj = fadd fast <16 x float> %i.cdh, %i.cdi
  store <16 x float> %i.cdj, ptr %.0458779.i, align 1, !tbaa !49
  %i.cdk = getelementptr inbounds nuw i8, ptr %.0450781.i, i64 256 ; 2 uses
  %i.cdl = getelementptr inbounds nuw i8, ptr %.0454780.i, i64 64 ; 2 uses
  %i.cdm = getelementptr inbounds nuw i8, ptr %.0458779.i, i64 64 ; 2 uses
  %i.cdn = add nuw nsw i32 %.0462778.i, 16        ; 2 uses
  %i.cdo = or disjoint i32 %i.cdn, 15
  %i.cdp = icmp slt i32 %i.cdo, %4
  br i1 %i.cdp, label %.lr.ph783.i, label %.preheader747.i, !llvm.loop !138

.preheader746.i:                                  ; preds = %.lr.ph792.i, %.preheader747.i
  %.1463.lcssa.i = phi i32 [ %.0462.lcssa.i, %.preheader747.i ], [ %i.cje, %.lr.ph792.i ] ; 3 uses
  %.1459.lcssa.i = phi ptr [ %.0458.lcssa.i, %.preheader747.i ], [ %i.cjd, %.lr.ph792.i ] ; 2 uses
  %.1455.lcssa.i = phi ptr [ %.0454.lcssa.i, %.preheader747.i ], [ %i.cjc, %.lr.ph792.i ] ; 2 uses
  %.1451.lcssa.i = phi ptr [ %.0450.lcssa.i, %.preheader747.i ], [ %i.cjb, %.lr.ph792.i ] ; 2 uses
  %i.cdq = or disjoint i32 %.1463.lcssa.i, 3
  %i.cdr = icmp slt i32 %i.cdq, %4
  br i1 %i.cdr, label %.lr.ph801.i, label %.preheader745.i

.lr.ph792.i:                                      ; preds = %.preheader747.i, %.lr.ph792.i
  %.1451791.i = phi ptr [ %i.cjb, %.lr.ph792.i ], [ %.0450.lcssa.i, %.preheader747.i ] ; 6 uses
  %.1455790.i = phi ptr [ %i.cjc, %.lr.ph792.i ], [ %.0454.lcssa.i, %.preheader747.i ] ; 9 uses
  %.1459789.i = phi ptr [ %i.cjd, %.lr.ph792.i ], [ %.0458.lcssa.i, %.preheader747.i ] ; 3 uses
  %.1463788.i = phi i32 [ %i.cje, %.lr.ph792.i ], [ %.0462.lcssa.i, %.preheader747.i ]
  %i.cds = load <8 x float>, ptr %.1451791.i, align 1, !tbaa !49
  %i.cdt = getelementptr inbounds nuw i8, ptr %.1451791.i, i64 32 ; 2 uses
  %i.cdu = load <8 x float>, ptr %i.cdt, align 1, !tbaa !49
  %i.cdv = getelementptr inbounds nuw i8, ptr %.1451791.i, i64 64 ; 2 uses
  %i.cdw = load <8 x float>, ptr %i.cdv, align 1, !tbaa !49
  %i.cdx = getelementptr inbounds nuw i8, ptr %.1451791.i, i64 96 ; 2 uses
  %i.cdy = load <8 x float>, ptr %i.cdx, align 1, !tbaa !49
  %i.cdz = load float, ptr %.1455790.i, align 4, !tbaa !53
  %i.cea = insertelement <4 x float> poison, float %i.cdz, i64 0
  %i.ceb = getelementptr inbounds nuw i8, ptr %.1455790.i, i64 4
  %i.cec = load float, ptr %i.ceb, align 4, !tbaa !53
  %i.ced = insertelement <4 x float> poison, float %i.cec, i64 0
  %i.cee = shufflevector <4 x float> %i.cea, <4 x float> %i.ced, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.cef = fsub fast <8 x float> %i.cds, %i.cee
  %i.ceg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cef, <8 x float> splat (float f0x42B0C0A5))
  %i.ceh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ceg, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cei = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ceh, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.cej = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cei, i32 1) ; 2 uses
  %i.cek = fcmp fast ogt <8 x float> %i.cej, %i.cei
  %i.cel = select <8 x i1> %i.cek, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cem = fsub fast <8 x float> %i.cej, %i.cel   ; 2 uses
  %i.cen = fneg fast <8 x float> %i.cem           ; 2 uses
  %i.ceo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.cen, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ceh)
  %i.cep = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.cen, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ceo) ; 8 uses
  %i.ceq = fmul fast <8 x float> %i.cep, %i.cep
  %i.cer = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cep, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.ces = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cer, <8 x float> nofpclass(nan inf) %i.cep, <8 x float> splat (float f0x3C088908))
  %i.cet = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ces, <8 x float> nofpclass(nan inf) %i.cep, <8 x float> splat (float f0x3D2AA9C1))
  %i.ceu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cet, <8 x float> nofpclass(nan inf) %i.cep, <8 x float> splat (float f0x3E2AAAAA))
  %i.cev = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ceu, <8 x float> nofpclass(nan inf) %i.cep, <8 x float> splat (float 5.000000e-01))
  %i.cew = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cev, <8 x float> nofpclass(nan inf) %i.ceq, <8 x float> nofpclass(nan inf) %i.cep)
  %i.cex = fadd fast <8 x float> %i.cew, splat (float 1.000000e+00)
  %i.cey = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cem)
  %i.cez = shl <8 x i32> %i.cey, splat (i32 23)
  %i.cfa = add <8 x i32> %i.cez, splat (i32 1065353216)
  %i.cfb = bitcast <8 x i32> %i.cfa to <8 x float>
  %i.cfc = fmul fast <8 x float> %i.cex, %i.cfb   ; 3 uses
  %i.cfd = getelementptr inbounds nuw i8, ptr %.1455790.i, i64 8
  %i.cfe = load float, ptr %i.cfd, align 4, !tbaa !53
  %i.cff = insertelement <4 x float> poison, float %i.cfe, i64 0
  %i.cfg = getelementptr inbounds nuw i8, ptr %.1455790.i, i64 12
  %i.cfh = load float, ptr %i.cfg, align 4, !tbaa !53
  %i.cfi = insertelement <4 x float> poison, float %i.cfh, i64 0
  %i.cfj = shufflevector <4 x float> %i.cff, <4 x float> %i.cfi, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.cfk = fsub fast <8 x float> %i.cdu, %i.cfj
  %i.cfl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cfk, <8 x float> splat (float f0x42B0C0A5))
  %i.cfm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cfl, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cfn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cfm, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.cfo = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cfn, i32 1) ; 2 uses
  %i.cfp = fcmp fast ogt <8 x float> %i.cfo, %i.cfn
  %i.cfq = select <8 x i1> %i.cfp, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cfr = fsub fast <8 x float> %i.cfo, %i.cfq   ; 2 uses
  %i.cfs = fneg fast <8 x float> %i.cfr           ; 2 uses
  %i.cft = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.cfs, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.cfm)
  %i.cfu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.cfs, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.cft) ; 8 uses
  %i.cfv = fmul fast <8 x float> %i.cfu, %i.cfu
  %i.cfw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cfu, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.cfx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cfw, <8 x float> nofpclass(nan inf) %i.cfu, <8 x float> splat (float f0x3C088908))
  %i.cfy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cfx, <8 x float> nofpclass(nan inf) %i.cfu, <8 x float> splat (float f0x3D2AA9C1))
  %i.cfz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cfy, <8 x float> nofpclass(nan inf) %i.cfu, <8 x float> splat (float f0x3E2AAAAA))
  %i.cga = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cfz, <8 x float> nofpclass(nan inf) %i.cfu, <8 x float> splat (float 5.000000e-01))
  %i.cgb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cga, <8 x float> nofpclass(nan inf) %i.cfv, <8 x float> nofpclass(nan inf) %i.cfu)
  %i.cgc = fadd fast <8 x float> %i.cgb, splat (float 1.000000e+00)
  %i.cgd = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cfr)
  %i.cge = shl <8 x i32> %i.cgd, splat (i32 23)
  %i.cgf = add <8 x i32> %i.cge, splat (i32 1065353216)
  %i.cgg = bitcast <8 x i32> %i.cgf to <8 x float>
  %i.cgh = fmul fast <8 x float> %i.cgc, %i.cgg   ; 3 uses
  %i.cgi = getelementptr inbounds nuw i8, ptr %.1455790.i, i64 16
  %i.cgj = load float, ptr %i.cgi, align 4, !tbaa !53
  %i.cgk = insertelement <4 x float> poison, float %i.cgj, i64 0
  %i.cgl = getelementptr inbounds nuw i8, ptr %.1455790.i, i64 20
  %i.cgm = load float, ptr %i.cgl, align 4, !tbaa !53
  %i.cgn = insertelement <4 x float> poison, float %i.cgm, i64 0
  %i.cgo = shufflevector <4 x float> %i.cgk, <4 x float> %i.cgn, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.cgp = fsub fast <8 x float> %i.cdw, %i.cgo
  %i.cgq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cgp, <8 x float> splat (float f0x42B0C0A5))
  %i.cgr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cgq, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cgs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cgr, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.cgt = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cgs, i32 1) ; 2 uses
  %i.cgu = fcmp fast ogt <8 x float> %i.cgt, %i.cgs
  %i.cgv = select <8 x i1> %i.cgu, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cgw = fsub fast <8 x float> %i.cgt, %i.cgv   ; 2 uses
  %i.cgx = fneg fast <8 x float> %i.cgw           ; 2 uses
  %i.cgy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.cgx, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.cgr)
  %i.cgz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.cgx, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.cgy) ; 8 uses
  %i.cha = fmul fast <8 x float> %i.cgz, %i.cgz
  %i.chb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cgz, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.chc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.chb, <8 x float> nofpclass(nan inf) %i.cgz, <8 x float> splat (float f0x3C088908))
  %i.chd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.chc, <8 x float> nofpclass(nan inf) %i.cgz, <8 x float> splat (float f0x3D2AA9C1))
  %i.che = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.chd, <8 x float> nofpclass(nan inf) %i.cgz, <8 x float> splat (float f0x3E2AAAAA))
  %i.chf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.che, <8 x float> nofpclass(nan inf) %i.cgz, <8 x float> splat (float 5.000000e-01))
  %i.chg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.chf, <8 x float> nofpclass(nan inf) %i.cha, <8 x float> nofpclass(nan inf) %i.cgz)
  %i.chh = fadd fast <8 x float> %i.chg, splat (float 1.000000e+00)
  %i.chi = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cgw)
  %i.chj = shl <8 x i32> %i.chi, splat (i32 23)
  %i.chk = add <8 x i32> %i.chj, splat (i32 1065353216)
  %i.chl = bitcast <8 x i32> %i.chk to <8 x float>
  %i.chm = fmul fast <8 x float> %i.chh, %i.chl   ; 3 uses
  %i.chn = getelementptr inbounds nuw i8, ptr %.1455790.i, i64 24
  %i.cho = load float, ptr %i.chn, align 4, !tbaa !53
  %i.chp = insertelement <4 x float> poison, float %i.cho, i64 0
  %i.chq = getelementptr inbounds nuw i8, ptr %.1455790.i, i64 28
  %i.chr = load float, ptr %i.chq, align 4, !tbaa !53
  %i.chs = insertelement <4 x float> poison, float %i.chr, i64 0
  %i.cht = shufflevector <4 x float> %i.chp, <4 x float> %i.chs, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.chu = fsub fast <8 x float> %i.cdy, %i.cht
  %i.chv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.chu, <8 x float> splat (float f0x42B0C0A5))
  %i.chw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.chv, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.chx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.chw, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.chy = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.chx, i32 1) ; 2 uses
  %i.chz = fcmp fast ogt <8 x float> %i.chy, %i.chx
  %i.cia = select <8 x i1> %i.chz, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cib = fsub fast <8 x float> %i.chy, %i.cia   ; 2 uses
  %i.cic = fneg fast <8 x float> %i.cib           ; 2 uses
  %i.cid = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.cic, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.chw)
  %i.cie = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.cic, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.cid) ; 8 uses
  %i.cif = fmul fast <8 x float> %i.cie, %i.cie
  %i.cig = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cie, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.cih = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cig, <8 x float> nofpclass(nan inf) %i.cie, <8 x float> splat (float f0x3C088908))
  %i.cii = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cih, <8 x float> nofpclass(nan inf) %i.cie, <8 x float> splat (float f0x3D2AA9C1))
  %i.cij = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cii, <8 x float> nofpclass(nan inf) %i.cie, <8 x float> splat (float f0x3E2AAAAA))
  %i.cik = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cij, <8 x float> nofpclass(nan inf) %i.cie, <8 x float> splat (float 5.000000e-01))
  %i.cil = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cik, <8 x float> nofpclass(nan inf) %i.cif, <8 x float> nofpclass(nan inf) %i.cie)
  %i.cim = fadd fast <8 x float> %i.cil, splat (float 1.000000e+00)
  %i.cin = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cib)
  %i.cio = shl <8 x i32> %i.cin, splat (i32 23)
  %i.cip = add <8 x i32> %i.cio, splat (i32 1065353216)
  %i.ciq = bitcast <8 x i32> %i.cip to <8 x float>
  %i.cir = fmul fast <8 x float> %i.cim, %i.ciq   ; 3 uses
  store <8 x float> %i.cfc, ptr %.1451791.i, align 1, !tbaa !49
  store <8 x float> %i.cgh, ptr %i.cdt, align 1, !tbaa !49
  store <8 x float> %i.chm, ptr %i.cdv, align 1, !tbaa !49
  store <8 x float> %i.cir, ptr %i.cdx, align 1, !tbaa !49
  %i.cis = shufflevector <8 x float> %i.cfc, <8 x float> %i.cgh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.cit = shufflevector <8 x float> %i.cfc, <8 x float> %i.cgh, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ciu = shufflevector <8 x float> %i.chm, <8 x float> %i.cir, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.civ = shufflevector <8 x float> %i.chm, <8 x float> %i.cir, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ciw = fadd fast <8 x float> %i.cis, %i.cit   ; 2 uses
  %i.cix = fadd fast <8 x float> %i.ciu, %i.civ   ; 2 uses
  %11 = shufflevector <8 x float> %i.ciw, <8 x float> %i.cix, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %12 = shufflevector <8 x float> %i.ciw, <8 x float> %i.cix, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %13 = shufflevector <8 x float> %11, <8 x float> %12, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %14 = shufflevector <8 x float> %11, <8 x float> %12, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ciy = load <8 x float>, ptr %.1459789.i, align 1, !tbaa !49
  %i.ciz = fadd fast <8 x float> %14, %i.ciy
  %i.cja = fadd fast <8 x float> %i.ciz, %13
  store <8 x float> %i.cja, ptr %.1459789.i, align 1, !tbaa !49
  %i.cjb = getelementptr inbounds nuw i8, ptr %.1451791.i, i64 128 ; 2 uses
  %i.cjc = getelementptr inbounds nuw i8, ptr %.1455790.i, i64 32 ; 2 uses
  %i.cjd = getelementptr inbounds nuw i8, ptr %.1459789.i, i64 32 ; 2 uses
  %i.cje = add nuw nsw i32 %.1463788.i, 8         ; 3 uses
  %i.cjf = or disjoint i32 %i.cje, 7
  %i.cjg = icmp slt i32 %i.cjf, %4
  br i1 %i.cjg, label %.lr.ph792.i, label %.preheader746.i, !llvm.loop !139

.preheader745.i:                                  ; preds = %.lr.ph801.i, %.preheader746.i
  %.2464.lcssa.i = phi i32 [ %.1463.lcssa.i, %.preheader746.i ], [ %i.cou, %.lr.ph801.i ] ; 2 uses
  %.2460.lcssa.i = phi ptr [ %.1459.lcssa.i, %.preheader746.i ], [ %i.cot, %.lr.ph801.i ]
  %.2456.lcssa.i = phi ptr [ %.1455.lcssa.i, %.preheader746.i ], [ %i.cos, %.lr.ph801.i ]
  %.2452.lcssa.i = phi ptr [ %.1451.lcssa.i, %.preheader746.i ], [ %i.cor, %.lr.ph801.i ]
  %i.cjh = icmp slt i32 %.2464.lcssa.i, %4
  br i1 %i.cjh, label %.lr.ph810.i, label %._crit_edge811.i

.lr.ph801.i:                                      ; preds = %.preheader746.i, %.lr.ph801.i
  %.2452800.i = phi ptr [ %i.cor, %.lr.ph801.i ], [ %.1451.lcssa.i, %.preheader746.i ] ; 6 uses
  %.2456799.i = phi ptr [ %i.cos, %.lr.ph801.i ], [ %.1455.lcssa.i, %.preheader746.i ] ; 5 uses
  %.2460798.i = phi ptr [ %i.cot, %.lr.ph801.i ], [ %.1459.lcssa.i, %.preheader746.i ] ; 3 uses
  %.2464797.i = phi i32 [ %i.cou, %.lr.ph801.i ], [ %.1463.lcssa.i, %.preheader746.i ]
  %i.cji = load <4 x float>, ptr %.2452800.i, align 1, !tbaa !49
  %i.cjj = getelementptr inbounds nuw i8, ptr %.2452800.i, i64 16 ; 2 uses
  %i.cjk = load <4 x float>, ptr %i.cjj, align 1, !tbaa !49
  %i.cjl = getelementptr inbounds nuw i8, ptr %.2452800.i, i64 32 ; 2 uses
  %i.cjm = load <4 x float>, ptr %i.cjl, align 1, !tbaa !49
  %i.cjn = getelementptr inbounds nuw i8, ptr %.2452800.i, i64 48 ; 2 uses
  %i.cjo = load <4 x float>, ptr %i.cjn, align 1, !tbaa !49
  %i.cjp = load float, ptr %.2456799.i, align 4, !tbaa !53
  %i.cjq = insertelement <4 x float> poison, float %i.cjp, i64 0
  %i.cjr = shufflevector <4 x float> %i.cjq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cjs = fsub fast <4 x float> %i.cji, %i.cjr
  %i.cjt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cjs, <4 x float> splat (float f0x42B0C0A5))
  %i.cju = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cjt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cjv = fmul fast <4 x float> %i.cju, splat (float f0x3FB8AA3B)
  %i.cjw = fadd fast <4 x float> %i.cjv, splat (float 5.000000e-01) ; 2 uses
  %i.cjx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cjw)
  %i.cjy = sitofp fast <4 x i32> %i.cjx to <4 x float> ; 2 uses
  %i.cjz = fcmp fast olt <4 x float> %i.cjw, %i.cjy
  %i.cka = select <4 x i1> %i.cjz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ckb = fsub fast <4 x float> %i.cjy, %i.cka   ; 2 uses
  %i.ckc = fneg fast <4 x float> %i.ckb           ; 2 uses
  %i.ckd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ckc, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.cju)
  %i.cke = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ckc, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ckd) ; 8 uses
  %i.ckf = fmul fast <4 x float> %i.cke, %i.cke
  %i.ckg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cke, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.ckh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ckg, <4 x float> nofpclass(nan inf) %i.cke, <4 x float> splat (float f0x3C088908))
  %i.cki = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ckh, <4 x float> nofpclass(nan inf) %i.cke, <4 x float> splat (float f0x3D2AA9C1))
  %i.ckj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cki, <4 x float> nofpclass(nan inf) %i.cke, <4 x float> splat (float f0x3E2AAAAA))
  %i.ckk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ckj, <4 x float> nofpclass(nan inf) %i.cke, <4 x float> splat (float 5.000000e-01))
  %i.ckl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ckk, <4 x float> nofpclass(nan inf) %i.ckf, <4 x float> nofpclass(nan inf) %i.cke)
  %i.ckm = fadd fast <4 x float> %i.ckl, splat (float 1.000000e+00)
  %i.ckn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ckb)
  %i.cko = shl <4 x i32> %i.ckn, splat (i32 23)
  %i.ckp = add <4 x i32> %i.cko, splat (i32 1065353216)
  %i.ckq = bitcast <4 x i32> %i.ckp to <4 x float>
  %i.ckr = fmul fast <4 x float> %i.ckm, %i.ckq   ; 3 uses
  %i.cks = getelementptr inbounds nuw i8, ptr %.2456799.i, i64 4
  %i.ckt = load float, ptr %i.cks, align 4, !tbaa !53
  %i.cku = insertelement <4 x float> poison, float %i.ckt, i64 0
  %i.ckv = shufflevector <4 x float> %i.cku, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ckw = fsub fast <4 x float> %i.cjk, %i.ckv
  %i.ckx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ckw, <4 x float> splat (float f0x42B0C0A5))
  %i.cky = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ckx, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ckz = fmul fast <4 x float> %i.cky, splat (float f0x3FB8AA3B)
  %i.cla = fadd fast <4 x float> %i.ckz, splat (float 5.000000e-01) ; 2 uses
  %i.clb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cla)
  %i.clc = sitofp fast <4 x i32> %i.clb to <4 x float> ; 2 uses
  %i.cld = fcmp fast olt <4 x float> %i.cla, %i.clc
  %i.cle = select <4 x i1> %i.cld, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.clf = fsub fast <4 x float> %i.clc, %i.cle   ; 2 uses
  %i.clg = fneg fast <4 x float> %i.clf           ; 2 uses
  %i.clh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.clg, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.cky)
  %i.cli = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.clg, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.clh) ; 8 uses
  %i.clj = fmul fast <4 x float> %i.cli, %i.cli
  %i.clk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cli, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.cll = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.clk, <4 x float> nofpclass(nan inf) %i.cli, <4 x float> splat (float f0x3C088908))
  %i.clm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cll, <4 x float> nofpclass(nan inf) %i.cli, <4 x float> splat (float f0x3D2AA9C1))
  %i.cln = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.clm, <4 x float> nofpclass(nan inf) %i.cli, <4 x float> splat (float f0x3E2AAAAA))
  %i.clo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cln, <4 x float> nofpclass(nan inf) %i.cli, <4 x float> splat (float 5.000000e-01))
  %i.clp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.clo, <4 x float> nofpclass(nan inf) %i.clj, <4 x float> nofpclass(nan inf) %i.cli)
  %i.clq = fadd fast <4 x float> %i.clp, splat (float 1.000000e+00)
  %i.clr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.clf)
  %i.cls = shl <4 x i32> %i.clr, splat (i32 23)
  %i.clt = add <4 x i32> %i.cls, splat (i32 1065353216)
  %i.clu = bitcast <4 x i32> %i.clt to <4 x float>
  %i.clv = fmul fast <4 x float> %i.clq, %i.clu   ; 3 uses
  %i.clw = getelementptr inbounds nuw i8, ptr %.2456799.i, i64 8
  %i.clx = load float, ptr %i.clw, align 4, !tbaa !53
  %i.cly = insertelement <4 x float> poison, float %i.clx, i64 0
  %i.clz = shufflevector <4 x float> %i.cly, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cma = fsub fast <4 x float> %i.cjm, %i.clz
  %i.cmb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cma, <4 x float> splat (float f0x42B0C0A5))
  %i.cmc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cmb, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cmd = fmul fast <4 x float> %i.cmc, splat (float f0x3FB8AA3B)
  %i.cme = fadd fast <4 x float> %i.cmd, splat (float 5.000000e-01) ; 2 uses
  %i.cmf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cme)
  %i.cmg = sitofp fast <4 x i32> %i.cmf to <4 x float> ; 2 uses
  %i.cmh = fcmp fast olt <4 x float> %i.cme, %i.cmg
  %i.cmi = select <4 x i1> %i.cmh, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cmj = fsub fast <4 x float> %i.cmg, %i.cmi   ; 2 uses
  %i.cmk = fneg fast <4 x float> %i.cmj           ; 2 uses
  %i.cml = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.cmk, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.cmc)
  %i.cmm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.cmk, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.cml) ; 8 uses
  %i.cmn = fmul fast <4 x float> %i.cmm, %i.cmm
  %i.cmo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cmm, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.cmp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cmo, <4 x float> nofpclass(nan inf) %i.cmm, <4 x float> splat (float f0x3C088908))
  %i.cmq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cmp, <4 x float> nofpclass(nan inf) %i.cmm, <4 x float> splat (float f0x3D2AA9C1))
  %i.cmr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cmq, <4 x float> nofpclass(nan inf) %i.cmm, <4 x float> splat (float f0x3E2AAAAA))
  %i.cms = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cmr, <4 x float> nofpclass(nan inf) %i.cmm, <4 x float> splat (float 5.000000e-01))
  %i.cmt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cms, <4 x float> nofpclass(nan inf) %i.cmn, <4 x float> nofpclass(nan inf) %i.cmm)
  %i.cmu = fadd fast <4 x float> %i.cmt, splat (float 1.000000e+00)
  %i.cmv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cmj)
  %i.cmw = shl <4 x i32> %i.cmv, splat (i32 23)
  %i.cmx = add <4 x i32> %i.cmw, splat (i32 1065353216)
  %i.cmy = bitcast <4 x i32> %i.cmx to <4 x float>
  %i.cmz = fmul fast <4 x float> %i.cmu, %i.cmy   ; 3 uses
  %i.cna = getelementptr inbounds nuw i8, ptr %.2456799.i, i64 12
  %i.cnb = load float, ptr %i.cna, align 4, !tbaa !53
  %i.cnc = insertelement <4 x float> poison, float %i.cnb, i64 0
  %i.cnd = shufflevector <4 x float> %i.cnc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cne = fsub fast <4 x float> %i.cjo, %i.cnd
  %i.cnf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cne, <4 x float> splat (float f0x42B0C0A5))
  %i.cng = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cnf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cnh = fmul fast <4 x float> %i.cng, splat (float f0x3FB8AA3B)
  %i.cni = fadd fast <4 x float> %i.cnh, splat (float 5.000000e-01) ; 2 uses
  %i.cnj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cni)
  %i.cnk = sitofp fast <4 x i32> %i.cnj to <4 x float> ; 2 uses
  %i.cnl = fcmp fast olt <4 x float> %i.cni, %i.cnk
  %i.cnm = select <4 x i1> %i.cnl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cnn = fsub fast <4 x float> %i.cnk, %i.cnm   ; 2 uses
  %i.cno = fneg fast <4 x float> %i.cnn           ; 2 uses
  %i.cnp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.cno, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.cng)
  %i.cnq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.cno, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.cnp) ; 8 uses
  %i.cnr = fmul fast <4 x float> %i.cnq, %i.cnq
  %i.cns = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cnq, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.cnt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cns, <4 x float> nofpclass(nan inf) %i.cnq, <4 x float> splat (float f0x3C088908))
  %i.cnu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cnt, <4 x float> nofpclass(nan inf) %i.cnq, <4 x float> splat (float f0x3D2AA9C1))
  %i.cnv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cnu, <4 x float> nofpclass(nan inf) %i.cnq, <4 x float> splat (float f0x3E2AAAAA))
  %i.cnw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cnv, <4 x float> nofpclass(nan inf) %i.cnq, <4 x float> splat (float 5.000000e-01))
  %i.cnx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cnw, <4 x float> nofpclass(nan inf) %i.cnr, <4 x float> nofpclass(nan inf) %i.cnq)
  %i.cny = fadd fast <4 x float> %i.cnx, splat (float 1.000000e+00)
  %i.cnz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cnn)
  %i.coa = shl <4 x i32> %i.cnz, splat (i32 23)
  %i.cob = add <4 x i32> %i.coa, splat (i32 1065353216)
  %i.coc = bitcast <4 x i32> %i.cob to <4 x float>
  %i.cod = fmul fast <4 x float> %i.cny, %i.coc   ; 3 uses
  store <4 x float> %i.ckr, ptr %.2452800.i, align 1, !tbaa !49
  store <4 x float> %i.clv, ptr %i.cjj, align 1, !tbaa !49
  store <4 x float> %i.cmz, ptr %i.cjl, align 1, !tbaa !49
  store <4 x float> %i.cod, ptr %i.cjn, align 1, !tbaa !49
  %i.coe = shufflevector <4 x float> %i.ckr, <4 x float> %i.clv, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cof = shufflevector <4 x float> %i.cmz, <4 x float> %i.cod, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cog = shufflevector <4 x float> %i.ckr, <4 x float> %i.clv, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.coh = shufflevector <4 x float> %i.cmz, <4 x float> %i.cod, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.coi = shufflevector <4 x float> %i.coe, <4 x float> %i.cof, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.coj = shufflevector <4 x float> %i.cof, <4 x float> %i.coe, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.cok = shufflevector <4 x float> %i.cog, <4 x float> %i.coh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.col = shufflevector <4 x float> %i.coh, <4 x float> %i.cog, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.com = load <4 x float>, ptr %.2460798.i, align 1, !tbaa !49
  %i.con = fadd fast <4 x float> %i.coj, %i.com
  %i.coo = fadd fast <4 x float> %i.con, %i.coi
  %i.cop = fadd fast <4 x float> %i.coo, %i.col
  %i.coq = fadd fast <4 x float> %i.cop, %i.cok
  store <4 x float> %i.coq, ptr %.2460798.i, align 1, !tbaa !49
  %i.cor = getelementptr inbounds nuw i8, ptr %.2452800.i, i64 64 ; 2 uses
  %i.cos = getelementptr inbounds nuw i8, ptr %.2456799.i, i64 16 ; 2 uses
  %i.cot = getelementptr inbounds nuw i8, ptr %.2460798.i, i64 16 ; 2 uses
  %i.cou = add nuw nsw i32 %.2464797.i, 4         ; 3 uses
  %i.cov = or disjoint i32 %i.cou, 3
  %i.cow = icmp slt i32 %i.cov, %4
  br i1 %i.cow, label %.lr.ph801.i, label %.preheader745.i, !llvm.loop !140

.lr.ph810.i:                                      ; preds = %.preheader745.i, %.lr.ph810.i
  %.3453809.i = phi ptr [ %i.cqi, %.lr.ph810.i ], [ %.2452.lcssa.i, %.preheader745.i ] ; 3 uses
  %.3457808.i = phi ptr [ %i.cqj, %.lr.ph810.i ], [ %.2456.lcssa.i, %.preheader745.i ] ; 2 uses
  %.3461807.i = phi ptr [ %i.cqk, %.lr.ph810.i ], [ %.2460.lcssa.i, %.preheader745.i ] ; 3 uses
  %.3465806.i = phi i32 [ %i.cql, %.lr.ph810.i ], [ %.2464.lcssa.i, %.preheader745.i ]
  %i.cox = load <4 x float>, ptr %.3453809.i, align 1, !tbaa !49
  %i.coy = load float, ptr %.3457808.i, align 4, !tbaa !53
  %i.coz = insertelement <4 x float> poison, float %i.coy, i64 0
  %i.cpa = shufflevector <4 x float> %i.coz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cpb = fsub fast <4 x float> %i.cox, %i.cpa
  %i.cpc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cpb, <4 x float> splat (float f0x42B0C0A5))
  %i.cpd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cpc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cpe = fmul fast <4 x float> %i.cpd, splat (float f0x3FB8AA3B)
  %i.cpf = fadd fast <4 x float> %i.cpe, splat (float 5.000000e-01) ; 2 uses
  %i.cpg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cpf)
  %i.cph = sitofp fast <4 x i32> %i.cpg to <4 x float> ; 2 uses
  %i.cpi = fcmp fast olt <4 x float> %i.cpf, %i.cph
  %i.cpj = select <4 x i1> %i.cpi, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cpk = fsub fast <4 x float> %i.cph, %i.cpj   ; 2 uses
  %i.cpl = fneg fast <4 x float> %i.cpk           ; 2 uses
  %i.cpm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.cpl, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.cpd)
  %i.cpn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.cpl, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.cpm) ; 8 uses
  %i.cpo = fmul fast <4 x float> %i.cpn, %i.cpn
  %i.cpp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cpn, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.cpq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cpp, <4 x float> nofpclass(nan inf) %i.cpn, <4 x float> splat (float f0x3C088908))
  %i.cpr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cpq, <4 x float> nofpclass(nan inf) %i.cpn, <4 x float> splat (float f0x3D2AA9C1))
end_hunk_1
