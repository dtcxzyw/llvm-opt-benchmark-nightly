Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/seam_finders?download=true
inline.NumInlined: 2970
inline.NumDeleted: 1133
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv6detail12DpSeamFinderC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.r) #28
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.n) #28
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.k) #28
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #28
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.e) #28
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3setISt4pairIiiESt4lessIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111
  invoke void @_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #30
  unreachable

_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !117    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #27
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !117
  br label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !119
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #27
  br label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail12DpSeamFinder15setCostFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(2064) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7 [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.d = load i32, ptr %i.c, align 1
  %i.e = xor i32 %i.d, 1330401091
  %i.f = getelementptr i8, ptr %i.c, i64 4
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = xor i32 %i.h, 82
  %i.j = or i32 %i.e, %i.i
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5: ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.o = load i64, ptr %i.n, align 1
  %i.p = xor i64 %i.o, 5928812241578905411
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %i.r = load i16, ptr %i.q, align 1
  %i.s = zext i16 %i.r to i64
  %i.t = xor i64 %i.s, 17473
  %i.u = or i64 %i.p, %i.t
  %i.v = icmp ne i64 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv6detail12DpSeamFinder15setCostFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr noundef nonnull @.str.1, i32 noundef 198) #29
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7
  unreachable

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !30
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.y

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.sink = phi i32 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.ae, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail12DpSeamFinder4findERKSt6vectorINS_4UMatESaIS3_EERKS2_INS_6Point_IiEESaIS9_EERS5_(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.45", align 8    ; 13 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %i.a = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv6detail17stitchingLogLevelEv() ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !39     ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, label %.preheader108

.preheader108:                                    ; preds = %bb.a
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 184                 ; 2 uses
  %i.j = icmp ugt i64 %i.i, 1
  br i1 %i.j, label %.preheader, label %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread

_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread: ; preds = %.preheader108
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i

.loopexit102:                                     ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit, %.preheader
  %.pre-phi182 = phi i64 [ %i.u, %.preheader ], [ %i.az, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.k = phi ptr [ %i.o, %.preheader ], [ %i.av, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.l = phi ptr [ %i.p, %.preheader ], [ %i.au, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %.sroa.20.1.lcssa = phi ptr [ %.sroa.20.0152, %.preheader ], [ %.sroa.20.3, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %.sroa.13.1.lcssa = phi ptr [ %.sroa.13.0153, %.preheader ], [ %.sroa.13.2, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.078.1.lcssa = phi ptr [ %.sroa.078.0154, %.preheader ], [ %.sroa.078.3, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %i.m = add nuw i64 %i.q, 1                      ; 2 uses
  %i.n = icmp ult i64 %i.m, %.pre-phi182
  br i1 %i.n, label %.preheader, label %._crit_edge, !llvm.loop !259

.preheader:                                       ; preds = %.preheader108, %.loopexit102
  %i.o = phi ptr [ %i.k, %.loopexit102 ], [ %i.d, %.preheader108 ] ; 2 uses
  %i.p = phi ptr [ %i.l, %.loopexit102 ], [ %i.c, %.preheader108 ] ; 2 uses
  %i.q = phi i64 [ %i.m, %.loopexit102 ], [ 1, %.preheader108 ] ; 4 uses
  %.sroa.078.0154 = phi ptr [ %.sroa.078.1.lcssa, %.loopexit102 ], [ null, %.preheader108 ] ; 2 uses
  %.sroa.13.0153 = phi ptr [ %.sroa.13.1.lcssa, %.loopexit102 ], [ null, %.preheader108 ] ; 2 uses
  %.sroa.20.0152 = phi ptr [ %.sroa.20.1.lcssa, %.loopexit102 ], [ null, %.preheader108 ] ; 2 uses
  %storemerge52145 = add i64 %i.q, -1             ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 184                 ; 2 uses
  %i.v = icmp ult i64 %i.q, %i.u
  br i1 %i.v, label %.lr.ph, label %.loopexit102

._crit_edge:                                      ; preds = %.loopexit102
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.w = icmp ugt i64 %.pre-phi182, 44343134792571037
  br i1 %i.w, label %bb.b, label %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #29
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %._crit_edge
  %i.x = icmp eq ptr %i.l, %i.k
  br i1 %i.x, label %.loopexit101.thread, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i

.loopexit101.thread:                              ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %._crit_edge165

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.sroa.20.0.lcssa205235 = phi ptr [ null, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %.sroa.20.1.lcssa, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %.sroa.13.0.lcssa212233 = phi ptr [ null, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %.sroa.13.1.lcssa, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %.sroa.078.0.lcssa213231 = phi ptr [ null, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %.sroa.078.1.lcssa, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %.lcssa124222229 = phi i64 [ %i.i, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %.pre-phi182, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 3 uses
  %i.y = mul nuw nsw i64 %.lcssa124222229, 208
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #26
          to label %.noexc55 unwind label %bb.j   ; 4 uses

.noexc55:                                         ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.z, ptr %4, align 8, !tbaa !122
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw [208 x i8], ptr %i.z, i64 %.lcssa124222229
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !123
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.noexc55
  %.08.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %i.z, %.noexc55 ] ; 2 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.lcssa124222229, %.noexc55 ]
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i) #28
  %i.ad = add i64 %.057.i.i.i.i.i, -1             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit101, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

.lr.ph:                                           ; preds = %.preheader, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit
  %storemerge52149 = phi i64 [ %storemerge52, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ], [ %i.q, %.preheader ] ; 3 uses
  %.sroa.078.1148 = phi ptr [ %.sroa.078.3, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.078.0154, %.preheader ] ; 8 uses
  %.sroa.13.1147 = phi ptr [ %.sroa.13.2, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.13.0153, %.preheader ] ; 9 uses
  %.sroa.20.1146 = phi ptr [ %.sroa.20.3, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.20.0152, %.preheader ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.13.1147, %.sroa.20.1146
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  store i64 %storemerge52145, ptr %.sroa.13.1147, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.1147, i64 8
  store i64 %storemerge52149, ptr %.sroa.6.0..sroa_idx, align 8
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.af = ptrtoint ptr %.sroa.13.1147 to i64
  %i.ag = ptrtoint ptr %.sroa.078.1148 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775792
  br i1 %i.ai, label %bb.e, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #29
          to label %.noexc57 unwind label %.loopexit.split-lp104

.noexc57:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.aj = ashr exact i64 %i.ah, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 576460752303423487)
  %i.an = select i1 %i.al, i64 576460752303423487, i64 %i.am ; 3 uses
  %.not.i.i.i.i56 = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i56)
  %i.ao = shl nuw nsw i64 %i.an, 4
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #26
          to label %.noexc58 unwind label %.loopexit103 ; 5 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store i64 %storemerge52145, ptr %i.aq, align 8
  %.sroa.6.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %storemerge52149, ptr %.sroa.6.0..sroa_idx71, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.078.1148, %.sroa.13.1147
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc58, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %i.ap, %.noexc58 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.078.1148, %.noexc58 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !269
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, %.sroa.13.1147
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !263

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc58
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ap, %.noexc58 ], [ %i.as, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.078.1148, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.078.1148, i64 noundef %i.ah) #27
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.an
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.c
  %.sroa.20.3 = phi ptr [ %i.at, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.20.1146, %bb.c ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.13.1147, %bb.c ]
  %.sroa.078.3 = phi ptr [ %i.ap, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.078.1148, %bb.c ] ; 2 uses
  %.sroa.13.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 2 uses
  %storemerge52 = add nuw i64 %storemerge52149, 1 ; 2 uses
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = sdiv exact i64 %i.ay, 184               ; 2 uses
  %i.ba = icmp ult i64 %storemerge52, %i.az
  br i1 %i.ba, label %.lr.ph, label %.loopexit102, !llvm.loop !264

.loopexit103:                                     ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit105 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp104:                            ; preds = %bb.e
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit101:                                     ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !38
  %.pre179 = load ptr, ptr %1, align 8, !tbaa !39 ; 2 uses
  %i.bb = icmp eq ptr %.pre, %.pre179
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !124
  br i1 %i.bb, label %._crit_edge165, label %.lr.ph164

._crit_edge165:                                   ; preds = %bb.l, %.loopexit101.thread, %.loopexit101
  %.sroa.078.0.lcssa213230243 = phi ptr [ %.sroa.078.1.lcssa, %.loopexit101.thread ], [ %.sroa.078.0.lcssa213231, %.loopexit101 ], [ %.sroa.078.0.lcssa213231, %bb.l ] ; 17 uses
  %.sroa.13.0.lcssa212232242 = phi ptr [ %.sroa.13.1.lcssa, %.loopexit101.thread ], [ %.sroa.13.0.lcssa212233, %.loopexit101 ], [ %.sroa.13.0.lcssa212233, %bb.l ] ; 10 uses
  %.sroa.20.0.lcssa205234241 = phi ptr [ %.sroa.20.1.lcssa, %.loopexit101.thread ], [ %.sroa.20.0.lcssa205235, %.loopexit101 ], [ %.sroa.20.0.lcssa205235, %bb.l ] ; 5 uses
  %i.bc = phi ptr [ null, %.loopexit101.thread ], [ %i.z, %.loopexit101 ], [ %i.br, %bb.l ] ; 4 uses
  %i.bd = load ptr, ptr %2, align 8, !tbaa !47    ; 4 uses
  %.not.i.i59 = icmp eq ptr %.sroa.078.0.lcssa213230243, %.sroa.13.0.lcssa212232242 ; 2 uses
  br i1 %.not.i.i59, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEN2cv6detail12DpSeamFinder13ImagePairLessEEvT_SD_T0_.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge165
  %i.be = ptrtoint ptr %.sroa.13.0.lcssa212232242 to i64
  %i.bf = ptrtoint ptr %.sroa.078.0.lcssa213230243 to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = ashr exact i64 %i.bg, 4
  %i.bi = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 true)
  %i.bj = shl nuw nsw i64 %i.bi, 1
  %i.bk = xor i64 %i.bj, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIN2cv6detail12DpSeamFinder13ImagePairLessEEEEvT_SG_T0_T1_(ptr %.sroa.078.0.lcssa213230243, ptr %.sroa.13.0.lcssa212232242, i64 noundef %i.bk, ptr %i.bc, ptr %i.bd)
          to label %.noexc61 unwind label %.loopexit.split-lp

.noexc61:                                         ; preds = %bb.g
  %i.bl = icmp sgt i64 %i.bg, 256
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc61
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.078.0.lcssa213230243, i64 256 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN2cv6detail12DpSeamFinder13ImagePairLessEEEEvT_SG_T0_(ptr %.sroa.078.0.lcssa213230243, ptr nonnull %i.bm, ptr %i.bc, ptr %i.bd)
          to label %.noexc62 unwind label %.loopexit.split-lp

.noexc62:                                         ; preds = %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.bm, %.sroa.13.0.lcssa212232242
  br i1 %.not9.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEN2cv6detail12DpSeamFinder13ImagePairLessEEvT_SD_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc62, %.noexc63
  %.sroa.0.010.i.i.i.i = phi ptr [ %i.bn, %.noexc63 ], [ %i.bm, %.noexc62 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIN2cv6detail12DpSeamFinder13ImagePairLessEEEEvT_T0_(ptr nonnull %.sroa.0.010.i.i.i.i, ptr %i.bc, ptr %i.bd)
          to label %.noexc63 unwind label %.loopexit

.noexc63:                                         ; preds = %.lr.ph.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i60 = icmp eq ptr %i.bn, %.sroa.13.0.lcssa212232242
  br i1 %.not.i.i.i.i60, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEN2cv6detail12DpSeamFinder13ImagePairLessEEvT_SD_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !265

bb.i:                                             ; preds = %.noexc61
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN2cv6detail12DpSeamFinder13ImagePairLessEEEEvT_SG_T0_(ptr %.sroa.078.0.lcssa213230243, ptr %.sroa.13.0.lcssa212232242, ptr %i.bc, ptr %i.bd)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEN2cv6detail12DpSeamFinder13ImagePairLessEEvT_SD_T0_.exit unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i, %bb.b
  %.sroa.078.0.lcssa215 = phi ptr [ %.sroa.078.0.lcssa213231, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i ], [ %.sroa.078.1.lcssa, %bb.b ]
  %.sroa.20.0.lcssa207 = phi ptr [ %.sroa.20.0.lcssa205235, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i ], [ %.sroa.20.1.lcssa, %bb.b ]
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph164:                                        ; preds = %.loopexit101, %bb.l
  %i.bp = phi ptr [ %i.bw, %bb.l ], [ %.pre179, %.loopexit101 ]
  %.043162 = phi i64 [ %i.bu, %bb.l ], [ 0, %.loopexit101 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.bq = getelementptr inbounds nuw [184 x i8], ptr %i.bp, i64 %.043162
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(184) %i.bq, i32 noundef 16777216)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.lr.ph164
  %i.br = load ptr, ptr %4, align 8, !tbaa !122   ; 2 uses
  %i.bs = getelementptr inbounds nuw [208 x i8], ptr %i.br, i64 %.043162
  %i.bt = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.bs, ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.bu = add nuw i64 %.043162, 1                 ; 2 uses
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.bw = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = sdiv exact i64 %i.bz, 184
  %i.cb = icmp ult i64 %i.bu, %i.ca
  br i1 %i.cb, label %.lr.ph164, label %._crit_edge165, !llvm.loop !266

bb.m:                                             ; preds = %.lr.ph164
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #28
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn48 = phi { ptr, i32 } [ %i.cd, %bb.n ], [ %i.cc, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.q

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEN2cv6detail12DpSeamFinder13ImagePairLessEEvT_SD_T0_.exit: ; preds = %.noexc63, %.noexc62, %._crit_edge165, %bb.i
  %i.ce = load ptr, ptr %4, align 8, !tbaa !122   ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !124 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ce, %i.cg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEN2cv6detail12DpSeamFinder13ImagePairLessEEvT_SD_T0_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i ], [ %i.ce, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEN2cv6detail12DpSeamFinder13ImagePairLessEEvT_SD_T0_.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #28
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ch, %i.cg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEN2cv6detail12DpSeamFinder13ImagePairLessEEvT_SD_T0_.exit
  %.not.i.i1.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !123
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ce to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cm) #27
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.cn = icmp ne ptr %.sroa.078.0.lcssa213230243, %.sroa.13.0.lcssa212232242
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.13.0.lcssa212232242, i64 -16 ; 2 uses
  %i.co = icmp ult ptr %.sroa.078.0.lcssa213230243, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 4 uses
  %.pn10.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.13.0.lcssa212232242, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ]
  %.sroa.05.09.i.i = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %.sroa.078.0.lcssa213230243, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 4 uses
  %i.cp = load i64, ptr %.sroa.05.09.i.i, align 8, !tbaa !34
  %i.cq = load i64, ptr %.sroa.0.011.i.i, align 8, !tbaa !34
  store i64 %i.cq, ptr %.sroa.05.09.i.i, align 8, !tbaa !34
  store i64 %i.cp, ptr %.sroa.0.011.i.i, align 8, !tbaa !34
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2cv6detail12DpSeamFinder9findEdgesEv:bb.a
  %i.rz = icmp slt i32 %i.rx, %i.ry
  br i1 %i.rz, label %.thread.i408, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.sa = icmp slt i32 %i.ry, %i.rx
  br i1 %i.sa, label %.thread.i408, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rp, i64 36
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !145
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ru, i64 36
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !145
  %i.sf = icmp slt i32 %i.sc, %i.se
  br label %.thread.i408

.thread.i408:                                     ; preds = %bb.dg, %bb.df, %bb.de, %bb.dd
  %i.sg = phi i1 [ %i.sf, %bb.dg ], [ true, %bb.dd ], [ true, %bb.de ], [ false, %bb.df ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.sg, ptr noundef nonnull %i.rp, ptr noundef nonnull %i.ru, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #28
  %i.sh = load i64, ptr %i.e, align 8, !tbaa !114
  %i.si = add i64 %i.sh, 1
  store i64 %i.si, ptr %i.e, align 8, !tbaa !114
  br label %bb.di

_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i404: ; preds = %.noexc410
  %i.sj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.rp, i64 noundef 48) #27
  br label %.body

bb.dh:                                            ; preds = %bb.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.rp, i64 noundef 48) #27
  br label %bb.di

bb.di:                                            ; preds = %.thread.i408, %bb.dh, %bb.db, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i274
  %.sroa.06.0.i275 = phi ptr [ %.19.i.i.i.i270, %bb.db ], [ %.19.i.i.i.i270, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i274 ], [ %i.rp, %.thread.i408 ], [ %i.rt, %bb.dh ]
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i275, i64 40 ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !52
  %i.sm = add nsw i32 %i.sl, 1
  store i32 %i.sm, ptr %i.sk, align 4, !tbaa !52
  %i.sn = load i32, ptr %i.o, align 4, !tbaa !63
  %i.so = icmp slt i32 %i.sn, 2
  %i.sp = load ptr, ptr %i.p, align 8, !tbaa !64
  %i.sq = load i64, ptr %i.q, align 8
  %i.sr = mul i64 %i.sq, %i.qr
  %.sink.idx.i281 = select i1 %i.so, i64 0, i64 %i.sr
  %.sink.i282 = getelementptr inbounds nuw i8, ptr %i.sp, i64 %.sink.idx.i281
  %i.ss = getelementptr inbounds [4 x i8], ptr %.sink.i282, i64 %i.qt
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !52 ; 3 uses
  %i.su = add nsw i32 %i.st, -1                   ; 3 uses
  %i.sv = load ptr, ptr %i.b, align 8, !tbaa !111 ; 2 uses
  %.not11.i.i.i.i287 = icmp eq ptr %i.sv, null
  br i1 %.not11.i.i.i.i287, label %.critedge.i300, label %.lr.ph.i.i.i.i288

.lr.ph.i.i.i.i288:                                ; preds = %bb.di, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i.i292
  %.013.i.i.i.i289 = phi ptr [ %.1.i.i.i.i295, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i.i292 ], [ %i.sv, %bb.di ] ; 5 uses
  %.0812.i.i.i.i290 = phi ptr [ %.19.i.i.i.i294, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i.i292 ], [ %i.a, %bb.di ]
  %i.sw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i289, i64 32
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !144 ; 2 uses
  %i.sy = icmp slt i32 %i.sx, %i.su
  br i1 %i.sy, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i.i302, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph.i.i.i.i288
  %.not730 = icmp sgt i32 %i.st, %i.sx
  br i1 %.not730, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i.i291, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i.i292

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i.i291: ; preds = %bb.dj
  %i.sz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i289, i64 36
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !145
  %i.tb = icmp slt i32 %i.ta, %.sroa.6.0.extract.trunc
  br i1 %i.tb, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i.i302, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i.i292

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i.i302: ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i.i291, %.lr.ph.i.i.i.i288
  br label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i.i292

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i.i292: ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i.i302, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i.i291, %bb.dj
  %.sink.i.i.i.i293 = phi i64 [ 24, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i.i302 ], [ 16, %bb.dj ], [ 16, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i.i291 ]
  %.19.i.i.i.i294 = phi ptr [ %.0812.i.i.i.i290, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i.i302 ], [ %.013.i.i.i.i289, %bb.dj ], [ %.013.i.i.i.i289, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i.i291 ] ; 9 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i289, i64 %.sink.i.i.i.i293
  %.1.i.i.i.i295 = load ptr, ptr %i.tc, align 8, !tbaa !146 ; 2 uses
  %.not.i.i.i.i296 = icmp eq ptr %.1.i.i.i.i295, null
  br i1 %.not.i.i.i.i296, label %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE11lower_boundERS4_.exit.i297, label %.lr.ph.i.i.i.i288, !llvm.loop !304

_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE11lower_boundERS4_.exit.i297: ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i.i292
  %i.td = icmp eq ptr %.19.i.i.i.i294, %i.a
  br i1 %i.td, label %.critedge.i300, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE11lower_boundERS4_.exit.i297
  %i.te = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i294, i64 32
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !144 ; 2 uses
  %.not731 = icmp sgt i32 %i.st, %i.tf
  br i1 %.not731, label %bb.dl, label %.critedge.i300

bb.dl:                                            ; preds = %bb.dk
  %i.tg = icmp slt i32 %i.tf, %i.su
  br i1 %i.tg, label %bb.ds, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i298

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i298:    ; preds = %bb.dl
  %i.th = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i294, i64 36
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !145
  %i.tj = icmp sgt i32 %i.ti, %.sroa.6.0.extract.trunc
  br i1 %i.tj, label %.critedge.i300, label %bb.ds

.critedge.i300:                                   ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i298, %bb.dk, %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE11lower_boundERS4_.exit.i297, %bb.di
  %.08.lcssa.i.i.i11.i301 = phi ptr [ %i.a, %bb.di ], [ %.19.i.i.i.i294, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i298 ], [ %.19.i.i.i.i294, %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE11lower_boundERS4_.exit.i297 ], [ %.19.i.i.i.i294, %bb.dk ]
  %i.tk = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26
          to label %.noexc420 unwind label %bb.du ; 7 uses

.noexc420:                                        ; preds = %.critedge.i300
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 32 ; 3 uses
  %.sroa.0.0.insert.ext = zext i32 %i.su to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.ext, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.tl, align 4
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 40
  store i32 0, ptr %i.tm, align 4, !tbaa !312
  %i.tn = invoke { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.08.lcssa.i.i.i11.i301, ptr noundef nonnull align 4 dereferenceable(8) %i.tl)
          to label %bb.dm unwind label %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i414 ; 2 uses

bb.dm:                                            ; preds = %.noexc420
  %i.to = extractvalue { ptr, ptr } %i.tn, 0      ; 2 uses
  %i.tp = extractvalue { ptr, ptr } %i.tn, 1      ; 5 uses
  %.not.i415 = icmp eq ptr %i.tp, null
  br i1 %.not.i415, label %bb.dr, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.not.i.i.i416 = icmp ne ptr %i.to, null
  %i.tq = icmp eq ptr %i.tp, %i.a
  %or.cond.i.i.i417 = or i1 %.not.i.i.i416, %i.tq
  br i1 %or.cond.i.i.i417, label %.thread.i418, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 32
  %i.ts = load i32, ptr %i.tl, align 4, !tbaa !144 ; 2 uses
  %i.tt = load i32, ptr %i.tr, align 4, !tbaa !144 ; 2 uses
  %i.tu = icmp slt i32 %i.ts, %i.tt
  br i1 %i.tu, label %.thread.i418, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.tv = icmp slt i32 %i.tt, %i.ts
  br i1 %i.tv, label %.thread.i418, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tk, i64 36
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !145
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tp, i64 36
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !145
  %i.ua = icmp slt i32 %i.tx, %i.tz
  br label %.thread.i418

.thread.i418:                                     ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dn
  %i.ub = phi i1 [ %i.ua, %bb.dq ], [ true, %bb.dn ], [ true, %bb.do ], [ false, %bb.dp ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ub, ptr noundef nonnull %i.tk, ptr noundef nonnull %i.tp, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #28
  %i.uc = load i64, ptr %i.e, align 8, !tbaa !114
  %i.ud = add i64 %i.uc, 1
  store i64 %i.ud, ptr %i.e, align 8, !tbaa !114
  br label %bb.ds

_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i414: ; preds = %.noexc420
  %i.ue = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.tk, i64 noundef 48) #27
  br label %.body

bb.dr:                                            ; preds = %bb.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.tk, i64 noundef 48) #27
  br label %bb.ds

bb.ds:                                            ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i298, %bb.dl, %bb.dr, %.thread.i418
  %.sroa.06.0.i299 = phi ptr [ %.19.i.i.i.i294, %bb.dl ], [ %.19.i.i.i.i294, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i298 ], [ %i.tk, %.thread.i418 ], [ %i.to, %bb.dr ]
  %i.uf = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i299, i64 40 ; 2 uses
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !52
  %i.uh = add nsw i32 %i.ug, 1
  store i32 %i.uh, ptr %i.uf, align 4, !tbaa !52
  br label %bb.dv

bb.dt:                                            ; preds = %.critedge.i276
  %i.ui = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.du:                                            ; preds = %.critedge.i300
  %i.uj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dv:                                            ; preds = %bb.ds, %bb.cx, %bb.cw
  %i.uk = add nuw i64 %.055567, 1                 ; 2 uses
  %i.ul = load ptr, ptr %i.n, align 8, !tbaa !117 ; 2 uses
  %i.um = getelementptr inbounds nuw [24 x i8], ptr %i.ul, i64 %indvars.iv603 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !54
  %i.up = load ptr, ptr %i.um, align 8, !tbaa !47 ; 2 uses
  %i.uq = ptrtoint ptr %i.uo to i64
  %i.ur = ptrtoint ptr %i.up to i64
  %i.us = sub i64 %i.uq, %i.ur
  %i.ut = ashr exact i64 %i.us, 3
  %i.uu = icmp ult i64 %i.uk, %i.ut
  br i1 %i.uu, label %bb.z, label %._crit_edge569.loopexit, !llvm.loop !307

.preheader:                                       ; preds = %_ZNSt3setISt4pairIiiESt4lessIS1_ESaIS1_EE5clearEv.exit, %._crit_edge576
  %i.uv = phi i32 [ %i.vc, %._crit_edge576 ], [ %i.dz, %_ZNSt3setISt4pairIiiESt4lessIS1_ESaIS1_EE5clearEv.exit ] ; 2 uses
  %storemerge61577 = phi i32 [ %storemerge62572, %._crit_edge576 ], [ 0, %_ZNSt3setISt4pairIiiESt4lessIS1_ESaIS1_EE5clearEv.exit ] ; 7 uses
  %storemerge62572 = add nuw nsw i32 %storemerge61577, 1 ; 4 uses
  %i.uw = icmp sge i32 %storemerge62572, %i.uv
  %i.ux = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.uy = icmp eq ptr %i.ux, null
  %or.cond753 = select i1 %i.uw, i1 true, i1 %i.uy
  br i1 %or.cond753, label %._crit_edge576, label %.lr.ph575.split

._crit_edge579:                                   ; preds = %._crit_edge576, %_ZNSt3setISt4pairIiiESt4lessIS1_ESaIS1_EE5clearEv.exit
  %i.uz = load ptr, ptr %i.b, align 8, !tbaa !111
  invoke void @_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.uz)
          to label %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEED2Ev.exit unwind label %bb.dw

bb.dw:                                            ; preds = %._crit_edge579
  %i.va = landingpad { ptr, i32 }
          catch ptr null
  %i.vb = extractvalue { ptr, i32 } %i.va, 0
  call void @__clang_call_terminate(ptr %i.vb) #30
  unreachable

_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEED2Ev.exit: ; preds = %._crit_edge579
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void

._crit_edge576:                                   ; preds = %.critedge2, %.preheader
  %i.vc = phi i32 [ %i.uv, %.preheader ], [ %i.zm, %.critedge2 ] ; 2 uses
  %i.vd = add nsw i32 %i.vc, -1
  %i.ve = icmp slt i32 %storemerge62572, %i.vd
  br i1 %i.ve, label %.preheader, label %._crit_edge579, !llvm.loop !308

.lr.ph575.splitthread-pre-split:                  ; preds = %.critedge2
  %.pr732 = load ptr, ptr %i.b, align 8, !tbaa !111
  br label %.lr.ph575.split

.lr.ph575.split:                                  ; preds = %.preheader, %.lr.ph575.splitthread-pre-split
  %i.vf = phi ptr [ %.pr732, %.lr.ph575.splitthread-pre-split ], [ %i.ux, %.preheader ] ; 8 uses
  %storemerge62.in.in.sroa.speculated573 = phi i32 [ %storemerge62, %.lr.ph575.splitthread-pre-split ], [ %storemerge62572, %.preheader ] ; 7 uses
  %.not11.i.i.i = icmp eq ptr %i.vf, null
  br i1 %.not11.i.i.i, label %.critedge2, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph575.split, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i
  %.013.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i ], [ %i.vf, %.lr.ph575.split ] ; 5 uses
  %.0812.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i ], [ %i.a, %.lr.ph575.split ]
  %i.vg = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !144 ; 2 uses
  %i.vi = icmp slt i32 %i.vh, %storemerge61577
  br i1 %i.vi, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph.i.i.i
  %i.vj = icmp slt i32 %storemerge61577, %i.vh
  br i1 %i.vj, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i:   ; preds = %bb.dx
  %i.vk = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 36
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !145
  %.not536.not = icmp slt i32 %i.vl, %storemerge62.in.in.sroa.speculated573
  br i1 %.not536.not, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i, %.lr.ph.i.i.i
  br label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i: ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i, %bb.dx
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i ], [ 16, %bb.dx ], [ 16, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0812.i.i.i, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i ], [ %.013.i.i.i, %bb.dx ], [ %.013.i.i.i, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i ] ; 8 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.vm, align 8, !tbaa !146 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !304

