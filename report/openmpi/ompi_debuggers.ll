begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.opal_install_dirs_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@MPIR_dll_name = local_unnamed_addr global [43 x i8] c"/usr/local/lib/openmpi/libompi_dbg_msgq.so\00", align 16
@mpidbg_dll_locations = local_unnamed_addr global ptr null, align 8
@mpimsgq_dll_locations = local_unnamed_addr global ptr null, align 8
@MPIR_debug_typedefs_sizeof = local_unnamed_addr global [7 x i32] [i32 2, i32 4, i32 8, i32 8, i32 8, i32 1, i32 8], align 16
@opal_list_item_t_type_force_inclusion = local_unnamed_addr global ptr null, align 8
@opal_list_t_type_force_inclusion = local_unnamed_addr global ptr null, align 8
@opal_free_list_item_t_type_force_inclusion = local_unnamed_addr global ptr null, align 8
@opal_free_list_t_type_force_inclusion = local_unnamed_addr global ptr null, align 8
@ompi_request_t_type_force_inclusion = local_unnamed_addr global ptr null, align 8
@mca_pml_base_request_t_type_force_inclusion = local_unnamed_addr global ptr null, align 8
@mca_pml_base_send_request_t_type_force_inclusion = local_unnamed_addr global ptr null, align 8
@mca_pml_base_recv_request_t_type_force_inclusion = local_unnamed_addr global ptr null, align 8
@opal_pointer_array_t_type_force_inclusion = local_unnamed_addr global ptr null, align 8
@ompi_communicator_t_type_force_inclusion = local_unnamed_addr global ptr null, align 8
@ompi_group_t_type_force_inclusion = local_unnamed_addr global ptr null, align 8
@ompi_status_public_t_type_force_inclusion = local_unnamed_addr global ptr null, align 8
@opal_datatype_t_type_force_inclusion = local_unnamed_addr global ptr null, align 8
@ompi_datatype_t_type_force_inclusion = local_unnamed_addr global ptr null, align 8
@MPIR_debug_gate = local_unnamed_addr global i32 0, align 4
@opal_install_dirs = external local_unnamed_addr global %struct.opal_install_dirs_t, align 8
@ompi_debugger_dll_path = internal global ptr null, align 8
@.str = private unnamed_addr constant [5 x i8] c"ompi\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"debugger\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"dll_path\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"List of directories where MPI_INIT should search for debugger plugins\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"libompi_dbg_mpihandles\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"libompi_dbg_msgq\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s/%s.so\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @ompi_debugger_setup_dlls() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  store ptr null, ptr %i.c, align 8
  store ptr null, ptr %i.d, align 8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_install_dirs, i64 120), align 8
  store ptr %i.e, ptr @ompi_debugger_dll_path, align 8
  %i.f = call i32 @mca_base_var_register(ptr noundef @.str, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 5, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 8, i32 noundef 1, ptr noundef @ompi_debugger_dll_path) ; 0 uses
  %i.g = load ptr, ptr @ompi_debugger_dll_path, align 8
  %i.h = icmp ne ptr null, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @ompi_debugger_dll_path, align 8
  %i.j = call noalias ptr @opal_argv_split(ptr noundef %i.i, i32 noundef 58)
  store ptr %i.j, ptr %i.b, align 8
  store i32 0, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = load i32, ptr %i.a, align 4
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds ptr, ptr %i.k, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp ne ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = load i32, ptr %i.a, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds ptr, ptr %i.q, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.c, align 8
  call void @check(ptr noundef %i.u, ptr noundef @.str.4, ptr noundef %i.v)
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = load i32, ptr %i.a, align 4
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds ptr, ptr %i.w, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr %i.d, align 8
  call void @check(ptr noundef %i.aa, ptr noundef @.str.5, ptr noundef %i.ab)
  br label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.a, align 4
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.a, align 4
  br label %bb.c, !llvm.loop !6

bb.f:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.b, align 8
  call void @opal_argv_free(ptr noundef %i.ae)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.af = load ptr, ptr %i.c, align 8
  store ptr %i.af, ptr @mpimsgq_dll_locations, align 8
  %i.ag = load ptr, ptr %i.d, align 8
  store ptr %i.ag, ptr @mpidbg_dll_locations, align 8
  ret void
}

declare i32 @mca_base_var_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @opal_argv_split(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %struct.stat, align 8
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef %i.d, ptr noundef @.str.6, ptr noundef %i.e, ptr noundef %i.f) ; 0 uses
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = call i32 @stat(ptr noundef %i.h, ptr noundef %3) #4
  %i.j = icmp eq i32 0, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = call i32 @opal_argv_append_nosize(ptr noundef %i.c, ptr noundef %i.k) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = load ptr, ptr %i.d, align 8
  call void @free(ptr noundef %i.m) #4
  ret void
}

declare void @opal_argv_free(ptr noundef) local_unnamed_addr #1

declare i32 @opal_asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @opal_argv_append_nosize(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
end_hunk_0
