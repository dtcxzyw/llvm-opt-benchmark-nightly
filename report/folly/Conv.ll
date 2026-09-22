Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Conv?download=true
inline.NumInlined: 3501
inline.NumDeleted: 1003
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN10fast_float22parse_number_slow_pathIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EEb:bb.a
  br label %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit71

_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit71: ; preds = %.noexc70, %.noexc69
  %.pn357 = phi i64 [ %i.rr, %.noexc70 ], [ %i.rg, %.noexc69 ]
  %spec.select.i68.pn = phi i64 [ %spec.select.i68, %.noexc70 ], [ %i.ri, %.noexc69 ] ; 3 uses
  %i.ru = lshr i64 %spec.select.i68.pn, 63        ; 2 uses
  %i.rv = trunc nuw nsw i64 %i.ru to i32
  %i.rw = or disjoint i64 %i.ru, 38               ; 2 uses
  %i.rx = lshr i64 %spec.select.i68.pn, %i.rw     ; 6 uses
  %i.ry = mul nsw i32 %i.qx, 217706
  %i.rz = ashr i32 %i.ry, 16
  %i.sa = add nsw i32 %i.rz, 190
  %i.sb = sub nsw i32 %i.sa, %i.qv
  %i.sc = add nsw i32 %i.sb, %i.rv                ; 3 uses
  %i.sd = icmp slt i32 %i.sc, 1
  br i1 %i.sd, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit71
  %i.se = sub nsw i32 1, %i.sc                    ; 2 uses
  %i.sf = icmp samesign ugt i32 %i.se, 63
  br i1 %i.sf, label %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.sg = zext nneg i32 %i.se to i64
  %i.sh = lshr i64 %i.rx, %i.sg                   ; 2 uses
  %i.si = and i64 %i.sh, 1
  %i.sj = add nuw nsw i64 %i.si, %i.sh            ; 2 uses
  %i.sk = lshr i64 %i.sj, 1
  %i.sl = icmp samesign ugt i64 %i.sj, 16777215
  %i.sm = zext i1 %i.sl to i32
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i

bb.cs:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit71
  %i.sn = icmp ugt i64 %.pn357, 1
  %i.so = add nsw i64 %.6.i24.sink, -11
  %i.sp = icmp ult i64 %i.so, -28
  %or.cond344 = select i1 %i.sn, i1 true, i1 %i.sp
  br i1 %or.cond344, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sq = and i64 %i.rx, 3
  %i.sr = icmp eq i64 %i.sq, 1
  %i.ss = shl i64 %i.rx, %i.rw
  %i.st = icmp eq i64 %i.ss, %spec.select.i68.pn
  %or.cond.i.i = select i1 %i.sr, i1 %i.st, i1 false
  %i.su = and i64 %i.rx, 67108860
  %spec.select345 = select i1 %or.cond.i.i, i64 %i.su, i64 %i.rx
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.sroa.0232.0 = phi i64 [ %i.rx, %bb.cs ], [ %spec.select345, %bb.ct ] ; 2 uses
  %i.sv = and i64 %.sroa.0232.0, 1
  %i.sw = add nuw nsw i64 %i.sv, %.sroa.0232.0    ; 2 uses
  %i.sx = lshr i64 %i.sw, 1
  %.not22.i.i = icmp samesign ugt i64 %i.sw, 33554431 ; 2 uses
  %i.sy = zext i1 %.not22.i.i to i32
  %spec.select347 = add nuw nsw i32 %i.sc, %i.sy  ; 2 uses
  %i.sz = and i64 %i.sx, 9223372036846387199
  %.not23.i.i = icmp samesign ugt i32 %spec.select347, 254 ; 2 uses
  %.not358 = select i1 %.not23.i.i, i1 true, i1 %.not22.i.i
  %spec.select351 = select i1 %.not358, i64 0, i64 %i.sz
  %spec.select352 = select i1 %.not23.i.i, i32 255, i32 %spec.select347
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i

_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i: ; preds = %bb.cu, %bb.cq, %bb.cp, %bb.co, %bb.cr
  %.sroa.0232.2 = phi i64 [ 0, %bb.cq ], [ 0, %bb.co ], [ 0, %bb.cp ], [ %i.sk, %bb.cr ], [ %spec.select351, %bb.cu ]
  %.sroa.18.1 = phi i32 [ 0, %bb.cq ], [ 0, %bb.co ], [ 255, %bb.cp ], [ %i.sm, %bb.cr ], [ %spec.select352, %bb.cu ]
  %.not.i91 = icmp ne i64 %.sroa.0239.2, %.sroa.0232.2
  %i.ta = icmp ne i32 %.sroa.18244.1, %.sroa.18.1
  %i.tb = select i1 %.not.i91, i1 true, i1 %i.ta
  br i1 %i.tb, label %.noexc65, label %.thread325

