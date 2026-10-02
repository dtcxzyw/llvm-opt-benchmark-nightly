Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/options?download=true
inline.NumInlined: 38
inline.NumDeleted: 17
begin_hunk_0_@_ZN4lean16finalize_optionsEv:bb.a

_ZN4lean10object_refD2Ev.exit8:                   ; preds = %bb.p, %bb.r, %bb.s, %bb.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 8) #13
  br label %bb.v

bb.v:                                             ; preds = %_ZN4lean10object_refD2Ev.exit8, %bb.o
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN4lean3decEP11lean_object.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !12   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !12
  br label %_ZN4lean3decEP11lean_object.exit

bb.d:                                             ; preds = %bb.b
  %.not.i1.i = icmp eq i32 %i.d, 0
  br i1 %.not.i1.i, label %_ZN4lean3decEP11lean_object.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.a)
          to label %_ZN4lean3decEP11lean_object.exit unwind label %bb.f

_ZN4lean3decEP11lean_object.exit:                 ; preds = %bb.d, %bb.c, %bb.a, %bb.e
  ret void

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #12
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean20get_verbose_opt_nameEv() local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @_ZN4leanL9g_verboseE, align 8, !tbaa !15
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean23get_max_memory_opt_nameEv() local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @_ZN4leanL12g_max_memoryE, align 8, !tbaa !15
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean20get_timeout_opt_nameEv() local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @_ZN4leanL9g_timeoutE, align 8, !tbaa !15
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4lean11get_verboseERKNS_7optionsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_ZN4leanL9g_verboseE, align 8, !tbaa !15 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !10     ; 7 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZNK4lean10object_ref10to_obj_argEv.exit.i

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i.i = load i32, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !12
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit.i

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4lean10object_ref10to_obj_argEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !10
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit.i

_ZNK4lean10object_ref10to_obj_argEv.exit.i:       ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.c ], [ %i.b, %bb.d ], [ %.pre.i.i, %bb.e ]
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !10   ; 7 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, 1
  %.not.i.i.i2.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i2.i, label %bb.f, label %_ZNK4lean7options8get_boolERKNS_4nameEb.exit

bb.f:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit.i
  %.val.i.i.i.i3.i = load i32, ptr %i.i, align 4, !tbaa !12 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i.i.i3.i, 0
  br i1 %i.l, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = add nuw i32 %.val.i.i.i.i3.i, 1
  store i32 %i.m, ptr %i.i, align 4, !tbaa !12
  br label %_ZNK4lean7options8get_boolERKNS_4nameEb.exit

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i.i4.i = icmp eq i32 %.val.i.i.i.i3.i, 0
  br i1 %.not.i.i.i.i4.i, label %_ZNK4lean7options8get_boolERKNS_4nameEb.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i5.i = load ptr, ptr %i.a, align 8, !tbaa !10
  br label %_ZNK4lean7options8get_boolERKNS_4nameEb.exit

_ZNK4lean7options8get_boolERKNS_4nameEb.exit:     ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit.i, %bb.g, %bb.h, %bb.i
  %i.o = phi ptr [ %i.i, %_ZNK4lean10object_ref10to_obj_argEv.exit.i ], [ %i.i, %bb.g ], [ %i.i, %bb.h ], [ %.pre.i5.i, %bb.i ]
  %i.p = tail call noundef zeroext i1 @lean_options_get_bool(ptr noundef %i.h, ptr noundef %i.o, i1 noundef zeroext true)
  ret i1 %i.p
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK4lean7options8get_boolERKNS_4nameEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 7 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !12 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.e, ptr %i.a, align 4, !tbaa !12
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK4lean10object_ref10to_obj_argEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = atomicrmw sub ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !10
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

_ZNK4lean10object_ref10to_obj_argEv.exit:         ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.g = phi ptr [ %i.a, %bb.a ], [ %i.a, %bb.c ], [ %i.a, %bb.d ], [ %.pre.i, %bb.e ]
  %i.h = load ptr, ptr %1, align 8, !tbaa !10     ; 7 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 1
  %.not.i.i.i2 = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i2, label %bb.f, label %_ZNK4lean10object_ref10to_obj_argEv.exit6

