Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Conv?download=true
inline.NumInlined: 1235
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE:bb.a
  %i.w = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !37
  switch i8 %i.w, label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit [
    i8 32, label %bb.h
    i8 13, label %bb.h
    i8 12, label %bb.h
    i8 11, label %bb.h
    i8 10, label %bb.h
    i8 9, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i
  %.1.i.i.i = phi ptr [ %i.x, %bb.h ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.y = load i8, ptr %.1.i.i.i, align 1, !tbaa !37
  switch i8 %i.y, label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit [
    i8 32, label %bb.j
    i8 13, label %bb.j
    i8 12, label %bb.j
    i8 11, label %bb.j
    i8 10, label %bb.j
    i8 9, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i
  %.2.i.i.i = phi ptr [ %i.z, %bb.j ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aa = load i8, ptr %.2.i.i.i, align 1, !tbaa !37
  %switch.tableidx = add i8 %i.aa, -9             ; 2 uses
  %i.ab = icmp ult i8 %switch.tableidx, 24
  br i1 %i.ab, label %switch.hole_check, label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit

_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.02952.i.i.i, i64 3
  br label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit

_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.loopexit.split.loop.exit39: ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.02952.i.i.i, i64 2
  br label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit

_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.loopexit.split.loop.exit41: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.02952.i.i.i, i64 1
  br label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit

_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit: ; preds = %.lr.ph.i.i.i, %switch.hole_check, %bb.k, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.loopexit.split.loop.exit, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.loopexit.split.loop.exit39, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.loopexit.split.loop.exit41, %bb.i, %bb.g
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %bb.i ], [ %.029.lcssa.i.i.i, %bb.g ], [ %.2.i.i.i, %bb.k ], [ %i.ae, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.loopexit.split.loop.exit41 ], [ %i.ad, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.loopexit.split.loop.exit39 ], [ %i.ac, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.loopexit.split.loop.exit ], [ %.2.i.i.i, %switch.hole_check ], [ %.02952.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.af = icmp eq ptr %.028.i.i.i, %i.d
  br i1 %i.af, label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ag = call { ptr, i32 } @_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE(ptr noundef nonnull %.028.i.i.i, ptr noundef %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 133, i64 42949673006) #20 ; 2 uses
  %i.ah = extractvalue { ptr, i32 } %i.ag, 1
  switch i32 %i.ah, label %bb.p [
    i32 34, label %bb.m
    i32 0, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.ai = extractvalue { ptr, i32 } %i.ag, 0
  %i.aj = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.al
  %i.aq = icmp ugt i64 %i.am, %i.ap
  br i1 %i.aq, label %bb.n, label %bb.o, !prof !39

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #11
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am
  store ptr %i.ar, ptr %0, align 8, !tbaa !35
  %i.as = load i32, ptr %i.a, align 4, !tbaa !41
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw i64 %i.at, 32
  %i.av = or disjoint i64 %i.au, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 2306, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.thread

switch.hole_check:                                ; preds = %bb.k
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 8388639, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.thread, label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit

_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.thread: ; preds = %switch.hole_check, %._crit_edge.i.i.i, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit, %bb.a, %bb.p
  %.sroa.922.0.insert.ext = phi i64 [ %i.aw, %bb.p ], [ 258, %bb.a ], [ 258, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit ], [ 258, %._crit_edge.i.i.i ], [ 258, %switch.hole_check ]
  ret i64 %.sroa.922.0.insert.ext

bb.q:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #21
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #21
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
define linkonce_odr { ptr, i32 } @_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 7 uses
  %5 = alloca %"struct.fast_float::parsed_number_string_t", align 8 ; 14 uses
  %i.b = and i64 %3, 256
  %.not = icmp eq i64 %i.b, 0
  %.not33254 = icmp eq ptr %0, %1
  %or.cond369 = or i1 %.not, %.not33254
  br i1 %or.cond369, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoaddr ptr %0 to i64
  %i.d = sub i64 %i.a, %i.c
  %scevgep = getelementptr i8, ptr %0, i64 %i.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0255 = phi ptr [ %i.j, %bb.b ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %i.e = load i8, ptr %.0255, align 1, !tbaa !37
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @_ZN10fast_float9space_lutIvE5valueE.const, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !43, !range !44, !noundef !45
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.0255, i64 1 ; 2 uses
  %.not33 = icmp eq ptr %i.j, %1
  br i1 %.not33, label %.critedge, label %.lr.ph, !llvm.loop !85

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %.0255, %.lr.ph ], [ %scevgep, %bb.b ] ; 9 uses
  %i.k = icmp eq ptr %.1, %1
  br i1 %i.k, label %bb.ba, label %bb.c

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.l = and i64 %3, 32
  %.not34 = icmp eq i64 %i.l, 0
  %.sroa.2.8.extract.trunc.i36 = trunc i64 %4 to i8 ; 5 uses
  %i.m = load i8, ptr %.1, align 1, !tbaa !37, !noalias !45 ; 3 uses
  %i.n = icmp eq i8 %i.m, 45                      ; 3 uses
  %i.o = zext i1 %i.n to i8
  br i1 %.not34, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.n, label %bb.e, label %.lr.ph262.preheader

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 3 uses
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr %i.p, align 1, !tbaa !37, !noalias !90 ; 2 uses
  %i.s = add i8 %i.r, -48
  %i.t = icmp ult i8 %i.s, 10
  br i1 %i.t, label %.lr.ph262.preheader, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66

.lr.ph262.preheader:                              ; preds = %bb.f, %bb.d
  %i.u = phi i8 [ %i.r, %bb.f ], [ %i.m, %bb.d ]
  %.0191 = phi ptr [ %i.p, %bb.f ], [ %.1, %bb.d ] ; 9 uses
  %.0191385 = ptrtoaddr ptr %.0191 to i64
  %i.v = sub i64 %i.a, %.0191385
  %scevgep386 = getelementptr i8, ptr %.0191, i64 %i.v
  br label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %bb.g
  %.0183260 = phi i64 [ %i.ac, %bb.g ], [ 0, %.lr.ph262.preheader ] ; 2 uses
  %.1192259 = phi ptr [ %i.ad, %bb.g ], [ %.0191, %.lr.ph262.preheader ] ; 3 uses
  %i.w = load i8, ptr %.1192259, align 1, !tbaa !37, !noalias !90 ; 2 uses
  %i.x = add i8 %i.w, -48
  %i.y = icmp ult i8 %i.x, 10                     ; 2 uses
  br i1 %i.y, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %.lr.ph262
  %i.z = mul i64 %.0183260, 10
  %i.aa = zext nneg i8 %i.w to i64
  %i.ab = add i64 %i.z, -48
  %i.ac = add i64 %i.ab, %i.aa                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.1192259, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i, label %.critedge.i, label %.lr.ph262, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.g, %.lr.ph262
  %.1192.lcssa.ph = phi ptr [ %scevgep386, %bb.g ], [ %.1192259, %.lr.ph262 ] ; 6 uses
  %.0183.lcssa.ph = phi i64 [ %i.ac, %bb.g ], [ %.0183260, %.lr.ph262 ] ; 4 uses
  %i.ae = ptrtoint ptr %.1192.lcssa.ph to i64     ; 2 uses
  %i.af = ptrtoint ptr %.0191 to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 8 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.ai = icmp eq i8 %i.u, 48
  %i.aj = icmp sgt i64 %i.ag, 1
  %or.cond.i = and i1 %i.aj, %i.ai
  br i1 %or.cond.i, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.y, label %.thread211, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load i8, ptr %.1192.lcssa.ph, align 1, !tbaa !37, !noalias !90
  %i.al = icmp eq i8 %i.ak, %.sroa.2.8.extract.trunc.i36
  br i1 %i.al, label %bb.k, label %.thread211

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.1192.lcssa.ph, i64 1 ; 4 uses
  %i.an = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp sgt i64 %i.ap, 7
  br i1 %i.aq, label %.lr.ph272, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit70

.lr.ph272:                                        ; preds = %bb.k, %.noexc69
  %.7190271 = phi i64 [ %i.bg, %.noexc69 ], [ %.0183.lcssa.ph, %bb.k ] ; 2 uses
  %.11202270 = phi ptr [ %i.bh, %.noexc69 ], [ %i.am, %bb.k ] ; 3 uses
  %.0.copyload.i73 = load i64, ptr %.11202270, align 1, !noalias !90 ; 2 uses
  %i.ar = add i64 %.0.copyload.i73, 5063812098665367110
  %i.as = add i64 %.0.copyload.i73, -3472328296227680304 ; 3 uses
  %i.at = or i64 %i.ar, %i.as
  %i.au = and i64 %i.at, -9187201950435737472
  %.not.i71 = icmp eq i64 %i.au, 0
  br i1 %.not.i71, label %.noexc69, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit70

.noexc69:                                         ; preds = %.lr.ph272
  %i.av = mul i64 %.7190271, 100000000
  %i.aw = mul i64 %i.as, 10
  %i.ax = lshr i64 %i.as, 8
  %i.ay = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = and i64 %i.ay, 1095216660735
  %i.ba = mul i64 %i.az, 4294967296000100
  %i.bb = lshr i64 %i.ay, 16
  %i.bc = and i64 %i.bb, 1095216660735
  %i.bd = mul i64 %i.bc, 42949672960001
  %i.be = add i64 %i.bd, %i.ba
  %i.bf = lshr i64 %i.be, 32
  %i.bg = add i64 %i.bf, %i.av                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.11202270, i64 8 ; 3 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.an, %i.bi
  %i.bk = icmp sgt i64 %i.bj, 7
  br i1 %i.bk, label %.lr.ph272, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit70, !llvm.loop !1

_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit70: ; preds = %.lr.ph272, %.noexc69, %bb.k
  %.11202.lcssa = phi ptr [ %i.am, %bb.k ], [ %i.bh, %.noexc69 ], [ %.11202270, %.lr.ph272 ] ; 5 uses
  %.7190.lcssa = phi i64 [ %.0183.lcssa.ph, %bb.k ], [ %i.bg, %.noexc69 ], [ %.7190271, %.lr.ph272 ] ; 2 uses
  %.not105.i277 = icmp eq ptr %.11202.lcssa, %1
  br i1 %.not105.i277, label %._crit_edge, label %.lr.ph280.preheader

.lr.ph280.preheader:                              ; preds = %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit70
  %.11202.lcssa387 = ptrtoaddr ptr %.11202.lcssa to i64
  %i.bl = sub i64 %i.a, %.11202.lcssa387
  %scevgep388 = getelementptr i8, ptr %.11202.lcssa, i64 %i.bl
  br label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph280.preheader, %bb.l
  %.6189279 = phi i64 [ %i.bs, %bb.l ], [ %.7190.lcssa, %.lr.ph280.preheader ] ; 2 uses
  %.10201278 = phi ptr [ %i.bp, %bb.l ], [ %.11202.lcssa, %.lr.ph280.preheader ] ; 3 uses
  %i.bm = load i8, ptr %.10201278, align 1, !tbaa !37, !noalias !90
  %i.bn = add i8 %i.bm, -48                       ; 2 uses
  %i.bo = icmp ult i8 %i.bn, 10
  br i1 %i.bo, label %bb.l, label %._crit_edge

bb.l:                                             ; preds = %.lr.ph280
  %i.bp = getelementptr inbounds nuw i8, ptr %.10201278, i64 1 ; 2 uses
  %i.bq = mul i64 %.6189279, 10
  %i.br = zext nneg i8 %i.bn to i64
  %i.bs = add i64 %i.bq, %i.br                    ; 2 uses
  %.not105.i = icmp eq ptr %i.bp, %1
  br i1 %.not105.i, label %._crit_edge, label %.lr.ph280, !llvm.loop !2

._crit_edge:                                      ; preds = %.lr.ph280, %bb.l, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit70
  %.10201.lcssa = phi ptr [ %.11202.lcssa, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit70 ], [ %scevgep388, %bb.l ], [ %.10201278, %.lr.ph280 ] ; 2 uses
  %.6189.lcssa = phi i64 [ %.7190.lcssa, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit70 ], [ %i.bs, %bb.l ], [ %.6189279, %.lr.ph280 ]
  %i.bt = ptrtoint ptr %.10201.lcssa to i64       ; 2 uses
  %i.bu = sub i64 %i.ao, %i.bt                    ; 3 uses
  %i.bv = sub i64 %i.bt, %i.ao
  %i.bw = sub nsw i64 %i.ag, %i.bu
  %i.bx = icmp eq i64 %i.bu, 0
  br i1 %i.bx, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66, label %.thread211

.thread211:                                       ; preds = %bb.i, %bb.j, %._crit_edge
  %.073.i224 = phi i64 [ %i.bu, %._crit_edge ], [ 0, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %.079.i223 = phi i64 [ %i.bw, %._crit_edge ], [ %i.ag, %bb.j ], [ %i.ag, %bb.i ] ; 2 uses
  %.1184222 = phi i64 [ %.6189.lcssa, %._crit_edge ], [ %.0183.lcssa.ph, %bb.j ], [ %.0183.lcssa.ph, %bb.i ] ; 2 uses
  %.sroa.20.0221 = phi i64 [ %i.bv, %._crit_edge ], [ 0, %bb.j ], [ 0, %bb.i ] ; 5 uses
  %.sroa.17.0220 = phi ptr [ %i.am, %._crit_edge ], [ null, %bb.j ], [ null, %bb.i ] ; 7 uses
  %.2193219 = phi ptr [ %.10201.lcssa, %._crit_edge ], [ %.1192.lcssa.ph, %bb.j ], [ %.1192.lcssa.ph, %bb.i ] ; 7 uses
  %i.by = and i64 %3, 1
  %.not106.i = icmp eq i64 %i.by, 0
  %.not107.i = icmp eq ptr %.2193219, %1          ; 2 uses
  %or.cond = or i1 %.not106.i, %.not107.i
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread211
  %i.bz = load i8, ptr %.2193219, align 1, !tbaa !37, !noalias !90 ; 3 uses
  switch i8 %i.bz, label %bb.n [
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m, %.thread211
  %i.ca = and i64 %3, 64
  %.not108.i = icmp eq i64 %i.ca, 0
  %or.cond239 = or i1 %.not108.i, %.not107.i
  br i1 %or.cond239, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = load i8, ptr %.2193219, align 1, !tbaa !37, !noalias !90 ; 5 uses
  switch i8 %i.cb, label %bb.y [
    i8 43, label %bb.p
    i8 45, label %bb.p
    i8 100, label %bb.p
    i8 68, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.m, %bb.m
  %i.cc = phi i8 [ %i.cb, %bb.o ], [ %i.cb, %bb.o ], [ %i.cb, %bb.o ], [ %i.cb, %bb.o ], [ %i.bz, %bb.m ], [ %i.bz, %bb.m ]
  switch i8 %i.cc, label %bb.r [
    i8 101, label %bb.q
    i8 69, label %bb.q
    i8 100, label %bb.q
    i8 68, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %.2193219, i64 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.3194 = phi ptr [ %.2193219, %bb.p ], [ %i.cd, %bb.q ] ; 5 uses
  %.not112.i = icmp eq ptr %.3194, %1
  br i1 %.not112.i, label %.thread225, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = load i8, ptr %.3194, align 1, !tbaa !37, !noalias !90 ; 2 uses
  %i.cf = icmp eq i8 %i.ce, 45
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %.3194, i64 1
  br label %.thread225

bb.u:                                             ; preds = %bb.s
  %i.ch = icmp eq i8 %i.ce, 43
  %spec.select.idx = zext i1 %i.ch to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.3194, i64 %spec.select.idx
  br label %.thread225

.thread225:                                       ; preds = %bb.u, %bb.r, %bb.t
  %.4195 = phi ptr [ %i.cg, %bb.t ], [ %.3194, %bb.r ], [ %spec.select, %bb.u ] ; 5 uses
  %.071.i = phi i1 [ true, %bb.t ], [ false, %bb.r ], [ false, %bb.u ]
  %.4195389 = ptrtoaddr ptr %.4195 to i64
  %i.ci = icmp eq ptr %.4195, %1
  br i1 %i.ci, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread225
  %i.cj = load i8, ptr %.4195, align 1, !tbaa !37, !noalias !90
  %i.ck = add i8 %i.cj, -48
  %i.cl = icmp ult i8 %i.ck, 10
  br i1 %i.cl, label %.lr.ph289.preheader, label %bb.w

.lr.ph289.preheader:                              ; preds = %bb.v
  %i.cm = sub i64 %i.a, %.4195389
  %scevgep390 = getelementptr i8, ptr %.4195, i64 %i.cm
  br label %.lr.ph289

bb.w:                                             ; preds = %bb.v, %.thread225
  %i.cn = and i64 %3, 4
  %.not115.i = icmp eq i64 %i.cn, 0
  br i1 %.not115.i, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66, label %.thread227

.lr.ph289:                                        ; preds = %.lr.ph289.preheader, %bb.x
  %.072.i288 = phi i64 [ %.1.i, %bb.x ], [ 0, %.lr.ph289.preheader ] ; 4 uses
  %.9200287 = phi ptr [ %i.cv, %bb.x ], [ %.4195, %.lr.ph289.preheader ] ; 3 uses
  %i.co = load i8, ptr %.9200287, align 1, !tbaa !37, !noalias !90
  %i.cp = add i8 %i.co, -48                       ; 2 uses
  %i.cq = icmp ult i8 %i.cp, 10
  br i1 %i.cq, label %bb.x, label %.critedge7.i

bb.x:                                             ; preds = %.lr.ph289
  %i.cr = icmp slt i64 %.072.i288, 268435456
  %i.cs = mul nsw i64 %.072.i288, 10
  %i.ct = zext nneg i8 %i.cp to i64
  %i.cu = add nsw i64 %i.cs, %i.ct
  %.1.i = select i1 %i.cr, i64 %i.cu, i64 %.072.i288 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.9200287, i64 1 ; 2 uses
  %.not114.i = icmp eq ptr %i.cv, %1
  br i1 %.not114.i, label %.critedge7.i, label %.lr.ph289, !llvm.loop !3

.critedge7.i:                                     ; preds = %bb.x, %.lr.ph289
  %.9200.lcssa.ph = phi ptr [ %scevgep390, %bb.x ], [ %.9200287, %.lr.ph289 ]
  %.072.i.lcssa.ph = phi i64 [ %.1.i, %bb.x ], [ %.072.i288, %.lr.ph289 ] ; 2 uses
  %i.cw = sub nsw i64 0, %.072.i.lcssa.ph
  %spec.select.i = select i1 %.071.i, i64 %i.cw, i64 %.072.i.lcssa.ph ; 2 uses
  %i.cx = add nsw i64 %spec.select.i, %.073.i224
  br label %.thread227

bb.y:                                             ; preds = %bb.o, %bb.n
  %i.cy = and i64 %3, 5
  %or.cond240.not.not = icmp eq i64 %i.cy, 1
  br i1 %or.cond240.not.not, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66, label %.thread227

.thread227:                                       ; preds = %bb.w, %.critedge7.i, %bb.y
  %.6197 = phi ptr [ %.2193219, %bb.y ], [ %.9200.lcssa.ph, %.critedge7.i ], [ %.2193219, %bb.w ] ; 3 uses
  %.376.i = phi i64 [ %.073.i224, %bb.y ], [ %i.cx, %.critedge7.i ], [ %.073.i224, %bb.w ] ; 2 uses
  %.5.i = phi i64 [ 0, %bb.y ], [ %spec.select.i, %.critedge7.i ], [ 0, %bb.w ]
  %i.cz = icmp sgt i64 %.079.i223, 19
  br i1 %i.cz, label %.lr.ph298, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE.exit

.lr.ph298:                                        ; preds = %.thread227, %.critedge11.i
  %.0.i297 = phi ptr [ %i.de, %.critedge11.i ], [ %.0191, %.thread227 ] ; 2 uses
  %.180.i296 = phi i64 [ %spec.select118.i, %.critedge11.i ], [ %.079.i223, %.thread227 ] ; 2 uses
  %i.da = load i8, ptr %.0.i297, align 1, !tbaa !37 ; 2 uses
  %i.db = icmp eq i8 %i.da, 48                    ; 2 uses
  %i.dc = icmp eq i8 %i.da, %.sroa.2.8.extract.trunc.i36
  %or.cond117.i = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %or.cond117.i, label %.critedge11.i, label %.critedge9.i

.critedge11.i:                                    ; preds = %.lr.ph298
  %i.dd = sext i1 %i.db to i64
  %spec.select118.i = add nsw i64 %.180.i296, %i.dd ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i297, i64 1 ; 2 uses
  %.not116.i = icmp eq ptr %i.de, %1
  br i1 %.not116.i, label %.critedge9.i, label %.lr.ph298, !llvm.loop !4

.critedge9.i:                                     ; preds = %.critedge11.i, %.lr.ph298
  %.180.i.lcssa.ph = phi i64 [ %spec.select118.i, %.critedge11.i ], [ %.180.i296, %.lr.ph298 ]
  %i.df = icmp sgt i64 %.180.i.lcssa.ph, 19
  br i1 %i.df, label %.lr.ph304, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE.exit

.lr.ph304:                                        ; preds = %.critedge9.i, %.lr.ph304
  %.3186303 = phi i64 [ %i.dk, %.lr.ph304 ], [ 0, %.critedge9.i ]
  %.7198302 = phi ptr [ %i.dl, %.lr.ph304 ], [ %.0191, %.critedge9.i ] ; 2 uses
  %i.dg = mul nuw i64 %.3186303, 10
  %i.dh = load i8, ptr %.7198302, align 1, !tbaa !37
  %i.di = sext i8 %i.dh to i64
  %i.dj = add i64 %i.dg, -48
  %i.dk = add i64 %i.dj, %i.di                    ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.7198302, i64 1 ; 3 uses
  %i.dm = icmp ult i64 %i.dk, 1000000000000000000
  %i.dn = icmp ne ptr %i.dl, %.1192.lcssa.ph
  %i.do = select i1 %i.dm, i1 %i.dn, i1 false
  br i1 %i.do, label %.lr.ph304, label %._crit_edge305, !llvm.loop !5

._crit_edge305:                                   ; preds = %.lr.ph304
  %i.dp = icmp ugt i64 %i.dk, 999999999999999999
  br i1 %i.dp, label %bb.z, label %._crit_edge305.thread

._crit_edge305.thread:                            ; preds = %._crit_edge305
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.17.0220, i64 %.sroa.20.0221
  %.not371.a = icmp samesign eq i64 %.sroa.20.0221, 0
  br i1 %.not371.a, label %._crit_edge312, label %.lr.ph311

.lr.ph311:                                        ; preds = %._crit_edge305.thread, %.lr.ph311
  %.4187309 = phi i64 [ %i.dv, %.lr.ph311 ], [ %i.dk, %._crit_edge305.thread ]
  %.8199308 = phi ptr [ %i.dw, %.lr.ph311 ], [ %.sroa.17.0220, %._crit_edge305.thread ] ; 2 uses
  %i.dr = mul nuw i64 %.4187309, 10
  %i.ds = load i8, ptr %.8199308, align 1, !tbaa !37
  %i.dt = sext i8 %i.ds to i64
  %i.du = add i64 %i.dr, -48
  %i.dv = add i64 %i.du, %i.dt                    ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.8199308, i64 1 ; 3 uses
  %i.dx = icmp ult i64 %i.dv, 1000000000000000000
  %i.dy = icmp ne ptr %i.dw, %i.dq
  %i.dz = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %i.dz, label %.lr.ph311, label %._crit_edge312, !llvm.loop !6

._crit_edge312:                                   ; preds = %.lr.ph311, %._crit_edge305.thread
  %.8199.lcssa = phi ptr [ %.sroa.17.0220, %._crit_edge305.thread ], [ %i.dw, %.lr.ph311 ]
  %.4187.lcssa = phi i64 [ %i.dk, %._crit_edge305.thread ], [ %i.dv, %.lr.ph311 ]
  %i.ea = ptrtoint ptr %.sroa.17.0220 to i64
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge305, %._crit_edge312
  %.8199.lcssa.sink = phi ptr [ %.8199.lcssa, %._crit_edge312 ], [ %i.dl, %._crit_edge305 ]
  %.sink = phi i64 [ %i.ea, %._crit_edge312 ], [ %i.ae, %._crit_edge305 ]
  %.5188 = phi i64 [ %.4187.lcssa, %._crit_edge312 ], [ %i.dk, %._crit_edge305 ]
  %i.eb = ptrtoint ptr %.8199.lcssa.sink to i64
  %i.ec = sub i64 %.sink, %i.eb
  %.477.i = add nsw i64 %i.ec, %.5.i
  br label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE.exit

bb.aa:                                            ; preds = %bb.c
  br i1 %i.n, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ed = and i64 %3, 128
  %.not.i37 = icmp ne i64 %i.ed, 0
  %i.ee = icmp eq i8 %i.m, 43
  %or.cond241 = and i1 %.not.i37, %i.ee
  br i1 %or.cond241, label %bb.ac, label %.lr.ph319.preheader

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ef = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 3 uses
  %i.eg = icmp eq ptr %i.ef, %1
  br i1 %i.eg, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = load i8, ptr %i.ef, align 1, !tbaa !37, !noalias !91 ; 2 uses
  %i.ei = add i8 %i.eh, -48
  %i.ej = icmp ult i8 %i.ei, 10
  %.not96.i = icmp eq i8 %i.eh, %.sroa.2.8.extract.trunc.i36
  %or.cond242 = select i1 %i.ej, i1 true, i1 %.not96.i
  br i1 %or.cond242, label %.lr.ph319.preheader, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66

.lr.ph319.preheader:                              ; preds = %bb.ab, %bb.ad
  %.0181 = phi ptr [ %i.ef, %bb.ad ], [ %.1, %bb.ab ] ; 11 uses
  %.0181391 = ptrtoaddr ptr %.0181 to i64
  %i.ek = sub i64 %i.a, %.0181391
  %scevgep392 = getelementptr i8, ptr %.0181, i64 %i.ek
  br label %.lr.ph319

.critedge.i38.thread:                             ; preds = %bb.ae
  %i.el = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.em = ptrtoint ptr %.0181 to i64
  %i.en = sub i64 %i.el, %i.em                    ; 2 uses
  br label %.critedge112.i

.lr.ph319:                                        ; preds = %.lr.ph319.preheader, %bb.ae
  %.1182317 = phi ptr [ %i.ev, %bb.ae ], [ %.0181, %.lr.ph319.preheader ] ; 5 uses
  %.0203316 = phi i64 [ %i.eu, %bb.ae ], [ 0, %.lr.ph319.preheader ] ; 4 uses
  %i.eo = load i8, ptr %.1182317, align 1, !tbaa !37, !noalias !91 ; 3 uses
  %i.ep = add i8 %i.eo, -48
  %i.eq = icmp ult i8 %i.ep, 10
  br i1 %i.eq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph319
  %i.er = mul i64 %.0203316, 10
  %i.es = zext nneg i8 %i.eo to i64
  %i.et = add i64 %i.er, -48
  %i.eu = add i64 %i.et, %i.es                    ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.1182317, i64 1 ; 2 uses
  %.not97.i = icmp eq ptr %i.ev, %1
  br i1 %.not97.i, label %.critedge.i38.thread, label %.lr.ph319, !llvm.loop !7

bb.af:                                            ; preds = %.lr.ph319
  %i.ew = ptrtoint ptr %.1182317 to i64           ; 3 uses
  %i.ex = ptrtoint ptr %.0181 to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 4 uses
  %i.ez = icmp eq i8 %i.eo, %.sroa.2.8.extract.trunc.i36
  br i1 %i.ez, label %bb.ag, label %.critedge112.i

bb.ag:                                            ; preds = %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %.1182317, i64 1 ; 4 uses
  %i.fb = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.fc = ptrtoint ptr %i.fa to i64               ; 3 uses
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = icmp sgt i64 %i.fd, 7
  br i1 %i.fe, label %.lr.ph325, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit

.lr.ph325:                                        ; preds = %bb.ag, %.noexc
  %.11323 = phi ptr [ %i.fv, %.noexc ], [ %i.fa, %bb.ag ] ; 3 uses
  %.7210322 = phi i64 [ %i.fu, %.noexc ], [ %.0203316, %bb.ag ] ; 2 uses
  %.0.copyload.i75 = load i64, ptr %.11323, align 1, !noalias !91 ; 2 uses
  %i.ff = add i64 %.0.copyload.i75, 5063812098665367110
  %i.fg = add i64 %.0.copyload.i75, -3472328296227680304 ; 3 uses
  %i.fh = or i64 %i.ff, %i.fg
  %i.fi = and i64 %i.fh, -9187201950435737472
  %.not.i72 = icmp eq i64 %i.fi, 0
  br i1 %.not.i72, label %.noexc, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit

.noexc:                                           ; preds = %.lr.ph325
  %i.fj = mul i64 %.7210322, 100000000
  %i.fk = mul i64 %i.fg, 10
  %i.fl = lshr i64 %i.fg, 8
  %i.fm = add i64 %i.fk, %i.fl                    ; 2 uses
  %i.fn = and i64 %i.fm, 1095216660735
  %i.fo = mul i64 %i.fn, 4294967296000100
  %i.fp = lshr i64 %i.fm, 16
  %i.fq = and i64 %i.fp, 1095216660735
  %i.fr = mul i64 %i.fq, 42949672960001
  %i.fs = add i64 %i.fr, %i.fo
  %i.ft = lshr i64 %i.fs, 32
  %i.fu = add i64 %i.ft, %i.fj                    ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.11323, i64 8 ; 3 uses
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = sub i64 %i.fb, %i.fw
  %i.fy = icmp sgt i64 %i.fx, 7
  br i1 %i.fy, label %.lr.ph325, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit, !llvm.loop !1

_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit: ; preds = %.lr.ph325, %.noexc, %bb.ag
  %.7210.lcssa = phi i64 [ %.0203316, %bb.ag ], [ %i.fu, %.noexc ], [ %.7210322, %.lr.ph325 ] ; 2 uses
  %.11.lcssa = phi ptr [ %i.fa, %bb.ag ], [ %i.fv, %.noexc ], [ %.11323, %.lr.ph325 ] ; 5 uses
  %.not99.i330 = icmp eq ptr %.11.lcssa, %1
  br i1 %.not99.i330, label %.critedge2.i, label %.lr.ph333.preheader

.lr.ph333.preheader:                              ; preds = %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit
  %.11.lcssa393 = ptrtoaddr ptr %.11.lcssa to i64
  %i.fz = sub i64 %i.a, %.11.lcssa393
  %scevgep394 = getelementptr i8, ptr %.11.lcssa, i64 %i.fz
  br label %.lr.ph333

.lr.ph333:                                        ; preds = %.lr.ph333.preheader, %bb.ah
  %.10332 = phi ptr [ %i.gd, %bb.ah ], [ %.11.lcssa, %.lr.ph333.preheader ] ; 3 uses
  %.6209331 = phi i64 [ %i.gg, %bb.ah ], [ %.7210.lcssa, %.lr.ph333.preheader ] ; 2 uses
  %i.ga = load i8, ptr %.10332, align 1, !tbaa !37, !noalias !91
  %i.gb = add i8 %i.ga, -48                       ; 2 uses
  %i.gc = icmp ult i8 %i.gb, 10
  br i1 %i.gc, label %bb.ah, label %.critedge2.i

bb.ah:                                            ; preds = %.lr.ph333
  %i.gd = getelementptr inbounds nuw i8, ptr %.10332, i64 1 ; 2 uses
  %i.ge = mul i64 %.6209331, 10
  %i.gf = zext nneg i8 %i.gb to i64
  %i.gg = add i64 %i.ge, %i.gf                    ; 2 uses
  %.not99.i = icmp eq ptr %i.gd, %1
  br i1 %.not99.i, label %.critedge2.i, label %.lr.ph333, !llvm.loop !8

.critedge2.i:                                     ; preds = %bb.ah, %.lr.ph333, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit
  %.6209.lcssa = phi i64 [ %.7210.lcssa, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit ], [ %.6209331, %.lr.ph333 ], [ %i.gg, %bb.ah ]
  %.10.lcssa = phi ptr [ %.11.lcssa, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit ], [ %.10332, %.lr.ph333 ], [ %scevgep394, %bb.ah ] ; 2 uses
  %i.gh = ptrtoint ptr %.10.lcssa to i64          ; 2 uses
  %i.gi = sub i64 %i.fc, %i.gh                    ; 2 uses
  %i.gj = sub i64 %i.gh, %i.fc
  %i.gk = sub nsw i64 %i.ey, %i.gi
  br label %.critedge112.i

.critedge112.i:                                   ; preds = %.critedge.i38.thread, %.critedge2.i, %bb.af
  %i.gl = phi i64 [ %i.en, %.critedge.i38.thread ], [ %i.ey, %.critedge2.i ], [ %i.ey, %bb.af ] ; 5 uses
  %i.gm = phi i64 [ %i.el, %.critedge.i38.thread ], [ %i.ew, %.critedge2.i ], [ %i.ew, %bb.af ]
  %.sroa.17140.0 = phi ptr [ null, %.critedge.i38.thread ], [ %i.fa, %.critedge2.i ], [ null, %bb.af ] ; 7 uses
  %.sroa.20142.0 = phi i64 [ 0, %.critedge.i38.thread ], [ %i.gj, %.critedge2.i ], [ 0, %bb.af ] ; 5 uses
  %.1204 = phi i64 [ %i.eu, %.critedge.i38.thread ], [ %.6209.lcssa, %.critedge2.i ], [ %.0203316, %bb.af ] ; 2 uses
  %.2 = phi ptr [ %scevgep392, %.critedge.i38.thread ], [ %.10.lcssa, %.critedge2.i ], [ %.1182317, %bb.af ] ; 7 uses
  %.072.i39 = phi i64 [ %i.en, %.critedge.i38.thread ], [ %i.gk, %.critedge2.i ], [ %i.ey, %bb.af ] ; 3 uses
  %.066.i = phi i64 [ 0, %.critedge.i38.thread ], [ %i.gi, %.critedge2.i ], [ 0, %bb.af ] ; 3 uses
  %i.gn = icmp eq i64 %.072.i39, 0
  br i1 %i.gn, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66, label %bb.ai

bb.ai:                                            ; preds = %.critedge112.i
  %i.go = and i64 %3, 1
  %.not100.i = icmp eq i64 %i.go, 0
  %.not101.i = icmp eq ptr %.2, %1                ; 2 uses
  %or.cond243 = or i1 %.not100.i, %.not101.i
  br i1 %or.cond243, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gp = load i8, ptr %.2, align 1, !tbaa !37, !noalias !91 ; 3 uses
  switch i8 %i.gp, label %bb.ak [
    i8 101, label %bb.am
    i8 69, label %bb.am
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gq = and i64 %3, 64
  %.not102.i = icmp eq i64 %i.gq, 0
  %or.cond244 = or i1 %.not102.i, %.not101.i
  br i1 %or.cond244, label %bb.av, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gr = load i8, ptr %.2, align 1, !tbaa !37, !noalias !91 ; 5 uses
  switch i8 %i.gr, label %bb.av [
    i8 43, label %bb.am
    i8 45, label %bb.am
    i8 100, label %bb.am
    i8 68, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al, %bb.aj, %bb.aj
  %i.gs = phi i8 [ %i.gr, %bb.al ], [ %i.gr, %bb.al ], [ %i.gr, %bb.al ], [ %i.gr, %bb.al ], [ %i.gp, %bb.aj ], [ %i.gp, %bb.aj ]
  switch i8 %i.gs, label %bb.ao [
    i8 101, label %bb.an
    i8 69, label %bb.an
    i8 100, label %bb.an
    i8 68, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am, %bb.am, %bb.am
  %i.gt = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br label %bb.ao
end_hunk_0
begin_hunk_1_@_ZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE:bb.a
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.02952.i.i.i, i64 4
  %i.t = add nsw i64 %.053.i.i.i, -1
  %i.u = icmp sgt i64 %.053.i.i.i, 1
  br i1 %i.u, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !120

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %.pre.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.b
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.b ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.b ] ; 5 uses
  %i.v = sub i64 %i.f, %.pre-phi.i.i.i
  switch i64 %i.v, label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.thread [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !37
  switch i8 %i.w, label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit [
    i8 32, label %bb.h
    i8 13, label %bb.h
    i8 12, label %bb.h
    i8 11, label %bb.h
    i8 10, label %bb.h
    i8 9, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i
  %.1.i.i.i = phi ptr [ %i.x, %bb.h ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.y = load i8, ptr %.1.i.i.i, align 1, !tbaa !37
  switch i8 %i.y, label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit [
    i8 32, label %bb.j
    i8 13, label %bb.j
    i8 12, label %bb.j
    i8 11, label %bb.j
    i8 10, label %bb.j
    i8 9, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i
  %.2.i.i.i = phi ptr [ %i.z, %bb.j ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aa = load i8, ptr %.2.i.i.i, align 1, !tbaa !37
  %switch.tableidx = add i8 %i.aa, -9             ; 2 uses
  %i.ab = icmp ult i8 %switch.tableidx, 24
  br i1 %i.ab, label %switch.hole_check, label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit

_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.02952.i.i.i, i64 3
  br label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit

_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.loopexit.split.loop.exit39: ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.02952.i.i.i, i64 2
  br label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit

_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.loopexit.split.loop.exit41: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.02952.i.i.i, i64 1
  br label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit

_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit: ; preds = %.lr.ph.i.i.i, %switch.hole_check, %bb.k, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.loopexit.split.loop.exit, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.loopexit.split.loop.exit39, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.loopexit.split.loop.exit41, %bb.i, %bb.g
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %bb.i ], [ %.029.lcssa.i.i.i, %bb.g ], [ %.2.i.i.i, %bb.k ], [ %i.ae, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.loopexit.split.loop.exit41 ], [ %i.ad, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.loopexit.split.loop.exit39 ], [ %i.ac, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.loopexit.split.loop.exit ], [ %.2.i.i.i, %switch.hole_check ], [ %.02952.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.af = icmp eq ptr %.028.i.i.i, %i.d
  br i1 %i.af, label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ag = call { ptr, i32 } @_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE(ptr noundef nonnull %.028.i.i.i, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 133, i64 42949673006) #20 ; 2 uses
  %i.ah = extractvalue { ptr, i32 } %i.ag, 1
  switch i32 %i.ah, label %bb.p [
    i32 34, label %bb.m
    i32 0, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.ai = extractvalue { ptr, i32 } %i.ag, 0
  %i.aj = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.al
  %i.aq = icmp ugt i64 %i.am, %i.ap
  br i1 %i.aq, label %bb.n, label %bb.o, !prof !39

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #11
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am
  store ptr %i.ar, ptr %0, align 8, !tbaa !35
  %i.as = load double, ptr %i.a, align 8, !tbaa !65
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o
  %.sroa.922.0 = phi double [ %i.as, %bb.o ], [ 0.000000e+00, %bb.l ]
  %.sroa.5.0 = phi i64 [ 1, %bb.o ], [ 2306, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.thread

switch.hole_check:                                ; preds = %bb.k
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 8388639, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.thread, label %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit

_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit.thread: ; preds = %switch.hole_check, %._crit_edge.i.i.i, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit, %bb.a, %bb.p
  %.sroa.922.1 = phi double [ %.sroa.922.0, %bb.p ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit ], [ 0.000000e+00, %._crit_edge.i.i.i ], [ 0.000000e+00, %switch.hole_check ]
  %.sroa.5.1 = phi i64 [ %.sroa.5.0, %bb.p ], [ 258, %bb.a ], [ 258, %_ZSt11find_if_notIPKcZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS2_8ExpectedIT_NS2_14ConversionCodeEEEPNS2_5RangeIS1_EEEUlcE_ES6_S6_S6_T0_.exit ], [ 258, %._crit_edge.i.i.i ], [ 258, %switch.hole_check ]
  %.fca.0.insert = insertvalue { i64, double } poison, i64 %.sroa.5.1, 0
  %.fca.1.insert = insertvalue { i64, double } %.fca.0.insert, double %.sroa.922.1, 1
  ret { i64, double } %.fca.1.insert

bb.q:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 7 uses
  %5 = alloca %"struct.fast_float::parsed_number_string_t", align 8 ; 14 uses
  %i.b = and i64 %3, 256
  %.not = icmp eq i64 %i.b, 0
  %.not33254 = icmp eq ptr %0, %1
  %or.cond369 = or i1 %.not, %.not33254
  br i1 %or.cond369, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoaddr ptr %0 to i64
  %i.d = sub i64 %i.a, %i.c
  %scevgep = getelementptr i8, ptr %0, i64 %i.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0255 = phi ptr [ %i.j, %bb.b ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %i.e = load i8, ptr %.0255, align 1, !tbaa !37
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @_ZN10fast_float9space_lutIvE5valueE.const, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !43, !range !44, !noundef !45
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.0255, i64 1 ; 2 uses
  %.not33 = icmp eq ptr %i.j, %1
  br i1 %.not33, label %.critedge, label %.lr.ph, !llvm.loop !121

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %.0255, %.lr.ph ], [ %scevgep, %bb.b ] ; 9 uses
  %i.k = icmp eq ptr %.1, %1
  br i1 %i.k, label %bb.ba, label %bb.c

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.l = and i64 %3, 32
  %.not34 = icmp eq i64 %i.l, 0
  %.sroa.2.8.extract.trunc.i36 = trunc i64 %4 to i8 ; 5 uses
  %i.m = load i8, ptr %.1, align 1, !tbaa !37, !noalias !45 ; 3 uses
  %i.n = icmp eq i8 %i.m, 45                      ; 3 uses
  %i.o = zext i1 %i.n to i8
  br i1 %.not34, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.n, label %bb.e, label %.lr.ph262.preheader

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 3 uses
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr %i.p, align 1, !tbaa !37, !noalias !126 ; 2 uses
  %i.s = add i8 %i.r, -48
  %i.t = icmp ult i8 %i.s, 10
  br i1 %i.t, label %.lr.ph262.preheader, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66

.lr.ph262.preheader:                              ; preds = %bb.f, %bb.d
  %i.u = phi i8 [ %i.r, %bb.f ], [ %i.m, %bb.d ]
  %.0191 = phi ptr [ %i.p, %bb.f ], [ %.1, %bb.d ] ; 9 uses
  %.0191385 = ptrtoaddr ptr %.0191 to i64
  %i.v = sub i64 %i.a, %.0191385
  %scevgep386 = getelementptr i8, ptr %.0191, i64 %i.v
  br label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %bb.g
  %.0183260 = phi i64 [ %i.ac, %bb.g ], [ 0, %.lr.ph262.preheader ] ; 2 uses
  %.1192259 = phi ptr [ %i.ad, %bb.g ], [ %.0191, %.lr.ph262.preheader ] ; 3 uses
  %i.w = load i8, ptr %.1192259, align 1, !tbaa !37, !noalias !126 ; 2 uses
  %i.x = add i8 %i.w, -48
  %i.y = icmp ult i8 %i.x, 10                     ; 2 uses
  br i1 %i.y, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %.lr.ph262
  %i.z = mul i64 %.0183260, 10
  %i.aa = zext nneg i8 %i.w to i64
  %i.ab = add i64 %i.z, -48
  %i.ac = add i64 %i.ab, %i.aa                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.1192259, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i, label %.critedge.i, label %.lr.ph262, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.g, %.lr.ph262
  %.1192.lcssa.ph = phi ptr [ %scevgep386, %bb.g ], [ %.1192259, %.lr.ph262 ] ; 6 uses
  %.0183.lcssa.ph = phi i64 [ %i.ac, %bb.g ], [ %.0183260, %.lr.ph262 ] ; 4 uses
  %i.ae = ptrtoint ptr %.1192.lcssa.ph to i64     ; 2 uses
  %i.af = ptrtoint ptr %.0191 to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 8 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.ai = icmp eq i8 %i.u, 48
  %i.aj = icmp sgt i64 %i.ag, 1
  %or.cond.i = and i1 %i.aj, %i.ai
  br i1 %or.cond.i, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.y, label %.thread211, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load i8, ptr %.1192.lcssa.ph, align 1, !tbaa !37, !noalias !126
  %i.al = icmp eq i8 %i.ak, %.sroa.2.8.extract.trunc.i36
  br i1 %i.al, label %bb.k, label %.thread211

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.1192.lcssa.ph, i64 1 ; 4 uses
  %i.an = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp sgt i64 %i.ap, 7
  br i1 %i.aq, label %.lr.ph272, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit70

.lr.ph272:                                        ; preds = %bb.k, %.noexc69
  %.7190271 = phi i64 [ %i.bg, %.noexc69 ], [ %.0183.lcssa.ph, %bb.k ] ; 2 uses
  %.11202270 = phi ptr [ %i.bh, %.noexc69 ], [ %i.am, %bb.k ] ; 3 uses
  %.0.copyload.i73 = load i64, ptr %.11202270, align 1, !noalias !126 ; 2 uses
  %i.ar = add i64 %.0.copyload.i73, 5063812098665367110
  %i.as = add i64 %.0.copyload.i73, -3472328296227680304 ; 3 uses
  %i.at = or i64 %i.ar, %i.as
  %i.au = and i64 %i.at, -9187201950435737472
  %.not.i71 = icmp eq i64 %i.au, 0
  br i1 %.not.i71, label %.noexc69, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit70

.noexc69:                                         ; preds = %.lr.ph272
  %i.av = mul i64 %.7190271, 100000000
  %i.aw = mul i64 %i.as, 10
  %i.ax = lshr i64 %i.as, 8
  %i.ay = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = and i64 %i.ay, 1095216660735
  %i.ba = mul i64 %i.az, 4294967296000100
  %i.bb = lshr i64 %i.ay, 16
  %i.bc = and i64 %i.bb, 1095216660735
  %i.bd = mul i64 %i.bc, 42949672960001
  %i.be = add i64 %i.bd, %i.ba
  %i.bf = lshr i64 %i.be, 32
  %i.bg = add i64 %i.bf, %i.av                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.11202270, i64 8 ; 3 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.an, %i.bi
  %i.bk = icmp sgt i64 %i.bj, 7
  br i1 %i.bk, label %.lr.ph272, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit70, !llvm.loop !1

_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit70: ; preds = %.lr.ph272, %.noexc69, %bb.k
  %.11202.lcssa = phi ptr [ %i.am, %bb.k ], [ %i.bh, %.noexc69 ], [ %.11202270, %.lr.ph272 ] ; 5 uses
  %.7190.lcssa = phi i64 [ %.0183.lcssa.ph, %bb.k ], [ %i.bg, %.noexc69 ], [ %.7190271, %.lr.ph272 ] ; 2 uses
  %.not105.i277 = icmp eq ptr %.11202.lcssa, %1
  br i1 %.not105.i277, label %._crit_edge, label %.lr.ph280.preheader

.lr.ph280.preheader:                              ; preds = %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit70
  %.11202.lcssa387 = ptrtoaddr ptr %.11202.lcssa to i64
  %i.bl = sub i64 %i.a, %.11202.lcssa387
  %scevgep388 = getelementptr i8, ptr %.11202.lcssa, i64 %i.bl
  br label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph280.preheader, %bb.l
  %.6189279 = phi i64 [ %i.bs, %bb.l ], [ %.7190.lcssa, %.lr.ph280.preheader ] ; 2 uses
  %.10201278 = phi ptr [ %i.bp, %bb.l ], [ %.11202.lcssa, %.lr.ph280.preheader ] ; 3 uses
  %i.bm = load i8, ptr %.10201278, align 1, !tbaa !37, !noalias !126
  %i.bn = add i8 %i.bm, -48                       ; 2 uses
  %i.bo = icmp ult i8 %i.bn, 10
  br i1 %i.bo, label %bb.l, label %._crit_edge

bb.l:                                             ; preds = %.lr.ph280
  %i.bp = getelementptr inbounds nuw i8, ptr %.10201278, i64 1 ; 2 uses
  %i.bq = mul i64 %.6189279, 10
  %i.br = zext nneg i8 %i.bn to i64
  %i.bs = add i64 %i.bq, %i.br                    ; 2 uses
  %.not105.i = icmp eq ptr %i.bp, %1
  br i1 %.not105.i, label %._crit_edge, label %.lr.ph280, !llvm.loop !2

._crit_edge:                                      ; preds = %.lr.ph280, %bb.l, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit70
  %.10201.lcssa = phi ptr [ %.11202.lcssa, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit70 ], [ %scevgep388, %bb.l ], [ %.10201278, %.lr.ph280 ] ; 2 uses
  %.6189.lcssa = phi i64 [ %.7190.lcssa, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit70 ], [ %i.bs, %bb.l ], [ %.6189279, %.lr.ph280 ]
  %i.bt = ptrtoint ptr %.10201.lcssa to i64       ; 2 uses
  %i.bu = sub i64 %i.ao, %i.bt                    ; 3 uses
  %i.bv = sub i64 %i.bt, %i.ao
  %i.bw = sub nsw i64 %i.ag, %i.bu
  %i.bx = icmp eq i64 %i.bu, 0
  br i1 %i.bx, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66, label %.thread211

.thread211:                                       ; preds = %bb.i, %bb.j, %._crit_edge
  %.073.i224 = phi i64 [ %i.bu, %._crit_edge ], [ 0, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %.079.i223 = phi i64 [ %i.bw, %._crit_edge ], [ %i.ag, %bb.j ], [ %i.ag, %bb.i ] ; 2 uses
  %.1184222 = phi i64 [ %.6189.lcssa, %._crit_edge ], [ %.0183.lcssa.ph, %bb.j ], [ %.0183.lcssa.ph, %bb.i ] ; 2 uses
  %.sroa.20.0221 = phi i64 [ %i.bv, %._crit_edge ], [ 0, %bb.j ], [ 0, %bb.i ] ; 5 uses
  %.sroa.17.0220 = phi ptr [ %i.am, %._crit_edge ], [ null, %bb.j ], [ null, %bb.i ] ; 7 uses
  %.2193219 = phi ptr [ %.10201.lcssa, %._crit_edge ], [ %.1192.lcssa.ph, %bb.j ], [ %.1192.lcssa.ph, %bb.i ] ; 7 uses
  %i.by = and i64 %3, 1
  %.not106.i = icmp eq i64 %i.by, 0
  %.not107.i = icmp eq ptr %.2193219, %1          ; 2 uses
  %or.cond = or i1 %.not106.i, %.not107.i
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread211
  %i.bz = load i8, ptr %.2193219, align 1, !tbaa !37, !noalias !126 ; 3 uses
  switch i8 %i.bz, label %bb.n [
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m, %.thread211
  %i.ca = and i64 %3, 64
  %.not108.i = icmp eq i64 %i.ca, 0
  %or.cond239 = or i1 %.not108.i, %.not107.i
  br i1 %or.cond239, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = load i8, ptr %.2193219, align 1, !tbaa !37, !noalias !126 ; 5 uses
  switch i8 %i.cb, label %bb.y [
    i8 43, label %bb.p
    i8 45, label %bb.p
    i8 100, label %bb.p
    i8 68, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.m, %bb.m
  %i.cc = phi i8 [ %i.cb, %bb.o ], [ %i.cb, %bb.o ], [ %i.cb, %bb.o ], [ %i.cb, %bb.o ], [ %i.bz, %bb.m ], [ %i.bz, %bb.m ]
  switch i8 %i.cc, label %bb.r [
    i8 101, label %bb.q
    i8 69, label %bb.q
    i8 100, label %bb.q
    i8 68, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %.2193219, i64 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.3194 = phi ptr [ %.2193219, %bb.p ], [ %i.cd, %bb.q ] ; 5 uses
  %.not112.i = icmp eq ptr %.3194, %1
  br i1 %.not112.i, label %.thread225, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = load i8, ptr %.3194, align 1, !tbaa !37, !noalias !126 ; 2 uses
  %i.cf = icmp eq i8 %i.ce, 45
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %.3194, i64 1
  br label %.thread225

bb.u:                                             ; preds = %bb.s
  %i.ch = icmp eq i8 %i.ce, 43
  %spec.select.idx = zext i1 %i.ch to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.3194, i64 %spec.select.idx
  br label %.thread225

.thread225:                                       ; preds = %bb.u, %bb.r, %bb.t
  %.4195 = phi ptr [ %i.cg, %bb.t ], [ %.3194, %bb.r ], [ %spec.select, %bb.u ] ; 5 uses
  %.071.i = phi i1 [ true, %bb.t ], [ false, %bb.r ], [ false, %bb.u ]
  %.4195389 = ptrtoaddr ptr %.4195 to i64
  %i.ci = icmp eq ptr %.4195, %1
  br i1 %i.ci, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread225
  %i.cj = load i8, ptr %.4195, align 1, !tbaa !37, !noalias !126
  %i.ck = add i8 %i.cj, -48
  %i.cl = icmp ult i8 %i.ck, 10
  br i1 %i.cl, label %.lr.ph289.preheader, label %bb.w

.lr.ph289.preheader:                              ; preds = %bb.v
  %i.cm = sub i64 %i.a, %.4195389
  %scevgep390 = getelementptr i8, ptr %.4195, i64 %i.cm
  br label %.lr.ph289

bb.w:                                             ; preds = %bb.v, %.thread225
  %i.cn = and i64 %3, 4
  %.not115.i = icmp eq i64 %i.cn, 0
  br i1 %.not115.i, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66, label %.thread227

.lr.ph289:                                        ; preds = %.lr.ph289.preheader, %bb.x
  %.072.i288 = phi i64 [ %.1.i, %bb.x ], [ 0, %.lr.ph289.preheader ] ; 4 uses
  %.9200287 = phi ptr [ %i.cv, %bb.x ], [ %.4195, %.lr.ph289.preheader ] ; 3 uses
  %i.co = load i8, ptr %.9200287, align 1, !tbaa !37, !noalias !126
  %i.cp = add i8 %i.co, -48                       ; 2 uses
  %i.cq = icmp ult i8 %i.cp, 10
  br i1 %i.cq, label %bb.x, label %.critedge7.i

bb.x:                                             ; preds = %.lr.ph289
  %i.cr = icmp slt i64 %.072.i288, 268435456
  %i.cs = mul nsw i64 %.072.i288, 10
  %i.ct = zext nneg i8 %i.cp to i64
  %i.cu = add nsw i64 %i.cs, %i.ct
  %.1.i = select i1 %i.cr, i64 %i.cu, i64 %.072.i288 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.9200287, i64 1 ; 2 uses
  %.not114.i = icmp eq ptr %i.cv, %1
  br i1 %.not114.i, label %.critedge7.i, label %.lr.ph289, !llvm.loop !3

.critedge7.i:                                     ; preds = %bb.x, %.lr.ph289
  %.9200.lcssa.ph = phi ptr [ %scevgep390, %bb.x ], [ %.9200287, %.lr.ph289 ]
  %.072.i.lcssa.ph = phi i64 [ %.1.i, %bb.x ], [ %.072.i288, %.lr.ph289 ] ; 2 uses
  %i.cw = sub nsw i64 0, %.072.i.lcssa.ph
  %spec.select.i = select i1 %.071.i, i64 %i.cw, i64 %.072.i.lcssa.ph ; 2 uses
  %i.cx = add nsw i64 %spec.select.i, %.073.i224
  br label %.thread227

bb.y:                                             ; preds = %bb.o, %bb.n
  %i.cy = and i64 %3, 5
  %or.cond240.not.not = icmp eq i64 %i.cy, 1
  br i1 %or.cond240.not.not, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66, label %.thread227

.thread227:                                       ; preds = %bb.w, %.critedge7.i, %bb.y
  %.6197 = phi ptr [ %.2193219, %bb.y ], [ %.9200.lcssa.ph, %.critedge7.i ], [ %.2193219, %bb.w ] ; 3 uses
  %.376.i = phi i64 [ %.073.i224, %bb.y ], [ %i.cx, %.critedge7.i ], [ %.073.i224, %bb.w ] ; 2 uses
  %.5.i = phi i64 [ 0, %bb.y ], [ %spec.select.i, %.critedge7.i ], [ 0, %bb.w ]
  %i.cz = icmp sgt i64 %.079.i223, 19
  br i1 %i.cz, label %.lr.ph298, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE.exit

.lr.ph298:                                        ; preds = %.thread227, %.critedge11.i
  %.0.i297 = phi ptr [ %i.de, %.critedge11.i ], [ %.0191, %.thread227 ] ; 2 uses
  %.180.i296 = phi i64 [ %spec.select118.i, %.critedge11.i ], [ %.079.i223, %.thread227 ] ; 2 uses
  %i.da = load i8, ptr %.0.i297, align 1, !tbaa !37 ; 2 uses
  %i.db = icmp eq i8 %i.da, 48                    ; 2 uses
  %i.dc = icmp eq i8 %i.da, %.sroa.2.8.extract.trunc.i36
  %or.cond117.i = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %or.cond117.i, label %.critedge11.i, label %.critedge9.i

.critedge11.i:                                    ; preds = %.lr.ph298
  %i.dd = sext i1 %i.db to i64
  %spec.select118.i = add nsw i64 %.180.i296, %i.dd ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i297, i64 1 ; 2 uses
  %.not116.i = icmp eq ptr %i.de, %1
  br i1 %.not116.i, label %.critedge9.i, label %.lr.ph298, !llvm.loop !4

.critedge9.i:                                     ; preds = %.critedge11.i, %.lr.ph298
  %.180.i.lcssa.ph = phi i64 [ %spec.select118.i, %.critedge11.i ], [ %.180.i296, %.lr.ph298 ]
  %i.df = icmp sgt i64 %.180.i.lcssa.ph, 19
  br i1 %i.df, label %.lr.ph304, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE.exit

.lr.ph304:                                        ; preds = %.critedge9.i, %.lr.ph304
  %.3186303 = phi i64 [ %i.dk, %.lr.ph304 ], [ 0, %.critedge9.i ]
  %.7198302 = phi ptr [ %i.dl, %.lr.ph304 ], [ %.0191, %.critedge9.i ] ; 2 uses
  %i.dg = mul nuw i64 %.3186303, 10
  %i.dh = load i8, ptr %.7198302, align 1, !tbaa !37
  %i.di = sext i8 %i.dh to i64
  %i.dj = add i64 %i.dg, -48
  %i.dk = add i64 %i.dj, %i.di                    ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.7198302, i64 1 ; 3 uses
  %i.dm = icmp ult i64 %i.dk, 1000000000000000000
  %i.dn = icmp ne ptr %i.dl, %.1192.lcssa.ph
  %i.do = select i1 %i.dm, i1 %i.dn, i1 false
  br i1 %i.do, label %.lr.ph304, label %._crit_edge305, !llvm.loop !5

._crit_edge305:                                   ; preds = %.lr.ph304
  %i.dp = icmp ugt i64 %i.dk, 999999999999999999
  br i1 %i.dp, label %bb.z, label %._crit_edge305.thread

._crit_edge305.thread:                            ; preds = %._crit_edge305
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.17.0220, i64 %.sroa.20.0221
  %.not371.a = icmp samesign eq i64 %.sroa.20.0221, 0
  br i1 %.not371.a, label %._crit_edge312, label %.lr.ph311

.lr.ph311:                                        ; preds = %._crit_edge305.thread, %.lr.ph311
  %.4187309 = phi i64 [ %i.dv, %.lr.ph311 ], [ %i.dk, %._crit_edge305.thread ]
  %.8199308 = phi ptr [ %i.dw, %.lr.ph311 ], [ %.sroa.17.0220, %._crit_edge305.thread ] ; 2 uses
  %i.dr = mul nuw i64 %.4187309, 10
  %i.ds = load i8, ptr %.8199308, align 1, !tbaa !37
  %i.dt = sext i8 %i.ds to i64
  %i.du = add i64 %i.dr, -48
  %i.dv = add i64 %i.du, %i.dt                    ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.8199308, i64 1 ; 3 uses
  %i.dx = icmp ult i64 %i.dv, 1000000000000000000
  %i.dy = icmp ne ptr %i.dw, %i.dq
  %i.dz = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %i.dz, label %.lr.ph311, label %._crit_edge312, !llvm.loop !6

._crit_edge312:                                   ; preds = %.lr.ph311, %._crit_edge305.thread
  %.8199.lcssa = phi ptr [ %.sroa.17.0220, %._crit_edge305.thread ], [ %i.dw, %.lr.ph311 ]
  %.4187.lcssa = phi i64 [ %i.dk, %._crit_edge305.thread ], [ %i.dv, %.lr.ph311 ]
  %i.ea = ptrtoint ptr %.sroa.17.0220 to i64
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge305, %._crit_edge312
  %.8199.lcssa.sink = phi ptr [ %.8199.lcssa, %._crit_edge312 ], [ %i.dl, %._crit_edge305 ]
  %.sink = phi i64 [ %i.ea, %._crit_edge312 ], [ %i.ae, %._crit_edge305 ]
  %.5188 = phi i64 [ %.4187.lcssa, %._crit_edge312 ], [ %i.dk, %._crit_edge305 ]
  %i.eb = ptrtoint ptr %.8199.lcssa.sink to i64
  %i.ec = sub i64 %.sink, %i.eb
  %.477.i = add nsw i64 %i.ec, %.5.i
  br label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EE.exit

bb.aa:                                            ; preds = %bb.c
  br i1 %i.n, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ed = and i64 %3, 128
  %.not.i37 = icmp ne i64 %i.ed, 0
  %i.ee = icmp eq i8 %i.m, 43
  %or.cond241 = and i1 %.not.i37, %i.ee
  br i1 %or.cond241, label %bb.ac, label %.lr.ph319.preheader

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ef = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 3 uses
  %i.eg = icmp eq ptr %i.ef, %1
  br i1 %i.eg, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = load i8, ptr %i.ef, align 1, !tbaa !37, !noalias !127 ; 2 uses
  %i.ei = add i8 %i.eh, -48
  %i.ej = icmp ult i8 %i.ei, 10
  %.not96.i = icmp eq i8 %i.eh, %.sroa.2.8.extract.trunc.i36
  %or.cond242 = select i1 %i.ej, i1 true, i1 %.not96.i
  br i1 %or.cond242, label %.lr.ph319.preheader, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66

.lr.ph319.preheader:                              ; preds = %bb.ab, %bb.ad
  %.0181 = phi ptr [ %i.ef, %bb.ad ], [ %.1, %bb.ab ] ; 11 uses
  %.0181391 = ptrtoaddr ptr %.0181 to i64
  %i.ek = sub i64 %i.a, %.0181391
  %scevgep392 = getelementptr i8, ptr %.0181, i64 %i.ek
  br label %.lr.ph319

.critedge.i38.thread:                             ; preds = %bb.ae
  %i.el = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.em = ptrtoint ptr %.0181 to i64
  %i.en = sub i64 %i.el, %i.em                    ; 2 uses
  br label %.critedge112.i

.lr.ph319:                                        ; preds = %.lr.ph319.preheader, %bb.ae
  %.1182317 = phi ptr [ %i.ev, %bb.ae ], [ %.0181, %.lr.ph319.preheader ] ; 5 uses
  %.0203316 = phi i64 [ %i.eu, %bb.ae ], [ 0, %.lr.ph319.preheader ] ; 4 uses
  %i.eo = load i8, ptr %.1182317, align 1, !tbaa !37, !noalias !127 ; 3 uses
  %i.ep = add i8 %i.eo, -48
  %i.eq = icmp ult i8 %i.ep, 10
  br i1 %i.eq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph319
  %i.er = mul i64 %.0203316, 10
  %i.es = zext nneg i8 %i.eo to i64
  %i.et = add i64 %i.er, -48
  %i.eu = add i64 %i.et, %i.es                    ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.1182317, i64 1 ; 2 uses
  %.not97.i = icmp eq ptr %i.ev, %1
  br i1 %.not97.i, label %.critedge.i38.thread, label %.lr.ph319, !llvm.loop !7

bb.af:                                            ; preds = %.lr.ph319
  %i.ew = ptrtoint ptr %.1182317 to i64           ; 3 uses
  %i.ex = ptrtoint ptr %.0181 to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 4 uses
  %i.ez = icmp eq i8 %i.eo, %.sroa.2.8.extract.trunc.i36
  br i1 %i.ez, label %bb.ag, label %.critedge112.i

bb.ag:                                            ; preds = %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %.1182317, i64 1 ; 4 uses
  %i.fb = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.fc = ptrtoint ptr %i.fa to i64               ; 3 uses
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = icmp sgt i64 %i.fd, 7
  br i1 %i.fe, label %.lr.ph325, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit

.lr.ph325:                                        ; preds = %bb.ag, %.noexc
  %.11323 = phi ptr [ %i.fv, %.noexc ], [ %i.fa, %bb.ag ] ; 3 uses
  %.7210322 = phi i64 [ %i.fu, %.noexc ], [ %.0203316, %bb.ag ] ; 2 uses
  %.0.copyload.i75 = load i64, ptr %.11323, align 1, !noalias !127 ; 2 uses
  %i.ff = add i64 %.0.copyload.i75, 5063812098665367110
  %i.fg = add i64 %.0.copyload.i75, -3472328296227680304 ; 3 uses
  %i.fh = or i64 %i.ff, %i.fg
  %i.fi = and i64 %i.fh, -9187201950435737472
  %.not.i72 = icmp eq i64 %i.fi, 0
  br i1 %.not.i72, label %.noexc, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit

.noexc:                                           ; preds = %.lr.ph325
  %i.fj = mul i64 %.7210322, 100000000
  %i.fk = mul i64 %i.fg, 10
  %i.fl = lshr i64 %i.fg, 8
  %i.fm = add i64 %i.fk, %i.fl                    ; 2 uses
  %i.fn = and i64 %i.fm, 1095216660735
  %i.fo = mul i64 %i.fn, 4294967296000100
  %i.fp = lshr i64 %i.fm, 16
  %i.fq = and i64 %i.fp, 1095216660735
  %i.fr = mul i64 %i.fq, 42949672960001
  %i.fs = add i64 %i.fr, %i.fo
  %i.ft = lshr i64 %i.fs, 32
  %i.fu = add i64 %i.ft, %i.fj                    ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.11323, i64 8 ; 3 uses
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = sub i64 %i.fb, %i.fw
  %i.fy = icmp sgt i64 %i.fx, 7
  br i1 %i.fy, label %.lr.ph325, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit, !llvm.loop !1

_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit: ; preds = %.lr.ph325, %.noexc, %bb.ag
  %.7210.lcssa = phi i64 [ %.0203316, %bb.ag ], [ %i.fu, %.noexc ], [ %.7210322, %.lr.ph325 ] ; 2 uses
  %.11.lcssa = phi ptr [ %i.fa, %bb.ag ], [ %i.fv, %.noexc ], [ %.11323, %.lr.ph325 ] ; 5 uses
  %.not99.i330 = icmp eq ptr %.11.lcssa, %1
  br i1 %.not99.i330, label %.critedge2.i, label %.lr.ph333.preheader

.lr.ph333.preheader:                              ; preds = %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit
  %.11.lcssa393 = ptrtoaddr ptr %.11.lcssa to i64
  %i.fz = sub i64 %i.a, %.11.lcssa393
  %scevgep394 = getelementptr i8, ptr %.11.lcssa, i64 %i.fz
  br label %.lr.ph333

.lr.ph333:                                        ; preds = %.lr.ph333.preheader, %bb.ah
  %.10332 = phi ptr [ %i.gd, %bb.ah ], [ %.11.lcssa, %.lr.ph333.preheader ] ; 3 uses
  %.6209331 = phi i64 [ %i.gg, %bb.ah ], [ %.7210.lcssa, %.lr.ph333.preheader ] ; 2 uses
  %i.ga = load i8, ptr %.10332, align 1, !tbaa !37, !noalias !127
  %i.gb = add i8 %i.ga, -48                       ; 2 uses
  %i.gc = icmp ult i8 %i.gb, 10
  br i1 %i.gc, label %bb.ah, label %.critedge2.i

bb.ah:                                            ; preds = %.lr.ph333
  %i.gd = getelementptr inbounds nuw i8, ptr %.10332, i64 1 ; 2 uses
  %i.ge = mul i64 %.6209331, 10
  %i.gf = zext nneg i8 %i.gb to i64
  %i.gg = add i64 %i.ge, %i.gf                    ; 2 uses
  %.not99.i = icmp eq ptr %i.gd, %1
  br i1 %.not99.i, label %.critedge2.i, label %.lr.ph333, !llvm.loop !8

.critedge2.i:                                     ; preds = %bb.ah, %.lr.ph333, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit
  %.6209.lcssa = phi i64 [ %.7210.lcssa, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit ], [ %.6209331, %.lr.ph333 ], [ %i.gg, %bb.ah ]
  %.10.lcssa = phi ptr [ %.11.lcssa, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit ], [ %.10332, %.lr.ph333 ], [ %scevgep394, %bb.ah ] ; 2 uses
  %i.gh = ptrtoint ptr %.10.lcssa to i64          ; 2 uses
  %i.gi = sub i64 %i.fc, %i.gh                    ; 2 uses
  %i.gj = sub i64 %i.gh, %i.fc
  %i.gk = sub nsw i64 %i.ey, %i.gi
  br label %.critedge112.i

.critedge112.i:                                   ; preds = %.critedge.i38.thread, %.critedge2.i, %bb.af
  %i.gl = phi i64 [ %i.en, %.critedge.i38.thread ], [ %i.ey, %.critedge2.i ], [ %i.ey, %bb.af ] ; 5 uses
  %i.gm = phi i64 [ %i.el, %.critedge.i38.thread ], [ %i.ew, %.critedge2.i ], [ %i.ew, %bb.af ]
  %.sroa.17140.0 = phi ptr [ null, %.critedge.i38.thread ], [ %i.fa, %.critedge2.i ], [ null, %bb.af ] ; 7 uses
  %.sroa.20142.0 = phi i64 [ 0, %.critedge.i38.thread ], [ %i.gj, %.critedge2.i ], [ 0, %bb.af ] ; 5 uses
  %.1204 = phi i64 [ %i.eu, %.critedge.i38.thread ], [ %.6209.lcssa, %.critedge2.i ], [ %.0203316, %bb.af ] ; 2 uses
  %.2 = phi ptr [ %scevgep392, %.critedge.i38.thread ], [ %.10.lcssa, %.critedge2.i ], [ %.1182317, %bb.af ] ; 7 uses
  %.072.i39 = phi i64 [ %i.en, %.critedge.i38.thread ], [ %i.gk, %.critedge2.i ], [ %i.ey, %bb.af ] ; 3 uses
  %.066.i = phi i64 [ 0, %.critedge.i38.thread ], [ %i.gi, %.critedge2.i ], [ 0, %bb.af ] ; 3 uses
  %i.gn = icmp eq i64 %.072.i39, 0
  br i1 %i.gn, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit66, label %bb.ai

bb.ai:                                            ; preds = %.critedge112.i
  %i.go = and i64 %3, 1
  %.not100.i = icmp eq i64 %i.go, 0
  %.not101.i = icmp eq ptr %.2, %1                ; 2 uses
  %or.cond243 = or i1 %.not100.i, %.not101.i
  br i1 %or.cond243, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gp = load i8, ptr %.2, align 1, !tbaa !37, !noalias !127 ; 3 uses
  switch i8 %i.gp, label %bb.ak [
    i8 101, label %bb.am
    i8 69, label %bb.am
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gq = and i64 %3, 64
  %.not102.i = icmp eq i64 %i.gq, 0
  %or.cond244 = or i1 %.not102.i, %.not101.i
  br i1 %or.cond244, label %bb.av, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gr = load i8, ptr %.2, align 1, !tbaa !37, !noalias !127 ; 5 uses
  switch i8 %i.gr, label %bb.av [
    i8 43, label %bb.am
    i8 45, label %bb.am
    i8 100, label %bb.am
    i8 68, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al, %bb.aj, %bb.aj
  %i.gs = phi i8 [ %i.gr, %bb.al ], [ %i.gr, %bb.al ], [ %i.gr, %bb.al ], [ %i.gr, %bb.al ], [ %i.gp, %bb.aj ], [ %i.gp, %bb.aj ]
  switch i8 %i.gs, label %bb.ao [
    i8 101, label %bb.an
    i8 69, label %bb.an
    i8 100, label %bb.an
    i8 68, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am, %bb.am, %bb.am
  %i.gt = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br label %bb.ao
end_hunk_1
