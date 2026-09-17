Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/fast_float_strtod?download=true
inline.NumInlined: 299
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN10fast_float6detail12parse_infnanIdcEENS_19from_chars_result_tIT0_EEPKS3_S6_RT_:bb.a
  %.not = icmp eq ptr %i.ab, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ae = icmp ne i8 %i.ad, 40
  %i.af = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 4 uses
  %.not4361 = icmp eq ptr %i.af, %1
  %or.cond64 = select i1 %i.ae, i1 true, i1 %.not4361
  br i1 %or.cond64, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14  ; 2 uses
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
  %i.ap = load i8, ptr %.062.be, align 1, !tbaa !14 ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 41
  br i1 %i.aq, label %.lr.ph._crit_edge, label %.lr.ph80, !llvm.loop !39

bb.f:                                             ; preds = %.lr.ph.i46.preheader
  %i.ar = icmp samesign ugt i64 %i.g, 7
  br i1 %i.ar, label %.lr.ph.i51, label %bb.g

.lr.ph.i51:                                       ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.at = load <4 x i8>, ptr %i.as, align 1, !tbaa !14
  %i.au = xor <4 x i8> %i.at, <i8 73, i8 78, i8 73, i8 84>
  %i.av = getelementptr inbounds nuw i8, ptr %.1, i64 7
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14
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
  store double %i.bc, ptr %2, align 8, !tbaa !10
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = load i64, ptr %0, align 8, !tbaa !44     ; 15 uses
  %i.e = add i64 %i.d, -23
  %or.cond160 = icmp ult i64 %i.e, -45
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.g = load i8, ptr %i.f, align 2, !range !45
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  %or.cond163 = select i1 %or.cond160, i1 true, i1 %i.h
  br i1 %or.cond163, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load volatile float, ptr @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !47 ; 2 uses
  %i.j = fadd float %i.i, 1.000000e+00
  %i.k = fsub float 1.000000e+00, %i.i
  %i.l = fcmp oeq float %i.j, %i.k
  br i1 %i.l, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !48   ; 2 uses
  %.not77 = icmp ugt i64 %i.n, 9007199254740992
  br i1 %.not77, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = uitofp nneg i64 %i.n to double           ; 2 uses
  %i.p = icmp slt i64 %i.d, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = sub nsw i64 0, %i.d
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !tbaa !10
  %i.t = fdiv double %i.o, %i.s
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %i.d
  %i.v = load double, ptr %i.u, align 8, !tbaa !10
  %i.w = fmul double %i.v, %i.o
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge = phi double [ %i.w, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  store double %storemerge, ptr %1, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i8, ptr %i.x, align 8, !tbaa !49, !range !45, !noundef !50
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.h, label %bb.ai

bb.h:                                             ; preds = %bb.g
  %i.aa = fneg double %storemerge
  store double %i.aa, ptr %1, align 8, !tbaa !10
  br label %bb.ai

bb.i:                                             ; preds = %bb.b
  %i.ab = icmp sgt i64 %i.d, -1
  br i1 %i.ab, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !48 ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE12max_mantissaE, i64 %i.d
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !17
  %.not76 = icmp ugt i64 %i.ad, %i.af
  br i1 %.not76, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !49, !range !45, !noundef !50
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = select i1 %i.aj, double -0.000000e+00, double 0.000000e+00
  store double %i.ak, ptr %1, align 8, !tbaa !10
  br label %bb.ai

bb.m:                                             ; preds = %bb.k
  %i.al = uitofp i64 %i.ad to double
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %i.d
  %i.an = load double, ptr %i.am, align 8, !tbaa !10
  %i.ao = fmul double %i.an, %i.al                ; 2 uses
  store double %i.ao, ptr %1, align 8, !tbaa !10
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !49, !range !45, !noundef !50
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.n, label %bb.ai

bb.n:                                             ; preds = %bb.m
  %i.as = fneg double %i.ao
  store double %i.as, ptr %1, align 8, !tbaa !10
  br label %bb.ai

bb.o:                                             ; preds = %bb.c, %bb.j, %bb.i, %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !48 ; 9 uses
  %i.av = icmp eq i64 %i.au, 0                    ; 2 uses
  %i.aw = icmp slt i64 %i.d, -342                 ; 2 uses
  %or.cond164 = or i1 %i.aw, %i.av
  br i1 %or.cond164, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit89, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = icmp sgt i64 %i.d, 308
  br i1 %i.ax, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit89, label %.noexc98

.noexc98:                                         ; preds = %bb.p
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = shl i64 %i.au, %i.ay                    ; 2 uses
  %i.bb = trunc nsw i64 %i.d to i32               ; 2 uses
  %i.bc = shl nsw i32 %i.bb, 1
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.bd ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 5472
  %i.bg = load i64, ptr %i.bf, align 16, !tbaa !17
  %i.bh = zext i64 %i.ba to i128
  %i.bi = zext i64 %i.bg to i128
  %i.bj = mul nuw i128 %i.bi, %i.bh               ; 2 uses
  %i.bk = trunc i128 %i.bj to i64                 ; 2 uses
  %i.bl = lshr i128 %i.bj, 64
  %i.bm = trunc nuw i128 %i.bl to i64             ; 3 uses
  %i.bn = and i64 %i.bm, 511
  %i.bo = icmp eq i64 %i.bn, 511
  br i1 %i.bo, label %.noexc99, label %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit100

.noexc99:                                         ; preds = %.noexc98
  %i.bp = getelementptr i8, ptr %i.be, i64 5480
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !17
  %3 = tail call i64 @llvm.umulh.i64(i64 %i.ba, i64 %i.bq) ; 2 uses
  %i.br = add i64 %3, %i.bk                       ; 2 uses
  %4 = icmp ugt i64 %3, %i.br
  %i.bs = zext i1 %4 to i64
  %spec.select.i97 = add nuw i64 %i.bs, %i.bm
  br label %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit100

_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit100: ; preds = %.noexc99, %.noexc98
  %.pn182 = phi i64 [ %i.br, %.noexc99 ], [ %i.bk, %.noexc98 ]
  %spec.select.i97.pn = phi i64 [ %spec.select.i97, %.noexc99 ], [ %i.bm, %.noexc98 ] ; 3 uses
  %i.bt = lshr i64 %spec.select.i97.pn, 63        ; 2 uses
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = add nuw nsw i64 %i.bt, 9                ; 2 uses
  %i.bw = lshr i64 %spec.select.i97.pn, %i.bv     ; 6 uses
  %i.bx = mul nsw i32 %i.bb, 217706
  %i.by = ashr i32 %i.bx, 16
  %i.bz = add nsw i32 %i.by, 1086
  %i.ca = sub nsw i32 %i.bz, %i.az
  %i.cb = add nsw i32 %i.ca, %i.bu                ; 3 uses
  %i.cc = icmp slt i32 %i.cb, 1
  br i1 %i.cc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit100
  %i.cd = sub nsw i32 1, %i.cb                    ; 2 uses
  %i.ce = icmp samesign ugt i32 %i.cd, 63
  br i1 %i.ce, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit89, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = zext nneg i32 %i.cd to i64
  %i.cg = lshr i64 %i.bw, %i.cf                   ; 2 uses
  %i.ch = and i64 %i.cg, 1
  %i.ci = add nuw nsw i64 %i.ch, %i.cg            ; 2 uses
  %i.cj = lshr i64 %i.ci, 1
  %i.ck = icmp samesign ugt i64 %i.ci, 9007199254740991
  %i.cl = zext i1 %i.ck to i32
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit89

bb.s:                                             ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit100
  %i.cm = icmp ugt i64 %.pn182, 1
  %i.cn = add nsw i64 %i.d, -24
  %i.co = icmp ult i64 %i.cn, -28
  %or.cond166 = or i1 %i.co, %i.cm
  br i1 %or.cond166, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = and i64 %i.bw, 3
  %i.cq = icmp eq i64 %i.cp, 1
  %i.cr = shl i64 %i.bw, %i.bv
  %i.cs = icmp eq i64 %i.cr, %spec.select.i97.pn
  %or.cond.i87 = select i1 %i.cq, i1 %i.cs, i1 false
  %i.ct = and i64 %i.bw, 72057594037927932
  %spec.select = select i1 %or.cond.i87, i64 %i.ct, i64 %i.bw
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.0136.0 = phi i64 [ %i.bw, %bb.s ], [ %spec.select, %bb.t ] ; 2 uses
  %i.cu = and i64 %.sroa.0136.0, 1
  %i.cv = add nuw nsw i64 %i.cu, %.sroa.0136.0    ; 2 uses
  %i.cw = lshr i64 %i.cv, 1
  %.not22.i78 = icmp samesign ugt i64 %i.cv, 18014398509481983 ; 2 uses
  %i.cx = zext i1 %.not22.i78 to i32
  %spec.select168 = add nuw nsw i32 %i.cb, %i.cx  ; 2 uses
  %i.cy = and i64 %i.cw, 9218868437227405311
  %.not23.i79 = icmp samesign ugt i32 %spec.select168, 2046 ; 2 uses
  %.not = select i1 %.not23.i79, i1 true, i1 %.not22.i78
  %spec.select176 = select i1 %.not, i64 0, i64 %i.cy
  %spec.select177 = select i1 %.not23.i79, i32 2047, i32 %spec.select168
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit89

_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit89: ; preds = %bb.u, %bb.q, %bb.p, %bb.o, %bb.r
  %.sroa.0136.2 = phi i64 [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %bb.p ], [ %i.cj, %bb.r ], [ %spec.select176, %bb.u ] ; 3 uses
  %.sroa.18141.1 = phi i32 [ 0, %bb.q ], [ 0, %bb.o ], [ 2047, %bb.p ], [ %i.cl, %bb.r ], [ %spec.select177, %bb.u ] ; 3 uses
  br i1 %i.h, label %bb.v, label %.thread

bb.v:                                             ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit89
  %i.cz = add i64 %i.au, 1                        ; 3 uses
  %i.da = icmp eq i64 %i.cz, 0
  %or.cond169 = or i1 %i.aw, %i.da
  br i1 %or.cond169, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = icmp sgt i64 %i.d, 308
  br i1 %i.db, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %.noexc103

.noexc103:                                        ; preds = %bb.w
  %i.dc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cz, i1 true) ; 2 uses
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = shl i64 %i.cz, %i.dc                    ; 2 uses
  %i.df = trunc nsw i64 %i.d to i32               ; 2 uses
  %i.dg = shl nsw i32 %i.df, 1
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.dh ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 5472
  %i.dk = load i64, ptr %i.dj, align 16, !tbaa !17
  %i.dl = zext i64 %i.de to i128
  %i.dm = zext i64 %i.dk to i128
  %i.dn = mul nuw i128 %i.dm, %i.dl               ; 2 uses
  %i.do = trunc i128 %i.dn to i64                 ; 2 uses
  %i.dp = lshr i128 %i.dn, 64
  %i.dq = trunc nuw i128 %i.dp to i64             ; 3 uses
  %i.dr = and i64 %i.dq, 511
  %i.ds = icmp eq i64 %i.dr, 511
  br i1 %i.ds, label %.noexc104, label %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit105

