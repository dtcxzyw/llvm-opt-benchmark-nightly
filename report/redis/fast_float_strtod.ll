Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/fast_float_strtod?download=true
inline.NumInlined: 299
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_:bb.a
  %spec.select.i102.pn = phi i64 [ %spec.select.i102, %.noexc104 ], [ %i.dv, %.noexc103 ] ; 3 uses
  %i.eh = lshr i64 %spec.select.i102.pn, 63       ; 2 uses
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = add nuw nsw i64 %i.eh, 9                ; 2 uses
  %i.ek = lshr i64 %spec.select.i102.pn, %i.ej    ; 6 uses
  %i.el = mul nsw i32 %i.dk, 217706
  %i.em = ashr i32 %i.el, 16
  %i.en = add nsw i32 %i.em, 1086
  %i.eo = sub nsw i32 %i.en, %i.di
  %i.ep = add nsw i32 %i.eo, %i.ei                ; 3 uses
  %i.eq = icmp slt i32 %i.ep, 1
  br i1 %i.eq, label %bb.x, label %bb.z

bb.x:                                             ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit105
  %i.er = sub nsw i32 1, %i.ep                    ; 2 uses
  %i.es = icmp samesign ugt i32 %i.er, 63
  br i1 %i.es, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.et = zext nneg i32 %i.er to i64
  %i.eu = lshr i64 %i.ek, %i.et                   ; 2 uses
  %i.ev = and i64 %i.eu, 1
  %i.ew = add nuw nsw i64 %i.ev, %i.eu            ; 2 uses
  %i.ex = lshr i64 %i.ew, 1
  %i.ey = icmp samesign ugt i64 %i.ew, 9007199254740991
  %i.ez = zext i1 %i.ey to i32
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

bb.z:                                             ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit105
  %i.fa = icmp ugt i64 %.pn184, 1
  %i.fb = add nsw i64 %i.d, -24
  %i.fc = icmp ult i64 %i.fb, -28
  %or.cond171 = or i1 %i.fc, %i.fa
  br i1 %or.cond171, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fd = and i64 %i.ek, 3
  %i.fe = icmp eq i64 %i.fd, 1
  %i.ff = shl i64 %i.ek, %i.ej
  %i.fg = icmp eq i64 %i.ff, %spec.select.i102.pn
  %or.cond.i = select i1 %i.fe, i1 %i.fg, i1 false
  %i.fh = and i64 %i.ek, 72057594037927932
  %spec.select172 = select i1 %or.cond.i, i64 %i.fh, i64 %i.ek
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.0129.0 = phi i64 [ %i.ek, %bb.z ], [ %spec.select172, %bb.aa ] ; 2 uses
  %i.fi = and i64 %.sroa.0129.0, 1
  %i.fj = add nuw nsw i64 %i.fi, %.sroa.0129.0    ; 2 uses
  %i.fk = lshr i64 %i.fj, 1
  %.not22.i = icmp samesign ugt i64 %i.fj, 18014398509481983 ; 2 uses
  %i.fl = zext i1 %.not22.i to i32
  %spec.select173 = add nuw nsw i32 %i.ep, %i.fl  ; 2 uses
  %i.fm = and i64 %i.fk, 9218868437227405311
  %.not23.i = icmp samesign ugt i32 %spec.select173, 2046
  %spec.select178 = tail call i32 @llvm.umin.i32(i32 %spec.select173, i32 2047)
  %.not185 = select i1 %.not23.i, i1 true, i1 %.not22.i
  %spec.select179 = select i1 %.not185, i64 0, i64 %i.fm
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.ab, %bb.x, %bb.w, %bb.v, %bb.y
  %.sroa.18.1 = phi i32 [ 0, %bb.x ], [ 0, %bb.v ], [ 2047, %bb.w ], [ %i.ez, %bb.y ], [ %spec.select178, %bb.ab ]
  %.sroa.0129.2 = phi i64 [ 0, %bb.x ], [ 0, %bb.v ], [ 0, %bb.w ], [ %i.ex, %bb.y ], [ %spec.select179, %bb.ab ]
  %.not.i121 = icmp ne i64 %.sroa.0136.2, %.sroa.0129.2
  %i.fn = icmp ne i32 %.sroa.18141.1, %.sroa.18.1
  %i.fo = select i1 %.not.i121, i1 true, i1 %i.fn
  br i1 %i.fo, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit
  br i1 %i.av, label %bb.ad, label %.noexc

