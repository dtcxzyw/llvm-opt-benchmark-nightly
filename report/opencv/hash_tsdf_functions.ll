Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hash_tsdf_functions?download=true
inline.NumInlined: 1895
inline.NumDeleted: 775
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd:bb.a
_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit:    ; preds = %bb.b
  %i.l = load <2 x ptr>, ptr %i.b, align 8, !tbaa !86
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  store <2 x ptr> %i.l, ptr %i.a, align 8, !tbaa !86
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %2, align 8, !tbaa !102
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  %.not.i.i.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit
  %i.p = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.q = load <2 x ptr>, ptr %i.a, align 8, !tbaa !86
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !86
  br label %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !67   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.body.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef 3)
          to label %.body.i unwind label %bb.j    ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25
  unreachable

.body.i:                                          ; preds = %bb.i, %bb.h
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %2) #21
  br label %.body

_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit: ; preds = %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.thread, %bb.g, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit
  %i.w = phi ptr [ %i.e, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.thread ], [ %i.o, %bb.g ], [ %i.o, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit ]
  %i.x = phi ptr [ %i.d, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.thread ], [ %i.n, %bb.g ], [ %i.n, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit ] ; 2 uses
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef -1.000000e+00)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %2, align 8, !tbaa !102
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !67   ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.y, null
  br i1 %.not.i.i5, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.m, !inline_history !129 ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #25, !inline_history !129
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.k, %bb.l
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %2) #21, !inline_history !129
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.p:                                             ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #21
  br label %.body

.body:                                            ; preds = %.body.i, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.p ], [ %i.r, %.body.i ]
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %.not.i7 = icmp eq ptr %i.ah, null
  br i1 %.not.i7, label %_ZNSt14_Function_baseD2Ev.exit8, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit8:                  ; preds = %.body, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @_ZN2cv3Mat6resizeEm(ptr noundef nonnull align 8 dereferenceable(208), i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt13unordered_setIN2cv3VecIiLi3EEENS0_9tsdf_hashESt8equal_toIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN2cv3VecIiLi3EEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_9tsdf_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !90 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #23
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN2cv3VecIiLi3EEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_9tsdf_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt10_HashtableIN2cv3VecIiLi3EEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_9tsdf_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !55
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIN2cv3VecIiLi3EEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_9tsdf_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN2cv3VecIiLi3EEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_9tsdf_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !55
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZNSt10_HashtableIN2cv3VecIiLi3EEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_9tsdf_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN2cv3VecIiLi3EEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_9tsdf_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN2cv3VecIiLi3EEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS0_9tsdf_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !128
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv19allocateVolumeUnitsERKNS_4UMatEfNS_7Affine3IfEERKNS_4MatxIfLi4ELi4EEERKNS_4IntrERNS_13CustomHashSetEifff(ptr noundef nonnull align 8 dereferenceable(184) %0, float noundef %1, ptr noundef byval(%"class.cv::Affine3") align 8 %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef %6, float noundef %7, float noundef %8, float noundef %9) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %12 = alloca %"class.cv::Matx.0", align 8       ; 13 uses
  %i.a = alloca float, align 4                    ; 2 uses
  %i.b = alloca float, align 4                    ; 2 uses
  %13 = alloca %"class.cv::Mat_", align 8         ; 13 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %15 = alloca %"struct.cv::Intr::Reprojector", align 8 ; 6 uses
  %16 = alloca %"class.cv::Affine3", align 16     ; 8 uses
  %17 = alloca %"class.cv::Point3_.4", align 4    ; 7 uses
  %18 = alloca %"class.std::recursive_mutex", align 8 ; 9 uses
  %19 = alloca %"class.cv::CustomHashSet", align 8 ; 15 uses
  %20 = alloca %class.anon.43, align 8            ; 13 uses
  %21 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %22 = alloca %"class.cv::Size_", align 4        ; 6 uses
  %23 = alloca %"class.cv::Size_", align 4        ; 6 uses
  %i.e = alloca i8, align 1                       ; 10 uses
  %24 = alloca %"class.cv::Range", align 4        ; 6 uses
  %25 = alloca %"class.std::function", align 8    ; 10 uses
  %26 = alloca %"class.cv::CustomHashSet", align 8 ; 9 uses
  store float %8, ptr %i.a, align 4, !tbaa !41
  store float %9, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %14, ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 16777216)
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %13) #21
  %i.f = load i32, ptr %13, align 8, !tbaa !39
  %i.g = and i32 %i.f, -4096
  %i.h = or disjoint i32 %i.g, 5
  store i32 %i.h, ptr %13, align 8, !tbaa !39
  %i.i = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %bb.b unwind label %.body      ; 0 uses

