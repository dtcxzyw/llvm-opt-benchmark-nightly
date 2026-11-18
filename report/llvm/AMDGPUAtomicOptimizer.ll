Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUAtomicOptimizer?download=true
inline.NumInlined: 1633
inline.NumDeleted: 929
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm14DomTreeUpdaterD2Ev:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.t = load i8, ptr %i.s, align 8, !tbaa !36, !range !259, !noundef !41
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4llvm14DomTreeUpdater18CallBackOnDeletionESaIS2_EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  tail call void @free(ptr noundef %i.w) #15
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.e, %_ZNSt6vectorIN4llvm14DomTreeUpdater18CallBackOnDeletionESaIS2_EED2Ev.exit
  %i.x = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.x) #15
  br label %_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEED2Ev.exit

_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm35initializeAMDGPUAtomicOptimizerPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %class.anon.349, align 8            ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store ptr @_ZL39initializeAMDGPUAtomicOptimizerPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !68
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !364
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !68
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !68
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL39InitializeAMDGPUAtomicOptimizerPassFlag, ptr noundef nonnull @__once_proxy) #15 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #17
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !68
  store ptr null, ptr %i.c, align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL39initializeAMDGPUAtomicOptimizerPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #0 {
bb.a:
  tail call void @_ZN4llvm39initializeUniformityInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #15
  tail call void @_ZN4llvm30initializeTargetPassConfigPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #15
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 9 uses
  store ptr @.str.8, ptr %i.a, align 8, !tbaa !365
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 27, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !282
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.9, ptr %i.b, align 8, !tbaa !365
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 23, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !282
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN12_GLOBAL__N_121AMDGPUAtomicOptimizer2IDE, ptr %i.c, align 8, !tbaa !367
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !368
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 0, ptr %i.e, align 1, !tbaa !369
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_121AMDGPUAtomicOptimizerEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !370
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN4llvm31createAMDGPUAtomicOptimizerPassENS_11ScanOptionsE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !286
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_121AMDGPUAtomicOptimizer2IDE, ptr %i.c, align 8, !tbaa !371
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !372
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN12_GLOBAL__N_121AMDGPUAtomicOptimizerE, i64 16), ptr %i.a, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %0, ptr %i.e, align 4, !tbaa !289
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm8Function13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEE20dropOutOfDateUpdatesEv(ptr noundef nonnull align 8 dereferenceable(658)) local_unnamed_addr #3

declare void @_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEE16applyUpdatesImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(658)) local_unnamed_addr #3

declare void @_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEE16applyUpdatesImplILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(658)) local_unnamed_addr #3

