Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/fast_float_strtod?download=true
inline.NumInlined: 299
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_:bb.a
  %i.ey = icmp eq i64 %i.ex, 1
  %i.ez = shl i64 %i.ee, %i.ed
  %i.fa = icmp eq i64 %i.ez, %spec.select.i102.pn
  %or.cond.i = select i1 %i.ey, i1 %i.fa, i1 false
  %i.fb = and i64 %i.ee, 72057594037927932
  %spec.select172 = select i1 %or.cond.i, i64 %i.fb, i64 %i.ee
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.0129.0 = phi i64 [ %i.ee, %bb.z ], [ %spec.select172, %bb.aa ] ; 2 uses
  %i.fc = and i64 %.sroa.0129.0, 1
  %i.fd = add nuw nsw i64 %i.fc, %.sroa.0129.0    ; 2 uses
  %i.fe = lshr i64 %i.fd, 1
  %.not22.i = icmp samesign ugt i64 %i.fd, 18014398509481983 ; 2 uses
  %i.ff = zext i1 %.not22.i to i32
  %spec.select173 = add nuw nsw i32 %i.ej, %i.ff  ; 2 uses
  %i.fg = and i64 %i.fe, 9218868437227405311
  %.not23.i = icmp samesign ugt i32 %spec.select173, 2046
  %spec.select178 = tail call i32 @llvm.umin.i32(i32 %spec.select173, i32 2047)
  %.not185 = select i1 %.not23.i, i1 true, i1 %.not22.i
  %spec.select179 = select i1 %.not185, i64 0, i64 %i.fg
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.ab, %bb.x, %bb.w, %bb.v, %bb.y
  %.sroa.18.1 = phi i32 [ 0, %bb.x ], [ 0, %bb.v ], [ 2047, %bb.w ], [ %i.et, %bb.y ], [ %spec.select178, %bb.ab ]
  %.sroa.0129.2 = phi i64 [ 0, %bb.x ], [ 0, %bb.v ], [ 0, %bb.w ], [ %i.er, %bb.y ], [ %spec.select179, %bb.ab ]
  %.not.i121 = icmp ne i64 %.sroa.0136.2, %.sroa.0129.2
  %i.fh = icmp ne i32 %.sroa.18141.1, %.sroa.18.1
  %i.fi = select i1 %.not.i121, i1 true, i1 %i.fh
  br i1 %i.fi, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit
  br i1 %i.av, label %bb.ad, label %.noexc

bb.ad:                                            ; preds = %bb.ac
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 370, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN10fast_float14leading_zeroesEm) #13
  unreachable

.noexc:                                           ; preds = %bb.ac
  %i.fj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 true) ; 2 uses
  %i.fk = trunc nuw nsw i64 %i.fj to i32
  %i.fl = shl i64 %i.au, %i.fj                    ; 2 uses
  %i.fm = trunc i64 %i.d to i32                   ; 4 uses
  %i.fn = shl i32 %i.fm, 1                        ; 2 uses
  %i.fo = add i32 %i.fn, 684
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 16, !tbaa !27
  %i.fs = zext i64 %i.fl to i128
  %i.ft = zext i64 %i.fr to i128
  %i.fu = mul nuw i128 %i.ft, %i.fs               ; 2 uses
  %i.fv = lshr i128 %i.fu, 64
  %i.fw = trunc nuw i128 %i.fv to i64             ; 3 uses
  %i.fx = and i64 %i.fw, 511
  %i.fy = icmp eq i64 %i.fx, 511
  br i1 %i.fy, label %.noexc95, label %bb.ae

.noexc95:                                         ; preds = %.noexc
  %i.fz = trunc i128 %i.fu to i64
  %i.ga = add i32 %i.fn, 685
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr @_ZN10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.gb
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !27
  %i.ge = tail call i64 @llvm.umulh.i64(i64 %i.fl, i64 %i.gd)
  %i.gf = xor i64 %i.ge, -1
  %i.gg = icmp ugt i64 %i.fz, %i.gf
  %i.gh = zext i1 %i.gg to i64
  %spec.select.i = add nuw i64 %i.gh, %i.fw
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc, %.noexc95
  %spec.select.i.pn = phi i64 [ %spec.select.i, %.noexc95 ], [ %i.fw, %.noexc ] ; 2 uses
  %i.gi = lshr i64 %spec.select.i.pn, 63          ; 2 uses
  %i.gj = trunc nuw nsw i64 %i.gi to i32
  %i.gk = xor i64 %i.gi, 1
  %i.gl = shl i64 %spec.select.i.pn, %i.gk        ; 2 uses
  %i.gm = mul nsw i32 %i.fm, 217706
  %i.gn = ashr i32 %i.gm, 16
  %reass.sub.neg = sub nsw i32 %i.gj, %i.fk
  %i.go = add nsw i32 %reass.sub.neg, %i.gn       ; 3 uses
  %i.gp = add nsw i32 %i.go, -31693
  %i.gq = icmp slt i32 %i.go, 31693
  br i1 %i.gq, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.gr = icmp ugt i64 %i.au, 9999
  br i1 %i.gr, label %.lr.ph.i, label %.preheader18.i

.preheader18.i:                                   ; preds = %.lr.ph.i, %bb.af
  %.011.i.lcssa.i = phi i64 [ %i.au, %bb.af ], [ %i.gt, %.lr.ph.i ] ; 3 uses
  %.0.i.lcssa.i = phi i32 [ %i.fm, %bb.af ], [ %i.gu, %.lr.ph.i ] ; 2 uses
  %i.gs = icmp samesign ugt i64 %.011.i.lcssa.i, 99
  br i1 %i.gs, label %.lr.ph24.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.af, %.lr.ph.i
  %.0.i20.i = phi i32 [ %i.gu, %.lr.ph.i ], [ %i.fm, %bb.af ]
  %.011.i19.i = phi i64 [ %i.gt, %.lr.ph.i ], [ %i.au, %bb.af ] ; 2 uses
  %i.gt = udiv i64 %.011.i19.i, 10000             ; 2 uses
  %i.gu = add nsw i32 %.0.i20.i, 4                ; 2 uses
  %i.gv = icmp ugt i64 %.011.i19.i, 99999999
  br i1 %i.gv, label %.lr.ph.i, label %.preheader18.i, !llvm.loop !53

