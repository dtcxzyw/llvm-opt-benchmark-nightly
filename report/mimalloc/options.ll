Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/options?download=true
inline.NumInlined: 57
inline.NumDeleted: 15
begin_hunk_0_@_mi_warning_message:bb.a

bb.h:                                             ; preds = %bb.f, %mi_option_get.exit2, %bb.g
  ret void
}

; Function Attrs: nooutline norecurse nounwind uwtable
define hidden void @mi_register_error(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  store volatile ptr %0, ptr @mi_error_handler, align 8, !tbaa !26
  store atomic ptr %1, ptr @mi_error_arg release, align 8
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_error_message(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #1 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @mi_options, i64 72), align 8, !tbaa !15
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %mi_option_is_enabled.exit.i, !prof !16

bb.b:                                             ; preds = %bb.a
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mi_options, i64 64)) #14, !inline_history !35
  br label %mi_option_is_enabled.exit.i

mi_option_is_enabled.exit.i:                      ; preds = %bb.b, %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_options, i64 64), align 16, !tbaa !18
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %mi_option_is_enabled.exit.i
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @mi_options, i64 8), align 8, !tbaa !15
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %mi_option_is_enabled.exit3.i, !prof !16

bb.d:                                             ; preds = %bb.c
  call fastcc void @mi_option_init(ptr noundef nonnull @mi_options) #14, !inline_history !35
  br label %mi_option_is_enabled.exit3.i

mi_option_is_enabled.exit3.i:                     ; preds = %bb.d, %bb.c
  %i.f = load i64, ptr @mi_options, align 16, !tbaa !18
  %.not4.i = icmp eq i64 %i.f, 0
  br i1 %.not4.i, label %mi_show_error_message.exit, label %bb.e

bb.e:                                             ; preds = %mi_option_is_enabled.exit3.i
  %i.g = load i64, ptr @mi_max_error_count, align 8, !tbaa !19
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw add ptr @error_count, i64 1 acq_rel, align 8
  %i.j = load i64, ptr @mi_max_error_count, align 8, !tbaa !19
  %i.k = icmp sgt i64 %i.i, %i.j
  br i1 %i.k, label %mi_show_error_message.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %mi_option_is_enabled.exit.i
  call fastcc void @mi_vfprintf_thread(ptr noundef nonnull @.str.70, ptr noundef %1, ptr noundef nonnull %2) #14, !inline_history !36
  br label %mi_show_error_message.exit

mi_show_error_message.exit:                       ; preds = %mi_option_is_enabled.exit3.i, %bb.f, %bb.g
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.l = load volatile ptr, ptr @mi_error_handler, align 8, !tbaa !26
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %mi_show_error_message.exit
  %i.m = load volatile ptr, ptr @mi_error_handler, align 8, !tbaa !26
  %i.n = load atomic ptr, ptr @mi_error_arg acquire, align 8
  call void %i.m(i32 noundef %0, ptr noundef %i.n) #15
  br label %mi_error_default.exit

bb.i:                                             ; preds = %mi_show_error_message.exit
  %i.o = tail call ptr @__errno_location() #17    ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !24
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %mi_error_default.exit

bb.j:                                             ; preds = %bb.i
  %i.r = icmp eq i32 %0, 22
  %i.s = select i1 %i.r, i32 22, i32 12
  store i32 %i.s, ptr %i.o, align 4, !tbaa !24
  br label %mi_error_default.exit

mi_error_default.exit:                            ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: noinline nooutline nounwind uwtable
define hidden noalias noundef ptr @_mi_block_next_is_corrupted(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val = load i64, ptr %i.a, align 8, !tbaa !45
  %i.b = ptrtoint ptr %2 to i64
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.13, i64 noundef %.val, ptr noundef %1, i64 noundef %i.b) #14
  ret ptr null
}

