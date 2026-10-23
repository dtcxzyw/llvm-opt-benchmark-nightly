Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/JsonTestUtil?download=true
inline.NumInlined: 641
inline.NumDeleted: 367
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt13runtime_errorC2EOS_
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9TypeErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

declare noundef ptr @_ZNKR5folly7dynamic11get_ptrImplERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_d(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, double noundef %2) local_unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::ConversionError", align 8 ; 5 uses
  %4 = alloca %class.anon.15, align 8             ; 3 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !16     ; 2 uses
  %.not = icmp eq i32 %i.b, %i.c
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -3
  %i.e = add i32 %i.c, -3
  %i.f = or i32 %i.e, %i.d
  %or.cond = icmp ult i32 %i.f, 2
  br i1 %or.cond, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.b, 4               ; 2 uses
  %i.g = select i1 %.not.i.i.i, ptr %0, ptr %1
  %i.h = select i1 %.not.i.i.i, ptr %1, ptr %0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.i = tail call noundef i64 @_ZNK5folly7dynamic6asImplIlEET_v(ptr noundef nonnull align 8 dereferenceable(40) %i.g) ; 3 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !38
  %i.j = sitofp i64 %i.i to double                ; 8 uses
  %i.k = fcmp olt double %i.j, f0x43E0000000000000
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fcmp ugt double %i.j, f0x43E0000000000000
  br i1 %i.l, label %bb.i, label %bb.e, !prof !39

bb.e:                                             ; preds = %bb.d
  %i.m = fadd double %i.j, f0xC3DFFFFFFFFFFFFF
  %i.n = fptosi double %i.m to i64
  %.not.i.i.i.i = icmp sgt i64 %i.n, 1023
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZN5folly6detail15checkConversionIldEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.o = fcmp ugt double %i.j, f0xC3E0000000000000
  br i1 %i.o, label %_ZN5folly6detail15checkConversionIldEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = fcmp olt double %i.j, f0xC3E0000000000000
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = fadd double %i.j, f0x43DFFFFFFFFFFFFF
  %i.r = fptosi double %i.q to i64
  %.not16.i.i.i.i = icmp slt i64 %i.r, -1024
  br i1 %.not16.i.i.i.i, label %bb.i, label %_ZN5folly6detail15checkConversionIldEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i

_ZN5folly6detail15checkConversionIldEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i: ; preds = %bb.h, %bb.f, %bb.e
  %i.s = fptosi double %i.j to i64
  %.not.i.i.i41 = icmp eq i64 %i.i, %i.s
  br i1 %.not.i.i.i41, label %_ZN5folly2toIdlEENSt9enable_ifIXsr6detail14IsArithToArithIT_T0_EE5valueES2_E4typeERKS3_.exit, label %bb.i, !prof !34

bb.i:                                             ; preds = %_ZN5folly6detail15checkConversionIldEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i, %bb.h, %bb.g, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.a, ptr %4, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZZN5folly2toIdlEENSt9enable_ifIXsr6detail14IsArithToArithIT_T0_EE5valueES2_E4typeERKS3_ENKUlNS_14ConversionCodeEE_clES8_(ptr dead_on_unwind nonnull writable sret(%"class.folly::ConversionError") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef zeroext 13)
  invoke void @_ZN5folly15throw_exceptionINS_15ConversionErrorEEEvOT_(ptr noundef nonnull align 8 dereferenceable(17) %3) #7
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.t

