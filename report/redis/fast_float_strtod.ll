inline.NumInlined: 299
inline.NumDeleted: 99
begin_hunk_0_@_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE:bb.a
  %.sroa.5.1 = phi i32 [ %.sroa.5.0, %bb.ah ], [ 22, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.017.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.5.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN10fast_float6detail12parse_infnanIdcEENS_19from_chars_result_tIT0_EEPKS3_S6_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !13
  %i.b = icmp eq i8 %i.a, 45                      ; 3 uses
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 2 uses
  %i.c = load i8, ptr %spec.select, align 1, !tbaa !13
  %i.d = icmp eq i8 %i.c, 43
  %.1.idx = zext i1 %i.d to i64
  %.1 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.1.idx ; 9 uses
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %.1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp sgt i64 %i.g, 2
  br i1 %i.h, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = load i8, ptr %.1, align 1, !tbaa !13     ; 2 uses
  %i.j = xor i8 %i.i, 78
  %i.k = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13    ; 2 uses
  %i.m = xor i8 %i.l, 65
  %i.n = or i8 %i.m, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13    ; 2 uses
  %i.q = xor i8 %i.p, 78
  %i.r = or i8 %i.q, %i.n
  %i.s = and i8 %i.r, -33
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.b, label %.lr.ph.i46.preheader

.lr.ph.i46.preheader:                             ; preds = %.lr.ph.i.preheader
  %i.u = xor i8 %i.i, 73
  %i.v = xor i8 %i.l, 78
  %i.w = or i8 %i.v, %i.u
  %i.x = xor i8 %i.p, 70
  %i.y = or i8 %i.x, %i.w
  %i.z = and i8 %i.y, -33
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.f, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.i.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 6 uses
  %i.ac = select i1 %i.b, double -qnan, double +qnan
  store double %i.ac, ptr %2, align 8, !tbaa !8
  %.not = icmp eq ptr %i.ab, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !13
  %i.ae = icmp ne i8 %i.ad, 40
  %i.af = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 4 uses
  %.not4361 = icmp eq ptr %i.af, %1
  %or.cond64 = select i1 %i.ae, i1 true, i1 %.not4361
  br i1 %or.cond64, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13  ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 41
  br i1 %i.ah, label %.lr.ph._crit_edge, label %.lr.ph80

.lr.ph._crit_edge:                                ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.062.lcssa = phi ptr [ %i.af, %.lr.ph.preheader ], [ %.062.be, %.lr.ph.backedge ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.062.lcssa, i64 1
  br label %.loopexit

.lr.ph80:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %i.aj = phi i8 [ %i.ap, %.lr.ph.backedge ], [ %i.ag, %.lr.ph.preheader ] ; 3 uses
  %.06279 = phi ptr [ %.062.be, %.lr.ph.backedge ], [ %i.af, %.lr.ph.preheader ] ; 2 uses
  %i.ak = and i8 %i.aj, -33
  %i.al = add i8 %i.ak, -65
  %or.cond57 = icmp ult i8 %i.al, 26
  br i1 %or.cond57, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph80
  %i.am = add i8 %i.aj, -58
  %or.cond45 = icmp ult i8 %i.am, -10
  %i.an = icmp ne i8 %i.aj, 95
  %or.cond56.not67 = and i1 %i.an, %or.cond45
  %i.ao = getelementptr inbounds nuw i8, ptr %.06279, i64 1 ; 2 uses
  %.not43 = icmp eq ptr %i.ao, %1
  %or.cond65 = select i1 %or.cond56.not67, i1 true, i1 %.not43
  br i1 %or.cond65, label %.loopexit, label %.lr.ph.backedge

bb.e:                                             ; preds = %.lr.ph80
  %.old = getelementptr inbounds nuw i8, ptr %.06279, i64 1 ; 2 uses
  %.not43.old = icmp eq ptr %.old, %1
  br i1 %.not43.old, label %.loopexit, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.e, %bb.d
  %.062.be = phi ptr [ %.old, %bb.e ], [ %i.ao, %bb.d ] ; 3 uses
  %i.ap = load i8, ptr %.062.be, align 1, !tbaa !13 ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 41
  br i1 %i.aq, label %.lr.ph._crit_edge, label %.lr.ph80, !llvm.loop !29

bb.f:                                             ; preds = %.lr.ph.i46.preheader
  %i.ar = icmp samesign ugt i64 %i.g, 7
  br i1 %i.ar, label %.lr.ph.i51, label %bb.g

.lr.ph.i51:                                       ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.at = load <4 x i8>, ptr %i.as, align 1, !tbaa !13
  %i.au = xor <4 x i8> %i.at, <i8 73, i8 78, i8 73, i8 84>
  %i.av = getelementptr inbounds nuw i8, ptr %.1, i64 7
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13
  %i.ax = xor i8 %i.aw, 89
  %i.ay = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.au)
  %op.rdx = or i8 %i.ay, %i.ax
  %i.az = and i8 %op.rdx, -33
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i51, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.i51, %bb.g
  %.sink = phi i64 [ 3, %bb.g ], [ 8, %.lr.ph.i51 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.1, i64 %.sink
  %i.bc = select i1 %i.b, double -inf, double +inf
  store double %i.bc, ptr %2, align 8, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.a, %.lr.ph.i46.preheader, %bb.b, %bb.c, %.lr.ph._crit_edge, %bb.h
  %.sroa.7.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.h ], [ 0, %.lr.ph._crit_edge ], [ 22, %.lr.ph.i46.preheader ], [ 22, %bb.a ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ]
  %.sroa.0.3 = phi ptr [ %i.ab, %bb.b ], [ %i.bb, %bb.h ], [ %i.ai, %.lr.ph._crit_edge ], [ %0, %.lr.ph.i46.preheader ], [ %0, %bb.a ], [ %i.ab, %bb.c ], [ %i.ab, %bb.d ], [ %i.ab, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"struct.fast_float::bigint", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = load i64, ptr %0, align 8, !tbaa !34     ; 16 uses
  %.not = icmp slt i64 %i.d, -22
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not75 = icmp sgt i64 %i.d, 22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.f = load i8, ptr %i.e, align 2, !range !35
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond80 = select i1 %.not75, i1 true, i1 %i.g
  br i1 %or.cond80, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load volatile float, ptr @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !36 ; 2 uses
  %i.i = fadd float %i.h, 1.000000e+00
  %i.j = fsub float 1.000000e+00, %i.h
  %i.k = fcmp oeq float %i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !38   ; 2 uses
  %.not77 = icmp ugt i64 %i.m, 9007199254740992
  br i1 %.not77, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = uitofp nneg i64 %i.m to double           ; 2 uses
  %i.o = icmp slt i64 %i.d, 0
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !8
  %i.s = fdiv double %i.n, %i.r
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %i.d
  %i.u = load double, ptr %i.t, align 8, !tbaa !8
  %i.v = fmul double %i.u, %i.n
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi double [ %i.v, %bb.g ], [ %i.s, %bb.f ] ; 2 uses
  store double %storemerge, ptr %1, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i8, ptr %i.w, align 8, !tbaa !39, !range !35, !noundef !40
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.i, label %bb.aj

bb.i:                                             ; preds = %bb.h
  %i.z = fneg double %storemerge
  store double %i.z, ptr %1, align 8, !tbaa !8
  br label %bb.aj

bb.j:                                             ; preds = %bb.c
  %i.aa = icmp sgt i64 %i.d, -1
  br i1 %i.aa, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !38 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE12max_mantissaE, i64 %i.d
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !25
  %.not76 = icmp ugt i64 %i.ac, %i.ae
  br i1 %.not76, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = icmp eq i64 %i.ac, 0
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !39, !range !35, !noundef !40
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = select i1 %i.ai, double -0.000000e+00, double 0.000000e+00
  store double %i.aj, ptr %1, align 8, !tbaa !8
  br label %bb.aj

bb.n:                                             ; preds = %bb.l
  %i.ak = uitofp i64 %i.ac to double
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %i.d
  %i.am = load double, ptr %i.al, align 8, !tbaa !8
  %i.an = fmul double %i.am, %i.ak                ; 2 uses
  store double %i.an, ptr %1, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !39, !range !35, !noundef !40
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.o, label %bb.aj

bb.o:                                             ; preds = %bb.n
  %i.ar = fneg double %i.an
  store double %i.ar, ptr %1, align 8, !tbaa !8
  br label %bb.aj

bb.p:                                             ; preds = %bb.d, %bb.k, %bb.j, %bb.b, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !38 ; 9 uses
  %i.au = icmp eq i64 %i.at, 0                    ; 2 uses
  %i.av = icmp slt i64 %i.d, -342                 ; 2 uses
  %or.cond163 = or i1 %i.av, %i.au
  br i1 %or.cond163, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit92, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = icmp sgt i64 %i.d, 308
  br i1 %i.aw, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit92, label %.noexc101

.noexc101:                                        ; preds = %bb.q
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 true) ; 2 uses
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = shl i64 %i.at, %i.ax
  %i.ba = trunc nsw i64 %i.d to i32               ; 2 uses
  %i.bb = shl nsw i32 %i.ba, 1
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.bc ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 5472
  %i.bf = load i64, ptr %i.be, align 16, !tbaa !25
  %i.bg = zext i64 %i.az to i128                  ; 2 uses
  %i.bh = zext i64 %i.bf to i128
  %i.bi = mul nuw i128 %i.bh, %i.bg               ; 2 uses
  %i.bj = trunc i128 %i.bi to i64                 ; 2 uses
  %i.bk = lshr i128 %i.bi, 64
  %i.bl = trunc nuw i128 %i.bk to i64             ; 3 uses
  %i.bm = and i64 %i.bl, 511
  %i.bn = icmp eq i64 %i.bm, 511
  br i1 %i.bn, label %.noexc102, label %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit103

.noexc102:                                        ; preds = %.noexc101
  %i.bo = getelementptr i8, ptr %i.bd, i64 5480
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !25
  %i.bq = zext i64 %i.bp to i128
  %i.br = mul nuw i128 %i.bq, %i.bg
  %i.bs = lshr i128 %i.br, 64
  %i.bt = trunc nuw i128 %i.bs to i64             ; 2 uses
  %i.bu = add i64 %i.bt, %i.bj                    ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bt
  %i.bw = zext i1 %i.bv to i64
  %spec.select.i100 = add nuw i64 %i.bw, %i.bl
  br label %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit103

_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit103: ; preds = %.noexc102, %.noexc101
  %.pn181 = phi i64 [ %i.bu, %.noexc102 ], [ %i.bj, %.noexc101 ]
  %spec.select.i100.pn = phi i64 [ %spec.select.i100, %.noexc102 ], [ %i.bl, %.noexc101 ] ; 3 uses
  %i.bx = lshr i64 %spec.select.i100.pn, 63       ; 2 uses
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = add nuw nsw i64 %i.bx, 9                ; 2 uses
  %i.ca = lshr i64 %spec.select.i100.pn, %i.bz    ; 6 uses
  %i.cb = mul nsw i32 %i.ba, 217706
  %i.cc = ashr i32 %i.cb, 16
  %i.cd = add nsw i32 %i.cc, 1086
  %i.ce = sub nsw i32 %i.cd, %i.ay
  %i.cf = add nsw i32 %i.ce, %i.by                ; 3 uses
  %i.cg = icmp slt i32 %i.cf, 1
  br i1 %i.cg, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit103
  %i.ch = sub nsw i32 1, %i.cf                    ; 2 uses
  %i.ci = icmp samesign ugt i32 %i.ch, 63
  br i1 %i.ci, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit92, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = zext nneg i32 %i.ch to i64
  %i.ck = lshr i64 %i.ca, %i.cj                   ; 2 uses
  %i.cl = and i64 %i.ck, 1
  %i.cm = add nuw nsw i64 %i.cl, %i.ck            ; 2 uses
  %i.cn = lshr i64 %i.cm, 1
  %i.co = icmp samesign ugt i64 %i.cm, 9007199254740991
  %i.cp = zext i1 %i.co to i32
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit92

bb.t:                                             ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit103
  %i.cq = icmp ugt i64 %.pn181, 1
  %i.cr = add nsw i64 %i.d, -24
  %i.cs = icmp ult i64 %i.cr, -28
  %or.cond165 = or i1 %i.cs, %i.cq
  br i1 %or.cond165, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = and i64 %i.ca, 3
  %i.cu = icmp eq i64 %i.ct, 1
  %i.cv = shl i64 %i.ca, %i.bz
  %i.cw = icmp eq i64 %i.cv, %spec.select.i100.pn
  %or.cond.i90 = select i1 %i.cu, i1 %i.cw, i1 false
  %i.cx = and i64 %i.ca, 72057594037927932
  %spec.select = select i1 %or.cond.i90, i64 %i.cx, i64 %i.ca
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.0139.0 = phi i64 [ %i.ca, %bb.t ], [ %spec.select, %bb.u ] ; 2 uses
  %i.cy = and i64 %.sroa.0139.0, 1
  %i.cz = add nuw nsw i64 %i.cy, %.sroa.0139.0    ; 2 uses
  %i.da = lshr i64 %i.cz, 1
  %.not22.i81 = icmp samesign ugt i64 %i.cz, 18014398509481983 ; 2 uses
  %i.db = zext i1 %.not22.i81 to i32
  %spec.select167 = add nuw nsw i32 %i.cf, %i.db  ; 2 uses
  %i.dc = and i64 %i.da, 9218868437227405311
  %.not23.i82 = icmp samesign ugt i32 %spec.select167, 2046 ; 2 uses
  %.not182 = select i1 %.not23.i82, i1 true, i1 %.not22.i81
  %spec.select175 = select i1 %.not182, i64 0, i64 %i.dc
  %spec.select176 = select i1 %.not23.i82, i32 2047, i32 %spec.select167
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit92

_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit92: ; preds = %bb.v, %bb.r, %bb.q, %bb.p, %bb.s
  %.sroa.0139.2 = phi i64 [ 0, %bb.r ], [ 0, %bb.p ], [ 0, %bb.q ], [ %i.cn, %bb.s ], [ %spec.select175, %bb.v ] ; 3 uses
  %.sroa.18144.1 = phi i32 [ 0, %bb.r ], [ 0, %bb.p ], [ 2047, %bb.q ], [ %i.cp, %bb.s ], [ %spec.select176, %bb.v ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.de = load i8, ptr %i.dd, align 2, !tbaa !41, !range !35, !noundef !40
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.w, label %.thread

bb.w:                                             ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit92
  %i.dg = add i64 %i.at, 1                        ; 3 uses
  %i.dh = icmp eq i64 %i.dg, 0
  %or.cond168 = or i1 %i.av, %i.dh
  br i1 %or.cond168, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = icmp sgt i64 %i.d, 308
  br i1 %i.di, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %.noexc106

.noexc106:                                        ; preds = %bb.x
  %i.dj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dg, i1 true) ; 2 uses
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl i64 %i.dg, %i.dj
  %i.dm = trunc nsw i64 %i.d to i32               ; 2 uses
  %i.dn = shl nsw i32 %i.dm, 1
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.do ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 5472
  %i.dr = load i64, ptr %i.dq, align 16, !tbaa !25
  %i.ds = zext i64 %i.dl to i128                  ; 2 uses
  %i.dt = zext i64 %i.dr to i128
  %i.du = mul nuw i128 %i.dt, %i.ds               ; 2 uses
  %i.dv = trunc i128 %i.du to i64                 ; 2 uses
  %i.dw = lshr i128 %i.du, 64
  %i.dx = trunc nuw i128 %i.dw to i64             ; 3 uses
  %i.dy = and i64 %i.dx, 511
  %i.dz = icmp eq i64 %i.dy, 511
  br i1 %i.dz, label %.noexc107, label %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit108

.noexc107:                                        ; preds = %.noexc106
  %i.ea = getelementptr i8, ptr %i.dp, i64 5480
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !25
  %i.ec = zext i64 %i.eb to i128
  %i.ed = mul nuw i128 %i.ec, %i.ds
  %i.ee = lshr i128 %i.ed, 64
  %i.ef = trunc nuw i128 %i.ee to i64             ; 2 uses
  %i.eg = add i64 %i.ef, %i.dv                    ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %i.ef
  %i.ei = zext i1 %i.eh to i64
  %spec.select.i105 = add nuw i64 %i.ei, %i.dx
  br label %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit108

_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit108: ; preds = %.noexc107, %.noexc106
  %.pn184 = phi i64 [ %i.eg, %.noexc107 ], [ %i.dv, %.noexc106 ]
  %spec.select.i105.pn = phi i64 [ %spec.select.i105, %.noexc107 ], [ %i.dx, %.noexc106 ] ; 3 uses
  %i.ej = lshr i64 %spec.select.i105.pn, 63       ; 2 uses
  %i.ek = trunc nuw nsw i64 %i.ej to i32
  %i.el = add nuw nsw i64 %i.ej, 9                ; 2 uses
  %i.em = lshr i64 %spec.select.i105.pn, %i.el    ; 6 uses
  %i.en = mul nsw i32 %i.dm, 217706
  %i.eo = ashr i32 %i.en, 16
  %i.ep = add nsw i32 %i.eo, 1086
  %i.eq = sub nsw i32 %i.ep, %i.dk
  %i.er = add nsw i32 %i.eq, %i.ek                ; 3 uses
  %i.es = icmp slt i32 %i.er, 1
  br i1 %i.es, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit108
  %i.et = sub nsw i32 1, %i.er                    ; 2 uses
  %i.eu = icmp samesign ugt i32 %i.et, 63
  br i1 %i.eu, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ev = zext nneg i32 %i.et to i64
  %i.ew = lshr i64 %i.em, %i.ev                   ; 2 uses
  %i.ex = and i64 %i.ew, 1
  %i.ey = add nuw nsw i64 %i.ex, %i.ew            ; 2 uses
  %i.ez = lshr i64 %i.ey, 1
  %i.fa = icmp samesign ugt i64 %i.ey, 9007199254740991
  %i.fb = zext i1 %i.fa to i32
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

bb.aa:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit108
  %i.fc = icmp ugt i64 %.pn184, 1
  %i.fd = add nsw i64 %i.d, -24
  %i.fe = icmp ult i64 %i.fd, -28
  %or.cond170 = or i1 %i.fe, %i.fc
  br i1 %or.cond170, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ff = and i64 %i.em, 3
  %i.fg = icmp eq i64 %i.ff, 1
  %i.fh = shl i64 %i.em, %i.el
  %i.fi = icmp eq i64 %i.fh, %spec.select.i105.pn
  %or.cond.i = select i1 %i.fg, i1 %i.fi, i1 false
  %i.fj = and i64 %i.em, 72057594037927932
  %spec.select171 = select i1 %or.cond.i, i64 %i.fj, i64 %i.em
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.0132.0 = phi i64 [ %i.em, %bb.aa ], [ %spec.select171, %bb.ab ] ; 2 uses
  %i.fk = and i64 %.sroa.0132.0, 1
  %i.fl = add nuw nsw i64 %i.fk, %.sroa.0132.0    ; 2 uses
  %i.fm = lshr i64 %i.fl, 1
  %.not22.i = icmp samesign ugt i64 %i.fl, 18014398509481983 ; 2 uses
  %i.fn = zext i1 %.not22.i to i32
  %spec.select173 = add nuw nsw i32 %i.er, %i.fn  ; 2 uses
  %i.fo = and i64 %i.fm, 9218868437227405311
  %.not23.i = icmp samesign ugt i32 %spec.select173, 2046 ; 2 uses
  %.not185 = select i1 %.not23.i, i1 true, i1 %.not22.i
  %spec.select177 = select i1 %.not185, i64 0, i64 %i.fo
  %spec.select178 = select i1 %.not23.i, i32 2047, i32 %spec.select173
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.ac, %bb.y, %bb.x, %bb.w, %bb.z
  %.sroa.0132.2 = phi i64 [ 0, %bb.y ], [ 0, %bb.w ], [ 0, %bb.x ], [ %i.ez, %bb.z ], [ %spec.select177, %bb.ac ]
  %.sroa.18.1 = phi i32 [ 0, %bb.y ], [ 0, %bb.w ], [ 2047, %bb.x ], [ %i.fb, %bb.z ], [ %spec.select178, %bb.ac ]
  %.not.i124 = icmp ne i64 %.sroa.0139.2, %.sroa.0132.2
  %i.fp = icmp ne i32 %.sroa.18144.1, %.sroa.18.1
  %i.fq = select i1 %.not.i124, i1 true, i1 %i.fp
  br i1 %i.fq, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit
  br i1 %i.au, label %bb.ae, label %.noexc

bb.ae:                                            ; preds = %bb.ad
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 370, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN10fast_float14leading_zeroesEm) #13
  unreachable