.noexc65:                                         ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i
  %i.tc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.2275.sink, i1 true) ; 2 uses
  %i.td = trunc nuw nsw i64 %i.tc to i32
  %i.te = shl i64 %.2275.sink, %i.tc
  %i.tf = trunc i64 %.6.i24.sink to i32           ; 4 uses
  %i.tg = shl i32 %i.tf, 1                        ; 2 uses
  %i.th = add i32 %i.tg, 684
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr inbounds [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E.const, i64 %i.ti
  %i.tk = load i64, ptr %i.tj, align 16, !tbaa !77
  %i.tl = zext i64 %i.te to i128                  ; 2 uses
  %i.tm = zext i64 %i.tk to i128
  %i.tn = mul nuw i128 %i.tm, %i.tl               ; 2 uses
  %i.to = lshr i128 %i.tn, 64
  %i.tp = trunc nuw i128 %i.to to i64             ; 3 uses
  %i.tq = and i64 %i.tp, 274877906943
  %i.tr = icmp eq i64 %i.tq, 274877906943
  br i1 %i.tr, label %.noexc66, label %bb.cv

.noexc66:                                         ; preds = %.noexc65
  %i.ts = trunc i128 %i.tn to i64
  %i.tt = add i32 %i.tg, 685
  %i.tu = sext i32 %i.tt to i64
  %i.tv = getelementptr inbounds [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E.const, i64 %i.tu
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !77
  %i.tx = zext i64 %i.tw to i128
  %i.ty = mul nuw i128 %i.tx, %i.tl
  %i.tz = lshr i128 %i.ty, 64
  %i.ua = trunc nuw i128 %i.tz to i64
  %i.ub = xor i64 %i.ua, -1
  %i.uc = icmp ult i64 %i.ub, %i.ts
  %i.ud = zext i1 %i.uc to i64
  %spec.select.i64 = add nuw i64 %i.ud, %i.tp
  br label %bb.cv

bb.cv:                                            ; preds = %.noexc65, %.noexc66
  %spec.select.i64.pn = phi i64 [ %spec.select.i64, %.noexc66 ], [ %i.tp, %.noexc65 ] ; 2 uses
  %i.ue = lshr i64 %spec.select.i64.pn, 63        ; 2 uses
  %i.uf = trunc nuw nsw i64 %i.ue to i32
  %i.ug = xor i64 %i.ue, 1
  %i.uh = shl i64 %spec.select.i64.pn, %i.ug      ; 2 uses
  %i.ui = mul nsw i32 %i.tf, 217706
  %i.uj = ashr i32 %i.ui, 16
  %reass.sub.neg = sub nsw i32 %i.uf, %i.td
  %i.uk = add nsw i32 %reass.sub.neg, %i.uj       ; 3 uses
  %i.ul = add nsw i32 %i.uk, -32618
  %i.um = icmp slt i32 %i.uk, 32618
  br i1 %i.um, label %bb.cw, label %.thread325

bb.cw:                                            ; preds = %bb.cv
  %i.un = icmp ugt i64 %.2275.sink, 9999
  br i1 %i.un, label %.lr.ph.i, label %.preheader19.i

.preheader19.i:                                   ; preds = %.lr.ph.i, %bb.cw
  %.010.i.lcssa.i = phi i64 [ %.2275.sink, %bb.cw ], [ %i.up, %.lr.ph.i ] ; 3 uses
  %.0.i.lcssa.i = phi i32 [ %i.tf, %bb.cw ], [ %i.uq, %.lr.ph.i ] ; 2 uses
  %i.uo = icmp samesign ugt i64 %.010.i.lcssa.i, 99
  br i1 %i.uo, label %.lr.ph25.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.cw, %.lr.ph.i
  %.0.i21.i = phi i32 [ %i.uq, %.lr.ph.i ], [ %i.tf, %bb.cw ]
  %.010.i20.i = phi i64 [ %i.up, %.lr.ph.i ], [ %.2275.sink, %bb.cw ] ; 2 uses
  %i.up = udiv i64 %.010.i20.i, 10000             ; 2 uses
  %i.uq = add nsw i32 %.0.i21.i, 4                ; 2 uses
  %i.ur = icmp ugt i64 %.010.i20.i, 99999999
  br i1 %i.ur, label %.lr.ph.i, label %.preheader19.i, !llvm.loop !13

.preheader.i:                                     ; preds = %.lr.ph25.i, %.preheader19.i
  %.111.i.lcssa.i = phi i64 [ %.010.i.lcssa.i, %.preheader19.i ], [ %i.ut, %.lr.ph25.i ] ; 2 uses
  %.1.i.lcssa.i = phi i32 [ %.0.i.lcssa.i, %.preheader19.i ], [ %i.uu, %.lr.ph25.i ] ; 2 uses
  %i.us = icmp samesign ugt i64 %.111.i.lcssa.i, 9
  br i1 %i.us, label %.lr.ph30.i, label %_ZN10fast_float19scientific_exponentEmi.exit.i

.lr.ph25.i:                                       ; preds = %.preheader19.i, %.lr.ph25.i
  %.1.i24.i = phi i32 [ %i.uu, %.lr.ph25.i ], [ %.0.i.lcssa.i, %.preheader19.i ]
  %.111.i23.i = phi i64 [ %i.ut, %.lr.ph25.i ], [ %.010.i.lcssa.i, %.preheader19.i ] ; 2 uses
  %i.ut = udiv i64 %.111.i23.i, 100               ; 2 uses
  %i.uu = add nsw i32 %.1.i24.i, 2                ; 2 uses
  %i.uv = icmp samesign ugt i64 %.111.i23.i, 9999
  br i1 %i.uv, label %.lr.ph25.i, label %.preheader.i, !llvm.loop !14

.lr.ph30.i:                                       ; preds = %.preheader.i, %.lr.ph30.i
  %.2.i29.i = phi i32 [ %i.ux, %.lr.ph30.i ], [ %.1.i.lcssa.i, %.preheader.i ]
  %.212.i28.i = phi i64 [ %i.uw, %.lr.ph30.i ], [ %.111.i.lcssa.i, %.preheader.i ] ; 2 uses
  %i.uw = udiv i64 %.212.i28.i, 10
  %i.ux = add nsw i32 %.2.i29.i, 1                ; 2 uses
  %i.uy = icmp samesign ugt i64 %.212.i28.i, 99
  br i1 %i.uy, label %.lr.ph30.i, label %_ZN10fast_float19scientific_exponentEmi.exit.i, !llvm.loop !15

_ZN10fast_float19scientific_exponentEmi.exit.i:   ; preds = %.lr.ph30.i, %.preheader.i
  %.2.i.lcssa.i = phi i32 [ %.1.i.lcssa.i, %.preheader.i ], [ %i.ux, %.lr.ph30.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 0, ptr %i.b, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %6, i8 0, i64 504, i1 false)
  call void @_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %6, ptr noundef nonnull align 8 dereferenceable(68) %7, i64 noundef 114, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #25
  %i.uz = add nsw i32 %.2.i.lcssa.i, 1
  %i.va = load i64, ptr %i.b, align 8, !tbaa !77
  %i.vb = trunc i64 %i.va to i32
  %i.vc = sub i32 %i.uz, %i.vb                    ; 3 uses
  %i.vd = icmp sgt i32 %i.vc, -1
  br i1 %i.vd, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_ZN10fast_float19scientific_exponentEmi.exit.i
  %i.ve = call { i64, i32 } @_ZN10fast_float19positive_digit_compIfEENS_17adjusted_mantissaERNS_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %6, i32 noundef %i.vc) #25
  br label %_ZN10fast_float10digit_compIfcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit

bb.cy:                                            ; preds = %_ZN10fast_float19scientific_exponentEmi.exit.i
  %i.vf = add nsw i32 %i.uk, 150
  %i.vg = call { i64, i32 } @_ZN10fast_float19negative_digit_compIfEENS_17adjusted_mantissaERNS_6bigintES1_i(ptr noundef nonnull align 8 dereferenceable(504) %6, i64 %i.uh, i32 %i.vf, i32 noundef %i.vc) #25
  br label %_ZN10fast_float10digit_compIfcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit

_ZN10fast_float10digit_compIfcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit: ; preds = %bb.cx, %bb.cy
  %.pn.i92 = phi { i64, i32 } [ %i.ve, %bb.cx ], [ %i.vg, %bb.cy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %.fca.0.extract.i = extractvalue { i64, i32 } %.pn.i92, 0
  %.fca.1.extract.i = extractvalue { i64, i32 } %.pn.i92, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !85, !range !86
  %.pre533 = load i64, ptr %i.oh, align 8, !tbaa !87
  br label %.thread325

.thread325:                                       ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i, %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i, %_ZN10fast_float10digit_compIfcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit, %bb.cv
  %i.vh = phi i64 [ %.pre533, %_ZN10fast_float10digit_compIfcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %.2275.sink, %bb.cv ], [ %.2275.sink, %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i ], [ %.2275.sink, %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i ]
  %i.vi = phi i8 [ %.pre, %_ZN10fast_float10digit_compIfcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.e, %bb.cv ], [ %i.e, %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i ], [ %i.e, %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i ]
  %.sroa.0225.1 = phi i64 [ %.fca.0.extract.i, %_ZN10fast_float10digit_compIfcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.uh, %bb.cv ], [ %.sroa.0239.2, %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i ], [ %.sroa.0239.2, %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i ] ; 2 uses
  %.sroa.9.1 = phi i32 [ %.fca.1.extract.i, %_ZN10fast_float10digit_compIfcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.ul, %bb.cv ], [ %.sroa.18244.1, %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit.i ], [ %.sroa.18244.1, %_ZN10fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit60.i ] ; 3 uses
  %8 = zext nneg i8 %i.vi to i32
  %i.vj = trunc i64 %.sroa.0225.1 to i32
  %i.vk = shl i32 %.sroa.9.1, 23
  %i.vl = or i32 %i.vk, %i.vj
  %i.vm = shl nuw i32 %8, 31
  %i.vn = or i32 %i.vl, %i.vm
  store i32 %i.vn, ptr %2, align 4, !tbaa !75
  %i.vo = icmp ne i64 %i.vh, 0
  %i.vp = icmp eq i64 %.sroa.0225.1, 0
  %or.cond5.i63 = select i1 %i.vo, i1 %i.vp, i1 false
  %i.vq = icmp eq i32 %.sroa.9.1, 0
  %or.cond8.i = select i1 %or.cond5.i63, i1 %i.vq, i1 false
  %i.vr = icmp eq i32 %.sroa.9.1, 255
  %or.cond348 = select i1 %or.cond8.i, i1 true, i1 %i.vr
  %spec.select353 = select i1 %or.cond348, i32 34, i32 0
  br label %_ZN10fast_float19from_chars_advancedIfcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

_ZN10fast_float19from_chars_advancedIfcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit: ; preds = %.split.thread, %.split, %.thread325, %bb.ca, %bb.cb, %.thread628, %bb.ch
  %i.vs = phi ptr [ %.6288.sink, %bb.ca ], [ %.6288.sink, %bb.ch ], [ %i.oa, %.thread628 ], [ %.6288.sink, %bb.cb ], [ %.6288.sink, %.thread325 ], [ %.6288.sink, %.split ], [ %.ph, %.split.thread ]
  %.sroa.247.1.i = phi i32 [ 0, %bb.ca ], [ 0, %bb.ch ], [ 0, %.thread628 ], [ 0, %bb.cb ], [ %spec.select353, %.thread325 ], [ 0, %.split ], [ 0, %.split.thread ]
  %.fca.0.insert.i = insertvalue { ptr, i32 } poison, ptr %i.vs, 0
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
  %or.cond695 = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond695, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.preheader294
  %.0.copyload.i.i82 = load i64, ptr %.0349, align 1
  %i.w = add i64 %.0.copyload.i.i82, -3472328296227680304 ; 2 uses
  %i.x = mul i64 %i.w, 10
  %i.y = lshr i64 %i.w, 8
  %i.z = add i64 %i.x, %i.y                       ; 2 uses
  %i.aa = and i64 %i.z, 1095216660735
  %i.ab = mul i64 %i.aa, 4294967296000100
  %i.ac = lshr i64 %i.z, 16
  %i.ad = and i64 %i.ac, 1095216660735
  %i.ae = mul i64 %i.ad, 42949672960001
  %i.af = add i64 %i.ae, %i.ab
  %i.ag = lshr i64 %i.af, 32                      ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0349, i64 8 ; 3 uses
  %i.ai = add i64 %.pre.pre, 8                    ; 3 uses
  store i64 %i.ai, ptr %3, align 8, !tbaa !77
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.g, %i.aj
  %i.al = icmp sgt i64 %i.ak, 7
  %i.am = sub i64 %2, %i.ai
  %i.an = icmp ugt i64 %i.am, 7
  %or.cond691 = select i1 %i.al, i1 %i.an, i1 false
  br i1 %or.cond691, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ao = mul nuw nsw i64 %i.ag, 100000000
  %.0.copyload.i.i82.1 = load i64, ptr %i.ah, align 1
  %i.ap = add i64 %.0.copyload.i.i82.1, -3472328296227680304 ; 2 uses
  %i.aq = mul i64 %i.ap, 10
  %i.ar = lshr i64 %i.ap, 8
  %i.as = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.at = and i64 %i.as, 1095216660735
  %i.au = mul i64 %i.at, 4294967296000100
  %i.av = lshr i64 %i.as, 16
  %i.aw = and i64 %i.av, 1095216660735
  %i.ax = mul i64 %i.aw, 42949672960001
  %i.ay = add i64 %i.ax, %i.au
  %i.az = lshr i64 %i.ay, 32
  %i.ba = add nuw nsw i64 %i.az, %i.ao
  %i.bb = getelementptr inbounds nuw i8, ptr %.0349, i64 16
  %i.bc = add i64 %.pre.pre, 16                   ; 2 uses
  store i64 %i.bc, ptr %3, align 8, !tbaa !77
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e, %.preheader294
  %.pre = phi i64 [ %.pre.pre, %.preheader294 ], [ %i.ai, %bb.d ], [ %i.bc, %bb.e ] ; 3 uses
  %.1263.lcssa = phi i64 [ 0, %.preheader294 ], [ 8, %bb.d ], [ 16, %bb.e ] ; 2 uses
  %.1256.lcssa = phi i64 [ 0, %.preheader294 ], [ %i.ag, %bb.d ], [ %i.ba, %bb.e ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0349, %.preheader294 ], [ %i.ah, %bb.d ], [ %i.bb, %bb.e ] ; 3 uses
  %.not64334 = icmp eq ptr %.1.lcssa, %i.f
  br i1 %.not64334, label %.critedge2, label %.lr.ph339

.lr.ph339:                                        ; preds = %.critedge
  %umax = tail call i64 @llvm.umax.i64(i64 %.pre, i64 %2) ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph339, %bb.g
  %i.bd = phi i64 [ %.pre, %.lr.ph339 ], [ %i.bl, %bb.g ] ; 2 uses
  %.2338 = phi ptr [ %.1.lcssa, %.lr.ph339 ], [ %i.bj, %bb.g ] ; 3 uses
  %.2257337 = phi i64 [ %.1256.lcssa, %.lr.ph339 ], [ %i.bi, %bb.g ] ; 2 uses
  %.2264336 = phi i64 [ %.1263.lcssa, %.lr.ph339 ], [ %i.bk, %bb.g ] ; 3 uses
  %exitcond.not = icmp eq i64 %i.bd, %umax
  br i1 %exitcond.not, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = mul i64 %.2257337, 10
  %i.bf = load i8, ptr %.2338, align 1, !tbaa !71
  %i.bg = sext i8 %i.bf to i64
  %i.bh = add i64 %i.be, -48
  %i.bi = add i64 %i.bh, %i.bg                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.2338, i64 1 ; 3 uses
  %i.bk = add nuw nsw i64 %.2264336, 1            ; 2 uses
  %i.bl = add i64 %i.bd, 1                        ; 3 uses
  store i64 %i.bl, ptr %3, align 8, !tbaa !77
  %i.bm = icmp ugt i64 %.2264336, 17
  %.not64 = icmp eq ptr %i.bj, %i.f
  %or.cond = select i1 %i.bm, i1 true, i1 %.not64
  br i1 %or.cond, label %.critedge2, label %bb.f, !llvm.loop !412

.critedge2:                                       ; preds = %bb.f, %bb.g, %.critedge
  %i.bn = phi i64 [ %.pre, %.critedge ], [ %i.bl, %bb.g ], [ %umax, %bb.f ]
  %.2264.lcssa = phi i64 [ %.1263.lcssa, %.critedge ], [ %i.bk, %bb.g ], [ %.2264336, %bb.f ] ; 2 uses
  %.2257.lcssa = phi i64 [ %.1256.lcssa, %.critedge ], [ %i.bi, %bb.g ], [ %.2257337, %bb.f ] ; 8 uses
  %.2.lcssa = phi ptr [ %.1.lcssa, %.critedge ], [ %i.bj, %bb.g ], [ %.2338, %bb.f ] ; 5 uses
  %i.bo = icmp eq i64 %i.bn, %2
  %i.bp = load i16, ptr %i.q, align 8, !tbaa !90  ; 12 uses
  %i.bq = zext i16 %i.bp to i64                   ; 6 uses
  %.not19.i.i = icmp eq i16 %i.bp, 0              ; 2 uses
  br i1 %i.bo, label %bb.h, label %bb.o

bb.h:                                             ; preds = %.critedge2
  br i1 %.not19.i.i, label %_ZN10fast_float6bigint3mulEm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @_ZN3fmt2v96detail10basic_dataIvE14power_of_10_64E.const, i64 %.2264.lcssa
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !77
  %i.bt = zext i64 %i.bs to i128                  ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN10fast_float22parse_number_slow_pathIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EEb:bb.a
  br label %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit73

_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit73: ; preds = %bb.ct, %bb.cs
  %.pn349 = phi i64 [ %i.rr, %bb.ct ], [ %i.rg, %bb.cs ]
  %spec.select.i72.pn = phi i64 [ %spec.select.i72, %bb.ct ], [ %i.ri, %bb.cs ] ; 3 uses
  %i.ru = lshr i64 %spec.select.i72.pn, 63        ; 2 uses
  %i.rv = trunc nuw nsw i64 %i.ru to i32
  %i.rw = add nuw nsw i64 %i.ru, 9                ; 2 uses
  %i.rx = lshr i64 %spec.select.i72.pn, %i.rw     ; 6 uses
  %i.ry = mul nsw i32 %i.qx, 217706
  %i.rz = ashr i32 %i.ry, 16
  %i.sa = add nsw i32 %i.rz, 1086
  %i.sb = sub nsw i32 %i.sa, %i.qv
  %i.sc = add nsw i32 %i.sb, %i.rv                ; 3 uses
  %i.sd = icmp slt i32 %i.sc, 1
  br i1 %i.sd, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit73
  %i.se = sub nsw i32 1, %i.sc                    ; 2 uses
  %i.sf = icmp samesign ugt i32 %i.se, 63
  br i1 %i.sf, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.sg = zext nneg i32 %i.se to i64
  %i.sh = lshr i64 %i.rx, %i.sg                   ; 2 uses
  %i.si = and i64 %i.sh, 1
  %i.sj = add nuw nsw i64 %i.si, %i.sh            ; 2 uses
  %i.sk = lshr i64 %i.sj, 1
  %i.sl = icmp samesign ugt i64 %i.sj, 9007199254740991
  %i.sm = zext i1 %i.sl to i32
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i

bb.cw:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit73
  %i.sn = icmp ugt i64 %.pn349, 1
  %i.so = add nsw i64 %.6.i24.sink, -24
  %i.sp = icmp ult i64 %i.so, -28
  %or.cond336 = select i1 %i.sn, i1 true, i1 %i.sp
  br i1 %or.cond336, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.sq = and i64 %i.rx, 3
  %i.sr = icmp eq i64 %i.sq, 1
  %i.ss = shl i64 %i.rx, %i.rw
  %i.st = icmp eq i64 %i.ss, %spec.select.i72.pn
  %or.cond.i.i = select i1 %i.sr, i1 %i.st, i1 false
  %i.su = and i64 %i.rx, 72057594037927932
  %spec.select337 = select i1 %or.cond.i.i, i64 %i.su, i64 %i.rx
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.sroa.0224.0 = phi i64 [ %i.rx, %bb.cw ], [ %spec.select337, %bb.cx ] ; 2 uses
  %i.sv = and i64 %.sroa.0224.0, 1
  %i.sw = add nuw nsw i64 %i.sv, %.sroa.0224.0    ; 2 uses
  %i.sx = lshr i64 %i.sw, 1
  %.not22.i.i = icmp samesign ugt i64 %i.sw, 18014398509481983 ; 2 uses
  %i.sy = zext i1 %.not22.i.i to i32
  %spec.select339 = add nuw nsw i32 %i.sc, %i.sy  ; 2 uses
  %i.sz = and i64 %i.sx, 9218868437227405311
  %.not23.i.i = icmp samesign ugt i32 %spec.select339, 2046 ; 2 uses
  %.not350 = select i1 %.not23.i.i, i1 true, i1 %.not22.i.i
  %spec.select343 = select i1 %.not350, i64 0, i64 %i.sz
  %spec.select344 = select i1 %.not23.i.i, i32 2047, i32 %spec.select339
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i

_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i: ; preds = %bb.cy, %bb.cu, %bb.cr, %bb.cq, %bb.cv
  %.sroa.0224.2 = phi i64 [ 0, %bb.cu ], [ 0, %bb.cq ], [ 0, %bb.cr ], [ %i.sk, %bb.cv ], [ %spec.select343, %bb.cy ]
  %.sroa.18.1 = phi i32 [ 0, %bb.cu ], [ 0, %bb.cq ], [ 2047, %bb.cr ], [ %i.sm, %bb.cv ], [ %spec.select344, %bb.cy ]
  %.not.i83 = icmp ne i64 %.sroa.0231.2, %.sroa.0224.2
  %i.ta = icmp ne i32 %.sroa.18236.1, %.sroa.18.1
  %i.tb = select i1 %.not.i83, i1 true, i1 %i.ta
  br i1 %i.tb, label %bb.cz, label %.thread317

bb.cz:                                            ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i
  %i.tc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.2267.sink, i1 true) ; 2 uses
  %i.td = trunc nuw nsw i64 %i.tc to i32
  %i.te = shl i64 %.2267.sink, %i.tc
  %i.tf = trunc i64 %.6.i24.sink to i32           ; 4 uses
  %i.tg = shl i32 %i.tf, 1                        ; 2 uses
  %i.th = add i32 %i.tg, 684
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr inbounds [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E.const, i64 %i.ti
  %i.tk = load i64, ptr %i.tj, align 16, !tbaa !77
  %i.tl = zext i64 %i.te to i128                  ; 2 uses
  %i.tm = zext i64 %i.tk to i128
  %i.tn = mul nuw i128 %i.tm, %i.tl               ; 2 uses
  %i.to = lshr i128 %i.tn, 64
  %i.tp = trunc nuw i128 %i.to to i64             ; 3 uses
  %i.tq = and i64 %i.tp, 511
  %i.tr = icmp eq i64 %i.tq, 511
  br i1 %i.tr, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ts = trunc i128 %i.tn to i64
  %i.tt = add i32 %i.tg, 685
  %i.tu = sext i32 %i.tt to i64
  %i.tv = getelementptr inbounds [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E.const, i64 %i.tu
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !77
  %i.tx = zext i64 %i.tw to i128
  %i.ty = mul nuw i128 %i.tx, %i.tl
  %i.tz = lshr i128 %i.ty, 64
  %i.ua = trunc nuw i128 %i.tz to i64
  %i.ub = xor i64 %i.ua, -1
  %i.uc = icmp ult i64 %i.ub, %i.ts
  %i.ud = zext i1 %i.uc to i64
  %spec.select.i66 = add nuw i64 %i.ud, %i.tp
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da
  %spec.select.i66.pn = phi i64 [ %spec.select.i66, %bb.da ], [ %i.tp, %bb.cz ] ; 2 uses
  %i.ue = lshr i64 %spec.select.i66.pn, 63        ; 2 uses
  %i.uf = trunc nuw nsw i64 %i.ue to i32
  %i.ug = xor i64 %i.ue, 1
  %i.uh = shl i64 %spec.select.i66.pn, %i.ug      ; 2 uses
  %i.ui = mul nsw i32 %i.tf, 217706
  %i.uj = ashr i32 %i.ui, 16
  %reass.sub.neg = sub nsw i32 %i.uf, %i.td
  %i.uk = add nsw i32 %reass.sub.neg, %i.uj       ; 3 uses
  %i.ul = add nsw i32 %i.uk, -31693
  %i.um = icmp slt i32 %i.uk, 31693
  br i1 %i.um, label %bb.dc, label %.thread317

bb.dc:                                            ; preds = %bb.db
  %i.un = icmp ugt i64 %.2267.sink, 9999
  br i1 %i.un, label %.lr.ph.i, label %.preheader19.i

.preheader19.i:                                   ; preds = %.lr.ph.i, %bb.dc
  %.010.i.lcssa.i = phi i64 [ %.2267.sink, %bb.dc ], [ %i.up, %.lr.ph.i ] ; 3 uses
  %.0.i.lcssa.i = phi i32 [ %i.tf, %bb.dc ], [ %i.uq, %.lr.ph.i ] ; 2 uses
  %i.uo = icmp samesign ugt i64 %.010.i.lcssa.i, 99
  br i1 %i.uo, label %.lr.ph25.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.dc, %.lr.ph.i
  %.0.i21.i = phi i32 [ %i.uq, %.lr.ph.i ], [ %i.tf, %bb.dc ]
  %.010.i20.i = phi i64 [ %i.up, %.lr.ph.i ], [ %.2267.sink, %bb.dc ] ; 2 uses
  %i.up = udiv i64 %.010.i20.i, 10000             ; 2 uses
  %i.uq = add nsw i32 %.0.i21.i, 4                ; 2 uses
  %i.ur = icmp ugt i64 %.010.i20.i, 99999999
  br i1 %i.ur, label %.lr.ph.i, label %.preheader19.i, !llvm.loop !13

.preheader.i:                                     ; preds = %.lr.ph25.i, %.preheader19.i
  %.111.i.lcssa.i = phi i64 [ %.010.i.lcssa.i, %.preheader19.i ], [ %i.ut, %.lr.ph25.i ] ; 2 uses
  %.1.i.lcssa.i = phi i32 [ %.0.i.lcssa.i, %.preheader19.i ], [ %i.uu, %.lr.ph25.i ] ; 2 uses
  %i.us = icmp samesign ugt i64 %.111.i.lcssa.i, 9
  br i1 %i.us, label %.lr.ph30.i, label %_ZN10fast_float19scientific_exponentEmi.exit.i

.lr.ph25.i:                                       ; preds = %.preheader19.i, %.lr.ph25.i
  %.1.i24.i = phi i32 [ %i.uu, %.lr.ph25.i ], [ %.0.i.lcssa.i, %.preheader19.i ]
  %.111.i23.i = phi i64 [ %i.ut, %.lr.ph25.i ], [ %.010.i.lcssa.i, %.preheader19.i ] ; 2 uses
  %i.ut = udiv i64 %.111.i23.i, 100               ; 2 uses
  %i.uu = add nsw i32 %.1.i24.i, 2                ; 2 uses
  %i.uv = icmp samesign ugt i64 %.111.i23.i, 9999
  br i1 %i.uv, label %.lr.ph25.i, label %.preheader.i, !llvm.loop !14

.lr.ph30.i:                                       ; preds = %.preheader.i, %.lr.ph30.i
  %.2.i29.i = phi i32 [ %i.ux, %.lr.ph30.i ], [ %.1.i.lcssa.i, %.preheader.i ]
  %.212.i28.i = phi i64 [ %i.uw, %.lr.ph30.i ], [ %.111.i.lcssa.i, %.preheader.i ] ; 2 uses
  %i.uw = udiv i64 %.212.i28.i, 10
  %i.ux = add nsw i32 %.2.i29.i, 1                ; 2 uses
  %i.uy = icmp samesign ugt i64 %.212.i28.i, 99
  br i1 %i.uy, label %.lr.ph30.i, label %_ZN10fast_float19scientific_exponentEmi.exit.i, !llvm.loop !15

_ZN10fast_float19scientific_exponentEmi.exit.i:   ; preds = %.lr.ph30.i, %.preheader.i
  %.2.i.lcssa.i = phi i32 [ %.1.i.lcssa.i, %.preheader.i ], [ %i.ux, %.lr.ph30.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 0, ptr %i.b, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %6, i8 0, i64 504, i1 false)
  call void @_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %6, ptr noundef nonnull align 8 dereferenceable(68) %7, i64 noundef 769, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #25
  %i.uz = add nsw i32 %.2.i.lcssa.i, 1
  %i.va = load i64, ptr %i.b, align 8, !tbaa !77
  %i.vb = trunc i64 %i.va to i32
  %i.vc = sub i32 %i.uz, %i.vb                    ; 3 uses
  %i.vd = icmp sgt i32 %i.vc, -1
  br i1 %i.vd, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %_ZN10fast_float19scientific_exponentEmi.exit.i
  %i.ve = call { i64, i32 } @_ZN10fast_float19positive_digit_compIdEENS_17adjusted_mantissaERNS_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %6, i32 noundef %i.vc) #25
  br label %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit

bb.de:                                            ; preds = %_ZN10fast_float19scientific_exponentEmi.exit.i
  %i.vf = add nsw i32 %i.uk, 1075
  %i.vg = call { i64, i32 } @_ZN10fast_float19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES1_i(ptr noundef nonnull align 8 dereferenceable(504) %6, i64 %i.uh, i32 %i.vf, i32 noundef %i.vc) #25
  br label %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit

_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit: ; preds = %bb.dd, %bb.de
  %.pn.i84 = phi { i64, i32 } [ %i.ve, %bb.dd ], [ %i.vg, %bb.de ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %.fca.0.extract.i = extractvalue { i64, i32 } %.pn.i84, 0
  %.fca.1.extract.i = extractvalue { i64, i32 } %.pn.i84, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !85, !range !86
  %.pre525 = load i64, ptr %i.oh, align 8, !tbaa !87
  br label %.thread317

.thread317:                                       ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit, %bb.db
  %i.vh = phi i64 [ %.pre525, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %.2267.sink, %bb.db ], [ %.2267.sink, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i ], [ %.2267.sink, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i ]
  %i.vi = phi i8 [ %.pre, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.e, %bb.db ], [ %i.e, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i ], [ %i.e, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i ]
  %.sroa.0217.1 = phi i64 [ %.fca.0.extract.i, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.uh, %bb.db ], [ %.sroa.0231.2, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i ], [ %.sroa.0231.2, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i ] ; 2 uses
  %.sroa.9.1 = phi i32 [ %.fca.1.extract.i, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.ul, %bb.db ], [ %.sroa.18236.1, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit.i ], [ %.sroa.18236.1, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit60.i ] ; 3 uses
  %i.vj = zext nneg i8 %i.vi to i64
  %8 = zext i32 %.sroa.9.1 to i64
  %9 = shl i64 %8, 52
  %i.vk = shl nuw i64 %i.vj, 63
  %i.vl = or i64 %9, %i.vk
  %i.vm = or i64 %i.vl, %.sroa.0217.1
  store i64 %i.vm, ptr %2, align 8, !tbaa !97
  %i.vn = icmp ne i64 %i.vh, 0
  %i.vo = icmp eq i64 %.sroa.0217.1, 0
  %or.cond5.i63 = select i1 %i.vn, i1 %i.vo, i1 false
  %i.vp = icmp eq i32 %.sroa.9.1, 0
  %or.cond8.i = select i1 %or.cond5.i63, i1 %i.vp, i1 false
  %i.vq = icmp eq i32 %.sroa.9.1, 2047
  %or.cond340 = select i1 %or.cond8.i, i1 true, i1 %i.vq
  %spec.select345 = select i1 %or.cond340, i32 34, i32 0
  br label %_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit: ; preds = %.split.thread, %.split, %.thread317, %bb.ca, %bb.cb, %.thread620, %bb.ch
  %i.vr = phi ptr [ %.6280.sink, %bb.ca ], [ %.6280.sink, %bb.ch ], [ %i.oa, %.thread620 ], [ %.6280.sink, %bb.cb ], [ %.6280.sink, %.thread317 ], [ %.6280.sink, %.split ], [ %.ph, %.split.thread ]
  %.sroa.247.1.i = phi i32 [ 0, %bb.ca ], [ 0, %bb.ch ], [ 0, %.thread620 ], [ 0, %bb.cb ], [ %spec.select345, %.thread317 ], [ 0, %.split ], [ 0, %.split.thread ]
  %.fca.0.insert.i = insertvalue { ptr, i32 } poison, ptr %i.vr, 0
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
  store i64 %i.y, ptr %i.u, align 8, !tbaa !77
  %i.z = add nuw nsw i64 %.01622.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.z, %i.h
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !449

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = icmp ult i16 %i.g, 62
  br i1 %i.aa, label %bb.e, label %_ZN10fast_float6bigint5pow10Ej.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  store i64 %i.t, ptr %i.ab, align 8, !tbaa !77
  %i.ac = add nuw nsw i16 %i.g, 1
  store i16 %i.ac, ptr %i.f, align 8, !tbaa !90
  br label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i

_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i: ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c, %bb.b
  %.not9.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not9.i.i.i, label %_ZN10fast_float6bigint5pow10Ej.exit, label %bb.f

bb.f:                                             ; preds = %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !90 ; 3 uses
  %i.af = zext i16 %i.ae to i64                   ; 3 uses
  %i.ag = add nuw nsw i64 %i.d, %i.af
  %i.ah = icmp samesign ult i64 %i.ag, 63
  %i.ai = icmp ne i16 %i.ae, 0
  %or.cond.not.i.i.i.i = and i1 %i.ai, %i.ah
  br i1 %or.cond.not.i.i.i.i, label %bb.g, label %_ZN10fast_float6bigint5pow10Ej.exit

bb.g:                                             ; preds = %bb.f
  %.idx12.i.i.i.i = shl nuw nsw i64 %i.d, 3       ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx12.i.i.i.i ; 2 uses
  %i.ak = icmp ugt i16 %i.ae, 1
  br i1 %i.ak, label %bb.h, label %bb.i, !prof !93

bb.h:                                             ; preds = %bb.g
  %.idx.i.i.i.i = shl nuw nsw i64 %i.af, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 dereferenceable(504) %0, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i = load i16, ptr %i.ad, align 8, !tbaa !90
  br label %_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.af
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = load i64, ptr %0, align 8, !tbaa !77
  store i64 %i.an, ptr %i.am, align 8, !tbaa !77
  br label %_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i

_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i: ; preds = %bb.i, %bb.h
  %i.ao = phi i16 [ %.pre.i.i.i, %bb.h ], [ 1, %bb.i ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 dereferenceable(504) %0, i8 0, i64 %.idx12.i.i.i.i, i1 false), !tbaa !77
  %i.ap = trunc nuw i64 %i.d to i16
  %i.aq = add i16 %i.ao, %i.ap
  store i16 %i.aq, ptr %i.ad, align 8, !tbaa !90
  br label %_ZN10fast_float6bigint5pow10Ej.exit

_ZN10fast_float6bigint5pow10Ej.exit:              ; preds = %bb.f, %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, %_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i, %bb.a, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !90 ; 4 uses
  %i.at = zext i16 %i.as to i64                   ; 5 uses
  switch i16 %i.as, label %bb.k [
    i16 0, label %_ZNK10fast_float6bigint10bit_lengthEv.exit
    i16 1, label %bb.j
  ]

bb.j:                                             ; preds = %_ZN10fast_float6bigint5pow10Ej.exit
  %i.au = getelementptr i8, ptr %0, i64 -8
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %i.at
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !77 ; 2 uses
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true) ; 2 uses
  %i.ay = shl i64 %i.aw, %i.ax
  br label %_ZNK10fast_float6bigint4hi64ERb.exit.thread

bb.k:                                             ; preds = %_ZN10fast_float6bigint5pow10Ej.exit
  %i.az = getelementptr i8, ptr %0, i64 -8
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.at
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !77 ; 3 uses
  %i.bc = getelementptr i8, ptr %0, i64 -16
  %i.bd = getelementptr [8 x i8], ptr %i.bc, i64 %i.at
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !77 ; 3 uses
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 true) ; 5 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZN10fast_float11uint64_hi64EmmRb.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = shl i64 %i.be, %i.bf
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.be, i64 %i.bf)
  br label %_ZN10fast_float11uint64_hi64EmmRb.exit.i

