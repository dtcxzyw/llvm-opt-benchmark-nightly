inline.NumInlined: 5280
inline.NumDeleted: 463
loop-unroll.NumCompletelyUnrolled: 150
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 158
begin_hunk_0_@__clang_call_terminate
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(36) %i.b) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15_Sp_counted_ptrIPN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !43
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !44   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !43
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_Z11testIfIVFPQPKN5faiss5IndexEPPKfS5_(ptr nofree noundef readonly %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.a
  %i.c = icmp eq ptr %0, null
  %or.cond19 = or i1 %i.c, %or.cond
  br i1 %or.cond19, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss10IndexIVFPQE, i64 0) #22 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__dynamic_cast(ptr nonnull %i.g, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss14IndexFlatCodesE, i64 0) #22 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  store ptr %i.k, ptr %2, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  store ptr %i.m, ptr %1, align 8, !tbaa !52
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %bb.d, %bb.e, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_Z16testIfResidualPQPKN5faiss5IndexEPPKfS5_(ptr nofree noundef readonly %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.a
  %i.c = icmp eq ptr %0, null
  %or.cond19 = or i1 %i.c, %or.cond
  br i1 %or.cond19, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11Index2LayerE, i64 0) #22 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__dynamic_cast(ptr nonnull %i.g, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #22 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  store ptr %i.k, ptr %2, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  store ptr %i.m, ptr %1, align 8, !tbaa !52
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %bb.d, %bb.e, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z8generatemm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.5") align 8 captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul i64 %2, %1                           ; 6 uses
  %i.b = icmp ugt i64 %i.a, 2305843009213693951
  br i1 %i.b, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %.noexc22

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc22:                                         ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.c = shl nuw nsw i64 %i.a, 2
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #24 ; 6 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !73
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !74
  %i.g = getelementptr i8, ptr %i.d, i64 4        ; 3 uses
  %i.h = add nsw i64 %i.a, -1                     ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc22
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.h, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, %.noexc22, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.k = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.d, %.noexc22 ], [ %i.d, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.g, %.noexc22 ], [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.l, align 8, !tbaa !75
  %.not = icmp eq i64 %1, 0
  %.not33 = icmp eq i64 %2, 0
  %or.cond = or i1 %.not, %.not33
  br i1 %or.cond, label %._crit_edge32.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %bb.b
  %i.m = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.n = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.o = fdiv x86_fp80 %i.m, %i.n
  %i.p = fptoui x86_fp80 %i.o to i64              ; 2 uses
  %i.q = add i64 %i.p, 23
  %i.r = udiv i64 %i.q, %i.p
  %spec.select.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1) ; 2 uses
  %flatten.mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2)
  %flatten.overflow = extractvalue { i64, i1 } %flatten.mul, 1
  br i1 %flatten.overflow, label %.preheader.a, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %umax = tail call i64 @llvm.umax.i64(i64 %i.a, i64 1)
  br label %bb.c

.preheader.a:                                     ; preds = %.preheader.lr.ph.split, %._crit_edge.a
  %.01331.a = phi i64 [ %i.u, %._crit_edge.a ], [ 0, %.preheader.lr.ph.split ] ; 2 uses
  %.sroa.024.030.a = phi i64 [ %6, %._crit_edge.a ], [ 345, %.preheader.lr.ph.split ]
  %i.s = mul i64 %.01331.a, %2
  %i.t = getelementptr [4 x i8], ptr %i.k, i64 %i.s
  br label %3

3:                                                ; preds = %._crit_edge32.split.a, %.preheader.a
  %.029.lver.orig = phi i64 [ 0, %.preheader.a ], [ %20, %._crit_edge32.split.a ] ; 2 uses
  %.sroa.024.128.lver.orig = phi i64 [ %.sroa.024.030.a, %.preheader.a ], [ %6, %._crit_edge32.split.a ]
  br label %select.unfold.i.i.i.i.lver.orig

