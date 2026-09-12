Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Conv?download=true
inline.NumInlined: 3501
inline.NumDeleted: 1003
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN3fmt2v96detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE:bb.a
bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %3, align 8, !tbaa !95
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.s), !call_target !133, !inline_history !42
  %.pre.i91 = load i64, ptr %i.t, align 8, !tbaa !118
  br label %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit

_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit:   ; preds = %bb.e, %bb.f
  %i.y = phi i64 [ %i.u, %bb.e ], [ %.pre.i91, %bb.f ]
  %..i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %..i, ptr %i.z, align 8, !tbaa !117
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !116
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 48, i64 %i.s, i1 false)
  %i.ac = sub nsw i32 0, %1
  br label %bb.bp

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.ad = icmp slt i32 %1, 0
  br i1 %i.ad, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ae = and i32 %.sroa.1.0.extract.trunc, 262144
  %.not88 = icmp eq i32 %i.ae, 0
  br i1 %.not88, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = fptrunc double %0 to float
  %i.ag = tail call i64 @_ZN3fmt2v96detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef %i.af) #25 ; 3 uses
  %.sroa.036.0.extract.trunc = trunc i64 %i.ag to i32 ; 7 uses
  %.sroa.437.0.extract.shift = lshr i64 %i.ag, 32
  %.sroa.437.0.extract.trunc = trunc nuw i64 %.sroa.437.0.extract.shift to i32 ; 3 uses
  %i.ah = or i32 %.sroa.036.0.extract.trunc, 1
  %i.ai = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ah, i1 true)
  %i.aj = xor i32 %i.ai, 31
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt2v96detail15do_count_digitsEjE5table.const, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !77
  %i.an = and i64 %i.ag, 4294967295
  %i.ao = add i64 %i.am, %i.an
  %i.ap = ashr i64 %i.ao, 32                      ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !117 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !118
  %i.au = add i64 %i.ap, %i.ar                    ; 2 uses
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i, label %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i

_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i: ; preds = %bb.i
  store i64 %i.au, ptr %i.aq, align 8, !tbaa !117
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !116 ; 2 uses
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
  %i.bf = getelementptr inbounds nuw i8, ptr @.str.18, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 1
  store i16 %i.bg, ptr %i.bb, align 1
  %i.bh = udiv i32 %.021.i.i, 100                 ; 2 uses
  %i.bi = icmp ugt i32 %.021.i.i, 9999
  br i1 %i.bi, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !23

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.j
  %.019.lcssa.i.i = phi ptr [ %i.az, %bb.j ], [ %i.bb, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i32 [ %.sroa.036.0.extract.trunc, %bb.j ], [ %i.bh, %.lr.ph.i.i ] ; 3 uses
  %i.bj = icmp samesign ult i32 %.0.lcssa.i.i, 10
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bk = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.bl = or disjoint i8 %i.bk, 48
  %i.bm = getelementptr inbounds i8, ptr %.019.lcssa.i.i, i64 -1
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !71
  br label %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bn = getelementptr inbounds i8, ptr %.019.lcssa.i.i, i64 -2
  %i.bo = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @.str.18, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 1
  store i16 %i.br, ptr %i.bn, align 1
  br label %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i: ; preds = %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
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
  %i.by = getelementptr inbounds nuw i8, ptr @.str.18, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 1
  store i16 %i.bz, ptr %i.bu, align 1
  %i.ca = udiv i32 %.021.i.i.i, 100               ; 2 uses
  %i.cb = icmp ugt i32 %.021.i.i.i, 9999
  br i1 %i.cb, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !23

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i
  %.019.lcssa.i.i.i = phi ptr [ %i.bs, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i ], [ %i.bu, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi i32 [ %.sroa.036.0.extract.trunc, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i ], [ %i.ca, %.lr.ph.i.i.i ] ; 3 uses
  %i.cc = icmp samesign ult i32 %.0.lcssa.i.i.i, 10
  br i1 %i.cc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.cd = trunc nuw nsw i32 %.0.lcssa.i.i.i to i8
  %i.ce = or disjoint i8 %i.cd, 48
  %i.cf = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i, i64 -1
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !71
  br label %_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.cg = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i, i64 -2
  %i.ch = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @.str.18, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 1
  store i16 %i.ck, ptr %i.cg, align 1
  br label %_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i

_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i: ; preds = %bb.n, %bb.m
  %i.cl = call ptr @_ZN3fmt2v96detail17copy_str_noinlineIcPcNS0_8appenderEEET1_T0_S6_S5_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bs, ptr nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

bb.o:                                             ; preds = %bb.h
  %i.cm = tail call { i64, i32 } @_ZN3fmt2v96detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef %0) #25 ; 2 uses
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
  br i1 %i.db, label %.lr.ph.i, label %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit, !llvm.loop !861

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
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !77
  %i.dq = getelementptr inbounds [2 x i8], ptr @_ZN3fmt2v96detail10basic_dataIvE15pow10_exponentsE, i64 %i.dn
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !99
  %i.ds = sext i16 %i.dr to i32
  %i.dt = zext i64 %i.dc to i128
  %i.du = zext i64 %i.dp to i128
  %i.dv = mul nuw i128 %i.du, %i.dt               ; 2 uses
  %i.dw = lshr i128 %i.dv, 64
  %i.dx = trunc nuw i128 %i.dw to i64
  %i.dy = trunc i128 %i.dv to i64
  %5 = lshr i64 %i.dy, 63
  %i.dz = add nuw i64 %5, %i.dx                   ; 4 uses
  %i.ea = add i32 %.sroa.7.0.lcssa.i, %i.ds
  %.neg255 = sub i32 -53, %i.ea
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !116 ; 15 uses
  %i.ed = sub nsw i32 348, %i.dm                  ; 9 uses
  %i.ee = zext nneg i32 %.neg255 to i64           ; 6 uses
  %i.ef = shl nuw i64 1, %i.ee                    ; 6 uses
  %i.eg = lshr i64 %i.dz, %i.ee                   ; 2 uses
  %i.eh = trunc i64 %i.eg to i32                  ; 2 uses
  %i.ei = and i64 %i.eg, 4294967295
  %i.ej = add i64 %i.ef, -1                       ; 2 uses
  %i.ek = and i64 %i.ej, %i.dz                    ; 2 uses
  %i.el = or i32 %i.eh, 1
  %i.em = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.el, i1 true)
  %i.en = xor i32 %i.em, 31
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt2v96detail15do_count_digitsEjE5table.const, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !77
  %i.er = add i64 %i.ei, %i.eq                    ; 2 uses
  %i.es = lshr i64 %i.er, 32
  %i.et = trunc nuw i64 %i.es to i32              ; 6 uses
  br i1 %i.d, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit
  %i.eu = add nsw i32 %i.ed, %i.et                ; 3 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  %i.ew = sub nuw nsw i32 2147483647, %i.eu
  %i.ex = icmp samesign ugt i32 %1, %i.ew
  %or.cond.i = select i1 %i.ev, i1 %i.ex, i1 false
  br i1 %or.cond.i, label %bb.r, label %_ZN3fmt2v96detail16adjust_precisionERii.exit

