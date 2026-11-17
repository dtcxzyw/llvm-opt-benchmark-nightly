Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/json?download=true
inline.NumInlined: 4901
inline.NumDeleted: 1765
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN3fmt2v96detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE:bb.a
bb.h:                                             ; preds = %bb.g
  %i.ae = and i32 %.sroa.1.0.extract.trunc, 262144
  %.not88 = icmp eq i32 %i.ae, 0
  br i1 %.not88, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = fptrunc double %0 to float
  %i.ag = tail call i64 @_ZN3fmt2v96detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef %i.af) #34 ; 3 uses
  %.sroa.036.0.extract.trunc = trunc i64 %i.ag to i32 ; 7 uses
  %.sroa.437.0.extract.shift = lshr i64 %i.ag, 32
  %.sroa.437.0.extract.trunc = trunc nuw i64 %.sroa.437.0.extract.shift to i32 ; 3 uses
  %i.ah = or i32 %.sroa.036.0.extract.trunc, 1
  %i.ai = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ah, i1 true)
  %i.aj = xor i32 %i.ai, 31
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt2v96detail15do_count_digitsEjE5table.const, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !39
  %i.an = and i64 %i.ag, 4294967295
  %i.ao = add i64 %i.am, %i.an
  %i.ap = ashr i64 %i.ao, 32                      ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !184 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !183
  %i.au = add i64 %i.ap, %i.ar                    ; 2 uses
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i, label %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i

_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i: ; preds = %bb.i
  store i64 %i.au, ptr %i.aq, align 8, !tbaa !184
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !182 ; 2 uses
  %.not.i92 = icmp eq ptr %i.ax, null
  br i1 %.not.i92, label %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ar
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.ap ; 2 uses
  %i.ba = icmp ugt i32 %.sroa.036.0.extract.trunc, 99
  br i1 %i.ba, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.021.i.i = phi i32 [ %i.bh, %.lr.ph.i.i ], [ %.sroa.036.0.extract.trunc, %bb.j ] ; 3 uses
  %.01920.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %i.az, %bb.j ]
  %i.bb = getelementptr inbounds i8, ptr %.01920.i.i, i64 -2 ; 3 uses
  %i.bc = urem i32 %.021.i.i, 100
  %i.bd = shl nuw nsw i32 %i.bc, 1
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 1
  store i16 %i.bg, ptr %i.bb, align 1
  %i.bh = udiv i32 %.021.i.i, 100                 ; 2 uses
  %i.bi = icmp ugt i32 %.021.i.i, 9999
  br i1 %i.bi, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !11

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.j
  %.019.lcssa.i.i = phi ptr [ %i.az, %bb.j ], [ %i.bb, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i32 [ %.sroa.036.0.extract.trunc, %bb.j ], [ %i.bh, %.lr.ph.i.i ] ; 3 uses
  %i.bj = icmp samesign ult i32 %.0.lcssa.i.i, 10
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bk = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.bl = or disjoint i8 %i.bk, 48
  %i.bm = getelementptr inbounds i8, ptr %.019.lcssa.i.i, i64 -1
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !37
  br label %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bn = getelementptr inbounds i8, ptr %.019.lcssa.i.i, i64 -2
  %i.bo = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 1
  store i16 %i.br, ptr %i.bn, align 1
  br label %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i: ; preds = %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.bs = getelementptr inbounds i8, ptr %i.a, i64 %i.ap ; 3 uses
  %i.bt = icmp ugt i32 %.sroa.036.0.extract.trunc, 99
  br i1 %i.bt, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i, %.lr.ph.i.i.i
  %.021.i.i.i = phi i32 [ %i.ca, %.lr.ph.i.i.i ], [ %.sroa.036.0.extract.trunc, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i ] ; 3 uses
  %.01920.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i ], [ %i.bs, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i ]
  %i.bu = getelementptr inbounds i8, ptr %.01920.i.i.i, i64 -2 ; 3 uses
  %i.bv = urem i32 %.021.i.i.i, 100
  %i.bw = shl nuw nsw i32 %i.bv, 1
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 1
  store i16 %i.bz, ptr %i.bu, align 1
  %i.ca = udiv i32 %.021.i.i.i, 100               ; 2 uses
  %i.cb = icmp ugt i32 %.021.i.i.i, 9999
  br i1 %i.cb, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !11

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i
  %.019.lcssa.i.i.i = phi ptr [ %i.bs, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i ], [ %i.bu, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi i32 [ %.sroa.036.0.extract.trunc, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i ], [ %i.ca, %.lr.ph.i.i.i ] ; 3 uses
  %i.cc = icmp samesign ult i32 %.0.lcssa.i.i.i, 10
  br i1 %i.cc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.cd = trunc nuw nsw i32 %.0.lcssa.i.i.i to i8
  %i.ce = or disjoint i8 %i.cd, 48
  %i.cf = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i, i64 -1
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !37
  br label %_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.cg = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i, i64 -2
  %i.ch = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 1
  store i16 %i.ck, ptr %i.cg, align 1
  br label %_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i

_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i: ; preds = %bb.n, %bb.m
  %i.cl = call ptr @_ZN3fmt2v96detail17copy_str_noinlineIcPcNS0_8appenderEEET1_T0_S6_S5_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bs, ptr nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

bb.o:                                             ; preds = %bb.h
  %i.cm = tail call { i64, i32 } @_ZN3fmt2v96detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef %0) #34 ; 2 uses
  %i.cn = extractvalue { i64, i32 } %i.cm, 0
  %i.co = extractvalue { i64, i32 } %i.cm, 1
  %i.cp = tail call ptr @_ZN3fmt2v96detail5writeIcNS0_8appenderEmTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_(ptr nonnull %3, i64 noundef %i.cn) ; 0 uses
  br label %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

