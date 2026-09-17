Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Conv?download=true
inline.NumInlined: 3501
inline.NumDeleted: 1003
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE:bb.a
  %.0.i34395 = phi ptr [ %i.fv, %.critedge8.i ], [ %.0288, %bb.an ] ; 2 uses
  %.181.i394 = phi i64 [ %spec.select134.i, %.critedge8.i ], [ %.080.i25, %bb.an ] ; 2 uses
  %i.fs = load i8, ptr %.0.i34395, align 1, !tbaa !71 ; 2 uses
  switch i8 %i.fs, label %.critedge6.i [
    i8 48, label %.critedge8.i
    i8 46, label %.critedge8.i
  ]

.critedge8.i:                                     ; preds = %.preheader, %.preheader
  %i.ft = icmp eq i8 %i.fs, 48
  %i.fu = sext i1 %i.ft to i64
  %spec.select134.i = add nsw i64 %.181.i394, %i.fu ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.i34395, i64 1 ; 2 uses
  %.not129.i35 = icmp eq ptr %i.fv, %i.d
  br i1 %.not129.i35, label %.critedge6.i, label %.preheader, !llvm.loop !4

.critedge6.i:                                     ; preds = %.preheader, %.critedge8.i
  %.181.i.lcssa = phi i64 [ %.181.i394, %.preheader ], [ %spec.select134.i, %.critedge8.i ]
  %i.fw = icmp sgt i64 %.181.i.lcssa, 19
  br i1 %i.fw, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %.critedge, !prof !73

_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit56: ; preds = %.critedge133.i, %bb.n, %bb.m
  %i.fx = icmp eq i8 %i.ag, 43
  %or.cond335 = or i1 %i.ah, %i.fx
  %.035.i.idx = zext i1 %or.cond335 to i64
  %.035.i = getelementptr inbounds nuw i8, ptr %.028.i.i.i, i64 %.035.i.idx ; 6 uses
  %i.fy = ptrtoint ptr %.035.i to i64
  %i.fz = sub i64 %i.f, %i.fy                     ; 2 uses
  %i.ga = icmp sgt i64 %i.fz, 2
  br i1 %i.ga, label %bb.ao, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread448

