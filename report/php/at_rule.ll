Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/at_rule?download=true
inline.NumInlined: 30
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lexbor_shs_entry_t = type { ptr, ptr, i64, i64 }
%struct.lxb_css_entry_at_rule_data_t = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lxb_css_syntax_cb_at_rule = type { %struct.lxb_css_syntax_cb_base, ptr, ptr, ptr }
%struct.lxb_css_syntax_cb_base = type { ptr, ptr }

@lxb_css_at_rule_shs = internal constant [6 x %struct.lexbor_shs_entry_t] [%struct.lexbor_shs_entry_t { ptr null, ptr null, i64 5, i64 0 }, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t zeroinitializer, %struct.lexbor_shs_entry_t { ptr @.str, ptr getelementptr (i8, ptr @lxb_css_at_rule_data, i64 192), i64 5, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.1, ptr getelementptr (i8, ptr @lxb_css_at_rule_data, i64 128), i64 9, i64 0 }, %struct.lexbor_shs_entry_t { ptr @.str.2, ptr getelementptr (i8, ptr @lxb_css_at_rule_data, i64 256), i64 9, i64 0 }], align 16
@lxb_css_at_rule_data = internal constant [5 x %struct.lxb_css_entry_at_rule_data_t] [%struct.lxb_css_entry_at_rule_data_t { ptr @.str.3, i64 6, i64 0, ptr @lxb_css_at_rule__undef_cb, ptr @lxb_css_at_rule__undef_create, ptr @lxb_css_at_rule__undef_destroy, ptr @lxb_css_at_rule__undef_serialize, ptr null }, %struct.lxb_css_entry_at_rule_data_t { ptr @.str.4, i64 7, i64 1, ptr @lxb_css_at_rule__custom_cb, ptr @lxb_css_at_rule__custom_create, ptr @lxb_css_at_rule__custom_destroy, ptr @lxb_css_at_rule__custom_serialize, ptr inttoptr (i64 1 to ptr) }, %struct.lxb_css_entry_at_rule_data_t { ptr @.str.1, i64 9, i64 2, ptr @lxb_css_at_rule_font_face_cb, ptr @lxb_css_at_rule_font_face_create, ptr @lxb_css_at_rule_font_face_destroy, ptr @lxb_css_at_rule_font_face_serialize, ptr null }, %struct.lxb_css_entry_at_rule_data_t { ptr @.str, i64 5, i64 3, ptr @lxb_css_at_rule_media_cb, ptr @lxb_css_at_rule_media_create, ptr @lxb_css_at_rule_media_destroy, ptr @lxb_css_at_rule_media_serialize, ptr null }, %struct.lxb_css_entry_at_rule_data_t { ptr @.str.2, i64 9, i64 4, ptr @lxb_css_at_rule_namespace_cb, ptr @lxb_css_at_rule_namespace_create, ptr @lxb_css_at_rule_namespace_destroy, ptr @lxb_css_at_rule_namespace_serialize, ptr null }], align 16
@lxb_css_at_rule__undef_serialize.wc_str = internal constant [2 x i8] c" \00", align 1
@lxb_css_at_rule__undef_serialize.lb_str = internal constant [2 x i8] c"{\00", align 1
@lxb_css_at_rule__undef_serialize.rb_str = internal constant [2 x i8] c"}\00", align 1
@lxb_css_at_rule__undef_serialize.sm_str = internal constant [2 x i8] c";\00", align 1
@lxb_css_at_rule__custom_serialize.ws_str = internal constant [2 x i8] c" \00", align 1
@lxb_css_at_rule__custom_serialize.lb_str = internal constant [2 x i8] c"{\00", align 1
@lxb_css_at_rule__custom_serialize.rb_str = internal constant [2 x i8] c"}\00", align 1
@lxb_css_at_rule_font_face_serialize.lb_str = internal constant [3 x i8] c" {\00", align 1
@lxb_css_at_rule_font_face_serialize.rb_str = internal constant [2 x i8] c"}\00", align 1
@.str = private unnamed_addr constant [6 x i8] c"media\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"font-face\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"#undef\00", align 1
@lxb_css_at_rule__undef_cb = internal constant %struct.lxb_css_syntax_cb_at_rule { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_at_rule__undef_prelude_failed, ptr @lxb_css_at_rule__undef_end }, ptr @lxb_css_at_rule__undef_prelude, ptr @lxb_css_at_rule__undef_prelude_end, ptr @lxb_css_at_rule__undef_block }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"#\D1\81ustom\00", align 1
@lxb_css_at_rule__custom_cb = internal constant %struct.lxb_css_syntax_cb_at_rule { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_at_rule__custom_prelude_failed, ptr @lxb_css_at_rule__custom_end }, ptr @lxb_css_at_rule__custom_prelude, ptr @lxb_css_at_rule__custom_prelude_end, ptr @lxb_css_at_rule__custom_block }, align 8
@lxb_css_at_rule_font_face_cb = internal constant %struct.lxb_css_syntax_cb_at_rule { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_at_rule_font_face_prelude_failed, ptr @lxb_css_at_rule_font_face_end }, ptr @lxb_css_at_rule_font_face_prelude, ptr @lxb_css_at_rule_font_face_prelude_end, ptr @lxb_css_at_rule_font_face_block }, align 8
@lxb_css_at_rule_media_cb = internal constant %struct.lxb_css_syntax_cb_at_rule { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_at_rule_media_prelude_failed, ptr @lxb_css_at_rule_media_end }, ptr @lxb_css_at_rule_media_prelude, ptr @lxb_css_at_rule_media_prelude_end, ptr @lxb_css_at_rule_media_block }, align 8
@lxb_css_at_rule_namespace_cb = internal constant %struct.lxb_css_syntax_cb_at_rule { %struct.lxb_css_syntax_cb_base { ptr @lxb_css_at_rule_namespace_prelude_failed, ptr @lxb_css_at_rule_namespace_end }, ptr @lxb_css_at_rule_namespace_prelude, ptr @lxb_css_at_rule_namespace_prelude_end, ptr @lxb_css_at_rule_namespace_block }, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @lxb_css_at_rule_by_name(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lexbor_shs_entry_get_lower_static(ptr noundef nonnull @lxb_css_at_rule_shs, ptr noundef %0, i64 noundef %1) #4 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @lexbor_shs_entry_get_lower_static(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @lxb_css_at_rule_by_id(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw [64 x i8], ptr @lxb_css_at_rule_data, i64 %0
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lxb_css_at_rule_create(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = tail call ptr @lexbor_mraw_calloc(ptr noundef %i.d, i64 noundef 88) #4 ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %lxb_css_rule_at_create.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 3, ptr %i.e, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.b, ptr %i.g, align 8, !tbaa !55
  %i.h = tail call ptr @lexbor_shs_entry_get_lower_static(ptr noundef nonnull @lxb_css_at_rule_shs, ptr noundef %1, i64 noundef %2) #4 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %lxb_css_at_rule_by_name.exit.thread, label %lxb_css_at_rule_by_name.exit

lxb_css_at_rule_by_name.exit:                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %lxb_css_at_rule_by_name.exit.thread, label %bb.e

lxb_css_at_rule_by_name.exit.thread:              ; preds = %bb.b, %lxb_css_at_rule_by_name.exit
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.p = tail call ptr @lexbor_mraw_calloc(ptr noundef %i.o, i64 noundef 40) #4 ; 7 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.thread, label %bb.c

bb.c:                                             ; preds = %lxb_css_at_rule_by_name.exit.thread
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = tail call ptr @lexbor_str_init(ptr noundef nonnull %i.p, ptr noundef %i.t, i64 noundef %2) #4 ; 0 uses
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !35   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %lxb_css_at_rule__custom_destroy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 1 %1, i64 %2, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %2, ptr %i.x, align 8, !tbaa !36
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %2
  store i8 0, ptr %i.z, align 1, !tbaa !37
  br label %bb.f

bb.e:                                             ; preds = %lxb_css_at_rule_by_name.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !56
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.ad = tail call ptr %i.ab(ptr noundef %i.ac) #4 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.039 = phi ptr [ %i.p, %bb.d ], [ %i.ad, %bb.e ]
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @lxb_css_at_rule_data, i64 64), %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.039, ptr %i.ai, align 8, !tbaa !37
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %lxb_css_rule_at_create.exit.thread, label %lxb_css_rule_at_create.exit.thread.sink.split

lxb_css_at_rule__custom_destroy.exit:             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !32
  %i.am = tail call ptr @lexbor_mraw_free(ptr noundef %i.al, ptr noundef nonnull %i.p) #4 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.e, %lxb_css_at_rule_by_name.exit.thread, %lxb_css_at_rule__custom_destroy.exit
  %i.an = tail call ptr @lxb_css_rule_at_destroy(ptr noundef nonnull %i.e, i1 noundef zeroext true) #4 ; 0 uses
  %.not52 = icmp eq ptr %3, null
  br i1 %.not52, label %lxb_css_rule_at_create.exit.thread, label %lxb_css_rule_at_create.exit.thread.sink.split

lxb_css_rule_at_create.exit.thread.sink.split:    ; preds = %.thread, %bb.f
  %.sink = phi ptr [ %.0, %bb.f ], [ null, %.thread ]
  %.041.ph = phi ptr [ %i.e, %bb.f ], [ null, %.thread ]
  store ptr %.sink, ptr %3, align 8, !tbaa !58
  br label %lxb_css_rule_at_create.exit.thread

lxb_css_rule_at_create.exit.thread:               ; preds = %lxb_css_rule_at_create.exit.thread.sink.split, %bb.a, %.thread, %bb.f
  %.041 = phi ptr [ null, %.thread ], [ %i.e, %bb.f ], [ null, %bb.a ], [ %.041.ph, %lxb_css_rule_at_create.exit.thread.sink.split ]
  ret ptr %.041
}

