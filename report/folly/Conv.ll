Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Conv?download=true
inline.NumInlined: 3501
inline.NumDeleted: 1003
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE:bb.a
  %i.ir = getelementptr i8, ptr %i.ig, i64 5480
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !77
  %i.it = zext i64 %i.is to i128
  %i.iu = mul nuw i128 %i.it, %i.ij
  %i.iv = lshr i128 %i.iu, 64
  %i.iw = trunc nuw i128 %i.iv to i64             ; 2 uses
  %i.ix = add i64 %i.iw, %i.im                    ; 2 uses
  %i.iy = icmp ult i64 %i.ix, %i.iw
  %i.iz = zext i1 %i.iy to i64
  %spec.select.i77 = add nuw i64 %i.iz, %i.io
  br label %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit

_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit: ; preds = %.noexc79, %.noexc78
  %.pn345 = phi i64 [ %i.ix, %.noexc79 ], [ %i.im, %.noexc78 ]
  %spec.select.i77.pn = phi i64 [ %spec.select.i77, %.noexc79 ], [ %i.io, %.noexc78 ] ; 3 uses
  %i.ja = lshr i64 %spec.select.i77.pn, 63        ; 2 uses
  %i.jb = trunc nuw nsw i64 %i.ja to i32
  %i.jc = or disjoint i64 %i.ja, 38               ; 2 uses
  %i.jd = lshr i64 %spec.select.i77.pn, %i.jc     ; 6 uses
  %i.je = mul nsw i32 %i.id, 217706
  %i.jf = ashr i32 %i.je, 16
  %reass.sub = sub nsw i32 %i.jf, %i.ib
  %i.jg = add nsw i32 %reass.sub, 190
  %i.jh = add nsw i32 %i.jg, %i.jb                ; 3 uses
  %i.ji = icmp slt i32 %i.jh, 1
  br i1 %i.ji, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit
  %i.jj = sub nsw i32 1, %i.jh                    ; 2 uses
  %i.jk = icmp samesign ugt i32 %i.jj, 63
  br i1 %i.jk, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jl = zext nneg i32 %i.jj to i64
  %i.jm = lshr i64 %i.jd, %i.jl                   ; 2 uses
  %i.jn = and i64 %i.jm, 1
  %i.jo = add nuw nsw i64 %i.jn, %i.jm            ; 2 uses
  %i.jp = lshr i64 %i.jo, 1
  %i.jq = icmp samesign ugt i64 %i.jo, 16777215
  %i.jr = zext i1 %i.jq to i32
  br label %bb.bq

bb.bn:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit
  %i.js = icmp ugt i64 %.pn345, 1
  %i.jt = icmp ult i64 %i.gy, -28
  %or.cond338 = or i1 %i.js, %i.jt
  br i1 %or.cond338, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ju = and i64 %i.jd, 3
  %i.jv = icmp eq i64 %i.ju, 1
  %i.jw = shl i64 %i.jd, %i.jc
  %i.jx = icmp eq i64 %i.jw, %spec.select.i77.pn
  %or.cond.i52 = select i1 %i.jv, i1 %i.jx, i1 false
  %i.jy = and i64 %i.jd, 67108860
  %spec.select339 = select i1 %or.cond.i52, i64 %i.jy, i64 %i.jd
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.sroa.0266.0 = phi i64 [ %i.jd, %bb.bn ], [ %spec.select339, %bb.bo ] ; 2 uses
  %i.jz = and i64 %.sroa.0266.0, 1
  %i.ka = add nuw nsw i64 %i.jz, %.sroa.0266.0    ; 2 uses
  %i.kb = lshr i64 %i.ka, 1
  %.not22.i = icmp samesign ugt i64 %i.ka, 33554431 ; 2 uses
  %i.kc = zext i1 %.not22.i to i32
  %spec.select341 = add nuw nsw i32 %i.jh, %i.kc  ; 2 uses
  %i.kd = and i64 %i.kb, 9223372036846387199
  %.not23.i = icmp samesign ugt i32 %spec.select341, 254 ; 2 uses
  %.not = select i1 %.not23.i, i1 true, i1 %.not22.i
  %spec.select342 = select i1 %.not, i64 0, i64 %i.kd
  %spec.select343 = select i1 %.not23.i, i32 255, i32 %spec.select341
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bl, %bb.bk, %bb.bj, %bb.bm
  %.sroa.0266.2 = phi i64 [ 0, %bb.bl ], [ 0, %bb.bj ], [ 0, %bb.bk ], [ %i.jp, %bb.bm ], [ %spec.select342, %bb.bp ]
  %.sroa.18271.1 = phi i32 [ 0, %bb.bl ], [ 0, %bb.bj ], [ 255, %bb.bk ], [ %i.jr, %bb.bm ], [ %spec.select343, %bb.bp ]
  %i.ke = trunc nuw nsw i64 %.sroa.0266.2 to i32
  %i.kf = shl nuw nsw i32 %.sroa.18271.1, 23
  %i.kg = select i1 %i.ah, i32 -2147483648, i32 0
  %i.kh = or i32 %i.kg, %i.ke
  %i.ki = or i32 %i.kh, %i.kf
  store i32 %i.ki, ptr %i.a, align 4, !tbaa !75
  br label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit: ; preds = %.critedge6.i
  %i.kj = call { ptr, i32 } @_ZN10fast_float22parse_number_slow_pathIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EEb(ptr noundef nonnull %.028.i.i.i, ptr noundef %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 133, i64 42949673006, i1 noundef zeroext false) #25 ; 2 uses
  %i.kk = extractvalue { ptr, i32 } %i.kj, 0      ; 2 uses
  %i.kl = extractvalue { ptr, i32 } %i.kj, 1
  switch i32 %i.kl, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread448 [
    i32 34, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread
    i32 0, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread
  ]

_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread: ; preds = %bb.as, %bb.ar, %bb.aq, %.lr.ph.i._crit_edge, %bb.aw, %bb.ap, %bb.bh, %bb.bd, %bb.bc, %bb.bi, %bb.bq, %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit
  %.sroa.073.1.i332 = phi ptr [ %i.kk, %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit ], [ %i.kk, %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit ], [ %.6294, %bb.bq ], [ %.6294, %bb.bi ], [ %.6294, %bb.bc ], [ %.6294, %bb.bd ], [ %.6294, %bb.bh ], [ %i.gw, %bb.aw ], [ %i.d, %bb.ap ], [ %i.gc, %bb.aq ], [ %i.gj, %.lr.ph.i._crit_edge ], [ %i.gc, %bb.ar ], [ %i.gc, %bb.as ]
  %i.km = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.kn = ptrtoint ptr %.sroa.073.1.i332 to i64
  %i.ko = ptrtoint ptr %i.km to i64               ; 2 uses
  %i.kp = sub i64 %i.kn, %i.ko                    ; 2 uses
  %i.kq = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = sub i64 %i.kr, %i.ko
  %i.kt = icmp ugt i64 %i.kp, %i.ks
  br i1 %i.kt, label %bb.br, label %bb.bs, !prof !73

bb.br:                                            ; preds = %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #11
          to label %.noexc86 unwind label %bb.bt

.noexc86:                                         ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread
  %i.ku = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kp
  store ptr %i.ku, ptr %0, align 8, !tbaa !69
  %i.kv = load i32, ptr %i.a, align 4, !tbaa !75
  %i.kw = zext i32 %i.kv to i64
  %i.kx = shl nuw i64 %i.kw, 32
  %i.ky = or disjoint i64 %i.kx, 1
  br label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread448