.noexc104:                                        ; preds = %.noexc103
  %i.dt = getelementptr i8, ptr %i.di, i64 5480
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !17
  %5 = tail call i64 @llvm.umulh.i64(i64 %i.de, i64 %i.du) ; 2 uses
  %i.dv = add i64 %5, %i.do                       ; 2 uses
  %6 = icmp ugt i64 %5, %i.dv
  %i.dw = zext i1 %6 to i64
  %spec.select.i102 = add nuw i64 %i.dw, %i.dq
  br label %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit105

_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit105: ; preds = %.noexc104, %.noexc103
  %.pn184 = phi i64 [ %i.dv, %.noexc104 ], [ %i.do, %.noexc103 ]
  %spec.select.i102.pn = phi i64 [ %spec.select.i102, %.noexc104 ], [ %i.dq, %.noexc103 ] ; 3 uses
  %i.dx = lshr i64 %spec.select.i102.pn, 63       ; 2 uses
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nuw nsw i64 %i.dx, 9                ; 2 uses
  %i.ea = lshr i64 %spec.select.i102.pn, %i.dz    ; 6 uses
  %i.eb = mul nsw i32 %i.df, 217706
  %i.ec = ashr i32 %i.eb, 16
  %i.ed = add nsw i32 %i.ec, 1086
  %i.ee = sub nsw i32 %i.ed, %i.dd
  %i.ef = add nsw i32 %i.ee, %i.dy                ; 3 uses
  %i.eg = icmp slt i32 %i.ef, 1
  br i1 %i.eg, label %bb.x, label %bb.z