bb.ad:                                            ; preds = %bb.ac
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 370, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN10fast_float14leading_zeroesEm) #13
  unreachable

.noexc:                                           ; preds = %bb.ac
  %i.fp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 true) ; 2 uses
  %i.fq = trunc nuw nsw i64 %i.fp to i32
  %i.fr = shl i64 %i.au, %i.fp
  %i.fs = trunc i64 %i.d to i32                   ; 4 uses
  %i.ft = shl i32 %i.fs, 1                        ; 2 uses
  %i.fu = add i32 %i.ft, 684
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.fv
  %i.fx = load i64, ptr %i.fw, align 16, !tbaa !17
  %i.fy = zext i64 %i.fr to i128                  ; 2 uses
  %i.fz = zext i64 %i.fx to i128
  %i.ga = mul nuw i128 %i.fz, %i.fy               ; 2 uses
  %i.gb = lshr i128 %i.ga, 64
  %i.gc = trunc nuw i128 %i.gb to i64             ; 3 uses
  %i.gd = and i64 %i.gc, 511
  %i.ge = icmp eq i64 %i.gd, 511
  br i1 %i.ge, label %.noexc95, label %bb.ae

.noexc95:                                         ; preds = %.noexc
  %i.gf = trunc i128 %i.ga to i64
  %i.gg = add i32 %i.ft, 685
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !17
  %i.gk = zext i64 %i.gj to i128
  %i.gl = mul nuw i128 %i.gk, %i.fy
  %i.gm = lshr i128 %i.gl, 64
  %i.gn = trunc nuw i128 %i.gm to i64
  %i.go = xor i64 %i.gn, -1
  %i.gp = icmp ult i64 %i.go, %i.gf
  %i.gq = zext i1 %i.gp to i64
  %spec.select.i = add nuw i64 %i.gq, %i.gc
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc, %.noexc95
  %spec.select.i.pn = phi i64 [ %spec.select.i, %.noexc95 ], [ %i.gc, %.noexc ] ; 2 uses
  %i.gr = lshr i64 %spec.select.i.pn, 63          ; 2 uses
  %i.gs = trunc nuw nsw i64 %i.gr to i32
  %i.gt = xor i64 %i.gr, 1
  %i.gu = shl i64 %spec.select.i.pn, %i.gt        ; 2 uses
  %i.gv = mul nsw i32 %i.fs, 217706
  %i.gw = ashr i32 %i.gv, 16
  %reass.sub.neg = sub nsw i32 %i.gs, %i.fq
  %i.gx = add nsw i32 %reass.sub.neg, %i.gw       ; 3 uses
  %i.gy = add nsw i32 %i.gx, -31693
  %i.gz = icmp slt i32 %i.gx, 31693
  br i1 %i.gz, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.ha = icmp ugt i64 %i.au, 9999
  br i1 %i.ha, label %.lr.ph.i, label %.preheader18.i

.preheader18.i:                                   ; preds = %.lr.ph.i, %bb.af
  %.011.i.lcssa.i = phi i64 [ %i.au, %bb.af ], [ %i.hc, %.lr.ph.i ] ; 3 uses
  %.0.i.lcssa.i = phi i32 [ %i.fs, %bb.af ], [ %i.hd, %.lr.ph.i ] ; 2 uses
  %i.hb = icmp samesign ugt i64 %.011.i.lcssa.i, 99
  br i1 %i.hb, label %.lr.ph24.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.af, %.lr.ph.i
  %.0.i20.i = phi i32 [ %i.hd, %.lr.ph.i ], [ %i.fs, %bb.af ]
  %.011.i19.i = phi i64 [ %i.hc, %.lr.ph.i ], [ %i.au, %bb.af ] ; 2 uses
  %i.hc = udiv i64 %.011.i19.i, 10000             ; 2 uses
  %i.hd = add nsw i32 %.0.i20.i, 4                ; 2 uses
  %i.he = icmp ugt i64 %.011.i19.i, 99999999
  br i1 %i.he, label %.lr.ph.i, label %.preheader18.i, !llvm.loop !40

