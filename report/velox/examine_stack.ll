inline.NumInlined: 9
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_122debug_stack_trace_hookE = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [5 x i8] c"PC: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"    @ ... and at least %d more frames\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%s@ %*p  (unknown)  %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"%s@ %*p  %9d  %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%s@ %*p  (unknown)\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%s@ %*p  %9d\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"%s@ %*p  %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"%s@ %*p\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2024011618debugging_internal27RegisterDebugStackTraceHookEPFvPKPviPFvPKcS2_ES2_E(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  store ptr %0, ptr @_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_122debug_stack_trace_hookE, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN4absl12lts_2024011618debugging_internal22GetDebugStackTraceHookEv() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_122debug_stack_trace_hookE, align 8, !tbaa !7
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN4absl12lts_2024011618debugging_internal17GetProgramCounterEPv(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = inttoptr i64 %i.b to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011618debugging_internal32DumpPCAndFrameSizesAndStackTraceEPvPKS2_PiiibPFvPKcS2_ES2_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %i.c = alloca [1024 x i8], align 16             ; 5 uses
  %i.d = alloca [100 x i8], align 16              ; 4 uses
  %i.e = alloca [1024 x i8], align 16             ; 4 uses
  %i.f = alloca [1024 x i8], align 16             ; 4 uses
  %i.g = alloca [100 x i8], align 16              ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %5, label %.thread45, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %3, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.thread45:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.i = call noundef zeroext i1 @_ZN4absl12lts_202401169SymbolizeEPKvPci(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i32 noundef 1024)
  %spec.select.i = select i1 %i.i, ptr %i.e, ptr @.str.3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 1024, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 18, ptr noundef nonnull %0, ptr noundef nonnull %spec.select.i) #9 ; 0 uses
  call void %6(ptr noundef nonnull %i.f, ptr noundef %7), !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  %i.k = icmp sgt i32 %3, 0
  br i1 %i.k, label %.lr.ph.split.us.preheader, label %._crit_edge

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 100, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str, i32 noundef 18, ptr noundef nonnull %0) #9 ; 0 uses
  call void %6(ptr noundef nonnull %i.d, ptr noundef %7), !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.m = icmp sgt i32 %3, 0
  br i1 %i.m, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  br i1 %5, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.thread, %.lr.ph
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.thread45, %.lr.ph
  %wide.trip.count39 = zext nneg i32 %3 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_127DumpPCAndFrameSizeAndSymbolEPFvPKcPvES5_S5_S5_iS4_.exit.us
  %indvars.iv36 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next37, %_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_127DumpPCAndFrameSizeAndSymbolEPFvPKcPvES5_S5_S5_iS4_.exit.us ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv36
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !7    ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -1
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.s = call noundef zeroext i1 @_ZN4absl12lts_202401169SymbolizeEPKvPci(ptr noundef nonnull %i.p, ptr noundef nonnull %i.b, i32 noundef 1024)
  %spec.select.i32.us = select i1 %i.s, ptr %i.b, ptr @.str.3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.t = icmp slt i32 %i.r, 1
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 18, ptr noundef nonnull %i.o, i32 noundef %i.r, ptr noundef nonnull %spec.select.i32.us) #9 ; 0 uses
  br label %_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_127DumpPCAndFrameSizeAndSymbolEPFvPKcPvES5_S5_S5_iS4_.exit.us

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.v = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 18, ptr noundef nonnull %i.o, ptr noundef nonnull %spec.select.i32.us) #9 ; 0 uses
  br label %_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_127DumpPCAndFrameSizeAndSymbolEPFvPKcPvES5_S5_S5_iS4_.exit.us

_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_127DumpPCAndFrameSizeAndSymbolEPFvPKcPvES5_S5_S5_iS4_.exit.us: ; preds = %bb.e, %bb.d
  call void %6(ptr noundef nonnull %i.c, ptr noundef %7), !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !13

._crit_edge:                                      ; preds = %_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_118DumpPCAndFrameSizeEPFvPKcPvES5_S5_iS4_.exit, %_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_127DumpPCAndFrameSizeAndSymbolEPFvPKcPvES5_S5_S5_iS4_.exit.us, %.thread45, %.thread, %bb.c
  %i.w = icmp sgt i32 %4, 0
  br i1 %i.w, label %bb.h, label %bb.i

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_118DumpPCAndFrameSizeEPFvPKcPvES5_S5_iS4_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_118DumpPCAndFrameSizeEPFvPKcPvES5_S5_iS4_.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7    ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ab = icmp slt i32 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 100, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 18, ptr noundef %i.y) #9 ; 0 uses
  br label %_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_118DumpPCAndFrameSizeEPFvPKcPvES5_S5_iS4_.exit

bb.g:                                             ; preds = %.lr.ph.split
  %i.ad = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 100, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 18, ptr noundef %i.y, i32 noundef %i.aa) #9 ; 0 uses
  br label %_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_118DumpPCAndFrameSizeEPFvPKcPvES5_S5_iS4_.exit