bb.p:                                             ; preds = %bb.g
  %i.cq = bitcast double %0 to i64                ; 2 uses
  %i.cr = and i64 %i.cq, 4503599627370495         ; 4 uses
  %i.cs = and i64 %i.cq, 9218868437227405312      ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 0                    ; 3 uses
  %i.cu = lshr exact i64 %i.cs, 52
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = or disjoint i64 %i.cr, 4503599627370496
  %i.cx = add nsw i32 %i.cv, -1075                ; 2 uses
  %.0.i.i = select i1 %i.ct, i32 -1074, i32 %i.cx
  br i1 %i.ct, label %.lr.ph.i, label %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.i
  %.sroa.7.06.i = phi i32 [ %i.cz, %.lr.ph.i ], [ -1074, %bb.p ]
  %.sroa.0.05.i = phi i64 [ %i.cy, %.lr.ph.i ], [ %i.cr, %bb.p ] ; 2 uses
  %i.cy = shl i64 %.sroa.0.05.i, 1                ; 2 uses
  %i.cz = add nsw i32 %.sroa.7.06.i, -1           ; 2 uses
  %i.da = and i64 %.sroa.0.05.i, 2251799813685248
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.lr.ph.i, label %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit, !llvm.loop !929

_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit: ; preds = %.lr.ph.i, %bb.p
  %.sroa.0.0.lcssa.i = phi i64 [ %i.cw, %bb.p ], [ %i.cy, %.lr.ph.i ]
  %.sroa.7.0.lcssa.i = phi i32 [ %i.cx, %bb.p ], [ %i.cz, %.lr.ph.i ] ; 2 uses
  %i.dc = shl i64 %.sroa.0.0.lcssa.i, 11
  %i.dd = sub i32 -50, %.sroa.7.0.lcssa.i
  %i.de = sext i32 %i.dd to i64
  %i.df = mul nsw i64 %i.de, 1292913986
  %i.dg = add nsw i64 %i.df, 4294967294
  %i.dh = lshr i64 %i.dg, 32
  %i.di = trunc nuw i64 %i.dh to i32
  %i.dj = add nsw i32 %i.di, 347
  %i.dk = sdiv i32 %i.dj, 8
  %i.dl = add nsw i32 %i.dk, 1                    ; 2 uses
  %i.dm = shl nsw i32 %i.dl, 3                    ; 4 uses
  %i.dn = sext i32 %i.dl to i64                   ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr @_ZN3fmt2v96detail10basic_dataIvE18pow10_significandsE, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !39
  %i.dq = getelementptr inbounds [2 x i8], ptr @_ZN3fmt2v96detail10basic_dataIvE15pow10_exponentsE, i64 %i.dn
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !111
  %i.ds = sext i16 %i.dr to i32
  %i.dt = zext i64 %i.dc to i128
  %i.du = zext i64 %i.dp to i128
  %i.dv = mul nuw i128 %i.du, %i.dt               ; 2 uses
  %i.dw = lshr i128 %i.dv, 64
  %i.dx = trunc nuw i128 %i.dw to i64
  %i.dy = trunc i128 %i.dv to i64
  %i.dz = lshr i64 %i.dy, 63
  %i.ea = add nuw i64 %i.dz, %i.dx                ; 4 uses
  %i.eb = add i32 %.sroa.7.0.lcssa.i, %i.ds
  %.neg255 = sub i32 -53, %i.eb
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !182 ; 15 uses
  %i.ee = sub nsw i32 348, %i.dm                  ; 9 uses
  %i.ef = zext nneg i32 %.neg255 to i64           ; 6 uses
  %i.eg = shl nuw i64 1, %i.ef                    ; 6 uses
  %i.eh = lshr i64 %i.ea, %i.ef                   ; 2 uses
  %i.ei = trunc i64 %i.eh to i32                  ; 2 uses
  %i.ej = and i64 %i.eh, 4294967295
  %i.ek = add i64 %i.eg, -1                       ; 2 uses
  %i.el = and i64 %i.ek, %i.ea                    ; 2 uses
  %i.em = or i32 %i.ei, 1
  %i.en = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.em, i1 true)
  %i.eo = xor i32 %i.en, 31
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt2v96detail15do_count_digitsEjE5table.const, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !39
  %i.es = add i64 %i.ej, %i.er                    ; 2 uses
  %i.et = lshr i64 %i.es, 32
  %i.eu = trunc nuw i64 %i.et to i32              ; 6 uses
  br i1 %i.d, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit
  %i.ev = add nsw i32 %i.ee, %i.eu                ; 3 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  %i.ex = sub nuw nsw i32 2147483647, %i.ev
  %i.ey = icmp samesign ugt i32 %1, %i.ex
  %or.cond.i = select i1 %i.ew, i1 %i.ey, i1 false
  br i1 %or.cond.i, label %bb.r, label %_ZN3fmt2v96detail16adjust_precisionERii.exit