declare void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm15AMDGPUSubtarget21isSingleLaneExecutionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_125AMDGPUAtomicOptimizerImpl14optimizeAtomicERN4llvm11InstructionENS1_13AtomicRMWInst5BinOpEjbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %17 = alloca %"class.llvm::ArrayRef.267", align 8 ; 4 uses
  %18 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %19 = alloca %class.anon.278, align 1           ; 3 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca [2 x ptr], align 8                ; 5 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %24 = alloca %"class.llvm::ArrayRef.267", align 8 ; 4 uses
  %25 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %26 = alloca %class.anon.278, align 1           ; 3 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.e = alloca [2 x ptr], align 8                ; 5 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %29 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %30 = alloca %class.anon.280, align 1           ; 3 uses
  %i.f = alloca [3 x ptr], align 8                ; 6 uses
  %31 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %32 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %33 = alloca %class.anon.280, align 1           ; 3 uses
  %34 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %35 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %36 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %37 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca [6 x ptr], align 8                ; 9 uses
  %38 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.i = alloca [6 x ptr], align 8                ; 9 uses
  %39 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.j = alloca [3 x ptr], align 8                ; 6 uses
  %i.k = alloca [2 x ptr], align 8                ; 5 uses
  %40 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %41 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.l = alloca [3 x ptr], align 8                ; 6 uses
  %i.m = alloca [2 x ptr], align 8                ; 5 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %43 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.n = alloca [3 x ptr], align 8                ; 6 uses
  %i.o = alloca [2 x ptr], align 8                ; 5 uses
  %44 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %45 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 6 uses
  %i.q = alloca [6 x ptr], align 8                ; 21 uses
  %46 = alloca %"class.llvm::Twine", align 8      ; 13 uses
  %i.r = alloca [6 x ptr], align 8                ; 9 uses
  %47 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.s = alloca [6 x ptr], align 8                ; 9 uses
  %48 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.t = alloca [6 x ptr], align 8                ; 9 uses
  %49 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %50 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %51 = alloca %class.anon.280, align 1           ; 3 uses
  %i.u = alloca [6 x ptr], align 8                ; 9 uses
  %52 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.v = alloca [2 x ptr], align 8                ; 5 uses
  %53 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %54 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %55 = alloca %class.anon.280, align 1           ; 3 uses
  %i.w = alloca [6 x ptr], align 8                ; 9 uses
  %56 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.x = alloca ptr, align 8                      ; 5 uses
  %i.y = alloca ptr, align 8                      ; 10 uses
  %i.z = alloca [6 x ptr], align 8                ; 21 uses
  %57 = alloca %"class.llvm::Twine", align 8      ; 13 uses
  %58 = alloca %"class.llvm::ArrayRef.267", align 8 ; 10 uses
  %59 = alloca %"class.llvm::function_ref", align 8 ; 11 uses
  %60 = alloca %class.anon.278, align 1           ; 9 uses
  %i.aa = alloca [6 x ptr], align 8               ; 9 uses
  %61 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %62 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %63 = alloca %class.anon.280, align 1           ; 3 uses
  %64 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %65 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %66 = alloca %class.anon.280, align 1           ; 3 uses
  %i.ab = alloca [2 x ptr], align 8               ; 5 uses
  %67 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.ac = alloca [2 x ptr], align 8               ; 5 uses
  %68 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %69 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %70 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %71 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %72 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %73 = alloca %"class.llvm::APFloat", align 8    ; 9 uses
  %74 = alloca %"class.llvm::APFloat", align 8    ; 9 uses
  %75 = alloca %"class.llvm::ArrayRef.267", align 8 ; 4 uses
  %76 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %77 = alloca %"class.llvm::ArrayRef.267", align 8 ; 4 uses
  %78 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %79 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %80 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %81 = alloca %"class.llvm::ArrayRef.267", align 8 ; 4 uses
  %82 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %83 = alloca %"class.llvm::ArrayRef.267", align 8 ; 4 uses
  %84 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %85 = alloca %"class.llvm::IRBuilder", align 8  ; 120 uses
  %86 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %87 = alloca %class.anon, align 1               ; 3 uses
  %i.ad = alloca ptr, align 8                     ; 18 uses
  %i.ae = alloca ptr, align 8                     ; 4 uses
  %i.af = alloca ptr, align 8                     ; 4 uses
  %88 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %89 = alloca %"class.llvm::ArrayRef.267", align 8 ; 2 uses
  %i.ag = alloca [2 x ptr], align 8               ; 5 uses
  %90 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %91 = alloca %class.anon, align 1               ; 3 uses
  %92 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %93 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %94 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.ah = alloca [2 x ptr], align 8               ; 5 uses
  %95 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %96 = alloca %class.anon, align 1               ; 3 uses
  %i.ai = alloca [2 x ptr], align 8               ; 5 uses
  %97 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %98 = alloca %class.anon, align 1               ; 3 uses
  %i.aj = alloca ptr, align 8                     ; 7 uses
  %i.ak = alloca ptr, align 8                     ; 16 uses
  %i.al = alloca [2 x ptr], align 8               ; 5 uses
  %99 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %100 = alloca %"class.llvm::ArrayRef.267", align 8 ; 2 uses
  %101 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %102 = alloca %class.anon.278, align 1          ; 3 uses
  %i.am = alloca [2 x ptr], align 8               ; 5 uses
  %103 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %104 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %105 = alloca %class.anon.280, align 1          ; 3 uses
  %106 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %107 = alloca %"class.llvm::ArrayRef.267", align 8 ; 2 uses
  %108 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %109 = alloca %class.anon.278, align 1          ; 3 uses
  %110 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %111 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %112 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %113 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %114 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %115 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %116 = alloca %"class.llvm::Twine", align 8     ; 5 uses
  %117 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %118 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %119 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %120 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %121 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %122 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %123 = alloca %"class.llvm::SmallVector.289", align 8 ; 19 uses
  %124 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %125 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %i.an = alloca ptr, align 8                     ; 5 uses
  %126 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %127 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %128 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %129 = alloca %class.anon.280, align 1          ; 3 uses
  %130 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %131 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %132 = alloca %"class.llvm::ArrayRef.267", align 8 ; 2 uses
  %133 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %134 = alloca %class.anon.278, align 1          ; 3 uses
  %135 = alloca %"class.llvm::Twine", align 8     ; 5 uses
  %136 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %137 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %138 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %139 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %140 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %141 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !67
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !410
  %i.at = icmp ne ptr %i.as, null
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = select i1 %i.at, i1 true, i1 %i.aw
  br i1 %i.ax, label %_ZNK4llvm11Instruction11getMetadataENS_9StringRefE.exit, label %.thread

_ZNK4llvm11Instruction11getMetadataENS_9StringRefE.exit: ; preds = %bb.c
  %i.ay = tail call noundef ptr @_ZNK4llvm11Instruction15getMetadataImplENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str, i64 28) #15 ; 3 uses
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm11Instruction11getMetadataENS_9StringRefE.exit
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -16 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = and i64 %i.ba, 2
  %.not.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 -32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !12
  br label %_ZNK4llvm6MDNode10getOperandEj.exit

