inline.NumInlined: 50
inline.NumDeleted: 22
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.vtx_datas_t = type { %union.anon, ptr, %struct.vtx_data }
%union.anon = type { %struct.list_t_ }
%struct.list_t_ = type { ptr, i64, i64, i64 }
%struct.vtx_data = type { %union.anon.0, ptr, i32 }
%union.anon.0 = type { %struct.list_t_ }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [43 x i8] c"Warning: degenerate circle of %u vertices\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Warning: degenerate star of %u vertices\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Warning: degenerate wheel of %u vertices\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"list element type is not a pointer, but `free` used as destructor\0A\00", align 1
@__const.makeTetrix.graph = private unnamed_addr constant %struct.vtx_datas_t { %union.anon zeroinitializer, ptr @free_vtx, %struct.vtx_data zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [50 x i8] c"Warning: degenerate Moebius strip of %u vertices\0A\00", align 1
@constructSierpinski.last_used_node_name = internal unnamed_addr global i32 3, align 4
@constructTetrix.last_used_node_name = internal unnamed_addr global i32 4, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"integer overflow in %lu * %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"integer overflow in %lu + %lu\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @makePath(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %.lr.ph [
    i32 1, label %bb.b
    i32 0, label %.loopexit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void %1(i32 noundef 1, i32 noundef 0) #15
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi i32 [ %i.b, %.lr.ph ], [ 2, %bb.a ]  ; 3 uses
  %i.a = add i32 %.09, -1
  tail call void %1(i32 noundef %i.a, i32 noundef %.09) #15
  %i.b = add i32 %.09, 1                          ; 2 uses
  %.not = icmp ugt i32 %i.b, %0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !9

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @makeComplete(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %.lr.ph.preheader [
    i32 1, label %bb.b
    i32 0, label %.loopexit13
  ]

bb.b:                                             ; preds = %bb.a
  tail call void %1(i32 noundef 1, i32 noundef 0) #15
  br label %.loopexit13

.loopexit:                                        ; preds = %.lr.ph
  %exitcond.not = icmp eq i32 %i.a, %0
  br i1 %exitcond.not, label %.loopexit13, label %.lr.ph.preheader, !llvm.loop !11

.lr.ph.preheader:                                 ; preds = %bb.a, %.loopexit
  %.01116 = phi i32 [ %i.a, %.loopexit ], [ 1, %bb.a ] ; 2 uses
  %i.a = add nuw i32 %.01116, 1                   ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.015 = phi i32 [ %i.b, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  tail call void %1(i32 noundef %.01116, i32 noundef %.015) #15
  %i.b = add i32 %.015, 1                         ; 2 uses
  %.not = icmp ugt i32 %i.b, %0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !12

.loopexit13:                                      ; preds = %.loopexit, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @makeCircle(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef %0) #16 ; 0 uses
  switch i32 %0, label %makePath.exit.loopexit [
    i32 1, label %makePath.exit.sink.split
    i32 0, label %makePath.exit
  ]

.preheader:                                       ; preds = %bb.a, %.preheader
  %.012 = phi i32 [ %i.d, %.preheader ], [ 1, %bb.a ] ; 2 uses
  %i.d = add nuw i32 %.012, 1                     ; 3 uses
  tail call void %1(i32 noundef %.012, i32 noundef %i.d) #15
  %exitcond.not = icmp eq i32 %i.d, %0
  br i1 %exitcond.not, label %makePath.exit.sink.split, label %.preheader, !llvm.loop !16

makePath.exit.loopexit:                           ; preds = %bb.b
  br label %makePath.exit.sink.split

makePath.exit.sink.split:                         ; preds = %.preheader, %bb.b, %makePath.exit.loopexit
  %.sink = phi i32 [ 2, %makePath.exit.loopexit ], [ 0, %bb.b ], [ %0, %.preheader ]
  tail call void %1(i32 noundef 1, i32 noundef %.sink) #15
  br label %makePath.exit

makePath.exit:                                    ; preds = %makePath.exit.sink.split, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @makeStar(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.1, i32 noundef %0) #16 ; 0 uses
  switch i32 %0, label %makePath.exit.loopexit [
    i32 1, label %makePath.exit.sink.split
    i32 0, label %makePath.exit
  ]

.preheader:                                       ; preds = %bb.a, %.preheader
  %.010 = phi i32 [ %i.d, %.preheader ], [ 2, %bb.a ] ; 2 uses
  tail call void %1(i32 noundef 1, i32 noundef %.010) #15
  %i.d = add i32 %.010, 1                         ; 2 uses
  %.not = icmp ugt i32 %i.d, %0
  br i1 %.not, label %makePath.exit, label %.preheader, !llvm.loop !17

makePath.exit.loopexit:                           ; preds = %bb.b
  br label %makePath.exit.sink.split

makePath.exit.sink.split:                         ; preds = %bb.b, %makePath.exit.loopexit
  %.sink = phi i32 [ 2, %makePath.exit.loopexit ], [ 0, %bb.b ]
  tail call void %1(i32 noundef 1, i32 noundef %.sink) #15
  br label %makePath.exit

makePath.exit:                                    ; preds = %.preheader, %makePath.exit.sink.split, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @makeWheel(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %bb.b, label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.2, i32 noundef %0) #16 ; 0 uses
  switch i32 %0, label %.lr.ph.preheader.i [
    i32 1, label %bb.c
    i32 0, label %makeComplete.exit
  ]

bb.c:                                             ; preds = %bb.b
  tail call void %1(i32 noundef 1, i32 noundef 0) #15, !inline_history !18
  br label %makeComplete.exit

.loopexit.i:                                      ; preds = %.lr.ph.i
  %exitcond.not.i = icmp eq i32 %i.d, %0
  br i1 %exitcond.not.i, label %makeComplete.exit, label %.lr.ph.preheader.i, !llvm.loop !11

.lr.ph.preheader.i:                               ; preds = %bb.b, %.loopexit.i
  %.01116.i = phi i32 [ %i.d, %.loopexit.i ], [ 1, %bb.b ] ; 2 uses
  %i.d = add nuw i32 %.01116.i, 1                 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.015.i = phi i32 [ %i.e, %.lr.ph.i ], [ %i.d, %.lr.ph.preheader.i ] ; 2 uses
  tail call void %1(i32 noundef %.01116.i, i32 noundef %.015.i) #15, !inline_history !18
  %i.e = add i32 %.015.i, 1                       ; 2 uses
  %.not.i = icmp ugt i32 %i.e, %0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !12

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.010.i = phi i32 [ %i.f, %.preheader.i ], [ 2, %bb.a ] ; 2 uses
  tail call void %1(i32 noundef 1, i32 noundef %.010.i) #15, !inline_history !19
  %i.f = add i32 %.010.i, 1                       ; 2 uses
  %.not.i14 = icmp ugt i32 %i.f, %0
  br i1 %.not.i14, label %makeStar.exit, label %.preheader.i, !llvm.loop !17

makeStar.exit._crit_edge:                         ; preds = %makeStar.exit
  tail call void %1(i32 noundef 2, i32 noundef %0) #15
  br label %makeComplete.exit

makeStar.exit:                                    ; preds = %.preheader.i, %makeStar.exit
  %.015 = phi i32 [ %i.g, %makeStar.exit ], [ 2, %.preheader.i ] ; 2 uses
  %i.g = add nuw i32 %.015, 1                     ; 3 uses
  tail call void %1(i32 noundef %.015, i32 noundef %i.g) #15
  %exitcond.not = icmp eq i32 %i.g, %0
  br i1 %exitcond.not, label %makeStar.exit._crit_edge, label %makeStar.exit, !llvm.loop !20

makeComplete.exit:                                ; preds = %.loopexit.i, %bb.c, %bb.b, %makeStar.exit._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @makeCompleteB(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not14 = icmp eq i32 %0, 0
  %.not1112 = icmp eq i32 %1, 0
  %or.cond = or i1 %.not14, %.not1112
  br i1 %or.cond, label %._crit_edge16, label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.0915 = phi i32 [ %i.a, %._crit_edge ], [ 1, %bb.a ] ; 2 uses
  br label %bb.b

._crit_edge16:                                    ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.b
  %i.a = add i32 %.0915, 1                        ; 2 uses
  %.not = icmp ugt i32 %i.a, %0
  br i1 %.not, label %._crit_edge16, label %.preheader, !llvm.loop !21

bb.b:                                             ; preds = %.preheader, %bb.b
  %.013 = phi i32 [ 1, %.preheader ], [ %i.c, %bb.b ] ; 2 uses
  %i.b = add i32 %.013, %0
  tail call void %2(i32 noundef %.0915, i32 noundef %i.b) #15
  %i.c = add i32 %.013, 1                         ; 2 uses
  %.not11 = icmp ugt i32 %i.c, %1
  br i1 %.not11, label %._crit_edge, label %bb.b, !llvm.loop !22
}

; Function Attrs: nounwind uwtable
define dso_local void @makeTorus(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not44 = icmp eq i32 %0, 0
  br i1 %.not44, label %.preheader41, label %.preheader42.lr.ph

.preheader42.lr.ph:                               ; preds = %bb.a
  %i.a = icmp ugt i32 %1, 1
  br i1 %i.a, label %.preheader42.us, label %.preheader42

.preheader42.us:                                  ; preds = %.preheader42.lr.ph, %._crit_edge.us
  %.03646.us = phi i32 [ %i.f, %._crit_edge.us ], [ 0, %.preheader42.lr.ph ] ; 3 uses
  %.03745.us = phi i32 [ %i.g, %._crit_edge.us ], [ 1, %.preheader42.lr.ph ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader42.us, %bb.b
  %.03543.us = phi i32 [ 1, %.preheader42.us ], [ %i.d, %bb.b ] ; 2 uses
  %i.b = add i32 %.03543.us, %.03646.us           ; 2 uses
  %i.c = add i32 %i.b, 1
  tail call void %2(i32 noundef %i.b, i32 noundef %i.c) #15
  %i.d = add nuw i32 %.03543.us, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.d, %1
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !23

._crit_edge.us:                                   ; preds = %bb.b
  %i.e = add i32 %.03646.us, 1
  %i.f = add i32 %.03646.us, %1                   ; 2 uses
  tail call void %2(i32 noundef %i.e, i32 noundef %i.f) #15
  %i.g = add i32 %.03745.us, 1                    ; 2 uses
  %.not.us = icmp ugt i32 %i.g, %0
  br i1 %.not.us, label %.preheader.lr.ph, label %.preheader42.us, !llvm.loop !24

.preheader42:                                     ; preds = %.preheader42.lr.ph, %.preheader42
  %.03646 = phi i32 [ %i.i, %.preheader42 ], [ 0, %.preheader42.lr.ph ] ; 2 uses
  %.03745 = phi i32 [ %i.j, %.preheader42 ], [ 1, %.preheader42.lr.ph ]
  %i.h = add i32 %.03646, 1
  %i.i = add i32 %.03646, %1                      ; 2 uses
  tail call void %2(i32 noundef %i.h, i32 noundef %i.i) #15
  %i.j = add i32 %.03745, 1                       ; 2 uses
  %.not = icmp ugt i32 %i.j, %0
  br i1 %.not, label %.preheader41, label %.preheader42, !llvm.loop !24

.preheader41:                                     ; preds = %.preheader42, %bb.a
  %.not4048 = icmp eq i32 %1, 0
  br i1 %.not4048, label %._crit_edge50, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge.us, %.preheader41
  %i.k = icmp ugt i32 %0, 1
  %i.l = add i32 %0, -1
  %i.m = mul i32 %1, %i.l                         ; 2 uses
  br i1 %i.k, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us51
  %.03449.us = phi i32 [ %i.u, %._crit_edge.us51 ], [ 1, %.preheader.lr.ph ] ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %bb.c
  %.047.us = phi i32 [ 1, %.preheader.us ], [ %i.s, %bb.c ] ; 3 uses
  %i.n = add i32 %.047.us, -1
  %i.o = mul i32 %i.n, %1
  %i.p = add i32 %i.o, %.03449.us
  %i.q = mul i32 %.047.us, %1
  %i.r = add i32 %i.q, %.03449.us
  tail call void %2(i32 noundef %i.p, i32 noundef %i.r) #15
  %i.s = add nuw i32 %.047.us, 1                  ; 2 uses
  %exitcond54.not = icmp eq i32 %i.s, %0
  br i1 %exitcond54.not, label %._crit_edge.us51, label %bb.c, !llvm.loop !25

._crit_edge.us51:                                 ; preds = %bb.c
  %i.t = add i32 %.03449.us, %i.m
  tail call void %2(i32 noundef %.03449.us, i32 noundef %i.t) #15
  %i.u = add i32 %.03449.us, 1                    ; 2 uses
  %.not40.us = icmp ugt i32 %i.u, %1
  br i1 %.not40.us, label %._crit_edge50, label %.preheader.us, !llvm.loop !26

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.03449 = phi i32 [ %i.w, %.preheader ], [ 1, %.preheader.lr.ph ] ; 3 uses
  %i.v = add i32 %.03449, %i.m
  tail call void %2(i32 noundef %.03449, i32 noundef %i.v) #15
  %i.w = add i32 %.03449, 1                       ; 2 uses
  %.not40 = icmp ugt i32 %i.w, %1
  br i1 %.not40, label %._crit_edge50, label %.preheader, !llvm.loop !26

._crit_edge50:                                    ; preds = %.preheader, %._crit_edge.us51, %.preheader41
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @makeTwistedTorus(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i32 %0, 0
  %i.b = icmp ne i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge34.split

.preheader.preheader:                             ; preds = %bb.a
  %i.c = icmp ugt i32 %1, 1
  %i.d = add i32 %1, -2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.peel.begin
  %.033 = phi i32 [ %i.g, %._crit_edge.peel.begin ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.e = add i32 %.033, %2
  %i.f = urem i32 %i.e, %0
  %i.g = add nuw i32 %.033, 1                     ; 6 uses
  %invariant.op = add nuw i32 %i.f, 1             ; 2 uses
  br i1 %i.c, label %.preheader.split, label %._crit_edge.peel.begin

end_hunk_0