_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i
  %i.vn = icmp eq ptr %.19.i.i.i, %i.a
  br i1 %i.vn, label %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit.thread, label %bb.dy

bb.dy:                                            ; preds = %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.vo = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32 ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !144 ; 8 uses
  %i.vq = icmp slt i32 %storemerge61577, %i.vp
  br i1 %i.vq, label %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit.thread, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.vr = icmp slt i32 %i.vp, %storemerge61577
  br i1 %i.vr, label %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i:     ; preds = %bb.dz
  %i.vs = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !145
  %.not537 = icmp slt i32 %storemerge62.in.in.sroa.speculated573, %i.vt
  br i1 %.not537, label %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit.thread, label %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit

_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit: ; preds = %bb.dz, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i
  %i.vu = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !312
  %i.vw = icmp sgt i32 %i.vv, 0
  br i1 %i.vw, label %bb.ea, label %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit.thread

bb.ea:                                            ; preds = %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit
  %.02124.i.i = load ptr, ptr %i.dr, align 8, !tbaa !146 ; 2 uses
  %.not25.i.i = icmp eq ptr %.02124.i.i, null
  br i1 %.not25.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ea
  %i.vx = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.vy = load i32, ptr %i.vx, align 4
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.lr.ph.i.i
  %.02126.i.i = phi ptr [ %.02124.i.i, %.lr.ph.i.i ], [ %.02126.i.i.be, %.backedge.i.backedge ] ; 7 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.02126.i.i, i64 32
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !144 ; 3 uses
  %i.wb = icmp slt i32 %i.vp, %i.wa
  br i1 %i.wb, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i, label %bb.eb

