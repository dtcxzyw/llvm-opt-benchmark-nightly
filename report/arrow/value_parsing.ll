Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/value_parsing?download=true
inline.NumInlined: 865
inline.NumDeleted: 342
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN14arrow_vendored10fast_float6detail12parse_infnanIfcEENS0_19from_chars_result_tIT0_EEPKS4_S7_RT_NS0_12chars_formatE:bb.a
  store float %i.s, ptr %2, align 4, !tbaa !27
  %.not42 = icmp eq ptr %i.r, %1
  br i1 %.not42, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.r, align 1, !tbaa !41
  %i.u = icmp ne i8 %i.t, 40
  %i.v = getelementptr inbounds nuw i8, ptr %.035, i64 4 ; 4 uses
  %.not4366 = icmp eq ptr %i.v, %1
  %or.cond69 = select i1 %i.u, i1 true, i1 %.not4366
  br i1 %or.cond69, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.w = load i8, ptr %i.v, align 1, !tbaa !41    ; 2 uses
  %i.x = icmp eq i8 %i.w, 41
  br i1 %i.x, label %.lr.ph._crit_edge, label %.lr.ph85

.lr.ph._crit_edge:                                ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.067.lcssa = phi ptr [ %i.v, %.lr.ph.preheader ], [ %.067.be, %.lr.ph.backedge ]
  %i.y = getelementptr inbounds nuw i8, ptr %.067.lcssa, i64 1
  br label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51

.lr.ph85:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %i.z = phi i8 [ %i.af, %.lr.ph.backedge ], [ %i.w, %.lr.ph.preheader ] ; 3 uses
  %.06784 = phi ptr [ %.067.be, %.lr.ph.backedge ], [ %i.v, %.lr.ph.preheader ] ; 2 uses
  %i.aa = and i8 %i.z, -33
  %i.ab = add i8 %i.aa, -65
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
  %i.bf = tail call i64 @llvm.umulh.i64(i64 %i.ao, i64 %i.be) ; 2 uses
  %i.bg = add i64 %i.bf, %i.ay                    ; 2 uses
  %i.bh = icmp ugt i64 %i.bf, %i.bg
  %i.bi = zext i1 %i.bh to i64
  %spec.select.i64 = add nuw i64 %i.bi, %i.ba
  br label %_ZN14arrow_vendored10fast_float29compute_product_approximationILi26EEENS0_8value128Elm.exit67

_ZN14arrow_vendored10fast_float29compute_product_approximationILi26EEENS0_8value128Elm.exit67: ; preds = %.noexc66, %.noexc65
  %.pn146 = phi i64 [ %i.bg, %.noexc66 ], [ %i.ay, %.noexc65 ]
  %spec.select.i64.pn = phi i64 [ %spec.select.i64, %.noexc66 ], [ %i.ba, %.noexc65 ] ; 3 uses
  %i.bj = lshr i64 %spec.select.i64.pn, 63        ; 2 uses
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = or disjoint i64 %i.bj, 38               ; 2 uses
  %i.bm = lshr i64 %spec.select.i64.pn, %i.bl     ; 6 uses
  %i.bn = mul nsw i32 %i.ap, 217706
  %i.bo = ashr i32 %i.bn, 16
  %i.bp = add nsw i32 %i.bo, 190
  %i.bq = sub nsw i32 %i.bp, %i.an
  %i.br = add nsw i32 %i.bq, %i.bk                ; 3 uses
  %i.bs = icmp slt i32 %i.br, 1
  br i1 %i.bs, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN14arrow_vendored10fast_float29compute_product_approximationILi26EEENS0_8value128Elm.exit67
  %i.bt = sub nsw i32 1, %i.br                    ; 2 uses
  %i.bu = icmp samesign ugt i32 %i.bt, 63
  br i1 %i.bu, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = lshr i64 %i.bm, %i.bv                   ; 2 uses
  %i.bx = and i64 %i.bw, 1
  %i.by = add nuw nsw i64 %i.bx, %i.bw            ; 2 uses
  %i.bz = lshr i64 %i.by, 1
  %i.ca = icmp samesign ugt i64 %i.by, 16777215
  %i.cb = zext i1 %i.ca to i32
  br label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60

bb.r:                                             ; preds = %_ZN14arrow_vendored10fast_float29compute_product_approximationILi26EEENS0_8value128Elm.exit67
  %i.cc = icmp ugt i64 %.pn146, 1
  %i.cd = add nsw i64 %.pr.pre, -11
  %i.ce = icmp ult i64 %i.cd, -28
  %or.cond130 = select i1 %i.cc, i1 true, i1 %i.ce
  br i1 %or.cond130, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = and i64 %i.bm, 3
  %i.cg = icmp eq i64 %i.cf, 1
  %i.ch = shl i64 %i.bm, %i.bl
  %i.ci = icmp eq i64 %i.ch, %spec.select.i64.pn
  %or.cond.i58 = select i1 %i.cg, i1 %i.ci, i1 false
  %i.cj = and i64 %i.bm, 67108860
  %spec.select = select i1 %or.cond.i58, i64 %i.cj, i64 %i.bm
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.0103.0 = phi i64 [ %i.bm, %bb.r ], [ %spec.select, %bb.s ] ; 2 uses
  %i.ck = and i64 %.sroa.0103.0, 1
  %i.cl = add nuw nsw i64 %i.ck, %.sroa.0103.0    ; 2 uses
  %i.cm = lshr i64 %i.cl, 1
  %.not22.i49 = icmp samesign ugt i64 %i.cl, 33554431 ; 2 uses
  %i.cn = zext i1 %.not22.i49 to i32
  %spec.select132 = add nuw nsw i32 %i.br, %i.cn  ; 2 uses
  %i.co = and i64 %i.cm, 9223372036846387199
  %.not23.i50 = icmp samesign ugt i32 %spec.select132, 254 ; 2 uses
  %.not = select i1 %.not23.i50, i1 true, i1 %.not22.i49
  %spec.select140 = select i1 %.not, i64 0, i64 %i.co
  %spec.select141 = select i1 %.not23.i50, i32 255, i32 %spec.select132
  br label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60

_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60: ; preds = %bb.t, %bb.p, %bb.o, %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.thread, %bb.q
  %.sroa.0103.2 = phi i64 [ 0, %bb.p ], [ 0, %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.thread ], [ 0, %bb.o ], [ %i.bz, %bb.q ], [ %spec.select140, %bb.t ] ; 3 uses
  %.sroa.18108.1 = phi i32 [ 0, %bb.p ], [ 0, %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.thread ], [ 255, %bb.o ], [ %i.cb, %bb.q ], [ %spec.select141, %bb.t ] ; 3 uses
  br i1 %i.f, label %bb.u, label %.thread

