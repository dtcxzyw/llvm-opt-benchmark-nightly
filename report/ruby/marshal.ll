inline.NumInlined: 424
inline.NumDeleted: 93
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rb_builtin_function = type { ptr, i32, i32, ptr }
%struct.rb_data_type_struct = type { ptr, %struct.anon.17, ptr, ptr, i64 }
%struct.anon.17 = type { ptr, ptr, ptr, ptr, [1 x ptr] }
%struct.RString = type { %struct.RBasic, i64, %union.anon }
%struct.RBasic = type { i64, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.load_arg = type { i64, ptr, i64, i64, i64, ptr, ptr, ptr, i64, ptr, i8 }
%struct.dump_call_arg = type { i64, ptr, i32 }
%struct.w_ivar_arg = type { ptr, i64 }

@rb_eTypeError = external local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [13 x i8] c"no allocator\00", align 1
@compat_allocator_tbl_wrapper = internal unnamed_addr global i64 0, align 8
@Init_builtin_marshal.marshal_table = internal constant [2 x %struct.rb_builtin_function] [%struct.rb_builtin_function { ptr @marshal_load, i32 3, i32 0, ptr @.str.2 }, %struct.rb_builtin_function { ptr null, i32 0, i32 -1, ptr null }], align 16
@.str.2 = private unnamed_addr constant [13 x i8] c"marshal_load\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"marshal\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Marshal\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"_dump\00", align 1
@s_dump = internal unnamed_addr global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"_load\00", align 1
@s_load = internal unnamed_addr global i64 0, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"marshal_dump\00", align 1
@s_mdump = internal unnamed_addr global i64 0, align 8
@s_mload = internal unnamed_addr global i64 0, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"_dump_data\00", align 1
@s_dump_data = internal unnamed_addr global i64 0, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"_load_data\00", align 1
@s_load_data = internal unnamed_addr global i64 0, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@s_call = internal unnamed_addr global i64 0, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"getbyte\00", align 1
@s_getbyte = internal unnamed_addr global i64 0, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@s_read = internal unnamed_addr global i64 0, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@s_write = internal unnamed_addr global i64 0, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"binmode\00", align 1
@s_binmode = internal unnamed_addr global i64 0, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@s_encoding_short = internal unnamed_addr global i64 0, align 8
@.str.17 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@s_ruby2_keywords_flag = internal unnamed_addr global i64 0, align 8
@.str.18 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"MAJOR_VERSION\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"MINOR_VERSION\00", align 1
@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str.21 = private unnamed_addr constant [23 x i8] c"marshal data too short\00", align 1
@rb_eRuntimeError = external local_unnamed_addr global i64, align 8
@.str.22 = private unnamed_addr constant [29 x i8] c"Marshal.load reentered at %s\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"instance of IO needed\00", align 1
@compat_allocator_tbl = internal unnamed_addr global ptr null, align 8
@marshal_compat_type = internal constant %struct.rb_data_type_struct { ptr @.str.26, %struct.anon.17 { ptr @marshal_compat_table_mark_and_move, ptr @marshal_compat_table_free, ptr @marshal_compat_table_memsize, ptr @marshal_compat_table_mark_and_move, [1 x ptr] zeroinitializer }, ptr null, ptr null, i64 33 }, align 8
@.str.26 = private unnamed_addr constant [21 x i8] c"marshal_compat_table\00", align 1
@dump_arg_data = internal constant %struct.rb_data_type_struct { ptr @.str.27, %struct.anon.17 { ptr @mark_dump_arg, ptr @free_dump_arg, ptr @memsize_dump_arg, ptr null, [1 x ptr] zeroinitializer }, ptr null, ptr null, i64 3 }, align 8
@.str.27 = private unnamed_addr constant [9 x i8] c"dump_arg\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"Marshal.dump reentered at %s\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"exceed depth limit\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"can't dump internal %s\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"can't dump recursive object using _dump()\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"_dump() must return string\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"singleton class can't be dumped\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"too big Bignum can't be dumped\00", align 1
@rb_cString = external local_unnamed_addr global i64, align 8
@rb_cRegexp = external local_unnamed_addr global i64, align 8
@rb_cArray = external local_unnamed_addr global i64, align 8
@.str.35 = private unnamed_addr constant [27 x i8] c"array modified during dump\00", align 1
@rb_cHash = external local_unnamed_addr global i64, align 8
@.str.36 = private unnamed_addr constant [5 x i8] c"Hash\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"can't dump hash with default proc\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"no _dump_data is defined for class %li\0B\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"can't dump %li\0B\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"long too big to dump\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"can't dump anonymous ID %ld\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"-inf\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"-0\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"e%d\00", align 1
@.str.48 = private unnamed_addr constant [37 x i8] c"%li\0B#%s returned same class instance\00", align 1
@rb_cFalseClass = external local_unnamed_addr global i64, align 8
@rb_cNilClass = external local_unnamed_addr global i64, align 8
@rb_cTrueClass = external local_unnamed_addr global i64, align 8
@rb_cInteger = external local_unnamed_addr global i64, align 8
@rb_cSymbol = external local_unnamed_addr global i64, align 8
@rb_cFloat = external local_unnamed_addr global i64, align 8
@.str.49 = private unnamed_addr constant [26 x i8] c"singleton can't be dumped\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"can't dump non-ascii %s name % li\0B\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"can't dump anonymous %s % li\0B\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"too many instance variables\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.56 = private unnamed_addr constant [45 x i8] c"instance variable removed from %li\0B instance\00", align 1
@.str.57 = private unnamed_addr constant [41 x i8] c"instance variable added to %li\0B instance\00", align 1
@.str.58 = private unnamed_addr constant [51 x i8] c"instance variable '%s' on class %li\0B is not dumped\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"% li\0B can't be referred to\00", align 1
@load_arg_data = internal constant %struct.rb_data_type_struct { ptr @.str.63, %struct.anon.17 { ptr @mark_load_arg, ptr @free_load_arg, ptr @memsize_load_arg, ptr null, [1 x ptr] zeroinitializer }, ptr null, ptr null, i64 3 }, align 8
@.str.61 = private unnamed_addr constant [93 x i8] c"incompatible marshal file format (can't be read)\0A\09format version %d.%d required; %d.%d given\00", align 1
@.str.62 = private unnamed_addr constant [91 x i8] c"incompatible marshal file format (can be read)\0A\09format version %d.%d required; %d.%d given\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"load_arg\00", align 1
@.str.64 = private unnamed_addr constant [29 x i8] c"dump format error (unlinked)\00", align 1
@.str.65 = private unnamed_addr constant [45 x i8] c"prepended class %li\0B differs from class %li\0B\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"singleton can't be loaded\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"dump format error (user class)\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"class %li\0B not a struct\00", align 1
@.str.69 = private unnamed_addr constant [49 x i8] c"struct %li\0B not compatible (struct size differs)\00", align 1
@.str.70 = private unnamed_addr constant [45 x i8] c"struct %li\0B not compatible (:%li\0B for :%li\0B)\00", align 1
@.str.71 = private unnamed_addr constant [40 x i8] c"class %li\0B needs to have method '_load'\00", align 1
@.str.72 = private unnamed_addr constant [53 x i8] c"instance of %li\0B needs to have method 'marshal_load'\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"dump format error\00", align 1
@.str.74 = private unnamed_addr constant [54 x i8] c"class %li\0B needs to have instance method '_load_data'\00", align 1
@.str.75 = private unnamed_addr constant [56 x i8] c"can't override instance variable of class/module '%li\0B'\00", align 1
@.str.76 = private unnamed_addr constant [49 x i8] c"can't override instance variable of class '%li\0B'\00", align 1
@.str.77 = private unnamed_addr constant [50 x i8] c"can't override instance variable of module '%li\0B'\00", align 1
@.str.78 = private unnamed_addr constant [24 x i8] c"dump format error(0x%x)\00", align 1
@.str.79 = private unnamed_addr constant [29 x i8] c"dump format error (bad link)\00", align 1
@.str.80 = private unnamed_addr constant [52 x i8] c"ruby2_keywords flag is given but %li\0B is not a Hash\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"%li\0B is not enc_capable\00", align 1
@.str.82 = private unnamed_addr constant [30 x i8] c"%li\0B does not refer to module\00", align 1
@.str.83 = private unnamed_addr constant [29 x i8] c"%li\0B does not refer to class\00", align 1
@.str.85 = private unnamed_addr constant [35 x i8] c"dump format error for symbol(0x%x)\00", align 1
@.str.86 = private unnamed_addr constant [42 x i8] c"dump format error (symlink with encoding)\00", align 1
@.str.87 = private unnamed_addr constant [35 x i8] c"invalid byte sequence in %s: %+li\0B\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"bad symbol\00", align 1
@switch.table.rb_type = private unnamed_addr constant [10 x i32] [i32 19, i32 17, i32 poison, i32 poison, i32 poison, i32 18, i32 poison, i32 poison, i32 poison, i32 22], align 4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_marshal_define_compat(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_get_alloc_func(i64 noundef %0) #21 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @compat_allocator_tbl, align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %compat_allocator_table.exit

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @rb_st_init_numtable() #21 ; 2 uses
  store ptr %i.d, ptr @compat_allocator_tbl, align 8, !tbaa !13
  %i.e = tail call i64 @rb_data_typed_object_wrap(i64 noundef 0, ptr noundef %i.d, ptr noundef nonnull @marshal_compat_type) #21 ; 2 uses
  store i64 %i.e, ptr @compat_allocator_tbl_wrapper, align 8, !tbaa !11
  tail call void @rb_vm_register_global_object(i64 noundef %i.e) #21
  br label %compat_allocator_table.exit

compat_allocator_table.exit:                      ; preds = %bb.c, %bb.d
  %i.f = tail call noalias nonnull dereferenceable(32) ptr @ruby_xmalloc(i64 noundef 32) #23 ; 5 uses
  store i64 %0, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %1, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %2, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %3, ptr %i.i, align 8, !tbaa !20
  %i.j = load ptr, ptr @compat_allocator_tbl, align 8, !tbaa !13 ; 2 uses
  %.not.i13 = icmp eq ptr %i.j, null
  br i1 %.not.i13, label %bb.e, label %compat_allocator_table.exit15

bb.e:                                             ; preds = %compat_allocator_table.exit
  %i.k = tail call ptr @rb_st_init_numtable() #21 ; 2 uses
  store ptr %i.k, ptr @compat_allocator_tbl, align 8, !tbaa !13
  %i.l = tail call i64 @rb_data_typed_object_wrap(i64 noundef 0, ptr noundef %i.k, ptr noundef nonnull @marshal_compat_type) #21 ; 2 uses
  store i64 %i.l, ptr @compat_allocator_tbl_wrapper, align 8, !tbaa !11
  tail call void @rb_vm_register_global_object(i64 noundef %i.l) #21
  %i.m = load ptr, ptr @compat_allocator_tbl, align 8, !tbaa !13
  br label %compat_allocator_table.exit15

compat_allocator_table.exit15:                    ; preds = %compat_allocator_table.exit, %bb.e
  %.0.i14 = phi ptr [ %i.m, %bb.e ], [ %i.j, %compat_allocator_table.exit ]
  %i.n = ptrtoint ptr %i.a to i64
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = tail call i32 @rb_st_insert(ptr noundef %.0.i14, i64 noundef %i.n, i64 noundef %i.o) #21 ; 0 uses
  %i.q = icmp eq i64 %0, 0
  %i.r = and i64 %0, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = or i1 %i.q, %i.s
  br i1 %i.t, label %rb_obj_written.exit, label %bb.f

bb.f:                                             ; preds = %compat_allocator_table.exit15
  %i.u = load i64, ptr @compat_allocator_tbl_wrapper, align 8, !tbaa !11
  tail call void @rb_gc_writebarrier(i64 noundef %i.u, i64 noundef %0) #21
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %compat_allocator_table.exit15, %bb.f
  %i.v = icmp eq i64 %1, 0
  %i.w = and i64 %1, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %rb_obj_written.exit16, label %bb.g

bb.g:                                             ; preds = %rb_obj_written.exit
  %i.z = load i64, ptr @compat_allocator_tbl_wrapper, align 8, !tbaa !11
  tail call void @rb_gc_writebarrier(i64 noundef %i.z, i64 noundef %1) #21
  br label %rb_obj_written.exit16

rb_obj_written.exit16:                            ; preds = %rb_obj_written.exit, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @rb_get_alloc_func(i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @ruby_xmalloc(i64 noundef) local_unnamed_addr #4

declare i32 @rb_st_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden range(i32 -1, 10) i32 @ruby_marshal_write_long(i64 noundef %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = ashr i64 %0, 31
  %.off = add nsw i64 %i.a, -1
  %switch = icmp ult i64 %.off, -2
  br i1 %switch, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %1, align 1, !tbaa !21
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %or.cond = icmp ult i64 %0, 123
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.c = trunc nuw nsw i64 %0 to i8
  %i.d = add nuw nsw i8 %i.c, 5
  store i8 %i.d, ptr %1, align 1, !tbaa !21
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %or.cond3 = icmp ugt i64 %0, -124
  %i.e = trunc i64 %0 to i8                       ; 2 uses
  br i1 %or.cond3, label %bb.g, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.f
  %i.f = getelementptr i8, ptr %1, i64 1
  store i8 %i.e, ptr %i.f, align 1, !tbaa !21
  %i.g = ashr i64 %0, 8                           ; 2 uses
  switch i64 %i.g, label %.preheader.1 [
    i64 0, label %bb.h
    i64 -1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i8 %i.e, -5
  store i8 %i.h, ptr %1, align 1, !tbaa !21
  br label %bb.j

bb.h:                                             ; preds = %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.037.lcssa.wide = phi i32 [ 1, %.preheader.preheader ], [ 2, %.preheader.1 ], [ 3, %.preheader.2 ], [ 4, %.preheader.3 ], [ 5, %.preheader.4 ], [ 6, %.preheader.5 ], [ 7, %.preheader.6 ], [ 8, %.preheader.7 ] ; 2 uses
  %i.i = trunc nuw nsw i32 %.037.lcssa.wide to i8
  br label %.loopexit

bb.i:                                             ; preds = %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.037.lcssa38.wide = phi i32 [ 1, %.preheader.preheader ], [ 2, %.preheader.1 ], [ 3, %.preheader.2 ], [ 4, %.preheader.3 ], [ 5, %.preheader.4 ], [ 6, %.preheader.5 ], [ 7, %.preheader.6 ], [ 8, %.preheader.7 ] ; 2 uses
  %i.j = trunc nuw nsw i32 %.037.lcssa38.wide to i8
  %i.k = sub nsw i8 0, %i.j
  br label %.loopexit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.l = trunc i64 %i.g to i8
  %i.m = getelementptr i8, ptr %1, i64 2
  store i8 %i.l, ptr %i.m, align 1, !tbaa !21
  %i.n = ashr i64 %0, 16                          ; 2 uses
  switch i64 %i.n, label %.preheader.2 [
    i64 0, label %bb.h
    i64 -1, label %bb.i
  ]

.preheader.2:                                     ; preds = %.preheader.1
  %i.o = trunc i64 %i.n to i8
  %i.p = getelementptr i8, ptr %1, i64 3
  store i8 %i.o, ptr %i.p, align 1, !tbaa !21
  %i.q = ashr i64 %0, 24                          ; 2 uses
  switch i64 %i.q, label %.preheader.3 [
    i64 0, label %bb.h
    i64 -1, label %bb.i
  ]

.preheader.3:                                     ; preds = %.preheader.2
  %i.r = trunc i64 %i.q to i8
  %i.s = getelementptr i8, ptr %1, i64 4
  store i8 %i.r, ptr %i.s, align 1, !tbaa !21
  %i.t = ashr i64 %0, 32                          ; 2 uses
  switch i64 %i.t, label %.preheader.4 [
    i64 0, label %bb.h
    i64 -1, label %bb.i
  ]

.preheader.4:                                     ; preds = %.preheader.3
  %i.u = trunc i64 %i.t to i8
  %i.v = getelementptr i8, ptr %1, i64 5
  store i8 %i.u, ptr %i.v, align 1, !tbaa !21
  %i.w = ashr i64 %0, 40                          ; 2 uses
  switch i64 %i.w, label %.preheader.5 [
    i64 0, label %bb.h
    i64 -1, label %bb.i
  ]

.preheader.5:                                     ; preds = %.preheader.4
  %i.x = trunc i64 %i.w to i8
  %i.y = getelementptr i8, ptr %1, i64 6
  store i8 %i.x, ptr %i.y, align 1, !tbaa !21
  %i.z = ashr i64 %0, 48                          ; 2 uses
  switch i64 %i.z, label %.preheader.6 [
    i64 0, label %bb.h
    i64 -1, label %bb.i
end_hunk_0
begin_hunk_1_@r_byte:bb.a
bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.ac = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ad = icmp eq i64 %.pre, 0
  br i1 %i.ad, label %rb_long2num_inline.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.thread, %bb.g
  %i.ae = phi ptr [ %i.ab, %.thread ], [ %i.ac, %bb.g ]
  %.phi.trans.insert16.i = getelementptr i8, ptr %0, i64 32
  %.pre17.i = load i64, ptr %.phi.trans.insert16.i, align 8, !tbaa !30
  br label %r_byte1_buffered.exit

rb_long2num_inline.exit.i:                        ; preds = %bb.g
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.y, i64 8192)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ag = shl nuw nsw i64 %i.af, 1
  %i.ah = or disjoint i64 %i.ag, 1
  store i64 %i.ah, ptr %i.b, align 8, !tbaa !11
  %i.ai = load i64, ptr @s_read, align 8, !tbaa !11
  %i.aj = call i64 @rb_funcallv(i64 noundef %i.c, i64 noundef %i.ai, i32 noundef 1, ptr noundef nonnull %i.b) #21 ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.ak, align 8, !tbaa !49
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %bb.h, label %check_load_arg.exit.i

bb.h:                                             ; preds = %rb_long2num_inline.exit.i
  %i.al = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.al, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.13) #22
  unreachable

check_load_arg.exit.i:                            ; preds = %rb_long2num_inline.exit.i
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !11
  %i.am = icmp eq i64 %i.aj, 4
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %check_load_arg.exit.i
  call fastcc void @too_short() #24
  unreachable

bb.j:                                             ; preds = %check_load_arg.exit.i
  %i.an = call i64 @rb_string_value(ptr noundef nonnull %i.a) #21 ; 0 uses
  %i.ao = getelementptr i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !54
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !11
  %i.ar = inttoptr i64 %i.aq to ptr               ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !59
  %i.at = and i64 %i.as, 8192
  %.not.i11.i = icmp eq i64 %i.at, 0
  %i.au = getelementptr i8, ptr %i.ar, i64 24     ; 2 uses
  br i1 %.not.i11.i, label %RSTRING_PTR.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !21
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.k, %bb.j
  %i.aw = phi ptr [ %i.av, %bb.k ], [ %i.au, %bb.j ]
  %i.ax = getelementptr i8, ptr %i.ar, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !40 ; 2 uses
  %.not.i12.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i12.i, label %ruby_nonempty_memcpy.exit.i, label %bb.l

bb.l:                                             ; preds = %RSTRING_PTR.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ap, ptr noundef nonnull readonly align 1 %i.aw, i64 noundef range(i64 1, 0) %i.ay, i1 noundef false) #21
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !11
  %.phi.trans.insert.i = inttoptr i64 %.pre.i to ptr
  %.phi.trans.insert14.i = getelementptr i8, ptr %.phi.trans.insert.i, i64 16
  %.pre15.i = load i64, ptr %.phi.trans.insert14.i, align 8, !tbaa !40
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.l, %RSTRING_PTR.exit.i
  %i.az = phi i64 [ 0, %RSTRING_PTR.exit.i ], [ %.pre15.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %r_byte1_buffered.exit

r_byte1_buffered.exit:                            ; preds = %._crit_edge.i, %ruby_nonempty_memcpy.exit.i
  %i.ba = phi ptr [ %i.ac, %ruby_nonempty_memcpy.exit.i ], [ %i.ae, %._crit_edge.i ]
  %i.bb = phi i64 [ 0, %ruby_nonempty_memcpy.exit.i ], [ %.pre17.i, %._crit_edge.i ] ; 2 uses
  %i.bc = phi i64 [ %i.az, %ruby_nonempty_memcpy.exit.i ], [ %.pre, %._crit_edge.i ]
  %i.bd = add i64 %i.bc, -1
  store i64 %i.bd, ptr %i.ba, align 8, !tbaa !60
  %i.be = getelementptr i8, ptr %0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !54
  %i.bg = getelementptr i8, ptr %0, i64 32
  %i.bh = add i64 %i.bb, 1
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !30
  %i.bi = getelementptr i8, ptr %i.bf, i64 %i.bb
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !21
  br label %rb_num2char_inline.exit

bb.m:                                             ; preds = %bb.f
  %i.bk = load i64, ptr @s_getbyte, align 8, !tbaa !11
  %i.bl = tail call i64 @rb_funcallv(i64 noundef %i.c, i64 noundef %i.bk, i32 noundef 0, ptr noundef null) #21 ; 7 uses
  %i.bm = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.bm, align 8, !tbaa !49
  %.not.i12 = icmp eq ptr %.val, null
  br i1 %.not.i12, label %bb.n, label %check_load_arg.exit

bb.n:                                             ; preds = %bb.m
  %i.bn = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bn, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.12) #22
  unreachable

check_load_arg.exit:                              ; preds = %bb.m
  %i.bo = icmp eq i64 %i.bl, 4
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %check_load_arg.exit
  tail call void @rb_eof_error() #22
  unreachable

bb.p:                                             ; preds = %check_load_arg.exit
  %i.bp = icmp eq i64 %i.bl, 0
  %i.bq = and i64 %i.bl, 7
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = or i1 %i.bp, %i.br
  br i1 %i.bs, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.p
  %i.bt = inttoptr i64 %i.bl to ptr               ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !59 ; 2 uses
  %i.bv = and i64 %i.bu, 31
  %i.bw = icmp eq i64 %i.bv, 5
  br i1 %i.bw, label %bb.q, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.q:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.bx = getelementptr i8, ptr %i.bt, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !40
  %i.bz = icmp sgt i64 %i.by, 0
  br i1 %i.bz, label %bb.r, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.ca = and i64 %i.bu, 8192
  %.not.i.i14 = icmp eq i64 %i.ca, 0
  %i.cb = getelementptr i8, ptr %i.bt, i64 24     ; 2 uses
  br i1 %.not.i.i14, label %RSTRING_PTR.exit.i15, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !21
  br label %RSTRING_PTR.exit.i15

RSTRING_PTR.exit.i15:                             ; preds = %bb.s, %bb.r
  %i.cd = phi ptr [ %i.cc, %bb.s ], [ %i.cb, %bb.r ]
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !21
  br label %rb_num2char_inline.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.q, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.p
  %i.cf = trunc i64 %i.bl to i1
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.cg = tail call i64 @rb_fix2int(i64 noundef %i.bl) #21
  br label %rb_num2int_inline.exit.i

bb.u:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.ch = tail call i64 @rb_num2int(i64 noundef %i.bl) #21
  br label %rb_num2int_inline.exit.i

rb_num2int_inline.exit.i:                         ; preds = %bb.u, %bb.t
  %.0.i5.i = phi i64 [ %i.cg, %bb.t ], [ %i.ch, %bb.u ]
  %i.ci = trunc i64 %.0.i5.i to i8
  br label %rb_num2char_inline.exit

rb_num2char_inline.exit:                          ; preds = %rb_num2int_inline.exit.i, %RSTRING_PTR.exit.i15, %r_byte1_buffered.exit, %RSTRING_PTR.exit
  %.0.in = phi i8 [ %i.w, %RSTRING_PTR.exit ], [ %i.bj, %r_byte1_buffered.exit ], [ %i.ce, %RSTRING_PTR.exit.i15 ], [ %i.ci, %rb_num2int_inline.exit.i ]
  %.0 = zext i8 %.0.in to i32
  ret i32 %.0
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @too_short() unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.21) #22
  unreachable
}

declare i64 @rb_funcallv(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_eof_error() local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 32) i32 @rb_type(i64 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !59
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 31
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %1 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 62) ; 3 uses
  %i.i = icmp ult i64 %1, 10
  %switch.maskindex = trunc i64 %1 to i16
  %switch.shifted = lshr i16 547, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.i, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = trunc i64 %0 to i1
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = and i64 %0, 254
  %i.l = icmp eq i64 %i.k, 12
  %spec.select = select i1 %i.l, i32 20, i32 4
  br label %bb.f

switch.lookup:                                    ; preds = %bb.c
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.rb_type, i64 %1
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.f

bb.f:                                             ; preds = %switch.lookup, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %spec.select, %bb.e ], [ 21, %bb.d ], [ %switch.load, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #2

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #2

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint noreturn nounwind sspstrong uwtable
define internal fastcc void @io_needed() unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.25) #22
  unreachable
}

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @rb_st_init_numtable() local_unnamed_addr #2

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rb_vm_register_global_object(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @marshal_compat_table_mark_and_move(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @rb_st_foreach(ptr noundef nonnull %0, ptr noundef nonnull @marshal_compat_table_mark_and_move_i, i64 noundef 0) #21 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @marshal_compat_table_free(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @rb_st_foreach(ptr noundef %0, ptr noundef nonnull @marshal_compat_table_free_i, i64 noundef 0) #21 ; 0 uses
  tail call void @rb_st_free_table(ptr noundef %0) #21
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @marshal_compat_table_memsize(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_st_memsize(ptr noundef %0) #26
  %i.b = tail call i64 @rb_st_table_size(ptr noundef %0) #21
  %i.c = shl i64 %i.b, 5
  %i.d = add i64 %i.c, %i.a
  ret i64 %i.d
}

declare i32 @rb_st_foreach(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @marshal_compat_table_mark_and_move_i(i64 %0, i64 noundef %1, i64 %2) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 2 uses
  tail call void @rb_gc_mark_and_move(ptr noundef %i.a) #21
  %i.b = getelementptr i8, ptr %i.a, i64 8
  tail call void @rb_gc_mark_and_move(ptr noundef %i.b) #21
  ret i32 0
}

declare void @rb_gc_mark_and_move(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @marshal_compat_table_free_i(i64 %0, i64 noundef %1, i64 %2) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  tail call void @ruby_xfree(ptr noundef %i.a) #21
  ret i32 0
}

declare void @rb_st_free_table(ptr noundef) local_unnamed_addr #2

declare void @ruby_xfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_st_memsize(ptr noundef) local_unnamed_addr #11

declare i64 @rb_st_table_size(ptr noundef) local_unnamed_addr #2

declare i64 @rb_data_typed_object_zalloc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rb_init_identtable() local_unnamed_addr #2

declare i64 @rb_str_buf_new(i64 noundef) local_unnamed_addr #2

declare i32 @rb_respond_to(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_check_funcall(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @w_byte(i8 noundef signext %0, ptr noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  store i8 %0, ptr %i.a, align 1, !tbaa !21
  %i.b = load i64, ptr %1, align 8, !tbaa !39     ; 4 uses
  %i.c = call i64 @rb_str_cat(i64 noundef %i.b, ptr noundef nonnull %i.a, i64 noundef 1) #21 ; 0 uses
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %w_nbyte.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !40
  %i.i = icmp sgt i64 %i.h, 8191
  br i1 %i.i, label %bb.c, label %w_nbyte.exit

bb.c:                                             ; preds = %bb.b
  %i.j = call i64 @rb_io_write(i64 noundef %i.e, i64 noundef %i.b) #21 ; 0 uses
  %i.k = call i64 @rb_str_resize(i64 noundef %i.b, i64 noundef 0) #21 ; 0 uses
  br label %w_nbyte.exit

w_nbyte.exit:                                     ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @w_object(i64 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca [9 x i8], align 1                 ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca [9 x i8], align 1                 ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i64, align 8                      ; 3 uses
  %3 = alloca %struct.dump_call_arg, align 8      ; 9 uses
  %i.l = alloca i64, align 8                      ; 9 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %i.n = alloca i64, align 8                      ; 9 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 4 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %i.r = alloca i64, align 8                      ; 4 uses
  %i.s = alloca ptr, align 8                      ; 5 uses
  %i.t = alloca i64, align 8                      ; 4 uses
  %i.u = alloca ptr, align 8                      ; 5 uses
  %i.v = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.k, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #21
  store i64 36, ptr %i.l, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #21
  %i.w = icmp eq i32 %2, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.29) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  switch i64 %0, label %bb.m [
    i64 4, label %bb.d
    i64 20, label %bb.g
    i64 0, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 48, ptr %i.j, align 1, !tbaa !21
  %i.y = load i64, ptr %1, align 8, !tbaa !39     ; 4 uses
  %i.z = call i64 @rb_str_cat(i64 noundef %i.y, ptr noundef nonnull %i.j, i64 noundef 1) #21 ; 0 uses
  %i.aa = getelementptr i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %w_byte.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = inttoptr i64 %i.y to ptr
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !40
  %i.af = icmp sgt i64 %i.ae, 8191
end_hunk_1