_ZN5folly2toIdlEENSt9enable_ifIXsr6detail14IsArithToArithIT_T0_EE5valueES2_E4typeERKS3_.exit: ; preds = %_ZN5folly6detail15checkConversionIldEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i
  %i.u = tail call noundef double @_ZNK5folly7dynamic6asImplIdEET_v(ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  %i.v = fsub double %i.j, %i.u
  %i.w = tail call noundef double @llvm.fabs.f64(double %i.v)
  %i.x = fcmp ole double %i.w, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.l:                                             ; preds = %bb.a
  switch i32 %i.b, label %bb.ad [
    i32 0, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
    i32 1, label %bb.m
    i32 2, label %_ZNK5folly7dynamic6asBoolEv.exit46
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit
  ]

bb.m:                                             ; preds = %bb.l
  %i.y = tail call noundef i64 @_ZNK5folly7dynamic4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.z = tail call noundef i64 @_ZNK5folly7dynamic4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %.not38 = icmp eq i64 %i.y, %i.z
  br i1 %.not38, label %bb.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.n:                                             ; preds = %bb.m
  %i.aa = load i32, ptr %0, align 8, !tbaa !16    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.aa, 1
  br i1 %.not.i.not.i.i.i, label %_ZNK5folly7dynamic5beginEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = load ptr, ptr @_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE, align 8, !tbaa !19
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.ab, i32 noundef %i.aa) #7
  unreachable

_ZNK5folly7dynamic5beginEv.exit:                  ; preds = %bb.n
  %i.ac = load i32, ptr %1, align 8, !tbaa !16    ; 2 uses
  %.not.i.not.i.i.i42 = icmp eq i32 %i.ac, 1
  br i1 %.not.i.not.i.i.i42, label %_ZNK5folly7dynamic3endEv.exit.lr.ph, label %bb.p

bb.p:                                             ; preds = %_ZNK5folly7dynamic5beginEv.exit
  %i.ad = load ptr, ptr @_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE, align 8, !tbaa !19
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.ad, i32 noundef %i.ac) #7
  unreachable

_ZNK5folly7dynamic3endEv.exit.lr.ph:              ; preds = %_ZNK5folly7dynamic5beginEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK5folly7dynamic3endEv.exit

._crit_edge:                                      ; preds = %bb.r
  %i.aj = load ptr, ptr @_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE, align 8, !tbaa !19
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.aj, i32 noundef %i.ap) #7
  unreachable

_ZNK5folly7dynamic3endEv.exit:                    ; preds = %_ZNK5folly7dynamic3endEv.exit.lr.ph, %bb.r
  %.sroa.058.096 = phi ptr [ %i.af, %_ZNK5folly7dynamic3endEv.exit.lr.ph ], [ %i.ao, %bb.r ] ; 2 uses
  %.sroa.060.095 = phi ptr [ %i.ah, %_ZNK5folly7dynamic3endEv.exit.lr.ph ], [ %i.an, %bb.r ] ; 3 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.al = icmp eq ptr %.sroa.060.095, %i.ak       ; 3 uses
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK5folly7dynamic3endEv.exit
  %i.am = tail call noundef zeroext i1 @_ZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_d(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.060.095, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.058.096, double noundef %2)
  br i1 %i.am, label %bb.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.060.095, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.058.096, i64 40
  %i.ap = load i32, ptr %0, align 8, !tbaa !16    ; 2 uses
  %.not.i.not.i.i.i44 = icmp eq i32 %i.ap, 1
  br i1 %.not.i.not.i.i.i44, label %_ZNK5folly7dynamic3endEv.exit, label %._crit_edge, !llvm.loop !71