bb.u:                                             ; preds = %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60
  %i.cp = add i64 %.pre.pre, 1                    ; 3 uses
  %i.cq = icmp eq i64 %i.cp, 0
  %or.cond133 = select i1 %i.cq, i1 true, i1 %i.ak
  br i1 %or.cond133, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = icmp sgt i64 %.pr.pre, 38
  br i1 %i.cr, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit, label %.noexc70

.noexc70:                                         ; preds = %bb.v
  %i.cs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true) ; 2 uses
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = shl i64 %i.cp, %i.cs                    ; 2 uses
  %i.cv = trunc nsw i64 %.pr.pre to i32           ; 2 uses
  %i.cw = shl nsw i32 %i.cv, 1
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr [8 x i8], ptr @_ZN14arrow_vendored10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.cx ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 5472
  %i.da = load i64, ptr %i.cz, align 16, !tbaa !57
  %i.db = zext i64 %i.cu to i128
  %i.dc = zext i64 %i.da to i128
  %i.dd = mul nuw i128 %i.dc, %i.db               ; 2 uses
  %i.de = trunc i128 %i.dd to i64                 ; 2 uses
  %i.df = lshr i128 %i.dd, 64
  %i.dg = trunc nuw i128 %i.df to i64             ; 3 uses
  %i.dh = and i64 %i.dg, 274877906943
  %i.di = icmp eq i64 %i.dh, 274877906943
  br i1 %i.di, label %.noexc71, label %_ZN14arrow_vendored10fast_float29compute_product_approximationILi26EEENS0_8value128Elm.exit72

.noexc71:                                         ; preds = %.noexc70
  %i.dj = getelementptr i8, ptr %i.cy, i64 5480
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !57
  %i.dl = tail call i64 @llvm.umulh.i64(i64 %i.cu, i64 %i.dk) ; 2 uses
  %i.dm = add i64 %i.dl, %i.de                    ; 2 uses
  %i.dn = icmp ugt i64 %i.dl, %i.dm
  %i.do = zext i1 %i.dn to i64
  %spec.select.i69 = add nuw i64 %i.do, %i.dg
  br label %_ZN14arrow_vendored10fast_float29compute_product_approximationILi26EEENS0_8value128Elm.exit72

_ZN14arrow_vendored10fast_float29compute_product_approximationILi26EEENS0_8value128Elm.exit72: ; preds = %.noexc71, %.noexc70
  %.pn148 = phi i64 [ %i.dm, %.noexc71 ], [ %i.de, %.noexc70 ]
  %spec.select.i69.pn = phi i64 [ %spec.select.i69, %.noexc71 ], [ %i.dg, %.noexc70 ] ; 3 uses
  %i.dp = lshr i64 %spec.select.i69.pn, 63        ; 2 uses
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = or disjoint i64 %i.dp, 38               ; 2 uses
  %i.ds = lshr i64 %spec.select.i69.pn, %i.dr     ; 6 uses
  %i.dt = mul nsw i32 %i.cv, 217706
  %i.du = ashr i32 %i.dt, 16
  %i.dv = add nsw i32 %i.du, 190
  %i.dw = sub nsw i32 %i.dv, %i.ct
  %i.dx = add nsw i32 %i.dw, %i.dq                ; 3 uses
  %i.dy = icmp slt i32 %i.dx, 1
  br i1 %i.dy, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZN14arrow_vendored10fast_float29compute_product_approximationILi26EEENS0_8value128Elm.exit72
  %i.dz = sub nsw i32 1, %i.dx                    ; 2 uses
  %i.ea = icmp samesign ugt i32 %i.dz, 63
  br i1 %i.ea, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eb = zext nneg i32 %i.dz to i64
  %i.ec = lshr i64 %i.ds, %i.eb                   ; 2 uses
  %i.ed = and i64 %i.ec, 1
  %i.ee = add nuw nsw i64 %i.ed, %i.ec            ; 2 uses
  %i.ef = lshr i64 %i.ee, 1
  %i.eg = icmp samesign ugt i64 %i.ee, 16777215
  %i.eh = zext i1 %i.eg to i32
  br label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit

bb.y:                                             ; preds = %_ZN14arrow_vendored10fast_float29compute_product_approximationILi26EEENS0_8value128Elm.exit72
  %i.ei = icmp ugt i64 %.pn148, 1
  %i.ej = add nsw i64 %.pr.pre, -11
  %i.ek = icmp ult i64 %i.ej, -28
  %or.cond135 = select i1 %i.ei, i1 true, i1 %i.ek
  br i1 %or.cond135, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.el = and i64 %i.ds, 3
  %i.em = icmp eq i64 %i.el, 1
  %i.en = shl i64 %i.ds, %i.dr
  %i.eo = icmp eq i64 %i.en, %spec.select.i69.pn
  %or.cond.i = select i1 %i.em, i1 %i.eo, i1 false
  %i.ep = and i64 %i.ds, 67108860
  %spec.select136 = select i1 %or.cond.i, i64 %i.ep, i64 %i.ds
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.096.0 = phi i64 [ %i.ds, %bb.y ], [ %spec.select136, %bb.z ] ; 2 uses
  %i.eq = and i64 %.sroa.096.0, 1
  %i.er = add nuw nsw i64 %i.eq, %.sroa.096.0     ; 2 uses
  %i.es = lshr i64 %i.er, 1
  %.not22.i = icmp samesign ugt i64 %i.er, 33554431 ; 2 uses
  %i.et = zext i1 %.not22.i to i32
  %spec.select137 = add nuw nsw i32 %i.dx, %i.et  ; 2 uses
  %i.eu = and i64 %i.es, 9223372036846387199
  %.not23.i = icmp samesign ugt i32 %spec.select137, 254
  %spec.select142 = tail call i32 @llvm.umin.i32(i32 %spec.select137, i32 255)
  %.not149 = select i1 %.not23.i, i1 true, i1 %.not22.i
  %spec.select143 = select i1 %.not149, i64 0, i64 %i.eu
  br label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit

_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit: ; preds = %bb.aa, %bb.w, %bb.v, %bb.u, %bb.x
  %.sroa.18.1 = phi i32 [ 0, %bb.w ], [ 0, %bb.u ], [ 255, %bb.v ], [ %i.eh, %bb.x ], [ %spec.select142, %bb.aa ]
  %.sroa.096.2 = phi i64 [ 0, %bb.w ], [ 0, %bb.u ], [ 0, %bb.v ], [ %i.ef, %bb.x ], [ %spec.select143, %bb.aa ]
  %.not.i88 = icmp ne i64 %.sroa.0103.2, %.sroa.096.2
  %i.ev = icmp ne i32 %.sroa.18108.1, %.sroa.18.1
  %i.ew = select i1 %.not.i88, i1 true, i1 %i.ev
  br i1 %i.ew, label %.noexc, label %.thread

