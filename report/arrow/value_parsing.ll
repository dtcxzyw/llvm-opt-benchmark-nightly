Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/value_parsing?download=true
inline.NumInlined: 865
inline.NumDeleted: 342
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN14arrow_vendored10fast_float6detail12parse_infnanIfcEENS0_19from_chars_result_tIT0_EEPKS4_S7_RT_NS0_12chars_formatE:bb.a
  %or.cond63 = icmp ult i8 %i.ab, 26
  br i1 %or.cond63, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph85
  %i.ac = add i8 %i.z, -58
  %or.cond45 = icmp ult i8 %i.ac, -10
  %i.ad = icmp ne i8 %i.z, 95
  %or.cond62.not72 = and i1 %i.ad, %or.cond45
  %i.ae = getelementptr inbounds nuw i8, ptr %.06784, i64 1 ; 2 uses
  %.not43 = icmp eq ptr %i.ae, %1
  %or.cond70 = select i1 %or.cond62.not72, i1 true, i1 %.not43
  br i1 %or.cond70, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51, label %.lr.ph.backedge

bb.h:                                             ; preds = %.lr.ph85
  %.old = getelementptr inbounds nuw i8, ptr %.06784, i64 1 ; 2 uses
  %.not43.old = icmp eq ptr %.old, %1
  br i1 %.not43.old, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.h, %bb.g
  %.067.be = phi ptr [ %.old, %bb.h ], [ %i.ae, %bb.g ] ; 3 uses
  %i.af = load i8, ptr %.067.be, align 1, !tbaa !41 ; 2 uses
  %i.ag = icmp eq i8 %i.af, 41
  br i1 %i.ag, label %.lr.ph._crit_edge, label %.lr.ph85, !llvm.loop !102

.lr.ph.i46.1:                                     ; preds = %.lr.ph.i.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %.035, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !41
  %i.aj = and i8 %i.ai, -33
  %.not.i48.1 = icmp eq i8 %i.aj, 78
  br i1 %.not.i48.1, label %.lr.ph.i46.2, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51

.lr.ph.i46.2:                                     ; preds = %.lr.ph.i46.1
  %i.ak = getelementptr inbounds nuw i8, ptr %.035, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !41
  %i.am = and i8 %i.al, -33
  %.not.i48.2 = icmp eq i8 %i.am, 70
  br i1 %.not.i48.2, label %bb.i, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51

bb.i:                                             ; preds = %.lr.ph.i46.2
  %i.an = icmp samesign ugt i64 %i.h, 7
  br i1 %i.an, label %.lr.ph.i52, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52:                                       ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.035, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !41
  %i.aq = and i8 %i.ap, -33
  %.not.i54 = icmp eq i8 %i.aq, 73
  br i1 %.not.i54, label %.lr.ph.i52.1, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52.1:                                     ; preds = %.lr.ph.i52
  %i.ar = getelementptr inbounds nuw i8, ptr %.035, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !41
  %i.at = and i8 %i.as, -33
  %.not.i54.1 = icmp eq i8 %i.at, 78
  br i1 %.not.i54.1, label %.lr.ph.i52.2, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52.2:                                     ; preds = %.lr.ph.i52.1
  %i.au = getelementptr inbounds nuw i8, ptr %.035, i64 5
  %i.av = load i8, ptr %i.au, align 1, !tbaa !41
  %i.aw = and i8 %i.av, -33
  %.not.i54.2 = icmp eq i8 %i.aw, 73
  br i1 %.not.i54.2, label %.lr.ph.i52.3, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52.3:                                     ; preds = %.lr.ph.i52.2
  %i.ax = getelementptr inbounds nuw i8, ptr %.035, i64 6
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !41
  %i.az = and i8 %i.ay, -33
  %.not.i54.3 = icmp eq i8 %i.az, 84
  br i1 %.not.i54.3, label %.lr.ph.i52.4, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52.4:                                     ; preds = %.lr.ph.i52.3
  %i.ba = getelementptr inbounds nuw i8, ptr %.035, i64 7
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !41
  %i.bc = and i8 %i.bb, -33
  %.not.i54.4 = icmp eq i8 %i.bc, 89
  br i1 %.not.i54.4, label %bb.j, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57: ; preds = %.lr.ph.i52, %.lr.ph.i52.1, %.lr.ph.i52.2, %.lr.ph.i52.3, %.lr.ph.i52.4, %bb.i
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.i52.4, %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57
  %.sink = phi i64 [ 3, %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57 ], [ 8, %.lr.ph.i52.4 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.035, i64 %.sink
  %i.be = select i1 %i.b, float -inf, float +inf
  store float %i.be, ptr %2, align 4, !tbaa !27
  br label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51

_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51: ; preds = %bb.h, %bb.g, %.lr.ph.i.preheader, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i46.1, %.lr.ph.i46.2, %bb.d, %bb.e, %bb.f, %.lr.ph._crit_edge, %bb.j
  %.sroa.7.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %.lr.ph._crit_edge ], [ 22, %bb.d ], [ 22, %.lr.ph.i.2 ], [ 0, %bb.f ], [ 22, %.lr.ph.i.1 ], [ 22, %.lr.ph.i.preheader ], [ 22, %.lr.ph.i46.2 ], [ 22, %.lr.ph.i46.1 ], [ 0, %bb.g ], [ 0, %bb.h ]
  %.sroa.0.3 = phi ptr [ %i.r, %bb.e ], [ %i.bd, %bb.j ], [ %i.y, %.lr.ph._crit_edge ], [ %0, %bb.d ], [ %0, %.lr.ph.i.2 ], [ %i.r, %bb.f ], [ %0, %.lr.ph.i.1 ], [ %0, %.lr.ph.i.preheader ], [ %0, %.lr.ph.i46.2 ], [ %0, %.lr.ph.i46.1 ], [ %i.r, %bb.g ], [ %i.r, %bb.h ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN14arrow_vendored10fast_float19from_chars_advancedIfcEENS0_19from_chars_result_tIT0_EERNS0_22parsed_number_string_tIS3_EERT_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"struct.arrow_vendored::fast_float::bigint", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.e = load i8, ptr %i.d, align 2, !tbaa !63, !range !55, !noundef !56
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %.pr.pre = load i64, ptr %0, align 8, !tbaa !64 ; 15 uses
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.pre = load i64, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !65 ; 17 uses
  br i1 %i.f, label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i8, ptr %i.g, align 8, !tbaa !66, !range !55, !noundef !56
  %i.i = trunc nuw i8 %i.h to i1                  ; 3 uses
  %i.j = add i64 %.pr.pre, -11
  %or.cond = icmp ult i64 %i.j, -21
  br i1 %or.cond, label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load volatile float, ptr @_ZZN14arrow_vendored10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !27 ; 2 uses
  %i.l = fadd float %i.k, 1.000000e+00
  %i.m = fsub float 1.000000e+00, %i.k
  %i.n = fcmp oeq float %i.l, %i.m
  br i1 %i.n, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %.not31.i = icmp ugt i64 %.pre.pre, 16777216
  br i1 %.not31.i, label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = uitofp nneg i64 %.pre.pre to float       ; 2 uses
  %i.p = icmp slt i64 %.pr.pre, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = sub nsw i64 0, %.pr.pre
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZN14arrow_vendored10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !27
  %i.t = fdiv float %i.o, %i.s
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @_ZN14arrow_vendored10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE, i64 %.pr.pre
  %i.v = load float, ptr %i.u, align 4, !tbaa !27
  %i.w = fmul float %i.v, %i.o
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge32.i = phi float [ %i.w, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  store float %storemerge32.i, ptr %1, align 4, !tbaa !27
  br i1 %i.i, label %bb.i, label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit

bb.i:                                             ; preds = %bb.h
  %i.x = fneg float %storemerge32.i
  store float %i.x, ptr %1, align 4, !tbaa !27
  br label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit

bb.j:                                             ; preds = %bb.c
  %i.y = icmp sgt i64 %.pr.pre, -1
  br i1 %i.y, label %bb.k, label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @_ZN14arrow_vendored10fast_float27binary_format_lookup_tablesIfvE12max_mantissaE, i64 %.pr.pre
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !57
  %.not30.i = icmp ugt i64 %.pre.pre, %i.aa
  br i1 %.not30.i, label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = icmp eq i64 %.pre.pre, 0
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ac = select i1 %i.i, float -0.000000e+00, float 0.000000e+00
  store float %i.ac, ptr %1, align 4, !tbaa !27
  br label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ad = uitofp i64 %.pre.pre to float
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @_ZN14arrow_vendored10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE, i64 %.pr.pre
  %i.af = load float, ptr %i.ae, align 4, !tbaa !27
  %i.ag = fmul float %i.af, %i.ad                 ; 2 uses
  %i.ah = fneg float %i.ag
  %spec.select.i = select i1 %i.i, float %i.ah, float %i.ag
  store float %spec.select.i, ptr %1, align 4, !tbaa !27
  br label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit

_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.thread: ; preds = %bb.a, %bb.j, %bb.k, %bb.d, %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = icmp eq i64 %.pre.pre, 0
  %i.ak = icmp slt i64 %.pr.pre, -64              ; 2 uses
  %or.cond128 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond128, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60, label %bb.o

bb.o:                                             ; preds = %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.thread
  %i.al = icmp sgt i64 %.pr.pre, 38
  br i1 %i.al, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60, label %.noexc65

.noexc65:                                         ; preds = %bb.o
  %i.am = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre.pre, i1 true) ; 2 uses
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = shl i64 %.pre.pre, %i.am                ; 2 uses
  %i.ap = trunc nsw i64 %.pr.pre to i32           ; 2 uses
  %i.aq = shl nsw i32 %i.ap, 1
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [8 x i8], ptr @_ZN14arrow_vendored10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 5472
  %i.au = load i64, ptr %i.at, align 16, !tbaa !57
  %i.av = zext i64 %i.ao to i128
  %i.aw = zext i64 %i.au to i128
  %i.ax = mul nuw i128 %i.aw, %i.av               ; 2 uses
  %i.ay = trunc i128 %i.ax to i64                 ; 2 uses
  %i.az = lshr i128 %i.ax, 64
  %i.ba = trunc nuw i128 %i.az to i64             ; 3 uses
  %i.bb = and i64 %i.ba, 274877906943
  %i.bc = icmp eq i64 %i.bb, 274877906943
  br i1 %i.bc, label %.noexc66, label %_ZN14arrow_vendored10fast_float29compute_product_approximationILi26EEENS0_8value128Elm.exit67

.noexc66:                                         ; preds = %.noexc65
  %i.bd = getelementptr i8, ptr %i.as, i64 5480
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !57
  %3 = tail call i64 @llvm.umulh.i64(i64 %i.ao, i64 %i.be) ; 2 uses
  %i.bf = add i64 %3, %i.ay                       ; 2 uses
  %4 = icmp ugt i64 %3, %i.bf
  %i.bg = zext i1 %4 to i64
  %spec.select.i64 = add nuw i64 %i.bg, %i.ba
  br label %_ZN14arrow_vendored10fast_float29compute_product_approximationILi26EEENS0_8value128Elm.exit67

_ZN14arrow_vendored10fast_float29compute_product_approximationILi26EEENS0_8value128Elm.exit67: ; preds = %.noexc66, %.noexc65
  %.pn146 = phi i64 [ %i.bf, %.noexc66 ], [ %i.ay, %.noexc65 ]
  %spec.select.i64.pn = phi i64 [ %spec.select.i64, %.noexc66 ], [ %i.ba, %.noexc65 ] ; 3 uses
  %i.bh = lshr i64 %spec.select.i64.pn, 63        ; 2 uses
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = or disjoint i64 %i.bh, 38               ; 2 uses
  %i.bk = lshr i64 %spec.select.i64.pn, %i.bj     ; 6 uses
  %i.bl = mul nsw i32 %i.ap, 217706
  %i.bm = ashr i32 %i.bl, 16
  %i.bn = add nsw i32 %i.bm, 190
  %i.bo = sub nsw i32 %i.bn, %i.an
  %i.bp = add nsw i32 %i.bo, %i.bi                ; 3 uses
  %i.bq = icmp slt i32 %i.bp, 1
  br i1 %i.bq, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN14arrow_vendored10fast_float29compute_product_approximationILi26EEENS0_8value128Elm.exit67
  %i.br = sub nsw i32 1, %i.bp                    ; 2 uses
  %i.bs = icmp samesign ugt i32 %i.br, 63
  br i1 %i.bs, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = zext nneg i32 %i.br to i64
  %i.bu = lshr i64 %i.bk, %i.bt                   ; 2 uses
  %i.bv = and i64 %i.bu, 1
  %i.bw = add nuw nsw i64 %i.bv, %i.bu            ; 2 uses
  %i.bx = lshr i64 %i.bw, 1
  %i.by = icmp samesign ugt i64 %i.bw, 16777215
  %i.bz = zext i1 %i.by to i32
  br label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60

bb.r:                                             ; preds = %_ZN14arrow_vendored10fast_float29compute_product_approximationILi26EEENS0_8value128Elm.exit67
  %i.ca = icmp ugt i64 %.pn146, 1
  %i.cb = add nsw i64 %.pr.pre, -11
  %i.cc = icmp ult i64 %i.cb, -28
  %or.cond130 = select i1 %i.ca, i1 true, i1 %i.cc
  br i1 %or.cond130, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = and i64 %i.bk, 3
  %i.ce = icmp eq i64 %i.cd, 1
  %i.cf = shl i64 %i.bk, %i.bj
  %i.cg = icmp eq i64 %i.cf, %spec.select.i64.pn
  %or.cond.i58 = select i1 %i.ce, i1 %i.cg, i1 false
  %i.ch = and i64 %i.bk, 67108860
  %spec.select = select i1 %or.cond.i58, i64 %i.ch, i64 %i.bk
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.0103.0 = phi i64 [ %i.bk, %bb.r ], [ %spec.select, %bb.s ] ; 2 uses
  %i.ci = and i64 %.sroa.0103.0, 1
  %i.cj = add nuw nsw i64 %i.ci, %.sroa.0103.0    ; 2 uses
  %i.ck = lshr i64 %i.cj, 1
  %.not22.i49 = icmp samesign ugt i64 %i.cj, 33554431 ; 2 uses
  %i.cl = zext i1 %.not22.i49 to i32
  %spec.select132 = add nuw nsw i32 %i.bp, %i.cl  ; 2 uses
  %i.cm = and i64 %i.ck, 9223372036846387199
  %.not23.i50 = icmp samesign ugt i32 %spec.select132, 254 ; 2 uses
  %.not = select i1 %.not23.i50, i1 true, i1 %.not22.i49
  %spec.select140 = select i1 %.not, i64 0, i64 %i.cm
  %spec.select141 = select i1 %.not23.i50, i32 255, i32 %spec.select132
  br label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60

_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60: ; preds = %bb.t, %bb.p, %bb.o, %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.thread, %bb.q
  %.sroa.0103.2 = phi i64 [ 0, %bb.p ], [ 0, %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.thread ], [ 0, %bb.o ], [ %i.bx, %bb.q ], [ %spec.select140, %bb.t ] ; 3 uses
  %.sroa.18108.1 = phi i32 [ 0, %bb.p ], [ 0, %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.thread ], [ 255, %bb.o ], [ %i.bz, %bb.q ], [ %spec.select141, %bb.t ] ; 3 uses
  br i1 %i.f, label %bb.u, label %.thread

bb.u:                                             ; preds = %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60
  %i.cn = add i64 %.pre.pre, 1                    ; 3 uses
  %i.co = icmp eq i64 %i.cn, 0
  %or.cond133 = select i1 %i.co, i1 true, i1 %i.ak
  br i1 %or.cond133, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = icmp sgt i64 %.pr.pre, 38
  br i1 %i.cp, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit, label %.noexc70

.noexc70:                                         ; preds = %bb.v
  %i.cq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true) ; 2 uses
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl i64 %i.cn, %i.cq                    ; 2 uses
  %i.ct = trunc nsw i64 %.pr.pre to i32           ; 2 uses
  %i.cu = shl nsw i32 %i.ct, 1
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr [8 x i8], ptr @_ZN14arrow_vendored10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.cv ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 5472
  %i.cy = load i64, ptr %i.cx, align 16, !tbaa !57
  %i.cz = zext i64 %i.cs to i128
  %i.da = zext i64 %i.cy to i128
  %i.db = mul nuw i128 %i.da, %i.cz               ; 2 uses
  %i.dc = trunc i128 %i.db to i64                 ; 2 uses
  %i.dd = lshr i128 %i.db, 64
  %i.de = trunc nuw i128 %i.dd to i64             ; 3 uses
  %i.df = and i64 %i.de, 274877906943
  %i.dg = icmp eq i64 %i.df, 274877906943
  br i1 %i.dg, label %.noexc71, label %_ZN14arrow_vendored10fast_float29compute_product_approximationILi26EEENS0_8value128Elm.exit72