_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread448: ; preds = %bb.ao, %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit56, %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, %bb.bs
  %i.kz = phi i64 [ %i.ky, %bb.bs ], [ 2306, %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit ], [ 2306, %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit56 ], [ 2306, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.thread

switch.hole_check:                                ; preds = %bb.k
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 8388639, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.thread, label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit

_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.thread: ; preds = %switch.hole_check, %._crit_edge.i.i.i, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit, %bb.a, %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread448
  %.sroa.993.0.insert.ext = phi i64 [ %i.kz, %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread448 ], [ 258, %bb.a ], [ 258, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit ], [ 258, %._crit_edge.i.i.i ], [ 258, %switch.hole_check ]
  ret i64 %.sroa.993.0.insert.ext

bb.bt:                                            ; preds = %bb.br
  %i.la = landingpad { ptr, i32 }
          catch ptr null
  %i.lb = extractvalue { ptr, i32 } %i.la, 0
  call void @__clang_call_terminate(ptr %i.lb) #26
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
  br i1 %i.o, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.p = sext i8 %i.l to i64
  %i.q = add nsw i64 %i.p, -48                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0264, i64 1 ; 4 uses
  %.not118.i = icmp eq ptr %i.r, %1
  br i1 %.not118.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i8, ptr %i.r, align 1, !tbaa !71, !noalias !408 ; 2 uses
  %i.t = sext i8 %i.s to i32
  %i.u = add nsw i32 %i.t, -48
  %i.v = icmp ult i32 %i.u, 10
  br i1 %i.v, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %i.w = mul nuw nsw i64 %i.q, 10
  %i.x = sext i8 %i.s to i64
  %i.y = add nsw i64 %i.w, -48
  %i.z = add nsw i64 %i.y, %i.x                   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0264, i64 2 ; 4 uses
  %.not119.i = icmp eq ptr %i.aa, %1
  br i1 %.not119.i, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !71, !noalias !408 ; 2 uses
  %i.ac = sext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -48
  %i.ae = icmp ult i32 %i.ad, 10
  br i1 %i.ae, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.af = mul nsw i64 %i.z, 10
  %i.ag = sext i8 %i.ab to i64
  %i.ah = add nsw i64 %i.af, -48
  %i.ai = add nsw i64 %i.ah, %i.ag                ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0264, i64 3 ; 4 uses
  %.not120.i = icmp eq ptr %i.aj, %1
  br i1 %.not120.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !71, !noalias !408 ; 2 uses
  %i.al = sext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.ao = mul nsw i64 %i.ai, 10
  %i.ap = sext i8 %i.ak to i64
  %i.aq = add nsw i64 %i.ao, -48
  %i.ar = add nsw i64 %i.aq, %i.ap                ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0264, i64 4 ; 4 uses
  %.not121.i = icmp eq ptr %i.as, %1
  br i1 %.not121.i, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = load i8, ptr %i.as, align 1, !tbaa !71, !noalias !408 ; 2 uses
  %i.au = sext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %i.ax = mul nsw i64 %i.ar, 10
  %i.ay = sext i8 %i.at to i64
  %i.az = add nsw i64 %i.ax, -48
  %i.ba = add nsw i64 %i.az, %i.ay                ; 2 uses
  %storemerge.i437 = getelementptr inbounds nuw i8, ptr %.0264, i64 5 ; 3 uses
  %.not122.i438 = icmp eq ptr %storemerge.i437, %1
  br i1 %.not122.i438, label %.critedge.i, label %.lr.ph442.preheader

.lr.ph442.preheader:                              ; preds = %bb.o
  %i.bb = sub i64 %i.a, %.0264525
  %scevgep526 = getelementptr i8, ptr %.0264, i64 %i.bb
  br label %.lr.ph442

.lr.ph442:                                        ; preds = %.lr.ph442.preheader, %bb.p
  %storemerge.i440 = phi ptr [ %storemerge.i, %bb.p ], [ %storemerge.i437, %.lr.ph442.preheader ] ; 3 uses
  %storemerge137.i439 = phi i64 [ %i.bj, %bb.p ], [ %i.ba, %.lr.ph442.preheader ] ; 2 uses
  %i.bc = load i8, ptr %storemerge.i440, align 1, !tbaa !71, !noalias !408 ; 2 uses
  %i.bd = sext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48
  %i.bf = icmp ult i32 %i.be, 10
  br i1 %i.bf, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %.lr.ph442
  %i.bg = mul i64 %storemerge137.i439, 10
  %i.bh = sext i8 %i.bc to i64
  %i.bi = add i64 %i.bg, -48
  %i.bj = add i64 %i.bi, %i.bh                    ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge.i440, i64 1 ; 2 uses
  %.not122.i = icmp eq ptr %storemerge.i, %1
  br i1 %.not122.i, label %.critedge.i, label %.lr.ph442, !llvm.loop !5

.critedge.i:                                      ; preds = %bb.p, %.lr.ph442, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.1265 = phi ptr [ %.0264, %bb.e ], [ %i.r, %bb.g ], [ %i.aa, %bb.i ], [ %i.aj, %bb.k ], [ %i.as, %bb.m ], [ %i.r, %bb.h ], [ %.0264, %bb.f ], [ %i.as, %bb.n ], [ %i.aj, %bb.l ], [ %i.aa, %bb.j ], [ %storemerge.i437, %bb.o ], [ %scevgep526, %bb.p ], [ %storemerge.i440, %.lr.ph442 ] ; 9 uses
  %.0 = phi i64 [ 0, %bb.e ], [ %i.q, %bb.g ], [ %i.z, %bb.i ], [ %i.ai, %bb.k ], [ %i.ar, %bb.m ], [ %i.q, %bb.h ], [ 0, %bb.f ], [ %i.ar, %bb.n ], [ %i.ai, %bb.l ], [ %i.z, %bb.j ], [ %i.ba, %bb.o ], [ %i.bj, %bb.p ], [ %storemerge137.i439, %.lr.ph442 ] ; 4 uses
  %i.bk = ptrtoint ptr %.1265 to i64              ; 2 uses
  %i.bl = ptrtoint ptr %.0264 to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 8 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.thread606, label %bb.q

bb.q:                                             ; preds = %.critedge.i
  %i.bo = icmp eq i8 %i.l, 48
  %i.bp = icmp sgt i64 %i.bm, 1
  %or.cond.i = and i1 %i.bp, %i.bo
  br i1 %or.cond.i, label %.thread606, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not123.i = icmp eq ptr %.1265, %1
  br i1 %.not123.i, label %.thread295, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = load i8, ptr %.1265, align 1, !tbaa !71, !noalias !408
  %i.br = icmp eq i8 %i.bq, %.sroa.2.8.extract.trunc.i
  br i1 %i.br, label %bb.t, label %.thread295

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %.1265, i64 1 ; 4 uses
  %i.bt = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 3 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, 7
  br i1 %i.bw, label %.lr.ph451, label %.critedge.i50

.lr.ph451:                                        ; preds = %bb.t, %.noexc51
  %.7449 = phi i64 [ %i.cm, %.noexc51 ], [ %.0, %bb.t ] ; 2 uses
  %.11448 = phi ptr [ %i.cn, %.noexc51 ], [ %i.bs, %bb.t ] ; 3 uses
  %.0.copyload.i55 = load i64, ptr %.11448, align 1, !noalias !408 ; 3 uses
  %i.bx = add i64 %.0.copyload.i55, 5063812098665367110
  %i.by = add i64 %.0.copyload.i55, -3472328296227680304 ; 3 uses
  %i.bz = or i64 %i.bx, %i.by
  %i.ca = and i64 %i.bz, -9187201950435737472
  %.not.i53 = icmp eq i64 %i.ca, 0
  br i1 %.not.i53, label %.noexc51, label %.critedge.i50.thread.loopexit

.noexc51:                                         ; preds = %.lr.ph451
  %i.cb = mul i64 %.7449, 100000000
  %i.cc = mul i64 %i.by, 10
  %i.cd = lshr i64 %i.by, 8
  %i.ce = add i64 %i.cc, %i.cd                    ; 2 uses
  %i.cf = and i64 %i.ce, 1095216660735
  %i.cg = mul i64 %i.cf, 4294967296000100
  %i.ch = lshr i64 %i.ce, 16
  %i.ci = and i64 %i.ch, 1095216660735
  %i.cj = mul i64 %i.ci, 42949672960001
  %i.ck = add i64 %i.cj, %i.cg
  %i.cl = lshr i64 %i.ck, 32
  %i.cm = add i64 %i.cl, %i.cb                    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.11448, i64 8 ; 3 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.bt, %i.co                    ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, 7
  br i1 %i.cq, label %.lr.ph451, label %.critedge.i50, !llvm.loop !1

.critedge.i50:                                    ; preds = %.noexc51, %bb.t
  %.11.lcssa = phi ptr [ %i.bs, %bb.t ], [ %i.cn, %.noexc51 ] ; 3 uses
  %.7.lcssa = phi i64 [ %.0, %bb.t ], [ %i.cm, %.noexc51 ] ; 2 uses
  %.lcssa374 = phi i64 [ %i.bv, %bb.t ], [ %i.cp, %.noexc51 ]
  %i.cr = icmp sgt i64 %.lcssa374, 3
  br i1 %i.cr, label %.critedge.i50..critedge.i50.thread_crit_edge, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52

.critedge.i50..critedge.i50.thread_crit_edge:     ; preds = %.critedge.i50
  %.0.copyload.i58.pre = load i32, ptr %.11.lcssa, align 1, !noalias !408
  br label %.critedge.i50.thread

.critedge.i50.thread.loopexit:                    ; preds = %.lr.ph451
  %i.cs = trunc i64 %.0.copyload.i55 to i32
  br label %.critedge.i50.thread

.critedge.i50.thread:                             ; preds = %.critedge.i50..critedge.i50.thread_crit_edge, %.critedge.i50.thread.loopexit
  %.0.copyload.i58 = phi i32 [ %.0.copyload.i58.pre, %.critedge.i50..critedge.i50.thread_crit_edge ], [ %i.cs, %.critedge.i50.thread.loopexit ] ; 2 uses
  %.11379 = phi ptr [ %.11.lcssa, %.critedge.i50..critedge.i50.thread_crit_edge ], [ %.11448, %.critedge.i50.thread.loopexit ] ; 2 uses
  %.7377 = phi i64 [ %.7.lcssa, %.critedge.i50..critedge.i50.thread_crit_edge ], [ %.7449, %.critedge.i50.thread.loopexit ] ; 2 uses
  %i.ct = add i32 %.0.copyload.i58, 1179010630
  %i.cu = add i32 %.0.copyload.i58, -808464432    ; 3 uses
  %i.cv = or i32 %i.ct, %i.cu
  %i.cw = and i32 %i.cv, -2139062144
  %.not.i60 = icmp eq i32 %i.cw, 0
  br i1 %.not.i60, label %bb.u, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52

bb.u:                                             ; preds = %.critedge.i50.thread
  %i.cx = mul i64 %.7377, 10000
  %i.cy = mul i32 %i.cu, 10
  %i.cz = lshr i32 %i.cu, 8
  %i.da = add i32 %i.cy, %i.cz
  %i.db = and i32 %i.da, 16711935
  %i.dc = mul i32 %i.db, 6553601
  %i.dd = lshr i32 %i.dc, 16
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = add i64 %i.cx, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.11379, i64 4
  br label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52

_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52: ; preds = %.critedge.i50, %.critedge.i50.thread, %bb.u
  %.12 = phi ptr [ %i.dg, %bb.u ], [ %.11379, %.critedge.i50.thread ], [ %.11.lcssa, %.critedge.i50 ] ; 5 uses
  %.8 = phi i64 [ %i.df, %bb.u ], [ %.7377, %.critedge.i50.thread ], [ %.7.lcssa, %.critedge.i50 ] ; 2 uses
  %.not124.i455 = icmp eq ptr %.12, %1
  br i1 %.not124.i455, label %._crit_edge459, label %.lr.ph458.preheader

.lr.ph458.preheader:                              ; preds = %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52
  %.12527 = ptrtoaddr ptr %.12 to i64
  %i.dh = sub i64 %i.a, %.12527
  %scevgep528 = getelementptr i8, ptr %.12, i64 %i.dh
  br label %.lr.ph458

.lr.ph458:                                        ; preds = %.lr.ph458.preheader, %bb.v
  %.6457 = phi i64 [ %i.dq, %bb.v ], [ %.8, %.lr.ph458.preheader ] ; 2 uses
  %.10456 = phi ptr [ %i.dn, %bb.v ], [ %.12, %.lr.ph458.preheader ] ; 3 uses
  %i.di = load i8, ptr %.10456, align 1, !tbaa !71, !noalias !408 ; 2 uses
  %i.dj = sext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -48
  %i.dl = icmp ult i32 %i.dk, 10
  br i1 %i.dl, label %bb.v, label %._crit_edge459

bb.v:                                             ; preds = %.lr.ph458
  %i.dm = add nsw i8 %i.di, -48
  %i.dn = getelementptr inbounds nuw i8, ptr %.10456, i64 1 ; 2 uses
  %i.do = mul i64 %.6457, 10
  %i.dp = zext i8 %i.dm to i64
  %i.dq = add i64 %i.do, %i.dp                    ; 2 uses
  %.not124.i = icmp eq ptr %i.dn, %1
  br i1 %.not124.i, label %._crit_edge459, label %.lr.ph458, !llvm.loop !6

._crit_edge459:                                   ; preds = %.lr.ph458, %bb.v, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52
  %.10.lcssa = phi ptr [ %.12, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52 ], [ %scevgep528, %bb.v ], [ %.10456, %.lr.ph458 ] ; 3 uses
  %.6.lcssa = phi i64 [ %.8, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52 ], [ %i.dq, %bb.v ], [ %.6457, %.lr.ph458 ]
  %i.dr = ptrtoint ptr %.10.lcssa to i64          ; 2 uses
  %i.ds = sub i64 %i.bu, %i.dr                    ; 3 uses
  %i.dt = sub i64 %i.dr, %i.bu
  %i.du = sub nsw i64 %i.bm, %i.ds
  %i.dv = icmp eq i64 %i.ds, 0
  br i1 %i.dv, label %.thread606, label %.thread295

.thread295:                                       ; preds = %bb.r, %bb.s, %._crit_edge459
  %.081.i308 = phi i64 [ %i.ds, %._crit_edge459 ], [ 0, %bb.s ], [ 0, %bb.r ] ; 3 uses
  %.087.i307 = phi i64 [ %i.du, %._crit_edge459 ], [ %i.bm, %bb.s ], [ %i.bm, %bb.r ] ; 2 uses
  %.1306 = phi i64 [ %.6.lcssa, %._crit_edge459 ], [ %.0, %bb.s ], [ %.0, %bb.r ] ; 2 uses
  %.sroa.20.0305 = phi i64 [ %i.dt, %._crit_edge459 ], [ 0, %bb.s ], [ 0, %bb.r ] ; 5 uses
  %.sroa.17.0304 = phi ptr [ %i.bs, %._crit_edge459 ], [ null, %bb.s ], [ null, %bb.r ] ; 7 uses
  %.2266303 = phi ptr [ %.10.lcssa, %._crit_edge459 ], [ %.1265, %bb.s ], [ %.1265, %bb.r ] ; 8 uses
  %i.dw = and i64 %3, 1
  %.not125.i = icmp eq i64 %i.dw, 0
  %.not126.i = icmp eq ptr %.2266303, %1          ; 2 uses
  %or.cond = or i1 %.not125.i, %.not126.i
  br i1 %or.cond, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread295
  %i.dx = load i8, ptr %.2266303, align 1, !tbaa !71, !noalias !408 ; 3 uses
  switch i8 %i.dx, label %bb.x [
    i8 101, label %bb.z
    i8 69, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w, %.thread295
  %i.dy = and i64 %3, 64
  %.not127.i = icmp eq i64 %i.dy, 0
  %or.cond328 = or i1 %.not127.i, %.not126.i
  br i1 %or.cond328, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dz = load i8, ptr %.2266303, align 1, !tbaa !71, !noalias !408 ; 5 uses
  switch i8 %i.dz, label %bb.ak [
    i8 43, label %bb.z
    i8 45, label %bb.z
    i8 100, label %bb.z
    i8 68, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.y, %bb.y, %bb.w, %bb.w
  %i.ea = phi i8 [ %i.dz, %bb.y ], [ %i.dz, %bb.y ], [ %i.dz, %bb.y ], [ %i.dz, %bb.y ], [ %i.dx, %bb.w ], [ %i.dx, %bb.w ]
  switch i8 %i.ea, label %bb.ab [
    i8 101, label %bb.aa
    i8 69, label %bb.aa
    i8 100, label %bb.aa
    i8 68, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %.2266303, i64 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.3267 = phi ptr [ %.2266303, %bb.z ], [ %i.eb, %bb.aa ] ; 5 uses
  %.not131.i = icmp eq ptr %.3267, %1
  br i1 %.not131.i, label %.thread309, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = load i8, ptr %.3267, align 1, !tbaa !71, !noalias !408 ; 2 uses
  %i.ed = icmp eq i8 %i.ec, 45
  br i1 %i.ed, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ee = getelementptr inbounds nuw i8, ptr %.3267, i64 1
  br label %.thread309

bb.ae:                                            ; preds = %bb.ac
  %i.ef = icmp eq i8 %i.ec, 43
  %spec.select.idx = zext i1 %i.ef to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.3267, i64 %spec.select.idx
  br label %.thread309

.thread309:                                       ; preds = %bb.ae, %bb.ab, %bb.ad
  %.4268 = phi ptr [ %i.ee, %bb.ad ], [ %.3267, %bb.ab ], [ %spec.select, %bb.ae ] ; 6 uses
  %.079.i = phi i1 [ true, %bb.ad ], [ false, %bb.ab ], [ false, %bb.ae ]
  %.4268529 = ptrtoaddr ptr %.4268 to i64
  %i.eg = icmp eq ptr %.4268, %1
  br i1 %i.eg, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.thread309
  %i.eh = load i8, ptr %.4268, align 1, !tbaa !71, !noalias !408
  %i.ei = sext i8 %i.eh to i32
  %i.ej = add nsw i32 %i.ei, -48
  %i.ek = icmp ult i32 %i.ej, 10
  br i1 %i.ek, label %.lr.ph468.preheader, label %bb.ag

.lr.ph468.preheader:                              ; preds = %bb.af
  %i.el = sub i64 %i.a, %.4268529
  %scevgep530 = getelementptr i8, ptr %.4268, i64 %i.el
  br label %.lr.ph468

bb.ag:                                            ; preds = %bb.af, %.thread309
  %i.em = and i64 %3, 4
  %.not134.i = icmp eq i64 %i.em, 0
  br i1 %.not134.i, label %.thread606, label %.thread311

.lr.ph468:                                        ; preds = %.lr.ph468.preheader, %bb.aj
  %.080.i467 = phi i64 [ %.1.i, %bb.aj ], [ 0, %.lr.ph468.preheader ] ; 4 uses
  %.9466 = phi ptr [ %i.ew, %bb.aj ], [ %.4268, %.lr.ph468.preheader ] ; 3 uses
  %i.en = load i8, ptr %.9466, align 1, !tbaa !71, !noalias !408 ; 2 uses
  %i.eo = sext i8 %i.en to i32
  %i.ep = add nsw i32 %i.eo, -48
  %i.eq = icmp ult i32 %i.ep, 10
  br i1 %i.eq, label %bb.ah, label %.critedge7.i

bb.ah:                                            ; preds = %.lr.ph468
  %i.er = icmp slt i64 %.080.i467, 268435456
  br i1 %i.er, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.es = add nsw i8 %i.en, -48
  %i.et = mul nsw i64 %.080.i467, 10
  %i.eu = zext i8 %i.es to i64
  %i.ev = add nsw i64 %i.et, %i.eu
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1.i = phi i64 [ %i.ev, %bb.ai ], [ %.080.i467, %bb.ah ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.9466, i64 1 ; 2 uses
  %.not133.i = icmp eq ptr %i.ew, %1
  br i1 %.not133.i, label %.critedge7.i, label %.lr.ph468, !llvm.loop !7

.critedge7.i:                                     ; preds = %bb.aj, %.lr.ph468
  %.9.lcssa.ph = phi ptr [ %scevgep530, %bb.aj ], [ %.9466, %.lr.ph468 ]
  %.080.i.lcssa.ph = phi i64 [ %.1.i, %bb.aj ], [ %.080.i467, %.lr.ph468 ] ; 2 uses
  %i.ex = sub nsw i64 0, %.080.i.lcssa.ph
  %spec.select.i = select i1 %.079.i, i64 %i.ex, i64 %.080.i.lcssa.ph ; 2 uses
  %i.ey = add nsw i64 %spec.select.i, %.081.i308
  br label %.thread311

bb.ak:                                            ; preds = %bb.y, %bb.x
  %i.ez = and i64 %3, 5
  %or.cond329.not.not = icmp eq i64 %i.ez, 1
  br i1 %or.cond329.not.not, label %.thread606, label %.thread311

.thread311:                                       ; preds = %bb.ag, %.critedge7.i, %bb.ak
  %.6270 = phi ptr [ %.2266303, %bb.ak ], [ %.9.lcssa.ph, %.critedge7.i ], [ %.2266303, %bb.ag ] ; 3 uses
  %.384.i = phi i64 [ %.081.i308, %bb.ak ], [ %i.ey, %.critedge7.i ], [ %.081.i308, %bb.ag ] ; 2 uses
  %.5.i = phi i64 [ 0, %bb.ak ], [ %spec.select.i, %.critedge7.i ], [ 0, %bb.ag ]
  %i.fa = icmp sgt i64 %.087.i307, 19
  br i1 %i.fa, label %.preheader365, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

.preheader365:                                    ; preds = %.thread311
  br i1 %.not.i, label %.preheader, label %.lr.ph477

.lr.ph477:                                        ; preds = %.preheader365, %.critedge11.i
  %.0.i476 = phi ptr [ %i.ff, %.critedge11.i ], [ %.0264, %.preheader365 ] ; 2 uses
  %.188.i475 = phi i64 [ %spec.select139.i, %.critedge11.i ], [ %.087.i307, %.preheader365 ] ; 2 uses
  %i.fb = load i8, ptr %.0.i476, align 1, !tbaa !71 ; 2 uses
  %i.fc = icmp eq i8 %i.fb, 48                    ; 2 uses
  %i.fd = icmp eq i8 %i.fb, %.sroa.2.8.extract.trunc.i
  %or.cond138.i = select i1 %i.fc, i1 true, i1 %i.fd
  br i1 %or.cond138.i, label %.critedge11.i, label %.critedge9.i

.critedge11.i:                                    ; preds = %.lr.ph477
  %i.fe = sext i1 %i.fc to i64
  %spec.select139.i = add nsw i64 %.188.i475, %i.fe ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i476, i64 1 ; 2 uses
  %.not135.i = icmp eq ptr %i.ff, %1
  br i1 %.not135.i, label %.critedge9.i, label %.lr.ph477, !llvm.loop !8

.critedge9.i:                                     ; preds = %.critedge11.i, %.lr.ph477
  %.188.i.lcssa.ph = phi i64 [ %spec.select139.i, %.critedge11.i ], [ %.188.i475, %.lr.ph477 ]
  %i.fg = icmp sgt i64 %.188.i.lcssa.ph, 19
  br i1 %i.fg, label %.preheader, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

.preheader:                                       ; preds = %.preheader365, %.critedge9.i
  %.not496 = icmp eq ptr %.0264, %.1265
  br i1 %.not496, label %._crit_edge484.thread, label %.lr.ph483

.lr.ph483:                                        ; preds = %.preheader, %.lr.ph483
  %.3482 = phi i64 [ %i.fl, %.lr.ph483 ], [ 0, %.preheader ]
  %.7271481 = phi ptr [ %i.fm, %.lr.ph483 ], [ %.0264, %.preheader ] ; 2 uses
  %i.fh = mul nuw i64 %.3482, 10
  %i.fi = load i8, ptr %.7271481, align 1, !tbaa !71
  %i.fj = sext i8 %i.fi to i64
  %i.fk = add i64 %i.fh, -48
  %i.fl = add i64 %i.fk, %i.fj                    ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.7271481, i64 1 ; 3 uses
  %i.fn = icmp ult i64 %i.fl, 1000000000000000000
  %i.fo = icmp ne ptr %i.fm, %.1265
  %i.fp = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %i.fp, label %.lr.ph483, label %._crit_edge484, !llvm.loop !9

._crit_edge484:                                   ; preds = %.lr.ph483
  %i.fq = icmp ugt i64 %i.fl, 999999999999999999
  br i1 %i.fq, label %bb.al, label %._crit_edge484.thread

._crit_edge484.thread:                            ; preds = %.preheader, %._crit_edge484
  %.3.lcssa590 = phi i64 [ %i.fl, %._crit_edge484 ], [ 0, %.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.17.0304, i64 %.sroa.20.0305
  %.not497 = icmp samesign eq i64 %.sroa.20.0305, 0
  br i1 %.not497, label %._crit_edge491, label %.lr.ph490

.lr.ph490:                                        ; preds = %._crit_edge484.thread, %.lr.ph490
  %.4488 = phi i64 [ %i.fw, %.lr.ph490 ], [ %.3.lcssa590, %._crit_edge484.thread ]
  %.8272487 = phi ptr [ %i.fx, %.lr.ph490 ], [ %.sroa.17.0304, %._crit_edge484.thread ] ; 2 uses
  %i.fs = mul nuw i64 %.4488, 10
  %i.ft = load i8, ptr %.8272487, align 1, !tbaa !71
  %i.fu = sext i8 %i.ft to i64
  %i.fv = add i64 %i.fs, -48
  %i.fw = add i64 %i.fv, %i.fu                    ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.8272487, i64 1 ; 3 uses
  %i.fy = icmp ult i64 %i.fw, 1000000000000000000
  %i.fz = icmp ne ptr %i.fx, %i.fr
  %i.ga = select i1 %i.fy, i1 %i.fz, i1 false
  br i1 %i.ga, label %.lr.ph490, label %._crit_edge491, !llvm.loop !10

._crit_edge491:                                   ; preds = %.lr.ph490, %._crit_edge484.thread
  %.8272.lcssa = phi ptr [ %.sroa.17.0304, %._crit_edge484.thread ], [ %i.fx, %.lr.ph490 ]
  %.4.lcssa = phi i64 [ %.3.lcssa590, %._crit_edge484.thread ], [ %i.fw, %.lr.ph490 ]
  %i.gb = ptrtoint ptr %.sroa.17.0304 to i64
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge484, %._crit_edge491
  %.8272.lcssa.sink = phi ptr [ %.8272.lcssa, %._crit_edge491 ], [ %i.fm, %._crit_edge484 ]
  %.sink = phi i64 [ %i.gb, %._crit_edge491 ], [ %i.bk, %._crit_edge484 ]
  %.5 = phi i64 [ %.4.lcssa, %._crit_edge491 ], [ %i.fl, %._crit_edge484 ]
  %i.gc = ptrtoint ptr %.8272.lcssa.sink to i64
  %i.gd = sub i64 %.sink, %i.gc
  %.485.i = add nsw i64 %i.gd, %.5.i
  br label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

bb.am:                                            ; preds = %bb.a
  br i1 %i.d, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ge = and i64 %3, 128
  %.not.i13 = icmp ne i64 %i.ge, 0
  %i.gf = icmp eq i8 %.fr, 43
  %or.cond330 = and i1 %.not.i13, %i.gf
  br i1 %or.cond330, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %i.gh = icmp eq ptr %i.gg, %1
  br i1 %i.gh, label %.thread606, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gi = load i8, ptr %i.gg, align 1, !tbaa !71, !noalias !409 ; 3 uses
  %i.gj = sext i8 %i.gi to i32
  %i.gk = add nsw i32 %i.gj, -48
  %i.gl = icmp ult i32 %i.gk, 10
  %.not110.i = icmp eq i8 %i.gi, %.sroa.2.8.extract.trunc.i
  %or.cond331 = select i1 %i.gl, i1 true, i1 %.not110.i
  br i1 %or.cond331, label %bb.aq, label %.thread606

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %i.gm = phi i8 [ %i.gi, %bb.ap ], [ %.fr, %bb.an ] ; 2 uses
  %.0282 = phi ptr [ %i.gg, %bb.ap ], [ %0, %bb.an ] ; 17 uses
  %.0282520 = ptrtoaddr ptr %.0282 to i64
  %.not111.i = icmp eq ptr %.0282, %1             ; 2 uses
  br i1 %.not111.i, label %.critedge.i14, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gn = sext i8 %i.gm to i32
  %i.go = add nsw i32 %i.gn, -48
  %i.gp = icmp ult i32 %i.go, 10
  br i1 %i.gp, label %bb.as, label %.critedge.i14

bb.as:                                            ; preds = %bb.ar
  %i.gq = sext i8 %i.gm to i64
  %i.gr = add nsw i64 %i.gq, -48                  ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0282, i64 1 ; 4 uses
  %.not112.i = icmp eq ptr %i.gs, %1
  br i1 %.not112.i, label %.critedge.i14, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !71, !noalias !409 ; 2 uses
  %i.gu = sext i8 %i.gt to i32
  %i.gv = add nsw i32 %i.gu, -48
  %i.gw = icmp ult i32 %i.gv, 10
  br i1 %i.gw, label %bb.au, label %.critedge.i14

bb.au:                                            ; preds = %bb.at
  %i.gx = mul nuw nsw i64 %i.gr, 10
  %i.gy = sext i8 %i.gt to i64
  %i.gz = add nsw i64 %i.gx, -48
  %i.ha = add nsw i64 %i.gz, %i.gy                ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0282, i64 2 ; 4 uses
  %.not113.i = icmp eq ptr %i.hb, %1
  br i1 %.not113.i, label %.critedge.i14, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !71, !noalias !409 ; 2 uses
  %i.hd = sext i8 %i.hc to i32
  %i.he = add nsw i32 %i.hd, -48
  %i.hf = icmp ult i32 %i.he, 10
  br i1 %i.hf, label %bb.aw, label %.critedge.i14

bb.aw:                                            ; preds = %bb.av
  %i.hg = mul nsw i64 %i.ha, 10
  %i.hh = sext i8 %i.hc to i64
  %i.hi = add nsw i64 %i.hg, -48
  %i.hj = add nsw i64 %i.hi, %i.hh                ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0282, i64 3 ; 4 uses
  %.not114.i = icmp eq ptr %i.hk, %1
  br i1 %.not114.i, label %.critedge.i14, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !71, !noalias !409 ; 2 uses
  %i.hm = sext i8 %i.hl to i32
  %i.hn = add nsw i32 %i.hm, -48
  %i.ho = icmp ult i32 %i.hn, 10
  br i1 %i.ho, label %bb.ay, label %.critedge.i14

bb.ay:                                            ; preds = %bb.ax
  %i.hp = mul nsw i64 %i.hj, 10
  %i.hq = sext i8 %i.hl to i64
  %i.hr = add nsw i64 %i.hp, -48
  %i.hs = add nsw i64 %i.hr, %i.hq                ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.0282, i64 4 ; 4 uses
  %.not115.i = icmp eq ptr %i.ht, %1
  br i1 %.not115.i, label %.critedge.i14, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !71, !noalias !409 ; 2 uses
  %i.hv = sext i8 %i.hu to i32
  %i.hw = add nsw i32 %i.hv, -48
  %i.hx = icmp ult i32 %i.hw, 10
  br i1 %i.hx, label %bb.ba, label %.critedge.i14

bb.ba:                                            ; preds = %bb.az
  %i.hy = mul nsw i64 %i.hs, 10
  %i.hz = sext i8 %i.hu to i64
  %i.ia = add nsw i64 %i.hy, -48
  %i.ib = add nsw i64 %i.ia, %i.hz                ; 2 uses
  %storemerge.i37386 = getelementptr inbounds nuw i8, ptr %.0282, i64 5 ; 3 uses
  %.not116.i387 = icmp eq ptr %storemerge.i37386, %1
  br i1 %.not116.i387, label %.critedge.i14, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ba
  %i.ic = sub i64 %i.a, %.0282520
  %scevgep = getelementptr i8, ptr %.0282, i64 %i.ic
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bb
  %storemerge.i37389 = phi ptr [ %storemerge.i37, %bb.bb ], [ %storemerge.i37386, %.lr.ph.preheader ] ; 3 uses
  %storemerge131.i388 = phi i64 [ %i.ik, %bb.bb ], [ %i.ib, %.lr.ph.preheader ] ; 2 uses
  %i.id = load i8, ptr %storemerge.i37389, align 1, !tbaa !71, !noalias !409 ; 2 uses
  %i.ie = sext i8 %i.id to i32
  %i.if = add nsw i32 %i.ie, -48
  %i.ig = icmp ult i32 %i.if, 10
  br i1 %i.ig, label %bb.bb, label %.critedge.i14

bb.bb:                                            ; preds = %.lr.ph
  %i.ih = mul i64 %storemerge131.i388, 10
  %i.ii = sext i8 %i.id to i64
  %i.ij = add i64 %i.ih, -48
  %i.ik = add i64 %i.ij, %i.ii                    ; 2 uses
  %storemerge.i37 = getelementptr inbounds nuw i8, ptr %storemerge.i37389, i64 1 ; 2 uses
  %.not116.i = icmp eq ptr %storemerge.i37, %1
  br i1 %.not116.i, label %.critedge.i14, label %.lr.ph, !llvm.loop !0

.critedge.i14:                                    ; preds = %bb.bb, %.lr.ph, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %.1283 = phi ptr [ %.0282, %bb.aq ], [ %i.gs, %bb.as ], [ %i.hb, %bb.au ], [ %i.hk, %bb.aw ], [ %i.ht, %bb.ay ], [ %i.gs, %bb.at ], [ %.0282, %bb.ar ], [ %i.ht, %bb.az ], [ %i.hk, %bb.ax ], [ %i.hb, %bb.av ], [ %storemerge.i37386, %bb.ba ], [ %scevgep, %bb.bb ], [ %storemerge.i37389, %.lr.ph ] ; 8 uses
  %.0273 = phi i64 [ 0, %bb.aq ], [ %i.gr, %bb.as ], [ %i.ha, %bb.au ], [ %i.hj, %bb.aw ], [ %i.hs, %bb.ay ], [ %i.gr, %bb.at ], [ 0, %bb.ar ], [ %i.hs, %bb.az ], [ %i.hj, %bb.ax ], [ %i.ha, %bb.av ], [ %i.ib, %bb.ba ], [ %i.ik, %bb.bb ], [ %storemerge131.i388, %.lr.ph ] ; 4 uses
  %i.il = ptrtoint ptr %.1283 to i64              ; 2 uses
  %i.im = ptrtoint ptr %.0282 to i64
  %i.in = sub i64 %i.il, %i.im                    ; 6 uses
  %.not117.i = icmp eq ptr %.1283, %1
  br i1 %.not117.i, label %.critedge133.i, label %bb.bc

bb.bc:                                            ; preds = %.critedge.i14
  %i.io = load i8, ptr %.1283, align 1, !tbaa !71, !noalias !409
  %i.ip = icmp eq i8 %i.io, %.sroa.2.8.extract.trunc.i
  br i1 %i.ip, label %bb.bd, label %.critedge133.i

bb.bd:                                            ; preds = %bb.bc
  %i.iq = getelementptr inbounds nuw i8, ptr %.1283, i64 1 ; 4 uses
  %i.ir = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.is = ptrtoint ptr %i.iq to i64               ; 3 uses
  %i.it = sub i64 %i.ir, %i.is                    ; 2 uses
  %i.iu = icmp sgt i64 %i.it, 7
  br i1 %i.iu, label %.lr.ph396, label %.critedge.i49

.lr.ph396:                                        ; preds = %bb.bd, %.noexc
  %.7280395 = phi i64 [ %i.jk, %.noexc ], [ %.0273, %bb.bd ] ; 2 uses
  %.11293394 = phi ptr [ %i.jl, %.noexc ], [ %i.iq, %bb.bd ] ; 3 uses
  %.0.copyload.i57 = load i64, ptr %.11293394, align 1, !noalias !409 ; 3 uses
  %i.iv = add i64 %.0.copyload.i57, 5063812098665367110
  %i.iw = add i64 %.0.copyload.i57, -3472328296227680304 ; 3 uses
  %i.ix = or i64 %i.iv, %i.iw
  %i.iy = and i64 %i.ix, -9187201950435737472
  %.not.i54 = icmp eq i64 %i.iy, 0
  br i1 %.not.i54, label %.noexc, label %.critedge.i49.thread.loopexit

.noexc:                                           ; preds = %.lr.ph396
  %i.iz = mul i64 %.7280395, 100000000
  %i.ja = mul i64 %i.iw, 10
  %i.jb = lshr i64 %i.iw, 8
  %i.jc = add i64 %i.ja, %i.jb                    ; 2 uses
  %i.jd = and i64 %i.jc, 1095216660735
  %i.je = mul i64 %i.jd, 4294967296000100
  %i.jf = lshr i64 %i.jc, 16
  %i.jg = and i64 %i.jf, 1095216660735
  %i.jh = mul i64 %i.jg, 42949672960001
  %i.ji = add i64 %i.jh, %i.je
  %i.jj = lshr i64 %i.ji, 32
  %i.jk = add i64 %i.jj, %i.iz                    ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.11293394, i64 8 ; 3 uses
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = sub i64 %i.ir, %i.jm                    ; 2 uses
  %i.jo = icmp sgt i64 %i.jn, 7
  br i1 %i.jo, label %.lr.ph396, label %.critedge.i49, !llvm.loop !1

.critedge.i49:                                    ; preds = %.noexc, %bb.bd
  %.11293.lcssa = phi ptr [ %i.iq, %bb.bd ], [ %i.jl, %.noexc ] ; 3 uses
  %.7280.lcssa = phi i64 [ %.0273, %bb.bd ], [ %i.jk, %.noexc ] ; 2 uses
  %.lcssa380 = phi i64 [ %i.it, %bb.bd ], [ %i.jn, %.noexc ]
  %i.jp = icmp sgt i64 %.lcssa380, 3
end_hunk_0
begin_hunk_1_@_ZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE:bb.a

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
  %i.it = zext i64 %i.is to i128
  %i.iu = mul nuw i128 %i.it, %i.ij
  %i.iv = lshr i128 %i.iu, 64
  %i.iw = trunc nuw i128 %i.iv to i64             ; 2 uses
  %i.ix = add i64 %i.iw, %i.im                    ; 2 uses
  %i.iy = icmp ult i64 %i.ix, %i.iw
  %i.iz = zext i1 %i.iy to i64
  %spec.select.i = add nuw i64 %i.iz, %i.io
  br label %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit

_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit: ; preds = %bb.bm, %.thread263
  %.pn281 = phi i64 [ %i.ix, %bb.bm ], [ %i.im, %.thread263 ]
  %spec.select.i.pn = phi i64 [ %spec.select.i, %bb.bm ], [ %i.io, %.thread263 ] ; 3 uses
  %i.ja = lshr i64 %spec.select.i.pn, 63          ; 2 uses
  %i.jb = trunc nuw nsw i64 %i.ja to i32
  %i.jc = add nuw nsw i64 %i.ja, 9                ; 2 uses
  %i.jd = lshr i64 %spec.select.i.pn, %i.jc       ; 6 uses
  %i.je = mul nsw i32 %i.id, 217706
  %i.jf = ashr i32 %i.je, 16
  %reass.sub = sub nsw i32 %i.jf, %i.ib
  %i.jg = add nsw i32 %reass.sub, 1086
  %i.jh = add nsw i32 %i.jg, %i.jb                ; 3 uses
  %i.ji = icmp slt i32 %i.jh, 1
  br i1 %i.ji, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit
  %i.jj = sub nsw i32 1, %i.jh                    ; 2 uses
  %i.jk = icmp samesign ugt i32 %i.jj, 63
  br i1 %i.jk, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jl = zext nneg i32 %i.jj to i64
  %i.jm = lshr i64 %i.jd, %i.jl                   ; 2 uses
  %i.jn = and i64 %i.jm, 1
  %i.jo = add nuw nsw i64 %i.jn, %i.jm            ; 2 uses
  %i.jp = lshr i64 %i.jo, 1
  %i.jq = icmp samesign ugt i64 %i.jo, 9007199254740991
  %i.jr = zext i1 %i.jq to i32
  br label %bb.bs

bb.bp:                                            ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit
  %i.js = icmp ugt i64 %.pn281, 1
  %i.jt = add nsw i64 %.377.i.i, -24
  %i.ju = icmp ult i64 %i.jt, -28
  %or.cond274 = select i1 %i.js, i1 true, i1 %i.ju
  br i1 %or.cond274, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jv = and i64 %i.jd, 3
  %i.jw = icmp eq i64 %i.jv, 1
  %i.jx = shl i64 %i.jd, %i.jc
  %i.jy = icmp eq i64 %i.jx, %spec.select.i.pn
  %or.cond.i21 = select i1 %i.jw, i1 %i.jy, i1 false
  %i.jz = and i64 %i.jd, 72057594037927932
  %spec.select275 = select i1 %or.cond.i21, i64 %i.jz, i64 %i.jd
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.sroa.0202.0 = phi i64 [ %i.jd, %bb.bp ], [ %spec.select275, %bb.bq ] ; 2 uses
  %i.ka = and i64 %.sroa.0202.0, 1
  %i.kb = add nuw nsw i64 %i.ka, %.sroa.0202.0    ; 2 uses
  %i.kc = lshr i64 %i.kb, 1
  %.not22.i = icmp samesign ugt i64 %i.kb, 18014398509481983 ; 2 uses
  %i.kd = zext i1 %.not22.i to i32
  %spec.select277 = add nuw nsw i32 %i.jh, %i.kd  ; 2 uses
  %i.ke = and i64 %i.kc, 9218868437227405311
  %.not23.i = icmp samesign ugt i32 %spec.select277, 2046 ; 2 uses
  %.not = select i1 %.not23.i, i1 true, i1 %.not22.i
  %spec.select278 = select i1 %.not, i64 0, i64 %i.ke
  %spec.select279 = select i1 %.not23.i, i32 2047, i32 %spec.select277
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bn, %bb.bl, %bb.bk, %bb.bo
  %.sroa.0202.2 = phi i64 [ 0, %bb.bn ], [ 0, %bb.bk ], [ 0, %bb.bl ], [ %i.jp, %bb.bo ], [ %spec.select278, %bb.br ]
  %.sroa.18207.1 = phi i32 [ 0, %bb.bn ], [ 0, %bb.bk ], [ 2047, %bb.bl ], [ %i.jr, %bb.bo ], [ %spec.select279, %bb.br ]
  %i.kf = zext nneg i32 %.sroa.18207.1 to i64
  %i.kg = shl nuw nsw i64 %i.kf, 52
  %i.kh = select i1 %i.ah, i64 -9223372036854775808, i64 0
  %i.ki = or i64 %.sroa.0202.2, %i.kh
  %i.kj = or i64 %i.ki, %i.kg
  store i64 %i.kj, ptr %i.a, align 8, !tbaa !97
  br label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit: ; preds = %.critedge6.i.i
  %i.kk = call { ptr, i32 } @_ZN10fast_float22parse_number_slow_pathIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EEb(ptr noundef nonnull %.028.i.i.i, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 133, i64 42949673006, i1 noundef zeroext false) #25 ; 2 uses
  %i.kl = extractvalue { ptr, i32 } %i.kk, 0      ; 2 uses
  %i.km = extractvalue { ptr, i32 } %i.kk, 1
  switch i32 %i.km, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread384 [
    i32 34, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread
    i32 0, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread
  ]

_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread: ; preds = %bb.at, %bb.as, %bb.ar, %.lr.ph.i._crit_edge, %bb.ax, %bb.aq, %bb.bi, %bb.be, %bb.bd, %bb.bj, %bb.bs, %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit
  %.sroa.073.1.i268 = phi ptr [ %i.kl, %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit ], [ %i.kl, %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit ], [ %.6230, %bb.bs ], [ %.6230, %bb.bj ], [ %.6230, %bb.bd ], [ %.6230, %bb.be ], [ %.6230, %bb.bi ], [ %i.gw, %bb.ax ], [ %i.d, %bb.aq ], [ %i.gc, %bb.ar ], [ %i.gj, %.lr.ph.i._crit_edge ], [ %i.gc, %bb.as ], [ %i.gc, %bb.at ]
  %i.kn = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.ko = ptrtoint ptr %.sroa.073.1.i268 to i64
  %i.kp = ptrtoint ptr %i.kn to i64               ; 2 uses
  %i.kq = sub i64 %i.ko, %i.kp                    ; 2 uses
  %i.kr = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = sub i64 %i.ks, %i.kp
  %i.ku = icmp ugt i64 %i.kq, %i.kt
  br i1 %i.ku, label %bb.bt, label %bb.bu, !prof !73

bb.bt:                                            ; preds = %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #11
          to label %.noexc unwind label %bb.bv

.noexc:                                           ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.kq
  store ptr %i.kv, ptr %0, align 8, !tbaa !69
  %i.kw = load double, ptr %i.a, align 8, !tbaa !97
  br label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread384

_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread384: ; preds = %bb.ap, %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit104.i, %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, %bb.bu
  %.sroa.930.0 = phi double [ %i.kw, %bb.bu ], [ 0.000000e+00, %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit ], [ 0.000000e+00, %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit104.i ], [ 0.000000e+00, %bb.ap ]
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
  %i.kx = landingpad { ptr, i32 }
          catch ptr null
  %i.ky = extractvalue { ptr, i32 } %i.kx, 0
  call void @__clang_call_terminate(ptr %i.ky) #26
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
  %.not119.i = icmp eq ptr %i.aa, %1
  br i1 %.not119.i, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !71, !noalias !446 ; 2 uses
  %i.ac = sext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -48
  %i.ae = icmp ult i32 %i.ad, 10
  br i1 %i.ae, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.af = mul nsw i64 %i.z, 10
  %i.ag = sext i8 %i.ab to i64
  %i.ah = add nsw i64 %i.af, -48
  %i.ai = add nsw i64 %i.ah, %i.ag                ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0256, i64 3 ; 4 uses
  %.not120.i = icmp eq ptr %i.aj, %1
  br i1 %.not120.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !71, !noalias !446 ; 2 uses
  %i.al = sext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.ao = mul nsw i64 %i.ai, 10
  %i.ap = sext i8 %i.ak to i64
  %i.aq = add nsw i64 %i.ao, -48
  %i.ar = add nsw i64 %i.aq, %i.ap                ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0256, i64 4 ; 4 uses
  %.not121.i = icmp eq ptr %i.as, %1
  br i1 %.not121.i, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = load i8, ptr %i.as, align 1, !tbaa !71, !noalias !446 ; 2 uses
  %i.au = sext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %i.ax = mul nsw i64 %i.ar, 10
  %i.ay = sext i8 %i.at to i64
  %i.az = add nsw i64 %i.ax, -48
  %i.ba = add nsw i64 %i.az, %i.ay                ; 2 uses
  %storemerge.i429 = getelementptr inbounds nuw i8, ptr %.0256, i64 5 ; 3 uses
  %.not122.i430 = icmp eq ptr %storemerge.i429, %1
  br i1 %.not122.i430, label %.critedge.i, label %.lr.ph434.preheader

.lr.ph434.preheader:                              ; preds = %bb.o
  %i.bb = sub i64 %i.a, %.0256517
  %scevgep518 = getelementptr i8, ptr %.0256, i64 %i.bb
  br label %.lr.ph434

.lr.ph434:                                        ; preds = %.lr.ph434.preheader, %bb.p
  %storemerge.i432 = phi ptr [ %storemerge.i, %bb.p ], [ %storemerge.i429, %.lr.ph434.preheader ] ; 3 uses
  %storemerge137.i431 = phi i64 [ %i.bj, %bb.p ], [ %i.ba, %.lr.ph434.preheader ] ; 2 uses
  %i.bc = load i8, ptr %storemerge.i432, align 1, !tbaa !71, !noalias !446 ; 2 uses
  %i.bd = sext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48
  %i.bf = icmp ult i32 %i.be, 10
  br i1 %i.bf, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %.lr.ph434
  %i.bg = mul i64 %storemerge137.i431, 10
  %i.bh = sext i8 %i.bc to i64
  %i.bi = add i64 %i.bg, -48
  %i.bj = add i64 %i.bi, %i.bh                    ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge.i432, i64 1 ; 2 uses
  %.not122.i = icmp eq ptr %storemerge.i, %1
  br i1 %.not122.i, label %.critedge.i, label %.lr.ph434, !llvm.loop !5

.critedge.i:                                      ; preds = %bb.p, %.lr.ph434, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.1257 = phi ptr [ %.0256, %bb.e ], [ %i.r, %bb.g ], [ %i.aa, %bb.i ], [ %i.aj, %bb.k ], [ %i.as, %bb.m ], [ %i.r, %bb.h ], [ %.0256, %bb.f ], [ %i.as, %bb.n ], [ %i.aj, %bb.l ], [ %i.aa, %bb.j ], [ %storemerge.i429, %bb.o ], [ %scevgep518, %bb.p ], [ %storemerge.i432, %.lr.ph434 ] ; 9 uses
  %.0 = phi i64 [ 0, %bb.e ], [ %i.q, %bb.g ], [ %i.z, %bb.i ], [ %i.ai, %bb.k ], [ %i.ar, %bb.m ], [ %i.q, %bb.h ], [ 0, %bb.f ], [ %i.ar, %bb.n ], [ %i.ai, %bb.l ], [ %i.z, %bb.j ], [ %i.ba, %bb.o ], [ %i.bj, %bb.p ], [ %storemerge137.i431, %.lr.ph434 ] ; 4 uses
  %i.bk = ptrtoint ptr %.1257 to i64              ; 2 uses
  %i.bl = ptrtoint ptr %.0256 to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 8 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.thread598, label %bb.q

bb.q:                                             ; preds = %.critedge.i
  %i.bo = icmp eq i8 %i.l, 48
  %i.bp = icmp sgt i64 %i.bm, 1
  %or.cond.i = and i1 %i.bp, %i.bo
  br i1 %or.cond.i, label %.thread598, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not123.i = icmp eq ptr %.1257, %1
  br i1 %.not123.i, label %.thread287, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = load i8, ptr %.1257, align 1, !tbaa !71, !noalias !446
  %i.br = icmp eq i8 %i.bq, %.sroa.2.8.extract.trunc.i
  br i1 %i.br, label %bb.t, label %.thread287

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %.1257, i64 1 ; 4 uses
  %i.bt = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 3 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, 7
  br i1 %i.bw, label %.lr.ph443, label %.critedge.i50

.lr.ph443:                                        ; preds = %bb.t, %.noexc51
  %.7441 = phi i64 [ %i.cm, %.noexc51 ], [ %.0, %bb.t ] ; 2 uses
  %.11440 = phi ptr [ %i.cn, %.noexc51 ], [ %i.bs, %bb.t ] ; 3 uses
  %.0.copyload.i55 = load i64, ptr %.11440, align 1, !noalias !446 ; 3 uses
  %i.bx = add i64 %.0.copyload.i55, 5063812098665367110
  %i.by = add i64 %.0.copyload.i55, -3472328296227680304 ; 3 uses
  %i.bz = or i64 %i.bx, %i.by
  %i.ca = and i64 %i.bz, -9187201950435737472
  %.not.i53 = icmp eq i64 %i.ca, 0
  br i1 %.not.i53, label %.noexc51, label %.critedge.i50.thread.loopexit

.noexc51:                                         ; preds = %.lr.ph443
  %i.cb = mul i64 %.7441, 100000000
  %i.cc = mul i64 %i.by, 10
  %i.cd = lshr i64 %i.by, 8
  %i.ce = add i64 %i.cc, %i.cd                    ; 2 uses
  %i.cf = and i64 %i.ce, 1095216660735
  %i.cg = mul i64 %i.cf, 4294967296000100
  %i.ch = lshr i64 %i.ce, 16
  %i.ci = and i64 %i.ch, 1095216660735
  %i.cj = mul i64 %i.ci, 42949672960001
  %i.ck = add i64 %i.cj, %i.cg
  %i.cl = lshr i64 %i.ck, 32
  %i.cm = add i64 %i.cl, %i.cb                    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.11440, i64 8 ; 3 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.bt, %i.co                    ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, 7
  br i1 %i.cq, label %.lr.ph443, label %.critedge.i50, !llvm.loop !1

.critedge.i50:                                    ; preds = %.noexc51, %bb.t
  %.11.lcssa = phi ptr [ %i.bs, %bb.t ], [ %i.cn, %.noexc51 ] ; 3 uses
  %.7.lcssa = phi i64 [ %.0, %bb.t ], [ %i.cm, %.noexc51 ] ; 2 uses
  %.lcssa366 = phi i64 [ %i.bv, %bb.t ], [ %i.cp, %.noexc51 ]
  %i.cr = icmp sgt i64 %.lcssa366, 3
  br i1 %i.cr, label %.critedge.i50..critedge.i50.thread_crit_edge, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52

.critedge.i50..critedge.i50.thread_crit_edge:     ; preds = %.critedge.i50
  %.0.copyload.i58.pre = load i32, ptr %.11.lcssa, align 1, !noalias !446
  br label %.critedge.i50.thread

.critedge.i50.thread.loopexit:                    ; preds = %.lr.ph443
  %i.cs = trunc i64 %.0.copyload.i55 to i32
  br label %.critedge.i50.thread

.critedge.i50.thread:                             ; preds = %.critedge.i50..critedge.i50.thread_crit_edge, %.critedge.i50.thread.loopexit
  %.0.copyload.i58 = phi i32 [ %.0.copyload.i58.pre, %.critedge.i50..critedge.i50.thread_crit_edge ], [ %i.cs, %.critedge.i50.thread.loopexit ] ; 2 uses
  %.11371 = phi ptr [ %.11.lcssa, %.critedge.i50..critedge.i50.thread_crit_edge ], [ %.11440, %.critedge.i50.thread.loopexit ] ; 2 uses
  %.7369 = phi i64 [ %.7.lcssa, %.critedge.i50..critedge.i50.thread_crit_edge ], [ %.7441, %.critedge.i50.thread.loopexit ] ; 2 uses
  %i.ct = add i32 %.0.copyload.i58, 1179010630
  %i.cu = add i32 %.0.copyload.i58, -808464432    ; 3 uses
  %i.cv = or i32 %i.ct, %i.cu
  %i.cw = and i32 %i.cv, -2139062144
  %.not.i60 = icmp eq i32 %i.cw, 0
  br i1 %.not.i60, label %bb.u, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52

bb.u:                                             ; preds = %.critedge.i50.thread
  %i.cx = mul i64 %.7369, 10000
  %i.cy = mul i32 %i.cu, 10
  %i.cz = lshr i32 %i.cu, 8
  %i.da = add i32 %i.cy, %i.cz
  %i.db = and i32 %i.da, 16711935
  %i.dc = mul i32 %i.db, 6553601
  %i.dd = lshr i32 %i.dc, 16
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = add i64 %i.cx, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.11371, i64 4
  br label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52

_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52: ; preds = %.critedge.i50, %.critedge.i50.thread, %bb.u
  %.12 = phi ptr [ %i.dg, %bb.u ], [ %.11371, %.critedge.i50.thread ], [ %.11.lcssa, %.critedge.i50 ] ; 5 uses
  %.8 = phi i64 [ %i.df, %bb.u ], [ %.7369, %.critedge.i50.thread ], [ %.7.lcssa, %.critedge.i50 ] ; 2 uses
  %.not124.i447 = icmp eq ptr %.12, %1
  br i1 %.not124.i447, label %._crit_edge451, label %.lr.ph450.preheader

.lr.ph450.preheader:                              ; preds = %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52
  %.12519 = ptrtoaddr ptr %.12 to i64
  %i.dh = sub i64 %i.a, %.12519
  %scevgep520 = getelementptr i8, ptr %.12, i64 %i.dh
  br label %.lr.ph450

.lr.ph450:                                        ; preds = %.lr.ph450.preheader, %bb.v
  %.6449 = phi i64 [ %i.dq, %bb.v ], [ %.8, %.lr.ph450.preheader ] ; 2 uses
  %.10448 = phi ptr [ %i.dn, %bb.v ], [ %.12, %.lr.ph450.preheader ] ; 3 uses
  %i.di = load i8, ptr %.10448, align 1, !tbaa !71, !noalias !446 ; 2 uses
  %i.dj = sext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -48
  %i.dl = icmp ult i32 %i.dk, 10
  br i1 %i.dl, label %bb.v, label %._crit_edge451

bb.v:                                             ; preds = %.lr.ph450
  %i.dm = add nsw i8 %i.di, -48
  %i.dn = getelementptr inbounds nuw i8, ptr %.10448, i64 1 ; 2 uses
  %i.do = mul i64 %.6449, 10
  %i.dp = zext i8 %i.dm to i64
  %i.dq = add i64 %i.do, %i.dp                    ; 2 uses
  %.not124.i = icmp eq ptr %i.dn, %1
  br i1 %.not124.i, label %._crit_edge451, label %.lr.ph450, !llvm.loop !6

._crit_edge451:                                   ; preds = %.lr.ph450, %bb.v, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52
  %.10.lcssa = phi ptr [ %.12, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52 ], [ %scevgep520, %bb.v ], [ %.10448, %.lr.ph450 ] ; 3 uses
  %.6.lcssa = phi i64 [ %.8, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52 ], [ %i.dq, %bb.v ], [ %.6449, %.lr.ph450 ]
  %i.dr = ptrtoint ptr %.10.lcssa to i64          ; 2 uses
  %i.ds = sub i64 %i.bu, %i.dr                    ; 3 uses
  %i.dt = sub i64 %i.dr, %i.bu
  %i.du = sub nsw i64 %i.bm, %i.ds
  %i.dv = icmp eq i64 %i.ds, 0
  br i1 %i.dv, label %.thread598, label %.thread287

.thread287:                                       ; preds = %bb.r, %bb.s, %._crit_edge451
  %.081.i300 = phi i64 [ %i.ds, %._crit_edge451 ], [ 0, %bb.s ], [ 0, %bb.r ] ; 3 uses
  %.087.i299 = phi i64 [ %i.du, %._crit_edge451 ], [ %i.bm, %bb.s ], [ %i.bm, %bb.r ] ; 2 uses
  %.1298 = phi i64 [ %.6.lcssa, %._crit_edge451 ], [ %.0, %bb.s ], [ %.0, %bb.r ] ; 2 uses
  %.sroa.20.0297 = phi i64 [ %i.dt, %._crit_edge451 ], [ 0, %bb.s ], [ 0, %bb.r ] ; 5 uses
  %.sroa.17.0296 = phi ptr [ %i.bs, %._crit_edge451 ], [ null, %bb.s ], [ null, %bb.r ] ; 7 uses
  %.2258295 = phi ptr [ %.10.lcssa, %._crit_edge451 ], [ %.1257, %bb.s ], [ %.1257, %bb.r ] ; 8 uses
  %i.dw = and i64 %3, 1
  %.not125.i = icmp eq i64 %i.dw, 0
  %.not126.i = icmp eq ptr %.2258295, %1          ; 2 uses
  %or.cond = or i1 %.not125.i, %.not126.i
  br i1 %or.cond, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread287
  %i.dx = load i8, ptr %.2258295, align 1, !tbaa !71, !noalias !446 ; 3 uses
  switch i8 %i.dx, label %bb.x [
    i8 101, label %bb.z
    i8 69, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w, %.thread287
  %i.dy = and i64 %3, 64
  %.not127.i = icmp eq i64 %i.dy, 0
  %or.cond320 = or i1 %.not127.i, %.not126.i
  br i1 %or.cond320, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dz = load i8, ptr %.2258295, align 1, !tbaa !71, !noalias !446 ; 5 uses
  switch i8 %i.dz, label %bb.ak [
    i8 43, label %bb.z
    i8 45, label %bb.z
    i8 100, label %bb.z
    i8 68, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.y, %bb.y, %bb.w, %bb.w
  %i.ea = phi i8 [ %i.dz, %bb.y ], [ %i.dz, %bb.y ], [ %i.dz, %bb.y ], [ %i.dz, %bb.y ], [ %i.dx, %bb.w ], [ %i.dx, %bb.w ]
  switch i8 %i.ea, label %bb.ab [
    i8 101, label %bb.aa
    i8 69, label %bb.aa
    i8 100, label %bb.aa
    i8 68, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %.2258295, i64 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.3259 = phi ptr [ %.2258295, %bb.z ], [ %i.eb, %bb.aa ] ; 5 uses
  %.not131.i = icmp eq ptr %.3259, %1
  br i1 %.not131.i, label %.thread301, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = load i8, ptr %.3259, align 1, !tbaa !71, !noalias !446 ; 2 uses
  %i.ed = icmp eq i8 %i.ec, 45
  br i1 %i.ed, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ee = getelementptr inbounds nuw i8, ptr %.3259, i64 1
  br label %.thread301

bb.ae:                                            ; preds = %bb.ac
  %i.ef = icmp eq i8 %i.ec, 43
  %spec.select.idx = zext i1 %i.ef to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.3259, i64 %spec.select.idx
  br label %.thread301

.thread301:                                       ; preds = %bb.ae, %bb.ab, %bb.ad
  %.4260 = phi ptr [ %i.ee, %bb.ad ], [ %.3259, %bb.ab ], [ %spec.select, %bb.ae ] ; 6 uses
  %.079.i = phi i1 [ true, %bb.ad ], [ false, %bb.ab ], [ false, %bb.ae ]
  %.4260521 = ptrtoaddr ptr %.4260 to i64
  %i.eg = icmp eq ptr %.4260, %1
  br i1 %i.eg, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.thread301
  %i.eh = load i8, ptr %.4260, align 1, !tbaa !71, !noalias !446
  %i.ei = sext i8 %i.eh to i32
  %i.ej = add nsw i32 %i.ei, -48
  %i.ek = icmp ult i32 %i.ej, 10
  br i1 %i.ek, label %.lr.ph460.preheader, label %bb.ag

.lr.ph460.preheader:                              ; preds = %bb.af
  %i.el = sub i64 %i.a, %.4260521
  %scevgep522 = getelementptr i8, ptr %.4260, i64 %i.el
  br label %.lr.ph460

bb.ag:                                            ; preds = %bb.af, %.thread301
  %i.em = and i64 %3, 4
  %.not134.i = icmp eq i64 %i.em, 0
  br i1 %.not134.i, label %.thread598, label %.thread303

.lr.ph460:                                        ; preds = %.lr.ph460.preheader, %bb.aj
  %.080.i459 = phi i64 [ %.1.i, %bb.aj ], [ 0, %.lr.ph460.preheader ] ; 4 uses
  %.9458 = phi ptr [ %i.ew, %bb.aj ], [ %.4260, %.lr.ph460.preheader ] ; 3 uses
  %i.en = load i8, ptr %.9458, align 1, !tbaa !71, !noalias !446 ; 2 uses
  %i.eo = sext i8 %i.en to i32
  %i.ep = add nsw i32 %i.eo, -48
  %i.eq = icmp ult i32 %i.ep, 10
  br i1 %i.eq, label %bb.ah, label %.critedge7.i

bb.ah:                                            ; preds = %.lr.ph460
  %i.er = icmp slt i64 %.080.i459, 268435456
  br i1 %i.er, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.es = add nsw i8 %i.en, -48
  %i.et = mul nsw i64 %.080.i459, 10
  %i.eu = zext i8 %i.es to i64
  %i.ev = add nsw i64 %i.et, %i.eu
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1.i = phi i64 [ %i.ev, %bb.ai ], [ %.080.i459, %bb.ah ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.9458, i64 1 ; 2 uses
  %.not133.i = icmp eq ptr %i.ew, %1
  br i1 %.not133.i, label %.critedge7.i, label %.lr.ph460, !llvm.loop !7

.critedge7.i:                                     ; preds = %bb.aj, %.lr.ph460
  %.9.lcssa.ph = phi ptr [ %scevgep522, %bb.aj ], [ %.9458, %.lr.ph460 ]
  %.080.i.lcssa.ph = phi i64 [ %.1.i, %bb.aj ], [ %.080.i459, %.lr.ph460 ] ; 2 uses
  %i.ex = sub nsw i64 0, %.080.i.lcssa.ph
  %spec.select.i = select i1 %.079.i, i64 %i.ex, i64 %.080.i.lcssa.ph ; 2 uses
  %i.ey = add nsw i64 %spec.select.i, %.081.i300
  br label %.thread303

bb.ak:                                            ; preds = %bb.y, %bb.x
  %i.ez = and i64 %3, 5
  %or.cond321.not.not = icmp eq i64 %i.ez, 1
  br i1 %or.cond321.not.not, label %.thread598, label %.thread303

.thread303:                                       ; preds = %bb.ag, %.critedge7.i, %bb.ak
  %.6262 = phi ptr [ %.2258295, %bb.ak ], [ %.9.lcssa.ph, %.critedge7.i ], [ %.2258295, %bb.ag ] ; 3 uses
  %.384.i = phi i64 [ %.081.i300, %bb.ak ], [ %i.ey, %.critedge7.i ], [ %.081.i300, %bb.ag ] ; 2 uses
  %.5.i = phi i64 [ 0, %bb.ak ], [ %spec.select.i, %.critedge7.i ], [ 0, %bb.ag ]
  %i.fa = icmp sgt i64 %.087.i299, 19
  br i1 %i.fa, label %.preheader357, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

.preheader357:                                    ; preds = %.thread303
  br i1 %.not.i, label %.preheader, label %.lr.ph469

.lr.ph469:                                        ; preds = %.preheader357, %.critedge11.i
  %.0.i468 = phi ptr [ %i.ff, %.critedge11.i ], [ %.0256, %.preheader357 ] ; 2 uses
  %.188.i467 = phi i64 [ %spec.select139.i, %.critedge11.i ], [ %.087.i299, %.preheader357 ] ; 2 uses
  %i.fb = load i8, ptr %.0.i468, align 1, !tbaa !71 ; 2 uses
  %i.fc = icmp eq i8 %i.fb, 48                    ; 2 uses
  %i.fd = icmp eq i8 %i.fb, %.sroa.2.8.extract.trunc.i
  %or.cond138.i = select i1 %i.fc, i1 true, i1 %i.fd
  br i1 %or.cond138.i, label %.critedge11.i, label %.critedge9.i

.critedge11.i:                                    ; preds = %.lr.ph469
  %i.fe = sext i1 %i.fc to i64
  %spec.select139.i = add nsw i64 %.188.i467, %i.fe ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i468, i64 1 ; 2 uses
  %.not135.i = icmp eq ptr %i.ff, %1
  br i1 %.not135.i, label %.critedge9.i, label %.lr.ph469, !llvm.loop !8

.critedge9.i:                                     ; preds = %.critedge11.i, %.lr.ph469
  %.188.i.lcssa.ph = phi i64 [ %spec.select139.i, %.critedge11.i ], [ %.188.i467, %.lr.ph469 ]
  %i.fg = icmp sgt i64 %.188.i.lcssa.ph, 19
  br i1 %i.fg, label %.preheader, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

.preheader:                                       ; preds = %.preheader357, %.critedge9.i
  %.not488 = icmp eq ptr %.0256, %.1257
  br i1 %.not488, label %._crit_edge476.thread, label %.lr.ph475

.lr.ph475:                                        ; preds = %.preheader, %.lr.ph475
  %.3474 = phi i64 [ %i.fl, %.lr.ph475 ], [ 0, %.preheader ]
  %.7263473 = phi ptr [ %i.fm, %.lr.ph475 ], [ %.0256, %.preheader ] ; 2 uses
  %i.fh = mul nuw i64 %.3474, 10
  %i.fi = load i8, ptr %.7263473, align 1, !tbaa !71
  %i.fj = sext i8 %i.fi to i64
  %i.fk = add i64 %i.fh, -48
  %i.fl = add i64 %i.fk, %i.fj                    ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.7263473, i64 1 ; 3 uses
  %i.fn = icmp ult i64 %i.fl, 1000000000000000000
  %i.fo = icmp ne ptr %i.fm, %.1257
  %i.fp = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %i.fp, label %.lr.ph475, label %._crit_edge476, !llvm.loop !9

._crit_edge476:                                   ; preds = %.lr.ph475
  %i.fq = icmp ugt i64 %i.fl, 999999999999999999
  br i1 %i.fq, label %bb.al, label %._crit_edge476.thread

._crit_edge476.thread:                            ; preds = %.preheader, %._crit_edge476
  %.3.lcssa582 = phi i64 [ %i.fl, %._crit_edge476 ], [ 0, %.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.17.0296, i64 %.sroa.20.0297
  %.not489 = icmp samesign eq i64 %.sroa.20.0297, 0
  br i1 %.not489, label %._crit_edge483, label %.lr.ph482

.lr.ph482:                                        ; preds = %._crit_edge476.thread, %.lr.ph482
  %.4480 = phi i64 [ %i.fw, %.lr.ph482 ], [ %.3.lcssa582, %._crit_edge476.thread ]
  %.8264479 = phi ptr [ %i.fx, %.lr.ph482 ], [ %.sroa.17.0296, %._crit_edge476.thread ] ; 2 uses
  %i.fs = mul nuw i64 %.4480, 10
  %i.ft = load i8, ptr %.8264479, align 1, !tbaa !71
  %i.fu = sext i8 %i.ft to i64
  %i.fv = add i64 %i.fs, -48
  %i.fw = add i64 %i.fv, %i.fu                    ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.8264479, i64 1 ; 3 uses
  %i.fy = icmp ult i64 %i.fw, 1000000000000000000
  %i.fz = icmp ne ptr %i.fx, %i.fr
  %i.ga = select i1 %i.fy, i1 %i.fz, i1 false
  br i1 %i.ga, label %.lr.ph482, label %._crit_edge483, !llvm.loop !10

._crit_edge483:                                   ; preds = %.lr.ph482, %._crit_edge476.thread
  %.8264.lcssa = phi ptr [ %.sroa.17.0296, %._crit_edge476.thread ], [ %i.fx, %.lr.ph482 ]
  %.4.lcssa = phi i64 [ %.3.lcssa582, %._crit_edge476.thread ], [ %i.fw, %.lr.ph482 ]
  %i.gb = ptrtoint ptr %.sroa.17.0296 to i64
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge476, %._crit_edge483
  %.8264.lcssa.sink = phi ptr [ %.8264.lcssa, %._crit_edge483 ], [ %i.fm, %._crit_edge476 ]
  %.sink = phi i64 [ %i.gb, %._crit_edge483 ], [ %i.bk, %._crit_edge476 ]
  %.5 = phi i64 [ %.4.lcssa, %._crit_edge483 ], [ %i.fl, %._crit_edge476 ]
  %i.gc = ptrtoint ptr %.8264.lcssa.sink to i64
  %i.gd = sub i64 %.sink, %i.gc
  %.485.i = add nsw i64 %i.gd, %.5.i
  br label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

bb.am:                                            ; preds = %bb.a
  br i1 %i.d, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ge = and i64 %3, 128
  %.not.i13 = icmp ne i64 %i.ge, 0
  %i.gf = icmp eq i8 %.fr, 43
  %or.cond322 = and i1 %.not.i13, %i.gf
  br i1 %or.cond322, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %i.gh = icmp eq ptr %i.gg, %1
  br i1 %i.gh, label %.thread598, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gi = load i8, ptr %i.gg, align 1, !tbaa !71, !noalias !447 ; 3 uses
  %i.gj = sext i8 %i.gi to i32
  %i.gk = add nsw i32 %i.gj, -48
  %i.gl = icmp ult i32 %i.gk, 10
  %.not110.i = icmp eq i8 %i.gi, %.sroa.2.8.extract.trunc.i
  %or.cond323 = select i1 %i.gl, i1 true, i1 %.not110.i
  br i1 %or.cond323, label %bb.aq, label %.thread598

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %i.gm = phi i8 [ %i.gi, %bb.ap ], [ %.fr, %bb.an ] ; 2 uses
  %.0274 = phi ptr [ %i.gg, %bb.ap ], [ %0, %bb.an ] ; 17 uses
  %.0274512 = ptrtoaddr ptr %.0274 to i64
  %.not111.i = icmp eq ptr %.0274, %1             ; 2 uses
  br i1 %.not111.i, label %.critedge.i14, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gn = sext i8 %i.gm to i32
  %i.go = add nsw i32 %i.gn, -48
  %i.gp = icmp ult i32 %i.go, 10
  br i1 %i.gp, label %bb.as, label %.critedge.i14

bb.as:                                            ; preds = %bb.ar
  %i.gq = sext i8 %i.gm to i64
  %i.gr = add nsw i64 %i.gq, -48                  ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0274, i64 1 ; 4 uses
  %.not112.i = icmp eq ptr %i.gs, %1
  br i1 %.not112.i, label %.critedge.i14, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !71, !noalias !447 ; 2 uses
  %i.gu = sext i8 %i.gt to i32
  %i.gv = add nsw i32 %i.gu, -48
  %i.gw = icmp ult i32 %i.gv, 10
  br i1 %i.gw, label %bb.au, label %.critedge.i14

bb.au:                                            ; preds = %bb.at
  %i.gx = mul nuw nsw i64 %i.gr, 10
  %i.gy = sext i8 %i.gt to i64
  %i.gz = add nsw i64 %i.gx, -48
  %i.ha = add nsw i64 %i.gz, %i.gy                ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0274, i64 2 ; 4 uses
  %.not113.i = icmp eq ptr %i.hb, %1
  br i1 %.not113.i, label %.critedge.i14, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !71, !noalias !447 ; 2 uses
  %i.hd = sext i8 %i.hc to i32
  %i.he = add nsw i32 %i.hd, -48
  %i.hf = icmp ult i32 %i.he, 10
  br i1 %i.hf, label %bb.aw, label %.critedge.i14

bb.aw:                                            ; preds = %bb.av
  %i.hg = mul nsw i64 %i.ha, 10
  %i.hh = sext i8 %i.hc to i64
  %i.hi = add nsw i64 %i.hg, -48
  %i.hj = add nsw i64 %i.hi, %i.hh                ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0274, i64 3 ; 4 uses
  %.not114.i = icmp eq ptr %i.hk, %1
  br i1 %.not114.i, label %.critedge.i14, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !71, !noalias !447 ; 2 uses
  %i.hm = sext i8 %i.hl to i32
  %i.hn = add nsw i32 %i.hm, -48
  %i.ho = icmp ult i32 %i.hn, 10
  br i1 %i.ho, label %bb.ay, label %.critedge.i14

bb.ay:                                            ; preds = %bb.ax
  %i.hp = mul nsw i64 %i.hj, 10
  %i.hq = sext i8 %i.hl to i64
  %i.hr = add nsw i64 %i.hp, -48
  %i.hs = add nsw i64 %i.hr, %i.hq                ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.0274, i64 4 ; 4 uses
  %.not115.i = icmp eq ptr %i.ht, %1
  br i1 %.not115.i, label %.critedge.i14, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !71, !noalias !447 ; 2 uses
  %i.hv = sext i8 %i.hu to i32
  %i.hw = add nsw i32 %i.hv, -48
  %i.hx = icmp ult i32 %i.hw, 10
  br i1 %i.hx, label %bb.ba, label %.critedge.i14

bb.ba:                                            ; preds = %bb.az
  %i.hy = mul nsw i64 %i.hs, 10
  %i.hz = sext i8 %i.hu to i64
  %i.ia = add nsw i64 %i.hy, -48
  %i.ib = add nsw i64 %i.ia, %i.hz                ; 2 uses
  %storemerge.i37378 = getelementptr inbounds nuw i8, ptr %.0274, i64 5 ; 3 uses
  %.not116.i379 = icmp eq ptr %storemerge.i37378, %1
  br i1 %.not116.i379, label %.critedge.i14, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ba
  %i.ic = sub i64 %i.a, %.0274512
  %scevgep = getelementptr i8, ptr %.0274, i64 %i.ic
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bb
  %storemerge.i37381 = phi ptr [ %storemerge.i37, %bb.bb ], [ %storemerge.i37378, %.lr.ph.preheader ] ; 3 uses
  %storemerge131.i380 = phi i64 [ %i.ik, %bb.bb ], [ %i.ib, %.lr.ph.preheader ] ; 2 uses
  %i.id = load i8, ptr %storemerge.i37381, align 1, !tbaa !71, !noalias !447 ; 2 uses
  %i.ie = sext i8 %i.id to i32
  %i.if = add nsw i32 %i.ie, -48
  %i.ig = icmp ult i32 %i.if, 10
  br i1 %i.ig, label %bb.bb, label %.critedge.i14

bb.bb:                                            ; preds = %.lr.ph
  %i.ih = mul i64 %storemerge131.i380, 10
  %i.ii = sext i8 %i.id to i64
  %i.ij = add i64 %i.ih, -48
  %i.ik = add i64 %i.ij, %i.ii                    ; 2 uses
  %storemerge.i37 = getelementptr inbounds nuw i8, ptr %storemerge.i37381, i64 1 ; 2 uses
  %.not116.i = icmp eq ptr %storemerge.i37, %1
  br i1 %.not116.i, label %.critedge.i14, label %.lr.ph, !llvm.loop !0

.critedge.i14:                                    ; preds = %bb.bb, %.lr.ph, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %.1275 = phi ptr [ %.0274, %bb.aq ], [ %i.gs, %bb.as ], [ %i.hb, %bb.au ], [ %i.hk, %bb.aw ], [ %i.ht, %bb.ay ], [ %i.gs, %bb.at ], [ %.0274, %bb.ar ], [ %i.ht, %bb.az ], [ %i.hk, %bb.ax ], [ %i.hb, %bb.av ], [ %storemerge.i37378, %bb.ba ], [ %scevgep, %bb.bb ], [ %storemerge.i37381, %.lr.ph ] ; 8 uses
  %.0265 = phi i64 [ 0, %bb.aq ], [ %i.gr, %bb.as ], [ %i.ha, %bb.au ], [ %i.hj, %bb.aw ], [ %i.hs, %bb.ay ], [ %i.gr, %bb.at ], [ 0, %bb.ar ], [ %i.hs, %bb.az ], [ %i.hj, %bb.ax ], [ %i.ha, %bb.av ], [ %i.ib, %bb.ba ], [ %i.ik, %bb.bb ], [ %storemerge131.i380, %.lr.ph ] ; 4 uses
  %i.il = ptrtoint ptr %.1275 to i64              ; 2 uses
  %i.im = ptrtoint ptr %.0274 to i64
  %i.in = sub i64 %i.il, %i.im                    ; 6 uses
  %.not117.i = icmp eq ptr %.1275, %1
  br i1 %.not117.i, label %.critedge133.i, label %bb.bc

bb.bc:                                            ; preds = %.critedge.i14
  %i.io = load i8, ptr %.1275, align 1, !tbaa !71, !noalias !447
  %i.ip = icmp eq i8 %i.io, %.sroa.2.8.extract.trunc.i
  br i1 %i.ip, label %bb.bd, label %.critedge133.i

bb.bd:                                            ; preds = %bb.bc
  %i.iq = getelementptr inbounds nuw i8, ptr %.1275, i64 1 ; 4 uses
  %i.ir = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.is = ptrtoint ptr %i.iq to i64               ; 3 uses
  %i.it = sub i64 %i.ir, %i.is                    ; 2 uses
  %i.iu = icmp sgt i64 %i.it, 7
  br i1 %i.iu, label %.lr.ph388, label %.critedge.i49

.lr.ph388:                                        ; preds = %bb.bd, %.noexc
  %.7272387 = phi i64 [ %i.jk, %.noexc ], [ %.0265, %bb.bd ] ; 2 uses
  %.11285386 = phi ptr [ %i.jl, %.noexc ], [ %i.iq, %bb.bd ] ; 3 uses
  %.0.copyload.i57 = load i64, ptr %.11285386, align 1, !noalias !447 ; 3 uses
  %i.iv = add i64 %.0.copyload.i57, 5063812098665367110
  %i.iw = add i64 %.0.copyload.i57, -3472328296227680304 ; 3 uses
  %i.ix = or i64 %i.iv, %i.iw
  %i.iy = and i64 %i.ix, -9187201950435737472
  %.not.i54 = icmp eq i64 %i.iy, 0
  br i1 %.not.i54, label %.noexc, label %.critedge.i49.thread.loopexit

.noexc:                                           ; preds = %.lr.ph388
  %i.iz = mul i64 %.7272387, 100000000
  %i.ja = mul i64 %i.iw, 10
  %i.jb = lshr i64 %i.iw, 8
  %i.jc = add i64 %i.ja, %i.jb                    ; 2 uses
  %i.jd = and i64 %i.jc, 1095216660735
  %i.je = mul i64 %i.jd, 4294967296000100
  %i.jf = lshr i64 %i.jc, 16
  %i.jg = and i64 %i.jf, 1095216660735
  %i.jh = mul i64 %i.jg, 42949672960001
  %i.ji = add i64 %i.jh, %i.je
  %i.jj = lshr i64 %i.ji, 32
  %i.jk = add i64 %i.jj, %i.iz                    ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.11285386, i64 8 ; 3 uses
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = sub i64 %i.ir, %i.jm                    ; 2 uses
  %i.jo = icmp sgt i64 %i.jn, 7
  br i1 %i.jo, label %.lr.ph388, label %.critedge.i49, !llvm.loop !1

.critedge.i49:                                    ; preds = %.noexc, %bb.bd
  %.11285.lcssa = phi ptr [ %i.iq, %bb.bd ], [ %i.jl, %.noexc ] ; 3 uses
  %.7272.lcssa = phi i64 [ %.0265, %bb.bd ], [ %i.jk, %.noexc ] ; 2 uses
  %.lcssa372 = phi i64 [ %i.it, %bb.bd ], [ %i.jn, %.noexc ]
  %i.jp = icmp sgt i64 %.lcssa372, 3
end_hunk_1