bb.f:                                             ; preds = %bb.d
  %i.be = lshr i64 %i.ba, 2
  %i.bf = and i64 %i.be, 15
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bg
  br label %_ZNK4llvm6MDNode10getOperandEj.exit

_ZNK4llvm6MDNode10getOperandEj.exit:              ; preds = %bb.e, %bb.f
  %.sroa.0.0.i.i = phi ptr [ %i.bh, %bb.f ], [ %i.bd, %bb.e ]
  %i.bi = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !413
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 136
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !418 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !291 ; 2 uses
  %i.bo = icmp ult i32 %i.bn, 65                  ; 2 uses
  br i1 %i.bo, label %_ZNK4llvm5APInt3uleEm.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit
  %i.bp = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.bl) #19
  %i.bq = sub i32 %i.bn, %i.bp
  %i.br = icmp ugt i32 %i.bq, 64
  br i1 %i.br, label %.thread, label %_ZNK4llvm5APInt3uleEm.exit

_ZNK4llvm5APInt3uleEm.exit:                       ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %i.bs = load ptr, ptr %i.bl, align 8
  %spec.select.i.i.i = select i1 %i.bo, ptr %i.bl, ptr %i.bs
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !292
  %i.bt = icmp ult i64 %.0.i.i.i, 6
  br i1 %i.bt, label %bb.hx, label %.thread

.thread:                                          ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, %bb.c, %_ZNK4llvm5APInt3uleEm.exit, %_ZNK4llvm11Instruction11getMetadataENS_9StringRefE.exit, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #15
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !78
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !293, !nonnull !41, !align !42
  %i.bx = getelementptr inbounds nuw i8, ptr %85, i64 88 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %85, i64 96 ; 3 uses
  store ptr null, ptr %85, align 8, !tbaa !410
  %i.bz = getelementptr inbounds nuw i8, ptr %85, i64 32 ; 86 uses
  store ptr %i.bw, ptr %i.bz, align 8, !tbaa !419
  %i.ca = getelementptr inbounds nuw i8, ptr %85, i64 40 ; 11 uses
  store ptr %i.bx, ptr %i.ca, align 8, !tbaa !420
  %i.cb = getelementptr inbounds nuw i8, ptr %85, i64 48 ; 15 uses
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !421
  %i.cc = getelementptr inbounds nuw i8, ptr %85, i64 56
  store ptr null, ptr %i.cc, align 8, !tbaa !422
  %i.cd = getelementptr inbounds nuw i8, ptr %85, i64 64
  store i32 0, ptr %i.cd, align 8, !tbaa !305
  %i.ce = getelementptr inbounds nuw i8, ptr %85, i64 68 ; 4 uses
  store i8 0, ptr %i.ce, align 4, !tbaa !306
  %i.cf = getelementptr inbounds nuw i8, ptr %85, i64 69
  store i8 2, ptr %i.cf, align 1, !tbaa !423
  %i.cg = getelementptr inbounds nuw i8, ptr %85, i64 70
  store i8 7, ptr %i.cg, align 2, !tbaa !424
  %i.ch = getelementptr inbounds nuw i8, ptr %85, i64 72
  %i.ci = getelementptr inbounds nuw i8, ptr %85, i64 8 ; 12 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.bx, align 8, !tbaa !44
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.by, align 8, !tbaa !44
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !425
end_hunk_0
begin_hunk_1_@_ZNK12_GLOBAL__N_125AMDGPUAtomicOptimizerImpl14optimizeAtomicERN4llvm11InstructionENS1_13AtomicRMWInst5BinOpEjbb:bb.a
  %i.ir = phi i64 [ %i.ik, %_ZN4llvm5APIntC2Ejmbb.exit.thread.i.i ], [ %i.iq, %_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i.i ]
  store i64 %i.ir, ptr %71, align 8, !tbaa !292, !alias.scope !436
  br label %_ZN4llvm5APInt17getSignedMinValueEj.exit.i

bb.ak:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i.i
  %i.is = load ptr, ptr %71, align 8, !tbaa !292, !alias.scope !436
  %i.it = lshr i32 %i.il, 6
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.iu ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !282
  %i.ix = or i64 %i.iw, %i.io
  store i64 %i.ix, ptr %i.iv, align 8, !tbaa !282
  br label %_ZN4llvm5APInt17getSignedMinValueEj.exit.i