_ZN10fast_float11uint64_hi64EmmRb.exit.i:         ; preds = %bb.l, %bb.k
  %.in.in.i = phi i64 [ %i.bh, %bb.l ], [ %i.be, %bb.k ] ; 2 uses
  %.0.i.i = phi i64 [ %i.bi, %bb.l ], [ %i.bb, %bb.k ] ; 2 uses
  %.in.i = icmp ne i64 %.in.in.i, 0
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %0, i64 %i.at
  %i.bj = icmp ugt i16 %i.as, 2
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZNK10fast_float6bigint4hi64ERb.exit.thread

.lr.ph.i.i:                                       ; preds = %_ZN10fast_float11uint64_hi64EmmRb.exit.i, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.bm, %.lr.ph.i.i ], [ 2, %_ZN10fast_float11uint64_hi64EmmRb.exit.i ] ; 2 uses
  %i.bk = xor i64 %.05.i.i, -1
end_hunk_1
begin_hunk_2_@_ZZN3fmt2v96detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS0_17basic_format_argsINS0_20basic_format_contextINSt11conditionalIXsr3std7is_sameINS0_13type_identityIS4_E4typeEcEE5valueENS0_8appenderESt20back_insert_iteratorINS3_ISE_EEEE4typeESE_EEEENS1_10locale_refEEN14format_handler15on_format_specsEiPKcSQ_:bb.a
  br i1 %i.ec, label %.split70.i, label %.split68.i