bb.x:                                             ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit105
  %i.eh = sub nsw i32 1, %i.ef                    ; 2 uses
  %i.ei = icmp samesign ugt i32 %i.eh, 63
  br i1 %i.ei, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = zext nneg i32 %i.eh to i64
  %i.ek = lshr i64 %i.ea, %i.ej                   ; 2 uses
  %i.el = and i64 %i.ek, 1
  %i.em = add nuw nsw i64 %i.el, %i.ek            ; 2 uses
  %i.en = lshr i64 %i.em, 1
  %i.eo = icmp samesign ugt i64 %i.em, 9007199254740991
  %i.ep = zext i1 %i.eo to i32
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

bb.z:                                             ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit105
  %i.eq = icmp ugt i64 %.pn184, 1
  %i.er = add nsw i64 %i.d, -24
  %i.es = icmp ult i64 %i.er, -28
  %or.cond171 = or i1 %i.es, %i.eq
  br i1 %or.cond171, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.et = and i64 %i.ea, 3
  %i.eu = icmp eq i64 %i.et, 1
  %i.ev = shl i64 %i.ea, %i.dz
  %i.ew = icmp eq i64 %i.ev, %spec.select.i102.pn
  %or.cond.i = select i1 %i.eu, i1 %i.ew, i1 false
  %i.ex = and i64 %i.ea, 72057594037927932
  %spec.select172 = select i1 %or.cond.i, i64 %i.ex, i64 %i.ea
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.0129.0 = phi i64 [ %i.ea, %bb.z ], [ %spec.select172, %bb.aa ] ; 2 uses
  %i.ey = and i64 %.sroa.0129.0, 1
  %i.ez = add nuw nsw i64 %i.ey, %.sroa.0129.0    ; 2 uses
  %i.fa = lshr i64 %i.ez, 1
  %.not22.i = icmp samesign ugt i64 %i.ez, 18014398509481983 ; 2 uses
  %i.fb = zext i1 %.not22.i to i32
  %spec.select173 = add nuw nsw i32 %i.ef, %i.fb  ; 2 uses
  %i.fc = and i64 %i.fa, 9218868437227405311
  %.not23.i = icmp samesign ugt i32 %spec.select173, 2046
  %spec.select178 = tail call i32 @llvm.umin.i32(i32 %spec.select173, i32 2047)
  %.not185 = select i1 %.not23.i, i1 true, i1 %.not22.i
  %spec.select179 = select i1 %.not185, i64 0, i64 %i.fc
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.ab, %bb.x, %bb.w, %bb.v, %bb.y
  %.sroa.18.1 = phi i32 [ 0, %bb.x ], [ 0, %bb.v ], [ 2047, %bb.w ], [ %i.ep, %bb.y ], [ %spec.select178, %bb.ab ]
  %.sroa.0129.2 = phi i64 [ 0, %bb.x ], [ 0, %bb.v ], [ 0, %bb.w ], [ %i.en, %bb.y ], [ %spec.select179, %bb.ab ]
  %.not.i121 = icmp ne i64 %.sroa.0136.2, %.sroa.0129.2
  %i.fd = icmp ne i32 %.sroa.18141.1, %.sroa.18.1
  %i.fe = select i1 %.not.i121, i1 true, i1 %i.fd
  br i1 %i.fe, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit
  br i1 %i.av, label %bb.ad, label %.noexc