select.unfold.i.i.i.i.lver.orig:                  ; preds = %select.unfold.i.i.i.i.lver.orig, %3
  %.023.i.i.i.i.lver.orig = phi i64 [ %spec.select.i.i.i.i, %3 ], [ %13, %select.unfold.i.i.i.i.lver.orig ]
  %.01422.i.i.i.i.lver.orig = phi float [ 1.000000e+00, %3 ], [ %12, %select.unfold.i.i.i.i.lver.orig ] ; 2 uses
  %.01521.i.i.i.i.lver.orig = phi float [ 0.000000e+00, %3 ], [ %9, %select.unfold.i.i.i.i.lver.orig ]
  %4 = phi i64 [ %.sroa.024.128.lver.orig, %3 ], [ %6, %select.unfold.i.i.i.i.lver.orig ]
  %5 = mul nuw nsw i64 %4, 48271
  %6 = urem i64 %5, 2147483647                    ; 4 uses
  %7 = add nsw i64 %6, -1
  %8 = uitofp i64 %7 to float
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %.01422.i.i.i.i.lver.orig, float %.01521.i.i.i.i.lver.orig) ; 2 uses
  %10 = fpext float %.01422.i.i.i.i.lver.orig to x86_fp80
  %11 = fmul x86_fp80 %10, f0x401DFFFFFFFC00000000
  %12 = fptrunc x86_fp80 %11 to float             ; 2 uses
  %13 = add i64 %.023.i.i.i.i.lver.orig, -1       ; 2 uses
  %.not.i.i.i.i23.lver.orig = icmp eq i64 %13, 0
  br i1 %.not.i.i.i.i23.lver.orig, label %14, label %select.unfold.i.i.i.i.lver.orig, !llvm.loop !76

14:                                               ; preds = %select.unfold.i.i.i.i.lver.orig
  %15 = fdiv float %9, %12                        ; 2 uses
  %16 = fcmp ult float %15, 1.000000e+00
  br i1 %16, label %._crit_edge32.split.a, label %17, !prof !78

17:                                               ; preds = %14
  br label %._crit_edge32.split.a

._crit_edge32.split.a:                            ; preds = %17, %14
  %.016.i.i.i.i.lver.orig = phi float [ f0x3F7FFFFF, %17 ], [ %15, %14 ]
  %18 = fadd float %.016.i.i.i.i.lver.orig, 0.000000e+00
  %19 = getelementptr [4 x i8], ptr %i.t, i64 %.029.lver.orig
  store float %18, ptr %19, align 4, !tbaa !74
  %20 = add nuw i64 %.029.lver.orig, 1            ; 2 uses
  %exitcond41.not = icmp eq i64 %20, %2
  br i1 %exitcond41.not, label %._crit_edge.a, label %3, !llvm.loop !79

._crit_edge.a:                                    ; preds = %._crit_edge32.split.a
  %i.u = add nuw i64 %.01331.a, 1                 ; 2 uses
  %exitcond36.not = icmp eq i64 %i.u, %1
  br i1 %exitcond36.not, label %._crit_edge32.split, label %.preheader.a, !llvm.loop !80

bb.c:                                             ; preds = %.preheader.preheader, %bb.f
  %.029 = phi i64 [ %i.ai, %bb.f ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.024.128 = phi i64 [ %i.z, %bb.f ], [ 345, %.preheader.preheader ]
  br label %select.unfold.i.i.i.i

._crit_edge32.split:                              ; preds = %bb.f, %._crit_edge.a, %bb.b
  ret void

bb.d:                                             ; preds = %select.unfold.i.i.i.i
  %flatten. = getelementptr [4 x i8], ptr %i.k, i64 %.029
  %i.v = fdiv float %i.ac, %i.af                  ; 2 uses
  %i.w = fcmp ult float %i.v, 1.000000e+00
  br i1 %i.w, label %bb.f, label %bb.e, !prof !78

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i, %bb.c
  %.023.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.c ], [ %i.ag, %select.unfold.i.i.i.i ]
  %.01422.i.i.i.i = phi float [ 1.000000e+00, %bb.c ], [ %i.af, %select.unfold.i.i.i.i ] ; 2 uses
  %.01521.i.i.i.i = phi float [ 0.000000e+00, %bb.c ], [ %i.ac, %select.unfold.i.i.i.i ]
  %i.x = phi i64 [ %.sroa.024.128, %bb.c ], [ %i.z, %select.unfold.i.i.i.i ]
  %i.y = mul nuw nsw i64 %i.x, 48271
  %i.z = urem i64 %i.y, 2147483647                ; 3 uses
  %i.aa = add nsw i64 %i.z, -1
  %i.ab = uitofp i64 %i.aa to float
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %.01422.i.i.i.i, float %.01521.i.i.i.i) ; 2 uses
  %i.ad = fpext float %.01422.i.i.i.i to x86_fp80
  %i.ae = fmul x86_fp80 %i.ad, f0x401DFFFFFFFC00000000
  %i.af = fptrunc x86_fp80 %i.ae to float         ; 2 uses
  %i.ag = add i64 %.023.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i23 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i23, label %bb.d, label %select.unfold.i.i.i.i, !llvm.loop !76

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.016.i.i.i.i = phi float [ f0x3F7FFFFF, %bb.e ], [ %i.v, %bb.d ]
  %i.ah = fadd float %.016.i.i.i.i, 0.000000e+00
  store float %i.ah, ptr %flatten., align 4, !tbaa !74
  %i.ai = add nuw i64 %.029, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %umax
  br i1 %exitcond.not, label %._crit_edge32.split, label %bb.c, !llvm.loop !80
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #16

