inline.NumInlined: 218
inline.NumDeleted: 78
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rb_vm_tag = type { i64, i64, [5 x ptr], ptr, i32, i32 }
%struct.RString = type { %struct.RBasic, i64, %union.anon.13 }
%struct.RBasic = type { i64, i64 }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { ptr, %union.anon.15 }
%union.anon.15 = type { i64 }
%struct.loaded_feature_searching = type { ptr, i64, i32, i64, ptr }
%struct.features_index_add_single_args = type { ptr, i64, i8 }
%struct.rb_trace_arg_struct = type { i32, ptr, ptr, i64, i64, i64, i64, i64, i32, i32, i64 }
%struct.pm_parse_result_t = type { %struct.pm_parser, %struct.pm_options, %struct.pm_string_t, %struct.pm_scope_node, i8 }
%struct.pm_parser = type { i32, i32, i32, i32, i32, i32, i32, %struct.anon.21, ptr, ptr, %struct.pm_token_t, %struct.pm_token_t, ptr, ptr, %struct.pm_list_t, %struct.pm_list_t, %struct.pm_location_t, %struct.pm_list_t, %struct.pm_list_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.pm_string_t, %struct.pm_constant_pool_t, %struct.pm_newline_list_t, i16, %struct.pm_string_t, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.21 = type { ptr, [4 x %struct.pm_lex_mode], i64 }
%struct.pm_lex_mode = type { i32, %union.anon.22, ptr }
%union.anon.22 = type { %struct.anon.26 }
%struct.anon.26 = type { %struct.pm_heredoc_lex_mode_t, ptr, ptr, i8 }
%struct.pm_heredoc_lex_mode_t = type { ptr, i64, i32, i32 }
%struct.pm_token_t = type { i32, ptr, ptr }
%struct.pm_location_t = type { ptr, ptr }
%struct.pm_list_t = type { i64, ptr, ptr }
%struct.pm_constant_pool_t = type { ptr, ptr, i32, i32 }
%struct.pm_newline_list_t = type { ptr, i64, i64, ptr }
%struct.pm_options = type { ptr, ptr, %struct.pm_string_t, i32, %struct.pm_string_t, i64, ptr, i32, i8, i8, i8, i8, i8, i8 }
%struct.pm_string_t = type { ptr, i64, i32 }
%struct.pm_scope_node = type { %struct.pm_node, ptr, ptr, ptr, ptr, %struct.pm_constant_id_list_t, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr }
%struct.pm_node = type { i16, i16, i32, %struct.pm_location_t }
%struct.pm_constant_id_list_t = type { i64, i64, ptr }

@.str = private unnamed_addr constant [23 x i8] c"invalid arguments: %ld\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot infer basepath\00", align 1
@rb_resolve_feature_path.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@rb_resolve_feature_path.rbimpl_id.3 = internal unnamed_addr global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"so\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c".so\00", align 1
@rb_ext_resolve_symbol.rbimpl_id = internal unnamed_addr global i64 0, align 8
@Init_load.var_load_path = internal constant [3 x i8] c"$:\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"$-I\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"$LOAD_PATH\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"$\22\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"$LOADED_FEATURES\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"require_relative\00", align 1
@rb_cModule = external local_unnamed_addr global i64, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"autoload\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"autoload?\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c".rb\00", align 1
@rb_eRuntimeError = external local_unnamed_addr global i64, align 8
@.str.18 = private unnamed_addr constant [50 x i8] c"$LOADED_FEATURES is frozen; cannot append feature\00", align 1
@rb_cBox = external local_unnamed_addr global i64, align 8
@.str.19 = private unnamed_addr constant [17 x i8] c"<top (required)>\00", align 1
@ruby_current_ec = external thread_local local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [22 x i8] c"cannot load such file\00", align 1
@ruby_ext = internal constant [2 x ptr] [ptr @.str.17, ptr null], align 16
@loadable_ext = internal constant [3 x ptr] [ptr @.str.17, ptr @.str.5, ptr null], align 16
@ruby_single_main_ractor = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [62 x i8] c"loading in progress, circular require considered harmful - %s\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"%li\0B\00", align 1
@ruby_current_vm_ptr = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [25 x i8] c"%s is already registered\00", align 1
@rb_feature_p.so_ext = internal unnamed_addr constant [2 x [4 x i8]] [[4 x i8] c".so\00", [4 x i8] c".o\00\00"], align 1
@rb_eTypeError = external local_unnamed_addr global i64, align 8
@.str.25 = private unnamed_addr constant [40 x i8] c"Can not set autoload on singleton class\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_get_expanded_load_path() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_loading_box() #7
  %i.b = tail call fastcc i64 @get_expanded_load_path(ptr noundef %i.a)
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @get_expanded_load_path(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17
  %i.k = tail call i64 @rb_ary_shared_with_p(i64 noundef %i.h, i64 noundef %i.j) #22
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4, !tbaa !7
  call fastcc void @rb_construct_expanded_load_path(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.a, ptr noundef %i.b)
  %i.l = load i32, ptr %i.a, align 4, !tbaa !7
  %.not17 = icmp eq i32 %i.l, 0
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i64 @rb_dir_getwd_ospath() #7
  %i.n = getelementptr i8, ptr %0, i64 40
  store i64 %i.m, ptr %i.n, align 8, !tbaa !18
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.b, align 4, !tbaa !7
  %.not18 = icmp eq i32 %i.o, 0
  %i.p = getelementptr i8, ptr %0, i64 40         ; 2 uses
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 20, ptr %i.p, align 8, !tbaa !18
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 0, ptr %i.p, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18   ; 2 uses
  switch i64 %i.r, label %bb.j [
    i64 20, label %bb.i
    i64 0, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 1, ptr %i.d, align 4, !tbaa !7
  call fastcc void @rb_construct_expanded_load_path(ptr noundef nonnull %0, i32 noundef 3, ptr noundef %i.c, ptr noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store i32 1, ptr %i.e, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  store i32 1, ptr %i.f, align 4, !tbaa !7
  %i.s = tail call i64 @rb_dir_getwd_ospath() #7  ; 2 uses
  %i.t = tail call i64 @rb_str_equal(i64 noundef %i.r, i64 noundef %i.s) #7
  %.not20 = icmp eq i64 %i.t, 0
  br i1 %.not20, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.s, ptr %i.q, align 8, !tbaa !18
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sink = phi i32 [ 1, %bb.k ], [ 2, %bb.j ]
  call fastcc void @rb_construct_expanded_load_path(ptr noundef nonnull %0, i32 noundef %.sink, ptr noundef %i.e, ptr noundef %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.i, %bb.l, %bb.g
  %i.u = getelementptr i8, ptr %0, i64 48
  %i.v = load i64, ptr %i.u, align 8, !tbaa !19
  ret i64 %i.v
}

declare ptr @rb_loading_box() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_provided(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_current_box() #7
  %i.b = tail call fastcc range(i32 0, 2) i32 @feature_provided(ptr noundef %i.a, ptr noundef nonnull %0, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_feature_provided(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_current_box() #7
  %i.b = tail call fastcc i32 @feature_provided(ptr noundef %i.a, ptr noundef nonnull %0, ptr noundef %1)
  ret i32 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @rb_current_box() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @feature_provided(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 46) #22 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.a, align 8, !tbaa !20
  %i.d = load i8, ptr %1, align 1, !tbaa !21
  %i.e = icmp eq i8 %i.d, 46
  br i1 %i.e, label %bb.b, label %RSTRING_PTR.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !21
  switch i8 %i.g, label %RSTRING_PTR.exit [
    i8 47, label %bb.c
    i8 46, label %.tail
  ]

.tail:                                            ; preds = %bb.b
  %i.h = getelementptr i8, ptr %1, i64 2
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 47
  br i1 %i.j, label %bb.c, label %RSTRING_PTR.exit

bb.c:                                             ; preds = %bb.b, %.tail
  %i.k = tail call i64 @rb_str_new_cstr(ptr noundef nonnull %1) #7
  %i.l = tail call i64 @rb_get_path(i64 noundef %i.k) #7
  %i.m = tail call i64 @rb_file_expand_path_fast(i64 noundef %i.l, i64 noundef 4) #7 ; 2 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !20
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !22
  %i.p = and i64 %i.o, 8192
  %.not.i = icmp eq i64 %i.p, 0
  %i.q = getelementptr i8, ptr %i.n, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.b, %bb.d, %bb.c, %.tail, %bb.a
  %.023 = phi ptr [ %1, %bb.a ], [ %1, %.tail ], [ %i.r, %bb.d ], [ %i.q, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.tail30.thread, label %bb.e

bb.e:                                             ; preds = %RSTRING_PTR.exit
  %i.s = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef 47) #22
  %.not25 = icmp eq ptr %i.s, null
  br i1 %.not25, label %bb.f, label %.tail30.thread

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(4) @.str.17) #22
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = tail call i32 @rb_feature_p(ptr noundef %0, ptr noundef %.023, ptr noundef nonnull %i.c, i32 noundef 1, i32 noundef 0, ptr noundef %2)
  %.not27 = icmp ne i32 %i.v, 0
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(4) @.str.5) #22
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %sub_031

sub_031:                                          ; preds = %bb.h
  %i.y = load i8, ptr %i.c, align 1
  %.not35 = icmp eq i8 %i.y, 46
  br i1 %.not35, label %sub_132, label %.tail30.thread

sub_132:                                          ; preds = %sub_031
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.aa = load i8, ptr %i.z, align 1
  %.not36 = icmp eq i8 %i.aa, 111
  br i1 %.not36, label %.tail30, label %.tail30.thread

.tail30:                                          ; preds = %sub_132
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %.tail30.thread

bb.i:                                             ; preds = %.tail30, %bb.h
  %i.ae = tail call i32 @rb_feature_p(ptr noundef %0, ptr noundef %.023, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 0, ptr noundef %2)
  %.not26 = icmp ne i32 %i.ae, 0
  br label %bb.k

.tail30.thread:                                   ; preds = %sub_132, %sub_031, %.tail30, %bb.e, %RSTRING_PTR.exit
  %i.af = tail call i32 @rb_feature_p(ptr noundef %0, ptr noundef %.023, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef %2)
  %.not28 = icmp eq i32 %i.af, 0
  br i1 %.not28, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.tail30.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr %i.a, ptr %i.b, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #7, !srcloc !26
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.ah = load volatile i64, ptr %i.ag, align 8, !tbaa !20 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.tail30.thread, %bb.i, %bb.g, %bb.j
  %.0.shrunk = phi i1 [ %.not26, %bb.i ], [ false, %bb.j ], [ %.not27, %bb.g ], [ true, %.tail30.thread ]
  %.0 = zext i1 %.0.shrunk to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_provide(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_current_box() #7
  %i.b = tail call i64 @rb_fstring_cstr(ptr noundef nonnull %0) #7
  tail call fastcc void @rb_provide_feature(ptr noundef %i.a, i64 noundef %i.b)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_provide_feature(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27   ; 4 uses
  %i.c = icmp ne i64 %i.b, 0
  %i.d = and i64 %i.b, 7
  %i.e = icmp eq i64 %i.d, 0
  %.not3.i = and i1 %i.c, %i.e
  br i1 %.not3.i, label %RB_OBJ_FROZEN.exit, label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit:                               ; preds = %bb.a
  %i.f = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22
  %i.h = and i64 %i.g, 2048
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit.thread:                        ; preds = %bb.a, %RB_OBJ_FROZEN.exit
  %i.i = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !20
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.18) #20
  unreachable

bb.b:                                             ; preds = %RB_OBJ_FROZEN.exit
  %i.j = tail call i64 @rb_fstring(i64 noundef %1) #7 ; 2 uses
  %i.k = tail call fastcc ptr @get_loaded_features_index(ptr noundef nonnull %0) ; 0 uses
  %i.l = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !28
  %i.n = tail call i64 @rb_ary_clear(i64 noundef %i.m) #7 ; 0 uses
  %i.o = tail call i64 @rb_ary_push(i64 noundef %i.b, i64 noundef %i.j) #7 ; 0 uses
  %i.p = load i64, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %i.q = and i64 %i.p, 8192
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.p, 15
  %i.s = and i64 %i.r, 127
  br label %rb_array_len.exit

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.f, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !21
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.c, %bb.d
  %.0.i11 = phi i64 [ %i.s, %bb.c ], [ %i.u, %bb.d ]
  %i.v = shl i64 %.0.i11, 1
  %i.w = add i64 %i.v, -1
  tail call fastcc void @features_index_add(ptr noundef nonnull %0, i64 noundef %i.j, i64 noundef %i.w)
  %.val = load i64, ptr %i.a, align 8, !tbaa !27
  %.val10 = load i64, ptr %i.l, align 8, !tbaa !28
  %i.x = tail call i64 @rb_ary_replace(i64 noundef %.val10, i64 noundef %.val) #7 ; 0 uses
  ret void
}

declare i64 @rb_fstring_new(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare i64 @rb_fstring_cstr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_load(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !20
  %i.c = tail call i64 @rb_get_path(i64 noundef %0) #7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr %i.a, ptr %i.b, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #7, !srcloc !29
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  store volatile i64 %i.c, ptr %i.d, align 8, !tbaa !20
  %i.e = call i64 @rb_find_file(i64 noundef %i.c) #7 ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !20
  call fastcc void @load_failed(i64 noundef %i.f) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not3 = icmp eq i32 %1, 0
  %i.g = select i1 %.not3, i64 0, i64 20
  call fastcc void @rb_load_internal(i64 noundef %i.e, i64 noundef %i.g)
  ret void
}

declare i64 @rb_find_file(i64 noundef) local_unnamed_addr #1

declare i64 @rb_get_path(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @load_failed(i64 noundef %0) unnamed_addr #4 {
bb.a:
  tail call void @rb_load_fail(i64 noundef %0, ptr noundef nonnull @.str.20) #20
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_load_internal(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = tail call ptr @rb_loading_box() #7       ; 3 uses
  %i.e = and i64 %1, -5
  %.not19 = icmp eq i64 %i.e, 0
  br i1 %.not19, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %1, 7
  %.not20 = icmp eq i64 %i.f, 0
  br i1 %.not20, label %rbimpl_RB_TYPE_P_fastpath.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.b
  %i.g = inttoptr i64 %1 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 3
  br i1 %i.j, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.k = tail call i64 @rb_module_new() #7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.d, i64 129
  %i.m = load i8, ptr %i.l, align 1, !tbaa !32, !range !33, !noundef !34
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.d, align 8, !tbaa !35
  br label %bb.f

.thread:                                          ; preds = %bb.c, %bb.d
  tail call fastcc void @load_iseq_eval(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %0)
  br label %bb.h

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.e
  %.sink = phi i64 [ %i.o, %bb.e ], [ %1, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.k, %rbimpl_RB_TYPE_P_fastpath.exit.thread ]
  %i.p = tail call fastcc i32 @load_wrapping(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %0, i64 noundef %.sink) ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @rb_vm_jump_tag_but_local_jump(i32 noundef range(i32 0, 9) %i.p) #20
  unreachable

bb.h:                                             ; preds = %.thread, %bb.f
  %i.q = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 128
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %i.s = icmp eq i64 %i.r, 4
  br i1 %i.s, label %raise_load_if_failed.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @rb_exc_raise(i64 noundef %i.r) #20
  unreachable

raise_load_if_failed.exit:                        ; preds = %bb.h
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_load_protect(i64 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %struct.rb_vm_tag, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  store volatile ptr %i.f, ptr %i.c, align 8, !tbaa !30
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.c, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %.0..0..0..0..0..0..i, ptr %i.d, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %i.g, align 8, !tbaa !47
  store i64 36, ptr %3, align 8, !tbaa !49
  %i.h = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !51
  %4 = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.0.1.val = load ptr, ptr %4, align 8, !tbaa !52, !nonnull !34, !noundef !34 ; 2 uses
  %5 = getelementptr i8, ptr %.0.1.val, i64 32
  %6 = load ptr, ptr %5, align 8, !tbaa !53       ; 2 uses
  %7 = getelementptr i8, ptr %.0.1.val, i64 24
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %i.k = getelementptr i8, ptr %6, i64 88
  %.0.1.val.a = load ptr, ptr %i.k, align 8, !tbaa !73
  %.not.i.i = icmp eq ptr %.0.1.val.a, %8
  br i1 %.not.i.i, label %bb.b, label %rb_ec_vm_lock_rec.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %6, i64 96
  %i.m = load i32, ptr %i.l, align 8, !tbaa !91
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %.0.i, ptr %i.n, align 4, !tbaa !92
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.p, ptr %i.o, align 8
  %i.q = tail call ptr @llvm.stacksave.p0()
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.q, ptr %i.r, align 8
  %i.s = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.o)
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.c, label %bb.e, !prof !93

bb.c:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %3, ptr %i.h, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8, !tbaa !20
  %i.t = call i64 @rb_get_path(i64 noundef %0) #7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr %i.a, ptr %i.b, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #7, !srcloc !29
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  store volatile i64 %i.t, ptr %i.u, align 8, !tbaa !20
  %i.v = call i64 @rb_find_file(i64 noundef %i.t) #7 ; 2 uses
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.d, label %.thread10

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %i.a, align 8, !tbaa !20
  call fastcc void @load_failed(i64 noundef %i.w) #23
  unreachable

.thread10:                                        ; preds = %bb.c
  %.not3.i = icmp eq i32 %1, 0
  %i.x = select i1 %.not3.i, i64 0, i64 20
  call fastcc void @rb_load_internal(i64 noundef %i.v, i64 noundef %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !51
  store ptr %i.y, ptr %i.h, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.e:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.d, align 8, !tbaa !30
  %i.z = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !51
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 %i.z, ptr %2, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %.thread10, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #6

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(ptr) #7

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 1, 9) i32 @rb_ec_tag_state(ptr noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64       ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !47   ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !47
  %i.e = getelementptr i8, ptr %i.b, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !92   ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !52, !nonnull !34, !noundef !34 ; 2 uses
  %1 = getelementptr i8, ptr %.val.i, i64 32
  %2 = load ptr, ptr %1, align 8, !tbaa !53       ; 2 uses
  %3 = getelementptr i8, ptr %.val.i, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = getelementptr i8, ptr %2, i64 88
  %.val.i.a = load ptr, ptr %5, align 8, !tbaa !73
  %.not.i.i.i = icmp eq ptr %.val.i.a, %4
  br i1 %.not.i.i.i, label %bb.b, label %rb_ec_vm_lock_rec.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %2, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !91
  br label %rb_ec_vm_lock_rec.exit.i

rb_ec_vm_lock_rec.exit.i:                         ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i, %i.f
  br i1 %.not.i, label %rb_ec_vm_lock_rec_check.exit, label %bb.c

bb.c:                                             ; preds = %rb_ec_vm_lock_rec.exit.i
  tail call void @rb_ec_vm_lock_rec_release(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %.0.i.i) #7
  br label %rb_ec_vm_lock_rec_check.exit

rb_ec_vm_lock_rec_check.exit:                     ; preds = %rb_ec_vm_lock_rec.exit.i, %bb.c
  %i.j = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp ult i32 %i.d, 9
  tail call void @llvm.assume(i1 %i.k)
  ret i32 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_load_entrypoint(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 15
  %i.e = and i64 %i.d, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %.not = icmp eq i64 %.0.i, 2
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str, i64 noundef %.0.i) #24
  unreachable

bb.e:                                             ; preds = %rb_array_len.exit
  %i.h = tail call i64 @rb_ary_entry(i64 noundef %0, i64 noundef 0) #22
  %i.i = tail call i64 @rb_ary_entry(i64 noundef %0, i64 noundef 1) #22
  %i.j = tail call i64 @rb_get_path_check_to_string(i64 noundef %i.h) #7 ; 2 uses
  %i.k = tail call i64 @rb_str_encode_ospath(i64 noundef %i.j) #7 ; 3 uses
  %i.l = tail call i64 @rb_find_file(i64 noundef %i.k) #7 ; 2 uses
  %.not.i6 = icmp eq i64 %i.l, 0
  br i1 %.not.i6, label %bb.f, label %load_entrypoint_internal.exit

bb.f:                                             ; preds = %bb.e
  %i.m = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = and i64 %i.n, 8192
  %.not.i.i = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.g, %bb.f
  %i.r = phi ptr [ %i.q, %bb.g ], [ %i.p, %bb.f ]
  %i.s = tail call i32 @rb_file_load_ok(ptr noundef %i.r) #7
  %.not10.i = icmp eq i32 %i.s, 0
  br i1 %.not10.i, label %bb.h, label %load_entrypoint_internal.exit

bb.h:                                             ; preds = %RSTRING_PTR.exit.i
  tail call fastcc void @load_failed(i64 noundef %i.j) #23
  unreachable

load_entrypoint_internal.exit:                    ; preds = %bb.e, %RSTRING_PTR.exit.i
  %.0.i7 = phi i64 [ %i.l, %bb.e ], [ %i.k, %RSTRING_PTR.exit.i ]
  tail call fastcc void @rb_load_internal(i64 noundef %.0.i7, i64 noundef %i.i)
  ret i64 20
}

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_f_require(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_require_string(i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_require_string(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.b, align 8, !tbaa !20
  %i.d = tail call i64 @rb_get_path(i64 noundef %0) #7 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store ptr %i.b, ptr %i.c, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #7, !srcloc !94
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  store volatile i64 %i.d, ptr %i.e, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  store volatile ptr %i.g, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !95
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.a
  %i.i = call zeroext i1 @rb_ractor_main_p_() #7
  br i1 %i.i, label %rb_ractor_main_p.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %rb_ractor_main_p.exit.i
  %i.j = call i64 @rb_ractor_require(i64 noundef %i.d, i1 noundef zeroext false) #7
  br label %rb_require_string_internal.exit

rb_ractor_main_p.exit.thread.i:                   ; preds = %rb_ractor_main_p.exit.i, %bb.a
  %i.k = call ptr @rb_ruby_verbose_ptr() #7
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = and i64 %i.l, -5
  %i.n = icmp ne i64 %i.m, 0
  %i.o = call fastcc i32 @require_internal(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %i.d, i32 noundef 1, i1 noundef zeroext %i.n) ; 4 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_ractor_main_p.exit.thread.i
  %i.q = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 24
  %.val.i = load ptr, ptr %i.q, align 8, !tbaa !50 ; 2 uses
  %i.r = getelementptr i8, ptr %.val.i, i64 64
  store i32 %i.o, ptr %i.r, align 8, !tbaa !47
  %i.s = getelementptr i8, ptr %.val.i, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.s)
  unreachable

bb.d:                                             ; preds = %rb_ractor_main_p.exit.thread.i
  %i.t = icmp slt i32 %i.o, 0
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call fastcc void @load_failed(i64 noundef %i.d) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %i.o, 0
  %i.u = select i1 %.not.i, i64 0, i64 20
  br label %rb_require_string_internal.exit

rb_require_string_internal.exit:                  ; preds = %bb.b, %bb.f
  %.0.i = phi i64 [ %i.u, %bb.f ], [ %i.j, %bb.b ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_require_relative_entrypoint(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i64 @rb_current_realfilepath() #7 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_loaderror(ptr noundef nonnull @.str.1) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_file_dirname(i64 noundef %i.b) #7
  %i.e = tail call i64 @rb_file_absolute_path(i64 noundef %0, i64 noundef %i.d) #7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  store volatile ptr %i.g, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !95
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.c
  %i.i = tail call zeroext i1 @rb_ractor_main_p_() #7
  br i1 %i.i, label %rb_ractor_main_p.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %rb_ractor_main_p.exit.i
  %i.j = tail call i64 @rb_ractor_require(i64 noundef %i.e, i1 noundef zeroext false) #7
  br label %rb_require_string_internal.exit

rb_ractor_main_p.exit.thread.i:                   ; preds = %rb_ractor_main_p.exit.i, %bb.c
  %i.k = tail call ptr @rb_ruby_verbose_ptr() #7
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = and i64 %i.l, -5
  %i.n = icmp ne i64 %i.m, 0
  %i.o = tail call fastcc i32 @require_internal(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %i.e, i32 noundef 1, i1 noundef zeroext %i.n) ; 4 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_ractor_main_p.exit.thread.i
  %i.q = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 24
  %.val.i = load ptr, ptr %i.q, align 8, !tbaa !50 ; 2 uses
  %i.r = getelementptr i8, ptr %.val.i, i64 64
  store i32 %i.o, ptr %i.r, align 8, !tbaa !47
  %i.s = getelementptr i8, ptr %.val.i, i64 16
  tail call void @llvm.eh.sjlj.longjmp(ptr %i.s)
  unreachable

bb.f:                                             ; preds = %rb_ractor_main_p.exit.thread.i
  %i.t = icmp slt i32 %i.o, 0
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @load_failed(i64 noundef %i.e) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %.not.i = icmp eq i32 %i.o, 0
  %i.u = select i1 %.not.i, i64 0, i64 20
  br label %rb_require_string_internal.exit

rb_require_string_internal.exit:                  ; preds = %bb.d, %bb.h
  %.0.i = phi i64 [ %i.u, %bb.h ], [ %i.j, %bb.d ]
  ret i64 %.0.i
}

declare i64 @rb_current_realfilepath() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_loaderror(ptr noundef, ...) local_unnamed_addr #11

declare i64 @rb_file_dirname(i64 noundef) local_unnamed_addr #1

declare i64 @rb_file_absolute_path(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_f_require_relative(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_require_relative_entrypoint(i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_resolve_feature_path(i64 %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = tail call ptr @rb_loading_box() #7
  %i.c = tail call i64 @rb_get_path(i64 noundef %1) #7
  %i.d = tail call i64 @rb_str_encode_ospath(i64 noundef %i.c) #7 ; 2 uses
  store i64 %i.d, ptr %i.a, align 8, !tbaa !20
  %i.e = call fastcc i32 @search_required(ptr noundef %i.b, i64 noundef %i.d, ptr noundef %i.a, ptr noundef nonnull @no_feature_p)
  switch i32 %i.e, label %bb.d [
    i32 114, label %bb.b
    i32 115, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %.pr.i = load i64, ptr @rb_resolve_feature_path.rbimpl_id, align 8, !tbaa !20 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.f = call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 2) #7 ; 3 uses
  store i64 %i.f, ptr @rb_resolve_feature_path.rbimpl_id, align 8, !tbaa !20
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !96

bb.c:                                             ; preds = %bb.a
  %.pr.i8 = load i64, ptr @rb_resolve_feature_path.rbimpl_id.3, align 8, !tbaa !20 ; 2 uses
  %.not4.i9 = icmp eq i64 %.pr.i8, 0
  br i1 %.not4.i9, label %.lr.ph.i11, label %rbimpl_intern_const.exit

.lr.ph.i11:                                       ; preds = %bb.c, %.lr.ph.i11
  %i.g = call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 2) #7 ; 3 uses
  store i64 %i.g, ptr @rb_resolve_feature_path.rbimpl_id.3, align 8, !tbaa !20
  %.not.i12 = icmp eq i64 %i.g, 0
  br i1 %.not.i12, label %.lr.ph.i11, label %rbimpl_intern_const.exit, !llvm.loop !96

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i11, %.lr.ph.i, %bb.c, %bb.b
  %.lcssa.i10.sink = phi i64 [ %i.f, %.lr.ph.i ], [ %.pr.i, %bb.b ], [ %.pr.i8, %bb.c ], [ %i.g, %.lr.ph.i11 ]
  %i.h = call i64 @rb_id2sym(i64 noundef %.lcssa.i10.sink) #7
  %i.i = load i64, ptr %i.a, align 8, !tbaa !20
  %i.j = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.h, i64 noundef %i.i) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %rbimpl_intern_const.exit
  %.0 = phi i64 [ %i.j, %rbimpl_intern_const.exit ], [ 4, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.0
}

declare i64 @rb_str_encode_ospath(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @search_required(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull captures(address) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 15 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store volatile i64 0, ptr %2, align 8, !tbaa !20
  %i.e = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = getelementptr i8, ptr %i.e, i64 24       ; 4 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ %i.h, %bb.a ] ; 4 uses
  %i.k = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.j, i32 noundef 46) #22 ; 10 uses
  %.not = icmp eq ptr %i.k, null                  ; 2 uses
  br i1 %.not, label %bb.u, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.l = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 47) #22
  %.not97 = icmp eq ptr %i.l, null
  br i1 %.not97, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(4) @.str.17) #22
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.o = call i32 %3(ptr noundef %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) #7, !callees !98
  %.not101 = icmp eq i32 %i.o, 0
  br i1 %.not101, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !99   ; 2 uses
  %.not103 = icmp eq ptr %i.p, null
  br i1 %.not103, label %bb.ap, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = call i64 @rb_filesystem_str_new_cstr(ptr noundef nonnull %i.p) #7
  store volatile i64 %i.q, ptr %2, align 8, !tbaa !20
  br label %bb.ap

bb.h:                                             ; preds = %bb.e
  %i.r = call i64 @rb_find_file(i64 noundef %1) #7 ; 3 uses
  %.not102 = icmp eq i64 %i.r, 0
  br i1 %.not102, label %bb.ap, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !22
  %i.u = and i64 %i.t, 8192
  %.not.i112 = icmp eq i64 %i.u, 0
  %i.v = getelementptr i8, ptr %i.s, i64 24       ; 2 uses
  br i1 %.not.i112, label %RSTRING_PTR.exit113, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  br label %RSTRING_PTR.exit113

RSTRING_PTR.exit113:                              ; preds = %bb.i, %bb.j
  %i.x = phi ptr [ %i.w, %bb.j ], [ %i.v, %bb.i ] ; 2 uses
  %i.y = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.x, i32 noundef 46) #22
  %i.z = call i32 %3(ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef %i.y, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.b) #7, !callees !98
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = load ptr, ptr %i.b, align 8
  %i.ac = icmp ne ptr %i.ab, null
  %or.cond = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.k, label %bb.ap

bb.k:                                             ; preds = %RSTRING_PTR.exit113
  store volatile i64 %i.r, ptr %2, align 8, !tbaa !20
  br label %bb.ap

bb.l:                                             ; preds = %bb.d
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(4) @.str.5) #22
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %sub_0

sub_0:                                            ; preds = %bb.l
  %i.af = load i8, ptr %i.k, align 1
  %.not127 = icmp eq i8 %i.af, 46
  br i1 %.not127, label %sub_1, label %.thread

sub_1:                                            ; preds = %sub_0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  %.not128 = icmp eq i8 %i.ah, 111
  br i1 %.not128, label %.tail, label %.thread

.tail:                                            ; preds = %sub_1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %.thread

bb.m:                                             ; preds = %.tail, %bb.l
  %i.al = call i32 %3(ptr noundef %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #7, !callees !98
  %.not98 = icmp eq i32 %i.al, 0
  br i1 %.not98, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !99  ; 2 uses
  %.not100 = icmp eq ptr %i.am, null
  br i1 %.not100, label %bb.ap, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = call i64 @rb_filesystem_str_new_cstr(ptr noundef nonnull %i.am) #7
  store volatile i64 %i.an, ptr %2, align 8, !tbaa !20
  br label %bb.ap

bb.p:                                             ; preds = %bb.m
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !22
  %i.ap = and i64 %i.ao, 8192
  %.not.i114 = icmp eq i64 %i.ap, 0
  br i1 %.not.i114, label %RSTRING_PTR.exit115, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !21
  br label %RSTRING_PTR.exit115

RSTRING_PTR.exit115:                              ; preds = %bb.p, %bb.q
  %i.ar = phi ptr [ %i.aq, %bb.q ], [ %i.h, %bb.p ]
  %i.as = ptrtoint ptr %i.k to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = call i64 @rb_str_subseq(i64 noundef %1, i64 noundef 0, i64 noundef %i.au) #7 ; 3 uses
  %i.aw = call i64 @rb_str_cat(i64 noundef %i.av, ptr noundef nonnull @.str.5, i64 noundef 3) #7 ; 0 uses
  call void @rb_obj_freeze_inline(i64 noundef %i.av) #7
  %i.ax = call i64 @rb_find_file(i64 noundef %i.av) #7 ; 3 uses
  %.not99 = icmp eq i64 %i.ax, 0
  br i1 %.not99, label %.thread, label %bb.r

bb.r:                                             ; preds = %RSTRING_PTR.exit115
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !22
  %i.ba = and i64 %i.az, 8192
  %.not.i116 = icmp eq i64 %i.ba, 0
  %i.bb = getelementptr i8, ptr %i.ay, i64 24     ; 2 uses
  br i1 %.not.i116, label %RSTRING_PTR.exit117, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !21
  br label %RSTRING_PTR.exit117

RSTRING_PTR.exit117:                              ; preds = %bb.r, %bb.s
  %i.bd = phi ptr [ %i.bc, %bb.s ], [ %i.bb, %bb.r ] ; 2 uses
  %i.be = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.bd, i32 noundef 46) #22
  %i.bf = call i32 %3(ptr noundef %0, ptr noundef nonnull %i.bd, ptr noundef %i.be, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.b) #7, !callees !98
  %i.bg = icmp eq i32 %i.bf, 0
  %i.bh = load ptr, ptr %i.b, align 8
  %i.bi = icmp ne ptr %i.bh, null
  %or.cond4 = select i1 %i.bg, i1 true, i1 %i.bi
  br i1 %or.cond4, label %bb.t, label %bb.ap

bb.t:                                             ; preds = %RSTRING_PTR.exit117
  store volatile i64 %i.ax, ptr %2, align 8, !tbaa !20
  br label %bb.ap

bb.u:                                             ; preds = %bb.c, %RSTRING_PTR.exit
  %i.bj = call i32 %3(ptr noundef %0, ptr noundef nonnull %i.j, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #7, !callees !98
  %.fr = freeze i32 %i.bj                         ; 3 uses
  %i.bk = icmp eq i32 %.fr, 114
  br i1 %i.bk, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !99  ; 2 uses
  %.not109 = icmp eq ptr %i.bl, null
  br i1 %.not109, label %bb.ap, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = call i64 @rb_filesystem_str_new_cstr(ptr noundef nonnull %i.bl) #7
  store volatile i64 %i.bm, ptr %2, align 8, !tbaa !20
  br label %bb.ap

.thread:                                          ; preds = %sub_1, %sub_0, %RSTRING_PTR.exit115, %.tail
  store i64 %1, ptr %i.a, align 8, !tbaa !20
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  store i64 %1, ptr %i.a, align 8, !tbaa !20
  %i.bn = icmp eq i32 %.fr, 115
  %spec.select = select i1 %i.bn, ptr @ruby_ext, ptr @loadable_ext
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread
  %.087126 = phi i32 [ 0, %.thread ], [ %.fr, %bb.x ] ; 3 uses
  %i.bo = phi ptr [ @loadable_ext, %.thread ], [ %spec.select, %bb.x ]
  %i.bp = call i32 @rb_find_file_ext(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bo) #7 ; 4 uses
  %i.bq = icmp eq i32 %.087126, 0                 ; 3 uses
  %i.br = icmp ne i32 %i.bp, 1
  %or.cond8 = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %or.cond8, label %bb.z, label %.critedge111

bb.z:                                             ; preds = %bb.y
  %i.bs = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !101
  %i.bt = getelementptr i8, ptr %i.bs, i64 584    ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !102
  %.not104 = icmp eq ptr %i.bu, null
  br i1 %.not104, label %.critedge111, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !20  ; 3 uses
  store i64 %i.bv, ptr %i.c, align 8, !tbaa !20
  br i1 %.not, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bw = call i64 @rb_str_dup(i64 noundef %i.bv) #7 ; 3 uses
  store i64 %i.bw, ptr %i.c, align 8, !tbaa !20
  %i.bx = call i64 @rb_str_cat(i64 noundef %i.bw, ptr noundef nonnull @.str.5, i64 noundef 3) #7 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.by = phi i64 [ %i.bw, %bb.ab ], [ %i.bv, %bb.aa ]
  %i.bz = inttoptr i64 %i.by to ptr               ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !22
  %i.cb = and i64 %i.ca, 8192
  %.not.i118 = icmp eq i64 %i.cb, 0
  %i.cc = getelementptr i8, ptr %i.bz, i64 24     ; 2 uses
  br i1 %.not.i118, label %RSTRING_PTR.exit119, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !21
  br label %RSTRING_PTR.exit119

RSTRING_PTR.exit119:                              ; preds = %bb.ac, %bb.ad
  %i.ce = phi ptr [ %i.cd, %bb.ad ], [ %i.cc, %bb.ac ] ; 2 uses
  %i.cf = load ptr, ptr %i.bt, align 8, !tbaa !102
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = call i32 @rb_st_lookup(ptr noundef %i.cf, i64 noundef %i.cg, ptr noundef null) #7
  %.not105 = icmp eq i32 %i.ch, 0
  br i1 %.not105, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %RSTRING_PTR.exit119
  %i.ci = call i64 @rb_filesystem_str_new_cstr(ptr noundef %i.ce) #7
  store volatile i64 %i.ci, ptr %2, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store ptr %i.c, ptr %i.d, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #7, !srcloc !103
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.ck = load volatile i64, ptr %i.cj, align 8, !tbaa !20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.ap

.critedge:                                        ; preds = %RSTRING_PTR.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %.critedge111

.critedge111:                                     ; preds = %bb.z, %.critedge, %bb.y
  switch i32 %i.bp, label %bb.ai [
    i32 0, label %bb.af
    i32 1, label %bb.aj
  ]

bb.af:                                            ; preds = %.critedge111
  br i1 %i.bq, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !20
  %i.cm = inttoptr i64 %i.cl to ptr               ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !22
  %i.co = and i64 %i.cn, 8192
  %.not.i120 = icmp eq i64 %i.co, 0
  %i.cp = getelementptr i8, ptr %i.cm, i64 24     ; 2 uses
  br i1 %.not.i120, label %RSTRING_PTR.exit121, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !21
  br label %RSTRING_PTR.exit121

RSTRING_PTR.exit121:                              ; preds = %bb.ag, %bb.ah
  %i.cr = phi ptr [ %i.cq, %bb.ah ], [ %i.cp, %bb.ag ]
  %i.cs = call i32 %3(ptr noundef %0, ptr noundef %i.cr, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef null) #7, !callees !98
  br label %bb.ap

bb.ai:                                            ; preds = %.critedge111
  br i1 %i.bq, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai, %.critedge111
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !20
  %i.cu = inttoptr i64 %i.ct to ptr               ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !22
  %i.cw = and i64 %i.cv, 8192
  %.not.i122 = icmp eq i64 %i.cw, 0
  %i.cx = getelementptr i8, ptr %i.cu, i64 24     ; 2 uses
  br i1 %.not.i122, label %RSTRING_PTR.exit123, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !21
  br label %RSTRING_PTR.exit123

RSTRING_PTR.exit123:                              ; preds = %bb.aj, %bb.ak
  %i.cz = phi ptr [ %i.cy, %bb.ak ], [ %i.cx, %bb.aj ] ; 2 uses
  %i.da = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.cz, i32 noundef 46) #22
  %i.db = icmp eq i32 %i.bp, 1
  %i.dc = zext i1 %i.db to i32
  %i.dd = call i32 %3(ptr noundef %0, ptr noundef nonnull %i.cz, ptr noundef %i.da, i32 noundef %i.dc, i32 noundef 1, ptr noundef nonnull %i.b) #7, !callees !98
  %i.de = icmp eq i32 %i.dd, 0
  %i.df = load ptr, ptr %i.b, align 8
  %i.dg = icmp ne ptr %i.df, null
  %or.cond10 = select i1 %i.de, i1 true, i1 %i.dg
  br i1 %or.cond10, label %bb.al, label %bb.am

bb.al:                                            ; preds = %RSTRING_PTR.exit123
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !20
  store volatile i64 %i.dh, ptr %2, align 8, !tbaa !20
  br label %bb.am

bb.am:                                            ; preds = %RSTRING_PTR.exit123, %bb.al
  %i.di = icmp ugt i32 %i.bp, 1
  %i.dj = select i1 %i.di, i32 115, i32 114
  br label %bb.ap

bb.an:                                            ; preds = %bb.ai, %bb.af
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !99  ; 2 uses
  %.not108 = icmp eq ptr %i.dk, null
  br i1 %.not108, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dl = call i64 @rb_filesystem_str_new_cstr(ptr noundef nonnull %i.dk) #7
  store volatile i64 %i.dl, ptr %2, align 8, !tbaa !20
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ae, %RSTRING_PTR.exit121, %bb.am, %bb.ao, %bb.an, %bb.v, %bb.w, %bb.t, %RSTRING_PTR.exit117, %bb.n, %bb.o, %bb.h, %bb.k, %RSTRING_PTR.exit113, %bb.f, %bb.g
  %.4 = phi i32 [ 115, %bb.t ], [ 114, %bb.v ], [ 115, %bb.n ], [ 114, %bb.f ], [ 114, %bb.k ], [ 0, %bb.h ], [ 114, %bb.g ], [ 114, %RSTRING_PTR.exit113 ], [ 115, %bb.o ], [ 115, %RSTRING_PTR.exit117 ], [ 114, %bb.w ], [ 115, %bb.ae ], [ %i.dj, %bb.am ], [ %i.cs, %RSTRING_PTR.exit121 ], [ %.087126, %bb.ao ], [ %.087126, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @no_feature_p(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, i32 %4, ptr nofree readnone captures(none) %5) #12 {
bb.a:
  ret i32 0
}

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_new_from_args(i64 noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define dso_local void @rb_ext_ractor_safe(i1 noundef zeroext %0) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = zext i1 %0 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr i8, ptr %.val.i, i64 464
  store i8 %i.b, ptr %i.f, align 8, !tbaa !104
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_require_internal_silent(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !95
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %rb_ractor_main_p.exit, label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit:                            ; preds = %bb.a
  %i.c = tail call zeroext i1 @rb_ractor_main_p_() #7
  br i1 %i.c, label %rb_ractor_main_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %rb_ractor_main_p.exit
  %i.d = tail call i64 @rb_ractor_require(i64 noundef %0, i1 noundef zeroext true) #7 ; 3 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @rb_fix2int(i64 noundef %i.d) #7
  br label %rb_num2int_inline.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i64 @rb_num2int(i64 noundef %i.d) #7
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.c, %bb.d
  %.0.i3 = phi i64 [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  %i.h = trunc i64 %.0.i3 to i32
  br label %bb.e

rb_ractor_main_p.exit.thread:                     ; preds = %bb.a, %rb_ractor_main_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  store volatile ptr %i.j, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = tail call fastcc i32 @require_internal(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %0, i32 noundef 1, i1 noundef zeroext false)
  br label %bb.e

bb.e:                                             ; preds = %rb_ractor_main_p.exit.thread, %rb_num2int_inline.exit
  %.0 = phi i32 [ %i.k, %rb_ractor_main_p.exit.thread ], [ %i.h, %rb_num2int_inline.exit ]
  ret i32 %.0
}

declare i64 @rb_ractor_require(i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @require_internal(ptr noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %.sroa.0 = alloca i64, align 8                  ; 4 uses
  %.sroa.4 = alloca i64, align 8                  ; 4 uses
  %.sroa.6 = alloca i64, align 8                  ; 4 uses
  %.sroa.8 = alloca ptr, align 8                  ; 5 uses
  %.sroa.11 = alloca ptr, align 8                 ; 4 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i8, align 1                       ; 5 uses
  %.sroa.0103 = alloca i8, align 1                ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i32 -1, ptr %i.c, align 4, !tbaa !7
  %i.j = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val = load ptr, ptr %i.j, align 8, !tbaa !52  ; 4 uses
  %i.k = tail call ptr @rb_loading_box() #7       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.l = getelementptr i8, ptr %.val, i64 240     ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !105
  store i64 %i.m, ptr %.sroa.0, align 8, !tbaa !106
  %i.n = getelementptr i8, ptr %.val, i64 232
  %i.o = load i64, ptr %i.n, align 8, !tbaa !108
  store i64 %i.o, ptr %.sroa.4, align 8, !tbaa !109
  %i.p = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !36
  store i64 %i.q, ptr %.sroa.6, align 8, !tbaa !110
  store ptr %0, ptr %.sroa.8, align 8, !tbaa !111
  store ptr %i.k, ptr %.sroa.11, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store volatile ptr null, ptr %i.d, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store volatile i64 0, ptr %i.f, align 8, !tbaa !20
  %i.r = getelementptr i8, ptr %i.k, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !113  ; 2 uses
  %i.t = getelementptr i8, ptr %i.k, i64 80
  %i.u = load i64, ptr %i.t, align 8, !tbaa !114  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store volatile i8 0, ptr %i.g, align 1, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0103)
  %i.v = tail call i64 @rb_str_encode_ospath(i64 noundef %1) #7 ; 2 uses
  store volatile i64 %i.v, ptr %i.e, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %0, ptr %i.h, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 0, ptr %i.w, align 8, !tbaa !47
  store i64 36, ptr %4, align 8, !tbaa !49
  %i.x = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !51
  %.0.14.val = load ptr, ptr %i.j, align 8, !tbaa !52, !nonnull !34, !noundef !34 ; 2 uses
  %5 = getelementptr i8, ptr %.0.14.val, i64 32
  %6 = load ptr, ptr %5, align 8, !tbaa !53       ; 2 uses
  %7 = getelementptr i8, ptr %.0.14.val, i64 24
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = getelementptr i8, ptr %6, i64 88
  %.0.14.val.a = load ptr, ptr %9, align 8, !tbaa !73
  %.not.i.i = icmp eq ptr %.0.14.val.a, %8
  br i1 %.not.i.i, label %bb.b, label %rb_ec_vm_lock_rec.exit

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %6, i64 96
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !91
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.ab, %bb.b ], [ 0, %bb.a ]
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i32 %.0.i, ptr %i.ac, align 4, !tbaa !92
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 4, ptr %i.p, align 8, !tbaa !36
  store i64 0, ptr %i.l, align 8, !tbaa !105
  %i.ae = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.ae, ptr %i.ad, align 8
  %i.af = tail call ptr @llvm.stacksave.p0()
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.ad)
  %.not = icmp eq i32 %i.ah, 0                    ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c, !prof !93

bb.c:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.15 = load volatile ptr, ptr %i.h, align 8, !tbaa !30 ; 2 uses
  %i.ai = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.15)
  br label %bb.aa

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %4, ptr %i.x, align 8, !tbaa !50
  %i.aj = call fastcc i32 @search_required(ptr noundef nonnull %i.k, i64 noundef %i.v, ptr noundef %i.e, ptr noundef nonnull @rb_feature_p) ; 3 uses
  %i.ak = load volatile i64, ptr %i.e, align 8, !tbaa !20 ; 11 uses
  %.not83 = icmp eq i32 %i.aj, 0
  br i1 %.not83, label %bb.aa, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not84 = icmp eq i64 %i.ak, 0
  br i1 %.not84, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !22
  %i.an = and i64 %i.am, 8192
  %.not.i = icmp eq i64 %i.an, 0
  %i.ao = getelementptr i8, ptr %i.al, i64 24     ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.f, %bb.g
  %i.aq = phi ptr [ %i.ap, %bb.g ], [ %i.ao, %bb.f ] ; 5 uses
  %i.ar = getelementptr i8, ptr %i.k, i64 96
  %.val93 = load ptr, ptr %i.ar, align 8, !tbaa !116 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = call i32 @rb_st_lookup(ptr noundef %.val93, i64 noundef %i.as, ptr noundef nonnull %i.a) #7
  %.not.i95 = icmp eq i32 %i.at, 0
  br i1 %.not.i95, label %load_lock.exit.thread107, label %bb.h

load_lock.exit.thread107:                         ; preds = %RSTRING_PTR.exit
  %i.au = call noalias nonnull ptr @ruby_strdup(ptr noundef %i.aq) #7 ; 2 uses
  %i.av = call i64 @rb_thread_shield_new() #7     ; 2 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !20
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = call i32 @rb_st_insert(ptr noundef %.val93, i64 noundef %i.aw, i64 noundef %i.av) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  store volatile ptr %i.au, ptr %i.d, align 8, !tbaa !99
  br label %bb.m

bb.h:                                             ; preds = %RSTRING_PTR.exit
  br i1 %3, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !20
  %i.az = call zeroext i1 @rb_thread_shield_owned(i64 noundef %i.ay) #7
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = call i64 (ptr, ...) @rb_warning_string(ptr noundef nonnull @.str.21, ptr noundef %i.aq) #7 ; 2 uses
  call void @rb_backtrace_each(ptr noundef nonnull @rb_str_append, i64 noundef %i.ba) #7
  call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.22, i64 noundef %i.ba) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !20
  %i.bc = call i64 @rb_thread_shield_wait(i64 noundef %i.bb) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  switch i64 %i.bc, label %load_lock.exit [
    i64 0, label %load_lock.exit.thread
    i64 4, label %load_lock.exit.thread
  ]

load_lock.exit.thread:                            ; preds = %bb.k, %bb.k
  store volatile ptr null, ptr %i.d, align 8, !tbaa !99
  br label %bb.l

load_lock.exit:                                   ; preds = %bb.k
  store volatile ptr %i.aq, ptr %i.d, align 8, !tbaa !99
  %.not85 = icmp eq ptr %i.aq, null
  br i1 %.not85, label %bb.l, label %bb.m

bb.l:                                             ; preds = %load_lock.exit.thread, %load_lock.exit, %bb.e
  store volatile i32 0, ptr %i.c, align 4, !tbaa !7
  br label %bb.aa

bb.m:                                             ; preds = %load_lock.exit.thread107, %load_lock.exit
  %.0..0..0..0.36 = load volatile ptr, ptr %i.d, align 8, !tbaa !99
  %i.bd = load i8, ptr %.0..0..0..0.36, align 1, !tbaa !21
  %.not86 = icmp eq i8 %i.bd, 0
  br i1 %.not86, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store volatile i32 1, ptr %i.c, align 4, !tbaa !7
  br label %bb.aa

bb.o:                                             ; preds = %bb.m
  %i.be = icmp eq i32 %i.aj, 115
  br i1 %i.be, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr i8, ptr %.val, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !53
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = call i64 @rb_vm_call_cfunc_in_box(i64 noundef 4, ptr noundef nonnull @run_static_ext_init, i64 noundef %i.bh, i64 noundef %i.ak, i64 noundef %i.ak, ptr noundef nonnull %i.k) #7
  %i.bj = and i64 %i.bi, -5
  %.not110 = icmp eq i64 %i.bj, 0
  br i1 %.not110, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store volatile i32 1, ptr %i.c, align 4, !tbaa !7
  br label %bb.aa

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bk = call i64 @rb_hash_aref(i64 noundef %i.u, i64 noundef %i.ak) #7 ; 2 uses
  %i.bl = and i64 %i.bk, -5
  %.not.i97 = icmp eq i64 %i.bl, 0
  br i1 %.not.i97, label %bb.s, label %realpath_internal_cached.exit

bb.s:                                             ; preds = %bb.r
  %i.bm = call i64 @rb_realpath_internal(i64 noundef 4, i64 noundef %i.ak, i32 noundef 1) #7 ; 2 uses
  %i.bn = call i64 @rb_fstring(i64 noundef %i.ak) #7
  %i.bo = call i64 @rb_fstring(i64 noundef %i.bm) #7
  %i.bp = call i64 @rb_hash_aset(i64 noundef %i.u, i64 noundef %i.bn, i64 noundef %i.bo) #7 ; 0 uses
  br label %realpath_internal_cached.exit

realpath_internal_cached.exit:                    ; preds = %bb.r, %bb.s
  %.0.i98 = phi i64 [ %i.bm, %bb.s ], [ %i.bk, %bb.r ] ; 2 uses
  store volatile i64 %.0.i98, ptr %i.f, align 8, !tbaa !20
  %i.bq = call i64 @rb_hash_aref(i64 noundef %i.s, i64 noundef %.0.i98) #7
  %i.br = and i64 %i.bq, -5
  %.not111 = icmp eq i64 %i.br, 0
  br i1 %.not111, label %bb.u, label %bb.t

bb.t:                                             ; preds = %realpath_internal_cached.exit
  store volatile i32 0, ptr %i.c, align 4, !tbaa !7
  br label %bb.aa

bb.u:                                             ; preds = %realpath_internal_cached.exit
  switch i32 %i.aj, label %bb.z [
    i32 114, label %bb.v
    i32 115, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.24. = load volatile ptr, ptr %.sroa.8, align 8, !tbaa !111
  call fastcc void @load_iseq_eval(ptr noundef %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.24., i64 noundef %i.ak)
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  store volatile i8 1, ptr %i.g, align 1, !tbaa !115
  %i.bs = getelementptr i8, ptr %.val, i64 464    ; 2 uses
  %.sroa.0103.0.copyload = load volatile i8, ptr %i.bs, align 8, !tbaa !115
  store volatile i8 %.sroa.0103.0.copyload, ptr %.sroa.0103, align 1, !tbaa !115
  store i8 0, ptr %i.bs, align 8, !tbaa !115
  %i.bt = getelementptr i8, ptr %i.k, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !117
  %i.bv = call i64 @rb_vm_call_cfunc_in_box(i64 noundef %i.bu, ptr noundef nonnull @load_ext, i64 noundef %i.ak, i64 noundef %1, i64 noundef %i.ak, ptr noundef nonnull %i.k) #7 ; 3 uses
  %i.bw = getelementptr i8, ptr %i.k, i64 104
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !118
  %i.by = add i64 %i.bv, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.by, -1
  br i1 %or.cond.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bz = shl nsw i64 %i.bv, 1
  %i.ca = or disjoint i64 %i.bz, 1
  br label %rb_long2num_inline.exit

bb.y:                                             ; preds = %bb.w
  %i.cb = call i64 @rb_int2big(i64 noundef %i.bv) #7
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.x, %bb.y
  %.0.i99 = phi i64 [ %i.ca, %bb.x ], [ %i.cb, %bb.y ]
  %i.cc = call i64 @rb_hash_aset(i64 noundef %i.bx, i64 noundef %i.ak, i64 noundef %.0.i99) #7 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %rb_long2num_inline.exit, %bb.v, %bb.u
  store volatile i32 1, ptr %i.c, align 4, !tbaa !7
  br label %bb.aa

bb.aa:                                            ; preds = %bb.c, %bb.d, %bb.n, %bb.t, %bb.z, %bb.q, %bb.l
  %.0..0..0.17 = phi ptr [ %0, %bb.d ], [ %0, %bb.n ], [ %0, %bb.t ], [ %0, %bb.z ], [ %0, %bb.q ], [ %0, %bb.l ], [ %.0..0..0..0.15, %bb.c ]
  %i.cd = phi i32 [ 0, %bb.d ], [ 0, %bb.n ], [ 0, %bb.t ], [ 0, %bb.z ], [ 0, %bb.q ], [ 0, %bb.l ], [ %i.ai, %bb.c ] ; 5 uses
  %i.ce = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.cf = getelementptr i8, ptr %.0..0..0.17, i64 24
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !50
end_hunk_0
begin_hunk_1_@require_internal:bb.a
bb.ap:                                            ; preds = %bb.ao
  call void @rb_exc_raise(i64 noundef %i.di) #20
  unreachable

bb.aq:                                            ; preds = %bb.an
  %.0..0..0..0.63 = load volatile i32, ptr %i.c, align 4, !tbaa !7
  %i.dk = icmp eq i32 %.0..0..0..0.63, 1
  br i1 %i.dk, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  call fastcc void @rb_provide_feature(ptr noundef %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.32., i64 noundef %i.cl)
  %.0..0..0..0.22 = load volatile i64, ptr %i.f, align 8, !tbaa !20 ; 2 uses
  %.not91 = icmp eq i64 %.0..0..0..0.22, 0
  br i1 %.not91, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dl = call i64 @rb_fstring(i64 noundef %.0..0..0..0.22) #7
  %i.dm = call i64 @rb_hash_aset(i64 noundef %i.s, i64 noundef %i.dl, i64 noundef 20) #7 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.aq
  %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.16. = load volatile i64, ptr %.sroa.6, align 8, !tbaa !110
  store i64 %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.16., ptr %i.dh, align 8, !tbaa !36
  %.0..0..0..0.64 = load volatile i32, ptr %i.c, align 4, !tbaa !7
  br label %bb.au

bb.au:                                            ; preds = %bb.ao, %bb.al, %bb.aj, %bb.ak, %bb.at, %bb.am
  %.0 = phi i32 [ 6, %bb.al ], [ 6, %bb.aj ], [ %i.cd, %bb.am ], [ %.0..0..0..0.64, %bb.at ], [ 6, %bb.ak ], [ 6, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0103)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_require_internal(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = tail call ptr @rb_ruby_verbose_ptr() #7
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = and i64 %i.e, -5
  %i.g = icmp ne i64 %i.f, 0
  %i.h = tail call fastcc i32 @require_internal(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %0, i32 noundef 1, i1 noundef zeroext %i.g)
  ret i32 %i.h
}

declare ptr @rb_ruby_verbose_ptr() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 -1, 2) i32 @ruby_require_internal(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.RString, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.b = zext i32 %1 to i64
  %i.c = call i64 @rb_setup_fake_str(ptr noundef nonnull %2, ptr noundef %0, i64 noundef %i.b, ptr noundef null) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = call ptr @rb_ruby_verbose_ptr() #7
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  %i.h = and i64 %i.g, -5
  %i.i = icmp ne i64 %i.h, 0
  %i.j = call fastcc i32 @require_internal(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %i.c, i32 noundef 0, i1 noundef zeroext %i.i) ; 2 uses
  call void @rb_set_errinfo(i64 noundef 4) #7
  %i.k = icmp eq i32 %i.j, 1
  %.not = icmp ne i32 %i.j, 0
  %i.l = sext i1 %.not to i32
  %i.m = select i1 %i.k, i32 1, i32 %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

declare i64 @rb_setup_fake_str(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_set_errinfo(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_require(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %struct.RString, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %i.c = call i64 @rb_setup_fake_str(ptr noundef nonnull %1, ptr noundef nonnull %0, i64 noundef %i.b, ptr noundef null) #7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !95
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.a
  %i.g = call zeroext i1 @rb_ractor_main_p_() #7
  br i1 %i.g, label %rb_ractor_main_p.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %rb_ractor_main_p.exit.i
  %i.h = call i64 @rb_str_resurrect(i64 noundef %i.c) #7
  %i.i = call i64 @rb_ractor_require(i64 noundef %i.h, i1 noundef zeroext false) #7
  br label %rb_require_string_internal.exit

rb_ractor_main_p.exit.thread.i:                   ; preds = %rb_ractor_main_p.exit.i, %bb.a
  %i.j = call ptr @rb_ruby_verbose_ptr() #7
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = and i64 %i.k, -5
  %i.m = icmp ne i64 %i.l, 0
  %i.n = call fastcc i32 @require_internal(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %i.c, i32 noundef 1, i1 noundef zeroext %i.m) ; 4 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_ractor_main_p.exit.thread.i
  %i.p = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 24
  %.val.i = load ptr, ptr %i.p, align 8, !tbaa !50 ; 2 uses
  %i.q = getelementptr i8, ptr %.val.i, i64 64
  store i32 %i.n, ptr %i.q, align 8, !tbaa !47
  %i.r = getelementptr i8, ptr %.val.i, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.r)
  unreachable

bb.d:                                             ; preds = %rb_ractor_main_p.exit.thread.i
  %i.s = icmp slt i32 %i.n, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = call i64 @rb_str_resurrect(i64 noundef %i.c) #7
  call fastcc void @load_failed(i64 noundef %i.t) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %i.n, 0
  %i.u = select i1 %.not.i, i64 0, i64 20
  br label %rb_require_string_internal.exit

rb_require_string_internal.exit:                  ; preds = %bb.b, %bb.f
  %.0.i = phi i64 [ %i.u, %bb.f ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @ruby_init_ext(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !101
  %i.b = tail call ptr @rb_loading_box() #7
  %i.c = tail call fastcc i32 @feature_provided(ptr noundef %i.b, ptr noundef %0, ptr noundef null)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 584      ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102  ; 2 uses
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @rb_st_init_strtable() #7  ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !102
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.g = ptrtoint ptr %0 to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = tail call i32 @rb_st_update(ptr noundef %.0, i64 noundef %i.g, ptr noundef nonnull @register_init_ext, i64 noundef %i.h) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare ptr @rb_st_init_strtable() local_unnamed_addr #1

declare i32 @rb_st_update(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @register_init_ext(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !20
  %i.b = inttoptr i64 %i.a to ptr
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.23, ptr noundef %i.b) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 %2, ptr %1, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_ext_resolve_symbol(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_str_new_cstr(ptr noundef %0) #7 ; 2 uses
  %i.b = tail call ptr @rb_loading_box() #7       ; 2 uses
  %i.c = tail call i64 @rb_resolve_feature_path(i64 poison, i64 noundef %i.a) ; 4 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #22 ; 5 uses
  %.not22 = icmp eq ptr %i.e, null
  br i1 %.not22, label %.tail.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(4) @.str.5) #22
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %sub_0

sub_0:                                            ; preds = %bb.c
  %i.h = load i8, ptr %i.e, align 1
  %.not26 = icmp eq i8 %i.h, 46
  br i1 %.not26, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %.not27 = icmp eq i8 %i.j, 111
  br i1 %.not27, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail, %bb.b
  %i.n = tail call i64 @rb_str_cat(i64 noundef %i.a, ptr noundef nonnull @.str.5, i64 noundef 3) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.tail.thread, %.tail, %bb.c
  %i.o = tail call i32 @rb_feature_p(ptr noundef %i.b, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %.not23 = icmp eq i32 %i.o, 0
  br i1 %.not23, label %bb.m, label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.p = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !22   ; 2 uses
  %i.r = and i64 %i.q, 8192
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = lshr i64 %i.q, 15
  %i.t = and i64 %i.s, 127
  br label %rb_array_len.exit

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.p, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !21
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.f, %bb.g
  %.0.i = phi i64 [ %i.t, %bb.f ], [ %i.v, %bb.g ]
  %.not = icmp eq i64 %.0.i, 2
  br i1 %.not, label %bb.h, label %bb.m

bb.h:                                             ; preds = %rb_array_len.exit
  %i.w = tail call i64 @rb_ary_entry(i64 noundef %i.c, i64 noundef 0) #22
  %.pr.i = load i64, ptr @rb_ext_resolve_symbol.rbimpl_id, align 8, !tbaa !20 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %i.x = tail call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 2) #7 ; 3 uses
  store i64 %i.x, ptr @rb_ext_resolve_symbol.rbimpl_id, align 8, !tbaa !20
  %.not.i24 = icmp eq i64 %i.x, 0
  br i1 %.not.i24, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !96

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.h
  %.lcssa.i = phi i64 [ %.pr.i, %bb.h ], [ %i.x, %.lr.ph.i ]
  %i.y = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #7
  %.not21 = icmp eq i64 %i.w, %i.y
  br i1 %.not21, label %bb.i, label %bb.m

bb.i:                                             ; preds = %rbimpl_intern_const.exit
  %i.z = tail call i64 @rb_ary_entry(i64 noundef %i.c, i64 noundef 1) #22
  %i.aa = getelementptr i8, ptr %i.b, i64 104
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !118
  %i.ac = tail call i64 @rb_hash_lookup(i64 noundef %i.ab, i64 noundef %i.z) #7 ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 4
  br i1 %i.ad, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = trunc i64 %i.ac to i1
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = ashr i64 %i.ac, 1
  br label %rb_num2ulong_inline.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = tail call i64 @rb_num2ulong(i64 noundef %i.ac) #7
  br label %rb_num2ulong_inline.exit

rb_num2ulong_inline.exit:                         ; preds = %bb.k, %bb.l
  %.0.i25 = phi i64 [ %i.af, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = inttoptr i64 %.0.i25 to ptr
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %rb_num2ulong_inline.exit
  %.sink = phi ptr [ %i.ah, %rb_num2ulong_inline.exit ], [ null, %bb.d ]
  %i.ai = tail call ptr @dln_symbol(ptr noundef %.sink, ptr noundef %1) #7
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.i, %rb_array_len.exit, %rbimpl_intern_const.exit, %bb.d
  %.0 = phi ptr [ null, %rbimpl_intern_const.exit ], [ null, %bb.i ], [ null, %bb.d ], [ null, %rb_array_len.exit ], [ %i.ai, %.sink.split ]
  ret ptr %.0
}

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 118) i32 @rb_feature_p(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 12 uses
  %6 = alloca %struct.loaded_feature_searching, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %.not = icmp eq ptr %5, null                    ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %5, align 8, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp ne ptr %2, null                     ; 7 uses
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %i.f = sub i64 %i.e, %i.d
  %.not148 = icmp eq i32 %3, 0
  %i.g = select i1 %.not148, i32 115, i32 114
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0134 = phi i64 [ %i.f, %bb.d ], [ %i.h, %bb.e ] ; 13 uses
  %.0125 = phi i32 [ %i.g, %bb.d ], [ 0, %bb.e ]  ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call fastcc ptr @get_loaded_features_index(ptr noundef %0)
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %i.m = tail call i64 @rb_st_hash(ptr noundef nonnull readonly %1, i64 noundef %i.l, i64 noundef 4272357534) #22
  %i.n = call i32 @rb_st_lookup(ptr noundef %i.k, i64 noundef %i.m, ptr noundef nonnull %i.b) #7
  %.not149 = icmp eq i32 %i.n, 0
  br i1 %.not149, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.b, align 8, !tbaa !20   ; 5 uses
  %i.p = icmp eq i64 %i.o, 4
  br i1 %i.p, label %.critedge, label %.preheader206

.preheader206:                                    ; preds = %bb.g
  %i.q = trunc i64 %i.o to i1                     ; 2 uses
  %i.r = inttoptr i64 %i.o to ptr                 ; 3 uses
  %.not.i = icmp eq i64 %i.o, 0                   ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  %i.t = inttoptr i64 %i.j to ptr                 ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16       ; 4 uses
  %i.v = getelementptr i8, ptr %i.t, i64 32       ; 2 uses
  %i.w = icmp ne i32 %3, 0
  %or.cond = and i1 %i.c, %i.w                    ; 2 uses
  %i.x = icmp eq i32 %3, 0
  %or.cond5 = and i1 %i.c, %i.x                   ; 2 uses
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader206
  br i1 %.not.i, label %.critedge, label %rb_darray_size.exit.peel

rb_darray_size.exit.peel:                         ; preds = %bb.h
  %i.y = load i64, ptr %i.r, align 8, !tbaa !120
  %.not230 = icmp eq i64 %i.y, 0
  br i1 %.not230, label %.critedge, label %.thread.peel

.thread.peel:                                     ; preds = %rb_darray_size.exit.peel
  %i.z = load i64, ptr %i.s, align 8, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %.preheader206
  %i.aa = ashr i64 %i.o, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread.peel
  %.2122.peel = phi i64 [ %i.z, %.thread.peel ], [ %i.aa, %bb.i ] ; 3 uses
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !22  ; 2 uses
  %i.ac = and i64 %i.ab, 8192
  %.not.i171.peel = icmp eq i64 %i.ac, 0
  br i1 %.not.i171.peel, label %rb_array_len.exit.peel, label %rb_array_len.exit.thread.peel

rb_array_len.exit.thread.peel:                    ; preds = %bb.j
  %i.ad = lshr i64 %i.ab, 15
  %i.ae = and i64 %i.ad, 127
  %.not152178.peel = icmp slt i64 %.2122.peel, %i.ae
  br i1 %.not152178.peel, label %RARRAY_AREF.exit.peel, label %select.unfold.peel

rb_array_len.exit.peel:                           ; preds = %bb.j
  %i.af = load i64, ptr %i.u, align 8, !tbaa !21
  %.not152.peel = icmp slt i64 %.2122.peel, %i.af
  br i1 %.not152.peel, label %bb.k, label %select.unfold.peel

bb.k:                                             ; preds = %rb_array_len.exit.peel
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !21
  br label %RARRAY_AREF.exit.peel

RARRAY_AREF.exit.peel:                            ; preds = %bb.k, %rb_array_len.exit.thread.peel
  %.0.i.i.peel = phi ptr [ %i.ag, %bb.k ], [ %i.u, %rb_array_len.exit.thread.peel ]
  %i.ah = getelementptr [8 x i8], ptr %.0.i.i.peel, i64 %.2122.peel
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !20
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !20
  %i.aj = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #7 ; 4 uses
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !20
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !122 ; 2 uses
  %i.ao = icmp slt i64 %i.an, %.0134
  br i1 %i.ao, label %select.unfold.peel, label %bb.l

bb.l:                                             ; preds = %RARRAY_AREF.exit.peel
  %i.ap = call i32 @strncmp(ptr noundef %i.aj, ptr noundef nonnull %1, i64 noundef %.0134) #22
  %.not153.peel = icmp eq i32 %i.ap, 0
  br i1 %.not153.peel, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not154.peel = icmp eq i32 %4, 0
  br i1 %.not154.peel, label %bb.n, label %select.unfold.peel

bb.n:                                             ; preds = %bb.m
  %i.aq = call fastcc i64 @get_expanded_load_path(ptr noundef nonnull %0) ; 3 uses
  %i.ar = call fastcc i64 @loaded_feature_path(ptr noundef %i.aj, i64 noundef %i.an, ptr noundef nonnull %1, i64 noundef %.0134, i32 noundef %.0125, i64 noundef %i.aq) ; 2 uses
  %.not156.peel = icmp eq i64 %i.ar, 0
  br i1 %.not156.peel, label %select.unfold.peel, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !122
  %i.av = getelementptr i8, ptr %i.aj, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.0131.peel = phi ptr [ %i.aw, %bb.o ], [ %i.aj, %bb.l ]
  %.2128.peel = phi i64 [ %i.aq, %bb.o ], [ 0, %bb.l ] ; 4 uses
  %.1113.peel = phi i32 [ 1, %bb.o ], [ %4, %bb.l ] ; 4 uses
  %i.ax = getelementptr i8, ptr %.0131.peel, i64 %.0134 ; 5 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !21
  switch i8 %i.ay, label %select.unfold.peel [
    i8 0, label %bb.s
    i8 46, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  br i1 %or.cond, label %.thread180.peel, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ax, ptr noundef nonnull dereferenceable(4) @.str.5) #22
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.thread194, label %sub_1.peel

sub_1.peel:                                       ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bc = load i8, ptr %i.bb, align 1
  %.not213.peel = icmp eq i8 %i.bc, 111
  br i1 %.not213.peel, label %.tail.peel, label %.tail.peel.thread

.tail.peel:                                       ; preds = %sub_1.peel
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %.thread194, label %.tail.peel.thread

.tail.peel.thread:                                ; preds = %sub_1.peel, %.tail.peel
  br i1 %or.cond5, label %select.unfold.peel, label %.thread180.peel

.thread180.peel:                                  ; preds = %.tail.peel.thread, %bb.q
  %i.bg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ax, ptr noundef nonnull dereferenceable(4) @.str.17) #22
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %.thread194, label %select.unfold.peel

bb.s:                                             ; preds = %bb.p
  br i1 %i.c, label %select.unfold.peel, label %.thread194

select.unfold.peel:                               ; preds = %bb.s, %.thread180.peel, %.tail.peel.thread, %bb.p, %bb.n, %bb.m, %RARRAY_AREF.exit.peel, %rb_array_len.exit.peel, %rb_array_len.exit.thread.peel
  %.3129.ph.peel = phi i64 [ %.2128.peel, %.thread180.peel ], [ 0, %rb_array_len.exit.thread.peel ], [ %i.aq, %bb.n ], [ %.2128.peel, %bb.p ], [ 0, %rb_array_len.exit.peel ], [ 0, %bb.m ], [ 0, %RARRAY_AREF.exit.peel ], [ %.2128.peel, %.tail.peel.thread ], [ %.2128.peel, %bb.s ] ; 2 uses
  %.2114.ph.peel = phi i32 [ %.1113.peel, %.thread180.peel ], [ %4, %rb_array_len.exit.thread.peel ], [ 0, %bb.n ], [ %.1113.peel, %bb.p ], [ %4, %rb_array_len.exit.peel ], [ %4, %bb.m ], [ %4, %RARRAY_AREF.exit.peel ], [ %.1113.peel, %.tail.peel.thread ], [ %.1113.peel, %bb.s ] ; 2 uses
  %brmerge233 = or i1 %.not.i, %i.q
  br i1 %brmerge233, label %.critedge, label %rb_darray_size.exit

rb_darray_size.exit:                              ; preds = %select.unfold.peel, %select.unfold
  %.0112238 = phi i32 [ %.2114.ph, %select.unfold ], [ %.2114.ph.peel, %select.unfold.peel ] ; 7 uses
  %.0124237 = phi i64 [ %i.ct, %select.unfold ], [ 1, %select.unfold.peel ] ; 3 uses
  %.0126236 = phi i64 [ %.3129.ph, %select.unfold ], [ %.3129.ph.peel, %select.unfold.peel ] ; 8 uses
  %i.bi = load i64, ptr %i.r, align 8, !tbaa !120
  %i.bj = icmp ult i64 %.0124237, %i.bi
  br i1 %i.bj, label %bb.t, label %.critedge

bb.t:                                             ; preds = %rb_darray_size.exit
  %i.bk = getelementptr [8 x i8], ptr %i.s, i64 %.0124237
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !20 ; 3 uses
  %i.bm = load i64, ptr %i.t, align 8, !tbaa !22  ; 2 uses
  %i.bn = and i64 %i.bm, 8192
  %.not.i171 = icmp eq i64 %i.bn, 0
  br i1 %.not.i171, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.t
  %i.bo = load i64, ptr %i.u, align 8, !tbaa !21
end_hunk_1
begin_hunk_2_@rb_feature_p:bb.a
.critedge:                                        ; preds = %rb_darray_size.exit, %select.unfold.peel, %bb.h, %rb_darray_size.exit.peel, %bb.g, %bb.f
  %.4130 = phi i64 [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %rb_darray_size.exit.peel ], [ %.3129.ph.peel, %select.unfold.peel ], [ %.0126236, %rb_darray_size.exit ] ; 2 uses
  %.3115 = phi i32 [ %4, %bb.g ], [ %4, %bb.f ], [ %4, %bb.h ], [ %4, %rb_darray_size.exit.peel ], [ %.2114.ph.peel, %select.unfold.peel ], [ %.0112238, %rb_darray_size.exit ]
  %i.cu = getelementptr i8, ptr %0, i64 96
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !116 ; 6 uses
  %.not159 = icmp eq i32 %.3115, 0
  br i1 %.not159, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %.critedge
  %i.cw = call i32 @rb_is_absolute_path(ptr noundef nonnull %1) #22
  %.not160 = icmp eq i32 %i.cw, 0
  br i1 %.not160, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  store ptr %1, ptr %6, align 8, !tbaa !126
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.0134, ptr %i.cx, align 8, !tbaa !128
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.0125, ptr %i.cy, align 8, !tbaa !129
  %.not161 = icmp eq i64 %.4130, 0
  br i1 %.not161, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cz = call fastcc i64 @get_expanded_load_path(ptr noundef nonnull %0)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.da = phi i64 [ %i.cz, %bb.ah ], [ %.4130, %bb.ag ]
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.da, ptr %i.db, align 8, !tbaa !130
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr null, ptr %i.dc, align 8, !tbaa !131
  %i.dd = ptrtoint ptr %6 to i64
  %i.de = call i32 @rb_st_foreach(ptr noundef %i.cv, ptr noundef nonnull @loaded_feature_path_i, i64 noundef %i.dd) #7 ; 0 uses
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !131 ; 2 uses
  %.not162 = icmp eq ptr %i.df, null              ; 2 uses
  %brmerge = or i1 %.not, %.not162
  br i1 %brmerge, label %bb.aj, label %.thread200

.thread200:                                       ; preds = %bb.ai
  store ptr %i.df, ptr %5, align 8, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.ba

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br i1 %.not162, label %bb.ak, label %bb.ba

bb.ak:                                            ; preds = %bb.aj, %bb.af, %.critedge
  %i.dg = ptrtoint ptr %1 to i64
  %i.dh = call i32 @rb_st_get_key(ptr noundef %i.cv, i64 noundef %i.dg, ptr noundef nonnull %i.b) #7
  %.not163 = icmp eq i32 %i.dh, 0
  br i1 %.not163, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  br i1 %.not, label %bb.ba, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.di = load i64, ptr %i.b, align 8, !tbaa !20
  %i.dj = inttoptr i64 %i.di to ptr
  store ptr %i.dj, ptr %5, align 8, !tbaa !99
  br label %bb.ba

bb.an:                                            ; preds = %bb.ak
  br i1 %i.c, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dk = load i8, ptr %2, align 1, !tbaa !21
  %.not164 = icmp eq i8 %i.dk, 0
  br i1 %.not164, label %bb.ap, label %.thread194

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dl = add i64 %.0134, 3
  %i.dm = call i64 @rb_str_tmp_new(i64 noundef %i.dl) #7 ; 4 uses
  %i.dn = inttoptr i64 %i.dm to ptr               ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !22
  %i.dp = and i64 %i.do, 8192
  %.not.i172 = icmp eq i64 %i.dp, 0
  %i.dq = getelementptr i8, ptr %i.dn, i64 24     ; 2 uses
  br i1 %.not.i172, label %RSTRING_PTR.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !21
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.ap, %bb.aq
  %i.ds = phi ptr [ %i.dr, %bb.aq ], [ %i.dq, %bb.ap ] ; 3 uses
  %.not.i173 = icmp eq i64 %.0134, 0
  br i1 %.not.i173, label %ruby_nonempty_memcpy.exit, label %bb.ar

bb.ar:                                            ; preds = %RSTRING_PTR.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ds, ptr noundef nonnull readonly align 1 %1, i64 noundef range(i64 1, 0) %.0134, i1 noundef false) #7
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %RSTRING_PTR.exit, %bb.ar
  %i.dt = getelementptr i8, ptr %i.ds, i64 %.0134 ; 4 uses
  %i.du = ptrtoint ptr %i.ds to i64               ; 4 uses
  store i32 6451758, ptr %i.dt, align 1
  %i.dv = call i32 @rb_st_get_key(ptr noundef %i.cv, i64 noundef %i.du, ptr noundef nonnull %i.b) #7
  %.not167.not = icmp eq i32 %i.dv, 0             ; 2 uses
  br i1 %.not167.not, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.av, %ruby_nonempty_memcpy.exit
  %i.dw = call i64 @rb_str_resize(i64 noundef %i.dm, i64 noundef 0) #7 ; 0 uses
  br i1 %.not, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dx = load i64, ptr %i.b, align 8, !tbaa !20
  %i.dy = inttoptr i64 %i.dx to ptr
  store ptr %i.dy, ptr %5, align 8, !tbaa !99
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dz = select i1 %.not167.not, i32 115, i32 114
  br label %.thread194

bb.av:                                            ; preds = %ruby_nonempty_memcpy.exit
  store i32 7303982, ptr %i.dt, align 1
  %i.ea = call i32 @rb_st_get_key(ptr noundef %i.cv, i64 noundef %i.du, ptr noundef nonnull %i.b) #7
  %.not167.1 = icmp eq i32 %i.ea, 0
  br i1 %.not167.1, label %.preheader, label %bb.as

.preheader:                                       ; preds = %bb.av
  store i32 7303982, ptr %i.dt, align 1
  %i.eb = call i32 @rb_st_get_key(ptr noundef %i.cv, i64 noundef %i.du, ptr noundef nonnull %i.b) #7
  %.not166 = icmp eq i32 %i.eb, 0
  br i1 %.not166, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dt, ptr noundef nonnull align 1 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @rb_feature_p.so_ext, i64 4), i64 noundef 3, i1 false) #7
  %i.ec = call i32 @rb_st_get_key(ptr noundef %i.cv, i64 noundef %i.du, ptr noundef nonnull %i.b) #7
  %.not166.1 = icmp eq i32 %i.ec, 0
  br i1 %.not166.1, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ed = call i64 @rb_str_resize(i64 noundef %i.dm, i64 noundef 0) #7 ; 0 uses
  br label %.thread194

bb.ay:                                            ; preds = %bb.aw, %.preheader
  %i.ee = call i64 @rb_str_resize(i64 noundef %i.dm, i64 noundef 0) #7 ; 0 uses
  br i1 %.not, label %.thread194, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ef = load i64, ptr %i.b, align 8, !tbaa !20
  %i.eg = inttoptr i64 %i.ef to ptr
  store ptr %i.eg, ptr %5, align 8, !tbaa !99
  br label %.thread194

bb.ba:                                            ; preds = %.thread200, %bb.aj, %bb.al, %bb.am
  br i1 %i.c, label %bb.bb, label %.thread194

bb.bb:                                            ; preds = %bb.ba
  %i.eh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(4) @.str.17) #22
  %.not169 = icmp eq i32 %i.eh, 0
  %i.ei = select i1 %.not169, i32 114, i32 115
  br label %.thread194

.thread194:                                       ; preds = %bb.ac, %.tail, %bb.ae, %.thread180, %bb.r, %.tail.peel, %.thread180.peel, %bb.s, %bb.ay, %bb.az, %bb.ao, %bb.au, %bb.ax, %bb.ba, %bb.bb
  %.4 = phi i32 [ %i.ei, %bb.bb ], [ 117, %bb.ba ], [ 115, %bb.ay ], [ 0, %bb.ax ], [ 115, %bb.az ], [ 0, %bb.ao ], [ %i.dz, %bb.au ], [ 115, %bb.r ], [ 115, %.tail.peel ], [ 114, %.thread180.peel ], [ 117, %bb.s ], [ 114, %.thread180 ], [ 117, %bb.ac ], [ 115, %.tail ], [ 115, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.4
}

declare ptr @dln_symbol(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_hash_lookup(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_load() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_intern2(ptr noundef nonnull @Init_load.var_load_path, i64 noundef 2) #7 ; 2 uses
  tail call void @rb_define_hooked_variable(ptr noundef nonnull @Init_load.var_load_path, ptr noundef null, ptr noundef nonnull @load_path_getter, ptr noundef nonnull @rb_gvar_readonly_setter) #7
  tail call void @rb_gvar_box_ready(ptr noundef nonnull @Init_load.var_load_path) #7
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull @.str.7, i64 noundef 3) #7
  tail call void @rb_alias_variable(i64 noundef %i.b, i64 noundef %i.a) #7
  %i.c = tail call i64 @rb_intern2(ptr noundef nonnull @.str.8, i64 noundef 10) #7
  tail call void @rb_alias_variable(i64 noundef %i.c, i64 noundef %i.a) #7
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.9, ptr noundef nonnull @get_LOADED_FEATURES, ptr noundef null) #7
  tail call void @rb_gvar_box_ready(ptr noundef nonnull @.str.9) #7
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.10, ptr noundef nonnull @get_LOADED_FEATURES, ptr noundef null) #7
  tail call void @rb_gvar_box_ready(ptr noundef nonnull @.str.10) #7
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.11, ptr noundef nonnull @rb_f_load, i32 noundef -1) #7
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.12, ptr noundef nonnull @rb_f_require, i32 noundef 1) #7
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.13, ptr noundef nonnull @rb_f_require_relative, i32 noundef 1) #7
  %i.d = load i64, ptr @rb_cModule, align 8, !tbaa !20
  tail call void @rb_define_method(i64 noundef %i.d, ptr noundef nonnull @.str.14, ptr noundef nonnull @rb_mod_autoload, i32 noundef 2) #7
  %i.e = load i64, ptr @rb_cModule, align 8, !tbaa !20
  tail call void @rb_define_method(i64 noundef %i.e, ptr noundef nonnull @.str.15, ptr noundef nonnull @rb_mod_autoload_p, i32 noundef -1) #7
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.14, ptr noundef nonnull @rb_f_autoload, i32 noundef 2) #7
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.15, ptr noundef nonnull @rb_f_autoload_p, i32 noundef -1) #7
  ret void
}

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_define_hooked_variable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @load_path_getter(i64 %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @rb_loading_box() #7
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17
  ret i64 %i.c
}

; Function Attrs: noreturn
declare void @rb_gvar_readonly_setter(i64 noundef, i64 noundef, ptr noundef) #11

declare void @rb_gvar_box_ready(ptr noundef) local_unnamed_addr #1

declare void @rb_alias_variable(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_define_virtual_variable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @get_LOADED_FEATURES(i64 %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @rb_loading_box() #7
  %i.b = getelementptr i8, ptr %i.a, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !27
  ret i64 %i.c
}

declare extern_weak void @rb_define_global_function(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_f_load(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !20
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = icmp eq i32 %0, 2
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %i.f = phi i64 [ %i.d, %bb.b ], [ 4, %.preheader ]
  %.185.i.lcssa = phi i1 [ %i.e, %bb.b ], [ true, %.preheader ]
  br i1 %.185.i.lcssa, label %rb_scan_args_set.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #20
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.c
  %i.g = tail call i64 @rb_get_path_check_to_string(i64 noundef %i.b) #7 ; 2 uses
  %i.h = tail call i64 @rb_str_encode_ospath(i64 noundef %i.g) #7 ; 3 uses
  %i.i = tail call i64 @rb_find_file(i64 noundef %i.h) #7 ; 2 uses
  %.not.i1 = icmp eq i64 %i.i, 0
  br i1 %.not.i1, label %bb.e, label %load_entrypoint_internal.exit

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %i.j = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22
  %i.l = and i64 %i.k, 8192
  %.not.i.i = icmp eq i64 %i.l, 0
  %i.m = getelementptr i8, ptr %i.j, i64 24       ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.f, %bb.e
  %i.o = phi ptr [ %i.n, %bb.f ], [ %i.m, %bb.e ]
  %i.p = tail call i32 @rb_file_load_ok(ptr noundef %i.o) #7
  %.not10.i = icmp eq i32 %i.p, 0
  br i1 %.not10.i, label %bb.g, label %load_entrypoint_internal.exit

bb.g:                                             ; preds = %RSTRING_PTR.exit.i
  tail call fastcc void @load_failed(i64 noundef %i.g) #23
  unreachable

load_entrypoint_internal.exit:                    ; preds = %rb_scan_args_set.exit, %RSTRING_PTR.exit.i
  %.0.i = phi i64 [ %i.i, %rb_scan_args_set.exit ], [ %i.h, %RSTRING_PTR.exit.i ]
  tail call fastcc void @rb_load_internal(i64 noundef %.0.i, i64 noundef %i.f)
  ret i64 20
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_mod_autoload(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !20
  %i.c = tail call i64 @rb_to_id(i64 noundef %1) #7
  %i.d = tail call i64 @rb_get_path(i64 noundef %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr %i.a, ptr %i.b, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #7, !srcloc !132
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  store volatile i64 %i.d, ptr %i.e, align 8, !tbaa !20
  %i.f = load i64, ptr %i.a, align 8, !tbaa !20
  call void @rb_autoload_str(i64 noundef %0, i64 noundef %i.c, i64 noundef %i.f) #7
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_mod_autoload_p(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = add i32 %0, -3
  %or.cond.i = icmp ult i32 %i.b, -2
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #20
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.c = icmp eq i32 %0, 1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = and i64 %i.e, -5
  %i.g = icmp ne i64 %i.f, 0
  %i.h = zext i1 %i.g to i32
  br label %bb.d

bb.d:                                             ; preds = %rb_check_arity.exit, %bb.c
  %i.i = phi i32 [ %i.h, %bb.c ], [ 1, %rb_check_arity.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.j = load i64, ptr %1, align 8, !tbaa !20
  store i64 %i.j, ptr %i.a, align 8, !tbaa !20
  %i.k = call i64 @rb_check_id(ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call i64 @rb_autoload_at_p(i64 noundef %2, i64 noundef %i.k, i32 noundef %i.i) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i64 [ %i.l, %bb.e ], [ 4, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_f_autoload(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = tail call i64 @rb_vm_cbase() #7
  %i.d = tail call i64 @rb_class_real(i64 noundef %i.c) #22 ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eTypeError, align 8, !tbaa !20
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.25) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !20
  %i.f = tail call i64 @rb_to_id(i64 noundef %1) #7
  %i.g = tail call i64 @rb_get_path(i64 noundef %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr %i.a, ptr %i.b, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #7, !srcloc !132
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  store volatile i64 %i.g, ptr %i.h, align 8, !tbaa !20
  %i.i = load i64, ptr %i.a, align 8, !tbaa !20
  call void @rb_autoload_str(i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_f_autoload_p(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call i64 @rb_vm_cbase() #7          ; 2 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %0, -3
  %or.cond.i.i = icmp ult i32 %i.d, -2
  br i1 %or.cond.i.i, label %bb.c, label %rb_check_arity.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #20
  unreachable

rb_check_arity.exit.i:                            ; preds = %bb.b
  %i.e = icmp eq i32 %0, 1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_check_arity.exit.i
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  %i.h = and i64 %i.g, -5
  %i.i = icmp ne i64 %i.h, 0
  %i.j = zext i1 %i.i to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %rb_check_arity.exit.i
  %i.k = phi i32 [ %i.j, %bb.d ], [ 1, %rb_check_arity.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.l = load i64, ptr %1, align 8, !tbaa !20
  store i64 %i.l, ptr %i.a, align 8, !tbaa !20
  %i.m = call i64 @rb_check_id(ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %rb_mod_autoload_p.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call i64 @rb_autoload_at_p(i64 noundef %i.b, i64 noundef %i.m, i32 noundef %i.k) #7
  br label %rb_mod_autoload_p.exit

rb_mod_autoload_p.exit:                           ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.n, %bb.f ], [ 4, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %rb_mod_autoload_p.exit
  %.0 = phi i64 [ %.0.i, %rb_mod_autoload_p.exit ], [ 4, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_shared_with_p(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_construct_expanded_load_path(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 4) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19
  %i.e = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i64 %i.f, 15
  %i.i = and i64 %i.h, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.e, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i55 = phi i64 [ %i.i, %bb.b ], [ %i.k, %bb.c ]
  %i.l = tail call i64 @rb_ary_hidden_new(i64 noundef %.0.i55) #7 ; 3 uses
  %i.m = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  %i.n = getelementptr i8, ptr %i.e, i64 32
  %i.o = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %i.q = getelementptr i8, ptr %i.o, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.u, %rb_array_len.exit
  %.0 = phi i64 [ 0, %rb_array_len.exit ], [ %i.bh, %bb.u ] ; 5 uses
  %i.r = load i64, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.s = and i64 %i.r, 8192
  %.not.i56 = icmp eq i64 %i.s, 0
  br i1 %.not.i56, label %rb_array_len.exit58, label %rb_array_len.exit58.thread

rb_array_len.exit58:                              ; preds = %bb.d
  %i.t = load i64, ptr %i.m, align 8, !tbaa !21
  %i.u = icmp slt i64 %.0, %i.t
  br i1 %i.u, label %bb.e, label %bb.v

rb_array_len.exit58.thread:                       ; preds = %bb.d
  %i.v = lshr i64 %i.r, 15
  %i.w = and i64 %i.v, 127
  %i.x = icmp samesign ult i64 %.0, %i.w
  br i1 %i.x, label %RARRAY_AREF.exit, label %bb.v

bb.e:                                             ; preds = %rb_array_len.exit58
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !21
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %rb_array_len.exit58.thread, %bb.e
  %.0.i.i = phi ptr [ %i.y, %bb.e ], [ %i.m, %rb_array_len.exit58.thread ]
  %i.z = getelementptr [8 x i8], ptr %.0.i.i, i64 %.0
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !20  ; 5 uses
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = and i64 %i.aa, 7
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = or i1 %i.ab, %i.ad
  br i1 %i.ae, label %rbimpl_RB_TYPE_P_fastpath.exit, label %bb.f

bb.f:                                             ; preds = %RARRAY_AREF.exit
  %i.af = inttoptr i64 %i.aa to ptr
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !22
  %i.ah = and i64 %i.ag, 31
  %i.ai = icmp eq i64 %i.ah, 5
  br label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %RARRAY_AREF.exit, %bb.f
  %.0.i = phi i1 [ %i.ai, %bb.f ], [ false, %RARRAY_AREF.exit ] ; 3 uses
  %i.aj = tail call i64 @rb_get_path_check_to_string(i64 noundef %i.aa) #7 ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !22
  %i.am = and i64 %i.al, 8192
  %.not.i59 = icmp eq i64 %i.am, 0
  %i.an = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  br i1 %.not.i59, label %RSTRING_PTR.exit, label %bb.g

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !21
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %bb.g
  %i.ap = phi ptr [ %i.ao, %bb.g ], [ %i.an, %rbimpl_RB_TYPE_P_fastpath.exit ] ; 3 uses
  br i1 %.0.i, label %bb.h, label %bb.m

bb.h:                                             ; preds = %RSTRING_PTR.exit
  switch i32 %1, label %default.unreachable [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
    i32 0, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call i32 @rb_is_absolute_path(ptr noundef %i.ap) #22
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.m, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ar = load i8, ptr %i.ap, align 1, !tbaa !21
  %cond = icmp eq i8 %i.ar, 126
  br i1 %cond, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.i
  %i.as = load i64, ptr %i.o, align 8, !tbaa !22
  %i.at = and i64 %i.as, 8192
  %.not.i.i60 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i60, label %bb.l, label %RARRAY_AREF.exit62

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !21
  br label %RARRAY_AREF.exit62

RARRAY_AREF.exit62:                               ; preds = %bb.k, %bb.l
  %.0.i.i61 = phi ptr [ %i.au, %bb.l ], [ %i.p, %bb.k ]
  %i.av = getelementptr [8 x i8], ptr %.0.i.i61, i64 %.0
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !20
  br label %bb.u

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.h, %RSTRING_PTR.exit
  %i.ax = load i32, ptr %2, align 4, !tbaa !7
  %.not52 = icmp eq i32 %i.ax, 0
  br i1 %.not52, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ay = tail call i32 @rb_is_absolute_path(ptr noundef %i.ap) #22
  %.not53 = icmp eq i32 %i.ay, 0
  br i1 %.not53, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %2, align 4, !tbaa !7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.az = load i32, ptr %3, align 4, !tbaa !7
  %i.ba = icmp ne i32 %i.az, 0
  %or.cond4.not = select i1 %i.ba, i1 true, i1 %.0.i
  br i1 %or.cond4.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %3, align 4, !tbaa !7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %.0.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bb = tail call i64 @rb_str_freeze(i64 noundef %i.aa) #7 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bc = tail call i64 @rb_get_path_check_convert(i64 noundef %i.aj) #7 ; 2 uses
  %i.bd = tail call i64 @rb_check_realpath(i64 noundef 4, i64 noundef %i.bc, ptr noundef null) #7 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4
  %spec.select = select i1 %i.be, i64 %i.bc, i64 %i.bd
  %i.bf = tail call i64 @rb_fstring(i64 noundef %spec.select) #7
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %RARRAY_AREF.exit62
  %.sink = phi i64 [ %i.bf, %bb.t ], [ %i.aw, %RARRAY_AREF.exit62 ]
  %i.bg = tail call i64 @rb_ary_push(i64 noundef %i.l, i64 noundef %.sink) #7 ; 0 uses
  %i.bh = add nuw nsw i64 %.0, 1
  br label %bb.d, !llvm.loop !133

bb.v:                                             ; preds = %rb_array_len.exit58.thread, %rb_array_len.exit58
  %i.bi = tail call i64 @rb_ary_freeze(i64 noundef %i.l) #7 ; 0 uses
  store i64 %i.l, ptr %i.c, align 8, !tbaa !19
  %i.bj = getelementptr i8, ptr %0, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !11
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !17
  %i.bm = tail call i64 @rb_ary_replace(i64 noundef %i.bk, i64 noundef %i.bl) #7 ; 0 uses
  ret void
}

declare i64 @rb_dir_getwd_ospath() local_unnamed_addr #1

declare i64 @rb_str_equal(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_hidden_new(i64 noundef) local_unnamed_addr #1

declare i64 @rb_get_path_check_to_string(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_is_absolute_path(ptr noundef) local_unnamed_addr #10

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_freeze(i64 noundef) local_unnamed_addr #1

declare i64 @rb_get_path_check_convert(i64 noundef) local_unnamed_addr #1

declare i64 @rb_check_realpath(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_fstring(i64 noundef) local_unnamed_addr #1
end_hunk_2
begin_hunk_3_@features_index_add:bb.a

.loopexit:                                        ; preds = %.lr.ph, %thread-pre-split
  %.04362 = phi ptr [ %.043.lcssa, %thread-pre-split ], [ %.04363, %.lr.ph ] ; 2 uses
  %i.m = phi i8 [ %.pr, %thread-pre-split ], [ %i.i, %.lr.ph ]
  %.not = icmp eq i8 %i.m, 46
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  %i.n = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.04362, ptr noundef nonnull dereferenceable(4) @.str.17) #22
  %i.o = icmp eq i32 %i.n, 0
  %i.p = zext i1 %i.o to i8
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.c
  %.144 = phi ptr [ %.04362, %bb.c ], [ null, %.loopexit ] ; 4 uses
  %.0 = phi i8 [ %i.p, %bb.c ], [ 0, %.loopexit ] ; 2 uses
  %.not47 = icmp eq ptr %.144, null               ; 3 uses
  %i.q = trunc i64 %2 to i1                       ; 2 uses
  %i.r = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 88         ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = ptrtoint ptr %6 to i64                   ; 2 uses
  %i.w = ptrtoint ptr %.144 to i64                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.aa = ptrtoint ptr %5 to i64
  br i1 %i.q, label %.split.us, label %.split.preheader, !prof !138

.split.preheader:                                 ; preds = %bb.d
  %i.ab = select i1 %.not47, ptr %i.g, ptr %.144
  br label %.split

.split.us:                                        ; preds = %bb.d
  br i1 %.not47, label %.split.us.split.us, label %.split.us.split

.split.us.split.us:                               ; preds = %.split.us, %.split.us.split.us.backedge
  %.042.pn.us.us = phi ptr [ %.1.us.us, %.split.us.split.us.backedge ], [ %i.g, %.split.us ] ; 2 uses
  %.1.us.us = getelementptr i8, ptr %.042.pn.us.us, i64 -1 ; 4 uses
  %.not48.us.us = icmp ult ptr %.1.us.us, %i.b
  br i1 %.not48.us.us, label %.split65.us, label %bb.e

bb.e:                                             ; preds = %.split.us.split.us
  %i.ac = load i8, ptr %.1.us.us, align 1, !tbaa !21
  %.not49.us.us = icmp eq i8 %i.ac, 47
  br i1 %.not49.us.us, label %.critedge.us.us, label %.split.us.split.us.backedge

.split.us.split.us.backedge:                      ; preds = %bb.e, %.critedge.us.us
  br label %.split.us.split.us, !llvm.loop !139

.critedge.us.us:                                  ; preds = %bb.e
  %i.ad = ptrtoint ptr %.1.us.us to i64
  %i.ae = xor i64 %i.ad, -1
  %i.af = add i64 %i.ae, %i.r
  %i.ag = call i64 @rb_st_hash(ptr noundef nonnull readonly %.042.pn.us.us, i64 noundef %i.af, i64 noundef 4272357534) #22
  %.val.i.us.us = load ptr, ptr %i.s, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  store ptr %0, ptr %6, align 8, !tbaa !140
  store i64 %2, ptr %i.t, align 8, !tbaa !142
  store i64 0, ptr %i.u, align 8
  %i.ah = call i32 @rb_st_update(ptr noundef %.val.i.us.us, i64 noundef %i.ag, ptr noundef nonnull @features_index_add_single_callback, i64 noundef %i.v) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %.split.us.split.us.backedge

.split.us.split:                                  ; preds = %.split.us, %.split.us.split.backedge
  %.042.pn.us = phi ptr [ %.1.us, %.split.us.split.backedge ], [ %.144, %.split.us ] ; 3 uses
  %.1.us = getelementptr i8, ptr %.042.pn.us, i64 -1 ; 4 uses
  %.not48.us = icmp ult ptr %.1.us, %i.b
  br i1 %.not48.us, label %.split65.us, label %bb.f

bb.f:                                             ; preds = %.split.us.split
  %i.ai = load i8, ptr %.1.us, align 1, !tbaa !21
  %.not49.us = icmp eq i8 %i.ai, 47
  br i1 %.not49.us, label %.critedge.us, label %.split.us.split.backedge

.split.us.split.backedge:                         ; preds = %bb.f, %.critedge.us
  br label %.split.us.split, !llvm.loop !139

.critedge.us:                                     ; preds = %bb.f
  %i.aj = ptrtoint ptr %.1.us to i64
  %i.ak = xor i64 %i.aj, -1                       ; 2 uses
  %i.al = add i64 %i.ak, %i.r
  %i.am = call i64 @rb_st_hash(ptr noundef nonnull readonly %.042.pn.us, i64 noundef %i.al, i64 noundef 4272357534) #22
  %.val.i.us = load ptr, ptr %i.s, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  store ptr %0, ptr %6, align 8, !tbaa !140
  store i64 %2, ptr %i.t, align 8, !tbaa !142
  store i64 0, ptr %i.u, align 8
  %i.an = call i32 @rb_st_update(ptr noundef %.val.i.us, i64 noundef %i.am, ptr noundef nonnull @features_index_add_single_callback, i64 noundef %i.v) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  %i.ao = add i64 %i.ak, %i.w
  %i.ap = call i64 @rb_st_hash(ptr noundef nonnull readonly %.042.pn.us, i64 noundef %i.ao, i64 noundef 4272357534) #22
  %.val.i51.us = load ptr, ptr %i.s, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  store ptr %0, ptr %5, align 8, !tbaa !140
  store i64 %2, ptr %i.x, align 8, !tbaa !142
  store i8 %.0, ptr %i.y, align 8, !tbaa !143
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.z, i8 0, i64 7, i1 false)
  %i.aq = call i32 @rb_st_update(ptr noundef %.val.i51.us, i64 noundef %i.ap, ptr noundef nonnull @features_index_add_single_callback, i64 noundef %i.aa) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %.split.us.split.backedge

.split:                                           ; preds = %.split.preheader, %bb.g
  %.042.pn = phi ptr [ %.1, %bb.g ], [ %i.ab, %.split.preheader ]
  %.1 = getelementptr i8, ptr %.042.pn, i64 -1    ; 3 uses
  %.not48 = icmp ult ptr %.1, %i.b
  br i1 %.not48, label %.split65.us, label %bb.g

bb.g:                                             ; preds = %.split
  %i.ar = load i8, ptr %.1, align 1, !tbaa !21
  %.not49 = icmp eq i8 %i.ar, 47
  br i1 %.not49, label %.critedge, label %.split, !llvm.loop !139

.critedge:                                        ; preds = %bb.g
  call void @rb_unexpected_type(i64 noundef range(i64 1, 0) %2, i32 noundef 21) #24
  unreachable

.split65.us:                                      ; preds = %.split, %.split.us.split, %.split.us.split.us
  br i1 %i.q, label %features_index_add_single.exit55, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i53, !prof !138

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i53:      ; preds = %.split65.us
  call void @rb_unexpected_type(i64 noundef range(i64 1, 0) %2, i32 noundef 21) #24
  unreachable

features_index_add_single.exit55:                 ; preds = %.split65.us
  %i.as = call i64 @rb_st_hash(ptr noundef nonnull readonly %i.b, i64 noundef %i.f, i64 noundef 4272357534) #22
  %.val.i54 = load ptr, ptr %i.s, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store ptr %0, ptr %4, align 8, !tbaa !140
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.at, align 8, !tbaa !142
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = ptrtoint ptr %4 to i64
  store i64 0, ptr %i.au, align 8
  %i.aw = call i32 @rb_st_update(ptr noundef %.val.i54, i64 noundef %i.as, ptr noundef nonnull @features_index_add_single_callback, i64 noundef %i.av) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br i1 %.not47, label %bb.h, label %features_index_add_single.exit58

features_index_add_single.exit58:                 ; preds = %features_index_add_single.exit55
  %i.ax = ptrtoint ptr %i.b to i64
  %i.ay = sub i64 %i.w, %i.ax
  %i.az = call i64 @rb_st_hash(ptr noundef nonnull readonly %i.b, i64 noundef %i.ay, i64 noundef 4272357534) #22
  %.val.i57 = load ptr, ptr %i.s, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store ptr %0, ptr %3, align 8, !tbaa !140
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.ba, align 8, !tbaa !142
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %.0, ptr %i.bb, align 8, !tbaa !143
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bc, i8 0, i64 7, i1 false)
  %i.bd = ptrtoint ptr %3 to i64
  %i.be = call i32 @rb_st_update(ptr noundef %.val.i57, i64 noundef %i.az, ptr noundef nonnull @features_index_add_single_callback, i64 noundef %i.bd) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.h

bb.h:                                             ; preds = %features_index_add_single.exit58, %features_index_add_single.exit55
  ret void
}

declare i32 @rb_st_foreach(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @loaded_features_index_clear_i(i64 %0, i64 noundef %1, i64 %2) #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr
  tail call void @ruby_xfree(ptr noundef %i.e) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 2
}

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #1

declare i64 @rb_hash_clear(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_resurrect(i64 noundef) local_unnamed_addr #1

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #1

declare void @rb_ary_store(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_hash_aref(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @ruby_xfree(ptr noundef) local_unnamed_addr #1

declare ptr @rb_string_value_ptr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @features_index_add_single_callback(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !142  ; 3 uses
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !143, !range !33, !noundef !34
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8, !tbaa !20     ; 6 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.b, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !27
  %i.l = ashr i64 %i.h, 1                         ; 2 uses
  %i.m = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = and i64 %i.n, 8192
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.m, i64 16
  br label %RARRAY_AREF.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.m, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.p, %bb.d ], [ %i.r, %bb.e ]
  %i.s = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.l
  %i.t = load i64, ptr %i.s, align 8, !tbaa !20
  %i.u = tail call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #26 ; 4 uses
  store i64 2, ptr %i.u, align 8, !tbaa !120
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 2, ptr %i.v, align 8, !tbaa !144
  %.cast = ptrtoint ptr %i.u to i64
  br i1 %i.g, label %bb.f, label %is_rbext_path.exit

bb.f:                                             ; preds = %RARRAY_AREF.exit
  %i.w = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !122  ; 2 uses
  %i.z = icmp slt i64 %i.y, 4
  br i1 %i.z, label %is_rbext_path.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !22
  %i.ab = and i64 %i.aa, 8192
  %.not.i.i44 = icmp eq i64 %i.ab, 0
  %i.ac = getelementptr i8, ptr %i.w, i64 24      ; 2 uses
  br i1 %.not.i.i44, label %RSTRING_PTR.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.h, %bb.g
  %i.ae = phi ptr [ %i.ad, %bb.h ], [ %i.ac, %bb.g ]
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.y
  %i.ag = getelementptr i8, ptr %i.af, i64 -3
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(4) @.str.17) #22
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  br label %is_rbext_path.exit

is_rbext_path.exit:                               ; preds = %RSTRING_PTR.exit.i, %bb.f, %RARRAY_AREF.exit
  %i.ak = phi i32 [ 0, %RARRAY_AREF.exit ], [ %i.aj, %RSTRING_PTR.exit.i ], [ 1, %bb.f ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr [8 x i8], ptr %i.al, i64 %i.am
  store i64 %i.l, ptr %i.an, align 8, !tbaa !20
  %i.ao = ashr i64 %i.d, 1
  %i.ap = xor i32 %i.ak, 1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr [8 x i8], ptr %i.al, i64 %i.aq
  store i64 %i.ao, ptr %i.ar, align 8, !tbaa !20
  store i64 %.cast, ptr %1, align 8, !tbaa !20
  br label %bb.x

bb.i:                                             ; preds = %bb.b
  %i.as = inttoptr i64 %i.h to ptr                ; 6 uses
  br i1 %i.g, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %cond = icmp eq i64 %i.h, 0
  br i1 %cond, label %rbimpl_size_mul_or_raise.exit.i.i.i, label %rb_darray_size.exit.lr.ph

rb_darray_size.exit.lr.ph:                        ; preds = %bb.j
  %i.at = getelementptr i8, ptr %i.b, i64 56
  %i.au = load i64, ptr %i.at, align 8, !tbaa !27
  %i.av = load i64, ptr %i.as, align 8, !tbaa !120 ; 7 uses
  %i.aw = getelementptr i8, ptr %i.as, i64 16     ; 2 uses
  %i.ax = inttoptr i64 %i.au to ptr               ; 3 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %i.az = getelementptr i8, ptr %i.ax, i64 32
  %.not85 = icmp eq i64 %i.av, 0
  br i1 %.not85, label %.critedge.rb_darray_size.exit.i_crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %rb_darray_size.exit.lr.ph
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !22
  %i.bb = and i64 %i.ba, 8192
  %.not.i.i45 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i45, label %.lr.ph.split.us, label %RARRAY_AREF.exit47

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !21
  br label %RARRAY_AREF.exit47.us75

RARRAY_AREF.exit47.us75:                          ; preds = %rb_darray_size.exit.us80, %.lr.ph.split.us
  %.0427274.us = phi i64 [ 0, %.lr.ph.split.us ], [ %i.ca, %rb_darray_size.exit.us80 ] ; 4 uses
  %i.bd = getelementptr [8 x i8], ptr %i.aw, i64 %.0427274.us
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !20
  %i.bf = getelementptr [8 x i8], ptr %i.bc, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !20 ; 5 uses
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = and i64 %i.bg, 7
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = or i1 %i.bh, %i.bj
  br i1 %i.bk, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %bb.k, !prof !145

bb.k:                                             ; preds = %RARRAY_AREF.exit47.us75
  %i.bl = inttoptr i64 %i.bg to ptr               ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !22 ; 2 uses
  %i.bn = and i64 %i.bm, 31
  %i.bo = icmp eq i64 %i.bn, 5
  br i1 %i.bo, label %Check_Type.exit.us77, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !138

Check_Type.exit.us77:                             ; preds = %bb.k
  %i.bp = getelementptr i8, ptr %i.bl, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !122 ; 2 uses
  %i.br = icmp slt i64 %i.bq, 4
  br i1 %i.br, label %rb_darray_size.exit.i, label %bb.l

bb.l:                                             ; preds = %Check_Type.exit.us77
  %i.bs = and i64 %i.bm, 8192
  %.not.i.i48.us78 = icmp eq i64 %i.bs, 0
  %i.bt = getelementptr i8, ptr %i.bl, i64 24     ; 2 uses
  br i1 %.not.i.i48.us78, label %is_rbext_path.exit51.us79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !21
  br label %is_rbext_path.exit51.us79

is_rbext_path.exit51.us79:                        ; preds = %bb.m, %bb.l
  %i.bv = phi ptr [ %i.bu, %bb.m ], [ %i.bt, %bb.l ]
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.bq
  %i.bx = getelementptr i8, ptr %i.bw, i64 -3
  %i.by = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(4) @.str.17) #22
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %rb_darray_size.exit.us80, label %rb_darray_size.exit.i

rb_darray_size.exit.us80:                         ; preds = %is_rbext_path.exit51.us79
  %i.ca = add nuw i64 %.0427274.us, 1             ; 2 uses
  %exitcond98.not = icmp eq i64 %i.ca, %i.av
  br i1 %exitcond98.not, label %.critedge, label %RARRAY_AREF.exit47.us75

RARRAY_AREF.exit47:                               ; preds = %.lr.ph, %rb_darray_size.exit
  %.0427274 = phi i64 [ %i.cy, %rb_darray_size.exit ], [ 0, %.lr.ph ] ; 4 uses
  %i.cb = getelementptr [8 x i8], ptr %i.aw, i64 %.0427274
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !20
  %i.cd = getelementptr [8 x i8], ptr %i.ay, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !20 ; 5 uses
  %i.cf = icmp eq i64 %i.ce, 0
  %i.cg = and i64 %i.ce, 7
  %i.ch = icmp ne i64 %i.cg, 0
  %i.ci = or i1 %i.cf, %i.ch
  br i1 %i.ci, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %bb.n, !prof !145

bb.n:                                             ; preds = %RARRAY_AREF.exit47
  %i.cj = inttoptr i64 %i.ce to ptr               ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !22 ; 2 uses
  %i.cl = and i64 %i.ck, 31
  %i.cm = icmp eq i64 %i.cl, 5
  br i1 %i.cm, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !138

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.n, %RARRAY_AREF.exit47, %bb.k, %RARRAY_AREF.exit47.us75
  %.us-phi82 = phi i64 [ %i.bg, %bb.k ], [ %i.bg, %RARRAY_AREF.exit47.us75 ], [ %i.ce, %RARRAY_AREF.exit47 ], [ %i.ce, %bb.n ]
  tail call void @rb_unexpected_type(i64 noundef %.us-phi82, i32 noundef 5) #24
  unreachable

Check_Type.exit:                                  ; preds = %bb.n
  %i.cn = getelementptr i8, ptr %i.cj, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !122 ; 2 uses
  %i.cp = icmp slt i64 %i.co, 4
  br i1 %i.cp, label %rb_darray_size.exit.i, label %bb.o

bb.o:                                             ; preds = %Check_Type.exit
  %i.cq = and i64 %i.ck, 8192
  %.not.i.i48 = icmp eq i64 %i.cq, 0
  %i.cr = getelementptr i8, ptr %i.cj, i64 24     ; 2 uses
  br i1 %.not.i.i48, label %is_rbext_path.exit51, label %bb.p

end_hunk_3
begin_hunk_4_@features_index_add_single_callback:bb.a
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.co
  %i.cv = getelementptr i8, ptr %i.cu, i64 -3
  %i.cw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cv, ptr noundef nonnull dereferenceable(4) @.str.17) #22
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %rb_darray_size.exit, label %rb_darray_size.exit.i

rb_darray_size.exit:                              ; preds = %is_rbext_path.exit51
  %i.cy = add nuw i64 %.0427274, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cy, %i.av
  br i1 %exitcond.not, label %.critedge, label %RARRAY_AREF.exit47

.critedge:                                        ; preds = %rb_darray_size.exit, %rb_darray_size.exit.us80, %bb.i
  %.not.i.i52 = icmp eq i64 %i.h, 0
  br i1 %.not.i.i52, label %rbimpl_size_mul_or_raise.exit.i.i.i, label %.critedge.rb_darray_size.exit.i_crit_edge

.critedge.rb_darray_size.exit.i_crit_edge:        ; preds = %rb_darray_size.exit.lr.ph, %.critedge
  %.pre = load i64, ptr %i.as, align 8, !tbaa !120
  br label %rb_darray_size.exit.i

rb_darray_size.exit.i:                            ; preds = %is_rbext_path.exit51, %Check_Type.exit, %Check_Type.exit.us77, %is_rbext_path.exit51.us79, %.critedge.rb_darray_size.exit.i_crit_edge
  %i.cz = phi i64 [ %.pre, %.critedge.rb_darray_size.exit.i_crit_edge ], [ %i.av, %Check_Type.exit.us77 ], [ %i.av, %is_rbext_path.exit51.us79 ], [ %i.av, %Check_Type.exit ], [ %i.av, %is_rbext_path.exit51 ] ; 2 uses
  %.363 = phi i64 [ -1, %.critedge.rb_darray_size.exit.i_crit_edge ], [ %.0427274.us, %Check_Type.exit.us77 ], [ %.0427274.us, %is_rbext_path.exit51.us79 ], [ %.0427274, %Check_Type.exit ], [ %.0427274, %is_rbext_path.exit51 ] ; 3 uses
  %i.da = getelementptr i8, ptr %i.as, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !144
  %.fr.i = freeze i64 %i.db                       ; 3 uses
  %i.dc = icmp ult i64 %i.cz, %.fr.i
  br i1 %i.dc, label %rb_darray_ensure_space.exit, label %bb.q

bb.q:                                             ; preds = %rb_darray_size.exit.i
  %i.dd = icmp eq i64 %.fr.i, 0
  %i.de = shl i64 %.fr.i, 1                       ; 3 uses
  br i1 %i.dd, label %rbimpl_size_mul_or_raise.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = icmp ugt i64 %i.de, 2305843009213693951
  br i1 %i.df, label %bb.s, label %rbimpl_size_mul_or_raise.exit.i.i.i, !prof !146

bb.s:                                             ; preds = %bb.r
  tail call void @ruby_malloc_size_overflow(i64 noundef %i.de, i64 noundef 8) #20
  unreachable

rbimpl_size_mul_or_raise.exit.i.i.i:              ; preds = %.critedge, %bb.q, %bb.j, %bb.r
  %.not.i.i5265 = phi i1 [ false, %bb.r ], [ false, %bb.q ], [ true, %.critedge ], [ true, %bb.j ]
  %.361 = phi i64 [ %.363, %bb.r ], [ %.363, %bb.q ], [ -1, %.critedge ], [ -1, %bb.j ]
  %i.dg = phi i64 [ %i.de, %bb.r ], [ 1, %bb.q ], [ 1, %.critedge ], [ 1, %bb.j ] ; 2 uses
  %i.dh = shl nuw i64 %i.dg, 3                    ; 2 uses
  %i.di = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dh, i64 16) ; 2 uses
  %i.dj = extractvalue { i64, i1 } %i.di, 1
  br i1 %i.dj, label %bb.t, label %rb_darray_realloc_mul_add.exit.i.i, !prof !147

bb.t:                                             ; preds = %rbimpl_size_mul_or_raise.exit.i.i.i
  tail call void @ruby_malloc_add_size_overflow(i64 noundef %i.dh, i64 noundef 16) #20
  unreachable

rb_darray_realloc_mul_add.exit.i.i:               ; preds = %rbimpl_size_mul_or_raise.exit.i.i.i
  %i.dk = extractvalue { i64, i1 } %i.di, 0
  %i.dl = tail call nonnull ptr @ruby_xrealloc(ptr noundef %i.as, i64 noundef %i.dk) #27 ; 5 uses
  br i1 %.not.i.i5265, label %bb.u, label %rb_darray_realloc_mul_add.exit.i.i.rb_darray_resize_capa_impl.exit.i_crit_edge

rb_darray_realloc_mul_add.exit.i.i.rb_darray_resize_capa_impl.exit.i_crit_edge: ; preds = %rb_darray_realloc_mul_add.exit.i.i
  %.pre100.pre = load i64, ptr %i.dl, align 8, !tbaa !120
  br label %rb_darray_resize_capa_impl.exit.i

bb.u:                                             ; preds = %rb_darray_realloc_mul_add.exit.i.i
  store i64 0, ptr %i.dl, align 8, !tbaa !120
  br label %rb_darray_resize_capa_impl.exit.i

rb_darray_resize_capa_impl.exit.i:                ; preds = %rb_darray_realloc_mul_add.exit.i.i.rb_darray_resize_capa_impl.exit.i_crit_edge, %bb.u
  %.pre100 = phi i64 [ %.pre100.pre, %rb_darray_realloc_mul_add.exit.i.i.rb_darray_resize_capa_impl.exit.i_crit_edge ], [ 0, %bb.u ]
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  store i64 %i.dg, ptr %i.dm, align 8, !tbaa !144
  %i.dn = ptrtoint ptr %i.dl to i64
  br label %rb_darray_ensure_space.exit

rb_darray_ensure_space.exit:                      ; preds = %rb_darray_size.exit.i, %rb_darray_resize_capa_impl.exit.i
  %.pre-phi = phi i64 [ %i.dn, %rb_darray_resize_capa_impl.exit.i ], [ %i.h, %rb_darray_size.exit.i ]
  %i.do = phi i64 [ %.pre100, %rb_darray_resize_capa_impl.exit.i ], [ %i.cz, %rb_darray_size.exit.i ]
  %.0 = phi ptr [ %i.dl, %rb_darray_resize_capa_impl.exit.i ], [ %i.as, %rb_darray_size.exit.i ] ; 4 uses
  %.362 = phi i64 [ %.361, %rb_darray_resize_capa_impl.exit.i ], [ %.363, %rb_darray_size.exit.i ] ; 3 uses
  %i.dp = ashr i64 %i.d, 1                        ; 2 uses
  %i.dq = getelementptr i8, ptr %.0, i64 16       ; 2 uses
  %i.dr = getelementptr [8 x i8], ptr %i.dq, i64 %i.do
  store i64 %i.dp, ptr %i.dr, align 8, !tbaa !20
  %i.ds = load i64, ptr %.0, align 8, !tbaa !120
  %i.dt = add i64 %i.ds, 1
  store i64 %i.dt, ptr %.0, align 8, !tbaa !120
  store i64 %.pre-phi, ptr %1, align 8, !tbaa !20
  %i.du = icmp sgt i64 %.362, -1
  br i1 %i.du, label %rb_darray_size.exit54, label %bb.x

rb_darray_size.exit54:                            ; preds = %rb_darray_ensure_space.exit
  %i.dv = load i64, ptr %.0, align 8, !tbaa !120
  %i.dw = xor i64 %.362, -1
  %i.dx = add i64 %i.dv, %i.dw                    ; 3 uses
  %i.dy = icmp ugt i64 %i.dx, 2305843009213693951
  br i1 %i.dy, label %bb.v, label %rbimpl_size_mul_or_raise.exit, !prof !147

bb.v:                                             ; preds = %rb_darray_size.exit54
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.dx) #20
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %rb_darray_size.exit54
  %i.dz = getelementptr [8 x i8], ptr %i.dq, i64 %.362 ; 3 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %i.eb = shl nuw i64 %i.dx, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ea, ptr noundef nonnull align 1 %i.dz, i64 noundef %i.eb, i1 noundef false) #7
  store i64 %i.dp, ptr %i.dz, align 8, !tbaa !20
  br label %bb.x

bb.w:                                             ; preds = %bb.a
  store i64 %i.d, ptr %1, align 8, !tbaa !20
  br label %bb.x

bb.x:                                             ; preds = %rb_darray_ensure_space.exit, %rbimpl_size_mul_or_raise.exit, %is_rbext_path.exit, %bb.w
  ret i32 0
}

; Function Attrs: cold noreturn
declare void @rb_unexpected_type(i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_st_hash(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @ruby_malloc_add_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #17

; Function Attrs: allocsize(1)
declare nonnull ptr @ruby_xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #11

declare i64 @rb_module_new() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 0, 9) i32 @load_wrapping(ptr noundef initializes((128, 136)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  %i.d = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !52  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.val, i64 240     ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !105
  store volatile i64 %i.f, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr i8, ptr %.val, i64 232     ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !108
  store volatile i64 %i.h, ptr %i.b, align 8, !tbaa !20
  %i.i = getelementptr i8, ptr %0, i64 128
  store i64 4, ptr %i.i, align 8, !tbaa !36
  %i.j = tail call i64 @rb_obj_class(i64 noundef %2) #7
  %i.k = load i64, ptr @rb_cBox, align 8, !tbaa !20
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @rb_get_box_t(i64 noundef %2) #7
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !117  ; 2 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i64 @rb_vm_top_self() #22
  %i.q = tail call i64 @rb_obj_clone(i64 noundef %i.p) #7 ; 2 uses
  store i64 %i.q, ptr %i.n, align 8, !tbaa !117
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.r = tail call i64 @rb_vm_top_self() #22
  %i.s = tail call i64 @rb_obj_clone(i64 noundef %i.r) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %storemerge = phi i64 [ %i.s, %bb.d ], [ %i.q, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  store i64 %storemerge, ptr %i.g, align 8, !tbaa !108
  store i64 %2, ptr %i.e, align 8, !tbaa !105
  tail call void @rb_extend_object(i64 noundef %storemerge, i64 noundef %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %i.t, align 8, !tbaa !47
  store i64 36, ptr %3, align 8, !tbaa !49
  %i.u = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !51
  %.0.1.val = load ptr, ptr %i.d, align 8, !tbaa !52, !nonnull !34, !noundef !34 ; 2 uses
  %4 = getelementptr i8, ptr %.0.1.val, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !53       ; 2 uses
  %6 = getelementptr i8, ptr %.0.1.val, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = getelementptr i8, ptr %5, i64 88
  %.val5.i = load ptr, ptr %8, align 8, !tbaa !73
  %.not.i.i = icmp eq ptr %.val5.i, %7
  br i1 %.not.i.i, label %bb.f, label %rb_ec_vm_lock_rec.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %5, i64 96
  %i.y = load i32, ptr %i.x, align 8, !tbaa !91
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %.0.i, ptr %i.z, align 4, !tbaa !92
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.ab, ptr %i.aa, align 8
  %i.ac = tail call ptr @llvm.stacksave.p0()
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.aa)
  %.not28 = icmp eq i32 %i.ae, 0
  br i1 %.not28, label %bb.h, label %bb.g, !prof !93

bb.g:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.c, align 8, !tbaa !30
  %i.af = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  br label %bb.i

bb.h:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %3, ptr %i.u, align 8, !tbaa !50
  call fastcc void @load_iseq_eval(ptr noundef nonnull %0, i64 noundef %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ag = phi i32 [ 0, %bb.h ], [ %i.af, %bb.g ]
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !51
  store ptr %i.ah, ptr %i.u, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.0..0..0..0.5 = load volatile i64, ptr %i.b, align 8, !tbaa !20
  store i64 %.0..0..0..0.5, ptr %i.g, align 8, !tbaa !108
  %.0..0..0..0.6 = load volatile i64, ptr %i.a, align 8, !tbaa !20
  store i64 %.0..0..0..0.6, ptr %i.e, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.ag
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @load_iseq_eval(ptr noundef %0, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %2 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.pm_parse_result_t, align 8  ; 9 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = tail call ptr @rb_loading_box() #7       ; 2 uses
  %i.g = tail call ptr @rb_iseq_load_iseq(i64 noundef %1) #7 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  store volatile ptr %i.i, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.j = tail call i64 @rb_vm_push_frame_fname(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %1) #7
  store i64 %i.j, ptr %i.b, align 8, !tbaa !20
  %i.k = getelementptr i8, ptr %i.f, i64 80
  %i.l = load i64, ptr %i.k, align 8, !tbaa !114  ; 4 uses
  %i.m = tail call i32 @rb_ruby_default_parser() #7
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1000) %3, i8 0, i64 1000, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 752
  store i32 1, ptr %i.o, align 8, !tbaa !148
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 976
  store i32 1, ptr %i.p, align 8, !tbaa !175
  %i.q = call i64 @pm_load_parse_file(ptr noundef nonnull %3, i64 noundef %1, ptr noundef null) #7 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4
  br i1 %i.r, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.t = call i64 @rb_fstring_new(ptr noundef nonnull @.str.19, i64 noundef 16) #7
  %i.u = call i64 @rb_hash_aref(i64 noundef %i.l, i64 noundef %1) #7 ; 2 uses
  %i.v = and i64 %i.u, -5
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.e, label %realpath_internal_cached.exit

bb.e:                                             ; preds = %bb.d
  %i.w = call i64 @rb_realpath_internal(i64 noundef 4, i64 noundef %1, i32 noundef 1) #7 ; 2 uses
  %i.x = call i64 @rb_fstring(i64 noundef %1) #7
  %i.y = call i64 @rb_fstring(i64 noundef %i.w) #7
  %i.z = call i64 @rb_hash_aset(i64 noundef %i.l, i64 noundef %i.x, i64 noundef %i.y) #7 ; 0 uses
  br label %realpath_internal_cached.exit

realpath_internal_cached.exit:                    ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.w, %bb.e ], [ %i.u, %bb.d ]
  %i.aa = call ptr @pm_iseq_new_top(ptr noundef nonnull %i.s, i64 noundef %i.t, i64 noundef %1, i64 noundef %.0.i, ptr noundef null, ptr noundef nonnull %i.c) #7
  call void @pm_parse_result_free(ptr noundef nonnull %3) #7
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !7   ; 2 uses
  %.not30 = icmp eq i32 %i.ab, 0
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %realpath_internal_cached.exit
  call void @rb_jump_tag(i32 noundef %i.ab) #20
  unreachable

bb.g:                                             ; preds = %realpath_internal_cached.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  call void @rb_vm_pop_frame(ptr noundef %.0..0..0..0..0..0..i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store ptr %i.b, ptr %i.d, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #7, !srcloc !176
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.ad = load volatile i64, ptr %i.ac, align 8, !tbaa !20 ; 0 uses
  call void @pm_parse_result_free(ptr noundef nonnull %3) #7
  call void @rb_exc_raise(i64 noundef %i.q) #20
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.ae = tail call i64 @rb_parser_new() #7       ; 2 uses
  %i.af = tail call i64 @rb_parser_set_context(i64 noundef %i.ae, ptr noundef null, i32 noundef 0) #7 ; 0 uses
  %i.ag = tail call i64 @rb_parser_load_file(i64 noundef %i.ae, i64 noundef %1) #7 ; 2 uses
  %i.ah = tail call ptr @rb_ruby_ast_data_get(i64 noundef %i.ag) #7
  %i.ai = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.19, i64 noundef 16) #7
  %i.aj = tail call i64 @rb_hash_aref(i64 noundef %i.l, i64 noundef %1) #7 ; 2 uses
  %i.ak = and i64 %i.aj, -5
  %.not.i31 = icmp eq i64 %i.ak, 0
  br i1 %.not.i31, label %bb.j, label %realpath_internal_cached.exit33

bb.j:                                             ; preds = %bb.i
  %i.al = tail call i64 @rb_realpath_internal(i64 noundef 4, i64 noundef %1, i32 noundef 1) #7 ; 2 uses
  %i.am = tail call i64 @rb_fstring(i64 noundef %1) #7
  %i.an = tail call i64 @rb_fstring(i64 noundef %i.al) #7
  %i.ao = tail call i64 @rb_hash_aset(i64 noundef %i.l, i64 noundef %i.am, i64 noundef %i.an) #7 ; 0 uses
  br label %realpath_internal_cached.exit33

realpath_internal_cached.exit33:                  ; preds = %bb.i, %bb.j
  %.0.i32 = phi i64 [ %i.al, %bb.j ], [ %i.aj, %bb.i ]
  %i.ap = tail call ptr @rb_iseq_new_top(i64 noundef %i.ag, i64 noundef %i.ai, i64 noundef %1, i64 noundef %.0.i32, ptr noundef null) #7
  tail call void @rb_ast_dispose(ptr noundef %i.ah) #7
  br label %bb.k

bb.k:                                             ; preds = %realpath_internal_cached.exit33, %bb.g
  %.0 = phi ptr [ %i.aa, %bb.g ], [ %i.ap, %realpath_internal_cached.exit33 ]
  call void @rb_vm_pop_frame(ptr noundef %.0..0..0..0..0..0..i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store ptr %i.b, ptr %i.e, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #7, !srcloc !177
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  %i.ar = load volatile i64, ptr %i.aq, align 8, !tbaa !20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %.1 = phi ptr [ %i.g, %bb.a ], [ %.0, %bb.k ]   ; 2 uses
  %i.as = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.as, align 8, !tbaa !52, !nonnull !34, !noundef !34
  %i.at = getelementptr i8, ptr %.val.i, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !72 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !178
  %i.ax = and i32 %i.aw, 8192
  %.not.i34 = icmp eq i32 %i.ax, 0
  br i1 %.not.i34, label %rb_exec_event_hook_script_compiled.exit, label %bb.m, !prof !93

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr i8, ptr %i.au, i64 16
  %i.az = getelementptr i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !179 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !180
  %i.bd = ptrtoint ptr %.1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i32 8192, ptr %2, align 8, !tbaa !183
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.be, align 8, !tbaa !185
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ba, ptr %i.bf, align 8, !tbaa !186
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.bc, ptr %i.bg, align 8, !tbaa !187
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  store i64 %i.bd, ptr %i.bi, align 8, !tbaa !188
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 36, ptr %i.bj, align 8, !tbaa !189
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.bk, align 8, !tbaa !190
  call void @rb_exec_event_hooks(ptr noundef nonnull %2, ptr noundef %i.ay, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %rb_exec_event_hook_script_compiled.exit

rb_exec_event_hook_script_compiled.exit:          ; preds = %bb.l, %bb.m
end_hunk_4
begin_hunk_5_@rb_vm_jump_tag_but_local_jump
declare void @rb_vm_jump_tag_but_local_jump(i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #19

declare void @rb_ec_vm_lock_rec_release(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @rb_file_load_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_load_fail(i64 noundef, ptr noundef) local_unnamed_addr #11

declare i64 @rb_filesystem_str_new_cstr(ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_subseq(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_obj_freeze_inline(i64 noundef) local_unnamed_addr #1

declare i32 @rb_find_file_ext(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_dup(i64 noundef) local_unnamed_addr #1

declare i32 @rb_st_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @rb_ractor_main_p_() local_unnamed_addr #1

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #1

declare i64 @rb_vm_call_cfunc_in_box(i64 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @run_static_ext_init(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = inttoptr i64 %0 to ptr
  %i.d = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.g, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.j = ptrtoint ptr %i.i to i64
  store i64 %i.j, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.k = getelementptr i8, ptr %i.c, i64 584
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102  ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.m = call i32 @rb_st_delete(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %.not6 = icmp eq i32 %i.m, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.b, align 8, !tbaa !20
  %i.o = inttoptr i64 %i.n to ptr
  call void %i.o() #7
  br label %bb.e

bb.e:                                             ; preds = %RSTRING_PTR.exit, %bb.c, %bb.d
  %.0 = phi i64 [ 20, %bb.d ], [ 0, %bb.c ], [ 0, %RSTRING_PTR.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @load_ext(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i64 %0, ptr %i.b, align 8, !tbaa !20
  %i.f = tail call ptr @rb_loading_box() #7       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i64 0, ptr %i.c, align 8, !tbaa !20
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.f, i64 128
  %i.h = load i8, ptr %i.g, align 8, !tbaa !191, !range !33, !noundef !34
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.f, align 8, !tbaa !35
  %i.k = call i64 @rb_box_local_extension(i64 noundef %i.j, i64 noundef %1, i64 noundef %0, ptr noundef nonnull %i.c) #7 ; 2 uses
  store i64 %i.k, ptr %i.b, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.l = phi i64 [ %i.k, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ]
  call void @rb_scope_visibility_set(i32 noundef 1) #7
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = and i64 %i.n, 8192
  %.not.i = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.d, %bb.e
  %i.r = phi ptr [ %i.q, %bb.e ], [ %i.p, %bb.d ]
  %i.s = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !22
  %i.u = and i64 %i.t, 8192
  %.not.i9 = icmp eq i64 %i.u, 0
  %i.v = getelementptr i8, ptr %i.s, i64 24       ; 2 uses
  br i1 %.not.i9, label %RSTRING_PTR.exit10, label %bb.f

bb.f:                                             ; preds = %RSTRING_PTR.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  br label %RSTRING_PTR.exit10

RSTRING_PTR.exit10:                               ; preds = %RSTRING_PTR.exit, %bb.f
  %i.x = phi ptr [ %i.w, %bb.f ], [ %i.v, %RSTRING_PTR.exit ]
  %i.y = call ptr @dln_load_feature(ptr noundef %i.r, ptr noundef %i.x) #7
  %i.z = load i64, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %.not8 = icmp eq i64 %i.z, 0
  br i1 %.not8, label %bb.h, label %bb.g

bb.g:                                             ; preds = %RSTRING_PTR.exit10
  call void @rb_box_cleanup_local_extension(i64 noundef %i.z) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %RSTRING_PTR.exit10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store ptr %i.b, ptr %i.d, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #7, !srcloc !192
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.ab = load volatile i64, ptr %i.aa, align 8, !tbaa !20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store ptr %i.a, ptr %i.e, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #7, !srcloc !193
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  %i.ad = load volatile i64, ptr %i.ac, align 8, !tbaa !20 ; 0 uses
  %i.ae = ptrtoint ptr %i.y to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i64 %i.ae
}

declare i64 @rb_vm_make_jump_tag_but_local_jump(i32 noundef, i64 noundef) local_unnamed_addr #1

declare noalias nonnull ptr @ruby_strdup(ptr noundef) local_unnamed_addr #1

declare i64 @rb_thread_shield_new() local_unnamed_addr #1

declare i32 @rb_st_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i1 @rb_thread_shield_owned(i64 noundef) local_unnamed_addr #1

declare i64 @rb_warning_string(ptr noundef, ...) local_unnamed_addr #1

declare void @rb_backtrace_each(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_append(i64 noundef, i64 noundef) #1

declare void @rb_warning(ptr noundef, ...) local_unnamed_addr #1

declare i64 @rb_thread_shield_wait(i64 noundef) local_unnamed_addr #1

declare i32 @rb_st_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i64 @rb_box_local_extension(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_scope_visibility_set(i32 noundef) local_unnamed_addr #1

declare ptr @dln_load_feature(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_box_cleanup_local_extension(i64 noundef) local_unnamed_addr #1

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 3) i32 @release_thread_shield(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !20     ; 2 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not6 = icmp eq i64 %2, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @rb_thread_shield_destroy(i64 noundef %i.a) #7 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = tail call i64 @rb_thread_shield_release(i64 noundef %i.a) #7
  %.not7 = icmp eq i64 %i.c, 0
  br i1 %.not7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = load i64, ptr %0, align 8, !tbaa !20
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @ruby_xfree(ptr noundef %i.e) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e
  %.0 = phi i32 [ 2, %bb.e ], [ 1, %bb.a ], [ 0, %bb.d ]
  ret i32 %.0
}

declare i64 @rb_thread_shield_destroy(i64 noundef) local_unnamed_addr #1

declare i64 @rb_thread_shield_release(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @llvm.eh.sjlj.longjmp(ptr) #20

declare i64 @rb_str_resurrect(i64 noundef) local_unnamed_addr #1

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #21

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @loaded_feature_path(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly %2, i64 noundef %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = add i64 %3, 1
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 46) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub i64 %1, %3                           ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %i.g = tail call i32 @strncmp(ptr noundef %i.f, ptr noundef nonnull %2, i64 noundef %3) #22
  %.not64 = icmp eq i32 %i.g, 0
  br i1 %.not64, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %.not6580 = icmp eq i64 %1, 0
  br i1 %.not6580, label %.critedgethread-pre-split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.05581 = phi ptr [ %i.k, %bb.e ], [ %i.h, %bb.d ] ; 3 uses
  %i.i = load i8, ptr %.05581, align 1, !tbaa !21 ; 2 uses
  %i.j = and i8 %i.i, -2
  %switch = icmp eq i8 %i.j, 46
  br i1 %switch, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.k = getelementptr i8, ptr %.05581, i64 -1    ; 2 uses
  %.not65 = icmp eq ptr %0, %i.k
  br i1 %.not65, label %.critedgethread-pre-split, label %.lr.ph, !llvm.loop !194

.critedgethread-pre-split:                        ; preds = %bb.e, %bb.d
  %.055.lcssa = phi ptr [ %i.h, %bb.d ], [ %0, %bb.e ] ; 2 uses
  %.pr = load i8, ptr %.055.lcssa, align 1, !tbaa !21
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedgethread-pre-split
  %.05578 = phi ptr [ %.055.lcssa, %.critedgethread-pre-split ], [ %.05581, %.lr.ph ] ; 2 uses
  %i.l = phi i8 [ %.pr, %.critedgethread-pre-split ], [ %i.i, %.lr.ph ]
  %.not68 = icmp eq i8 %i.l, 46
  br i1 %.not68, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.critedge
  %i.m = ptrtoint ptr %.05578 to i64
  %i.n = ptrtoint ptr %0 to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = icmp slt i64 %i.o, %3
  br i1 %i.p, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = sub i64 0, %3
  %i.r = getelementptr i8, ptr %.05578, i64 %i.q
  %i.s = tail call i32 @strncmp(ptr noundef %i.r, ptr noundef nonnull %2, i64 noundef %3) #22
  %.not69 = icmp eq i32 %i.s, 0
  br i1 %.not69, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.t = sub i64 %i.o, %3
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h
  %.056 = phi i64 [ %i.t, %bb.h ], [ %i.e, %bb.c ] ; 5 uses
  %i.u = icmp sgt i64 %.056, 0                    ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %0, i64 %.056
  %i.w = getelementptr i8, ptr %i.v, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !21
  %.not70 = icmp eq i8 %i.x, 47
  br i1 %.not70, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %bb.i
  switch i32 %4, label %bb.n [
    i32 115, label %bb.l
    i32 114, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr i8, ptr %0, i64 %.056
  %i.z = getelementptr i8, ptr %i.y, i64 %3
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(4) @.str.5) #22
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.n, label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.ac = getelementptr i8, ptr %0, i64 %.056
  %i.ad = getelementptr i8, ptr %i.ac, i64 %3
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ad, ptr noundef nonnull dereferenceable(4) @.str.17) #22
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %i.ag = sext i1 %i.u to i64
  %spec.select = add nsw i64 %.056, %i.ag         ; 3 uses
  %i.ah = inttoptr i64 %5 to ptr                  ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 32
  %.not72 = icmp eq i64 %spec.select, 0
  br label %bb.o

bb.o:                                             ; preds = %bb.t, %bb.n
  %.053 = phi i64 [ 0, %bb.n ], [ %i.ba, %bb.t ]  ; 4 uses
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %i.al = and i64 %i.ak, 8192
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.o
  %i.am = load i64, ptr %i.ai, align 8, !tbaa !21
  %i.an = icmp slt i64 %.053, %i.am
  br i1 %i.an, label %bb.p, label %.loopexit

rb_array_len.exit.thread:                         ; preds = %bb.o
  %i.ao = lshr i64 %i.ak, 15
  %i.ap = and i64 %i.ao, 127
  %i.aq = icmp samesign ult i64 %.053, %i.ap
  br i1 %i.aq, label %.thread, label %.loopexit

.thread:                                          ; preds = %rb_array_len.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  br label %RARRAY_AREF.exit

bb.p:                                             ; preds = %rb_array_len.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !21
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %.thread, %bb.p
  %.0.i.i = phi ptr [ %i.ar, %bb.p ], [ %i.ai, %.thread ]
  %i.as = getelementptr [8 x i8], ptr %.0.i.i, i64 %.053
  %i.at = load i64, ptr %i.as, align 8, !tbaa !20
  store i64 %i.at, ptr %i.a, align 8, !tbaa !20
  %i.au = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #7
  %i.av = load i64, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !122
  %.not71 = icmp eq i64 %i.ay, %spec.select
  br i1 %.not71, label %bb.q, label %bb.t

bb.q:                                             ; preds = %RARRAY_AREF.exit
  br i1 %.not72, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = call i32 @strncmp(ptr noundef %0, ptr noundef %i.au, i64 noundef %spec.select) #22
  %.not73 = icmp eq i32 %i.az, 0
  br i1 %.not73, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit

bb.t:                                             ; preds = %RARRAY_AREF.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ba = add nuw nsw i64 %.053, 1
  br label %bb.o, !llvm.loop !195

.loopexit:                                        ; preds = %rb_array_len.exit, %rb_array_len.exit.thread, %bb.s, %bb.l, %bb.m, %bb.j, %.critedge, %bb.f, %bb.g, %bb.a
  %.2 = phi i64 [ 0, %bb.j ], [ 0, %bb.a ], [ 0, %.critedge ], [ %i.av, %bb.s ], [ 0, %bb.l ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.m ], [ 0, %rb_array_len.exit.thread ], [ 0, %rb_array_len.exit ]
  ret i64 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @loaded_feature_path_i(i64 noundef %0, i64 %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = inttoptr i64 %2 to ptr                   ; 5 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #22
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !126
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !128
  %i.g = getelementptr i8, ptr %i.b, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !129
  %i.i = getelementptr i8, ptr %i.b, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !130
  %i.k = tail call fastcc i64 @loaded_feature_path(ptr noundef nonnull %i.a, i64 noundef %i.c, ptr noundef %i.d, i64 noundef %i.f, i32 noundef %i.h, i64 noundef %i.j)
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.b, i64 32
  store ptr %i.a, ptr %i.l, align 8, !tbaa !131
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @rb_st_get_key(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_tmp_new(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_resize(i64 noundef, i64 noundef) local_unnamed_addr #1

end_hunk_5