.body:                                            ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.aw

bb.b:                                             ; preds = %bb.a
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i32 %6, ptr %i.c, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.k = fdiv float 1.000000e+00, %1
  store float %i.k, ptr %i.d, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %4, align 4, !tbaa !41
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !41
  %i.l = fdiv <2 x float> splat (float 1.000000e+00), %.sroa.0.0.copyload.i
  store <2 x float> %i.l, ptr %15, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 8
  store <2 x float> %.sroa.2.0.copyload.i, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21, !noalias !252
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %12, i8 0, i64 64, i1 false), !tbaa !41, !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21, !noalias !252
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 -1056833531, ptr %10, align 8, !tbaa !42, !noalias !252
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %2, ptr %i.o, align 8, !tbaa !32, !noalias !252
  store i64 17179869188, ptr %i.n, align 8, !tbaa !29, !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21, !noalias !252
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 -1040056315, ptr %11, align 8, !tbaa !42, !noalias !252
  store ptr %12, ptr %i.p, align 8, !tbaa !32, !noalias !252
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 17179869188, ptr %i.q, align 8, !tbaa !29, !noalias !252
  %i.r = invoke noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  %i.s = fcmp une double %i.r, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21, !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21, !noalias !252
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %.sroa.0.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 4
  %.sroa.0.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.t = load <2 x float>, ptr %12, align 8, !noalias !253
  %i.u = load <2 x float>, ptr %.sroa.0.i.sroa.5.0..sroa_idx, align 4, !noalias !253
  %i.v = load <2 x float>, ptr %.sroa.0.i.sroa.6.0..sroa_idx, align 8, !noalias !253
  %.sroa.0.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.0.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.w = load <2 x float>, ptr %.sroa.0.i.sroa.8.0..sroa_idx, align 8, !noalias !253
  %i.x = load <2 x float>, ptr %.sroa.0.i.sroa.9.0..sroa_idx, align 4, !noalias !253
  %.sroa.0.i.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 28
  %.sroa.0.i.sroa.11.0.copyload = load float, ptr %.sroa.0.i.sroa.11.0..sroa_idx, align 4, !noalias !253
  %.sroa.0.i.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 32
  %.sroa.0.i.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.y = load <2 x float>, ptr %.sroa.0.i.sroa.12.0..sroa_idx, align 8, !noalias !253
  %i.z = load <2 x float>, ptr %.sroa.0.i.sroa.13.0..sroa_idx, align 4, !noalias !253
  %.sroa.0.i.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 44
  %.sroa.0.i.sroa.15.0.copyload = load float, ptr %.sroa.0.i.sroa.15.0..sroa_idx, align 4, !noalias !253
  %i.aa = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ab = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.c
  %.sroa.0.i.sroa.11.0 = phi float [ %.sroa.0.i.sroa.11.0.copyload, %bb.c ], [ 0.000000e+00, %.noexc ]
  %.sroa.0.i.sroa.15.0 = phi float [ %.sroa.0.i.sroa.15.0.copyload, %bb.c ], [ 0.000000e+00, %.noexc ]
  %i.ac = phi <4 x float> [ %i.ab, %bb.c ], [ zeroinitializer, %.noexc ]
  %i.ad = phi <4 x float> [ %i.aa, %bb.c ], [ zeroinitializer, %.noexc ]
  %i.ae = phi <2 x float> [ %i.t, %bb.c ], [ zeroinitializer, %.noexc ] ; 2 uses
  %i.af = phi <2 x float> [ %i.x, %bb.c ], [ zeroinitializer, %.noexc ] ; 2 uses
  %i.ag = phi <2 x float> [ %i.w, %bb.c ], [ zeroinitializer, %.noexc ] ; 2 uses
  %i.ah = phi <2 x float> [ %i.z, %bb.c ], [ zeroinitializer, %.noexc ] ; 2 uses
  %i.ai = phi <2 x float> [ %i.y, %bb.c ], [ zeroinitializer, %.noexc ] ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ak = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.al = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.am = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.an = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21, !noalias !252
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.960.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.1061.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 36
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.6.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.sroa.8.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 32
  %.sroa.10.0..sroa_idx14.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.10.0..sroa_idx14.i.i.i, align 16, !alias.scope !254
  %i.ao = load <8 x float>, ptr %3, align 4       ; 7 uses
  %i.ap = load <4 x float>, ptr %.sroa.12.0..sroa_idx, align 4 ; 4 uses
  %i.aq = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ar = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float poison>, <4 x float> %i.aq, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.as = shufflevector <8 x float> %i.ao, <8 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.at = shufflevector <8 x float> %i.ao, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison, float poison>, <4 x i32> <i32 8, i32 9, i32 10, i32 3>
  %i.au = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ar, <4 x float> %i.at, <4 x float> zeroinitializer)
  %i.av = shufflevector <8 x float> %i.ao, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.aw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.av, <4 x float> %i.au)
  %i.ax = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ay = shufflevector <8 x float> %i.ao, <8 x float> %i.ax, <4 x i32> <i32 4, i32 5, i32 6, i32 11>
  %i.az = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.ay, <4 x float> %i.aw)
  %i.ba = insertelement <4 x float> %i.ap, float 1.000000e+00, i64 3
  %i.bb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> %i.ac, <4 x float> %i.az)
  store <4 x float> %i.bb, ptr %16, align 16, !alias.scope !254
  %i.bc = load <2 x float>, ptr %.sroa.960.0..sroa_idx, align 4 ; 2 uses
  %i.bd = load <2 x float>, ptr %.sroa.556.0..sroa_idx, align 4 ; 2 uses
  %i.be = load <2 x float>, ptr %.sroa.13.0..sroa_idx, align 4 ; 2 uses
  %i.bf = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bg = shufflevector <4 x float> %i.as, <4 x float> %i.bf, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %i.bh = shufflevector <8 x float> %i.ao, <8 x float> poison, <4 x i32> <i32 4, i32 poison, i32 poison, i32 poison>
  %i.bi = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bj = shufflevector <4 x float> %i.bh, <4 x float> %i.bi, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %i.bk = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %i.bm = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bn = shufflevector <4 x float> %i.ap, <4 x float> %i.bm, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %i.bo = insertelement <4 x float> %i.bn, float %.sroa.0.i.sroa.11.0, i64 3
  %i.bp = load <4 x float>, ptr %.sroa.657.0..sroa_idx, align 4
  %i.bq = load <1 x float>, ptr %.sroa.758.0..sroa_idx, align 4
  %i.br = load <4 x float>, ptr %.sroa.1061.0..sroa_idx, align 4 ; 3 uses
  %i.bs = load <4 x float>, ptr %.sroa.14.0..sroa_idx, align 4 ; 3 uses
  %i.bt = shufflevector <2 x float> %i.bd, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bu = shufflevector <8 x float> %i.ao, <8 x float> %i.bt, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> %i.bp, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> %i.br, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bx = shufflevector <2 x float> %i.bc, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.by = shufflevector <8 x float> %i.ao, <8 x float> %i.bx, <4 x i32> <i32 4, i32 8, i32 poison, i32 poison>
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> %i.br, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cb = shufflevector <2 x float> %i.ai, <2 x float> %i.ag, <2 x i32> <i32 0, i32 2>
  %i.cc = shufflevector <1 x float> %i.bq, <1 x float> poison, <2 x i32> zeroinitializer
  %i.cd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cc, <2 x float> zeroinitializer)
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cf = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> %i.bw, <4 x float> %i.cf)
  %i.ch = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.ca, <4 x float> %i.cg)
  %i.ci = shufflevector <4 x float> %i.bg, <4 x float> %i.br, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cj = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ck = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.ci, <4 x float> %i.cj)
  %i.cl = shufflevector <4 x float> %i.bj, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %i.cl, <4 x float> %i.ck)
  %i.cn = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %i.cp = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cq = shufflevector <4 x float> %i.ap, <4 x float> %i.cp, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.cs = insertelement <4 x float> %i.cr, float %.sroa.0.i.sroa.15.0, i64 3
  %i.ct = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.co, <4 x float> %i.cs, <4 x float> %i.ch)
  %i.cu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> %i.bo, <4 x float> %i.cm)
  store <4 x float> %i.cu, ptr %.sroa.6.0..sroa_idx6.i.i.i, align 16, !alias.scope !254
  store <4 x float> %i.ct, ptr %.sroa.8.0..sroa_idx10.i.i.i, align 16, !alias.scope !254
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store float %7, ptr %17, align 4, !tbaa !45
  %i.cv = getelementptr inbounds nuw i8, ptr %17, i64 4
  store float %7, ptr %i.cv, align 4, !tbaa !46
  %i.cw = getelementptr inbounds nuw i8, ptr %17, i64 8
  store float %7, ptr %i.cw, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %18, i8 0, i64 40, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 1, ptr %i.cx, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  invoke void @_ZN2cv13CustomHashSetC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %19)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  store ptr %i.c, ptr %20, align 8, !tbaa !69
  %i.cy = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %13, ptr %i.cy, align 8, !tbaa !71
  %i.cz = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.d, ptr %i.cz, align 8, !tbaa !73
  %i.da = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %i.a, ptr %i.da, align 8, !tbaa !73
  %i.db = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr %15, ptr %i.db, align 8, !tbaa !75
  %i.dc = getelementptr inbounds nuw i8, ptr %20, i64 40
  store ptr %16, ptr %i.dc, align 8, !tbaa !77
  %i.dd = getelementptr inbounds nuw i8, ptr %20, i64 48
  store ptr %17, ptr %i.dd, align 8, !tbaa !79
  %i.de = getelementptr inbounds nuw i8, ptr %20, i64 56
  store ptr %i.b, ptr %i.de, align 8, !tbaa !73
  %i.df = getelementptr inbounds nuw i8, ptr %20, i64 64
  store ptr %5, ptr %i.df, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !132 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !62 ; 2 uses
  store i32 0, ptr %21, align 4, !tbaa !134
  %i.dk = getelementptr inbounds nuw i8, ptr %21, i64 4
  store i32 0, ptr %i.dk, align 4, !tbaa !135
  %i.dl = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %i.dh, ptr %i.dl, align 4, !tbaa !136
  %i.dm = getelementptr inbounds nuw i8, ptr %21, i64 12
  store i32 %i.dj, ptr %i.dm, align 4, !tbaa !255
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  store i32 32, ptr %22, align 4, !tbaa !137
  %i.dn = getelementptr inbounds nuw i8, ptr %22, i64 4
  store i32 32, ptr %i.dn, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.do = add i32 %i.dh, 31
  %i.dp = lshr i32 %i.do, 5
  %i.dq = add i32 %i.dj, 31
  %i.dr = lshr i32 %i.dq, 5
  store i32 %i.dp, ptr %23, align 4, !tbaa !137
  %i.ds = getelementptr inbounds nuw i8, ptr %23, i64 4 ; 2 uses
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i8 0, ptr %i.e, align 1, !tbaa !139
  %i.dt = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %24, i64 4
  %i.dx = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  br label %bb.k