bb.r:                                             ; preds = %bb.q
  %i.ez = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN3fmt2v912format_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull @.str.41)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @__cxa_throw(ptr nonnull %i.ez, ptr nonnull @_ZTIN3fmt2v912format_errorE, ptr nonnull @_ZN3fmt2v912format_errorD1Ev) #36
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.fa = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ez) #34
  resume { ptr, i32 } %i.fa

_ZN3fmt2v96detail16adjust_precisionERii.exit:     ; preds = %bb.q
  %i.fb = add nsw i32 %i.ev, %1                   ; 3 uses
  %i.fc = icmp slt i32 %i.fb, 1
  br i1 %i.fc, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %_ZN3fmt2v96detail16adjust_precisionERii.exit
  %i.fd = icmp slt i32 %i.fb, 0
  br i1 %i.fd, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fe = ashr i64 %i.es, 32
  %i.ff = getelementptr [8 x i8], ptr @_ZN3fmt2v96detail10basic_dataIvE14power_of_10_64E.const, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.ff, i64 -8
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !39
  %i.fi = shl i64 %i.fh, %i.ef                    ; 3 uses
  %i.fj = udiv i64 %i.ea, 10                      ; 4 uses
  %i.fk = sub i64 %i.fi, %i.fj
  %.not.i98 = icmp ugt i64 %i.fj, %i.fk
  br i1 %.not.i98, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fl = shl nuw nsw i64 %i.fj, 1
  %i.fm = sub i64 %i.fi, %i.fl
  %.not23.i = icmp ult i64 %i.fm, 20
  br i1 %.not23.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w, %bb.v
  %.not24.i = icmp ult i64 %i.ea, 100
  br i1 %.not24.i, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = add nsw i64 %i.fj, -10                  ; 2 uses
  %i.fo = sub i64 %i.fi, %i.fn
  %.not25.i = icmp ult i64 %i.fn, %i.fo
  br i1 %.not25.i, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.fp = phi i8 [ 48, %bb.w ], [ 49, %bb.y ]
  store i8 %i.fp, ptr %i.ed, align 1, !tbaa !37
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.aa:                                            ; preds = %_ZN3fmt2v96detail16adjust_precisionERii.exit, %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit
  %.sroa.33.0 = phi i32 [ %i.fb, %_ZN3fmt2v96detail16adjust_precisionERii.exit ], [ %1, %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit ] ; 7 uses
  %i.fq = tail call i32 @llvm.umax.i32(i32 %.sroa.33.0, i32 1) ; 2 uses
  %i.fr = add nsw i32 %i.fq, -1                   ; 2 uses
  %wide.trip.count.a = zext nneg i32 %i.fr to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.au, %bb.aa
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %bb.au ], [ 1, %bb.aa ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.au ], [ 0, %bb.aa ] ; 4 uses
  %i.fs = phi i32 [ %i.gl, %bb.au ], [ %i.eu, %bb.aa ] ; 3 uses
  %.0207 = phi i32 [ %.1208, %bb.au ], [ %i.ei, %bb.aa ] ; 20 uses
  switch i32 %i.fs, label %bb.al [
    i32 10, label %bb.ac
    i32 9, label %bb.ad
    i32 8, label %bb.ae
    i32 7, label %bb.af
    i32 6, label %bb.ag
    i32 5, label %bb.ah
    i32 4, label %bb.ai
    i32 3, label %bb.aj
    i32 2, label %bb.ak
    i32 1, label %bb.am
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ft = udiv i32 %.0207, 1000000000
  %i.fu = urem i32 %.0207, 1000000000
  br label %bb.am

bb.ad:                                            ; preds = %bb.ab
  %i.fv = udiv i32 %.0207, 100000000
  %i.fw = urem i32 %.0207, 100000000
  br label %bb.am

bb.ae:                                            ; preds = %bb.ab
  %i.fx = udiv i32 %.0207, 10000000
  %i.fy = urem i32 %.0207, 10000000
  br label %bb.am

bb.af:                                            ; preds = %bb.ab
  %i.fz = udiv i32 %.0207, 1000000
  %i.ga = urem i32 %.0207, 1000000
  br label %bb.am

bb.ag:                                            ; preds = %bb.ab
  %i.gb = udiv i32 %.0207, 100000
  %i.gc = urem i32 %.0207, 100000
  br label %bb.am

bb.ah:                                            ; preds = %bb.ab
  %i.gd = udiv i32 %.0207, 10000
  %i.ge = urem i32 %.0207, 10000
  br label %bb.am

bb.ai:                                            ; preds = %bb.ab
  %i.gf = udiv i32 %.0207, 1000
  %i.gg = urem i32 %.0207, 1000
  br label %bb.am

bb.aj:                                            ; preds = %bb.ab
  %i.gh = udiv i32 %.0207, 100
  %i.gi = urem i32 %.0207, 100
  br label %bb.am

bb.ak:                                            ; preds = %bb.ab
  %i.gj = udiv i32 %.0207, 10
  %i.gk = urem i32 %.0207, 10
  br label %bb.am

bb.al:                                            ; preds = %bb.ab
  br label %bb.am

bb.am:                                            ; preds = %bb.ab, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.0209 = phi i32 [ 0, %bb.al ], [ %i.ft, %bb.ac ], [ %i.fv, %bb.ad ], [ %i.fx, %bb.ae ], [ %i.fz, %bb.af ], [ %i.gb, %bb.ag ], [ %i.gd, %bb.ah ], [ %i.gf, %bb.ai ], [ %i.gh, %bb.aj ], [ %i.gj, %bb.ak ], [ %.0207, %bb.ab ]
  %.1208 = phi i32 [ %.0207, %bb.al ], [ %i.fu, %bb.ac ], [ %i.fw, %bb.ad ], [ %i.fy, %bb.ae ], [ %i.ga, %bb.af ], [ %i.gc, %bb.ag ], [ %i.ge, %bb.ah ], [ %i.gg, %bb.ai ], [ %i.gi, %bb.aj ], [ %i.gk, %bb.ak ], [ 0, %bb.ab ] ; 2 uses
  %i.gl = add nsw i32 %i.fs, -1                   ; 9 uses
  %i.gm = trunc i32 %.0209 to i8                  ; 2 uses
  %i.gn = add i8 %i.gm, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !37
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count.a
  br i1 %exitcond.not, label %bb.an, label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.gp = trunc nuw nsw i64 %indvars.iv.next to i32 ; 5 uses
  %i.gq = zext i32 %.1208 to i64
  %i.gr = shl i64 %i.gq, %i.ef
  %i.gs = add i64 %i.gr, %i.el                    ; 5 uses
  %i.gt = sext i32 %i.gl to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr @_ZN3fmt2v96detail10basic_dataIvE14power_of_10_64E.const, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !39
  %i.gw = shl i64 %i.gv, %i.ef                    ; 3 uses
  %i.gx = sub i64 %i.gw, %i.gs
  %.not.i.i = icmp ugt i64 %i.gs, %i.gx
  br i1 %.not.i.i, label %.thread213, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gy = shl i64 %i.gs, 1
  %i.gz = sub i64 %i.gw, %i.gy
  %.not23.i.i = icmp ult i64 %i.gz, 2
  br i1 %.not23.i.i, label %bb.ap, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.ap:                                            ; preds = %bb.ao
  %.not24.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not24.i.i, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %.thread213

.thread213:                                       ; preds = %bb.an, %bb.ap
  %i.ha = add i64 %i.gs, -1                       ; 2 uses
  %i.hb = sub i64 %i.gw, %i.ha
  %.not25.i.i = icmp ult i64 %i.ha, %i.hb
  br i1 %.not25.i.i, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i

_ZN3fmt2v96detail19get_round_directionEmmm.exit.i: ; preds = %.thread213
  %i.hc = getelementptr i8, ptr %i.ed, i64 %indvars.iv.next
  %i.hd = getelementptr i8, ptr %i.ed, i64 %indvars.iv
  %i.he = add i8 %i.gm, 49
  store i8 %i.he, ptr %i.hd, align 1, !tbaa !37
  %.not = icmp eq i32 %i.fr, 0
  br i1 %.not, label %.critedge.i, label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i, %bb.aq
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.aq ], [ %indvars.iv.next, %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv.next.i ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !37
  %i.hh = icmp sgt i8 %i.hg, 57
  br i1 %i.hh, label %bb.aq, label %.critedge.i

.critedge.i:                                      ; preds = %bb.aq, %.lr.ph.i101, %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i
  %i.hi = load i8, ptr %i.ed, align 1, !tbaa !37
  %i.hj = icmp sgt i8 %i.hi, 57
  br i1 %i.hj, label %bb.ar, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.aq:                                            ; preds = %.lr.ph.i101
  store i8 48, ptr %i.hf, align 1, !tbaa !37
  %i.hk = getelementptr i8, ptr %i.ed, i64 %indvars.iv.i
  %i.hl = getelementptr i8, ptr %i.hk, i64 -2     ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !37
  %i.hn = add i8 %i.hm, 1
  store i8 %i.hn, ptr %i.hl, align 1, !tbaa !37
  %i.ho = icmp samesign ugt i64 %indvars.iv.i, 2
  br i1 %i.ho, label %.lr.ph.i101, label %.critedge.i, !llvm.loop !930

bb.ar:                                            ; preds = %.critedge.i
  store i8 49, ptr %i.ed, align 1, !tbaa !37
  br i1 %i.d, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hp = add nuw nsw i32 %i.fq, 1
  store i8 48, ptr %i.hc, align 1, !tbaa !37
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.at:                                            ; preds = %bb.ar
  %i.hq = sub nsw i32 349, %i.dm
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.au:                                            ; preds = %bb.am
  %5 = icmp sgt i32 %i.fs, 1
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1
  br i1 %5, label %bb.ab, label %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115, !llvm.loop !931

_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115: ; preds = %bb.au, %bb.av
  %6 = phi i32 [ %i.hx, %bb.av ], [ %i.gl, %bb.au ]
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %bb.av ], [ %indvars.iv309, %bb.au ] ; 4 uses
  %.045.i = phi i64 [ %i.hs, %bb.av ], [ 1, %bb.au ] ; 2 uses
  %.042.i = phi i64 [ %i.hw, %bb.av ], [ %i.el, %bb.au ]
  %i.hr = mul i64 %.042.i, 10                     ; 2 uses
  %i.hs = mul i64 %.045.i, 10                     ; 6 uses
  %i.ht = lshr i64 %i.hr, %i.ef
  %i.hu = trunc i64 %i.ht to i8                   ; 2 uses
  %i.hv = add i8 %i.hu, 48
  %i.hw = and i64 %i.hr, %i.ek                    ; 6 uses
  %i.hx = add nsw i32 %6, -1                      ; 8 uses
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv312
  store i8 %i.hv, ptr %i.hy, align 1, !tbaa !37
  %.not.i102 = icmp ult i64 %i.hs, %i.hw
  %i.hz = trunc nuw i64 %indvars.iv.next313 to i32 ; 7 uses
  br i1 %.not.i102, label %bb.av, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread

bb.av:                                            ; preds = %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115
  %i.ia = icmp sgt i32 %.sroa.33.0, %i.hz
  br i1 %i.ia, label %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115, label %bb.aw, !llvm.loop !932

bb.aw:                                            ; preds = %bb.av
  %i.ib = trunc nuw nsw i64 %indvars.iv312 to i32
  %.not29.i = icmp ult i64 %i.hs, %i.eg
  %i.ic = sub nuw i64 %i.eg, %i.hs
  %.not30.i = icmp ult i64 %i.hs, %i.ic
  %or.cond32.i = select i1 %.not29.i, i1 %.not30.i, i1 false
  br i1 %or.cond32.i, label %bb.ax, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread

bb.ax:                                            ; preds = %bb.aw
  %i.id = sub i64 %i.eg, %i.hw
  %.not.i.i105 = icmp ugt i64 %i.hw, %i.id
  br i1 %.not.i.i105, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ie = mul i64 %.045.i, 20
  %i.if = shl nuw i64 %i.hw, 1
  %i.ig = sub i64 %i.eg, %i.if
  %.not23.i.i106 = icmp ugt i64 %i.ie, %i.ig
  br i1 %.not23.i.i106, label %bb.az, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.ih = sub nuw nsw i64 %i.hw, %i.hs            ; 2 uses
  %i.ii = sub i64 %i.eg, %i.ih
  %.not25.i.i108 = icmp ult i64 %i.ih, %i.ii
  br i1 %.not25.i.i108, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i109