declare ptr @lexbor_str_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare ptr @lxb_css_rule_at_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @lxb_css_at_rule_destroy(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp ne ptr %1, null
  %brmerge.not.i = and i1 %5, %3
  br i1 %brmerge.not.i, label %bb.a, label %.tail

bb.a:                                             ; preds = %4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %6 = tail call ptr @lexbor_mraw_free(ptr noundef %i.b, ptr noundef nonnull %1) #4
  br label %.tail

.tail:                                            ; preds = %4, %bb.a
  %7 = phi ptr [ %6, %bb.a ], [ %1, %4 ]
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_css_at_rule_convert_to_undef(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = tail call ptr @lexbor_mraw_calloc(ptr noundef %i.d, i64 noundef 32) #4 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !40
  store i64 %i.h, ptr %i.e, align 8, !tbaa !42
  store i64 0, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.e, ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = load i64, ptr %i.m, align 8, !tbaa !60
  %i.o = tail call i32 @lxb_css_make_data(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i64 noundef %i.l, i64 noundef %i.n) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.o, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lxb_css_at_rule__undef_create(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = tail call ptr @lexbor_mraw_calloc(ptr noundef %i.b, i64 noundef 32) #4
  ret ptr %i.c
}

declare i32 @lxb_css_make_data(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_css_at_rule_serialize(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  switch i64 %1, label %default.switch.case.unreachable [
    i64 0, label %call.0
    i64 1, label %call.1
    i64 2, label %call.2
    i64 3, label %.tail
    i64 4, label %.tail
  ], !prof !61

default.switch.case.unreachable:                  ; preds = %4
  unreachable

call.0:                                           ; preds = %4
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %.not.i = icmp eq ptr %6, null
  br i1 %.not.i, label %14, label %7

7:                                                ; preds = %call.0
  %8 = tail call i32 %2(ptr noundef nonnull @lxb_css_at_rule__undef_serialize.wc_str, i64 noundef 1, ptr noundef %3) #4, !inline_history !62 ; 2 uses
  %.not38.i = icmp eq i32 %8, 0
  br i1 %.not38.i, label %9, label %.tail

9:                                                ; preds = %7
  %10 = load ptr, ptr %5, align 8, !tbaa !43
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load i64, ptr %11, align 8, !tbaa !44
  %13 = tail call i32 %2(ptr noundef %10, i64 noundef %12, ptr noundef %3) #4, !inline_history !62 ; 2 uses
  %.not39.i = icmp eq i32 %13, 0
  br i1 %.not39.i, label %14, label %.tail

14:                                               ; preds = %9, %call.0
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %.not40.i = icmp eq ptr %16, null
  br i1 %.not40.i, label %24, label %17

17:                                               ; preds = %14
  %18 = tail call i32 %2(ptr noundef nonnull @lxb_css_at_rule__undef_serialize.lb_str, i64 noundef 1, ptr noundef %3) #4, !inline_history !62 ; 2 uses
  %.not42.i = icmp eq i32 %18, 0
  br i1 %.not42.i, label %19, label %.tail

19:                                               ; preds = %17
  %20 = load ptr, ptr %15, align 8, !tbaa !45
  %21 = tail call i32 @lxb_css_rule_list_serialize(ptr noundef %20, ptr noundef %2, ptr noundef %3) #4, !inline_history !62 ; 2 uses
  %.not43.i = icmp eq i32 %21, 0
  br i1 %.not43.i, label %22, label %.tail

22:                                               ; preds = %19
  %23 = tail call i32 %2(ptr noundef nonnull @lxb_css_at_rule__undef_serialize.rb_str, i64 noundef 1, ptr noundef %3) #4, !inline_history !62 ; 2 uses
  %.not44.i = icmp eq i32 %23, 0
  br i1 %.not44.i, label %50, label %.tail

24:                                               ; preds = %14
  %25 = tail call i32 %2(ptr noundef nonnull @lxb_css_at_rule__undef_serialize.sm_str, i64 noundef 1, ptr noundef %3) #4, !inline_history !62 ; 2 uses
  %.not41.i = icmp eq i32 %25, 0
  br i1 %.not41.i, label %50, label %.tail

call.1:                                           ; preds = %4
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %.not.i7 = icmp eq ptr %27, null
  br i1 %.not.i7, label %32, label %28

28:                                               ; preds = %call.1
  %29 = tail call i32 %2(ptr noundef nonnull @lxb_css_at_rule__custom_serialize.ws_str, i64 noundef 1, ptr noundef %3) #4, !inline_history !63 ; 2 uses
  %.not31.i = icmp eq i32 %29, 0
  br i1 %.not31.i, label %bb.a, label %.tail

bb.a:                                             ; preds = %28
  %30 = load ptr, ptr %26, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %31 = load i64, ptr %i.a, align 8, !tbaa !47
  %i.b = tail call i32 %2(ptr noundef %30, i64 noundef %31, ptr noundef %3) #4, !inline_history !63 ; 2 uses
  %.not32.i = icmp eq i32 %i.b, 0
  br i1 %.not32.i, label %32, label %.tail

32:                                               ; preds = %bb.a, %call.1
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %.not33.i = icmp eq ptr %34, null
  br i1 %.not33.i, label %50, label %35

35:                                               ; preds = %32
  %36 = tail call i32 %2(ptr noundef nonnull @lxb_css_at_rule__custom_serialize.lb_str, i64 noundef 1, ptr noundef %3) #4, !inline_history !63 ; 2 uses
  %.not34.i = icmp eq i32 %36, 0
  br i1 %.not34.i, label %37, label %.tail

37:                                               ; preds = %35
  %38 = load ptr, ptr %33, align 8, !tbaa !48
  %39 = tail call i32 @lxb_css_rule_list_serialize(ptr noundef %38, ptr noundef %2, ptr noundef %3) #4 ; 2 uses
  %.not35.i = icmp eq i32 %39, 0
  br i1 %.not35.i, label %40, label %.tail

40:                                               ; preds = %37
  %41 = tail call i32 %2(ptr noundef nonnull @lxb_css_at_rule__custom_serialize.rb_str, i64 noundef 1, ptr noundef %3) #4, !inline_history !63 ; 2 uses
  %.not36.i = icmp eq i32 %41, 0
  br i1 %.not36.i, label %50, label %.tail

call.2:                                           ; preds = %4
  %42 = load ptr, ptr %0, align 8, !tbaa !50
  %.not.i9 = icmp eq ptr %42, null
  br i1 %.not.i9, label %50, label %43

43:                                               ; preds = %call.2
  %44 = tail call i32 %2(ptr noundef nonnull @lxb_css_at_rule_font_face_serialize.lb_str, i64 noundef 2, ptr noundef %3) #4, !inline_history !64 ; 2 uses
  %.not18.i = icmp eq i32 %44, 0
  br i1 %.not18.i, label %45, label %.tail

45:                                               ; preds = %43
  %46 = load ptr, ptr %0, align 8, !tbaa !50
  %47 = tail call i32 @lxb_css_rule_list_serialize(ptr noundef %46, ptr noundef %2, ptr noundef %3) #4 ; 2 uses
  %.not19.i = icmp eq i32 %47, 0
  br i1 %.not19.i, label %48, label %.tail

48:                                               ; preds = %45
  %49 = tail call i32 %2(ptr noundef nonnull @lxb_css_at_rule_font_face_serialize.rb_str, i64 noundef 1, ptr noundef %3) #4, !inline_history !64 ; 2 uses
  %.not20.i = icmp eq i32 %49, 0
  br i1 %.not20.i, label %50, label %.tail

50:                                               ; preds = %22, %24, %32, %40, %48, %call.2
  br label %.tail

.tail:                                            ; preds = %4, %4, %50, %48, %45, %43, %40, %37, %35, %bb.a, %28, %24, %22, %19, %17, %9, %7
  %51 = phi i32 [ 0, %4 ], [ 0, %4 ], [ %41, %40 ], [ %49, %48 ], [ %23, %22 ], [ %25, %24 ], [ %8, %7 ], [ %13, %9 ], [ %18, %17 ], [ %21, %19 ], [ %47, %45 ], [ %29, %28 ], [ %i.b, %bb.a ], [ %36, %35 ], [ %39, %37 ], [ 0, %50 ], [ %44, %43 ]
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_css_at_rule_serialize_str(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw [64 x i8], ptr @lxb_css_at_rule_data, i64 %1
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !65
  %i.d = tail call i32 @lxb_css_serialize_str_handler(ptr noundef %0, ptr noundef %3, ptr noundef %2, ptr noundef %i.c) #4
  ret i32 %i.d
}

declare i32 @lxb_css_serialize_str_handler(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_css_at_rule_serialize_name(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw [64 x i8], ptr @lxb_css_at_rule_data, i64 %i.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [64 x i8], ptr @lxb_css_at_rule_data, i64 %1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink18 = phi ptr [ %i.c, %bb.c ], [ %i.b, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sink = load ptr, ptr %.sink18, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %.sink18, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !67
  %i.f = tail call i32 %2(ptr noundef %.sink, i64 noundef %i.e, ptr noundef %3) #4
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_css_at_rule__undef_serialize_name(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw [64 x i8], ptr @lxb_css_at_rule_data, i64 %i.a ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !52
  %i.f = tail call i32 %1(ptr noundef %i.c, i64 noundef %i.e, ptr noundef %2) #4
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_css_at_rule__custom_serialize_name(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !36
  %i.d = tail call i32 %1(ptr noundef %i.a, i64 noundef %i.c, ptr noundef %2) #4
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_css_at_rule_serialize_name_str(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  switch i64 %1, label %bb.d [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @lxb_css_serialize_str_handler(ptr noundef %0, ptr noundef %3, ptr noundef %2, ptr noundef nonnull @lxb_css_at_rule__undef_serialize_name) #4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @lxb_css_serialize_str_handler(ptr noundef %0, ptr noundef %3, ptr noundef %2, ptr noundef nonnull @lxb_css_at_rule__custom_serialize_name) #4
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [64 x i8], ptr @lxb_css_at_rule_data, i64 %1 ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !68
  %i.e = icmp eq ptr %i.d, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !52   ; 2 uses
  br i1 %i.e, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @lexbor_str_init(ptr noundef nonnull %3, ptr noundef %2, i64 noundef %i.g) #4 ; 0 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !68
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.e
  %i.k = load ptr, ptr %i.c, align 16, !tbaa !51
  %i.l = tail call ptr @lexbor_str_append(ptr noundef nonnull %3, ptr noundef %2, ptr noundef %i.k, i64 noundef %i.g) #4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge, %bb.c, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ 0, %._crit_edge ], [ 2, %bb.e ]
  ret i32 %.0
}

declare ptr @lexbor_str_append(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @lexbor_mraw_calloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @lxb_css_at_rule__undef_destroy(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %brmerge.not = and i1 %i.a, %2
  br i1 %brmerge.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = tail call ptr @lexbor_mraw_free(ptr noundef %i.c, ptr noundef nonnull %1) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %1, %bb.a ], [ %i.d, %bb.b ]
  ret ptr %.0
}

declare ptr @lexbor_mraw_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_css_at_rule__undef_serialize(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull @lxb_css_at_rule__undef_serialize.wc_str, i64 noundef 1, ptr noundef %2) #4 ; 2 uses
  %.not38 = icmp eq i32 %i.c, 0
  br i1 %.not38, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44
  %i.g = tail call i32 %1(ptr noundef %i.d, i64 noundef %i.f, ptr noundef %2) #4 ; 2 uses
  %.not39 = icmp eq i32 %i.g, 0
  br i1 %.not39, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45
  %.not40 = icmp eq ptr %i.i, null
  br i1 %.not40, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 %1(ptr noundef nonnull @lxb_css_at_rule__undef_serialize.lb_str, i64 noundef 1, ptr noundef %2) #4 ; 2 uses
  %.not42 = icmp eq i32 %i.j, 0
  br i1 %.not42, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.l = tail call i32 @lxb_css_rule_list_serialize(ptr noundef %i.k, ptr noundef %1, ptr noundef %2) #4 ; 2 uses
  %.not43 = icmp eq i32 %i.l, 0
  br i1 %.not43, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 %1(ptr noundef nonnull @lxb_css_at_rule__undef_serialize.rb_str, i64 noundef 1, ptr noundef %2) #4 ; 2 uses
  %.not44 = icmp eq i32 %i.m, 0
  br i1 %.not44, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.n = tail call i32 %1(ptr noundef nonnull @lxb_css_at_rule__undef_serialize.sm_str, i64 noundef 1, ptr noundef %2) #4 ; 2 uses
  %.not41 = icmp eq i32 %i.n, 0
  br i1 %.not41, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %bb.i
  %.0 = phi i32 [ %i.m, %bb.g ], [ %i.n, %bb.h ], [ %i.c, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ 0, %bb.i ]
  ret i32 %.0
}

declare i32 @lxb_css_rule_list_serialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @lxb_css_at_rule__custom_create(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = tail call ptr @lexbor_mraw_calloc(ptr noundef %i.b, i64 noundef 40) #4
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lxb_css_at_rule__custom_destroy(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %brmerge.not = and i1 %i.a, %2
  br i1 %brmerge.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = tail call ptr @lexbor_mraw_free(ptr noundef %i.c, ptr noundef nonnull %1) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %1, %bb.a ], [ %i.d, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_css_at_rule__custom_serialize(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull @lxb_css_at_rule__custom_serialize.ws_str, i64 noundef 1, ptr noundef %2) #4 ; 2 uses
  %.not31 = icmp eq i32 %i.c, 0
  br i1 %.not31, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !47
  %i.g = tail call i32 %1(ptr noundef %i.d, i64 noundef %i.f, ptr noundef %2) #4 ; 2 uses
  %.not32 = icmp eq i32 %i.g, 0
  br i1 %.not32, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %.not33 = icmp eq ptr %i.i, null
  br i1 %.not33, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 %1(ptr noundef nonnull @lxb_css_at_rule__custom_serialize.lb_str, i64 noundef 1, ptr noundef %2) #4 ; 2 uses
  %.not34 = icmp eq i32 %i.j, 0
  br i1 %.not34, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.l = tail call i32 @lxb_css_rule_list_serialize(ptr noundef %i.k, ptr noundef %1, ptr noundef %2) #4 ; 2 uses
  %.not35 = icmp eq i32 %i.l, 0
  br i1 %.not35, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 %1(ptr noundef nonnull @lxb_css_at_rule__custom_serialize.rb_str, i64 noundef 1, ptr noundef %2) #4 ; 2 uses
  %.not36 = icmp eq i32 %i.m, 0
  br i1 %.not36, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.d
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ %i.c, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lxb_css_at_rule_media_create(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = tail call ptr @lexbor_mraw_calloc(ptr noundef %i.b, i64 noundef 8) #4
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lxb_css_at_rule_media_destroy(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %brmerge.not.i = and i1 %i.a, %2
  br i1 %brmerge.not.i, label %bb.b, label %lxb_css_at_rule__undef_destroy.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = tail call ptr @lexbor_mraw_free(ptr noundef %i.c, ptr noundef nonnull %1) #4
  br label %lxb_css_at_rule__undef_destroy.exit

lxb_css_at_rule__undef_destroy.exit:              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %1, %bb.a ], [ %i.d, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @lxb_css_at_rule_media_serialize(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #2 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lxb_css_at_rule_namespace_create(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = tail call ptr @lexbor_mraw_calloc(ptr noundef %i.b, i64 noundef 8) #4
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lxb_css_at_rule_namespace_destroy(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %brmerge.not.i = and i1 %i.a, %2
  br i1 %brmerge.not.i, label %bb.b, label %lxb_css_at_rule__undef_destroy.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = tail call ptr @lexbor_mraw_free(ptr noundef %i.c, ptr noundef nonnull %1) #4
  br label %lxb_css_at_rule__undef_destroy.exit

lxb_css_at_rule__undef_destroy.exit:              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %1, %bb.a ], [ %i.d, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @lxb_css_at_rule_namespace_serialize(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #2 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lxb_css_at_rule_font_face_create(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = tail call ptr @lexbor_mraw_calloc(ptr noundef %i.b, i64 noundef 8) #4
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lxb_css_at_rule_font_face_destroy(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %brmerge.not.i = and i1 %i.a, %2
  br i1 %brmerge.not.i, label %bb.b, label %lxb_css_at_rule__undef_destroy.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = tail call ptr @lexbor_mraw_free(ptr noundef %i.c, ptr noundef nonnull %1) #4
  br label %lxb_css_at_rule__undef_destroy.exit

lxb_css_at_rule__undef_destroy.exit:              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %1, %bb.a ], [ %i.d, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_css_at_rule_font_face_serialize(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(ptr noundef nonnull @lxb_css_at_rule_font_face_serialize.lb_str, i64 noundef 2, ptr noundef %2) #4 ; 2 uses
  %.not18 = icmp eq i32 %i.b, 0
  br i1 %.not18, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !50
  %i.d = tail call i32 @lxb_css_rule_list_serialize(ptr noundef %i.c, ptr noundef %1, ptr noundef %2) #4 ; 2 uses
  %.not19 = icmp eq i32 %i.d, 0
  br i1 %.not19, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 %1(ptr noundef nonnull @lxb_css_at_rule_font_face_serialize.rb_str, i64 noundef 1, ptr noundef %2) #4 ; 2 uses
  %.not20 = icmp eq i32 %i.e, 0
  br i1 %.not20, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ %i.b, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ]
  ret i32 %.0
}

declare zeroext i1 @lxb_css_at_rule__undef_prelude_failed(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @lxb_css_at_rule__undef_end(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare zeroext i1 @lxb_css_at_rule__undef_prelude(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @lxb_css_at_rule__undef_prelude_end(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare ptr @lxb_css_at_rule__undef_block(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i1 @lxb_css_at_rule__custom_prelude_failed(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @lxb_css_at_rule__custom_end(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare zeroext i1 @lxb_css_at_rule__custom_prelude(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @lxb_css_at_rule__custom_prelude_end(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare ptr @lxb_css_at_rule__custom_block(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i1 @lxb_css_at_rule_font_face_prelude_failed(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @lxb_css_at_rule_font_face_end(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare zeroext i1 @lxb_css_at_rule_font_face_prelude(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @lxb_css_at_rule_font_face_prelude_end(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare ptr @lxb_css_at_rule_font_face_block(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i1 @lxb_css_at_rule_media_prelude_failed(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @lxb_css_at_rule_media_end(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare zeroext i1 @lxb_css_at_rule_media_prelude(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @lxb_css_at_rule_media_prelude_end(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare ptr @lxb_css_at_rule_media_block(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i1 @lxb_css_at_rule_namespace_prelude_failed(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @lxb_css_at_rule_namespace_end(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare zeroext i1 @lxb_css_at_rule_namespace_prelude(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @lxb_css_at_rule_namespace_prelude_end(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare ptr @lxb_css_at_rule_namespace_block(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!"", !13, i64 0, !12, i64 8, !14, i64 16, !14, i64 24}
!16 = !{!15, !12, i64 8}
!17 = !{!"p1 _ZTS24lxb_css_syntax_tokenizer", !12, i64 0}
!18 = !{!"p1 _ZTS17lxb_css_selectors", !12, i64 0}
!19 = !{!"p1 _ZTS14lxb_css_memory", !12, i64 0}
!20 = !{!"p1 _ZTS19lxb_css_syntax_rule", !12, i64 0}
!21 = !{!"p1 _ZTS20lxb_css_parser_state", !12, i64 0}
!22 = !{!"_Bool", !8, i64 0}
!23 = !{!"p1 _ZTS20lxb_css_syntax_token", !12, i64 0}
!24 = !{!"lxb_css_syntax_token", !8, i64 0, !9, i64 80, !14, i64 88, !22, i64 96, !23, i64 104}
!25 = !{!"", !13, i64 0, !14, i64 8}
!26 = !{!"lxb_css_syntax_declaration_offset", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!27 = !{!"lxb_css_parser", !17, i64 0, !18, i64 8, !19, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !24, i64 96, !25, i64 208, !14, i64 224, !12, i64 232, !9, i64 240, !26, i64 248, !22, i64 288, !22, i64 289, !22, i64 290, !9, i64 292}
!28 = !{!27, !19, i64 16}
!29 = !{!"lxb_css_memory", !12, i64 0, !12, i64 8, !12, i64 16, !14, i64 24}
!30 = !{!"p1 _ZTS12lxb_css_rule", !12, i64 0}
!31 = !{!"lxb_css_rule", !9, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !19, i64 32, !14, i64 40}
!32 = !{!29, !12, i64 8}
!33 = !{!"p1 _ZTS17lxb_css_rule_list", !12, i64 0}
!34 = !{!"", !25, i64 0, !25, i64 16, !33, i64 32}
!35 = !{!34, !13, i64 0}
!36 = !{!34, !14, i64 8}
!37 = !{!8, !8, i64 0}
!38 = !{!"", !13, i64 0, !14, i64 8, !14, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56}
!39 = !{!"lxb_css_rule_at", !31, i64 0, !14, i64 48, !8, i64 56, !14, i64 64, !14, i64 72, !14, i64 80}
!40 = !{!39, !14, i64 48}
!41 = !{!"", !14, i64 0, !25, i64 8, !33, i64 24}
!42 = !{!41, !14, i64 0}
!43 = !{!41, !13, i64 8}
!44 = !{!41, !14, i64 16}
!45 = !{!41, !33, i64 24}
!46 = !{!34, !13, i64 16}
!47 = !{!34, !14, i64 24}
!48 = !{!34, !33, i64 32}
!49 = !{!"", !33, i64 0}
!50 = !{!49, !33, i64 0}
!51 = !{!38, !13, i64 0}
!52 = !{!38, !14, i64 8}
!53 = !{!29, !12, i64 16}
!54 = !{!31, !9, i64 0}
!55 = !{!31, !19, i64 32}
!56 = !{!38, !12, i64 32}
!57 = !{!38, !14, i64 16}
!58 = !{!12, !12, i64 0}
!59 = !{!39, !14, i64 72}
!60 = !{!39, !14, i64 80}
!61 = !{!"unknown", !"jump-table-to-switch"}
!62 = !{ptr @lxb_css_at_rule__undef_serialize}
!63 = !{ptr @lxb_css_at_rule__custom_serialize}
!64 = !{ptr @lxb_css_at_rule_font_face_serialize}
!65 = !{!38, !12, i64 48}
!66 = !{!13, !13, i64 0}
!67 = !{!14, !14, i64 0}
!68 = !{!25, !13, i64 0}
end_hunk_0