_ZN4llvm5APInt17getSignedMinValueEj.exit.i:       ; preds = %bb.ak, %bb.aj
  %i.iy = call noundef ptr @_ZN4llvm11ConstantInt3getERNS_11LLVMContextERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull align 8 dereferenceable(12) %71) #15
  %i.iz = load i32, ptr %i.ig, align 8, !tbaa !291
  %i.ja = icmp ugt i32 %i.iz, 64
  br i1 %i.ja, label %bb.al, label %_ZN4llvm5APIntD2Ev.exit18.i

bb.al:                                            ; preds = %_ZN4llvm5APInt17getSignedMinValueEj.exit.i
  %i.jb = load ptr, ptr %71, align 8, !tbaa !292  ; 2 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %_ZN4llvm5APIntD2Ev.exit18.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %i.jb) #16
  br label %_ZN4llvm5APIntD2Ev.exit18.i

_ZN4llvm5APIntD2Ev.exit18.i:                      ; preds = %bb.am, %bb.al, %_ZN4llvm5APInt17getSignedMinValueEj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #15
  br label %_ZL27getIdentityValueForAtomicOpPN4llvm4TypeENS_13AtomicRMWInst5BinOpE.exit

bb.an:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #15
  %i.jd = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 3 uses
  store i32 %i.hn, ptr %i.jd, align 8, !tbaa !291, !alias.scope !437
  %i.je = icmp ult i32 %i.hn, 65
  br i1 %i.je, label %_ZN4llvm5APInt10getAllOnesEj.exit.thread.i.i, label %_ZN4llvm5APInt10getAllOnesEj.exit.i.i

_ZN4llvm5APInt10getAllOnesEj.exit.thread.i.i:     ; preds = %bb.an
  %i.jf = sub i64 0, %.fca.0.extract.i
  %i.jg = and i64 %i.jf, 63
  %i.jh = lshr i64 -1, %i.jg
  %i.ji = icmp eq i32 %i.hn, 0
  %spec.select.i.i.i20.i = select i1 %i.ji, i64 0, i64 %i.jh, !prof !435
  %i.jj = add nuw nsw i64 %.fca.0.extract.i, 63
  %i.jk = and i64 %i.jj, 63
  %i.jl = shl nuw i64 1, %i.jk
  %i.jm = xor i64 %i.jl, -1
  br label %bb.ao

_ZN4llvm5APInt10getAllOnesEj.exit.i.i:            ; preds = %bb.an
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %72, i64 noundef -1, i1 noundef zeroext true) #15
  %.pre.i19.i = load i32, ptr %i.jd, align 8, !tbaa !291, !alias.scope !438
  %i.jn = icmp ult i32 %.pre.i19.i, 65
  %i.jo = add i32 %i.hn, -1                       ; 2 uses
  %i.jp = and i32 %i.jo, 63
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = shl nuw i64 1, %i.jq
  %i.js = xor i64 %i.jr, -1                       ; 2 uses
  br i1 %i.jn, label %_ZN4llvm5APInt10getAllOnesEj.exit.i._crit_edge.i, label %bb.ap

_ZN4llvm5APInt10getAllOnesEj.exit.i._crit_edge.i: ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit.i.i
  %.pre.i = load i64, ptr %72, align 8, !tbaa !292, !alias.scope !438
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit.i._crit_edge.i, %_ZN4llvm5APInt10getAllOnesEj.exit.thread.i.i
  %i.jt = phi i64 [ %spec.select.i.i.i20.i, %_ZN4llvm5APInt10getAllOnesEj.exit.thread.i.i ], [ %.pre.i, %_ZN4llvm5APInt10getAllOnesEj.exit.i._crit_edge.i ]
  %i.ju = phi i64 [ %i.jm, %_ZN4llvm5APInt10getAllOnesEj.exit.thread.i.i ], [ %i.js, %_ZN4llvm5APInt10getAllOnesEj.exit.i._crit_edge.i ]
  %i.jv = and i64 %i.ju, %i.jt
  store i64 %i.jv, ptr %72, align 8, !tbaa !292, !alias.scope !438
  br label %_ZN4llvm5APInt17getSignedMaxValueEj.exit.i

bb.ap:                                            ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit.i.i
  %i.jw = load ptr, ptr %72, align 8, !tbaa !292, !alias.scope !438
  %i.jx = lshr i32 %i.jo, 6
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.jy ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !282
  %i.kb = and i64 %i.ka, %i.js
  store i64 %i.kb, ptr %i.jz, align 8, !tbaa !282
  br label %_ZN4llvm5APInt17getSignedMaxValueEj.exit.i

_ZN4llvm5APInt17getSignedMaxValueEj.exit.i:       ; preds = %bb.ap, %bb.ao
  %i.kc = call noundef ptr @_ZN4llvm11ConstantInt3getERNS_11LLVMContextERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull align 8 dereferenceable(12) %72) #15
  %i.kd = load i32, ptr %i.jd, align 8, !tbaa !291
  %i.ke = icmp ugt i32 %i.kd, 64
  br i1 %i.ke, label %bb.aq, label %_ZN4llvm5APIntD2Ev.exit21.i

