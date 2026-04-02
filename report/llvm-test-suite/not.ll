begin_hunk_0
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@.str.1 = private unnamed_addr constant [26 x i8] c"LLVM_DISABLE_CRASH_REPORT\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"LLVM_DISABLE_SYMBOLIZATION\00", align 1
end_hunk_0
begin_hunk_1
  br i1 %i.f, label %bb.b, label %.critedge37.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !8    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !11
end_hunk_1
begin_hunk_2
  br i1 %i.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #10
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 %i.j, ptr %i.a, align 8, !tbaa !13
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i
end_hunk_2
begin_hunk_3
  %i.r = load ptr, ptr %2, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.t = load i64, ptr %i.q, align 8, !tbaa !18   ; 2 uses
  %i.u = icmp eq i64 %i.t, 7
  %.pre = load ptr, ptr %2, align 8, !tbaa !15    ; 4 uses
  br i1 %i.u, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %3 = load i32, ptr %.pre, align 1
  %4 = xor i32 %3, 1919102253
  %5 = getelementptr i8, ptr %.pre, i64 3
  %6 = load i32, ptr %5, align 1
  %7 = xor i32 %6, 1752392050
  %8 = or i32 %4, %7
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  %i.v = icmp eq i32 %10, 0
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.f
end_hunk_3
begin_hunk_4
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.y = load i64, ptr %i.h, align 8, !tbaa !17
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.z) #11
  br label %.critedge37

.critedge37:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br i1 %.ph, label %bb.h, label %.thread

bb.h:                                             ; preds = %.critedge37
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = add nsw i32 %0, -2
  %i.ac = call i32 @setenv(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 0) #9 ; 0 uses
  %i.ad = call i32 @setenv(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 0) #9 ; 0 uses
  br label %.critedge37.thread

.critedge37.thread:                               ; preds = %bb.a, %bb.h
end_hunk_4
begin_hunk_5
.thread:                                          ; preds = %.critedge37, %.critedge37.thread
  %.03145 = phi ptr [ %.031, %.critedge37.thread ], [ %i.d, %.critedge37 ] ; 2 uses
  %i.af = phi i1 [ %i.f, %.critedge37.thread ], [ false, %.critedge37 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.ag = load ptr, ptr %.03145, align 8, !tbaa !8
  %i.ah = load ptr, ptr @environ, align 8, !tbaa !19
  %i.ai = call i32 @posix_spawn(ptr noundef nonnull %i.c, ptr noundef %i.ag, ptr noundef null, ptr noundef null, ptr noundef nonnull %.03145, ptr noundef %i.ah)
end_hunk_5
begin_hunk_6
bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i, %.thread
  %.1.shrunk = phi i1 [ true, %bb.i ], [ true, %.thread ], [ %not., %bb.k ], [ %narrow, %bb.l ]
  %.1 = zext i1 %.1.shrunk to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.n

bb.n:                                             ; preds = %.critedge37.thread, %bb.m
end_hunk_6
begin_hunk_7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_7
begin_hunk_8
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
end_hunk_8