bb.r:                                             ; preds = %bb.q
  %i.ey = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt2v912format_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull @.str.31)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @__cxa_throw(ptr nonnull %i.ey, ptr nonnull @_ZTIN3fmt2v912format_errorE, ptr nonnull @_ZN3fmt2v912format_errorD1Ev) #27
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ez = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ey) #25
  resume { ptr, i32 } %i.ez

_ZN3fmt2v96detail16adjust_precisionERii.exit:     ; preds = %bb.q
  %i.fa = add nsw i32 %i.eu, %1                   ; 3 uses
  %i.fb = icmp slt i32 %i.fa, 1
  br i1 %i.fb, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %_ZN3fmt2v96detail16adjust_precisionERii.exit
  %i.fc = icmp slt i32 %i.fa, 0
  br i1 %i.fc, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fd = ashr i64 %i.er, 32
  %i.fe = getelementptr [8 x i8], ptr @_ZN3fmt2v96detail10basic_dataIvE14power_of_10_64E.const, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 -8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !77
  %i.fh = shl i64 %i.fg, %i.ee                    ; 3 uses
  %i.fi = udiv i64 %i.dz, 10                      ; 4 uses
  %i.fj = sub i64 %i.fh, %i.fi
  %.not.i98 = icmp ugt i64 %i.fi, %i.fj
  br i1 %.not.i98, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fk = shl nuw nsw i64 %i.fi, 1
  %i.fl = sub i64 %i.fh, %i.fk
  %.not23.i = icmp ult i64 %i.fl, 20
  br i1 %.not23.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w, %bb.v
  %.not24.i = icmp ult i64 %i.dz, 100
  br i1 %.not24.i, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fm = add nsw i64 %i.fi, -10                  ; 2 uses
  %i.fn = sub i64 %i.fh, %i.fm
  %.not25.i = icmp ult i64 %i.fm, %i.fn
  br i1 %.not25.i, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.fo = phi i8 [ 48, %bb.w ], [ 49, %bb.y ]
  store i8 %i.fo, ptr %i.ec, align 1, !tbaa !71
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.aa:                                            ; preds = %_ZN3fmt2v96detail16adjust_precisionERii.exit, %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit
  %.sroa.33.0 = phi i32 [ %i.fa, %_ZN3fmt2v96detail16adjust_precisionERii.exit ], [ %1, %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit ] ; 7 uses
  %i.fp = tail call i32 @llvm.umax.i32(i32 %.sroa.33.0, i32 1) ; 2 uses
  %i.fq = add nsw i32 %i.fp, -1                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.fq to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.au, %bb.aa
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %bb.au ], [ 1, %bb.aa ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.au ], [ 0, %bb.aa ] ; 4 uses
  %i.fr = phi i32 [ %i.gk, %bb.au ], [ %i.et, %bb.aa ] ; 3 uses
  %.0207 = phi i32 [ %.1208, %bb.au ], [ %i.eh, %bb.aa ] ; 20 uses
  switch i32 %i.fr, label %bb.al [
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
  %i.fs = udiv i32 %.0207, 1000000000
  %i.ft = urem i32 %.0207, 1000000000
  br label %bb.am

bb.ad:                                            ; preds = %bb.ab
  %i.fu = udiv i32 %.0207, 100000000
  %i.fv = urem i32 %.0207, 100000000
  br label %bb.am

bb.ae:                                            ; preds = %bb.ab
  %i.fw = udiv i32 %.0207, 10000000
  %i.fx = urem i32 %.0207, 10000000
  br label %bb.am

bb.af:                                            ; preds = %bb.ab
  %i.fy = udiv i32 %.0207, 1000000
  %i.fz = urem i32 %.0207, 1000000
  br label %bb.am

bb.ag:                                            ; preds = %bb.ab
  %i.ga = udiv i32 %.0207, 100000
  %i.gb = urem i32 %.0207, 100000
  br label %bb.am

bb.ah:                                            ; preds = %bb.ab
  %i.gc = udiv i32 %.0207, 10000
  %i.gd = urem i32 %.0207, 10000
  br label %bb.am

bb.ai:                                            ; preds = %bb.ab
  %i.ge = udiv i32 %.0207, 1000
  %i.gf = urem i32 %.0207, 1000
  br label %bb.am

bb.aj:                                            ; preds = %bb.ab
  %i.gg = udiv i32 %.0207, 100
  %i.gh = urem i32 %.0207, 100
  br label %bb.am

bb.ak:                                            ; preds = %bb.ab
  %i.gi = udiv i32 %.0207, 10
  %i.gj = urem i32 %.0207, 10
  br label %bb.am

bb.al:                                            ; preds = %bb.ab
  br label %bb.am

bb.am:                                            ; preds = %bb.ab, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.0209 = phi i32 [ 0, %bb.al ], [ %i.fs, %bb.ac ], [ %i.fu, %bb.ad ], [ %i.fw, %bb.ae ], [ %i.fy, %bb.af ], [ %i.ga, %bb.ag ], [ %i.gc, %bb.ah ], [ %i.ge, %bb.ai ], [ %i.gg, %bb.aj ], [ %i.gi, %bb.ak ], [ %.0207, %bb.ab ]
  %.1208 = phi i32 [ %.0207, %bb.al ], [ %i.ft, %bb.ac ], [ %i.fv, %bb.ad ], [ %i.fx, %bb.ae ], [ %i.fz, %bb.af ], [ %i.gb, %bb.ag ], [ %i.gd, %bb.ah ], [ %i.gf, %bb.ai ], [ %i.gh, %bb.aj ], [ %i.gj, %bb.ak ], [ 0, %bb.ab ] ; 2 uses
  %i.gk = add nsw i32 %i.fr, -1                   ; 9 uses
  %i.gl = trunc i32 %.0209 to i8                  ; 2 uses
  %i.gm = add i8 %i.gl, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ec, i64 %indvars.iv
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !71
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %bb.an, label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.go = trunc nuw nsw i64 %indvars.iv.next to i32 ; 5 uses
  %i.gp = zext i32 %.1208 to i64
  %i.gq = shl i64 %i.gp, %i.ee
  %i.gr = add i64 %i.gq, %i.ek                    ; 5 uses
  %i.gs = sext i32 %i.gk to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr @_ZN3fmt2v96detail10basic_dataIvE14power_of_10_64E.const, i64 %i.gs
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !77
  %i.gv = shl i64 %i.gu, %i.ee                    ; 3 uses
  %i.gw = sub i64 %i.gv, %i.gr
  %.not.i.i = icmp ugt i64 %i.gr, %i.gw
  br i1 %.not.i.i, label %.thread213, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gx = shl i64 %i.gr, 1
  %i.gy = sub i64 %i.gv, %i.gx
  %.not23.i.i = icmp ult i64 %i.gy, 2
  br i1 %.not23.i.i, label %bb.ap, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.ap:                                            ; preds = %bb.ao
  %.not24.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not24.i.i, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %.thread213

.thread213:                                       ; preds = %bb.an, %bb.ap
  %i.gz = add i64 %i.gr, -1                       ; 2 uses
  %i.ha = sub i64 %i.gv, %i.gz
  %.not25.i.i = icmp ult i64 %i.gz, %i.ha
  br i1 %.not25.i.i, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i

_ZN3fmt2v96detail19get_round_directionEmmm.exit.i: ; preds = %.thread213
  %i.hb = getelementptr i8, ptr %i.ec, i64 %indvars.iv.next
  %i.hc = getelementptr i8, ptr %i.ec, i64 %indvars.iv
  %i.hd = add i8 %i.gl, 49
  store i8 %i.hd, ptr %i.hc, align 1, !tbaa !71
  %.not = icmp eq i32 %i.fq, 0
  br i1 %.not, label %.critedge.i, label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i, %bb.aq
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.aq ], [ %indvars.iv.next, %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
end_hunk_0