_ZN3fmt2v96detail19get_round_directionEmmm.exit.i109: ; preds = %bb.az
  %i.ij = getelementptr i8, ptr %i.ed, i64 %indvars.iv.next313
  %i.ik = getelementptr i8, ptr %i.ed, i64 %indvars.iv312
  %i.il = add i8 %i.hu, 49
  store i8 %i.il, ptr %i.ik, align 1, !tbaa !37
  br label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %bb.ba, %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i109
  %indvars.iv.i113 = phi i64 [ %indvars.iv.next313, %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i109 ], [ %indvars.iv.next.i114, %bb.ba ] ; 3 uses
  %indvars.iv.next.i114 = add nsw i64 %indvars.iv.i113, -1 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv.next.i114 ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !37
  %i.io = icmp sgt i8 %i.in, 57
  br i1 %i.io, label %bb.ba, label %.critedge.i110

.critedge.i110:                                   ; preds = %bb.ba, %.lr.ph.i112
  %i.ip = load i8, ptr %i.ed, align 1, !tbaa !37
  %i.iq = icmp sgt i8 %i.ip, 57
  br i1 %i.iq, label %bb.bb, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.ba:                                            ; preds = %.lr.ph.i112
  store i8 48, ptr %i.im, align 1, !tbaa !37
  %i.ir = getelementptr i8, ptr %i.ed, i64 %indvars.iv.i113
  %i.is = getelementptr i8, ptr %i.ir, i64 -2     ; 2 uses
  %i.it = load i8, ptr %i.is, align 1, !tbaa !37
  %i.iu = add i8 %i.it, 1
  store i8 %i.iu, ptr %i.is, align 1, !tbaa !37
  %i.iv = icmp samesign ugt i64 %indvars.iv.i113, 2
  br i1 %i.iv, label %.lr.ph.i112, label %.critedge.i110, !llvm.loop !930