bb.eb:                                            ; preds = %.backedge.i
  %i.wc = icmp slt i32 %i.wa, %i.vp
  br i1 %i.wc, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.thread.i, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i424

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i424:  ; preds = %bb.eb
  %i.wd = getelementptr inbounds nuw i8, ptr %.02126.i.i, i64 36
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !145
  %i.wf = icmp slt i32 %i.vy, %i.we
  br i1 %i.wf, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.thread.i

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i: ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i424, %.backedge.i
  %i.wg = getelementptr inbounds nuw i8, ptr %.02126.i.i, i64 16
  %.021.i.i = load ptr, ptr %i.wg, align 8, !tbaa !146 ; 2 uses
  %.not.i.i = icmp eq ptr %.021.i.i, null
  br i1 %.not.i.i, label %._crit_edge.thread.i.i, label %.backedge.i.backedge

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.thread.i: ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i424, %bb.eb
  %i.wh = getelementptr inbounds nuw i8, ptr %.02126.i.i, i64 24
  %.021.i13.i = load ptr, ptr %i.wh, align 8, !tbaa !146 ; 2 uses
  %.not.i14.i = icmp eq ptr %.021.i13.i, null
  br i1 %.not.i14.i, label %._crit_edge.i.thread.i, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.thread.i, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i
  %.02126.i.i.be = phi ptr [ %.021.i.i, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i ], [ %.021.i13.i, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.thread.i ]
  br label %.backedge.i, !llvm.loop !309

