Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_fma?download=true
inline.NumInlined: 233
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 134
loop-unroll.NumUnrolled: 138
begin_hunk_0_@_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii:bb.a
  br i1 %i.ao, label %bb.dj, label %bb.ds

bb.dj:                                            ; preds = %.thread1493
  br i1 %.not2997, label %bb.dp, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  switch i32 %i.b, label %bb.do [
    i32 8, label %bb.dl
    i32 4, label %bb.dm
    i32 1, label %bb.dn
  ]

bb.dl:                                            ; preds = %bb.dk
  store <8 x float> %spec.select1996, ptr %.1327991816, align 1, !tbaa !89
  br label %bb.do

bb.dm:                                            ; preds = %bb.dk
  %i.aqj = shufflevector <8 x float> %spec.select1996, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.aqj, ptr %.1327991816, align 1, !tbaa !89
  %i.aqk = getelementptr inbounds nuw i8, ptr %.1327991816, i64 %.idx3081
  %i.aql = shufflevector <8 x float> %spec.select1996, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.aql, ptr %i.aqk, align 1, !tbaa !89
  br label %bb.do

bb.dn:                                            ; preds = %bb.dk
  store <8 x float> %spec.select1996, ptr %.1327991816, align 1, !tbaa !89
  br label %bb.do

bb.do:                                            ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.dn
  %i.aqm = getelementptr inbounds nuw [4 x i8], ptr %.1327991816, i64 %i.k
  br label %.thread1500

bb.dp:                                            ; preds = %bb.dj
  switch i32 %i.b, label %.thread1500 [
    i32 8, label %.thread1497
    i32 4, label %bb.dq
    i32 1, label %bb.dr
  ]

.thread1497:                                      ; preds = %bb.dp
  store <8 x float> %spec.select1996, ptr %.1327991816, align 1, !tbaa !89
  %i.aqn = getelementptr inbounds nuw i8, ptr %.1327991816, i64 32
  br label %.thread1500

bb.dq:                                            ; preds = %bb.dp
  %i.aqo = shufflevector <8 x float> %spec.select1996, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.aqo, ptr %.1327991816, align 1, !tbaa !89
  %i.aqp = getelementptr inbounds nuw i8, ptr %.1327991816, i64 %.idx3081
  %i.aqq = shufflevector <8 x float> %spec.select1996, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.aqq, ptr %i.aqp, align 1, !tbaa !89
  %i.aqr = getelementptr inbounds nuw i8, ptr %.1327991816, i64 16
  br label %.thread1500

bb.dr:                                            ; preds = %bb.dp
  %.sroa.0501.0.vec.extract = extractelement <8 x float> %spec.select1996, i64 0
  store float %.sroa.0501.0.vec.extract, ptr %.1327991816, align 4, !tbaa !68
  %.sroa.0501.4.vec.extract = extractelement <8 x float> %spec.select1996, i64 1
  %i.aqs = getelementptr inbounds nuw [4 x i8], ptr %.1327991816, i64 %i.k
  store float %.sroa.0501.4.vec.extract, ptr %i.aqs, align 4, !tbaa !68
  %.sroa.0501.8.vec.extract = extractelement <8 x float> %spec.select1996, i64 2
  %i.aqt = getelementptr inbounds nuw i8, ptr %.1327991816, i64 %.idx3077
  store float %.sroa.0501.8.vec.extract, ptr %i.aqt, align 4, !tbaa !68
  %.sroa.0501.12.vec.extract = extractelement <8 x float> %spec.select1996, i64 3
  %i.aqu = getelementptr inbounds nuw i8, ptr %.1327991816, i64 %.idx3079
  store float %.sroa.0501.12.vec.extract, ptr %i.aqu, align 4, !tbaa !68
  %.sroa.0501.16.vec.extract = extractelement <8 x float> %spec.select1996, i64 4
  %i.aqv = getelementptr inbounds nuw i8, ptr %.1327991816, i64 %.idx3081
  store float %.sroa.0501.16.vec.extract, ptr %i.aqv, align 4, !tbaa !68
  %.sroa.0501.20.vec.extract = extractelement <8 x float> %spec.select1996, i64 5
  %i.aqw = getelementptr inbounds nuw i8, ptr %.1327991816, i64 %.idx3093
  store float %.sroa.0501.20.vec.extract, ptr %i.aqw, align 4, !tbaa !68
  %.sroa.0501.24.vec.extract = extractelement <8 x float> %spec.select1996, i64 6
  %i.aqx = getelementptr inbounds nuw i8, ptr %.1327991816, i64 %.idx3094
  store float %.sroa.0501.24.vec.extract, ptr %i.aqx, align 4, !tbaa !68
  %.sroa.0501.28.vec.extract = extractelement <8 x float> %spec.select1996, i64 7
  %i.aqy = getelementptr inbounds nuw i8, ptr %.1327991816, i64 %.idx3095
  store float %.sroa.0501.28.vec.extract, ptr %i.aqy, align 4, !tbaa !68
  %i.aqz = getelementptr inbounds nuw i8, ptr %.1327991816, i64 4
  br label %.thread1500

bb.ds:                                            ; preds = %.thread1493
  %i.ara = bitcast <8 x float> %spec.select1996 to <8 x i32> ; 2 uses
  %i.arb = shufflevector <8 x i32> %i.ara, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.arc = shufflevector <8 x i32> %i.ara, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ard = lshr <4 x i32> %i.arb, splat (i32 16)
  %i.are = lshr <4 x i32> %i.arc, splat (i32 16)
  %i.arf = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ard, <4 x i32> %i.are) ; 14 uses
  %i.arg = bitcast <8 x i16> %i.arf to <2 x i64>  ; 2 uses
  br i1 %.not2997, label %bb.dy, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  switch i32 %i.b, label %bb.dx [
    i32 8, label %bb.du
    i32 4, label %bb.dv
    i32 1, label %bb.dw
  ]

bb.du:                                            ; preds = %bb.dt
  store <8 x i16> %i.arf, ptr %.1627811817, align 1, !tbaa !89
  br label %bb.dx

bb.dv:                                            ; preds = %bb.dt
  %i.arh = extractelement <2 x i64> %i.arg, i64 0
  store i64 %i.arh, ptr %.1627811817, align 1, !tbaa !89
  %i.ari = getelementptr inbounds nuw i8, ptr %.1627811817, i64 %.idx3077
  %i.arj = bitcast <8 x i16> %i.arf to <2 x double>
  %i.ark = extractelement <2 x double> %i.arj, i64 1
  store double %i.ark, ptr %i.ari, align 1, !tbaa !89
  br label %bb.dx

bb.dw:                                            ; preds = %bb.dt
  store <8 x i16> %i.arf, ptr %.1627811817, align 1, !tbaa !89
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dv, %bb.du, %bb.dt, %bb.dw
  %i.arl = getelementptr inbounds nuw [2 x i8], ptr %.1627811817, i64 %i.k
  br label %.thread1500

bb.dy:                                            ; preds = %bb.ds
  switch i32 %i.b, label %.thread1500 [
    i32 8, label %.thread1502
    i32 4, label %bb.dz
    i32 1, label %bb.ea
  ]

.thread1502:                                      ; preds = %bb.dy
  store <8 x i16> %i.arf, ptr %.1627811817, align 1, !tbaa !89
  %i.arm = getelementptr inbounds nuw i8, ptr %.1627811817, i64 16
  br label %.thread1500

bb.dz:                                            ; preds = %bb.dy
  %i.arn = extractelement <2 x i64> %i.arg, i64 0
  store i64 %i.arn, ptr %.1627811817, align 1, !tbaa !89
  %i.aro = getelementptr inbounds nuw i8, ptr %.1627811817, i64 %.idx3077
  %i.arp = bitcast <8 x i16> %i.arf to <2 x double>
  %i.arq = extractelement <2 x double> %i.arp, i64 1
  store double %i.arq, ptr %i.aro, align 1, !tbaa !89
  %i.arr = getelementptr inbounds nuw i8, ptr %.1627811817, i64 8
  br label %.thread1500

bb.ea:                                            ; preds = %bb.dy
  %.sroa.0499.0.vec.extract = extractelement <8 x i16> %i.arf, i64 0
  store i16 %.sroa.0499.0.vec.extract, ptr %.1627811817, align 2, !tbaa !108
  %.sroa.0499.2.vec.extract = extractelement <8 x i16> %i.arf, i64 1
  %i.ars = getelementptr inbounds nuw [2 x i8], ptr %.1627811817, i64 %i.k
  store i16 %.sroa.0499.2.vec.extract, ptr %i.ars, align 2, !tbaa !108
  %.sroa.0499.4.vec.extract = extractelement <8 x i16> %i.arf, i64 2
  %i.art = getelementptr inbounds nuw i8, ptr %.1627811817, i64 %.idx3075
  store i16 %.sroa.0499.4.vec.extract, ptr %i.art, align 2, !tbaa !108
  %.sroa.0499.6.vec.extract = extractelement <8 x i16> %i.arf, i64 3
  %i.aru = getelementptr inbounds nuw i8, ptr %.1627811817, i64 %.idx3076
  store i16 %.sroa.0499.6.vec.extract, ptr %i.aru, align 2, !tbaa !108
  %.sroa.0499.8.vec.extract = extractelement <8 x i16> %i.arf, i64 4
  %i.arv = getelementptr inbounds nuw i8, ptr %.1627811817, i64 %.idx3077
  store i16 %.sroa.0499.8.vec.extract, ptr %i.arv, align 2, !tbaa !108
  %.sroa.0499.10.vec.extract = extractelement <8 x i16> %i.arf, i64 5
  %i.arw = getelementptr inbounds nuw i8, ptr %.1627811817, i64 %.idx3078
  store i16 %.sroa.0499.10.vec.extract, ptr %i.arw, align 2, !tbaa !108
  %.sroa.0499.12.vec.extract = extractelement <8 x i16> %i.arf, i64 6
  %i.arx = getelementptr inbounds nuw i8, ptr %.1627811817, i64 %.idx3079
  store i16 %.sroa.0499.12.vec.extract, ptr %i.arx, align 2, !tbaa !108
  %.sroa.0499.14.vec.extract = extractelement <8 x i16> %i.arf, i64 7
  %i.ary = getelementptr inbounds nuw i8, ptr %.1627811817, i64 %.idx3080
  store i16 %.sroa.0499.14.vec.extract, ptr %i.ary, align 2, !tbaa !108
  %i.arz = getelementptr inbounds nuw i8, ptr %.1627811817, i64 2
  br label %.thread1500

.thread1500:                                      ; preds = %bb.dy, %bb.dp, %bb.dz, %.thread1502, %bb.dq, %.thread1497, %bb.dx, %bb.ea, %bb.do, %bb.dr
  %.162802 = phi ptr [ %i.aqm, %bb.do ], [ %i.aqz, %bb.dr ], [ %.1327991816, %bb.dp ], [ %.1327991816, %bb.dy ], [ %.1327991816, %bb.ea ], [ %.1327991816, %bb.dx ], [ %i.aqr, %bb.dq ], [ %i.aqn, %.thread1497 ], [ %.1327991816, %.thread1502 ], [ %.1327991816, %bb.dz ]
  %.202785 = phi ptr [ %.1627811817, %bb.do ], [ %.1627811817, %bb.dr ], [ %.1627811817, %bb.dp ], [ %.1627811817, %bb.dy ], [ %i.arz, %bb.ea ], [ %i.arl, %bb.dx ], [ %.1627811817, %bb.dq ], [ %.1627811817, %.thread1497 ], [ %i.arm, %.thread1502 ], [ %i.arr, %bb.dz ]
  %i.asa = add nuw nsw i32 %.328371815, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.asa, %6
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph1820, !llvm.loop !1237