bb.bb:                                            ; preds = %.critedge.i110
  store i8 49, ptr %i.ed, align 1, !tbaa !37
  br i1 %i.d, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.iw = add nuw nsw i32 %i.ib, 2
  store i8 48, ptr %i.ij, align 1, !tbaa !37
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.bd:                                            ; preds = %bb.bb
  %i.ix = sub nsw i32 349, %i.dm
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235: ; preds = %.critedge.i110, %bb.bc, %bb.bd, %bb.ay, %bb.ao, %.critedge.i, %bb.as, %bb.at, %bb.z, %bb.u
  %i.iy = phi i32 [ %i.eu, %bb.u ], [ %i.eu, %bb.z ], [ %i.hx, %bb.bc ], [ %i.hx, %bb.bd ], [ %i.hx, %.critedge.i110 ], [ %i.hx, %bb.ay ], [ %i.gl, %bb.as ], [ %i.gl, %bb.at ], [ %i.gl, %.critedge.i ], [ %i.gl, %bb.ao ]
  %.sroa.16.2242 = phi i32 [ 0, %bb.u ], [ 1, %bb.z ], [ %i.iw, %bb.bc ], [ %i.hz, %bb.bd ], [ %i.hz, %.critedge.i110 ], [ %i.hz, %bb.ay ], [ %i.hp, %bb.as ], [ %i.gp, %bb.at ], [ %i.gp, %.critedge.i ], [ %i.gp, %bb.ao ]
  %.sroa.40.2241 = phi i32 [ %i.ee, %bb.u ], [ %i.ee, %bb.z ], [ %i.ee, %bb.bc ], [ %i.ix, %bb.bd ], [ %i.ee, %.critedge.i110 ], [ %i.ee, %bb.ay ], [ %i.ee, %bb.as ], [ %i.hq, %bb.at ], [ %i.ee, %.critedge.i ], [ %i.ee, %bb.ao ]
  %i.iz = add nsw i32 %i.iy, %.sroa.40.2241
  store i32 %i.iz, ptr %i.b, align 4, !tbaa !76
  %i.ja = zext i32 %.sroa.16.2242 to i64          ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !183 ; 2 uses
  %i.jd = icmp ult i64 %i.jc, %i.ja
  br i1 %i.jd, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235
  %i.je = load ptr, ptr %3, align 8, !tbaa !69
  %i.jf = load ptr, ptr %i.je, align 8
  tail call void %i.jf(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ja), !call_target !196, !inline_history !14
  %.pre.i117 = load i64, ptr %i.jb, align 8, !tbaa !183
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235
  %i.jg = phi i64 [ %i.jc, %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235 ], [ %.pre.i117, %bb.be ]
  %..i116 = tail call i64 @llvm.umin.i64(i64 %i.ja, i64 %i.jg)
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %..i116, ptr %i.jh, align 8, !tbaa !184
  br label %bb.bj