.critedge:                                        ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.dy = load i32, ptr %i.dt, align 8, !tbaa !150
  %i.dz = shl nsw i32 %i.dy, 1                    ; 2 uses
  store i32 %i.dz, ptr %i.dt, align 8, !tbaa !150
  %i.ea = sext i32 %i.dz to i64                   ; 4 uses
  %i.eb = load ptr, ptr %i.dv, align 8, !tbaa !151 ; 2 uses
  %i.ec = load ptr, ptr %i.du, align 8, !tbaa !152 ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 4                 ; 3 uses
  %i.eh = icmp ult i64 %i.eg, %i.ea
  br i1 %i.eh, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.ei = sub nuw nsw i64 %i.ea, %i.eg
  invoke void @_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.du, i64 noundef %i.ei)
          to label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %.critedge
  %i.ej = icmp ugt i64 %i.eg, %i.ea
  br i1 %i.ej, label %bb.h, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %i.ea ; 2 uses
  %.not.i.i = icmp eq ptr %i.eb, %i.ek
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv3VecIiLi4EEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv3VecIiLi4EEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.ek, ptr %i.dv, align 8, !tbaa !151
  br label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN2cv3VecIiLi4EEES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.h, %bb.g, %bb.f
  store i8 0, ptr %i.e, align 1, !tbaa !139
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.j:                                             ; preds = %bb.d
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.k:                                             ; preds = %bb.e, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  %i.en = load i32, ptr %i.ds, align 4, !tbaa !138
  store i32 0, ptr %24, align 4, !tbaa !64
  store i32 %i.en, ptr %i.dw, align 4, !tbaa !65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, i8 0, i64 32, i1 false)
  %i.eo = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24
          to label %bb.o unwind label %bb.l       ; 8 uses

