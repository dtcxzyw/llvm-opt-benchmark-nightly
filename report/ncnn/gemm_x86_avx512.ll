Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512?download=true
inline.NumInlined: 238
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 209
loop-unroll.NumUnrolled: 213
begin_hunk_0_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib:bb.a

._crit_edge1960:                                  ; preds = %._crit_edge1960.loopexit, %.thread1413
  %.4896.lcssa = phi <4 x float> [ %.3895, %.thread1413 ], [ %.lcssa3535, %._crit_edge1960.loopexit ] ; 6 uses
  %.93202.lcssa = phi ptr [ %.832011964, %.thread1413 ], [ %scevgep2558, %._crit_edge1960.loopexit ]
  br i1 %9, label %bb.gp, label %bb.gr

bb.gp:                                            ; preds = %._crit_edge1960
  switch i32 %i.b, label %bb.gs [
    i32 4, label %.thread1416
    i32 1, label %bb.gq
  ]

.thread1416:                                      ; preds = %bb.gp
  store <4 x float> %.4896.lcssa, ptr %.1231901965, align 16, !tbaa !90
  %i.cix = getelementptr inbounds nuw i8, ptr %.1231901965, i64 16
  br label %bb.gs

bb.gq:                                            ; preds = %bb.gp
  %.sroa.0.0.vec.extract = extractelement <4 x float> %.4896.lcssa, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.1231901965, align 4, !tbaa !69
  %.sroa.0.4.vec.extract = extractelement <4 x float> %.4896.lcssa, i64 1
  %i.ciy = getelementptr inbounds nuw [4 x i8], ptr %.1231901965, i64 %i.k
  store float %.sroa.0.4.vec.extract, ptr %i.ciy, align 4, !tbaa !69
  %.sroa.0.8.vec.extract = extractelement <4 x float> %.4896.lcssa, i64 2
  %i.ciz = getelementptr inbounds nuw i8, ptr %.1231901965, i64 %.idx3257
  store float %.sroa.0.8.vec.extract, ptr %i.ciz, align 4, !tbaa !69
  %.sroa.0.12.vec.extract = extractelement <4 x float> %.4896.lcssa, i64 3
  %i.cja = getelementptr inbounds nuw i8, ptr %.1231901965, i64 %.idx3258
  store float %.sroa.0.12.vec.extract, ptr %i.cja, align 4, !tbaa !69
  %i.cjb = getelementptr inbounds nuw i8, ptr %.1231901965, i64 4
  br label %bb.gs

bb.gr:                                            ; preds = %._crit_edge1960
  store <4 x float> %.4896.lcssa, ptr %.1729471966, align 16, !tbaa !90
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gp, %.thread1416, %bb.gq, %bb.gr
  %.143192 = phi ptr [ %i.cjb, %bb.gq ], [ %.1231901965, %bb.gp ], [ %.1231901965, %bb.gr ], [ %i.cix, %.thread1416 ]
  %i.cjc = getelementptr inbounds nuw i8, ptr %.1729471966, i64 16 ; 2 uses
  %i.cjd = add nuw nsw i32 %.432071963, 1         ; 2 uses
  %exitcond2560.not = icmp eq i32 %i.cjd, %6
  br i1 %exitcond2560.not, label %._crit_edge1969, label %.lr.ph1968, !llvm.loop !522

._crit_edge1969:                                  ; preds = %bb.gs, %.preheader1544
  %.172947.lcssa = phi ptr [ %.162946.lcssa, %.preheader1544 ], [ %i.cjc, %bb.gs ] ; 2 uses
  %.51.lcssa = phi ptr [ %.48.lcssa, %.preheader1544 ], [ %.53, %bb.gs ] ; 2 uses
  %i.cje = getelementptr inbounds [4 x i8], ptr %.228491975, i64 %i.aop ; 2 uses
  %indvars.iv.next2562 = add nuw nsw i64 %indvars.iv2561, 4 ; 3 uses
  %i.cjf = icmp slt i64 %indvars.iv.next2562, %invariant.op2832
  br i1 %i.cjf, label %bb.eg, label %.preheader1543.loopexit, !llvm.loop !523

.preheader1538.loopexit:                          ; preds = %._crit_edge2090
  %i.cjg = trunc nsw i64 %indvars.iv.next2576 to i32
  br label %.preheader1538

