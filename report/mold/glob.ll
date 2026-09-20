Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/glob?download=true
inline.NumInlined: 1084
inline.NumDeleted: 505
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4mold4Glob4findESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.z = xor i64 %i.o, -1
  %i.aa = add nsw i64 %.011.i.i, %i.z
  %.sroa.08.1.i.i = select i1 %i.x, ptr %i.y, ptr %.sroa.08.010.i.i ; 2 uses
  %.1.i.i = select i1 %i.x, i64 %i.aa, i64 %i.o   ; 2 uses
  %i.ab = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ab, label %bb.c, label %_ZNKSt6ranges16__lower_bound_fnclITkNS_13forward_rangeERSt6vectorIN4mold4Glob14LiteralPatternESaIS5_EESt17basic_string_viewIcSt11char_traitsIcEEMS5_NSt7__cxx1112basic_stringIcSB_SaIcEEETkSt26indirect_strict_weak_orderIPKT0_NSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEENS_4lessEEENSt13__conditionalIX14borrowed_rangeISO_EEE4typeISQ_NS_8danglingEEEOSO_RSK_T2_SR_.exit, !llvm.loop !114

_ZNKSt6ranges16__lower_bound_fnclITkNS_13forward_rangeERSt6vectorIN4mold4Glob14LiteralPatternESaIS5_EESt17basic_string_viewIcSt11char_traitsIcEEMS5_NSt7__cxx1112basic_stringIcSB_SaIcEEETkSt26indirect_strict_weak_orderIPKT0_NSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEENS_4lessEEENSt13__conditionalIX14borrowed_rangeISO_EEE4typeISQ_NS_8danglingEEEOSO_RSK_T2_SR_.exit: ; preds = %_ZSt8__invokeIRNSt6ranges4lessEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS6_EEENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit.i.i, %"_ZSt9call_onceIZN4mold4Glob4findESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JEEvRSt9once_flagOT_DpOT0_.exit"
  %.sroa.08.0.lcssa.i.i = phi ptr [ %i.g, %"_ZSt9call_onceIZN4mold4Glob4findESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JEEvRSt9once_flagOT_DpOT0_.exit" ], [ %.sroa.08.1.i.i, %_ZSt8__invokeIRNSt6ranges4lessEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS6_EEENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit.i.i ] ; 4 uses
  %i.ac = icmp eq ptr %.sroa.08.0.lcssa.i.i, %i.i
  br i1 %i.ac, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNKSt6ranges16__lower_bound_fnclITkNS_13forward_rangeERSt6vectorIN4mold4Glob14LiteralPatternESaIS5_EESt17basic_string_viewIcSt11char_traitsIcEEMS5_NSt7__cxx1112basic_stringIcSB_SaIcEEETkSt26indirect_strict_weak_orderIPKT0_NSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEENS_4lessEEENSt13__conditionalIX14borrowed_rangeISO_EEE4typeISQ_NS_8danglingEEEOSO_RSK_T2_SR_.exit
  %i.ad = load ptr, ptr %.sroa.08.0.lcssa.i.i, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !26
  %i.ag = icmp eq i64 %1, %i.af
  br i1 %i.ag, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp eq i64 %1, 0
  br i1 %i.ah, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.e
  %bcmp.i = call i32 @bcmp(ptr %2, ptr %i.ad, i64 %1)
  %i.ai = icmp eq i32 %bcmp.i, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %.critedge

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !31
  %.sroa.speculated63 = call i64 @llvm.smax.i64(i64 %i.e, i64 %i.ak)
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.d, %_ZNKSt6ranges16__lower_bound_fnclITkNS_13forward_rangeERSt6vectorIN4mold4Glob14LiteralPatternESaIS5_EESt17basic_string_viewIcSt11char_traitsIcEEMS5_NSt7__cxx1112basic_stringIcSB_SaIcEEETkSt26indirect_strict_weak_orderIPKT0_NSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEENS_4lessEEENSt13__conditionalIX14borrowed_rangeISO_EEE4typeISQ_NS_8danglingEEEOSO_RSK_T2_SR_.exit, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %.0 = phi i64 [ %i.e, %_ZNKSt6ranges16__lower_bound_fnclITkNS_13forward_rangeERSt6vectorIN4mold4Glob14LiteralPatternESaIS5_EESt17basic_string_viewIcSt11char_traitsIcEEMS5_NSt7__cxx1112basic_stringIcSB_SaIcEEETkSt26indirect_strict_weak_orderIPKT0_NSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEENS_4lessEEENSt13__conditionalIX14borrowed_rangeISO_EEE4typeISQ_NS_8danglingEEEOSO_RSK_T2_SR_.exit ], [ %.sroa.speculated63, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ], [ %i.e, %bb.d ], [ %i.e, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !87 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !87 ; 2 uses
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit, %.critedge
  %.1.lcssa = phi i64 [ %.0, %.critedge ], [ %.2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !87 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !87 ; 2 uses
  %i.au = icmp eq ptr %i.ar, %i.at
  br i1 %i.au, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %1
  br label %bb.h

.lr.ph:                                           ; preds = %.critedge, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit
  %.183 = phi i64 [ %.2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit ], [ %.0, %.critedge ] ; 3 uses
  %.sroa.050.082 = phi ptr [ %i.be, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit ], [ %i.am, %.critedge ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.050.082, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !78 ; 3 uses
  %i.ay = icmp slt i64 %.183, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit

bb.f:                                             ; preds = %.lr.ph
  %i.az = load ptr, ptr %.sroa.050.082, align 8, !tbaa !33
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.050.082, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %1, i64 %i.bb) ; 2 uses
  %.not.i30 = icmp ugt i64 %i.bb, %1
  br i1 %.not.i30, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.bc, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.g
  %bcmp.i.i = call i32 @bcmp(ptr %2, ptr %i.az, i64 %.sroa.speculated.i.i)
  %i.bd = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bd, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit.thread: ; preds = %bb.f, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit: ; preds = %bb.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit.thread, %.lr.ph
  %.2 = phi i64 [ %.183, %.lr.ph ], [ %.183, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit.thread ], [ %i.ax, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %i.ax, %bb.g ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.050.082, i64 40 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ao
  br i1 %i.bf, label %._crit_edge, label %.lr.ph

._crit_edge88:                                    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread81, %._crit_edge
  %.3.lcssa = phi i64 [ %.1.lcssa, %._crit_edge ], [ %.4, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread81 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.bk = icmp eq ptr %i.bh, %i.bj
  br i1 %i.bk, label %bb.l, label %bb.k

bb.h:                                             ; preds = %.lr.ph87, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread81
  %.385 = phi i64 [ %.1.lcssa, %.lr.ph87 ], [ %.4, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread81 ] ; 4 uses
  %.sroa.046.084 = phi ptr [ %i.ar, %.lr.ph87 ], [ %i.bv, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread81 ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.046.084, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !78 ; 2 uses
  %i.bn = icmp slt i64 %.385, %i.bm
  br i1 %i.bn, label %bb.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread81

bb.i:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %.sroa.046.084, align 8, !tbaa !33
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.046.084, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !26 ; 4 uses
  %.not.i33 = icmp ult i64 %1, %i.bq
  br i1 %.not.i33, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread81, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit: ; preds = %bb.j
  %i.bs = sub i64 0, %i.bq
  %i.bt = getelementptr inbounds i8, ptr %i.av, i64 %i.bs
  %bcmp.i34 = call i32 @bcmp(ptr nonnull %i.bt, ptr %i.bo, i64 %i.bq)
  %i.bu = icmp eq i32 %bcmp.i34, 0
  br i1 %i.bu, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread81

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread: ; preds = %bb.j, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread81

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread81: ; preds = %bb.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit, %bb.h
  %.4 = phi i64 [ %i.bm, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread ], [ %.385, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit ], [ %.385, %bb.h ], [ %.385, %bb.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.046.084, i64 40 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.at
  br i1 %i.bw, label %._crit_edge88, label %bb.h

bb.k:                                             ; preds = %._crit_edge88
  %i.bx = call noundef i64 @_ZNK4mold4Glob3Nfa5matchESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 %1, ptr %2)
  %.sroa.speculated42 = call i64 @llvm.smax.i64(i64 %.3.lcssa, i64 %i.bx)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge88
  %.5 = phi i64 [ %.3.lcssa, %._crit_edge88 ], [ %.sroa.speculated42, %bb.k ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !115 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !115 ; 2 uses
  %i.cc = icmp eq ptr %i.bz, %i.cb
  br i1 %i.cc, label %._crit_edge94, label %.lr.ph93

._crit_edge94:                                    ; preds = %bb.o, %bb.l
  %.6.lcssa = phi i64 [ %.5, %bb.l ], [ %.7, %bb.o ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ce = call noundef i64 @_ZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(1048) %i.cd, i64 %1, ptr %2) #4
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %.6.lcssa, i64 %i.ce)
  ret i64 %.sroa.speculated

.lr.ph93:                                         ; preds = %bb.l, %bb.o
  %.691 = phi i64 [ %.7, %bb.o ], [ %.5, %bb.l ]  ; 3 uses
  %.sroa.038.090 = phi ptr [ %i.ck, %bb.o ], [ %i.bz, %bb.l ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.038.090, i64 24 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !38
  %i.ch = icmp slt i64 %.691, %i.cg
  br i1 %i.ch, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph93
  %i.ci = call noundef zeroext i1 @_ZNK4mold4Glob7Pattern5matchESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.038.090, i64 %1, ptr %2)
  br i1 %i.ci, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cj = load i64, ptr %i.cf, align 8, !tbaa !38
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph93
  %.7 = phi i64 [ %i.cj, %bb.n ], [ %.691, %bb.m ], [ %.691, %.lr.ph93 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.038.090, i64 32 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.cb
  br i1 %i.cl, label %._crit_edge94, label %.lr.ph93
}

declare noundef i64 @_ZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(1048), i64, ptr) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE17_M_realloc_insertIJNS2_4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !39     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNKSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 128102389400760775)
  %i.k = select i1 %i.i, i64 128102389400760775, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 72
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #19 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 5 uses
  %i.q = load i32, ptr %2, align 4, !tbaa !12
  store i32 %i.q, ptr %i.p, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %i.t, align 8, !tbaa !26
  store i8 0, ptr %i.s, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aIN4mold4Glob7Pattern5TokenES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.an, %_ZSt19__relocate_object_aIN4mold4Glob7Pattern5TokenES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNKSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.am, %_ZSt19__relocate_object_aIN4mold4Glob7Pattern5TokenES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.v = load i32, ptr %.0911.i.i.i, align 8, !tbaa !24, !alias.scope !124, !noalias !123
  store i32 %i.v, ptr %.012.i.i.i, align 8, !tbaa !24, !alias.scope !123, !noalias !124
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !25, !alias.scope !123, !noalias !124
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !33, !alias.scope !124, !noalias !123 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !26, !alias.scope !124, !noalias !123 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false), !alias.scope !125
  br label %_ZSt19__relocate_object_aIN4mold4Glob7Pattern5TokenES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.z, ptr %i.w, align 8, !tbaa !33, !alias.scope !123, !noalias !124
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !10, !alias.scope !124, !noalias !123
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !10, !alias.scope !123, !noalias !124
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !26, !alias.scope !124, !noalias !123
  br label %_ZSt19__relocate_object_aIN4mold4Glob7Pattern5TokenES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4mold4Glob7Pattern5TokenES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.c
  %i.ah = phi i64 [ %i.ad, %bb.c ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !26, !alias.scope !123, !noalias !124
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !33, !alias.scope !124, !noalias !123
  store i64 0, ptr %i.ai, align 8, !tbaa !26, !alias.scope !124, !noalias !123
  store i8 0, ptr %i.aa, align 8, !tbaa !10, !alias.scope !124, !noalias !123
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false), !alias.scope !125
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !119

_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt19__relocate_object_aIN4mold4Glob7Pattern5TokenES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNKSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.an, %_ZSt19__relocate_object_aIN4mold4Glob7Pattern5TokenES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %_ZSt19__relocate_object_aIN4mold4Glob7Pattern5TokenES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aIN4mold4Glob7Pattern5TokenES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ao, %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 6 uses
  %.0911.i.i.i19 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aIN4mold4Glob7Pattern5TokenES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.ap = load i32, ptr %.0911.i.i.i19, align 8, !tbaa !24, !alias.scope !127, !noalias !126
  store i32 %i.ap, ptr %.012.i.i.i18, align 8, !tbaa !24, !alias.scope !126, !noalias !127
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 3 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !25, !alias.scope !126, !noalias !127
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !33, !alias.scope !127, !noalias !126 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.d:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !26, !alias.scope !127, !noalias !126 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !128
  br label %_ZSt19__relocate_object_aIN4mold4Glob7Pattern5TokenES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !33, !alias.scope !126, !noalias !127
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !10, !alias.scope !127, !noalias !126
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !10, !alias.scope !126, !noalias !127
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !26, !alias.scope !127, !noalias !126
  br label %_ZSt19__relocate_object_aIN4mold4Glob7Pattern5TokenES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN4mold4Glob7Pattern5TokenES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.d
  %i.bb = phi i64 [ %i.ax, %bb.d ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !26, !alias.scope !126, !noalias !127
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !33, !alias.scope !127, !noalias !126
  store i64 0, ptr %i.bc, align 8, !tbaa !26, !alias.scope !127, !noalias !126
  store i8 0, ptr %i.au, align 8, !tbaa !10, !alias.scope !127, !noalias !126
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 32, i1 false), !alias.scope !128
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bg, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !119

_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26: ; preds = %_ZSt19__relocate_object_aIN4mold4Glob7Pattern5TokenES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ao, %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.bh, %_ZSt19__relocate_object_aIN4mold4Glob7Pattern5TokenES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN4mold4Glob7Pattern5TokenESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !16
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bl) #17
  br label %_ZNSt12_Vector_baseIN4mold4Glob7Pattern5TokenESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4mold4Glob7Pattern5TokenESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !39
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !15
  %i.bm = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIlSaIlEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPlS1_EEmRKl:bb.a
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit62

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.cm = icmp eq i64 %i.ck, 8
  br i1 %i.cm, label %bb.y, label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit62

bb.y:                                             ; preds = %bb.x
  %i.cn = load i64, ptr %1, align 8, !tbaa !31
  store i64 %i.cn, ptr %i.cj, align 8, !tbaa !31
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit62

_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit62: ; preds = %bb.w, %bb.x, %bb.y
  %i.co = getelementptr inbounds i8, ptr %i.cj, i64 %i.ck
  %.not.i63 = icmp eq ptr %i.bb, null
  br i1 %.not.i63, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit62
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !132
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.cr) #17
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit62, %bb.z
  store ptr %i.bp, ptr %0, align 8, !tbaa !46
  store ptr %i.co, ptr %i.c, align 8, !tbaa !45
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bk
  store ptr %i.cs, ptr %i.a, align 8, !tbaa !132
  br label %_ZSt4fillIPllEvT_S1_RKT0_.exit

