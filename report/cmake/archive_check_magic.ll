inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"PROGRAMMER ERROR: Function \00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c" invoked with invalid archive handle.\0A\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"PROGRAMMER ERROR: Function '%s' invoked on '%s' archive object, which is not supported.\00", align 1
@.str.3 = private unnamed_addr constant [100 x i8] c"INTERNAL ERROR: Function '%s' invoked with archive structure in state '%s', should be in state '%s'\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"archive_write\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"archive_read\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"archive_write_disk\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"archive_read_disk\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"archive_match\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"eof\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"fatal\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@switch.table.__archive_check_magic.1 = private unnamed_addr constant [16 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.16, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.16, ptr @.str.16, ptr @.str.16, ptr @.str.16, ptr @.str.16, ptr @.str.16, ptr @.str.16, ptr @.str.16, ptr @.str.15], align 8

; Function Attrs: nounwind uwtable
define dso_local range(i32 -30, 1) i32 @__archive_check_magic(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %i.b = alloca [64 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = load i32, ptr %0, align 8, !tbaa !9      ; 2 uses
  switch i32 %i.c, label %archive_handle_type_name.exit [
    i32 -1329217314, label %bb.f
    i32 14594245, label %bb.b
    i32 -1073631035, label %bb.c
    i32 195932357, label %bb.d
    i32 212668873, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br label %bb.f

archive_handle_type_name.exit:                    ; preds = %bb.a
  tail call fastcc void @errmsg(ptr noundef nonnull @.str)
  tail call fastcc void @errmsg(ptr noundef %3)
  tail call fastcc void @errmsg(ptr noundef nonnull @.str.1)
  tail call fastcc void @diediedie() #12
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.c, %bb.d, %bb.a
  %.0.i.ph = phi ptr [ @.str.4, %bb.a ], [ @.str.7, %bb.d ], [ @.str.6, %bb.c ], [ @.str.5, %bb.b ], [ @.str.8, %bb.e ]
  %.not19 = icmp eq i32 %i.c, %1
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.2, ptr noundef %3, ptr noundef nonnull %.0.i.ph) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 32768, ptr %i.d, align 4, !tbaa !17
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17   ; 4 uses
  %i.g = and i32 %i.f, %2
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %.not20 = icmp eq i32 %i.f, 32768
  br i1 %.not20, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.a, align 16, !tbaa !18
  %.not10.i = icmp eq i32 %i.f, 0
  br i1 %.not10.i, label %write_all_states.exit, label %.split.i.i

.split.i.i:                                       ; preds = %bb.j, %bb.k
  %i.i = phi i32 [ %i.j, %bb.k ], [ %i.f, %bb.j ] ; 5 uses
  %4 = sub i32 0, %i.i
  %5 = and i32 %i.i, %4                           ; 2 uses
  %i.j = xor i32 %5, %i.i
  %i.k = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.i, i1 true) ; 2 uses
  %i.l = icmp samesign ult i32 %i.k, 16
  br i1 %i.l, label %switch.lookup, label %state_name.exit.i

switch.lookup:                                    ; preds = %.split.i.i
  %i.m = zext nneg i32 %i.k to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.__archive_check_magic.1, i64 %i.m
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %state_name.exit.i

state_name.exit.i:                                ; preds = %.split.i.i, %switch.lookup
  %.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.16, %.split.i.i ]
  %i.n = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %.0.i.i) #11 ; 0 uses
  %.not9.i = icmp eq i32 %5, %i.i
  br i1 %.not9.i, label %write_all_states.exit, label %bb.k

bb.k:                                             ; preds = %state_name.exit.i
  %strlen.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %endptr.i = getelementptr inbounds i8, ptr %i.a, i64 %strlen.i
  store i16 47, ptr %endptr.i, align 1
  br label %.split.i.i

write_all_states.exit:                            ; preds = %state_name.exit.i, %bb.j
  store i8 0, ptr %i.b, align 16, !tbaa !18
  %.not10.i21 = icmp eq i32 %2, 0
  br i1 %.not10.i21, label %write_all_states.exit30, label %.split.i.i22