.preheader.i:                                     ; preds = %.lr.ph24.i, %.preheader18.i
  %.112.i.lcssa.i = phi i64 [ %.011.i.lcssa.i, %.preheader18.i ], [ %i.gx, %.lr.ph24.i ] ; 2 uses
  %.1.i.lcssa.i = phi i32 [ %.0.i.lcssa.i, %.preheader18.i ], [ %i.gy, %.lr.ph24.i ] ; 2 uses
  %i.gw = icmp samesign ugt i64 %.112.i.lcssa.i, 9
  br i1 %i.gw, label %.lr.ph29.i, label %_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i

.lr.ph24.i:                                       ; preds = %.preheader18.i, %.lr.ph24.i
  %.1.i23.i = phi i32 [ %i.gy, %.lr.ph24.i ], [ %.0.i.lcssa.i, %.preheader18.i ]
  %.112.i22.i = phi i64 [ %i.gx, %.lr.ph24.i ], [ %.011.i.lcssa.i, %.preheader18.i ] ; 2 uses
  %i.gx = udiv i64 %.112.i22.i, 100               ; 2 uses
  %i.gy = add nsw i32 %.1.i23.i, 2                ; 2 uses
  %i.gz = icmp samesign ugt i64 %.112.i22.i, 9999
  br i1 %i.gz, label %.lr.ph24.i, label %.preheader.i, !llvm.loop !54

.lr.ph29.i:                                       ; preds = %.preheader.i, %.lr.ph29.i
  %.2.i28.i = phi i32 [ %i.hb, %.lr.ph29.i ], [ %.1.i.lcssa.i, %.preheader.i ]
  %.213.i27.i = phi i64 [ %i.ha, %.lr.ph29.i ], [ %.112.i.lcssa.i, %.preheader.i ] ; 2 uses
  %i.ha = udiv i64 %.213.i27.i, 10
  %i.hb = add nsw i32 %.2.i28.i, 1                ; 2 uses
  %i.hc = icmp samesign ugt i64 %.213.i27.i, 99
  br i1 %i.hc, label %.lr.ph29.i, label %_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i, !llvm.loop !55

_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i: ; preds = %.lr.ph29.i, %.preheader.i
  %.2.i.lcssa.i = phi i32 [ %.1.i.lcssa.i, %.preheader.i ], [ %i.hb, %.lr.ph29.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %2, i8 0, i64 504, i1 false)
  call void @_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %2, ptr noundef nonnull align 8 dereferenceable(68) %0, i64 noundef 769, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #10
  %i.hd = add nsw i32 %.2.i.lcssa.i, 1
  %i.he = load i64, ptr %i.a, align 8, !tbaa !27
  %i.hf = trunc i64 %i.he to i32
  %i.hg = sub i32 %i.hd, %i.hf                    ; 3 uses
  %i.hh = icmp sgt i32 %i.hg, -1
  br i1 %i.hh, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i
  %i.hi = call { i64, i32 } @_ZN10fast_float19positive_digit_compIdEENS_17adjusted_mantissaERNS_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %2, i32 noundef %i.hg) #10
  br label %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit

bb.ah:                                            ; preds = %_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i
  %i.hj = add nsw i32 %i.go, 1075
  %i.hk = call { i64, i32 } @_ZN10fast_float19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES1_i(ptr noundef nonnull align 8 dereferenceable(504) %2, i64 %i.gl, i32 %i.hj, i32 noundef %i.hg) #10
  br label %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit

_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit: ; preds = %bb.ag, %bb.ah
  %.pn.i = phi { i64, i32 } [ %i.hi, %bb.ag ], [ %i.hk, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.fca.0.extract = extractvalue { i64, i32 } %.pn.i, 0
  %.fca.1.extract = extractvalue { i64, i32 } %.pn.i, 1
  br label %.thread

.thread:                                          ; preds = %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit89, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, %bb.ae, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit
  %.sroa.9.1 = phi i32 [ %.fca.1.extract, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.gp, %bb.ae ], [ %.sroa.18141.1, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ %.sroa.18141.1, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit89 ] ; 3 uses
  %.sroa.0122.1 = phi i64 [ %.fca.0.extract, %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit ], [ %i.gl, %bb.ae ], [ %.sroa.0136.2, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ %.sroa.0136.2, %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit89 ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hm = load i8, ptr %i.hl, align 8, !tbaa !63, !range !59, !noundef !64
  %i.hn = zext nneg i8 %i.hm to i64
  %i.ho = zext i32 %.sroa.9.1 to i64
  %i.hp = shl i64 %i.ho, 52
  %i.hq = shl nuw i64 %i.hn, 63
  %i.hr = or i64 %i.hp, %i.hq
  %i.hs = or i64 %i.hr, %.sroa.0122.1
  store i64 %i.hs, ptr %1, align 8
  %i.ht = load i64, ptr %i.at, align 8, !tbaa !62
  %i.hu = icmp ne i64 %i.ht, 0
  %i.hv = icmp eq i64 %.sroa.0122.1, 0
  %or.cond5 = select i1 %i.hu, i1 %i.hv, i1 false
  %i.hw = icmp eq i32 %.sroa.9.1, 0
  %or.cond8 = select i1 %or.cond5, i1 %i.hw, i1 false
  %i.hx = icmp eq i32 %.sroa.9.1, 2047
  %or.cond175 = select i1 %or.cond8, i1 true, i1 %i.hx
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
define linkonce_odr dso_local void @_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(68) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 !guid !74 {
bb.a:
  store i64 0, ptr %3, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 4 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !76   ; 3 uses
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
  br i1 %i.l, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !65

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
  %i.o = load i8, ptr %.10317, align 1, !tbaa !24
  %.not9.i68 = icmp eq i8 %i.o, 48
  br i1 %.not9.i68, label %bb.c, label %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit71

bb.c:                                             ; preds = %.lr.ph319
  %i.p = getelementptr inbounds nuw i8, ptr %.10317, i64 1 ; 2 uses
  %.not8.i67 = icmp eq ptr %i.p, %i.f
  br i1 %.not8.i67, label %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit71, label %.lr.ph319, !llvm.loop !66

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
  %.pre.pre = load i64, ptr %3, align 8, !tbaa !27 ; 4 uses
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
  store i64 %i.ai, ptr %3, align 8, !tbaa !27
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
  store i64 %i.bc, ptr %3, align 8, !tbaa !27
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
  %i.bf = load i8, ptr %.2338, align 1, !tbaa !24
  %i.bg = sext i8 %i.bf to i64
  %i.bh = add i64 %i.be, -48
  %i.bi = add i64 %i.bh, %i.bg                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.2338, i64 1 ; 3 uses
  %i.bk = add nuw nsw i64 %.2264336, 1            ; 2 uses
  %i.bl = add i64 %i.bd, 1                        ; 3 uses
  store i64 %i.bl, ptr %3, align 8, !tbaa !27
  %i.bm = icmp ugt i64 %.2264336, 17
  %.not64 = icmp eq ptr %i.bj, %i.f
  %or.cond = select i1 %i.bm, i1 true, i1 %.not64
  br i1 %or.cond, label %.critedge2, label %bb.f, !llvm.loop !67

.critedge2:                                       ; preds = %bb.f, %bb.g, %.critedge
  %i.bn = phi i64 [ %.pre, %.critedge ], [ %i.bl, %bb.g ], [ %umax, %bb.f ]
  %.2264.lcssa = phi i64 [ %.1263.lcssa, %.critedge ], [ %i.bk, %bb.g ], [ %.2264336, %bb.f ] ; 2 uses
  %.2257.lcssa = phi i64 [ %.1256.lcssa, %.critedge ], [ %i.bi, %bb.g ], [ %.2257337, %bb.f ] ; 8 uses
  %.2.lcssa = phi ptr [ %.1.lcssa, %.critedge ], [ %i.bj, %bb.g ], [ %.2338, %bb.f ] ; 5 uses
  %i.bo = icmp eq i64 %i.bn, %2
  %i.bp = load i16, ptr %i.q, align 8, !tbaa !34  ; 12 uses
  %i.bq = zext i16 %i.bp to i64                   ; 6 uses
  %.not19.i.i = icmp eq i16 %i.bp, 0              ; 2 uses
  br i1 %i.bo, label %bb.h, label %bb.o

bb.h:                                             ; preds = %.critedge2
  br i1 %.not19.i.i, label %_ZN10fast_float6bigint3mulEm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_floatL20powers_of_ten_uint64E, i64 %.2264.lcssa
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !27
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
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i.epil.init ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !27
  %i.bx = zext i64 %i.bw to i128
  %i.by = mul nuw i128 %i.bx, %i.bt
  %i.bz = zext i64 %.01215.i.i.epil.init to i128
  %i.ca = add nuw i128 %i.by, %i.bz               ; 2 uses
  %i.cb = lshr i128 %i.ca, 64                     ; 2 uses
  %i.cc = trunc nuw i128 %i.cb to i64
  %i.cd = trunc i128 %i.ca to i64
  store i64 %i.cd, ptr %i.bv, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader615
  %.lcssa600 = phi i128 [ %i.ct, %._crit_edge.i.i.unr-lcssa ], [ %i.cb, %.epil.preheader615 ]
  %.lcssa599 = phi i64 [ %i.cu, %._crit_edge.i.i.unr-lcssa ], [ %i.cc, %.epil.preheader615 ]
  %.not.i.i84 = icmp ne i128 %.lcssa600, 0
  %i.ce = icmp ult i16 %i.bp, 62
  %or.cond279 = and i1 %i.ce, %.not.i.i84
  br i1 %or.cond279, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i, label %_ZN10fast_float6bigint3mulEm.exit

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.new
  %.016.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.cw, %bb.i ] ; 3 uses
  %.01215.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.cu, %bb.i ]
  %niter622 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter622.next.1, %bb.i ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !27
  %i.ch = zext i64 %i.cg to i128
  %i.ci = mul nuw i128 %i.ch, %i.bt
  %i.cj = zext i64 %.01215.i.i to i128
  %i.ck = add nuw i128 %i.ci, %i.cj               ; 2 uses
  %i.cl = lshr i128 %i.ck, 64
  %i.cm = trunc i128 %i.ck to i64
  store i64 %i.cm, ptr %i.cf, align 8, !tbaa !27
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !27
  %i.cq = zext i64 %i.cp to i128
  %i.cr = mul nuw i128 %i.cq, %i.bt
  %i.cs = add nuw i128 %i.cr, %i.cl               ; 2 uses
  %i.ct = lshr i128 %i.cs, 64                     ; 2 uses
  %i.cu = trunc nuw i128 %i.ct to i64             ; 3 uses
  %i.cv = trunc i128 %i.cs to i64
  store i64 %i.cv, ptr %i.co, align 8, !tbaa !27
  %i.cw = add nuw nsw i64 %.016.i.i, 2            ; 2 uses
  %niter622.next.1 = add i64 %niter622, 2         ; 2 uses
  %niter622.ncmp.1 = icmp eq i64 %niter622.next.1, %unroll_iter621
  br i1 %niter622.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.i, !llvm.loop !0

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i: ; preds = %._crit_edge.i.i
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bq
end_hunk_0
begin_hunk_1_@_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm:bb.a
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !27
  %i.fk = zext i64 %i.fj to i128
  %i.fl = mul nuw nsw i128 %i.fk, 10
  %i.fm = add nuw nsw i128 %i.fl, %i.ff           ; 2 uses
  %i.fn = lshr i128 %i.fm, 64                     ; 2 uses
  %i.fo = trunc nuw nsw i128 %i.fn to i64         ; 3 uses
  %i.fp = trunc i128 %i.fm to i64
  store i64 %i.fp, ptr %i.fi, align 8, !tbaa !27
  %i.fq = add nuw nsw i64 %.016.i.i91, 2          ; 2 uses
  %niter629.next.1 = add i64 %niter629, 2         ; 2 uses
  %niter629.ncmp.1 = icmp eq i64 %niter629.next.1, %unroll_iter628
  br i1 %niter629.ncmp.1, label %._crit_edge.i.i94.unr-lcssa, label %.lr.ph.i.i90, !llvm.loop !0

_ZN10fast_float6bigint3mulEm.exit98.thread270:    ; preds = %._crit_edge.i.i94
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.en
  store i64 %.lcssa593, ptr %i.fr, align 8, !tbaa !27
  %i.fs = add nuw nsw i16 %.pr, 1                 ; 3 uses
  store i16 %i.fs, ptr %i.q, align 8, !tbaa !34
  %.pre453 = zext nneg i16 %i.fs to i64
  br label %_ZN10fast_float6bigint3mulEm.exit98

_ZN10fast_float6bigint3mulEm.exit98:              ; preds = %._crit_edge.i.i94, %_ZN10fast_float6bigint3mulEm.exit98.thread270
  %.pre-phi454 = phi i64 [ %.pre453, %_ZN10fast_float6bigint3mulEm.exit98.thread270 ], [ %i.en, %._crit_edge.i.i94 ] ; 3 uses
  %i.ft = phi i16 [ %i.fs, %_ZN10fast_float6bigint3mulEm.exit98.thread270 ], [ %.pr, %._crit_edge.i.i94 ] ; 2 uses
  %i.fu = load i64, ptr %0, align 8, !tbaa !27
  %i.fv = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fu, i64 1) ; 2 uses
  %i.fw = extractvalue { i64, i1 } %i.fv, 1
  %i.fx = extractvalue { i64, i1 } %i.fv, 0
  store i64 %i.fx, ptr %0, align 8, !tbaa !27
  br i1 %i.fw, label %.peel.next.i102.preheader, label %_ZN10fast_float12is_truncatedIcEEbPKT_S3_.exit.sink.split