_ZSt4fillIPllEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i52, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit50, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorImSaImEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.f = load ptr, ptr %0, align 8, !tbaa !43     ; 6 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775800
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #19 ; 4 uses
  %i.m = icmp samesign ugt i64 %i.c, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !88

bb.d:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.n = icmp eq i64 %i.c, 8
  br i1 %i.n, label %bb.f, label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %1, align 8, !tbaa !31
  store i64 %i.o, ptr %i.l, align 8, !tbaa !31
  br label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %0, align 8, !tbaa !43     ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #17
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit, %bb.g
  store ptr %i.l, ptr %0, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !42
  store ptr %i.v, ptr %i.d, align 8, !tbaa !48
  br label %_ZNSt6vectorImSaImEE15_M_erase_at_endEPm.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42   ; 5 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.h                       ; 5 uses
  %.not = icmp ult i64 %i.z, %i.c
  br i1 %.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp sgt i64 %i.c, 8
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !88

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %1, i64 %i.c, i1 false)
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !42
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = icmp eq i64 %i.c, 8
  br i1 %i.ab, label %bb.l, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_.exit

bb.l:                                             ; preds = %bb.k
  %i.ac = load i64, ptr %1, align 8, !tbaa !31
  store i64 %i.ac, ptr %i.f, align 8, !tbaa !31
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.ad = phi ptr [ %.pre, %bb.j ], [ %i.x, %bb.k ], [ %i.x, %bb.l ]
  %i.ae = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 2 uses
  %.not.i18 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i18, label %_ZNSt6vectorImSaImEE15_M_erase_at_endEPm.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_.exit
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !42
  br label %_ZNSt6vectorImSaImEE15_M_erase_at_endEPm.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.h
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.z ; 3 uses
  %i.af = ptrtoint ptr %.sink.i to i64
  %i.ag = icmp sgt i64 %i.z, 8
  br i1 %i.ag, label %bb.n, label %bb.o, !prof !88

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %1, i64 %i.z, i1 false)
  %.pre24 = load ptr, ptr %i.w, align 8, !tbaa !42
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_.exit19

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ah = icmp eq i64 %i.z, 8
  br i1 %i.ah, label %bb.p, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_.exit19

