Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/options?download=true
inline.NumInlined: 11
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.5 = private unnamed_addr constant [5 x i8] c"3.3.\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"3.4.\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"3.5.\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"4.0.\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"4.1.\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"latest\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @pm_options_shebang_callback_set(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !35
  %i.a = getelementptr i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !36
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @pm_options_filepath_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8
  tail call void @pm_string_constant_init(ptr noundef %i.a, ptr noundef nonnull %1, i64 noundef %i.b) #9
  ret void
}

declare void @pm_string_constant_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden void @pm_options_encoding_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8
  tail call void @pm_string_constant_init(ptr noundef %i.a, ptr noundef nonnull %1, i64 noundef %i.b) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @pm_options_encoding_locked_set(ptr nofree noundef writeonly captures(none) initializes((94, 95)) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr i8, ptr %0, i64 94
  store i8 %i.a, ptr %i.b, align 2, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @pm_options_line_set(ptr nofree noundef writeonly captures(none) initializes((40, 44)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  store i32 %1, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @pm_options_frozen_string_literal_set(ptr nofree noundef writeonly captures(none) initializes((93, 94)) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = select i1 %1, i8 1, i8 -1
  %i.b = getelementptr i8, ptr %0, i64 93
  store i8 %i.a, ptr %i.b, align 1, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @pm_options_command_line_set(ptr nofree noundef writeonly captures(none) initializes((92, 93)) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 92
  store i8 %1, ptr %i.a, align 4, !tbaa !23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden zeroext i1 @pm_options_version_set(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.thread.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 3
  br i1 %i.b, label %sub_0, label %bb.c

sub_0:                                            ; preds = %bb.b
  %i.c = load i8, ptr %1, align 1                 ; 2 uses
  switch i8 %i.c, label %.thread [
    i8 51, label %sub_1
    i8 52, label %sub_141
  ]

sub_1:                                            ; preds = %sub_0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %.not49 = icmp eq i8 %i.e, 46
  br i1 %.not49, label %.tail, label %sub_131

.tail:                                            ; preds = %sub_1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 51
  br i1 %i.h, label %.thread.sink.split, label %sub_131

sub_131:                                          ; preds = %.tail, %sub_1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %.not51 = icmp eq i8 %i.j, 46
  br i1 %.not51, label %.tail29, label %sub_136

.tail29:                                          ; preds = %sub_131
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 52
  br i1 %i.m, label %.thread.sink.split, label %sub_136

sub_136:                                          ; preds = %.tail29, %sub_131
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %.not53 = icmp eq i8 %i.o, 46
  br i1 %.not53, label %.tail34, label %sub_040

.tail34:                                          ; preds = %sub_136
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 53
  br i1 %i.r, label %.thread.sink.split, label %sub_040

sub_040:                                          ; preds = %sub_136, %.tail34
  %.not54 = icmp eq i8 %i.c, 52
  br i1 %.not54, label %sub_141, label %.thread

sub_141:                                          ; preds = %sub_0, %sub_040
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %.not55 = icmp eq i8 %i.t, 46
  br i1 %.not55, label %.tail39, label %sub_146

.tail39:                                          ; preds = %sub_141
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 48
  br i1 %i.w, label %.thread.sink.split, label %sub_146

sub_146:                                          ; preds = %.tail39, %sub_141
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.y = load i8, ptr %i.x, align 1
  %.not57 = icmp eq i8 %i.y, 46
  br i1 %.not57, label %.tail44, label %.thread

.tail44:                                          ; preds = %sub_146
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp eq i8 %i.aa, 49
  br i1 %i.ab, label %.thread.sink.split, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ac = icmp ugt i64 %2, 3
  br i1 %i.ac, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr i8, ptr %1, i64 4
  %i.ae = add i64 %2, -4                          ; 2 uses
  %i.af = tail call i64 @pm_strspn_decimal_digit(ptr noundef %i.ad, i64 noundef range(i64 0, -4) %i.ae) #9
  %i.ag = icmp eq i64 %i.af, %i.ae
  br i1 %i.ag, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.5, i64 noundef 4) #8
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.6, i64 noundef 4) #8
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.7, i64 noundef 4) #8
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.8, i64 noundef 4) #8
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.9, i64 noundef 4) #8
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %i.ar = icmp ugt i64 %2, 5
  br i1 %i.ar, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.as = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.10, i64 noundef 7) #8
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %bb.k, %bb.i, %bb.g, %bb.h, %bb.f, %bb.e, %.tail44, %.tail34, %.tail39, %.tail29, %.tail, %bb.a
  %.sink = phi i32 [ 4, %bb.i ], [ 3, %bb.g ], [ 2, %bb.f ], [ 1, %bb.e ], [ 4, %.tail44 ], [ 3, %.tail34 ], [ 2, %.tail29 ], [ 1, %.tail ], [ 4, %bb.a ], [ 3, %.tail39 ], [ 3, %bb.h ], [ 4, %bb.k ]
  %i.au = getelementptr i8, ptr %0, i64 88
  store i32 %.sink, ptr %i.au, align 8, !tbaa !24
  br label %.thread