_ZNK5folly7dynamic6asBoolEv.exit46:               ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !43, !range !44, !noundef !45
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !43, !range !44, !noundef !45
  %.not121 = icmp eq i8 %i.at, %i.ar
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.s:                                             ; preds = %bb.l
  %i.au = tail call noundef double @_ZNK5folly7dynamic6asImplIdEET_v(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.av = tail call noundef double @_ZNK5folly7dynamic6asImplIdEET_v(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.aw = fsub double %i.au, %i.av
  %i.ax = tail call noundef double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp ole double %i.ax, %2
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.t:                                             ; preds = %bb.l
  %i.az = tail call noundef i64 @_ZNK5folly7dynamic6asImplIlEET_v(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.ba = tail call noundef i64 @_ZNK5folly7dynamic6asImplIlEET_v(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.bb = icmp eq i64 %i.az, %i.ba
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.u:                                             ; preds = %bb.l
  %i.bc = tail call noundef i64 @_ZNK5folly7dynamic4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.bd = tail call noundef i64 @_ZNK5folly7dynamic4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %.not37 = icmp eq i64 %i.bc, %i.bd
  br i1 %.not37, label %bb.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.v:                                             ; preds = %bb.u
  %i.be = load i32, ptr %0, align 8, !tbaa !16    ; 2 uses
  %.not.i.not.i.i.i47 = icmp eq i32 %i.be, 5
  br i1 %.not.i.not.i.i.i47, label %_ZNK5folly7dynamic5itemsEv.exit49, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = load ptr, ptr @_ZN5folly7dynamic8TypeInfoINS0_10ObjectImplEE4nameE, align 8, !tbaa !19
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.bf, i32 noundef %i.be) #7
  unreachable

_ZNK5folly7dynamic5itemsEv.exit49:                ; preds = %bb.v
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !25 ; 3 uses
  %i.bi = and i64 %i.bh, -8                       ; 2 uses
  %i.bj = inttoptr i64 %i.bi to ptr               ; 4 uses
  %.not7788 = icmp eq i64 %i.bi, 0
  br i1 %.not7788, label %"_ZSt9__find_ifIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNS0_27compareDynamicWithToleranceERKS1_S7_dE3$_0EEET_SA_SA_T0_St18input_iterator_tag.exit", label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5folly7dynamic5itemsEv.exit49
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31 ; 2 uses
  %i.bl = tail call noundef ptr @_ZNKR5folly7dynamic11get_ptrImplERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.bk), !inline_history !72 ; 2 uses
  %.not.i.i143 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i143, label %"_ZSt9__find_ifIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNS0_27compareDynamicWithToleranceERKS1_S7_dE3$_0EEET_SA_SA_T0_St18input_iterator_tag.exit", label %"_ZZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_dENK3$_0clISt4pairIS1_S0_EEEDaRKT_.exit.i.lr.ph"

"_ZZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_dENK3$_0clISt4pairIS1_S0_EEEDaRKT_.exit.i.lr.ph": ; preds = %.lr.ph
  %i.bm = shl i64 %i.bh, 1
  %i.bn = and i64 %i.bm, 14
  %i.bo = lshr i64 %i.bh, 3
  %i.bp = and i64 %i.bo, 1
  %i.bq = or disjoint i64 %i.bn, %i.bp
  br label %"_ZZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_dENK3$_0clISt4pairIS1_S0_EEEDaRKT_.exit.i"

"_ZZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_dENK3$_0clISt4pairIS1_S0_EEEDaRKT_.exit.i": ; preds = %"_ZZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_dENK3$_0clISt4pairIS1_S0_EEEDaRKT_.exit.i.lr.ph", %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i
  %i.br = phi ptr [ %i.bl, %"_ZZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_dENK3$_0clISt4pairIS1_S0_EEEDaRKT_.exit.i.lr.ph" ], [ %i.cu, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i ]
  %i.bs = phi ptr [ %i.bk, %"_ZZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_dENK3$_0clISt4pairIS1_S0_EEEDaRKT_.exit.i.lr.ph" ], [ %i.ct, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i ]
  %.sroa.9.089145 = phi i64 [ %i.bq, %"_ZZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_dENK3$_0clISt4pairIS1_S0_EEEDaRKT_.exit.i.lr.ph" ], [ %.sroa.9.1, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i ] ; 3 uses
  %.sroa.071.090144 = phi ptr [ %i.bj, %"_ZZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_dENK3$_0clISt4pairIS1_S0_EEEDaRKT_.exit.i.lr.ph" ], [ %.sroa.071.1, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = tail call noundef zeroext i1 @_ZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_d(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %i.br, double noundef %2), !inline_history !72
  br i1 %i.bu, label %bb.x, label %"_ZSt9__find_ifIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNS0_27compareDynamicWithToleranceERKS1_S7_dE3$_0EEET_SA_SA_T0_St18input_iterator_tag.exit"

bb.x:                                             ; preds = %"_ZZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_dENK3$_0clISt4pairIS1_S0_EEEDaRKT_.exit.i"
  %i.bv = getelementptr inbounds i8, ptr %.sroa.071.090144, i64 -16
  %.neg.i.i.i.i.i.i = mul nsw i64 %.sroa.9.089145, -8
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %.neg.i.i.i.i.i.i ; 2 uses
  %.not19.i6.i.i.i.i = icmp eq i64 %.sroa.9.089145, 0
  br i1 %.not19.i6.i.i.i.i, label %.critedge.i.i.i.i.i.preheader, label %thread-pre-split.i.i.i.i

.critedge.i.i.i.i.i.preheader:                    ; preds = %bb.y, %bb.x
  br label %.critedge.i.i.i.i.i

bb.y:                                             ; preds = %thread-pre-split.i.i.i.i
  %.not19.i.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not19.i.i.i.i.i, label %.critedge.i.i.i.i.i.preheader, label %thread-pre-split.i.i.i.i

thread-pre-split.i.i.i.i:                         ; preds = %bb.x, %bb.y
  %i.bx = phi i64 [ %i.bz, %bb.y ], [ %.sroa.9.089145, %bb.x ]
  %i.by = phi ptr [ %i.ca, %bb.y ], [ %.sroa.071.090144, %bb.x ]
  %i.bz = add nsw i64 %i.bx, -1                   ; 4 uses
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bz
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !32
  %.not.i.i.i.i53 = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i53, label %bb.y, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i, !prof !33, !llvm.loop !0

.critedge.i.i.i.i.i:                              ; preds = %.critedge.i.i.i.i.i.preheader, %bb.z
  %.017.i.i.i.i.i = phi ptr [ %i.cg, %bb.z ], [ %i.bw, %.critedge.i.i.i.i.i.preheader ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i, i64 14
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !32
  %i.cf = and i8 %i.ce, 15
  %.not2.i.i.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not2.i.i.i.i, label %bb.z, label %"_ZSt9__find_ifIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNS0_27compareDynamicWithToleranceERKS1_S7_dE3$_0EEET_SA_SA_T0_St18input_iterator_tag.exit", !prof !34

bb.z:                                             ; preds = %.critedge.i.i.i.i.i
  %i.cg = getelementptr inbounds i8, ptr %.017.i.i.i.i.i, i64 -128 ; 3 uses
  %i.ch = load <16 x i8>, ptr %i.cg, align 16, !tbaa !32
  %i.ci = icmp slt <16 x i8> %i.ch, zeroinitializer
  %i.cj = bitcast <16 x i1> %i.ci to i16
  %i.ck = and i16 %i.cj, 16383                    ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.017.i.i.i.i.i, i64 -256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cl, i32 0, i32 3, i32 1)
  %.not3.i.i.i.i = icmp eq i16 %i.ck, 0
  br i1 %.not3.i.i.i.i, label %.critedge.i.i.i.i.i, label %bb.aa, !prof !33, !llvm.loop !1

bb.aa:                                            ; preds = %bb.z
  %i.cm = zext nneg i16 %i.ck to i32
  %i.cn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cm, i1 true)
  %i.co = xor i32 %i.cn, 31
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cq = icmp ne ptr %i.cg, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds i8, ptr %.017.i.i.i.i.i, i64 -112
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cp
  br label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i

_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i: ; preds = %thread-pre-split.i.i.i.i, %bb.aa
  %.sroa.9.1 = phi i64 [ %i.cp, %bb.aa ], [ %i.bz, %thread-pre-split.i.i.i.i ]
  %.sroa.071.1 = phi ptr [ %i.cs, %bb.aa ], [ %i.ca, %thread-pre-split.i.i.i.i ] ; 3 uses
  %i.ct = load ptr, ptr %.sroa.071.1, align 8, !tbaa !31 ; 2 uses
  %i.cu = tail call noundef ptr @_ZNKR5folly7dynamic11get_ptrImplERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.ct), !inline_history !72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i, label %"_ZSt9__find_ifIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNS0_27compareDynamicWithToleranceERKS1_S7_dE3$_0EEET_SA_SA_T0_St18input_iterator_tag.exit", label %"_ZZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_dENK3$_0clISt4pairIS1_S0_EEEDaRKT_.exit.i", !llvm.loop !73

"_ZSt9__find_ifIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNS0_27compareDynamicWithToleranceERKS1_S7_dE3$_0EEET_SA_SA_T0_St18input_iterator_tag.exit": ; preds = %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i, %"_ZZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_dENK3$_0clISt4pairIS1_S0_EEEDaRKT_.exit.i", %.critedge.i.i.i.i.i, %.lr.ph, %_ZNK5folly7dynamic5itemsEv.exit49
  %.sroa.071.0.lcssa = phi ptr [ %i.bj, %_ZNK5folly7dynamic5itemsEv.exit49 ], [ null, %.critedge.i.i.i.i.i ], [ %i.bj, %.lr.ph ], [ %.sroa.071.1, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i ], [ %.sroa.071.090144, %"_ZZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_dENK3$_0clISt4pairIS1_S0_EEEDaRKT_.exit.i" ]
  %i.cv = icmp eq ptr %.sroa.071.0.lcssa, null
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit:      ; preds = %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !28 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !28
  %i.dc = icmp eq i64 %i.cz, %i.db
  br i1 %i.dc, label %bb.ab, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.ab:                                            ; preds = %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit
  %i.dd = icmp eq i64 %i.cz, 0
  br i1 %i.dd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !29
  %i.df = load ptr, ptr %i.cw, align 8, !tbaa !29
  %bcmp.i = tail call i32 @bcmp(ptr %i.df, ptr %i.de, i64 %i.cz)
  %i.dg = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.ad:                                            ; preds = %bb.l
  unreachable

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_ZNK5folly7dynamic3endEv.exit, %bb.q, %bb.ac, %bb.ab, %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit, %bb.u, %bb.m, %bb.l, %bb.b, %"_ZSt9__find_ifIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNS0_27compareDynamicWithToleranceERKS1_S7_dE3$_0EEET_SA_SA_T0_St18input_iterator_tag.exit", %bb.t, %bb.s, %_ZNK5folly7dynamic6asBoolEv.exit46, %_ZN5folly2toIdlEENSt9enable_ifIXsr6detail14IsArithToArithIT_T0_EE5valueES2_E4typeERKS3_.exit
  %.1 = phi i1 [ %i.x, %_ZN5folly2toIdlEENSt9enable_ifIXsr6detail14IsArithToArithIT_T0_EE5valueES2_E4typeERKS3_.exit ], [ true, %bb.ab ], [ false, %bb.b ], [ true, %bb.l ], [ false, %bb.m ], [ false, %bb.u ], [ %.not121, %_ZNK5folly7dynamic6asBoolEv.exit46 ], [ %i.ay, %bb.s ], [ %i.bb, %bb.t ], [ %i.dg, %bb.ac ], [ %i.cv, %"_ZSt9__find_ifIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNS0_27compareDynamicWithToleranceERKS1_S7_dE3$_0EEET_SA_SA_T0_St18input_iterator_tag.exit" ], [ false, %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit ], [ %i.al, %bb.q ], [ %i.al, %_ZNK5folly7dynamic3endEv.exit ]
  ret i1 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #16

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::BadExpectedAccess", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIvEE, i64 16), ptr %0, align 8, !tbaa !37
  invoke void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIvEE, i64 16), ptr %i.a, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly17BadExpectedAccessIvEE, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly17BadExpectedAccessIvED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr @.str.2
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_15ConversionErrorEEEvOT_(ptr noundef nonnull align 8 dereferenceable(17) %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 24) #22 ; 2 uses
  tail call void @_ZN5folly15ConversionErrorC2EOS0_(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef nonnull align 8 dereferenceable(17) %0) #22
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly15ConversionErrorE, ptr nonnull @_ZNSt11range_errorD2Ev) #24
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly2toIdlEENSt9enable_ifIXsr6detail14IsArithToArithIT_T0_EE5valueES2_E4typeERKS3_ENKUlNS_14ConversionCodeEE_clES8_(ptr dead_on_unwind noalias writable sret(%"class.folly::ConversionError") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.b = load ptr, ptr %1, align 8, !tbaa !77, !nonnull !45, !align !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !78
  store ptr @_ZN5folly6detail18pretty_name_zarrayIdNS0_14pretty_tag_gccEE6zarrayE, ptr %i.a, align 8, !tbaa !19, !noalias !78
  call void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA2_cPKcA3_clETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISC_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSF_EEEE5valueEiE4typeELi0EEESC_DpRKSE_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(2) @.str.3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.4, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !78
  %i.c = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  invoke void @_ZN5folly19makeConversionErrorENS_14ConversionCodeENS_5RangeIPKcEE(ptr dead_on_unwind writable sret(%"class.folly::ConversionError") align 8 %0, i8 noundef zeroext %2, ptr %i.c, ptr %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !32
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !32
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.l
}

; Function Attrs: nounwind
declare void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly15ConversionErrorC2EOS0_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly15ConversionErrorE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !84
  store i8 %i.c, ptr %i.a, align 8, !tbaa !84
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly15ConversionErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

declare void @_ZN5folly19makeConversionErrorENS_14ConversionCodeENS_5RangeIPKcEE(ptr dead_on_unwind writable sret(%"class.folly::ConversionError") align 8, i8 noundef zeroext, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA2_cPKcA3_clETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISC_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSF_EEEE5valueEiE4typeELi0EEESC_DpRKSE_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !28
  store i8 0, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %0, ptr %i.a, align 8, !tbaa !50
  %i.d = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail15reserveInTargetIA2_cPKcJA3_clPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #26
  %i.f = add i64 %i.e, 5
  br label %_ZN5folly6detail15reserveInTargetIA2_cPKcJA3_clPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i

_ZN5folly6detail15reserveInTargetIA2_cPKcJA3_clPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i: ; preds = %bb.b, %bb.a
  %i.g = phi i64 [ %i.f, %bb.b ], [ 5, %bb.a ]
  %i.h = load i64, ptr %4, align 8, !tbaa !38     ; 2 uses
  %i.i = tail call i64 @llvm.abs.i64(i64 %i.h, i1 false)
  %i.j = invoke noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %i.i)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %_ZN5folly6detail15reserveInTargetIA2_cPKcJA3_clPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i
  %.lobit.i.i.i.i = lshr i64 %i.h, 63
  %i.k = add i64 %.lobit.i.i.i.i, %i.g
  %i.l = add i64 %i.k, %i.j
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l)
          to label %.noexc6 unwind label %bb.c

.noexc6:                                          ; preds = %.noexc
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEE4callIJA2_cPKcA3_clPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN5folly11toAppendFitIJA2_cPKcA3_clPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSG_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSF_.exit unwind label %bb.c

_ZN5folly11toAppendFitIJA2_cPKcA3_clPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSG_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSF_.exit: ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void

bb.c:                                             ; preds = %.noexc6, %.noexc, %_ZN5folly6detail15reserveInTargetIA2_cPKcJA3_clPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.n = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.b, align 8, !tbaa !32
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
end_hunk_0