bb.f:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit
  %.val.i.i.i.i3 = load i32, ptr %i.h, align 4, !tbaa !12 ; 3 uses
  %i.k = icmp sgt i32 %.val.i.i.i.i3, 0
  br i1 %i.k, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.l = add nuw i32 %.val.i.i.i.i3, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !12
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit6

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i.i4 = icmp eq i32 %.val.i.i.i.i3, 0
  br i1 %.not.i.i.i.i4, label %_ZNK4lean10object_ref10to_obj_argEv.exit6, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i5 = load ptr, ptr %1, align 8, !tbaa !10
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit6

_ZNK4lean10object_ref10to_obj_argEv.exit6:        ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit, %bb.g, %bb.h, %bb.i
  %i.n = phi ptr [ %i.h, %_ZNK4lean10object_ref10to_obj_argEv.exit ], [ %i.h, %bb.g ], [ %i.h, %bb.h ], [ %.pre.i5, %bb.i ]
  %i.o = tail call zeroext i1 @lean_options_get_bool(ptr noundef %i.g, ptr noundef %i.n, i1 noundef zeroext %2)
  ret i1 %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i8 @lean_internal_get_default_verbose(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #5 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress uwtable
define ptr @lean_internal_get_default_options(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZN4lean10object_refD2Ev.exit:
  %i.a = tail call ptr @lean_options_get_empty(ptr noundef nonnull inttoptr (i64 1 to ptr)), !noalias !21
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean7optionsC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @lean_options_get_empty(ptr noundef nonnull inttoptr (i64 1 to ptr))
  store ptr %i.a, ptr %0, align 8, !tbaa !10
  ret void
}

declare ptr @lean_options_get_empty(ptr noundef) local_unnamed_addr #7

declare zeroext i1 @lean_options_get_bool(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4lean7options6updateERKNS_4nameEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.lean::options") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !10     ; 7 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !12 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.e, ptr %i.a, align 4, !tbaa !12
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK4lean10object_ref10to_obj_argEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = atomicrmw sub ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !10
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

_ZNK4lean10object_ref10to_obj_argEv.exit:         ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.g = phi ptr [ %i.a, %bb.a ], [ %i.a, %bb.c ], [ %i.a, %bb.d ], [ %.pre.i, %bb.e ]
  %i.h = load ptr, ptr %2, align 8, !tbaa !10     ; 7 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 1
  %.not.i.i.i2 = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i2, label %bb.f, label %_ZNK4lean10object_ref10to_obj_argEv.exit6

bb.f:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit
  %.val.i.i.i.i3 = load i32, ptr %i.h, align 4, !tbaa !12 ; 3 uses
  %i.k = icmp sgt i32 %.val.i.i.i.i3, 0
  br i1 %i.k, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.l = add nuw i32 %.val.i.i.i.i3, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !12
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit6

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i.i4 = icmp eq i32 %.val.i.i.i.i3, 0
  br i1 %.not.i.i.i.i4, label %_ZNK4lean10object_ref10to_obj_argEv.exit6, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i5 = load ptr, ptr %2, align 8, !tbaa !10
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit6

_ZNK4lean10object_ref10to_obj_argEv.exit6:        ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit, %bb.g, %bb.h, %bb.i
  %i.n = phi ptr [ %i.h, %_ZNK4lean10object_ref10to_obj_argEv.exit ], [ %i.h, %bb.g ], [ %i.h, %bb.h ], [ %.pre.i5, %bb.i ]
  %i.o = tail call ptr @lean_options_update_bool(ptr noundef %i.g, ptr noundef %i.n, i1 noundef zeroext %3)
  store ptr %i.o, ptr %0, align 8, !tbaa !10
  ret void
}

declare ptr @lean_options_update_bool(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #7

declare void @_ZN4lean4nameC2ERKS0_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #7

declare void @lean_mark_persistent(ptr noundef) local_unnamed_addr #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"_ZTSN4lean10object_refE", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"_ZTS11lean_object", !5, i64 0, !5, i64 4, !5, i64 6, !5, i64 7}
!12 = !{!11, !5, i64 0}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!"p1 _ZTSN4lean4nameE", !8, i64 0}
!15 = !{!14, !14, i64 0}
!19 = distinct !{!19, i1 false, !"_ZN4lean19get_default_optionsEv"}
!20 = distinct !{!20, !19, !"_ZN4lean19get_default_optionsEv: argument 0"}
!21 = !{!20}
end_hunk_0