.peel.next.i102.preheader:                        ; preds = %_ZN10fast_float6bigint3mulEm.exit98
  %exitcond.not.i.i104563 = icmp eq i64 %.pre-phi454, 1
  br i1 %exitcond.not.i.i104563, label %.critedge.i.i105, label %.lr.ph565

.peel.next.i102:                                  ; preds = %.lr.ph565
  %i.fy = add nuw nsw i64 %.01421.i.i103564, 1    ; 2 uses
  %exitcond.not.i.i104 = icmp eq i64 %i.fy, %.pre-phi454
  br i1 %exitcond.not.i.i104, label %.critedge.i.i105, label %.lr.ph565, !llvm.loop !68

.lr.ph565:                                        ; preds = %.peel.next.i102.preheader, %.peel.next.i102
  %.01421.i.i103564 = phi i64 [ %i.fy, %.peel.next.i102 ], [ 1, %.peel.next.i102.preheader ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i103564 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !27
  %i.gb = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ga, i64 1) ; 2 uses
  %i.gc = extractvalue { i64, i1 } %i.gb, 1
  %i.gd = extractvalue { i64, i1 } %i.gb, 0
  store i64 %i.gd, ptr %i.fz, align 8, !tbaa !27
  br i1 %i.gc, label %.peel.next.i102, label %_ZN10fast_float12is_truncatedIcEEbPKT_S3_.exit.sink.split, !llvm.loop !68

.critedge.i.i105:                                 ; preds = %.peel.next.i102, %.peel.next.i102.preheader
  %i.ge = icmp ult i16 %i.ft, 62
  br i1 %i.ge, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i106, label %_ZN10fast_float12is_truncatedIcEEbPKT_S3_.exit.sink.split

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i106: ; preds = %_ZN10fast_float12is_truncatedIcEEbNS_4spanIKT_EE.exit.thread, %.critedge.i.i105
  %i.gf = phi i64 [ 0, %_ZN10fast_float12is_truncatedIcEEbNS_4spanIKT_EE.exit.thread ], [ %.pre-phi454, %.critedge.i.i105 ]
  %i.gg = phi i16 [ 0, %_ZN10fast_float12is_truncatedIcEEbNS_4spanIKT_EE.exit.thread ], [ %i.ft, %.critedge.i.i105 ]
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gf
  store i64 1, ptr %i.gh, align 8, !tbaa !27
  %i.gi = add nuw nsw i16 %i.gg, 1
  store i16 %i.gi, ptr %i.q, align 8, !tbaa !34
  br label %_ZN10fast_float12is_truncatedIcEEbPKT_S3_.exit.sink.split

bb.o:                                             ; preds = %.critedge2
  br i1 %.not19.i.i, label %_ZN10fast_float6bigint3mulEm.exit118.thread, label %.lr.ph.i.i110

.lr.ph.i.i110:                                    ; preds = %bb.o
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_floatL20powers_of_ten_uint64E, i64 %.2264.lcssa
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !27
  %i.gl = zext i64 %i.gk to i128                  ; 3 uses
  %xtraiter = and i64 %i.bq, 1
  %i.gm = icmp eq i16 %i.bp, 1
  br i1 %i.gm, label %.epil.preheader, label %.lr.ph.i.i110.new

.lr.ph.i.i110.new:                                ; preds = %.lr.ph.i.i110
  %unroll_iter = and i64 %i.bq, 65534
  br label %bb.p

._crit_edge.i.i114.unr-lcssa:                     ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i114, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i114.unr-lcssa, %.lr.ph.i.i110
  %.016.i.i111.epil.init = phi i64 [ 0, %.lr.ph.i.i110 ], [ %i.ho, %._crit_edge.i.i114.unr-lcssa ]
  %.01215.i.i112.epil.init = phi i64 [ 0, %.lr.ph.i.i110 ], [ %i.hm, %._crit_edge.i.i114.unr-lcssa ]
  %lcmp.mod614 = trunc i16 %i.bp to i1
  tail call void @llvm.assume(i1 %lcmp.mod614)
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i111.epil.init ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !27
  %i.gp = zext i64 %i.go to i128
  %i.gq = mul nuw i128 %i.gp, %i.gl
  %i.gr = zext i64 %.01215.i.i112.epil.init to i128
  %i.gs = add nuw i128 %i.gq, %i.gr               ; 2 uses
  %i.gt = lshr i128 %i.gs, 64                     ; 2 uses
  %i.gu = trunc nuw i128 %i.gt to i64
  %i.gv = trunc i128 %i.gs to i64
  store i64 %i.gv, ptr %i.gn, align 8, !tbaa !27
  br label %._crit_edge.i.i114