bb.l:                                             ; preds = %bb.k
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = load ptr, ptr %i.dx, align 8, !tbaa !67 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i33, label %.body34, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.er = invoke noundef zeroext i1 %i.eq(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %25, i32 noundef 3)
          to label %.body34 unwind label %bb.n    ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.es = landingpad { ptr, i32 }
          catch ptr null
  %i.et = extractvalue { ptr, i32 } %i.es, 0
  call void @__clang_call_terminate(ptr %i.et) #25
  unreachable

bb.o:                                             ; preds = %bb.k
  store ptr %23, ptr %i.eo, align 16, !tbaa !154
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %22, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !154
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store ptr %21, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !156
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store ptr %20, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !86
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  store ptr %18, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !83
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  store ptr %19, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !131
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  store ptr %i.e, ptr %.sroa.10.0..sroa_idx, align 16, !tbaa !158
  store ptr %i.eo, ptr %25, align 8, !tbaa !86
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_19allocateVolumeUnitsERKNS0_4UMatEfNS0_7Affine3IfEERKNS0_4MatxIfLi4ELi4EEERKNS0_4IntrERNS0_13CustomHashSetEifffE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_19allocateVolumeUnitsERKNS0_4UMatEfNS0_7Affine3IfEERKNS0_4MatxIfLi4ELi4EEERKNS0_4IntrERNS0_13CustomHashSetEifffE3$_0E9_M_invokeERKSt9_Any_dataS3_">, ptr %i.dx, align 8, !tbaa !86
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %24, ptr noundef align 8 %25)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.eu = load ptr, ptr %i.dx, align 8, !tbaa !67 ; 2 uses
  %.not.i = icmp eq ptr %i.eu, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ev = invoke noundef zeroext i1 %i.eu(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %25, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  %i.ey = load i8, ptr %i.e, align 1, !tbaa !139, !range !159, !noundef !92
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %.critedge, label %bb.s, !llvm.loop !248

bb.s:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %26, i64 40
  %i.fj = getelementptr inbounds nuw i8, ptr %26, i64 48
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 7 uses
  br label %bb.z

.critedge179:                                     ; preds = %_ZN2cv13CustomHashSetD2Ev.exit
  %i.fl = load i32, ptr %i.fa, align 8, !tbaa !150
  %i.fm = shl nsw i32 %i.fl, 1                    ; 2 uses
  store i32 %i.fm, ptr %i.fa, align 8, !tbaa !150
  %i.fn = sext i32 %i.fm to i64                   ; 4 uses
  %i.fo = load ptr, ptr %i.fc, align 8, !tbaa !151 ; 2 uses
  %i.fp = load ptr, ptr %i.fb, align 8, !tbaa !152 ; 2 uses
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = ashr exact i64 %i.fs, 4                 ; 3 uses
  %i.fu = icmp ult i64 %i.ft, %i.fn
  br i1 %i.fu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.critedge179
  %i.fv = sub nuw nsw i64 %i.fn, %i.ft
  invoke void @_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, i64 noundef %i.fv)
          to label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.critedge179
  %i.fw = icmp ugt i64 %i.ft, %i.fn
  br i1 %i.fw, label %bb.v, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit39