.noexc71:                                         ; preds = %.noexc70
  %i.dh = getelementptr i8, ptr %i.cw, i64 5480
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !57
  %5 = tail call i64 @llvm.umulh.i64(i64 %i.cs, i64 %i.di) ; 2 uses
  %i.dj = add i64 %5, %i.dc                       ; 2 uses
  %6 = icmp ugt i64 %5, %i.dj
  %i.dk = zext i1 %6 to i64
  %spec.select.i69 = add nuw i64 %i.dk, %i.de
  br label %_ZN14arrow_vendored10fast_float29compute_product_approximationILi26EEENS0_8value128Elm.exit72

_ZN14arrow_vendored10fast_float29compute_product_approximationILi26EEENS0_8value128Elm.exit72: ; preds = %.noexc71, %.noexc70
  %.pn148 = phi i64 [ %i.dj, %.noexc71 ], [ %i.dc, %.noexc70 ]
  %spec.select.i69.pn = phi i64 [ %spec.select.i69, %.noexc71 ], [ %i.de, %.noexc70 ] ; 3 uses
  %i.dl = lshr i64 %spec.select.i69.pn, 63        ; 2 uses
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = or disjoint i64 %i.dl, 38               ; 2 uses
  %i.do = lshr i64 %spec.select.i69.pn, %i.dn     ; 6 uses
  %i.dp = mul nsw i32 %i.ct, 217706
  %i.dq = ashr i32 %i.dp, 16
  %i.dr = add nsw i32 %i.dq, 190
  %i.ds = sub nsw i32 %i.dr, %i.cr
  %i.dt = add nsw i32 %i.ds, %i.dm                ; 3 uses
  %i.du = icmp slt i32 %i.dt, 1
  br i1 %i.du, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZN14arrow_vendored10fast_float29compute_product_approximationILi26EEENS0_8value128Elm.exit72
  %i.dv = sub nsw i32 1, %i.dt                    ; 2 uses
  %i.dw = icmp samesign ugt i32 %i.dv, 63
  br i1 %i.dw, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dx = zext nneg i32 %i.dv to i64
  %i.dy = lshr i64 %i.do, %i.dx                   ; 2 uses
  %i.dz = and i64 %i.dy, 1
  %i.ea = add nuw nsw i64 %i.dz, %i.dy            ; 2 uses
  %i.eb = lshr i64 %i.ea, 1
  %i.ec = icmp samesign ugt i64 %i.ea, 16777215
  %i.ed = zext i1 %i.ec to i32
  br label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit

bb.y:                                             ; preds = %_ZN14arrow_vendored10fast_float29compute_product_approximationILi26EEENS0_8value128Elm.exit72
  %i.ee = icmp ugt i64 %.pn148, 1
  %i.ef = add nsw i64 %.pr.pre, -11
  %i.eg = icmp ult i64 %i.ef, -28
  %or.cond135 = select i1 %i.ee, i1 true, i1 %i.eg
  br i1 %or.cond135, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = and i64 %i.do, 3
  %i.ei = icmp eq i64 %i.eh, 1
  %i.ej = shl i64 %i.do, %i.dn
  %i.ek = icmp eq i64 %i.ej, %spec.select.i69.pn
  %or.cond.i = select i1 %i.ei, i1 %i.ek, i1 false
  %i.el = and i64 %i.do, 67108860
  %spec.select136 = select i1 %or.cond.i, i64 %i.el, i64 %i.do
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.096.0 = phi i64 [ %i.do, %bb.y ], [ %spec.select136, %bb.z ] ; 2 uses
  %i.em = and i64 %.sroa.096.0, 1
  %i.en = add nuw nsw i64 %i.em, %.sroa.096.0     ; 2 uses
  %i.eo = lshr i64 %i.en, 1
  %.not22.i = icmp samesign ugt i64 %i.en, 33554431 ; 2 uses
  %i.ep = zext i1 %.not22.i to i32
  %spec.select137 = add nuw nsw i32 %i.dt, %i.ep  ; 2 uses
  %i.eq = and i64 %i.eo, 9223372036846387199
  %.not23.i = icmp samesign ugt i32 %spec.select137, 254
  %spec.select142 = tail call i32 @llvm.umin.i32(i32 %spec.select137, i32 255)
  %.not149 = select i1 %.not23.i, i1 true, i1 %.not22.i
  %spec.select143 = select i1 %.not149, i64 0, i64 %i.eq
  br label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit

_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit: ; preds = %bb.aa, %bb.w, %bb.v, %bb.u, %bb.x
  %.sroa.18.1 = phi i32 [ 0, %bb.w ], [ 0, %bb.u ], [ 255, %bb.v ], [ %i.ed, %bb.x ], [ %spec.select142, %bb.aa ]
  %.sroa.096.2 = phi i64 [ 0, %bb.w ], [ 0, %bb.u ], [ 0, %bb.v ], [ %i.eb, %bb.x ], [ %spec.select143, %bb.aa ]
  %.not.i88 = icmp ne i64 %.sroa.0103.2, %.sroa.096.2
  %i.er = icmp ne i32 %.sroa.18108.1, %.sroa.18.1
  %i.es = select i1 %.not.i88, i1 true, i1 %i.er
  br i1 %i.es, label %.noexc, label %.thread

.noexc:                                           ; preds = %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit
  %i.et = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre.pre, i1 true) ; 2 uses
  %i.eu = trunc nuw nsw i64 %i.et to i32
  %i.ev = shl i64 %.pre.pre, %i.et                ; 2 uses
  %i.ew = trunc i64 %.pr.pre to i32               ; 4 uses
  %i.ex = shl i32 %i.ew, 1                        ; 2 uses
  %i.ey = add i32 %i.ex, 684
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr @_ZN14arrow_vendored10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 16, !tbaa !57
  %i.fc = zext i64 %i.ev to i128
  %i.fd = zext i64 %i.fb to i128
  %i.fe = mul nuw i128 %i.fd, %i.fc               ; 2 uses
  %i.ff = lshr i128 %i.fe, 64
  %i.fg = trunc nuw i128 %i.ff to i64             ; 3 uses
  %i.fh = and i64 %i.fg, 274877906943
  %i.fi = icmp eq i64 %i.fh, 274877906943
  br i1 %i.fi, label %.noexc62, label %bb.ab

.noexc62:                                         ; preds = %.noexc
  %i.fj = trunc i128 %i.fe to i64
  %i.fk = add i32 %i.ex, 685
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr @_ZN14arrow_vendored10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !57
  %7 = tail call i64 @llvm.umulh.i64(i64 %i.ev, i64 %i.fn)
  %i.fo = xor i64 %7, -1
  %8 = icmp ugt i64 %i.fj, %i.fo
  %i.fp = zext i1 %8 to i64
  %spec.select.i61 = add nuw i64 %i.fp, %i.fg
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc, %.noexc62
  %spec.select.i61.pn = phi i64 [ %spec.select.i61, %.noexc62 ], [ %i.fg, %.noexc ] ; 2 uses
  %i.fq = lshr i64 %spec.select.i61.pn, 63        ; 2 uses
  %i.fr = trunc nuw nsw i64 %i.fq to i32
  %i.fs = xor i64 %i.fq, 1
  %i.ft = shl i64 %spec.select.i61.pn, %i.fs      ; 2 uses
  %i.fu = mul nsw i32 %i.ew, 217706
  %i.fv = ashr i32 %i.fu, 16
  %reass.sub.neg = sub nsw i32 %i.fr, %i.eu
  %i.fw = add nsw i32 %reass.sub.neg, %i.fv       ; 3 uses
  %i.fx = add nsw i32 %i.fw, -32618
  %i.fy = icmp slt i32 %i.fw, 32618
  br i1 %i.fy, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.fz = icmp ugt i64 %.pre.pre, 9999
  br i1 %i.fz, label %.lr.ph.i, label %.preheader18.i

.preheader18.i:                                   ; preds = %.lr.ph.i, %bb.ac
  %.011.i.lcssa.i = phi i64 [ %.pre.pre, %bb.ac ], [ %i.gb, %.lr.ph.i ] ; 3 uses
  %.0.i.lcssa.i = phi i32 [ %i.ew, %bb.ac ], [ %i.gc, %.lr.ph.i ] ; 2 uses
  %i.ga = icmp samesign ugt i64 %.011.i.lcssa.i, 99
  br i1 %i.ga, label %.lr.ph24.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.ac, %.lr.ph.i
  %.0.i20.i = phi i32 [ %i.gc, %.lr.ph.i ], [ %i.ew, %bb.ac ]
  %.011.i19.i = phi i64 [ %i.gb, %.lr.ph.i ], [ %.pre.pre, %bb.ac ] ; 2 uses
  %i.gb = udiv i64 %.011.i19.i, 10000             ; 2 uses
  %i.gc = add nsw i32 %.0.i20.i, 4                ; 2 uses
  %i.gd = icmp ugt i64 %.011.i19.i, 99999999
  br i1 %i.gd, label %.lr.ph.i, label %.preheader18.i, !llvm.loop !13

.preheader.i:                                     ; preds = %.lr.ph24.i, %.preheader18.i
  %.112.i.lcssa.i = phi i64 [ %.011.i.lcssa.i, %.preheader18.i ], [ %i.gf, %.lr.ph24.i ] ; 2 uses
  %.1.i.lcssa.i = phi i32 [ %.0.i.lcssa.i, %.preheader18.i ], [ %i.gg, %.lr.ph24.i ] ; 2 uses
  %i.ge = icmp samesign ugt i64 %.112.i.lcssa.i, 9
  br i1 %i.ge, label %.lr.ph29.i, label %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i

.lr.ph24.i:                                       ; preds = %.preheader18.i, %.lr.ph24.i
  %.1.i23.i = phi i32 [ %i.gg, %.lr.ph24.i ], [ %.0.i.lcssa.i, %.preheader18.i ]
  %.112.i22.i = phi i64 [ %i.gf, %.lr.ph24.i ], [ %.011.i.lcssa.i, %.preheader18.i ] ; 2 uses
  %i.gf = udiv i64 %.112.i22.i, 100               ; 2 uses
  %i.gg = add nsw i32 %.1.i23.i, 2                ; 2 uses
  %i.gh = icmp samesign ugt i64 %.112.i22.i, 9999
  br i1 %i.gh, label %.lr.ph24.i, label %.preheader.i, !llvm.loop !14

.lr.ph29.i:                                       ; preds = %.preheader.i, %.lr.ph29.i
  %.2.i28.i = phi i32 [ %i.gj, %.lr.ph29.i ], [ %.1.i.lcssa.i, %.preheader.i ]
  %.213.i27.i = phi i64 [ %i.gi, %.lr.ph29.i ], [ %.112.i.lcssa.i, %.preheader.i ] ; 2 uses
  %i.gi = udiv i64 %.213.i27.i, 10
  %i.gj = add nsw i32 %.2.i28.i, 1                ; 2 uses
  %i.gk = icmp samesign ugt i64 %.213.i27.i, 99
  br i1 %i.gk, label %.lr.ph29.i, label %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i, !llvm.loop !15

_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i: ; preds = %.lr.ph29.i, %.preheader.i
  %.2.i.lcssa.i = phi i32 [ %.1.i.lcssa.i, %.preheader.i ], [ %i.gj, %.lr.ph29.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %2, i8 0, i64 504, i1 false)
  call void @_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %2, ptr noundef nonnull align 8 dereferenceable(68) %0, i64 noundef 114, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  %i.gl = add nsw i32 %.2.i.lcssa.i, 1
  %i.gm = load i64, ptr %i.a, align 8, !tbaa !57
  %i.gn = trunc i64 %i.gm to i32
  %i.go = sub i32 %i.gl, %i.gn                    ; 3 uses
  %i.gp = icmp sgt i32 %i.go, -1
  br i1 %i.gp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i
  %i.gq = call { i64, i32 } @_ZN14arrow_vendored10fast_float19positive_digit_compIfEENS0_17adjusted_mantissaERNS0_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %2, i32 noundef %i.go) #19
  br label %_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit

bb.ae:                                            ; preds = %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i
  %i.gr = add nsw i32 %i.fw, 150
  %i.gs = call { i64, i32 } @_ZN14arrow_vendored10fast_float19negative_digit_compIfEENS0_17adjusted_mantissaERNS0_6bigintES2_i(ptr noundef nonnull align 8 dereferenceable(504) %2, i64 %i.ft, i32 %i.gr, i32 noundef %i.go) #19
  br label %_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit

_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit: ; preds = %bb.ad, %bb.ae
  %.pn.i = phi { i64, i32 } [ %i.gq, %bb.ad ], [ %i.gs, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.fca.0.extract = extractvalue { i64, i32 } %.pn.i, 0
  %.fca.1.extract = extractvalue { i64, i32 } %.pn.i, 1
  %.pre165 = load i64, ptr %i.ai, align 8, !tbaa !65
  br label %.thread

.thread:                                          ; preds = %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit, %bb.ab, %_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit
  %i.gt = phi i64 [ %.pre165, %_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit ], [ %.pre.pre, %bb.ab ], [ %.pre.pre, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit ], [ %.pre.pre, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60 ]
  %.sroa.9.1 = phi i32 [ %.fca.1.extract, %_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit ], [ %i.fx, %bb.ab ], [ %.sroa.18108.1, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit ], [ %.sroa.18108.1, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60 ] ; 3 uses
  %.sroa.089.1 = phi i64 [ %.fca.0.extract, %_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit ], [ %i.ft, %bb.ab ], [ %.sroa.0103.2, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit ], [ %.sroa.0103.2, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60 ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gv = load i8, ptr %i.gu, align 8, !tbaa !66, !range !55, !noundef !56
  %i.gw = zext nneg i8 %i.gv to i32
  %i.gx = trunc i64 %.sroa.089.1 to i32
  %i.gy = shl i32 %.sroa.9.1, 23
  %i.gz = or i32 %i.gy, %i.gx
  %i.ha = shl nuw i32 %i.gw, 31
  %i.hb = or i32 %i.gz, %i.ha
  store i32 %i.hb, ptr %1, align 4, !tbaa !27
  %i.hc = icmp ne i64 %i.gt, 0
  %i.hd = icmp eq i64 %.sroa.089.1, 0
  %or.cond5 = select i1 %i.hc, i1 %i.hd, i1 false
  %i.he = icmp eq i32 %.sroa.9.1, 0
  %or.cond8 = select i1 %or.cond5, i1 %i.he, i1 false
  %i.hf = icmp eq i32 %.sroa.9.1, 255
  %or.cond139 = select i1 %or.cond8, i1 true, i1 %i.hf
  %spec.select144 = select i1 %or.cond139, i32 34, i32 0
  br label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit

_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit: ; preds = %.thread, %bb.n, %bb.m, %bb.i, %bb.h
  %.sroa.247.1 = phi i32 [ 0, %bb.n ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.m ], [ %spec.select144, %.thread ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.c, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.247.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(68) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  store i64 0, ptr %3, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 4 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !113  ; 3 uses
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
  br i1 %i.l, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !103

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
  %i.o = load i8, ptr %.10317, align 1, !tbaa !41
  %.not9.i68 = icmp eq i8 %i.o, 48
  br i1 %.not9.i68, label %bb.c, label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit71

bb.c:                                             ; preds = %.lr.ph319
  %i.p = getelementptr inbounds nuw i8, ptr %.10317, i64 1 ; 2 uses
  %.not8.i67 = icmp eq ptr %i.p, %i.f
  br i1 %.not8.i67, label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit71, label %.lr.ph319, !llvm.loop !104

_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit71: ; preds = %.lr.ph319, %bb.c
  %.10.lcssa = phi ptr [ %scevgep, %bb.c ], [ %.10317, %.lr.ph319 ] ; 2 uses
  %.not348 = icmp eq ptr %.10.lcssa, %i.f
  br i1 %.not348, label %._crit_edge350, label %.preheader294.lr.ph

.preheader294.lr.ph:                              ; preds = %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit71
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 7 uses
  br label %.preheader294

.preheader294:                                    ; preds = %.preheader294.lr.ph, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129
  %.0349 = phi ptr [ %.10.lcssa, %.preheader294.lr.ph ], [ %.2.lcssa, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129 ] ; 5 uses
  %i.r = ptrtoint ptr %.0349 to i64
  %i.s = sub i64 %i.g, %i.r
  %i.t = icmp sgt i64 %i.s, 7
  %.pre.pre = load i64, ptr %3, align 8, !tbaa !57 ; 4 uses
  %i.u = sub i64 %2, %.pre.pre
  %i.v = icmp ugt i64 %i.u, 7
  %or.cond695 = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond695, label %bb.d, label %.critedge

end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored10fast_float6detail12parse_infnanIdcEENS0_19from_chars_result_tIT0_EEPKS4_S7_RT_NS0_12chars_formatE:bb.a
  %or.cond63 = icmp ult i8 %i.ab, 26
  br i1 %or.cond63, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph85
  %i.ac = add i8 %i.z, -58
  %or.cond45 = icmp ult i8 %i.ac, -10
  %i.ad = icmp ne i8 %i.z, 95
  %or.cond62.not72 = and i1 %i.ad, %or.cond45
  %i.ae = getelementptr inbounds nuw i8, ptr %.06784, i64 1 ; 2 uses
  %.not43 = icmp eq ptr %i.ae, %1
  %or.cond70 = select i1 %or.cond62.not72, i1 true, i1 %.not43
  br i1 %or.cond70, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51, label %.lr.ph.backedge

bb.h:                                             ; preds = %.lr.ph85
  %.old = getelementptr inbounds nuw i8, ptr %.06784, i64 1 ; 2 uses
  %.not43.old = icmp eq ptr %.old, %1
  br i1 %.not43.old, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.h, %bb.g
  %.067.be = phi ptr [ %.old, %bb.h ], [ %i.ae, %bb.g ] ; 3 uses
  %i.af = load i8, ptr %.067.be, align 1, !tbaa !41 ; 2 uses
  %i.ag = icmp eq i8 %i.af, 41
  br i1 %i.ag, label %.lr.ph._crit_edge, label %.lr.ph85, !llvm.loop !137

.lr.ph.i46.1:                                     ; preds = %.lr.ph.i.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %.035, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !41
  %i.aj = and i8 %i.ai, -33
  %.not.i48.1 = icmp eq i8 %i.aj, 78
  br i1 %.not.i48.1, label %.lr.ph.i46.2, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51

.lr.ph.i46.2:                                     ; preds = %.lr.ph.i46.1
  %i.ak = getelementptr inbounds nuw i8, ptr %.035, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !41
  %i.am = and i8 %i.al, -33
  %.not.i48.2 = icmp eq i8 %i.am, 70
  br i1 %.not.i48.2, label %bb.i, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51

bb.i:                                             ; preds = %.lr.ph.i46.2
  %i.an = icmp samesign ugt i64 %i.h, 7
  br i1 %i.an, label %.lr.ph.i52, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52:                                       ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.035, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !41
  %i.aq = and i8 %i.ap, -33
  %.not.i54 = icmp eq i8 %i.aq, 73
  br i1 %.not.i54, label %.lr.ph.i52.1, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52.1:                                     ; preds = %.lr.ph.i52
  %i.ar = getelementptr inbounds nuw i8, ptr %.035, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !41
  %i.at = and i8 %i.as, -33
  %.not.i54.1 = icmp eq i8 %i.at, 78
  br i1 %.not.i54.1, label %.lr.ph.i52.2, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52.2:                                     ; preds = %.lr.ph.i52.1
  %i.au = getelementptr inbounds nuw i8, ptr %.035, i64 5
  %i.av = load i8, ptr %i.au, align 1, !tbaa !41
  %i.aw = and i8 %i.av, -33
  %.not.i54.2 = icmp eq i8 %i.aw, 73
  br i1 %.not.i54.2, label %.lr.ph.i52.3, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52.3:                                     ; preds = %.lr.ph.i52.2
  %i.ax = getelementptr inbounds nuw i8, ptr %.035, i64 6
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !41
  %i.az = and i8 %i.ay, -33
  %.not.i54.3 = icmp eq i8 %i.az, 84
  br i1 %.not.i54.3, label %.lr.ph.i52.4, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

.lr.ph.i52.4:                                     ; preds = %.lr.ph.i52.3
  %i.ba = getelementptr inbounds nuw i8, ptr %.035, i64 7
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !41
  %i.bc = and i8 %i.bb, -33
  %.not.i54.4 = icmp eq i8 %i.bc, 89
  br i1 %.not.i54.4, label %bb.j, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57

_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57: ; preds = %.lr.ph.i52, %.lr.ph.i52.1, %.lr.ph.i52.2, %.lr.ph.i52.3, %.lr.ph.i52.4, %bb.i
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.i52.4, %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57
  %.sink = phi i64 [ 3, %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit57 ], [ 8, %.lr.ph.i52.4 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.035, i64 %.sink
  %i.be = select i1 %i.b, double -inf, double +inf
  store double %i.be, ptr %2, align 8, !tbaa !73
  br label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51

_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51: ; preds = %bb.h, %bb.g, %.lr.ph.i.preheader, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i46.1, %.lr.ph.i46.2, %bb.d, %bb.e, %bb.f, %.lr.ph._crit_edge, %bb.j
  %.sroa.7.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %.lr.ph._crit_edge ], [ 22, %bb.d ], [ 22, %.lr.ph.i.2 ], [ 0, %bb.f ], [ 22, %.lr.ph.i.1 ], [ 22, %.lr.ph.i.preheader ], [ 22, %.lr.ph.i46.2 ], [ 22, %.lr.ph.i46.1 ], [ 0, %bb.g ], [ 0, %bb.h ]
  %.sroa.0.3 = phi ptr [ %i.r, %bb.e ], [ %i.bd, %bb.j ], [ %i.y, %.lr.ph._crit_edge ], [ %0, %bb.d ], [ %0, %.lr.ph.i.2 ], [ %i.r, %bb.f ], [ %0, %.lr.ph.i.1 ], [ %0, %.lr.ph.i.preheader ], [ %0, %.lr.ph.i46.2 ], [ %0, %.lr.ph.i46.1 ], [ %i.r, %bb.g ], [ %i.r, %bb.h ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN14arrow_vendored10fast_float19from_chars_advancedIdcEENS0_19from_chars_result_tIT0_EERNS0_22parsed_number_string_tIS3_EERT_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"struct.arrow_vendored::fast_float::bigint", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.e = load i8, ptr %i.d, align 2, !tbaa !63, !range !55, !noundef !56
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %.pr.pre = load i64, ptr %0, align 8, !tbaa !64 ; 15 uses
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.pre = load i64, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !65 ; 17 uses
  br i1 %i.f, label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i8, ptr %i.g, align 8, !tbaa !66, !range !55, !noundef !56
  %i.i = trunc nuw i8 %i.h to i1                  ; 3 uses
  %i.j = add i64 %.pr.pre, -23
  %or.cond = icmp ult i64 %i.j, -45
  br i1 %or.cond, label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load volatile float, ptr @_ZZN14arrow_vendored10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !27 ; 2 uses
  %i.l = fadd float %i.k, 1.000000e+00
  %i.m = fsub float 1.000000e+00, %i.k
  %i.n = fcmp oeq float %i.l, %i.m
  br i1 %i.n, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %.not31.i = icmp ugt i64 %.pre.pre, 9007199254740992
  br i1 %.not31.i, label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = uitofp nneg i64 %.pre.pre to double      ; 2 uses
  %i.p = icmp slt i64 %.pr.pre, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = sub nsw i64 0, %.pr.pre
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @_ZN14arrow_vendored10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !tbaa !73
  %i.t = fdiv double %i.o, %i.s
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN14arrow_vendored10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %.pr.pre
  %i.v = load double, ptr %i.u, align 8, !tbaa !73
  %i.w = fmul double %i.v, %i.o
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge32.i = phi double [ %i.w, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  store double %storemerge32.i, ptr %1, align 8, !tbaa !73
  br i1 %i.i, label %bb.i, label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit

bb.i:                                             ; preds = %bb.h
  %i.x = fneg double %storemerge32.i
  store double %i.x, ptr %1, align 8, !tbaa !73
  br label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit

bb.j:                                             ; preds = %bb.c
  %i.y = icmp sgt i64 %.pr.pre, -1
  br i1 %i.y, label %bb.k, label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @_ZN14arrow_vendored10fast_float27binary_format_lookup_tablesIdvE12max_mantissaE, i64 %.pr.pre
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !57
  %.not30.i = icmp ugt i64 %.pre.pre, %i.aa
  br i1 %.not30.i, label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = icmp eq i64 %.pre.pre, 0
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ac = select i1 %i.i, double -0.000000e+00, double 0.000000e+00
  store double %i.ac, ptr %1, align 8, !tbaa !73
  br label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ad = uitofp i64 %.pre.pre to double
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @_ZN14arrow_vendored10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %.pr.pre
  %i.af = load double, ptr %i.ae, align 8, !tbaa !73
  %i.ag = fmul double %i.af, %i.ad                ; 2 uses
  %i.ah = fneg double %i.ag
  %spec.select.i = select i1 %i.i, double %i.ah, double %i.ag
  store double %spec.select.i, ptr %1, align 8, !tbaa !73
  br label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit

_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.thread: ; preds = %bb.a, %bb.j, %bb.k, %bb.d, %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = icmp eq i64 %.pre.pre, 0
  %i.ak = icmp slt i64 %.pr.pre, -342             ; 2 uses
  %or.cond119 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond119, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60, label %bb.o

bb.o:                                             ; preds = %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.thread
  %i.al = icmp sgt i64 %.pr.pre, 308
  br i1 %i.al, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre.pre, i1 true) ; 2 uses
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = shl i64 %.pre.pre, %i.am                ; 2 uses
  %i.ap = trunc nsw i64 %.pr.pre to i32           ; 2 uses
  %i.aq = shl nsw i32 %i.ap, 1
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [8 x i8], ptr @_ZN14arrow_vendored10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 5472
  %i.au = load i64, ptr %i.at, align 16, !tbaa !57
  %i.av = zext i64 %i.ao to i128
  %i.aw = zext i64 %i.au to i128
  %i.ax = mul nuw i128 %i.aw, %i.av               ; 2 uses
  %i.ay = trunc i128 %i.ax to i64                 ; 2 uses
  %i.az = lshr i128 %i.ax, 64
  %i.ba = trunc nuw i128 %i.az to i64             ; 3 uses
  %i.bb = and i64 %i.ba, 511
  %i.bc = icmp eq i64 %i.bb, 511
  br i1 %i.bc, label %bb.q, label %_ZN14arrow_vendored10fast_float29compute_product_approximationILi55EEENS0_8value128Elm.exit68

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr i8, ptr %i.as, i64 5480
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !57
  %3 = tail call i64 @llvm.umulh.i64(i64 %i.ao, i64 %i.be) ; 2 uses
  %i.bf = add i64 %3, %i.ay                       ; 2 uses
  %4 = icmp ugt i64 %3, %i.bf
  %i.bg = zext i1 %4 to i64
  %spec.select.i67 = add nuw i64 %i.bg, %i.ba
  br label %_ZN14arrow_vendored10fast_float29compute_product_approximationILi55EEENS0_8value128Elm.exit68

_ZN14arrow_vendored10fast_float29compute_product_approximationILi55EEENS0_8value128Elm.exit68: ; preds = %bb.q, %bb.p
  %.pn137 = phi i64 [ %i.bf, %bb.q ], [ %i.ay, %bb.p ]
  %spec.select.i67.pn = phi i64 [ %spec.select.i67, %bb.q ], [ %i.ba, %bb.p ] ; 3 uses
  %i.bh = lshr i64 %spec.select.i67.pn, 63        ; 2 uses
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = add nuw nsw i64 %i.bh, 9                ; 2 uses
  %i.bk = lshr i64 %spec.select.i67.pn, %i.bj     ; 6 uses
  %i.bl = mul nsw i32 %i.ap, 217706
  %i.bm = ashr i32 %i.bl, 16
  %i.bn = add nsw i32 %i.bm, 1086
  %i.bo = sub nsw i32 %i.bn, %i.an
  %i.bp = add nsw i32 %i.bo, %i.bi                ; 3 uses
  %i.bq = icmp slt i32 %i.bp, 1
  br i1 %i.bq, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZN14arrow_vendored10fast_float29compute_product_approximationILi55EEENS0_8value128Elm.exit68
  %i.br = sub nsw i32 1, %i.bp                    ; 2 uses
  %i.bs = icmp samesign ugt i32 %i.br, 63
  br i1 %i.bs, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = zext nneg i32 %i.br to i64
  %i.bu = lshr i64 %i.bk, %i.bt                   ; 2 uses
  %i.bv = and i64 %i.bu, 1
  %i.bw = add nuw nsw i64 %i.bv, %i.bu            ; 2 uses
  %i.bx = lshr i64 %i.bw, 1
  %i.by = icmp samesign ugt i64 %i.bw, 9007199254740991
  %i.bz = zext i1 %i.by to i32
  br label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60

bb.t:                                             ; preds = %_ZN14arrow_vendored10fast_float29compute_product_approximationILi55EEENS0_8value128Elm.exit68
  %i.ca = icmp ugt i64 %.pn137, 1
  %i.cb = add nsw i64 %.pr.pre, -24
  %i.cc = icmp ult i64 %i.cb, -28
  %or.cond121 = select i1 %i.ca, i1 true, i1 %i.cc
  br i1 %or.cond121, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = and i64 %i.bk, 3
  %i.ce = icmp eq i64 %i.cd, 1
  %i.cf = shl i64 %i.bk, %i.bj
  %i.cg = icmp eq i64 %i.cf, %spec.select.i67.pn
  %or.cond.i58 = select i1 %i.ce, i1 %i.cg, i1 false
  %i.ch = and i64 %i.bk, 72057594037927932
  %spec.select = select i1 %or.cond.i58, i64 %i.ch, i64 %i.bk
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.094.0 = phi i64 [ %i.bk, %bb.t ], [ %spec.select, %bb.u ] ; 2 uses
  %i.ci = and i64 %.sroa.094.0, 1
  %i.cj = add nuw nsw i64 %i.ci, %.sroa.094.0     ; 2 uses
  %i.ck = lshr i64 %i.cj, 1
  %.not22.i49 = icmp samesign ugt i64 %i.cj, 18014398509481983 ; 2 uses
  %i.cl = zext i1 %.not22.i49 to i32
  %spec.select123 = add nuw nsw i32 %i.bp, %i.cl  ; 2 uses
  %i.cm = and i64 %i.ck, 9218868437227405311
  %.not23.i50 = icmp samesign ugt i32 %spec.select123, 2046 ; 2 uses
  %.not = select i1 %.not23.i50, i1 true, i1 %.not22.i49
  %spec.select131 = select i1 %.not, i64 0, i64 %i.cm
  %spec.select132 = select i1 %.not23.i50, i32 2047, i32 %spec.select123
  br label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60

_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60: ; preds = %bb.v, %bb.r, %bb.o, %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.thread, %bb.s
  %.sroa.094.2 = phi i64 [ 0, %bb.r ], [ 0, %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.thread ], [ 0, %bb.o ], [ %i.bx, %bb.s ], [ %spec.select131, %bb.v ] ; 3 uses
  %.sroa.1899.1 = phi i32 [ 0, %bb.r ], [ 0, %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.thread ], [ 2047, %bb.o ], [ %i.bz, %bb.s ], [ %spec.select132, %bb.v ] ; 3 uses
  br i1 %i.f, label %bb.w, label %.thread

bb.w:                                             ; preds = %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60
  %i.cn = add i64 %.pre.pre, 1                    ; 3 uses
  %i.co = icmp eq i64 %i.cn, 0
  %or.cond124 = select i1 %i.co, i1 true, i1 %i.ak
  br i1 %or.cond124, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = icmp sgt i64 %.pr.pre, 308
  br i1 %i.cp, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true) ; 2 uses
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl i64 %i.cn, %i.cq                    ; 2 uses
  %i.ct = trunc nsw i64 %.pr.pre to i32           ; 2 uses
  %i.cu = shl nsw i32 %i.ct, 1
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr [8 x i8], ptr @_ZN14arrow_vendored10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.cv ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 5472
  %i.cy = load i64, ptr %i.cx, align 16, !tbaa !57
  %i.cz = zext i64 %i.cs to i128
  %i.da = zext i64 %i.cy to i128
  %i.db = mul nuw i128 %i.da, %i.cz               ; 2 uses
  %i.dc = trunc i128 %i.db to i64                 ; 2 uses
  %i.dd = lshr i128 %i.db, 64
  %i.de = trunc nuw i128 %i.dd to i64             ; 3 uses
  %i.df = and i64 %i.de, 511
  %i.dg = icmp eq i64 %i.df, 511
  br i1 %i.dg, label %bb.z, label %_ZN14arrow_vendored10fast_float29compute_product_approximationILi55EEENS0_8value128Elm.exit75

bb.z:                                             ; preds = %bb.y
  %i.dh = getelementptr i8, ptr %i.cw, i64 5480
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !57
  %5 = tail call i64 @llvm.umulh.i64(i64 %i.cs, i64 %i.di) ; 2 uses
  %i.dj = add i64 %5, %i.dc                       ; 2 uses
  %6 = icmp ugt i64 %5, %i.dj
  %i.dk = zext i1 %6 to i64
  %spec.select.i74 = add nuw i64 %i.dk, %i.de
  br label %_ZN14arrow_vendored10fast_float29compute_product_approximationILi55EEENS0_8value128Elm.exit75

_ZN14arrow_vendored10fast_float29compute_product_approximationILi55EEENS0_8value128Elm.exit75: ; preds = %bb.z, %bb.y
  %.pn139 = phi i64 [ %i.dj, %bb.z ], [ %i.dc, %bb.y ]
  %spec.select.i74.pn = phi i64 [ %spec.select.i74, %bb.z ], [ %i.de, %bb.y ] ; 3 uses
  %i.dl = lshr i64 %spec.select.i74.pn, 63        ; 2 uses
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = add nuw nsw i64 %i.dl, 9                ; 2 uses
  %i.do = lshr i64 %spec.select.i74.pn, %i.dn     ; 6 uses
  %i.dp = mul nsw i32 %i.ct, 217706
  %i.dq = ashr i32 %i.dp, 16
  %i.dr = add nsw i32 %i.dq, 1086
  %i.ds = sub nsw i32 %i.dr, %i.cr
  %i.dt = add nsw i32 %i.ds, %i.dm                ; 3 uses
  %i.du = icmp slt i32 %i.dt, 1
  br i1 %i.du, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %_ZN14arrow_vendored10fast_float29compute_product_approximationILi55EEENS0_8value128Elm.exit75
  %i.dv = sub nsw i32 1, %i.dt                    ; 2 uses
  %i.dw = icmp samesign ugt i32 %i.dv, 63
  br i1 %i.dw, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dx = zext nneg i32 %i.dv to i64
  %i.dy = lshr i64 %i.do, %i.dx                   ; 2 uses
  %i.dz = and i64 %i.dy, 1
  %i.ea = add nuw nsw i64 %i.dz, %i.dy            ; 2 uses
  %i.eb = lshr i64 %i.ea, 1
  %i.ec = icmp samesign ugt i64 %i.ea, 9007199254740991
  %i.ed = zext i1 %i.ec to i32
  br label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit

bb.ac:                                            ; preds = %_ZN14arrow_vendored10fast_float29compute_product_approximationILi55EEENS0_8value128Elm.exit75
  %i.ee = icmp ugt i64 %.pn139, 1
  %i.ef = add nsw i64 %.pr.pre, -24
  %i.eg = icmp ult i64 %i.ef, -28
  %or.cond126 = select i1 %i.ee, i1 true, i1 %i.eg
  br i1 %or.cond126, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = and i64 %i.do, 3
  %i.ei = icmp eq i64 %i.eh, 1
  %i.ej = shl i64 %i.do, %i.dn
  %i.ek = icmp eq i64 %i.ej, %spec.select.i74.pn
  %or.cond.i = select i1 %i.ei, i1 %i.ek, i1 false
  %i.el = and i64 %i.do, 72057594037927932
  %spec.select127 = select i1 %or.cond.i, i64 %i.el, i64 %i.do
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.087.0 = phi i64 [ %i.do, %bb.ac ], [ %spec.select127, %bb.ad ] ; 2 uses
  %i.em = and i64 %.sroa.087.0, 1
  %i.en = add nuw nsw i64 %i.em, %.sroa.087.0     ; 2 uses
  %i.eo = lshr i64 %i.en, 1
  %.not22.i = icmp samesign ugt i64 %i.en, 18014398509481983 ; 2 uses
  %i.ep = zext i1 %.not22.i to i32
  %spec.select128 = add nuw nsw i32 %i.dt, %i.ep  ; 2 uses
  %i.eq = and i64 %i.eo, 9218868437227405311
  %.not23.i = icmp samesign ugt i32 %spec.select128, 2046
  %spec.select133 = tail call i32 @llvm.umin.i32(i32 %spec.select128, i32 2047)
  %.not140 = select i1 %.not23.i, i1 true, i1 %.not22.i
  %spec.select134 = select i1 %.not140, i64 0, i64 %i.eq
  br label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit

_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit: ; preds = %bb.ae, %bb.aa, %bb.x, %bb.w, %bb.ab
  %.sroa.18.1 = phi i32 [ 0, %bb.aa ], [ 0, %bb.w ], [ 2047, %bb.x ], [ %i.ed, %bb.ab ], [ %spec.select133, %bb.ae ]
  %.sroa.087.2 = phi i64 [ 0, %bb.aa ], [ 0, %bb.w ], [ 0, %bb.x ], [ %i.eb, %bb.ab ], [ %spec.select134, %bb.ae ]
  %.not.i79 = icmp ne i64 %.sroa.094.2, %.sroa.087.2
  %i.er = icmp ne i32 %.sroa.1899.1, %.sroa.18.1
  %i.es = select i1 %.not.i79, i1 true, i1 %i.er
  br i1 %i.es, label %bb.af, label %.thread

bb.af:                                            ; preds = %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit
  %i.et = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre.pre, i1 true) ; 2 uses
  %i.eu = trunc nuw nsw i64 %i.et to i32
  %i.ev = shl i64 %.pre.pre, %i.et                ; 2 uses
  %i.ew = trunc i64 %.pr.pre to i32               ; 4 uses
  %i.ex = shl i32 %i.ew, 1                        ; 2 uses
  %i.ey = add i32 %i.ex, 684
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr @_ZN14arrow_vendored10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 16, !tbaa !57
  %i.fc = zext i64 %i.ev to i128
  %i.fd = zext i64 %i.fb to i128
  %i.fe = mul nuw i128 %i.fd, %i.fc               ; 2 uses
  %i.ff = lshr i128 %i.fe, 64
  %i.fg = trunc nuw i128 %i.ff to i64             ; 3 uses
  %i.fh = and i64 %i.fg, 511
  %i.fi = icmp eq i64 %i.fh, 511
  br i1 %i.fi, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fj = trunc i128 %i.fe to i64
  %i.fk = add i32 %i.ex, 685
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr @_ZN14arrow_vendored10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !57
  %7 = tail call i64 @llvm.umulh.i64(i64 %i.ev, i64 %i.fn)
  %i.fo = xor i64 %7, -1
  %8 = icmp ugt i64 %i.fj, %i.fo
  %i.fp = zext i1 %8 to i64
  %spec.select.i61 = add nuw i64 %i.fp, %i.fg
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %spec.select.i61.pn = phi i64 [ %spec.select.i61, %bb.ag ], [ %i.fg, %bb.af ] ; 2 uses
  %i.fq = lshr i64 %spec.select.i61.pn, 63        ; 2 uses
  %i.fr = trunc nuw nsw i64 %i.fq to i32
  %i.fs = xor i64 %i.fq, 1
  %i.ft = shl i64 %spec.select.i61.pn, %i.fs      ; 2 uses
  %i.fu = mul nsw i32 %i.ew, 217706
  %i.fv = ashr i32 %i.fu, 16
  %reass.sub.neg = sub nsw i32 %i.fr, %i.eu
  %i.fw = add nsw i32 %reass.sub.neg, %i.fv       ; 3 uses
  %i.fx = add nsw i32 %i.fw, -31693
  %i.fy = icmp slt i32 %i.fw, 31693
  br i1 %i.fy, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.fz = icmp ugt i64 %.pre.pre, 9999
  br i1 %i.fz, label %.lr.ph.i, label %.preheader18.i

.preheader18.i:                                   ; preds = %.lr.ph.i, %bb.ai
  %.011.i.lcssa.i = phi i64 [ %.pre.pre, %bb.ai ], [ %i.gb, %.lr.ph.i ] ; 3 uses
  %.0.i.lcssa.i = phi i32 [ %i.ew, %bb.ai ], [ %i.gc, %.lr.ph.i ] ; 2 uses
  %i.ga = icmp samesign ugt i64 %.011.i.lcssa.i, 99
  br i1 %i.ga, label %.lr.ph24.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.ai, %.lr.ph.i
  %.0.i20.i = phi i32 [ %i.gc, %.lr.ph.i ], [ %i.ew, %bb.ai ]
  %.011.i19.i = phi i64 [ %i.gb, %.lr.ph.i ], [ %.pre.pre, %bb.ai ] ; 2 uses
  %i.gb = udiv i64 %.011.i19.i, 10000             ; 2 uses
  %i.gc = add nsw i32 %.0.i20.i, 4                ; 2 uses
  %i.gd = icmp ugt i64 %.011.i19.i, 99999999
  br i1 %i.gd, label %.lr.ph.i, label %.preheader18.i, !llvm.loop !13

.preheader.i:                                     ; preds = %.lr.ph24.i, %.preheader18.i
  %.112.i.lcssa.i = phi i64 [ %.011.i.lcssa.i, %.preheader18.i ], [ %i.gf, %.lr.ph24.i ] ; 2 uses
  %.1.i.lcssa.i = phi i32 [ %.0.i.lcssa.i, %.preheader18.i ], [ %i.gg, %.lr.ph24.i ] ; 2 uses
  %i.ge = icmp samesign ugt i64 %.112.i.lcssa.i, 9
  br i1 %i.ge, label %.lr.ph29.i, label %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i

.lr.ph24.i:                                       ; preds = %.preheader18.i, %.lr.ph24.i
  %.1.i23.i = phi i32 [ %i.gg, %.lr.ph24.i ], [ %.0.i.lcssa.i, %.preheader18.i ]
  %.112.i22.i = phi i64 [ %i.gf, %.lr.ph24.i ], [ %.011.i.lcssa.i, %.preheader18.i ] ; 2 uses
  %i.gf = udiv i64 %.112.i22.i, 100               ; 2 uses
  %i.gg = add nsw i32 %.1.i23.i, 2                ; 2 uses
  %i.gh = icmp samesign ugt i64 %.112.i22.i, 9999
  br i1 %i.gh, label %.lr.ph24.i, label %.preheader.i, !llvm.loop !14

.lr.ph29.i:                                       ; preds = %.preheader.i, %.lr.ph29.i
  %.2.i28.i = phi i32 [ %i.gj, %.lr.ph29.i ], [ %.1.i.lcssa.i, %.preheader.i ]
  %.213.i27.i = phi i64 [ %i.gi, %.lr.ph29.i ], [ %.112.i.lcssa.i, %.preheader.i ] ; 2 uses
  %i.gi = udiv i64 %.213.i27.i, 10
  %i.gj = add nsw i32 %.2.i28.i, 1                ; 2 uses
  %i.gk = icmp samesign ugt i64 %.213.i27.i, 99
  br i1 %i.gk, label %.lr.ph29.i, label %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i, !llvm.loop !15

_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i: ; preds = %.lr.ph29.i, %.preheader.i
  %.2.i.lcssa.i = phi i32 [ %.1.i.lcssa.i, %.preheader.i ], [ %i.gj, %.lr.ph29.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %2, i8 0, i64 504, i1 false)
  call void @_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %2, ptr noundef nonnull align 8 dereferenceable(68) %0, i64 noundef 769, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  %i.gl = add nsw i32 %.2.i.lcssa.i, 1
  %i.gm = load i64, ptr %i.a, align 8, !tbaa !57
  %i.gn = trunc i64 %i.gm to i32
  %i.go = sub i32 %i.gl, %i.gn                    ; 3 uses
  %i.gp = icmp sgt i32 %i.go, -1
  br i1 %i.gp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i
  %i.gq = call { i64, i32 } @_ZN14arrow_vendored10fast_float19positive_digit_compIdEENS0_17adjusted_mantissaERNS0_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %2, i32 noundef %i.go) #19
  br label %_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit

bb.ak:                                            ; preds = %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i
  %i.gr = add nsw i32 %i.fw, 1075
  %i.gs = call { i64, i32 } @_ZN14arrow_vendored10fast_float19negative_digit_compIdEENS0_17adjusted_mantissaERNS0_6bigintES2_i(ptr noundef nonnull align 8 dereferenceable(504) %2, i64 %i.ft, i32 %i.gr, i32 noundef %i.go) #19
  br label %_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit

_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit: ; preds = %bb.aj, %bb.ak
  %.pn.i = phi { i64, i32 } [ %i.gq, %bb.aj ], [ %i.gs, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.fca.0.extract = extractvalue { i64, i32 } %.pn.i, 0
  %.fca.1.extract = extractvalue { i64, i32 } %.pn.i, 1
  %.pre156 = load i64, ptr %i.ai, align 8, !tbaa !65
  br label %.thread

.thread:                                          ; preds = %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit, %bb.ah, %_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit
  %i.gt = phi i64 [ %.pre156, %_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit ], [ %.pre.pre, %bb.ah ], [ %.pre.pre, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit ], [ %.pre.pre, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60 ]
  %.sroa.9.1 = phi i32 [ %.fca.1.extract, %_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit ], [ %i.fx, %bb.ah ], [ %.sroa.1899.1, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit ], [ %.sroa.1899.1, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60 ] ; 3 uses
  %.sroa.080.1 = phi i64 [ %.fca.0.extract, %_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit ], [ %i.ft, %bb.ah ], [ %.sroa.094.2, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit ], [ %.sroa.094.2, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60 ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gv = load i8, ptr %i.gu, align 8, !tbaa !66, !range !55, !noundef !56
  %i.gw = zext nneg i8 %i.gv to i64
  %i.gx = zext i32 %.sroa.9.1 to i64
  %i.gy = shl i64 %i.gx, 52
  %i.gz = shl nuw i64 %i.gw, 63
  %i.ha = or i64 %i.gy, %i.gz
  %i.hb = or i64 %i.ha, %.sroa.080.1
  store i64 %i.hb, ptr %1, align 8, !tbaa !73
  %i.hc = icmp ne i64 %i.gt, 0
  %i.hd = icmp eq i64 %.sroa.080.1, 0
  %or.cond5 = select i1 %i.hc, i1 %i.hd, i1 false
  %i.he = icmp eq i32 %.sroa.9.1, 0
  %or.cond8 = select i1 %or.cond5, i1 %i.he, i1 false
  %i.hf = icmp eq i32 %.sroa.9.1, 2047
  %or.cond130 = select i1 %or.cond8, i1 true, i1 %i.hf
  %spec.select135 = select i1 %or.cond130, i32 34, i32 0
  br label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit

_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit: ; preds = %.thread, %bb.n, %bb.m, %bb.i, %bb.h
  %.sroa.247.1 = phi i32 [ 0, %bb.n ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.m ], [ %spec.select135, %.thread ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.c, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.247.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr { i64, i32 } @_ZN14arrow_vendored10fast_float19positive_digit_compIdEENS0_17adjusted_mantissaERNS0_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN14arrow_vendored10fast_float6bigint4pow5Ej(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) #19
  br i1 %i.a, label %bb.b, label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = and i64 %i.b, 63                         ; 4 uses
  %i.d = lshr i64 %i.b, 6                         ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i64 64, %i.c                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !68   ; 5 uses
  %i.h = zext i16 %i.g to i64                     ; 4 uses
  %.not25.i.i.i.i = icmp eq i16 %i.g, 0
  br i1 %.not25.i.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %min.iters.check = icmp ult i16 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.h, 65532                    ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %broadcast.splat47 = shufflevector <2 x i64> %broadcast.splatinsert46, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <2 x i64> [ <i64 poison, i64 0>, %vector.ph ], [ %wide.load48, %vector.body ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !tbaa !57 ; 3 uses
  %wide.load48 = load <2 x i64>, ptr %i.j, align 8, !tbaa !57 ; 4 uses
  %i.k = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.l = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load48, <2 x i32> <i32 1, i32 2>
  %i.m = shl <2 x i64> %wide.load, %broadcast.splat
  %i.n = shl <2 x i64> %wide.load48, %broadcast.splat
  %i.o = lshr <2 x i64> %i.k, %broadcast.splat47
  %i.p = lshr <2 x i64> %i.l, %broadcast.splat47
  %i.q = or disjoint <2 x i64> %i.m, %i.o
  %i.r = or disjoint <2 x i64> %i.n, %i.p
  store <2 x i64> %i.q, ptr %i.i, align 8, !tbaa !57
  store <2 x i64> %i.r, ptr %i.j, align 8, !tbaa !57
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load48, i64 1 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader49

.lr.ph.i.i.i.i.preheader49:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.01622.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.01721.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %vector.recur.extract, %middle.block ]
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.lcssa45 = phi i64 [ %vector.recur.extract, %middle.block ], [ %i.v, %.lr.ph.i.i.i.i ]
  %i.t = lshr i64 %.lcssa45, %i.e                 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, label %bb.d

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader49, %.lr.ph.i.i.i.i
  %.01622.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i ], [ %.01622.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader49 ] ; 2 uses
  %.01721.i.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i.i ], [ %.01721.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader49 ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01622.i.i.i.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !57   ; 3 uses
  %i.w = shl i64 %i.v, %i.c
  %i.x = lshr i64 %.01721.i.i.i.i, %i.e
  %i.y = or disjoint i64 %i.w, %i.x
  store i64 %i.y, ptr %i.u, align 8, !tbaa !57
  %i.z = add nuw nsw i64 %.01622.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.z, %i.h
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_:bb.a

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11:  ; preds = %bb.d
  %i.t = icmp ugt i8 %i.j, 23
  %i.u = icmp ugt i8 %i.s, 59
  %or.cond8 = select i1 %i.t, i1 true, i1 %i.u, !prof !79
  br i1 %or.cond8, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, label %bb.e, !prof !80

bb.e:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11
  %i.v = zext nneg i8 %i.j to i64
  %i.w = zext nneg i8 %i.s to i64
  %i.x = mul nuw nsw i64 %i.v, 60
  %i.y = add nuw nsw i64 %i.x, %i.w
  %i.z = mul nuw nsw i64 %i.y, 60
  store i64 %i.z, ptr %1, align 8, !tbaa !57
  br label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread: ; preds = %bb.d, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, %bb.c, %bb.b, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11, %bb.a, %bb.e
  %.0 = phi i1 [ true, %bb.e ], [ false, %bb.a ], [ false, %bb.c ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11 ], [ false, %bb.b ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !41
  %i.c = add i8 %i.b, -48                         ; 2 uses
  %i.d = icmp ult i8 %i.c, 10
  %i.e = zext i8 %i.c to i32                      ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %.not137 = icmp eq i64 %1, 1
  br i1 %.not137, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !41
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %i.i = mul nuw nsw i32 %i.e, 10
  %i.j = icmp ult i8 %i.h, 10
  %i.k = zext i8 %i.h to i32
  %i.l = add nuw nsw i32 %i.i, %i.k               ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  %.not138 = icmp eq i64 %1, 2
  br i1 %.not138, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.f, align 1, !tbaa !41
  %i.o = add i8 %i.n, -48                         ; 2 uses
  %i.p = mul nuw nsw i32 %i.l, 10
  %i.q = icmp ult i8 %i.o, 10
  %i.r = zext i8 %i.o to i32
  %i.s = add nuw nsw i32 %i.p, %i.r               ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.w

bb.g:                                             ; preds = %bb.f
  %.not139 = icmp eq i64 %1, 3
  br i1 %.not139, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.m, align 1, !tbaa !41
  %i.v = add i8 %i.u, -48                         ; 2 uses
  %i.w = mul nuw nsw i32 %i.s, 10
  %i.x = icmp ult i8 %i.v, 10
  %i.y = zext i8 %i.v to i32
  %i.z = add nuw nsw i32 %i.w, %i.y               ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %.not140 = icmp eq i64 %1, 4
  br i1 %.not140, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !41
  %i.ac = add i8 %i.ab, -48                       ; 2 uses
  %i.ad = mul nuw nsw i32 %i.z, 10
  %i.ae = icmp ult i8 %i.ac, 10
  %i.af = zext i8 %i.ac to i32
  %i.ag = add nuw nsw i32 %i.ad, %i.af            ; 2 uses
  br i1 %i.ae, label %bb.k, label %bb.w

bb.k:                                             ; preds = %bb.j
  %.not141 = icmp eq i64 %1, 5
  br i1 %.not141, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !41
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %i.ak = mul nuw nsw i32 %i.ag, 10
  %i.al = icmp ult i8 %i.aj, 10
  %i.am = zext i8 %i.aj to i32
  %i.an = add nuw nsw i32 %i.ak, %i.am            ; 2 uses
  br i1 %i.al, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  %.not142 = icmp eq i64 %1, 6
  br i1 %.not142, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !41
  %i.aq = add i8 %i.ap, -48                       ; 2 uses
  %i.ar = mul nuw nsw i32 %i.an, 10
  %i.as = icmp ult i8 %i.aq, 10
  %i.at = zext i8 %i.aq to i32
  %i.au = add nuw nsw i32 %i.ar, %i.at            ; 2 uses
  br i1 %i.as, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %.not143 = icmp eq i64 %1, 7
  br i1 %.not143, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !41
  %i.ax = add i8 %i.aw, -48                       ; 2 uses
  %i.ay = mul nuw nsw i32 %i.au, 10
  %i.az = icmp ult i8 %i.ax, 10
  %i.ba = zext i8 %i.ax to i32
  %i.bb = add nuw nsw i32 %i.ay, %i.ba            ; 2 uses
  br i1 %i.az, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %.not144 = icmp eq i64 %1, 8
  br i1 %.not144, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !41
  %i.be = add i8 %i.bd, -48                       ; 2 uses
  %i.bf = mul nuw nsw i32 %i.bb, 10
  %i.bg = add i64 %1, -9                          ; 2 uses
  %i.bh = icmp ult i8 %i.be, 10
  %i.bi = zext i8 %i.be to i32
  %i.bj = add nuw nsw i32 %i.bf, %i.bi            ; 3 uses
  br i1 %i.bh, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %.not145 = icmp eq i64 %i.bg, 0
  br i1 %.not145, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = icmp samesign ugt i32 %i.bj, 429496729
  br i1 %i.bk, label %bb.w, label %bb.u, !prof !76

bb.u:                                             ; preds = %bb.t
  %i.bl = load i8, ptr %i.bc, align 1, !tbaa !41
  %i.bm = add i8 %i.bl, -48                       ; 2 uses
  %i.bn = mul nuw i32 %i.bj, 10                   ; 4 uses
  %i.bo = zext i8 %i.bm to i32
  %i.bp = add i32 %i.bn, %i.bo                    ; 2 uses
  %.not146 = icmp eq i64 %i.bg, 1
  %i.bq = icmp ult i8 %i.bm, 10
  %or.cond.not = and i1 %.not146, %i.bq           ; 2 uses
  %i.br = icmp uge i32 %i.bp, %i.bn
  %. = tail call i32 @llvm.umax.i32(i32 %i.bp, i32 %i.bn)
  %.9104 = select i1 %or.cond.not, i32 %., i32 %i.bn, !prof !160
  %cond9 = select i1 %or.cond.not, i1 %i.br, i1 false, !prof !160
  br i1 %cond9, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %bb.a
  %.10 = phi i32 [ %.9104, %bb.u ], [ %i.bj, %bb.s ], [ %i.bb, %bb.q ], [ %i.au, %bb.o ], [ %i.an, %bb.m ], [ %i.ag, %bb.k ], [ %i.z, %bb.i ], [ %i.s, %bb.g ], [ %i.l, %bb.e ], [ %i.e, %bb.c ], [ 0, %bb.a ]
  store i32 %.10, ptr %2, align 4, !tbaa !25
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.v
  %.10115 = phi i1 [ false, %bb.b ], [ true, %bb.v ], [ false, %bb.u ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.t ]
  ret i1 %.10115
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn }

!llvm.module.flags = !{!19, !20}
!llvm.ident = !{!21}
!llvm.errno.tbaa = !{!25}

!0 = distinct !{!0, !47}
!1 = distinct !{!1, !47}
!2 = distinct !{!2, !47}
!3 = distinct !{!3, !47}
!4 = distinct !{!4, !47}
!5 = distinct !{!5, !47}
!6 = distinct !{!6, !47}
!7 = distinct !{!7, !47}
!8 = distinct !{!8, !47}
!9 = distinct !{!9, !47}
!10 = distinct !{!10, !47}
!11 = distinct !{!11, !47}
!12 = distinct !{!12, !47}
!13 = distinct !{!13, !47}
!14 = distinct !{!14, !47}
!15 = distinct !{!15, !47}
!16 = distinct !{!16, !47}
!17 = distinct !{!17, !47}
!18 = distinct !{!18, !47}
!19 = !{i32 8, !"PIC Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!22 = !{!"Simple C++ TBAA"}
!23 = !{!"omnipotent char", !22, i64 0}
!24 = !{!"int", !23, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"float", !23, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"short", !23, i64 0}
!29 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !24, i64 8, !24, i64 12}
!30 = !{!29, !24, i64 8}
!31 = !{!29, !24, i64 12}
!32 = !{!"vtable pointer", !22, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"any pointer", !23, i64 0}
!35 = !{!"p1 omnipotent char", !34, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !35, i64 0}
!37 = !{!"long", !23, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !36, i64 0, !37, i64 8, !23, i64 16}
!39 = !{!38, !35, i64 0}
!40 = !{!38, !37, i64 8}
!41 = !{!23, !23, i64 0}
!42 = !{!36, !35, i64 0}
!43 = !{!"_ZTSN5arrow15TimestampParserE"}
!44 = !{!"bool", !23, i64 0}
!45 = !{!"_ZTSN5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserE", !43, i64 0, !38, i64 8, !44, i64 40}
!46 = !{!45, !44, i64 40}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"p1 _ZTSN5arrow15TimestampParserE", !34, i64 0}
!49 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !34, i64 0}
!50 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !49, i64 0}
!51 = !{!"_ZTSSt12__shared_ptrIN5arrow15TimestampParserELN9__gnu_cxx12_Lock_policyE2EE", !48, i64 0, !50, i64 8}
!52 = !{!51, !48, i64 0}
!53 = !{!50, !49, i64 0}
!54 = !{!44, !44, i64 0}
!55 = !{i8 0, i8 2}
!56 = !{}
!57 = !{!37, !37, i64 0}
!58 = !{!35, !35, i64 0}
!59 = !{!"_ZTSN14arrow_vendored10fast_float4spanIKcEE", !35, i64 0, !37, i64 8}
!60 = !{!"_ZTSN14arrow_vendored10fast_float11parse_errorE", !23, i64 0}
!61 = !{!"_ZTSN14arrow_vendored10fast_float22parsed_number_string_tIcEE", !37, i64 0, !37, i64 8, !35, i64 16, !44, i64 24, !44, i64 25, !44, i64 26, !59, i64 32, !59, i64 48, !60, i64 64}
!62 = !{!61, !35, i64 16}
!63 = !{!61, !44, i64 26}
!64 = !{!61, !37, i64 0}
!65 = !{!61, !37, i64 8}
!66 = !{!61, !44, i64 24}
!67 = !{!"_ZTSN14arrow_vendored10fast_float8stackvecILt62EEE", !23, i64 0, !28, i64 496}
!68 = !{!67, !28, i64 496}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!72 = !{!"double", !23, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!"_ZTSSt9type_info", !35, i64 8}
!75 = !{!74, !35, i64 8}
!76 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!77 = !{!"branch_weights", !"expected", i32 1430940, i32 2146052708}
!78 = !{!"branch_weights", i32 2146410443, i32 1073205}
!79 = !{!"branch_weights", i32 6003000, i32 -294967296}
!80 = !{!"branch_weights", i32 0, i32 -2147483648}
!81 = !{!28, !28, i64 0}
!82 = distinct !{!82, !"_ZSt11make_sharedIN5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_"}
!83 = distinct !{!83, !82, !"_ZSt11make_sharedIN5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!84 = distinct !{!84, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_"}
!85 = distinct !{!85, !84, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_: argument 0"}
!86 = distinct !{!86, !47}
!87 = !{!85, !83}
!88 = !{!83}
!89 = distinct !{!89, !"_ZSt11make_sharedIN5arrow8internal12_GLOBAL__N_113ISO8601ParserEJEESt10shared_ptrIT_EDpOT0_"}
!90 = distinct !{!90, !89, !"_ZSt11make_sharedIN5arrow8internal12_GLOBAL__N_113ISO8601ParserEJEESt10shared_ptrIT_EDpOT0_: argument 0"}
!91 = distinct !{!91, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_113ISO8601ParserESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_"}
!92 = distinct !{!92, !91, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_113ISO8601ParserESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_: argument 0"}
!93 = !{!92, !90}
!94 = !{!90}
!95 = distinct !{!95, !47}
!96 = distinct !{!96, !"_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE"}
!97 = distinct !{!97, !96, !"_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE: argument 0"}
!98 = distinct !{!98, !"_ZN14arrow_vendored10fast_float19parse_number_stringILb0EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE"}
!99 = distinct !{!99, !98, !"_ZN14arrow_vendored10fast_float19parse_number_stringILb0EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE: argument 0"}
!100 = !{!97}
!101 = !{!99}
!102 = distinct !{!102, !47}
!103 = distinct !{!103, !47}
!104 = distinct !{!104, !47}
!105 = distinct !{!105, !47}
!106 = distinct !{!106, !47, !114}
!107 = distinct !{!107, !47}
!108 = distinct !{!108, !47}
!109 = distinct !{!109, !47}
!110 = distinct !{!110, !47}
!111 = distinct !{!111, !47}
!112 = !{!61, !35, i64 32}
!113 = !{!59, !37, i64 8}
!114 = !{!"llvm.loop.peeled.count", i32 1}
!115 = !{!61, !35, i64 48}
!116 = distinct !{!116, !47, !69, !70}
!117 = distinct !{!117, !47, !70, !69}
!118 = distinct !{!118, !47, !69, !70}
!119 = distinct !{!119, !47, !70, !69}
!120 = distinct !{!120, !47, !69, !70}
!121 = distinct !{!121, !47, !70, !69}
!122 = distinct !{!122, !47}
!123 = distinct !{!123, !47, !124}
!124 = !{!"llvm.loop.unswitch.partial.disable"}
!125 = distinct !{!125, !47}
!126 = distinct !{!126, !47}
!127 = distinct !{!127, !47}
!128 = distinct !{!128, !47}
!129 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!130 = distinct !{!130, !47}
!131 = distinct !{!131, !"_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE"}
!132 = distinct !{!132, !131, !"_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE: argument 0"}
!133 = distinct !{!133, !"_ZN14arrow_vendored10fast_float19parse_number_stringILb0EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE"}
!134 = distinct !{!134, !133, !"_ZN14arrow_vendored10fast_float19parse_number_stringILb0EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE: argument 0"}
!135 = !{!132}
!136 = !{!134}
!137 = distinct !{!137, !47}
!138 = distinct !{!138, !47, !69, !70}
!139 = distinct !{!139, !47, !70, !69}
!140 = distinct !{!140, !47, !69, !70}
!141 = distinct !{!141, !47, !70, !69}
!142 = distinct !{!142, !47, !69, !70}
!143 = distinct !{!143, !47, !70, !69}
!144 = distinct !{null, null}
!145 = !{ptr @_ZN5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserD2Ev}
!146 = !{!"_ZTS2tm", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !37, i64 40, !35, i64 48}
!147 = !{!146, !24, i64 20}
!148 = !{!146, !24, i64 16}
!149 = distinct !{null, null}
!150 = !{!"branch_weights", i32 6436012, i32 -6436014}
!151 = !{!"branch_weights", i32 8579205, i32 -8579208}
!152 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!153 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!154 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!155 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1EEEE", !37, i64 0}
!156 = !{!155, !37, i64 0}
!157 = !{!"branch_weights", i32 4001, i32 4000000}
!158 = !{!"branch_weights", i32 7818360, i32 -388717296}
!159 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!160 = !{!"branch_weights", i32 4000000, i32 4001}
end_hunk_2