.split68.i:                                       ; preds = %bb.ar
  %i.ed = getelementptr inbounds nuw i8, ptr %.4.i147, i64 1
  br label %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit.sink.split

.split70.i:                                       ; preds = %bb.ar
  call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.20) #27
  unreachable

_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit.sink.split: ; preds = %bb.h, %.split68.i
  %.sink = phi i8 [ %i.eb, %.split68.i ], [ %i.bj, %bb.h ]
  %.0.i.ph = phi ptr [ %i.ed, %.split68.i ], [ %i.bc, %bb.h ]
  %i.ee = load ptr, ptr %8, align 8, !tbaa !366, !nonnull !78, !align !261
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i8 %.sink, ptr %i.ef, align 4, !tbaa !207
  br label %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit

_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit: ; preds = %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit.sink.split, %bb.i, %_ZN3fmt2v96detail11parse_alignIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit, %bb.ac, %_ZN3fmt2v96detail13specs_checkerINS1_13specs_handlerIcEEE7on_hashEv.exit, %_ZN3fmt2v96detail13specs_checkerINS1_13specs_handlerIcEEE7on_zeroEv.exit, %bb.ak, %bb.am, %bb.aq
  %.0.i = phi ptr [ %i.do, %bb.am ], [ %i.dz, %bb.aq ], [ %2, %bb.i ], [ %.132.i, %_ZN3fmt2v96detail11parse_alignIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit ], [ %.065.i, %bb.ac ], [ %i.cz, %_ZN3fmt2v96detail13specs_checkerINS1_13specs_handlerIcEEE7on_hashEv.exit ], [ %i.di, %_ZN3fmt2v96detail13specs_checkerINS1_13specs_handlerIcEEE7on_zeroEv.exit ], [ %i.dk, %bb.ak ], [ %.0.i.ph, %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit.sink.split ] ; 2 uses
  %i.eg = icmp eq ptr %.0.i, %3
  br i1 %i.eg, label %bb.as, label %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit.thread