.noexc:                                           ; preds = %bb.ad
  %i.fr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 true) ; 2 uses
  %i.fs = trunc nuw nsw i64 %i.fr to i32
  %i.ft = shl i64 %i.at, %i.fr
  %i.fu = trunc i64 %i.d to i32                   ; 4 uses
  %i.fv = shl i32 %i.fu, 1                        ; 2 uses
  %i.fw = add i32 %i.fv, 684
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 16, !tbaa !25
  %i.ga = zext i64 %i.ft to i128                  ; 2 uses
  %i.gb = zext i64 %i.fz to i128
  %i.gc = mul nuw i128 %i.gb, %i.ga               ; 2 uses
  %i.gd = lshr i128 %i.gc, 64
  %i.ge = trunc nuw i128 %i.gd to i64             ; 3 uses
  %i.gf = and i64 %i.ge, 511
  %i.gg = icmp eq i64 %i.gf, 511
  br i1 %i.gg, label %.noexc98, label %bb.af

.noexc98:                                         ; preds = %.noexc
  %i.gh = trunc i128 %i.gc to i64
  %i.gi = add i32 %i.fv, 685
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !25
  %i.gm = zext i64 %i.gl to i128
  %i.gn = mul nuw i128 %i.gm, %i.ga
  %i.go = lshr i128 %i.gn, 64
  %i.gp = trunc nuw i128 %i.go to i64
  %i.gq = xor i64 %i.gp, -1
  %i.gr = icmp ult i64 %i.gq, %i.gh
  %i.gs = zext i1 %i.gr to i64
  %spec.select.i = add nuw i64 %i.gs, %i.ge
  br label %bb.af