.noexc:                                           ; preds = %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit
  %i.ex = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre.pre, i1 true) ; 2 uses
  %i.ey = trunc nuw nsw i64 %i.ex to i32
  %i.ez = shl i64 %.pre.pre, %i.ex                ; 2 uses
  %i.fa = trunc i64 %.pr.pre to i32               ; 4 uses
  %i.fb = shl i32 %i.fa, 1                        ; 2 uses
  %i.fc = add i32 %i.fb, 684
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr @_ZN14arrow_vendored10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 16, !tbaa !57
  %i.fg = zext i64 %i.ez to i128
  %i.fh = zext i64 %i.ff to i128
  %i.fi = mul nuw i128 %i.fh, %i.fg               ; 2 uses
  %i.fj = lshr i128 %i.fi, 64
  %i.fk = trunc nuw i128 %i.fj to i64             ; 3 uses
  %i.fl = and i64 %i.fk, 274877906943
  %i.fm = icmp eq i64 %i.fl, 274877906943
  br i1 %i.fm, label %.noexc62, label %bb.ab

.noexc62:                                         ; preds = %.noexc
  %i.fn = trunc i128 %i.fi to i64
  %i.fo = add i32 %i.fb, 685
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr @_ZN14arrow_vendored10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !57
  %i.fs = tail call i64 @llvm.umulh.i64(i64 %i.ez, i64 %i.fr)
  %i.ft = xor i64 %i.fs, -1
  %i.fu = icmp ugt i64 %i.fn, %i.ft
  %i.fv = zext i1 %i.fu to i64
  %spec.select.i61 = add nuw i64 %i.fv, %i.fk
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc, %.noexc62
  %spec.select.i61.pn = phi i64 [ %spec.select.i61, %.noexc62 ], [ %i.fk, %.noexc ] ; 2 uses
  %i.fw = lshr i64 %spec.select.i61.pn, 63        ; 2 uses
  %i.fx = trunc nuw nsw i64 %i.fw to i32
  %i.fy = xor i64 %i.fw, 1
  %i.fz = shl i64 %spec.select.i61.pn, %i.fy      ; 2 uses
  %i.ga = mul nsw i32 %i.fa, 217706
  %i.gb = ashr i32 %i.ga, 16
  %reass.sub.neg = sub nsw i32 %i.fx, %i.ey
  %i.gc = add nsw i32 %reass.sub.neg, %i.gb       ; 3 uses
  %i.gd = add nsw i32 %i.gc, -32618
  %i.ge = icmp slt i32 %i.gc, 32618
  br i1 %i.ge, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.gf = icmp ugt i64 %.pre.pre, 9999
  br i1 %i.gf, label %.lr.ph.i, label %.preheader18.i

.preheader18.i:                                   ; preds = %.lr.ph.i, %bb.ac
  %.011.i.lcssa.i = phi i64 [ %.pre.pre, %bb.ac ], [ %i.gh, %.lr.ph.i ] ; 3 uses
  %.0.i.lcssa.i = phi i32 [ %i.fa, %bb.ac ], [ %i.gi, %.lr.ph.i ] ; 2 uses
  %i.gg = icmp samesign ugt i64 %.011.i.lcssa.i, 99
  br i1 %i.gg, label %.lr.ph24.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.ac, %.lr.ph.i
  %.0.i20.i = phi i32 [ %i.gi, %.lr.ph.i ], [ %i.fa, %bb.ac ]
  %.011.i19.i = phi i64 [ %i.gh, %.lr.ph.i ], [ %.pre.pre, %bb.ac ] ; 2 uses
  %i.gh = udiv i64 %.011.i19.i, 10000             ; 2 uses
  %i.gi = add nsw i32 %.0.i20.i, 4                ; 2 uses
  %i.gj = icmp ugt i64 %.011.i19.i, 99999999
  br i1 %i.gj, label %.lr.ph.i, label %.preheader18.i, !llvm.loop !13

.preheader.i:                                     ; preds = %.lr.ph24.i, %.preheader18.i
  %.112.i.lcssa.i = phi i64 [ %.011.i.lcssa.i, %.preheader18.i ], [ %i.gl, %.lr.ph24.i ] ; 2 uses
  %.1.i.lcssa.i = phi i32 [ %.0.i.lcssa.i, %.preheader18.i ], [ %i.gm, %.lr.ph24.i ] ; 2 uses
  %i.gk = icmp samesign ugt i64 %.112.i.lcssa.i, 9
  br i1 %i.gk, label %.lr.ph29.i, label %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i

.lr.ph24.i:                                       ; preds = %.preheader18.i, %.lr.ph24.i
  %.1.i23.i = phi i32 [ %i.gm, %.lr.ph24.i ], [ %.0.i.lcssa.i, %.preheader18.i ]
  %.112.i22.i = phi i64 [ %i.gl, %.lr.ph24.i ], [ %.011.i.lcssa.i, %.preheader18.i ] ; 2 uses
  %i.gl = udiv i64 %.112.i22.i, 100               ; 2 uses
  %i.gm = add nsw i32 %.1.i23.i, 2                ; 2 uses
  %i.gn = icmp samesign ugt i64 %.112.i22.i, 9999
  br i1 %i.gn, label %.lr.ph24.i, label %.preheader.i, !llvm.loop !14

.lr.ph29.i:                                       ; preds = %.preheader.i, %.lr.ph29.i
  %.2.i28.i = phi i32 [ %i.gp, %.lr.ph29.i ], [ %.1.i.lcssa.i, %.preheader.i ]
  %.213.i27.i = phi i64 [ %i.go, %.lr.ph29.i ], [ %.112.i.lcssa.i, %.preheader.i ] ; 2 uses
  %i.go = udiv i64 %.213.i27.i, 10
  %i.gp = add nsw i32 %.2.i28.i, 1                ; 2 uses
  %i.gq = icmp samesign ugt i64 %.213.i27.i, 99
  br i1 %i.gq, label %.lr.ph29.i, label %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i, !llvm.loop !15

_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i: ; preds = %.lr.ph29.i, %.preheader.i
  %.2.i.lcssa.i = phi i32 [ %.1.i.lcssa.i, %.preheader.i ], [ %i.gp, %.lr.ph29.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %2, i8 0, i64 504, i1 false)
  call void @_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %2, ptr noundef nonnull align 8 dereferenceable(68) %0, i64 noundef 114, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  %i.gr = add nsw i32 %.2.i.lcssa.i, 1
  %i.gs = load i64, ptr %i.a, align 8, !tbaa !57
  %i.gt = trunc i64 %i.gs to i32
  %i.gu = sub i32 %i.gr, %i.gt                    ; 3 uses
  %i.gv = icmp sgt i32 %i.gu, -1
  br i1 %i.gv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i
  %i.gw = call { i64, i32 } @_ZN14arrow_vendored10fast_float19positive_digit_compIfEENS0_17adjusted_mantissaERNS0_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %2, i32 noundef %i.gu) #19
  br label %_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit

bb.ae:                                            ; preds = %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i
  %i.gx = add nsw i32 %i.gc, 150
  %i.gy = call { i64, i32 } @_ZN14arrow_vendored10fast_float19negative_digit_compIfEENS0_17adjusted_mantissaERNS0_6bigintES2_i(ptr noundef nonnull align 8 dereferenceable(504) %2, i64 %i.fz, i32 %i.gx, i32 noundef %i.gu) #19
  br label %_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit

_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit: ; preds = %bb.ad, %bb.ae
  %.pn.i = phi { i64, i32 } [ %i.gw, %bb.ad ], [ %i.gy, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.fca.0.extract = extractvalue { i64, i32 } %.pn.i, 0
  %.fca.1.extract = extractvalue { i64, i32 } %.pn.i, 1
  %.pre165 = load i64, ptr %i.ai, align 8, !tbaa !65
  br label %.thread

.thread:                                          ; preds = %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit, %bb.ab, %_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit
  %i.gz = phi i64 [ %.pre165, %_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit ], [ %.pre.pre, %bb.ab ], [ %.pre.pre, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit ], [ %.pre.pre, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60 ]
  %.sroa.9.1 = phi i32 [ %.fca.1.extract, %_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit ], [ %i.gd, %bb.ab ], [ %.sroa.18108.1, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit ], [ %.sroa.18108.1, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60 ] ; 3 uses
  %.sroa.089.1 = phi i64 [ %.fca.0.extract, %_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit ], [ %i.fz, %bb.ab ], [ %.sroa.0103.2, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit ], [ %.sroa.0103.2, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60 ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hb = load i8, ptr %i.ha, align 8, !tbaa !66, !range !55, !noundef !56
  %i.hc = zext nneg i8 %i.hb to i32
  %i.hd = trunc i64 %.sroa.089.1 to i32
  %i.he = shl i32 %.sroa.9.1, 23
  %i.hf = or i32 %i.he, %i.hd
  %i.hg = shl nuw i32 %i.hc, 31
  %i.hh = or i32 %i.hf, %i.hg
  store i32 %i.hh, ptr %1, align 4, !tbaa !27
  %i.hi = icmp ne i64 %i.gz, 0
  %i.hj = icmp eq i64 %.sroa.089.1, 0
  %or.cond5 = select i1 %i.hi, i1 %i.hj, i1 false
  %i.hk = icmp eq i32 %.sroa.9.1, 0
  %or.cond8 = select i1 %or.cond5, i1 %i.hk, i1 false
  %i.hl = icmp eq i32 %.sroa.9.1, 255
  %or.cond139 = select i1 %or.cond8, i1 true, i1 %i.hl
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
  store i64 %i.ai, ptr %3, align 8, !tbaa !57
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
  store i64 %i.bc, ptr %3, align 8, !tbaa !57
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
  %i.bf = load i8, ptr %.2338, align 1, !tbaa !41
  %i.bg = sext i8 %i.bf to i64
  %i.bh = add i64 %i.be, -48
  %i.bi = add i64 %i.bh, %i.bg                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.2338, i64 1 ; 3 uses
  %i.bk = add nuw nsw i64 %.2264336, 1            ; 2 uses
  %i.bl = add i64 %i.bd, 1                        ; 3 uses
  store i64 %i.bl, ptr %3, align 8, !tbaa !57
  %i.bm = icmp ugt i64 %.2264336, 17
  %.not64 = icmp eq ptr %i.bj, %i.f
  %or.cond = select i1 %i.bm, i1 true, i1 %.not64
  br i1 %or.cond, label %.critedge2, label %bb.f, !llvm.loop !105

.critedge2:                                       ; preds = %bb.f, %bb.g, %.critedge
  %i.bn = phi i64 [ %.pre, %.critedge ], [ %i.bl, %bb.g ], [ %umax, %bb.f ]
  %.2264.lcssa = phi i64 [ %.1263.lcssa, %.critedge ], [ %i.bk, %bb.g ], [ %.2264336, %bb.f ] ; 2 uses
  %.2257.lcssa = phi i64 [ %.1256.lcssa, %.critedge ], [ %i.bi, %bb.g ], [ %.2257337, %bb.f ] ; 8 uses
  %.2.lcssa = phi ptr [ %.1.lcssa, %.critedge ], [ %i.bj, %bb.g ], [ %.2338, %bb.f ] ; 5 uses
  %i.bo = icmp eq i64 %i.bn, %2
  %i.bp = load i16, ptr %i.q, align 8, !tbaa !68  ; 12 uses
  %i.bq = zext i16 %i.bp to i64                   ; 6 uses
  %.not19.i.i = icmp eq i16 %i.bp, 0              ; 2 uses
  br i1 %i.bo, label %bb.h, label %bb.o

bb.h:                                             ; preds = %.critedge2
  br i1 %.not19.i.i, label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @_ZN14arrow_vendored10fast_floatL20powers_of_ten_uint64E, i64 %.2264.lcssa
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !57
  %i.bt = zext i64 %i.bs to i128                  ; 3 uses
  %xtraiter616 = and i64 %i.bq, 1
  %i.bu = icmp eq i16 %i.bp, 1
  br i1 %i.bu, label %.epil.preheader615, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter621 = and i64 %i.bq, 65534
  br label %bb.i

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.i
  %lcmp.mod617.not = icmp eq i64 %xtraiter616, 0
  br i1 %lcmp.mod617.not, label %._crit_edge.i.i, label %.epil.preheader615

.epil.preheader615:                               ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.016.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cw, %._crit_edge.i.i.unr-lcssa ]
  %.01215.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cu, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod620 = trunc i16 %i.bp to i1
  tail call void @llvm.assume(i1 %lcmp.mod620)
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored10fast_float6detail12parse_infnanIdcEENS0_19from_chars_result_tIT0_EEPKS4_S7_RT_NS0_12chars_formatE:bb.a
  store double %i.s, ptr %2, align 8, !tbaa !73
  %.not42 = icmp eq ptr %i.r, %1
  br i1 %.not42, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.r, align 1, !tbaa !41
  %i.u = icmp ne i8 %i.t, 40
  %i.v = getelementptr inbounds nuw i8, ptr %.035, i64 4 ; 4 uses
  %.not4366 = icmp eq ptr %i.v, %1
  %or.cond69 = select i1 %i.u, i1 true, i1 %.not4366
  br i1 %or.cond69, label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.w = load i8, ptr %i.v, align 1, !tbaa !41    ; 2 uses
  %i.x = icmp eq i8 %i.w, 41
  br i1 %i.x, label %.lr.ph._crit_edge, label %.lr.ph85

.lr.ph._crit_edge:                                ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.067.lcssa = phi ptr [ %i.v, %.lr.ph.preheader ], [ %.067.be, %.lr.ph.backedge ]
  %i.y = getelementptr inbounds nuw i8, ptr %.067.lcssa, i64 1
  br label %_ZN14arrow_vendored10fast_float21fastfloat_strncasecmpIcEEbPKT_S4_m.exit51

.lr.ph85:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %i.z = phi i8 [ %i.af, %.lr.ph.backedge ], [ %i.w, %.lr.ph.preheader ] ; 3 uses
  %.06784 = phi ptr [ %.067.be, %.lr.ph.backedge ], [ %i.v, %.lr.ph.preheader ] ; 2 uses
  %i.aa = and i8 %i.z, -33
  %i.ab = add i8 %i.aa, -65
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
  %i.bf = tail call i64 @llvm.umulh.i64(i64 %i.ao, i64 %i.be) ; 2 uses
  %i.bg = add i64 %i.bf, %i.ay                    ; 2 uses
  %i.bh = icmp ugt i64 %i.bf, %i.bg
  %i.bi = zext i1 %i.bh to i64
  %spec.select.i67 = add nuw i64 %i.bi, %i.ba
  br label %_ZN14arrow_vendored10fast_float29compute_product_approximationILi55EEENS0_8value128Elm.exit68

_ZN14arrow_vendored10fast_float29compute_product_approximationILi55EEENS0_8value128Elm.exit68: ; preds = %bb.q, %bb.p
  %.pn137 = phi i64 [ %i.bg, %bb.q ], [ %i.ay, %bb.p ]
  %spec.select.i67.pn = phi i64 [ %spec.select.i67, %bb.q ], [ %i.ba, %bb.p ] ; 3 uses
  %i.bj = lshr i64 %spec.select.i67.pn, 63        ; 2 uses
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = add nuw nsw i64 %i.bj, 9                ; 2 uses
  %i.bm = lshr i64 %spec.select.i67.pn, %i.bl     ; 6 uses
  %i.bn = mul nsw i32 %i.ap, 217706
  %i.bo = ashr i32 %i.bn, 16
  %i.bp = add nsw i32 %i.bo, 1086
  %i.bq = sub nsw i32 %i.bp, %i.an
  %i.br = add nsw i32 %i.bq, %i.bk                ; 3 uses
  %i.bs = icmp slt i32 %i.br, 1
  br i1 %i.bs, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZN14arrow_vendored10fast_float29compute_product_approximationILi55EEENS0_8value128Elm.exit68
  %i.bt = sub nsw i32 1, %i.br                    ; 2 uses
  %i.bu = icmp samesign ugt i32 %i.bt, 63
  br i1 %i.bu, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = lshr i64 %i.bm, %i.bv                   ; 2 uses
  %i.bx = and i64 %i.bw, 1
  %i.by = add nuw nsw i64 %i.bx, %i.bw            ; 2 uses
  %i.bz = lshr i64 %i.by, 1
  %i.ca = icmp samesign ugt i64 %i.by, 9007199254740991
  %i.cb = zext i1 %i.ca to i32
  br label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60

bb.t:                                             ; preds = %_ZN14arrow_vendored10fast_float29compute_product_approximationILi55EEENS0_8value128Elm.exit68
  %i.cc = icmp ugt i64 %.pn137, 1
  %i.cd = add nsw i64 %.pr.pre, -24
  %i.ce = icmp ult i64 %i.cd, -28
  %or.cond121 = select i1 %i.cc, i1 true, i1 %i.ce
  br i1 %or.cond121, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = and i64 %i.bm, 3
  %i.cg = icmp eq i64 %i.cf, 1
  %i.ch = shl i64 %i.bm, %i.bl
  %i.ci = icmp eq i64 %i.ch, %spec.select.i67.pn
  %or.cond.i58 = select i1 %i.cg, i1 %i.ci, i1 false
  %i.cj = and i64 %i.bm, 72057594037927932
  %spec.select = select i1 %or.cond.i58, i64 %i.cj, i64 %i.bm
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.094.0 = phi i64 [ %i.bm, %bb.t ], [ %spec.select, %bb.u ] ; 2 uses
  %i.ck = and i64 %.sroa.094.0, 1
  %i.cl = add nuw nsw i64 %i.ck, %.sroa.094.0     ; 2 uses
  %i.cm = lshr i64 %i.cl, 1
  %.not22.i49 = icmp samesign ugt i64 %i.cl, 18014398509481983 ; 2 uses
  %i.cn = zext i1 %.not22.i49 to i32
  %spec.select123 = add nuw nsw i32 %i.br, %i.cn  ; 2 uses
  %i.co = and i64 %i.cm, 9218868437227405311
  %.not23.i50 = icmp samesign ugt i32 %spec.select123, 2046 ; 2 uses
  %.not = select i1 %.not23.i50, i1 true, i1 %.not22.i49
  %spec.select131 = select i1 %.not, i64 0, i64 %i.co
  %spec.select132 = select i1 %.not23.i50, i32 2047, i32 %spec.select123
  br label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60

_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60: ; preds = %bb.v, %bb.r, %bb.o, %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.thread, %bb.s
  %.sroa.094.2 = phi i64 [ 0, %bb.r ], [ 0, %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.thread ], [ 0, %bb.o ], [ %i.bz, %bb.s ], [ %spec.select131, %bb.v ] ; 3 uses
  %.sroa.1899.1 = phi i32 [ 0, %bb.r ], [ 0, %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.thread ], [ 2047, %bb.o ], [ %i.cb, %bb.s ], [ %spec.select132, %bb.v ] ; 3 uses
  br i1 %i.f, label %bb.w, label %.thread

bb.w:                                             ; preds = %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60
  %i.cp = add i64 %.pre.pre, 1                    ; 3 uses
  %i.cq = icmp eq i64 %i.cp, 0
  %or.cond124 = select i1 %i.cq, i1 true, i1 %i.ak
  br i1 %or.cond124, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = icmp sgt i64 %.pr.pre, 308
  br i1 %i.cr, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true) ; 2 uses
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = shl i64 %i.cp, %i.cs                    ; 2 uses
  %i.cv = trunc nsw i64 %.pr.pre to i32           ; 2 uses
  %i.cw = shl nsw i32 %i.cv, 1
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr [8 x i8], ptr @_ZN14arrow_vendored10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.cx ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 5472
  %i.da = load i64, ptr %i.cz, align 16, !tbaa !57
  %i.db = zext i64 %i.cu to i128
  %i.dc = zext i64 %i.da to i128
  %i.dd = mul nuw i128 %i.dc, %i.db               ; 2 uses
  %i.de = trunc i128 %i.dd to i64                 ; 2 uses
  %i.df = lshr i128 %i.dd, 64
  %i.dg = trunc nuw i128 %i.df to i64             ; 3 uses
  %i.dh = and i64 %i.dg, 511
  %i.di = icmp eq i64 %i.dh, 511
  br i1 %i.di, label %bb.z, label %_ZN14arrow_vendored10fast_float29compute_product_approximationILi55EEENS0_8value128Elm.exit75

