inline.NumInlined: 602
inline.NumDeleted: 355
begin_hunk_0_@_ZNSt3mapISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISC_EESt4lessIS5_ESaISt4pairIKS5_SE_EEEixEOS5_:bb.a

_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !15 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !19
  %i.r = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i) #25 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.t = sub i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.t, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.r, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.u = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.u, label %bb.b, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i
  br label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.i.i.i

_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.i.i.i: ; preds = %bb.b, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i
  %.sink20.i.i.i = phi i64 [ 24, %bb.b ], [ 16, %.lr.ph.split.i.i.i ], [ 16, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0812.i.i.i, %bb.b ], [ %.013.i.i.i, %.lr.ph.split.i.i.i ], [ %.013.i.i.i, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 %.sink20.i.i.i
  %.1.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISC_EESt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit, label %.lr.ph.split.i.i.i, !llvm.loop !50

_ZNSt3mapISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISC_EESt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit: ; preds = %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.i.i.i, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us.i.i.i
  %.08.lcssa.i.i.i = phi ptr [ %.19.us.i.i.i, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.i.i.i ] ; 12 uses
  %i.w = icmp eq ptr %.08.lcssa.i.i.i, %i.c
  br i1 %i.w, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISC_EESt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i, i64 48
  %i.z = load i8, ptr %i.y, align 8, !tbaa !23
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.f, label %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread

_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !15
  %i.ac = icmp slt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %i.ab
  br i1 %i.ac, label %.critedge, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread

bb.e:                                             ; preds = %bb.c
  switch i8 %i.e, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread [
    i8 1, label %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i
    i8 0, label %.critedge
  ]

_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !15 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i) ; 2 uses
  %i.ad = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ad, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i, i64 40
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !19
  %i.ae = tail call i32 @memcmp(ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i) #25 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i
  %i.ag = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i

_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.ae, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.ah = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ah, label %.critedge, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread

.critedge:                                        ; preds = %bb.e, %bb.a, %_ZNSt3mapISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISC_EESt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i
  %.08.lcssa.i.i.i11 = phi ptr [ %.08.lcssa.i.i.i, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i ], [ %.08.lcssa.i.i.i, %bb.e ], [ %.08.lcssa.i.i.i, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i ], [ %.08.lcssa.i.i.i, %_ZNSt3mapISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISC_EESt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %1, ptr %2, align 8, !tbaa !51, !alias.scope !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ai = call ptr @_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESS_IJEEEEESt17_Rb_tree_iteratorISH_ESt23_Rb_tree_const_iteratorISH_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i11, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread

_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread: ; preds = %bb.e, %bb.d, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i, %.critedge
  %.sroa.06.0 = phi ptr [ %i.ai, %.critedge ], [ %.08.lcssa.i.i.i, %bb.e ], [ %.08.lcssa.i.i.i, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i ], [ %.08.lcssa.i.i.i, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i ], [ %.08.lcssa.i.i.i, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 56
  ret ptr %i.aj
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @_ZN6google8protobuf8internalL16PrintAllCountersEv() #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 16 ; 6 uses
  %1 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %2 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %3 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %4 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %i.a = tail call fastcc noundef nonnull align 8 dereferenceable(48) ptr @_ZN6google8protobuf8internalL10CounterMapEv() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !41
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.f = tail call noundef i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %i.e, ptr nonnull @.str.1, i64 25, ptr null, i64 0) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.not86111 = icmp eq ptr %i.h, %i.i
  br i1 %.not86111, label %.loopexit, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph114, %._crit_edge110.thread
  %.sroa.080.0112 = phi ptr [ %i.h, %.lr.ph114 ], [ %i.bv, %._crit_edge110.thread ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.080.0112, i64 32
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.t, ptr %4, align 8, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.j, align 8, !tbaa !56
  %i.v = call noundef i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %i.u, ptr nonnull @.str.2, i64 9, ptr nonnull %4, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.080.0112, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.080.0112, i64 56 ; 3 uses
  %.not8794 = icmp eq ptr %i.x, %i.y
  br i1 %.not8794, label %._crit_edge110.thread, label %.lr.ph98

.lr.ph109:                                        ; preds = %._crit_edge
  %.not28 = icmp eq i64 %.1.lcssa, 0
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.080.0112, i64 88
  %i.aa = uitofp i64 %.1.lcssa to double
  br label %bb.d

.lr.ph98:                                         ; preds = %bb.c, %._crit_edge
  %.096 = phi i64 [ %.1.lcssa, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  %.sroa.070.095 = phi ptr [ %i.af, %._crit_edge ], [ %i.x, %bb.c ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.070.095, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.070.095, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !58 ; 2 uses
  %.not9091 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not9091, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph98
  %.1.lcssa = phi i64 [ %.096, %.lr.ph98 ], [ %i.ai, %.lr.ph ] ; 5 uses
  %i.af = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.070.095) #29 ; 2 uses
  %.not87 = icmp eq ptr %i.af, %i.y
  br i1 %.not87, label %.lr.ph109, label %.lr.ph98

.lr.ph:                                           ; preds = %.lr.ph98, %.lr.ph
  %.193 = phi i64 [ %i.ai, %.lr.ph ], [ %.096, %.lr.ph98 ]
  %.sroa.066.092 = phi ptr [ %i.aj, %.lr.ph ], [ %i.ac, %.lr.ph98 ] ; 2 uses
  %i.ag = load ptr, ptr %.sroa.066.092, align 8, !tbaa !30
  %i.ah = load atomic i64, ptr %i.ag monotonic, align 8
  %i.ai = add i64 %i.ah, %.193                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.066.092, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.aj, %i.ae
  br i1 %.not90, label %._crit_edge, label %.lr.ph

._crit_edge110:                                   ; preds = %bb.i
  %.not = icmp eq i64 %.1.lcssa, 0
  br i1 %.not, label %._crit_edge110.thread, label %bb.j

bb.d:                                             ; preds = %.lr.ph109, %bb.i
  %.sroa.062.0108 = phi ptr [ %i.x, %.lr.ph109 ], [ %i.bo, %bb.i ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.062.0108, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.062.0108, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !58 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.062.0108, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !58 ; 2 uses
  %.not89100 = icmp eq ptr %i.am, %i.ao
  br i1 %.not89100, label %._crit_edge105, label %.lr.ph104

._crit_edge105:                                   ; preds = %.lr.ph104, %bb.d
  %.085.lcssa = phi i64 [ 0, %bb.d ], [ %i.at, %.lr.ph104 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.062.0108, i64 48
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !23
  switch i8 %i.aq, label %bb.e [
    i8 0, label %_ZSt3getIlJlSt17basic_string_viewIcSt11char_traitsIcEEEERKT_RKSt7variantIJDpT0_EE.exit
    i8 1, label %_ZSt3getISt17basic_string_viewIcSt11char_traitsIcEEJlS3_EERKT_RKSt7variantIJDpT0_EE.exit
  ]

.lr.ph104:                                        ; preds = %bb.d, %.lr.ph104
  %.085102 = phi i64 [ %i.at, %.lr.ph104 ], [ 0, %bb.d ]
  %.sroa.057.0101 = phi ptr [ %i.au, %.lr.ph104 ], [ %i.am, %bb.d ] ; 2 uses
  %i.ar = load ptr, ptr %.sroa.057.0101, align 8, !tbaa !30
  %i.as = load atomic i64, ptr %i.ar monotonic, align 8
  %i.at = add i64 %i.as, %.085102                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.057.0101, i64 8 ; 2 uses
  %.not89 = icmp eq ptr %i.au, %i.ao
  br i1 %.not89, label %._crit_edge105, label %.lr.ph104

_ZSt3getIlJlSt17basic_string_viewIcSt11char_traitsIcEEEERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %._crit_edge105
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ak, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %3, align 8, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIlEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.n, align 8, !tbaa !56
  %i.aw = inttoptr i64 %.085.lcssa to ptr
  store ptr %i.aw, ptr %i.o, align 8, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.p, align 8, !tbaa !56
  %i.ax = call noundef i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %i.av, ptr nonnull @.str.3, i64 15, ptr nonnull %3, i64 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge105
  %i.ay = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ay, align 8, !tbaa !59
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @.str.10, ptr %i.az, align 8, !tbaa !61
  call void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #26
  unreachable

_ZSt3getISt17basic_string_viewIcSt11char_traitsIcEEJlS3_EERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %._crit_edge105
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.ak, ptr %2, align 8, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.k, align 8, !tbaa !56
  %i.bb = inttoptr i64 %.085.lcssa to ptr
  store ptr %i.bb, ptr %i.l, align 8, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.m, align 8, !tbaa !56
  %i.bc = call noundef i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %i.ba, ptr nonnull @.str.4, i64 16, ptr nonnull %2, i64 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.f

bb.f:                                             ; preds = %_ZSt3getISt17basic_string_viewIcSt11char_traitsIcEEJlS3_EERKT_RKSt7variantIJDpT0_EE.exit, %_ZSt3getIlJlSt17basic_string_viewIcSt11char_traitsIcEEEERKT_RKSt7variantIJDpT0_EE.exit
  br i1 %.not28, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = load i64, ptr %i.z, align 8, !tbaa !41
  %i.be = icmp ugt i64 %i.bd, 1
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bg = uitofp i64 %.085.lcssa to double
  %i.bh = fmul nnan double %i.bg, 1.000000e+02
  %i.bi = fdiv double %i.bh, %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.bj = bitcast double %i.bi to i64
  %i.bk = inttoptr i64 %i.bj to ptr
  store ptr %i.bk, ptr %1, align 8, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIdEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.q, align 8, !tbaa !56
  %i.bl = call noundef i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %i.bf, ptr nonnull @.str.5, i64 10, ptr nonnull %1, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bn = call noundef i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %i.bm, ptr nonnull @.str.6, i64 1, ptr null, i64 0) ; 0 uses
  %i.bo = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.062.0108) #29 ; 2 uses
  %.not88 = icmp eq ptr %i.bo, %i.y
  br i1 %.not88, label %._crit_edge110, label %bb.d

bb.j:                                             ; preds = %._crit_edge110
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.080.0112, i64 88
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !41
  %i.br = icmp ugt i64 %i.bq, 1
  br i1 %i.br, label %bb.k, label %._crit_edge110.thread

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr @stderr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  store <2 x ptr> <ptr @.str.8, ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIPKcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv>, ptr %0, align 16, !tbaa !20
  %i.bt = inttoptr i64 %.1.lcssa to ptr
  store ptr %i.bt, ptr %i.r, align 16, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.s, align 8, !tbaa !56
  %i.bu = call noundef i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %i.bs, ptr nonnull @.str.7, i64 17, ptr nonnull %0, i64 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  br label %._crit_edge110.thread

._crit_edge110.thread:                            ; preds = %bb.c, %bb.k, %bb.j, %._crit_edge110
  %i.bv = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.080.0112) #29 ; 2 uses
  %.not86 = icmp eq ptr %i.bv, %i.i
  br i1 %.not86, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %._crit_edge110.thread, %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare noundef i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef, ptr, i64, ptr, i64) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #5 align 2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIlEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #5 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #5 align 2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIdEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #5 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIPKcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #5 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE13ConvertToPairIS8_S8_EESt4pairIT_T0_Ev(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::strings_internal::SplitIterator", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  store i64 0, ptr %4, align 8, !tbaa !67, !alias.scope !64
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !74, !alias.scope !64
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !alias.scope !64
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !75, !alias.scope !64
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !noalias !64
  store i8 %i.f, ptr %i.d, align 8, !tbaa !20, !alias.scope !64
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !15, !noalias !64 ; 7 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !19, !noalias !64 ; 4 uses
  %i.g = icmp eq ptr %.sroa.2.0.copyload.i.i.i, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.a, align 8, !tbaa !74, !alias.scope !64
  br label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = call { i64, ptr } @_ZNK4absl12lts_202505126ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i64 %.sroa.0.0.copyload.i.i.i, ptr nonnull %.sroa.2.0.copyload.i.i.i, i64 noundef 0) ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 %.sroa.0.0.copyload.i.i.i
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.a, align 8, !tbaa !74, !alias.scope !64
  br label %bb.e