._crit_edge:                                      ; preds = %.thread1500, %.preheader1774
  %.42745.lcssa = phi ptr [ %.32744.lcssa, %.preheader1774 ], [ %i.aov, %.thread1500 ] ; 2 uses
  %.16.lcssa = phi ptr [ %.12.lcssa, %.preheader1774 ], [ %.19, %.thread1500 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.asb = or disjoint i64 %indvars.iv.next, 7
  %i.asc = icmp samesign ult i64 %i.asb, %i.aq
  br i1 %i.asc, label %bb.b, label %.preheader1773.loopexit, !llvm.loop !1238

.preheader1768.loopexit:                          ; preds = %._crit_edge1881
  %i.asd = trunc nuw nsw i64 %indvars.iv.next2046 to i32
  br label %.preheader1768

.preheader1768:                                   ; preds = %.preheader1768.loopexit, %.preheader1773
  %.12762.lcssa = phi i32 [ %.02761.lcssa, %.preheader1773 ], [ %i.asd, %.preheader1768.loopexit ] ; 3 uses
  %.52746.lcssa = phi ptr [ %.02741.lcssa, %.preheader1773 ], [ %.92750.lcssa, %.preheader1768.loopexit ] ; 2 uses
  %.20.lcssa = phi ptr [ %.02729.lcssa, %.preheader1773 ], [ %.36.lcssa, %.preheader1768.loopexit ] ; 2 uses
  %i.ase = or disjoint i32 %.12762.lcssa, 1
  %i.asf = icmp slt i32 %i.ase, %4
  br i1 %i.asf, label %.lr.ph1942, label %.preheader1764

.lr.ph1942:                                       ; preds = %.preheader1768
  %.not2936 = icmp eq i32 %9, 0                   ; 9 uses
  %i.asg = sext i32 %5 to i64                     ; 3 uses
  %i.ash = mul i64 %i.k, %i.asg                   ; 2 uses
  %i.asi = mul nsw i32 %i.b, %5
  %i.asj = sext i32 %i.asi to i64                 ; 2 uses
  %11 = insertelement <2 x i32> poison, i32 %2, i64 0
  %12 = shufflevector <2 x i32> %11, <2 x i32> poison, <2 x i32> zeroinitializer
  %13 = add <2 x i32> %12, <i32 0, i32 -1>
  %14 = icmp ult <2 x i32> %13, <i32 1, i32 2>    ; 4 uses
  %i.ask = sext i32 %3 to i64                     ; 4 uses
  %i.asl = icmp sgt i32 %6, 7
  %i.asm = insertelement <4 x float> poison, float %8, i64 0
  %i.asn = shufflevector <4 x float> %i.asm, <4 x float> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.aso = fcmp fast oeq float %8, 1.000000e+00   ; 3 uses
  %i.asp = fcmp fast une float %7, 1.000000e+00   ; 3 uses
  %i.asq = insertelement <4 x float> poison, float %7, i64 0
  %i.asr = shufflevector <4 x float> %i.asq, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.ass = icmp eq i32 %10, 1                     ; 4 uses
  %.idx1725 = shl i64 %i.k, 2                     ; 3 uses
  %.idx1726 = mul i64 %i.k, 6                     ; 2 uses
  %.idx1727 = shl i64 %i.k, 3                     ; 6 uses
  %.idx1728 = mul i64 %i.k, 10
  %.idx1729 = mul i64 %i.k, 12                    ; 3 uses
  %.idx1730 = mul i64 %i.k, 14
  %.idx2947 = shl i64 %i.k, 4                     ; 4 uses
  %.idx1734 = mul i64 %i.k, 20
  %.idx1735 = mul i64 %i.k, 24
  %.idx1736 = mul i64 %i.k, 28
  %.idx2949 = shl i64 %i.k, 5
  %or.cond27 = icmp ult i32 %2, 3
  %i.ast = and i32 %6, -8
  %i.asu = zext nneg i32 %.12762.lcssa to i64
  %i.asv = sext i32 %4 to i64
  %i.asw = sext i32 %i.b to i64
  %invariant.op2175 = add nsw i64 %i.asv, -1
  %i.asx = insertelement <2 x float> poison, float %8, i64 0
  %i.asy = shufflevector <2 x float> %i.asx, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %15 = extractelement <2 x i1> %14, i64 0        ; 4 uses
  %16 = extractelement <2 x i1> %14, i64 1        ; 3 uses
  %17 = insertelement <2 x float> poison, float %7, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %19 = shufflevector <2 x i1> %14, <2 x i1> poison, <2 x i32> zeroinitializer
  %20 = shufflevector <2 x i1> %14, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.asz = insertelement <2 x float> poison, float %7, i64 0
  %i.ata = shufflevector <2 x float> %i.asz, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.it

bb.eb:                                            ; preds = %.lr.ph1887, %._crit_edge1881
  %indvars.iv2045 = phi i64 [ %i.bu, %.lr.ph1887 ], [ %indvars.iv.next2046, %._crit_edge1881 ] ; 5 uses
  %.201886 = phi ptr [ %.02729.lcssa, %.lr.ph1887 ], [ %.36.lcssa, %._crit_edge1881 ] ; 4 uses
  %.527461885 = phi ptr [ %.02741.lcssa, %.lr.ph1887 ], [ %.92750.lcssa, %._crit_edge1881 ] ; 2 uses
  %i.atb = load ptr, ptr %1, align 8, !tbaa !24   ; 3 uses
  br i1 %.not2950, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.atc = getelementptr inbounds nuw [2 x i8], ptr %i.atb, i64 %i.bc
  %i.atd = add nsw i64 %indvars.iv2045, %i.bj
  %i.ate = mul nsw i64 %i.atd, %i.bw              ; 2 uses
  %i.atf = getelementptr inbounds [2 x i8], ptr %i.atc, i64 %i.ate
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.atg = add nsw i64 %indvars.iv2045, %i.bj
  %i.ath = mul i64 %i.k, %i.atg                   ; 2 uses
  %i.ati = getelementptr inbounds nuw [2 x i8], ptr %i.atb, i64 %i.ath
  %i.atj = getelementptr inbounds [2 x i8], ptr %i.ati, i64 %i.be
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.sink2189 = phi i64 [ %i.ath, %bb.ed ], [ %i.bc, %bb.ec ]
  %.sink2188 = phi i64 [ %i.be, %bb.ed ], [ %i.ate, %bb.ec ]
  %.02838 = phi ptr [ %i.atj, %bb.ed ], [ %i.atf, %bb.ec ] ; 2 uses
  %i.atk = getelementptr inbounds nuw [4 x i8], ptr %i.atb, i64 %.sink2189
  %i.atl = getelementptr inbounds [4 x i8], ptr %i.atk, i64 %.sink2188 ; 2 uses
  %.not2951 = icmp eq ptr %.201886, null
  br i1 %.not2951, label %.thread1516, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  br i1 %i.bf, label %.thread1507, label %bb.eg

.thread1507:                                      ; preds = %bb.ef
  %i.atm = load float, ptr %.201886, align 4, !tbaa !68
  %i.atn = fmul fast float %i.atm, %8
  %i.ato = insertelement <4 x float> poison, float %i.atn, i64 0
  %i.atp = shufflevector <4 x float> %i.ato, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread1516

bb.eg:                                            ; preds = %bb.ef
  br i1 %or.cond11, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.atq = load ptr, ptr %0, align 8, !tbaa !24
  %i.atr = getelementptr inbounds [4 x i8], ptr %i.atq, i64 %i.bj
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %i.atr, i64 %indvars.iv2045 ; 2 uses
  %i.att = load <4 x float>, ptr %i.ats, align 1, !tbaa !89
  %i.atu = fmul fast <4 x float> %i.att, %i.bl
  br label %.thread1516

bb.ei:                                            ; preds = %bb.eg
  switch i32 %2, label %.thread1516 [
    i32 3, label %bb.ej
    i32 4, label %bb.ek
  ]

bb.ej:                                            ; preds = %bb.ei
  %i.atv = load ptr, ptr %0, align 8, !tbaa !24
  %i.atw = add nsw i64 %indvars.iv2045, %i.bj
  %i.atx = mul i64 %i.t, %i.atw
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %i.atv, i64 %i.atx
  %i.atz = getelementptr inbounds [4 x i8], ptr %i.aty, i64 %i.bi
  br label %.thread1516

bb.ek:                                            ; preds = %bb.ei
  %i.aua = load ptr, ptr %0, align 8, !tbaa !24
  %i.aub = getelementptr inbounds [4 x i8], ptr %i.aua, i64 %i.bb
  br label %.thread1516

.thread1516:                                      ; preds = %bb.ei, %bb.eh, %.thread1507, %bb.ej, %bb.ek, %bb.ee
  %.21269 = phi nsz <4 x float> [ zeroinitializer, %bb.ee ], [ zeroinitializer, %bb.ek ], [ zeroinitializer, %bb.ei ], [ zeroinitializer, %bb.ej ], [ %i.atp, %.thread1507 ], [ %i.atu, %bb.eh ] ; 2 uses
  %.23 = phi ptr [ null, %bb.ee ], [ %i.aub, %bb.ek ], [ %.201886, %bb.ei ], [ %i.atz, %bb.ej ], [ %.201886, %.thread1507 ], [ %i.ats, %bb.eh ] ; 2 uses
  br i1 %i.bm, label %.lr.ph1841, label %.preheader1772

.preheader1772:                                   ; preds = %bb.fs, %.thread1516
  %.31270.lcssa = phi <4 x float> [ %.21269, %.thread1516 ], [ %.71274, %bb.fs ] ; 2 uses
  %.02868.lcssa = phi i32 [ 0, %.thread1516 ], [ %i.bt, %bb.fs ] ; 3 uses
  %.12856.lcssa = phi ptr [ %i.atl, %.thread1516 ], [ %.32858, %bb.fs ] ; 2 uses
  %.12839.lcssa = phi ptr [ %.02838, %.thread1516 ], [ %.42842, %bb.fs ] ; 2 uses
  %.62747.lcssa = phi ptr [ %.527461885, %.thread1516 ], [ %i.aut, %bb.fs ] ; 2 uses
  %.24.lcssa = phi ptr [ %.23, %.thread1516 ], [ %.27, %bb.fs ] ; 2 uses
  %i.auc = or disjoint i32 %.02868.lcssa, 3
  %i.aud = icmp slt i32 %i.auc, %6
  br i1 %i.aud, label %.lr.ph1854, label %.preheader1771

.lr.ph1841:                                       ; preds = %.thread1516, %bb.fs
  %.241840 = phi ptr [ %.27, %bb.fs ], [ %.23, %.thread1516 ] ; 23 uses
  %.627471839 = phi ptr [ %i.aut, %bb.fs ], [ %.527461885, %.thread1516 ] ; 9 uses
  %.128391838 = phi ptr [ %.42842, %bb.fs ], [ %.02838, %.thread1516 ] ; 37 uses
  %.128561837 = phi ptr [ %.32858, %bb.fs ], [ %i.atl, %.thread1516 ] ; 56 uses
  %.028681836 = phi i32 [ %i.bjv, %bb.fs ], [ 0, %.thread1516 ]
  %.312701835 = phi <4 x float> [ %.71274, %bb.fs ], [ %.21269, %.thread1516 ] ; 20 uses
  %i.aue = load <4 x float>, ptr %.627471839, align 16, !tbaa !89 ; 2 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %.627471839, i64 16
  %i.aug = load <4 x float>, ptr %i.auf, align 16, !tbaa !89 ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %.627471839, i64 32
  %i.aui = load <4 x float>, ptr %i.auh, align 16, !tbaa !89 ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %.627471839, i64 48
  %i.auk = load <4 x float>, ptr %i.auj, align 16, !tbaa !89 ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %.627471839, i64 64
  %i.aum = load <4 x float>, ptr %i.aul, align 16, !tbaa !89 ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %.627471839, i64 80
  %i.auo = load <4 x float>, ptr %i.aun, align 16, !tbaa !89 ; 2 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %.627471839, i64 96
  %i.auq = load <4 x float>, ptr %i.aup, align 16, !tbaa !89 ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %.627471839, i64 112
  %i.aus = load <4 x float>, ptr %i.aur, align 16, !tbaa !89 ; 2 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %.627471839, i64 128 ; 2 uses
  %i.auu = shufflevector <4 x float> %i.aue, <4 x float> %i.auq, <4 x i32> <i32 0, i32 7, i32 1, i32 4> ; 2 uses
  %i.auv = shufflevector <4 x float> %i.aue, <4 x float> %i.auq, <4 x i32> <i32 2, i32 5, i32 3, i32 6> ; 2 uses
  %i.auw = shufflevector <4 x float> %i.aug, <4 x float> %i.aus, <4 x i32> <i32 0, i32 7, i32 1, i32 4> ; 2 uses
  %i.aux = shufflevector <4 x float> %i.aug, <4 x float> %i.aus, <4 x i32> <i32 2, i32 5, i32 3, i32 6> ; 2 uses
  %i.auy = shufflevector <4 x float> %i.aui, <4 x float> %i.aum, <4 x i32> <i32 0, i32 7, i32 1, i32 4> ; 2 uses
  %i.auz = shufflevector <4 x float> %i.aui, <4 x float> %i.aum, <4 x i32> <i32 2, i32 5, i32 3, i32 6> ; 2 uses
  %i.ava = shufflevector <4 x float> %i.auk, <4 x float> %i.auo, <4 x i32> <i32 0, i32 7, i32 1, i32 4> ; 2 uses
  %i.avb = shufflevector <4 x float> %i.auk, <4 x float> %i.auo, <4 x i32> <i32 2, i32 5, i32 3, i32 6> ; 2 uses
  %i.avc = shufflevector <4 x float> %i.auu, <4 x float> %i.auy, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 7 uses
  %i.avd = shufflevector <4 x float> %i.auu, <4 x float> %i.auy, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ave = shufflevector <4 x float> %i.auz, <4 x float> %i.auv, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 7 uses
  %i.avf = shufflevector <4 x float> %i.auz, <4 x float> %i.auv, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.avg = shufflevector <4 x float> %i.auw, <4 x float> %i.ava, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 7 uses
  %i.avh = shufflevector <4 x float> %i.auw, <4 x float> %i.ava, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.avi = shufflevector <4 x float> %i.avb, <4 x float> %i.aux, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 7 uses
  %i.avj = shufflevector <4 x float> %i.avb, <4 x float> %i.aux, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.avk = shufflevector <4 x float> %i.avd, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 7 uses
  %i.avl = shufflevector <4 x float> %i.avf, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 7 uses
  %i.avm = shufflevector <4 x float> %i.avh, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 7 uses
  %i.avn = shufflevector <4 x float> %i.avj, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 7 uses
  %.not2975 = icmp eq ptr %.241840, null
  br i1 %.not2975, label %.thread1540, label %bb.el

bb.el:                                            ; preds = %.lr.ph1841
  br i1 %i.bf, label %.thread1519, label %bb.em

.thread1519:                                      ; preds = %bb.el
  %i.avo = fadd fast <4 x float> %.312701835, %i.avc
  %i.avp = fadd fast <4 x float> %i.avk, %.312701835
  %i.avq = fadd fast <4 x float> %.312701835, %i.ave
  %i.avr = fadd fast <4 x float> %i.avl, %.312701835
  %i.avs = fadd fast <4 x float> %.312701835, %i.avg
  %i.avt = fadd fast <4 x float> %i.avm, %.312701835
  %i.avu = fadd fast <4 x float> %.312701835, %i.avi
  %i.avv = fadd fast <4 x float> %i.avn, %.312701835
  br label %.thread1540

bb.em:                                            ; preds = %bb.el
  br i1 %or.cond11, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.avw = fadd fast <4 x float> %.312701835, %i.avc
  %i.avx = fadd fast <4 x float> %i.avk, %.312701835
  %i.avy = fadd fast <4 x float> %.312701835, %i.ave
  %i.avz = fadd fast <4 x float> %i.avl, %.312701835
  %i.awa = fadd fast <4 x float> %.312701835, %i.avg
  %i.awb = fadd fast <4 x float> %i.avm, %.312701835
  %i.awc = fadd fast <4 x float> %.312701835, %i.avi
  %i.awd = fadd fast <4 x float> %i.avn, %.312701835
  br label %.thread1540

bb.eo:                                            ; preds = %bb.em
  switch i32 %2, label %.thread1540 [
    i32 3, label %bb.ep
    i32 4, label %bb.fb
  ]

bb.ep:                                            ; preds = %bb.eo
  %i.awe = load <4 x float>, ptr %.241840, align 1, !tbaa !89 ; 3 uses
  br i1 %i.bn, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.awf = getelementptr inbounds nuw i8, ptr %.241840, i64 16
  %i.awg = load <4 x float>, ptr %i.awf, align 1, !tbaa !89
  %i.awh = getelementptr inbounds nuw i8, ptr %.241840, i64 32
  %i.awi = load <4 x float>, ptr %i.awh, align 1, !tbaa !89
  %i.awj = getelementptr inbounds nuw i8, ptr %.241840, i64 48
  %i.awk = load <4 x float>, ptr %i.awj, align 1, !tbaa !89
  br label %bb.es

bb.er:                                            ; preds = %bb.ep
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %.241840, i64 %i.t
  %i.awm = load <4 x float>, ptr %i.awl, align 1, !tbaa !89 ; 2 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %.241840, i64 %.idx2976
  %i.awo = load <4 x float>, ptr %i.awn, align 1, !tbaa !89 ; 2 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %.241840, i64 %.idx2977
  %i.awq = load <4 x float>, ptr %i.awp, align 1, !tbaa !89 ; 2 uses
  %i.awr = shufflevector <4 x float> %i.awe, <4 x float> %i.awm, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aws = shufflevector <4 x float> %i.awo, <4 x float> %i.awq, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.awt = shufflevector <4 x float> %i.awe, <4 x float> %i.awm, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.awu = shufflevector <4 x float> %i.awo, <4 x float> %i.awq, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.awv = shufflevector <4 x float> %i.awr, <4 x float> %i.aws, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aww = shufflevector <4 x float> %i.aws, <4 x float> %i.awr, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.awx = shufflevector <4 x float> %i.awt, <4 x float> %i.awu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.awy = shufflevector <4 x float> %i.awu, <4 x float> %i.awt, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  br label %bb.es

end_hunk_0
begin_hunk_1_@_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii:bb.a
  %.sroa.0168.12.vec.extract = extractelement <4 x float> %.41248, i64 3
  %i.bvd = getelementptr inbounds nuw i8, ptr %.1028651876, i64 48
  store float %.sroa.0168.12.vec.extract, ptr %i.bvd, align 4, !tbaa !68
  br label %bb.ii

bb.ih:                                            ; preds = %bb.if
  store <4 x float> %.41248, ptr %.1028651876, align 1, !tbaa !89
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ig, %bb.if, %bb.ih
  %i.bve = getelementptr inbounds nuw [4 x i8], ptr %.1028651876, i64 %i.k
  br label %bb.is

bb.ij:                                            ; preds = %bb.ie
  switch i32 %i.b, label %bb.is [
    i32 4, label %.thread1613
    i32 1, label %bb.ik
  ]

.thread1613:                                      ; preds = %bb.ij
  store <4 x float> %.41248, ptr %.1028651876, align 1, !tbaa !89
  %i.bvf = getelementptr inbounds nuw i8, ptr %.1028651876, i64 16
  br label %bb.is

bb.ik:                                            ; preds = %bb.ij
  %.sroa.0167.0.vec.extract = extractelement <4 x float> %.41248, i64 0
  store float %.sroa.0167.0.vec.extract, ptr %.1028651876, align 4, !tbaa !68
  %.sroa.0167.4.vec.extract = extractelement <4 x float> %.41248, i64 1
  %i.bvg = getelementptr inbounds nuw [4 x i8], ptr %.1028651876, i64 %i.k
  store float %.sroa.0167.4.vec.extract, ptr %i.bvg, align 4, !tbaa !68
  %.sroa.0167.8.vec.extract = extractelement <4 x float> %.41248, i64 2
  %i.bvh = getelementptr inbounds nuw i8, ptr %.1028651876, i64 %.idx2985
  store float %.sroa.0167.8.vec.extract, ptr %i.bvh, align 4, !tbaa !68
  %.sroa.0167.12.vec.extract = extractelement <4 x float> %.41248, i64 3
  %i.bvi = getelementptr inbounds nuw i8, ptr %.1028651876, i64 %.idx2987
  store float %.sroa.0167.12.vec.extract, ptr %i.bvi, align 4, !tbaa !68
  %i.bvj = getelementptr inbounds nuw i8, ptr %.1028651876, i64 4
  br label %bb.is

bb.il:                                            ; preds = %.thread1609
  %i.bvk = bitcast <4 x float> %.41248 to <4 x i32>
  %i.bvl = lshr <4 x i32> %i.bvk, splat (i32 16)
  %i.bvm = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bvl, <4 x i32> poison) ; 9 uses
  %i.bvn = bitcast <8 x i16> %i.bvm to <2 x i64>  ; 2 uses
  br i1 %.not2950, label %bb.iq, label %bb.im