bb.af:                                            ; preds = %.noexc, %.noexc98
  %spec.select.i.pn = phi i64 [ %spec.select.i, %.noexc98 ], [ %i.ge, %.noexc ] ; 2 uses
  %i.gt = lshr i64 %spec.select.i.pn, 63          ; 2 uses
  %i.gu = trunc nuw nsw i64 %i.gt to i32
  %i.gv = xor i64 %i.gt, 1
  %i.gw = shl i64 %spec.select.i.pn, %i.gv        ; 2 uses
  %i.gx = mul nsw i32 %i.fu, 217706
  %i.gy = ashr i32 %i.gx, 16
  %reass.sub.neg = sub nsw i32 %i.gu, %i.fs
  %i.gz = add nsw i32 %reass.sub.neg, %i.gy       ; 3 uses
  %i.ha = add nsw i32 %i.gz, -31693
  %i.hb = icmp slt i32 %i.gz, 31693
  br i1 %i.hb, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.hc = icmp ugt i64 %i.at, 9999
  br i1 %i.hc, label %.lr.ph.i, label %.preheader18.i

.preheader18.i:                                   ; preds = %.lr.ph.i, %bb.ag
  %.011.i.lcssa.i = phi i64 [ %i.at, %bb.ag ], [ %i.he, %.lr.ph.i ] ; 3 uses
  %.0.i.lcssa.i = phi i32 [ %i.fu, %bb.ag ], [ %i.hf, %.lr.ph.i ] ; 2 uses
  %i.hd = icmp samesign ugt i64 %.011.i.lcssa.i, 99
  br i1 %i.hd, label %.lr.ph24.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.ag, %.lr.ph.i
  %.0.i20.i = phi i32 [ %i.hf, %.lr.ph.i ], [ %i.fu, %bb.ag ]
  %.011.i19.i = phi i64 [ %i.he, %.lr.ph.i ], [ %i.at, %bb.ag ] ; 2 uses
  %i.he = udiv i64 %.011.i19.i, 10000             ; 2 uses
  %i.hf = add nsw i32 %.0.i20.i, 4                ; 2 uses
  %i.hg = icmp ugt i64 %.011.i19.i, 99999999
  br i1 %i.hg, label %.lr.ph.i, label %.preheader18.i, !llvm.loop !42