_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit.thread: ; preds = %.thread, %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit
  %.0.i182 = phi ptr [ %.0.i, %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit ], [ %.4.i147, %.thread ] ; 2 uses
  %i.eh = load i8, ptr %.0.i182, align 1, !tbaa !71
  %.not = icmp eq i8 %i.eh, 125
  br i1 %.not, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit.thread, %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit
  call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.40) #27
  unreachable

bb.at:                                            ; preds = %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit.thread
  %.sroa.0.0.copyload.i62 = load ptr, ptr %i.a, align 8 ; 16 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i63 = load ptr, ptr %i.ei, align 8, !tbaa !125 ; 11 uses
  switch i32 %i.ac, label %_ZN3fmt2v916visit_format_argIRNS0_6detail13arg_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit [
    i32 14, label %bb.bq
    i32 1, label %bb.au
    i32 2, label %bb.ax
    i32 3, label %bb.ay
    i32 4, label %bb.bb
    i32 5, label %bb.bc
    i32 6, label %bb.bf
    i32 7, label %bb.bg
    i32 8, label %bb.bj
    i32 9, label %bb.bk
    i32 10, label %bb.bl
    i32 11, label %bb.bm
    i32 12, label %bb.bn
    i32 13, label %bb.bo
  ]

bb.au:                                            ; preds = %bb.at
  %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.115 = load i32, ptr %.sroa.092, align 16, !tbaa !71 ; 3 uses
  %i.ej = icmp slt i32 %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.115, 0
  br i1 %i.ej, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ek = sub i32 0, %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.115
  br label %_ZN3fmt2v96detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit

bb.aw:                                            ; preds = %bb.au
  %i.el = load i16, ptr %i.aq, align 1
  %i.em = lshr i16 %i.el, 4
  %i.en = and i16 %i.em, 7
  %i.eo = zext nneg i16 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt2v96detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.prefixes, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !236
  %i.er = zext i32 %i.eq to i64
  %i.es = shl nuw i64 %i.er, 32
  br label %_ZN3fmt2v96detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit

_ZN3fmt2v96detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit: ; preds = %bb.av, %bb.aw
  %.06.i = phi i64 [ 72057787311456256, %bb.av ], [ %i.es, %bb.aw ]
  %.0.i64 = phi i32 [ %i.ek, %bb.av ], [ %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.115, %bb.aw ]
  %.sroa.0.0.insert.ext.i = zext i32 %.0.i64 to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.06.i, %.sroa.0.0.insert.ext.i
  %i.et = call ptr @_ZN3fmt2v96detail18write_int_noinlineIcNS0_8appenderEjEET0_S4_NS1_13write_int_argIT1_EERKNS0_18basic_format_specsIT_EENS1_10locale_refE(ptr %.sroa.0.0.copyload.i62, i64 %.sroa.0.0.insert.insert.i, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr %.sroa.0.0.copyload.i63)
  br label %_ZN3fmt2v916visit_format_argIRNS0_6detail13arg_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.ax:                                            ; preds = %bb.at
  %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.114 = load i32, ptr %.sroa.092, align 16, !tbaa !71
  %i.eu = load i16, ptr %i.aq, align 1
  %i.ev = lshr i16 %i.eu, 4
  %i.ew = and i16 %i.ev, 7
  %i.ex = zext nneg i16 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt2v96detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.prefixes, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !236
  %i.fa = zext i32 %i.ez to i64
  %i.fb = shl nuw i64 %i.fa, 32
  %.sroa.0.0.insert.ext.i65 = zext i32 %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.114 to i64
  %.sroa.0.0.insert.insert.i66 = or disjoint i64 %i.fb, %.sroa.0.0.insert.ext.i65
  %i.fc = call ptr @_ZN3fmt2v96detail18write_int_noinlineIcNS0_8appenderEjEET0_S4_NS1_13write_int_argIT1_EERKNS0_18basic_format_specsIT_EENS1_10locale_refE(ptr %.sroa.0.0.copyload.i62, i64 %.sroa.0.0.insert.insert.i66, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr %.sroa.0.0.copyload.i63)
  br label %_ZN3fmt2v916visit_format_argIRNS0_6detail13arg_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.ay:                                            ; preds = %bb.at
  %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.109 = load i64, ptr %.sroa.092, align 16, !tbaa !71 ; 3 uses
  %i.fd = icmp slt i64 %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.109, 0
  br i1 %i.fd, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fe = sub i64 0, %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.109
  br label %_ZN3fmt2v96detail18make_write_int_argIxEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit

bb.ba:                                            ; preds = %bb.ay
  %i.ff = load i16, ptr %i.aq, align 1
  %i.fg = lshr i16 %i.ff, 4
  %i.fh = and i16 %i.fg, 7
  %i.fi = zext nneg i16 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt2v96detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.prefixes, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !236
  br label %_ZN3fmt2v96detail18make_write_int_argIxEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit

_ZN3fmt2v96detail18make_write_int_argIxEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit: ; preds = %bb.az, %bb.ba
  %.06.i67 = phi i32 [ 16777261, %bb.az ], [ %i.fk, %bb.ba ]
  %.0.i68 = phi i64 [ %i.fe, %bb.az ], [ %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.109, %bb.ba ]
  %i.fl = call ptr @_ZN3fmt2v96detail18write_int_noinlineIcNS0_8appenderEmEET0_S4_NS1_13write_int_argIT1_EERKNS0_18basic_format_specsIT_EENS1_10locale_refE(ptr %.sroa.0.0.copyload.i62, i64 %.0.i68, i32 %.06.i67, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr %.sroa.0.0.copyload.i63)
  br label %_ZN3fmt2v916visit_format_argIRNS0_6detail13arg_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.bb:                                            ; preds = %bb.at
  %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.108 = load i64, ptr %.sroa.092, align 16, !tbaa !71
  %i.fm = load i16, ptr %i.aq, align 1
  %i.fn = lshr i16 %i.fm, 4
  %i.fo = and i16 %i.fn, 7
  %i.fp = zext nneg i16 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt2v96detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.prefixes, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !236
  %i.fs = call ptr @_ZN3fmt2v96detail18write_int_noinlineIcNS0_8appenderEmEET0_S4_NS1_13write_int_argIT1_EERKNS0_18basic_format_specsIT_EENS1_10locale_refE(ptr %.sroa.0.0.copyload.i62, i64 %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.108, i32 %i.fr, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr %.sroa.0.0.copyload.i63)
  br label %_ZN3fmt2v916visit_format_argIRNS0_6detail13arg_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.bc:                                            ; preds = %bb.at
  %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.95 = load i128, ptr %.sroa.092, align 16, !tbaa !71 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ft = load i16, ptr %i.aq, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  %i.fu = icmp slt i128 %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.95, 0
  br i1 %i.fu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.fv = sub i128 0, %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.95
  br label %_ZN3fmt2v96detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit

bb.be:                                            ; preds = %bb.bc
  %i.fw = lshr i16 %i.ft, 4
  %i.fx = and i16 %i.fw, 7
  %i.fy = zext nneg i16 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt2v96detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.prefixes, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !236, !noalias !715
  br label %_ZN3fmt2v96detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit

_ZN3fmt2v96detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit: ; preds = %bb.bd, %bb.be
  %.06.i71 = phi i32 [ 16777261, %bb.bd ], [ %i.ga, %bb.be ]
  %.0.i72 = phi i128 [ %i.fv, %bb.bd ], [ %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.95, %bb.be ]
  store i128 %.0.i72, ptr %6, align 16, !tbaa !717, !alias.scope !715
  %i.gb = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.06.i71, ptr %i.gb, align 16, !tbaa !718, !alias.scope !715
  %i.gc = call ptr @_ZN3fmt2v96detail18write_int_noinlineIcNS0_8appenderEoEET0_S4_NS1_13write_int_argIT1_EERKNS0_18basic_format_specsIT_EENS1_10locale_refE(ptr %.sroa.0.0.copyload.i62, ptr noundef nonnull byval(%"struct.fmt::v9::detail::write_int_arg.142") align 16 %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr %.sroa.0.0.copyload.i63)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN3fmt2v916visit_format_argIRNS0_6detail13arg_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.bf:                                            ; preds = %bb.at
  %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.94204 = load i80, ptr %.sroa.092, align 16
  %.sroa.092.10.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.092, i64 10
  %.sroa.092.10..sroa.092.0..sroa.092.0..sroa.092.0.94205 = load i48, ptr %.sroa.092.10.sroa_idx.sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.gd = load i16, ptr %i.aq, align 1
  %i.ge = lshr i16 %i.gd, 4
  %i.gf = and i16 %i.ge, 7
  %i.gg = zext nneg i16 %i.gf to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt2v96detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.prefixes, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !236, !noalias !719
  store i80 %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.94204, ptr %5, align 16, !tbaa !717, !alias.scope !719
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i48 %.sroa.092.10..sroa.092.0..sroa.092.0..sroa.092.0.94205, ptr %.sroa_idx, align 2, !tbaa !717, !alias.scope !719
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.gi, ptr %i.gj, align 16, !tbaa !718, !alias.scope !719
  %i.gk = call ptr @_ZN3fmt2v96detail18write_int_noinlineIcNS0_8appenderEoEET0_S4_NS1_13write_int_argIT1_EERKNS0_18basic_format_specsIT_EENS1_10locale_refE(ptr %.sroa.0.0.copyload.i62, ptr noundef nonnull byval(%"struct.fmt::v9::detail::write_int_arg.142") align 16 %5, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr %.sroa.0.0.copyload.i63)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN3fmt2v916visit_format_argIRNS0_6detail13arg_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.bg:                                            ; preds = %bb.at
  %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.119 = load i8, ptr %.sroa.092, align 16, !tbaa !71 ; 2 uses
  %i.gl = load i8, ptr %i.ap, align 8, !tbaa !207
  switch i8 %i.gl, label %bb.bh [
    i8 0, label %bb.bi
    i8 16, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.gm = load i16, ptr %i.aq, align 1
  %i.gn = lshr i16 %i.gm, 4
  %i.go = and i16 %i.gn, 7
  %i.gp = zext nneg i16 %i.go to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt2v96detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.prefixes, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !236
  %i.gs = zext i32 %i.gr to i64
  %i.gt = shl nuw i64 %i.gs, 32
  %.mask = and i8 %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.119, 1
  %.sroa.0.0.insert.ext.i.i = zext nneg i8 %.mask to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %i.gt, %.sroa.0.0.insert.ext.i.i
  %i.gu = call ptr @_ZN3fmt2v96detail18write_int_noinlineIcNS0_8appenderEjEET0_S4_NS1_13write_int_argIT1_EERKNS0_18basic_format_specsIT_EENS1_10locale_refE(ptr %.sroa.0.0.copyload.i62, i64 %.sroa.0.0.insert.insert.i.i, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr null)
  br label %_ZN3fmt2v916visit_format_argIRNS0_6detail13arg_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.bi:                                            ; preds = %bb.bg, %bb.bg
  %i.gv = trunc nuw i8 %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.119 to i1 ; 2 uses
  %i.gw = select i1 %i.gv, ptr @.str.11, ptr @.str.12
  %i.gx = select i1 %i.gv, i64 4, i64 5
  %i.gy = call ptr @_ZN3fmt2v96detail11write_bytesILNS0_5align4typeE1EcNS0_8appenderEEET1_S6_NS0_17basic_string_viewIcEERKNS0_18basic_format_specsIT0_EE(ptr %.sroa.0.0.copyload.i62, ptr nonnull %i.gw, i64 %i.gx, ptr noundef nonnull align 4 dereferenceable(16) %7)
  br label %_ZN3fmt2v916visit_format_argIRNS0_6detail13arg_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.bj:                                            ; preds = %bb.at
  %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.118 = load i8, ptr %.sroa.092, align 16, !tbaa !71
  %i.gz = call ptr @_ZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_T_RKNS0_18basic_format_specsIS5_EENS1_10locale_refE(ptr %.sroa.0.0.copyload.i62, i8 noundef signext %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.118, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr %.sroa.0.0.copyload.i63)
  br label %_ZN3fmt2v916visit_format_argIRNS0_6detail13arg_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.bk:                                            ; preds = %bb.at
  %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.111 = load float, ptr %.sroa.092, align 16, !tbaa !71
  %.sroa.01.0.copyload.i28 = load i64, ptr %7, align 8
  %.sroa.2.0.copyload.i30 = load i64, ptr %i.ap, align 8
  %i.ha = call ptr @_ZN3fmt2v96detail5writeIcNS0_8appenderEfTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S8_S5_NS0_18basic_format_specsIT_EENS1_10locale_refE(ptr %.sroa.0.0.copyload.i62, float noundef %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.111, i64 %.sroa.01.0.copyload.i28, i64 %.sroa.2.0.copyload.i30, ptr %.sroa.0.0.copyload.i63)
  br label %_ZN3fmt2v916visit_format_argIRNS0_6detail13arg_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.bl:                                            ; preds = %bb.at
  %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.105 = load double, ptr %.sroa.092, align 16, !tbaa !71
  %.sroa.01.0.copyload.i33 = load i64, ptr %7, align 8
  %.sroa.2.0.copyload.i35 = load i64, ptr %i.ap, align 8
  %i.hb = call ptr @_ZN3fmt2v96detail5writeIcNS0_8appenderEdTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S8_S5_NS0_18basic_format_specsIT_EENS1_10locale_refE(ptr %.sroa.0.0.copyload.i62, double noundef %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.105, i64 %.sroa.01.0.copyload.i33, i64 %.sroa.2.0.copyload.i35, ptr %.sroa.0.0.copyload.i63)
  br label %_ZN3fmt2v916visit_format_argIRNS0_6detail13arg_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.bm:                                            ; preds = %bb.at
  %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.97 = load x86_fp80, ptr %.sroa.092, align 16, !tbaa !71
  %.sroa.01.0.copyload.i38 = load i64, ptr %7, align 8
  %.sroa.2.0.copyload.i40 = load i64, ptr %i.ap, align 8
  %i.hc = call ptr @_ZN3fmt2v96detail5writeIcNS0_8appenderEeTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S8_S5_NS0_18basic_format_specsIT_EENS1_10locale_refE(ptr %.sroa.0.0.copyload.i62, x86_fp80 noundef %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.97, i64 %.sroa.01.0.copyload.i38, i64 %.sroa.2.0.copyload.i40, ptr %.sroa.0.0.copyload.i63)
  br label %_ZN3fmt2v916visit_format_argIRNS0_6detail13arg_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.bn:                                            ; preds = %bb.at
  %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.104 = load ptr, ptr %.sroa.092, align 16, !tbaa !71
  %i.hd = call ptr @_ZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_PKT_RKNS0_18basic_format_specsIS5_EENS1_10locale_refE(ptr %.sroa.0.0.copyload.i62, ptr noundef %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.104, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr %.sroa.0.0.copyload.i63)
  br label %_ZN3fmt2v916visit_format_argIRNS0_6detail13arg_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.bo:                                            ; preds = %bb.at
  %i.he = load i8, ptr %i.ap, align 8, !tbaa !207
  switch i8 %i.he, label %bb.bp [
    i8 18, label %_ZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewINS0_13type_identityIT_E4typeEEERKNS0_18basic_format_specsIS7_EENS1_10locale_refE.exit
    i8 16, label %_ZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewINS0_13type_identityIT_E4typeEEERKNS0_18basic_format_specsIS7_EENS1_10locale_refE.exit
    i8 0, label %_ZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewINS0_13type_identityIT_E4typeEEERKNS0_18basic_format_specsIS7_EENS1_10locale_refE.exit
  ]

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.20) #27
  unreachable

_ZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewINS0_13type_identityIT_E4typeEEERKNS0_18basic_format_specsIS7_EENS1_10locale_refE.exit: ; preds = %bb.bo, %bb.bo, %bb.bo
  %.sroa.092.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.092, i64 8
  %.sroa.092.8..sroa.092.8..sroa.092.8..sroa.092.8.124 = load i64, ptr %.sroa.092.8..sroa_idx, align 8, !tbaa !71
  %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.103 = load ptr, ptr %.sroa.092, align 16, !tbaa !71
  %i.hf = call ptr @_ZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIS6_EE(ptr %.sroa.0.0.copyload.i62, ptr %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.103, i64 %.sroa.092.8..sroa.092.8..sroa.092.8..sroa.092.8.124, ptr noundef nonnull align 4 dereferenceable(16) %7)
  br label %_ZN3fmt2v916visit_format_argIRNS0_6detail13arg_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.bq:                                            ; preds = %bb.at
  %i.hg = load i8, ptr %i.ap, align 8, !tbaa !207
  switch i8 %i.hg, label %bb.br [
    i8 17, label %_ZN3fmt2v96detail23check_pointer_type_specINS1_13error_handlerEEEvNS0_17presentation_typeEOT_.exit.i
    i8 0, label %_ZN3fmt2v96detail23check_pointer_type_specINS1_13error_handlerEEEvNS0_17presentation_typeEOT_.exit.i
  ]

bb.br:                                            ; preds = %bb.bq
  call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.20) #27
  unreachable

_ZN3fmt2v96detail23check_pointer_type_specINS1_13error_handlerEEEvNS0_17presentation_typeEOT_.exit.i: ; preds = %bb.bq, %bb.bq
  %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.102 = load ptr, ptr %.sroa.092, align 16, !tbaa !71
  %i.hh = ptrtoint ptr %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.092.0.102 to i64 ; 2 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %_ZN3fmt2v96detail23check_pointer_type_specINS1_13error_handlerEEEvNS0_17presentation_typeEOT_.exit.i
  %.03.i.i.i.i = phi i64 [ %i.hh, %_ZN3fmt2v96detail23check_pointer_type_specINS1_13error_handlerEEEvNS0_17presentation_typeEOT_.exit.i ], [ %i.hj, %bb.bs ]
  %.0.i.i.i.i = phi i32 [ 0, %_ZN3fmt2v96detail23check_pointer_type_specINS1_13error_handlerEEEvNS0_17presentation_typeEOT_.exit.i ], [ %i.hi, %bb.bs ] ; 2 uses
  %i.hi = add nuw nsw i32 %.0.i.i.i.i, 1          ; 2 uses
  %i.hj = lshr i64 %.03.i.i.i.i, 4                ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.hj, 0
  br i1 %.not.i.i.i.i, label %_ZN3fmt2v96detail5writeIcNS0_8appenderEvTnNSt9enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_S8_PKS5_RKNS0_18basic_format_specsIT_EENS1_10locale_refE.exit, label %bb.bs, !llvm.loop !24

_ZN3fmt2v96detail5writeIcNS0_8appenderEvTnNSt9enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_S8_PKS5_RKNS0_18basic_format_specsIT_EENS1_10locale_refE.exit: ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store i64 %i.hh, ptr %4, align 8, !tbaa !213
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.hi, ptr %i.hk, align 8, !tbaa !214
  %narrow.i.i = add nuw i32 %.0.i.i.i.i, 3
  %i.hl = zext i32 %narrow.i.i to i64             ; 2 uses
  %i.hm = call ptr @_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ENS0_8appenderEcRZNS1_9write_ptrIcS5_mEET0_S7_T1_PKNS0_18basic_format_specsIT_EEEUlS5_E_EES7_S7_RKNS9_IS8_EEmmOT2_(ptr %.sroa.0.0.copyload.i62, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 noundef %i.hl, i64 noundef %i.hl, ptr noundef nonnull align 8 dereferenceable(12) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN3fmt2v916visit_format_argIRNS0_6detail13arg_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

_ZN3fmt2v916visit_format_argIRNS0_6detail13arg_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit: ; preds = %bb.at, %bb.bi, %bb.bh, %_ZN3fmt2v96detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit, %bb.ax, %_ZN3fmt2v96detail18make_write_int_argIxEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit, %bb.bb, %_ZN3fmt2v96detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit, %bb.bf, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %_ZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewINS0_13type_identityIT_E4typeEEERKNS0_18basic_format_specsIS7_EENS1_10locale_refE.exit, %_ZN3fmt2v96detail5writeIcNS0_8appenderEvTnNSt9enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_S8_PKS5_RKNS0_18basic_format_specsIT_EENS1_10locale_refE.exit
  %.sroa.033.0.i = phi ptr [ %i.gy, %bb.bi ], [ %.sroa.0.0.copyload.i62, %bb.at ], [ %i.et, %_ZN3fmt2v96detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit ], [ %i.fc, %bb.ax ], [ %i.fl, %_ZN3fmt2v96detail18make_write_int_argIxEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit ], [ %i.fs, %bb.bb ], [ %i.gc, %_ZN3fmt2v96detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit ], [ %i.gk, %bb.bf ], [ %i.hm, %_ZN3fmt2v96detail5writeIcNS0_8appenderEvTnNSt9enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_S8_PKS5_RKNS0_18basic_format_specsIT_EENS1_10locale_refE.exit ], [ %i.gz, %bb.bj ], [ %i.ha, %bb.bk ], [ %i.hb, %bb.bl ], [ %i.hc, %bb.bm ], [ %i.hd, %bb.bn ], [ %i.hf, %_ZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewINS0_13type_identityIT_E4typeEEERKNS0_18basic_format_specsIS7_EENS1_10locale_refE.exit ], [ %i.gu, %bb.bh ]
  store ptr %.sroa.033.0.i, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN3fmt2v916visit_format_argIRNS0_6detail13arg_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit, %_ZN3fmt2v916visit_format_argINS0_6detail16custom_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  %.0 = phi ptr [ %i.an, %_ZN3fmt2v916visit_format_argINS0_6detail16custom_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit ], [ %.0.i182, %_ZN3fmt2v916visit_format_argIRNS0_6detail13arg_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.092)
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3fmt2v96detail15do_parse_arg_idIcRZNS1_23parse_replacement_fieldIcRZNS1_10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsINS0_20basic_format_contextINSt11conditionalIXsr3std7is_sameINS0_13type_identityIS6_E4typeEcEE5valueENS0_8appenderESt20back_insert_iteratorINS5_ISG_EEEE4typeESG_EEEENS1_10locale_refEE14format_handlerEEPKS6_ST_ST_OT0_E10id_adapterEEST_ST_ST_SV_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !71      ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not30 = icmp eq i8 %i.c, 48
  br i1 %.not30, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep34.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not31.i64 = icmp eq ptr %i.j, %1
  br i1 %.not31.i64, label %.critedge.i, label %.lr.ph67

bb.d:                                             ; preds = %.lr.ph67
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not31.i = icmp eq ptr %i.o, %1
  br i1 %.not31.i, label %.critedge.i, label %.lr.ph67, !llvm.loop !51

.lr.ph67:                                         ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i66 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.024.i65 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !71    ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !51

..critedge.i_crit_edge:                           ; preds = %.lr.ph67
  br label %.critedge.i, !llvm.loop !51

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.024.i.lcssa = phi i32 [ %.024.i65, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0.i66, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep34.i, %bb.c ], [ %scevgep34.i, %bb.d ] ; 4 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.024.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !71
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ult i64 %i.ae, 2147483648
  br i1 %i.af, label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.043 = phi ptr [ %i.ag, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.024 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ah = icmp eq ptr %.043, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.043, align 1, !tbaa !71
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
end_hunk_2