end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESY_IJEEEEESt17_Rb_tree_iteratorISO_ESt23_Rb_tree_const_iteratorISO_EDpOT_:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.c, align 8, !tbaa !15 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.p, align 8, !tbaa !15 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i.i.i, i64 %.sroa.01.0.copyload.i.i.i) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.q, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !19
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.22.0.copyload.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !19
  %i.r = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i.i.i, ptr noundef %.sroa.2.0.copyload.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i) #25 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.t = sub i64 %.sroa.01.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.t, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i

_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ], [ %i.r, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ]
  %i.u = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.c, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i
  %i.v = phi i1 [ %i.u, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.b, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n) #25
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !41
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !41
  br label %_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.ab)
          to label %_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISO_E.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #24
  unreachable

_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISO_E.exit.i: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #28
  br label %_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISO_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.l, %_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISO_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISO_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.01.0.copyload.i = load i64, ptr %i.g, align 8, !tbaa !15 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !15 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i, i64 %.sroa.01.0.copyload.i) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !19
  %i.i = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.speculated.i.i.i) #25 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.k = sub i64 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.k, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit

_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %.0.i4.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ], [ %i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ]
  %i.l = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.l, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit, %bb.b
  %i.m = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE24_M_get_insert_unique_posERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.01.0.copyload.i10 = load i64, ptr %2, align 8, !tbaa !15 ; 8 uses
  %.sroa.0.0.copyload.i11 = load i64, ptr %i.p, align 8, !tbaa !15 ; 4 uses
  %.sroa.speculated.i.i.i12 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i11, i64 %.sroa.01.0.copyload.i10) ; 3 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i12, 0
  br i1 %i.q, label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit23, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i13: ; preds = %bb.e
  %.sroa.2.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2.0.copyload.i15 = load ptr, ptr %.sroa.2.0..sroa_idx.i14, align 8, !tbaa !19 ; 2 uses
  %.sroa.22.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload.i17 = load ptr, ptr %.sroa.22.0..sroa_idx.i16, align 8, !tbaa !19 ; 2 uses
  %i.r = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i17, ptr noundef %.sroa.2.0.copyload.i15, i64 noundef %.sroa.speculated.i.i.i12) #25 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit23.thread88, label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit23.thread

_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit23: ; preds = %bb.e
  %i.t = sub i64 %.sroa.01.0.copyload.i10, %.sroa.0.0.copyload.i11
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i47

_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit23.thread88: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i13
  %i.v = sub i64 %.sroa.01.0.copyload.i10, %.sroa.0.0.copyload.i11
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i41

_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit23.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i13
  %i.x = icmp slt i32 %i.r, 0
  br i1 %i.x, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i41