.preheader1538:                                   ; preds = %.preheader1538.loopexit, %.preheader1543
  %.32963.lcssa = phi i32 [ %.22962.lcssa, %.preheader1543 ], [ %i.cjg, %.preheader1538.loopexit ] ; 2 uses
  %.182948.lcssa = phi ptr [ %.122942.lcssa, %.preheader1543 ], [ %.232953.lcssa, %.preheader1538.loopexit ]
  %.54.lcssa = phi ptr [ %.36.lcssa, %.preheader1543 ], [ %.69.lcssa, %.preheader1538.loopexit ]
  %.3.lcssa = phi ptr [ %.22849.lcssa, %.preheader1543 ], [ %i.dat, %.preheader1538.loopexit ]
  %i.cjh = icmp slt i32 %.32963.lcssa, %4
  br i1 %i.cjh, label %.lr.ph2310, label %._crit_edge2311

.lr.ph2310:                                       ; preds = %.preheader1538
  %i.cji = sext i32 %5 to i64                     ; 2 uses
  %i.cjj = add i32 %2, -1
  %or.cond49 = icmp ult i32 %i.cjj, 2
  %i.cjk = icmp eq i32 %2, 4
  %i.cjl = sext i32 %3 to i64                     ; 2 uses
  %i.cjm = icmp sgt i32 %6, 15
  %i.cjn = icmp eq i32 %7, 0                      ; 5 uses
  %or.cond53 = icmp ult i32 %2, 3                 ; 5 uses
  %i.cjo = add i32 %2, -3
  %or.cond55 = icmp ult i32 %i.cjo, 2             ; 5 uses
  %i.cjp = icmp sgt i32 %8, 3                     ; 5 uses
  %i.cjq = sext i32 %8 to i64
  %i.cjr = add i32 %8, -4                         ; 5 uses
  %i.cjs = and i32 %i.cjr, -4
  %i.cjt = add i32 %i.cjs, 4                      ; 5 uses
  %i.cju = and i32 %6, -16
  %i.cjv = lshr i32 %i.cjr, 2
  %i.cjw = zext nneg i32 %i.cjv to i64            ; 5 uses
  %i.cjx = shl nuw nsw i64 %i.cjw, 7
  %i.cjy = shl nuw nsw i64 %i.cjw, 6
  %i.cjz = shl nuw nsw i64 %i.cjw, 5
  %i.cka = shl nuw nsw i64 %i.cjw, 4
  %i.ckb = sext i32 %.32963.lcssa to i64
  %wide.trip.count = sext i32 %4 to i64
  %i.ckc = add nuw nsw i64 %i.cjw, 1              ; 7 uses
  %min.iters.check3336 = icmp ult i32 %i.cjr, 12
  %n.vec3338 = and i64 %i.ckc, 2147483644         ; 5 uses
  %i.ckd = trunc nuw nsw i64 %n.vec3338 to i32
  %i.cke = shl i32 %i.ckd, 2
  %i.ckf = shl nuw nsw i64 %n.vec3338, 4
  %i.ckg = shl nuw nsw i64 %n.vec3338, 5
  %cmp.n3367 = icmp eq i64 %i.ckc, %n.vec3338
  %min.iters.check3179 = icmp ult i32 %i.cjr, 12
  %min.iters.check3181 = icmp ult i32 %i.cjr, 60
  %i.ckh = and i64 %i.ckc, 12
  %n.vec3183 = and i64 %i.ckc, 2147483632         ; 5 uses
  %i.cki = trunc nuw nsw i64 %n.vec3183 to i32
  %i.ckj = shl i32 %i.cki, 2
  %i.ckk = shl nuw nsw i64 %n.vec3183, 4          ; 2 uses
  %cmp.n3224 = icmp eq i64 %i.ckc, %n.vec3183
  %min.epilog.iters.check3228 = icmp eq i64 %i.ckh, 0
  %n.vec3235 = and i64 %i.ckc, 2147483644         ; 4 uses
  %i.ckl = trunc nuw nsw i64 %n.vec3235 to i32
  %i.ckm = shl i32 %i.ckl, 2
  %i.ckn = shl nuw nsw i64 %n.vec3235, 4          ; 2 uses
  %cmp.n3256 = icmp eq i64 %i.ckc, %n.vec3235
  br label %bb.jb

