Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSCallSite?download=true
inline.NumInlined: 266
inline.NumDeleted: 180
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes2vm10JSCallSite13getLineNumberERNS0_7RuntimeENS0_6HandleIS1_EE:bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.k, i64 noundef %i.r) #7
  unreachable

_ZN6hermes2vm10JSCallSite17getStackTraceInfoERNS0_7RuntimeENS0_6HandleIS1_EE.exit: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.k ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39   ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm10JSCallSite17getStackTraceInfoERNS0_7RuntimeENS0_6HandleIS1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !40
  call void @_ZN6hermes2vm7JSError12getDebugInfoEPNS0_9CodeBlockEj(ptr dead_on_unwind nonnull writable sret(%"class.hermes::OptValue.163") align 4 %2, ptr noundef nonnull %i.t, i32 noundef %i.v) #6
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = load i8, ptr %i.w, align 4, !tbaa !47, !range !8, !noundef !9
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !120
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !52
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 184
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !121
  %i.ah = add i32 %i.ag, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.in.in = phi i32 [ %i.aa, %bb.d ], [ %i.ah, %bb.e ]
  %.sroa.4.0.in = uitofp i32 %.sroa.4.0.in.in to double
  %.sroa.4.0 = bitcast double %.sroa.4.0.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.g

bb.g:                                             ; preds = %_ZN6hermes2vm10JSCallSite17getStackTraceInfoERNS0_7RuntimeENS0_6HandleIS1_EE.exit, %bb.f
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.f ], [ -1548112371908608, %_ZN6hermes2vm10JSCallSite17getStackTraceInfoERNS0_7RuntimeENS0_6HandleIS1_EE.exit ]
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %.sroa.4.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10JSCallSite15getColumnNumberERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.hermes::OptValue.163", align 4 ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !13
  %i.a = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.0.0.copyload.i.i3.i = load i32, ptr %i.c, align 4, !tbaa !6
  %i.d = ptrtoint ptr %0 to i64
  %i.e = zext i32 %.sroa.0.0.copyload.i.i3.i to i64
  %i.f = add i64 %i.e, %i.d
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !29   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 4                   ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.k, %i.r
  br i1 %.not.i.i.i, label %_ZN6hermes2vm10JSCallSite17getStackTraceInfoERNS0_7RuntimeENS0_6HandleIS1_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.k, i64 noundef %i.r) #7
  unreachable

_ZN6hermes2vm10JSCallSite17getStackTraceInfoERNS0_7RuntimeENS0_6HandleIS1_EE.exit: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.k ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39   ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %_ZN6hermes2vm10JSCallSite17getStackTraceInfoERNS0_7RuntimeENS0_6HandleIS1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !40
  call void @_ZN6hermes2vm7JSError12getDebugInfoEPNS0_9CodeBlockEj(ptr dead_on_unwind nonnull writable sret(%"class.hermes::OptValue.163") align 4 %2, ptr noundef nonnull %i.t, i32 noundef %i.v) #6
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = load i8, ptr %i.w, align 4, !tbaa !47, !range !8, !noundef !9
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = uitofp i32 %i.aa to double
  %i.ac = bitcast double %i.ab to i64
  %.sroa.3.0.ph = select i1 %i.y, i64 %i.ac, i64 -1548112371908608
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %_ZN6hermes2vm10JSCallSite17getStackTraceInfoERNS0_7RuntimeENS0_6HandleIS1_EE.exit
  %.sroa.3.0 = phi i64 [ -1548112371908608, %_ZN6hermes2vm10JSCallSite17getStackTraceInfoERNS0_7RuntimeENS0_6HandleIS1_EE.exit ], [ %.sroa.3.0.ph, %.sink.split ]
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10JSCallSite18getBytecodeAddressERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !13
  %i.a = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.0.0.copyload.i.i3.i = load i32, ptr %i.c, align 4, !tbaa !6
  %i.d = ptrtoint ptr %0 to i64
  %i.e = zext i32 %.sroa.0.0.copyload.i.i3.i to i64
  %i.f = add i64 %i.e, %i.d
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !29   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 4                   ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.k, %i.r
  br i1 %.not.i.i.i, label %_ZN6hermes2vm10JSCallSite17getStackTraceInfoERNS0_7RuntimeENS0_6HandleIS1_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.k, i64 noundef %i.r) #7
  unreachable