bb.ad:                                            ; preds = %bb.ac
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 370, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN10fast_float14leading_zeroesEm) #13
  unreachable

.noexc:                                           ; preds = %bb.ac
  %i.ff = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 true) ; 2 uses
  %i.fg = trunc nuw nsw i64 %i.ff to i32
  %i.fh = shl i64 %i.au, %i.ff                    ; 2 uses
  %i.fi = trunc i64 %i.d to i32                   ; 4 uses
  %i.fj = shl i32 %i.fi, 1                        ; 2 uses
  %i.fk = add i32 %i.fj, 684
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 16, !tbaa !17
  %i.fo = zext i64 %i.fh to i128
  %i.fp = zext i64 %i.fn to i128
  %i.fq = mul nuw i128 %i.fp, %i.fo               ; 2 uses
  %i.fr = lshr i128 %i.fq, 64
  %i.fs = trunc nuw i128 %i.fr to i64             ; 3 uses
  %i.ft = and i64 %i.fs, 511
  %i.fu = icmp eq i64 %i.ft, 511
  br i1 %i.fu, label %.noexc95, label %bb.ae

.noexc95:                                         ; preds = %.noexc
  %i.fv = trunc i128 %i.fq to i64
  %i.fw = add i32 %i.fj, 685
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !17
  %7 = tail call i64 @llvm.umulh.i64(i64 %i.fh, i64 %i.fz)
  %i.ga = xor i64 %7, -1
  %8 = icmp ugt i64 %i.fv, %i.ga
  %i.gb = zext i1 %8 to i64
  %spec.select.i = add nuw i64 %i.gb, %i.fs
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc, %.noexc95
  %spec.select.i.pn = phi i64 [ %spec.select.i, %.noexc95 ], [ %i.fs, %.noexc ] ; 2 uses
  %i.gc = lshr i64 %spec.select.i.pn, 63          ; 2 uses
  %i.gd = trunc nuw nsw i64 %i.gc to i32
  %i.ge = xor i64 %i.gc, 1
  %i.gf = shl i64 %spec.select.i.pn, %i.ge        ; 2 uses
  %i.gg = mul nsw i32 %i.fi, 217706
  %i.gh = ashr i32 %i.gg, 16
  %reass.sub.neg = sub nsw i32 %i.gd, %i.fg
  %i.gi = add nsw i32 %reass.sub.neg, %i.gh       ; 3 uses
  %i.gj = add nsw i32 %i.gi, -31693
  %i.gk = icmp slt i32 %i.gi, 31693
  br i1 %i.gk, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.gl = icmp ugt i64 %i.au, 9999
  br i1 %i.gl, label %.lr.ph.i, label %.preheader18.i

.preheader18.i:                                   ; preds = %.lr.ph.i, %bb.af
  %.011.i.lcssa.i = phi i64 [ %i.au, %bb.af ], [ %i.gn, %.lr.ph.i ] ; 3 uses
  %.0.i.lcssa.i = phi i32 [ %i.fi, %bb.af ], [ %i.go, %.lr.ph.i ] ; 2 uses
  %i.gm = icmp samesign ugt i64 %.011.i.lcssa.i, 99
  br i1 %i.gm, label %.lr.ph24.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.af, %.lr.ph.i
  %.0.i20.i = phi i32 [ %i.go, %.lr.ph.i ], [ %i.fi, %bb.af ]
  %.011.i19.i = phi i64 [ %i.gn, %.lr.ph.i ], [ %i.au, %bb.af ] ; 2 uses
  %i.gn = udiv i64 %.011.i19.i, 10000             ; 2 uses
  %i.go = add nsw i32 %.0.i20.i, 4                ; 2 uses
  %i.gp = icmp ugt i64 %.011.i19.i, 99999999
  br i1 %i.gp, label %.lr.ph.i, label %.preheader18.i, !llvm.loop !40