.preheader.i:                                     ; preds = %.lr.ph24.i, %.preheader18.i
  %.112.i.lcssa.i = phi i64 [ %.011.i.lcssa.i, %.preheader18.i ], [ %i.hi, %.lr.ph24.i ] ; 2 uses
  %.1.i.lcssa.i = phi i32 [ %.0.i.lcssa.i, %.preheader18.i ], [ %i.hj, %.lr.ph24.i ] ; 2 uses
  %i.hh = icmp samesign ugt i64 %.112.i.lcssa.i, 9
  br i1 %i.hh, label %.lr.ph29.i, label %_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i

.lr.ph24.i:                                       ; preds = %.preheader18.i, %.lr.ph24.i
  %.1.i23.i = phi i32 [ %i.hj, %.lr.ph24.i ], [ %.0.i.lcssa.i, %.preheader18.i ]
  %.112.i22.i = phi i64 [ %i.hi, %.lr.ph24.i ], [ %.011.i.lcssa.i, %.preheader18.i ] ; 2 uses
  %i.hi = udiv i64 %.112.i22.i, 100               ; 2 uses
  %i.hj = add nsw i32 %.1.i23.i, 2                ; 2 uses
  %i.hk = icmp samesign ugt i64 %.112.i22.i, 9999
  br i1 %i.hk, label %.lr.ph24.i, label %.preheader.i, !llvm.loop !43