bb.im:                                            ; preds = %bb.il
  switch i32 %i.b, label %bb.ip [
    i32 4, label %bb.in
    i32 1, label %bb.io
  ]

bb.in:                                            ; preds = %bb.im
  %.sroa.0163.0.extract.trunc = extractelement <8 x i16> %i.bvm, i64 0
  %.sroa.4164.0.extract.trunc = extractelement <8 x i16> %i.bvm, i64 1
  %.sroa.5165.0.extract.trunc = extractelement <8 x i16> %i.bvm, i64 2
  %.sroa.6166.0.extract.trunc = extractelement <8 x i16> %i.bvm, i64 3
  store i16 %.sroa.0163.0.extract.trunc, ptr %.1328511877, align 2, !tbaa !108
  %i.bvo = getelementptr inbounds nuw i8, ptr %.1328511877, i64 8
  store i16 %.sroa.4164.0.extract.trunc, ptr %i.bvo, align 2, !tbaa !108
  %i.bvp = getelementptr inbounds nuw i8, ptr %.1328511877, i64 16
  store i16 %.sroa.5165.0.extract.trunc, ptr %i.bvp, align 2, !tbaa !108
  %i.bvq = getelementptr inbounds nuw i8, ptr %.1328511877, i64 24
  store i16 %.sroa.6166.0.extract.trunc, ptr %i.bvq, align 2, !tbaa !108
  br label %bb.ip

bb.io:                                            ; preds = %bb.im
  %i.bvr = extractelement <2 x i64> %i.bvn, i64 0
  store i64 %i.bvr, ptr %.1328511877, align 1, !tbaa !89
  br label %bb.ip

bb.ip:                                            ; preds = %bb.in, %bb.im, %bb.io
  %i.bvs = getelementptr inbounds nuw [2 x i8], ptr %.1328511877, i64 %i.k
  br label %bb.is

bb.iq:                                            ; preds = %bb.il
  switch i32 %i.b, label %bb.is [
    i32 4, label %.thread1615
    i32 1, label %bb.ir
  ]

.thread1615:                                      ; preds = %bb.iq
  %i.bvt = extractelement <2 x i64> %i.bvn, i64 0
  store i64 %i.bvt, ptr %.1328511877, align 1, !tbaa !89
  %i.bvu = getelementptr inbounds nuw i8, ptr %.1328511877, i64 8
  br label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %.sroa.0159.0.extract.trunc = extractelement <8 x i16> %i.bvm, i64 0
  %.sroa.4160.0.extract.trunc = extractelement <8 x i16> %i.bvm, i64 1
  %.sroa.5161.0.extract.trunc = extractelement <8 x i16> %i.bvm, i64 2
  %.sroa.6162.0.extract.trunc = extractelement <8 x i16> %i.bvm, i64 3
  store i16 %.sroa.0159.0.extract.trunc, ptr %.1328511877, align 2, !tbaa !108
  %i.bvv = getelementptr inbounds nuw [2 x i8], ptr %.1328511877, i64 %i.k
  store i16 %.sroa.4160.0.extract.trunc, ptr %i.bvv, align 2, !tbaa !108
  %i.bvw = getelementptr inbounds nuw i8, ptr %.1328511877, i64 %.idx2983
  store i16 %.sroa.5161.0.extract.trunc, ptr %i.bvw, align 2, !tbaa !108
  %i.bvx = getelementptr inbounds nuw i8, ptr %.1328511877, i64 %.idx2984
  store i16 %.sroa.6162.0.extract.trunc, ptr %i.bvx, align 2, !tbaa !108
  %i.bvy = getelementptr inbounds nuw i8, ptr %.1328511877, i64 2
  br label %bb.is

bb.is:                                            ; preds = %bb.iq, %bb.ij, %.thread1615, %.thread1613, %bb.ip, %bb.ir, %bb.ii, %bb.ik
  %.122867 = phi ptr [ %i.bve, %bb.ii ], [ %i.bvj, %bb.ik ], [ %.1028651876, %bb.ij ], [ %.1028651876, %bb.iq ], [ %.1028651876, %bb.ir ], [ %.1028651876, %bb.ip ], [ %i.bvf, %.thread1613 ], [ %.1028651876, %.thread1615 ]
  %.162854 = phi ptr [ %.1328511877, %bb.ii ], [ %.1328511877, %bb.ik ], [ %.1328511877, %bb.ij ], [ %.1328511877, %bb.iq ], [ %i.bvy, %bb.ir ], [ %i.bvs, %bb.ip ], [ %.1328511877, %.thread1613 ], [ %i.bvu, %.thread1615 ]
  %i.bvz = add nuw nsw i32 %.328711875, 1         ; 2 uses
  %exitcond2044.not = icmp eq i32 %i.bvz, %6
  br i1 %exitcond2044.not, label %._crit_edge1881, label %.lr.ph1880, !llvm.loop !1242

._crit_edge1881:                                  ; preds = %bb.is, %.preheader1770
  %.92750.lcssa = phi ptr [ %.82749.lcssa, %.preheader1770 ], [ %i.bud, %bb.is ] ; 2 uses
  %.36.lcssa = phi ptr [ %.32.lcssa, %.preheader1770 ], [ %.39, %bb.is ] ; 2 uses
  %indvars.iv.next2046 = add nuw nsw i64 %indvars.iv2045, 4 ; 3 uses
  %i.bwa = icmp slt i64 %indvars.iv.next2046, %invariant.op
  br i1 %i.bwa, label %bb.eb, label %.preheader1768.loopexit, !llvm.loop !1243

.preheader1764.loopexit:                          ; preds = %._crit_edge1936
  %i.bwb = trunc nsw i64 %indvars.iv.next2050 to i32
  br label %.preheader1764

.preheader1764:                                   ; preds = %.preheader1764.loopexit, %.preheader1768
  %.22763.lcssa = phi i32 [ %.12762.lcssa, %.preheader1768 ], [ %i.bwb, %.preheader1764.loopexit ] ; 2 uses
  %.102751.lcssa = phi ptr [ %.52746.lcssa, %.preheader1768 ], [ %.142755.lcssa, %.preheader1764.loopexit ]
  %.40.lcssa = phi ptr [ %.20.lcssa, %.preheader1768 ], [ %.53.lcssa, %.preheader1764.loopexit ]
  %i.bwc = icmp slt i32 %.22763.lcssa, %4
  br i1 %i.bwc, label %.lr.ph1994, label %._crit_edge1995

.lr.ph1994:                                       ; preds = %.preheader1764
  %.not = icmp eq i32 %9, 0                       ; 9 uses
  %i.bwd = sext i32 %5 to i64                     ; 3 uses
  %i.bwe = mul i64 %i.k, %i.bwd                   ; 2 uses
  %i.bwf = mul nsw i32 %i.b, %5
  %i.bwg = sext i32 %i.bwf to i64                 ; 2 uses
  %i.bwh = icmp eq i32 %2, 0
  %or.cond31 = icmp ult i32 %2, 3                 ; 5 uses
  %i.bwi = sext i32 %3 to i64                     ; 4 uses
  %i.bwj = icmp sgt i32 %6, 7
  %i.bwk = add i32 %2, -3
  %or.cond37 = icmp ult i32 %i.bwk, 2             ; 4 uses
  %i.bwl = insertelement <4 x float> poison, float %8, i64 0
  %i.bwm = shufflevector <4 x float> %i.bwl, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.bwn = fcmp fast une float %7, 1.000000e+00   ; 2 uses
  %i.bwo = insertelement <4 x float> poison, float %7, i64 0
  %i.bwp = shufflevector <4 x float> %i.bwo, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.bwq = icmp eq i32 %10, 1                     ; 4 uses
  %i.bwr = icmp eq i64 %i.k, 1                    ; 4 uses
  %.idx2921 = shl i64 %i.k, 2                     ; 3 uses
  %.idx2922 = mul i64 %i.k, 6                     ; 2 uses
  %.idx2923 = shl i64 %i.k, 3                     ; 6 uses
  %.idx2924 = mul i64 %i.k, 10
  %.idx2925 = mul i64 %i.k, 12                    ; 3 uses
  %.idx2926 = mul i64 %i.k, 14
  %.idx2927 = shl i64 %i.k, 4                     ; 4 uses
  %.idx2932 = mul i64 %i.k, 20
  %.idx2933 = mul i64 %i.k, 24
  %.idx2934 = mul i64 %i.k, 28
  %.idx2935 = shl i64 %i.k, 5
  %i.bws = and i32 %6, -8
  %i.bwt = sext i32 %.22763.lcssa to i64
  %i.bwu = sext i32 %i.b to i64
  %wide.trip.count = sext i32 %4 to i64
  %i.bwv = insertelement <2 x i1> poison, i1 %or.cond31, i64 0
  %i.bww = shufflevector <2 x i1> %i.bwv, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bwx = insertelement <2 x float> poison, float %8, i64 0
  %i.bwy = shufflevector <2 x float> %i.bwx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bwz = insertelement <2 x float> poison, float %7, i64 0
  %i.bxa = shufflevector <2 x float> %i.bwz, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.lt

bb.it:                                            ; preds = %.lr.ph1942, %._crit_edge1936
  %indvars.iv2049 = phi i64 [ %i.asu, %.lr.ph1942 ], [ %indvars.iv.next2050, %._crit_edge1936 ] ; 5 uses
  %.401941 = phi ptr [ %.20.lcssa, %.lr.ph1942 ], [ %.53.lcssa, %._crit_edge1936 ] ; 4 uses
  %.1027511940 = phi ptr [ %.52746.lcssa, %.lr.ph1942 ], [ %.142755.lcssa, %._crit_edge1936 ] ; 2 uses
  %i.bxb = load ptr, ptr %1, align 8, !tbaa !24   ; 3 uses
  br i1 %.not2936, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.bxc = getelementptr inbounds nuw [2 x i8], ptr %i.bxb, i64 %i.ash
  %i.bxd = add nsw i64 %indvars.iv2049, %i.ask
  %i.bxe = mul nsw i64 %i.bxd, %i.asw             ; 2 uses
  %i.bxf = getelementptr inbounds [2 x i8], ptr %i.bxc, i64 %i.bxe
  br label %bb.iw