.preheader.i:                                     ; preds = %.lr.ph24.i, %.preheader18.i
  %.112.i.lcssa.i = phi i64 [ %.011.i.lcssa.i, %.preheader18.i ], [ %i.gr, %.lr.ph24.i ] ; 2 uses
  %.1.i.lcssa.i = phi i32 [ %.0.i.lcssa.i, %.preheader18.i ], [ %i.gs, %.lr.ph24.i ] ; 2 uses
  %i.gq = icmp samesign ugt i64 %.112.i.lcssa.i, 9
  br i1 %i.gq, label %.lr.ph29.i, label %_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i

.lr.ph24.i:                                       ; preds = %.preheader18.i, %.lr.ph24.i
  %.1.i23.i = phi i32 [ %i.gs, %.lr.ph24.i ], [ %.0.i.lcssa.i, %.preheader18.i ]
  %.112.i22.i = phi i64 [ %i.gr, %.lr.ph24.i ], [ %.011.i.lcssa.i, %.preheader18.i ] ; 2 uses
  %i.gr = udiv i64 %.112.i22.i, 100               ; 2 uses
  %i.gs = add nsw i32 %.1.i23.i, 2                ; 2 uses
  %i.gt = icmp samesign ugt i64 %.112.i22.i, 9999
  br i1 %i.gt, label %.lr.ph24.i, label %.preheader.i, !llvm.loop !41

.lr.ph29.i:                                       ; preds = %.preheader.i, %.lr.ph29.i
  %.2.i28.i = phi i32 [ %i.gv, %.lr.ph29.i ], [ %.1.i.lcssa.i, %.preheader.i ]
  %.213.i27.i = phi i64 [ %i.gu, %.lr.ph29.i ], [ %.112.i.lcssa.i, %.preheader.i ] ; 2 uses
  %i.gu = udiv i64 %.213.i27.i, 10
  %i.gv = add nsw i32 %.2.i28.i, 1                ; 2 uses
  %i.gw = icmp samesign ugt i64 %.213.i27.i, 99
  br i1 %i.gw, label %.lr.ph29.i, label %_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i, !llvm.loop !42

_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i: ; preds = %.lr.ph29.i, %.preheader.i
  %.2.i.lcssa.i = phi i32 [ %.1.i.lcssa.i, %.preheader.i ], [ %i.gv, %.lr.ph29.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %2, i8 0, i64 504, i1 false)
  call void @_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %2, ptr noundef nonnull align 8 dereferenceable(68) %0, i64 noundef 769, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #10
  %i.gx = add nsw i32 %.2.i.lcssa.i, 1
  %i.gy = load i64, ptr %i.a, align 8, !tbaa !17
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = sub i32 %i.gx, %i.gz                    ; 3 uses
  %i.hb = icmp sgt i32 %i.ha, -1
  br i1 %i.hb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i
  %i.hc = call { i64, i32 } @_ZN10fast_float19positive_digit_compIdEENS_17adjusted_mantissaERNS_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %2, i32 noundef %i.ha) #10
  br label %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit

bb.ah:                                            ; preds = %_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i
  %i.hd = add nsw i32 %i.gi, 1075
  %i.he = call { i64, i32 } @_ZN10fast_float19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES1_i(ptr noundef nonnull align 8 dereferenceable(504) %2, i64 %i.gf, i32 %i.hd, i32 noundef %i.ha) #10
  br label %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit

_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit: ; preds = %bb.ag, %bb.ah
  %.pn.i = phi { i64, i32 } [ %i.hc, %bb.ag ], [ %i.he, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.fca.0.extract = extractvalue { i64, i32 } %.pn.i, 0
  %.fca.1.extract = extractvalue { i64, i32 } %.pn.i, 1
  br label %.thread

.thread:                                          ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit89, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, %bb.ae, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit
  %.sroa.9.1 = phi i32 [ %.fca.1.extract, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.gj, %bb.ae ], [ %.sroa.18141.1, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ %.sroa.18141.1, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit89 ] ; 3 uses
  %.sroa.0122.1 = phi i64 [ %.fca.0.extract, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.gf, %bb.ae ], [ %.sroa.0136.2, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ %.sroa.0136.2, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit89 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hg = load i8, ptr %i.hf, align 8, !tbaa !49, !range !45, !noundef !50
  %i.hh = zext nneg i8 %i.hg to i64
  %i.hi = zext i32 %.sroa.9.1 to i64
  %i.hj = shl i64 %i.hi, 52
  %i.hk = shl nuw i64 %i.hh, 63
  %i.hl = or i64 %i.hj, %i.hk
  %i.hm = or i64 %i.hl, %.sroa.0122.1
  store i64 %i.hm, ptr %1, align 8
  %i.hn = load i64, ptr %i.at, align 8, !tbaa !48
  %i.ho = icmp ne i64 %i.hn, 0
  %i.hp = icmp eq i64 %.sroa.0122.1, 0
  %or.cond5 = select i1 %i.ho, i1 %i.hp, i1 false
  %i.hq = icmp eq i32 %.sroa.9.1, 0
  %or.cond8 = select i1 %or.cond5, i1 %i.hq, i1 false
  %i.hr = icmp eq i32 %.sroa.9.1, 2047
  %or.cond175 = select i1 %or.cond8, i1 true, i1 %i.hr
  %spec.select180 = select i1 %or.cond175, i32 34, i32 0
  br label %bb.ai

bb.ai:                                            ; preds = %.thread, %bb.m, %bb.n, %bb.g, %bb.h, %bb.l
  %.sroa.270.1 = phi i32 [ 0, %bb.m ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.l ], [ 0, %bb.n ], [ %spec.select180, %.thread ]
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
  store i64 0, ptr %3, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 4 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !61   ; 3 uses
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
  br i1 %i.l, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !51

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
  %i.o = load i8, ptr %.10317, align 1, !tbaa !14
  %.not9.i68 = icmp eq i8 %i.o, 48
  br i1 %.not9.i68, label %bb.c, label %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit71

bb.c:                                             ; preds = %.lr.ph319
  %i.p = getelementptr inbounds nuw i8, ptr %.10317, i64 1 ; 2 uses
  %.not8.i67 = icmp eq ptr %i.p, %i.f
  br i1 %.not8.i67, label %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit71, label %.lr.ph319, !llvm.loop !52

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
  %.pre.pre = load i64, ptr %3, align 8, !tbaa !17 ; 4 uses
  %i.u = sub i64 %2, %.pre.pre
  %i.v = icmp ugt i64 %i.u, 7
  %or.cond695 = select i1 %i.t, i1 %i.v, i1 false
end_hunk_0
begin_hunk_1_@_ZN10fast_float8long_mulILt62EEEbRNS_8stackvecIXT_EEENS_4spanImEE:bb.a
  %lcmp.mod122 = trunc i16 %i.av to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us.epil.init ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !17
  %i.bt = zext i64 %i.bs to i128
  %i.bu = mul nuw i128 %i.bt, %i.ax
  %i.bv = zext i64 %.01215.i39.us.epil.init to i128
  %i.bw = add nuw i128 %i.bu, %i.bv               ; 2 uses
  %i.bx = lshr i128 %i.bw, 64                     ; 2 uses
  %i.by = trunc nuw i128 %i.bx to i64
  %i.bz = trunc i128 %i.bw to i64
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !17
  br label %._crit_edge.i41.us

._crit_edge.i41.us:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.epil.preheader117
  %.lcssa108 = phi i128 [ %i.bn, %._crit_edge.i41.us.unr-lcssa ], [ %i.bx, %.epil.preheader117 ]
  %.lcssa = phi i64 [ %i.bo, %._crit_edge.i41.us.unr-lcssa ], [ %i.by, %.epil.preheader117 ]
  %.not.i42.us = icmp eq i128 %.lcssa108, 0
  br i1 %.not.i42.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i41.us
  %i.ca = icmp ult i16 %i.av, 62
  br i1 %i.ca, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us: ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aw
  store i64 %.lcssa, ptr %i.cb, align 8, !tbaa !17
  %i.cc = add nuw nsw i16 %i.av, 1
  br label %bb.n

bb.n:                                             ; preds = %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, %._crit_edge.i41.us, %bb.k
  %i.cd = phi i16 [ %i.cc, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us ], [ %i.av, %._crit_edge.i41.us ], [ 0, %bb.k ] ; 2 uses
  %i.ce = zext i16 %i.cd to i64                   ; 4 uses
  %i.cf = zext i16 %i.ar to i64                   ; 5 uses
  %i.cg = icmp ugt i64 %.02769.us, %i.cf
  %i.ch = sub nsw i64 %i.cf, %.02769.us
  %i.ci = icmp ult i64 %i.ch, %i.ce
  %or.cond.i.us = select i1 %i.cg, i1 true, i1 %i.ci
  br i1 %or.cond.i.us, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cj = add i64 %.02769.us, %i.ce               ; 4 uses
  %i.ck = icmp ult i64 %i.cj, 63
  br i1 %i.ck, label %bb.p, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

bb.p:                                             ; preds = %bb.o
  %i.cl = icmp samesign ugt i64 %i.cj, %i.cf
  br i1 %i.cl, label %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, label %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us: ; preds = %bb.p
  %i.cm = getelementptr [8 x i8], ptr %0, i64 %i.cf
  %i.cn = sub nuw nsw i64 %i.cj, %i.cf
  %i.co = shl nuw nsw i64 %i.cn, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cm, i8 0, i64 %i.co, i1 false), !tbaa !17
  br label %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us: ; preds = %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, %bb.p
  %storemerge.i.i.i.us = trunc nuw nsw i64 %i.cj to i16 ; 2 uses
  store i16 %storemerge.i.i.i.us, ptr %i.a, align 8, !tbaa !24
  br label %bb.q

bb.q:                                             ; preds = %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us, %bb.n
  %i.cp = phi i16 [ %i.ar, %bb.n ], [ %storemerge.i.i.i.us, %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us ] ; 6 uses
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %0, i64 %.02769.us
  %.not.i46.us = icmp eq i16 %i.cd, 0
  br i1 %.not.i46.us, label %.critedge.us, label %.lr.ph.i47.us

.lr.ph.i47.us:                                    ; preds = %bb.q, %bb.s
  %.02335.i.us = phi i64 [ %i.da, %bb.s ], [ 0, %bb.q ] ; 3 uses
  %.02434.i.us = phi i1 [ %.031.in.i.us, %bb.s ], [ false, %bb.q ]
  %gep.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %.02335.i.us ; 2 uses
  %i.cq = load i64, ptr %gep.i.us, align 8, !tbaa !17
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.02335.i.us
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !17
  %i.ct = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cq, i64 %i.cs) ; 2 uses
  %i.cu = extractvalue { i64, i1 } %i.ct, 1       ; 2 uses
  %i.cv = extractvalue { i64, i1 } %i.ct, 0       ; 2 uses
  br i1 %.02434.i.us, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i47.us
  %i.cw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cv, i64 1) ; 2 uses
  %i.cx = extractvalue { i64, i1 } %i.cw, 1
  %i.cy = extractvalue { i64, i1 } %i.cw, 0
  %i.cz = or i1 %i.cu, %i.cx
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i47.us
  %.031.in.i.us = phi i1 [ %i.cz, %bb.r ], [ %i.cu, %.lr.ph.i47.us ] ; 2 uses
  %.0.i.us = phi i64 [ %i.cy, %bb.r ], [ %i.cv, %.lr.ph.i47.us ]
  store i64 %.0.i.us, ptr %gep.i.us, align 8, !tbaa !17
  %i.da = add nuw nsw i64 %.02335.i.us, 1         ; 2 uses
  %exitcond.not.i48.us = icmp eq i64 %i.da, %i.ce
  br i1 %exitcond.not.i48.us, label %._crit_edge.i49.us, label %.lr.ph.i47.us, !llvm.loop !75

