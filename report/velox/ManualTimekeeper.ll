begin_hunk_0
inline.NumInlined: 630
inline.NumDeleted: 394
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN5folly16ManualTimekeeper5afterENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE:_ZN5folly19makePromiseContractINS_4UnitEEENS_19SemiPromiseContractIT_EEv.exit
  store i8 1, ptr %6, align 8, !tbaa !36, !alias.scope !21
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.l, align 8, !tbaa !40, !alias.scope !21
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.m, align 8, !tbaa !41, !alias.scope !21
  %i.n = icmp eq i64 %2, 0
  br i1 %i.n, label %bb.a, label %bb.h
end_hunk_1
begin_hunk_2_@_ZN5folly16ManualTimekeeper5afterENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE:_ZN5folly19makePromiseContractINS_4UnitEEENS_19SemiPromiseContractIT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %.body

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIN5folly16ManualTimekeeper14TimeoutHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5folly7PromiseINS_4UnitEE8setValueIRKS1_EEvOT_.exit
  %i.ca = load ptr, ptr %i.m, align 8, !tbaa !41
  store ptr %i.ca, ptr %0, align 8, !tbaa !41
  store ptr null, ptr %i.m, align 8, !tbaa !41
  %8 = load ptr, ptr %i.l, align 8, !tbaa !40     ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %8, null
  br i1 %.not.i.i.i12, label %_ZN5folly19SemiPromiseContractINS_4UnitEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = load i8, ptr %6, align 8, !tbaa !36, !range !69, !noundef !70
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %8) #14
  %.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !40
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cd = phi ptr [ %.pre.i.i.i, %bb.ad ], [ %8, %bb.ac ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.cd)
          to label %_ZN5folly19SemiPromiseContractINS_4UnitEED2Ev.exit unwind label %bb.af

end_hunk_2
begin_hunk_3_@_ZN5folly16ManualTimekeeper5afterENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE:_ZN5folly19makePromiseContractINS_4UnitEEENS_19SemiPromiseContractIT_EEv.exit
  call void @__clang_call_terminate(ptr %i.cf) #26
  unreachable

_ZN5folly19SemiPromiseContractINS_4UnitEED2Ev.exit: ; preds = %bb.ab, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void

end_hunk_3