declare void @_mi_prim_out_stderr(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #10

; Function Attrs: nooutline nounwind uwtable
define internal void @mi_out_buf_stderr(ptr noundef %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %mi_out_buf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !21
  %.not3.i = icmp eq i8 %i.a, 0
  br i1 %.not3.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_mi_prim_out_stderr(ptr noundef nonnull %0) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.b = load atomic i64, ptr @out_len acquire, align 8
  %i.c = icmp ugt i64 %i.b, 16383
  br i1 %i.c, label %mi_out_buf.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i64 @_mi_strlen(ptr noundef nonnull %0) #15, !inline_history !47 ; 4 uses
  %i.e = add i64 %i.d, -16384
  %or.cond.i = icmp ult i64 %i.e, -16383
  br i1 %or.cond.i, label %mi_out_buf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @out_buf_lock) #15, !inline_history !46 ; 3 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %mi_lock_acquire.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.f, ptr noundef nonnull @.str.68, i32 noundef %i.f) #14, !inline_history !46
  br label %mi_lock_acquire.exit.i

mi_lock_acquire.exit.i:                           ; preds = %bb.g, %bb.f
  %i.g = atomicrmw add ptr @out_len, i64 %i.d acq_rel, align 8 ; 4 uses
  %i.h = icmp ult i64 %i.g, 16384
  br i1 %i.h, label %bb.h, label %_mi_memcpy.exit.i

bb.h:                                             ; preds = %mi_lock_acquire.exit.i
  %i.i = add nuw nsw i64 %i.g, %i.d
  %i.j = icmp samesign ugt i64 %i.i, 16383
  %i.k = sub nuw nsw i64 16383, %i.g
  %spec.select.i = select i1 %i.j, i64 %i.k, i64 %i.d ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr @out_buf, i64 %i.g ; 2 uses
  %i.m = load i64, ptr @_mi_cpu_movsb_max, align 8, !tbaa !19
  %.not.i20.i = icmp ugt i64 %spec.select.i, %i.m
  br i1 %.not.i20.i, label %bb.j, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.n = tail call { ptr, i64, ptr } asm sideeffect "rep movsb", "={di},={cx},={si},0,1,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.l, i64 range(i64 0, 16384) %spec.select.i, ptr nonnull %0) #16, !inline_history !47, !srcloc !27 ; 0 uses
  br label %_mi_memcpy.exit.i

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %0, i64 range(i64 0, 16384) %spec.select.i, i1 false)
  br label %_mi_memcpy.exit.i

_mi_memcpy.exit.i:                                ; preds = %bb.j, %bb.i, %mi_lock_acquire.exit.i
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @out_buf_lock) #15, !inline_history !47 ; 0 uses
  br label %mi_out_buf.exit

mi_out_buf.exit:                                  ; preds = %bb.a, %bb.d, %bb.e, %_mi_memcpy.exit.i
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define internal void @mi_out_buf(ptr noundef %0, ptr nofree readnone captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i64, ptr @out_len acquire, align 8
  %i.c = icmp ugt i64 %i.b, 16383
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @_mi_strlen(ptr noundef nonnull %0) #15 ; 4 uses
  %i.e = add i64 %i.d, -16384
  %or.cond = icmp ult i64 %i.e, -16383
  br i1 %or.cond, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @out_buf_lock) #15, !inline_history !0 ; 3 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %mi_lock_acquire.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.f, ptr noundef nonnull @.str.68, i32 noundef %i.f) #14, !inline_history !0
  br label %mi_lock_acquire.exit

mi_lock_acquire.exit:                             ; preds = %bb.e, %bb.d
  %i.g = atomicrmw add ptr @out_len, i64 %i.d acq_rel, align 8 ; 4 uses
  %i.h = icmp ult i64 %i.g, 16384
  br i1 %i.h, label %bb.f, label %_mi_memcpy.exit