bb.v:                                             ; preds = %bb.u
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fp, i64 %i.fn ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.fo, %i.fx
  br i1 %.not.i.i36, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit39, label %_ZSt8_DestroyIPN2cv3VecIiLi4EEES2_EvT_S4_RSaIT0_E.exit.i.i37

_ZSt8_DestroyIPN2cv3VecIiLi4EEES2_EvT_S4_RSaIT0_E.exit.i.i37: ; preds = %bb.v
  store ptr %i.fx, ptr %i.fc, align 8, !tbaa !151
  br label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit39

_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit39: ; preds = %_ZSt8_DestroyIPN2cv3VecIiLi4EEES2_EvT_S4_RSaIT0_E.exit.i.i37, %bb.v, %bb.u, %bb.t
  store i8 0, ptr %i.e, align 1, !tbaa !139
  br label %bb.z

bb.w:                                             ; preds = %bb.o
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = load ptr, ptr %i.dx, align 8, !tbaa !67 ; 2 uses
  %.not.i40 = icmp eq ptr %i.fz, null
  br i1 %.not.i40, label %.body34, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ga = invoke noundef zeroext i1 %i.fz(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %25, i32 noundef 3)
          to label %.body34 unwind label %bb.y    ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #25
  unreachable

.body34:                                          ; preds = %bb.x, %bb.w, %bb.m, %bb.l
  %.pn23 = phi { ptr, i32 } [ %i.ep, %bb.l ], [ %i.fy, %bb.x ], [ %i.ep, %bb.m ], [ %i.fy, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %.body44

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.t, %bb.f, %.noexc.i.i.i
  %lpad.loopexit.split-lp199 = landingpad { ptr, i32 }
          cleanup
  br label %.body44

bb.z:                                             ; preds = %bb.s, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit39
  %i.gd = load ptr, ptr %i.fd, align 8, !tbaa !160 ; 2 uses
  %i.ge = load ptr, ptr %19, align 8, !tbaa !161  ; 3 uses
  %i.gf = ptrtoint ptr %i.gd to i64               ; 2 uses
  %i.gg = ptrtoint ptr %i.ge to i64               ; 2 uses
  %i.gh = sub i64 %i.gf, %i.gg                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %26, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.gd, %i.ge
  br i1 %.not.i.i.i.i.i, label %.noexc43, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gi = icmp ugt i64 %i.gh, 9223372036854775804
  br i1 %i.gi, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !162

.noexc.i.i.i:                                     ; preds = %bb.aa
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.gj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gh) #24
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc43_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc43_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %19, align 8, !tbaa !69   ; 2 uses
  %.pre109 = load ptr, ptr %i.fd, align 8, !tbaa !69
  %.pre112 = ptrtoint ptr %.pre109 to i64
  %.pre113 = ptrtoint ptr %.pre to i64
  br label %.noexc43