._crit_edge.i.i114:                               ; preds = %._crit_edge.i.i114.unr-lcssa, %.epil.preheader
  %.lcssa603 = phi i128 [ %i.hl, %._crit_edge.i.i114.unr-lcssa ], [ %i.gt, %.epil.preheader ]
  %.lcssa602 = phi i64 [ %i.hm, %._crit_edge.i.i114.unr-lcssa ], [ %i.gu, %.epil.preheader ]
  %.not.i.i115 = icmp ne i128 %.lcssa603, 0
  %i.gw = icmp ult i16 %i.bp, 62
  %or.cond281 = and i1 %i.gw, %.not.i.i115
  br i1 %or.cond281, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i117, label %_ZN10fast_float6bigint3mulEm.exit118

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i110.new
  %.016.i.i111 = phi i64 [ 0, %.lr.ph.i.i110.new ], [ %i.ho, %bb.p ] ; 3 uses
  %.01215.i.i112 = phi i64 [ 0, %.lr.ph.i.i110.new ], [ %i.hm, %bb.p ]
  %niter = phi i64 [ 0, %.lr.ph.i.i110.new ], [ %niter.next.1, %bb.p ]
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i111 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !27
  %i.gz = zext i64 %i.gy to i128
  %i.ha = mul nuw i128 %i.gz, %i.gl
  %i.hb = zext i64 %.01215.i.i112 to i128
  %i.hc = add nuw i128 %i.ha, %i.hb               ; 2 uses
  %i.hd = lshr i128 %i.hc, 64
  %i.he = trunc i128 %i.hc to i64
  store i64 %i.he, ptr %i.gx, align 8, !tbaa !27
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i111
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !27
  %i.hi = zext i64 %i.hh to i128
  %i.hj = mul nuw i128 %i.hi, %i.gl
  %i.hk = add nuw i128 %i.hj, %i.hd               ; 2 uses
  %i.hl = lshr i128 %i.hk, 64                     ; 2 uses
  %i.hm = trunc nuw i128 %i.hl to i64             ; 3 uses
  %i.hn = trunc i128 %i.hk to i64
  store i64 %i.hn, ptr %i.hg, align 8, !tbaa !27
  %i.ho = add nuw nsw i64 %.016.i.i111, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i114.unr-lcssa, label %bb.p, !llvm.loop !0

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i117: ; preds = %._crit_edge.i.i114
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bq
  store i64 %.lcssa602, ptr %i.hp, align 8, !tbaa !27
  %i.hq = add nuw nsw i16 %i.bp, 1                ; 2 uses
  store i16 %i.hq, ptr %i.q, align 8, !tbaa !34
  br label %_ZN10fast_float6bigint3mulEm.exit118

_ZN10fast_float6bigint3mulEm.exit118:             ; preds = %._crit_edge.i.i114, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i117
  %i.hr = phi i16 [ %i.hq, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i117 ], [ %i.bp, %._crit_edge.i.i114 ] ; 4 uses
  %.not20.i.i119 = icmp eq i64 %.2257.lcssa, 0
  br i1 %.not20.i.i119, label %_ZN10fast_float6bigint3addEm.exit129, label %.lr.ph.i.i120

_ZN10fast_float6bigint3mulEm.exit118.thread:      ; preds = %bb.o
  %.not20.i.i119497 = icmp eq i64 %.2257.lcssa, 0
  br i1 %.not20.i.i119497, label %_ZN10fast_float6bigint3addEm.exit129, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i127

.lr.ph.i.i120:                                    ; preds = %_ZN10fast_float6bigint3mulEm.exit118
  %i.hs = zext i16 %i.hr to i64                   ; 2 uses
  %i.ht = load i64, ptr %0, align 8, !tbaa !27
  %i.hu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ht, i64 %.2257.lcssa) ; 2 uses
  %i.hv = extractvalue { i64, i1 } %i.hu, 1
  %i.hw = extractvalue { i64, i1 } %i.hu, 0
  store i64 %i.hw, ptr %0, align 8, !tbaa !27
  br i1 %i.hv, label %.peel.next.i123.preheader, label %_ZN10fast_float6bigint3addEm.exit129

.peel.next.i123.preheader:                        ; preds = %.lr.ph.i.i120
  %exitcond.not.i.i125557 = icmp eq i16 %i.hr, 1
  br i1 %exitcond.not.i.i125557, label %.critedge.i.i126, label %.lr.ph559

.peel.next.i123:                                  ; preds = %.lr.ph559
  %i.hx = add nuw nsw i64 %.01421.i.i124558, 1    ; 2 uses
  %exitcond.not.i.i125 = icmp eq i64 %i.hx, %i.hs
  br i1 %exitcond.not.i.i125, label %.critedge.i.i126, label %.lr.ph559, !llvm.loop !68

.lr.ph559:                                        ; preds = %.peel.next.i123.preheader, %.peel.next.i123
  %.01421.i.i124558 = phi i64 [ %i.hx, %.peel.next.i123 ], [ 1, %.peel.next.i123.preheader ] ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i124558 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !27
  %i.ia = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.hz, i64 1) ; 2 uses
  %i.ib = extractvalue { i64, i1 } %i.ia, 1
  %i.ic = extractvalue { i64, i1 } %i.ia, 0
  store i64 %i.ic, ptr %i.hy, align 8, !tbaa !27
  br i1 %i.ib, label %.peel.next.i123, label %_ZN10fast_float6bigint3addEm.exit129, !llvm.loop !68

