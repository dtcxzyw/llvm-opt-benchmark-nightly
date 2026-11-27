Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/agent?download=true
inline.NumInlined: 202
inline.NumDeleted: 143
begin_hunk_0_@_ZN6marisa5AgentaSEOS0_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  store ptr null, ptr %i.d, align 8, !tbaa !10
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !10   ; 6 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !10
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN6marisa8grimoire4trie5StateESt14default_deleteIS3_EEaSEOS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EED2Ev.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #16
  br label %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6marisa8grimoire4trie5StateEEclEPS3_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EED2Ev.exit.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #16
  br label %_ZNKSt14default_deleteIN6marisa8grimoire4trie5StateEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN6marisa8grimoire4trie5StateEEclEPS3_.exit.i.i.i.i: ; preds = %bb.d, %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EED2Ev.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 64) #16
  br label %_ZNSt10unique_ptrIN6marisa8grimoire4trie5StateESt14default_deleteIS3_EEaSEOS6_.exit

_ZNSt10unique_ptrIN6marisa8grimoire4trie5StateESt14default_deleteIS3_EEaSEOS6_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6marisa8grimoire4trie5StateEEclEPS3_.exit.i.i.i.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6marisa5Agent9set_queryEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 0, ptr %i.e, align 4, !tbaa !34
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #19
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.e, %bb.d
  %strlen.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  store ptr %1, ptr %0, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %strlen.i, ptr %i.g, align 8, !tbaa !41
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #7

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN6marisa5Agent9set_queryEPKcm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 0, ptr %i.f, align 4, !tbaa !34
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #19
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.e, %bb.d
  store ptr %1, ptr %0, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.h, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6marisa5Agent9set_queryEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((16, 24)) %0, i64 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 0, ptr %i.c, align 4, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.d, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6marisa5Agent10init_stateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt10unique_ptrIN6marisa8grimoire4trie5StateESt14default_deleteIS3_EE5resetEPS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #18
  unreachable

_ZNSt10unique_ptrIN6marisa8grimoire4trie5StateESt14default_deleteIS3_EE5resetEPS3_.exit: ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !10
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #19
  resume { ptr, i32 } %i.e
}

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6marisa5Agent5clearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.marisa::Agent", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  invoke void @_ZN6marisa5AgentC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !19
  %i.b = load ptr, ptr %0, align 8, !tbaa !19
  store ptr %i.b, ptr %1, align 8, !tbaa !19
  store ptr %i.a, ptr %0, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load <2 x i64>, ptr %i.d, align 8, !tbaa !21
  %i.f = load <2 x i64>, ptr %i.c, align 8, !tbaa !21
  store <2 x i64> %i.e, ptr %i.c, align 8, !tbaa !21
  store <2 x i64> %i.f, ptr %i.d, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !19
  store ptr %i.j, ptr %i.g, align 8, !tbaa !19
  store ptr %i.i, ptr %i.h, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %2 = load i32, ptr %i.k, align 8, !tbaa !23
  %3 = load i32, ptr %i.l, align 8, !tbaa !23
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %6 = load i32, ptr %4, align 4, !tbaa !23
  %7 = load i32, ptr %5, align 4, !tbaa !23
  %8 = freeze i32 %3
  %9 = zext i32 %8 to i64
  %10 = freeze i32 %7
  %11 = zext i32 %10 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or disjoint i64 %12, %9
  store i64 %13, ptr %i.k, align 8
  %14 = freeze i32 %2
  %15 = zext i32 %14 to i64
  %16 = freeze i32 %6
  %17 = zext i32 %16 to i64
  %18 = shl nuw i64 %17, 32
  %19 = or disjoint i64 %18, %15
  store i64 %19, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !10
  store ptr %i.p, ptr %i.m, align 8, !tbaa !10
  store ptr %i.o, ptr %i.n, align 8, !tbaa !10
  call void @_ZN6marisa5AgentD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #20
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6marisa5Agent4swapERS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = load ptr, ptr %1, align 8, !tbaa !19
  store ptr %i.b, ptr %0, align 8, !tbaa !19
  store ptr %i.a, ptr %1, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !tbaa !21
  %i.f = load i64, ptr %i.d, align 8, !tbaa !21
  store i64 %i.f, ptr %i.c, align 8, !tbaa !21
  store i64 %i.e, ptr %i.d, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.g, align 8, !tbaa !21
  %i.j = load i64, ptr %i.h, align 8, !tbaa !21
  store i64 %i.j, ptr %i.g, align 8, !tbaa !21
  store i64 %i.i, ptr %i.h, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !19
  store ptr %i.n, ptr %i.k, align 8, !tbaa !19
  store ptr %i.m, ptr %i.l, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load i32, ptr %i.o, align 8, !tbaa !23
  %i.r = load i32, ptr %i.p, align 8, !tbaa !23
  store i32 %i.r, ptr %i.o, align 8, !tbaa !23
  store i32 %i.q, ptr %i.p, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !23
  %i.v = load i32, ptr %i.t, align 4, !tbaa !23
  store i32 %i.v, ptr %i.s, align 4, !tbaa !23
  store i32 %i.u, ptr %i.t, align 4, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !10
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !10
  store ptr %i.z, ptr %i.w, align 8, !tbaa !10
  store ptr %i.y, ptr %i.x, align 8, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { builtin nounwind }
attributes #17 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #18 = { noreturn }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTSN6marisa8grimoire4trie5StateE", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"p1 _ZTSN6marisa8grimoire4trie7HistoryE", !8, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseIN6marisa8grimoire4trie7HistoryESaIS3_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!12, !11, i64 0}
!14 = !{!12, !11, i64 16}
!15 = !{!"p1 omnipotent char", !8, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!16, !15, i64 0}
!18 = !{!16, !15, i64 16}
!19 = !{!15, !15, i64 0}
!20 = !{!"long", !4, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{i64 0, i64 8, !19, i64 8, i64 8, !21, i64 16, i64 8, !21}
!23 = !{!5, !5, i64 0}
!24 = !{!4, !4, i64 0}
!25 = !{i64 0, i64 8, !19, i64 8, i64 4, !23, i64 12, i64 4, !24}
!26 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !16, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorIcSaIcEE", !27, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN6marisa8grimoire4trie7HistoryESaIS3_EE12_Vector_implE", !12, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIN6marisa8grimoire4trie7HistoryESaIS3_EE", !29, i64 0}
!31 = !{!"_ZTSSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE", !30, i64 0}
!32 = !{!"_ZTSN6marisa8grimoire4trie10StatusCodeE", !4, i64 0}
!33 = !{!"_ZTSN6marisa8grimoire4trie5StateE", !28, i64 0, !31, i64 24, !5, i64 48, !5, i64 52, !5, i64 56, !32, i64 60}
!34 = !{!33, !32, i64 60}
!35 = !{!16, !15, i64 8}
!36 = !{!"_ZTSN6marisa3KeyE", !15, i64 0, !5, i64 8, !4, i64 12}
!37 = !{!36, !15, i64 0}
!38 = !{!36, !5, i64 8}
!39 = !{!"_ZTSN6marisa5QueryE", !15, i64 0, !20, i64 8, !20, i64 16}
!40 = !{!39, !15, i64 0}
!41 = !{!39, !20, i64 8}
!42 = distinct !{!42, !48}
!43 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!44 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!45 = !{!12, !11, i64 8}
!46 = !{!11, !11, i64 0}
!47 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23, i64 12, i64 4, !23, i64 16, i64 4, !23}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!39, !20, i64 16}
end_hunk_0