bb.gt:                                            ; preds = %.lr.ph2097, %._crit_edge2090
  %indvars.iv2575 = phi i64 [ %i.bqi, %.lr.ph2097 ], [ %indvars.iv.next2576, %._crit_edge2090 ] ; 3 uses
  %.32096 = phi ptr [ %.22849.lcssa, %.lr.ph2097 ], [ %i.dat, %._crit_edge2090 ] ; 21 uses
  %.542095 = phi ptr [ %.36.lcssa, %.lr.ph2097 ], [ %.69.lcssa, %._crit_edge2090 ] ; 2 uses
  %.1829482094 = phi ptr [ %.122942.lcssa, %.lr.ph2097 ], [ %.232953.lcssa, %._crit_edge2090 ] ; 2 uses
  %i.cko = load ptr, ptr %1, align 8, !tbaa !25
  %i.ckp = add nsw i64 %indvars.iv2575, %i.bpt
  %i.ckq = mul i64 %i.k, %i.ckp
  %i.ckr = getelementptr inbounds nuw [4 x i8], ptr %i.cko, i64 %i.ckq
  %i.cks = getelementptr inbounds [4 x i8], ptr %i.ckr, i64 %i.bpq ; 2 uses
  %.not3240 = icmp eq ptr %.542095, null
  br i1 %.not3240, label %bb.gx, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  br i1 %or.cond37, label %.thread1418, label %bb.gv

.thread1418:                                      ; preds = %bb.gu
  %i.ckt = load ptr, ptr %0, align 8, !tbaa !25
  %i.cku = getelementptr inbounds [4 x i8], ptr %i.ckt, i64 %i.bpt
  %i.ckv = getelementptr inbounds nuw [4 x i8], ptr %i.cku, i64 %indvars.iv2575
  br label %bb.gx

bb.gv:                                            ; preds = %bb.gu
  br i1 %i.bps, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.ckw = load ptr, ptr %0, align 8, !tbaa !25
  %i.ckx = getelementptr inbounds [4 x i8], ptr %i.ckw, i64 %i.bpq
  br label %bb.gx

bb.gx:                                            ; preds = %.thread1418, %bb.gv, %bb.gw, %bb.gt
  %.56 = phi ptr [ %i.ckx, %bb.gw ], [ %.542095, %bb.gv ], [ null, %bb.gt ], [ %i.ckv, %.thread1418 ] ; 2 uses
  br i1 %i.bpu, label %.lr.ph1997, label %.preheader1542

.preheader1542:                                   ; preds = %bb.hi, %bb.gx
  %.03095.lcssa = phi ptr [ %i.cks, %bb.gx ], [ %.13096, %bb.hi ] ; 2 uses
  %.03085.lcssa = phi ptr [ %.0.val1, %bb.gx ], [ %.13086.lcssa, %bb.hi ] ; 2 uses
  %.03080.lcssa = phi i32 [ 0, %bb.gx ], [ %i.bqd, %bb.hi ] ; 3 uses
  %.192949.lcssa = phi ptr [ %.1829482094, %bb.gx ], [ %i.cnh, %bb.hi ] ; 2 uses
  %.57.lcssa = phi ptr [ %.56, %bb.gx ], [ %.59, %bb.hi ] ; 2 uses
  %i.cky = or disjoint i32 %.03080.lcssa, 7
  %i.ckz = icmp slt i32 %i.cky, %6
  br i1 %i.ckz, label %.lr.ph2022, label %.preheader1541

.lr.ph1997:                                       ; preds = %bb.gx, %bb.hi
  %.571995 = phi ptr [ %.59, %bb.hi ], [ %.56, %bb.gx ] ; 13 uses
  %.1929491994 = phi ptr [ %i.cnh, %bb.hi ], [ %.1829482094, %bb.gx ] ; 5 uses
  %.030801993 = phi i32 [ %i.cni, %bb.hi ], [ 0, %bb.gx ]
  %.030851992 = phi ptr [ %.13086.lcssa, %bb.hi ], [ %.0.val1, %bb.gx ] ; 4 uses
  %.030951991 = phi ptr [ %.13096, %bb.hi ], [ %i.cks, %bb.gx ] ; 4 uses
  br i1 %i.bpv, label %bb.gy, label %bb.hf

bb.gy:                                            ; preds = %.lr.ph1997
  %.not3245 = icmp eq ptr %.571995, null
  br i1 %.not3245, label %.thread1429, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  br i1 %i.bpw, label %.thread1420, label %bb.ha