.critedge.i.i126:                                 ; preds = %.peel.next.i123, %.peel.next.i123.preheader
  %i.id = icmp ult i16 %i.hr, 62
  br i1 %i.id, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i127, label %_ZN10fast_float6bigint3addEm.exit129

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i127: ; preds = %_ZN10fast_float6bigint3mulEm.exit118.thread, %.critedge.i.i126
  %i.ie = phi i64 [ %i.hs, %.critedge.i.i126 ], [ 0, %_ZN10fast_float6bigint3mulEm.exit118.thread ]
  %i.if = phi i16 [ %i.hr, %.critedge.i.i126 ], [ 0, %_ZN10fast_float6bigint3mulEm.exit118.thread ]
  %.022.i.lcssa7.i128 = phi i64 [ 1, %.critedge.i.i126 ], [ %.2257.lcssa, %_ZN10fast_float6bigint3mulEm.exit118.thread ]
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ie
  store i64 %.022.i.lcssa7.i128, ptr %i.ig, align 8, !tbaa !27
  %i.ih = add nuw nsw i16 %i.if, 1
  store i16 %i.ih, ptr %i.q, align 8, !tbaa !34
  br label %_ZN10fast_float6bigint3addEm.exit129

_ZN10fast_float6bigint3addEm.exit129:             ; preds = %.lr.ph559, %_ZN10fast_float6bigint3mulEm.exit118.thread, %_ZN10fast_float6bigint3mulEm.exit118, %.lr.ph.i.i120, %.critedge.i.i126, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i127
  %.not = icmp eq ptr %.2.lcssa, %i.f
  br i1 %.not, label %._crit_edge350, label %.preheader294, !llvm.loop !71

._crit_edge350:                                   ; preds = %_ZN10fast_float6bigint3addEm.exit129, %._crit_edge, %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit71
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !78 ; 6 uses
  %i.ik = ptrtoaddr ptr %i.ij to i64              ; 2 uses
  %.not59 = icmp eq ptr %i.ij, null
  br i1 %.not59, label %_ZN10fast_float12is_truncatedIcEEbPKT_S3_.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge350
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.im = load i64, ptr %i.il, align 8, !tbaa !76 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.im ; 10 uses
  %i.io = load i64, ptr %3, align 8, !tbaa !27
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %.preheader289, label %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit

.preheader289:                                    ; preds = %bb.q
  %i.iq = ptrtoint ptr %i.in to i64
  %i.ir = icmp sgt i64 %i.im, 7
  br i1 %i.ir, label %.lr.ph368, label %._crit_edge369

.lr.ph368:                                        ; preds = %.preheader289, %bb.r
  %.7367 = phi ptr [ %i.is, %bb.r ], [ %i.ij, %.preheader289 ] ; 3 uses
  %.0.copyload.i = load i64, ptr %.7367, align 1
  %.not.i = icmp eq i64 %.0.copyload.i, 3472328296227680304
  br i1 %.not.i, label %bb.r, label %._crit_edge369.loopexit

bb.r:                                             ; preds = %.lr.ph368
  %i.is = getelementptr inbounds nuw i8, ptr %.7367, i64 8 ; 3 uses
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = sub i64 %i.iq, %i.it
  %i.iv = icmp sgt i64 %i.iu, 7
  br i1 %i.iv, label %.lr.ph368, label %._crit_edge369.loopexit, !llvm.loop !65

._crit_edge369.loopexit:                          ; preds = %.lr.ph368, %bb.r
  %.7.lcssa.ph = phi ptr [ %i.is, %bb.r ], [ %.7367, %.lr.ph368 ] ; 2 uses
  %.pre451 = ptrtoaddr ptr %.7.lcssa.ph to i64
  br label %._crit_edge369

._crit_edge369:                                   ; preds = %._crit_edge369.loopexit, %.preheader289
  %.7.lcssa441.pre-phi = phi i64 [ %.pre451, %._crit_edge369.loopexit ], [ %i.ik, %.preheader289 ]
  %.7.lcssa = phi ptr [ %.7.lcssa.ph, %._crit_edge369.loopexit ], [ %i.ij, %.preheader289 ] ; 3 uses
  %.not8.i373 = icmp eq ptr %.7.lcssa, %i.in
  br i1 %.not8.i373, label %_ZN10fast_float12is_truncatedIcEEbPKT_S3_.exit, label %.lr.ph376.preheader

.lr.ph376.preheader:                              ; preds = %._crit_edge369
  %i.iw = add i64 %i.im, %i.ik
  %i.ix = sub i64 %i.iw, %.7.lcssa441.pre-phi
  %scevgep442 = getelementptr i8, ptr %.7.lcssa, i64 %i.ix
  br label %.lr.ph376

.lr.ph376:                                        ; preds = %.lr.ph376.preheader, %bb.s
  %.8374 = phi ptr [ %i.iz, %bb.s ], [ %.7.lcssa, %.lr.ph376.preheader ] ; 3 uses
  %i.iy = load i8, ptr %.8374, align 1, !tbaa !24
  %.not9.i = icmp eq i8 %i.iy, 48
  br i1 %.not9.i, label %bb.s, label %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit

bb.s:                                             ; preds = %.lr.ph376
  %i.iz = getelementptr inbounds nuw i8, ptr %.8374, i64 1 ; 2 uses
  %.not8.i = icmp eq ptr %i.iz, %i.in
  br i1 %.not8.i, label %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit, label %.lr.ph376, !llvm.loop !66

_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit:    ; preds = %bb.s, %.lr.ph376, %bb.q
  %.3 = phi ptr [ %i.ij, %bb.q ], [ %.8374, %.lr.ph376 ], [ %scevgep442, %bb.s ] ; 2 uses
  %.not60408 = icmp eq ptr %.3, %i.in
  br i1 %.not60408, label %_ZN10fast_float12is_truncatedIcEEbPKT_S3_.exit, label %.preheader287.lr.ph

.preheader287.lr.ph:                              ; preds = %_ZN10fast_float10skip_zerosIcEEvRPKT_S3_.exit
  %i.ja = ptrtoint ptr %i.in to i64               ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 7 uses
  br label %.preheader287