.lr.ph29.i:                                       ; preds = %.preheader.i, %.lr.ph29.i
  %.2.i28.i = phi i32 [ %i.hm, %.lr.ph29.i ], [ %.1.i.lcssa.i, %.preheader.i ]
  %.213.i27.i = phi i64 [ %i.hl, %.lr.ph29.i ], [ %.112.i.lcssa.i, %.preheader.i ] ; 2 uses
  %i.hl = udiv i64 %.213.i27.i, 10
  %i.hm = add nsw i32 %.2.i28.i, 1                ; 2 uses
  %i.hn = icmp samesign ugt i64 %.213.i27.i, 99
  br i1 %i.hn, label %.lr.ph29.i, label %_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i, !llvm.loop !44

_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i: ; preds = %.lr.ph29.i, %.preheader.i
  %.2.i.lcssa.i = phi i32 [ %.1.i.lcssa.i, %.preheader.i ], [ %i.hm, %.lr.ph29.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %2, i8 0, i64 504, i1 false)
  call void @_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %2, ptr noundef nonnull align 8 dereferenceable(68) %0, i64 noundef 769, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #10
  %i.ho = add nsw i32 %.2.i.lcssa.i, 1
  %i.hp = load i64, ptr %i.a, align 8, !tbaa !25
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = sub i32 %i.ho, %i.hq                    ; 3 uses
  %i.hs = icmp sgt i32 %i.hr, -1
  br i1 %i.hs, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i
  %i.ht = call { i64, i32 } @_ZN10fast_float19positive_digit_compIdEENS_17adjusted_mantissaERNS_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %2, i32 noundef %i.hr) #10
  br label %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit

bb.ai:                                            ; preds = %_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i
  %i.hu = add nsw i32 %i.gz, 1075
  %i.hv = call { i64, i32 } @_ZN10fast_float19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES1_i(ptr noundef nonnull align 8 dereferenceable(504) %2, i64 %i.gw, i32 %i.hu, i32 noundef %i.hr) #10
  br label %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit

_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit: ; preds = %bb.ah, %bb.ai
  %.pn.i = phi { i64, i32 } [ %i.ht, %bb.ah ], [ %i.hv, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.fca.0.extract = extractvalue { i64, i32 } %.pn.i, 0
  %.fca.1.extract = extractvalue { i64, i32 } %.pn.i, 1
  br label %.thread

.thread:                                          ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit92, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, %bb.af, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit
  %.sroa.9.1 = phi i32 [ %.fca.1.extract, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.ha, %bb.af ], [ %.sroa.18144.1, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ %.sroa.18144.1, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit92 ] ; 3 uses
  %.sroa.0125.1 = phi i64 [ %.fca.0.extract, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.gw, %bb.af ], [ %.sroa.0139.2, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ %.sroa.0139.2, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit92 ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hx = load i8, ptr %i.hw, align 8, !tbaa !39, !range !35, !noundef !40
  %i.hy = zext nneg i8 %i.hx to i64
  %i.hz = zext i32 %.sroa.9.1 to i64
  %i.ia = shl i64 %i.hz, 52
  %i.ib = shl nuw i64 %i.hy, 63
  %i.ic = or i64 %i.ia, %i.ib
  %i.id = or i64 %i.ic, %.sroa.0125.1
  store i64 %i.id, ptr %1, align 8
  %i.ie = load i64, ptr %i.as, align 8, !tbaa !38
  %i.if = icmp ne i64 %i.ie, 0
  %i.ig = icmp eq i64 %.sroa.0125.1, 0
  %or.cond5 = select i1 %i.if, i1 %i.ig, i1 false
  %i.ih = icmp eq i32 %.sroa.9.1, 0
  %or.cond8 = select i1 %or.cond5, i1 %i.ih, i1 false
  %i.ii = icmp eq i32 %.sroa.9.1, 2047
  %or.cond174 = select i1 %or.cond8, i1 true, i1 %i.ii
  %spec.select179 = select i1 %or.cond174, i32 34, i32 0
  br label %bb.aj

bb.aj:                                            ; preds = %.thread, %bb.n, %bb.o, %bb.h, %bb.i, %bb.m
  %.sroa.270.1 = phi i32 [ 0, %bb.n ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.m ], [ 0, %bb.o ], [ %spec.select179, %.thread ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.c, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.270.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(68) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  store i64 0, ptr %3, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 9 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 5 uses
  %i.h = icmp sgt i64 %i.e, 7
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.9321 = phi ptr [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %.0.copyload.i73 = load i64, ptr %.9321, align 1
  %.not.i74 = icmp eq i64 %.0.copyload.i73, 3472328296227680304
  br i1 %.not.i74, label %bb.b, label %.lr.ph.._crit_edge.loopexit_crit_edge

.lr.ph.._crit_edge.loopexit_crit_edge:            ; preds = %.lr.ph
  %.pre465 = ptrtoint ptr %.9321 to i64
  br label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.9321, i64 8 ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.g, %i.j
  %i.l = icmp sgt i64 %i.k, 7
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.._crit_edge.loopexit_crit_edge, %bb.a
  %.9.lcssa454.pre-phi = phi i64 [ %i.c, %bb.a ], [ %.pre465, %.lr.ph.._crit_edge.loopexit_crit_edge ], [ %i.j, %bb.b ]
  %.9.lcssa = phi ptr [ %i.b, %bb.a ], [ %.9321, %.lr.ph.._crit_edge.loopexit_crit_edge ], [ %i.i, %bb.b ] ; 3 uses
  %.not8.i71326 = icmp eq ptr %.9.lcssa, %i.f
  br i1 %.not8.i71326, label %._crit_edge358, label %.lr.ph329.preheader

.lr.ph329.preheader:                              ; preds = %._crit_edge
  %i.m = add i64 %i.e, %i.c
  %i.n = sub i64 %i.m, %.9.lcssa454.pre-phi
  %scevgep = getelementptr i8, ptr %.9.lcssa, i64 %i.n
  br label %.lr.ph329

.lr.ph329:                                        ; preds = %.lr.ph329.preheader, %bb.c
  %.10327 = phi ptr [ %i.p, %bb.c ], [ %.9.lcssa, %.lr.ph329.preheader ] ; 3 uses
  %i.o = load i8, ptr %.10327, align 1, !tbaa !13
  %.not9.i72 = icmp eq i8 %i.o, 48
  br i1 %.not9.i72, label %bb.c, label %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit75

bb.c:                                             ; preds = %.lr.ph329
  %i.p = getelementptr inbounds nuw i8, ptr %.10327, i64 1 ; 2 uses
  %.not8.i71 = icmp eq ptr %i.p, %i.f
  br i1 %.not8.i71, label %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit75, label %.lr.ph329, !llvm.loop !48

_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit75:  ; preds = %.lr.ph329, %bb.c
  %.10.lcssa = phi ptr [ %scevgep, %bb.c ], [ %.10327, %.lr.ph329 ] ; 2 uses
  %.not356 = icmp eq ptr %.10.lcssa, %i.f
  br i1 %.not356, label %._crit_edge358, label %.preheader302.lr.ph

.preheader302.lr.ph:                              ; preds = %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit75
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 7 uses
  br label %.preheader302

.preheader302:                                    ; preds = %.preheader302.lr.ph, %_ZN10fast_float6bigint3addEm.exit133
  %.0357 = phi ptr [ %.10.lcssa, %.preheader302.lr.ph ], [ %.2.lcssa, %_ZN10fast_float6bigint3addEm.exit133 ] ; 5 uses
  %.promoted = load i64, ptr %3, align 8          ; 4 uses
  %i.r = ptrtoint ptr %.0357 to i64
  %i.s = sub i64 %i.g, %i.r
  %i.t = icmp sgt i64 %i.s, 7
  %i.u = sub i64 %2, %.promoted
  %i.v = icmp ugt i64 %i.u, 7
  %or.cond755 = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond755, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.preheader302
  %.0.copyload.i.i86 = load i64, ptr %.0357, align 1
  %i.w = add i64 %.0.copyload.i.i86, -3472328296227680304 ; 2 uses
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
  %i.ah = getelementptr inbounds nuw i8, ptr %.0357, i64 8 ; 3 uses
  %i.ai = add i64 %.promoted, 8                   ; 3 uses
  store i64 %i.ai, ptr %3, align 8, !tbaa !25
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.g, %i.aj
  %i.al = icmp sgt i64 %i.ak, 7
  %i.am = sub i64 %2, %i.ai
  %i.an = icmp ugt i64 %i.am, 7
  %or.cond751 = select i1 %i.al, i1 %i.an, i1 false
  br i1 %or.cond751, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ao = mul nuw nsw i64 %i.ag, 100000000
  %.0.copyload.i.i86.1 = load i64, ptr %i.ah, align 1
  %i.ap = add i64 %.0.copyload.i.i86.1, -3472328296227680304 ; 2 uses
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
  %i.bb = getelementptr inbounds nuw i8, ptr %.0357, i64 16
  %i.bc = add i64 %.promoted, 16                  ; 2 uses
  store i64 %i.bc, ptr %3, align 8, !tbaa !25
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e, %.preheader302
  %.promoted344 = phi i64 [ %.promoted, %.preheader302 ], [ %i.ai, %bb.d ], [ %i.bc, %bb.e ] ; 3 uses
  %.1267.lcssa = phi i64 [ 0, %.preheader302 ], [ 8, %bb.d ], [ 16, %bb.e ] ; 2 uses
  %.1260.lcssa = phi i64 [ 0, %.preheader302 ], [ %i.ag, %bb.d ], [ %i.ba, %bb.e ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0357, %.preheader302 ], [ %i.ah, %bb.d ], [ %i.bb, %bb.e ] ; 3 uses
  %.not64345 = icmp ne ptr %.1.lcssa, %i.f
  %i.bd = icmp ult i64 %.promoted344, %2
  %or.cond67347 = select i1 %.not64345, i1 %i.bd, i1 false
  br i1 %or.cond67347, label %.lr.ph351, label %.critedge2

.lr.ph351:                                        ; preds = %.critedge, %.lr.ph351
  %.2350 = phi ptr [ %i.bk, %.lr.ph351 ], [ %.1.lcssa, %.critedge ] ; 2 uses
  %.2261349 = phi i64 [ %i.bj, %.lr.ph351 ], [ %.1260.lcssa, %.critedge ]
  %.2268348 = phi i64 [ %i.bl, %.lr.ph351 ], [ %.1267.lcssa, %.critedge ] ; 2 uses
  %i.be = phi i64 [ %i.bm, %.lr.ph351 ], [ %.promoted344, %.critedge ]
  %i.bf = mul i64 %.2261349, 10
  %i.bg = load i8, ptr %.2350, align 1, !tbaa !13
  %i.bh = sext i8 %i.bg to i64
  %i.bi = add i64 %i.bf, -48
  %i.bj = add i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.2350, i64 1 ; 3 uses
  %i.bl = add nuw nsw i64 %.2268348, 1            ; 2 uses
  %i.bm = add nuw i64 %i.be, 1                    ; 4 uses
  store i64 %i.bm, ptr %3, align 8, !tbaa !25
  %i.bn = icmp samesign ult i64 %.2268348, 18
  %.not64 = icmp ne ptr %i.bk, %i.f
  %or.cond.not291 = select i1 %i.bn, i1 %.not64, i1 false
  %i.bo = icmp ult i64 %i.bm, %2
  %or.cond67 = select i1 %or.cond.not291, i1 %i.bo, i1 false
  br i1 %or.cond67, label %.lr.ph351, label %.critedge2, !llvm.loop !49

.critedge2:                                       ; preds = %.lr.ph351, %.critedge
  %.2268.lcssa = phi i64 [ %.1267.lcssa, %.critedge ], [ %i.bl, %.lr.ph351 ] ; 2 uses
  %.2261.lcssa = phi i64 [ %.1260.lcssa, %.critedge ], [ %i.bj, %.lr.ph351 ] ; 8 uses
  %.2.lcssa = phi ptr [ %.1.lcssa, %.critedge ], [ %i.bk, %.lr.ph351 ] ; 5 uses
  %.lcssa317 = phi i64 [ %.promoted344, %.critedge ], [ %i.bm, %.lr.ph351 ]
  %i.bp = icmp eq i64 %.lcssa317, %2
  %i.bq = load i16, ptr %i.q, align 8, !tbaa !50  ; 12 uses
  %i.br = zext i16 %i.bq to i64                   ; 6 uses
  %.not19.i.i = icmp eq i16 %i.bq, 0              ; 2 uses
  br i1 %i.bp, label %bb.f, label %bb.m

bb.f:                                             ; preds = %.critedge2
  br i1 %.not19.i.i, label %_ZN10fast_float6bigint3mulEm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_floatL20powers_of_ten_uint64E, i64 %.2268.lcssa
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !25
  %i.bu = zext i64 %i.bt to i128                  ; 3 uses
  %xtraiter662 = and i64 %i.br, 1
  %i.bv = icmp eq i16 %i.bq, 1
  br i1 %i.bv, label %.epil.preheader661, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter667 = and i64 %i.br, 65534
  br label %bb.g

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.g
  %lcmp.mod663.not = icmp eq i64 %xtraiter662, 0
  br i1 %lcmp.mod663.not, label %._crit_edge.i.i, label %.epil.preheader661

.epil.preheader661:                               ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.016.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cx, %._crit_edge.i.i.unr-lcssa ]
  %.01215.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cv, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod666 = trunc i16 %i.bq to i1
  tail call void @llvm.assume(i1 %lcmp.mod666)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i.epil.init ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !25
end_hunk_0