.thread1420:                                      ; preds = %bb.gz
  %i.cla = load float, ptr %.571995, align 4, !tbaa !69
  %i.clb = insertelement <16 x float> poison, float %i.cla, i64 0
  %i.clc = shufflevector <16 x float> %i.clb, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %.thread1429

bb.ha:                                            ; preds = %bb.gz
  br i1 %or.cond37, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.cld = load float, ptr %.571995, align 4, !tbaa !69
  %i.cle = insertelement <16 x float> poison, float %i.cld, i64 0
  %i.clf = shufflevector <16 x float> %i.cle, <16 x float> poison, <16 x i32> zeroinitializer
  %i.clg = getelementptr inbounds nuw i8, ptr %.571995, i64 4
  %i.clh = load float, ptr %i.clg, align 4, !tbaa !69
  %i.cli = insertelement <16 x float> poison, float %i.clh, i64 0
  %i.clj = shufflevector <16 x float> %i.cli, <16 x float> poison, <16 x i32> zeroinitializer
  br label %.thread1429

bb.hc:                                            ; preds = %bb.ha
  switch i32 %2, label %.thread1429 [
    i32 3, label %bb.hd
    i32 4, label %bb.he
  ]

bb.hd:                                            ; preds = %bb.hc
  %i.clk = load <16 x float>, ptr %.571995, align 1, !tbaa !90 ; 2 uses
  %i.cll = getelementptr inbounds nuw i8, ptr %.571995, i64 64
  %i.clm = load <16 x float>, ptr %i.cll, align 1, !tbaa !90 ; 2 uses
  %10 = shufflevector <16 x float> %i.clk, <16 x float> %i.clm, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %11 = shufflevector <16 x float> %i.clk, <16 x float> %i.clm, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.cln = getelementptr inbounds nuw i8, ptr %.571995, i64 128
  br label %.thread1429

bb.he:                                            ; preds = %bb.hc
  %i.clo = load <16 x float>, ptr %.571995, align 1, !tbaa !90 ; 2 uses
  %i.clp = getelementptr inbounds nuw i8, ptr %.571995, i64 64
  br label %.thread1429

bb.hf:                                            ; preds = %.lr.ph1997
  %i.clq = load <16 x float>, ptr %.1929491994, align 1, !tbaa !90 ; 2 uses
  %i.clr = getelementptr inbounds nuw i8, ptr %.1929491994, i64 64
  %i.cls = load <16 x float>, ptr %i.clr, align 1, !tbaa !90 ; 2 uses
  %12 = shufflevector <16 x float> %i.clq, <16 x float> %i.cls, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %13 = shufflevector <16 x float> %i.clq, <16 x float> %i.cls, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  br label %.thread1429

.thread1429:                                      ; preds = %bb.hc, %bb.hb, %.thread1420, %bb.hd, %bb.gy, %bb.he, %bb.hf
  %.3875 = phi nsz <16 x float> [ zeroinitializer, %bb.gy ], [ %i.clo, %bb.he ], [ zeroinitializer, %bb.hc ], [ %12, %bb.hf ], [ %10, %bb.hd ], [ %i.clc, %.thread1420 ], [ %i.clf, %bb.hb ] ; 3 uses
  %.3870 = phi nsz <16 x float> [ zeroinitializer, %bb.gy ], [ %i.clo, %bb.he ], [ zeroinitializer, %bb.hc ], [ %13, %bb.hf ], [ %11, %bb.hd ], [ %i.clc, %.thread1420 ], [ %i.clj, %bb.hb ] ; 3 uses
  %.59 = phi ptr [ null, %bb.gy ], [ %i.clp, %bb.he ], [ %.571995, %bb.hc ], [ %.571995, %bb.hf ], [ %i.cln, %bb.hd ], [ %.571995, %.thread1420 ], [ %.571995, %bb.hb ] ; 2 uses
  br i1 %i.bpx, label %.lr.ph1986.preheader, label %._crit_edge1987

.lr.ph1986.preheader:                             ; preds = %.thread1429
  br i1 %i.bqm, label %.lr.ph1986.epil.preheader, label %.lr.ph1986

