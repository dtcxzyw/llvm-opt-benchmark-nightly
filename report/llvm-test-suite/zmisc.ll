inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }

@dstack = external global [0 x %struct.ref_s], align 8
@dsp = external local_unnamed_addr global ptr, align 8
@ostop = external local_unnamed_addr global ptr, align 8
@osp = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"getenv name\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"getenv value\00", align 1
@zmisc_op_init.my_defs = internal global [8 x %struct.op_def] [%struct.op_def { ptr @.str.2, ptr @zbind }, %struct.op_def { ptr @.str.3, ptr @zcurrenttime }, %struct.op_def { ptr @.str.4, ptr @zgetenv }, %struct.op_def { ptr @.str.5, ptr @zsetdebug }, %struct.op_def { ptr @.str.6, ptr @ztype1encrypt }, %struct.op_def { ptr @.str.7, ptr @ztype1decrypt }, %struct.op_def { ptr @.str.8, ptr @zusertime }, %struct.op_def zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"1bind\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"0currenttime\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"1getenv\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"2setdebug\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"3type1encrypt\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"3type1decrypt\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"0usertime\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @zbind(ptr noundef captures(address) %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !8
  %1 = lshr i16 %i.c, 2
  %2 = and i16 %1, 63
  switch i16 %2, label %.loopexit [
    i16 0, label %bb.b
    i16 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !11
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %._crit_edge
  %.02033 = phi ptr [ %i.d, %bb.b ], [ %i.ah, %._crit_edge ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.02033, i64 10 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !14   ; 2 uses
  %.not31 = icmp eq i16 %i.f, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.k
  %i.g = phi i16 [ %i.ag, %bb.k ], [ %i.f, %.preheader ]
  %i.h = phi ptr [ %i.af, %bb.k ], [ %i.e, %.preheader ]
  %.132 = phi ptr [ %.2, %bb.k ], [ %.02033, %.preheader ] ; 9 uses
  %i.i = load ptr, ptr %.132, align 8, !tbaa !12  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %.132, align 8, !tbaa !12
  %i.k = add i16 %i.g, -1
  store i16 %i.k, ptr %i.h, align 2, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8, !tbaa !8    ; 3 uses
  %i.n = zext i16 %i.m to i32                     ; 3 uses
  %3 = lshr i32 %i.n, 2
  %4 = and i32 %3, 63
  switch i32 %4, label %bb.k [
    i32 7, label %bb.c
    i32 0, label %bb.h
    i32 10, label %bb.i
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i32 %i.n, 1
  %.not24.not.a = icmp eq i32 %i.o, 0
  br i1 %.not24.not.a, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.p = load ptr, ptr @dsp, align 8, !tbaa !15
  %i.q = call i32 @dict_lookup(ptr noundef nonnull @dstack, ptr noundef %i.p, ptr noundef nonnull %i.i, ptr noundef nonnull %i.a) #6
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i16, ptr %i.t, align 8, !tbaa !8    ; 2 uses
  %i.v = lshr i16 %i.u, 2
  %i.w = and i16 %i.v, 63                         ; 2 uses
  %i.x = icmp samesign ult i16 %i.w, 16
  %i.y = icmp ne i16 %i.w, 9
  %spec.select.not30 = and i1 %i.x, %i.y
  %i.z = and i16 %i.u, 1
  %.not25.not = icmp eq i16 %i.z, 0
  %or.cond27 = or i1 %.not25.not, %spec.select.not30
  br i1 %or.cond27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph
  %i.aa = and i32 %i.n, 256
  %.not22.not = icmp eq i32 %i.aa, 0
  br i1 %.not22.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.not23.not = trunc i16 %i.m to i1
  %i.ab = load ptr, ptr @ostop, align 8
  %i.ac = icmp ult ptr %.132, %i.ab
  %or.cond = select i1 %.not23.not, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = and i16 %i.m, -257
  store i16 %i.ad, ptr %i.l, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %.132, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !11
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.c, %bb.g, %.lr.ph
  %.2 = phi ptr [ %.132, %.lr.ph ], [ %.132, %bb.c ], [ %.132, %bb.g ], [ %.132, %bb.h ], [ %.132, %bb.i ], [ %i.ae, %bb.j ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.2, i64 10 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !14 ; 2 uses
  %.not = icmp eq i16 %i.ag, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.k, %.preheader
  %.1.lcssa = phi ptr [ %.02033, %.preheader ], [ %.2, %bb.k ]
  %i.ah = getelementptr inbounds i8, ptr %.1.lcssa, i64 -16 ; 2 uses
  %i.ai = icmp ugt ptr %i.ah, %0
  br i1 %i.ai, label %.preheader, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %._crit_edge, %bb.a
  %.0 = phi i32 [ -20, %bb.a ], [ 0, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @dict_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -16, 1) i32 @zcurrenttime(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i32 (ptr, ...) @gs_get_clock(ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr @osp, align 8, !tbaa !15
  %i.d = load ptr, ptr @ostop, align 8, !tbaa !15
  %i.e = icmp ugt ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @osp, align 8, !tbaa !15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 16, !tbaa !21
  %i.g = sitofp i64 %i.f to double
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21
  %i.j = sitofp i64 %i.i to double
  %i.k = fdiv double %i.j, 6.000000e+04
  %i.l = call double @llvm.fmuladd.f64(double %i.g, double 1.440000e+03, double %i.k)
  %i.m = fptrunc double %i.l to float
  store float %i.m, ptr %i.c, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 44, ptr %i.n, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -16, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare i32 @gs_get_clock(...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @zgetenv(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = and i32 %i.c, 252
  %i.e = icmp eq i32 %i.d, 52
  br i1 %i.e, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 512
  %.not.not = icmp eq i32 %i.f, 0
  br i1 %.not.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @ref_to_string(ptr noundef nonnull %0, ptr noundef nonnull @.str) #6 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @getenv(ptr noundef nonnull %i.g) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = load i16, ptr %i.j, align 2, !tbaa !14
  %i.l = zext i16 %i.k to i32
  %i.m = add nuw nsw i32 %i.l, 1
  tail call void @alloc_free(ptr noundef nonnull %i.g, i32 noundef %i.m, i32 noundef 1, ptr noundef nonnull @.str) #6
  %i.n = icmp eq ptr %i.i, null
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 0, ptr %0, align 8, !tbaa !12
  store i16 4, ptr %i.a, align 8, !tbaa !8
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.o = tail call i32 (ptr, ptr, ptr, ...) @string_to_ref(ptr noundef nonnull %i.i, ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #6 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.q, ptr @osp, align 8, !tbaa !15
  %i.r = load ptr, ptr @ostop, align 8, !tbaa !15
  %i.s = icmp ugt ptr %i.q, %i.r
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr @osp, align 8, !tbaa !15
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i16 1, ptr %i.q, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 4, ptr %i.t, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.c, %bb.b, %bb.a, %bb.i, %bb.h, %bb.e
  %.0 = phi i32 [ -20, %bb.a ], [ -7, %bb.b ], [ 0, %bb.e ], [ -25, %bb.c ], [ -16, %bb.h ], [ 0, %bb.i ], [ %i.o, %bb.f ]
  ret i32 %.0
}

declare ptr @ref_to_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #4

declare void @alloc_free(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @string_to_ref(...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 1) i32 @zsetdebug(ptr noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
end_hunk_0