bb.iv:                                            ; preds = %bb.it
  %i.bxg = add nsw i64 %indvars.iv2049, %i.ask
  %i.bxh = mul i64 %i.k, %i.bxg                   ; 2 uses
  %i.bxi = getelementptr inbounds nuw [2 x i8], ptr %i.bxb, i64 %i.bxh
  %i.bxj = getelementptr inbounds [2 x i8], ptr %i.bxi, i64 %i.asj
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu
  %.sink2196 = phi i64 [ %i.bxh, %bb.iv ], [ %i.ash, %bb.iu ]
  %.sink2195 = phi i64 [ %i.asj, %bb.iv ], [ %i.bxe, %bb.iu ]
  %.02821 = phi ptr [ %i.bxj, %bb.iv ], [ %i.bxf, %bb.iu ] ; 2 uses
  %i.bxk = getelementptr inbounds nuw [4 x i8], ptr %i.bxb, i64 %.sink2196
  %i.bxl = getelementptr inbounds [4 x i8], ptr %i.bxk, i64 %.sink2195 ; 2 uses
  %.not2937 = icmp eq ptr %.401941, null
  br i1 %.not2937, label %.thread1633, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  br i1 %15, label %.thread1617, label %bb.iy

.thread1617:                                      ; preds = %bb.ix
  %i.bxm = load float, ptr %.401941, align 4, !tbaa !68
  %i.bxn = fmul fast float %i.bxm, %8             ; 3 uses
  %i.bxo = insertelement <4 x float> poison, float %i.bxn, i64 0
  %i.bxp = shufflevector <4 x float> %i.bxo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bxq = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bxn, i64 0
  br label %.thread1633

bb.iy:                                            ; preds = %bb.ix
  br i1 %16, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.bxr = load ptr, ptr %0, align 8, !tbaa !24
  %i.bxs = getelementptr inbounds [4 x i8], ptr %i.bxr, i64 %i.ask
  %i.bxt = getelementptr inbounds nuw [4 x i8], ptr %i.bxs, i64 %indvars.iv2049 ; 2 uses
  %i.bxu = load <2 x float>, ptr %i.bxt, align 4, !tbaa !68
  %i.bxv = fmul fast <2 x float> %i.bxu, %i.asy   ; 4 uses
  %i.bxw = extractelement <2 x float> %i.bxv, i64 0
  %i.bxx = shufflevector <2 x float> %i.bxv, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bxy = shufflevector <2 x float> %i.bxv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.thread1633

bb.ja:                                            ; preds = %bb.iy
  switch i32 %2, label %.thread1633 [
    i32 3, label %bb.jb
    i32 4, label %bb.jc
  ]

bb.jb:                                            ; preds = %bb.ja
  %i.bxz = load ptr, ptr %0, align 8, !tbaa !24
  %i.bya = add nsw i64 %indvars.iv2049, %i.ask
  %i.byb = mul i64 %i.t, %i.bya
  %i.byc = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.byb
  %i.byd = getelementptr inbounds [4 x i8], ptr %i.byc, i64 %i.asg
  br label %.thread1633

bb.jc:                                            ; preds = %bb.ja
  %i.bye = load ptr, ptr %0, align 8, !tbaa !24
  %i.byf = getelementptr inbounds [4 x i8], ptr %i.bye, i64 %i.asg
  br label %.thread1633

.thread1633:                                      ; preds = %bb.ja, %bb.iz, %.thread1617, %bb.jb, %bb.jc, %bb.iw
  %.21210 = phi nsz <4 x float> [ zeroinitializer, %bb.iw ], [ zeroinitializer, %bb.jc ], [ zeroinitializer, %bb.ja ], [ zeroinitializer, %bb.jb ], [ %i.bxp, %.thread1617 ], [ %i.bxx, %bb.iz ] ; 2 uses
  %.11201 = phi nsz <4 x float> [ zeroinitializer, %bb.iw ], [ zeroinitializer, %bb.jc ], [ zeroinitializer, %bb.ja ], [ zeroinitializer, %bb.jb ], [ zeroinitializer, %.thread1617 ], [ %i.bxy, %bb.iz ] ; 2 uses
  %.22811 = phi nsz float [ 0.000000e+00, %bb.iw ], [ 0.000000e+00, %bb.jc ], [ 0.000000e+00, %bb.ja ], [ 0.000000e+00, %bb.jb ], [ %i.bxn, %.thread1617 ], [ %i.bxw, %bb.iz ] ; 2 uses
  %.43 = phi ptr [ null, %bb.iw ], [ %i.byf, %bb.jc ], [ %.401941, %bb.ja ], [ %i.byd, %bb.jb ], [ %.401941, %.thread1617 ], [ %i.bxt, %bb.iz ] ; 2 uses
  %i.byg = phi <2 x float> [ zeroinitializer, %bb.iw ], [ zeroinitializer, %bb.jc ], [ zeroinitializer, %bb.ja ], [ zeroinitializer, %bb.jb ], [ %i.bxq, %.thread1617 ], [ %i.bxv, %bb.iz ] ; 4 uses
  br i1 %i.asl, label %.lr.ph1898, label %.preheader1767

.preheader1767:                                   ; preds = %bb.kc, %.thread1633
  %.31211.lcssa = phi <4 x float> [ %.21210, %.thread1633 ], [ %.51213, %bb.kc ]
  %.21202.lcssa = phi <4 x float> [ %.11201, %.thread1633 ], [ %.41204, %bb.kc ]
  %.12822.lcssa = phi ptr [ %.02821, %.thread1633 ], [ %.32824, %bb.kc ] ; 2 uses
  %.12813.lcssa = phi ptr [ %i.bxl, %.thread1633 ], [ %.22814, %bb.kc ] ; 2 uses
  %.02803.lcssa = phi i32 [ 0, %.thread1633 ], [ %i.ast, %bb.kc ] ; 3 uses
  %.112752.lcssa = phi ptr [ %.1027511940, %.thread1633 ], [ %i.byq, %bb.kc ] ; 2 uses
  %.44.lcssa = phi ptr [ %.43, %.thread1633 ], [ %.46, %bb.kc ] ; 2 uses
  %i.byh = or disjoint i32 %.02803.lcssa, 3
  %i.byi = icmp slt i32 %i.byh, %6
  br i1 %i.byi, label %.lr.ph1913, label %.preheader1766

.lr.ph1898:                                       ; preds = %.thread1633, %bb.kc
  %.441897 = phi ptr [ %.46, %bb.kc ], [ %.43, %.thread1633 ] ; 11 uses
  %.1127521896 = phi ptr [ %i.byq, %bb.kc ], [ %.1027511940, %.thread1633 ] ; 5 uses
  %.028031895 = phi i32 [ %i.cct, %bb.kc ], [ 0, %.thread1633 ]
  %.128131894 = phi ptr [ %.22814, %bb.kc ], [ %i.bxl, %.thread1633 ] ; 23 uses
  %.128221893 = phi ptr [ %.32824, %bb.kc ], [ %.02821, %.thread1633 ] ; 19 uses
  %.212021892 = phi <4 x float> [ %.41204, %bb.kc ], [ %.11201, %.thread1633 ] ; 6 uses
  %.312111891 = phi <4 x float> [ %.51213, %bb.kc ], [ %.21210, %.thread1633 ] ; 10 uses
  %i.byj = load <4 x float>, ptr %.1127521896, align 16, !tbaa !89 ; 2 uses
  %i.byk = getelementptr inbounds nuw i8, ptr %.1127521896, i64 16
  %i.byl = load <4 x float>, ptr %i.byk, align 16, !tbaa !89 ; 2 uses
  %i.bym = getelementptr inbounds nuw i8, ptr %.1127521896, i64 32
  %i.byn = load <4 x float>, ptr %i.bym, align 16, !tbaa !89 ; 2 uses
  %i.byo = getelementptr inbounds nuw i8, ptr %.1127521896, i64 48
  %i.byp = load <4 x float>, ptr %i.byo, align 16, !tbaa !89 ; 2 uses
  %i.byq = getelementptr inbounds nuw i8, ptr %.1127521896, i64 64 ; 2 uses
  %i.byr = shufflevector <4 x float> %i.byj, <4 x float> %i.byn, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 7 uses
  %i.bys = shufflevector <4 x float> %i.byl, <4 x float> %i.byp, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 7 uses
  %i.byt = shufflevector <4 x float> %i.byj, <4 x float> %i.byn, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.byu = shufflevector <4 x float> %i.byl, <4 x float> %i.byp, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.byv = shufflevector <4 x float> %i.byt, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 7 uses
  %i.byw = shufflevector <4 x float> %i.byu, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 7 uses
  %.not2945 = icmp eq ptr %.441897, null
  br i1 %.not2945, label %.thread1652, label %bb.jd

bb.jd:                                            ; preds = %.lr.ph1898
  br i1 %15, label %.thread1639, label %bb.je

.thread1639:                                      ; preds = %bb.jd
  %i.byx = fadd fast <4 x float> %.312111891, %i.byr
  %i.byy = fadd fast <4 x float> %.312111891, %i.bys
  %i.byz = fadd fast <4 x float> %i.byv, %.312111891
  %i.bza = fadd fast <4 x float> %i.byw, %.312111891
  br label %.thread1652

bb.je:                                            ; preds = %bb.jd
  br i1 %16, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.bzb = fadd fast <4 x float> %.312111891, %i.byr
  %i.bzc = fadd fast <4 x float> %.312111891, %i.bys
  %i.bzd = fadd fast <4 x float> %i.byv, %.212021892
  %i.bze = fadd fast <4 x float> %i.byw, %.212021892
  br label %.thread1652

bb.jg:                                            ; preds = %bb.je
  switch i32 %2, label %.thread1652 [
    i32 3, label %bb.jh
    i32 4, label %bb.jl
  ]

bb.jh:                                            ; preds = %bb.jg
  %i.bzf = load <4 x float>, ptr %.441897, align 1, !tbaa !89 ; 3 uses
  %i.bzg = getelementptr inbounds nuw i8, ptr %.441897, i64 16
  %i.bzh = load <4 x float>, ptr %i.bzg, align 1, !tbaa !89 ; 3 uses
  %i.bzi = getelementptr inbounds nuw [4 x i8], ptr %.441897, i64 %i.t ; 2 uses
  %i.bzj = load <4 x float>, ptr %i.bzi, align 1, !tbaa !89 ; 2 uses
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.bzi, i64 16
  %i.bzl = load <4 x float>, ptr %i.bzk, align 1, !tbaa !89 ; 2 uses
  br i1 %i.aso, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.bzm = fadd fast <4 x float> %i.bzf, %i.byr
  %i.bzn = fadd fast <4 x float> %i.bzh, %i.bys
  %i.bzo = fadd fast <4 x float> %i.bzj, %i.byv
  %i.bzp = fadd fast <4 x float> %i.bzl, %i.byw
  br label %bb.jk

bb.jj:                                            ; preds = %bb.jh
  %i.bzq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bzf, <4 x float> nofpclass(nan inf) %i.asn, <4 x float> nofpclass(nan inf) %i.byr)
  %i.bzr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bzh, <4 x float> nofpclass(nan inf) %i.asn, <4 x float> nofpclass(nan inf) %i.bys)
  %i.bzs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bzj, <4 x float> nofpclass(nan inf) %i.asn, <4 x float> nofpclass(nan inf) %i.byv)
  %i.bzt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bzl, <4 x float> nofpclass(nan inf) %i.asn, <4 x float> nofpclass(nan inf) %i.byw)
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %.21196 = phi nsz <4 x float> [ %i.bzm, %bb.ji ], [ %i.bzq, %bb.jj ]
  %.21190 = phi nsz <4 x float> [ %i.bzn, %bb.ji ], [ %i.bzr, %bb.jj ]
  %.21184 = phi nsz <4 x float> [ %i.bzo, %bb.ji ], [ %i.bzs, %bb.jj ]
  %.21178 = phi nsz <4 x float> [ %i.bzp, %bb.ji ], [ %i.bzt, %bb.jj ]
  %i.bzu = getelementptr inbounds nuw i8, ptr %.441897, i64 32
  br label %.thread1652

bb.jl:                                            ; preds = %bb.jg
  %i.bzv = load <4 x float>, ptr %.441897, align 1, !tbaa !89
  %i.bzw = getelementptr inbounds nuw i8, ptr %.441897, i64 16
  %i.bzx = load <4 x float>, ptr %i.bzw, align 1, !tbaa !89
  %i.bzy = fmul fast <4 x float> %i.bzv, %i.asn   ; 3 uses
  %i.bzz = fmul fast <4 x float> %i.bzx, %i.asn   ; 3 uses
  %i.caa = fadd fast <4 x float> %i.bzy, %i.byr
  %i.cab = fadd fast <4 x float> %i.bzz, %i.bys
  %i.cac = fadd fast <4 x float> %i.bzy, %i.byv
  %i.cad = fadd fast <4 x float> %i.bzz, %i.byw
  %i.cae = getelementptr inbounds nuw i8, ptr %.441897, i64 32
  br label %.thread1652