._crit_edge.i49.us:                               ; preds = %bb.s
  br i1 %.031.in.i.us, label %bb.t, label %.critedge.us

bb.t:                                             ; preds = %._crit_edge.i49.us
  %i.db = add i64 %.02769.us, %i.ce               ; 3 uses
  %i.dc = zext i16 %i.cp to i64                   ; 3 uses
  %umax.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.db, i64 %i.dc)
  %exitcond.not.i.i.us105.not = icmp ult i64 %i.db, %i.dc
  br i1 %exitcond.not.i.i.us105.not, label %.lr.ph107, label %.critedge.i.i.us

bb.u:                                             ; preds = %.lr.ph107
  %i.dd = add i64 %.01421.i.i.us106, 1            ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.dd, %umax.i.i.us
  br i1 %exitcond.not.i.i.us, label %.critedge.i.i.us, label %.lr.ph107, !llvm.loop !76

.lr.ph107:                                        ; preds = %bb.t, %bb.u
  %.01421.i.i.us106 = phi i64 [ %i.dd, %bb.u ], [ %i.db, %bb.t ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i.us106 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !17
  %i.dg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.df, i64 1) ; 2 uses
  %i.dh = extractvalue { i64, i1 } %i.dg, 1
  %i.di = extractvalue { i64, i1 } %i.dg, 0
  store i64 %i.di, ptr %i.de, align 8, !tbaa !17
  br i1 %i.dh, label %bb.u, label %.critedge.us, !llvm.loop !76

.critedge.i.i.us:                                 ; preds = %bb.u, %bb.t
  %i.dj = icmp ult i16 %i.cp, 62
  br i1 %i.dj, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us: ; preds = %.critedge.i.i.us
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dc
  store i64 1, ptr %i.dk, align 8, !tbaa !17
  %i.dl = add nuw nsw i16 %i.cp, 1                ; 2 uses
  store i16 %i.dl, ptr %i.a, align 8, !tbaa !24
  br label %.critedge.us