bb.aq:                                            ; preds = %_ZN4llvm5APInt17getSignedMaxValueEj.exit.i
  %i.kf = load ptr, ptr %72, align 8, !tbaa !292  ; 2 uses
  %i.kg = icmp eq ptr %i.kf, null
  br i1 %i.kg, label %_ZN4llvm5APIntD2Ev.exit21.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZdaPv(ptr noundef nonnull %i.kf) #16
  br label %_ZN4llvm5APIntD2Ev.exit21.i

_ZN4llvm5APIntD2Ev.exit21.i:                      ; preds = %bb.ar, %bb.aq, %_ZN4llvm5APInt17getSignedMaxValueEj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #15
  br label %_ZL27getIdentityValueForAtomicOpPN4llvm4TypeENS_13AtomicRMWInst5BinOpE.exit

bb.as:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #15
  %i.kh = call noundef nonnull align 4 dereferenceable(29) ptr @_ZNK4llvm4Type15getFltSemanticsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hj) #15 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.kh, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %73, ptr noundef nonnull align 4 dereferenceable(29) %i.kh, i32 noundef 0) #15
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i.i

bb.au:                                            ; preds = %bb.as
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %73, ptr noundef nonnull align 4 dereferenceable(29) %i.kh, i32 noundef 0) #15
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i.i

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i.i: ; preds = %bb.au, %bb.at
  %i.ki = load ptr, ptr %73, align 8, !tbaa !292, !alias.scope !439
  %.not.i.i.i = icmp eq ptr %i.ki, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i.i
  call void @_ZN4llvm6detail9IEEEFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %73, i1 noundef zeroext true) #15
  br label %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit.i

bb.aw:                                            ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i.i
  call void @_ZN4llvm6detail13DoubleAPFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %73, i1 noundef zeroext true) #15
  br label %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit.i

_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit.i: ; preds = %bb.aw, %bb.av
  %i.kj = call noundef ptr @_ZN4llvm10ConstantFP3getERNS_11LLVMContextERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %73) #15
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %73) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #15
  br label %_ZL27getIdentityValueForAtomicOpPN4llvm4TypeENS_13AtomicRMWInst5BinOpE.exit

bb.ax:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i, %_ZNK4llvm8TypeSizecvmEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #15
  %i.kk = call noundef nonnull align 4 dereferenceable(29) ptr @_ZNK4llvm4Type15getFltSemanticsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hj) #15 ; 3 uses
  %.not.i.i.i5.i.i = icmp eq ptr %i.kk, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i.i5.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 4 dereferenceable(29) %i.kk, i32 noundef 0) #15
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i6.i.i

bb.az:                                            ; preds = %bb.ax
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 4 dereferenceable(29) %i.kk, i32 noundef 0) #15
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i6.i.i

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i6.i.i: ; preds = %bb.az, %bb.ay
  %i.kl = load ptr, ptr %74, align 8, !tbaa !292, !alias.scope !440
  %.not.i.i7.i.i = icmp eq ptr %i.kl, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i7.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i6.i.i
  call void @_ZN4llvm6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %74, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null) #15
  br label %_ZN4llvm7APFloat6getNaNERKNS_12fltSemanticsEbm.exit.i

bb.bb:                                            ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i6.i.i
  call void @_ZN4llvm6detail13DoubleAPFloat7makeNaNEbbPKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %74, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null) #15
  br label %_ZN4llvm7APFloat6getNaNERKNS_12fltSemanticsEbm.exit.i

_ZN4llvm7APFloat6getNaNERKNS_12fltSemanticsEbm.exit.i: ; preds = %bb.bb, %bb.ba
  %i.km = call noundef ptr @_ZN4llvm10ConstantFP3getERNS_11LLVMContextERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %74) #15
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %74) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #15
  br label %_ZL27getIdentityValueForAtomicOpPN4llvm4TypeENS_13AtomicRMWInst5BinOpE.exit

_ZL27getIdentityValueForAtomicOpPN4llvm4TypeENS_13AtomicRMWInst5BinOpE.exit: ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %_ZN4llvm5APIntD2Ev.exit17.i, %_ZN4llvm5APIntD2Ev.exit18.i, %_ZN4llvm5APIntD2Ev.exit21.i, %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit.i, %_ZN4llvm7APFloat6getNaNERKNS_12fltSemanticsEbm.exit.i
  %.0.i200 = phi ptr [ %i.hq, %_ZN4llvm5APIntD2Ev.exit.i ], [ %i.ib, %_ZN4llvm5APIntD2Ev.exit17.i ], [ %i.iy, %_ZN4llvm5APIntD2Ev.exit18.i ], [ %i.kc, %_ZN4llvm5APIntD2Ev.exit21.i ], [ %i.kj, %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit.i ], [ %i.km, %_ZN4llvm7APFloat6getNaNERKNS_12fltSemanticsEbm.exit.i ] ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #15
  store ptr null, ptr %i.aj, align 8, !tbaa !432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #15
  store ptr null, ptr %i.ak, align 8, !tbaa !432
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !441
  %i.kp = icmp eq ptr %i.ko, null                 ; 3 uses
  br i1 %4, label %bb.bc, label %bb.er