.preheader287:                                    ; preds = %.preheader287.lr.ph, %_ZN10fast_float6bigint3addEm.exit191
  %.4409 = phi ptr [ %.3, %.preheader287.lr.ph ], [ %.6.lcssa, %_ZN10fast_float6bigint3addEm.exit191 ] ; 5 uses
  %i.jc = ptrtoint ptr %.4409 to i64
  %i.jd = sub i64 %i.ja, %i.jc
  %i.je = icmp sgt i64 %i.jd, 7
  %.pre445.pre = load i64, ptr %3, align 8, !tbaa !27 ; 4 uses
  %i.jf = sub i64 %2, %.pre445.pre
  %i.jg = icmp ugt i64 %i.jf, 7
  %or.cond697 = select i1 %i.je, i1 %i.jg, i1 false
  br i1 %or.cond697, label %bb.t, label %.critedge4

bb.t:                                             ; preds = %.preheader287
  %.0.copyload.i.i83 = load i64, ptr %.4409, align 1
  %i.jh = add i64 %.0.copyload.i.i83, -3472328296227680304 ; 2 uses
  %i.ji = mul i64 %i.jh, 10
  %i.jj = lshr i64 %i.jh, 8
  %i.jk = add i64 %i.ji, %i.jj                    ; 2 uses
  %i.jl = and i64 %i.jk, 1095216660735
  %i.jm = mul i64 %i.jl, 4294967296000100
  %i.jn = lshr i64 %i.jk, 16
  %i.jo = and i64 %i.jn, 1095216660735
  %i.jp = mul i64 %i.jo, 42949672960001
  %i.jq = add i64 %i.jp, %i.jm
  %i.jr = lshr i64 %i.jq, 32                      ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.4409, i64 8 ; 3 uses
  %i.jt = add i64 %.pre445.pre, 8                 ; 3 uses
  store i64 %i.jt, ptr %3, align 8, !tbaa !27
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = sub i64 %i.ja, %i.ju
  %i.jw = icmp sgt i64 %i.jv, 7
  %i.jx = sub i64 %2, %i.jt
  %i.jy = icmp ugt i64 %i.jx, 7
  %or.cond693 = select i1 %i.jw, i1 %i.jy, i1 false
  br i1 %or.cond693, label %bb.u, label %.critedge4

bb.u:                                             ; preds = %bb.t
  %i.jz = mul nuw nsw i64 %i.jr, 100000000
  %.0.copyload.i.i83.1 = load i64, ptr %i.js, align 1
  %i.ka = add i64 %.0.copyload.i.i83.1, -3472328296227680304 ; 2 uses
  %i.kb = mul i64 %i.ka, 10
  %i.kc = lshr i64 %i.ka, 8
  %i.kd = add i64 %i.kb, %i.kc                    ; 2 uses
  %i.ke = and i64 %i.kd, 1095216660735
  %i.kf = mul i64 %i.ke, 4294967296000100
  %i.kg = lshr i64 %i.kd, 16
  %i.kh = and i64 %i.kg, 1095216660735
  %i.ki = mul i64 %i.kh, 42949672960001
  %i.kj = add i64 %i.ki, %i.kf
  %i.kk = lshr i64 %i.kj, 32
  %i.kl = add nuw nsw i64 %i.kk, %i.jz
  %i.km = getelementptr inbounds nuw i8, ptr %.4409, i64 16
  %i.kn = add i64 %.pre445.pre, 16                ; 2 uses
  store i64 %i.kn, ptr %3, align 8, !tbaa !27
  br label %.critedge4

.critedge4:                                       ; preds = %bb.t, %bb.u, %.preheader287
  %.pre445 = phi i64 [ %.pre445.pre, %.preheader287 ], [ %i.jt, %bb.t ], [ %i.kn, %bb.u ] ; 3 uses
  %.4266.lcssa = phi i64 [ 0, %.preheader287 ], [ 8, %bb.t ], [ 16, %bb.u ] ; 2 uses
  %.4259.lcssa = phi i64 [ 0, %.preheader287 ], [ %i.jr, %bb.t ], [ %i.kl, %bb.u ] ; 2 uses
  %.5.lcssa = phi ptr [ %.4409, %.preheader287 ], [ %i.js, %bb.t ], [ %i.km, %bb.u ] ; 3 uses
  %.not62394 = icmp eq ptr %.5.lcssa, %i.in
  br i1 %.not62394, label %.critedge6, label %.lr.ph399

.lr.ph399:                                        ; preds = %.critedge4
  %umax443 = tail call i64 @llvm.umax.i64(i64 %.pre445, i64 %2) ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph399, %bb.w
  %i.ko = phi i64 [ %.pre445, %.lr.ph399 ], [ %i.kw, %bb.w ] ; 2 uses
  %.6398 = phi ptr [ %.5.lcssa, %.lr.ph399 ], [ %i.ku, %bb.w ] ; 3 uses
  %.5260397 = phi i64 [ %.4259.lcssa, %.lr.ph399 ], [ %i.kt, %bb.w ] ; 2 uses
  %.5267396 = phi i64 [ %.4266.lcssa, %.lr.ph399 ], [ %i.kv, %bb.w ] ; 3 uses
  %exitcond444.not = icmp eq i64 %i.ko, %umax443
  br i1 %exitcond444.not, label %.critedge6, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kp = mul i64 %.5260397, 10
  %i.kq = load i8, ptr %.6398, align 1, !tbaa !24
  %i.kr = sext i8 %i.kq to i64
  %i.ks = add i64 %i.kp, -48
  %i.kt = add i64 %i.ks, %i.kr                    ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.6398, i64 1 ; 3 uses
  %i.kv = add nuw nsw i64 %.5267396, 1            ; 2 uses
  %i.kw = add i64 %i.ko, 1                        ; 3 uses
  store i64 %i.kw, ptr %3, align 8, !tbaa !27
  %i.kx = icmp ugt i64 %.5267396, 17
  %.not62 = icmp eq ptr %i.ku, %i.in
  %or.cond66 = select i1 %i.kx, i1 true, i1 %.not62
  br i1 %or.cond66, label %.critedge6, label %bb.v, !llvm.loop !72