.thread1652:                                      ; preds = %bb.jg, %bb.jf, %.thread1639, %bb.jk, %bb.jl, %.lr.ph1898
  %.51213 = phi nsz <4 x float> [ %.312111891, %.lr.ph1898 ], [ %i.bzy, %bb.jl ], [ %.312111891, %bb.jg ], [ %i.bzf, %bb.jk ], [ %.312111891, %.thread1639 ], [ %.312111891, %bb.jf ] ; 2 uses
  %.41204 = phi nsz <4 x float> [ %.212021892, %.lr.ph1898 ], [ %i.bzz, %bb.jl ], [ %.212021892, %bb.jg ], [ %i.bzh, %bb.jk ], [ %.212021892, %.thread1639 ], [ %.212021892, %bb.jf ] ; 2 uses
  %.41198 = phi nsz <4 x float> [ %i.byr, %.lr.ph1898 ], [ %i.caa, %bb.jl ], [ %i.byr, %bb.jg ], [ %.21196, %bb.jk ], [ %i.byx, %.thread1639 ], [ %i.bzb, %bb.jf ] ; 2 uses
  %.41192 = phi nsz <4 x float> [ %i.bys, %.lr.ph1898 ], [ %i.cab, %bb.jl ], [ %i.bys, %bb.jg ], [ %.21190, %bb.jk ], [ %i.byy, %.thread1639 ], [ %i.bzc, %bb.jf ] ; 2 uses
  %.41186 = phi nsz <4 x float> [ %i.byv, %.lr.ph1898 ], [ %i.cac, %bb.jl ], [ %i.byv, %bb.jg ], [ %.21184, %bb.jk ], [ %i.byz, %.thread1639 ], [ %i.bzd, %bb.jf ] ; 2 uses
  %.41180 = phi nsz <4 x float> [ %i.byw, %.lr.ph1898 ], [ %i.cad, %bb.jl ], [ %i.byw, %bb.jg ], [ %.21178, %bb.jk ], [ %i.bza, %.thread1639 ], [ %i.bze, %bb.jf ] ; 2 uses
  %.46 = phi ptr [ null, %.lr.ph1898 ], [ %i.cae, %bb.jl ], [ %.441897, %bb.jg ], [ %i.bzu, %bb.jk ], [ %.441897, %.thread1639 ], [ %.441897, %bb.jf ] ; 2 uses
  br i1 %i.asp, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %.thread1652
  %i.caf = fmul fast <4 x float> %.41198, %i.asr
  %i.cag = fmul fast <4 x float> %.41192, %i.asr
  %i.cah = fmul fast <4 x float> %.41186, %i.asr
  %i.cai = fmul fast <4 x float> %.41180, %i.asr
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %.thread1652
  %.51199 = phi nsz <4 x float> [ %i.caf, %bb.jm ], [ %.41198, %.thread1652 ] ; 8 uses
  %.51193 = phi nsz <4 x float> [ %i.cag, %bb.jm ], [ %.41192, %.thread1652 ] ; 8 uses
  %.51187 = phi nsz <4 x float> [ %i.cah, %bb.jm ], [ %.41186, %.thread1652 ] ; 8 uses
  %.51181 = phi nsz <4 x float> [ %i.cai, %bb.jm ], [ %.41180, %.thread1652 ] ; 8 uses
  br i1 %i.ass, label %bb.jo, label %bb.jv

bb.jo:                                            ; preds = %bb.jn
  br i1 %.not2936, label %bb.ju, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  switch i32 %i.b, label %bb.jt [
    i32 8, label %bb.jq
    i32 4, label %bb.jr
    i32 1, label %bb.js
  ]

bb.jq:                                            ; preds = %bb.jp
  store <4 x float> %.51199, ptr %.128131894, align 1, !tbaa !89
  %i.caj = getelementptr inbounds nuw i8, ptr %.128131894, i64 16
  store <4 x float> %.51193, ptr %i.caj, align 1, !tbaa !89
  %i.cak = getelementptr inbounds nuw i8, ptr %.128131894, i64 32
  store <4 x float> %.51187, ptr %i.cak, align 1, !tbaa !89
  %i.cal = getelementptr inbounds nuw i8, ptr %.128131894, i64 48
  store <4 x float> %.51181, ptr %i.cal, align 1, !tbaa !89
  br label %bb.jt

bb.jr:                                            ; preds = %bb.jp
  store <4 x float> %.51199, ptr %.128131894, align 1, !tbaa !89
  %i.cam = getelementptr inbounds nuw i8, ptr %.128131894, i64 16
  store <4 x float> %.51187, ptr %i.cam, align 1, !tbaa !89
  %i.can = getelementptr inbounds nuw i8, ptr %.128131894, i64 %.idx2947 ; 2 uses
  store <4 x float> %.51193, ptr %i.can, align 1, !tbaa !89
  %i.cao = getelementptr inbounds nuw i8, ptr %i.can, i64 16
  store <4 x float> %.51181, ptr %i.cao, align 1, !tbaa !89
  br label %bb.jt

bb.js:                                            ; preds = %bb.jp
  %.sroa.069.0.vec.extract = extractelement <4 x float> %.51199, i64 0
  store float %.sroa.069.0.vec.extract, ptr %.128131894, align 4, !tbaa !68
  %.sroa.12.32.vec.extract = extractelement <4 x float> %.51187, i64 0
  %i.cap = getelementptr inbounds nuw i8, ptr %.128131894, i64 4
  store float %.sroa.12.32.vec.extract, ptr %i.cap, align 4, !tbaa !68
  %i.caq = getelementptr inbounds nuw [4 x i8], ptr %.128131894, i64 %i.k
  %i.car = shufflevector <4 x float> %.51199, <4 x float> %.51187, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.car, ptr %i.caq, align 4, !tbaa !68
  %i.cas = getelementptr inbounds nuw i8, ptr %.128131894, i64 %.idx1727
  %i.cat = shufflevector <4 x float> %.51199, <4 x float> %.51187, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.cat, ptr %i.cas, align 4, !tbaa !68
  %i.cau = getelementptr inbounds nuw i8, ptr %.128131894, i64 %.idx1729
  %i.cav = shufflevector <4 x float> %.51199, <4 x float> %.51187, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.cav, ptr %i.cau, align 4, !tbaa !68
  %.sroa.770.16.vec.extract = extractelement <4 x float> %.51193, i64 0
  %i.caw = getelementptr inbounds nuw i8, ptr %.128131894, i64 %.idx2947 ; 2 uses
  store float %.sroa.770.16.vec.extract, ptr %i.caw, align 4, !tbaa !68
  %.sroa.17.48.vec.extract = extractelement <4 x float> %.51181, i64 0
  %i.cax = getelementptr inbounds nuw i8, ptr %i.caw, i64 4
  store float %.sroa.17.48.vec.extract, ptr %i.cax, align 4, !tbaa !68
  %i.cay = getelementptr inbounds nuw i8, ptr %.128131894, i64 %.idx1734
  %i.caz = shufflevector <4 x float> %.51193, <4 x float> %.51181, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.caz, ptr %i.cay, align 4, !tbaa !68
  %i.cba = getelementptr inbounds nuw i8, ptr %.128131894, i64 %.idx1735
  %i.cbb = shufflevector <4 x float> %.51193, <4 x float> %.51181, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.cbb, ptr %i.cba, align 4, !tbaa !68
  %i.cbc = getelementptr inbounds nuw i8, ptr %.128131894, i64 %.idx1736
  %i.cbd = shufflevector <4 x float> %.51193, <4 x float> %.51181, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.cbd, ptr %i.cbc, align 4, !tbaa !68
  br label %bb.jt

bb.jt:                                            ; preds = %bb.jr, %bb.jq, %bb.jp, %bb.js
  %i.cbe = getelementptr inbounds nuw i8, ptr %.128131894, i64 %.idx2949
  br label %bb.kc

bb.ju:                                            ; preds = %bb.jo
  store <4 x float> %.51199, ptr %.128131894, align 1, !tbaa !89
  %i.cbf = getelementptr inbounds nuw i8, ptr %.128131894, i64 16
  store <4 x float> %.51193, ptr %i.cbf, align 1, !tbaa !89
  %i.cbg = getelementptr inbounds nuw [4 x i8], ptr %.128131894, i64 %i.k ; 2 uses
  store <4 x float> %.51187, ptr %i.cbg, align 1, !tbaa !89
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.cbg, i64 16
  store <4 x float> %.51181, ptr %i.cbh, align 1, !tbaa !89
  %i.cbi = getelementptr inbounds nuw i8, ptr %.128131894, i64 32
  br label %bb.kc

bb.jv:                                            ; preds = %bb.jn
  %i.cbj = bitcast <4 x float> %.51199 to <4 x i32>
  %i.cbk = lshr <4 x i32> %i.cbj, splat (i32 16)
  %i.cbl = bitcast <4 x float> %.51193 to <4 x i32>
  %i.cbm = lshr <4 x i32> %i.cbl, splat (i32 16)
  %i.cbn = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cbk, <4 x i32> %i.cbm) ; 12 uses
  %i.cbo = bitcast <8 x i16> %i.cbn to <2 x i64>
  %i.cbp = bitcast <4 x float> %.51187 to <4 x i32>
  %i.cbq = lshr <4 x i32> %i.cbp, splat (i32 16)
  %i.cbr = bitcast <4 x float> %.51181 to <4 x i32>
  %i.cbs = lshr <4 x i32> %i.cbr, splat (i32 16)
  %i.cbt = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cbq, <4 x i32> %i.cbs) ; 12 uses
  %i.cbu = bitcast <8 x i16> %i.cbt to <2 x i64>
  br i1 %.not2936, label %bb.kb, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  switch i32 %i.b, label %bb.ka [
    i32 8, label %bb.jx
    i32 4, label %bb.jy
    i32 1, label %bb.jz
  ]

bb.jx:                                            ; preds = %bb.jw
  store <8 x i16> %i.cbn, ptr %.128221893, align 1, !tbaa !89
  %i.cbv = getelementptr inbounds nuw i8, ptr %.128221893, i64 16
  store <8 x i16> %i.cbt, ptr %i.cbv, align 1, !tbaa !89
  br label %bb.ka

bb.jy:                                            ; preds = %bb.jw
  %i.cbw = shufflevector <2 x i64> %i.cbo, <2 x i64> %i.cbu, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.cbw, ptr %.128221893, align 1, !tbaa !89
  %i.cbx = getelementptr inbounds nuw i8, ptr %.128221893, i64 %.idx1727
  %i.cby = bitcast <8 x i16> %i.cbn to <2 x double>
  %i.cbz = bitcast <8 x i16> %i.cbt to <2 x double>
  %i.cca = shufflevector <2 x double> %i.cby, <2 x double> %i.cbz, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.cca, ptr %i.cbx, align 1, !tbaa !89
  br label %bb.ka

bb.jz:                                            ; preds = %bb.jw
  %.sroa.066.0.vec.extract = extractelement <8 x i16> %i.cbn, i64 0
  store i16 %.sroa.066.0.vec.extract, ptr %.128221893, align 2, !tbaa !108
  %.sroa.11.16.vec.extract = extractelement <8 x i16> %i.cbt, i64 0
  %i.ccb = getelementptr inbounds nuw i8, ptr %.128221893, i64 2
  store i16 %.sroa.11.16.vec.extract, ptr %i.ccb, align 2, !tbaa !108
  %.sroa.066.2.vec.extract = extractelement <8 x i16> %i.cbn, i64 1
  %i.ccc = getelementptr inbounds nuw [2 x i8], ptr %.128221893, i64 %i.k ; 2 uses
  store i16 %.sroa.066.2.vec.extract, ptr %i.ccc, align 2, !tbaa !108
  %.sroa.11.18.vec.extract = extractelement <8 x i16> %i.cbt, i64 1
  %i.ccd = getelementptr i8, ptr %i.ccc, i64 2
  store i16 %.sroa.11.18.vec.extract, ptr %i.ccd, align 2, !tbaa !108
  %.sroa.066.4.vec.extract = extractelement <8 x i16> %i.cbn, i64 2
  %i.cce = getelementptr inbounds nuw i8, ptr %.128221893, i64 %.idx1725 ; 2 uses
  store i16 %.sroa.066.4.vec.extract, ptr %i.cce, align 2, !tbaa !108
  %.sroa.11.20.vec.extract = extractelement <8 x i16> %i.cbt, i64 2
  %i.ccf = getelementptr inbounds nuw i8, ptr %i.cce, i64 2
  store i16 %.sroa.11.20.vec.extract, ptr %i.ccf, align 2, !tbaa !108
  %.sroa.066.6.vec.extract = extractelement <8 x i16> %i.cbn, i64 3
  %i.ccg = getelementptr inbounds nuw i8, ptr %.128221893, i64 %.idx1726 ; 2 uses
  store i16 %.sroa.066.6.vec.extract, ptr %i.ccg, align 2, !tbaa !108
  %.sroa.11.22.vec.extract = extractelement <8 x i16> %i.cbt, i64 3
  %i.cch = getelementptr i8, ptr %i.ccg, i64 2
  store i16 %.sroa.11.22.vec.extract, ptr %i.cch, align 2, !tbaa !108
  %.sroa.066.8.vec.extract = extractelement <8 x i16> %i.cbn, i64 4
  %i.cci = getelementptr inbounds nuw i8, ptr %.128221893, i64 %.idx1727 ; 2 uses
  store i16 %.sroa.066.8.vec.extract, ptr %i.cci, align 2, !tbaa !108
  %.sroa.11.24.vec.extract = extractelement <8 x i16> %i.cbt, i64 4
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.cci, i64 2
  store i16 %.sroa.11.24.vec.extract, ptr %i.ccj, align 2, !tbaa !108
  %.sroa.066.10.vec.extract = extractelement <8 x i16> %i.cbn, i64 5
  %i.cck = getelementptr inbounds nuw i8, ptr %.128221893, i64 %.idx1728 ; 2 uses
  store i16 %.sroa.066.10.vec.extract, ptr %i.cck, align 2, !tbaa !108
  %.sroa.11.26.vec.extract = extractelement <8 x i16> %i.cbt, i64 5
  %i.ccl = getelementptr i8, ptr %i.cck, i64 2
  store i16 %.sroa.11.26.vec.extract, ptr %i.ccl, align 2, !tbaa !108
  %.sroa.066.12.vec.extract = extractelement <8 x i16> %i.cbn, i64 6
  %i.ccm = getelementptr inbounds nuw i8, ptr %.128221893, i64 %.idx1729 ; 2 uses
  store i16 %.sroa.066.12.vec.extract, ptr %i.ccm, align 2, !tbaa !108
  %.sroa.11.28.vec.extract = extractelement <8 x i16> %i.cbt, i64 6
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.ccm, i64 2
  store i16 %.sroa.11.28.vec.extract, ptr %i.ccn, align 2, !tbaa !108
  %.sroa.066.14.vec.extract = extractelement <8 x i16> %i.cbn, i64 7
  %i.cco = getelementptr inbounds nuw i8, ptr %.128221893, i64 %.idx1730 ; 2 uses
  store i16 %.sroa.066.14.vec.extract, ptr %i.cco, align 2, !tbaa !108
  %.sroa.11.30.vec.extract = extractelement <8 x i16> %i.cbt, i64 7
  %i.ccp = getelementptr i8, ptr %i.cco, i64 2
  store i16 %.sroa.11.30.vec.extract, ptr %i.ccp, align 2, !tbaa !108
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jy, %bb.jx, %bb.jw, %bb.jz
  %i.ccq = getelementptr inbounds nuw i8, ptr %.128221893, i64 %.idx2947
  br label %bb.kc