_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread: ; preds = %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115, %bb.ap, %.thread213, %bb.aw, %bb.az, %bb.y, %bb.x
  %i.ji = phi i32 [ %i.eu, %bb.y ], [ %i.eu, %bb.x ], [ %i.gl, %bb.ap ], [ %i.gl, %.thread213 ], [ %i.hx, %bb.aw ], [ %i.hx, %bb.az ], [ %i.hx, %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115 ]
  %.sroa.16.2231 = phi i32 [ 0, %bb.y ], [ 0, %bb.x ], [ %i.gp, %bb.ap ], [ %i.gp, %.thread213 ], [ %i.hz, %bb.aw ], [ %i.hz, %bb.az ], [ %i.hz, %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115 ]
  %.sroa.33.1230 = phi i32 [ 0, %bb.y ], [ 0, %bb.x ], [ %.sroa.33.0, %bb.ap ], [ %.sroa.33.0, %.thread213 ], [ %.sroa.33.0, %bb.aw ], [ %.sroa.33.0, %bb.az ], [ %.sroa.33.0, %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115 ]
  %reass.sub288 = sub i32 %.sroa.16.2231, %i.dm
  %i.jj = add i32 %reass.sub288, 347
  %i.jk = add nsw i32 %i.jj, %i.ji
  store i32 %i.jk, ptr %i.b, align 4, !tbaa !76
  %i.jl = and i32 %.sroa.1.0.extract.trunc, 262144
  %.not85 = icmp eq i32 %i.jl, 0
  br i1 %.not85, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread
  %i.jm = fptrunc double %0 to float
  %i.jn = bitcast float %i.jm to i32              ; 2 uses
  %i.jo = and i32 %i.jn, 8388607                  ; 2 uses
  %i.jp = zext nneg i32 %i.jo to i128             ; 2 uses
  %i.jq = and i32 %i.jn, 2139095040               ; 3 uses
  %i.jr = icmp eq i32 %i.jq, 0                    ; 2 uses
  %i.js = lshr exact i32 %i.jq, 23
  %i.jt = or disjoint i128 %i.jp, 8388608
  %i.ju = add nsw i32 %i.js, -150
  %storemerge.i = select i1 %i.jr, i128 %i.jp, i128 %i.jt
  %.0.i119 = select i1 %i.jr, i32 -149, i32 %i.ju
  %i.jv = icmp eq i32 %i.jo, 0
  %i.jw = icmp samesign ugt i32 %i.jq, 16777215
  %i.jx = and i1 %i.jv, %i.jw
  br label %bb.bi