declare noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN7testing8internal13GetTestTypeIdEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.6, i32 noundef 526)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.7, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !24
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !81
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.9, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.6, i32 noundef 547)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.7, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.10, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !24
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !81
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.9, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI44testCppcontribSaDecode_D256_IVF256_PQ16_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI44testCppcontribSaDecode_D256_IVF256_PQ16_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV44testCppcontribSaDecode_D256_IVF256_PQ16_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

declare void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_test_cppcontrib_sa_decode.cpp:.noexc11.i
  %i.ss = load i64, ptr %i.sb, align 8, !tbaa !17
  br label %common.resume.sink.split

__cxx_global_var_init.88.exit:                    ; preds = %bb.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i176
  store ptr %i.sk, ptr @_ZN55testCppcontribSaDecode_D256_MINMAXFP16_IVF256_PQ16_Test10test_info_E, align 8, !tbaa !911
  %i.st = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN55testCppcontribSaDecode_D256_MINMAXFP16_IVF256_PQ16_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.su = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.sv = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24 ; 3 uses
  store ptr %i.sv, ptr %2, align 8, !tbaa !18
  store i64 63, ptr %i.su, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.sv, ptr noundef nonnull align 1 dereferenceable(63) @.str.3, i64 63, i1 false)
  %i.sw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 63, ptr %i.sw, align 8, !tbaa !14
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 63
  store i8 0, ptr %i.sx, align 1, !tbaa !17
  %i.sy = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1217, ptr %i.sy, align 8, !tbaa !909
  %i.sz = invoke noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
          to label %bb.fg unwind label %bb.fl

bb.fg:                                            ; preds = %__cxx_global_var_init.88.exit
  %i.ta = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.3, i32 noundef 1217)
          to label %bb.fh unwind label %bb.fl

bb.fh:                                            ; preds = %bb.fg
  %i.tb = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.3, i32 noundef 1217)
          to label %bb.fi unwind label %bb.fl

bb.fi:                                            ; preds = %bb.fh
  %i.tc = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #24
          to label %bb.fj unwind label %bb.fl     ; 2 uses

bb.fj:                                            ; preds = %bb.fi
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI48testCppcontribSaDecode_D256_MINMAXFP16_PQ16_TestEE, i64 16), ptr %i.tc, align 8, !tbaa !24
  %i.td = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.113, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %2, ptr noundef %i.sz, ptr noundef %i.ta, ptr noundef %i.tb, ptr noundef nonnull %i.tc)
          to label %bb.fk unwind label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.te = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.tf = icmp eq ptr %i.te, %i.su
  br i1 %i.tf, label %__cxx_global_var_init.112.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i183: ; preds = %bb.fk
  %i.tg = load i64, ptr %i.su, align 8, !tbaa !17
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.th) #23
  br label %__cxx_global_var_init.112.exit

bb.fl:                                            ; preds = %bb.fj, %bb.fi, %bb.fh, %bb.fg, %__cxx_global_var_init.88.exit
  %i.ti = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tj = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.tk = icmp eq ptr %i.tj, %i.su
  br i1 %i.tk, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i181: ; preds = %bb.fl
  %i.tl = load i64, ptr %i.su, align 8, !tbaa !17
  br label %common.resume.sink.split