bb.f:                                             ; preds = %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit23.thread88, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit23.thread, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45   ; 3 uses
  %i.aa = icmp eq ptr %i.z, %1
  br i1 %i.aa, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #29 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.01.0.copyload.i24 = load i64, ptr %i.ac, align 8, !tbaa !15 ; 2 uses
  %.sroa.speculated.i.i.i26 = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0.copyload.i10, i64 %.sroa.01.0.copyload.i24) ; 2 uses
  %i.ad = icmp eq i64 %.sroa.speculated.i.i.i26, 0
  br i1 %i.ad, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i33, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i27

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i27: ; preds = %bb.g
  %.sroa.2.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i29 = load ptr, ptr %.sroa.2.0..sroa_idx.i28, align 8, !tbaa !19
  %.sroa.22.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.sroa.22.0.copyload.i31 = load ptr, ptr %.sroa.22.0..sroa_idx.i30, align 8, !tbaa !19
  %i.ae = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i31, ptr noundef %.sroa.2.0.copyload.i29, i64 noundef %.sroa.speculated.i.i.i26) #25 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i33, label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit37

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i33: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i27, %bb.g
  %i.ag = sub i64 %.sroa.01.0.copyload.i24, %.sroa.01.0.copyload.i10
  %spec.select7.i.i.i.i34 = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i35 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i34, i64 2147483647)
  %.0.i4.i.i.i36 = trunc nsw i64 %.08.i.i.i.i35 to i32
  br label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit37

_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit37: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i27, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i33
  %.0.i.i.i32 = phi i32 [ %.0.i4.i.i.i36, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i33 ], [ %i.ae, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i27 ]
  %i.ah = icmp slt i32 %.0.i.i.i32, 0
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit37
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !88
  %i.ak = icmp eq ptr %i.aj, null                 ; 2 uses
  %spec.select = select i1 %i.ak, ptr null, ptr %1
  %spec.select93 = select i1 %i.ak, ptr %i.ab, ptr %1
  br label %bb.n

bb.i:                                             ; preds = %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit37
  %i.al = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE24_M_get_insert_unique_posERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.al, 0
  %i.an = extractvalue { ptr, ptr } %i.al, 1
  br label %bb.n

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i41: ; preds = %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit23.thread88, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit23.thread
  %i.ao = tail call i32 @memcmp(ptr noundef %.sroa.2.0.copyload.i15, ptr noundef %.sroa.22.0.copyload.i17, i64 noundef %.sroa.speculated.i.i.i12) #25 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i47, label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit51

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i47: ; preds = %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit23, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i41
  %i.aq = sub i64 %.sroa.0.0.copyload.i11, %.sroa.01.0.copyload.i10
  %spec.select7.i.i.i.i48 = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 -2147483648)
  %.08.i.i.i.i49 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i48, i64 2147483647)
  %.0.i4.i.i.i50 = trunc nsw i64 %.08.i.i.i.i49 to i32
  br label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit51

_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit51: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i41, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i47
  %.0.i.i.i46 = phi i32 [ %.0.i4.i.i.i50, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i47 ], [ %i.ao, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i41 ]
  %i.ar = icmp slt i32 %.0.i.i.i46, 0
  br i1 %i.ar, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit51
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !45 ; 2 uses
  %i.au = icmp eq ptr %i.at, %1
  br i1 %i.au, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #29 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.sroa.0.0.copyload.i53 = load i64, ptr %i.aw, align 8, !tbaa !15 ; 2 uses
  %.sroa.speculated.i.i.i54 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i53, i64 %.sroa.01.0.copyload.i10) ; 2 uses
  %i.ax = icmp eq i64 %.sroa.speculated.i.i.i54, 0
  br i1 %i.ax, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i61, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i55

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i55: ; preds = %bb.k
  %.sroa.2.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %.sroa.2.0.copyload.i57 = load ptr, ptr %.sroa.2.0..sroa_idx.i56, align 8, !tbaa !19
  %.sroa.22.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload.i59 = load ptr, ptr %.sroa.22.0..sroa_idx.i58, align 8, !tbaa !19
  %i.ay = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i59, ptr noundef %.sroa.2.0.copyload.i57, i64 noundef %.sroa.speculated.i.i.i54) #25 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i61, label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit65

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i61: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i55, %bb.k
  %i.ba = sub i64 %.sroa.01.0.copyload.i10, %.sroa.0.0.copyload.i53
  %spec.select7.i.i.i.i62 = tail call i64 @llvm.smax.i64(i64 %i.ba, i64 -2147483648)
  %.08.i.i.i.i63 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i62, i64 2147483647)
  %.0.i4.i.i.i64 = trunc nsw i64 %.08.i.i.i.i63 to i32
  br label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit65

_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit65: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i55, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i61
  %.0.i.i.i60 = phi i32 [ %.0.i4.i.i.i64, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i61 ], [ %i.ay, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i55 ]
  %i.bb = icmp slt i32 %.0.i.i.i60, 0
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit65
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !88
  %i.be = icmp eq ptr %i.bd, null                 ; 2 uses
  %spec.select94 = select i1 %i.be, ptr null, ptr %i.av
  %spec.select95 = select i1 %i.be, ptr %1, ptr %i.av
  br label %bb.n