bb.z:                                             ; preds = %bb.y
  %i.dj = getelementptr i8, ptr %i.cy, i64 5480
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !57
  %i.dl = tail call i64 @llvm.umulh.i64(i64 %i.cu, i64 %i.dk) ; 2 uses
  %i.dm = add i64 %i.dl, %i.de                    ; 2 uses
  %i.dn = icmp ugt i64 %i.dl, %i.dm
  %i.do = zext i1 %i.dn to i64
  %spec.select.i74 = add nuw i64 %i.do, %i.dg
  br label %_ZN14arrow_vendored10fast_float29compute_product_approximationILi55EEENS0_8value128Elm.exit75

_ZN14arrow_vendored10fast_float29compute_product_approximationILi55EEENS0_8value128Elm.exit75: ; preds = %bb.z, %bb.y
  %.pn139 = phi i64 [ %i.dm, %bb.z ], [ %i.de, %bb.y ]
  %spec.select.i74.pn = phi i64 [ %spec.select.i74, %bb.z ], [ %i.dg, %bb.y ] ; 3 uses
  %i.dp = lshr i64 %spec.select.i74.pn, 63        ; 2 uses
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = add nuw nsw i64 %i.dp, 9                ; 2 uses
  %i.ds = lshr i64 %spec.select.i74.pn, %i.dr     ; 6 uses
  %i.dt = mul nsw i32 %i.cv, 217706
  %i.du = ashr i32 %i.dt, 16
  %i.dv = add nsw i32 %i.du, 1086
  %i.dw = sub nsw i32 %i.dv, %i.ct
  %i.dx = add nsw i32 %i.dw, %i.dq                ; 3 uses
  %i.dy = icmp slt i32 %i.dx, 1
  br i1 %i.dy, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %_ZN14arrow_vendored10fast_float29compute_product_approximationILi55EEENS0_8value128Elm.exit75
  %i.dz = sub nsw i32 1, %i.dx                    ; 2 uses
  %i.ea = icmp samesign ugt i32 %i.dz, 63
  br i1 %i.ea, label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eb = zext nneg i32 %i.dz to i64
  %i.ec = lshr i64 %i.ds, %i.eb                   ; 2 uses
  %i.ed = and i64 %i.ec, 1
  %i.ee = add nuw nsw i64 %i.ed, %i.ec            ; 2 uses
  %i.ef = lshr i64 %i.ee, 1
  %i.eg = icmp samesign ugt i64 %i.ee, 9007199254740991
  %i.eh = zext i1 %i.eg to i32
  br label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit

bb.ac:                                            ; preds = %_ZN14arrow_vendored10fast_float29compute_product_approximationILi55EEENS0_8value128Elm.exit75
  %i.ei = icmp ugt i64 %.pn139, 1
  %i.ej = add nsw i64 %.pr.pre, -24
  %i.ek = icmp ult i64 %i.ej, -28
  %or.cond126 = select i1 %i.ei, i1 true, i1 %i.ek
  br i1 %or.cond126, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.el = and i64 %i.ds, 3
  %i.em = icmp eq i64 %i.el, 1
  %i.en = shl i64 %i.ds, %i.dr
  %i.eo = icmp eq i64 %i.en, %spec.select.i74.pn
  %or.cond.i = select i1 %i.em, i1 %i.eo, i1 false
  %i.ep = and i64 %i.ds, 72057594037927932
  %spec.select127 = select i1 %or.cond.i, i64 %i.ep, i64 %i.ds
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.087.0 = phi i64 [ %i.ds, %bb.ac ], [ %spec.select127, %bb.ad ] ; 2 uses
  %i.eq = and i64 %.sroa.087.0, 1
  %i.er = add nuw nsw i64 %i.eq, %.sroa.087.0     ; 2 uses
  %i.es = lshr i64 %i.er, 1
  %.not22.i = icmp samesign ugt i64 %i.er, 18014398509481983 ; 2 uses
  %i.et = zext i1 %.not22.i to i32
  %spec.select128 = add nuw nsw i32 %i.dx, %i.et  ; 2 uses
  %i.eu = and i64 %i.es, 9218868437227405311
  %.not23.i = icmp samesign ugt i32 %spec.select128, 2046
  %spec.select133 = tail call i32 @llvm.umin.i32(i32 %spec.select128, i32 2047)
  %.not140 = select i1 %.not23.i, i1 true, i1 %.not22.i
  %spec.select134 = select i1 %.not140, i64 0, i64 %i.eu
  br label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit

_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit: ; preds = %bb.ae, %bb.aa, %bb.x, %bb.w, %bb.ab
  %.sroa.18.1 = phi i32 [ 0, %bb.aa ], [ 0, %bb.w ], [ 2047, %bb.x ], [ %i.eh, %bb.ab ], [ %spec.select133, %bb.ae ]
  %.sroa.087.2 = phi i64 [ 0, %bb.aa ], [ 0, %bb.w ], [ 0, %bb.x ], [ %i.ef, %bb.ab ], [ %spec.select134, %bb.ae ]
  %.not.i79 = icmp ne i64 %.sroa.094.2, %.sroa.087.2
  %i.ev = icmp ne i32 %.sroa.1899.1, %.sroa.18.1
  %i.ew = select i1 %.not.i79, i1 true, i1 %i.ev
  br i1 %i.ew, label %bb.af, label %.thread