.thread:                                          ; preds = %sub_0, %.thread.sink.split, %sub_040, %sub_146, %.tail44, %bb.c, %bb.j, %bb.k
  %.0 = phi i1 [ false, %bb.c ], [ true, %.thread.sink.split ], [ false, %sub_146 ], [ false, %sub_040 ], [ false, %bb.k ], [ false, %.tail44 ], [ false, %bb.j ], [ false, %sub_0 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @pm_options_main_script_set(ptr nofree noundef writeonly captures(none) initializes((95, 96)) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr i8, ptr %0, i64 95
  store i8 %i.a, ptr %i.b, align 1, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @pm_options_partial_script_set(ptr nofree noundef writeonly captures(none) initializes((96, 97)) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr i8, ptr %0, i64 96
  store i8 %i.a, ptr %i.b, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @pm_options_freeze_set(ptr nofree noundef writeonly captures(none) initializes((97, 98)) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr i8, ptr %0, i64 97
  store i8 %i.a, ptr %i.b, align 1, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noundef zeroext i1 @pm_options_scopes_init(ptr nofree noundef writeonly captures(none) initializes((72, 88)) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  store i64 %1, ptr %i.a, align 8, !tbaa !28
  %i.b = tail call noalias ptr @calloc(i64 noundef %1, i64 noundef 24) #10 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 80
  store ptr %i.b, ptr %i.c, align 8, !tbaa !29
  %i.d = icmp ne ptr %i.b, null
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden ptr @pm_options_scope_get(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr [24 x i8], ptr %i.b, i64 %1
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noundef zeroext i1 @pm_options_scope_init(ptr nofree noundef writeonly captures(none) initializes((0, 17)) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !31
  %i.a = tail call noalias ptr @calloc(i64 noundef %1, i64 noundef 24) #10 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr i8, ptr %0, i64 16
  store i8 0, ptr %i.c, align 8, !tbaa !33
  %i.d = icmp ne ptr %i.a, null
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden ptr @pm_options_scope_local_get(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr [24 x i8], ptr %i.b, i64 %1
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @pm_options_scope_forwarding_set(ptr nofree noundef writeonly captures(none) initializes((16, 17)) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  store i8 %1, ptr %i.a, align 8, !tbaa !33
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @pm_options_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  tail call void @pm_string_free(ptr noundef %i.a) #9
  %i.b = getelementptr i8, ptr %0, i64 48
  tail call void @pm_string_free(ptr noundef %i.b) #9
  %i.c = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge18, label %.lr.ph17

.lr.ph17:                                         ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 80
  br label %bb.b

._crit_edge18:                                    ; preds = %._crit_edge, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  tail call void @free(ptr noundef %i.g) #9
  ret void

bb.b:                                             ; preds = %.lr.ph17, %._crit_edge
  %.01315 = phi i64 [ 0, %.lr.ph17 ], [ %i.n, %._crit_edge ] ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.i = getelementptr [24 x i8], ptr %i.h, i64 %.01315 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31
  %.not19 = icmp eq i64 %i.j, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.i, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32
  tail call void @free(ptr noundef %i.m) #9
  %i.n = add nuw i64 %.01315, 1                   ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !28
  %i.p = icmp ult i64 %i.n, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge18, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.014 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.c ] ; 2 uses
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.r = getelementptr [24 x i8], ptr %i.q, i64 %.014
  tail call void @pm_string_free(ptr noundef %i.r) #9
  %i.s = add nuw i64 %.014, 1                     ; 2 uses
  %i.t = load i64, ptr %i.i, align 8, !tbaa !31
  %i.u = icmp ult i64 %i.s, %i.t
  br i1 %i.u, label %bb.c, label %._crit_edge, !llvm.loop !1
}

declare void @pm_string_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define hidden void @pm_options_read(ptr noundef initializes((40, 44)) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  store i32 1, ptr %i.a, align 8, !tbaa !21
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.i = load i32, ptr %1, align 1               ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = zext i32 %.0.i to i64                    ; 2 uses
  tail call void @pm_string_constant_init(ptr noundef %i.d, ptr noundef %i.c, i64 noundef %i.e) #9
  %i.f = getelementptr i8, ptr %i.c, i64 %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.b ]  ; 3 uses
  %.0.i78 = load i32, ptr %.0, align 1
  store i32 %.0.i78, ptr %i.a, align 8, !tbaa !21
  %i.g = getelementptr i8, ptr %.0, i64 4
  %.0.i79 = load i32, ptr %i.g, align 1           ; 2 uses
  %i.h = getelementptr i8, ptr %.0, i64 8         ; 3 uses
  %.not75 = icmp eq i32 %.0.i79, 0
  br i1 %.not75, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 48
  %i.j = zext i32 %.0.i79 to i64                  ; 2 uses
  tail call void @pm_string_constant_init(ptr noundef %i.i, ptr noundef %i.h, i64 noundef %i.j) #9
  %i.k = getelementptr i8, ptr %i.h, i64 %i.j
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi ptr [ %i.k, %bb.e ], [ %i.h, %bb.d ]  ; 9 uses
  %i.l = getelementptr i8, ptr %.1, i64 1
  %i.m = load i8, ptr %.1, align 1, !tbaa !39
  %i.n = getelementptr i8, ptr %0, i64 93
  store i8 %i.m, ptr %i.n, align 1, !tbaa !22
  %i.o = getelementptr i8, ptr %.1, i64 2
  %i.p = load i8, ptr %i.l, align 1, !tbaa !39
  %i.q = getelementptr i8, ptr %0, i64 92
  store i8 %i.p, ptr %i.q, align 4, !tbaa !23
  %i.r = getelementptr i8, ptr %.1, i64 3
  %i.s = load i8, ptr %i.o, align 1, !tbaa !39
  %i.t = sext i8 %i.s to i32
  %i.u = getelementptr i8, ptr %0, i64 88
  store i32 %i.t, ptr %i.u, align 8, !tbaa !24
  %i.v = getelementptr i8, ptr %.1, i64 4
end_hunk_0