_ZN6hermes2vm10JSCallSite17getStackTraceInfoERNS0_7RuntimeENS0_6HandleIS1_EE.exit: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.k ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39   ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm10JSCallSite17getStackTraceInfoERNS0_7RuntimeENS0_6HandleIS1_EE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !40
  %i.w = tail call noundef i32 @_ZNK6hermes2vm9CodeBlock16getVirtualOffsetEv(ptr noundef nonnull align 8 dereferenceable(40) %i.t) #6
  %i.x = add i32 %i.w, %i.v
  %i.y = uitofp i32 %i.x to double
  %i.z = bitcast double %i.y to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm10JSCallSite17getStackTraceInfoERNS0_7RuntimeENS0_6HandleIS1_EE.exit, %bb.c
  %.sroa.3.0 = phi i64 [ %i.z, %bb.c ], [ -1548112371908608, %_ZN6hermes2vm10JSCallSite17getStackTraceInfoERNS0_7RuntimeENS0_6HandleIS1_EE.exit ]
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZNK6hermes2vm9CodeBlock16getVirtualOffsetEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10JSCallSite8isNativeERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !13
  %i.a = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.0.0.copyload.i.i3.i = load i32, ptr %i.c, align 4, !tbaa !6
  %i.d = ptrtoint ptr %0 to i64
  %i.e = zext i32 %.sroa.0.0.copyload.i.i3.i to i64
  %i.f = add i64 %i.e, %i.d
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !29   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 4                   ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.k, %i.r
  br i1 %.not.i.i.i, label %_ZN6hermes2vm10JSCallSite17getStackTraceInfoERNS0_7RuntimeENS0_6HandleIS1_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.k, i64 noundef %i.r) #7
  unreachable