.critedge6:                                       ; preds = %bb.v, %bb.w, %.critedge4
  %i.ky = phi i64 [ %.pre445, %.critedge4 ], [ %i.kw, %bb.w ], [ %umax443, %bb.v ]
  %.5267.lcssa = phi i64 [ %.4266.lcssa, %.critedge4 ], [ %i.kv, %bb.w ], [ %.5267396, %bb.v ] ; 2 uses
  %.5260.lcssa = phi i64 [ %.4259.lcssa, %.critedge4 ], [ %i.kt, %bb.w ], [ %.5260397, %bb.v ] ; 8 uses
  %.6.lcssa = phi ptr [ %.5.lcssa, %.critedge4 ], [ %i.ku, %bb.w ], [ %.6398, %bb.v ] ; 5 uses
  %i.kz = icmp eq i64 %i.ky, %2
  %i.la = load i16, ptr %i.jb, align 8, !tbaa !34 ; 12 uses
  %i.lb = zext i16 %i.la to i64                   ; 6 uses
  %.not19.i.i130 = icmp eq i16 %i.la, 0           ; 2 uses
  br i1 %i.kz, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %.critedge6
  br i1 %.not19.i.i130, label %_ZN10fast_float6bigint3mulEm.exit139.thread, label %.lr.ph.i.i131

.lr.ph.i.i131:                                    ; preds = %bb.x
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_floatL20powers_of_ten_uint64E, i64 %.5267.lcssa
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !27
  %i.le = zext i64 %i.ld to i128                  ; 3 uses
  %xtraiter639 = and i64 %i.lb, 1
  %i.lf = icmp eq i16 %i.la, 1
  br i1 %i.lf, label %.epil.preheader638, label %.lr.ph.i.i131.new

.lr.ph.i.i131.new:                                ; preds = %.lr.ph.i.i131
  %unroll_iter644 = and i64 %i.lb, 65534
  br label %bb.y

._crit_edge.i.i135.unr-lcssa:                     ; preds = %bb.y
  %lcmp.mod640.not = icmp eq i64 %xtraiter639, 0
  br i1 %lcmp.mod640.not, label %._crit_edge.i.i135, label %.epil.preheader638

.epil.preheader638:                               ; preds = %._crit_edge.i.i135.unr-lcssa, %.lr.ph.i.i131
  %.016.i.i132.epil.init = phi i64 [ 0, %.lr.ph.i.i131 ], [ %i.mh, %._crit_edge.i.i135.unr-lcssa ]
  %.01215.i.i133.epil.init = phi i64 [ 0, %.lr.ph.i.i131 ], [ %i.mf, %._crit_edge.i.i135.unr-lcssa ]
  %lcmp.mod643 = trunc i16 %i.la to i1
  tail call void @llvm.assume(i1 %lcmp.mod643)
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i132.epil.init ; 2 uses
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !27
  %i.li = zext i64 %i.lh to i128
  %i.lj = mul nuw i128 %i.li, %i.le
  %i.lk = zext i64 %.01215.i.i133.epil.init to i128
  %i.ll = add nuw i128 %i.lj, %i.lk               ; 2 uses
  %i.lm = lshr i128 %i.ll, 64                     ; 2 uses
  %i.ln = trunc nuw i128 %i.lm to i64
  %i.lo = trunc i128 %i.ll to i64
  store i64 %i.lo, ptr %i.lg, align 8, !tbaa !27
  br label %._crit_edge.i.i135

._crit_edge.i.i135:                               ; preds = %._crit_edge.i.i135.unr-lcssa, %.epil.preheader638
  %.lcssa580 = phi i128 [ %i.me, %._crit_edge.i.i135.unr-lcssa ], [ %i.lm, %.epil.preheader638 ]
  %.lcssa579 = phi i64 [ %i.mf, %._crit_edge.i.i135.unr-lcssa ], [ %i.ln, %.epil.preheader638 ]
  %.not.i.i136 = icmp ne i128 %.lcssa580, 0
  %i.lp = icmp ult i16 %i.la, 62
  %or.cond283 = and i1 %i.lp, %.not.i.i136
  br i1 %or.cond283, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i138, label %_ZN10fast_float6bigint3mulEm.exit139

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i131.new
  %.016.i.i132 = phi i64 [ 0, %.lr.ph.i.i131.new ], [ %i.mh, %bb.y ] ; 3 uses
  %.01215.i.i133 = phi i64 [ 0, %.lr.ph.i.i131.new ], [ %i.mf, %bb.y ]
  %niter645 = phi i64 [ 0, %.lr.ph.i.i131.new ], [ %niter645.next.1, %bb.y ]
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i132 ; 2 uses
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !27
  %i.ls = zext i64 %i.lr to i128
  %i.lt = mul nuw i128 %i.ls, %i.le
  %i.lu = zext i64 %.01215.i.i133 to i128
  %i.lv = add nuw i128 %i.lt, %i.lu               ; 2 uses
  %i.lw = lshr i128 %i.lv, 64
  %i.lx = trunc i128 %i.lv to i64
  store i64 %i.lx, ptr %i.lq, align 8, !tbaa !27
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i132
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 2 uses
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !27
  %i.mb = zext i64 %i.ma to i128
  %i.mc = mul nuw i128 %i.mb, %i.le
  %i.md = add nuw i128 %i.mc, %i.lw               ; 2 uses
  %i.me = lshr i128 %i.md, 64                     ; 2 uses
  %i.mf = trunc nuw i128 %i.me to i64             ; 3 uses
  %i.mg = trunc i128 %i.md to i64
  store i64 %i.mg, ptr %i.lz, align 8, !tbaa !27
  %i.mh = add nuw nsw i64 %.016.i.i132, 2         ; 2 uses
  %niter645.next.1 = add i64 %niter645, 2         ; 2 uses
  %niter645.ncmp.1 = icmp eq i64 %niter645.next.1, %unroll_iter644
  br i1 %niter645.ncmp.1, label %._crit_edge.i.i135.unr-lcssa, label %bb.y, !llvm.loop !0

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i138: ; preds = %._crit_edge.i.i135
end_hunk_1