._crit_edge.thread.i.i:                           ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i, %bb.ea
  %.020.lcssa34.i.i = phi ptr [ %i.dv, %bb.ea ], [ %.02126.i.i, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i ] ; 4 uses
  %i.wi = load ptr, ptr %i.dw, align 8, !tbaa !112
  %i.wj = icmp eq ptr %.020.lcssa34.i.i, %i.wi
  br i1 %i.wj, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %._crit_edge.thread.i.i
  %i.wk = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa34.i.i) #31 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.wk, i64 32
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !144
  br label %._crit_edge.i.thread.i

._crit_edge.i.thread.i:                           ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.thread.i, %bb.ec
  %i.wl = phi i32 [ %.pre.i, %bb.ec ], [ %i.wa, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.thread.i ] ; 2 uses
  %.020.lcssa33.i.i = phi ptr [ %.020.lcssa34.i.i, %bb.ec ], [ %.02126.i.i, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.thread.i ] ; 2 uses
  %.sroa.06.0.i.i = phi ptr [ %i.wk, %bb.ec ], [ %.02126.i.i, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.thread.i ]
  %i.wm = icmp slt i32 %i.wl, %i.vp
  br i1 %i.wm, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %._crit_edge.i.thread.i
  %i.wn = icmp slt i32 %i.vp, %i.wl
  br i1 %i.wn, label %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit.thread, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit5.i.i

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit5.i.i:    ; preds = %bb.ed
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 36
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !145
  %i.wq = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !145
  %i.ws = icmp slt i32 %i.wp, %i.wr
  br i1 %i.ws, label %bb.ee, label %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit.thread

