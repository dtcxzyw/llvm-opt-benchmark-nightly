Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Conv?download=true
inline.NumInlined: 3501
inline.NumDeleted: 1003
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN10fast_float22parse_number_slow_pathIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EEb:bb.a
  %i.ld = icmp eq i8 %i.la, 43
  %spec.select334.idx = zext i1 %i.ld to i64
  %spec.select334 = getelementptr inbounds nuw i8, ptr %.3285, i64 %spec.select334.idx
  br label %.thread316

.thread316:                                       ; preds = %bb.bp, %bb.bm, %bb.bo
  %.4286 = phi ptr [ %i.lc, %bb.bo ], [ %.3285, %bb.bm ], [ %spec.select334, %bb.bp ] ; 6 uses
  %.072.i = phi i1 [ true, %bb.bo ], [ false, %bb.bm ], [ false, %bb.bp ]
  %.4286523 = ptrtoaddr ptr %.4286 to i64
  %i.le = icmp eq ptr %.4286, %1
  br i1 %i.le, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.thread316
  %i.lf = load i8, ptr %.4286, align 1, !tbaa !17, !noalias !44
  %i.lg = sext i8 %i.lf to i32
  %i.lh = add nsw i32 %i.lg, -48
  %i.li = icmp ult i32 %i.lh, 10
  br i1 %i.li, label %.lr.ph412.preheader, label %bb.br

.lr.ph412.preheader:                              ; preds = %bb.bq
  %i.lj = sub i64 %i.a, %.4286523
  %scevgep524 = getelementptr i8, ptr %.4286, i64 %i.lj
  br label %.lr.ph412

bb.br:                                            ; preds = %bb.bq, %.thread316
  %i.lk = and i64 %3, 4
  %.not128.i20 = icmp eq i64 %i.lk, 0
  br i1 %.not128.i20, label %.thread606, label %.thread318

.lr.ph412:                                        ; preds = %.lr.ph412.preheader, %bb.bu
  %.073.i411 = phi i64 [ %.1.i31, %bb.bu ], [ 0, %.lr.ph412.preheader ] ; 4 uses
  %.9291410 = phi ptr [ %i.lu, %bb.bu ], [ %.4286, %.lr.ph412.preheader ] ; 3 uses
  %i.ll = load i8, ptr %.9291410, align 1, !tbaa !17, !noalias !44 ; 2 uses
  %i.lm = sext i8 %i.ll to i32
  %i.ln = add nsw i32 %i.lm, -48
  %i.lo = icmp ult i32 %i.ln, 10
  br i1 %i.lo, label %bb.bs, label %.critedge4.i