.lr.ph1986:                                       ; preds = %.lr.ph1986.preheader, %.lr.ph1986
  %.030521984 = phi ptr [ %i.cmp, %.lr.ph1986 ], [ %.32096, %.lr.ph1986.preheader ] ; 5 uses
  %.130861983 = phi ptr [ %i.cmq, %.lr.ph1986 ], [ %.030851992, %.lr.ph1986.preheader ] ; 3 uses
  %.48711982 = phi <16 x float> [ %i.cmo, %.lr.ph1986 ], [ %.3870, %.lr.ph1986.preheader ]
  %.48761981 = phi <16 x float> [ %i.cmj, %.lr.ph1986 ], [ %.3875, %.lr.ph1986.preheader ]
  %niter3666 = phi i32 [ %niter3666.next.1, %.lr.ph1986 ], [ 0, %.lr.ph1986.preheader ]
  %i.clt = load <16 x float>, ptr %.130861983, align 1, !tbaa !90 ; 2 uses
  %i.clu = load float, ptr %.030521984, align 4, !tbaa !69
  %i.clv = insertelement <16 x float> poison, float %i.clu, i64 0
  %i.clw = shufflevector <16 x float> %i.clv, <16 x float> poison, <16 x i32> zeroinitializer
  %i.clx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.clw, <16 x float> nofpclass(nan inf) %i.clt, <16 x float> nofpclass(nan inf) %.48761981)
  %i.cly = getelementptr inbounds nuw i8, ptr %.030521984, i64 4
  %i.clz = load float, ptr %i.cly, align 4, !tbaa !69
  %i.cma = insertelement <16 x float> poison, float %i.clz, i64 0
  %i.cmb = shufflevector <16 x float> %i.cma, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cmc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cmb, <16 x float> nofpclass(nan inf) %i.clt, <16 x float> nofpclass(nan inf) %.48711982)
  %i.cmd = getelementptr inbounds nuw i8, ptr %.030521984, i64 8
  %i.cme = getelementptr inbounds nuw i8, ptr %.130861983, i64 64
  %i.cmf = load <16 x float>, ptr %i.cme, align 1, !tbaa !90 ; 2 uses
  %i.cmg = load float, ptr %i.cmd, align 4, !tbaa !69
  %i.cmh = insertelement <16 x float> poison, float %i.cmg, i64 0
  %i.cmi = shufflevector <16 x float> %i.cmh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cmj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cmi, <16 x float> nofpclass(nan inf) %i.cmf, <16 x float> nofpclass(nan inf) %i.clx) ; 3 uses
  %i.cmk = getelementptr inbounds nuw i8, ptr %.030521984, i64 12
  %i.cml = load float, ptr %i.cmk, align 4, !tbaa !69
  %i.cmm = insertelement <16 x float> poison, float %i.cml, i64 0
  %i.cmn = shufflevector <16 x float> %i.cmm, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cmo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cmn, <16 x float> nofpclass(nan inf) %i.cmf, <16 x float> nofpclass(nan inf) %i.cmc) ; 3 uses
  %i.cmp = getelementptr inbounds nuw i8, ptr %.030521984, i64 16 ; 2 uses
  %i.cmq = getelementptr inbounds nuw i8, ptr %.130861983, i64 128 ; 2 uses
  %niter3666.next.1 = add nuw nsw i32 %niter3666, 2 ; 2 uses
  %niter3666.ncmp.1 = icmp eq i32 %niter3666.next.1, %unroll_iter3665
  br i1 %niter3666.ncmp.1, label %._crit_edge1987.loopexit.unr-lcssa, label %.lr.ph1986, !llvm.loop !524

._crit_edge1987.loopexit.unr-lcssa:               ; preds = %.lr.ph1986
  br i1 %lcmp.mod3661.not, label %._crit_edge1987.loopexit, label %.lr.ph1986.epil.preheader