bb.ee:                                            ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit5.i.i, %._crit_edge.i.thread.i, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.020.lcssa33.i.i, %._crit_edge.i.thread.i ], [ %.020.lcssa33.i.i, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit5.i.i ], [ %.020.lcssa34.i.i, %._crit_edge.thread.i.i ] ; 4 uses
  %i.wt = icmp eq ptr %.sroa.4.0.i.ph.i, %i.dv
  br i1 %i.wt, label %_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !144 ; 2 uses
  %i.ww = icmp slt i32 %i.vp, %i.wv
  br i1 %i.ww, label %_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.wx = icmp slt i32 %i.wv, %i.vp
  br i1 %i.wx, label %_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.wy = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !145
  %i.xa = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 36
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !145
  %i.xc = icmp slt i32 %i.wz, %i.xb
  br label %_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i

_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i: ; preds = %bb.eh, %bb.eg, %bb.ef, %bb.ee
  %i.xd = phi i1 [ %i.xc, %bb.eh ], [ true, %bb.ee ], [ true, %bb.ef ], [ false, %bb.eg ]
  %i.xe = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %.noexc425 unwind label %bb.ei ; 2 uses

.noexc425:                                        ; preds = %_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 32
  %i.xg = load i64, ptr %i.vo, align 4
  store i64 %i.xg, ptr %i.xf, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.xd, ptr noundef nonnull %i.xe, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.dv) #28
  %i.xh = load i64, ptr %i.dy, align 8, !tbaa !114
  %i.xi = add i64 %i.xh, 1
  store i64 %i.xi, ptr %i.dy, align 8, !tbaa !114
  %.pr.pre = load ptr, ptr %i.b, align 8, !tbaa !111
  br label %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit.thread