bb.bh:                                            ; preds = %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread
  %i.jy = zext nneg i64 %i.cr to i128             ; 2 uses
  %i.jz = or disjoint i128 %i.jy, 4503599627370496
  %storemerge.i120 = select i1 %i.ct, i128 %i.jy, i128 %i.jz
  %i.ka = icmp eq i64 %i.cr, 0
  %i.kb = icmp samesign ugt i64 %i.cs, 9007199254740991
  %i.kc = and i1 %i.ka, %i.kb
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sroa.0.0 = phi i128 [ %storemerge.i120, %bb.bh ], [ %storemerge.i, %bb.bg ]
  %.sroa.6.0 = phi i32 [ %.0.i.i, %bb.bh ], [ %.0.i119, %bb.bg ]
  %i.kd = phi i1 [ %i.kc, %bb.bh ], [ %i.jx, %bb.bg ]
  %spec.select = zext i1 %i.kd to i32             ; 2 uses
  %i.ke = or disjoint i32 %spec.select, 4
  %.181 = select i1 %i.d, i32 %i.ke, i32 %spec.select
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %.sroa.33.1230, i32 767)
  store i128 %.sroa.0.0, ptr %4, align 16, !tbaa !934
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !76
  call void @_ZN3fmt2v96detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef nonnull byval(%"struct.fmt::v9::detail::basic_fp.84") align 16 %4, i32 noundef %.181, i32 noundef %spec.store.select, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bf, %bb.bi
  %i.kf = and i32 %.sroa.1.0.extract.trunc, 524288
  %.not86 = icmp ne i32 %i.kf, 0
  %or.cond90.not = select i1 %i.d, i1 true, i1 %.not86
  br i1 %or.cond90.not, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !184 ; 2 uses
  %.not87284 = icmp eq i64 %i.kh, 0
  br i1 %.not87284, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bk
  %.promoted = load i32, ptr %i.b, align 4
  %i.ki = load ptr, ptr %i.ec, align 8, !tbaa !182
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph, %bb.bm
  %.0285 = phi i64 [ %i.kh, %.lr.ph ], [ %i.kk, %bb.bm ] ; 5 uses
  %i.kj = phi i32 [ %.promoted, %.lr.ph ], [ %i.ko, %bb.bm ]
  %i.kk = add i64 %.0285, -1                      ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !37
  %i.kn = icmp eq i8 %i.km, 48
  br i1 %i.kn, label %bb.bm, label %.critedge

bb.bm:                                            ; preds = %bb.bl
  %i.ko = add nsw i32 %i.kj, 1                    ; 2 uses
  store i32 %i.ko, ptr %i.b, align 4, !tbaa !76
  %.not87 = icmp eq i64 %i.kk, 0
  br i1 %.not87, label %.critedge.thread, label %bb.bl, !llvm.loop !933

.critedge.thread:                                 ; preds = %bb.bm, %bb.bk
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !183
  br label %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit124

.critedge:                                        ; preds = %bb.bl
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !183 ; 2 uses
  %i.kt = icmp ugt i64 %.0285, %i.ks
  br i1 %i.kt, label %bb.bn, label %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit124

bb.bn:                                            ; preds = %.critedge
  %i.ku = load ptr, ptr %3, align 8, !tbaa !69
  %i.kv = load ptr, ptr %i.ku, align 8
  call void %i.kv(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %.0285), !call_target !196, !inline_history !14
  %.pre.i123 = load i64, ptr %i.kr, align 8, !tbaa !183
  br label %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit124

_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit124: ; preds = %.critedge.thread, %.critedge, %bb.bn
  %.0.lcssa339 = phi i64 [ %.0285, %.critedge ], [ %.0285, %bb.bn ], [ 0, %.critedge.thread ]
  %i.kw = phi i64 [ %i.ks, %.critedge ], [ %.pre.i123, %bb.bn ], [ %i.kq, %.critedge.thread ]
  %..i122 = call i64 @llvm.umin.i64(i64 %.0.lcssa339, i64 %i.kw)
  store i64 %..i122, ptr %i.kg, align 8, !tbaa !184
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit124, %bb.bj
  %i.kx = load i32, ptr %i.b, align 4, !tbaa !76
  br label %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit: ; preds = %_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i, %bb.l, %bb.k, %bb.bo, %bb.o
  %.077 = phi i32 [ %i.kx, %bb.bo ], [ %i.co, %bb.o ], [ %.sroa.437.0.extract.trunc, %bb.k ], [ %.sroa.437.0.extract.trunc, %bb.l ], [ %.sroa.437.0.extract.trunc, %_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit, %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit, %_ZN3fmt2v96detail6bufferIcE9push_backERKc.exit
  %.1 = phi i32 [ %i.ac, %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit ], [ 0, %_ZN3fmt2v96detail6bufferIcE9push_backERKc.exit ], [ %.077, %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcRZNS1_11write_bytesILS4_2EcSC_EET1_SE_NS0_17basic_string_viewIcEERKNS0_18basic_format_specsIT0_EEEUlPcE_EESI_SI_RKNSH_ISE_EEmmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !151
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %3) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.e = load i16, ptr %i.d, align 1
end_hunk_0
