begin_hunk_0
@.str.21 = private unnamed_addr constant [13 x i8] c"System Calls\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Could not open %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Opened %s\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Pathfinder Configuration\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"signatures\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"search type\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"file \00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"Error parsing %s\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"signature \00", align 1
@str = private unnamed_addr constant [22 x i8] c"\09...parsing complete.\00", align 1
@str.1 = private unnamed_addr constant [42 x i8] c"Could not allocate graph storage. Exiting\00", align 1
@str.2 = private unnamed_addr constant [46 x i8] c"Could not allocate signature storage. Exiting\00", align 1
end_hunk_0
begin_hunk_1
; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @parseConfigFile(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.8) ; 13 uses
  %.not = icmp eq ptr %i.b, null
end_hunk_1
begin_hunk_2
  br i1 %.not51, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(24) @.str.25, ptr noundef nonnull dereferenceable(24) %i.a, i64 24)
  %.not52 = icmp eq i32 %bcmp, 0
  br i1 %.not52, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_2
begin_hunk_3
  br i1 %.not53, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %bcmp54 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @.str.27, ptr noundef nonnull dereferenceable(5) %i.a, i64 5)
  %.not55 = icmp eq i32 %bcmp54, 0
  br i1 %.not55, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
end_hunk_3
begin_hunk_4
  br i1 %.not56, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %bcmp57 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @.str.30, ptr noundef nonnull dereferenceable(10) %i.a, i64 10)
  %.not58 = icmp eq i32 %bcmp57, 0
  br i1 %.not58, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
end_hunk_4
begin_hunk_5
  br i1 %.not59, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %bcmp60 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) @.str.33, ptr noundef nonnull dereferenceable(11) %i.a, i64 11)
  %.not61 = icmp eq i32 %bcmp60, 0
  br i1 %.not61, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
end_hunk_5
begin_hunk_6
  br i1 %.not72, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %bcmp73 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @.str.36, ptr noundef nonnull dereferenceable(5) %i.a, i64 5)
  %.not74 = icmp eq i32 %bcmp73, 0
  br i1 %.not74, label %.preheader100, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
end_hunk_6
begin_hunk_7
  br i1 %.not67, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %bcmp68 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @.str.40, ptr noundef nonnull dereferenceable(10) %i.a, i64 10)
  %.not69 = icmp eq i32 %bcmp68, 0
  br i1 %.not69, label %.preheader99, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
end_hunk_7
begin_hunk_8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #12
end_hunk_8