.noexc43:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc43_crit_edge, %bb.z
  %.pre-phi114 = phi i64 [ %.pre113, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc43_crit_edge ], [ %i.gg, %bb.z ]
  %.pre-phi = phi i64 [ %.pre112, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc43_crit_edge ], [ %i.gf, %bb.z ]
  %i.gk = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc43_crit_edge ], [ %i.ge, %bb.z ] ; 2 uses
  %i.gl = phi ptr [ %i.gj, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc43_crit_edge ], [ null, %bb.z ] ; 9 uses
  store ptr %i.gl, ptr %26, align 8, !tbaa !161
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gh
  store ptr %i.gm, ptr %i.ff, align 8, !tbaa !163
  %i.gn = sub i64 %.pre-phi, %.pre-phi114         ; 4 uses
  %i.go = icmp sgt i64 %i.gn, 4
  br i1 %i.go, label %bb.ab, label %bb.ac, !prof !256

bb.ab:                                            ; preds = %.noexc43
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.gl, ptr align 4 %i.gk, i64 %i.gn, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.ac:                                            ; preds = %.noexc43
  %i.gp = icmp eq i64 %i.gn, 4
  br i1 %i.gp, label %bb.ad, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.gq = load i32, ptr %i.gk, align 4, !tbaa !29
  store i32 %i.gq, ptr %i.gl, align 4, !tbaa !29
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i:              ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.gr = getelementptr inbounds i8, ptr %i.gl, i64 %i.gn
  store ptr %i.gr, ptr %i.fe, align 8, !tbaa !160
  %i.gs = load ptr, ptr %i.dv, align 8, !tbaa !151 ; 3 uses
  %i.gt = load ptr, ptr %i.du, align 8, !tbaa !152 ; 3 uses
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i8 0, i64 24, i1 false)
  %.not.i.i.i.i5.i = icmp eq ptr %i.gs, %i.gt
  br i1 %.not.i.i.i.i5.i, label %.noexc7.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i
  %i.gx = icmp ugt i64 %i.gw, 9223372036854775792
  br i1 %i.gx, label %.noexc.i.i6.i, label %_ZNSt15__new_allocatorIN2cv3VecIiLi4EEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !162