bb.ei:                                            ; preds = %_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i445, %_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i
  %i.xj = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit.thread: ; preds = %bb.ed, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit5.i.i, %.noexc425, %bb.dy, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit
  %.pr = phi ptr [ %i.vf, %bb.ed ], [ %i.vf, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit5.i.i ], [ %.pr.pre, %.noexc425 ], [ %i.vf, %bb.dy ], [ %i.vf, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i ], [ %i.vf, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_.exit.i.i ], [ %i.vf, %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit ] ; 2 uses
  %.not11.i.i.i314 = icmp eq ptr %.pr, null
  br i1 %.not11.i.i.i314, label %.critedge2, label %.lr.ph.i.i.i315

.lr.ph.i.i.i315:                                  ; preds = %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit.thread, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i319
  %.013.i.i.i316 = phi ptr [ %.1.i.i.i322, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i319 ], [ %.pr, %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit.thread ] ; 5 uses
  %.0812.i.i.i317 = phi ptr [ %.19.i.i.i321, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i319 ], [ %i.a, %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit.thread ]
  %i.xk = getelementptr inbounds nuw i8, ptr %.013.i.i.i316, i64 32
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !144 ; 2 uses
  %.not538.not = icmp slt i32 %i.xl, %storemerge62.in.in.sroa.speculated573
  br i1 %.not538.not, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i328, label %bb.ej

bb.ej:                                            ; preds = %.lr.ph.i.i.i315
  %i.xm = icmp slt i32 %storemerge62.in.in.sroa.speculated573, %i.xl
  br i1 %i.xm, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i319, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i318

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i318: ; preds = %bb.ej
  %i.xn = getelementptr inbounds nuw i8, ptr %.013.i.i.i316, i64 36
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !145
  %i.xp = icmp slt i32 %i.xo, %storemerge61577
  br i1 %i.xp, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i328, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i319

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i328: ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i318, %.lr.ph.i.i.i315
  br label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i319

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i319: ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i328, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i318, %bb.ej
  %.sink.i.i.i320 = phi i64 [ 24, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i328 ], [ 16, %bb.ej ], [ 16, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i318 ]
  %.19.i.i.i321 = phi ptr [ %.0812.i.i.i317, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i328 ], [ %.013.i.i.i316, %bb.ej ], [ %.013.i.i.i316, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i318 ] ; 8 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %.013.i.i.i316, i64 %.sink.i.i.i320
  %.1.i.i.i322 = load ptr, ptr %i.xq, align 8, !tbaa !146 ; 2 uses
  %.not.i.i.i323 = icmp eq ptr %.1.i.i.i322, null
  br i1 %.not.i.i.i323, label %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_.exit.i.i324, label %.lr.ph.i.i.i315, !llvm.loop !304

_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_.exit.i.i324: ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i319
  %i.xr = icmp eq ptr %.19.i.i.i321, %i.a
  br i1 %i.xr, label %.critedge2, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_.exit.i.i324
  %i.xs = getelementptr inbounds nuw i8, ptr %.19.i.i.i321, i64 32 ; 2 uses
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !144 ; 8 uses
  %i.xu = icmp slt i32 %storemerge62.in.in.sroa.speculated573, %i.xt
  br i1 %i.xu, label %.critedge2, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %.not539.not = icmp slt i32 %i.xt, %storemerge62.in.in.sroa.speculated573
  br i1 %.not539.not, label %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit329, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i325

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i325:  ; preds = %bb.el
  %i.xv = getelementptr inbounds nuw i8, ptr %.19.i.i.i321, i64 36
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !145
  %.not540 = icmp slt i32 %storemerge61577, %i.xw
  br i1 %.not540, label %.critedge2, label %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit329

_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit329: ; preds = %bb.el, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i325
  %i.xx = getelementptr inbounds nuw i8, ptr %.19.i.i.i321, i64 40
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !312
  %i.xz = icmp sgt i32 %i.xy, 0
  br i1 %i.xz, label %bb.em, label %.critedge2

bb.em:                                            ; preds = %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit329
  %.02124.i.i426 = load ptr, ptr %i.dr, align 8, !tbaa !146 ; 2 uses
  %.not25.i.i427 = icmp eq ptr %.02124.i.i426, null
  br i1 %.not25.i.i427, label %._crit_edge.thread.i.i449, label %.lr.ph.i.i428

.lr.ph.i.i428:                                    ; preds = %bb.em
  %i.ya = getelementptr inbounds nuw i8, ptr %.19.i.i.i321, i64 36
  %i.yb = load i32, ptr %i.ya, align 4
  br label %.backedge.i434

.backedge.i434:                                   ; preds = %.backedge.i434.backedge, %.lr.ph.i.i428
  %.02126.i.i429 = phi ptr [ %.02124.i.i426, %.lr.ph.i.i428 ], [ %.02126.i.i429.be, %.backedge.i434.backedge ] ; 7 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.02126.i.i429, i64 32
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !144 ; 3 uses
  %i.ye = icmp slt i32 %i.xt, %i.yd
  br i1 %i.ye, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i446, label %bb.en

bb.en:                                            ; preds = %.backedge.i434
  %i.yf = icmp slt i32 %i.yd, %i.xt
  br i1 %i.yf, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.thread.i431, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i430

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i430:  ; preds = %bb.en
  %i.yg = getelementptr inbounds nuw i8, ptr %.02126.i.i429, i64 36
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !145
  %i.yi = icmp slt i32 %i.yb, %i.yh
  br i1 %i.yi, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i446, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.thread.i431

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i446: ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i430, %.backedge.i434
  %i.yj = getelementptr inbounds nuw i8, ptr %.02126.i.i429, i64 16
  %.021.i.i447 = load ptr, ptr %i.yj, align 8, !tbaa !146 ; 2 uses
  %.not.i.i448 = icmp eq ptr %.021.i.i447, null
  br i1 %.not.i.i448, label %._crit_edge.thread.i.i449, label %.backedge.i434.backedge

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.thread.i431: ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i430, %bb.en
  %i.yk = getelementptr inbounds nuw i8, ptr %.02126.i.i429, i64 24
  %.021.i13.i432 = load ptr, ptr %i.yk, align 8, !tbaa !146 ; 2 uses
  %.not.i14.i433 = icmp eq ptr %.021.i13.i432, null
  br i1 %.not.i14.i433, label %._crit_edge.i.thread.i436, label %.backedge.i434.backedge

.backedge.i434.backedge:                          ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.thread.i431, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i446
  %.02126.i.i429.be = phi ptr [ %.021.i.i447, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i446 ], [ %.021.i13.i432, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.thread.i431 ]
  br label %.backedge.i434, !llvm.loop !309

._crit_edge.thread.i.i449:                        ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i446, %bb.em
  %.020.lcssa34.i.i450 = phi ptr [ %i.dv, %bb.em ], [ %.02126.i.i429, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i446 ] ; 4 uses
  %i.yl = load ptr, ptr %i.dw, align 8, !tbaa !112
  %i.ym = icmp eq ptr %.020.lcssa34.i.i450, %i.yl
  br i1 %i.ym, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %._crit_edge.thread.i.i449
  %i.yn = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa34.i.i450) #31 ; 2 uses
  %.phi.trans.insert.i451 = getelementptr inbounds nuw i8, ptr %i.yn, i64 32
  %.pre.i452 = load i32, ptr %.phi.trans.insert.i451, align 4, !tbaa !144
  br label %._crit_edge.i.thread.i436