bb.af:                                            ; preds = %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit
  %i.ex = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre.pre, i1 true) ; 2 uses
  %i.ey = trunc nuw nsw i64 %i.ex to i32
  %i.ez = shl i64 %.pre.pre, %i.ex                ; 2 uses
  %i.fa = trunc i64 %.pr.pre to i32               ; 4 uses
  %i.fb = shl i32 %i.fa, 1                        ; 2 uses
  %i.fc = add i32 %i.fb, 684
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr @_ZN14arrow_vendored10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 16, !tbaa !57
  %i.fg = zext i64 %i.ez to i128
  %i.fh = zext i64 %i.ff to i128
  %i.fi = mul nuw i128 %i.fh, %i.fg               ; 2 uses
  %i.fj = lshr i128 %i.fi, 64
  %i.fk = trunc nuw i128 %i.fj to i64             ; 3 uses
  %i.fl = and i64 %i.fk, 511
  %i.fm = icmp eq i64 %i.fl, 511
  br i1 %i.fm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fn = trunc i128 %i.fi to i64
  %i.fo = add i32 %i.fb, 685
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr @_ZN14arrow_vendored10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !57
  %i.fs = tail call i64 @llvm.umulh.i64(i64 %i.ez, i64 %i.fr)
  %i.ft = xor i64 %i.fs, -1
  %i.fu = icmp ugt i64 %i.fn, %i.ft
  %i.fv = zext i1 %i.fu to i64
  %spec.select.i61 = add nuw i64 %i.fv, %i.fk
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %spec.select.i61.pn = phi i64 [ %spec.select.i61, %bb.ag ], [ %i.fk, %bb.af ] ; 2 uses
  %i.fw = lshr i64 %spec.select.i61.pn, 63        ; 2 uses
  %i.fx = trunc nuw nsw i64 %i.fw to i32
  %i.fy = xor i64 %i.fw, 1
  %i.fz = shl i64 %spec.select.i61.pn, %i.fy      ; 2 uses
  %i.ga = mul nsw i32 %i.fa, 217706
  %i.gb = ashr i32 %i.ga, 16
  %reass.sub.neg = sub nsw i32 %i.fx, %i.ey
  %i.gc = add nsw i32 %reass.sub.neg, %i.gb       ; 3 uses
  %i.gd = add nsw i32 %i.gc, -31693
  %i.ge = icmp slt i32 %i.gc, 31693
  br i1 %i.ge, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.gf = icmp ugt i64 %.pre.pre, 9999
  br i1 %i.gf, label %.lr.ph.i, label %.preheader18.i

.preheader18.i:                                   ; preds = %.lr.ph.i, %bb.ai
  %.011.i.lcssa.i = phi i64 [ %.pre.pre, %bb.ai ], [ %i.gh, %.lr.ph.i ] ; 3 uses
  %.0.i.lcssa.i = phi i32 [ %i.fa, %bb.ai ], [ %i.gi, %.lr.ph.i ] ; 2 uses
  %i.gg = icmp samesign ugt i64 %.011.i.lcssa.i, 99
  br i1 %i.gg, label %.lr.ph24.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.ai, %.lr.ph.i
  %.0.i20.i = phi i32 [ %i.gi, %.lr.ph.i ], [ %i.fa, %bb.ai ]
  %.011.i19.i = phi i64 [ %i.gh, %.lr.ph.i ], [ %.pre.pre, %bb.ai ] ; 2 uses
  %i.gh = udiv i64 %.011.i19.i, 10000             ; 2 uses
  %i.gi = add nsw i32 %.0.i20.i, 4                ; 2 uses
  %i.gj = icmp ugt i64 %.011.i19.i, 99999999
  br i1 %i.gj, label %.lr.ph.i, label %.preheader18.i, !llvm.loop !13

.preheader.i:                                     ; preds = %.lr.ph24.i, %.preheader18.i
  %.112.i.lcssa.i = phi i64 [ %.011.i.lcssa.i, %.preheader18.i ], [ %i.gl, %.lr.ph24.i ] ; 2 uses
  %.1.i.lcssa.i = phi i32 [ %.0.i.lcssa.i, %.preheader18.i ], [ %i.gm, %.lr.ph24.i ] ; 2 uses
  %i.gk = icmp samesign ugt i64 %.112.i.lcssa.i, 9
  br i1 %i.gk, label %.lr.ph29.i, label %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i

.lr.ph24.i:                                       ; preds = %.preheader18.i, %.lr.ph24.i
  %.1.i23.i = phi i32 [ %i.gm, %.lr.ph24.i ], [ %.0.i.lcssa.i, %.preheader18.i ]
  %.112.i22.i = phi i64 [ %i.gl, %.lr.ph24.i ], [ %.011.i.lcssa.i, %.preheader18.i ] ; 2 uses
  %i.gl = udiv i64 %.112.i22.i, 100               ; 2 uses
  %i.gm = add nsw i32 %.1.i23.i, 2                ; 2 uses
  %i.gn = icmp samesign ugt i64 %.112.i22.i, 9999
  br i1 %i.gn, label %.lr.ph24.i, label %.preheader.i, !llvm.loop !14

.lr.ph29.i:                                       ; preds = %.preheader.i, %.lr.ph29.i
  %.2.i28.i = phi i32 [ %i.gp, %.lr.ph29.i ], [ %.1.i.lcssa.i, %.preheader.i ]
  %.213.i27.i = phi i64 [ %i.go, %.lr.ph29.i ], [ %.112.i.lcssa.i, %.preheader.i ] ; 2 uses
  %i.go = udiv i64 %.213.i27.i, 10
  %i.gp = add nsw i32 %.2.i28.i, 1                ; 2 uses
  %i.gq = icmp samesign ugt i64 %.213.i27.i, 99
  br i1 %i.gq, label %.lr.ph29.i, label %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i, !llvm.loop !15

_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i: ; preds = %.lr.ph29.i, %.preheader.i
  %.2.i.lcssa.i = phi i32 [ %.1.i.lcssa.i, %.preheader.i ], [ %i.gp, %.lr.ph29.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %2, i8 0, i64 504, i1 false)
  call void @_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %2, ptr noundef nonnull align 8 dereferenceable(68) %0, i64 noundef 769, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  %i.gr = add nsw i32 %.2.i.lcssa.i, 1
  %i.gs = load i64, ptr %i.a, align 8, !tbaa !57
  %i.gt = trunc i64 %i.gs to i32
  %i.gu = sub i32 %i.gr, %i.gt                    ; 3 uses
  %i.gv = icmp sgt i32 %i.gu, -1
  br i1 %i.gv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i
  %i.gw = call { i64, i32 } @_ZN14arrow_vendored10fast_float19positive_digit_compIdEENS0_17adjusted_mantissaERNS0_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %2, i32 noundef %i.gu) #19
  br label %_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit

bb.ak:                                            ; preds = %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i
  %i.gx = add nsw i32 %i.gc, 1075
  %i.gy = call { i64, i32 } @_ZN14arrow_vendored10fast_float19negative_digit_compIdEENS0_17adjusted_mantissaERNS0_6bigintES2_i(ptr noundef nonnull align 8 dereferenceable(504) %2, i64 %i.fz, i32 %i.gx, i32 noundef %i.gu) #19
  br label %_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit

_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit: ; preds = %bb.aj, %bb.ak
  %.pn.i = phi { i64, i32 } [ %i.gw, %bb.aj ], [ %i.gy, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.fca.0.extract = extractvalue { i64, i32 } %.pn.i, 0
  %.fca.1.extract = extractvalue { i64, i32 } %.pn.i, 1
  %.pre156 = load i64, ptr %i.ai, align 8, !tbaa !65
  br label %.thread

.thread:                                          ; preds = %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit, %bb.ah, %_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit
  %i.gz = phi i64 [ %.pre156, %_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit ], [ %.pre.pre, %bb.ah ], [ %.pre.pre, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit ], [ %.pre.pre, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60 ]
  %.sroa.9.1 = phi i32 [ %.fca.1.extract, %_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit ], [ %i.gd, %bb.ah ], [ %.sroa.1899.1, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit ], [ %.sroa.1899.1, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60 ] ; 3 uses
  %.sroa.080.1 = phi i64 [ %.fca.0.extract, %_ZN14arrow_vendored10fast_float10digit_compIdcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit ], [ %i.fz, %bb.ah ], [ %.sroa.094.2, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit ], [ %.sroa.094.2, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaElm.exit60 ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hb = load i8, ptr %i.ha, align 8, !tbaa !66, !range !55, !noundef !56
  %i.hc = zext nneg i8 %i.hb to i64
  %i.hd = zext i32 %.sroa.9.1 to i64
  %i.he = shl i64 %i.hd, 52
  %i.hf = shl nuw i64 %i.hc, 63
  %i.hg = or i64 %i.he, %i.hf
  %i.hh = or i64 %i.hg, %.sroa.080.1
  store i64 %i.hh, ptr %1, align 8, !tbaa !73
  %i.hi = icmp ne i64 %i.gz, 0
  %i.hj = icmp eq i64 %.sroa.080.1, 0
  %or.cond5 = select i1 %i.hi, i1 %i.hj, i1 false
  %i.hk = icmp eq i32 %.sroa.9.1, 0
  %or.cond8 = select i1 %or.cond5, i1 %i.hk, i1 false
  %i.hl = icmp eq i32 %.sroa.9.1, 2047
  %or.cond130 = select i1 %or.cond8, i1 true, i1 %i.hl
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
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !139

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = icmp ult i16 %i.g, 62
  br i1 %i.aa, label %bb.e, label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  store i64 %i.t, ptr %i.ab, align 8, !tbaa !57
  %i.ac = add nuw nsw i16 %i.g, 1
  store i16 %i.ac, ptr %i.f, align 8, !tbaa !68
  br label %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i

_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i: ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c, %bb.b
  %.not9.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not9.i.i.i, label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit, label %bb.f

bb.f:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !68 ; 3 uses
  %i.af = zext i16 %i.ae to i64                   ; 3 uses
  %i.ag = add nuw nsw i64 %i.d, %i.af
  %i.ah = icmp samesign ult i64 %i.ag, 63
  %i.ai = icmp ne i16 %i.ae, 0
  %or.cond.not.i.i.i.i = and i1 %i.ai, %i.ah
  br i1 %or.cond.not.i.i.i.i, label %bb.g, label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit

bb.g:                                             ; preds = %bb.f
  %.idx12.i.i.i.i = shl nuw nsw i64 %i.d, 3       ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx12.i.i.i.i ; 2 uses
  %i.ak = icmp ugt i16 %i.ae, 1
  br i1 %i.ak, label %bb.h, label %bb.i, !prof !71

bb.h:                                             ; preds = %bb.g
  %.idx.i.i.i.i = shl nuw nsw i64 %i.af, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 dereferenceable(504) %0, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i = load i16, ptr %i.ad, align 8, !tbaa !68
  br label %_ZN14arrow_vendored10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.af
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = load i64, ptr %0, align 8, !tbaa !57
  store i64 %i.an, ptr %i.am, align 8, !tbaa !57
  br label %_ZN14arrow_vendored10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i

_ZN14arrow_vendored10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i: ; preds = %bb.i, %bb.h
  %i.ao = phi i16 [ %.pre.i.i.i, %bb.h ], [ 1, %bb.i ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 dereferenceable(504) %0, i8 0, i64 %.idx12.i.i.i.i, i1 false), !tbaa !57
  %i.ap = trunc nuw i64 %i.d to i16
  %i.aq = add i16 %i.ao, %i.ap
  store i16 %i.aq, ptr %i.ad, align 8, !tbaa !68
  br label %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit

_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit: ; preds = %bb.f, %_ZN14arrow_vendored10fast_float6bigint8shl_bitsEm.exit.thread.i.i.i, %_ZN14arrow_vendored10fast_float6bigint9shl_limbsEm.exit.thread.i.i.i, %bb.a, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !68 ; 4 uses
  %i.at = zext i16 %i.as to i64                   ; 5 uses
  switch i16 %i.as, label %bb.k [
    i16 0, label %_ZNK14arrow_vendored10fast_float6bigint10bit_lengthEv.exit
    i16 1, label %bb.j
  ]

bb.j:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit
  %i.au = getelementptr i8, ptr %0, i64 -8
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %i.at
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !57 ; 2 uses
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true) ; 2 uses
  %i.ay = shl i64 %i.aw, %i.ax
  br label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread

bb.k:                                             ; preds = %_ZN14arrow_vendored10fast_float6bigint5pow10Ej.exit
  %i.az = getelementptr i8, ptr %0, i64 -8
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.at
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !57 ; 3 uses
  %i.bc = getelementptr i8, ptr %0, i64 -16
  %i.bd = getelementptr [8 x i8], ptr %i.bc, i64 %i.at
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !57 ; 3 uses
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 true) ; 5 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = shl i64 %i.be, %i.bf
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.be, i64 %i.bf)
  br label %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i

_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i: ; preds = %bb.l, %bb.k
  %.in.in.i = phi i64 [ %i.bh, %bb.l ], [ %i.be, %bb.k ] ; 2 uses
  %.0.i.i = phi i64 [ %i.bi, %bb.l ], [ %i.bb, %bb.k ] ; 2 uses
  %.in.i = icmp ne i64 %.in.in.i, 0
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %0, i64 %i.at
  %i.bj = icmp ugt i16 %i.as, 2
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread

.lr.ph.i.i:                                       ; preds = %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.bm, %.lr.ph.i.i ], [ 2, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ] ; 2 uses
  %i.bk = xor i64 %.05.i.i, -1
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.bk
  %i.bl = load i64, ptr %gep.i.i, align 8, !tbaa !57 ; 2 uses
  %.not.not.i.i.not = icmp ne i64 %i.bl, 0
  %i.bm = add nuw nsw i64 %.05.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bm, %i.at
  %or.cond = select i1 %.not.not.i.i.not, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond, label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit, label %.lr.ph.i.i, !llvm.loop !17

_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit: ; preds = %.lr.ph.i.i
  %i.bn = or i64 %i.bl, %.in.in.i
  %i.bo = icmp ne i64 %i.bn, 0
  br label %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread

_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit.thread: ; preds = %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit, %bb.j, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i
  %.pre-phi = phi i64 [ %i.bf, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit ], [ %i.ax, %bb.j ], [ %i.bf, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ]
  %.0.i431 = phi i64 [ %.0.i.i, %_ZNK14arrow_vendored10fast_float6bigint4hi64ERb.exit ], [ %i.ay, %bb.j ], [ %.0.i.i, %_ZN14arrow_vendored10fast_float11uint64_hi64EmmRb.exit.i ]
end_hunk_1