_ZN6hermes2vm10JSCallSite17getStackTraceInfoERNS0_7RuntimeENS0_6HandleIS1_EE.exit: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.k
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39
  %.not = icmp eq ptr %i.t, null
  %i.u = zext i1 %.not to i64
  %i.v = or disjoint i64 %i.u, -1407374883553280
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %i.v, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10JSCallSite7getThisERNS0_7RuntimeENS0_6HandleIS1_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(9816) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  ret { i32, i64 } { i32 1, i64 -1688849860263936 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10JSCallSite11getTypeNameERNS0_7RuntimeENS0_6HandleIS1_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(9816) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  ret { i32, i64 } { i32 1, i64 -1548112371908608 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10JSCallSite11getFunctionERNS0_7RuntimeENS0_6HandleIS1_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(9816) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  ret { i32, i64 } { i32 1, i64 -1688849860263936 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10JSCallSite13getMethodNameERNS0_7RuntimeENS0_6HandleIS1_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(9816) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  ret { i32, i64 } { i32 1, i64 -1548112371908608 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10JSCallSite13getEvalOriginERNS0_7RuntimeENS0_6HandleIS1_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(9816) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  ret { i32, i64 } { i32 1, i64 -1548112371908608 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10JSCallSite10isToplevelERNS0_7RuntimeENS0_6HandleIS1_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(9816) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  ret { i32, i64 } { i32 1, i64 -1548112371908608 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10JSCallSite6isEvalERNS0_7RuntimeENS0_6HandleIS1_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(9816) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  ret { i32, i64 } { i32 1, i64 -1548112371908608 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10JSCallSite13isConstructorERNS0_7RuntimeENS0_6HandleIS1_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(9816) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  ret { i32, i64 } { i32 1, i64 -1548112371908608 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10JSCallSite7isAsyncERNS0_7RuntimeENS0_6HandleIS1_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(9816) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  ret { i32, i64 } { i32 1, i64 -1407374883553280 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10JSCallSite12isPromiseAllERNS0_7RuntimeENS0_6HandleIS1_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(9816) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  ret { i32, i64 } { i32 1, i64 -1407374883553280 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10JSCallSite15getPromiseIndexERNS0_7RuntimeENS0_6HandleIS1_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(9816) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  ret { i32, i64 } { i32 1, i64 -1548112371908608 }
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, ptr noundef) local_unnamed_addr #0

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #5

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"bool", !4, i64 0}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTSN6hermes2vm15StorageProviderE", !10, i64 0}
!15 = !{!"_ZTSN6hermes2vm14AlignedStorageE", !11, i64 0, !14, i64 8}
!16 = !{!15, !11, i64 0}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{!"_ZTSN6hermes2vm6GCCellE", !4, i64 0}
!19 = !{!"_ZTSN6hermes2vm11ObjectFlagsE", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 1}
!20 = !{!"_ZTSN6hermes2vm12BasedPointerE", !5, i64 0}
!21 = !{!"_ZTSN6hermes2vm17CompressedPointerE", !20, i64 0}
!22 = !{!"_ZTSN6hermes2vm13GCPointerBaseE", !21, i64 0}
!23 = !{!"_ZTSN6hermes2vm9GCPointerINS0_8JSObjectEEE", !22, i64 0}
!24 = !{!"_ZTSN6hermes2vm9GCPointerINS0_11HiddenClassEEE", !22, i64 0}
!25 = !{!"_ZTSN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEE", !22, i64 0}
!26 = !{!"_ZTSN6hermes2vm8JSObjectE", !18, i64 0, !19, i64 4, !23, i64 8, !24, i64 12, !25, i64 16}
!27 = !{!"_ZTSN6hermes2vm9GCPointerINS0_7JSErrorEEE", !22, i64 0}
!28 = !{!"_ZTSN6hermes2vm10JSCallSiteE", !26, i64 0, !27, i64 20, !12, i64 24}
!29 = !{!28, !12, i64 24}
!30 = !{!4, !4, i64 0}
!31 = !{!"p1 _ZTSSt6vectorIN6hermes2vm14StackTraceInfoESaIS2_EE", !10, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"p1 _ZTSN6hermes2vm14StackTraceInfoE", !10, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm14StackTraceInfoESaIS2_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!35 = !{!34, !33, i64 8}
!36 = !{!34, !33, i64 0}
!37 = !{!"p1 _ZTSN6hermes2vm9CodeBlockE", !10, i64 0}
!38 = !{!"_ZTSN6hermes2vm14StackTraceInfoE", !37, i64 0, !5, i64 8}
!39 = !{!38, !37, i64 0}
!40 = !{!38, !5, i64 8}
!41 = !{!"p1 _ZTSN6hermes2vm13RuntimeModuleE", !10, i64 0}
!42 = !{!"_ZTSN6hermes3hbc21RuntimeFunctionHeaderE", !11, i64 0}
!43 = !{!"_ZTSN6hermes2vm9CodeBlockE", !41, i64 0, !42, i64 8, !11, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!44 = !{!43, !41, i64 0}
!45 = !{!"_ZTSN6hermes3hbc19DebugSourceLocationE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28}
!46 = !{!"_ZTSN6hermes8OptValueINS_3hbc19DebugSourceLocationEEE", !45, i64 0, !7, i64 32}
!47 = !{!46, !7, i64 32}
!48 = !{!"p1 _ZTSN6hermes3hbc20BCProviderFromBufferE", !10, i64 0}
!49 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!50 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !49, i64 0}
!51 = !{!"_ZTSSt12__shared_ptrIN6hermes3hbc20BCProviderFromBufferELN9__gnu_cxx12_Lock_policyE2EE", !48, i64 0, !50, i64 8}
!52 = !{!51, !48, i64 0}
!53 = !{!"p1 _ZTSN6hermes10StringKind5EntryE", !10, i64 0}
!54 = !{!"_ZTSN4llvh8ArrayRefIN6hermes10StringKind5EntryEEE", !53, i64 0, !12, i64 8}
!55 = !{!"p1 int", !10, i64 0}
!56 = !{!"_ZTSN4llvh8ArrayRefIjEE", !55, i64 0, !12, i64 8}
!57 = !{!"_ZTSN4llvh8ArrayRefIhEE", !11, i64 0, !12, i64 8}
!58 = !{!"p1 _ZTSN6hermes6bigint16BigIntTableEntryE", !10, i64 0}
!59 = !{!"_ZTSN4llvh8ArrayRefIN6hermes6bigint16BigIntTableEntryEEE", !58, i64 0, !12, i64 8}
!60 = !{!"p1 _ZTSN6hermes16RegExpTableEntryE", !10, i64 0}
!61 = !{!"_ZTSN4llvh8ArrayRefIN6hermes16RegExpTableEntryEEE", !60, i64 0, !12, i64 8}
!62 = !{!"p1 _ZTSSt4pairIjjE", !10, i64 0}
!63 = !{!"_ZTSN4llvh8ArrayRefISt4pairIjjEEE", !62, i64 0, !12, i64 8}
!64 = !{!"p1 _ZTSN6hermes3hbc9DebugInfoE", !10, i64 0}
!65 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!66 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !65, i64 0, !12, i64 8, !4, i64 16}
!67 = !{!"_ZTSN6hermes3hbc14BCProviderBaseE", !4, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !54, i64 24, !56, i64 40, !57, i64 56, !57, i64 72, !57, i64 88, !57, i64 104, !59, i64 120, !57, i64 136, !61, i64 152, !57, i64 168, !5, i64 184, !63, i64 192, !63, i64 208, !63, i64 224, !64, i64 240, !66, i64 248}
!68 = !{!"_ZTSN6hermes8OptValueIjEE", !5, i64 0, !7, i64 4}
!69 = !{!68, !7, i64 4}
!70 = !{!7, !7, i64 0}
!71 = !{!"_ZTSSt4lessIhE"}
!72 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIhEE", !71, i64 0}
!73 = !{!"_ZTSSt14_Rb_tree_color", !4, i64 0}
!74 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !10, i64 0}
!75 = !{!"_ZTSSt18_Rb_tree_node_base", !73, i64 0, !74, i64 8, !74, i64 16, !74, i64 24}
!76 = !{!"_ZTSSt15_Rb_tree_header", !75, i64 0, !12, i64 32}
!77 = !{!"_ZTSNSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !72, i64 0, !76, i64 8}
!78 = !{!"_ZTSSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE", !77, i64 0}
!79 = !{!"_ZTSSt3mapIhPKcSt4lessIhESaISt4pairIKhS1_EEE", !78, i64 0}
!80 = !{!"_ZTSN6hermes2vm8Metadata9ArrayData9ArrayTypeE", !4, i64 0}
!81 = !{!"_ZTSN6hermes2vm8Metadata9ArrayDataE", !80, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!82 = !{!"_ZTSN6hermes8OptValueINS_2vm8Metadata9ArrayDataEEE", !81, i64 0, !7, i64 4}
!83 = !{!"p1 _ZTSN6hermes2vm6VTableE", !10, i64 0}
!84 = !{!"_ZTSN6hermes2vm8Metadata7BuilderE", !11, i64 0, !79, i64 8, !79, i64 56, !79, i64 104, !79, i64 152, !82, i64 200, !68, i64 208, !83, i64 216}
!85 = !{!84, !83, i64 216}
!86 = !{!"_ZTSN6hermes2vm18AlignedHeapSegmentE", !15, i64 0, !11, i64 16, !11, i64 24}
!87 = !{!86, !11, i64 16}
!88 = !{!86, !11, i64 24}
!89 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!90 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !10, i64 0}
!91 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !90, i64 8}
!92 = !{!91, !90, i64 8}
!93 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !10, i64 0}
!94 = !{!"_ZTSN4llvh15SmallVectorBaseE", !10, i64 0, !5, i64 8, !5, i64 12}
!95 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !94, i64 0}
!96 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !95, i64 0}
!97 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !96, i64 0}
!98 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !4, i64 0}
!99 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !97, i64 0, !98, i64 16}
!100 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !10, i64 0}
!101 = !{!"_ZTSN6hermes2vm7GCScopeE", !93, i64 0, !90, i64 8, !4, i64 16, !99, i64 144, !100, i64 192, !100, i64 200, !5, i64 208}
!102 = !{!101, !100, i64 192}
!103 = !{!101, !100, i64 200}
!104 = !{!"_ZTSN6hermes2vm11HermesValueE", !12, i64 0}
!105 = !{!104, !12, i64 0}
!106 = distinct !{null}
!107 = !{!67, !64, i64 240}
!108 = !{!"vtable pointer", !3, i64 0}
!109 = !{!108, !108, i64 0}
!110 = !{!65, !11, i64 0}
!111 = !{!66, !12, i64 8}
!112 = !{!"p1 _ZTSN6hermes16StringTableEntryE", !10, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE17_Vector_impl_dataE", !112, i64 0, !112, i64 8, !112, i64 16}
!114 = !{!113, !112, i64 0}
!115 = !{!45, !5, i64 4}
!116 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!117 = !{!116, !11, i64 0}
!118 = !{!116, !11, i64 8}
!119 = !{!66, !11, i64 0}
!120 = !{!45, !5, i64 12}
!121 = !{!67, !5, i64 184}
end_hunk_0