.split.i.i22:                                     ; preds = %write_all_states.exit, %bb.l
  %i.o = phi i32 [ %i.p, %bb.l ], [ %2, %write_all_states.exit ] ; 5 uses
  %6 = sub i32 0, %i.o
  %7 = and i32 %i.o, %6                           ; 2 uses
  %i.p = xor i32 %7, %i.o
  %i.q = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.o, i1 true) ; 2 uses
  %i.r = icmp samesign ult i32 %i.q, 16
  br i1 %i.r, label %switch.lookup39, label %state_name.exit.i24

switch.lookup39:                                  ; preds = %.split.i.i22
  %i.s = zext nneg i32 %i.q to i64
  %switch.gep40 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.__archive_check_magic.1, i64 %i.s
  %switch.load41 = load ptr, ptr %switch.gep40, align 8
  br label %state_name.exit.i24

state_name.exit.i24:                              ; preds = %.split.i.i22, %switch.lookup39
  %.0.i.i25 = phi ptr [ %switch.load41, %switch.lookup39 ], [ @.str.16, %.split.i.i22 ]
  %i.t = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %.0.i.i25) #11 ; 0 uses
  %.not9.i26 = icmp eq i32 %7, %i.o
  br i1 %.not9.i26, label %write_all_states.exit30, label %bb.l

bb.l:                                             ; preds = %state_name.exit.i24
  %strlen.i27 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.b)
  %endptr.i28 = getelementptr inbounds i8, ptr %i.b, i64 %strlen.i27
  store i16 47, ptr %endptr.i28, align 1
  br label %.split.i.i22

write_all_states.exit30:                          ; preds = %state_name.exit.i24, %write_all_states.exit
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.3, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  br label %bb.m

bb.m:                                             ; preds = %write_all_states.exit30, %bb.i
  store i32 32768, ptr %i.e, align 4, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m, %bb.g
  %.0 = phi i32 [ -30, %bb.g ], [ -30, %bb.m ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @errmsg(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13 ; 2 uses
  %.not17 = icmp eq i64 %i.a, 0
  br i1 %.not17, label %.split, label %.outer.split.preheader

.outer.split.preheader:                           ; preds = %bb.a, %.outer
  %.0.ph19 = phi ptr [ %i.h, %.outer ], [ %0, %bb.a ] ; 2 uses
  %.09.ph18 = phi i64 [ %i.i, %.outer ], [ %i.a, %bb.a ] ; 2 uses
  br label %.outer.split

.outer.split:                                     ; preds = %.outer.split.preheader, %bb.c
  %i.b = tail call i64 @write(i32 noundef 2, ptr noundef %.0.ph19, i64 noundef %.09.ph18) #11 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.split, label %bb.b

bb.b:                                             ; preds = %.outer.split
  %i.d = icmp slt i64 %i.b, 0
  br i1 %i.d, label %bb.c, label %.outer

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #14
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %.outer.split, label %.split, !llvm.loop !20

.outer:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.0.ph19, i64 %i.b
  %i.i = sub i64 %.09.ph18, %i.b                  ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.split, label %.outer.split.preheader, !llvm.loop !20

.split:                                           ; preds = %.outer, %.outer.split, %bb.c, %bb.a
  ret void
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define internal fastcc void @diediedie() unnamed_addr #3 {
bb.a:
  tail call void @abort() #15
  unreachable
}

declare void @archive_set_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"archive", !6, i64 0, !6, i64 4, !11, i64 8, !6, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !13, i64 40, !14, i64 48, !13, i64 72, !6, i64 80, !6, i64 84, !16, i64 88, !13, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !7, i64 128, !15, i64 136}
!11 = !{!"p1 _ZTS14archive_vtable", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"archive_string", !13, i64 0, !15, i64 8, !15, i64 16}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTS19archive_string_conv", !12, i64 0}
!17 = !{!10, !6, i64 4}
!18 = !{!7, !7, i64 0}
!19 = !{!6, !6, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
end_hunk_0