bb.m:                                             ; preds = %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit65
  %i.bf = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE24_M_get_insert_unique_posERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.bg = extractvalue { ptr, ptr } %i.bf, 0
  %i.bh = extractvalue { ptr, ptr } %i.bf, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.h, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit51, %bb.m, %bb.j, %bb.i, %bb.f, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit, %bb.d
  %.sroa.086.2 = phi ptr [ %i.n, %bb.d ], [ %spec.select, %bb.h ], [ null, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit ], [ %spec.select94, %bb.l ], [ %i.am, %bb.i ], [ %i.z, %bb.f ], [ %1, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit51 ], [ %i.bg, %bb.m ], [ null, %bb.j ]
  %.sroa.12.2 = phi ptr [ %i.o, %bb.d ], [ %spec.select93, %bb.h ], [ %i.f, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit ], [ %spec.select95, %bb.l ], [ %i.an, %bb.i ], [ %i.z, %bb.f ], [ null, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit51 ], [ %i.bh, %bb.m ], [ %i.at, %bb.j ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.086.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
          to label %_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISO_E.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #24
  unreachable

_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISO_E.exit: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #28
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISO_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE24_M_get_insert_unique_posERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.03436 = load ptr, ptr %i.a, align 8, !tbaa !45 ; 2 uses
  %.not37 = icmp eq ptr %.03436, null
  br i1 %.not37, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %1, align 8, !tbaa !15 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit
  %.03438 = phi ptr [ %.03436, %.lr.ph ], [ %.034, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit ] ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.03438, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !tbaa !15 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i, i64 %.sroa.01.0.copyload.i) ; 2 uses
  %i.d = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.03438, i64 40
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !19
  %i.e = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.speculated.i.i.i) #25 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.g = sub i64 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.g, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit

_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %.0.i4.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ], [ %i.e, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ]
  %i.h = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.h, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.03438, i64 %.in.v
  %.034 = load ptr, ptr %.in, align 8, !tbaa !45  ; 2 uses
  %.not = icmp eq ptr %.034, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !89

._crit_edge:                                      ; preds = %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit
  br i1 %i.h, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.033.lcssa44 = phi ptr [ %.03438, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = icmp eq ptr %.033.lcssa44, %i.j
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.l = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.033.lcssa44) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.033.lcssa43 = phi ptr [ %.033.lcssa44, %bb.c ], [ %.03438, %._crit_edge ]
  %.sroa.019.0 = phi ptr [ %i.l, %bb.c ], [ %.03438, %._crit_edge ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.019.0, i64 32
  %.sroa.01.0.copyload.i5 = load i64, ptr %i.m, align 8, !tbaa !15 ; 2 uses
  %.sroa.0.0.copyload.i6 = load i64, ptr %1, align 8, !tbaa !15 ; 2 uses
  %.sroa.speculated.i.i.i7 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i6, i64 %.sroa.01.0.copyload.i5) ; 2 uses
  %i.n = icmp eq i64 %.sroa.speculated.i.i.i7, 0
  br i1 %i.n, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i14, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i8

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i8: ; preds = %bb.d
  %.sroa.2.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i10 = load ptr, ptr %.sroa.2.0..sroa_idx.i9, align 8, !tbaa !19
  %.sroa.22.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %.sroa.019.0, i64 40
  %.sroa.22.0.copyload.i12 = load ptr, ptr %.sroa.22.0..sroa_idx.i11, align 8, !tbaa !19
  %i.o = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i12, ptr noundef %.sroa.2.0.copyload.i10, i64 noundef %.sroa.speculated.i.i.i7) #25 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i14, label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit18

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i14: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i8, %bb.d
  %i.q = sub i64 %.sroa.01.0.copyload.i5, %.sroa.0.0.copyload.i6
  %spec.select7.i.i.i.i15 = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -2147483648)
  %.08.i.i.i.i16 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i15, i64 2147483647)
  %.0.i4.i.i.i17 = trunc nsw i64 %.08.i.i.i.i16 to i32
  br label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit18

_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit18: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i8, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i14
  %.0.i.i.i13 = phi i32 [ %.0.i4.i.i.i17, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i14 ], [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i8 ]
  %i.r = icmp slt i32 %.0.i.i.i13, 0              ; 2 uses
  %spec.select = select i1 %i.r, ptr null, ptr %.sroa.019.0
  %spec.select35 = select i1 %i.r, ptr %.033.lcssa43, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit18, %._crit_edge.thread
  %.sroa.032.0 = phi ptr [ %spec.select, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit18 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select35, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit18 ], [ %.033.lcssa44, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.032.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88
  tail call void @_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #28
  br label %_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit

_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit: ; preds = %.lr.ph, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #28
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !91

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESS_IJEEEEESt17_Rb_tree_iteratorISH_ESt23_Rb_tree_const_iteratorISH_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::variant<long, std::basic_string_view<char>>, std::pair<const std::variant<long, std::basic_string_view<char>>, std::vector<const google::protobuf::internal::RealDebugCounter *>>, std::_Select1st<std::pair<const std::variant<long, std::basic_string_view<char>>, std::vector<const google::protobuf::internal::RealDebugCounter *>>>, std::less<std::variant<long, std::basic_string_view<char>>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %0, ptr %5, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.d = load i64, ptr %3, align 8, !tbaa !51
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !94
  %i.g = invoke { ptr, ptr } @_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(17) %i.c)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 6 uses
  %.not = icmp eq ptr %i.i, null
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS7_:bb.a
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i17 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i16, align 8, !tbaa !19
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i18 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i19 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i18, align 8, !tbaa !19
  %i.aj = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i.i.i.i.i.i.i.i19, ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i.i.i17, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i14) #25 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i22, label %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i20

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i22: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i15, %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i11
  %i.al = sub i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i12, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i13
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i23 = tail call i64 @llvm.smax.i64(i64 %i.al, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i24 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i23, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i25 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i24 to i32
  br label %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i20

_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i20: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i22, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i15
  %.0.i.i.i.i.i.i.i.i.i.i21 = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i25, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i22 ], [ %i.aj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i15 ]
  %i.am = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i21, 0
  br i1 %i.am, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i20, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i26
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !45 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, %1
  br i1 %i.ap, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63.thread108, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #29 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %i.as = icmp eq i8 %i.ad, 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.au = load i8, ptr %i.at, align 8, !tbaa !23  ; 2 uses
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i44, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit45.thread