__cxx_global_var_init.112.exit:                   ; preds = %bb.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i183
  store ptr %i.td, ptr @_ZN48testCppcontribSaDecode_D256_MINMAXFP16_PQ16_Test10test_info_E, align 8, !tbaa !911
  %i.tm = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN48testCppcontribSaDecode_D256_MINMAXFP16_PQ16_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.to = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24 ; 3 uses
  store ptr %i.to, ptr %1, align 8, !tbaa !18
  store i64 63, ptr %i.tn, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.to, ptr noundef nonnull align 1 dereferenceable(63) @.str.3, i64 63, i1 false)
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 63, ptr %i.tp, align 8, !tbaa !14
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 63
  store i8 0, ptr %i.tq, align 1, !tbaa !17
  %i.tr = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 1224, ptr %i.tr, align 8, !tbaa !909
  %i.ts = invoke noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
          to label %bb.fm unwind label %bb.fr

bb.fm:                                            ; preds = %__cxx_global_var_init.112.exit
  %i.tt = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.3, i32 noundef 1224)
          to label %bb.fn unwind label %bb.fr

bb.fn:                                            ; preds = %bb.fm
  %i.tu = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.3, i32 noundef 1224)
          to label %bb.fo unwind label %bb.fr

bb.fo:                                            ; preds = %bb.fn
  %i.tv = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #24
          to label %bb.fp unwind label %bb.fr     ; 2 uses

bb.fp:                                            ; preds = %bb.fo
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI51testCppcontribSaDecode_D256_MINMAX_IVF256_PQ16_TestEE, i64 16), ptr %i.tv, align 8, !tbaa !24
  %i.tw = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.116, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %1, ptr noundef %i.ts, ptr noundef %i.tt, ptr noundef %i.tu, ptr noundef nonnull %i.tv)
          to label %bb.fq unwind label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.tx = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.ty = icmp eq ptr %i.tx, %i.tn
  br i1 %i.ty, label %__cxx_global_var_init.115.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i190: ; preds = %bb.fq
  %i.tz = load i64, ptr %i.tn, align 8, !tbaa !17
  %i.ua = add i64 %i.tz, 1
  call void @_ZdlPvm(ptr noundef %i.tx, i64 noundef %i.ua) #23
  br label %__cxx_global_var_init.115.exit

bb.fr:                                            ; preds = %bb.fp, %bb.fo, %bb.fn, %bb.fm, %__cxx_global_var_init.112.exit
  %i.ub = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uc = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.ud = icmp eq ptr %i.uc, %i.tn
  br i1 %i.ud, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i188: ; preds = %bb.fr
  %i.ue = load i64, ptr %i.tn, align 8, !tbaa !17
  br label %common.resume.sink.split

__cxx_global_var_init.115.exit:                   ; preds = %bb.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i190
  store ptr %i.tw, ptr @_ZN51testCppcontribSaDecode_D256_MINMAX_IVF256_PQ16_Test10test_info_E, align 8, !tbaa !911
  %i.uf = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN51testCppcontribSaDecode_D256_MINMAX_IVF256_PQ16_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.uh = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24 ; 3 uses
  store ptr %i.uh, ptr %0, align 8, !tbaa !18
  store i64 63, ptr %i.ug, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.uh, ptr noundef nonnull align 1 dereferenceable(63) @.str.3, i64 63, i1 false)
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 63, ptr %i.ui, align 8, !tbaa !14
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 63
  store i8 0, ptr %i.uj, align 1, !tbaa !17
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1230, ptr %i.uk, align 8, !tbaa !909
  %i.ul = invoke noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
          to label %bb.fs unwind label %bb.fx

bb.fs:                                            ; preds = %__cxx_global_var_init.115.exit
  %i.um = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.3, i32 noundef 1230)
          to label %bb.ft unwind label %bb.fx

bb.ft:                                            ; preds = %bb.fs
  %i.un = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.3, i32 noundef 1230)
          to label %bb.fu unwind label %bb.fx

bb.fu:                                            ; preds = %bb.ft
  %i.uo = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #24
          to label %bb.fv unwind label %bb.fx     ; 2 uses

bb.fv:                                            ; preds = %bb.fu
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI44testCppcontribSaDecode_D256_MINMAX_PQ16_TestEE, i64 16), ptr %i.uo, align 8, !tbaa !24
  %i.up = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.119, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %0, ptr noundef %i.ul, ptr noundef %i.um, ptr noundef %i.un, ptr noundef nonnull %i.uo)
          to label %bb.fw unwind label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.uq = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ur = icmp eq ptr %i.uq, %i.ug
  br i1 %i.ur, label %__cxx_global_var_init.118.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i197: ; preds = %bb.fw
  %i.us = load i64, ptr %i.ug, align 8, !tbaa !17
  %i.ut = add i64 %i.us, 1
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.ut) #23
  br label %__cxx_global_var_init.118.exit