bb.kb:                                            ; preds = %bb.jv
  store <8 x i16> %i.cbn, ptr %.128221893, align 1, !tbaa !89
  %i.ccr = getelementptr inbounds nuw [2 x i8], ptr %.128221893, i64 %i.k
  store <8 x i16> %i.cbt, ptr %i.ccr, align 1, !tbaa !89
  %i.ccs = getelementptr inbounds nuw i8, ptr %.128221893, i64 16
  br label %bb.kc

bb.kc:                                            ; preds = %bb.ka, %bb.kb, %bb.jt, %bb.ju
  %.32824 = phi ptr [ %.128221893, %bb.jt ], [ %.128221893, %bb.ju ], [ %i.ccq, %bb.ka ], [ %i.ccs, %bb.kb ] ; 2 uses
  %.22814 = phi ptr [ %i.cbe, %bb.jt ], [ %i.cbi, %bb.ju ], [ %.128131894, %bb.ka ], [ %.128131894, %bb.kb ] ; 2 uses
  %i.cct = add nuw nsw i32 %.028031895, 8         ; 2 uses
  %i.ccu = or disjoint i32 %i.cct, 7
  %i.ccv = icmp slt i32 %i.ccu, %6
  br i1 %i.ccv, label %.lr.ph1898, label %.preheader1767, !llvm.loop !1244

.preheader1766:                                   ; preds = %bb.kv, %.preheader1767
  %.42825.lcssa = phi ptr [ %.12822.lcssa, %.preheader1767 ], [ %.62827, %bb.kv ] ; 2 uses
  %.32815.lcssa = phi ptr [ %.12813.lcssa, %.preheader1767 ], [ %.42816, %bb.kv ] ; 2 uses
  %.12804.lcssa = phi i32 [ %.02803.lcssa, %.preheader1767 ], [ %i.cfk, %bb.kv ] ; 3 uses
  %.122753.lcssa = phi ptr [ %.112752.lcssa, %.preheader1767 ], [ %i.cdh, %bb.kv ] ; 2 uses
  %.47.lcssa = phi ptr [ %.44.lcssa, %.preheader1767 ], [ %.49, %bb.kv ] ; 2 uses
  %i.ccw = or disjoint i32 %.12804.lcssa, 1
  %i.ccx = icmp slt i32 %i.ccw, %6
  br i1 %i.ccx, label %.lr.ph1924.preheader, label %.preheader1765

.lr.ph1924.preheader:                             ; preds = %.preheader1766
  %i.ccy = insertelement <2 x float> poison, float %.22811, i64 0
  %i.ccz = shufflevector <2 x float> %i.ccy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cda = shufflevector <2 x float> %i.byg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cdb = insertelement <2 x float> poison, float %.22811, i64 0
  %i.cdc = shufflevector <2 x float> %i.cdb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cdd = shufflevector <2 x float> %i.byg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph1924

.lr.ph1913:                                       ; preds = %.preheader1767, %bb.kv
  %.471912 = phi ptr [ %.49, %bb.kv ], [ %.44.lcssa, %.preheader1767 ] ; 9 uses
  %.1227531911 = phi ptr [ %i.cdh, %bb.kv ], [ %.112752.lcssa, %.preheader1767 ] ; 3 uses
  %.128041910 = phi i32 [ %i.cfk, %bb.kv ], [ %.02803.lcssa, %.preheader1767 ]
  %.328151909 = phi ptr [ %.42816, %bb.kv ], [ %.12813.lcssa, %.preheader1767 ] ; 13 uses
  %.428251908 = phi ptr [ %.62827, %bb.kv ], [ %.12822.lcssa, %.preheader1767 ] ; 11 uses
  %.512051907 = phi <4 x float> [ %.71207, %bb.kv ], [ %.21202.lcssa, %.preheader1767 ] ; 6 uses
  %.612141906 = phi <4 x float> [ %.81216, %bb.kv ], [ %.31211.lcssa, %.preheader1767 ] ; 7 uses
  %i.cde = load <4 x float>, ptr %.1227531911, align 16, !tbaa !89 ; 2 uses
  %i.cdf = getelementptr inbounds nuw i8, ptr %.1227531911, i64 16
  %i.cdg = load <4 x float>, ptr %i.cdf, align 16, !tbaa !89 ; 2 uses
  %i.cdh = getelementptr inbounds nuw i8, ptr %.1227531911, i64 32 ; 2 uses
  %i.cdi = shufflevector <4 x float> %i.cde, <4 x float> %i.cdg, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cdj = shufflevector <4 x float> %i.cde, <4 x float> %i.cdg, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cdk = shufflevector <4 x float> %i.cdi, <4 x float> %i.cdj, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 7 uses
  %i.cdl = shufflevector <4 x float> %i.cdi, <4 x float> %i.cdj, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.cdm = shufflevector <4 x float> %i.cdl, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 7 uses
  %.not2942 = icmp eq ptr %.471912, null
  br i1 %.not2942, label %.thread1669, label %bb.kd

bb.kd:                                            ; preds = %.lr.ph1913
  br i1 %15, label %.thread1660, label %bb.ke

.thread1660:                                      ; preds = %bb.kd
  %i.cdn = fadd fast <4 x float> %.612141906, %i.cdk
  %i.cdo = fadd fast <4 x float> %i.cdm, %.612141906
  br label %.thread1669

bb.ke:                                            ; preds = %bb.kd
  br i1 %16, label %bb.kf, label %bb.kg

bb.kf:                                            ; preds = %bb.ke
  %i.cdp = fadd fast <4 x float> %.612141906, %i.cdk
  %i.cdq = fadd fast <4 x float> %i.cdm, %.512051907
  br label %.thread1669

bb.kg:                                            ; preds = %bb.ke
  switch i32 %2, label %.thread1669 [
    i32 3, label %bb.kh
    i32 4, label %bb.ki
  ]

bb.kh:                                            ; preds = %bb.kg
  %i.cdr = load <4 x float>, ptr %.471912, align 1, !tbaa !89 ; 3 uses
  %i.cds = getelementptr inbounds nuw [4 x i8], ptr %.471912, i64 %i.t
  %i.cdt = load <4 x float>, ptr %i.cds, align 1, !tbaa !89 ; 3 uses
  %i.cdu = fadd fast <4 x float> %i.cdr, %i.cdk
  %i.cdv = fadd fast <4 x float> %i.cdt, %i.cdm
  %i.cdw = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cdr, <4 x float> nofpclass(nan inf) %i.asn, <4 x float> nofpclass(nan inf) %i.cdk)
  %i.cdx = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cdt, <4 x float> nofpclass(nan inf) %i.asn, <4 x float> nofpclass(nan inf) %i.cdm)
  %.21172 = select nsz i1 %i.aso, <4 x float> %i.cdu, <4 x float> %i.cdw
  %.21166 = select nsz i1 %i.aso, <4 x float> %i.cdv, <4 x float> %i.cdx
  %i.cdy = getelementptr inbounds nuw i8, ptr %.471912, i64 16
  br label %.thread1669

bb.ki:                                            ; preds = %bb.kg
  %i.cdz = load <4 x float>, ptr %.471912, align 1, !tbaa !89
  %i.cea = fmul fast <4 x float> %i.cdz, %i.asn   ; 3 uses
  %i.ceb = fadd fast <4 x float> %i.cea, %i.cdk
  %i.cec = fadd fast <4 x float> %i.cea, %i.cdm
  %i.ced = getelementptr inbounds nuw i8, ptr %.471912, i64 16
  br label %.thread1669

.thread1669:                                      ; preds = %bb.kg, %bb.kf, %.thread1660, %bb.kh, %bb.ki, %.lr.ph1913
  %.81216 = phi nsz <4 x float> [ %.612141906, %.lr.ph1913 ], [ %i.cea, %bb.ki ], [ %.612141906, %bb.kg ], [ %i.cdr, %bb.kh ], [ %.612141906, %.thread1660 ], [ %.612141906, %bb.kf ]
  %.71207 = phi nsz <4 x float> [ %.512051907, %.lr.ph1913 ], [ %.512051907, %bb.ki ], [ %.512051907, %bb.kg ], [ %i.cdt, %bb.kh ], [ %.512051907, %.thread1660 ], [ %.512051907, %bb.kf ]
  %.41174 = phi nsz <4 x float> [ %i.cdk, %.lr.ph1913 ], [ %i.ceb, %bb.ki ], [ %i.cdk, %bb.kg ], [ %.21172, %bb.kh ], [ %i.cdn, %.thread1660 ], [ %i.cdp, %bb.kf ] ; 2 uses
  %.41168 = phi nsz <4 x float> [ %i.cdm, %.lr.ph1913 ], [ %i.cec, %bb.ki ], [ %i.cdm, %bb.kg ], [ %.21166, %bb.kh ], [ %i.cdo, %.thread1660 ], [ %i.cdq, %bb.kf ] ; 2 uses
  %.49 = phi ptr [ null, %.lr.ph1913 ], [ %i.ced, %bb.ki ], [ %.471912, %bb.kg ], [ %i.cdy, %bb.kh ], [ %.471912, %.thread1660 ], [ %.471912, %bb.kf ] ; 2 uses
  %i.cee = fmul fast <4 x float> %.41174, %i.asr
  %i.cef = fmul fast <4 x float> %.41168, %i.asr
  %.51175 = select nsz i1 %i.asp, <4 x float> %i.cee, <4 x float> %.41174 ; 7 uses
  %.51169 = select nsz i1 %i.asp, <4 x float> %i.cef, <4 x float> %.41168 ; 7 uses
  br i1 %i.ass, label %bb.kj, label %bb.kp

bb.kj:                                            ; preds = %.thread1669
  br i1 %.not2936, label %bb.ko, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  switch i32 %i.b, label %bb.kn [
    i32 4, label %bb.kl
    i32 1, label %bb.km
  ]

bb.kl:                                            ; preds = %bb.kk
  store <4 x float> %.51175, ptr %.328151909, align 1, !tbaa !89
  %i.ceg = getelementptr inbounds nuw i8, ptr %.328151909, i64 16
  store <4 x float> %.51169, ptr %i.ceg, align 1, !tbaa !89
  br label %bb.kn

bb.km:                                            ; preds = %bb.kk
  %.sroa.039.0.vec.extract = extractelement <4 x float> %.51175, i64 0
  store float %.sroa.039.0.vec.extract, ptr %.328151909, align 4, !tbaa !68
  %.sroa.740.16.vec.extract = extractelement <4 x float> %.51169, i64 0
  %i.ceh = getelementptr inbounds nuw i8, ptr %.328151909, i64 4
  store float %.sroa.740.16.vec.extract, ptr %i.ceh, align 4, !tbaa !68
  %i.cei = getelementptr inbounds nuw [4 x i8], ptr %.328151909, i64 %i.k
  %i.cej = shufflevector <4 x float> %.51175, <4 x float> %.51169, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.cej, ptr %i.cei, align 4, !tbaa !68
  %i.cek = getelementptr inbounds nuw i8, ptr %.328151909, i64 %.idx1727
  %i.cel = shufflevector <4 x float> %.51175, <4 x float> %.51169, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.cel, ptr %i.cek, align 4, !tbaa !68
  %i.cem = getelementptr inbounds nuw i8, ptr %.328151909, i64 %.idx1729
  %i.cen = shufflevector <4 x float> %.51175, <4 x float> %.51169, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.cen, ptr %i.cem, align 4, !tbaa !68
  br label %bb.kn

bb.kn:                                            ; preds = %bb.kl, %bb.kk, %bb.km
  %i.ceo = getelementptr inbounds nuw i8, ptr %.328151909, i64 %.idx2947
  br label %bb.kv

bb.ko:                                            ; preds = %bb.kj
  store <4 x float> %.51175, ptr %.328151909, align 1, !tbaa !89
  %i.cep = getelementptr inbounds nuw [4 x i8], ptr %.328151909, i64 %i.k
  store <4 x float> %.51169, ptr %i.cep, align 1, !tbaa !89
  %i.ceq = getelementptr inbounds nuw i8, ptr %.328151909, i64 16
  br label %bb.kv

bb.kp:                                            ; preds = %.thread1669
  %i.cer = bitcast <4 x float> %.51175 to <4 x i32>
  %i.ces = lshr <4 x i32> %i.cer, splat (i32 16)
  %i.cet = bitcast <4 x float> %.51169 to <4 x i32>
  %i.ceu = lshr <4 x i32> %i.cet, splat (i32 16)
  %i.cev = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ces, <4 x i32> %i.ceu) ; 7 uses
  br i1 %.not2936, label %bb.ku, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  switch i32 %i.b, label %bb.kt [
    i32 4, label %bb.kr
    i32 1, label %bb.ks
  ]

bb.kr:                                            ; preds = %bb.kq
  store <8 x i16> %i.cev, ptr %.428251908, align 1, !tbaa !89
  br label %bb.kt

bb.ks:                                            ; preds = %bb.kq
  %i.cew = shufflevector <8 x i16> %i.cev, <8 x i16> poison, <2 x i32> <i32 0, i32 4>
  store <2 x i16> %i.cew, ptr %.428251908, align 2, !tbaa !108
  %i.cex = getelementptr inbounds nuw [2 x i8], ptr %.428251908, i64 %i.k
  %i.cey = shufflevector <8 x i16> %i.cev, <8 x i16> poison, <2 x i32> <i32 1, i32 5>
  store <2 x i16> %i.cey, ptr %i.cex, align 2, !tbaa !108
  %i.cez = getelementptr inbounds nuw i8, ptr %.428251908, i64 %.idx1725
  %i.cfa = shufflevector <8 x i16> %i.cev, <8 x i16> poison, <2 x i32> <i32 2, i32 6>
  store <2 x i16> %i.cfa, ptr %i.cez, align 2, !tbaa !108
  %i.cfb = getelementptr inbounds nuw i8, ptr %.428251908, i64 %.idx1726
  %i.cfc = shufflevector <8 x i16> %i.cev, <8 x i16> poison, <2 x i32> <i32 3, i32 7>
  store <2 x i16> %i.cfc, ptr %i.cfb, align 2, !tbaa !108
  br label %bb.kt