_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i44: ; preds = %bb.k
  %i.aw = load i64, ptr %i.ar, align 8, !tbaa !15
  %i.ax = load i64, ptr %2, align 8, !tbaa !15
  %i.ay = icmp slt i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.m, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit45.thread

bb.l:                                             ; preds = %bb.j
  switch i8 %i.au, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit45.thread [
    i8 1, label %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i29
    i8 0, label %bb.m
  ]

_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i29: ; preds = %bb.l
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i30 = load i64, ptr %i.ar, align 8, !tbaa !15 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i31 = load i64, ptr %2, align 8, !tbaa !15 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i32 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i31, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i30) ; 2 uses
  %i.az = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i32, 0
  br i1 %i.az, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i40, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i33

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i33: ; preds = %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i29
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i34 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i35 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i34, align 8, !tbaa !19
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i36 = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i37 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i36, align 8, !tbaa !19
  %i.ba = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i.i.i.i.i.i.i.i37, ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i.i.i35, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i32) #25 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i40, label %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i38

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i40: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i33, %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i29
  %i.bc = sub i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i30, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i31
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i41 = tail call i64 @llvm.smax.i64(i64 %i.bc, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i42 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i41, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i43 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i42 to i32
  br label %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i38

_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i38: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i40, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i33
  %.0.i.i.i.i.i.i.i.i.i.i39 = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i43, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i40 ], [ %i.ba, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i33 ]
  %i.bd = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i39, 0
  br i1 %i.bd, label %bb.m, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit45.thread

bb.m:                                             ; preds = %bb.l, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i38, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i44
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !88
  %i.bg = icmp eq ptr %i.bf, null                 ; 2 uses
  %spec.select = select i1 %i.bg, ptr null, ptr %1
  %spec.select111 = select i1 %i.bg, ptr %i.aq, ptr %1
  br label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63.thread108

_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit45.thread: ; preds = %bb.l, %bb.k, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i38, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i44
  %i.bh = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(17) %2) ; 2 uses
  %i.bi = extractvalue { ptr, ptr } %i.bh, 0
  %i.bj = extractvalue { ptr, ptr } %i.bh, 1
  br label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63.thread108

_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i62: ; preds = %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i26
  %i.bk = icmp slt i64 %i.ag, %i.af
  br i1 %i.bk, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63.thread, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63.thread108

bb.n:                                             ; preds = %bb.h, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i20
  %i.bl = icmp eq i8 %i.aa, 1
  br i1 %i.bl, label %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i47, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63.thread108

_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i47: ; preds = %bb.n
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i48 = load i64, ptr %i.y, align 8, !tbaa !15 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i49 = load i64, ptr %2, align 8, !tbaa !15 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i50 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i49, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i48) ; 2 uses
  %i.bm = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i50, 0
  br i1 %i.bm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i58, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i51

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i51: ; preds = %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i47
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i52 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i53 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i52, align 8, !tbaa !19
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i54 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i55 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i54, align 8, !tbaa !19
  %i.bn = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i.i.i.i.i.i.i.i55, ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i.i.i53, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i50) #25 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i58, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i58: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i51, %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i47
  %i.bp = sub i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i48, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i49
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i59 = tail call i64 @llvm.smax.i64(i64 %i.bp, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i60 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i59, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i61 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i60 to i32
  br label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63

_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i51, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i58
  %.0.i.i.i.i.i.i.i.i.i.i57 = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i61, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i58 ], [ %i.bn, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i51 ]
  %i.bq = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i57, 0
  br i1 %i.bq, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63.thread, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63.thread108