bb.p:                                             ; preds = %bb.o
  %i.ai = load i64, ptr %1, align 8, !tbaa !31
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !31
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_.exit19

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_.exit19: ; preds = %bb.n, %bb.o, %bb.p
  %i.aj = phi ptr [ %.pre24, %bb.n ], [ %i.x, %bb.o ], [ %i.x, %bb.p ] ; 3 uses
  %i.ak = sub i64 %i.a, %i.af                     ; 4 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.q, label %bb.r, !prof !88

bb.q:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_.exit19
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aj, ptr align 8 %.sink.i, i64 %i.ak, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmmET0_T_SA_S9_RSaIT1_E.exit

bb.r:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_.exit19
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.s, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmmET0_T_SA_S9_RSaIT1_E.exit

bb.s:                                             ; preds = %bb.r
  %i.an = load i64, ptr %.sink.i, align 8, !tbaa !31
  store i64 %i.an, ptr %i.aj, align 8, !tbaa !31
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmmET0_T_SA_S9_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmmET0_T_SA_S9_RSaIT1_E.exit: ; preds = %bb.q, %bb.r, %bb.s
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !42
  br label %_ZNSt6vectorImSaImEE15_M_erase_at_endEPm.exit

_ZNSt6vectorImSaImEE15_M_erase_at_endEPm.exit:    ; preds = %bb.m, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_.exit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmmET0_T_SA_S9_RSaIT1_E.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !141    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNKSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 230584300921369395)
  %i.k = select i1 %i.i, i64 230584300921369395, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 40
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #19 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !25
  %i.r = load ptr, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !26   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZSt12construct_atIN4mold4Glob14LiteralPatternEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !33
  %i.y = load i64, ptr %i.s, align 8, !tbaa !10
  store i64 %i.y, ptr %i.q, align 8, !tbaa !10
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZSt12construct_atIN4mold4Glob14LiteralPatternEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit

_ZSt12construct_atIN4mold4Glob14LiteralPatternEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.z = phi i64 [ %i.v, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !26
  store ptr %i.s, ptr %2, align 8, !tbaa !33
  store i64 0, ptr %i.aa, align 8, !tbaa !26
  store i8 0, ptr %i.s, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !78
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !78
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN4mold4Glob14LiteralPatternEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit, %_ZSt19__relocate_object_aIN4mold4Glob14LiteralPatternES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN4mold4Glob14LiteralPatternES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZSt12construct_atIN4mold4Glob14LiteralPatternEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN4mold4Glob14LiteralPatternES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN4mold4Glob14LiteralPatternEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !25, !alias.scope !142, !noalias !143
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !33, !alias.scope !143, !noalias !142 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !26, !alias.scope !143, !noalias !142 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !144
  br label %_ZSt19__relocate_object_aIN4mold4Glob14LiteralPatternES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !33, !alias.scope !142, !noalias !143
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !10, !alias.scope !143, !noalias !142
  store i64 %i.an, ptr %i.af, align 8, !tbaa !10, !alias.scope !142, !noalias !143
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !26, !alias.scope !143, !noalias !142
  br label %_ZSt19__relocate_object_aIN4mold4Glob14LiteralPatternES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4mold4Glob14LiteralPatternES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !26, !alias.scope !142, !noalias !143
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !33, !alias.scope !143, !noalias !142
  store i64 0, ptr %i.ap, align 8, !tbaa !26, !alias.scope !143, !noalias !142
  store i8 0, ptr %i.ah, align 8, !tbaa !10, !alias.scope !143, !noalias !142
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !78, !alias.scope !143, !noalias !142
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !78, !alias.scope !142, !noalias !143
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !137

_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN4mold4Glob14LiteralPatternES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN4mold4Glob14LiteralPatternEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZSt12construct_atIN4mold4Glob14LiteralPatternEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ], [ %i.av, %_ZSt19__relocate_object_aIN4mold4Glob14LiteralPatternES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN4mold4Glob14LiteralPatternES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bn, %_ZSt19__relocate_object_aIN4mold4Glob14LiteralPatternES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aw, %_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 6 uses
  %.0911.i.i.i19 = phi ptr [ %i.bm, %_ZSt19__relocate_object_aIN4mold4Glob14LiteralPatternES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ax, ptr %.012.i.i.i18, align 8, !tbaa !25, !alias.scope !145, !noalias !146
  %i.ay = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !33, !alias.scope !146, !noalias !145 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !26, !alias.scope !146, !noalias !145 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 16
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = add nuw nsw i64 %i.bc, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.be, i1 false), !alias.scope !147
  br label %_ZSt19__relocate_object_aIN4mold4Glob14LiteralPatternES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.ay, ptr %.012.i.i.i18, align 8, !tbaa !33, !alias.scope !145, !noalias !146
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !10, !alias.scope !146, !noalias !145
  store i64 %i.bf, ptr %i.ax, align 8, !tbaa !10, !alias.scope !145, !noalias !146
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !26, !alias.scope !146, !noalias !145
  br label %_ZSt19__relocate_object_aIN4mold4Glob14LiteralPatternES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN4mold4Glob14LiteralPatternES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bg = phi i64 [ %i.bc, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !26, !alias.scope !145, !noalias !146
  store ptr %i.az, ptr %.0911.i.i.i19, align 8, !tbaa !33, !alias.scope !146, !noalias !145
  store i64 0, ptr %i.bh, align 8, !tbaa !26, !alias.scope !146, !noalias !145
  store i8 0, ptr %i.az, align 8, !tbaa !10, !alias.scope !146, !noalias !145
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !78, !alias.scope !146, !noalias !145
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !78, !alias.scope !145, !noalias !146
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bm, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !137

_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26: ; preds = %_ZSt19__relocate_object_aIN4mold4Glob14LiteralPatternES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aw, %_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bn, %_ZSt19__relocate_object_aIN4mold4Glob14LiteralPatternES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN4mold4Glob14LiteralPatternESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !80
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.br) #17
  br label %_ZNSt12_Vector_baseIN4mold4Glob14LiteralPatternESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4mold4Glob14LiteralPatternESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !141
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !79
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIN4mold4Glob7PatternESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !89     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4mold4Glob7PatternESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNKSt6vectorIN4mold4Glob7PatternESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5
  %mul2 = ashr exact i64 %i.f, 4
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.k = select i1 %i.i, i64 288230376151711743, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = shl nuw nsw i64 %i.k, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #19 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 3 uses
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !27
  store <2 x ptr> %i.q, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  store ptr %i.t, ptr %i.r, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !38
  store i64 %i.w, ptr %i.u, align 8, !tbaa !38
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4mold4Glob7PatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4mold4Glob7PatternESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %i.o, %_ZNKSt6vectorIN4mold4Glob7PatternESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4mold4Glob7PatternESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !27, !alias.scope !156, !noalias !155
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !27, !alias.scope !155, !noalias !156
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16, !alias.scope !156, !noalias !155
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !16, !alias.scope !155, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !156, !noalias !155
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !38, !alias.scope !156, !noalias !155
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !38, !alias.scope !155, !noalias !156
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4mold4Glob7PatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !151

_ZNSt6vectorIN4mold4Glob7PatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4mold4Glob7PatternESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNKSt6vectorIN4mold4Glob7PatternESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.af, %.lr.ph.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN4mold4Glob7PatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN4mold4Glob7PatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ap, %.lr.ph.i.i.i17 ], [ %i.ag, %_ZNSt6vectorIN4mold4Glob7PatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i19 = phi ptr [ %i.ao, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN4mold4Glob7PatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.ah = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !27, !alias.scope !158, !noalias !157
  store <2 x ptr> %i.ah, ptr %.012.i.i.i18, align 8, !tbaa !27, !alias.scope !157, !noalias !158
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16, !alias.scope !158, !noalias !157
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !16, !alias.scope !157, !noalias !158
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !158, !noalias !157
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !38, !alias.scope !158, !noalias !157
  store i64 %i.an, ptr %i.al, align 8, !tbaa !38, !alias.scope !157, !noalias !158
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN4mold4Glob7PatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !151

_ZNSt6vectorIN4mold4Glob7PatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN4mold4Glob7PatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ag, %_ZNSt6vectorIN4mold4Glob7PatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ap, %.lr.ph.i.i.i17 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN4mold4Glob7PatternESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4mold4Glob7PatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !82
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #17
  br label %_ZNSt12_Vector_baseIN4mold4Glob7PatternESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4mold4Glob7PatternESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4mold4Glob7PatternESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !89
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.k
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !82
  ret void
}

declare void @__once_proxy() #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind
define internal void @"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN4mold4Glob4findESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv"() #12 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !162
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !85 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 16 ; 4 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !87 ; 6 uses
  %i.d = getelementptr i8, ptr %.val.val.i, i64 24 ; 2 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !87 ; 6 uses
  %i.e = icmp eq ptr %.val.i.i.i.i.i, %.val2.i.i.i.i.i
  br i1 %i.e, label %"_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt6vectorIN4mold4Glob14LiteralPatternESaIS5_EENS_4lessEZZNS4_4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEvEUlRKS5_E_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISI_EEE4typeISK_NS_8danglingEEEOSI_SL_SM_.exit.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %.val2.i.i.i.i.i to i64
  %i.g = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = sdiv exact i64 %i.h, 40
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = xor i64 %i.k, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZZNS3_4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEvEUlRKS4_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_T1_"(ptr %.val.i.i.i.i.i, ptr %.val2.i.i.i.i.i, i64 noundef %i.l)
  %i.m = icmp sgt i64 %i.h, 640
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 640 ; 3 uses
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZZNS3_4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEvEUlRKS4_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_"(ptr %.val.i.i.i.i.i, ptr nonnull %i.n)
  %i.o = icmp eq ptr %i.n, %.val2.i.i.i.i.i
  br i1 %i.o, label %"_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt6vectorIN4mold4Glob14LiteralPatternESaIS5_EENS_4lessEZZNS4_4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEvEUlRKS5_E_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISI_EEE4typeISK_NS_8danglingEEEOSI_SL_SM_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZZNS3_4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEvEUlRKS4_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SQ_"(ptr nonnull %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.q = icmp eq ptr %i.p, %.val2.i.i.i.i.i
  br i1 %i.q, label %"_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt6vectorIN4mold4Glob14LiteralPatternESaIS5_EENS_4lessEZZNS4_4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEvEUlRKS5_E_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISI_EEE4typeISK_NS_8danglingEEEOSI_SL_SM_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !159

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZZNS3_4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEvEUlRKS4_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SQ_"(ptr %.val.i.i.i.i.i, ptr %.val2.i.i.i.i.i)
  br label %"_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt6vectorIN4mold4Glob14LiteralPatternESaIS5_EENS_4lessEZZNS4_4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEvEUlRKS5_E_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISI_EEE4typeISK_NS_8danglingEEEOSI_SL_SM_.exit.i.i.i.i.i"

"_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt6vectorIN4mold4Glob14LiteralPatternESaIS5_EENS_4lessEZZNS4_4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEvEUlRKS5_E_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISI_EEE4typeISK_NS_8danglingEEEOSI_SL_SM_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.d, %bb.c, %bb.a
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.t = tail call { ptr, ptr } @_ZNKSt6ranges11__unique_fnclITkSt10permutableN9__gnu_cxx17__normal_iteratorIPN4mold4Glob14LiteralPatternESt6vectorIS6_SaIS6_EEEETkSt12sentinel_forIT_ESB_MS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETkSt29indirect_equivalence_relationINSt8__detail11__projectedISD_T1_E6__typeEENS_8equal_toEEENS_8subrangeISD_SD_Xqu18sized_sentinel_forISD_SD_ELNS_13subrange_kindE1ELST_0EEEESD_T0_T2_SO_(ptr noundef nonnull align 1 dereferenceable(1) @_ZNSt6ranges6uniqueE, ptr %i.r, ptr %i.s, i64 0) ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.t, 0
  %i.v = extractvalue { ptr, ptr } %i.t, 1
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !87   ; 3 uses
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = sub i64 %i.ab, %i.y
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 %i.ac
  %i.ae = tail call ptr @_ZNSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EES8_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.aa, ptr %i.ad) ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 88 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 96 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !81
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !89 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 5                 ; 2 uses
  %i.an = icmp ugt i64 %i.am, 63
  br i1 %i.an, label %bb.e, label %"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN4mold4Glob4findESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JEEvRS_OT_DpOT0_EUlvE_EERSB_ENKUlvE_clEv.exit"

bb.e:                                             ; preds = %"_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt6vectorIN4mold4Glob14LiteralPatternESaIS5_EENS_4lessEZZNS4_4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEvEUlRKS5_E_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISI_EEE4typeISK_NS_8danglingEEEOSI_SL_SM_.exit.i.i.i.i.i"
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 112
  tail call void @_ZN4mold4Glob3Nfa7compileESt4spanIKNS0_7PatternELm18446744073709551615EE(ptr noundef nonnull align 8 dereferenceable(120) %i.ao, ptr %i.ai, i64 %i.am)
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !89 ; 3 uses
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !81 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN4mold4Glob4findESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JEEvRS_OT_DpOT0_EUlvE_EERSB_ENKUlvE_clEv.exit", label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.e, %_ZSt8_DestroyIN4mold4Glob7PatternEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bh, %_ZSt8_DestroyIN4mold4Glob7PatternEEvPT_.exit.i.i.i.i.i.i.i.i.i ], [ %i.ap, %bb.e ] ; 5 uses
  %i.ar = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i, align 8, !tbaa !39 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.at
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4mold4Glob7Pattern5TokenEEvT_S5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIN4mold4Glob7Pattern5TokenEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ba, %_ZSt8_DestroyIN4mold4Glob7Pattern5TokenEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !33 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZSt8_DestroyIN4mold4Glob7Pattern5TokenEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !10
  %i.az = add i64 %i.ay, 1
  tail call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #17
  br label %_ZSt8_DestroyIN4mold4Glob7Pattern5TokenEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN4mold4Glob7Pattern5TokenEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.at
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4mold4Glob7Pattern5TokenEEvT_S5_.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4mold4Glob7Pattern5TokenEEvT_S5_.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN4mold4Glob7Pattern5TokenEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i, align 8, !tbaa !39
  br label %_ZSt8_DestroyIPN4mold4Glob7Pattern5TokenEEvT_S5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPN4mold4Glob7Pattern5TokenEEvT_S5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN4mold4Glob7Pattern5TokenEEvT_S5_.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
end_hunk_1