._crit_edge.i.thread.i436:                        ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.thread.i431, %bb.eo
  %i.yo = phi i32 [ %.pre.i452, %bb.eo ], [ %i.yd, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.thread.i431 ] ; 2 uses
  %.020.lcssa33.i.i437 = phi ptr [ %.020.lcssa34.i.i450, %bb.eo ], [ %.02126.i.i429, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.thread.i431 ] ; 2 uses
  %.sroa.06.0.i.i438 = phi ptr [ %i.yn, %bb.eo ], [ %.02126.i.i429, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.thread.i431 ]
  %i.yp = icmp slt i32 %i.yo, %i.xt
  br i1 %i.yp, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %._crit_edge.i.thread.i436
  %i.yq = icmp slt i32 %i.xt, %i.yo
  br i1 %i.yq, label %.critedge2, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit5.i.i439

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit5.i.i439: ; preds = %bb.ep
  %i.yr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i438, i64 36
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !145
  %i.yt = getelementptr inbounds nuw i8, ptr %.19.i.i.i321, i64 36
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !145
  %i.yv = icmp slt i32 %i.ys, %i.yu
  br i1 %i.yv, label %bb.eq, label %.critedge2

bb.eq:                                            ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit5.i.i439, %._crit_edge.i.thread.i436, %._crit_edge.thread.i.i449
  %.sroa.4.0.i.ph.i444 = phi ptr [ %.020.lcssa33.i.i437, %._crit_edge.i.thread.i436 ], [ %.020.lcssa33.i.i437, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit5.i.i439 ], [ %.020.lcssa34.i.i450, %._crit_edge.thread.i.i449 ] ; 4 uses
  %i.yw = icmp eq ptr %.sroa.4.0.i.ph.i444, %i.dv
  br i1 %i.yw, label %_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i445, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.yx = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i444, i64 32
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !144 ; 2 uses
  %i.yz = icmp slt i32 %i.xt, %i.yy
  br i1 %i.yz, label %_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i445, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.za = icmp slt i32 %i.yy, %i.xt
  br i1 %i.za, label %_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i445, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.zb = getelementptr inbounds nuw i8, ptr %.19.i.i.i321, i64 36
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !145
  %i.zd = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i444, i64 36
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !145
  %i.zf = icmp slt i32 %i.zc, %i.ze
  br label %_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i445

_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i445: ; preds = %bb.et, %bb.es, %bb.er, %bb.eq
  %i.zg = phi i1 [ %i.zf, %bb.et ], [ true, %bb.eq ], [ true, %bb.er ], [ false, %bb.es ]
  %i.zh = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %.noexc454 unwind label %bb.ei ; 2 uses

.noexc454:                                        ; preds = %_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i445
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 32
  %i.zj = load i64, ptr %i.xs, align 4
  store i64 %i.zj, ptr %i.zi, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.zg, ptr noundef nonnull %i.zh, ptr noundef nonnull %.sroa.4.0.i.ph.i444, ptr noundef nonnull align 8 dereferenceable(32) %i.dv) #28
  %i.zk = load i64, ptr %i.dy, align 8, !tbaa !114
  %i.zl = add i64 %i.zk, 1
  store i64 %i.zl, ptr %i.dy, align 8, !tbaa !114
  br label %.critedge2

.critedge2:                                       ; preds = %bb.ep, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit5.i.i439, %.noexc454, %.lr.ph575.split, %bb.ek, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i325, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_.exit.i.i324, %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit.thread, %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit329
  %storemerge62 = add nuw nsw i32 %storemerge62.in.in.sroa.speculated573, 1 ; 2 uses
  %i.zm = load i32, ptr %i.f, align 8, !tbaa !109 ; 2 uses
  %i.zn = icmp slt i32 %storemerge62, %i.zm
  br i1 %i.zn, label %.lr.ph575.splitthread-pre-split, label %._crit_edge576, !llvm.loop !310