.lr.ph1986.epil.preheader:                        ; preds = %._crit_edge1987.loopexit.unr-lcssa, %.lr.ph1986.preheader
  %.030521984.epil.init = phi ptr [ %.32096, %.lr.ph1986.preheader ], [ %i.cmp, %._crit_edge1987.loopexit.unr-lcssa ] ; 2 uses
  %.130861983.epil.init = phi ptr [ %.030851992, %.lr.ph1986.preheader ], [ %i.cmq, %._crit_edge1987.loopexit.unr-lcssa ]
  %.48711982.epil.init = phi <16 x float> [ %.3870, %.lr.ph1986.preheader ], [ %i.cmo, %._crit_edge1987.loopexit.unr-lcssa ]
  %.48761981.epil.init = phi <16 x float> [ %.3875, %.lr.ph1986.preheader ], [ %i.cmj, %._crit_edge1987.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3664)
  %i.cmr = load <16 x float>, ptr %.130861983.epil.init, align 1, !tbaa !90 ; 2 uses
  %i.cms = load float, ptr %.030521984.epil.init, align 4, !tbaa !69
  %i.cmt = insertelement <16 x float> poison, float %i.cms, i64 0
  %i.cmu = shufflevector <16 x float> %i.cmt, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cmv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cmu, <16 x float> nofpclass(nan inf) %i.cmr, <16 x float> nofpclass(nan inf) %.48761981.epil.init)
  %i.cmw = getelementptr inbounds nuw i8, ptr %.030521984.epil.init, i64 4
  %i.cmx = load float, ptr %i.cmw, align 4, !tbaa !69
  %i.cmy = insertelement <16 x float> poison, float %i.cmx, i64 0
  %i.cmz = shufflevector <16 x float> %i.cmy, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cna = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cmz, <16 x float> nofpclass(nan inf) %i.cmr, <16 x float> nofpclass(nan inf) %.48711982.epil.init)
  br label %._crit_edge1987.loopexit

._crit_edge1987.loopexit:                         ; preds = %._crit_edge1987.loopexit.unr-lcssa, %.lr.ph1986.epil.preheader
  %.lcssa3466 = phi <16 x float> [ %i.cmj, %._crit_edge1987.loopexit.unr-lcssa ], [ %i.cmv, %.lr.ph1986.epil.preheader ]
  %.lcssa3465 = phi <16 x float> [ %i.cmo, %._crit_edge1987.loopexit.unr-lcssa ], [ %i.cna, %.lr.ph1986.epil.preheader ]
  %i.cnb = getelementptr i8, ptr %.030851992, i64 %i.bqc
  %scevgep2564 = getelementptr i8, ptr %i.cnb, i64 64
  br label %._crit_edge1987

._crit_edge1987:                                  ; preds = %._crit_edge1987.loopexit, %.thread1429
  %.4876.lcssa = phi <16 x float> [ %.3875, %.thread1429 ], [ %.lcssa3466, %._crit_edge1987.loopexit ] ; 3 uses
  %.4871.lcssa = phi <16 x float> [ %.3870, %.thread1429 ], [ %.lcssa3465, %._crit_edge1987.loopexit ] ; 3 uses
  %.13086.lcssa = phi ptr [ %.030851992, %.thread1429 ], [ %scevgep2564, %._crit_edge1987.loopexit ] ; 2 uses
  br i1 %9, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %._crit_edge1987
  store <16 x float> %.4876.lcssa, ptr %.030951991, align 1, !tbaa !90
  %i.cnc = getelementptr inbounds nuw [4 x i8], ptr %.030951991, i64 %i.k
  store <16 x float> %.4871.lcssa, ptr %i.cnc, align 1, !tbaa !90
  %i.cnd = getelementptr inbounds nuw i8, ptr %.030951991, i64 64
  br label %bb.hi

bb.hh:                                            ; preds = %._crit_edge1987
  %i.cne = shufflevector <16 x float> %.4876.lcssa, <16 x float> %.4871.lcssa, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cnf = shufflevector <16 x float> %.4876.lcssa, <16 x float> %.4871.lcssa, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x float> %i.cne, ptr %.1929491994, align 1, !tbaa !90
  %i.cng = getelementptr inbounds nuw i8, ptr %.1929491994, i64 64
  store <16 x float> %i.cnf, ptr %i.cng, align 1, !tbaa !90
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %.13096 = phi ptr [ %i.cnd, %bb.hg ], [ %.030951991, %bb.hh ] ; 2 uses
  %i.cnh = getelementptr inbounds nuw i8, ptr %.1929491994, i64 128 ; 2 uses
  %i.cni = add nuw nsw i32 %.030801993, 16        ; 2 uses
  %i.cnj = or disjoint i32 %i.cni, 15
  %i.cnk = icmp slt i32 %i.cnj, %6
  br i1 %i.cnk, label %.lr.ph1997, label %.preheader1542, !llvm.loop !525