.critedge.us:                                     ; preds = %.lr.ph107, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, %._crit_edge.i49.us, %bb.q, %.lr.ph.split.us
  %i.dm = phi i16 [ %i.ar, %.lr.ph.split.us ], [ %i.dl, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us ], [ %i.cp, %._crit_edge.i49.us ], [ %i.cp, %bb.q ], [ %i.cp, %.lr.ph107 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.dn = add nuw i64 %.02769.us, 1               ; 2 uses
  %exitcond75.not = icmp eq i64 %i.dn, %2
  br i1 %exitcond75.not, label %.critedge34, label %.lr.ph.split.us, !llvm.loop !77

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge
  %.02769 = phi i64 [ %i.dq, %.critedge ], [ 1, %.lr.ph ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02769
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %.not29 = icmp eq i64 %i.dp, 0
  br i1 %.not29, label %.critedge, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

.critedge:                                        ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.dq = add nuw i64 %.02769, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %2
  br i1 %exitcond.not, label %.critedge34, label %.lr.ph.split, !llvm.loop !77

_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit: ; preds = %.lr.ph.split, %bb.m, %bb.o, %.critedge.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %.critedge32

.critedge34:                                      ; preds = %.critedge, %.critedge.us, %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit, %_ZN10fast_float8stackvecILt62EEC2ENS_4spanImEE.exit
  %.promoted.i = phi i16 [ %i.dm, %.critedge.us ], [ %i.b, %_ZN10fast_float8stackvecILt62EEC2ENS_4spanImEE.exit ], [ %i.ao, %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit ], [ %i.ao, %.critedge ] ; 2 uses
  %.not1.i = icmp eq i16 %.promoted.i, 0
  br i1 %.not1.i, label %.critedge32, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.critedge34
  %i.dr = getelementptr i8, ptr %0, i64 -8
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i50
  %i.ds = phi i16 [ %.promoted.i, %.lr.ph.i50 ], [ %i.dx, %bb.w ] ; 2 uses
  %i.dt = zext i16 %i.ds to i64
  %i.du = getelementptr [8 x i8], ptr %i.dr, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !17
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.w, label %.critedge32

bb.w:                                             ; preds = %bb.v
  %i.dx = add i16 %i.ds, -1                       ; 3 uses
  store i16 %i.dx, ptr %i.a, align 8, !tbaa !24
  %.not.i51 = icmp eq i16 %i.dx, 0
  br i1 %.not.i51, label %.critedge32, label %bb.v, !llvm.loop !78

.critedge32:                                      ; preds = %bb.w, %bb.v, %bb.g, %.critedge34, %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit
  %.6 = phi i1 [ false, %bb.g ], [ false, %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit ], [ true, %.critedge34 ], [ true, %bb.v ], [ true, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

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
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !15}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"long", !6, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"bool", !6, i64 0}
!19 = !{!"_ZTSN10fast_float4spanIKcEE", !12, i64 0, !16, i64 8}
!20 = !{!"_ZTSN10fast_float11parse_errorE", !6, i64 0}
!21 = !{!"_ZTSN10fast_float22parsed_number_string_tIcEE", !16, i64 0, !16, i64 8, !12, i64 16, !18, i64 24, !18, i64 25, !18, i64 26, !19, i64 32, !19, i64 48, !20, i64 64}
!22 = !{!"short", !6, i64 0}
!23 = !{!"_ZTSN10fast_float8stackvecILt62EEE", !6, i64 0, !22, i64 496}
!24 = !{!23, !22, i64 496}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = distinct !{!28, !"_ZN10fast_float19parse_number_stringIcEENS_22parsed_number_string_tIT_EEPKS2_S5_NS_15parse_options_tIS2_EE"}
!29 = distinct !{!29, !28, !"_ZN10fast_float19parse_number_stringIcEENS_22parsed_number_string_tIT_EEPKS2_S5_NS_15parse_options_tIS2_EE: argument 0"}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = !{!29}
!38 = !{!18, !18, i64 0}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !15}
!43 = !{!21, !12, i64 16}
!44 = !{!21, !16, i64 0}
!45 = !{i8 0, i8 2}
!46 = !{!"float", !6, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!21, !16, i64 8}
!49 = !{!21, !18, i64 24}
!50 = !{}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15, !62}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !15}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15}
!60 = !{!21, !12, i64 32}
!61 = !{!19, !16, i64 8}
!62 = !{!"llvm.loop.peeled.count", i32 1}
!63 = !{!21, !12, i64 48}
!64 = distinct !{!64, !15, !25, !26}
!65 = distinct !{!65, !15, !26, !25}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15, !25, !26}
!68 = distinct !{!68, !15, !26, !25}
!69 = distinct !{!69, !15, !25, !26}
!70 = distinct !{!70, !15, !26, !25}
!71 = distinct !{!71, !15}
!72 = distinct !{!72, !15}
!73 = distinct !{!73, !15, !74}
!74 = !{!"llvm.loop.unswitch.partial.disable"}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !15}
!78 = distinct !{!78, !15}
!79 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
end_hunk_1