bb.bc:                                            ; preds = %_ZL27getIdentityValueForAtomicOpPN4llvm4TypeENS_13AtomicRMWInst5BinOpE.exit
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !67 ; 2 uses
  %i.ks = icmp eq i32 %i.kr, 0
  br i1 %i.ks, label %bb.bd, label %bb.cl

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #15
  store ptr %i.eg, ptr %i.al, align 8, !tbaa !432
  %i.kt = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %.0.i200, ptr %i.kt, align 8, !tbaa !432
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #15
  %i.ku = getelementptr inbounds nuw i8, ptr %99, i64 32
  store i16 257, ptr %i.ku, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %100, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #15
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %101, align 8, !tbaa !443
  %i.kv = getelementptr inbounds nuw i8, ptr %101, i64 8
  %i.kw = ptrtoint ptr %102 to i64
  store i64 %i.kw, ptr %i.kv, align 8, !tbaa !444
  %i.kx = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %85, i32 noundef 3532, ptr nonnull %i.ad, i64 1, ptr nonnull %i.al, i64 2, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %99, ptr noundef nonnull byval(%"class.llvm::ArrayRef.267") align 8 %100, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %101) #15 ; 7 uses
  store ptr %i.kx, ptr %i.ak, align 8, !tbaa !432
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #15
  br i1 %i.kp, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %bb.bd
  %i.ky = load ptr, ptr %i.eh, align 8, !tbaa !69, !nonnull !41, !align !42
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 822
  %i.la = load i8, ptr %i.kz, align 2, !tbaa !445, !range !259, !noundef !41
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %58)
  call void @llvm.lifetime.start.p0(ptr nonnull %59)
  call void @llvm.lifetime.start.p0(ptr nonnull %62)
  call void @llvm.lifetime.start.p0(ptr nonnull %65)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #15
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !78
  store ptr %i.ld, ptr %i.y, align 8, !tbaa !84
  %i.le = load ptr, ptr %i.ci, align 8, !tbaa !426
  %i.lf = call noundef ptr @_ZNK4llvm10BasicBlock9getModuleEv(ptr noundef nonnull align 8 dereferenceable(80) %i.le) #15
  %i.lg = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 4 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %57, i64 32 ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 4 uses
  %i.ln = ptrtoint ptr %60 to i64                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #15
  store ptr %.0.i200, ptr %i.z, align 8, !tbaa !432
  store ptr %i.kx, ptr %i.lg, align 8, !tbaa !432
  %i.lo = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.lp = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.lo) #15
  %i.lq = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.lp, i64 noundef 353, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.lq, ptr %i.lh, align 8, !tbaa !432
  %i.lr = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.ls = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.lr) #15
  %i.lt = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.ls, i64 noundef 15, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.lt, ptr %i.li, align 8, !tbaa !432
  %i.lu = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.lv = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.lu) #15
  %i.lw = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.lv, i64 noundef 15, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.lw, ptr %i.lj, align 8, !tbaa !432
  %i.lx = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.ly = call noundef ptr @_ZN4llvm11ConstantInt8getFalseERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.lx) #15
  store ptr %i.ly, ptr %i.lk, align 8, !tbaa !432
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #15
  store i16 257, ptr %i.ll, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #15
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %59, align 8, !tbaa !443
  store i64 %i.ln, ptr %i.lm, align 8, !tbaa !444
  %i.lz = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(104) %85, i32 noundef 3658, ptr nonnull %i.y, i64 1, ptr nonnull %i.z, i64 6, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %57, ptr noundef nonnull byval(%"class.llvm::ArrayRef.267") align 8 %58, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %59) #15
  %i.ma = call fastcc noundef ptr @_ZL19buildNonAtomicBinOpRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENS_13AtomicRMWInst5BinOpEPNS_5ValueES8_(ptr noundef nonnull align 8 dereferenceable(104) %85, i32 noundef range(i32 3, 2) %.0182, ptr noundef %i.kx, ptr noundef %i.lz) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #15
  store ptr %.0.i200, ptr %i.z, align 8, !tbaa !432
  store ptr %i.ma, ptr %i.lg, align 8, !tbaa !432
  %i.mb = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.mc = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.mb) #15
  %i.md = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.mc, i64 noundef 354, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.md, ptr %i.lh, align 8, !tbaa !432
  %i.me = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.mf = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.me) #15
  %i.mg = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.mf, i64 noundef 15, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.mg, ptr %i.li, align 8, !tbaa !432
  %i.mh = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.mi = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.mh) #15
  %i.mj = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.mi, i64 noundef 15, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.mj, ptr %i.lj, align 8, !tbaa !432
  %i.mk = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.ml = call noundef ptr @_ZN4llvm11ConstantInt8getFalseERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.mk) #15
  store ptr %i.ml, ptr %i.lk, align 8, !tbaa !432
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #15
  store i16 257, ptr %i.ll, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #15
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %59, align 8, !tbaa !443
  store i64 %i.ln, ptr %i.lm, align 8, !tbaa !444
  %i.mm = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(104) %85, i32 noundef 3658, ptr nonnull %i.y, i64 1, ptr nonnull %i.z, i64 6, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %57, ptr noundef nonnull byval(%"class.llvm::ArrayRef.267") align 8 %58, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %59) #15
  %i.mn = call fastcc noundef ptr @_ZL19buildNonAtomicBinOpRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENS_13AtomicRMWInst5BinOpEPNS_5ValueES8_(ptr noundef nonnull align 8 dereferenceable(104) %85, i32 noundef range(i32 3, 2) %.0182, ptr noundef %i.ma, ptr noundef %i.mm) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #15
  store ptr %.0.i200, ptr %i.z, align 8, !tbaa !432
  store ptr %i.mn, ptr %i.lg, align 8, !tbaa !432
  %i.mo = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.mp = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.mo) #15
  %i.mq = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.mp, i64 noundef 356, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.mq, ptr %i.lh, align 8, !tbaa !432
  %i.mr = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.ms = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.mr) #15
  %i.mt = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.ms, i64 noundef 15, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.mt, ptr %i.li, align 8, !tbaa !432
  %i.mu = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.mv = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.mu) #15
  %i.mw = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.mv, i64 noundef 15, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.mw, ptr %i.lj, align 8, !tbaa !432
  %i.mx = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.my = call noundef ptr @_ZN4llvm11ConstantInt8getFalseERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.mx) #15
  store ptr %i.my, ptr %i.lk, align 8, !tbaa !432
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #15
  store i16 257, ptr %i.ll, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #15
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %59, align 8, !tbaa !443
  store i64 %i.ln, ptr %i.lm, align 8, !tbaa !444
  %i.mz = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(104) %85, i32 noundef 3658, ptr nonnull %i.y, i64 1, ptr nonnull %i.z, i64 6, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %57, ptr noundef nonnull byval(%"class.llvm::ArrayRef.267") align 8 %58, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %59) #15
  %i.na = call fastcc noundef ptr @_ZL19buildNonAtomicBinOpRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENS_13AtomicRMWInst5BinOpEPNS_5ValueES8_(ptr noundef nonnull align 8 dereferenceable(104) %85, i32 noundef range(i32 3, 2) %.0182, ptr noundef %i.mn, ptr noundef %i.mz) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #15
  store ptr %.0.i200, ptr %i.z, align 8, !tbaa !432
  store ptr %i.na, ptr %i.lg, align 8, !tbaa !432
  %i.nb = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.nc = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.nb) #15
  %i.nd = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.nc, i64 noundef 360, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.nd, ptr %i.lh, align 8, !tbaa !432
  %i.ne = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.nf = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ne) #15
  %i.ng = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.nf, i64 noundef 15, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.ng, ptr %i.li, align 8, !tbaa !432
  %i.nh = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.ni = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.nh) #15
  %i.nj = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.ni, i64 noundef 15, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.nj, ptr %i.lj, align 8, !tbaa !432
  %i.nk = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.nl = call noundef ptr @_ZN4llvm11ConstantInt8getFalseERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.nk) #15
  store ptr %i.nl, ptr %i.lk, align 8, !tbaa !432
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #15
  store i16 257, ptr %i.ll, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #15
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %59, align 8, !tbaa !443
  store i64 %i.ln, ptr %i.lm, align 8, !tbaa !444
  %i.nm = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(104) %85, i32 noundef 3658, ptr nonnull %i.y, i64 1, ptr nonnull %i.z, i64 6, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %57, ptr noundef nonnull byval(%"class.llvm::ArrayRef.267") align 8 %58, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %59) #15
  %i.nn = call fastcc noundef ptr @_ZL19buildNonAtomicBinOpRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENS_13AtomicRMWInst5BinOpEPNS_5ValueES8_(ptr noundef nonnull align 8 dereferenceable(104) %85, i32 noundef range(i32 3, 2) %.0182, ptr noundef %i.na, ptr noundef %i.nm) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #15
  %i.no = load ptr, ptr %i.y, align 8, !tbaa !84  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #15
  %i.np = call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.no) #15
  store ptr %i.np, ptr %i.aa, align 8, !tbaa !432
  %i.nq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.nn, ptr %i.nq, align 8, !tbaa !432
  %i.nr = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ns = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.nt = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ns) #15
  %i.nu = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.nt, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.nu, ptr %i.nr, align 8, !tbaa !432
  %i.nv = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.nw = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.nx = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.nw) #15
  %i.ny = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.nx, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.ny, ptr %i.nv, align 8, !tbaa !432
  %i.nz = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.oa = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.ob = call noundef ptr @_ZN4llvm11ConstantInt8getFalseERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.oa) #15
  store ptr %i.ob, ptr %i.nz, align 8, !tbaa !432
  %i.oc = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.od = load ptr, ptr %i.bz, align 8, !tbaa !429, !nonnull !41, !align !42
  %i.oe = call noundef ptr @_ZN4llvm11ConstantInt8getFalseERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.od) #15
  store ptr %i.oe, ptr %i.oc, align 8, !tbaa !432
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #15
  %i.of = getelementptr inbounds nuw i8, ptr %61, i64 32
  store i16 257, ptr %i.of, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #15
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEPNS_4TypeEjNS_8ArrayRefIPNS_5ValueEEENS_9FMFSourceERKNS_5TwineES4_Ed_UlS2_E_EEvlS2_, ptr %62, align 8, !tbaa !443
  %i.og = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.oh = ptrtoint ptr %63 to i64
  store i64 %i.oh, ptr %i.og, align 8, !tbaa !444
  %i.oi = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEPNS_4TypeEjNS_8ArrayRefIPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(104) %85, ptr noundef %i.no, i32 noundef 3392, ptr nonnull %i.aa, i64 6, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %61, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %62) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #15
  %i.oj = call fastcc noundef ptr @_ZL19buildNonAtomicBinOpRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENS_13AtomicRMWInst5BinOpEPNS_5ValueES8_(ptr noundef nonnull align 8 dereferenceable(104) %85, i32 noundef range(i32 3, 2) %.0182, ptr noundef %i.nn, ptr noundef %i.oi) ; 4 uses
  store ptr %i.oj, ptr %i.x, align 8, !tbaa !432
  %i.ok = load ptr, ptr %i.eh, align 8, !tbaa !69, !nonnull !41, !align !42 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 384
  %i.om = load i8, ptr %i.ol, align 8, !tbaa !431
  %i.on = icmp eq i8 %i.om, 5
  br i1 %i.on, label %_ZNK12_GLOBAL__N_125AMDGPUAtomicOptimizerImpl14buildReductionERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEENS1_13AtomicRMWInst5BinOpEPNS1_5ValueESA_.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 496
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !446
  %i.oq = icmp sgt i32 %i.op, 9
  br i1 %i.oq, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.or = load ptr, ptr %i.y, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #15
  %i.os = getelementptr inbounds nuw i8, ptr %64, i64 32
  store i16 257, ptr %i.os, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #15
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEPNS_4TypeEjNS_8ArrayRefIPNS_5ValueEEENS_9FMFSourceERKNS_5TwineES4_Ed_UlS2_E_EEvlS2_, ptr %65, align 8, !tbaa !443
  %i.ot = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.ou = ptrtoint ptr %66 to i64
  store i64 %i.ou, ptr %i.ot, align 8, !tbaa !444
  %i.ov = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEPNS_4TypeEjNS_8ArrayRefIPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(104) %85, ptr noundef %i.or, i32 noundef 3391, ptr nonnull %i.x, i64 1, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %64, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %65) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #15
  %i.ow = load ptr, ptr %i.x, align 8, !tbaa !432
  %i.ox = call fastcc noundef ptr @_ZL19buildNonAtomicBinOpRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENS_13AtomicRMWInst5BinOpEPNS_5ValueES8_(ptr noundef nonnull align 8 dereferenceable(104) %85, i32 noundef range(i32 3, 2) %.0182, ptr noundef %i.ow, ptr noundef %i.ov)
  br label %_ZNK12_GLOBAL__N_125AMDGPUAtomicOptimizerImpl14buildReductionERN4llvm9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEENS1_13AtomicRMWInst5BinOpEPNS1_5ValueESA_.exit

bb.bi:                                            ; preds = %bb.bg
  %i.oy = call noundef ptr @_ZN4llvm9Intrinsic22getOrInsertDeclarationEPNS_6ModuleEjNS_8ArrayRefIPNS_4TypeEEE(ptr noundef %i.lf, i32 noundef 3460, ptr nonnull %i.y, i64 1) #15 ; 5 uses
  %.not.i.i202 = icmp eq ptr %i.oy, null          ; 2 uses
end_hunk_1