.preheader1541:                                   ; preds = %bb.ht, %.preheader1542
  %.23097.lcssa = phi ptr [ %.03095.lcssa, %.preheader1542 ], [ %.33098, %bb.ht ] ; 2 uses
  %.23087.lcssa = phi ptr [ %.03085.lcssa, %.preheader1542 ], [ %.33088.lcssa, %bb.ht ] ; 2 uses
  %.13081.lcssa = phi i32 [ %.03080.lcssa, %.preheader1542 ], [ %i.crf, %bb.ht ] ; 3 uses
  %.202950.lcssa = phi ptr [ %.192949.lcssa, %.preheader1542 ], [ %i.cre, %bb.ht ] ; 2 uses
  %.60.lcssa = phi ptr [ %.57.lcssa, %.preheader1542 ], [ %.62, %bb.ht ] ; 2 uses
  %i.cnl = or disjoint i32 %.13081.lcssa, 3
  %i.cnm = icmp slt i32 %i.cnl, %6
  br i1 %i.cnm, label %.lr.ph2043, label %.preheader1540

.lr.ph2022:                                       ; preds = %.preheader1542, %bb.ht
  %.602021 = phi ptr [ %.62, %bb.ht ], [ %.57.lcssa, %.preheader1542 ] ; 16 uses
  %.2029502020 = phi ptr [ %i.cre, %bb.ht ], [ %.192949.lcssa, %.preheader1542 ] ; 9 uses
  %.130812019 = phi i32 [ %i.crf, %bb.ht ], [ %.03080.lcssa, %.preheader1542 ]
  %.230872018 = phi ptr [ %.33088.lcssa, %bb.ht ], [ %.03085.lcssa, %.preheader1542 ] ; 4 uses
  %.230972017 = phi ptr [ %.33098, %bb.ht ], [ %.03095.lcssa, %.preheader1542 ] ; 5 uses
  br i1 %i.bpv, label %bb.hj, label %bb.hq

bb.hj:                                            ; preds = %.lr.ph2022
  %.not3244 = icmp eq ptr %.602021, null
  br i1 %.not3244, label %.thread1446, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  br i1 %i.bpw, label %.thread1433, label %bb.hl

.thread1433:                                      ; preds = %bb.hk
  %i.cnn = load float, ptr %.602021, align 4, !tbaa !69
  %i.cno = insertelement <4 x float> poison, float %i.cnn, i64 0
  %i.cnp = shufflevector <4 x float> %i.cno, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %.thread1446

bb.hl:                                            ; preds = %bb.hk
  br i1 %or.cond37, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.cnq = load float, ptr %.602021, align 4, !tbaa !69
  %i.cnr = insertelement <4 x float> poison, float %i.cnq, i64 0
  %i.cns = shufflevector <4 x float> %i.cnr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cnt = getelementptr inbounds nuw i8, ptr %.602021, i64 4
  %i.cnu = load float, ptr %i.cnt, align 4, !tbaa !69
  %i.cnv = insertelement <4 x float> poison, float %i.cnu, i64 0
  %i.cnw = shufflevector <4 x float> %i.cnv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.thread1446

bb.hn:                                            ; preds = %bb.hl
  switch i32 %2, label %.thread1446 [
    i32 3, label %bb.ho
    i32 4, label %bb.hp
  ]

bb.ho:                                            ; preds = %bb.hn
  %i.cnx = load <4 x float>, ptr %.602021, align 1, !tbaa !90 ; 2 uses
  %i.cny = getelementptr inbounds nuw i8, ptr %.602021, i64 16
  %i.cnz = load <4 x float>, ptr %i.cny, align 1, !tbaa !90 ; 2 uses
  %i.coa = getelementptr inbounds nuw i8, ptr %.602021, i64 32
  %i.cob = load <4 x float>, ptr %i.coa, align 1, !tbaa !90 ; 2 uses
  %i.coc = getelementptr inbounds nuw i8, ptr %.602021, i64 48
  %i.cod = load <4 x float>, ptr %i.coc, align 1, !tbaa !90 ; 2 uses
  %i.coe = shufflevector <4 x float> %i.cnx, <4 x float> %i.cnz, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cof = shufflevector <4 x float> %i.cob, <4 x float> %i.cod, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cog = shufflevector <4 x float> %i.cnx, <4 x float> %i.cnz, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.coh = shufflevector <4 x float> %i.cob, <4 x float> %i.cod, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.coi = getelementptr inbounds nuw i8, ptr %.602021, i64 64
  br label %.thread1446

bb.hp:                                            ; preds = %bb.hn
  %i.coj = load <4 x float>, ptr %.602021, align 1, !tbaa !90 ; 2 uses
  %i.cok = getelementptr inbounds nuw i8, ptr %.602021, i64 16
  %i.col = load <4 x float>, ptr %i.cok, align 1, !tbaa !90 ; 2 uses
  %i.com = getelementptr inbounds nuw i8, ptr %.602021, i64 32
  br label %.thread1446