bb.kt:                                            ; preds = %bb.kr, %bb.kq, %bb.ks
  %i.cfd = getelementptr inbounds nuw i8, ptr %.428251908, i64 %.idx1727
  br label %bb.kv

bb.ku:                                            ; preds = %bb.kp
  %i.cfe = bitcast <8 x i16> %i.cev to <2 x i64>
  %i.cff = extractelement <2 x i64> %i.cfe, i64 0
  store i64 %i.cff, ptr %.428251908, align 1, !tbaa !89
  %i.cfg = getelementptr inbounds nuw [2 x i8], ptr %.428251908, i64 %i.k
  %i.cfh = bitcast <8 x i16> %i.cev to <2 x i64>
  %i.cfi = extractelement <2 x i64> %i.cfh, i64 1
  store i64 %i.cfi, ptr %i.cfg, align 1, !tbaa !89
  %i.cfj = getelementptr inbounds nuw i8, ptr %.428251908, i64 8
  br label %bb.kv

bb.kv:                                            ; preds = %bb.kt, %bb.ku, %bb.kn, %bb.ko
  %.62827 = phi ptr [ %.428251908, %bb.kn ], [ %.428251908, %bb.ko ], [ %i.cfd, %bb.kt ], [ %i.cfj, %bb.ku ] ; 2 uses
  %.42816 = phi ptr [ %i.ceo, %bb.kn ], [ %i.ceq, %bb.ko ], [ %.328151909, %bb.kt ], [ %.328151909, %bb.ku ] ; 2 uses
  %i.cfk = add nuw nsw i32 %.128041910, 4         ; 3 uses
  %i.cfl = or disjoint i32 %i.cfk, 3
  %i.cfm = icmp slt i32 %i.cfl, %6
  br i1 %i.cfm, label %.lr.ph1913, label %.preheader1766, !llvm.loop !1245

.preheader1765:                                   ; preds = %bb.li, %.preheader1766
  %.72828.lcssa = phi ptr [ %.42825.lcssa, %.preheader1766 ], [ %.92830, %bb.li ]
  %.52817.lcssa = phi ptr [ %.32815.lcssa, %.preheader1766 ], [ %.62818, %bb.li ]
  %.22805.lcssa = phi i32 [ %.12804.lcssa, %.preheader1766 ], [ %i.chq, %bb.li ] ; 2 uses
  %.132754.lcssa = phi ptr [ %.122753.lcssa, %.preheader1766 ], [ %i.cfs, %bb.li ] ; 2 uses
  %.50.lcssa = phi ptr [ %.47.lcssa, %.preheader1766 ], [ %.52, %bb.li ] ; 2 uses
  %i.cfn = icmp slt i32 %.22805.lcssa, %6
  br i1 %i.cfn, label %.lr.ph1935.preheader, label %._crit_edge1936

.lr.ph1935.preheader:                             ; preds = %.preheader1765
  %i.cfo = shufflevector <2 x float> %i.byg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph1935

.lr.ph1924:                                       ; preds = %.lr.ph1924.preheader, %bb.li
  %.501923 = phi ptr [ %.52, %bb.li ], [ %.47.lcssa, %.lr.ph1924.preheader ] ; 9 uses
  %.1327541922 = phi ptr [ %i.cfs, %bb.li ], [ %.122753.lcssa, %.lr.ph1924.preheader ] ; 3 uses
  %.228051921 = phi i32 [ %i.chq, %bb.li ], [ %.12804.lcssa, %.lr.ph1924.preheader ]
  %.528171920 = phi ptr [ %.62818, %bb.li ], [ %.32815.lcssa, %.lr.ph1924.preheader ] ; 7 uses
  %.728281919 = phi ptr [ %.92830, %bb.li ], [ %.42825.lcssa, %.lr.ph1924.preheader ] ; 7 uses
  %i.cfp = load <2 x float>, ptr %.1327541922, align 4, !tbaa !68 ; 6 uses
  %i.cfq = getelementptr inbounds nuw i8, ptr %.1327541922, i64 8
  %i.cfr = load <2 x float>, ptr %i.cfq, align 4, !tbaa !68 ; 6 uses
  %i.cfs = getelementptr inbounds nuw i8, ptr %.1327541922, i64 16 ; 2 uses
  %.not2939 = icmp eq ptr %.501923, null
  br i1 %.not2939, label %.thread1688, label %bb.kw

bb.kw:                                            ; preds = %.lr.ph1924
  br i1 %15, label %.thread1675, label %bb.kx

.thread1675:                                      ; preds = %bb.kw
  %i.cft = fadd fast <2 x float> %i.cfp, %i.cdc
  %i.cfu = fadd fast <2 x float> %i.cfr, %i.cdd
  br label %.thread1688

bb.kx:                                            ; preds = %bb.kw
  br i1 %or.cond27, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %bb.kx
  %i.cfv = fadd fast <2 x float> %i.cfp, %i.ccz
  %i.cfw = fadd fast <2 x float> %i.cfr, %i.cda
  br label %.thread1688

bb.kz:                                            ; preds = %bb.kx
  switch i32 %2, label %.thread1688 [
    i32 3, label %bb.la
    i32 4, label %bb.lb
  ]

bb.la:                                            ; preds = %bb.kz
  %i.cfx = load <2 x float>, ptr %.501923, align 4, !tbaa !68
  %i.cfy = fmul fast <2 x float> %i.cfx, %i.asy
  %i.cfz = fadd fast <2 x float> %i.cfy, %i.cfp
  %i.cga = getelementptr inbounds nuw [4 x i8], ptr %.501923, i64 %i.t
  %i.cgb = load <2 x float>, ptr %i.cga, align 4, !tbaa !68
  %i.cgc = fmul fast <2 x float> %i.cgb, %i.asy
  %i.cgd = fadd fast <2 x float> %i.cgc, %i.cfr
  %i.cge = getelementptr inbounds nuw i8, ptr %.501923, i64 8
  br label %.thread1688

bb.lb:                                            ; preds = %bb.kz
  %i.cgf = load <2 x float>, ptr %.501923, align 4, !tbaa !68
  %i.cgg = fmul fast <2 x float> %i.cgf, %i.asy   ; 2 uses
  %i.cgh = fadd fast <2 x float> %i.cgg, %i.cfp
  %i.cgi = fadd fast <2 x float> %i.cgg, %i.cfr
  %i.cgj = getelementptr inbounds nuw i8, ptr %.501923, i64 8
  br label %.thread1688

.thread1688:                                      ; preds = %bb.kz, %bb.ky, %.thread1675, %bb.la, %bb.lb, %.lr.ph1924
  %.52 = phi ptr [ %i.cgj, %bb.lb ], [ %.501923, %bb.kz ], [ null, %.lr.ph1924 ], [ %i.cge, %bb.la ], [ %.501923, %.thread1675 ], [ %.501923, %bb.ky ] ; 2 uses
  %i.cgk = phi <2 x float> [ %i.cgi, %bb.lb ], [ %i.cfr, %bb.kz ], [ %i.cfr, %.lr.ph1924 ], [ %i.cgd, %bb.la ], [ %i.cfu, %.thread1675 ], [ %i.cfw, %bb.ky ]
  %i.cgl = phi <2 x float> [ %i.cgh, %bb.lb ], [ %i.cfp, %bb.kz ], [ %i.cfp, %.lr.ph1924 ], [ %i.cfz, %bb.la ], [ %i.cft, %.thread1675 ], [ %i.cfv, %bb.ky ]
  %i.cgm = fmul fast <2 x float> %i.cgl, %18      ; 4 uses
  %i.cgn = fmul fast <2 x float> %i.cgk, %18      ; 5 uses
  br i1 %i.ass, label %bb.lc, label %bb.lf

bb.lc:                                            ; preds = %.thread1688
  %i.cgo = extractelement <2 x float> %i.cgm, i64 0
  store float %i.cgo, ptr %.528171920, align 4, !tbaa !68
  %i.cgp = getelementptr inbounds nuw i8, ptr %.528171920, i64 4 ; 2 uses
  %i.cgq = getelementptr inbounds nuw [4 x i8], ptr %.528171920, i64 %i.k ; 3 uses
  %i.cgr = getelementptr i8, ptr %i.cgq, i64 4    ; 2 uses
  br i1 %.not2936, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.cgs = extractelement <2 x float> %i.cgn, i64 0
  store float %i.cgs, ptr %i.cgp, align 4, !tbaa !68
  %i.cgt = extractelement <2 x float> %i.cgm, i64 1
  store float %i.cgt, ptr %i.cgq, align 4, !tbaa !68
  %i.cgu = extractelement <2 x float> %i.cgn, i64 1
  store float %i.cgu, ptr %i.cgr, align 4, !tbaa !68
  %i.cgv = getelementptr inbounds nuw i8, ptr %.528171920, i64 %.idx1727
  br label %bb.li

bb.le:                                            ; preds = %bb.lc
  %i.cgw = extractelement <2 x float> %i.cgm, i64 1
  store float %i.cgw, ptr %i.cgp, align 4, !tbaa !68
  %i.cgx = extractelement <2 x float> %i.cgn, i64 0
  store float %i.cgx, ptr %i.cgq, align 4, !tbaa !68
  %i.cgy = extractelement <2 x float> %i.cgn, i64 1
  store float %i.cgy, ptr %i.cgr, align 4, !tbaa !68
  %i.cgz = getelementptr inbounds nuw i8, ptr %.528171920, i64 8
  br label %bb.li

bb.lf:                                            ; preds = %.thread1688
  %i.cha = bitcast <2 x float> %i.cgm to <2 x i32>
  %i.chb = lshr <2 x i32> %i.cha, splat (i32 16)  ; 2 uses
  %i.chc = bitcast <2 x i32> %i.chb to <4 x i16>
  %i.chd = extractelement <4 x i16> %i.chc, i64 0
  %i.che = bitcast <2 x i32> %i.chb to <4 x i16>
  %i.chf = extractelement <4 x i16> %i.che, i64 2 ; 2 uses
  %i.chg = bitcast <2 x float> %i.cgn to <2 x i32>
  %i.chh = lshr <2 x i32> %i.chg, splat (i32 16)
  %i.chi = trunc nuw <2 x i32> %i.chh to <2 x i16> ; 3 uses
  store i16 %i.chd, ptr %.728281919, align 2, !tbaa !108
  %i.chj = getelementptr inbounds nuw i8, ptr %.728281919, i64 2 ; 2 uses
  %i.chk = getelementptr inbounds nuw [2 x i8], ptr %.728281919, i64 %i.k ; 3 uses
  br i1 %.not2936, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.chl = getelementptr i8, ptr %i.chk, i64 2
  %i.chm = extractelement <2 x i16> %i.chi, i64 0
  store i16 %i.chm, ptr %i.chj, align 2, !tbaa !108
  store i16 %i.chf, ptr %i.chk, align 2, !tbaa !108
  %i.chn = extractelement <2 x i16> %i.chi, i64 1
  store i16 %i.chn, ptr %i.chl, align 2, !tbaa !108
  %i.cho = getelementptr inbounds nuw i8, ptr %.728281919, i64 %.idx1725
  br label %bb.li

bb.lh:                                            ; preds = %bb.lf
  store i16 %i.chf, ptr %i.chj, align 2, !tbaa !108
  store <2 x i16> %i.chi, ptr %i.chk, align 2, !tbaa !108
  %i.chp = getelementptr inbounds nuw i8, ptr %.728281919, i64 4
  br label %bb.li

bb.li:                                            ; preds = %bb.lg, %bb.lh, %bb.ld, %bb.le
  %.92830 = phi ptr [ %.728281919, %bb.ld ], [ %.728281919, %bb.le ], [ %i.cho, %bb.lg ], [ %i.chp, %bb.lh ] ; 2 uses
  %.62818 = phi ptr [ %i.cgv, %bb.ld ], [ %i.cgz, %bb.le ], [ %.528171920, %bb.lg ], [ %.528171920, %bb.lh ] ; 2 uses
  %i.chq = add nuw nsw i32 %.228051921, 2         ; 3 uses
  %i.chr = or disjoint i32 %i.chq, 1
  %i.chs = icmp slt i32 %i.chr, %6
  br i1 %i.chs, label %.lr.ph1924, label %.preheader1765, !llvm.loop !1246

.lr.ph1935:                                       ; preds = %.lr.ph1935.preheader, %bb.ls
  %.531934 = phi ptr [ %.55, %bb.ls ], [ %.50.lcssa, %.lr.ph1935.preheader ] ; 7 uses
  %.1427551933 = phi ptr [ %i.chu, %bb.ls ], [ %.132754.lcssa, %.lr.ph1935.preheader ] ; 2 uses
  %.328061932 = phi i32 [ %i.cjg, %bb.ls ], [ %.22805.lcssa, %.lr.ph1935.preheader ]
  %.728191931 = phi ptr [ %.82820, %bb.ls ], [ %.52817.lcssa, %.lr.ph1935.preheader ] ; 7 uses
  %.1028311930 = phi ptr [ %.122833, %bb.ls ], [ %.72828.lcssa, %.lr.ph1935.preheader ] ; 7 uses
  %i.cht = load <2 x float>, ptr %.1427551933, align 4, !tbaa !68 ; 4 uses
  %i.chu = getelementptr inbounds nuw i8, ptr %.1427551933, i64 8 ; 2 uses
  %.not2938 = icmp eq ptr %.531934, null
  br i1 %.not2938, label %bb.ll, label %bb.lj

bb.lj:                                            ; preds = %.lr.ph1935
  %i.chv = fadd fast <2 x float> %i.cht, %i.cfo
  %i.chw = select <2 x i1> %19, <2 x float> %i.chv, <2 x float> %i.cht ; 3 uses
  %i.chx = fadd fast <2 x float> %i.chw, %i.byg
  %i.chy = select <2 x i1> %20, <2 x float> %i.chx, <2 x float> %i.chw
  switch i32 %2, label %bb.ll [
    i32 3, label %.thread1694
    i32 4, label %bb.lk
  ]