bb.fx:                                            ; preds = %bb.fv, %bb.fu, %bb.ft, %bb.fs, %__cxx_global_var_init.115.exit
  %i.uu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uv = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.uw = icmp eq ptr %i.uv, %i.ug
  br i1 %i.uw, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i195: ; preds = %bb.fx
  %i.ux = load i64, ptr %i.ug, align 8, !tbaa !17
  br label %common.resume.sink.split

__cxx_global_var_init.118.exit:                   ; preds = %bb.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i197
  store ptr %i.up, ptr @_ZN44testCppcontribSaDecode_D256_MINMAX_PQ16_Test10test_info_E, align 8, !tbaa !911
  %i.uy = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN44testCppcontribSaDecode_D256_MINMAX_PQ16_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #16

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { noreturn }
attributes #26 = { noreturn nounwind }
attributes #27 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!15, !16, i64 8}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !16, i64 8, !8, i64 16}
!16 = !{!"long", !8, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!15, !12, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0, !22, i64 8}
!21 = !{!"p1 _ZTSN5faiss5IndexE", !13, i64 0}
!22 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !23, i64 0}
!23 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !9, i64 0}
!26 = distinct !{null, null, null, null}
!27 = !{!28, !7, i64 8}
!28 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 8, !7, i64 12}
!29 = !{!28, !7, i64 12}
!30 = !{!31, !21, i64 16}
!31 = !{!"_ZTSSt15_Sp_counted_ptrIPN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EE", !28, i64 0, !21, i64 16}
!32 = !{!22, !23, i64 0}
!33 = !{!34, !35, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!35 = !{!"p1 float", !13, i64 0}
!36 = !{!37, !12, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZSt10make_tupleIJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSA_: argument 0"}
!40 = distinct !{!40, !"_ZSt10make_tupleIJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSA_"}
!41 = !{!37, !12, i64 8}
!42 = !{!37, !12, i64 16}
!43 = distinct !{null}
!44 = !{!7, !7, i64 0}
!45 = !{!46, !21, i64 0}
!46 = !{!"_ZTSN5faiss15Level1QuantizerE", !21, i64 0, !16, i64 8, !8, i64 16, !47, i64 17, !48, i64 24, !21, i64 80}
!47 = !{!"bool", !8, i64 0}
!48 = !{!"_ZTSN5faiss20ClusteringParametersE", !7, i64 0, !7, i64 4, !47, i64 8, !47, i64 9, !47, i64 10, !47, i64 11, !47, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !16, i64 32, !47, i64 40, !47, i64 41, !49, i64 42, !50, i64 44, !51, i64 48}
!49 = !{!"_ZTSN5faiss20ClusteringInitMethodE", !8, i64 0}
!50 = !{!"short", !8, i64 0}
!51 = !{!"double", !8, i64 0}
!52 = !{!35, !35, i64 0}
!53 = !{!54, !12, i64 64}
!54 = !{!"_ZTSN5faiss16MaybeOwnedVectorIhEE", !47, i64 0, !55, i64 8, !12, i64 32, !16, i64 40, !58, i64 48, !12, i64 64, !16, i64 72}
!55 = !{!"_ZTSSt6vectorIhSaIhEE", !56, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !37, i64 0}
!58 = !{!"_ZTSSt10shared_ptrIN5faiss21MaybeOwnedVectorOwnerEE", !59, i64 0}
!59 = !{!"_ZTSSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EE", !60, i64 0, !22, i64 8}
!60 = !{!"p1 _ZTSN5faiss21MaybeOwnedVectorOwnerE", !13, i64 0}
!61 = !{!62, !21, i64 128}
!62 = !{!"_ZTSN5faiss11Index2LayerE", !63, i64 0, !46, i64 128, !67, i64 216, !16, i64 440, !16, i64 448}
!63 = !{!"_ZTSN5faiss14IndexFlatCodesE", !64, i64 0, !16, i64 40, !54, i64 48}
!64 = !{!"_ZTSN5faiss5IndexE", !7, i64 8, !16, i64 16, !47, i64 24, !47, i64 25, !65, i64 28, !66, i64 32}
!65 = !{!"_ZTSN5faiss10MetricTypeE", !8, i64 0}
!66 = !{!"float", !8, i64 0}
!67 = !{!"_ZTSN5faiss16ProductQuantizerE", !68, i64 0, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !47, i64 56, !69, i64 60, !48, i64 64, !21, i64 120, !70, i64 128, !70, i64 152, !70, i64 176, !70, i64 200}
!68 = !{!"_ZTSN5faiss9QuantizerE", !16, i64 8, !16, i64 16}
!69 = !{!"_ZTSN5faiss16ProductQuantizer12train_type_tE", !8, i64 0}
!70 = !{!"_ZTSSt6vectorIfSaIfEE", !71, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !72, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !34, i64 0}
!73 = !{!34, !35, i64 16}
!74 = !{!66, !66, i64 0}
!75 = !{!34, !35, i64 8}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !77}
!81 = !{!82, !84, i64 32}
!82 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !83, i64 24, !84, i64 28, !84, i64 32, !85, i64 40, !86, i64 48, !8, i64 64, !7, i64 192, !87, i64 200, !88, i64 208}
!83 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!84 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!85 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!86 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !16, i64 8}
!87 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!88 = !{!"_ZTSSt6locale", !89, i64 0}
!89 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!90 = !{!13, !13, i64 0}
!91 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!92 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!93 = !{!12, !12, i64 0}
!94 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!95 = distinct !{ptr @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!96 = !{!97, !47, i64 0}
!97 = !{!"_ZTSN7testing15AssertionResultE", !47, i64 0, !98, i64 8}
!98 = !{!"_ZTSSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !99, i64 0}
!99 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !100, i64 0}
!100 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !101, i64 0}
!101 = !{!"_ZTSSt5tupleIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !102, i64 0}
!102 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !103, i64 0}
!103 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !104, i64 0}
!104 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!105 = !{i8 0, i8 2}
!106 = !{}
!107 = !{!104, !104, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!110 = distinct !{null, null, null}
!111 = distinct !{!111, !77}
!112 = distinct !{!112, !77}
!113 = distinct !{!113, !77, !114, !115}
!114 = !{!"llvm.loop.isvectorized", i32 1}
!115 = !{!"llvm.loop.unroll.runtime.disable"}
!116 = distinct !{!116, !77}
!117 = distinct !{!117, !77, !115, !114}
!118 = distinct !{!118, !77}
!119 = distinct !{!119, !77}
!120 = distinct !{!120, !77, !114, !115}
!121 = distinct !{!121, !77, !115, !114}
!122 = distinct !{!122, !77}
!123 = distinct !{!123, !77}
!124 = distinct !{!124, !77, !114, !115}
!125 = distinct !{!125, !77, !115, !114}
!126 = distinct !{!126, !77}
!127 = distinct !{!127, !77}
!128 = distinct !{null, null}
!129 = !{!82, !16, i64 8}
!130 = !{!131, !16, i64 8}
!131 = !{!"_ZTSSi", !16, i64 8}
!132 = distinct !{!132, !77}
!133 = distinct !{!133, !77, !114, !115}
!134 = distinct !{!134, !77}
!135 = distinct !{!135, !77, !115, !114}
!136 = distinct !{!136, !77}
!137 = distinct !{!137, !77}
!138 = distinct !{!138, !77, !114, !115}
!139 = distinct !{!139, !77, !115, !114}
!140 = distinct !{!140, !77}
!141 = distinct !{!141, !77}
!142 = distinct !{!142, !77, !114, !115}
!143 = distinct !{!143, !77, !115, !114}
!144 = distinct !{!144, !77}
!145 = distinct !{!145, !77}
!146 = distinct !{!146, !77}
!147 = distinct !{!147, !77, !114, !115}
!148 = distinct !{!148, !77}
!149 = distinct !{!149, !77, !115, !114}
!150 = distinct !{!150, !77}
!151 = distinct !{!151, !77}
!152 = distinct !{!152, !77, !114, !115}
!153 = distinct !{!153, !77, !115, !114}
!154 = distinct !{!154, !77}
!155 = distinct !{!155, !77}
!156 = distinct !{!156, !77, !114, !115}
!157 = distinct !{!157, !77, !115, !114}
!158 = distinct !{!158, !77}
!159 = distinct !{!159, !77}
!160 = distinct !{!160, !77}
!161 = distinct !{!161, !77, !114, !115}
end_hunk_1