bb.hq:                                            ; preds = %.lr.ph2022
  %i.con = load <4 x float>, ptr %.2029502020, align 1, !tbaa !90 ; 2 uses
  %i.coo = getelementptr inbounds nuw i8, ptr %.2029502020, i64 16
  %i.cop = load <4 x float>, ptr %i.coo, align 1, !tbaa !90 ; 2 uses
  %i.coq = getelementptr inbounds nuw i8, ptr %.2029502020, i64 32
  %i.cor = load <4 x float>, ptr %i.coq, align 1, !tbaa !90 ; 2 uses
  %i.cos = getelementptr inbounds nuw i8, ptr %.2029502020, i64 48
  %i.cot = load <4 x float>, ptr %i.cos, align 1, !tbaa !90 ; 2 uses
  %i.cou = shufflevector <4 x float> %i.con, <4 x float> %i.cop, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cov = shufflevector <4 x float> %i.cor, <4 x float> %i.cot, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cow = shufflevector <4 x float> %i.con, <4 x float> %i.cop, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cox = shufflevector <4 x float> %i.cor, <4 x float> %i.cot, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  br label %.thread1446

.thread1446:                                      ; preds = %bb.hn, %bb.hm, %.thread1433, %bb.ho, %bb.hj, %bb.hp, %bb.hq
  %.3865 = phi nsz <4 x float> [ zeroinitializer, %bb.hj ], [ %i.coj, %bb.hp ], [ zeroinitializer, %bb.hn ], [ %i.cou, %bb.hq ], [ %i.coe, %bb.ho ], [ %i.cnp, %.thread1433 ], [ %i.cns, %bb.hm ] ; 3 uses
  %.3860 = phi nsz <4 x float> [ zeroinitializer, %bb.hj ], [ %i.col, %bb.hp ], [ zeroinitializer, %bb.hn ], [ %i.cov, %bb.hq ], [ %i.cof, %bb.ho ], [ %i.cnp, %.thread1433 ], [ %i.cns, %bb.hm ] ; 3 uses
  %.3855 = phi nsz <4 x float> [ zeroinitializer, %bb.hj ], [ %i.coj, %bb.hp ], [ zeroinitializer, %bb.hn ], [ %i.cow, %bb.hq ], [ %i.cog, %bb.ho ], [ %i.cnp, %.thread1433 ], [ %i.cnw, %bb.hm ] ; 3 uses
  %.3850 = phi nsz <4 x float> [ zeroinitializer, %bb.hj ], [ %i.col, %bb.hp ], [ zeroinitializer, %bb.hn ], [ %i.cox, %bb.hq ], [ %i.coh, %bb.ho ], [ %i.cnp, %.thread1433 ], [ %i.cnw, %bb.hm ] ; 3 uses
  %.62 = phi ptr [ null, %bb.hj ], [ %i.com, %bb.hp ], [ %.602021, %bb.hn ], [ %.602021, %bb.hq ], [ %i.coi, %bb.ho ], [ %.602021, %.thread1433 ], [ %.602021, %bb.hm ] ; 2 uses
  br i1 %i.bpx, label %.lr.ph2010.preheader, label %._crit_edge2011

.lr.ph2010.preheader:                             ; preds = %.thread1446
  br i1 %i.bqn, label %.lr.ph2010.epil.preheader, label %.lr.ph2010

.lr.ph2010:                                       ; preds = %.lr.ph2010.preheader, %.lr.ph2010
  %.030182008 = phi ptr [ %i.cqc, %.lr.ph2010 ], [ %.32096, %.lr.ph2010.preheader ] ; 5 uses
  %.330882007 = phi ptr [ %i.cqd, %.lr.ph2010 ], [ %.230872018, %.lr.ph2010.preheader ] ; 5 uses
  %.48512006 = phi <4 x float> [ %i.cqb, %.lr.ph2010 ], [ %.3850, %.lr.ph2010.preheader ]
  %.48562005 = phi <4 x float> [ %i.cqa, %.lr.ph2010 ], [ %.3855, %.lr.ph2010.preheader ]
  %.48612004 = phi <4 x float> [ %i.cpv, %.lr.ph2010 ], [ %.3860, %.lr.ph2010.preheader ]
end_hunk_0