bb.f:                                             ; preds = %mi_lock_acquire.exit
  %i.i = add nuw nsw i64 %i.g, %i.d
  %i.j = icmp samesign ugt i64 %i.i, 16383
  %i.k = sub nuw nsw i64 16383, %i.g
  %spec.select = select i1 %i.j, i64 %i.k, i64 %i.d ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr @out_buf, i64 %i.g ; 2 uses
  %i.m = load i64, ptr @_mi_cpu_movsb_max, align 8, !tbaa !19
  %.not.i20 = icmp ugt i64 %spec.select, %i.m
  br i1 %.not.i20, label %bb.h, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.n = tail call { ptr, i64, ptr } asm sideeffect "rep movsb", "={di},={cx},={si},0,1,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.l, i64 range(i64 0, 16384) %spec.select, ptr nonnull %0) #16, !srcloc !27 ; 0 uses
  br label %_mi_memcpy.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %0, i64 range(i64 0, 16384) %spec.select, i1 false)
  br label %_mi_memcpy.exit

_mi_memcpy.exit:                                  ; preds = %bb.h, %bb.g, %mi_lock_acquire.exit
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @out_buf_lock) #15 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_mi_memcpy.exit, %bb.c, %bb.b, %bb.a
  ret void
}

declare i64 @_mi_strlen(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @_mi_vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare i64 @_mi_strnlen(ptr noundef, i64 noundef) local_unnamed_addr #9

declare i32 @_mi_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #9

declare i64 @_mi_thread_id() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

declare zeroext i1 @_mi_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare zeroext i1 @_mi_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare i32 @_mi_getenv(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare signext i8 @_mi_toupper(i8 noundef signext) local_unnamed_addr #9

declare zeroext i1 @_mi_streq(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

attributes #0 = { mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nooutline norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nooutline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { "no-builtin-malloc" }
attributes #15 = { nounwind "no-builtin-malloc" }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(none) "no-builtin-malloc" }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null, ptr @_mi_fputs}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"mi_option_desc_s", !11, i64 0, !8, i64 8, !8, i64 12, !13, i64 16, !13, i64 24}
!15 = !{!14, !8, i64 8}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{ptr @mi_option_get}
!18 = !{!14, !11, i64 0}
!19 = !{!11, !11, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!7, !7, i64 0}
!22 = !{ptr @mi_option_is_enabled, ptr @mi_option_get}
!23 = !{!14, !13, i64 16}
!24 = !{!8, !8, i64 0}
!25 = !{!14, !8, i64 12}
!26 = !{!12, !12, i64 0}
!27 = !{i64 170369}
!28 = distinct !{!28, !20}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !20}
!31 = !{!14, !13, i64 24}
!32 = !{!13, !13, i64 0}
!33 = distinct !{null}
!34 = !{ptr @mi_option_get, ptr @mi_option_is_enabled}
!35 = distinct !{null, ptr @mi_option_is_enabled, ptr @mi_option_get}
!36 = distinct !{null}
!37 = !{!"p1 _ZTS10mi_block_s", !12, i64 0}
!38 = !{!"short", !7, i64 0}
!39 = !{!"_Bool", !7, i64 0}
!40 = !{!"p1 _ZTS10mi_theap_s", !12, i64 0}
!41 = !{!"p1 _ZTS9mi_heap_s", !12, i64 0}
!42 = !{!"p1 _ZTS9mi_page_s", !12, i64 0}
!43 = !{!"mi_memid_s", !7, i64 0, !8, i64 16, !39, i64 20, !39, i64 21, !39, i64 22}
!44 = !{!"mi_page_s", !7, i64 0, !7, i64 8, !37, i64 16, !11, i64 24, !37, i64 32, !11, i64 40, !11, i64 48, !38, i64 56, !38, i64 58, !38, i64 60, !7, i64 62, !39, i64 63, !7, i64 64, !40, i64 72, !41, i64 80, !42, i64 88, !42, i64 96, !43, i64 104}
!45 = !{!44, !11, i64 40}
!46 = distinct !{ptr @mi_out_buf, null}
!47 = !{ptr @mi_out_buf}
end_hunk_0