.noexc.i.i6.i:                                    ; preds = %bb.ae
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc.i unwind label %.loopexit.split-lp77.loopexit.split-lp

.noexc.i:                                         ; preds = %.noexc.i.i6.i
  unreachable

_ZNSt15__new_allocatorIN2cv3VecIiLi4EEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.ae
  %i.gy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gw) #24
          to label %_ZNSt15__new_allocatorIN2cv3VecIiLi4EEEE8allocateEmPKv.exit.i.i.i.i.i..noexc7.i_crit_edge unwind label %.loopexit.split-lp77.loopexit.split-lp

_ZNSt15__new_allocatorIN2cv3VecIiLi4EEEE8allocateEmPKv.exit.i.i.i.i.i..noexc7.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3VecIiLi4EEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre110 = load ptr, ptr %i.du, align 8, !tbaa !164
  %.pre111 = load ptr, ptr %i.dv, align 8, !tbaa !164
  br label %.noexc7.i

.noexc7.i:                                        ; preds = %_ZNSt15__new_allocatorIN2cv3VecIiLi4EEEE8allocateEmPKv.exit.i.i.i.i.i..noexc7.i_crit_edge, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i
  %i.gz = phi ptr [ %i.gs, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i ], [ %.pre111, %_ZNSt15__new_allocatorIN2cv3VecIiLi4EEEE8allocateEmPKv.exit.i.i.i.i.i..noexc7.i_crit_edge ] ; 2 uses
  %i.ha = phi ptr [ %i.gt, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i ], [ %.pre110, %_ZNSt15__new_allocatorIN2cv3VecIiLi4EEEE8allocateEmPKv.exit.i.i.i.i.i..noexc7.i_crit_edge ] ; 2 uses
  %i.hb = phi ptr [ null, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i ], [ %i.gy, %_ZNSt15__new_allocatorIN2cv3VecIiLi4EEEE8allocateEmPKv.exit.i.i.i.i.i..noexc7.i_crit_edge ] ; 7 uses
  store ptr %i.hb, ptr %i.fg, align 8, !tbaa !152
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gw
  store ptr %i.hc, ptr %i.fi, align 8, !tbaa !165
  %.not11.i.i.i.i.i.i = icmp eq ptr %i.ha, %i.gz
  br i1 %.not11.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc7.i, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i.i ], [ %i.hb, %.noexc7.i ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i.i ], [ %i.ha, %.noexc7.i ] ; 5 uses
  %i.hd = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !29
  store i32 %i.hd, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !29
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !29
  %i.hg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !29
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 8
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !29
  %i.hj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !29
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 12
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !29
  %i.hm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 12
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !29
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hn, %i.gz
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !249

.loopexit.split-lp77.loopexit.split-lp:           ; preds = %_ZNSt15__new_allocatorIN2cv3VecIiLi4EEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i6.i
  %lpad.loopexit.split-lp181 = landingpad { ptr, i32 }
end_hunk_0