.thread1694:                                      ; preds = %bb.lj
  %i.chz = load float, ptr %.531934, align 4, !tbaa !68
  %i.cia = getelementptr inbounds nuw [4 x i8], ptr %.531934, i64 %i.t
  %i.cib = load float, ptr %i.cia, align 4, !tbaa !68
  %i.cic = insertelement <2 x float> poison, float %i.chz, i64 0
  %i.cid = insertelement <2 x float> %i.cic, float %i.cib, i64 1
  %i.cie = fmul fast <2 x float> %i.cid, %i.asy
  %i.cif = fadd fast <2 x float> %i.cie, %i.cht
  %i.cig = getelementptr inbounds nuw i8, ptr %.531934, i64 4
  br label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  %i.cih = load float, ptr %.531934, align 4, !tbaa !68
  %i.cii = fmul fast float %i.cih, %8
  %i.cij = insertelement <2 x float> poison, float %i.cii, i64 0
  %i.cik = shufflevector <2 x float> %i.cij, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cil = fadd fast <2 x float> %i.cik, %i.chw
  %i.cim = getelementptr inbounds nuw i8, ptr %.531934, i64 4
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lj, %.thread1694, %bb.lk, %.lr.ph1935
  %.55 = phi ptr [ %i.cim, %bb.lk ], [ %.531934, %bb.lj ], [ null, %.lr.ph1935 ], [ %i.cig, %.thread1694 ] ; 2 uses
  %i.cin = phi <2 x float> [ %i.cil, %bb.lk ], [ %i.chy, %bb.lj ], [ %i.cht, %.lr.ph1935 ], [ %i.cif, %.thread1694 ]
  %i.cio = fmul fast <2 x float> %i.cin, %i.ata   ; 4 uses
  br i1 %i.ass, label %bb.lm, label %bb.lp

bb.lm:                                            ; preds = %bb.ll
  %i.cip = extractelement <2 x float> %i.cio, i64 0
  store float %i.cip, ptr %.728191931, align 4, !tbaa !68
  br i1 %.not2936, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.ciq = getelementptr inbounds nuw i8, ptr %.728191931, i64 4
  %i.cir = extractelement <2 x float> %i.cio, i64 1
  store float %i.cir, ptr %i.ciq, align 4, !tbaa !68
  %i.cis = getelementptr inbounds nuw [4 x i8], ptr %.728191931, i64 %i.k
  br label %bb.ls

bb.lo:                                            ; preds = %bb.lm
  %i.cit = getelementptr inbounds nuw [4 x i8], ptr %.728191931, i64 %i.k
  %i.ciu = extractelement <2 x float> %i.cio, i64 1
  store float %i.ciu, ptr %i.cit, align 4, !tbaa !68
  %i.civ = getelementptr inbounds nuw i8, ptr %.728191931, i64 4
  br label %bb.ls

bb.lp:                                            ; preds = %bb.ll
  %i.ciw = bitcast <2 x float> %i.cio to <2 x i32>
  %i.cix = lshr <2 x i32> %i.ciw, splat (i32 16)  ; 2 uses
  %i.ciy = bitcast <2 x i32> %i.cix to <4 x i16>
  %i.ciz = extractelement <4 x i16> %i.ciy, i64 0
  %i.cja = bitcast <2 x i32> %i.cix to <4 x i16>
  %i.cjb = extractelement <4 x i16> %i.cja, i64 2 ; 2 uses
  store i16 %i.ciz, ptr %.1028311930, align 2, !tbaa !108
  br i1 %.not2936, label %bb.lr, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.cjc = getelementptr inbounds nuw i8, ptr %.1028311930, i64 2
  store i16 %i.cjb, ptr %i.cjc, align 2, !tbaa !108
  %i.cjd = getelementptr inbounds nuw [2 x i8], ptr %.1028311930, i64 %i.k
  br label %bb.ls

bb.lr:                                            ; preds = %bb.lp
  %i.cje = getelementptr inbounds nuw [2 x i8], ptr %.1028311930, i64 %i.k
  store i16 %i.cjb, ptr %i.cje, align 2, !tbaa !108
  %i.cjf = getelementptr inbounds nuw i8, ptr %.1028311930, i64 2
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lq, %bb.lr, %bb.ln, %bb.lo
  %.122833 = phi ptr [ %.1028311930, %bb.ln ], [ %.1028311930, %bb.lo ], [ %i.cjd, %bb.lq ], [ %i.cjf, %bb.lr ]
  %.82820 = phi ptr [ %i.cis, %bb.ln ], [ %i.civ, %bb.lo ], [ %.728191931, %bb.lq ], [ %.728191931, %bb.lr ]
  %i.cjg = add nuw nsw i32 %.328061932, 1         ; 2 uses
  %exitcond2048.not = icmp eq i32 %i.cjg, %6
  br i1 %exitcond2048.not, label %._crit_edge1936, label %.lr.ph1935, !llvm.loop !1247

._crit_edge1936:                                  ; preds = %bb.ls, %.preheader1765
  %.142755.lcssa = phi ptr [ %.132754.lcssa, %.preheader1765 ], [ %i.chu, %bb.ls ] ; 2 uses
  %.53.lcssa = phi ptr [ %.50.lcssa, %.preheader1765 ], [ %.55, %bb.ls ] ; 2 uses
  %indvars.iv.next2050 = add nuw nsw i64 %indvars.iv2049, 2 ; 3 uses
  %i.cjh = icmp slt i64 %indvars.iv.next2050, %invariant.op2175
  br i1 %i.cjh, label %bb.it, label %.preheader1764.loopexit, !llvm.loop !1248

bb.lt:                                            ; preds = %.lr.ph1994, %._crit_edge1988
  %indvars.iv2053 = phi i64 [ %i.bwt, %.lr.ph1994 ], [ %indvars.iv.next2054, %._crit_edge1988 ] ; 5 uses
  %.561993 = phi ptr [ %.40.lcssa, %.lr.ph1994 ], [ %.66.lcssa, %._crit_edge1988 ] ; 4 uses
  %.1527561992 = phi ptr [ %.102751.lcssa, %.lr.ph1994 ], [ %.192760.lcssa, %._crit_edge1988 ] ; 2 uses
  %i.cji = load ptr, ptr %1, align 8, !tbaa !24   ; 3 uses
  br i1 %.not, label %bb.lv, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.cjj = getelementptr inbounds nuw [2 x i8], ptr %i.cji, i64 %i.bwe
  %i.cjk = add nsw i64 %indvars.iv2053, %i.bwi
  %i.cjl = mul nsw i64 %i.cjk, %i.bwu             ; 2 uses
  %i.cjm = getelementptr inbounds [2 x i8], ptr %i.cjj, i64 %i.cjl
  br label %bb.lw

bb.lv:                                            ; preds = %bb.lt
  %i.cjn = add nsw i64 %indvars.iv2053, %i.bwi
  %i.cjo = mul i64 %i.k, %i.cjn                   ; 2 uses
  %i.cjp = getelementptr inbounds nuw [2 x i8], ptr %i.cji, i64 %i.cjo
  %i.cjq = getelementptr inbounds [2 x i8], ptr %i.cjp, i64 %i.bwg
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %bb.lu
  %.sink2199 = phi i64 [ %i.cjo, %bb.lv ], [ %i.bwe, %bb.lu ]
  %.sink2198 = phi i64 [ %i.bwg, %bb.lv ], [ %i.cjl, %bb.lu ]
  %.02696 = phi ptr [ %i.cjq, %bb.lv ], [ %i.cjm, %bb.lu ] ; 2 uses
  %i.cjr = getelementptr inbounds nuw [4 x i8], ptr %i.cji, i64 %.sink2199
  %i.cjs = getelementptr inbounds [4 x i8], ptr %i.cjr, i64 %.sink2198 ; 2 uses
  %.not2908 = icmp eq ptr %.561993, null
  br i1 %.not2908, label %.thread1710, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  br i1 %i.bwh, label %.thread1698, label %bb.ly

.thread1698:                                      ; preds = %bb.lx
  %i.cjt = load float, ptr %.561993, align 4, !tbaa !68
  %i.cju = fmul fast float %i.cjt, %8             ; 2 uses
  %i.cjv = insertelement <4 x float> poison, float %i.cju, i64 0
  %i.cjw = shufflevector <4 x float> %i.cjv, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread1710

bb.ly:                                            ; preds = %bb.lx
  br i1 %or.cond31, label %bb.lz, label %bb.ma

bb.lz:                                            ; preds = %bb.ly
  %i.cjx = load ptr, ptr %0, align 8, !tbaa !24
  %i.cjy = getelementptr inbounds [4 x i8], ptr %i.cjx, i64 %i.bwi
  %i.cjz = getelementptr inbounds nuw [4 x i8], ptr %i.cjy, i64 %indvars.iv2053 ; 2 uses
  %i.cka = load float, ptr %i.cjz, align 4, !tbaa !68
  %i.ckb = fmul fast float %i.cka, %8             ; 2 uses
  %i.ckc = insertelement <4 x float> poison, float %i.ckb, i64 0
  %i.ckd = shufflevector <4 x float> %i.ckc, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread1710

bb.ma:                                            ; preds = %bb.ly
  switch i32 %2, label %.thread1710 [
    i32 3, label %bb.mb
    i32 4, label %bb.mc
  ]

bb.mb:                                            ; preds = %bb.ma
  %i.cke = load ptr, ptr %0, align 8, !tbaa !24
  %i.ckf = add nsw i64 %indvars.iv2053, %i.bwi
  %i.ckg = mul i64 %i.t, %i.ckf
  %i.ckh = getelementptr inbounds nuw [4 x i8], ptr %i.cke, i64 %i.ckg
  %i.cki = getelementptr inbounds [4 x i8], ptr %i.ckh, i64 %i.bwd
  br label %.thread1710

bb.mc:                                            ; preds = %bb.ma
  %i.ckj = load ptr, ptr %0, align 8, !tbaa !24
  %i.ckk = getelementptr inbounds [4 x i8], ptr %i.ckj, i64 %i.bwd
  br label %.thread1710

.thread1710:                                      ; preds = %bb.ma, %bb.lz, %.thread1698, %bb.mb, %bb.mc, %bb.lw
  %.21155 = phi nsz <4 x float> [ zeroinitializer, %bb.lw ], [ zeroinitializer, %bb.mc ], [ zeroinitializer, %bb.ma ], [ zeroinitializer, %bb.mb ], [ %i.cjw, %.thread1698 ], [ %i.ckd, %bb.lz ] ; 2 uses
  %.59 = phi ptr [ null, %bb.lw ], [ %i.ckk, %bb.mc ], [ %.561993, %bb.ma ], [ %i.cki, %bb.mb ], [ %.561993, %.thread1698 ], [ %i.cjz, %bb.lz ] ; 2 uses
  %.22691 = phi nsz float [ 0.000000e+00, %bb.lw ], [ 0.000000e+00, %bb.mc ], [ 0.000000e+00, %bb.ma ], [ 0.000000e+00, %bb.mb ], [ %i.cju, %.thread1698 ], [ %i.ckb, %bb.lz ] ; 2 uses
  br i1 %i.bwj, label %.lr.ph1952, label %.preheader1763

.preheader1763:                                   ; preds = %bb.mz, %.thread1710
  %.31156.lcssa = phi <4 x float> [ %.21155, %.thread1710 ], [ %.41157, %bb.mz ]
  %.162757.lcssa = phi ptr [ %.1527561992, %.thread1710 ], [ %i.ckq, %bb.mz ] ; 2 uses
  %.60.lcssa = phi ptr [ %.59, %.thread1710 ], [ %.61, %bb.mz ] ; 2 uses
  %.12697.lcssa = phi ptr [ %.02696, %.thread1710 ], [ %.32699, %bb.mz ] ; 2 uses
  %.12693.lcssa = phi ptr [ %i.cjs, %.thread1710 ], [ %.22694, %bb.mz ] ; 2 uses
  %.02687.lcssa = phi i32 [ 0, %.thread1710 ], [ %i.bws, %bb.mz ] ; 3 uses
  %i.ckl = or disjoint i32 %.02687.lcssa, 3
  %i.ckm = icmp slt i32 %i.ckl, %6
  br i1 %i.ckm, label %.lr.ph1965, label %.preheader1762

.lr.ph1952:                                       ; preds = %.thread1710, %bb.mz
  %.026871951 = phi i32 [ %i.cmj, %bb.mz ], [ 0, %.thread1710 ]
  %.126931950 = phi ptr [ %.22694, %bb.mz ], [ %i.cjs, %.thread1710 ] ; 20 uses
  %.126971949 = phi ptr [ %.32699, %bb.mz ], [ %.02696, %.thread1710 ] ; 17 uses
  %.601948 = phi ptr [ %.61, %bb.mz ], [ %.59, %.thread1710 ] ; 6 uses
  %.1627571947 = phi ptr [ %i.ckq, %bb.mz ], [ %.1527561992, %.thread1710 ] ; 3 uses
  %.311561946 = phi <4 x float> [ %.41157, %bb.mz ], [ %.21155, %.thread1710 ] ; 5 uses
  %i.ckn = load <4 x float>, ptr %.1627571947, align 1, !tbaa !89 ; 4 uses
  %i.cko = getelementptr inbounds nuw i8, ptr %.1627571947, i64 16
  %i.ckp = load <4 x float>, ptr %i.cko, align 1, !tbaa !89 ; 4 uses
  %i.ckq = getelementptr inbounds nuw i8, ptr %.1627571947, i64 32 ; 2 uses
  %.not2919 = icmp eq ptr %.601948, null
  br i1 %.not2919, label %bb.mg, label %bb.md

bb.md:                                            ; preds = %.lr.ph1952
  br i1 %or.cond31, label %.thread1714, label %bb.me

.thread1714:                                      ; preds = %bb.md
  %i.ckr = fadd fast <4 x float> %i.ckn, %.311561946
  %i.cks = fadd fast <4 x float> %i.ckp, %.311561946
  br label %bb.mg

bb.me:                                            ; preds = %bb.md
  br i1 %or.cond37, label %bb.mf, label %bb.mg

end_hunk_1