_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63.thread: ; preds = %bb.g, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i62, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63
  %i.br = phi i1 [ true, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i62 ], [ false, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63 ], [ false, %bb.g ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !45 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %1
  br i1 %i.bu, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63.thread108, label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63.thread
  %i.bv = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #29 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !23
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %i.br, label %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i80, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit81.thread

_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i80: ; preds = %bb.p
  %i.ca = load i64, ptr %2, align 8, !tbaa !15
  %i.cb = load i64, ptr %i.bw, align 8, !tbaa !15
  %i.cc = icmp slt i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.r, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit81.thread

bb.q:                                             ; preds = %bb.o
  %i.cd = icmp eq i8 %i.ad, 1
  br i1 %i.cd, label %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i65, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit81

_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i65: ; preds = %bb.q
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i66 = load i64, ptr %2, align 8, !tbaa !15 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i67 = load i64, ptr %i.bw, align 8, !tbaa !15 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i68 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i67, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i66) ; 2 uses
  %i.ce = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i68, 0
  br i1 %i.ce, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i76, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i69

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i69: ; preds = %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i65
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i70 = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i71 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i70, align 8, !tbaa !19
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i73 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i72, align 8, !tbaa !19
  %i.cf = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i.i.i.i.i.i.i.i73, ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i.i.i71, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i68) #25 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i76, label %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i74

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i76: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i69, %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i65
  %i.ch = sub i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i66, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i67
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i77 = tail call i64 @llvm.smax.i64(i64 %i.ch, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i78 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i77, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i79 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i78 to i32
  br label %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i74

_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i74: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i76, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i69
  %.0.i.i.i.i.i.i.i.i.i.i75 = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i79, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i76 ], [ %i.cf, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i69 ]
  %i.ci = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i75, 0
  br i1 %i.ci, label %bb.r, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit81.thread

_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit81: ; preds = %bb.q
  br i1 %i.br, label %bb.r, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit81.thread

bb.r:                                             ; preds = %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i74, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i80, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit81
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !88
  %i.cl = icmp eq ptr %i.ck, null                 ; 2 uses
  %spec.select112 = select i1 %i.cl, ptr null, ptr %i.bv
  %spec.select113 = select i1 %i.cl, ptr %1, ptr %i.bv
  br label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63.thread108

_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit81.thread: ; preds = %bb.p, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i74, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i80, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit81
  %i.cm = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(17) %2) ; 2 uses
  %i.cn = extractvalue { ptr, ptr } %i.cm, 0
  %i.co = extractvalue { ptr, ptr } %i.cm, 1
  br label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63.thread108