bb.bs:                                            ; preds = %.lr.ph412
  %i.lp = icmp slt i64 %.073.i411, 268435456
  br i1 %i.lp, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.lq = add i8 %i.ll, -48
  %i.lr = mul nsw i64 %.073.i411, 10
  %i.ls = zext i8 %i.lq to i64
  %i.lt = add nsw i64 %i.lr, %i.ls
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.1.i31 = phi i64 [ %i.lt, %bb.bt ], [ %.073.i411, %bb.bs ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.9291410, i64 1 ; 2 uses
  %.not127.i29 = icmp eq ptr %i.lu, %1
  br i1 %.not127.i29, label %.critedge4.i, label %.lr.ph412, !llvm.loop !26

.critedge4.i:                                     ; preds = %bb.bu, %.lr.ph412
  %.9291.lcssa.ph = phi ptr [ %scevgep524, %bb.bu ], [ %.9291410, %.lr.ph412 ]
  %.073.i.lcssa.ph = phi i64 [ %.1.i31, %bb.bu ], [ %.073.i411, %.lr.ph412 ] ; 2 uses
  %i.lv = sub nsw i64 0, %.073.i.lcssa.ph
  %spec.select.i30 = select i1 %.072.i, i64 %i.lv, i64 %.073.i.lcssa.ph ; 2 uses
  %i.lw = add nsw i64 %spec.select.i30, %.074.i
  br label %.thread318

bb.bv:                                            ; preds = %bb.bj, %bb.bi
  %i.lx = and i64 %3, 5
  %or.cond335.not.not = icmp eq i64 %i.lx, 1
  br i1 %or.cond335.not.not, label %.thread606, label %.thread318

.thread318:                                       ; preds = %bb.br, %.critedge4.i, %bb.bv
  %.6288 = phi ptr [ %.2284, %bb.bv ], [ %.9291.lcssa.ph, %.critedge4.i ], [ %.2284, %bb.br ] ; 3 uses
  %.377.i = phi i64 [ %.074.i, %bb.bv ], [ %i.lw, %.critedge4.i ], [ %.074.i, %bb.br ] ; 2 uses
  %.5.i23 = phi i64 [ 0, %bb.bv ], [ %spec.select.i30, %.critedge4.i ], [ 0, %bb.br ]
  %i.ly = icmp sgt i64 %.080.i15, 19
  br i1 %i.ly, label %.preheader368, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

.preheader368:                                    ; preds = %.thread318
  br i1 %.not111.i, label %.preheader367, label %.lr.ph421

.lr.ph421:                                        ; preds = %.preheader368, %.critedge8.i
  %.0.i25420 = phi ptr [ %i.md, %.critedge8.i ], [ %.0282, %.preheader368 ] ; 2 uses
  %.181.i419 = phi i64 [ %spec.select134.i, %.critedge8.i ], [ %.080.i15, %.preheader368 ] ; 2 uses
  %i.lz = load i8, ptr %.0.i25420, align 1, !tbaa !17 ; 2 uses
  %i.ma = icmp eq i8 %i.lz, 48                    ; 2 uses
  %i.mb = icmp eq i8 %i.lz, %.sroa.2.8.extract.trunc.i
  %or.cond.i27 = select i1 %i.ma, i1 true, i1 %i.mb
  br i1 %or.cond.i27, label %.critedge8.i, label %.critedge6.i

.critedge8.i:                                     ; preds = %.lr.ph421
  %i.mc = sext i1 %i.ma to i64
  %spec.select134.i = add nsw i64 %.181.i419, %i.mc ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.0.i25420, i64 1 ; 2 uses
  %.not129.i26 = icmp eq ptr %i.md, %1
  br i1 %.not129.i26, label %.critedge6.i, label %.lr.ph421, !llvm.loop !27

.critedge6.i:                                     ; preds = %.critedge8.i, %.lr.ph421
  %.181.i.lcssa.ph = phi i64 [ %spec.select134.i, %.critedge8.i ], [ %.181.i419, %.lr.ph421 ]
  %i.me = icmp sgt i64 %.181.i.lcssa.ph, 19
  br i1 %i.me, label %.preheader367, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

.preheader367:                                    ; preds = %.preheader368, %.critedge6.i
  %.not494 = icmp eq ptr %.0282, %.1283
  br i1 %.not494, label %._crit_edge.thread, label %.lr.ph427

.lr.ph427:                                        ; preds = %.preheader367, %.lr.ph427
  %.3276426 = phi i64 [ %i.mj, %.lr.ph427 ], [ 0, %.preheader367 ]
  %.7289425 = phi ptr [ %i.mk, %.lr.ph427 ], [ %.0282, %.preheader367 ] ; 2 uses
  %i.mf = mul nuw i64 %.3276426, 10
  %i.mg = load i8, ptr %.7289425, align 1, !tbaa !17
  %i.mh = sext i8 %i.mg to i64
  %i.mi = add i64 %i.mf, -48
  %i.mj = add i64 %i.mi, %i.mh                    ; 5 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.7289425, i64 1 ; 3 uses
  %i.ml = icmp ult i64 %i.mj, 1000000000000000000
  %i.mm = icmp ne ptr %i.mk, %.1283
  %i.mn = select i1 %i.ml, i1 %i.mm, i1 false
  br i1 %i.mn, label %.lr.ph427, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph427
  %i.mo = icmp ugt i64 %i.mj, 999999999999999999
  br i1 %i.mo, label %bb.bw, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader367, %._crit_edge
  %.3276.lcssa594 = phi i64 [ %i.mj, %._crit_edge ], [ 0, %.preheader367 ] ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.17174.0, i64 %.sroa.20176.0
  %.not495 = icmp samesign eq i64 %.sroa.20176.0, 0
  br i1 %.not495, label %._crit_edge434, label %.lr.ph433

.lr.ph433:                                        ; preds = %._crit_edge.thread, %.lr.ph433
  %.4277431 = phi i64 [ %i.mu, %.lr.ph433 ], [ %.3276.lcssa594, %._crit_edge.thread ]
  %.8290430 = phi ptr [ %i.mv, %.lr.ph433 ], [ %.sroa.17174.0, %._crit_edge.thread ] ; 2 uses
  %i.mq = mul nuw i64 %.4277431, 10
  %i.mr = load i8, ptr %.8290430, align 1, !tbaa !17
  %i.ms = sext i8 %i.mr to i64
  %i.mt = add i64 %i.mq, -48
  %i.mu = add i64 %i.mt, %i.ms                    ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.8290430, i64 1 ; 3 uses
  %i.mw = icmp ult i64 %i.mu, 1000000000000000000
  %i.mx = icmp ne ptr %i.mv, %i.mp
  %i.my = select i1 %i.mw, i1 %i.mx, i1 false
  br i1 %i.my, label %.lr.ph433, label %._crit_edge434, !llvm.loop !48

._crit_edge434:                                   ; preds = %.lr.ph433, %._crit_edge.thread
  %.8290.lcssa = phi ptr [ %.sroa.17174.0, %._crit_edge.thread ], [ %i.mv, %.lr.ph433 ]
  %.4277.lcssa = phi i64 [ %.3276.lcssa594, %._crit_edge.thread ], [ %i.mu, %.lr.ph433 ]
  %i.mz = ptrtoint ptr %.sroa.17174.0 to i64
  br label %bb.bw

bb.bw:                                            ; preds = %._crit_edge, %._crit_edge434
  %.8290.lcssa.sink = phi ptr [ %.8290.lcssa, %._crit_edge434 ], [ %i.mk, %._crit_edge ]
  %.sink656 = phi i64 [ %i.mz, %._crit_edge434 ], [ %i.il, %._crit_edge ]
  %.5278 = phi i64 [ %.4277.lcssa, %._crit_edge434 ], [ %i.mj, %._crit_edge ]
  %i.na = ptrtoint ptr %.8290.lcssa.sink to i64
  %i.nb = sub i64 %.sink656, %i.na
  %.478.i = add nsw i64 %i.nb, %.5.i23
  br label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit: ; preds = %.thread318, %.critedge6.i, %bb.bw, %.thread311, %.critedge9.i, %bb.al
  %.6.i24.sink = phi i64 [ %.384.i, %.thread311 ], [ %.485.i, %bb.al ], [ %.384.i, %.critedge9.i ], [ %.478.i, %bb.bw ], [ %.377.i, %.critedge6.i ], [ %.377.i, %.thread318 ] ; 16 uses
  %.2275.sink = phi i64 [ %.1306, %.thread311 ], [ %.5, %bb.al ], [ %.1306, %.critedge9.i ], [ %.5278, %bb.bw ], [ %.1274, %.critedge6.i ], [ %.1274, %.thread318 ] ; 18 uses
  %.6288.sink = phi ptr [ %.6270, %.thread311 ], [ %.6270, %bb.al ], [ %.6270, %.critedge9.i ], [ %.6288, %bb.bw ], [ %.6288, %.critedge6.i ], [ %.6288, %.thread318 ] ; 8 uses
  %.sroa.10170.0.sink = phi i8 [ 0, %.thread311 ], [ 1, %bb.al ], [ 0, %.critedge9.i ], [ 1, %bb.bw ], [ 0, %.critedge6.i ], [ 0, %.thread318 ] ; 2 uses
  %.0282.sink = phi ptr [ %.0264, %.thread311 ], [ %.0264, %bb.al ], [ %.0264, %.critedge9.i ], [ %.0282, %bb.bw ], [ %.0282, %.critedge6.i ], [ %.0282, %.thread318 ]
  %.sink658 = phi i64 [ %i.bm, %.thread311 ], [ %i.bm, %bb.al ], [ %i.bm, %.critedge9.i ], [ %i.in, %bb.bw ], [ %i.in, %.critedge6.i ], [ %i.in, %.thread318 ]
  %.sroa.17174.0.sink = phi ptr [ %.sroa.17.0304, %.thread311 ], [ %.sroa.17.0304, %bb.al ], [ %.sroa.17.0304, %.critedge9.i ], [ %.sroa.17174.0, %bb.bw ], [ %.sroa.17174.0, %.critedge6.i ], [ %.sroa.17174.0, %.thread318 ]
  %.sroa.20176.0.sink = phi i64 [ %.sroa.20.0305, %.thread311 ], [ %.sroa.20.0305, %bb.al ], [ %.sroa.20.0305, %.critedge9.i ], [ %.sroa.20176.0, %bb.bw ], [ %.sroa.20176.0, %.critedge6.i ], [ %.sroa.20176.0, %.thread318 ]
  store i64 %.6.i24.sink, ptr %7, align 8, !tbaa !32
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.2275.sink, ptr %.sroa.5166.0..sroa_idx, align 8, !tbaa !32
  %.sroa.6167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.6288.sink, ptr %.sroa.6167.0..sroa_idx, align 8, !tbaa !49
  %.sroa.7168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 %i.e, ptr %.sroa.7168.0..sroa_idx, align 8, !tbaa !50
  %.sroa.8169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 25
  store i8 1, ptr %.sroa.8169.0..sroa_idx, align 1, !tbaa !50
  %.sroa.10170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i8 %.sroa.10170.0.sink, ptr %.sroa.10170.0..sroa_idx, align 2, !tbaa !50
  %.sroa.12172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %.0282.sink, ptr %.sroa.12172.0..sroa_idx, align 8, !tbaa !49
  %.sroa.15173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sink658, ptr %.sroa.15173.0..sroa_idx, align 8, !tbaa !32
  %.sroa.17174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %.sroa.17174.0.sink, ptr %.sroa.17174.0..sroa_idx, align 8, !tbaa !49
  %.sroa.20176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 %.sroa.20176.0.sink, ptr %.sroa.20176.0..sroa_idx, align 8, !tbaa !32
  %.sroa.22177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 0, ptr %.sroa.22177.0..sroa_idx, align 8
  %i.nc = trunc nuw i8 %.sroa.10170.0.sink to i1  ; 2 uses
  %i.nd = add i64 %.6.i24.sink, -11
  %or.cond659 = icmp ult i64 %i.nd, -21
  %or.cond684 = select i1 %i.nc, i1 true, i1 %or.cond659
  br i1 %or.cond684, label %_ZN10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.i.thread, label %bb.bx

bb.bx:                                            ; preds = %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit
  %i.ne = load volatile float, ptr @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !29 ; 2 uses
  %i.nf = fadd float %i.ne, 1.000000e+00
  %i.ng = fsub float 1.000000e+00, %i.ne
  %i.nh = fcmp oeq float %i.nf, %i.ng
  br i1 %i.nh, label %bb.by, label %bb.cc

.thread606:                                       ; preds = %bb.bv, %bb.br, %.critedge133.i, %bb.ap, %bb.ao, %bb.ak, %bb.ag, %._crit_edge459, %bb.q, %.critedge.i, %bb.d, %bb.c
  %.ph = phi ptr [ %i.gg, %bb.ao ], [ %.2266303, %bb.ak ], [ %.2284, %.critedge133.i ], [ %i.gg, %bb.ap ], [ %.4286, %bb.br ], [ %i.f, %bb.c ], [ %.10.lcssa, %._crit_edge459 ], [ %i.f, %bb.d ], [ %.1265, %.critedge.i ], [ %.0264, %bb.q ], [ %.4268, %bb.ag ], [ %.2284, %bb.bv ] ; 2 uses
  %i.ni = load volatile float, ptr @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !29 ; 2 uses
  %i.nj = fadd float %i.ni, 1.000000e+00
  %i.nk = fsub float 1.000000e+00, %i.ni
  %i.nl = fcmp oeq float %i.nj, %i.nk
  br i1 %i.nl, label %.split.thread, label %.thread628

.split.thread:                                    ; preds = %.thread606
  store float 0.000000e+00, ptr %2, align 4, !tbaa !29
  br label %_ZN10fast_float19from_chars_advancedIfcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.by:                                            ; preds = %bb.bx
  %.not31.i.i = icmp ugt i64 %.2275.sink, 16777216
  br i1 %.not31.i.i, label %_ZN10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.i.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nm = uitofp nneg i64 %.2275.sink to float    ; 3 uses
  store float %i.nm, ptr %2, align 4, !tbaa !29
  %i.nn = icmp slt i64 %.6.i24.sink, 0
  br i1 %i.nn, label %bb.ca, label %.split

.split:                                           ; preds = %bb.bz
  %i.no = getelementptr inbounds nuw [4 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE.const, i64 %.6.i24.sink
  %i.np = load float, ptr %i.no, align 4, !tbaa !29
  %i.nq = fmul float %i.np, %i.nm                 ; 2 uses
  store float %i.nq, ptr %2, align 4, !tbaa !29
  br i1 %i.d, label %bb.cb, label %_ZN10fast_float19from_chars_advancedIfcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.ca:                                            ; preds = %bb.bz
  %i.nr = sub nsw i64 0, %.6.i24.sink
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE.const, i64 %i.nr
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !29
  %i.nu = fdiv float %i.nm, %i.nt                 ; 2 uses
  store float %i.nu, ptr %2, align 4, !tbaa !29
  br i1 %i.d, label %bb.cb, label %_ZN10fast_float19from_chars_advancedIfcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.cb:                                            ; preds = %.split, %bb.ca
  %storemerge32.i.i618 = phi float [ %i.nq, %.split ], [ %i.nu, %bb.ca ]
  %i.nv = fneg float %storemerge32.i.i618
  store float %i.nv, ptr %2, align 4, !tbaa !29
  br label %_ZN10fast_float19from_chars_advancedIfcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.cc:                                            ; preds = %bb.bx
  %i.nw = icmp sgt i64 %.6.i24.sink, -1
  br i1 %i.nw, label %bb.cd, label %_ZN10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.i.thread

bb.cd:                                            ; preds = %bb.cc
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIfvE12max_mantissaE.const, i64 %.6.i24.sink
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !32
  %.not30.i.i = icmp ugt i64 %.2275.sink, %i.ny
  br i1 %.not30.i.i, label %_ZN10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.i.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.nz = icmp eq i64 %.2275.sink, 0
  br i1 %i.nz, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.d, label %bb.cg, label %.thread628

bb.cg:                                            ; preds = %bb.cf
  br label %.thread628

.thread628:                                       ; preds = %.thread606, %bb.cf, %bb.cg
  %i.oa = phi ptr [ %.6288.sink, %bb.cg ], [ %.6288.sink, %bb.cf ], [ %.ph, %.thread606 ]
  %i.ob = phi float [ -0.000000e+00, %bb.cg ], [ 0.000000e+00, %bb.cf ], [ 0.000000e+00, %.thread606 ]
  store float %i.ob, ptr %2, align 4, !tbaa !29
  br label %_ZN10fast_float19from_chars_advancedIfcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.ch:                                            ; preds = %bb.ce
  %i.oc = uitofp i64 %.2275.sink to float
  %i.od = getelementptr inbounds nuw [4 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE.const, i64 %.6.i24.sink
  %i.oe = load float, ptr %i.od, align 4, !tbaa !29
  %i.of = fmul float %i.oe, %i.oc                 ; 2 uses
  %i.og = fneg float %i.of
  %storemerge.i.i = select i1 %i.d, float %i.og, float %i.of
  store float %storemerge.i.i, ptr %2, align 4, !tbaa !29
  br label %_ZN10fast_float19from_chars_advancedIfcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

_ZN10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.i.thread: ; preds = %bb.cc, %bb.cd, %bb.by, %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit
  %i.oh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.oi = icmp eq i64 %.2275.sink, 0
  %i.oj = icmp slt i64 %.6.i24.sink, -64          ; 2 uses
  %or.cond336 = select i1 %i.oi, i1 true, i1 %i.oj
  br i1 %or.cond336, label %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i, label %bb.ci

bb.ci:                                            ; preds = %_ZN10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.i.thread
  %i.ok = icmp sgt i64 %.6.i24.sink, 38
  br i1 %i.ok, label %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i, label %.noexc74

.noexc74:                                         ; preds = %bb.ci
  %i.ol = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.2275.sink, i1 true) ; 2 uses
  %i.om = trunc nuw nsw i64 %i.ol to i32
  %i.on = shl i64 %.2275.sink, %i.ol
  %i.oo = trunc nsw i64 %.6.i24.sink to i32       ; 2 uses
  %i.op = shl nsw i32 %i.oo, 1
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E.const, i64 %i.oq ; 2 uses
  %i.os = getelementptr i8, ptr %i.or, i64 5472
  %i.ot = load i64, ptr %i.os, align 16, !tbaa !32
  %i.ou = zext i64 %i.on to i128                  ; 2 uses
  %i.ov = zext i64 %i.ot to i128
  %i.ow = mul nuw i128 %i.ov, %i.ou               ; 2 uses
  %i.ox = trunc i128 %i.ow to i64                 ; 2 uses
  %i.oy = lshr i128 %i.ow, 64
  %i.oz = trunc nuw i128 %i.oy to i64             ; 3 uses
  %i.pa = and i64 %i.oz, 274877906943
  %i.pb = icmp eq i64 %i.pa, 274877906943
  br i1 %i.pb, label %.noexc75, label %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit76

.noexc75:                                         ; preds = %.noexc74
  %i.pc = getelementptr i8, ptr %i.or, i64 5480
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !32
  %i.pe = zext i64 %i.pd to i128
  %i.pf = mul nuw i128 %i.pe, %i.ou
  %i.pg = lshr i128 %i.pf, 64
  %i.ph = trunc nuw i128 %i.pg to i64             ; 2 uses
  %i.pi = add i64 %i.ph, %i.ox                    ; 2 uses
  %i.pj = icmp ult i64 %i.pi, %i.ph
  %i.pk = zext i1 %i.pj to i64
  %spec.select.i73 = add nuw i64 %i.pk, %i.oz
  br label %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit76

_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit76: ; preds = %.noexc75, %.noexc74
  %.pn355 = phi i64 [ %i.pi, %.noexc75 ], [ %i.ox, %.noexc74 ]
  %spec.select.i73.pn = phi i64 [ %spec.select.i73, %.noexc75 ], [ %i.oz, %.noexc74 ] ; 3 uses
  %i.pl = lshr i64 %spec.select.i73.pn, 63        ; 2 uses
  %i.pm = trunc nuw nsw i64 %i.pl to i32
  %i.pn = or disjoint i64 %i.pl, 38               ; 2 uses
  %i.po = lshr i64 %spec.select.i73.pn, %i.pn     ; 6 uses
  %i.pp = mul nsw i32 %i.oo, 217706
  %i.pq = ashr i32 %i.pp, 16
  %i.pr = add nsw i32 %i.pq, 190
  %i.ps = sub nsw i32 %i.pr, %i.om
  %i.pt = add nsw i32 %i.ps, %i.pm                ; 3 uses
  %i.pu = icmp slt i32 %i.pt, 1
  br i1 %i.pu, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit76
  %i.pv = sub nsw i32 1, %i.pt                    ; 2 uses
  %i.pw = icmp samesign ugt i32 %i.pv, 63
  br i1 %i.pw, label %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.px = zext nneg i32 %i.pv to i64
  %i.py = lshr i64 %i.po, %i.px                   ; 2 uses
  %i.pz = and i64 %i.py, 1
  %i.qa = add nuw nsw i64 %i.pz, %i.py            ; 2 uses
  %i.qb = lshr i64 %i.qa, 1
  %i.qc = icmp samesign ugt i64 %i.qa, 16777215
  %i.qd = zext i1 %i.qc to i32
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i

bb.cl:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit76
  %i.qe = icmp ugt i64 %.pn355, 1
  %i.qf = add nsw i64 %.6.i24.sink, -11
  %i.qg = icmp ult i64 %i.qf, -28
  %or.cond338 = select i1 %i.qe, i1 true, i1 %i.qg
  br i1 %or.cond338, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.qh = and i64 %i.po, 3
  %i.qi = icmp eq i64 %i.qh, 1
  %i.qj = shl i64 %i.po, %i.pn
  %i.qk = icmp eq i64 %i.qj, %spec.select.i73.pn
  %or.cond.i58.i = select i1 %i.qi, i1 %i.qk, i1 false
  %i.ql = and i64 %i.po, 67108860
  %spec.select339 = select i1 %or.cond.i58.i, i64 %i.ql, i64 %i.po
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.sroa.0239.0 = phi i64 [ %i.po, %bb.cl ], [ %spec.select339, %bb.cm ] ; 2 uses
  %i.qm = and i64 %.sroa.0239.0, 1
  %i.qn = add nuw nsw i64 %i.qm, %.sroa.0239.0    ; 2 uses
  %i.qo = lshr i64 %i.qn, 1
  %.not22.i49.i = icmp samesign ugt i64 %i.qn, 33554431 ; 2 uses
  %i.qp = zext i1 %.not22.i49.i to i32
  %spec.select341 = add nuw nsw i32 %i.pt, %i.qp  ; 2 uses
  %i.qq = and i64 %i.qo, 9223372036846387199
  %.not23.i50.i = icmp samesign ugt i32 %spec.select341, 254 ; 2 uses
  %.not = select i1 %.not23.i50.i, i1 true, i1 %.not22.i49.i
  %spec.select349 = select i1 %.not, i64 0, i64 %i.qq
  %spec.select350 = select i1 %.not23.i50.i, i32 255, i32 %spec.select341
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i

_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i: ; preds = %bb.cn, %bb.cj, %bb.ci, %_ZN10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.i.thread, %bb.ck
  %.sroa.0239.2 = phi i64 [ 0, %bb.cj ], [ 0, %_ZN10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.i.thread ], [ 0, %bb.ci ], [ %i.qb, %bb.ck ], [ %spec.select349, %bb.cn ] ; 3 uses
  %.sroa.18244.1 = phi i32 [ 0, %bb.cj ], [ 0, %_ZN10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.i.thread ], [ 255, %bb.ci ], [ %i.qd, %bb.ck ], [ %spec.select350, %bb.cn ] ; 3 uses
  br i1 %i.nc, label %bb.co, label %.thread325

bb.co:                                            ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i
  %i.qr = add i64 %.2275.sink, 1                  ; 3 uses
  %i.qs = icmp eq i64 %i.qr, 0
  %or.cond342 = select i1 %i.qs, i1 true, i1 %i.oj
  br i1 %or.cond342, label %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qt = icmp sgt i64 %.6.i24.sink, 38
  br i1 %i.qt, label %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i, label %.noexc69

.noexc69:                                         ; preds = %bb.cp
  %i.qu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.qr, i1 true) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN10fast_float22parse_number_slow_pathIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EEb:bb.a
  %i.ld = icmp eq i8 %i.la, 43
  %spec.select326.idx = zext i1 %i.ld to i64
  %spec.select326 = getelementptr inbounds nuw i8, ptr %.3277, i64 %spec.select326.idx
  br label %.thread308

.thread308:                                       ; preds = %bb.bp, %bb.bm, %bb.bo
  %.4278 = phi ptr [ %i.lc, %bb.bo ], [ %.3277, %bb.bm ], [ %spec.select326, %bb.bp ] ; 6 uses
  %.072.i = phi i1 [ true, %bb.bo ], [ false, %bb.bm ], [ false, %bb.bp ]
  %.4278515 = ptrtoaddr ptr %.4278 to i64
  %i.le = icmp eq ptr %.4278, %1
  br i1 %i.le, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.thread308
  %i.lf = load i8, ptr %.4278, align 1, !tbaa !17, !noalias !109
  %i.lg = sext i8 %i.lf to i32
  %i.lh = add nsw i32 %i.lg, -48
  %i.li = icmp ult i32 %i.lh, 10
  br i1 %i.li, label %.lr.ph404.preheader, label %bb.br

.lr.ph404.preheader:                              ; preds = %bb.bq
  %i.lj = sub i64 %i.a, %.4278515
  %scevgep516 = getelementptr i8, ptr %.4278, i64 %i.lj
  br label %.lr.ph404

bb.br:                                            ; preds = %bb.bq, %.thread308
  %i.lk = and i64 %3, 4
  %.not128.i20 = icmp eq i64 %i.lk, 0
  br i1 %.not128.i20, label %.thread598, label %.thread310

.lr.ph404:                                        ; preds = %.lr.ph404.preheader, %bb.bu
  %.073.i403 = phi i64 [ %.1.i31, %bb.bu ], [ 0, %.lr.ph404.preheader ] ; 4 uses
  %.9283402 = phi ptr [ %i.lu, %bb.bu ], [ %.4278, %.lr.ph404.preheader ] ; 3 uses
  %i.ll = load i8, ptr %.9283402, align 1, !tbaa !17, !noalias !109 ; 2 uses
  %i.lm = sext i8 %i.ll to i32
  %i.ln = add nsw i32 %i.lm, -48
  %i.lo = icmp ult i32 %i.ln, 10
  br i1 %i.lo, label %bb.bs, label %.critedge4.i

bb.bs:                                            ; preds = %.lr.ph404
  %i.lp = icmp slt i64 %.073.i403, 268435456
  br i1 %i.lp, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.lq = add i8 %i.ll, -48
  %i.lr = mul nsw i64 %.073.i403, 10
  %i.ls = zext i8 %i.lq to i64
  %i.lt = add nsw i64 %i.lr, %i.ls
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.1.i31 = phi i64 [ %i.lt, %bb.bt ], [ %.073.i403, %bb.bs ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.9283402, i64 1 ; 2 uses
  %.not127.i29 = icmp eq ptr %i.lu, %1
  br i1 %.not127.i29, label %.critedge4.i, label %.lr.ph404, !llvm.loop !26

.critedge4.i:                                     ; preds = %bb.bu, %.lr.ph404
  %.9283.lcssa.ph = phi ptr [ %scevgep516, %bb.bu ], [ %.9283402, %.lr.ph404 ]
  %.073.i.lcssa.ph = phi i64 [ %.1.i31, %bb.bu ], [ %.073.i403, %.lr.ph404 ] ; 2 uses
  %i.lv = sub nsw i64 0, %.073.i.lcssa.ph
  %spec.select.i30 = select i1 %.072.i, i64 %i.lv, i64 %.073.i.lcssa.ph ; 2 uses
  %i.lw = add nsw i64 %spec.select.i30, %.074.i
  br label %.thread310

bb.bv:                                            ; preds = %bb.bj, %bb.bi
  %i.lx = and i64 %3, 5
  %or.cond327.not.not = icmp eq i64 %i.lx, 1
  br i1 %or.cond327.not.not, label %.thread598, label %.thread310

.thread310:                                       ; preds = %bb.br, %.critedge4.i, %bb.bv
  %.6280 = phi ptr [ %.2276, %bb.bv ], [ %.9283.lcssa.ph, %.critedge4.i ], [ %.2276, %bb.br ] ; 3 uses
  %.377.i = phi i64 [ %.074.i, %bb.bv ], [ %i.lw, %.critedge4.i ], [ %.074.i, %bb.br ] ; 2 uses
  %.5.i23 = phi i64 [ 0, %bb.bv ], [ %spec.select.i30, %.critedge4.i ], [ 0, %bb.br ]
  %i.ly = icmp sgt i64 %.080.i15, 19
  br i1 %i.ly, label %.preheader360, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

.preheader360:                                    ; preds = %.thread310
  br i1 %.not111.i, label %.preheader359, label %.lr.ph413

.lr.ph413:                                        ; preds = %.preheader360, %.critedge8.i
  %.0.i25412 = phi ptr [ %i.md, %.critedge8.i ], [ %.0274, %.preheader360 ] ; 2 uses
  %.181.i411 = phi i64 [ %spec.select134.i, %.critedge8.i ], [ %.080.i15, %.preheader360 ] ; 2 uses
  %i.lz = load i8, ptr %.0.i25412, align 1, !tbaa !17 ; 2 uses
  %i.ma = icmp eq i8 %i.lz, 48                    ; 2 uses
  %i.mb = icmp eq i8 %i.lz, %.sroa.2.8.extract.trunc.i
  %or.cond.i27 = select i1 %i.ma, i1 true, i1 %i.mb
  br i1 %or.cond.i27, label %.critedge8.i, label %.critedge6.i

.critedge8.i:                                     ; preds = %.lr.ph413
  %i.mc = sext i1 %i.ma to i64
  %spec.select134.i = add nsw i64 %.181.i411, %i.mc ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.0.i25412, i64 1 ; 2 uses
  %.not129.i26 = icmp eq ptr %i.md, %1
  br i1 %.not129.i26, label %.critedge6.i, label %.lr.ph413, !llvm.loop !27

.critedge6.i:                                     ; preds = %.critedge8.i, %.lr.ph413
  %.181.i.lcssa.ph = phi i64 [ %spec.select134.i, %.critedge8.i ], [ %.181.i411, %.lr.ph413 ]
  %i.me = icmp sgt i64 %.181.i.lcssa.ph, 19
  br i1 %i.me, label %.preheader359, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

.preheader359:                                    ; preds = %.preheader360, %.critedge6.i
  %.not486 = icmp eq ptr %.0274, %.1275
  br i1 %.not486, label %._crit_edge.thread, label %.lr.ph419

.lr.ph419:                                        ; preds = %.preheader359, %.lr.ph419
  %.3268418 = phi i64 [ %i.mj, %.lr.ph419 ], [ 0, %.preheader359 ]
  %.7281417 = phi ptr [ %i.mk, %.lr.ph419 ], [ %.0274, %.preheader359 ] ; 2 uses
  %i.mf = mul nuw i64 %.3268418, 10
  %i.mg = load i8, ptr %.7281417, align 1, !tbaa !17
  %i.mh = sext i8 %i.mg to i64
  %i.mi = add i64 %i.mf, -48
  %i.mj = add i64 %i.mi, %i.mh                    ; 5 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.7281417, i64 1 ; 3 uses
  %i.ml = icmp ult i64 %i.mj, 1000000000000000000
  %i.mm = icmp ne ptr %i.mk, %.1275
  %i.mn = select i1 %i.ml, i1 %i.mm, i1 false
  br i1 %i.mn, label %.lr.ph419, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph419
  %i.mo = icmp ugt i64 %i.mj, 999999999999999999
  br i1 %i.mo, label %bb.bw, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader359, %._crit_edge
  %.3268.lcssa586 = phi i64 [ %i.mj, %._crit_edge ], [ 0, %.preheader359 ] ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.17166.0, i64 %.sroa.20168.0
  %.not487 = icmp samesign eq i64 %.sroa.20168.0, 0
  br i1 %.not487, label %._crit_edge426, label %.lr.ph425

.lr.ph425:                                        ; preds = %._crit_edge.thread, %.lr.ph425
  %.4269423 = phi i64 [ %i.mu, %.lr.ph425 ], [ %.3268.lcssa586, %._crit_edge.thread ]
  %.8282422 = phi ptr [ %i.mv, %.lr.ph425 ], [ %.sroa.17166.0, %._crit_edge.thread ] ; 2 uses
  %i.mq = mul nuw i64 %.4269423, 10
  %i.mr = load i8, ptr %.8282422, align 1, !tbaa !17
  %i.ms = sext i8 %i.mr to i64
  %i.mt = add i64 %i.mq, -48
  %i.mu = add i64 %i.mt, %i.ms                    ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.8282422, i64 1 ; 3 uses
  %i.mw = icmp ult i64 %i.mu, 1000000000000000000
  %i.mx = icmp ne ptr %i.mv, %i.mp
  %i.my = select i1 %i.mw, i1 %i.mx, i1 false
  br i1 %i.my, label %.lr.ph425, label %._crit_edge426, !llvm.loop !48

._crit_edge426:                                   ; preds = %.lr.ph425, %._crit_edge.thread
  %.8282.lcssa = phi ptr [ %.sroa.17166.0, %._crit_edge.thread ], [ %i.mv, %.lr.ph425 ]
  %.4269.lcssa = phi i64 [ %.3268.lcssa586, %._crit_edge.thread ], [ %i.mu, %.lr.ph425 ]
  %i.mz = ptrtoint ptr %.sroa.17166.0 to i64
  br label %bb.bw

bb.bw:                                            ; preds = %._crit_edge, %._crit_edge426
  %.8282.lcssa.sink = phi ptr [ %.8282.lcssa, %._crit_edge426 ], [ %i.mk, %._crit_edge ]
  %.sink648 = phi i64 [ %i.mz, %._crit_edge426 ], [ %i.il, %._crit_edge ]
  %.5270 = phi i64 [ %.4269.lcssa, %._crit_edge426 ], [ %i.mj, %._crit_edge ]
  %i.na = ptrtoint ptr %.8282.lcssa.sink to i64
  %i.nb = sub i64 %.sink648, %i.na
  %.478.i = add nsw i64 %i.nb, %.5.i23
  br label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit: ; preds = %.thread310, %.critedge6.i, %bb.bw, %.thread303, %.critedge9.i, %bb.al
  %.6.i24.sink = phi i64 [ %.384.i, %.thread303 ], [ %.485.i, %bb.al ], [ %.384.i, %.critedge9.i ], [ %.478.i, %bb.bw ], [ %.377.i, %.critedge6.i ], [ %.377.i, %.thread310 ] ; 16 uses
  %.2267.sink = phi i64 [ %.1298, %.thread303 ], [ %.5, %bb.al ], [ %.1298, %.critedge9.i ], [ %.5270, %bb.bw ], [ %.1266, %.critedge6.i ], [ %.1266, %.thread310 ] ; 18 uses
  %.6280.sink = phi ptr [ %.6262, %.thread303 ], [ %.6262, %bb.al ], [ %.6262, %.critedge9.i ], [ %.6280, %bb.bw ], [ %.6280, %.critedge6.i ], [ %.6280, %.thread310 ] ; 8 uses
  %.sroa.10162.0.sink = phi i8 [ 0, %.thread303 ], [ 1, %bb.al ], [ 0, %.critedge9.i ], [ 1, %bb.bw ], [ 0, %.critedge6.i ], [ 0, %.thread310 ] ; 2 uses
  %.0274.sink = phi ptr [ %.0256, %.thread303 ], [ %.0256, %bb.al ], [ %.0256, %.critedge9.i ], [ %.0274, %bb.bw ], [ %.0274, %.critedge6.i ], [ %.0274, %.thread310 ]
  %.sink650 = phi i64 [ %i.bm, %.thread303 ], [ %i.bm, %bb.al ], [ %i.bm, %.critedge9.i ], [ %i.in, %bb.bw ], [ %i.in, %.critedge6.i ], [ %i.in, %.thread310 ]
  %.sroa.17166.0.sink = phi ptr [ %.sroa.17.0296, %.thread303 ], [ %.sroa.17.0296, %bb.al ], [ %.sroa.17.0296, %.critedge9.i ], [ %.sroa.17166.0, %bb.bw ], [ %.sroa.17166.0, %.critedge6.i ], [ %.sroa.17166.0, %.thread310 ]
  %.sroa.20168.0.sink = phi i64 [ %.sroa.20.0297, %.thread303 ], [ %.sroa.20.0297, %bb.al ], [ %.sroa.20.0297, %.critedge9.i ], [ %.sroa.20168.0, %bb.bw ], [ %.sroa.20168.0, %.critedge6.i ], [ %.sroa.20168.0, %.thread310 ]
  store i64 %.6.i24.sink, ptr %7, align 8, !tbaa !32
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.2267.sink, ptr %.sroa.5158.0..sroa_idx, align 8, !tbaa !32
  %.sroa.6159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.6280.sink, ptr %.sroa.6159.0..sroa_idx, align 8, !tbaa !49
  %.sroa.7160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 %i.e, ptr %.sroa.7160.0..sroa_idx, align 8, !tbaa !50
  %.sroa.8161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 25
  store i8 1, ptr %.sroa.8161.0..sroa_idx, align 1, !tbaa !50
  %.sroa.10162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i8 %.sroa.10162.0.sink, ptr %.sroa.10162.0..sroa_idx, align 2, !tbaa !50
  %.sroa.12164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %.0274.sink, ptr %.sroa.12164.0..sroa_idx, align 8, !tbaa !49
  %.sroa.15165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sink650, ptr %.sroa.15165.0..sroa_idx, align 8, !tbaa !32
  %.sroa.17166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %.sroa.17166.0.sink, ptr %.sroa.17166.0..sroa_idx, align 8, !tbaa !49
  %.sroa.20168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 %.sroa.20168.0.sink, ptr %.sroa.20168.0..sroa_idx, align 8, !tbaa !32
  %.sroa.22169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 0, ptr %.sroa.22169.0..sroa_idx, align 8
  %i.nc = trunc nuw i8 %.sroa.10162.0.sink to i1  ; 2 uses
  %i.nd = add i64 %.6.i24.sink, -23
  %or.cond651 = icmp ult i64 %i.nd, -45
  %or.cond676 = select i1 %i.nc, i1 true, i1 %or.cond651
  br i1 %or.cond676, label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.i.thread, label %bb.bx

bb.bx:                                            ; preds = %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit
  %i.ne = load volatile float, ptr @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !29 ; 2 uses
  %i.nf = fadd float %i.ne, 1.000000e+00
  %i.ng = fsub float 1.000000e+00, %i.ne
  %i.nh = fcmp oeq float %i.nf, %i.ng
  br i1 %i.nh, label %bb.by, label %bb.cc

.thread598:                                       ; preds = %bb.bv, %bb.br, %.critedge133.i, %bb.ap, %bb.ao, %bb.ak, %bb.ag, %._crit_edge451, %bb.q, %.critedge.i, %bb.d, %bb.c
  %.ph = phi ptr [ %i.gg, %bb.ao ], [ %.2258295, %bb.ak ], [ %.2276, %.critedge133.i ], [ %i.gg, %bb.ap ], [ %.4278, %bb.br ], [ %i.f, %bb.c ], [ %.10.lcssa, %._crit_edge451 ], [ %i.f, %bb.d ], [ %.1257, %.critedge.i ], [ %.0256, %bb.q ], [ %.4260, %bb.ag ], [ %.2276, %bb.bv ] ; 2 uses
  %i.ni = load volatile float, ptr @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !29 ; 2 uses
  %i.nj = fadd float %i.ni, 1.000000e+00
  %i.nk = fsub float 1.000000e+00, %i.ni
  %i.nl = fcmp oeq float %i.nj, %i.nk
  br i1 %i.nl, label %.split.thread, label %.thread620

.split.thread:                                    ; preds = %.thread598
  store double 0.000000e+00, ptr %2, align 8, !tbaa !103
  br label %_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.by:                                            ; preds = %bb.bx
  %.not31.i.i = icmp ugt i64 %.2267.sink, 9007199254740992
  br i1 %.not31.i.i, label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.i.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nm = uitofp nneg i64 %.2267.sink to double   ; 3 uses
  store double %i.nm, ptr %2, align 8, !tbaa !103
  %i.nn = icmp slt i64 %.6.i24.sink, 0
  br i1 %i.nn, label %bb.ca, label %.split

.split:                                           ; preds = %bb.bz
  %i.no = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE.const, i64 %.6.i24.sink
  %i.np = load double, ptr %i.no, align 8, !tbaa !103
  %i.nq = fmul double %i.np, %i.nm                ; 2 uses
  store double %i.nq, ptr %2, align 8, !tbaa !103
  br i1 %i.d, label %bb.cb, label %_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.ca:                                            ; preds = %bb.bz
  %i.nr = sub nsw i64 0, %.6.i24.sink
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE.const, i64 %i.nr
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !103
  %i.nu = fdiv double %i.nm, %i.nt                ; 2 uses
  store double %i.nu, ptr %2, align 8, !tbaa !103
  br i1 %i.d, label %bb.cb, label %_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.cb:                                            ; preds = %.split, %bb.ca
  %storemerge32.i.i610 = phi double [ %i.nq, %.split ], [ %i.nu, %bb.ca ]
  %i.nv = fneg double %storemerge32.i.i610
  store double %i.nv, ptr %2, align 8, !tbaa !103
  br label %_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.cc:                                            ; preds = %bb.bx
  %i.nw = icmp sgt i64 %.6.i24.sink, -1
  br i1 %i.nw, label %bb.cd, label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.i.thread

bb.cd:                                            ; preds = %bb.cc
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE12max_mantissaE.const, i64 %.6.i24.sink
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !32
  %.not30.i.i = icmp ugt i64 %.2267.sink, %i.ny
  br i1 %.not30.i.i, label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.i.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.nz = icmp eq i64 %.2267.sink, 0
  br i1 %i.nz, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.d, label %bb.cg, label %.thread620

bb.cg:                                            ; preds = %bb.cf
  br label %.thread620

.thread620:                                       ; preds = %.thread598, %bb.cf, %bb.cg
  %i.oa = phi ptr [ %.6280.sink, %bb.cg ], [ %.6280.sink, %bb.cf ], [ %.ph, %.thread598 ]
  %i.ob = phi double [ -0.000000e+00, %bb.cg ], [ 0.000000e+00, %bb.cf ], [ 0.000000e+00, %.thread598 ]
  store double %i.ob, ptr %2, align 8, !tbaa !103
  br label %_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.ch:                                            ; preds = %bb.ce
  %i.oc = uitofp i64 %.2267.sink to double
  %i.od = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE.const, i64 %.6.i24.sink
  %i.oe = load double, ptr %i.od, align 8, !tbaa !103
  %i.of = fmul double %i.oe, %i.oc                ; 2 uses
  %i.og = fneg double %i.of
  %storemerge.i.i = select i1 %i.d, double %i.og, double %i.of
  store double %storemerge.i.i, ptr %2, align 8, !tbaa !103
  br label %_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.i.thread: ; preds = %bb.cc, %bb.cd, %bb.by, %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit
  %i.oh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.oi = icmp eq i64 %.2267.sink, 0
  %i.oj = icmp slt i64 %.6.i24.sink, -342         ; 2 uses
  %or.cond328 = select i1 %i.oi, i1 true, i1 %i.oj
  br i1 %or.cond328, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i, label %bb.ci

bb.ci:                                            ; preds = %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.i.thread
  %i.ok = icmp sgt i64 %.6.i24.sink, 308
  br i1 %i.ok, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ol = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.2267.sink, i1 true) ; 2 uses
  %i.om = trunc nuw nsw i64 %i.ol to i32
  %i.on = shl i64 %.2267.sink, %i.ol
  %i.oo = trunc nsw i64 %.6.i24.sink to i32       ; 2 uses
  %i.op = shl nsw i32 %i.oo, 1
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E.const, i64 %i.oq ; 2 uses
  %i.os = getelementptr i8, ptr %i.or, i64 5472
  %i.ot = load i64, ptr %i.os, align 16, !tbaa !32
  %i.ou = zext i64 %i.on to i128                  ; 2 uses
  %i.ov = zext i64 %i.ot to i128
  %i.ow = mul nuw i128 %i.ov, %i.ou               ; 2 uses
  %i.ox = trunc i128 %i.ow to i64                 ; 2 uses
  %i.oy = lshr i128 %i.ow, 64
  %i.oz = trunc nuw i128 %i.oy to i64             ; 3 uses
  %i.pa = and i64 %i.oz, 511
  %i.pb = icmp eq i64 %i.pa, 511
  br i1 %i.pb, label %bb.ck, label %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit80

bb.ck:                                            ; preds = %bb.cj
  %i.pc = getelementptr i8, ptr %i.or, i64 5480
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !32
  %i.pe = zext i64 %i.pd to i128
  %i.pf = mul nuw i128 %i.pe, %i.ou
  %i.pg = lshr i128 %i.pf, 64
  %i.ph = trunc nuw i128 %i.pg to i64             ; 2 uses
  %i.pi = add i64 %i.ph, %i.ox                    ; 2 uses
  %i.pj = icmp ult i64 %i.pi, %i.ph
  %i.pk = zext i1 %i.pj to i64
  %spec.select.i79 = add nuw i64 %i.pk, %i.oz
  br label %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit80

_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit80: ; preds = %bb.ck, %bb.cj
  %.pn347 = phi i64 [ %i.pi, %bb.ck ], [ %i.ox, %bb.cj ]
  %spec.select.i79.pn = phi i64 [ %spec.select.i79, %bb.ck ], [ %i.oz, %bb.cj ] ; 3 uses
  %i.pl = lshr i64 %spec.select.i79.pn, 63        ; 2 uses
  %i.pm = trunc nuw nsw i64 %i.pl to i32
  %i.pn = add nuw nsw i64 %i.pl, 9                ; 2 uses
  %i.po = lshr i64 %spec.select.i79.pn, %i.pn     ; 6 uses
  %i.pp = mul nsw i32 %i.oo, 217706
  %i.pq = ashr i32 %i.pp, 16
  %i.pr = add nsw i32 %i.pq, 1086
  %i.ps = sub nsw i32 %i.pr, %i.om
  %i.pt = add nsw i32 %i.ps, %i.pm                ; 3 uses
  %i.pu = icmp slt i32 %i.pt, 1
  br i1 %i.pu, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit80
  %i.pv = sub nsw i32 1, %i.pt                    ; 2 uses
  %i.pw = icmp samesign ugt i32 %i.pv, 63
  br i1 %i.pw, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.px = zext nneg i32 %i.pv to i64
  %i.py = lshr i64 %i.po, %i.px                   ; 2 uses
  %i.pz = and i64 %i.py, 1
  %i.qa = add nuw nsw i64 %i.pz, %i.py            ; 2 uses
  %i.qb = lshr i64 %i.qa, 1
  %i.qc = icmp samesign ugt i64 %i.qa, 9007199254740991
  %i.qd = zext i1 %i.qc to i32
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i

bb.cn:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit80
  %i.qe = icmp ugt i64 %.pn347, 1
  %i.qf = add nsw i64 %.6.i24.sink, -24
  %i.qg = icmp ult i64 %i.qf, -28
  %or.cond330 = select i1 %i.qe, i1 true, i1 %i.qg
  br i1 %or.cond330, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.qh = and i64 %i.po, 3
  %i.qi = icmp eq i64 %i.qh, 1
  %i.qj = shl i64 %i.po, %i.pn
  %i.qk = icmp eq i64 %i.qj, %spec.select.i79.pn
  %or.cond.i58.i = select i1 %i.qi, i1 %i.qk, i1 false
  %i.ql = and i64 %i.po, 72057594037927932
  %spec.select331 = select i1 %or.cond.i58.i, i64 %i.ql, i64 %i.po
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.sroa.0231.0 = phi i64 [ %i.po, %bb.cn ], [ %spec.select331, %bb.co ] ; 2 uses
  %i.qm = and i64 %.sroa.0231.0, 1
  %i.qn = add nuw nsw i64 %i.qm, %.sroa.0231.0    ; 2 uses
  %i.qo = lshr i64 %i.qn, 1
  %.not22.i49.i = icmp samesign ugt i64 %i.qn, 18014398509481983 ; 2 uses
  %i.qp = zext i1 %.not22.i49.i to i32
  %spec.select333 = add nuw nsw i32 %i.pt, %i.qp  ; 2 uses
  %i.qq = and i64 %i.qo, 9218868437227405311
  %.not23.i50.i = icmp samesign ugt i32 %spec.select333, 2046 ; 2 uses
  %.not = select i1 %.not23.i50.i, i1 true, i1 %.not22.i49.i
  %spec.select341 = select i1 %.not, i64 0, i64 %i.qq
  %spec.select342 = select i1 %.not23.i50.i, i32 2047, i32 %spec.select333
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i

_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i: ; preds = %bb.cp, %bb.cl, %bb.ci, %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.i.thread, %bb.cm
  %.sroa.0231.2 = phi i64 [ 0, %bb.cl ], [ 0, %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.i.thread ], [ 0, %bb.ci ], [ %i.qb, %bb.cm ], [ %spec.select341, %bb.cp ] ; 3 uses
  %.sroa.18236.1 = phi i32 [ 0, %bb.cl ], [ 0, %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.i.thread ], [ 2047, %bb.ci ], [ %i.qd, %bb.cm ], [ %spec.select342, %bb.cp ] ; 3 uses
  br i1 %i.nc, label %bb.cq, label %.thread317

bb.cq:                                            ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i
  %i.qr = add i64 %.2267.sink, 1                  ; 3 uses
  %i.qs = icmp eq i64 %i.qr, 0
  %or.cond334 = select i1 %i.qs, i1 true, i1 %i.oj
  br i1 %or.cond334, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qt = icmp sgt i64 %.6.i24.sink, 308
  br i1 %i.qt, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.qr, i1 true) ; 2 uses
end_hunk_1