bb.ao:                                            ; preds = %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit56
  %.0.copyload4.i.i = load i24, ptr %.035.i, align 1
  %i.gb = and i24 %.0.copyload4.i.i, -2105377
  switch i24 %i.gb, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread448 [
    i24 5128526, label %bb.ap
    i24 4607561, label %bb.at
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.gc = getelementptr inbounds nuw i8, ptr %.035.i, i64 3 ; 5 uses
  %i.gd = select i1 %i.ah, float -qnan, float +qnan
  store float %i.gd, ptr %i.a, align 4, !tbaa !75
  %.not42.i = icmp eq ptr %i.gc, %i.d
  br i1 %.not42.i, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ge = load i8, ptr %i.gc, align 1, !tbaa !71
  %i.gf = icmp ne i8 %i.ge, 40
  %i.gg = getelementptr inbounds nuw i8, ptr %.035.i, i64 4 ; 4 uses
  %.not4352.i = icmp eq ptr %i.gg, %i.d
  %or.cond55.i = select i1 %i.gf, i1 true, i1 %.not4352.i
  br i1 %or.cond55.i, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.aq
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !71  ; 2 uses
  %i.gi = icmp eq i8 %i.gh, 41
  br i1 %i.gi, label %.lr.ph.i._crit_edge, label %.lr.ph397

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.backedge.i, %.lr.ph.i.preheader
  %.053.i.lcssa = phi ptr [ %i.gg, %.lr.ph.i.preheader ], [ %.053.be.i, %.lr.ph.backedge.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.053.i.lcssa, i64 1
  br label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

.lr.ph397:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.backedge.i
  %i.gk = phi i8 [ %i.gq, %.lr.ph.backedge.i ], [ %i.gh, %.lr.ph.i.preheader ] ; 3 uses
  %.053.i396 = phi ptr [ %.053.be.i, %.lr.ph.backedge.i ], [ %i.gg, %.lr.ph.i.preheader ] ; 2 uses
  %i.gl = and i8 %i.gk, -33
  %i.gm = add i8 %i.gl, -65
  %or.cond50.i = icmp ult i8 %i.gm, 26
  br i1 %or.cond50.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph397
  %i.gn = add i8 %i.gk, -58
  %or.cond45.i = icmp ult i8 %i.gn, -10
  %i.go = icmp ne i8 %i.gk, 95
  %or.cond49.not58.i = and i1 %i.go, %or.cond45.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.053.i396, i64 1 ; 2 uses
  %.not43.i = icmp eq ptr %i.gp, %i.d
  %or.cond56.i = select i1 %or.cond49.not58.i, i1 true, i1 %.not43.i
  br i1 %or.cond56.i, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread, label %.lr.ph.backedge.i

bb.as:                                            ; preds = %.lr.ph397
  %.old.i = getelementptr inbounds nuw i8, ptr %.053.i396, i64 1 ; 2 uses
  %.not43.old.i = icmp eq ptr %.old.i, %i.d
  br i1 %.not43.old.i, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread, label %.lr.ph.backedge.i

.lr.ph.backedge.i:                                ; preds = %bb.as, %bb.ar
  %.053.be.i = phi ptr [ %.old.i, %bb.as ], [ %i.gp, %bb.ar ] ; 3 uses
  %i.gq = load i8, ptr %.053.be.i, align 1, !tbaa !71 ; 2 uses
  %i.gr = icmp eq i8 %i.gq, 41
  br i1 %i.gr, label %.lr.ph.i._crit_edge, label %.lr.ph397, !llvm.loop !402

bb.at:                                            ; preds = %bb.ao
  %i.gs = icmp samesign ugt i64 %i.fz, 7
  br i1 %i.gs, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gt = getelementptr inbounds nuw i8, ptr %.035.i, i64 3
  %.0.copyload4.i47.i = load i40, ptr %i.gt, align 1
  %i.gu = and i40 %.0.copyload4.i47.i, -137977929761
  %i.gv = icmp eq i40 %i.gu, 383666179657
  br i1 %i.gv, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sink.i = phi i64 [ 3, %bb.av ], [ 8, %bb.au ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.035.i, i64 %.sink.i
  %i.gx = select i1 %i.ah, float -inf, float +inf
  store float %i.gx, ptr %i.a, align 4, !tbaa !75
  br label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

.critedge:                                        ; preds = %bb.an, %.critedge6.i
  %i.gy = add i64 %.377.i, -11                    ; 2 uses
  %or.cond336 = icmp ult i64 %i.gy, -21
  br i1 %or.cond336, label %bb.bj, label %bb.ax

bb.ax:                                            ; preds = %.critedge
  %i.gz = load volatile float, ptr @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !75 ; 2 uses
  %i.ha = fadd float %i.gz, 1.000000e+00
  %i.hb = fsub float 1.000000e+00, %i.gz
  %i.hc = fcmp oeq float %i.ha, %i.hb
  br i1 %i.hc, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  %.not31.i = icmp ugt i64 %.1284, 16777216
  br i1 %.not31.i, label %.noexc78, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hd = uitofp nneg i64 %.1284 to float         ; 2 uses
  %i.he = icmp slt i64 %.377.i, 0
  br i1 %i.he, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hf = sub nsw i64 0, %.377.i
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE.const, i64 %i.hf
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !75
  %i.hi = fdiv float %i.hd, %i.hh
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE.const, i64 %.377.i
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !75
  %i.hl = fmul float %i.hk, %i.hd
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge32.i = phi float [ %i.hl, %bb.bb ], [ %i.hi, %bb.ba ] ; 2 uses
  store float %storemerge32.i, ptr %i.a, align 4, !tbaa !75
  br i1 %i.ah, label %bb.bd, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

bb.bd:                                            ; preds = %bb.bc
  %i.hm = fneg float %storemerge32.i
  store float %i.hm, ptr %i.a, align 4, !tbaa !75
  br label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

bb.be:                                            ; preds = %bb.ax
  %i.hn = icmp sgt i64 %.377.i, -1
  br i1 %i.hn, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIfvE12max_mantissaE.const, i64 %.377.i
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !77
  %.not30.i = icmp ugt i64 %.1284, %i.hp
  br i1 %.not30.i, label %.noexc78, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hq = icmp eq i64 %.1284, 0
  br i1 %i.hq, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.hr = select i1 %i.ah, float -0.000000e+00, float 0.000000e+00
  store float %i.hr, ptr %i.a, align 4, !tbaa !75
  br label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

bb.bi:                                            ; preds = %bb.bg
  %i.hs = uitofp i64 %.1284 to float
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE.const, i64 %.377.i
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !75
  %i.hv = fmul float %i.hu, %i.hs                 ; 2 uses
  %i.hw = fneg float %i.hv
  %storemerge.i48 = select i1 %i.ah, float %i.hw, float %i.hv
  store float %storemerge.i48, ptr %i.a, align 4, !tbaa !75
  br label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

bb.bj:                                            ; preds = %bb.be, %.critedge
  %i.hx = icmp eq i64 %.1284, 0
  %i.hy = icmp slt i64 %.377.i, -64
  %or.cond = select i1 %i.hx, i1 true, i1 %i.hy
  br i1 %or.cond, label %bb.bq, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hz = icmp sgt i64 %.377.i, 38
  br i1 %i.hz, label %bb.bq, label %.noexc78

.noexc78:                                         ; preds = %bb.bf, %bb.ay, %bb.bk
  %i.ia = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.1284, i1 true) ; 2 uses
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = shl i64 %.1284, %i.ia
  %i.id = trunc nsw i64 %.377.i to i32            ; 2 uses
  %i.ie = shl nsw i32 %i.id, 1
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E.const, i64 %i.if ; 2 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 5472
  %i.ii = load i64, ptr %i.ih, align 16, !tbaa !77
  %i.ij = zext i64 %i.ic to i128                  ; 2 uses
  %i.ik = zext i64 %i.ii to i128
  %i.il = mul nuw i128 %i.ik, %i.ij               ; 2 uses
  %i.im = trunc i128 %i.il to i64                 ; 2 uses
  %i.in = lshr i128 %i.il, 64
  %i.io = trunc nuw i128 %i.in to i64             ; 3 uses
  %i.ip = and i64 %i.io, 274877906943
  %i.iq = icmp eq i64 %i.ip, 274877906943
  br i1 %i.iq, label %.noexc79, label %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit

.noexc79:                                         ; preds = %.noexc78
  %i.ir = getelementptr i8, ptr %i.ig, i64 5480
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !77
  %1 = zext i64 %i.is to i128
  %2 = mul nuw i128 %1, %i.ij
  %3 = lshr i128 %2, 64
  %4 = trunc nuw i128 %3 to i64                   ; 2 uses
  %i.it = add i64 %4, %i.im                       ; 2 uses
  %5 = icmp ult i64 %i.it, %4
  %i.iu = zext i1 %5 to i64
  %spec.select.i77 = add nuw i64 %i.iu, %i.io
  br label %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit

_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit: ; preds = %.noexc79, %.noexc78
  %.pn345 = phi i64 [ %i.it, %.noexc79 ], [ %i.im, %.noexc78 ]
  %spec.select.i77.pn = phi i64 [ %spec.select.i77, %.noexc79 ], [ %i.io, %.noexc78 ] ; 3 uses
  %i.iv = lshr i64 %spec.select.i77.pn, 63        ; 2 uses
  %i.iw = trunc nuw nsw i64 %i.iv to i32
  %i.ix = or disjoint i64 %i.iv, 38               ; 2 uses
  %i.iy = lshr i64 %spec.select.i77.pn, %i.ix     ; 6 uses
  %i.iz = mul nsw i32 %i.id, 217706
  %i.ja = ashr i32 %i.iz, 16
  %reass.sub = sub nsw i32 %i.ja, %i.ib
  %i.jb = add nsw i32 %reass.sub, 190
  %i.jc = add nsw i32 %i.jb, %i.iw                ; 3 uses
  %i.jd = icmp slt i32 %i.jc, 1
  br i1 %i.jd, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit
  %i.je = sub nsw i32 1, %i.jc                    ; 2 uses
  %i.jf = icmp samesign ugt i32 %i.je, 63
  br i1 %i.jf, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jg = zext nneg i32 %i.je to i64
  %i.jh = lshr i64 %i.iy, %i.jg                   ; 2 uses
  %i.ji = and i64 %i.jh, 1
  %i.jj = add nuw nsw i64 %i.ji, %i.jh            ; 2 uses
  %i.jk = lshr i64 %i.jj, 1
  %i.jl = icmp samesign ugt i64 %i.jj, 16777215
  %i.jm = zext i1 %i.jl to i32
  br label %bb.bq

bb.bn:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit
  %i.jn = icmp ugt i64 %.pn345, 1
  %i.jo = icmp ult i64 %i.gy, -28
  %or.cond338 = or i1 %i.jn, %i.jo
  br i1 %or.cond338, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jp = and i64 %i.iy, 3
  %i.jq = icmp eq i64 %i.jp, 1
  %i.jr = shl i64 %i.iy, %i.ix
  %i.js = icmp eq i64 %i.jr, %spec.select.i77.pn
  %or.cond.i52 = select i1 %i.jq, i1 %i.js, i1 false
  %i.jt = and i64 %i.iy, 67108860
  %spec.select339 = select i1 %or.cond.i52, i64 %i.jt, i64 %i.iy
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.sroa.0266.0 = phi i64 [ %i.iy, %bb.bn ], [ %spec.select339, %bb.bo ] ; 2 uses
  %i.ju = and i64 %.sroa.0266.0, 1
  %i.jv = add nuw nsw i64 %i.ju, %.sroa.0266.0    ; 2 uses
  %i.jw = lshr i64 %i.jv, 1
  %.not22.i = icmp samesign ugt i64 %i.jv, 33554431 ; 2 uses
  %i.jx = zext i1 %.not22.i to i32
  %spec.select341 = add nuw nsw i32 %i.jc, %i.jx  ; 2 uses
  %i.jy = and i64 %i.jw, 9223372036846387199
  %.not23.i = icmp samesign ugt i32 %spec.select341, 254 ; 2 uses
  %.not = select i1 %.not23.i, i1 true, i1 %.not22.i
  %spec.select342 = select i1 %.not, i64 0, i64 %i.jy
  %spec.select343 = select i1 %.not23.i, i32 255, i32 %spec.select341
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bl, %bb.bk, %bb.bj, %bb.bm
  %.sroa.0266.2 = phi i64 [ 0, %bb.bl ], [ 0, %bb.bj ], [ 0, %bb.bk ], [ %i.jk, %bb.bm ], [ %spec.select342, %bb.bp ]
  %.sroa.18271.1 = phi i32 [ 0, %bb.bl ], [ 0, %bb.bj ], [ 255, %bb.bk ], [ %i.jm, %bb.bm ], [ %spec.select343, %bb.bp ]
  %i.jz = trunc nuw nsw i64 %.sroa.0266.2 to i32
  %i.ka = shl nuw nsw i32 %.sroa.18271.1, 23
  %i.kb = select i1 %i.ah, i32 -2147483648, i32 0
  %i.kc = or i32 %i.kb, %i.jz
  %i.kd = or i32 %i.kc, %i.ka
  store i32 %i.kd, ptr %i.a, align 4, !tbaa !75
  br label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit: ; preds = %.critedge6.i
  %i.ke = call { ptr, i32 } @_ZN10fast_float22parse_number_slow_pathIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EEb(ptr noundef nonnull %.028.i.i.i, ptr noundef %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 133, i64 42949673006, i1 noundef zeroext false) #25 ; 2 uses
  %i.kf = extractvalue { ptr, i32 } %i.ke, 0      ; 2 uses
  %i.kg = extractvalue { ptr, i32 } %i.ke, 1
  switch i32 %i.kg, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread448 [
    i32 34, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread
    i32 0, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread
  ]

_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread: ; preds = %bb.as, %bb.ar, %bb.aq, %.lr.ph.i._crit_edge, %bb.aw, %bb.ap, %bb.bh, %bb.bd, %bb.bc, %bb.bi, %bb.bq, %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit
  %.sroa.073.1.i332 = phi ptr [ %i.kf, %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit ], [ %i.kf, %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit ], [ %.6294, %bb.bq ], [ %.6294, %bb.bi ], [ %.6294, %bb.bc ], [ %.6294, %bb.bd ], [ %.6294, %bb.bh ], [ %i.gw, %bb.aw ], [ %i.d, %bb.ap ], [ %i.gc, %bb.aq ], [ %i.gj, %.lr.ph.i._crit_edge ], [ %i.gc, %bb.ar ], [ %i.gc, %bb.as ]
  %i.kh = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.ki = ptrtoint ptr %.sroa.073.1.i332 to i64
  %i.kj = ptrtoint ptr %i.kh to i64               ; 2 uses
  %i.kk = sub i64 %i.ki, %i.kj                    ; 2 uses
  %i.kl = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = sub i64 %i.km, %i.kj
  %i.ko = icmp ugt i64 %i.kk, %i.kn
  br i1 %i.ko, label %bb.br, label %bb.bs, !prof !73

bb.br:                                            ; preds = %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #11
          to label %.noexc86 unwind label %bb.bt

.noexc86:                                         ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.kk
  store ptr %i.kp, ptr %0, align 8, !tbaa !69
  %i.kq = load i32, ptr %i.a, align 4, !tbaa !75
  %i.kr = zext i32 %i.kq to i64
  %i.ks = shl nuw i64 %i.kr, 32
  %i.kt = or disjoint i64 %i.ks, 1
  br label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread448

_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread448: ; preds = %bb.ao, %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit56, %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, %bb.bs
  %i.ku = phi i64 [ %i.kt, %bb.bs ], [ 2306, %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit ], [ 2306, %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit56 ], [ 2306, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.thread

switch.hole_check:                                ; preds = %bb.k
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 8388639, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.thread, label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit

_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.thread: ; preds = %switch.hole_check, %._crit_edge.i.i.i, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit, %bb.a, %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread448
  %.sroa.993.0.insert.ext = phi i64 [ %i.ku, %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread448 ], [ 258, %bb.a ], [ 258, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit ], [ 258, %._crit_edge.i.i.i ], [ 258, %switch.hole_check ]
  ret i64 %.sroa.993.0.insert.ext

bb.bt:                                            ; preds = %bb.br
  %i.kv = landingpad { ptr, i32 }
          catch ptr null
  %i.kw = extractvalue { ptr, i32 } %i.kv, 0
  call void @__clang_call_terminate(ptr %i.kw) #26
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN10fast_float22parse_number_slow_pathIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EEb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %3, i64 %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"struct.fast_float::bigint", align 8 ; 6 uses
  %7 = alloca %"struct.fast_float::parsed_number_string_t", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %.sroa.2.8.extract.trunc.i = trunc i64 %4 to i8 ; 5 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !71, !noalias !78
  %.fr = freeze i8 %i.c                           ; 4 uses
  %i.d = icmp eq i8 %.fr, 45                      ; 7 uses
  %i.e = zext i1 %i.d to i8                       ; 4 uses
  br i1 %5, label %bb.b, label %bb.am

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %i.g = icmp eq ptr %i.f, %1
  br i1 %i.g, label %.thread606, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.f, align 1, !tbaa !71, !noalias !408 ; 2 uses
  %i.i = sext i8 %i.h to i32
  %i.j = add nsw i32 %i.i, -48
  %i.k = icmp ult i32 %i.j, 10
  br i1 %i.k, label %bb.e, label %.thread606

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.l = phi i8 [ %i.h, %bb.d ], [ %.fr, %bb.b ]  ; 3 uses
  %.0264 = phi ptr [ %i.f, %bb.d ], [ %0, %bb.b ] ; 18 uses
  %.0264525 = ptrtoaddr ptr %.0264 to i64
  %.not.i = icmp eq ptr %.0264, %1                ; 2 uses
  br i1 %.not.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = sext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -48
  %i.o = icmp ult i32 %i.n, 10
end_hunk_0
begin_hunk_1_@_ZN10fast_float22parse_number_slow_pathIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EEb:bb.a
  br i1 %.not129.i26, label %.critedge6.i, label %.lr.ph421, !llvm.loop !4

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
  %i.mg = load i8, ptr %.7289425, align 1, !tbaa !71
  %i.mh = sext i8 %i.mg to i64
  %i.mi = add i64 %i.mf, -48
  %i.mj = add i64 %i.mi, %i.mh                    ; 5 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.7289425, i64 1 ; 3 uses
  %i.ml = icmp ult i64 %i.mj, 1000000000000000000
  %i.mm = icmp ne ptr %i.mk, %.1283
  %i.mn = select i1 %i.ml, i1 %i.mm, i1 false
  br i1 %i.mn, label %.lr.ph427, label %._crit_edge, !llvm.loop !11

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
  %i.mr = load i8, ptr %.8290430, align 1, !tbaa !71
  %i.ms = sext i8 %i.mr to i64
  %i.mt = add i64 %i.mq, -48
  %i.mu = add i64 %i.mt, %i.ms                    ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.8290430, i64 1 ; 3 uses
  %i.mw = icmp ult i64 %i.mu, 1000000000000000000
  %i.mx = icmp ne ptr %i.mv, %i.mp
  %i.my = select i1 %i.mw, i1 %i.mx, i1 false
  br i1 %i.my, label %.lr.ph433, label %._crit_edge434, !llvm.loop !12

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
  store i64 %.6.i24.sink, ptr %7, align 8, !tbaa !77
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.2275.sink, ptr %.sroa.5166.0..sroa_idx, align 8, !tbaa !77
  %.sroa.6167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.6288.sink, ptr %.sroa.6167.0..sroa_idx, align 8, !tbaa !79
  %.sroa.7168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 %i.e, ptr %.sroa.7168.0..sroa_idx, align 8, !tbaa !81
  %.sroa.8169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 25
  store i8 1, ptr %.sroa.8169.0..sroa_idx, align 1, !tbaa !81
  %.sroa.10170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i8 %.sroa.10170.0.sink, ptr %.sroa.10170.0..sroa_idx, align 2, !tbaa !81
  %.sroa.12172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %.0282.sink, ptr %.sroa.12172.0..sroa_idx, align 8, !tbaa !79
  %.sroa.15173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sink658, ptr %.sroa.15173.0..sroa_idx, align 8, !tbaa !77
  %.sroa.17174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %.sroa.17174.0.sink, ptr %.sroa.17174.0..sroa_idx, align 8, !tbaa !79
  %.sroa.20176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 %.sroa.20176.0.sink, ptr %.sroa.20176.0..sroa_idx, align 8, !tbaa !77
  %.sroa.22177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 0, ptr %.sroa.22177.0..sroa_idx, align 8
  %i.nc = trunc nuw i8 %.sroa.10170.0.sink to i1  ; 2 uses
  %i.nd = add i64 %.6.i24.sink, -11
  %or.cond659 = icmp ult i64 %i.nd, -21
  %or.cond684 = select i1 %i.nc, i1 true, i1 %or.cond659
  br i1 %or.cond684, label %_ZN10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.i.thread, label %bb.bx

bb.bx:                                            ; preds = %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit
  %i.ne = load volatile float, ptr @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !75 ; 2 uses
  %i.nf = fadd float %i.ne, 1.000000e+00
  %i.ng = fsub float 1.000000e+00, %i.ne
  %i.nh = fcmp oeq float %i.nf, %i.ng
  br i1 %i.nh, label %bb.by, label %bb.cc

.thread606:                                       ; preds = %bb.bv, %bb.br, %.critedge133.i, %bb.ap, %bb.ao, %bb.ak, %bb.ag, %._crit_edge459, %bb.q, %.critedge.i, %bb.d, %bb.c
  %.ph = phi ptr [ %i.gg, %bb.ao ], [ %.2266303, %bb.ak ], [ %.2284, %.critedge133.i ], [ %i.gg, %bb.ap ], [ %.4286, %bb.br ], [ %i.f, %bb.c ], [ %.10.lcssa, %._crit_edge459 ], [ %i.f, %bb.d ], [ %.1265, %.critedge.i ], [ %.0264, %bb.q ], [ %.4268, %bb.ag ], [ %.2284, %bb.bv ] ; 2 uses
  %i.ni = load volatile float, ptr @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !75 ; 2 uses
  %i.nj = fadd float %i.ni, 1.000000e+00
  %i.nk = fsub float 1.000000e+00, %i.ni
  %i.nl = fcmp oeq float %i.nj, %i.nk
  br i1 %i.nl, label %.split.thread, label %.thread628

.split.thread:                                    ; preds = %.thread606
  store float 0.000000e+00, ptr %2, align 4, !tbaa !75
  br label %_ZN10fast_float19from_chars_advancedIfcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.by:                                            ; preds = %bb.bx
  %.not31.i.i = icmp ugt i64 %.2275.sink, 16777216
  br i1 %.not31.i.i, label %_ZN10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.i.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nm = uitofp nneg i64 %.2275.sink to float    ; 3 uses
  store float %i.nm, ptr %2, align 4, !tbaa !75
  %i.nn = icmp slt i64 %.6.i24.sink, 0
  br i1 %i.nn, label %bb.ca, label %.split

.split:                                           ; preds = %bb.bz
  %i.no = getelementptr inbounds nuw [4 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE.const, i64 %.6.i24.sink
  %i.np = load float, ptr %i.no, align 4, !tbaa !75
  %i.nq = fmul float %i.np, %i.nm                 ; 2 uses
  store float %i.nq, ptr %2, align 4, !tbaa !75
  br i1 %i.d, label %bb.cb, label %_ZN10fast_float19from_chars_advancedIfcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.ca:                                            ; preds = %bb.bz
  %i.nr = sub nsw i64 0, %.6.i24.sink
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE.const, i64 %i.nr
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !75
  %i.nu = fdiv float %i.nm, %i.nt                 ; 2 uses
  store float %i.nu, ptr %2, align 4, !tbaa !75
  br i1 %i.d, label %bb.cb, label %_ZN10fast_float19from_chars_advancedIfcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.cb:                                            ; preds = %.split, %bb.ca
  %storemerge32.i.i618 = phi float [ %i.nq, %.split ], [ %i.nu, %bb.ca ]
  %i.nv = fneg float %storemerge32.i.i618
  store float %i.nv, ptr %2, align 4, !tbaa !75
  br label %_ZN10fast_float19from_chars_advancedIfcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.cc:                                            ; preds = %bb.bx
  %i.nw = icmp sgt i64 %.6.i24.sink, -1
  br i1 %i.nw, label %bb.cd, label %_ZN10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.i.thread

bb.cd:                                            ; preds = %bb.cc
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIfvE12max_mantissaE.const, i64 %.6.i24.sink
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !77
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
  store float %i.ob, ptr %2, align 4, !tbaa !75
  br label %_ZN10fast_float19from_chars_advancedIfcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.ch:                                            ; preds = %bb.ce
  %i.oc = uitofp i64 %.2275.sink to float
  %i.od = getelementptr inbounds nuw [4 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE.const, i64 %.6.i24.sink
  %i.oe = load float, ptr %i.od, align 4, !tbaa !75
  %i.of = fmul float %i.oe, %i.oc                 ; 2 uses
  %i.og = fneg float %i.of
  %storemerge.i.i = select i1 %i.d, float %i.og, float %i.of
  store float %storemerge.i.i, ptr %2, align 4, !tbaa !75
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
  %i.ot = load i64, ptr %i.os, align 16, !tbaa !77
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
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !77
  %8 = zext i64 %i.pd to i128
  %9 = mul nuw i128 %8, %i.ou
  %10 = lshr i128 %9, 64
  %11 = trunc nuw i128 %10 to i64                 ; 2 uses
  %i.pe = add i64 %11, %i.ox                      ; 2 uses
  %12 = icmp ult i64 %i.pe, %11
  %i.pf = zext i1 %12 to i64
  %spec.select.i73 = add nuw i64 %i.pf, %i.oz
  br label %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit76

_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit76: ; preds = %.noexc75, %.noexc74
  %.pn355 = phi i64 [ %i.pe, %.noexc75 ], [ %i.ox, %.noexc74 ]
  %spec.select.i73.pn = phi i64 [ %spec.select.i73, %.noexc75 ], [ %i.oz, %.noexc74 ] ; 3 uses
  %i.pg = lshr i64 %spec.select.i73.pn, 63        ; 2 uses
  %i.ph = trunc nuw nsw i64 %i.pg to i32
  %i.pi = or disjoint i64 %i.pg, 38               ; 2 uses
  %i.pj = lshr i64 %spec.select.i73.pn, %i.pi     ; 6 uses
  %i.pk = mul nsw i32 %i.oo, 217706
  %i.pl = ashr i32 %i.pk, 16
  %i.pm = add nsw i32 %i.pl, 190
  %i.pn = sub nsw i32 %i.pm, %i.om
  %i.po = add nsw i32 %i.pn, %i.ph                ; 3 uses
  %i.pp = icmp slt i32 %i.po, 1
  br i1 %i.pp, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit76
  %i.pq = sub nsw i32 1, %i.po                    ; 2 uses
  %i.pr = icmp samesign ugt i32 %i.pq, 63
  br i1 %i.pr, label %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ps = zext nneg i32 %i.pq to i64
  %i.pt = lshr i64 %i.pj, %i.ps                   ; 2 uses
  %i.pu = and i64 %i.pt, 1
  %i.pv = add nuw nsw i64 %i.pu, %i.pt            ; 2 uses
  %i.pw = lshr i64 %i.pv, 1
  %i.px = icmp samesign ugt i64 %i.pv, 16777215
  %i.py = zext i1 %i.px to i32
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i

bb.cl:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit76
  %i.pz = icmp ugt i64 %.pn355, 1
  %i.qa = add nsw i64 %.6.i24.sink, -11
  %i.qb = icmp ult i64 %i.qa, -28
  %or.cond338 = select i1 %i.pz, i1 true, i1 %i.qb
  br i1 %or.cond338, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.qc = and i64 %i.pj, 3
  %i.qd = icmp eq i64 %i.qc, 1
  %i.qe = shl i64 %i.pj, %i.pi
  %i.qf = icmp eq i64 %i.qe, %spec.select.i73.pn
  %or.cond.i58.i = select i1 %i.qd, i1 %i.qf, i1 false
  %i.qg = and i64 %i.pj, 67108860
  %spec.select339 = select i1 %or.cond.i58.i, i64 %i.qg, i64 %i.pj
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.sroa.0239.0 = phi i64 [ %i.pj, %bb.cl ], [ %spec.select339, %bb.cm ] ; 2 uses
  %i.qh = and i64 %.sroa.0239.0, 1
  %i.qi = add nuw nsw i64 %i.qh, %.sroa.0239.0    ; 2 uses
  %i.qj = lshr i64 %i.qi, 1
  %.not22.i49.i = icmp samesign ugt i64 %i.qi, 33554431 ; 2 uses
  %i.qk = zext i1 %.not22.i49.i to i32
  %spec.select341 = add nuw nsw i32 %i.po, %i.qk  ; 2 uses
  %i.ql = and i64 %i.qj, 9223372036846387199
  %.not23.i50.i = icmp samesign ugt i32 %spec.select341, 254 ; 2 uses
  %.not = select i1 %.not23.i50.i, i1 true, i1 %.not22.i49.i
  %spec.select349 = select i1 %.not, i64 0, i64 %i.ql
  %spec.select350 = select i1 %.not23.i50.i, i32 255, i32 %spec.select341
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i

_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i: ; preds = %bb.cn, %bb.cj, %bb.ci, %_ZN10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.i.thread, %bb.ck
  %.sroa.0239.2 = phi i64 [ 0, %bb.cj ], [ 0, %_ZN10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.i.thread ], [ 0, %bb.ci ], [ %i.pw, %bb.ck ], [ %spec.select349, %bb.cn ] ; 3 uses
  %.sroa.18244.1 = phi i32 [ 0, %bb.cj ], [ 0, %_ZN10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.i.thread ], [ 255, %bb.ci ], [ %i.py, %bb.ck ], [ %spec.select350, %bb.cn ] ; 3 uses
  br i1 %i.nc, label %bb.co, label %.thread325

bb.co:                                            ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i
  %i.qm = add i64 %.2275.sink, 1                  ; 3 uses
  %i.qn = icmp eq i64 %i.qm, 0
  %or.cond342 = select i1 %i.qn, i1 true, i1 %i.oj
  br i1 %or.cond342, label %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qo = icmp sgt i64 %.6.i24.sink, 38
  br i1 %i.qo, label %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i, label %.noexc69

.noexc69:                                         ; preds = %bb.cp
  %i.qp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.qm, i1 true) ; 2 uses
  %i.qq = trunc nuw nsw i64 %i.qp to i32
  %i.qr = shl i64 %i.qm, %i.qp
  %i.qs = trunc nsw i64 %.6.i24.sink to i32       ; 2 uses
  %i.qt = shl nsw i32 %i.qs, 1
  %i.qu = sext i32 %i.qt to i64
  %i.qv = getelementptr [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E.const, i64 %i.qu ; 2 uses
  %i.qw = getelementptr i8, ptr %i.qv, i64 5472
  %i.qx = load i64, ptr %i.qw, align 16, !tbaa !77
  %i.qy = zext i64 %i.qr to i128                  ; 2 uses
  %i.qz = zext i64 %i.qx to i128
  %i.ra = mul nuw i128 %i.qz, %i.qy               ; 2 uses
  %i.rb = trunc i128 %i.ra to i64                 ; 2 uses
  %i.rc = lshr i128 %i.ra, 64
  %i.rd = trunc nuw i128 %i.rc to i64             ; 3 uses
  %i.re = and i64 %i.rd, 274877906943
  %i.rf = icmp eq i64 %i.re, 274877906943
  br i1 %i.rf, label %.noexc70, label %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit71

.noexc70:                                         ; preds = %.noexc69
  %i.rg = getelementptr i8, ptr %i.qv, i64 5480
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !77
  %13 = zext i64 %i.rh to i128
  %14 = mul nuw i128 %13, %i.qy
  %15 = lshr i128 %14, 64
  %16 = trunc nuw i128 %15 to i64                 ; 2 uses
  %i.ri = add i64 %16, %i.rb                      ; 2 uses
  %17 = icmp ult i64 %i.ri, %16
  %i.rj = zext i1 %17 to i64
  %spec.select.i68 = add nuw i64 %i.rj, %i.rd
  br label %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit71

_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit71: ; preds = %.noexc70, %.noexc69
  %.pn357 = phi i64 [ %i.ri, %.noexc70 ], [ %i.rb, %.noexc69 ]
  %spec.select.i68.pn = phi i64 [ %spec.select.i68, %.noexc70 ], [ %i.rd, %.noexc69 ] ; 3 uses
  %i.rk = lshr i64 %spec.select.i68.pn, 63        ; 2 uses
  %i.rl = trunc nuw nsw i64 %i.rk to i32
  %i.rm = or disjoint i64 %i.rk, 38               ; 2 uses
  %i.rn = lshr i64 %spec.select.i68.pn, %i.rm     ; 6 uses
  %i.ro = mul nsw i32 %i.qs, 217706
  %i.rp = ashr i32 %i.ro, 16
  %i.rq = add nsw i32 %i.rp, 190
  %i.rr = sub nsw i32 %i.rq, %i.qq
  %i.rs = add nsw i32 %i.rr, %i.rl                ; 3 uses
  %i.rt = icmp slt i32 %i.rs, 1
  br i1 %i.rt, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit71
  %i.ru = sub nsw i32 1, %i.rs                    ; 2 uses
  %i.rv = icmp samesign ugt i32 %i.ru, 63
  br i1 %i.rv, label %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.rw = zext nneg i32 %i.ru to i64
  %i.rx = lshr i64 %i.rn, %i.rw                   ; 2 uses
  %i.ry = and i64 %i.rx, 1
  %i.rz = add nuw nsw i64 %i.ry, %i.rx            ; 2 uses
  %i.sa = lshr i64 %i.rz, 1
  %i.sb = icmp samesign ugt i64 %i.rz, 16777215
  %i.sc = zext i1 %i.sb to i32
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i

bb.cs:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit71
  %i.sd = icmp ugt i64 %.pn357, 1
  %i.se = add nsw i64 %.6.i24.sink, -11
  %i.sf = icmp ult i64 %i.se, -28
  %or.cond344 = select i1 %i.sd, i1 true, i1 %i.sf
  br i1 %or.cond344, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sg = and i64 %i.rn, 3
  %i.sh = icmp eq i64 %i.sg, 1
  %i.si = shl i64 %i.rn, %i.rm
  %i.sj = icmp eq i64 %i.si, %spec.select.i68.pn
  %or.cond.i.i = select i1 %i.sh, i1 %i.sj, i1 false
  %i.sk = and i64 %i.rn, 67108860
  %spec.select345 = select i1 %or.cond.i.i, i64 %i.sk, i64 %i.rn
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.sroa.0232.0 = phi i64 [ %i.rn, %bb.cs ], [ %spec.select345, %bb.ct ] ; 2 uses
  %i.sl = and i64 %.sroa.0232.0, 1
  %i.sm = add nuw nsw i64 %i.sl, %.sroa.0232.0    ; 2 uses
  %i.sn = lshr i64 %i.sm, 1
  %.not22.i.i = icmp samesign ugt i64 %i.sm, 33554431 ; 2 uses
  %i.so = zext i1 %.not22.i.i to i32
  %spec.select347 = add nuw nsw i32 %i.rs, %i.so  ; 2 uses
  %i.sp = and i64 %i.sn, 9223372036846387199
  %.not23.i.i = icmp samesign ugt i32 %spec.select347, 254 ; 2 uses
  %.not358 = select i1 %.not23.i.i, i1 true, i1 %.not22.i.i
  %spec.select351 = select i1 %.not358, i64 0, i64 %i.sp
  %spec.select352 = select i1 %.not23.i.i, i32 255, i32 %spec.select347
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i

_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i: ; preds = %bb.cu, %bb.cq, %bb.cp, %bb.co, %bb.cr
  %.sroa.0232.2 = phi i64 [ 0, %bb.cq ], [ 0, %bb.co ], [ 0, %bb.cp ], [ %i.sa, %bb.cr ], [ %spec.select351, %bb.cu ]
  %.sroa.18.1 = phi i32 [ 0, %bb.cq ], [ 0, %bb.co ], [ 255, %bb.cp ], [ %i.sc, %bb.cr ], [ %spec.select352, %bb.cu ]
  %.not.i91 = icmp ne i64 %.sroa.0239.2, %.sroa.0232.2
  %i.sq = icmp ne i32 %.sroa.18244.1, %.sroa.18.1
  %i.sr = select i1 %.not.i91, i1 true, i1 %i.sq
  br i1 %i.sr, label %.noexc65, label %.thread325

.noexc65:                                         ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i
  %i.ss = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.2275.sink, i1 true) ; 2 uses
  %i.st = trunc nuw nsw i64 %i.ss to i32
  %i.su = shl i64 %.2275.sink, %i.ss
  %i.sv = trunc i64 %.6.i24.sink to i32           ; 4 uses
  %i.sw = shl i32 %i.sv, 1                        ; 2 uses
  %i.sx = add i32 %i.sw, 684
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E.const, i64 %i.sy
  %i.ta = load i64, ptr %i.sz, align 16, !tbaa !77
  %i.tb = zext i64 %i.su to i128                  ; 2 uses
  %i.tc = zext i64 %i.ta to i128
  %i.td = mul nuw i128 %i.tc, %i.tb               ; 2 uses
  %i.te = lshr i128 %i.td, 64
  %i.tf = trunc nuw i128 %i.te to i64             ; 3 uses
  %i.tg = and i64 %i.tf, 274877906943
  %i.th = icmp eq i64 %i.tg, 274877906943
  br i1 %i.th, label %.noexc66, label %bb.cv

.noexc66:                                         ; preds = %.noexc65
  %i.ti = trunc i128 %i.td to i64
  %i.tj = add i32 %i.sw, 685
  %i.tk = sext i32 %i.tj to i64
  %i.tl = getelementptr inbounds [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E.const, i64 %i.tk
  %i.tm = load i64, ptr %i.tl, align 8, !tbaa !77
  %18 = zext i64 %i.tm to i128
  %19 = mul nuw i128 %18, %i.tb
  %20 = lshr i128 %19, 64
  %21 = trunc nuw i128 %20 to i64
  %i.tn = xor i64 %21, -1
  %22 = icmp ult i64 %i.tn, %i.ti
  %i.to = zext i1 %22 to i64
  %spec.select.i64 = add nuw i64 %i.to, %i.tf
  br label %bb.cv

bb.cv:                                            ; preds = %.noexc65, %.noexc66
  %spec.select.i64.pn = phi i64 [ %spec.select.i64, %.noexc66 ], [ %i.tf, %.noexc65 ] ; 2 uses
  %i.tp = lshr i64 %spec.select.i64.pn, 63        ; 2 uses
  %i.tq = trunc nuw nsw i64 %i.tp to i32
  %i.tr = xor i64 %i.tp, 1
  %i.ts = shl i64 %spec.select.i64.pn, %i.tr      ; 2 uses
  %i.tt = mul nsw i32 %i.sv, 217706
  %i.tu = ashr i32 %i.tt, 16
  %reass.sub.neg = sub nsw i32 %i.tq, %i.st
  %i.tv = add nsw i32 %reass.sub.neg, %i.tu       ; 3 uses
  %i.tw = add nsw i32 %i.tv, -32618
  %i.tx = icmp slt i32 %i.tv, 32618
  br i1 %i.tx, label %bb.cw, label %.thread325

bb.cw:                                            ; preds = %bb.cv
  %i.ty = icmp ugt i64 %.2275.sink, 9999
  br i1 %i.ty, label %.lr.ph.i, label %.preheader19.i

.preheader19.i:                                   ; preds = %.lr.ph.i, %bb.cw
  %.010.i.lcssa.i = phi i64 [ %.2275.sink, %bb.cw ], [ %i.ua, %.lr.ph.i ] ; 3 uses
  %.0.i.lcssa.i = phi i32 [ %i.sv, %bb.cw ], [ %i.ub, %.lr.ph.i ] ; 2 uses
  %i.tz = icmp samesign ugt i64 %.010.i.lcssa.i, 99
  br i1 %i.tz, label %.lr.ph25.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.cw, %.lr.ph.i
  %.0.i21.i = phi i32 [ %i.ub, %.lr.ph.i ], [ %i.sv, %bb.cw ]
  %.010.i20.i = phi i64 [ %i.ua, %.lr.ph.i ], [ %.2275.sink, %bb.cw ] ; 2 uses
  %i.ua = udiv i64 %.010.i20.i, 10000             ; 2 uses
  %i.ub = add nsw i32 %.0.i21.i, 4                ; 2 uses
  %i.uc = icmp ugt i64 %.010.i20.i, 99999999
  br i1 %i.uc, label %.lr.ph.i, label %.preheader19.i, !llvm.loop !13

.preheader.i:                                     ; preds = %.lr.ph25.i, %.preheader19.i
  %.111.i.lcssa.i = phi i64 [ %.010.i.lcssa.i, %.preheader19.i ], [ %i.ue, %.lr.ph25.i ] ; 2 uses
  %.1.i.lcssa.i = phi i32 [ %.0.i.lcssa.i, %.preheader19.i ], [ %i.uf, %.lr.ph25.i ] ; 2 uses
  %i.ud = icmp samesign ugt i64 %.111.i.lcssa.i, 9
  br i1 %i.ud, label %.lr.ph30.i, label %_ZN10fast_float19scientific_exponentEmi.exit.i

.lr.ph25.i:                                       ; preds = %.preheader19.i, %.lr.ph25.i
  %.1.i24.i = phi i32 [ %i.uf, %.lr.ph25.i ], [ %.0.i.lcssa.i, %.preheader19.i ]
  %.111.i23.i = phi i64 [ %i.ue, %.lr.ph25.i ], [ %.010.i.lcssa.i, %.preheader19.i ] ; 2 uses
  %i.ue = udiv i64 %.111.i23.i, 100               ; 2 uses
  %i.uf = add nsw i32 %.1.i24.i, 2                ; 2 uses
  %i.ug = icmp samesign ugt i64 %.111.i23.i, 9999
  br i1 %i.ug, label %.lr.ph25.i, label %.preheader.i, !llvm.loop !14

.lr.ph30.i:                                       ; preds = %.preheader.i, %.lr.ph30.i
  %.2.i29.i = phi i32 [ %i.ui, %.lr.ph30.i ], [ %.1.i.lcssa.i, %.preheader.i ]
  %.212.i28.i = phi i64 [ %i.uh, %.lr.ph30.i ], [ %.111.i.lcssa.i, %.preheader.i ] ; 2 uses
  %i.uh = udiv i64 %.212.i28.i, 10
  %i.ui = add nsw i32 %.2.i29.i, 1                ; 2 uses
  %i.uj = icmp samesign ugt i64 %.212.i28.i, 99
  br i1 %i.uj, label %.lr.ph30.i, label %_ZN10fast_float19scientific_exponentEmi.exit.i, !llvm.loop !15

_ZN10fast_float19scientific_exponentEmi.exit.i:   ; preds = %.lr.ph30.i, %.preheader.i
  %.2.i.lcssa.i = phi i32 [ %.1.i.lcssa.i, %.preheader.i ], [ %i.ui, %.lr.ph30.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 0, ptr %i.b, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %6, i8 0, i64 504, i1 false)
  call void @_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %6, ptr noundef nonnull align 8 dereferenceable(68) %7, i64 noundef 114, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #25
  %i.uk = add nsw i32 %.2.i.lcssa.i, 1
  %i.ul = load i64, ptr %i.b, align 8, !tbaa !77
  %i.um = trunc i64 %i.ul to i32
  %i.un = sub i32 %i.uk, %i.um                    ; 3 uses
  %i.uo = icmp sgt i32 %i.un, -1
  br i1 %i.uo, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_ZN10fast_float19scientific_exponentEmi.exit.i
  %i.up = call { i64, i32 } @_ZN10fast_float19positive_digit_compIfEENS_17adjusted_mantissaERNS_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %6, i32 noundef %i.un) #25
  br label %_ZN10fast_float10digit_compIfcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit

bb.cy:                                            ; preds = %_ZN10fast_float19scientific_exponentEmi.exit.i
  %i.uq = add nsw i32 %i.tv, 150
  %i.ur = call { i64, i32 } @_ZN10fast_float19negative_digit_compIfEENS_17adjusted_mantissaERNS_6bigintES1_i(ptr noundef nonnull align 8 dereferenceable(504) %6, i64 %i.ts, i32 %i.uq, i32 noundef %i.un) #25
  br label %_ZN10fast_float10digit_compIfcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit

_ZN10fast_float10digit_compIfcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit: ; preds = %bb.cx, %bb.cy
  %.pn.i92 = phi { i64, i32 } [ %i.up, %bb.cx ], [ %i.ur, %bb.cy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %.fca.0.extract.i = extractvalue { i64, i32 } %.pn.i92, 0
  %.fca.1.extract.i = extractvalue { i64, i32 } %.pn.i92, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !85, !range !86
  %.pre533 = load i64, ptr %i.oh, align 8, !tbaa !87
  br label %.thread325

.thread325:                                       ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i, %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i, %_ZN10fast_float10digit_compIfcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit, %bb.cv
  %i.us = phi i64 [ %.pre533, %_ZN10fast_float10digit_compIfcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %.2275.sink, %bb.cv ], [ %.2275.sink, %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i ], [ %.2275.sink, %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i ]
  %i.ut = phi i8 [ %.pre, %_ZN10fast_float10digit_compIfcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.e, %bb.cv ], [ %i.e, %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i ], [ %i.e, %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i ]
  %.sroa.0225.1 = phi i64 [ %.fca.0.extract.i, %_ZN10fast_float10digit_compIfcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.ts, %bb.cv ], [ %.sroa.0239.2, %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i ], [ %.sroa.0239.2, %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i ] ; 2 uses
  %.sroa.9.1 = phi i32 [ %.fca.1.extract.i, %_ZN10fast_float10digit_compIfcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.tw, %bb.cv ], [ %.sroa.18244.1, %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i ], [ %.sroa.18244.1, %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i ] ; 3 uses
  %i.uu = zext nneg i8 %i.ut to i32
  %i.uv = trunc i64 %.sroa.0225.1 to i32
  %i.uw = shl i32 %.sroa.9.1, 23
  %i.ux = or i32 %i.uw, %i.uv
  %i.uy = shl nuw i32 %i.uu, 31
  %i.uz = or i32 %i.ux, %i.uy
  store i32 %i.uz, ptr %2, align 4, !tbaa !75
  %i.va = icmp ne i64 %i.us, 0
  %i.vb = icmp eq i64 %.sroa.0225.1, 0
  %or.cond5.i63 = select i1 %i.va, i1 %i.vb, i1 false
  %i.vc = icmp eq i32 %.sroa.9.1, 0
  %or.cond8.i = select i1 %or.cond5.i63, i1 %i.vc, i1 false
  %i.vd = icmp eq i32 %.sroa.9.1, 255
  %or.cond348 = select i1 %or.cond8.i, i1 true, i1 %i.vd
  %spec.select353 = select i1 %or.cond348, i32 34, i32 0
  br label %_ZN10fast_float19from_chars_advancedIfcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

_ZN10fast_float19from_chars_advancedIfcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit: ; preds = %.split.thread, %.split, %.thread325, %bb.ca, %bb.cb, %.thread628, %bb.ch
  %i.ve = phi ptr [ %.6288.sink, %bb.ca ], [ %.6288.sink, %bb.ch ], [ %i.oa, %.thread628 ], [ %.6288.sink, %bb.cb ], [ %.6288.sink, %.thread325 ], [ %.6288.sink, %.split ], [ %.ph, %.split.thread ]
  %.sroa.247.1.i = phi i32 [ 0, %bb.ca ], [ 0, %bb.ch ], [ 0, %.thread628 ], [ 0, %bb.cb ], [ %spec.select353, %.thread325 ], [ 0, %.split ], [ 0, %.split.thread ]
  %.fca.0.insert.i = insertvalue { ptr, i32 } poison, ptr %i.ve, 0
  %.fca.1.insert.i = insertvalue { ptr, i32 } %.fca.0.insert.i, i32 %.sroa.247.1.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret { ptr, i32 } %.fca.1.insert.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(68) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  store i64 0, ptr %3, align 8, !tbaa !77
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !419  ; 4 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !420  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 9 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 5 uses
  %i.h = icmp sgt i64 %i.e, 7
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.9311 = phi ptr [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %.0.copyload.i69 = load i64, ptr %.9311, align 1
  %.not.i70 = icmp eq i64 %.0.copyload.i69, 3472328296227680304
  br i1 %.not.i70, label %bb.b, label %._crit_edge.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.9311, i64 8 ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.g, %i.j
  %i.l = icmp sgt i64 %i.k, 7
  br i1 %i.l, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !410

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.b
  %.9.lcssa.ph = phi ptr [ %i.i, %bb.b ], [ %.9311, %.lr.ph ] ; 2 uses
  %.pre450 = ptrtoaddr ptr %.9.lcssa.ph to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.9.lcssa440.pre-phi = phi i64 [ %.pre450, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.9.lcssa = phi ptr [ %.9.lcssa.ph, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not8.i67316 = icmp eq ptr %.9.lcssa, %i.f
  br i1 %.not8.i67316, label %._crit_edge350, label %.lr.ph319.preheader

.lr.ph319.preheader:                              ; preds = %._crit_edge
  %i.m = add i64 %i.e, %i.c
  %i.n = sub i64 %i.m, %.9.lcssa440.pre-phi
  %scevgep = getelementptr i8, ptr %.9.lcssa, i64 %i.n
  br label %.lr.ph319

.lr.ph319:                                        ; preds = %.lr.ph319.preheader, %bb.c
  %.10317 = phi ptr [ %i.p, %bb.c ], [ %.9.lcssa, %.lr.ph319.preheader ] ; 3 uses
  %i.o = load i8, ptr %.10317, align 1, !tbaa !71
  %.not9.i68 = icmp eq i8 %i.o, 48
  br i1 %.not9.i68, label %bb.c, label %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit71

bb.c:                                             ; preds = %.lr.ph319
  %i.p = getelementptr inbounds nuw i8, ptr %.10317, i64 1 ; 2 uses
  %.not8.i67 = icmp eq ptr %i.p, %i.f
  br i1 %.not8.i67, label %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit71, label %.lr.ph319, !llvm.loop !411

_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit71:  ; preds = %.lr.ph319, %bb.c
  %.10.lcssa = phi ptr [ %scevgep, %bb.c ], [ %.10317, %.lr.ph319 ] ; 2 uses
  %.not348 = icmp eq ptr %.10.lcssa, %i.f
  br i1 %.not348, label %._crit_edge350, label %.preheader294.lr.ph

.preheader294.lr.ph:                              ; preds = %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit71
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 7 uses
  br label %.preheader294

.preheader294:                                    ; preds = %.preheader294.lr.ph, %_ZN10fast_float6bigint3addEm.exit129
  %.0349 = phi ptr [ %.10.lcssa, %.preheader294.lr.ph ], [ %.2.lcssa, %_ZN10fast_float6bigint3addEm.exit129 ] ; 5 uses
  %i.r = ptrtoint ptr %.0349 to i64
  %i.s = sub i64 %i.g, %i.r
  %i.t = icmp sgt i64 %i.s, 7
  %.pre.pre = load i64, ptr %3, align 8, !tbaa !77 ; 4 uses
  %i.u = sub i64 %2, %.pre.pre
  %i.v = icmp ugt i64 %i.u, 7
end_hunk_1
begin_hunk_2_@_ZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE:bb.a
  %.0.i89.i331 = phi ptr [ %i.fv, %.critedge8.i.i ], [ %.0224, %bb.ao ] ; 2 uses
  %.181.i.i330 = phi i64 [ %spec.select134.i.i, %.critedge8.i.i ], [ %.080.i80.i, %bb.ao ] ; 2 uses
  %i.fs = load i8, ptr %.0.i89.i331, align 1, !tbaa !71 ; 2 uses
  switch i8 %i.fs, label %.critedge6.i.i [
    i8 48, label %.critedge8.i.i
    i8 46, label %.critedge8.i.i
  ]

.critedge8.i.i:                                   ; preds = %.preheader, %.preheader
  %i.ft = icmp eq i8 %i.fs, 48
  %i.fu = sext i1 %i.ft to i64
  %spec.select134.i.i = add nsw i64 %.181.i.i330, %i.fu ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.i89.i331, i64 1 ; 2 uses
  %.not129.i90.i = icmp eq ptr %i.fv, %i.d
  br i1 %.not129.i90.i, label %.critedge6.i.i, label %.preheader, !llvm.loop !4

.critedge6.i.i:                                   ; preds = %.preheader, %.critedge8.i.i
  %.181.i.i.lcssa = phi i64 [ %.181.i.i330, %.preheader ], [ %spec.select134.i.i, %.critedge8.i.i ]
  %i.fw = icmp sgt i64 %.181.i.i.lcssa, 19
  br i1 %i.fw, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %.critedge, !prof !73

_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit104.i: ; preds = %.critedge133.i.i, %bb.n, %bb.m
  %i.fx = icmp eq i8 %i.ag, 43
  %or.cond271 = or i1 %i.ah, %i.fx
  %.035.i.idx = zext i1 %or.cond271 to i64
  %.035.i = getelementptr inbounds nuw i8, ptr %.028.i.i.i, i64 %.035.i.idx ; 6 uses
  %i.fy = ptrtoint ptr %.035.i to i64
  %i.fz = sub i64 %i.f, %i.fy                     ; 2 uses
  %i.ga = icmp sgt i64 %i.fz, 2
  br i1 %i.ga, label %bb.ap, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread384

bb.ap:                                            ; preds = %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit104.i
  %.0.copyload4.i.i = load i24, ptr %.035.i, align 1
  %i.gb = and i24 %.0.copyload4.i.i, -2105377
  switch i24 %i.gb, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread384 [
    i24 5128526, label %bb.aq
    i24 4607561, label %bb.au
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.gc = getelementptr inbounds nuw i8, ptr %.035.i, i64 3 ; 5 uses
  %i.gd = select i1 %i.ah, double -qnan, double +qnan
  store double %i.gd, ptr %i.a, align 8, !tbaa !97
  %.not42.i = icmp eq ptr %i.gc, %i.d
  br i1 %.not42.i, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ge = load i8, ptr %i.gc, align 1, !tbaa !71
  %i.gf = icmp ne i8 %i.ge, 40
  %i.gg = getelementptr inbounds nuw i8, ptr %.035.i, i64 4 ; 4 uses
  %.not4352.i = icmp eq ptr %i.gg, %i.d
  %or.cond55.i = select i1 %i.gf, i1 true, i1 %.not4352.i
  br i1 %or.cond55.i, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ar
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !71  ; 2 uses
  %i.gi = icmp eq i8 %i.gh, 41
  br i1 %i.gi, label %.lr.ph.i._crit_edge, label %.lr.ph333

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.backedge.i, %.lr.ph.i.preheader
  %.053.i.lcssa = phi ptr [ %i.gg, %.lr.ph.i.preheader ], [ %.053.be.i, %.lr.ph.backedge.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.053.i.lcssa, i64 1
  br label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

.lr.ph333:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.backedge.i
  %i.gk = phi i8 [ %i.gq, %.lr.ph.backedge.i ], [ %i.gh, %.lr.ph.i.preheader ] ; 3 uses
  %.053.i332 = phi ptr [ %.053.be.i, %.lr.ph.backedge.i ], [ %i.gg, %.lr.ph.i.preheader ] ; 2 uses
  %i.gl = and i8 %i.gk, -33
  %i.gm = add i8 %i.gl, -65
  %or.cond50.i = icmp ult i8 %i.gm, 26
  br i1 %or.cond50.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph333
  %i.gn = add i8 %i.gk, -58
  %or.cond45.i = icmp ult i8 %i.gn, -10
  %i.go = icmp ne i8 %i.gk, 95
  %or.cond49.not58.i = and i1 %i.go, %or.cond45.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.053.i332, i64 1 ; 2 uses
  %.not43.i = icmp eq ptr %i.gp, %i.d
  %or.cond56.i = select i1 %or.cond49.not58.i, i1 true, i1 %.not43.i
  br i1 %or.cond56.i, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread, label %.lr.ph.backedge.i

bb.at:                                            ; preds = %.lr.ph333
  %.old.i = getelementptr inbounds nuw i8, ptr %.053.i332, i64 1 ; 2 uses
  %.not43.old.i = icmp eq ptr %.old.i, %i.d
  br i1 %.not43.old.i, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread, label %.lr.ph.backedge.i

.lr.ph.backedge.i:                                ; preds = %bb.at, %bb.as
  %.053.be.i = phi ptr [ %.old.i, %bb.at ], [ %i.gp, %bb.as ] ; 3 uses
  %i.gq = load i8, ptr %.053.be.i, align 1, !tbaa !71 ; 2 uses
  %i.gr = icmp eq i8 %i.gq, 41
  br i1 %i.gr, label %.lr.ph.i._crit_edge, label %.lr.ph333, !llvm.loop !440

bb.au:                                            ; preds = %bb.ap
  %i.gs = icmp samesign ugt i64 %i.fz, 7
  br i1 %i.gs, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gt = getelementptr inbounds nuw i8, ptr %.035.i, i64 3
  %.0.copyload4.i47.i = load i40, ptr %i.gt, align 1
  %i.gu = and i40 %.0.copyload4.i47.i, -137977929761
  %i.gv = icmp eq i40 %i.gu, 383666179657
  br i1 %i.gv, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.sink.i = phi i64 [ 3, %bb.aw ], [ 8, %bb.av ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.035.i, i64 %.sink.i
  %i.gx = select i1 %i.ah, double -inf, double +inf
  store double %i.gx, ptr %i.a, align 8, !tbaa !97
  br label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

.critedge:                                        ; preds = %bb.ao, %.critedge6.i.i
  %i.gy = add i64 %.377.i.i, -23
  %or.cond272 = icmp ult i64 %i.gy, -45
  br i1 %or.cond272, label %bb.bk, label %bb.ay

bb.ay:                                            ; preds = %.critedge
  %i.gz = load volatile float, ptr @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !75 ; 2 uses
  %i.ha = fadd float %i.gz, 1.000000e+00
  %i.hb = fsub float 1.000000e+00, %i.gz
  %i.hc = fcmp oeq float %i.ha, %i.hb
  br i1 %i.hc, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %.not31.i = icmp ugt i64 %.1220, 9007199254740992
  br i1 %.not31.i, label %.thread263, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hd = uitofp nneg i64 %.1220 to double        ; 2 uses
  %i.he = icmp slt i64 %.377.i.i, 0
  br i1 %i.he, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hf = sub nsw i64 0, %.377.i.i
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE.const, i64 %i.hf
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !97
  %i.hi = fdiv double %i.hd, %i.hh
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE.const, i64 %.377.i.i
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !97
  %i.hl = fmul double %i.hk, %i.hd
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %storemerge32.i = phi double [ %i.hl, %bb.bc ], [ %i.hi, %bb.bb ] ; 2 uses
  store double %storemerge32.i, ptr %i.a, align 8, !tbaa !97
  br i1 %i.ah, label %bb.be, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

bb.be:                                            ; preds = %bb.bd
  %i.hm = fneg double %storemerge32.i
  store double %i.hm, ptr %i.a, align 8, !tbaa !97
  br label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

bb.bf:                                            ; preds = %bb.ay
  %i.hn = icmp sgt i64 %.377.i.i, -1
  br i1 %i.hn, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE12max_mantissaE.const, i64 %.377.i.i
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !77
  %.not30.i = icmp ugt i64 %.1220, %i.hp
  br i1 %.not30.i, label %.thread263, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hq = icmp eq i64 %.1220, 0
  br i1 %i.hq, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hr = select i1 %i.ah, double -0.000000e+00, double 0.000000e+00
  store double %i.hr, ptr %i.a, align 8, !tbaa !97
  br label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

bb.bj:                                            ; preds = %bb.bh
  %i.hs = uitofp i64 %.1220 to double
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE.const, i64 %.377.i.i
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !97
  %i.hv = fmul double %i.hu, %i.hs                ; 2 uses
  %i.hw = fneg double %i.hv
  %storemerge.i = select i1 %i.ah, double %i.hw, double %i.hv
  store double %storemerge.i, ptr %i.a, align 8, !tbaa !97
  br label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

bb.bk:                                            ; preds = %bb.bf, %.critedge
  %i.hx = icmp eq i64 %.1220, 0
  %i.hy = icmp slt i64 %.377.i.i, -342
  %or.cond = select i1 %i.hx, i1 true, i1 %i.hy
  br i1 %or.cond, label %bb.bs, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hz = icmp sgt i64 %.377.i.i, 308
  br i1 %i.hz, label %bb.bs, label %.thread263

.thread263:                                       ; preds = %bb.bg, %bb.az, %bb.bl
  %i.ia = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.1220, i1 true) ; 2 uses
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = shl i64 %.1220, %i.ia
  %i.id = trunc nsw i64 %.377.i.i to i32          ; 2 uses
  %i.ie = shl nsw i32 %i.id, 1
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E.const, i64 %i.if ; 2 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 5472
  %i.ii = load i64, ptr %i.ih, align 16, !tbaa !77
  %i.ij = zext i64 %i.ic to i128                  ; 2 uses
  %i.ik = zext i64 %i.ii to i128
  %i.il = mul nuw i128 %i.ik, %i.ij               ; 2 uses
  %i.im = trunc i128 %i.il to i64                 ; 2 uses
  %i.in = lshr i128 %i.il, 64
  %i.io = trunc nuw i128 %i.in to i64             ; 3 uses
  %i.ip = and i64 %i.io, 511
  %i.iq = icmp eq i64 %i.ip, 511
  br i1 %i.iq, label %bb.bm, label %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit

bb.bm:                                            ; preds = %.thread263
  %i.ir = getelementptr i8, ptr %i.ig, i64 5480
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !77
  %1 = zext i64 %i.is to i128
  %2 = mul nuw i128 %1, %i.ij
  %3 = lshr i128 %2, 64
  %4 = trunc nuw i128 %3 to i64                   ; 2 uses
  %i.it = add i64 %4, %i.im                       ; 2 uses
  %5 = icmp ult i64 %i.it, %4
  %i.iu = zext i1 %5 to i64
  %spec.select.i = add nuw i64 %i.iu, %i.io
  br label %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit

_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit: ; preds = %bb.bm, %.thread263
  %.pn281 = phi i64 [ %i.it, %bb.bm ], [ %i.im, %.thread263 ]
  %spec.select.i.pn = phi i64 [ %spec.select.i, %bb.bm ], [ %i.io, %.thread263 ] ; 3 uses
  %i.iv = lshr i64 %spec.select.i.pn, 63          ; 2 uses
  %i.iw = trunc nuw nsw i64 %i.iv to i32
  %i.ix = add nuw nsw i64 %i.iv, 9                ; 2 uses
  %i.iy = lshr i64 %spec.select.i.pn, %i.ix       ; 6 uses
  %i.iz = mul nsw i32 %i.id, 217706
  %i.ja = ashr i32 %i.iz, 16
  %reass.sub = sub nsw i32 %i.ja, %i.ib
  %i.jb = add nsw i32 %reass.sub, 1086
  %i.jc = add nsw i32 %i.jb, %i.iw                ; 3 uses
  %i.jd = icmp slt i32 %i.jc, 1
  br i1 %i.jd, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit
  %i.je = sub nsw i32 1, %i.jc                    ; 2 uses
  %i.jf = icmp samesign ugt i32 %i.je, 63
  br i1 %i.jf, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jg = zext nneg i32 %i.je to i64
  %i.jh = lshr i64 %i.iy, %i.jg                   ; 2 uses
  %i.ji = and i64 %i.jh, 1
  %i.jj = add nuw nsw i64 %i.ji, %i.jh            ; 2 uses
  %i.jk = lshr i64 %i.jj, 1
  %i.jl = icmp samesign ugt i64 %i.jj, 9007199254740991
  %i.jm = zext i1 %i.jl to i32
  br label %bb.bs

bb.bp:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit
  %i.jn = icmp ugt i64 %.pn281, 1
  %i.jo = add nsw i64 %.377.i.i, -24
  %i.jp = icmp ult i64 %i.jo, -28
  %or.cond274 = select i1 %i.jn, i1 true, i1 %i.jp
  br i1 %or.cond274, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jq = and i64 %i.iy, 3
  %i.jr = icmp eq i64 %i.jq, 1
  %i.js = shl i64 %i.iy, %i.ix
  %i.jt = icmp eq i64 %i.js, %spec.select.i.pn
  %or.cond.i21 = select i1 %i.jr, i1 %i.jt, i1 false
  %i.ju = and i64 %i.iy, 72057594037927932
  %spec.select275 = select i1 %or.cond.i21, i64 %i.ju, i64 %i.iy
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.sroa.0202.0 = phi i64 [ %i.iy, %bb.bp ], [ %spec.select275, %bb.bq ] ; 2 uses
  %i.jv = and i64 %.sroa.0202.0, 1
  %i.jw = add nuw nsw i64 %i.jv, %.sroa.0202.0    ; 2 uses
  %i.jx = lshr i64 %i.jw, 1
  %.not22.i = icmp samesign ugt i64 %i.jw, 18014398509481983 ; 2 uses
  %i.jy = zext i1 %.not22.i to i32
  %spec.select277 = add nuw nsw i32 %i.jc, %i.jy  ; 2 uses
  %i.jz = and i64 %i.jx, 9218868437227405311
  %.not23.i = icmp samesign ugt i32 %spec.select277, 2046 ; 2 uses
  %.not = select i1 %.not23.i, i1 true, i1 %.not22.i
  %spec.select278 = select i1 %.not, i64 0, i64 %i.jz
  %spec.select279 = select i1 %.not23.i, i32 2047, i32 %spec.select277
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bn, %bb.bl, %bb.bk, %bb.bo
  %.sroa.0202.2 = phi i64 [ 0, %bb.bn ], [ 0, %bb.bk ], [ 0, %bb.bl ], [ %i.jk, %bb.bo ], [ %spec.select278, %bb.br ]
  %.sroa.18207.1 = phi i32 [ 0, %bb.bn ], [ 0, %bb.bk ], [ 2047, %bb.bl ], [ %i.jm, %bb.bo ], [ %spec.select279, %bb.br ]
  %i.ka = zext nneg i32 %.sroa.18207.1 to i64
  %i.kb = shl nuw nsw i64 %i.ka, 52
  %i.kc = select i1 %i.ah, i64 -9223372036854775808, i64 0
  %i.kd = or i64 %.sroa.0202.2, %i.kc
  %i.ke = or i64 %i.kd, %i.kb
  store i64 %i.ke, ptr %i.a, align 8, !tbaa !97
  br label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit: ; preds = %.critedge6.i.i
  %i.kf = call { ptr, i32 } @_ZN10fast_float22parse_number_slow_pathIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EEb(ptr noundef nonnull %.028.i.i.i, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 133, i64 42949673006, i1 noundef zeroext false) #25 ; 2 uses
  %i.kg = extractvalue { ptr, i32 } %i.kf, 0      ; 2 uses
  %i.kh = extractvalue { ptr, i32 } %i.kf, 1
  switch i32 %i.kh, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread384 [
    i32 34, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread
    i32 0, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread
  ]

_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread: ; preds = %bb.at, %bb.as, %bb.ar, %.lr.ph.i._crit_edge, %bb.ax, %bb.aq, %bb.bi, %bb.be, %bb.bd, %bb.bj, %bb.bs, %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit
  %.sroa.073.1.i268 = phi ptr [ %i.kg, %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit ], [ %i.kg, %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit ], [ %.6230, %bb.bs ], [ %.6230, %bb.bj ], [ %.6230, %bb.bd ], [ %.6230, %bb.be ], [ %.6230, %bb.bi ], [ %i.gw, %bb.ax ], [ %i.d, %bb.aq ], [ %i.gc, %bb.ar ], [ %i.gj, %.lr.ph.i._crit_edge ], [ %i.gc, %bb.as ], [ %i.gc, %bb.at ]
  %i.ki = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.kj = ptrtoint ptr %.sroa.073.1.i268 to i64
  %i.kk = ptrtoint ptr %i.ki to i64               ; 2 uses
  %i.kl = sub i64 %i.kj, %i.kk                    ; 2 uses
  %i.km = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = sub i64 %i.kn, %i.kk
  %i.kp = icmp ugt i64 %i.kl, %i.ko
  br i1 %i.kp, label %bb.bt, label %bb.bu, !prof !73

bb.bt:                                            ; preds = %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #11
          to label %.noexc unwind label %bb.bv

.noexc:                                           ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kl
  store ptr %i.kq, ptr %0, align 8, !tbaa !69
  %i.kr = load double, ptr %i.a, align 8, !tbaa !97
  br label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread384

_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread384: ; preds = %bb.ap, %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit104.i, %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, %bb.bu
  %.sroa.930.0 = phi double [ %i.kr, %bb.bu ], [ 0.000000e+00, %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit ], [ 0.000000e+00, %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit104.i ], [ 0.000000e+00, %bb.ap ]
  %.sroa.5.0 = phi i64 [ 1, %bb.bu ], [ 2306, %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit ], [ 2306, %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit104.i ], [ 2306, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.thread

switch.hole_check:                                ; preds = %bb.k
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 8388639, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.thread, label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit

_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.thread: ; preds = %switch.hole_check, %._crit_edge.i.i.i, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit, %bb.a, %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread384
  %.sroa.930.1 = phi double [ %.sroa.930.0, %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread384 ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit ], [ 0.000000e+00, %._crit_edge.i.i.i ], [ 0.000000e+00, %switch.hole_check ]
  %.sroa.5.1 = phi i64 [ %.sroa.5.0, %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread384 ], [ 258, %bb.a ], [ 258, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit ], [ 258, %._crit_edge.i.i.i ], [ 258, %switch.hole_check ]
  %.fca.0.insert = insertvalue { i64, double } poison, i64 %.sroa.5.1, 0
  %.fca.1.insert = insertvalue { i64, double } %.fca.0.insert, double %.sroa.930.1, 1
  ret { i64, double } %.fca.1.insert

bb.bv:                                            ; preds = %bb.bt
  %i.ks = landingpad { ptr, i32 }
          catch ptr null
  %i.kt = extractvalue { ptr, i32 } %i.ks, 0
  call void @__clang_call_terminate(ptr %i.kt) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN10fast_float22parse_number_slow_pathIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EEb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %3, i64 %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"struct.fast_float::bigint", align 8 ; 6 uses
  %7 = alloca %"struct.fast_float::parsed_number_string_t", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %.sroa.2.8.extract.trunc.i = trunc i64 %4 to i8 ; 5 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !71, !noalias !78
  %.fr = freeze i8 %i.c                           ; 4 uses
  %i.d = icmp eq i8 %.fr, 45                      ; 7 uses
  %i.e = zext i1 %i.d to i8                       ; 4 uses
  br i1 %5, label %bb.b, label %bb.am

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %i.g = icmp eq ptr %i.f, %1
  br i1 %i.g, label %.thread598, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.f, align 1, !tbaa !71, !noalias !446 ; 2 uses
  %i.i = sext i8 %i.h to i32
  %i.j = add nsw i32 %i.i, -48
  %i.k = icmp ult i32 %i.j, 10
  br i1 %i.k, label %bb.e, label %.thread598

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.l = phi i8 [ %i.h, %bb.d ], [ %.fr, %bb.b ]  ; 3 uses
  %.0256 = phi ptr [ %i.f, %bb.d ], [ %0, %bb.b ] ; 18 uses
  %.0256517 = ptrtoaddr ptr %.0256 to i64
  %.not.i = icmp eq ptr %.0256, %1                ; 2 uses
  br i1 %.not.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = sext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -48
  %i.o = icmp ult i32 %i.n, 10
  br i1 %i.o, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.p = sext i8 %i.l to i64
  %i.q = add nsw i64 %i.p, -48                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0256, i64 1 ; 4 uses
  %.not118.i = icmp eq ptr %i.r, %1
  br i1 %.not118.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i8, ptr %i.r, align 1, !tbaa !71, !noalias !446 ; 2 uses
  %i.t = sext i8 %i.s to i32
  %i.u = add nsw i32 %i.t, -48
  %i.v = icmp ult i32 %i.u, 10
  br i1 %i.v, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %i.w = mul nuw nsw i64 %i.q, 10
  %i.x = sext i8 %i.s to i64
  %i.y = add nsw i64 %i.w, -48
  %i.z = add nsw i64 %i.y, %i.x                   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0256, i64 2 ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN10fast_float22parse_number_slow_pathIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EEb:bb.a
  br i1 %.not129.i26, label %.critedge6.i, label %.lr.ph413, !llvm.loop !4

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
  %i.mg = load i8, ptr %.7281417, align 1, !tbaa !71
  %i.mh = sext i8 %i.mg to i64
  %i.mi = add i64 %i.mf, -48
  %i.mj = add i64 %i.mi, %i.mh                    ; 5 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.7281417, i64 1 ; 3 uses
  %i.ml = icmp ult i64 %i.mj, 1000000000000000000
  %i.mm = icmp ne ptr %i.mk, %.1275
  %i.mn = select i1 %i.ml, i1 %i.mm, i1 false
  br i1 %i.mn, label %.lr.ph419, label %._crit_edge, !llvm.loop !11

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
  %i.mr = load i8, ptr %.8282422, align 1, !tbaa !71
  %i.ms = sext i8 %i.mr to i64
  %i.mt = add i64 %i.mq, -48
  %i.mu = add i64 %i.mt, %i.ms                    ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.8282422, i64 1 ; 3 uses
  %i.mw = icmp ult i64 %i.mu, 1000000000000000000
  %i.mx = icmp ne ptr %i.mv, %i.mp
  %i.my = select i1 %i.mw, i1 %i.mx, i1 false
  br i1 %i.my, label %.lr.ph425, label %._crit_edge426, !llvm.loop !12

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
  store i64 %.6.i24.sink, ptr %7, align 8, !tbaa !77
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.2267.sink, ptr %.sroa.5158.0..sroa_idx, align 8, !tbaa !77
  %.sroa.6159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.6280.sink, ptr %.sroa.6159.0..sroa_idx, align 8, !tbaa !79
  %.sroa.7160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 %i.e, ptr %.sroa.7160.0..sroa_idx, align 8, !tbaa !81
  %.sroa.8161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 25
  store i8 1, ptr %.sroa.8161.0..sroa_idx, align 1, !tbaa !81
  %.sroa.10162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i8 %.sroa.10162.0.sink, ptr %.sroa.10162.0..sroa_idx, align 2, !tbaa !81
  %.sroa.12164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %.0274.sink, ptr %.sroa.12164.0..sroa_idx, align 8, !tbaa !79
  %.sroa.15165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sink650, ptr %.sroa.15165.0..sroa_idx, align 8, !tbaa !77
  %.sroa.17166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %.sroa.17166.0.sink, ptr %.sroa.17166.0..sroa_idx, align 8, !tbaa !79
  %.sroa.20168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 %.sroa.20168.0.sink, ptr %.sroa.20168.0..sroa_idx, align 8, !tbaa !77
  %.sroa.22169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 0, ptr %.sroa.22169.0..sroa_idx, align 8
  %i.nc = trunc nuw i8 %.sroa.10162.0.sink to i1  ; 2 uses
  %i.nd = add i64 %.6.i24.sink, -23
  %or.cond651 = icmp ult i64 %i.nd, -45
  %or.cond676 = select i1 %i.nc, i1 true, i1 %or.cond651
  br i1 %or.cond676, label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.i.thread, label %bb.bx

bb.bx:                                            ; preds = %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit
  %i.ne = load volatile float, ptr @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !75 ; 2 uses
  %i.nf = fadd float %i.ne, 1.000000e+00
  %i.ng = fsub float 1.000000e+00, %i.ne
  %i.nh = fcmp oeq float %i.nf, %i.ng
  br i1 %i.nh, label %bb.by, label %bb.cc

.thread598:                                       ; preds = %bb.bv, %bb.br, %.critedge133.i, %bb.ap, %bb.ao, %bb.ak, %bb.ag, %._crit_edge451, %bb.q, %.critedge.i, %bb.d, %bb.c
  %.ph = phi ptr [ %i.gg, %bb.ao ], [ %.2258295, %bb.ak ], [ %.2276, %.critedge133.i ], [ %i.gg, %bb.ap ], [ %.4278, %bb.br ], [ %i.f, %bb.c ], [ %.10.lcssa, %._crit_edge451 ], [ %i.f, %bb.d ], [ %.1257, %.critedge.i ], [ %.0256, %bb.q ], [ %.4260, %bb.ag ], [ %.2276, %bb.bv ] ; 2 uses
  %i.ni = load volatile float, ptr @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !75 ; 2 uses
  %i.nj = fadd float %i.ni, 1.000000e+00
  %i.nk = fsub float 1.000000e+00, %i.ni
  %i.nl = fcmp oeq float %i.nj, %i.nk
  br i1 %i.nl, label %.split.thread, label %.thread620

.split.thread:                                    ; preds = %.thread598
  store double 0.000000e+00, ptr %2, align 8, !tbaa !97
  br label %_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.by:                                            ; preds = %bb.bx
  %.not31.i.i = icmp ugt i64 %.2267.sink, 9007199254740992
  br i1 %.not31.i.i, label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.i.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nm = uitofp nneg i64 %.2267.sink to double   ; 3 uses
  store double %i.nm, ptr %2, align 8, !tbaa !97
  %i.nn = icmp slt i64 %.6.i24.sink, 0
  br i1 %i.nn, label %bb.ca, label %.split

.split:                                           ; preds = %bb.bz
  %i.no = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE.const, i64 %.6.i24.sink
  %i.np = load double, ptr %i.no, align 8, !tbaa !97
  %i.nq = fmul double %i.np, %i.nm                ; 2 uses
  store double %i.nq, ptr %2, align 8, !tbaa !97
  br i1 %i.d, label %bb.cb, label %_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.ca:                                            ; preds = %bb.bz
  %i.nr = sub nsw i64 0, %.6.i24.sink
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE.const, i64 %i.nr
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !97
  %i.nu = fdiv double %i.nm, %i.nt                ; 2 uses
  store double %i.nu, ptr %2, align 8, !tbaa !97
  br i1 %i.d, label %bb.cb, label %_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.cb:                                            ; preds = %.split, %bb.ca
  %storemerge32.i.i610 = phi double [ %i.nq, %.split ], [ %i.nu, %bb.ca ]
  %i.nv = fneg double %storemerge32.i.i610
  store double %i.nv, ptr %2, align 8, !tbaa !97
  br label %_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.cc:                                            ; preds = %bb.bx
  %i.nw = icmp sgt i64 %.6.i24.sink, -1
  br i1 %i.nw, label %bb.cd, label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.i.thread

bb.cd:                                            ; preds = %bb.cc
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE12max_mantissaE.const, i64 %.6.i24.sink
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !77
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
  store double %i.ob, ptr %2, align 8, !tbaa !97
  br label %_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.ch:                                            ; preds = %bb.ce
  %i.oc = uitofp i64 %.2267.sink to double
  %i.od = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE.const, i64 %.6.i24.sink
  %i.oe = load double, ptr %i.od, align 8, !tbaa !97
  %i.of = fmul double %i.oe, %i.oc                ; 2 uses
  %i.og = fneg double %i.of
  %storemerge.i.i = select i1 %i.d, double %i.og, double %i.of
  store double %storemerge.i.i, ptr %2, align 8, !tbaa !97
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
  %i.ot = load i64, ptr %i.os, align 16, !tbaa !77
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
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !77
  %8 = zext i64 %i.pd to i128
  %9 = mul nuw i128 %8, %i.ou
  %10 = lshr i128 %9, 64
  %11 = trunc nuw i128 %10 to i64                 ; 2 uses
  %i.pe = add i64 %11, %i.ox                      ; 2 uses
  %12 = icmp ult i64 %i.pe, %11
  %i.pf = zext i1 %12 to i64
  %spec.select.i79 = add nuw i64 %i.pf, %i.oz
  br label %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit80

_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit80: ; preds = %bb.ck, %bb.cj
  %.pn347 = phi i64 [ %i.pe, %bb.ck ], [ %i.ox, %bb.cj ]
  %spec.select.i79.pn = phi i64 [ %spec.select.i79, %bb.ck ], [ %i.oz, %bb.cj ] ; 3 uses
  %i.pg = lshr i64 %spec.select.i79.pn, 63        ; 2 uses
  %i.ph = trunc nuw nsw i64 %i.pg to i32
  %i.pi = add nuw nsw i64 %i.pg, 9                ; 2 uses
  %i.pj = lshr i64 %spec.select.i79.pn, %i.pi     ; 6 uses
  %i.pk = mul nsw i32 %i.oo, 217706
  %i.pl = ashr i32 %i.pk, 16
  %i.pm = add nsw i32 %i.pl, 1086
  %i.pn = sub nsw i32 %i.pm, %i.om
  %i.po = add nsw i32 %i.pn, %i.ph                ; 3 uses
  %i.pp = icmp slt i32 %i.po, 1
  br i1 %i.pp, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit80
  %i.pq = sub nsw i32 1, %i.po                    ; 2 uses
  %i.pr = icmp samesign ugt i32 %i.pq, 63
  br i1 %i.pr, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ps = zext nneg i32 %i.pq to i64
  %i.pt = lshr i64 %i.pj, %i.ps                   ; 2 uses
  %i.pu = and i64 %i.pt, 1
  %i.pv = add nuw nsw i64 %i.pu, %i.pt            ; 2 uses
  %i.pw = lshr i64 %i.pv, 1
  %i.px = icmp samesign ugt i64 %i.pv, 9007199254740991
  %i.py = zext i1 %i.px to i32
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i

bb.cn:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit80
  %i.pz = icmp ugt i64 %.pn347, 1
  %i.qa = add nsw i64 %.6.i24.sink, -24
  %i.qb = icmp ult i64 %i.qa, -28
  %or.cond330 = select i1 %i.pz, i1 true, i1 %i.qb
  br i1 %or.cond330, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.qc = and i64 %i.pj, 3
  %i.qd = icmp eq i64 %i.qc, 1
  %i.qe = shl i64 %i.pj, %i.pi
  %i.qf = icmp eq i64 %i.qe, %spec.select.i79.pn
  %or.cond.i58.i = select i1 %i.qd, i1 %i.qf, i1 false
  %i.qg = and i64 %i.pj, 72057594037927932
  %spec.select331 = select i1 %or.cond.i58.i, i64 %i.qg, i64 %i.pj
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.sroa.0231.0 = phi i64 [ %i.pj, %bb.cn ], [ %spec.select331, %bb.co ] ; 2 uses
  %i.qh = and i64 %.sroa.0231.0, 1
  %i.qi = add nuw nsw i64 %i.qh, %.sroa.0231.0    ; 2 uses
  %i.qj = lshr i64 %i.qi, 1
  %.not22.i49.i = icmp samesign ugt i64 %i.qi, 18014398509481983 ; 2 uses
  %i.qk = zext i1 %.not22.i49.i to i32
  %spec.select333 = add nuw nsw i32 %i.po, %i.qk  ; 2 uses
  %i.ql = and i64 %i.qj, 9218868437227405311
  %.not23.i50.i = icmp samesign ugt i32 %spec.select333, 2046 ; 2 uses
  %.not = select i1 %.not23.i50.i, i1 true, i1 %.not22.i49.i
  %spec.select341 = select i1 %.not, i64 0, i64 %i.ql
  %spec.select342 = select i1 %.not23.i50.i, i32 2047, i32 %spec.select333
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i

_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i: ; preds = %bb.cp, %bb.cl, %bb.ci, %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.i.thread, %bb.cm
  %.sroa.0231.2 = phi i64 [ 0, %bb.cl ], [ 0, %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.i.thread ], [ 0, %bb.ci ], [ %i.pw, %bb.cm ], [ %spec.select341, %bb.cp ] ; 3 uses
  %.sroa.18236.1 = phi i32 [ 0, %bb.cl ], [ 0, %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.i.thread ], [ 2047, %bb.ci ], [ %i.py, %bb.cm ], [ %spec.select342, %bb.cp ] ; 3 uses
  br i1 %i.nc, label %bb.cq, label %.thread317

bb.cq:                                            ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i
  %i.qm = add i64 %.2267.sink, 1                  ; 3 uses
  %i.qn = icmp eq i64 %i.qm, 0
  %or.cond334 = select i1 %i.qn, i1 true, i1 %i.oj
  br i1 %or.cond334, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qo = icmp sgt i64 %.6.i24.sink, 308
  br i1 %i.qo, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.qm, i1 true) ; 2 uses
  %i.qq = trunc nuw nsw i64 %i.qp to i32
  %i.qr = shl i64 %i.qm, %i.qp
  %i.qs = trunc nsw i64 %.6.i24.sink to i32       ; 2 uses
  %i.qt = shl nsw i32 %i.qs, 1
  %i.qu = sext i32 %i.qt to i64
  %i.qv = getelementptr [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E.const, i64 %i.qu ; 2 uses
  %i.qw = getelementptr i8, ptr %i.qv, i64 5472
  %i.qx = load i64, ptr %i.qw, align 16, !tbaa !77
  %i.qy = zext i64 %i.qr to i128                  ; 2 uses
  %i.qz = zext i64 %i.qx to i128
  %i.ra = mul nuw i128 %i.qz, %i.qy               ; 2 uses
  %i.rb = trunc i128 %i.ra to i64                 ; 2 uses
  %i.rc = lshr i128 %i.ra, 64
  %i.rd = trunc nuw i128 %i.rc to i64             ; 3 uses
  %i.re = and i64 %i.rd, 511
  %i.rf = icmp eq i64 %i.re, 511
  br i1 %i.rf, label %bb.ct, label %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit73

bb.ct:                                            ; preds = %bb.cs
  %i.rg = getelementptr i8, ptr %i.qv, i64 5480
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !77
  %13 = zext i64 %i.rh to i128
  %14 = mul nuw i128 %13, %i.qy
  %15 = lshr i128 %14, 64
  %16 = trunc nuw i128 %15 to i64                 ; 2 uses
  %i.ri = add i64 %16, %i.rb                      ; 2 uses
  %17 = icmp ult i64 %i.ri, %16
  %i.rj = zext i1 %17 to i64
  %spec.select.i72 = add nuw i64 %i.rj, %i.rd
  br label %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit73

_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit73: ; preds = %bb.ct, %bb.cs
  %.pn349 = phi i64 [ %i.ri, %bb.ct ], [ %i.rb, %bb.cs ]
  %spec.select.i72.pn = phi i64 [ %spec.select.i72, %bb.ct ], [ %i.rd, %bb.cs ] ; 3 uses
  %i.rk = lshr i64 %spec.select.i72.pn, 63        ; 2 uses
  %i.rl = trunc nuw nsw i64 %i.rk to i32
  %i.rm = add nuw nsw i64 %i.rk, 9                ; 2 uses
  %i.rn = lshr i64 %spec.select.i72.pn, %i.rm     ; 6 uses
  %i.ro = mul nsw i32 %i.qs, 217706
  %i.rp = ashr i32 %i.ro, 16
  %i.rq = add nsw i32 %i.rp, 1086
  %i.rr = sub nsw i32 %i.rq, %i.qq
  %i.rs = add nsw i32 %i.rr, %i.rl                ; 3 uses
  %i.rt = icmp slt i32 %i.rs, 1
  br i1 %i.rt, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit73
  %i.ru = sub nsw i32 1, %i.rs                    ; 2 uses
  %i.rv = icmp samesign ugt i32 %i.ru, 63
  br i1 %i.rv, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.rw = zext nneg i32 %i.ru to i64
  %i.rx = lshr i64 %i.rn, %i.rw                   ; 2 uses
  %i.ry = and i64 %i.rx, 1
  %i.rz = add nuw nsw i64 %i.ry, %i.rx            ; 2 uses
  %i.sa = lshr i64 %i.rz, 1
  %i.sb = icmp samesign ugt i64 %i.rz, 9007199254740991
  %i.sc = zext i1 %i.sb to i32
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i

bb.cw:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit73
  %i.sd = icmp ugt i64 %.pn349, 1
  %i.se = add nsw i64 %.6.i24.sink, -24
  %i.sf = icmp ult i64 %i.se, -28
  %or.cond336 = select i1 %i.sd, i1 true, i1 %i.sf
  br i1 %or.cond336, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.sg = and i64 %i.rn, 3
  %i.sh = icmp eq i64 %i.sg, 1
  %i.si = shl i64 %i.rn, %i.rm
  %i.sj = icmp eq i64 %i.si, %spec.select.i72.pn
  %or.cond.i.i = select i1 %i.sh, i1 %i.sj, i1 false
  %i.sk = and i64 %i.rn, 72057594037927932
  %spec.select337 = select i1 %or.cond.i.i, i64 %i.sk, i64 %i.rn
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.sroa.0224.0 = phi i64 [ %i.rn, %bb.cw ], [ %spec.select337, %bb.cx ] ; 2 uses
  %i.sl = and i64 %.sroa.0224.0, 1
  %i.sm = add nuw nsw i64 %i.sl, %.sroa.0224.0    ; 2 uses
  %i.sn = lshr i64 %i.sm, 1
  %.not22.i.i = icmp samesign ugt i64 %i.sm, 18014398509481983 ; 2 uses
  %i.so = zext i1 %.not22.i.i to i32
  %spec.select339 = add nuw nsw i32 %i.rs, %i.so  ; 2 uses
  %i.sp = and i64 %i.sn, 9218868437227405311
  %.not23.i.i = icmp samesign ugt i32 %spec.select339, 2046 ; 2 uses
  %.not350 = select i1 %.not23.i.i, i1 true, i1 %.not22.i.i
  %spec.select343 = select i1 %.not350, i64 0, i64 %i.sp
  %spec.select344 = select i1 %.not23.i.i, i32 2047, i32 %spec.select339
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i

_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i: ; preds = %bb.cy, %bb.cu, %bb.cr, %bb.cq, %bb.cv
  %.sroa.0224.2 = phi i64 [ 0, %bb.cu ], [ 0, %bb.cq ], [ 0, %bb.cr ], [ %i.sa, %bb.cv ], [ %spec.select343, %bb.cy ]
  %.sroa.18.1 = phi i32 [ 0, %bb.cu ], [ 0, %bb.cq ], [ 2047, %bb.cr ], [ %i.sc, %bb.cv ], [ %spec.select344, %bb.cy ]
  %.not.i83 = icmp ne i64 %.sroa.0231.2, %.sroa.0224.2
  %i.sq = icmp ne i32 %.sroa.18236.1, %.sroa.18.1
  %i.sr = select i1 %.not.i83, i1 true, i1 %i.sq
  br i1 %i.sr, label %bb.cz, label %.thread317

bb.cz:                                            ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i
  %i.ss = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.2267.sink, i1 true) ; 2 uses
  %i.st = trunc nuw nsw i64 %i.ss to i32
  %i.su = shl i64 %.2267.sink, %i.ss
  %i.sv = trunc i64 %.6.i24.sink to i32           ; 4 uses
  %i.sw = shl i32 %i.sv, 1                        ; 2 uses
  %i.sx = add i32 %i.sw, 684
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E.const, i64 %i.sy
  %i.ta = load i64, ptr %i.sz, align 16, !tbaa !77
  %i.tb = zext i64 %i.su to i128                  ; 2 uses
  %i.tc = zext i64 %i.ta to i128
  %i.td = mul nuw i128 %i.tc, %i.tb               ; 2 uses
  %i.te = lshr i128 %i.td, 64
  %i.tf = trunc nuw i128 %i.te to i64             ; 3 uses
  %i.tg = and i64 %i.tf, 511
  %i.th = icmp eq i64 %i.tg, 511
  br i1 %i.th, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ti = trunc i128 %i.td to i64
  %i.tj = add i32 %i.sw, 685
  %i.tk = sext i32 %i.tj to i64
  %i.tl = getelementptr inbounds [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E.const, i64 %i.tk
  %i.tm = load i64, ptr %i.tl, align 8, !tbaa !77
  %18 = zext i64 %i.tm to i128
  %19 = mul nuw i128 %18, %i.tb
  %20 = lshr i128 %19, 64
  %21 = trunc nuw i128 %20 to i64
  %i.tn = xor i64 %21, -1
  %22 = icmp ult i64 %i.tn, %i.ti
  %i.to = zext i1 %22 to i64
  %spec.select.i66 = add nuw i64 %i.to, %i.tf
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da
  %spec.select.i66.pn = phi i64 [ %spec.select.i66, %bb.da ], [ %i.tf, %bb.cz ] ; 2 uses
  %i.tp = lshr i64 %spec.select.i66.pn, 63        ; 2 uses
  %i.tq = trunc nuw nsw i64 %i.tp to i32
  %i.tr = xor i64 %i.tp, 1
  %i.ts = shl i64 %spec.select.i66.pn, %i.tr      ; 2 uses
  %i.tt = mul nsw i32 %i.sv, 217706
  %i.tu = ashr i32 %i.tt, 16
  %reass.sub.neg = sub nsw i32 %i.tq, %i.st
  %i.tv = add nsw i32 %reass.sub.neg, %i.tu       ; 3 uses
  %i.tw = add nsw i32 %i.tv, -31693
  %i.tx = icmp slt i32 %i.tv, 31693
  br i1 %i.tx, label %bb.dc, label %.thread317

bb.dc:                                            ; preds = %bb.db
  %i.ty = icmp ugt i64 %.2267.sink, 9999
  br i1 %i.ty, label %.lr.ph.i, label %.preheader19.i

.preheader19.i:                                   ; preds = %.lr.ph.i, %bb.dc
  %.010.i.lcssa.i = phi i64 [ %.2267.sink, %bb.dc ], [ %i.ua, %.lr.ph.i ] ; 3 uses
  %.0.i.lcssa.i = phi i32 [ %i.sv, %bb.dc ], [ %i.ub, %.lr.ph.i ] ; 2 uses
  %i.tz = icmp samesign ugt i64 %.010.i.lcssa.i, 99
  br i1 %i.tz, label %.lr.ph25.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.dc, %.lr.ph.i
  %.0.i21.i = phi i32 [ %i.ub, %.lr.ph.i ], [ %i.sv, %bb.dc ]
  %.010.i20.i = phi i64 [ %i.ua, %.lr.ph.i ], [ %.2267.sink, %bb.dc ] ; 2 uses
  %i.ua = udiv i64 %.010.i20.i, 10000             ; 2 uses
  %i.ub = add nsw i32 %.0.i21.i, 4                ; 2 uses
  %i.uc = icmp ugt i64 %.010.i20.i, 99999999
  br i1 %i.uc, label %.lr.ph.i, label %.preheader19.i, !llvm.loop !13

.preheader.i:                                     ; preds = %.lr.ph25.i, %.preheader19.i
  %.111.i.lcssa.i = phi i64 [ %.010.i.lcssa.i, %.preheader19.i ], [ %i.ue, %.lr.ph25.i ] ; 2 uses
  %.1.i.lcssa.i = phi i32 [ %.0.i.lcssa.i, %.preheader19.i ], [ %i.uf, %.lr.ph25.i ] ; 2 uses
  %i.ud = icmp samesign ugt i64 %.111.i.lcssa.i, 9
  br i1 %i.ud, label %.lr.ph30.i, label %_ZN10fast_float19scientific_exponentEmi.exit.i

.lr.ph25.i:                                       ; preds = %.preheader19.i, %.lr.ph25.i
  %.1.i24.i = phi i32 [ %i.uf, %.lr.ph25.i ], [ %.0.i.lcssa.i, %.preheader19.i ]
  %.111.i23.i = phi i64 [ %i.ue, %.lr.ph25.i ], [ %.010.i.lcssa.i, %.preheader19.i ] ; 2 uses
  %i.ue = udiv i64 %.111.i23.i, 100               ; 2 uses
  %i.uf = add nsw i32 %.1.i24.i, 2                ; 2 uses
  %i.ug = icmp samesign ugt i64 %.111.i23.i, 9999
  br i1 %i.ug, label %.lr.ph25.i, label %.preheader.i, !llvm.loop !14

.lr.ph30.i:                                       ; preds = %.preheader.i, %.lr.ph30.i
  %.2.i29.i = phi i32 [ %i.ui, %.lr.ph30.i ], [ %.1.i.lcssa.i, %.preheader.i ]
  %.212.i28.i = phi i64 [ %i.uh, %.lr.ph30.i ], [ %.111.i.lcssa.i, %.preheader.i ] ; 2 uses
  %i.uh = udiv i64 %.212.i28.i, 10
  %i.ui = add nsw i32 %.2.i29.i, 1                ; 2 uses
  %i.uj = icmp samesign ugt i64 %.212.i28.i, 99
  br i1 %i.uj, label %.lr.ph30.i, label %_ZN10fast_float19scientific_exponentEmi.exit.i, !llvm.loop !15

_ZN10fast_float19scientific_exponentEmi.exit.i:   ; preds = %.lr.ph30.i, %.preheader.i
  %.2.i.lcssa.i = phi i32 [ %.1.i.lcssa.i, %.preheader.i ], [ %i.ui, %.lr.ph30.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 0, ptr %i.b, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %6, i8 0, i64 504, i1 false)
  call void @_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %6, ptr noundef nonnull align 8 dereferenceable(68) %7, i64 noundef 769, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #25
  %i.uk = add nsw i32 %.2.i.lcssa.i, 1
  %i.ul = load i64, ptr %i.b, align 8, !tbaa !77
  %i.um = trunc i64 %i.ul to i32
  %i.un = sub i32 %i.uk, %i.um                    ; 3 uses
  %i.uo = icmp sgt i32 %i.un, -1
  br i1 %i.uo, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %_ZN10fast_float19scientific_exponentEmi.exit.i
  %i.up = call { i64, i32 } @_ZN10fast_float19positive_digit_compIdEENS_17adjusted_mantissaERNS_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %6, i32 noundef %i.un) #25
  br label %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit

bb.de:                                            ; preds = %_ZN10fast_float19scientific_exponentEmi.exit.i
  %i.uq = add nsw i32 %i.tv, 1075
  %i.ur = call { i64, i32 } @_ZN10fast_float19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES1_i(ptr noundef nonnull align 8 dereferenceable(504) %6, i64 %i.ts, i32 %i.uq, i32 noundef %i.un) #25
  br label %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit

_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit: ; preds = %bb.dd, %bb.de
  %.pn.i84 = phi { i64, i32 } [ %i.up, %bb.dd ], [ %i.ur, %bb.de ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %.fca.0.extract.i = extractvalue { i64, i32 } %.pn.i84, 0
  %.fca.1.extract.i = extractvalue { i64, i32 } %.pn.i84, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !85, !range !86
  %.pre525 = load i64, ptr %i.oh, align 8, !tbaa !87
  br label %.thread317

.thread317:                                       ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit, %bb.db
  %i.us = phi i64 [ %.pre525, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %.2267.sink, %bb.db ], [ %.2267.sink, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i ], [ %.2267.sink, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i ]
  %i.ut = phi i8 [ %.pre, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.e, %bb.db ], [ %i.e, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i ], [ %i.e, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i ]
  %.sroa.0217.1 = phi i64 [ %.fca.0.extract.i, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.ts, %bb.db ], [ %.sroa.0231.2, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i ], [ %.sroa.0231.2, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i ] ; 2 uses
  %.sroa.9.1 = phi i32 [ %.fca.1.extract.i, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.tw, %bb.db ], [ %.sroa.18236.1, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i ], [ %.sroa.18236.1, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i ] ; 3 uses
  %i.uu = zext nneg i8 %i.ut to i64
  %i.uv = zext i32 %.sroa.9.1 to i64
  %i.uw = shl i64 %i.uv, 52
  %i.ux = shl nuw i64 %i.uu, 63
  %i.uy = or i64 %i.uw, %i.ux
  %i.uz = or i64 %i.uy, %.sroa.0217.1
  store i64 %i.uz, ptr %2, align 8, !tbaa !97
  %i.va = icmp ne i64 %i.us, 0
  %i.vb = icmp eq i64 %.sroa.0217.1, 0
  %or.cond5.i63 = select i1 %i.va, i1 %i.vb, i1 false
  %i.vc = icmp eq i32 %.sroa.9.1, 0
  %or.cond8.i = select i1 %or.cond5.i63, i1 %i.vc, i1 false
  %i.vd = icmp eq i32 %.sroa.9.1, 2047
  %or.cond340 = select i1 %or.cond8.i, i1 true, i1 %i.vd
  %spec.select345 = select i1 %or.cond340, i32 34, i32 0
  br label %_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit: ; preds = %.split.thread, %.split, %.thread317, %bb.ca, %bb.cb, %.thread620, %bb.ch
  %i.ve = phi ptr [ %.6280.sink, %bb.ca ], [ %.6280.sink, %bb.ch ], [ %i.oa, %.thread620 ], [ %.6280.sink, %bb.cb ], [ %.6280.sink, %.thread317 ], [ %.6280.sink, %.split ], [ %.ph, %.split.thread ]
  %.sroa.247.1.i = phi i32 [ 0, %bb.ca ], [ 0, %bb.ch ], [ 0, %.thread620 ], [ 0, %bb.cb ], [ %spec.select345, %.thread317 ], [ 0, %.split ], [ 0, %.split.thread ]
  %.fca.0.insert.i = insertvalue { ptr, i32 } poison, ptr %i.ve, 0
  %.fca.1.insert.i = insertvalue { ptr, i32 } %.fca.0.insert.i, i32 %.sroa.247.1.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret { ptr, i32 } %.fca.1.insert.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr { i64, i32 } @_ZN10fast_float19positive_digit_compIdEENS_17adjusted_mantissaERNS_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN10fast_float6bigint4pow5Ej(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) #25
  br i1 %i.a, label %bb.b, label %_ZN10fast_float6bigint5pow10Ej.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = and i64 %i.b, 63                         ; 4 uses
  %i.d = lshr i64 %i.b, 6                         ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i64 64, %i.c                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !90   ; 5 uses
  %i.h = zext i16 %i.g to i64                     ; 4 uses
  %.not25.i.i.i.i = icmp eq i16 %i.g, 0
  br i1 %.not25.i.i.i.i, label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %min.iters.check = icmp ult i16 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.h, 65532                    ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert41 = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %broadcast.splat42 = shufflevector <2 x i64> %broadcast.splatinsert41, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <2 x i64> [ <i64 poison, i64 0>, %vector.ph ], [ %wide.load43, %vector.body ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !tbaa !77 ; 3 uses
  %wide.load43 = load <2 x i64>, ptr %i.j, align 8, !tbaa !77 ; 4 uses
  %i.k = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.l = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load43, <2 x i32> <i32 1, i32 2>
  %i.m = shl <2 x i64> %wide.load, %broadcast.splat
  %i.n = shl <2 x i64> %wide.load43, %broadcast.splat
  %i.o = lshr <2 x i64> %i.k, %broadcast.splat42
  %i.p = lshr <2 x i64> %i.l, %broadcast.splat42
  %i.q = or disjoint <2 x i64> %i.m, %i.o
  %i.r = or disjoint <2 x i64> %i.n, %i.p
  store <2 x i64> %i.q, ptr %i.i, align 8, !tbaa !77
  store <2 x i64> %i.r, ptr %i.j, align 8, !tbaa !77
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !448

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load43, i64 1 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader44

.lr.ph.i.i.i.i.preheader44:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.01622.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.01721.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %vector.recur.extract, %middle.block ]
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.lcssa40 = phi i64 [ %vector.recur.extract, %middle.block ], [ %i.v, %.lr.ph.i.i.i.i ]
  %i.t = lshr i64 %.lcssa40, %i.e                 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %bb.d

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader44, %.lr.ph.i.i.i.i
  %.01622.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i ], [ %.01622.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ] ; 2 uses
  %.01721.i.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i.i ], [ %.01721.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01622.i.i.i.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !77   ; 3 uses
  %i.w = shl i64 %i.v, %i.c
  %i.x = lshr i64 %.01721.i.i.i.i, %i.e
  %i.y = or disjoint i64 %i.w, %i.x
end_hunk_3
begin_hunk_4_@_ZN5folly19makeConversionErrorENS_14ConversionCodeENS_5RangeIPKcEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.bf

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.d
  ret void
}

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly15ConversionErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

declare void @_ZNSt11range_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !226  ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !217
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !71
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #27
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !73

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #30 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !217    ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1, !tbaa !71
  store i8 %i.u, ptr %i.s, align 1, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1, !tbaa !71
  store i8 %i.y, ptr %i.x, align 1, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !217   ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !71
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !71
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !217
  store i64 %.0, ptr %i.h, align 8, !tbaa !71
  ret void
}

declare void @_ZNSt11range_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { builtin nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { cold noreturn nounwind }

!llvm.module.flags = !{!54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}
!llvm.errno.tbaa = !{!65}

!0 = distinct !{!0, !72}
!1 = distinct !{!1, !72}
!2 = distinct !{!2, !72}
!3 = distinct !{!3, !72}
!4 = distinct !{!4, !72}
!5 = distinct !{!5, !72}
!6 = distinct !{!6, !72}
!7 = distinct !{!7, !72}
!8 = distinct !{!8, !72}
!9 = distinct !{!9, !72}
!10 = distinct !{!10, !72}
!11 = distinct !{!11, !72}
!12 = distinct !{!12, !72}
!13 = distinct !{!13, !72}
!14 = distinct !{!14, !72}
!15 = distinct !{!15, !72}
!16 = distinct !{!16, !72}
!17 = distinct !{!17, !72}
!18 = distinct !{!18, !72}
!19 = distinct !{!19, !72}
!20 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "buffer<char>", scope: !136, file: !126, line: 862, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !192, vtableHolder: !20, templateParams: !194, identifier: "_ZTSN3fmt2v96detail6bufferIcEE")
!21 = distinct !{null, null, null, null, null}
!22 = distinct !{null, null}
!23 = distinct !{!23, !72}
!24 = distinct !{!24, !72}
!25 = distinct !{null, null, null}
!26 = distinct !{null, null, null}
!27 = distinct !{!27, !72}
!28 = distinct !{!28, !72}
!29 = distinct !{!29, !72}
!30 = distinct !{!30, !72}
!31 = distinct !{!31, !72}
!32 = distinct !{!32, !72}
!33 = distinct !{null, null, null, null, null, null, null}
!34 = distinct !{null, null, null, null}
!35 = distinct !{null, null, null}
!36 = distinct !{null, null, null}
!37 = distinct !{!37, !72}
!38 = distinct !{null, null, null, null}
!39 = distinct !{!39, !72}
!40 = distinct !{null}
!41 = distinct !{!41, !72}
!42 = distinct !{null, null}
!43 = distinct !{null, null}
!44 = distinct !{!44, !72}
!45 = distinct !{!45, !72}
!46 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "buffer<unsigned int>", scope: !136, file: !126, line: 862, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !341, vtableHolder: !46, templateParams: !343, identifier: "_ZTSN3fmt2v96detail6bufferIjEE")
!47 = distinct !{!47, !72}
!48 = distinct !{null, null, null, null}
!49 = distinct !{null, null, null, null}
!50 = distinct !{!50, !72}
!51 = distinct !{!51, !72}
!52 = distinct !{!52, !72}
!53 = distinct !{!53, !72}
!54 = !{i32 7, !"Dwarf Version", i32 5}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 7, !"openmp", i32 51}
!57 = !{i32 8, !"PIC Level", i32 2}
!58 = !{i32 7, !"uwtable", i32 2}
!59 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!60 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!61 = !{!"Simple C++ TBAA"}
!62 = !{!"omnipotent char", !61, i64 0}
!63 = !{!"int", !62, i64 0}
!64 = !{!"__libc_errno", !63, i64 0}
!65 = !{!64, !63, i64 0}
!66 = !{!"any pointer", !62, i64 0}
!67 = !{!"p1 omnipotent char", !66, i64 0}
!68 = !{!"_ZTSN5folly5RangeIPKcEE", !67, i64 0, !67, i64 8}
!69 = !{!68, !67, i64 0}
!70 = !{!68, !67, i64 8}
!71 = !{!62, !62, i64 0}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!74 = !{!"float", !62, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"long", !62, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{}
!79 = !{!67, !67, i64 0}
!80 = !{!"bool", !62, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!"_ZTSN10fast_float4spanIKcEE", !67, i64 0, !76, i64 8}
!83 = !{!"_ZTSN10fast_float11parse_errorE", !62, i64 0}
!84 = !{!"_ZTSN10fast_float22parsed_number_string_tIcEE", !76, i64 0, !76, i64 8, !67, i64 16, !80, i64 24, !80, i64 25, !80, i64 26, !82, i64 32, !82, i64 48, !83, i64 64}
!85 = !{!84, !80, i64 24}
!86 = !{i8 0, i8 2}
!87 = !{!84, !76, i64 8}
!88 = !{!"short", !62, i64 0}
!89 = !{!"_ZTSN10fast_float8stackvecILt62EEE", !62, i64 0, !88, i64 496}
!90 = !{!89, !88, i64 496}
!91 = !{!"llvm.loop.isvectorized", i32 1}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!94 = !{!"vtable pointer", !61, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"double", !62, i64 0}
!97 = !{!96, !96, i64 0}
!98 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!99 = !{!88, !88, i64 0}
!100 = !{!"_ZTSN5folly15expected_detail5WhichE", !62, i64 0}
!101 = !{!"_ZTSN5folly15expected_detail15ExpectedStorageInNS_14ConversionCodeELNS0_11StorageTypeE1EEE", !62, i64 0, !100, i64 16}
!102 = !{!101, !100, i64 16}
!103 = !{!"_ZTSN5folly15expected_detail15ExpectedStorageIoNS_14ConversionCodeELNS0_11StorageTypeE1EEE", !62, i64 0, !100, i64 16}
!104 = !{!103, !100, i64 16}
!105 = !{!"branch_weights", i32 127, i32 1}
!106 = !{!"branch_weights", i32 127, i32 255873}
!107 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!108 = !{!"_ZTSN5folly14ConversionCodeE", !62, i64 0}
!109 = !{!108, !108, i64 0}
!110 = !{!"__int128", !62, i64 0}
!111 = !{!110, !110, i64 0}
!112 = !{!"_ZTSN3fmt2v96detail19fixed_buffer_traitsE", !76, i64 0, !76, i64 8}
!113 = !{!112, !76, i64 0}
!114 = !{!112, !76, i64 8}
!115 = !{!"_ZTSN3fmt2v96detail6bufferIcEE", !67, i64 8, !76, i64 16, !76, i64 24}
!116 = !{!115, !67, i64 8}
!117 = !{!115, !76, i64 16}
!118 = !{!115, !76, i64 24}
!119 = !{!"_ZTSN3fmt2v96detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEEE", !115, i64 0, !112, i64 32, !67, i64 48, !62, i64 56}
!120 = !{!119, !67, i64 48}
!121 = !{!"_ZTSN3fmt2v96detail4typeE", !62, i64 0}
!122 = !{!121, !121, i64 0}
!123 = !{!"long long", !62, i64 0}
!124 = !{!123, !123, i64 0}
!125 = !{!66, !66, i64 0}
!126 = !DIFile(filename: "/usr/include/fmt/core.h", directory: "", checksumkind: CSK_MD5, checksum: "f2d3d9431026c31df1ca8ffc383ea8db")
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!128 = !DIFile(filename: "/usr/lib/llvm-24/lib/clang/24/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!129 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !128, line: 18, baseType: !129)
!131 = !{null, !127, !130}
!132 = !DISubroutineType(types: !131)
!133 = !DISubprogram(name: "grow", linkageName: "_ZN3fmt2v96detail6bufferIcE4growEm", scope: !20, file: !126, line: 886, type: !132, scopeLine: 886, containingType: !20, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!134 = !DINamespace(name: "fmt", scope: null)
!135 = !DINamespace(name: "v9", scope: !134, exportSymbols: true)
!136 = !DINamespace(name: "detail", scope: !135)
!137 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!138 = !{!137}
!139 = !DISubroutineType(types: !138)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !139, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$buffer", scope: !126, file: !126, baseType: !141, size: 64, flags: DIFlagArtificial)
!143 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_", scope: !20, file: !126, line: 864, baseType: !144, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "size_", scope: !20, file: !126, line: 865, baseType: !130, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "capacity_", scope: !20, file: !126, line: 866, baseType: !130, size: 64, offset: 192)
end_hunk_4