_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63.thread108: ; preds = %bb.r, %bb.m, %bb.e, %bb.n, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i62, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit81.thread, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63.thread, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit45.thread, %bb.i, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread
  %.sroa.0102.2 = phi ptr [ %i.w, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread ], [ %1, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63 ], [ null, %bb.e ], [ %spec.select112, %bb.r ], [ null, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i ], [ null, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i ], [ %i.bi, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit45.thread ], [ %i.ao, %bb.i ], [ %1, %bb.n ], [ %i.cn, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit81.thread ], [ null, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63.thread ], [ %spec.select, %bb.m ], [ %1, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i62 ]
  %.sroa.12.2 = phi ptr [ %i.x, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread ], [ null, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63 ], [ %i.f, %bb.e ], [ %spec.select113, %bb.r ], [ %i.f, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i ], [ %i.bj, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit45.thread ], [ %i.ao, %bb.i ], [ null, %bb.n ], [ %i.co, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit81.thread ], [ %i.bt, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit63.thread ], [ %spec.select111, %bb.m ], [ null, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i62 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0102.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #28
  br label %_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit

_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #28
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.03844 = load ptr, ptr %i.a, align 8, !tbaa !45 ; 4 uses
  %.not45 = icmp eq ptr %.03844, null
  br i1 %.not45, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !23
  %.fr = freeze i8 %i.d                           ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8 ; 4 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  %i.e = icmp eq i8 %.fr, 0
  switch i8 %.fr, label %.lr.ph.split.split [
    i8 1, label %.lr.ph.split.us
    i8 0, label %.lr.ph.split.us49.split.us
  ]

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us
  %.03846.us = phi ptr [ %.038.us, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us ], [ %.03844, %.lr.ph ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.03846.us, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.03846.us, i64 48
  %i.h = load i8, ptr %i.g, align 8, !tbaa !23
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us

_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us: ; preds = %.lr.ph.split.us
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.us = load i64, ptr %i.f, align 8, !tbaa !15 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.us = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.us, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.us, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.us, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.us

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.us: ; preds = %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %.03846.us, i64 40
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.us = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.us, align 8, !tbaa !19
  %i.k = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i.i.i.i.i.i.i.i, ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.us, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.us) #25 ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.us, label %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.us

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.us: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.us, %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us
  %i.m = sub i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.us
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i.us = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i.us = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i.us, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i.us = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i.us to i32
  br label %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.us

_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.us: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.us, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.us
  %.0.i.i.i.i.i.i.i.i.i.i.us = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i.us, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.us ], [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.us ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i.us, 0
  br i1 %i.n, label %bb.c, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us

bb.b:                                             ; preds = %.lr.ph.split.us
  br i1 %i.e, label %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us

_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us: ; preds = %bb.b
  %i.o = load i64, ptr %i.f, align 8, !tbaa !15
  %i.p = icmp slt i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %i.o
  br i1 %i.p, label %bb.c, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us

bb.c:                                             ; preds = %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.us
  br label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us

_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us: ; preds = %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.us, %bb.b, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us, %bb.c
  %.sink = phi i64 [ 16, %bb.c ], [ 24, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us ], [ 24, %bb.b ], [ 24, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.us ]
  %.0.i.i40.us = phi i1 [ true, %bb.c ], [ false, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us ], [ false, %bb.b ], [ false, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.us ]
  %i.q = getelementptr inbounds nuw i8, ptr %.03846.us, i64 %.sink
  %.038.us = load ptr, ptr %i.q, align 8, !tbaa !45 ; 2 uses
  %.not.us = icmp eq ptr %.038.us, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !97

.lr.ph.split.us49.split.us:                       ; preds = %.lr.ph, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us52.us
  %.03846.us50.us = phi ptr [ %.038.us55.us, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us52.us ], [ %.03844, %.lr.ph ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.03846.us50.us, i64 48
  %i.s = load i8, ptr %i.r, align 8, !tbaa !23
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us51.us, label %bb.d

_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us51.us: ; preds = %.lr.ph.split.us49.split.us
  %i.u = getelementptr inbounds nuw i8, ptr %.03846.us50.us, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !15
  %i.w = icmp slt i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %i.v
  br i1 %i.w, label %bb.d, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us52.us

bb.d:                                             ; preds = %.lr.ph.split.us49.split.us, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us51.us
  br label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us52.us

_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us52.us: ; preds = %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us51.us, %bb.d
  %.sink89 = phi i64 [ 16, %bb.d ], [ 24, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us51.us ]
  %.0.i.i40.us53.us = phi i1 [ true, %bb.d ], [ false, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us51.us ]
  %i.x = getelementptr inbounds nuw i8, ptr %.03846.us50.us, i64 %.sink89
  %.038.us55.us = load ptr, ptr %i.x, align 8, !tbaa !45 ; 2 uses
  %.not.us56.us = icmp eq ptr %.038.us55.us, null
  br i1 %.not.us56.us, label %._crit_edge, label %.lr.ph.split.us49.split.us, !llvm.loop !97

.lr.ph.split.split:                               ; preds = %.lr.ph, %.lr.ph.split.split
  %.03846 = phi ptr [ %.038, %.lr.ph.split.split ], [ %.03844, %.lr.ph ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03846, i64 24
  %.038 = load ptr, ptr %i.y, align 8, !tbaa !45  ; 2 uses
  %.not = icmp eq ptr %.038, null
  br i1 %.not, label %._crit_edge.thread85, label %.lr.ph.split.split, !llvm.loop !97

._crit_edge:                                      ; preds = %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us52.us, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us
  %.037.lcssa = phi ptr [ %.03846.us, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us ], [ %.03846.us50.us, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us52.us ] ; 3 uses
  %.0.lcssa = phi i1 [ %.0.i.i40.us, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us ], [ %.0.i.i40.us53.us, %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us52.us ]
  br i1 %.0.lcssa, label %._crit_edge.thread, label %._crit_edge.thread85

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.037.lcssa84 = phi ptr [ %.037.lcssa, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35
  %i.ab = icmp eq ptr %.037.lcssa84, %i.aa
  br i1 %i.ab, label %bb.h, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.037.lcssa84) #29
  br label %._crit_edge.thread85

._crit_edge.thread85:                             ; preds = %.lr.ph.split.split, %bb.e, %._crit_edge
  %.037.lcssa83 = phi ptr [ %.037.lcssa84, %bb.e ], [ %.037.lcssa, %._crit_edge ], [ %.03846, %.lr.ph.split.split ] ; 3 uses
  %.sroa.023.0 = phi ptr [ %i.ac, %bb.e ], [ %.037.lcssa, %._crit_edge ], [ %.03846, %.lr.ph.split.split ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !23
  %i.ag = icmp eq i8 %i.af, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 48
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !23  ; 2 uses
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.thread85
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i21, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit22.thread

_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i21: ; preds = %bb.f
  %i.ak = load i64, ptr %i.ad, align 8, !tbaa !15
  %i.al = load i64, ptr %1, align 8, !tbaa !15
  %i.am = icmp slt i64 %i.ak, %i.al
  br i1 %i.am, label %bb.h, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit22.thread

bb.g:                                             ; preds = %._crit_edge.thread85
  switch i8 %i.ai, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit22.thread [
    i8 1, label %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i6
    i8 0, label %bb.h
  ]

_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i6: ; preds = %bb.g
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i7 = load i64, ptr %i.ad, align 8, !tbaa !15 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i8 = load i64, ptr %1, align 8, !tbaa !15 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i9 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i8, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i7) ; 2 uses
  %i.an = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i9, 0
  br i1 %i.an, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i17, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i10

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i10: ; preds = %_ZSt3getILm1EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i6
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i12 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i11, align 8, !tbaa !19
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 40
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i14 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i13, align 8, !tbaa !19
  %i.ao = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i.i.i.i.i.i.i.i14, ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i.i.i12, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i9) #25 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i17, label %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i15

end_hunk_2