.preheader.i:                                     ; preds = %.lr.ph24.i, %.preheader18.i
  %.112.i.lcssa.i = phi i64 [ %.011.i.lcssa.i, %.preheader18.i ], [ %i.hg, %.lr.ph24.i ] ; 2 uses
  %.1.i.lcssa.i = phi i32 [ %.0.i.lcssa.i, %.preheader18.i ], [ %i.hh, %.lr.ph24.i ] ; 2 uses
  %i.hf = icmp samesign ugt i64 %.112.i.lcssa.i, 9
  br i1 %i.hf, label %.lr.ph29.i, label %_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i

.lr.ph24.i:                                       ; preds = %.preheader18.i, %.lr.ph24.i
  %.1.i23.i = phi i32 [ %i.hh, %.lr.ph24.i ], [ %.0.i.lcssa.i, %.preheader18.i ]
  %.112.i22.i = phi i64 [ %i.hg, %.lr.ph24.i ], [ %.011.i.lcssa.i, %.preheader18.i ] ; 2 uses
  %i.hg = udiv i64 %.112.i22.i, 100               ; 2 uses
  %i.hh = add nsw i32 %.1.i23.i, 2                ; 2 uses
  %i.hi = icmp samesign ugt i64 %.112.i22.i, 9999
  br i1 %i.hi, label %.lr.ph24.i, label %.preheader.i, !llvm.loop !41

.lr.ph29.i:                                       ; preds = %.preheader.i, %.lr.ph29.i
  %.2.i28.i = phi i32 [ %i.hk, %.lr.ph29.i ], [ %.1.i.lcssa.i, %.preheader.i ]
  %.213.i27.i = phi i64 [ %i.hj, %.lr.ph29.i ], [ %.112.i.lcssa.i, %.preheader.i ] ; 2 uses
  %i.hj = udiv i64 %.213.i27.i, 10
  %i.hk = add nsw i32 %.2.i28.i, 1                ; 2 uses
  %i.hl = icmp samesign ugt i64 %.213.i27.i, 99
  br i1 %i.hl, label %.lr.ph29.i, label %_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i, !llvm.loop !42

_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i: ; preds = %.lr.ph29.i, %.preheader.i
  %.2.i.lcssa.i = phi i32 [ %.1.i.lcssa.i, %.preheader.i ], [ %i.hk, %.lr.ph29.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %2, i8 0, i64 504, i1 false)
  call void @_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %2, ptr noundef nonnull align 8 dereferenceable(68) %0, i64 noundef 769, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #10
  %i.hm = add nsw i32 %.2.i.lcssa.i, 1
  %i.hn = load i64, ptr %i.a, align 8, !tbaa !17
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = sub i32 %i.hm, %i.ho                    ; 3 uses
  %i.hq = icmp sgt i32 %i.hp, -1
  br i1 %i.hq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i
  %i.hr = call { i64, i32 } @_ZN10fast_float19positive_digit_compIdEENS_17adjusted_mantissaERNS_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %2, i32 noundef %i.hp) #10
  br label %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit

bb.ah:                                            ; preds = %_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i
  %i.hs = add nsw i32 %i.gx, 1075
  %i.ht = call { i64, i32 } @_ZN10fast_float19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES1_i(ptr noundef nonnull align 8 dereferenceable(504) %2, i64 %i.gu, i32 %i.hs, i32 noundef %i.hp) #10
  br label %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit

_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit: ; preds = %bb.ag, %bb.ah
  %.pn.i = phi { i64, i32 } [ %i.hr, %bb.ag ], [ %i.ht, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.fca.0.extract = extractvalue { i64, i32 } %.pn.i, 0
  %.fca.1.extract = extractvalue { i64, i32 } %.pn.i, 1
  br label %.thread

.thread:                                          ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit89, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, %bb.ae, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit
  %.sroa.9.1 = phi i32 [ %.fca.1.extract, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.gy, %bb.ae ], [ %.sroa.18141.1, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ %.sroa.18141.1, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit89 ] ; 3 uses
  %.sroa.0122.1 = phi i64 [ %.fca.0.extract, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.gu, %bb.ae ], [ %.sroa.0136.2, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ %.sroa.0136.2, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit89 ] ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hv = load i8, ptr %i.hu, align 8, !tbaa !49, !range !45, !noundef !50
  %i.hw = zext nneg i8 %i.hv to i64
  %3 = zext i32 %.sroa.9.1 to i64
  %4 = shl i64 %3, 52
  %i.hx = shl nuw i64 %i.hw, 63
  %i.hy = or i64 %4, %i.hx
  %i.hz = or i64 %i.hy, %.sroa.0122.1
  store i64 %i.hz, ptr %1, align 8
  %i.ia = load i64, ptr %i.at, align 8, !tbaa !48
  %i.ib = icmp ne i64 %i.ia, 0
  %i.ic = icmp eq i64 %.sroa.0122.1, 0
  %or.cond5 = select i1 %i.ib, i1 %i.ic, i1 false
  %i.id = icmp eq i32 %.sroa.9.1, 0
  %or.cond8 = select i1 %or.cond5, i1 %i.id, i1 false
  %i.ie = icmp eq i32 %.sroa.9.1, 2047
  %or.cond175 = select i1 %or.cond8, i1 true, i1 %i.ie
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
  store i64 %i.ai, ptr %3, align 8, !tbaa !17
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
  store i64 %i.bc, ptr %3, align 8, !tbaa !17
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
  %i.bf = load i8, ptr %.2338, align 1, !tbaa !14
  %i.bg = sext i8 %i.bf to i64
  %i.bh = add i64 %i.be, -48
  %i.bi = add i64 %i.bh, %i.bg                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.2338, i64 1 ; 3 uses
  %i.bk = add nuw nsw i64 %.2264336, 1            ; 2 uses
  %i.bl = add i64 %i.bd, 1                        ; 3 uses
  store i64 %i.bl, ptr %3, align 8, !tbaa !17
  %i.bm = icmp ugt i64 %.2264336, 17
  %.not64 = icmp eq ptr %i.bj, %i.f
  %or.cond = select i1 %i.bm, i1 true, i1 %.not64
  br i1 %or.cond, label %.critedge2, label %bb.f, !llvm.loop !53

.critedge2:                                       ; preds = %bb.f, %bb.g, %.critedge
  %i.bn = phi i64 [ %.pre, %.critedge ], [ %i.bl, %bb.g ], [ %umax, %bb.f ]
  %.2264.lcssa = phi i64 [ %.1263.lcssa, %.critedge ], [ %i.bk, %bb.g ], [ %.2264336, %bb.f ] ; 2 uses
  %.2257.lcssa = phi i64 [ %.1256.lcssa, %.critedge ], [ %i.bi, %bb.g ], [ %.2257337, %bb.f ] ; 8 uses
  %.2.lcssa = phi ptr [ %.1.lcssa, %.critedge ], [ %i.bj, %bb.g ], [ %.2338, %bb.f ] ; 5 uses
  %i.bo = icmp eq i64 %i.bn, %2
  %i.bp = load i16, ptr %i.q, align 8, !tbaa !24  ; 12 uses
  %i.bq = zext i16 %i.bp to i64                   ; 6 uses
  %.not19.i.i = icmp eq i16 %i.bp, 0              ; 2 uses
  br i1 %i.bo, label %bb.h, label %bb.o

bb.h:                                             ; preds = %.critedge2
  br i1 %.not19.i.i, label %_ZN10fast_float6bigint3mulEm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_floatL20powers_of_ten_uint64E, i64 %.2264.lcssa
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !17
end_hunk_0