.body:                                            ; preds = %bb.du, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i414, %bb.dt, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i404, %bb.cv, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i394, %bb.cu, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i384, %bb.bw, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i374, %bb.bv, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i364, %bb.ax, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i354, %bb.aw, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i344, %bb.x, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i334, %bb.w, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i, %bb.ei
  %.pn74.pn = phi { ptr, i32 } [ %i.cv, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i334 ], [ %i.xj, %bb.ei ], [ %i.bi, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i ], [ %i.sj, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i404 ], [ %i.qd, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i394 ], [ %i.oi, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i384 ], [ %i.mc, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i374 ], [ %i.kh, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i364 ], [ %i.id, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i354 ], [ %i.gi, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i344 ], [ %i.da, %bb.w ], [ %i.db, %bb.x ], [ %i.ih, %bb.aw ], [ %i.ii, %bb.ax ], [ %i.mg, %bb.bv ], [ %i.mh, %bb.bw ], [ %i.qh, %bb.cu ], [ %i.qi, %bb.cv ], [ %i.ui, %bb.dt ], [ %i.uj, %bb.du ], [ %i.ue, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i414 ]
  call void @_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn74.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail12DpSeamFinder16resolveConflictsERKNS_3MatES4_NS_6Point_IiEES6_RS2_S7_(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, i64 %3, i64 %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.cv::Point_", align 8        ; 7 uses
  %8 = alloca %"class.cv::Point_", align 8        ; 7 uses
  %9 = alloca %"class.std::vector.20", align 8    ; 9 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %10 = alloca %"struct.std::pair.54", align 8    ; 4 uses
  %11 = alloca %"struct.std::pair.54", align 8    ; 4 uses
  %.sroa.096.0.extract.trunc = trunc i64 %3 to i32
  %.sroa.397.0.extract.shift = lshr i64 %3, 32
  %.sroa.397.0.extract.trunc = trunc nuw i64 %.sroa.397.0.extract.shift to i32
  %.sroa.095.0.extract.trunc = trunc i64 %4 to i32
  %.sroa.3.0.extract.shift = lshr i64 %4, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !107
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv6detail12DpSeamFinder16computeGradientsERKNS_3MatES4_(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2016 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2040 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1920 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1944 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1716 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1736 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1840 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1992 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !112
  %.not277 = icmp eq ptr %i.u, %i.g
  br i1 %.not277, label %.split267.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.c
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !112  ; 2 uses
  %.not279406 = icmp eq ptr %i.v, %i.g
  br i1 %.not279406, label %.split267.us, label %.lr.ph

.lr.ph:                                           ; preds = %.split.preheader, %.loopexit
  %i.w = phi ptr [ %i.kw, %.loopexit ], [ %i.v, %.split.preheader ]
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !115  ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0205.0253 = phi ptr [ %i.w, %.lr.ph ], [ %i.ak, %bb.f ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0205.0253, i64 32
  %i.z = load i32, ptr %i.y, align 4, !tbaa !144  ; 7 uses
  %i.aa = sext i32 %i.z to i64                    ; 13 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !139 ; 2 uses
  %i.ad = and i32 %i.ac, 4
  %.not115 = icmp eq i32 %i.ad, 0
  br i1 %.not115, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0205.0253, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !145 ; 4 uses
  %i.ag = and i32 %i.ac, -5
  %i.ah = sext i32 %i.af to i64                   ; 9 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !139 ; 2 uses
  %.not116 = icmp eq i32 %i.ag, %i.aj
  br i1 %.not116, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ak = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0205.0253) #31 ; 2 uses
  %.not280 = icmp eq ptr %i.ak, %i.g
  br i1 %.not280, label %.split267.us, label %bb.d, !llvm.loop !313

bb.g:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0205.0253, i64 32
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aa
  %i.an = load i64, ptr %i.al, align 4            ; 3 uses
  %i.ao = add nsw i32 %i.z, 1                     ; 6 uses
  %i.ap = add nsw i32 %i.af, 1                    ; 6 uses
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !111 ; 3 uses
  %.not11.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not11.i.i.i.i, label %_ZN2cv6detail12DpSeamFinder18hasOnlyOneNeighborEi.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aq, %bb.g ] ; 3 uses
  %.0812.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.g, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !144
  %i.at = icmp slt i32 %i.as, %i.z                ; 2 uses
  %.sink.i.i.i.i = select i1 %i.at, i64 24, i64 16
  %.19.i.i.i.i = select i1 %i.at, ptr %.0812.i.i.i.i, ptr %.013.i.i.i.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !146 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i7.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i7.i:                                  ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i7.i
  %.013.i.i.i8.i = phi ptr [ %.1.i.i.i15.i, %.lr.ph.i.i.i7.i ], [ %i.aq, %.lr.ph.i.i.i.i ] ; 3 uses
  %.0812.i.i.i9.i = phi ptr [ %spec.select32.i, %.lr.ph.i.i.i7.i ], [ %i.g, %.lr.ph.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i8.i, i64 32
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !144
  %i.ax = icmp slt i32 %i.z, %i.aw                ; 2 uses
  %spec.select.i = select i1 %i.ax, i64 16, i64 24
  %spec.select32.i = select i1 %i.ax, ptr %.013.i.i.i8.i, ptr %.0812.i.i.i9.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i8.i, i64 %spec.select.i
  %.1.i.i.i15.i = load ptr, ptr %i.ay, align 8, !tbaa !146 ; 2 uses
  %.not.i.i.i16.i = icmp eq ptr %.1.i.i.i15.i, null
  br i1 %.not.i.i.i16.i, label %_ZN2cv6detail12DpSeamFinder18hasOnlyOneNeighborEi.exit, label %.lr.ph.i.i.i7.i, !llvm.loop !8

_ZN2cv6detail12DpSeamFinder18hasOnlyOneNeighborEi.exit: ; preds = %.lr.ph.i.i.i7.i, %bb.g
  %.08.lcssa.i.i.i31.i = phi ptr [ %i.g, %bb.g ], [ %.19.i.i.i.i, %.lr.ph.i.i.i7.i ]
  %.08.lcssa.i.i.i17.i = phi ptr [ %i.g, %bb.g ], [ %spec.select32.i, %.lr.ph.i.i.i7.i ]
  %i.az = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i31.i) #31
  %i.ba = icmp eq ptr %i.az, %.08.lcssa.i.i.i17.i
  br i1 %i.ba, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN2cv6detail12DpSeamFinder18hasOnlyOneNeighborEi.exit
  %i.bb = load ptr, ptr %i.m, align 8, !tbaa !47  ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.aa ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !141 ; 2 uses
  %i.bf = load ptr, ptr %i.n, align 8, !tbaa !47  ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.aa ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !141 ; 4 uses
  %i.bj = icmp slt i32 %i.be, %i.bi
  br i1 %i.bj, label %.lr.ph258, label %._crit_edge259

.lr.ph258:                                        ; preds = %bb.h
  %i.bk = load i32, ptr %i.bc, align 4, !tbaa !140
  %i.bl = load i32, ptr %i.bg, align 4, !tbaa !140 ; 3 uses
  %i.bm = icmp slt i32 %i.bk, %i.bl
  br i1 %i.bm, label %.lr.ph258.split.preheader, label %._crit_edge259

.lr.ph258.split.preheader:                        ; preds = %.lr.ph258
  %i.bn = sext i32 %i.be to i64
  br label %.lr.ph258.split

._crit_edge259:                                   ; preds = %._crit_edge, %.lr.ph258, %bb.h
  %i.bo = phi i32 [ %i.bi, %bb.h ], [ %i.bi, %.lr.ph258 ], [ %i.by, %._crit_edge ]
  %i.bp = icmp eq i32 %i.aj, 1
  %i.bq = select i1 %i.bp, i32 2, i32 1
  store i32 %i.bq, ptr %i.am, align 4, !tbaa !139
  br label %bb.u

.lr.ph258.split:                                  ; preds = %.lr.ph258.split.preheader, %._crit_edge
  %i.br = phi i32 [ %i.bi, %.lr.ph258.split.preheader ], [ %i.by, %._crit_edge ]
  %i.bs = phi i32 [ %i.bl, %.lr.ph258.split.preheader ], [ %i.bz, %._crit_edge ] ; 2 uses
  %i.bt = phi i32 [ %i.bl, %.lr.ph258.split.preheader ], [ %i.ca, %._crit_edge ] ; 2 uses
  %indvars.iv289 = phi i64 [ %i.bn, %.lr.ph258.split.preheader ], [ %indvars.iv.next290, %._crit_edge ] ; 2 uses
  %i.bu = load i32, ptr %i.bc, align 4, !tbaa !140 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.bt
  br i1 %i.bv, label %.lr.ph255, label %._crit_edge

.lr.ph255:                                        ; preds = %.lr.ph258.split
  %i.bw = load ptr, ptr %i.p, align 8, !tbaa !64
  %i.bx = sext i32 %i.bu to i64
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre319 = load i32, ptr %i.bh, align 4, !tbaa !141
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph258.split
  %i.by = phi i32 [ %.pre319, %._crit_edge.loopexit ], [ %i.br, %.lr.ph258.split ] ; 3 uses
  %i.bz = phi i32 [ %i.cl, %._crit_edge.loopexit ], [ %i.bs, %.lr.ph258.split ]
  %i.ca = phi i32 [ %i.cl, %._crit_edge.loopexit ], [ %i.bt, %.lr.ph258.split ]
  %indvars.iv.next290 = add nsw i64 %indvars.iv289, 1 ; 2 uses
  %i.cb = sext i32 %i.by to i64
  %i.cc = icmp slt i64 %indvars.iv.next290, %i.cb
  br i1 %i.cc, label %.lr.ph258.split, label %._crit_edge259, !llvm.loop !314

bb.i:                                             ; preds = %.lr.ph255, %bb.k
  %i.cd = phi i32 [ %i.bs, %.lr.ph255 ], [ %i.cl, %bb.k ]
  %indvars.iv = phi i64 [ %i.bx, %.lr.ph255 ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.ce = load i32, ptr %i.o, align 4, !tbaa !63
  %i.cf = icmp slt i32 %i.ce, 2
  %i.cg = load i64, ptr %i.q, align 8
  %i.ch = mul i64 %i.cg, %indvars.iv289
  %.sink.idx.i = select i1 %i.cf, i64 0, i64 %i.ch
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.sink.idx.i
end_hunk_1