_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_118DumpPCAndFrameSizeEPFvPKcPvES5_S5_iS4_.exit: ; preds = %bb.f, %bb.g
  call void %6(ptr noundef nonnull %i.a, ptr noundef %7), !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !13

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  %i.ae = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 100, ptr noundef nonnull @.str.2, i32 noundef %4) #9 ; 0 uses
  call void %6(ptr noundef nonnull %i.g, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress noinline uwtable
define void @_ZN4absl12lts_2024011618debugging_internal14DumpStackTraceEiibPFvPKcPvES4_(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  %i.b = alloca [1024 x i8], align 16             ; 5 uses
  %i.c = alloca [1024 x i8], align 16             ; 4 uses
  %i.d = alloca [64 x ptr], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.e = icmp slt i32 %1, 65
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %1 to i64
  %i.g = shl nuw nsw i64 %i.f, 3                  ; 2 uses
  %i.h = tail call ptr @mmap(ptr noundef null, i64 noundef range(i64 520, 17179869177) %i.g, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #9 ; 2 uses
  %i.i = icmp eq ptr %i.h, inttoptr (i64 -1 to ptr)
  %i.j = select i1 %i.i, ptr null, ptr %i.h       ; 2 uses
  %.not = icmp eq ptr %i.j, null                  ; 3 uses
  %.035 = select i1 %.not, i64 0, i64 %i.g
  %.033 = select i1 %.not, i32 64, i32 %1
  %.0 = select i1 %.not, ptr %i.d, ptr %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.136 = phi i64 [ %.035, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %.134 = phi i32 [ %.033, %bb.b ], [ %1, %bb.a ]
  %.1 = phi ptr [ %.0, %bb.b ], [ %i.d, %bb.a ]   ; 5 uses
  %i.k = add nsw i32 %0, 1
  %i.l = call noundef i32 @_ZN4absl12lts_2024011613GetStackTraceEPPvii(ptr noundef %.1, i32 noundef %.134, i32 noundef %i.k) ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %wide.trip.count50 = zext nneg i32 %i.l to i64  ; 2 uses
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_115DumpPCAndSymbolEPFvPKcPvES5_S5_S4_.exit.us
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_115DumpPCAndSymbolEPFvPKcPvES5_S5_S4_.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %indvars.iv47
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !7    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = add i64 %i.p, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = call noundef zeroext i1 @_ZN4absl12lts_202401169SymbolizeEPKvPci(ptr noundef %i.r, ptr noundef nonnull %i.b, i32 noundef 1024)
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.t = call noundef zeroext i1 @_ZN4absl12lts_202401169SymbolizeEPKvPci(ptr noundef %i.o, ptr noundef nonnull %i.b, i32 noundef 1024)
  br i1 %i.t, label %bb.e, label %_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_115DumpPCAndSymbolEPFvPKcPvES5_S5_S4_.exit.us

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.us
  br label %_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_115DumpPCAndSymbolEPFvPKcPvES5_S5_S4_.exit.us

_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_115DumpPCAndSymbolEPFvPKcPvES5_S5_S4_.exit.us: ; preds = %bb.e, %bb.d
  %.0.i.us = phi ptr [ %i.b, %bb.e ], [ @.str.3, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 18, ptr noundef %i.o, ptr noundef nonnull %.0.i.us) #9 ; 0 uses
  call void %3(ptr noundef nonnull %i.c, ptr noundef %4), !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count50
  br i1 %exitcond51.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph.split, %_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_115DumpPCAndSymbolEPFvPKcPvES5_S5_S4_.exit.us, %bb.c
  %i.v = load ptr, ptr @_ZN4absl12lts_2024011618debugging_internal12_GLOBAL__N_122debug_stack_trace_hookE, align 8, !tbaa !7 ; 2 uses
  %.not42 = icmp eq ptr %i.v, null
  br i1 %.not42, label %bb.g, label %bb.f

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 100, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 18, ptr noundef %i.x) #9 ; 0 uses
  call void %3(ptr noundef nonnull %i.a, ptr noundef %4), !inline_history !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count50
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !16

bb.f:                                             ; preds = %._crit_edge
  call void %i.v(ptr noundef %.1, i32 noundef %i.l, ptr noundef %3, ptr noundef %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.not43 = icmp eq i64 %.136, 0
  br i1 %.not43, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = call i32 @munmap(ptr noundef nonnull %.1, i64 noundef range(i64 1, 17179869177) %.136) #9 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  ret void
}

declare noundef i32 @_ZN4absl12lts_2024011613GetStackTraceEPPvii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN4absl12lts_202401169SymbolizeEPKvPci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long long", !5, i64 0}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{null}
!16 = distinct !{!16, !14}
!17 = distinct !{null}
end_hunk_0
