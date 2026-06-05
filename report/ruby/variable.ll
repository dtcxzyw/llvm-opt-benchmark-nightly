inline.NumInlined: 728
inline.NumDeleted: 161
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rb_data_type_struct = type { ptr, %struct.anon.19, ptr, ptr, i64 }
%struct.anon.19 = type { ptr, ptr, ptr, ptr, [1 x ptr] }
%struct.rb_shape_tree_t = type { ptr, ptr, ptr, i32, ptr, i32 }
%struct.sub_temporary_name_args = type { i64, i64 }
%struct.trace_var = type { i32, ptr, i64, ptr }
%struct.trace_data = type { ptr, i64 }
%struct.iv_itr_data = type { i64, ptr, i64, ptr, ptr, i8 }
%struct.autoload_copy_table_data = type { i64, ptr, ptr }
%struct.autoload_arguments = type { i64, i64, i64, i64 }
%struct.autoload_load_arguments = type { i64, i64, i32, i64, ptr, ptr }
%struct.autoload_const = type { %struct.ccan_list_node, i64, i64, i64, i64, i64, i32, i64, i32 }
%struct.ccan_list_node = type { ptr, ptr }

@rb_global_tbl = internal unnamed_addr global ptr null, align 8
@generic_fields_tbl_ = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [13 x i8] c"__autoload__\00", align 1
@autoload = internal unnamed_addr global i64 0, align 8
@autoload_mutex = internal unnamed_addr global i64 0, align 8
@autoload_features = internal unnamed_addr global i64 0, align 8
@rb_eRuntimeError = external local_unnamed_addr global i64, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"can't change permanent name\00", align 1
@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"empty class/module name\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"the temporary name must not be a constant path to avoid confusion\00", align 1
@rb_cObject = external local_unnamed_addr global i64, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"invalid class path encoding (non ASCII)\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"can't retrieve anonymous class %li\0B\00", align 1
@rb_eTypeError = external local_unnamed_addr global i64, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"%li\0B does not refer to class/module\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"undefined class/module % li\0B\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"global variable '%li\0B' not initialized\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"%li\0B is a read-only variable\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"undefined global variable %li\0B\00", align 1
@rb_gvar_get.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"clone\00", align 1
@rb_gvar_get.rbimpl_id.14 = internal unnamed_addr global i64 0, align 8
@.str.15 = private unnamed_addr constant [37 x i8] c"global variable '%s' not initialized\00", align 1
@rb_eRactorIsolationError = external local_unnamed_addr global i64, align 8
@.str.16 = private unnamed_addr constant [54 x i8] c"can not access global variables from non-main Ractors\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"$%d\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"can't alias in tracer\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"Object is missing entry in generic_fields_tbl\00", align 1
@.str.20 = private unnamed_addr constant [113 x i8] c"can not get unshareable values from instance variables of classes/modules from non-main Ractors (%li\0B from %li\0B)\00", align 1
@.str.21 = private unnamed_addr constant [96 x i8] c"can not get unshareable values from instance variables of classes/modules from non-main Ractors\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Unreachable\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"'%1$s' is not allowed as an instance variable name\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"instance variable %1$s not defined\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"private constant %2$s::%1$s referenced\00", align 1
@autoload_table_type = internal constant %struct.rb_data_type_struct { ptr @.str.51, %struct.anon.19 { ptr @autoload_table_mark, ptr @autoload_table_free, ptr @autoload_table_memsize, ptr @autoload_table_compact, [1 x ptr] zeroinitializer }, ptr null, ptr null, i64 33 }, align 8
@.str.27 = private unnamed_addr constant [19 x i8] c"empty feature name\00", align 1
@rb_eNameError = external local_unnamed_addr global i64, align 8
@.str.28 = private unnamed_addr constant [37 x i8] c"autoload must be constant name: %li\0B\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"constant ::%li\0B is deprecated\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"constant %li\0B::%li\0B is deprecated\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"'%1$s' is not allowed as a constant variable name\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"cannot remove %2$s::%1$s\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"rb_define_const: invalid name '%s' for constant\00", align 1
@ruby_vm_global_cvar_state = external local_unnamed_addr global i64, align 8
@.str.35 = private unnamed_addr constant [42 x i8] c"uninitialized class variable %1$s in %2$s\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"wrong class variable name %1$s\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"cannot remove %1$s for %2$s\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"class variable %1$s not defined for %2$s\00", align 1
@ruby_single_main_ractor = external local_unnamed_addr global ptr, align 8
@rb_cModule = external local_unnamed_addr global i64, align 8
@.str.40 = private unnamed_addr constant [12 x i8] c"#<Class:%p>\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"#<Module:%p>\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"#<%li\0B:%p>\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@rb_cFalseClass = external local_unnamed_addr global i64, align 8
@rb_cNilClass = external local_unnamed_addr global i64, align 8
@rb_cTrueClass = external local_unnamed_addr global i64, align 8
@rb_cInteger = external local_unnamed_addr global i64, align 8
@rb_cSymbol = external local_unnamed_addr global i64, align 8
@rb_cFloat = external local_unnamed_addr global i64, align 8
@.str.44 = private unnamed_addr constant [55 x i8] c"can not access global variable %s from non-main Ractor\00", align 1
@.str.45 = private unnamed_addr constant [77 x i8] c"can not access instance variables of shareable objects from non-main Ractors\00", align 1
@ruby_current_ec = external thread_local local_unnamed_addr global ptr, align 8
@rb_shape_tree = external local_unnamed_addr global %struct.rb_shape_tree_t, align 8
@.str.47 = private unnamed_addr constant [70 x i8] c"can not set instance variables of classes/modules by non-main Ractors\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"too many instance variables\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"uninitialized constant %2$s::%1$s\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"uninitialized constant %1$s\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"autoload_table\00", align 1
@autoload_const_type = internal constant %struct.rb_data_type_struct { ptr @.str.53, %struct.anon.19 { ptr @autoload_const_mark_and_move, ptr @autoload_const_free, ptr @autoload_const_memsize, ptr @autoload_const_mark_and_move, [1 x ptr] zeroinitializer }, ptr null, ptr null, i64 33 }, align 8
@autoload_data_type = internal constant %struct.rb_data_type_struct { ptr @.str.55, %struct.anon.19 { ptr @autoload_data_mark_and_move, ptr @autoload_data_free, ptr @autoload_data_memsize, ptr @autoload_data_mark_and_move, [1 x ptr] zeroinitializer }, ptr null, ptr null, i64 33 }, align 8
@.str.53 = private unnamed_addr constant [15 x i8] c"autoload_const\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"autoload_data\00", align 1
@ruby_current_vm_ptr = external local_unnamed_addr global ptr, align 8
@.str.59 = private unnamed_addr constant [43 x i8] c"Expected %li\0B to define %li\0B but it didn't\00", align 1
@.str.60 = private unnamed_addr constant [49 x i8] c"Expected %li\0B to define %li\0B::%li\0B but it didn't\00", align 1
@rb_cBox = external local_unnamed_addr global i64, align 8
@autoload_feature_require.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.61 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@ruby_box_enabled = external local_unnamed_addr global i8, align 1
@.str.64 = private unnamed_addr constant [34 x i8] c"already initialized constant %li\0B\00", align 1
@.str.65 = private unnamed_addr constant [40 x i8] c"already initialized constant %li\0B::%li\0B\00", align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"previous definition of %li\0B was here\00", align 1
@.str.67 = private unnamed_addr constant [80 x i8] c"can not access non-shareable objects in constant %li\0B::%li\0B by non-main Ractor.\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"constant %2$s::%1$s not defined\00", align 1
@.str.71 = private unnamed_addr constant [40 x i8] c"no class/module to define constant %li\0B\00", align 1
@.str.72 = private unnamed_addr constant [69 x i8] c"can not set constants with non-shareable objects by non-main Ractors\00", align 1
@.str.73 = private unnamed_addr constant [38 x i8] c"%li\0B with no argument is just ignored\00", align 1
@.str.74 = private unnamed_addr constant [70 x i8] c"can not access class variables from non-main Ractors (%li\0B from %li\0B)\00", align 1
@.str.75 = private unnamed_addr constant [50 x i8] c"class variable % li\0B of %li\0B is overtaken by %li\0B\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_var_tables() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_id_table_create(i64 noundef 0) #26
  store ptr %i.a, ptr @rb_global_tbl, align 8, !tbaa !11
  %i.b = tail call ptr @rb_st_init_numtable() #26
  store ptr %i.b, ptr @generic_fields_tbl_, align 8, !tbaa !14
  %i.c = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 12) #26
  store i64 %i.c, ptr @autoload, align 8, !tbaa !16
  %i.d = tail call i64 @rb_mutex_new() #26        ; 2 uses
  store i64 %i.d, ptr @autoload_mutex, align 8, !tbaa !16
  %i.e = tail call i64 @rb_obj_hide(i64 noundef %i.d) #26 ; 0 uses
  %i.f = load i64, ptr @autoload_mutex, align 8, !tbaa !16
  tail call void @rb_vm_register_global_object(i64 noundef %i.f) #26
  %i.g = tail call i64 @rb_ident_hash_new() #26   ; 2 uses
  store i64 %i.g, ptr @autoload_features, align 8, !tbaa !16
  %i.h = tail call i64 @rb_obj_hide(i64 noundef %i.g) #26 ; 0 uses
  %i.i = load i64, ptr @autoload_features, align 8, !tbaa !16
  tail call void @rb_vm_register_global_object(i64 noundef %i.i) #26
  ret void
}

declare ptr @rb_id_table_create(i64 noundef) local_unnamed_addr #1

declare ptr @rb_st_init_numtable() local_unnamed_addr #1

declare i64 @rb_mutex_new() local_unnamed_addr #1

declare i64 @rb_obj_hide(i64 noundef) local_unnamed_addr #1

declare void @rb_vm_register_global_object(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ident_hash_new() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 1, 0) i64 @rb_mod_name0(i64 noundef %0, ptr noundef writeonly captures(none) initializes((0, 1)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @classname(i64 noundef %0, ptr noundef %1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 1, 0) i64 @classname(i64 noundef %0, ptr noundef writeonly captures(none) initializes((0, 1)) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  store i8 0, ptr %1, align 1, !tbaa !18
  %i.c = inttoptr i64 %0 to ptr                   ; 14 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = and i64 %i.d, 65536
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 160      ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.b

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.a
  %i.i = getelementptr i8, ptr %i.c, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.j = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.c, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.j, i64 128
  %i.m = load i8, ptr %i.l, align 8, !tbaa !32, !range !34, !noundef !35
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.split7.i, label %bb.f

.split7.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.o = load i64, ptr %i.c, align 8, !tbaa !20
  %i.p = and i64 %i.o, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.d

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.r = load i64, ptr %i.j, align 8, !tbaa !36
  %i.s = call i32 @rb_st_lookup(ptr noundef nonnull %i.q, i64 noundef %i.r, ptr noundef nonnull %i.b) #26
  %.not5.i.i13.i = icmp eq i32 %i.s, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.b, align 8, !tbaa !16
  %i.u = inttoptr i64 %i.t to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.e, %bb.d, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.u, %bb.e ], [ null, %bb.d ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.v = getelementptr i8, ptr %i.c, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.v, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.f:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.c, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.f
  %.0.i = phi ptr [ %i.i, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.w, %bb.f ], [ %i.k, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.x = getelementptr i8, ptr %.0.i, i64 128
  %i.y = load i64, ptr %i.x, align 8, !tbaa !37   ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.m, label %bb.g

bb.g:                                             ; preds = %RCLASS_EXT_READABLE.exit
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !20
  %i.ab = and i64 %i.aa, 65536
  %.not.i.i7 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i7, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i25, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i8

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i8:         ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.c, i64 160     ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !22
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i25, label %bb.h

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i25: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i8, %bb.g
  %i.af = getelementptr i8, ptr %i.c, i64 24
  br label %RCLASS_EXT_READABLE.exit26

bb.h:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i8
  %i.ag = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i9 = icmp eq ptr %i.ag, null
  br i1 %.not.i9, label %.split.i20, label %bb.i

.split.i20:                                       ; preds = %bb.h
  %i.ah = getelementptr i8, ptr %i.c, i64 24
  br label %RCLASS_EXT_READABLE.exit26

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %i.ag, i64 128
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !32, !range !34, !noundef !35
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.split7.i11, label %bb.l

.split7.i11:                                      ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.al = load i64, ptr %i.c, align 8, !tbaa !20
  %i.am = and i64 %i.al, 65536
  %.not.i.i.i10.i12 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i10.i12, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i16, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i13

RCLASS_CLASSEXT_TBL.exit.i.i11.i13:               ; preds = %.split7.i11
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !22 ; 2 uses
  %.not.i.i12.i14 = icmp eq ptr %i.an, null
  br i1 %.not.i.i12.i14, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i16, label %bb.j

bb.j:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i13
  %i.ao = load i64, ptr %i.ag, align 8, !tbaa !36
  %i.ap = call i32 @rb_st_lookup(ptr noundef nonnull %i.an, i64 noundef %i.ao, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i15 = icmp eq i32 %i.ap, 0
  br i1 %.not5.i.i13.i15, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i16, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i16

RCLASS_EXT_READABLE_LOOKUP.exit17.i16:            ; preds = %bb.k, %bb.j, %RCLASS_CLASSEXT_TBL.exit.i.i11.i13, %.split7.i11
  %.0.i.i14.i17 = phi ptr [ %i.ar, %bb.k ], [ null, %bb.j ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i13 ], [ null, %.split7.i11 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i18 = icmp eq ptr %.0.i.i14.i17, null
  %i.as = getelementptr i8, ptr %i.c, i64 24
  %.0.i16.i19 = select i1 %.not.i15.i18, ptr %i.as, ptr %.0.i.i14.i17
  br label %RCLASS_EXT_READABLE.exit26

bb.l:                                             ; preds = %bb.i
  %i.at = getelementptr i8, ptr %i.c, i64 24
  br label %RCLASS_EXT_READABLE.exit26

RCLASS_EXT_READABLE.exit26:                       ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i25, %.split.i20, %RCLASS_EXT_READABLE_LOOKUP.exit17.i16, %bb.l
  %.0.i10 = phi ptr [ %i.af, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i25 ], [ %i.at, %bb.l ], [ %i.ah, %.split.i20 ], [ %.0.i16.i19, %RCLASS_EXT_READABLE_LOOKUP.exit17.i16 ]
  %i.au = getelementptr i8, ptr %.0.i10, i64 125
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = and i8 %i.av, 1
  store i8 %i.aw, ptr %1, align 1, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %RCLASS_EXT_READABLE.exit, %RCLASS_EXT_READABLE.exit26
  %.0 = phi i64 [ %i.y, %RCLASS_EXT_READABLE.exit26 ], [ 4, %RCLASS_EXT_READABLE.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 1, 0) i64 @rb_mod_name(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = call fastcc i64 @classname(i64 noundef %0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_mod_set_temporary_name(i64 noundef returned %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.sub_temporary_name_args, align 8 ; 5 uses
  %3 = alloca %struct.sub_temporary_name_args, align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !16
  %i.e = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 65536
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 160      ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.b

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.a
  %i.k = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.l = tail call ptr @rb_current_box() #26      ; 3 uses
end_hunk_0
begin_hunk_1_@rb_mod_set_temporary_name:bb.a
  %i.ad = icmp eq i64 %1, 4
  br i1 %i.ad, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.ae = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i8 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i8, label %bb.j, label %rb_vm_lock_enter.exit

bb.j:                                             ; preds = %bb.i
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.c) #26
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.i, %bb.j
  %i.af = ptrtoint ptr %3 to i64                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.ag = call i64 @rb_exec_recursive_paired(ptr noundef nonnull @set_sub_temporary_name_topmost, i64 noundef %0, i64 noundef %i.af, i64 noundef %i.af) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ah = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i9 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i9, label %bb.k, label %rb_vm_lock_leave.exit

bb.k:                                             ; preds = %rb_vm_lock_enter.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.c) #26
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %rb_vm_lock_enter.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.y

bb.l:                                             ; preds = %bb.h
  %i.ai = call i64 @rb_string_value(ptr noundef nonnull %i.b) #26 ; 0 uses
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr               ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !40 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ao, ptr noundef nonnull @.str.3) #27
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !20
  %i.aq = and i64 %i.ap, 8192
  %.not.i.i10 = icmp eq i64 %i.aq, 0
  %i.ar = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  br i1 %.not.i.i10, label %RSTRING_END.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !42
  br label %RSTRING_END.exit.i

RSTRING_END.exit.i:                               ; preds = %bb.o, %bb.n
  %i.at = phi ptr [ %i.as, %bb.o ], [ %i.ar, %bb.n ] ; 5 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = getelementptr i8, ptr %i.at, i64 %i.am  ; 4 uses
  %i.aw = call ptr @rb_enc_get(i64 noundef %i.aj) #26
  %.not.i11 = icmp ult ptr %i.at, %i.av
  br i1 %.not.i11, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %RSTRING_END.exit.i
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !42
  %.not33.i = icmp eq i8 %i.ax, 0
  br i1 %.not33.i, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p, %bb.v
  %.027.i = phi ptr [ %.229.lcssa.i, %bb.v ], [ %i.at, %bb.p ] ; 7 uses
  %.not48.i = icmp ult ptr %.027.i, %i.av
  br i1 %.not48.i, label %bb.q, label %is_constant_path.exit

bb.q:                                             ; preds = %.preheader.i
  %i.ay = getelementptr i8, ptr %.027.i, i64 2    ; 2 uses
  %.not34.i = icmp ugt ptr %i.ay, %i.av
  br i1 %.not34.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load i8, ptr %.027.i, align 1, !tbaa !42
  %i.ba = icmp eq i8 %i.az, 58
  br i1 %i.ba, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr i8, ptr %.027.i, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !42
  %i.bd = icmp eq i8 %i.bc, 58
  %spec.select.i = select i1 %i.bd, ptr %i.ay, ptr %.027.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.128.i = phi ptr [ %.027.i, %bb.q ], [ %spec.select.i, %bb.s ], [ %.027.i, %bb.r ] ; 7 uses
  %.12843.i = ptrtoint ptr %.128.i to i64         ; 2 uses
  %i.be = icmp ult ptr %.128.i, %i.av
  br i1 %i.be, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.bf = getelementptr i8, ptr %.128.i, i64 %i.am
  %scevgep.i = getelementptr i8, ptr %i.bf, i64 %i.au
  %i.bg = sub i64 0, %.12843.i
  %scevgep44.i = getelementptr i8, ptr %scevgep.i, i64 %i.bg ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %.lr.ph.preheader.i
  %.22940.i = phi ptr [ %i.bi, %bb.u ], [ %.128.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.bh = load i8, ptr %.22940.i, align 1, !tbaa !42
  %.not35.i = icmp eq i8 %i.bh, 58
  br i1 %.not35.i, label %.critedge.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.bi = getelementptr i8, ptr %.22940.i, i64 1  ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.bi, %scevgep44.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !43

.critedge.i:                                      ; preds = %bb.u, %.lr.ph.i, %bb.t
  %.229.lcssa.i = phi ptr [ %.128.i, %bb.t ], [ %.22940.i, %.lr.ph.i ], [ %scevgep44.i, %bb.u ] ; 3 uses
  %i.bj = icmp eq ptr %.128.i, %.229.lcssa.i
  br i1 %i.bj, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %.critedge.i
  %i.bk = ptrtoint ptr %.229.lcssa.i to i64
  %i.bl = sub i64 %i.bk, %.12843.i
  %i.bm = call i32 @rb_enc_symname_type(ptr noundef %.128.i, i64 noundef %i.bl, ptr noundef %i.aw, i32 noundef 0) #26
  %.not36.i = icmp eq i32 %i.bm, 10
  br i1 %.not36.i, label %.preheader.i, label %.loopexit, !llvm.loop !45

is_constant_path.exit:                            ; preds = %.preheader.i
  %i.bn = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bn, ptr noundef nonnull @.str.4) #27
  unreachable

.loopexit:                                        ; preds = %.critedge.i, %bb.v, %bb.p, %RSTRING_END.exit.i
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !16
  %i.bp = call i64 @rb_str_new_frozen(i64 noundef %i.bo) #26 ; 2 uses
  store i64 %i.bp, ptr %i.b, align 8, !tbaa !16
  %i.bq = call i64 @rb_obj_set_shareable(i64 noundef %i.bp) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.br = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i12 = icmp eq ptr %i.br, null
  br i1 %.not.i.i12, label %bb.w, label %rb_vm_lock_enter.exit13

bb.w:                                             ; preds = %.loopexit
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.d) #26
  br label %rb_vm_lock_enter.exit13

rb_vm_lock_enter.exit13:                          ; preds = %.loopexit, %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i64 %i.bu, ptr %2, align 8, !tbaa !46
  store i64 0, ptr %i.bs, align 8, !tbaa !48
  %i.bv = call i64 @rb_exec_recursive_paired(ptr noundef nonnull @set_sub_temporary_name_topmost, i64 noundef %0, i64 noundef %i.bt, i64 noundef %i.bt) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.bw = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i14 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i14, label %bb.x, label %rb_vm_lock_leave.exit15

bb.x:                                             ; preds = %rb_vm_lock_enter.exit13
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.d) #26
  br label %rb_vm_lock_leave.exit15

rb_vm_lock_leave.exit15:                          ; preds = %rb_vm_lock_enter.exit13, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.y

bb.y:                                             ; preds = %rb_vm_lock_leave.exit15, %rb_vm_lock_leave.exit
  ret i64 %0
}

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_new_frozen(i64 noundef) local_unnamed_addr #1

declare i64 @rb_obj_set_shareable(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_class_path(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = call fastcc i64 @rb_tmp_class_path(i64 noundef %0, ptr noundef %i.a, ptr noundef nonnull @make_temporary_path) ; 2 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_str_dup(i64 noundef %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 4, %bb.a ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_tmp_class_path(i64 noundef %0, ptr noundef nonnull writeonly captures(none) initializes((0, 1)) %1, ptr noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = tail call fastcc i64 @classname(i64 noundef %0, ptr noundef nonnull %1) ; 2 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.b
  %i.h = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20
  %i.j = and i64 %i.i, 31
  %i.k = icmp eq i64 %i.j, 3
  br i1 %i.k, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.l = tail call i64 @rb_obj_class(i64 noundef %0) #26
  %i.m = load i64, ptr @rb_cModule, align 8, !tbaa !16
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.o = getelementptr i8, ptr %i.h, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !49
  %i.q = call fastcc i64 @rb_tmp_class_path(i64 noundef %i.p, ptr noundef %i.a, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.b, %bb.c, %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit
  %.0 = phi i64 [ 4, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.q, %bb.d ], [ 0, %bb.c ], [ 4, %bb.b ]
  store i8 0, ptr %1, align 1, !tbaa !18
  %i.r = tail call i64 %2(i64 noundef %0, i64 noundef %.0) #26, !callees !50
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.012 = phi i64 [ %i.r, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %i.b, %bb.a ]
  ret i64 %.012
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @make_temporary_path(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  switch i64 %1, label %bb.d [
    i64 4, label %bb.b
    i64 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.40, ptr noundef %i.a) #26
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.41, ptr noundef %i.a) #26
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.42, i64 noundef %1, ptr noundef %i.a) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.d, %bb.d ], [ %i.b, %bb.b ], [ %i.c, %bb.c ] ; 7 uses
  %i.e = icmp ne i64 %.0, 0
  %i.f = and i64 %.0, 7
  %i.g = icmp eq i64 %i.f, 0
  %.not11.i = and i1 %i.e, %i.g
  br i1 %.not11.i, label %rb_type.exit.i, label %rb_obj_freeze_inline.exit

rb_type.exit.i:                                   ; preds = %bb.e
  %i.h = inttoptr i64 %.0 to ptr                  ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.j = or i64 %i.i, 2048                        ; 2 uses
  %i.k = and i64 %i.i, 31
  %i.l = icmp eq i64 %i.k, 5
  %i.m = and i64 %i.j, -49179
  %spec.select.i = select i1 %i.l, i64 %i.m, i64 %i.j
  store i64 %spec.select.i, ptr %i.h, align 8, !tbaa !20
  %i.n = tail call i32 @rb_shape_transition_frozen(i64 noundef %.0) #26 ; 2 uses
  %i.o = load i64, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.p = and i64 %i.o, 30
  %switch.i.i = icmp eq i64 %i.p, 2
  br i1 %switch.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_type.exit.i
  tail call void @rb_set_boxed_class_shape_id(i64 noundef %.0, i32 noundef %i.n) #26
  br label %RB_SET_SHAPE_ID.exit.i

bb.g:                                             ; preds = %rb_type.exit.i
  %i.q = and i64 %i.o, 4294967295
  %i.r = zext i32 %i.n to i64
  %i.s = shl nuw i64 %i.r, 32
  %i.t = or disjoint i64 %i.q, %i.s
  store i64 %i.t, ptr %i.h, align 8, !tbaa !20
  br label %RB_SET_SHAPE_ID.exit.i

RB_SET_SHAPE_ID.exit.i:                           ; preds = %bb.g, %bb.f
  %i.u = getelementptr i8, ptr %i.h, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !49
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %rb_obj_freeze_inline.exit, label %bb.h

bb.h:                                             ; preds = %RB_SET_SHAPE_ID.exit.i
  tail call void @rb_freeze_singleton_class(i64 noundef %.0) #26
  br label %rb_obj_freeze_inline.exit

rb_obj_freeze_inline.exit:                        ; preds = %bb.e, %RB_SET_SHAPE_ID.exit.i, %bb.h
  ret i64 %.0
}

declare i64 @rb_str_dup(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 1, 0) i64 @rb_class_path_cached(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = call fastcc range(i64 1, 0) i64 @classname(i64 noundef %0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_search_class_path(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = call fastcc i64 @rb_tmp_class_path(i64 noundef %0, ptr noundef %i.a, ptr noundef nonnull @no_fallback)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @no_fallback(i64 %0, i64 noundef returned %1) #4 {
bb.a:
  ret i64 %1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_set_class_path_string(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = load i64, ptr @rb_cObject, align 8, !tbaa !16
  %i.d = icmp eq i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_str_new_frozen(i64 noundef %2) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = call fastcc i64 @rb_tmp_class_path(i64 noundef %1, ptr noundef %i.b, ptr noundef nonnull @make_temporary_path)
  %i.g = tail call i64 @rb_str_dup(i64 noundef %i.f) #26 ; 3 uses
  %i.h = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.43, i64 noundef 2) #26 ; 0 uses
  %i.i = tail call i64 @rb_str_append(i64 noundef %i.g, i64 noundef %2) #26 ; 0 uses
  %i.j = tail call i64 @rb_fstring(i64 noundef %i.g) #26
  %.pre = load i8, ptr %i.b, align 1, !tbaa !18, !range !34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i8 [ 1, %bb.b ], [ %.pre, %bb.c ]
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.j, %bb.c ]  ; 5 uses
  %i.l = tail call i64 @rb_obj_set_shareable(i64 noundef %.0) #26 ; 0 uses
  %i.m = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20
  %i.o = and i64 %i.n, 65536
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i:        ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.m, i64 160      ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i, label %bb.e

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i, %bb.d
  %i.s = getelementptr i8, ptr %i.m, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

bb.e:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i
  %i.t = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.f

.split.i.i:                                       ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.m, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.t, i64 128
  %i.w = load i8, ptr %i.v, align 8, !tbaa !32, !range !34, !noundef !35
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.split7.i.i, label %bb.i
end_hunk_1
begin_hunk_2_@rb_path_to_class:bb.a
  br i1 %.not18.i, label %bb.o, label %rb_const_search.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.az = load i64, ptr @rb_cObject, align 8, !tbaa !16
  %i.ba = tail call fastcc i64 @rb_const_search_from(i64 noundef %i.az, i64 noundef %i.ar, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null)
  br label %rb_const_search.exit

rb_const_search.exit:                             ; preds = %bb.m, %bb.o
  %.0.i42 = phi i64 [ %i.au, %bb.m ], [ %i.ba, %bb.o ] ; 5 uses
  %i.bb = icmp eq i64 %.0.i42, 36
  br i1 %i.bb, label %rb_const_search.exit.thread, label %bb.p

bb.p:                                             ; preds = %rb_const_search.exit
  %i.bc = icmp eq i64 %.0.i42, 0
  %i.bd = and i64 %.0.i42, 7
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = or i1 %i.bc, %i.be
  br i1 %i.bf, label %rb_namespace_p.exit.thread, label %rb_namespace_p.exit

rb_namespace_p.exit:                              ; preds = %bb.p
  %i.bg = inttoptr i64 %.0.i42 to ptr
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !20
  %i.bi = and i64 %i.bh, 30
  %switch.i = icmp eq i64 %i.bi, 2
  br i1 %switch.i, label %bb.f, label %rb_namespace_p.exit.thread, !llvm.loop !55

rb_namespace_p.exit.thread:                       ; preds = %bb.p, %rb_namespace_p.exit
  %i.bj = load i64, ptr @rb_eTypeError, align 8, !tbaa !16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bj, ptr noundef nonnull @.str.7, i64 noundef %0) #27
  unreachable

bb.q:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr %i.a, ptr %i.b, align 8, !tbaa !56
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #26, !srcloc !57
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.bl = load volatile i64, ptr %i.bk, align 8, !tbaa !16 ; 0 uses
  ret i64 %.032

rb_const_search.exit.thread:                      ; preds = %bb.n, %rb_const_search.exit, %bb.l, %bb.i, %bb.j
  %.3 = phi ptr [ %.13451, %bb.i ], [ %.13451, %bb.j ], [ %.2, %rb_const_search.exit ], [ %.2, %bb.l ], [ %.2, %bb.n ]
  %i.bm = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  %i.bn = ptrtoint ptr %.3 to i64
  %i.bo = sub i64 %i.bn, %i.j
  %i.bp = tail call i64 @rb_str_subseq(i64 noundef %0, i64 noundef 0, i64 noundef %i.bo) #26
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bm, ptr noundef nonnull @.str.8, i64 noundef %i.bp) #27
  unreachable
}

declare ptr @rb_enc_get(i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @QUOTE(i64 noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call i64 @rb_str_quote_unprintable(i64 noundef %0) #26
  ret i64 %i.a
}

declare i64 @rb_check_id_cstr(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_subseq(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_path2class(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_str_new_cstr(ptr noundef nonnull %0) #26
  %i.b = tail call i64 @rb_path_to_class(i64 noundef %i.a)
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_class_name(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = tail call i64 @rb_class_real(i64 noundef %0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.c = call fastcc i64 @rb_tmp_class_path(i64 noundef %i.b, ptr noundef %i.a, ptr noundef nonnull @make_temporary_path) ; 2 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %rb_class_path.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_str_dup(i64 noundef %i.c) #26
  br label %rb_class_path.exit

rb_class_path.exit:                               ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ 4, %bb.a ], [ %i.e, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_class_real(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_class2name(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = tail call i64 @rb_class_real(i64 noundef %0) #28
  %i.c = call fastcc i64 @rb_tmp_class_path(i64 noundef %i.b, ptr noundef %i.a, ptr noundef nonnull @make_temporary_path) ; 2 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.i, %bb.c ], [ %i.h, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_obj_classname(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 8
  br label %rb_class_of.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %0, label %bb.f [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.e:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.f:                                             ; preds = %bb.c
  %i.h = trunc i64 %0 to i1
  br i1 %i.h, label %rb_class_of.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = and i64 %0, 254
  %i.j = icmp eq i64 %i.i, 12
  %spec.select.i = select i1 %i.j, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.in.i = phi ptr [ %i.g, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select.i, %bb.g ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.k = tail call i64 @rb_class_real(i64 noundef %.0.i) #28
  %i.l = call fastcc i64 @rb_tmp_class_path(i64 noundef %i.k, ptr noundef %i.a, ptr noundef nonnull @make_temporary_path) ; 2 uses
  %i.m = icmp eq i64 %i.l, 4
  br i1 %i.m, label %rb_class2name.exit, label %bb.h

bb.h:                                             ; preds = %rb_class_of.exit
  %i.n = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20
  %i.p = and i64 %i.o, 8192
  %.not.i.i = icmp eq i64 %i.p, 0
  %i.q = getelementptr i8, ptr %i.n, i64 24       ; 2 uses
  br i1 %.not.i.i, label %rb_class2name.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  br label %rb_class2name.exit

rb_class2name.exit:                               ; preds = %rb_class_of.exit, %bb.h, %bb.i
  %.0.i1 = phi ptr [ null, %rb_class_of.exit ], [ %i.r, %bb.i ], [ %i.q, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.0.i1
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_free_rb_global_tbl() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rb_global_tbl, align 8, !tbaa !11
  tail call void @rb_id_table_foreach_values(ptr noundef %i.a, ptr noundef nonnull @free_global_entry_i, ptr noundef null) #26
  %i.b = load ptr, ptr @rb_global_tbl, align 8, !tbaa !11
  tail call void @rb_id_table_free(ptr noundef %i.b) #26
  ret void
}

declare void @rb_id_table_foreach_values(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @free_global_entry_i(i64 noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !61
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !61
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 2 uses
  %.not6.i = icmp eq ptr %i.g, null
  br i1 %.not6.i, label %free_global_variable.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.07.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.h = getelementptr i8, ptr %.07.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65   ; 2 uses
  tail call void @ruby_xfree(ptr noundef nonnull %.07.i) #26
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %free_global_variable.exit, label %.lr.ph.i, !llvm.loop !67

free_global_variable.exit:                        ; preds = %.lr.ph.i, %bb.b
  tail call void @ruby_xfree(ptr noundef nonnull %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %free_global_variable.exit, %bb.a
  tail call void @ruby_xfree(ptr noundef nonnull %i.a) #26
  ret i32 2
}

declare void @rb_id_table_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_free_generic_fields_tbl_() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @generic_fields_tbl_, align 8, !tbaa !14
  tail call void @rb_st_free_table(ptr noundef %i.a) #26
  ret void
}

declare void @rb_st_free_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_gvar_ractor_local(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_intern(ptr noundef %0) #26
  %i.b = tail call fastcc ptr @rb_find_global_entry(i64 noundef %i.a)
  %i.c = getelementptr i8, ptr %i.b, i64 16
  store i8 1, ptr %i.c, align 8, !tbaa !68
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @rb_find_global_entry(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #26
  br label %rb_vm_lock_enter.exit

rb_ractor_main_p.exit:                            ; preds = %rb_vm_lock_leave.exit
  %i.d = call zeroext i1 @rb_ractor_main_p_() #26
  br i1 %i.d, label %rb_ractor_main_p.exit.thread, label %bb.c, !prof !69

rb_vm_lock_enter.exit:                            ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr @rb_global_tbl, align 8, !tbaa !11
  %i.f = call i32 @rb_id_table_lookup(ptr noundef %i.e, i64 noundef %0, ptr noundef nonnull %i.a) #26 ; 2 uses
  %i.g = load i64, ptr %i.a, align 8              ; 2 uses
  %i.h = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i8 = icmp eq ptr %i.h, null
  br i1 %.not.i.i8, label %rb_vm_lock_leave.exit, label %rb_vm_lock_leave.exit.thread

rb_vm_lock_leave.exit.thread:                     ; preds = %rb_vm_lock_enter.exit
  %.not7.le12 = icmp eq i32 %i.f, 0
  %i.i = inttoptr i64 %i.g to ptr
  %.1.le13 = select i1 %.not7.le12, ptr null, ptr %i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %rb_ractor_main_p.exit.thread

rb_vm_lock_leave.exit:                            ; preds = %rb_vm_lock_enter.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #26
  %.pre = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %i.j = icmp eq ptr %.pre, null
  %.not7.le = icmp eq i32 %i.f, 0
  %i.k = inttoptr i64 %i.g to ptr                 ; 3 uses
  %.1.le = select i1 %.not7.le, ptr null, ptr %i.k ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br i1 %i.j, label %rb_ractor_main_p.exit, label %rb_ractor_main_p.exit.thread

bb.c:                                             ; preds = %rb_ractor_main_p.exit
  %.not6 = icmp eq ptr %.1.le, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %i.m = load i8, ptr %i.l, align 8, !tbaa !68, !range !34, !noundef !35
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %rb_ractor_main_p.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !16
  %i.p = call ptr @rb_id2name(i64 noundef %0) #26
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @.str.44, ptr noundef %i.p) #27
  unreachable

rb_ractor_main_p.exit.thread:                     ; preds = %rb_vm_lock_leave.exit.thread, %rb_vm_lock_leave.exit, %bb.d, %rb_ractor_main_p.exit
  %.1.le14 = phi ptr [ %.1.le13, %rb_vm_lock_leave.exit.thread ], [ %.1.le, %rb_vm_lock_leave.exit ], [ %i.k, %bb.d ], [ %.1.le, %rb_ractor_main_p.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.1.le14
}

declare i64 @rb_intern(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_gvar_box_ready(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_intern(ptr noundef %0) #26
  %i.b = tail call fastcc ptr @rb_find_global_entry(i64 noundef %i.a)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.d = getelementptr i8, ptr %i.c, i64 56
  store i8 1, ptr %i.d, align 8, !tbaa !70
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_gvar_undef_getter(i64 noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_id_quote_unprintable(i64 noundef %0) #26
  tail call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.9, i64 noundef %i.a) #26
  ret i64 4
}

declare void @rb_warning(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @QUOTE_ID(i64 noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call i64 @rb_id_quote_unprintable(i64 noundef %0) #26
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_gvar_undef_setter(i64 noundef %0, i64 noundef %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call fastcc ptr @rb_global_entry(i64 noundef %1)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  store ptr @rb_gvar_val_getter, ptr %i.c, align 8, !tbaa !71
  %i.d = getelementptr i8, ptr %i.b, i64 24
  store ptr @rb_gvar_val_setter, ptr %i.d, align 8, !tbaa !72
  %i.e = getelementptr i8, ptr %i.b, i64 32
  store ptr @rb_gvar_val_marker, ptr %i.e, align 8, !tbaa !73
  %i.f = getelementptr i8, ptr %i.b, i64 40
  store ptr @rb_gvar_val_compactor, ptr %i.f, align 8, !tbaa !74
  %i.g = inttoptr i64 %0 to ptr
  %i.h = getelementptr i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !75
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @rb_global_entry(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #26
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.b, %bb.a
  %i.c = call fastcc ptr @rb_find_global_entry(i64 noundef %0) ; 2 uses
  %.not21 = icmp eq ptr %i.c, null
  br i1 %.not21, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_vm_lock_enter.exit
  %i.d = call noalias nonnull dereferenceable(24) ptr @ruby_xmalloc(i64 noundef 24) #29 ; 5 uses
  %i.e = call noalias nonnull dereferenceable(64) ptr @ruby_xmalloc(i64 noundef 64) #29 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %0, ptr %i.f, align 8, !tbaa !76
  store ptr %i.e, ptr %i.d, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 0, ptr %i.g, align 8, !tbaa !68
  store i32 1, ptr %i.e, align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @rb_gvar_undef_getter, ptr %i.i, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @rb_gvar_undef_setter, ptr %i.j, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr @rb_gvar_undef_marker, ptr %i.k, align 8, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @rb_gvar_undef_compactor, ptr %i.l, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !77
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr null, ptr %i.n, align 8, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i8 0, ptr %i.o, align 8, !tbaa !70
  %i.p = load ptr, ptr @rb_global_tbl, align 8, !tbaa !11
  %i.q = ptrtoint ptr %i.d to i64
  %i.r = call i32 @rb_id_table_insert(ptr noundef %i.p, i64 noundef %0, i64 noundef %i.q) #26 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %rb_vm_lock_enter.exit, %bb.c
  %.1 = phi ptr [ %i.c, %rb_vm_lock_enter.exit ], [ %i.d, %bb.c ]
  %i.s = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i22 = icmp eq ptr %i.s, null
  br i1 %.not.i.i22, label %bb.e, label %rb_vm_lock_leave.exit

bb.e:                                             ; preds = %bb.d
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #26
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i64 @rb_gvar_val_getter(i64 %0, ptr noundef %1) #4 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_gvar_val_setter(i64 noundef %0, i64 noundef %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call fastcc ptr @rb_global_entry(i64 noundef %1)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = inttoptr i64 %0 to ptr
  %i.d = getelementptr i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !75
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_gvar_val_marker(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64
  tail call void @rb_gc_mark_movable(i64 noundef %i.a) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @rb_gvar_val_compactor(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = tail call i64 @rb_gc_location(i64 noundef %i.c) #26 ; 2 uses
  %.not8 = icmp eq i64 %i.d, %i.c
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = inttoptr i64 %i.d to ptr
  store ptr %i.e, ptr %i.a, align 8, !tbaa !75
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local void @rb_gvar_undef_marker(ptr readnone captures(none) %0) #4 {
bb.a:
  ret void
}

declare void @rb_gc_mark_movable(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i64 @rb_gvar_var_getter(i64 %0, ptr noundef readonly captures(address_is_null) %1) #7 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ 4, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local void @rb_gvar_var_setter(i64 noundef %0, i64 %1, ptr noundef writeonly captures(none) initializes((0, 8)) %2) #8 {
bb.a:
  store i64 %0, ptr %2, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_gvar_var_marker(ptr noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !16
  tail call void @rb_gc_mark_maybe(i64 noundef %i.a) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @rb_gc_mark_maybe(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @rb_gvar_readonly_setter(i64 %0, i64 noundef %1, ptr readnone captures(none) %2) #9 {
bb.a:
  %i.a = tail call fastcc i64 @QUOTE_ID(i64 noundef %1)
  tail call void (i64, ptr, ...) @rb_name_error(i64 noundef %1, ptr noundef nonnull @.str.10, i64 noundef %i.a) #27
  unreachable
}

; Function Attrs: noreturn
declare void @rb_name_error(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_gc_mark_global_tbl() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rb_global_tbl, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_id_table_foreach_values(ptr noundef nonnull %i.a, ptr noundef nonnull @mark_global_entry, ptr noundef null) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @mark_global_entry(i64 noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75
  tail call void %i.d(ptr noundef %i.f) #26
  %i.g = getelementptr i8, ptr %i.b, i64 48
  %.010 = load ptr, ptr %i.g, align 8, !tbaa !78  ; 2 uses
  %.not11 = icmp eq ptr %.010, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.012 = phi ptr [ %.0, %bb.c ], [ %.010, %bb.a ] ; 2 uses
  %i.h = getelementptr i8, ptr %.012, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !79   ; 2 uses
  %.not9 = icmp eq i64 %i.i, 0
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @rb_gc_mark_maybe(i64 noundef %i.i) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.j = getelementptr i8, ptr %.012, i64 24
  %.0 = load ptr, ptr %i.j, align 8, !tbaa !78    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_gc_update_global_tbl() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rb_global_tbl, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_id_table_foreach_values(ptr noundef nonnull %i.a, ptr noundef nonnull @update_global_entry, ptr noundef null) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @update_global_entry(i64 noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74
  tail call void %i.d(ptr noundef %i.b) #26
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_define_hooked_variable(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 4, %bb.a ]
  store volatile i64 %i.d, ptr %i.a, align 8, !tbaa !16
  %i.e = tail call fastcc i64 @global_id(ptr noundef %0)
  %i.f = tail call fastcc ptr @rb_global_entry(i64 noundef %i.e)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  store ptr %1, ptr %i.h, align 8, !tbaa !75
  %.not13 = icmp eq ptr %2, null
  %i.i = select i1 %.not13, ptr @rb_gvar_var_getter, ptr %2
  %i.j = getelementptr i8, ptr %i.g, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !71
  %.not14 = icmp eq ptr %3, null
  %i.k = select i1 %.not14, ptr @rb_gvar_var_setter, ptr %3
  %i.l = getelementptr i8, ptr %i.g, i64 24
  store ptr %i.k, ptr %i.l, align 8, !tbaa !72
  %i.m = getelementptr i8, ptr %i.g, i64 32
  store ptr @rb_gvar_var_marker, ptr %i.m, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr %i.a, ptr %i.b, align 8, !tbaa !56
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #26, !srcloc !81
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.o = load volatile i64, ptr %i.n, align 8, !tbaa !16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @global_id(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !42
  %i.c = icmp eq i8 %i.b, 36
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_intern(ptr noundef nonnull %0) #26
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !16
  %i.f = add i64 %i.e, 1                          ; 4 uses
  %i.g = icmp ult i64 %i.f, 1024
  br i1 %i.g, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.h = add i64 %i.e, 8
  %i.i = lshr i64 %i.h, 3
  %i.j = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef range(i64 1024, 0) %i.f, i64 noundef %i.i) #30 ; 3 uses
  store i8 36, ptr %i.j, align 1, !tbaa !42
  %i.k = getelementptr i8, ptr %i.j, i64 1
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = alloca i8, i64 %i.f, align 16            ; 4 uses
  store i8 36, ptr %i.l, align 16, !tbaa !42
  %i.m = getelementptr i8, ptr %i.l, i64 1
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.n = phi ptr [ %i.k, %.thread ], [ %i.m, %bb.d ]
  %i.o = phi ptr [ %i.j, %.thread ], [ %i.l, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.n, ptr noundef nonnull readonly align 1 %0, i64 noundef range(i64 1, 0) %i.e, i1 noundef false) #26
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %i.l, %bb.d ], [ %i.o, %bb.e ]
  %i.q = call i64 @rb_intern2(ptr noundef nonnull %i.p, i64 noundef %i.f) #26
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.f

bb.f:                                             ; preds = %ruby_nonempty_memcpy.exit, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.q, %ruby_nonempty_memcpy.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_define_variable(ptr noundef nonnull %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.c = load i64, ptr %1, align 8, !tbaa !16
  store volatile i64 %i.c, ptr %i.a, align 8, !tbaa !16
  %i.d = tail call fastcc i64 @global_id(ptr noundef nonnull %0)
  %i.e = tail call fastcc ptr @rb_global_entry(i64 noundef %i.d)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !75
  %i.h = getelementptr i8, ptr %i.f, i64 16
  store ptr @rb_gvar_var_getter, ptr %i.h, align 8, !tbaa !71
  %i.i = getelementptr i8, ptr %i.f, i64 24
  store ptr @rb_gvar_var_setter, ptr %i.i, align 8, !tbaa !72
  %i.j = getelementptr i8, ptr %i.f, i64 32
  store ptr @rb_gvar_var_marker, ptr %i.j, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr %i.a, ptr %i.b, align 8, !tbaa !56
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #26, !srcloc !81
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.l = load volatile i64, ptr %i.k, align 8, !tbaa !16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_define_readonly_variable(ptr noundef nonnull %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.c = load i64, ptr %1, align 8, !tbaa !16
  store volatile i64 %i.c, ptr %i.a, align 8, !tbaa !16
  %i.d = tail call fastcc i64 @global_id(ptr noundef nonnull %0)
  %i.e = tail call fastcc ptr @rb_global_entry(i64 noundef %i.d)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !75
  %i.h = getelementptr i8, ptr %i.f, i64 16
  store ptr @rb_gvar_var_getter, ptr %i.h, align 8, !tbaa !71
  %i.i = getelementptr i8, ptr %i.f, i64 24
  store ptr @rb_gvar_readonly_setter, ptr %i.i, align 8, !tbaa !72
  %i.j = getelementptr i8, ptr %i.f, i64 32
  store ptr @rb_gvar_var_marker, ptr %i.j, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr %i.a, ptr %i.b, align 8, !tbaa !56
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #26, !srcloc !81
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.l = load volatile i64, ptr %i.k, align 8, !tbaa !16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_define_virtual_variable(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not, ptr @rb_gvar_val_getter, ptr %1
  %.not6 = icmp eq ptr %2, null
  %spec.store.select1 = select i1 %.not6, ptr @rb_gvar_readonly_setter, ptr %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store volatile i64 4, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call fastcc i64 @global_id(ptr noundef nonnull %0)
  %i.d = tail call fastcc ptr @rb_global_entry(i64 noundef %i.c)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !75
  %i.g = getelementptr i8, ptr %i.e, i64 16
  store ptr %spec.store.select, ptr %i.g, align 8, !tbaa !71
  %i.h = getelementptr i8, ptr %i.e, i64 24
  store ptr %spec.store.select1, ptr %i.h, align 8, !tbaa !72
  %i.i = getelementptr i8, ptr %i.e, i64 32
  store ptr @rb_gvar_var_marker, ptr %i.i, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr %i.a, ptr %i.b, align 8, !tbaa !56
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #26, !srcloc !81
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.k = load volatile i64, ptr %i.j, align 8, !tbaa !16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_f_trace_var(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !16
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %.preheader
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %i.e = icmp eq i32 %0, 2
  br i1 %i.e, label %thread-pre-split, label %bb.b

bb.b:                                             ; preds = %.thread, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #27
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader
  %i.f = tail call i64 @rb_block_proc() #26
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %.thread, %rb_scan_args_set.exit
  %i.g = phi i64 [ %i.f, %rb_scan_args_set.exit ], [ %i.d, %.thread ] ; 2 uses
  %i.h = icmp eq i64 %i.g, 4
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %thread-pre-split
  %i.i = tail call i64 @rb_f_untrace_var(i32 noundef %0, ptr noundef nonnull %1)
  br label %bb.e

bb.d:                                             ; preds = %thread-pre-split
  %i.j = tail call i64 @rb_to_id(i64 noundef %i.b) #26
  %i.k = tail call fastcc ptr @rb_global_entry(i64 noundef %i.j)
  %i.l = tail call noalias nonnull dereferenceable(32) ptr @ruby_xmalloc(i64 noundef 32) #29 ; 5 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.n = getelementptr i8, ptr %i.m, i64 48       ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.o, ptr %i.p, align 8, !tbaa !65
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @rb_trace_eval, ptr %i.q, align 8, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.g, ptr %i.r, align 8, !tbaa !79
  store i32 0, ptr %i.l, align 8, !tbaa !83
  store ptr %i.l, ptr %i.n, align 8, !tbaa !64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.i, %bb.c ], [ 4, %bb.d ]
  ret i64 %.0
}

declare i64 @rb_block_proc() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_f_untrace_var(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.trace_var, align 8          ; 4 uses
  %3 = alloca %struct.trace_var, align 8          ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = icmp slt i32 %0, 1
  br i1 %i.b, label %bb.d, label %.preheader39

.preheader39:                                     ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !16
  store i64 %i.c, ptr %i.a, align 8, !tbaa !16
  %.not51 = icmp eq i32 %0, 1
  br i1 %.not51, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader39
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16
  %i.f = icmp eq i32 %0, 2
  br label %bb.c

bb.c:                                             ; preds = %.preheader39, %bb.b
  %i.g = phi i64 [ %i.e, %bb.b ], [ 4, %.preheader39 ] ; 3 uses
  %.185.i.lcssa = phi i1 [ %i.f, %bb.b ], [ true, %.preheader39 ]
  br i1 %.185.i.lcssa, label %rb_scan_args_set.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #27
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.c
  %i.h = call i64 @rb_check_id(ptr noundef nonnull %i.a) #26 ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %i.i = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.j = call fastcc i64 @QUOTE(i64 noundef %i.i)
  call void (i64, ptr, ...) @rb_name_error_str(i64 noundef %i.i, ptr noundef nonnull @.str.12, i64 noundef %i.j) #27
  unreachable

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.k = call fastcc ptr @rb_find_global_entry(i64 noundef %i.h) ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call fastcc i64 @QUOTE_ID(i64 noundef %i.h)
  call void (i64, ptr, ...) @rb_name_error(i64 noundef %i.h, ptr noundef nonnull @.str.12, i64 noundef %i.m) #27
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58   ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 48       ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64   ; 6 uses
  %i.q = icmp eq i64 %i.g, 4
  br i1 %i.q, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %.not2546 = icmp eq ptr %i.p, null
  br i1 %.not2546, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %bb.h
  %i.r = call i64 @rb_ary_new() #26               ; 3 uses
  %.not2748 = icmp eq ptr %i.p, null
  br i1 %.not2748, label %._crit_edge, label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.i, %.lr.ph50
  %.02249 = phi ptr [ %i.t, %.lr.ph50 ], [ %i.p, %bb.i ] ; 3 uses
  %i.s = getelementptr i8, ptr %.02249, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65   ; 2 uses
  %i.u = getelementptr i8, ptr %.02249, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !79
  %i.w = call i64 @rb_ary_push(i64 noundef %i.r, i64 noundef %i.v) #26 ; 0 uses
  store i32 1, ptr %.02249, align 8, !tbaa !83
  %.not27 = icmp eq ptr %i.t, null
  br i1 %.not27, label %._crit_edge, label %.lr.ph50, !llvm.loop !84

._crit_edge:                                      ; preds = %.lr.ph50, %bb.i
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !58   ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !77
  %.not28 = icmp eq i32 %i.z, 0
  br i1 %.not28, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %._crit_edge
  %i.aa = getelementptr i8, ptr %i.x, i64 48      ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !65
  %.not12.i = icmp eq ptr %i.ab, null
  br i1 %.not12.i, label %remove_trace.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %i.ad = phi ptr [ %i.aj, %bb.l ], [ %i.ab, %bb.j ] ; 4 uses
  %i.ae = phi ptr [ %i.ai, %bb.l ], [ %i.ac, %bb.j ]
  %.013.i = phi ptr [ %.1.i, %bb.l ], [ %3, %bb.j ]
  %i.af = load i32, ptr %i.ad, align 8, !tbaa !83
  %.not11.i = icmp eq i32 %i.af, 0
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr i8, ptr %i.ad, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !65
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !65
  call void @ruby_xfree(ptr noundef nonnull %i.ad) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %.1.i = phi ptr [ %.013.i, %bb.k ], [ %i.ad, %.lr.ph.i ] ; 2 uses
  %i.ai = getelementptr i8, ptr %.1.i, i64 24     ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !65 ; 2 uses
  %.not.i29 = icmp eq ptr %i.aj, null
  br i1 %.not.i29, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !85

._crit_edge.loopexit.i:                           ; preds = %bb.l
  %.pre.i = load ptr, ptr %i.ac, align 8, !tbaa !65
  br label %remove_trace.exit

remove_trace.exit:                                ; preds = %bb.j, %._crit_edge.loopexit.i
  %i.ak = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ null, %bb.j ]
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.q
  %.147 = phi ptr [ %i.ba, %bb.q ], [ %i.p, %.preheader ] ; 3 uses
  %i.al = getelementptr i8, ptr %.147, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !79
  %i.an = icmp eq i64 %i.am, %i.g
  br i1 %i.an, label %bb.m, label %bb.q

bb.m:                                             ; preds = %.lr.ph
  store i32 1, ptr %.147, align 8, !tbaa !83
  %i.ao = getelementptr i8, ptr %i.n, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !77
  %.not26 = icmp eq i32 %i.ap, 0
  br i1 %.not26, label %.lr.ph.i31.preheader, label %bb.p

.lr.ph.i31.preheader:                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.p, ptr %i.aq, align 8, !tbaa !65
  br label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.preheader, %bb.o
  %i.ar = phi ptr [ %i.ax, %bb.o ], [ %i.p, %.lr.ph.i31.preheader ] ; 4 uses
  %i.as = phi ptr [ %i.aw, %bb.o ], [ %i.aq, %.lr.ph.i31.preheader ]
  %.013.i32 = phi ptr [ %.1.i34, %bb.o ], [ %2, %.lr.ph.i31.preheader ]
  %i.at = load i32, ptr %i.ar, align 8, !tbaa !83
  %.not11.i33 = icmp eq i32 %i.at, 0
  br i1 %.not11.i33, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i31
  %i.au = getelementptr i8, ptr %i.ar, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !65
  store ptr %i.av, ptr %i.as, align 8, !tbaa !65
  call void @ruby_xfree(ptr noundef nonnull %i.ar) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i31
  %.1.i34 = phi ptr [ %.013.i32, %bb.n ], [ %i.ar, %.lr.ph.i31 ] ; 2 uses
  %i.aw = getelementptr i8, ptr %.1.i34, i64 24   ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !65 ; 2 uses
  %.not.i35 = icmp eq ptr %i.ax, null
  br i1 %.not.i35, label %remove_trace.exit38, label %.lr.ph.i31, !llvm.loop !85

remove_trace.exit38:                              ; preds = %bb.o
  %.pre.i37 = load ptr, ptr %i.aq, align 8, !tbaa !65
  store ptr %.pre.i37, ptr %i.o, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.p

bb.p:                                             ; preds = %remove_trace.exit38, %bb.m
  %i.ay = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.g) #26
  br label %.loopexit

bb.q:                                             ; preds = %.lr.ph
  %i.az = getelementptr i8, ptr %.147, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !65 ; 2 uses
  %.not25 = icmp eq ptr %i.ba, null
  br i1 %.not25, label %.loopexit, label %.lr.ph, !llvm.loop !86

.loopexit:                                        ; preds = %bb.q, %.preheader, %._crit_edge, %remove_trace.exit, %bb.p
  %.0 = phi i64 [ %i.r, %._crit_edge ], [ %i.ay, %bb.p ], [ %i.r, %remove_trace.exit ], [ 4, %.preheader ], [ 4, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.0
}

declare i64 @rb_to_id(i64 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @ruby_xmalloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal void @rb_trace_eval(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !16
  %i.b = call i64 @rb_eval_cmd_call_kw(i64 noundef %0, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 0) #26 ; 0 uses
end_hunk_2
begin_hunk_3_@obj_transition_too_complex:bb.a
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.g = and i64 %i.d, 4294901729
  %i.h = zext i32 %i.b to i64
  %i.i = shl nuw i64 %i.h, 32
  %i.j = or disjoint i64 %i.g, %i.i
  %i.k = or disjoint i64 %i.j, 65536
  store i64 %i.k, ptr %i.c, align 8, !tbaa !20
  %i.l = getelementptr i8, ptr %i.c, i64 16
  store ptr %1, ptr %i.l, align 8, !tbaa !42
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.c, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42   ; 2 uses
  %i.o = and i64 %i.d, 4294967265
  %i.p = zext i32 %i.b to i64
  %i.q = shl nuw i64 %i.p, 32
  %i.r = or disjoint i64 %i.o, %i.q
  store i64 %i.r, ptr %i.c, align 8, !tbaa !20
  %i.s = getelementptr i8, ptr %i.c, i64 16
  store ptr %1, ptr %i.s, align 8, !tbaa !42
  %.not18 = icmp eq ptr %i.n, null
  br i1 %.not18, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ruby_xfree(ptr noundef nonnull %i.n) #26
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.t = and i64 %i.d, 256
  %i.u = icmp ne i64 %i.t, 0
  %i.v = tail call i64 @rb_imemo_fields_new_complex_tbl(i64 noundef %0, ptr noundef %1, i1 noundef zeroext %i.u) #26 ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20
  %i.y = and i64 %i.x, 4294967295
  %i.z = zext i32 %i.b to i64
  %i.aa = shl nuw i64 %i.z, 32
  %i.ab = or disjoint i64 %i.y, %i.aa
  store i64 %i.ab, ptr %i.w, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ac = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %bb.f, label %rb_vm_lock_enter.exit.i

bb.f:                                             ; preds = %bb.e
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #26
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.f, %bb.e
  %i.ad = call i64 @rb_obj_fields(i64 noundef %0, i64 noundef 0)
  call fastcc void @rb_obj_set_fields(i64 noundef %0, i64 noundef %i.v, i64 noundef 0, i64 noundef %i.ad)
  %i.ae = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i5.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i5.i, label %bb.g, label %rb_obj_replace_fields.exit

bb.g:                                             ; preds = %rb_vm_lock_enter.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #26
  br label %rb_obj_replace_fields.exit

rb_obj_replace_fields.exit:                       ; preds = %rb_vm_lock_enter.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.c, %bb.d, %rb_obj_replace_fields.exit
  ret i32 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_attr_delete(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @rb_ivar_delete(i64 noundef %0, i64 noundef %1, i64 noundef 4)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_ivar_delete(i64 noundef %0, i64 noundef %1, i64 noundef range(i64 4, 37) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = icmp ne i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp eq i64 %i.e, 0
  %.not3.i.i = and i1 %i.d, %i.f
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !124

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 4 uses
  %i.i = and i64 %i.h, 2048
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !125

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #27
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.j = and i64 %i.h, 31
  %i.k = icmp ne i64 %i.j, 5
  %i.l = and i64 %i.h, 49152
  %.not8.i = icmp eq i64 %i.l, 0
  %or.cond.i = or i1 %i.k, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.b, !prof !126

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #26
  %.pre = load i64, ptr %i.g, align 8, !tbaa !20
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.m = phi i64 [ %i.h, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %2, ptr %i.a, align 8, !tbaa !16
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 31                         ; 3 uses
  switch i32 %i.o, label %.thread [
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 1, label %.thread100
  ]

bb.c:                                             ; preds = %rb_check_frozen_inline.exit, %rb_check_frozen_inline.exit
  %i.p = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.c
  %i.q = tail call zeroext i1 @rb_ractor_main_p_() #26
  br i1 %i.q, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %bb.d, !prof !69

bb.d:                                             ; preds = %rb_ractor_main_p.exit.i
  %i.r = tail call i32 @rb_is_instance_id(i64 noundef %1) #33
  %.not.i74 = icmp eq i32 %i.r, 0
  br i1 %.not.i74, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @.str.47) #27
  unreachable

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.d, %rb_ractor_main_p.exit.i, %bb.c
  %i.t = load i64, ptr %i.g, align 8, !tbaa !20
  %i.u = and i64 %i.t, 16384
  %.not10.i.i = icmp eq i64 %i.u, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.f, !prof !121

bb.f:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.v = getelementptr i8, ptr %i.g, i64 24
  br label %bb.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.w = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i75 = icmp eq ptr %i.w, null
  br i1 %.not.i.i75, label %.split.i.i, label %bb.g

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.x = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %bb.i

bb.g:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.y = getelementptr i8, ptr %i.w, i64 128
  %i.z = load i8, ptr %i.y, align 8, !tbaa !32, !range !34, !noundef !35
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.split7.i.i, label %bb.h

.split7.i.i:                                      ; preds = %bb.g
  %i.ab = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.w)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.g, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.split7.i.i, %.split.i.i, %bb.f
  %.0.i.i = phi ptr [ %i.v, %bb.f ], [ %i.ac, %bb.h ], [ %i.x, %.split.i.i ], [ %i.ab, %.split7.i.i ]
  %i.ad = getelementptr i8, ptr %.0.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !112 ; 5 uses
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %bb.ai, label %bb.j

.thread:                                          ; preds = %rb_check_frozen_inline.exit
  %i.af = tail call i64 @rb_obj_fields(i64 noundef %0, i64 noundef %1) ; 3 uses
  %.not113 = icmp eq i64 %i.af, 0
  br i1 %.not113, label %bb.ai, label %.thread100

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i76 = icmp eq ptr %i.ag, null
  br i1 %.not.i76, label %bb.k, label %.thread100

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call i64 @rb_imemo_fields_clone(i64 noundef %i.ae) #26
  br label %.thread100

.thread100:                                       ; preds = %.thread, %rb_check_frozen_inline.exit, %bb.k, %bb.j
  %.06499103 = phi i64 [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %0, %rb_check_frozen_inline.exit ], [ %i.af, %.thread ] ; 2 uses
  %.165 = phi i64 [ %i.ah, %bb.k ], [ %i.ae, %bb.j ], [ %0, %rb_check_frozen_inline.exit ], [ %i.af, %.thread ] ; 10 uses
  %i.ai = inttoptr i64 %.165 to ptr               ; 8 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !20
  %i.ak = lshr i64 %i.aj, 32
  %i.al = trunc nuw i64 %i.ak to i32              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.am = call i32 @rb_shape_transition_remove_ivar(i64 noundef %.165, i64 noundef %1, ptr noundef nonnull %i.b) #26 ; 6 uses
  %i.an = and i32 %i.am, 134217728
  %.not104 = icmp eq i32 %i.an, 0
  br i1 %.not104, label %3, label %bb.l, !prof !97

bb.l:                                             ; preds = %.thread100
  %i.ao = and i32 %i.al, 134217728
  %.not105 = icmp eq i32 %i.ao, 0
  br i1 %.not105, label %bb.m, label %bb.p, !prof !94

bb.m:                                             ; preds = %bb.l
  %i.ap = icmp eq i32 %i.o, 1
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aq = call fastcc i32 @rb_evict_fields_to_hash(i64 noundef %0) ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ar = call fastcc i64 @imemo_fields_complex_from_obj(i64 noundef %0, i64 noundef %.165, i32 noundef %i.am)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %.2 = phi i64 [ %.165, %bb.n ], [ %i.ar, %bb.o ], [ %.165, %bb.l ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 %1, ptr %i.c, align 8, !tbaa !16
  %.not.i77 = icmp eq i64 %.2, 0
  br i1 %.not.i77, label %rb_imemo_fields_complex_tbl.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = inttoptr i64 %.2 to ptr
  %i.at = getelementptr i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !42
  br label %rb_imemo_fields_complex_tbl.exit

rb_imemo_fields_complex_tbl.exit:                 ; preds = %bb.p, %bb.q
  %.0.i = phi ptr [ %i.au, %bb.q ], [ null, %bb.p ]
  %i.av = call i32 @rb_st_delete(ptr noundef %.0.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #26
  %.not72 = icmp eq i32 %i.av, 0
  br i1 %.not72, label %bb.r, label %bb.s

bb.r:                                             ; preds = %rb_imemo_fields_complex_tbl.exit
  store i64 %2, ptr %i.a, align 8, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %rb_imemo_fields_complex_tbl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.aa

3:                                                ; preds = %.thread100
  %4 = icmp eq i32 %i.am, %i.al
  br i1 %4, label %bb.ah, label %bb.t

bb.t:                                             ; preds = %3
  %.not.i78.a = icmp eq i64 %.165, 0
  br i1 %.not.i78.a, label %rb_imemo_fields_ptr.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = load i64, ptr %i.ai, align 8, !tbaa !20
  %i.ax = and i64 %i.aw, 65536
  %.not5.i = icmp eq i64 %i.ax, 0
  %i.ay = getelementptr i8, ptr %i.ai, i64 16     ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.v, !prof !97

bb.v:                                             ; preds = %bb.u
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %bb.t, %bb.u, %bb.v
  %.0.i79 = phi ptr [ %i.az, %bb.v ], [ null, %bb.t ], [ %i.ay, %bb.u ] ; 3 uses
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !7
  %i.bb = and i32 %i.ba, 524287
  %i.bc = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113 ; 2 uses
  %i.bd = zext nneg i32 %i.bb to i64
  %i.be = getelementptr [40 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 28
  %i.bg = load i16, ptr %i.bf, align 4, !tbaa !120
  %i.bh = add i16 %i.bg, -1                       ; 2 uses
  %i.bi = zext i16 %i.bh to i64
  %i.bj = getelementptr [8 x i8], ptr %.0.i79, i64 %i.bi ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !16
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !16
  %i.bl = and i32 %i.am, 524287
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr [40 x i8], ptr %i.bc, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 28
  %i.bp = load i16, ptr %i.bo, align 4, !tbaa !120 ; 3 uses
  %.not69 = icmp eq i16 %i.bp, 0
  br i1 %.not69, label %bb.z, label %bb.w

bb.w:                                             ; preds = %rb_imemo_fields_ptr.exit
  %i.bq = zext i16 %i.bp to i32                   ; 2 uses
  %i.br = zext i16 %i.bh to i32
  %i.bs = sub nsw i32 %i.bq, %i.br                ; 2 uses
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp slt i32 %i.bs, 0
  br i1 %i.bu, label %bb.x, label %rbimpl_size_mul_or_raise.exit, !prof !94

bb.x:                                             ; preds = %bb.w
  call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef range(i64 -65534, 4294967296) %i.bt) #27
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.w
  %i.bv = getelementptr i8, ptr %i.bj, i64 8
  %i.bw = shl nuw nsw i64 %i.bt, 3
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.bj, ptr noundef nonnull align 1 %i.bv, i64 noundef %i.bw, i1 noundef false) #26
  %i.bx = load i64, ptr %i.ai, align 8, !tbaa !20 ; 2 uses
  %i.by = and i64 %i.bx, 4294967295
  %i.bz = zext i32 %i.am to i64
  %i.ca = shl nuw i64 %i.bz, 32
  %i.cb = or disjoint i64 %i.by, %i.ca
  store i64 %i.cb, ptr %i.ai, align 8, !tbaa !20
  %i.cc = and i64 %i.bx, 65536
  %.not70 = icmp eq i64 %i.cc, 0
  br i1 %.not70, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.cd = call i64 @rb_obj_embedded_size(i32 noundef %i.bq) #26
  %i.ce = call i64 @rb_gc_obj_slot_size(i64 noundef %.165) #26
  %.not71 = icmp ugt i64 %i.cd, %i.ce
  br i1 %.not71, label %bb.aa, label %rb_imemo_fields_ptr.exit83

rb_imemo_fields_ptr.exit83:                       ; preds = %bb.y
  %i.cf = load i64, ptr %i.ai, align 8, !tbaa !20
  %i.cg = and i64 %i.cf, -65537
  store i64 %i.cg, ptr %i.ai, align 8, !tbaa !20
  %i.ch = zext i16 %i.bp to i64
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %5 = getelementptr i8, ptr %i.ai, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %5, ptr noundef nonnull readonly align 1 %.0.i79, i64 noundef range(i64 1, 0) %i.ci, i1 noundef false) #26
  call void @ruby_xfree(ptr noundef nonnull %.0.i79) #26
  br label %bb.aa

bb.z:                                             ; preds = %rb_imemo_fields_ptr.exit
  call void @rb_free_generic_ivar(i64 noundef %0)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %rb_imemo_fields_ptr.exit83, %bb.y, %rbimpl_size_mul_or_raise.exit, %bb.s
  %.4 = phi i64 [ %.2, %bb.s ], [ 0, %bb.z ], [ %.165, %rb_imemo_fields_ptr.exit83 ], [ %.165, %bb.y ], [ %.165, %rbimpl_size_mul_or_raise.exit ] ; 6 uses
  %i.cj = load i64, ptr %i.g, align 8, !tbaa !20  ; 2 uses
  %i.ck = and i64 %i.cj, 4294967295
  %i.cl = zext i32 %i.am to i64
  %i.cm = shl nuw i64 %i.cl, 32
  %i.cn = or disjoint i64 %i.ck, %i.cm
  store i64 %i.cn, ptr %i.g, align 8, !tbaa !20
  %.not73 = icmp eq i64 %.4, %.06499103
  br i1 %.not73, label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  switch i32 %i.o, label %bb.ag [
    i32 1, label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit
    i32 2, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i93
    i32 3, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i93
  ]

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i93:      ; preds = %bb.ab, %bb.ab
  %i.co = and i64 %i.cj, 16384
  %.not10.i.i94 = icmp eq i64 %i.co, 0
  br i1 %.not10.i.i94, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i88, label %bb.ac, !prof !121

bb.ac:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i93
  %i.cp = getelementptr i8, ptr %i.g, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i88: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i93
  %i.cq = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i89, label %.split.i.i92, label %bb.ad

.split.i.i92:                                     ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i88
  %i.cr = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.ad:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i88
  %i.cs = getelementptr i8, ptr %i.cq, i64 128
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !32, !range !34, !noundef !35
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %.split7.i.i91, label %bb.ae

.split7.i.i91:                                    ; preds = %bb.ad
  %i.cv = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.cq)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.cw = getelementptr i8, ptr %i.g, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_EXT_WRITABLE.exit.i:                       ; preds = %bb.ae, %.split7.i.i91, %.split.i.i92, %bb.ac
  %.0.i.i90 = phi ptr [ %i.cp, %bb.ac ], [ %i.cw, %bb.ae ], [ %i.cr, %.split.i.i92 ], [ %i.cv, %.split7.i.i91 ]
  %i.cx = getelementptr i8, ptr %.0.i.i90, i64 16
  store atomic volatile i64 %.4, ptr %i.cx seq_cst, align 8
  %i.cy = icmp eq i64 %.4, 0
  %i.cz = and i64 %.4, 7
  %i.da = icmp ne i64 %i.cz, 0
  %i.db = or i1 %i.cy, %i.da
  br i1 %i.db, label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit, label %bb.af

bb.af:                                            ; preds = %RCLASS_EXT_WRITABLE.exit.i
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %.4) #26
  br label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit

bb.ag:                                            ; preds = %bb.ab
  call fastcc void @rb_obj_set_fields(i64 noundef %0, i64 noundef %.4, i64 noundef %1, i64 noundef %.06499103)
  br label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit

RCLASS_WRITABLE_SET_FIELDS_OBJ.exit:              ; preds = %bb.af, %RCLASS_EXT_WRITABLE.exit.i, %bb.ab, %bb.ag, %bb.aa
  %i.dc = load i64, ptr %i.a, align 8, !tbaa !16
  br label %bb.ah

bb.ah:                                            ; preds = %3, %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit
  %.0 = phi i64 [ %i.dc, %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit ], [ %2, %3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.ai

bb.ai:                                            ; preds = %.thread, %bb.i, %bb.ah
  %.1 = phi i64 [ %.0, %bb.ah ], [ %2, %bb.i ], [ %2, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_obj_init_too_complex(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @obj_transition_too_complex(i64 noundef %0, ptr noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ensure_iv_list_size(i64 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = and i64 %i.b, 65536
  %.not = icmp eq i64 %i.c, 0
  %i.d = getelementptr i8, ptr %i.a, i64 16       ; 3 uses
  br i1 %.not, label %ROBJECT_FIELDS.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = zext i32 %2 to i64
  %i.g = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.e, i64 noundef %i.f, i64 noundef 8) #30
  br label %bb.d

ROBJECT_FIELDS.exit:                              ; preds = %bb.a
  %i.h = zext i32 %2 to i64
  %i.i = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.h, i64 noundef 8) #31 ; 2 uses
  %.not.i11 = icmp eq i32 %1, 0
  br i1 %.not.i11, label %ruby_nonempty_memcpy.exit, label %bb.c

bb.c:                                             ; preds = %ROBJECT_FIELDS.exit
  %i.j = zext i32 %1 to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.i, ptr noundef nonnull readonly align 1 %i.d, i64 noundef range(i64 1, 0) %i.k, i1 noundef false) #26
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %ROBJECT_FIELDS.exit, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !20
  %i.m = or i64 %i.l, 65536
  store i64 %i.m, ptr %i.a, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %ruby_nonempty_memcpy.exit, %bb.b
  %.sink = phi ptr [ %i.i, %ruby_nonempty_memcpy.exit ], [ %i.g, %bb.b ]
  store ptr %.sink, ptr %i.d, align 8, !tbaa !42
  ret void
}

; Function Attrs: allocsize(1,2)
declare nonnull ptr @ruby_xrealloc2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_ivar_foreach(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @rb_field_foreach(i64 noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @rb_obj_copy_ivs_to_hash_table_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr
  tail call void @rb_st_add_direct(ptr noundef %i.a, i64 noundef %0, i64 noundef %1) #26
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_obj_copy_fields_to_hash_table(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  tail call fastcc void @rb_field_foreach(i64 noundef %0, ptr noundef nonnull @rb_obj_copy_ivs_to_hash_table_i, i64 noundef %i.a, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_field_foreach(i64 noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.iv_itr_data, align 8        ; 11 uses
  %5 = alloca %struct.iv_itr_data, align 8        ; 11 uses
  %6 = alloca %struct.iv_itr_data, align 8        ; 11 uses
  %7 = alloca %struct.iv_itr_data, align 8        ; 11 uses
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 6 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 31
  switch i32 %i.h, label %bb.s [
    i32 26, label %imemo_type_p.exit
    i32 1, label %bb.f
    i32 2, label %bb.j
    i32 3, label %bb.j
  ]

imemo_type_p.exit:                                ; preds = %bb.b
  %i.i = and i64 %i.f, 61471
  %.not44 = icmp eq i64 %i.i, 53274
  br i1 %.not44, label %bb.c, label %bb.w

bb.c:                                             ; preds = %imemo_type_p.exit
  %i.j = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i64 %0, ptr %7, align 8, !tbaa !127
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !130
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %2, ptr %i.l, align 8, !tbaa !131
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %1, ptr %i.m, align 8, !tbaa !132
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !133
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 %i.j, ptr %i.o, align 8, !tbaa !134
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.p, i8 0, i64 7, i1 false)
  %i.q = lshr i64 %i.f, 32
  %i.r = trunc nuw i64 %i.q to i32                ; 2 uses
  %i.s = and i32 %i.r, 134217728
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.d, label %rb_imemo_fields_complex_tbl.exit.i

rb_imemo_fields_complex_tbl.exit.i:               ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.e, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  %i.v = ptrtoint ptr %7 to i64
  %i.w = call i32 @rb_st_foreach(ptr noundef %i.u, ptr noundef nonnull @each_hash_iv, i64 noundef %i.v) #26 ; 0 uses
  br label %imemo_fields_each.exit

bb.d:                                             ; preds = %bb.c
  %i.x = and i64 %i.f, 65536
  %.not5.i.i = icmp eq i64 %i.x, 0
  %i.y = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  br i1 %.not5.i.i, label %rb_imemo_fields_ptr.exit.i, label %bb.e, !prof !97

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit.i

rb_imemo_fields_ptr.exit.i:                       ; preds = %bb.e, %bb.d
  %.0.i12.i = phi ptr [ %i.z, %bb.e ], [ %i.y, %bb.d ]
  store ptr %.0.i12.i, ptr %i.n, align 8, !tbaa !133
  %i.aa = call zeroext i1 @rb_shape_foreach_field(i32 noundef %i.r, ptr noundef nonnull @iterate_over_shapes_callback, ptr noundef nonnull %7) #26 ; 0 uses
  br label %imemo_fields_each.exit

imemo_fields_each.exit:                           ; preds = %rb_imemo_fields_complex_tbl.exit.i, %rb_imemo_fields_ptr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.w

bb.f:                                             ; preds = %bb.b
  %i.ab = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i64 %0, ptr %6, align 8, !tbaa !127
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.ac, align 8, !tbaa !130
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %2, ptr %i.ad, align 8, !tbaa !131
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %1, ptr %i.ae, align 8, !tbaa !132
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr null, ptr %i.af, align 8, !tbaa !133
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 %i.ab, ptr %i.ag, align 8, !tbaa !134
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ah, i8 0, i64 7, i1 false)
  %i.ai = lshr i64 %i.f, 32
  %i.aj = trunc nuw i64 %i.ai to i32              ; 2 uses
  %i.ak = and i32 %i.aj, 134217728
  %.not.i25 = icmp eq i32 %i.ak, 0
  br i1 %.not.i25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr i8, ptr %i.e, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42
  %i.an = ptrtoint ptr %6 to i64
  %i.ao = call i32 @rb_st_foreach(ptr noundef %i.am, ptr noundef nonnull @each_hash_iv, i64 noundef %i.an) #26 ; 0 uses
  br label %obj_fields_each.exit

bb.h:                                             ; preds = %bb.f
  %i.ap = and i64 %i.f, 65536
  %.not.i.i = icmp eq i64 %i.ap, 0
  %i.aq = getelementptr i8, ptr %i.e, i64 16      ; 2 uses
  br i1 %.not.i.i, label %ROBJECT_FIELDS.exit.i, label %bb.i, !prof !97

bb.i:                                             ; preds = %bb.h
end_hunk_3
begin_hunk_4_@autoload_synchronized:bb.a
  %i.i = icmp eq i64 %i.h, 36
  br i1 %i.i, label %bb.c, label %rb_obj_written.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = load i64, ptr %i.b, align 8, !tbaa !158
  %i.k = load i64, ptr %i.d, align 8, !tbaa !160
  tail call fastcc void @const_set(i64 noundef %i.j, i64 noundef %i.k, i64 noundef 36)
  %i.l = load i64, ptr %i.b, align 8, !tbaa !158  ; 7 uses
  %i.m = load i64, ptr @autoload, align 8, !tbaa !16
  %i.n = tail call i64 @rb_ivar_lookup(i64 noundef %i.l, i64 noundef %i.m, i64 noundef 0) ; 2 uses
  %i.o = and i64 %i.n, -5
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.d, label %autoload_table_lookup_or_create.exit

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i64 @rb_data_typed_object_wrap(i64 noundef 0, ptr noundef null, ptr noundef nonnull @autoload_table_type) #26 ; 3 uses
  %i.q = load i64, ptr @autoload, align 8, !tbaa !16
  %i.r = icmp ne i64 %i.l, 0
  %i.s = and i64 %i.l, 7
  %i.t = icmp eq i64 %i.s, 0
  %.not3.i.i.i.i = and i1 %i.r, %i.t
  br i1 %.not3.i.i.i.i, label %RB_OBJ_FROZEN.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !124

RB_OBJ_FROZEN.exit.i.i.i:                         ; preds = %bb.d
  %i.u = inttoptr i64 %i.l to ptr
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20   ; 3 uses
  %i.w = and i64 %i.v, 2048
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !125

RB_OBJ_FROZEN.exit.thread.i.i.i:                  ; preds = %RB_OBJ_FROZEN.exit.i.i.i, %bb.d
  tail call void @rb_error_frozen_object(i64 noundef %i.l) #27
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %RB_OBJ_FROZEN.exit.i.i.i
  %i.x = and i64 %i.v, 31
  %i.y = icmp ne i64 %i.x, 5
  %i.z = and i64 %i.v, 49152
  %.not8.i.i.i = icmp eq i64 %i.z, 0
  %or.cond.i.i.i = or i1 %i.y, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %rb_class_ivar_set.exit.i, label %bb.e, !prof !126

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  tail call void @rb_str_modify(i64 noundef %i.l) #26
  br label %rb_class_ivar_set.exit.i

rb_class_ivar_set.exit.i:                         ; preds = %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.aa = call fastcc zeroext i16 @class_ivar_set(i64 noundef %i.l, i64 noundef %i.q, i64 noundef %i.p, ptr noundef %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ab = tail call ptr @rb_st_init_numtable() #26
  %i.ac = inttoptr i64 %i.p to ptr
  %i.ad = getelementptr i8, ptr %i.ac, i64 32
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !141
  br label %autoload_table_lookup_or_create.exit

autoload_table_lookup_or_create.exit:             ; preds = %bb.c, %rb_class_ivar_set.exit.i
  %.0.i = phi i64 [ %i.p, %rb_class_ivar_set.exit.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.ae = tail call ptr @rb_check_typeddata(i64 noundef %.0.i, ptr noundef nonnull @autoload_table_type) #26
  %i.af = getelementptr i8, ptr %i.b, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !161
  %i.ah = tail call i64 @rb_fstring(i64 noundef %i.ag) #26 ; 6 uses
  %i.ai = load i64, ptr @autoload_features, align 8, !tbaa !16
  %i.aj = tail call i64 @rb_hash_aref(i64 noundef %i.ai, i64 noundef %i.ah) #26 ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 4
  br i1 %i.ak, label %bb.f, label %bb.i

bb.f:                                             ; preds = %autoload_table_lookup_or_create.exit
  %i.al = tail call i64 @rb_data_typed_object_zalloc(i64 noundef 0, i64 noundef 40, ptr noundef nonnull @autoload_data_type) #26 ; 4 uses
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !150
  %i.ap = trunc i64 %i.ao to i1
  %i.aq = getelementptr i8, ptr %i.am, i64 32     ; 2 uses
  br i1 %i.ap, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !141
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.g, %bb.f
  %i.as = phi ptr [ %i.ar, %bb.g ], [ %i.aq, %bb.f ] ; 5 uses
  store i64 %i.ah, ptr %i.as, align 8, !tbaa !16
  %i.at = icmp eq i64 %i.ah, 0
  %i.au = and i64 %i.ah, 7
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = or i1 %i.at, %i.av
  br i1 %i.aw, label %rb_obj_write.exit.i, label %bb.h

bb.h:                                             ; preds = %RTYPEDDATA_GET_DATA.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %i.al, i64 noundef %i.ah) #26
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.h, %RTYPEDDATA_GET_DATA.exit.i
  %i.ax = getelementptr i8, ptr %i.as, i64 8
  store i64 4, ptr %i.ax, align 8, !tbaa !16
  %i.ay = getelementptr i8, ptr %i.as, i64 24     ; 3 uses
  %i.az = getelementptr i8, ptr %i.as, i64 32
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !167
  store ptr %i.ay, ptr %i.ay, align 8, !tbaa !169
  %i.ba = load i64, ptr @autoload_features, align 8, !tbaa !16
  %i.bb = tail call i64 @rb_hash_aset(i64 noundef %i.ba, i64 noundef %i.ah, i64 noundef %i.al) #26 ; 0 uses
  br label %autoload_feature_lookup_or_create.exit

bb.i:                                             ; preds = %autoload_table_lookup_or_create.exit
  %i.bc = tail call ptr @rb_check_typeddata(i64 noundef %i.aj, ptr noundef nonnull @autoload_data_type) #26
  br label %autoload_feature_lookup_or_create.exit

autoload_feature_lookup_or_create.exit:           ; preds = %rb_obj_write.exit.i, %bb.i
  %.037 = phi ptr [ %i.as, %rb_obj_write.exit.i ], [ %i.bc, %bb.i ] ; 2 uses
  %.0.i34 = phi i64 [ %i.al, %rb_obj_write.exit.i ], [ %i.aj, %bb.i ] ; 4 uses
  %i.bd = tail call i64 @rb_data_typed_object_zalloc(i64 noundef 0, i64 noundef 80, ptr noundef nonnull @autoload_const_type) #26 ; 8 uses
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !150
  %i.bh = trunc i64 %i.bg to i1
  %i.bi = getelementptr i8, ptr %i.be, i64 32     ; 2 uses
  br i1 %i.bh, label %RTYPEDDATA_GET_DATA.exit, label %bb.j

bb.j:                                             ; preds = %autoload_feature_lookup_or_create.exit
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !141
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %autoload_feature_lookup_or_create.exit, %bb.j
  %i.bk = phi ptr [ %i.bj, %bb.j ], [ %i.bi, %autoload_feature_lookup_or_create.exit ] ; 10 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 24
  %i.bm = getelementptr i8, ptr %i.b, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !162 ; 4 uses
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !16
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = and i64 %i.bn, 7
  %i.bq = icmp ne i64 %i.bp, 0
  %i.br = or i1 %i.bo, %i.bq
  br i1 %i.br, label %rb_obj_write.exit, label %bb.k

bb.k:                                             ; preds = %RTYPEDDATA_GET_DATA.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.bd, i64 noundef %i.bn) #26
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %RTYPEDDATA_GET_DATA.exit, %bb.k
  %i.bs = getelementptr i8, ptr %i.bk, i64 32
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !158 ; 4 uses
  store i64 %i.bt, ptr %i.bs, align 8, !tbaa !16
  %i.bu = icmp eq i64 %i.bt, 0
  %i.bv = and i64 %i.bt, 7
  %i.bw = icmp ne i64 %i.bv, 0
  %i.bx = or i1 %i.bu, %i.bw
  br i1 %i.bx, label %rb_obj_write.exit35, label %bb.l

bb.l:                                             ; preds = %rb_obj_write.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.bd, i64 noundef %i.bt) #26
  br label %rb_obj_write.exit35

rb_obj_write.exit35:                              ; preds = %rb_obj_write.exit, %bb.l
  %i.by = load i64, ptr %i.d, align 8, !tbaa !160
  %i.bz = getelementptr i8, ptr %i.bk, i64 40
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !156
  %i.ca = getelementptr i8, ptr %i.bk, i64 48
  store i64 36, ptr %i.ca, align 8, !tbaa !152
  %i.cb = getelementptr i8, ptr %i.bk, i64 56
  store i32 0, ptr %i.cb, align 8, !tbaa !153
  %i.cc = getelementptr i8, ptr %i.bk, i64 16
  store i64 %.0.i34, ptr %i.cc, align 8, !tbaa !16
  %i.cd = icmp eq i64 %.0.i34, 0
  %i.ce = and i64 %.0.i34, 7
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = or i1 %i.cd, %i.cf
  br i1 %i.cg, label %rb_obj_write.exit36, label %bb.m

bb.m:                                             ; preds = %rb_obj_write.exit35
  tail call void @rb_gc_writebarrier(i64 noundef %i.bd, i64 noundef %.0.i34) #26
  br label %rb_obj_write.exit36

rb_obj_write.exit36:                              ; preds = %rb_obj_write.exit35, %bb.m
  %i.ch = getelementptr i8, ptr %.037, i64 24
  store ptr %i.ch, ptr %i.bk, align 8, !tbaa !154
  %i.ci = getelementptr i8, ptr %.037, i64 32     ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !155 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bk, i64 8
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !155
  store ptr %i.bk, ptr %i.cj, align 8, !tbaa !154
  store ptr %i.bk, ptr %i.ci, align 8, !tbaa !155
  %i.cl = load i64, ptr %i.d, align 8, !tbaa !160
  %i.cm = tail call i32 @rb_st_insert(ptr noundef %i.ae, i64 noundef %i.cl, i64 noundef %i.bd) #26 ; 0 uses
  %i.cn = icmp eq i64 %i.bd, 0
  %i.co = and i64 %i.bd, 7
  %i.cp = icmp ne i64 %i.co, 0
  %i.cq = or i1 %i.cn, %i.cp
  br i1 %i.cq, label %rb_obj_written.exit, label %bb.n

bb.n:                                             ; preds = %rb_obj_write.exit36
  tail call void @rb_gc_writebarrier(i64 noundef %.0.i, i64 noundef %i.bd) #26
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.n, %rb_obj_write.exit36, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ 20, %rb_obj_write.exit36 ], [ 20, %bb.n ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @rb_autoloading_value(i64 noundef %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @autoload_data(i64 noundef %0, i64 noundef %1) ; 2 uses
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %autoloading_const_entry.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @rb_check_typeddata(i64 noundef %i.a, ptr noundef nonnull @autoload_const_type) #26 ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !146
  %i.e = tail call ptr @rb_check_typeddata(i64 noundef %i.d, ptr noundef nonnull @autoload_data_type) #26 ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %autoloading_const_entry.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !170
  %i.h = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !163
  %i.i = getelementptr i8, ptr %i.h, i64 496
  %i.j = load i64, ptr %i.i, align 8, !tbaa !172
  %.not12.i.i = icmp eq i64 %i.g, %i.j
  %.phi.trans.insert.i = getelementptr i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %.not12.i.i, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  store i64 4, ptr %.phi.trans.insert.i, align 8, !tbaa !16
  store i64 0, ptr %i.f, align 8, !tbaa !170
  br label %autoloading_const_entry.exit.thread

bb.d:                                             ; preds = %bb.c
  %.val.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !189 ; 2 uses
  %.not.i9.i = icmp eq i64 %.val.pre.i, 4
  br i1 %.not.i9.i, label %autoloading_const_entry.exit.thread, label %autoload_by_current.exit.i

autoload_by_current.exit.i:                       ; preds = %bb.d
  %i.k = tail call i64 @rb_mutex_owned_p(i64 noundef %.val.pre.i) #26
  %.not11.i = icmp eq i64 %i.k, 0
  br i1 %.not11.i, label %autoloading_const_entry.exit.thread, label %bb.e

bb.e:                                             ; preds = %autoload_by_current.exit.i
  %i.l = getelementptr i8, ptr %i.b, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !152  ; 2 uses
  %i.n = icmp eq i64 %i.m, 36
  br i1 %i.n, label %autoloading_const_entry.exit.thread, label %autoloading_const_entry.exit

autoloading_const_entry.exit:                     ; preds = %bb.e
  %.not12 = icmp eq ptr %2, null
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %autoloading_const_entry.exit
  store i64 %i.m, ptr %2, align 8, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %autoloading_const_entry.exit
  %.not13 = icmp eq ptr %3, null
  br i1 %.not13, label %autoloading_const_entry.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %i.b, i64 56
  %i.p = load i32, ptr %i.o, align 8, !tbaa !153
  store i32 %i.p, ptr %3, align 4, !tbaa !7
  br label %autoloading_const_entry.exit.thread

autoloading_const_entry.exit.thread:              ; preds = %.thread.i, %bb.d, %autoload_by_current.exit.i, %bb.e, %bb.b, %bb.a, %bb.g, %bb.h
  %.0 = phi i32 [ 1, %bb.g ], [ 1, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %autoload_by_current.exit.i ], [ 0, %bb.d ], [ 0, %.thread.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_autoload_load(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.autoload_load_arguments, align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = tail call ptr @rb_const_lookup(i64 noundef %0, i64 noundef %1) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !165
  %i.f = icmp eq i64 %i.e, 36
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %rb_ractor_main_p.exit, label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit:                            ; preds = %bb.c
  %i.h = tail call zeroext i1 @rb_ractor_main_p_() #26
  br i1 %i.h, label %rb_ractor_main_p.exit.thread, label %bb.d, !prof !69

bb.d:                                             ; preds = %rb_ractor_main_p.exit
  %i.i = tail call i64 @rb_ractor_autoload_load(i64 noundef %0, i64 noundef %1) #26
  br label %bb.g

rb_ractor_main_p.exit.thread:                     ; preds = %bb.c, %rb_ractor_main_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i64 %0, ptr %2, align 8, !tbaa !190
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.j, align 8, !tbaa !194
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !195
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i64 4, ptr %i.m, align 8, !tbaa !196
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.o = load i64, ptr @autoload_mutex, align 8, !tbaa !16
  %i.p = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.q = call i64 @rb_mutex_synchronize(i64 noundef %i.o, ptr noundef nonnull @autoload_load_needed, i64 noundef %i.p) #26 ; 2 uses
  store i64 %i.q, ptr %i.a, align 8, !tbaa !16
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rb_ractor_main_p.exit.thread
  %i.s = load i32, ptr %i.c, align 8, !tbaa !197
  %i.t = and i32 %i.s, 511
  store i32 %i.t, ptr %i.k, align 8, !tbaa !195
  %i.u = load i64, ptr %i.m, align 8, !tbaa !196
  %i.v = call i64 @rb_mutex_synchronize(i64 noundef %i.u, ptr noundef nonnull @autoload_try_load, i64 noundef %i.p) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr %i.a, ptr %i.b, align 8, !tbaa !56
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #26, !srcloc !198
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.x = load volatile i64, ptr %i.w, align 8, !tbaa !16 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %rb_ractor_main_p.exit.thread, %bb.e
  %.0 = phi i64 [ %i.v, %bb.e ], [ 0, %rb_ractor_main_p.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.f, %bb.d
  %.1 = phi i64 [ %i.i, %bb.d ], [ %.0, %bb.f ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_const_lookup(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = and i64 %i.e, 65536
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 160      ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.b

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.a
  %i.j = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.k = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.k, i64 128
  %i.n = load i8, ptr %i.m, align 8, !tbaa !32, !range !34, !noundef !35
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %.split7.i, label %bb.f

.split7.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.p = load i64, ptr %i.d, align 8, !tbaa !20
  %i.q = and i64 %i.p, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.d

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.s = load i64, ptr %i.k, align 8, !tbaa !36
  %i.t = call i32 @rb_st_lookup(ptr noundef nonnull %i.r, i64 noundef %i.s, ptr noundef nonnull %i.c) #26
  %.not5.i.i13.i = icmp eq i32 %i.t, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.c, align 8, !tbaa !16
  %i.v = inttoptr i64 %i.u to ptr
end_hunk_4
begin_hunk_5_@rb_autoload_p
define dso_local i64 @rb_autoload_p(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_autoload_at_p(i64 noundef %0, i64 noundef %1, i32 noundef 1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_autoload_at_p(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %.not16 = icmp eq i32 %2, 0
  br i1 %.not16, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %i.b = tail call fastcc i32 @autoload_defined_p(i64 noundef %0, i64 noundef %1)
  %.not.us = icmp eq i32 %i.b, 0
  br i1 %.not.us, label %get_autoload_data.exit, label %.split21.us

.split:                                           ; preds = %bb.a, %RCLASS_EXT_READABLE.exit
  %.010 = phi i64 [ %i.z, %RCLASS_EXT_READABLE.exit ], [ %0, %bb.a ] ; 3 uses
  %i.c = call fastcc i32 @autoload_defined_p(i64 noundef %.010, i64 noundef %1)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.split21.us

bb.b:                                             ; preds = %.split
  %i.d = inttoptr i64 %.010 to ptr                ; 7 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = and i64 %i.e, 65536
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.d, i64 160      ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.c

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.k = call ptr @rb_current_box() #26           ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.split.i, label %bb.d

.split.i:                                         ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.k, i64 128
  %i.n = load i8, ptr %i.m, align 8, !tbaa !32, !range !34, !noundef !35
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %.split7.i, label %bb.g

.split7.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.p = load i64, ptr %i.d, align 8, !tbaa !20
  %i.q = and i64 %i.p, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.s = load i64, ptr %i.k, align 8, !tbaa !36
  %i.t = call i32 @rb_st_lookup(ptr noundef nonnull %i.r, i64 noundef %i.s, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i = icmp eq i32 %i.t, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.a, align 8, !tbaa !16
  %i.v = inttoptr i64 %i.u to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.f, %bb.e, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.v, %bb.f ], [ null, %bb.e ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.w = getelementptr i8, ptr %i.d, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.w, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.g:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.g
  %.0.i = phi ptr [ %i.j, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.x, %bb.g ], [ %i.l, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.y = getelementptr i8, ptr %.0.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !205  ; 2 uses
  %.not17 = icmp eq i64 %i.z, 0
  br i1 %.not17, label %get_autoload_data.exit, label %.split, !llvm.loop !206

.split21.us:                                      ; preds = %.split, %.split.us
  %.us-phi = phi i64 [ %0, %.split.us ], [ %.010, %.split ]
  %i.aa = call fastcc i64 @check_autoload_required(i64 noundef %.us-phi, i64 noundef %1, ptr noundef null) ; 2 uses
  %.not14 = icmp eq i64 %i.aa, 0
  br i1 %.not14, label %get_autoload_data.exit, label %bb.h

bb.h:                                             ; preds = %.split21.us
  %i.ab = call ptr @rb_check_typeddata(i64 noundef %i.aa, ptr noundef nonnull @autoload_const_type) #26
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !146
  %i.ae = call ptr @rb_check_typeddata(i64 noundef %i.ad, ptr noundef nonnull @autoload_data_type) #26 ; 4 uses
  %.not.i18 = icmp eq ptr %i.ae, null
  br i1 %.not.i18, label %get_autoload_data.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr i8, ptr %i.ae, i64 16     ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !170
  %i.ah = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !163
  %i.ai = getelementptr i8, ptr %i.ah, i64 496
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !172
  %.not12.i = icmp eq i64 %i.ag, %i.aj
  br i1 %.not12.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %i.ae, i64 8
  store i64 4, ptr %i.ak, align 8, !tbaa !16
  store i64 0, ptr %i.af, align 8, !tbaa !170
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !204
  br label %get_autoload_data.exit

get_autoload_data.exit:                           ; preds = %RCLASS_EXT_READABLE.exit, %.split.us, %bb.h, %bb.k, %.split21.us
  %.0 = phi i64 [ %i.al, %bb.k ], [ 4, %bb.h ], [ 4, %.split21.us ], [ 4, %.split.us ], [ 4, %RCLASS_EXT_READABLE.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @autoload_defined_p(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_const_lookup(i64 noundef %0, i64 noundef %1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %rb_autoloading_value.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !165
  %i.d = icmp eq i64 %i.c, 36
  br i1 %i.d, label %bb.c, label %rb_autoloading_value.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc i64 @autoload_data(i64 noundef %0, i64 noundef %1) ; 2 uses
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %rb_autoloading_value.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @rb_check_typeddata(i64 noundef %i.e, ptr noundef nonnull @autoload_const_type) #26 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !146
  %i.i = tail call ptr @rb_check_typeddata(i64 noundef %i.h, ptr noundef nonnull @autoload_data_type) #26 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %rb_autoloading_value.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.i, i64 16       ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !170
  %i.l = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !163
  %i.m = getelementptr i8, ptr %i.l, i64 496
  %i.n = load i64, ptr %i.m, align 8, !tbaa !172
  %.not12.i.i.i = icmp eq i64 %i.k, %i.n
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %.not12.i.i.i, label %bb.f, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e
  store i64 4, ptr %.phi.trans.insert.i.i, align 8, !tbaa !16
  store i64 0, ptr %i.j, align 8, !tbaa !170
  br label %rb_autoloading_value.exit

bb.f:                                             ; preds = %bb.e
  %.val.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !189 ; 2 uses
  %.not.i9.i.i = icmp eq i64 %.val.pre.i.i, 4
  br i1 %.not.i9.i.i, label %rb_autoloading_value.exit, label %autoload_by_current.exit.i.i

autoload_by_current.exit.i.i:                     ; preds = %bb.f
  %i.o = tail call i64 @rb_mutex_owned_p(i64 noundef %.val.pre.i.i) #26
  %.not11.i.i = icmp eq i64 %i.o, 0
  br i1 %.not11.i.i, label %rb_autoloading_value.exit, label %bb.g

bb.g:                                             ; preds = %autoload_by_current.exit.i.i
  %i.p = getelementptr i8, ptr %i.f, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !152
  %i.r = icmp eq i64 %i.q, 36
  %i.s = zext i1 %i.r to i32
  br label %rb_autoloading_value.exit

rb_autoloading_value.exit:                        ; preds = %autoload_by_current.exit.i.i, %bb.f, %.thread.i.i, %bb.d, %bb.c, %bb.g, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.f ], [ 1, %.thread.i.i ], [ 1, %bb.c ], [ 1, %bb.d ], [ %i.s, %bb.g ], [ 1, %autoload_by_current.exit.i.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @check_autoload_required(i64 noundef %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call fastcc i64 @autoload_data(i64 noundef %0, i64 noundef %1) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %get_autoload_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_check_typeddata(i64 noundef %i.b, ptr noundef nonnull @autoload_const_type) #26
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !146
  %i.f = tail call ptr @rb_check_typeddata(i64 noundef %i.e, ptr noundef nonnull @autoload_data_type) #26 ; 5 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %get_autoload_data.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.f, i64 16       ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !170
  %i.i = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !163
  %i.j = getelementptr i8, ptr %i.i, i64 496
  %i.k = load i64, ptr %i.j, align 8, !tbaa !172
  %.not12.i = icmp eq i64 %i.h, %i.k
  %.phi.trans.insert = getelementptr i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not12.i, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  store i64 4, ptr %.phi.trans.insert, align 8, !tbaa !16
  store i64 0, ptr %i.g, align 8, !tbaa !170
  %i.l = load i64, ptr %i.f, align 8, !tbaa !204
  br label %autoload_by_someone_else.exit.thread

bb.d:                                             ; preds = %bb.c
  %.val.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !189 ; 2 uses
  %i.m = load i64, ptr %i.f, align 8, !tbaa !204  ; 2 uses
  %.not.i20 = icmp eq i64 %.val.pre, 4
  br i1 %.not.i20, label %autoload_by_someone_else.exit.thread, label %autoload_by_someone_else.exit

autoload_by_someone_else.exit:                    ; preds = %bb.d
  %i.n = tail call i64 @rb_mutex_owned_p(i64 noundef %.val.pre) #26
  %.not2.i.not = icmp eq i64 %i.n, 0
  br i1 %.not2.i.not, label %get_autoload_data.exit, label %autoload_by_someone_else.exit.thread

autoload_by_someone_else.exit.thread:             ; preds = %.thread, %bb.d, %autoload_by_someone_else.exit
  %i.o = phi i64 [ %i.l, %.thread ], [ %i.m, %bb.d ], [ %i.m, %autoload_by_someone_else.exit ]
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !20
  %i.r = and i64 %i.q, 8192
  %.not.i21 = icmp eq i64 %i.r, 0
  %i.s = getelementptr i8, ptr %i.p, i64 24       ; 2 uses
  br i1 %.not.i21, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %autoload_by_someone_else.exit.thread
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %autoload_by_someone_else.exit.thread, %bb.e
  %i.u = phi ptr [ %i.t, %bb.e ], [ %i.s, %autoload_by_someone_else.exit.thread ] ; 2 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !200
  %i.v = call i32 @rb_feature_provided(ptr noundef %i.u, ptr noundef nonnull %i.a) #26
  %.not19 = icmp eq i32 %i.v, 0
  br i1 %.not19, label %get_autoload_data.exit, label %bb.f

bb.f:                                             ; preds = %RSTRING_PTR.exit
  %i.w = icmp ne ptr %2, null
  %i.x = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.y = icmp ne ptr %i.x, null
  %or.cond = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.g, label %get_autoload_data.exit

bb.g:                                             ; preds = %bb.f
  store ptr %i.x, ptr %2, align 8, !tbaa !200
  br label %get_autoload_data.exit

get_autoload_data.exit:                           ; preds = %bb.b, %bb.g, %autoload_by_someone_else.exit, %RSTRING_PTR.exit, %bb.f, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.f ], [ %i.b, %autoload_by_someone_else.exit ], [ %i.b, %bb.g ], [ %i.b, %RSTRING_PTR.exit ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_const_warn_if_deprecated(ptr noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !197
  %i.b = and i32 %i.a, 256
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @rb_warning_category_enabled_p(i32 noundef 1) #26
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr @rb_cObject, align 8, !tbaa !16
  %i.e = icmp eq i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @rb_id_quote_unprintable(i64 noundef %2) #26
  tail call void (i32, ptr, ...) @rb_category_warn(i32 noundef 1, ptr noundef nonnull @.str.29, i64 noundef %i.f) #35
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i64 @rb_class_name(i64 noundef %1)
  %i.h = tail call i64 @rb_id_quote_unprintable(i64 noundef %2) #26
  tail call void (i32, ptr, ...) @rb_category_warn(i32 noundef 1, ptr noundef nonnull @.str.30, i64 noundef %i.g, i64 noundef %i.h) #35
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  ret void
}

declare zeroext i1 @rb_warning_category_enabled_p(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold
declare void @rb_category_warn(i32 noundef, ptr noundef, ...) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_const_get_from(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @rb_const_get_0(i64 noundef %0, i64 noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_const_get_0(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = load i64, ptr @rb_cObject, align 8, !tbaa !16
  %i.d = icmp eq i64 %0, %i.c
  %spec.select.i = select i1 %i.d, i32 0, i32 %2  ; 2 uses
  %i.e = call fastcc i64 @rb_const_search_from(i64 noundef %0, i64 noundef %1, i32 noundef %spec.select.i, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4, ptr noundef nonnull %i.b) ; 2 uses
  %i.f = icmp eq i64 %i.e, 36
  %.not.i = icmp eq i32 %spec.select.i, 0
  %or.cond.i = and i1 %i.f, %.not.i
  br i1 %or.cond.i, label %bb.b, label %rb_const_search.exit

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  %i.i = and i64 %i.h, 31
  %.not18.i = icmp eq i64 %i.i, 3
  br i1 %.not18.i, label %bb.c, label %rb_const_search.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr @rb_cObject, align 8, !tbaa !16
  %i.k = call fastcc i64 @rb_const_search_from(i64 noundef %i.j, i64 noundef %1, i32 noundef 0, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4, ptr noundef nonnull %i.b)
  br label %rb_const_search.exit

rb_const_search.exit:                             ; preds = %bb.a, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.a ], [ %i.k, %bb.c ] ; 5 uses
  %i.l = icmp eq i64 %.0.i, 36
  br i1 %i.l, label %rb_const_search.exit.thread, label %bb.d

bb.d:                                             ; preds = %rb_const_search.exit
  %i.m = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i18 = icmp eq ptr %i.m, null
  br i1 %.not.i18, label %rb_ractor_main_p.exit, label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit:                            ; preds = %bb.d
  %i.n = call zeroext i1 @rb_ractor_main_p_() #26
  br i1 %i.n, label %rb_ractor_main_p.exit.thread, label %bb.e, !prof !69

bb.e:                                             ; preds = %rb_ractor_main_p.exit
  %i.o = call fastcc zeroext i1 @rb_ractor_shareable_p(i64 noundef %.0.i)
  br i1 %i.o, label %rb_ractor_main_p.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !16
  %i.q = load i64, ptr %i.b, align 8, !tbaa !16
  %i.r = call i64 @rb_class_path(i64 noundef %i.q)
  %i.s = call i64 @rb_id2str(i64 noundef %1) #26
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.67, i64 noundef %i.r, i64 noundef %i.s) #27
  unreachable

rb_const_search.exit.thread:                      ; preds = %rb_const_search.exit, %bb.b
  %i.t = call i64 @rb_id2sym(i64 noundef %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.t, ptr %i.a, align 8, !tbaa !16
  %i.u = call i64 @rb_funcallv(i64 noundef %0, i64 noundef 2897, i32 noundef 1, ptr noundef nonnull %i.a) #26
  call void @rb_vm_inc_const_missing_count() #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit.thread:                     ; preds = %bb.d, %rb_ractor_main_p.exit, %bb.e, %rb_const_search.exit.thread
  %.0 = phi i64 [ %i.u, %rb_const_search.exit.thread ], [ %.0.i, %bb.e ], [ %.0.i, %rb_ractor_main_p.exit ], [ %.0.i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_const_get(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @rb_const_get_0(i64 noundef %0, i64 noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_const_get_at(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @rb_const_get_0(i64 noundef %0, i64 noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_public_const_get_from(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @rb_const_get_0(i64 noundef %0, i64 noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_public_const_get_at(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @rb_const_get_0(i64 noundef %0, i64 noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef 1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_const_source_location(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @rb_const_location_from(i64 noundef %0, i64 noundef %1, i32 noundef 0, i32 noundef 1) ; 2 uses
  %i.b = icmp eq i64 %i.a, 4
  br i1 %i.b, label %bb.b, label %rb_const_location.exit

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %0 to ptr
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = and i64 %i.d, 31
  %.not17.i = icmp eq i64 %i.e, 3
  br i1 %.not17.i, label %bb.c, label %rb_const_location.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr @rb_cObject, align 8, !tbaa !16
  %i.g = tail call fastcc i64 @rb_const_location_from(i64 noundef %i.f, i64 noundef %1, i32 noundef 0, i32 noundef 1)
  br label %rb_const_location.exit

rb_const_location.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.a, %bb.a ], [ 4, %bb.b ], [ %i.g, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_const_source_location_at(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cObject, align 8, !tbaa !16
  %i.b = icmp eq i64 %0, %i.a                     ; 2 uses
  %not. = xor i1 %i.b, true
  %spec.select.i = zext i1 %not. to i32
  %i.c = tail call fastcc i64 @rb_const_location_from(i64 noundef %0, i64 noundef %1, i32 noundef %spec.select.i, i32 noundef 0) ; 2 uses
  %i.d = icmp eq i64 %i.c, 4
  %or.cond.i = and i1 %i.b, %i.d
  br i1 %or.cond.i, label %bb.b, label %rb_const_location.exit

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 31
  %.not17.i = icmp eq i64 %i.g, 3
  br i1 %.not17.i, label %bb.c, label %rb_const_location.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @rb_cObject, align 8, !tbaa !16
  %i.i = tail call fastcc i64 @rb_const_location_from(i64 noundef %i.h, i64 noundef %1, i32 noundef 0, i32 noundef 0)
  br label %rb_const_location.exit

rb_const_location.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.a ], [ 4, %bb.b ], [ %i.i, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 37, 36) i64 @rb_mod_remove_const(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !16
  %i.b = call i64 @rb_check_id(ptr noundef nonnull %i.a) #26 ; 3 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b
end_hunk_5
begin_hunk_6_@rb_mod_const_at:bb.a

RCLASS_CLASSEXT_TBL.exit.i.i11.i17:               ; preds = %.split7.i15
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !22 ; 2 uses
  %.not.i.i12.i18 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i12.i18, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i20, label %bb.m

bb.m:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i17
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !36
  %i.aq = call i32 @rb_st_lookup(ptr noundef nonnull %i.ao, i64 noundef %i.ap, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i19 = icmp eq i32 %i.aq, 0
  br i1 %.not5.i.i13.i19, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i20, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !16
  %i.as = inttoptr i64 %i.ar to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i20

RCLASS_EXT_READABLE_LOOKUP.exit17.i20:            ; preds = %bb.n, %bb.m, %RCLASS_CLASSEXT_TBL.exit.i.i11.i17, %.split7.i15
  %.0.i.i14.i21 = phi ptr [ %i.as, %bb.n ], [ null, %bb.m ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i17 ], [ null, %.split7.i15 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i22 = icmp eq ptr %.0.i.i14.i21, null
  %.0.i16.i23 = select i1 %.not.i15.i22, ptr %i.ad, ptr %.0.i.i14.i21
  br label %RCLASS_EXT_READABLE.exit30

RCLASS_EXT_READABLE.exit30:                       ; preds = %bb.k, %bb.l, %rb_vm_lock_enter.exit, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i12, %RCLASS_EXT_READABLE_LOOKUP.exit17.i20
  %.0.i14 = phi ptr [ %.0.i16.i23, %RCLASS_EXT_READABLE_LOOKUP.exit17.i20 ], [ %i.ad, %bb.l ], [ %i.ad, %rb_vm_lock_enter.exit ], [ %i.ad, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i12 ], [ %i.ad, %bb.k ]
  %i.at = getelementptr i8, ptr %.0.i14, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !199
  call void @rb_id_table_foreach(ptr noundef %i.au, ptr noundef nonnull @sv_i, ptr noundef %.06) #26
  %i.av = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i31 = icmp eq ptr %i.av, null
  br i1 %.not.i.i31, label %bb.o, label %rb_vm_lock_leave.exit

bb.o:                                             ; preds = %RCLASS_EXT_READABLE.exit30
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.c) #26
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %RCLASS_EXT_READABLE.exit30, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.p

bb.p:                                             ; preds = %rb_vm_lock_leave.exit, %RCLASS_EXT_READABLE.exit
  ret ptr %.06
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @sv_i(i64 noundef %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @rb_is_const_id(i64 noundef %0) #33
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @rb_st_update(ptr noundef %2, i64 noundef %0, ptr noundef nonnull @cv_i_update, i64 noundef %1) #26 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_mod_const_of(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.07 = phi ptr [ %1, %bb.a ], [ %i.b, %bb.h ]
  %.0 = phi i64 [ %0, %bb.a ], [ %i.y, %bb.h ]    ; 2 uses
  %i.b = call ptr @rb_mod_const_at(i64 noundef %.0, ptr noundef %.07) ; 2 uses
  %i.c = inttoptr i64 %.0 to ptr                  ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = and i64 %i.d, 65536
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.c, i64 160      ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.c

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.j = call ptr @rb_current_box() #26           ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %.split.i, label %bb.d

.split.i:                                         ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.c, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.j, i64 128
  %i.m = load i8, ptr %i.l, align 8, !tbaa !32, !range !34, !noundef !35
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.split7.i, label %bb.g

.split7.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.o = load i64, ptr %i.c, align 8, !tbaa !20
  %i.p = and i64 %i.o, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.r = load i64, ptr %i.j, align 8, !tbaa !36
  %i.s = call i32 @rb_st_lookup(ptr noundef nonnull %i.q, i64 noundef %i.r, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i = icmp eq i32 %i.s, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.a, align 8, !tbaa !16
  %i.u = inttoptr i64 %i.t to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.f, %bb.e, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.u, %bb.f ], [ null, %bb.e ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.v = getelementptr i8, ptr %i.c, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.v, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.g:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %i.c, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.g
  %.0.i = phi ptr [ %i.i, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.w, %bb.g ], [ %i.k, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.x = getelementptr i8, ptr %.0.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !205  ; 3 uses
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %RCLASS_EXT_READABLE.exit
  %i.z = load i64, ptr @rb_cObject, align 8, !tbaa !16 ; 2 uses
  %i.aa = icmp ne i64 %i.y, %i.z
  %.not10 = icmp eq i64 %0, %i.z
  %or.cond = or i1 %i.aa, %.not10
  br i1 %or.cond, label %bb.b, label %bb.i

bb.i:                                             ; preds = %bb.h, %RCLASS_EXT_READABLE.exit
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_const_list(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @rb_ary_new_capa(i64 noundef 0) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !208
  %i.d = tail call i64 @rb_ary_new_capa(i64 noundef %i.c) #26 ; 2 uses
  tail call void @rb_st_foreach_safe(ptr noundef nonnull %0, ptr noundef nonnull @list_i, i64 noundef %i.d) #26
  tail call void @rb_st_free_table(ptr noundef nonnull %0) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.d, %bb.c ], [ %i.a, %bb.b ]
  ret i64 %.0
}

declare i64 @rb_ary_new_capa(i64 noundef) local_unnamed_addr #1

declare void @rb_st_foreach_safe(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @list_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = load i32, ptr %i.a, align 8, !tbaa !197
  %i.c = and i32 %i.b, 255
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_id2sym(i64 noundef %0) #26
  %i.f = tail call i64 @rb_ary_push(i64 noundef %2, i64 noundef %i.e) #26 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_mod_constants(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #27
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.c = load i64, ptr %1, align 8, !tbaa !16
  %i.d = and i64 %i.c, -5
  %.not7 = icmp eq i64 %i.d, 0
  br i1 %.not7, label %bb.f, label %.critedge

.critedge:                                        ; preds = %rb_check_arity.exit, %bb.c
  %i.e = tail call ptr @rb_mod_const_of(i64 noundef %2, ptr noundef null) ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.f = tail call i64 @rb_ary_new_capa(i64 noundef 0) #26
  br label %rb_const_list.exit

bb.e:                                             ; preds = %.critedge
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !208
  %i.i = tail call i64 @rb_ary_new_capa(i64 noundef %i.h) #26 ; 2 uses
  tail call void @rb_st_foreach_safe(ptr noundef nonnull %i.e, ptr noundef nonnull @list_i, i64 noundef %i.i) #26
  tail call void @rb_st_free_table(ptr noundef nonnull %i.e) #26
  br label %rb_const_list.exit

bb.f:                                             ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr                   ; 7 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = and i64 %i.k, 65536
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i:        ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.j, i64 160      ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i, label %bb.g

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i, %bb.f
  %i.p = getelementptr i8, ptr %i.j, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

bb.g:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i
  %i.q = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.r = getelementptr i8, ptr %i.j, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %i.q, i64 128
  %i.t = load i8, ptr %i.s, align 8, !tbaa !32, !range !34, !noundef !35
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.split7.i.i, label %bb.k

.split7.i.i:                                      ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.v = load i64, ptr %i.j, align 8, !tbaa !20
  %i.w = and i64 %i.v, 65536
  %.not.i.i.i10.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i10.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i.i:               ; preds = %.split7.i.i
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %.not.i.i12.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i12.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.i

bb.i:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i
  %i.y = load i64, ptr %i.q, align 8, !tbaa !36
  %i.z = call i32 @rb_st_lookup(ptr noundef nonnull %i.x, i64 noundef %i.y, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i.i = icmp eq i32 %i.z, 0
  br i1 %.not5.i.i13.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ab = inttoptr i64 %i.aa to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i.i:            ; preds = %bb.j, %bb.i, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i, %.split7.i.i
  %.0.i.i14.i.i = phi ptr [ %i.ab, %bb.j ], [ null, %bb.i ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i ], [ null, %.split7.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i.i = icmp eq ptr %.0.i.i14.i.i, null
  %i.ac = getelementptr i8, ptr %i.j, i64 24
  %.0.i16.i.i = select i1 %.not.i15.i.i, ptr %i.ac, ptr %.0.i.i14.i.i
  br label %RCLASS_EXT_READABLE.exit.i

bb.k:                                             ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %i.j, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

RCLASS_EXT_READABLE.exit.i:                       ; preds = %bb.k, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, %.split.i.i, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i
  %.0.i.i = phi ptr [ %i.p, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i ], [ %i.ad, %bb.k ], [ %i.r, %.split.i.i ], [ %.0.i16.i.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i ]
  %i.ae = getelementptr i8, ptr %.0.i.i, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !199 ; 3 uses
  %.not.i6 = icmp eq ptr %i.af, null
  br i1 %.not.i6, label %bb.l, label %bb.m

bb.l:                                             ; preds = %RCLASS_EXT_READABLE.exit.i
  %i.ag = call i64 @rb_ary_new_capa(i64 noundef 0) #26
  br label %rb_const_list.exit

bb.m:                                             ; preds = %RCLASS_EXT_READABLE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ah = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i11.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i11.i, label %bb.n, label %rb_vm_lock_enter.exit.i

bb.n:                                             ; preds = %bb.m
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #26
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.n, %bb.m
  %i.ai = call i64 @rb_id_table_size(ptr noundef nonnull %i.af) #26
  %i.aj = call i64 @rb_ary_new_capa(i64 noundef %i.ai) #26 ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr
  call void @rb_id_table_foreach(ptr noundef nonnull %i.af, ptr noundef nonnull @rb_local_constants_i, ptr noundef %i.ak) #26
  %i.al = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i12.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i12.i, label %bb.o, label %rb_vm_lock_leave.exit.i

bb.o:                                             ; preds = %rb_vm_lock_enter.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #26
  br label %rb_vm_lock_leave.exit.i

rb_vm_lock_leave.exit.i:                          ; preds = %bb.o, %rb_vm_lock_enter.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %rb_const_list.exit

rb_const_list.exit:                               ; preds = %rb_vm_lock_leave.exit.i, %bb.l, %bb.e, %bb.d
  %.05 = phi i64 [ %i.f, %bb.d ], [ %i.i, %bb.e ], [ %i.aj, %rb_vm_lock_leave.exit.i ], [ %i.ag, %bb.l ]
  ret i64 %.05
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 21) i32 @rb_const_defined_from(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @rb_const_defined_0(i64 noundef %0, i64 noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 21) i32 @rb_const_defined_0(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %.not25 = icmp eq i32 %3, 0
  %i.b = icmp ne i32 %2, 0                        ; 2 uses
  %i.c = inttoptr i64 %0 to ptr                   ; 2 uses
  br i1 %.not25, label %.split42.us, label %.split42

.split42.us:                                      ; preds = %bb.a
  %.not38.us.us = icmp eq i64 %0, 0               ; 2 uses
  br i1 %i.b, label %.split42.us.split.us, label %.split42.us.split.preheader

.split42.us.split.preheader:                      ; preds = %.split42.us
  br i1 %.not38.us.us, label %._crit_edge.split.us.us, label %.lr.ph.us

.split42.us.split.us:                             ; preds = %.split42.us
  br i1 %.not38.us.us, label %rb_autoloading_value.exit.thread, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.split42.us.split.us
  %i.d = tail call ptr @rb_const_lookup(i64 noundef %0, i64 noundef %1) ; 2 uses
  %.not24.us.us.us = icmp eq ptr %i.d, null
  br i1 %.not24.us.us.us, label %rb_autoloading_value.exit.thread, label %.split.us

._crit_edge.split.us.us:                          ; preds = %.lr.ph.us, %.split42.us.split.preheader
  %i.e = load i64, ptr %i.c, align 8, !tbaa !20
  %i.f = and i64 %i.e, 31
  %i.g = icmp eq i64 %i.f, 3
  br i1 %i.g, label %.split42.us.split.1, label %rb_autoloading_value.exit.thread

.split42.us.split.1:                              ; preds = %._crit_edge.split.us.us
  %i.h = load i64, ptr @rb_cObject, align 8, !tbaa !16 ; 3 uses
  %.not38.us.1 = icmp eq i64 %i.h, 0
  br i1 %.not38.us.1, label %rb_autoloading_value.exit.thread, label %.lr.ph.us.1

.lr.ph.us.1:                                      ; preds = %.split42.us.split.1
  %i.i = tail call ptr @rb_const_lookup(i64 noundef %i.h, i64 noundef %1) ; 2 uses
  %.not24.us.us.1 = icmp eq ptr %i.i, null
  br i1 %.not24.us.us.1, label %rb_autoloading_value.exit.thread, label %.split.us

.lr.ph.us:                                        ; preds = %.split42.us.split.preheader
  %i.j = tail call ptr @rb_const_lookup(i64 noundef %0, i64 noundef %1) ; 2 uses
  %.not24.us.us = icmp eq ptr %i.j, null
  br i1 %.not24.us.us, label %._crit_edge.split.us.us, label %.split.us

.split42:                                         ; preds = %bb.a, %bb.s
end_hunk_6
begin_hunk_7_@const_set:bb.a

bb.l:                                             ; preds = %rb_obj_write.exit.i
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.bl) #26
  br label %setup_const_entry.exit

bb.m:                                             ; preds = %RCLASS_EXT_WRITABLE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store i64 %0, ptr %i.ad, align 8, !tbaa !151
  store i64 %1, ptr %i.ae, align 8, !tbaa !156
  store i64 %2, ptr %i.af, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %i.bq = call i64 @rb_source_location(ptr noundef nonnull %i.ai) #26
  store i64 %i.bq, ptr %i.ah, align 8, !tbaa !213
  call fastcc void @const_tbl_update(ptr noundef nonnull %3, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %setup_const_entry.exit

setup_const_entry.exit:                           ; preds = %bb.l, %rb_obj_write.exit.i, %bb.m
  %i.br = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i53 = icmp eq ptr %i.br, null
  br i1 %.not.i.i53, label %bb.n, label %rb_vm_lock_leave.exit

bb.n:                                             ; preds = %setup_const_entry.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #26
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %setup_const_entry.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.bs = load i64, ptr @rb_cObject, align 8, !tbaa !16
  %.not44 = icmp eq i64 %i.bs, 0
  %brmerge64 = or i1 %.not44, %i.am
  br i1 %brmerge64, label %rb_namespace_p.exit.thread, label %rb_namespace_p.exit

rb_namespace_p.exit:                              ; preds = %rb_vm_lock_leave.exit
  %i.bt = inttoptr i64 %2 to ptr
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !20
  %i.bv = and i64 %i.bu, 30
  %switch.i = icmp eq i64 %i.bv, 2
  br i1 %switch.i, label %bb.o, label %rb_namespace_p.exit.thread

bb.o:                                             ; preds = %rb_namespace_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bw = call fastcc i64 @classname(i64 noundef %2, ptr noundef nonnull %i.b)
  %i.bx = icmp ne i64 %i.bw, 4                    ; 2 uses
  %i.by = load i8, ptr %i.b, align 1, !range !34
  %i.bz = trunc nuw i8 %i.by to i1                ; 2 uses
  %or.cond = select i1 %i.bx, i1 %i.bz, i1 false
  br i1 %or.cond, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = load i64, ptr @rb_cObject, align 8, !tbaa !16
  %i.cb = icmp eq i64 %0, %i.ca
  br i1 %i.cb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cc = call i64 @rb_id2str(i64 noundef %1) #26
  call fastcc void @set_namespace_path(i64 noundef %2, i64 noundef %i.cc)
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.cd = call fastcc i64 @classname(i64 noundef %0, ptr noundef nonnull %i.c) ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4
  br i1 %i.ce, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.cf = call fastcc i64 @rb_tmp_class_path(i64 noundef %0, ptr noundef %i.d, ptr noundef nonnull @make_temporary_path)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.041 = phi i64 [ %i.cf, %bb.s ], [ %i.cd, %bb.r ] ; 2 uses
  %i.cg = load i8, ptr %i.c, align 1, !tbaa !18, !range !34, !noundef !35
  %i.ch = trunc nuw i8 %i.cg to i1                ; 2 uses
  %.not2 = xor i1 %i.ch, true
  %or.cond4 = select i1 %.not2, i1 true, i1 %i.bz
  br i1 %or.cond4, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = call i64 @rb_id2str(i64 noundef %1) #26
  %i.cj = call i64 @rb_str_dup(i64 noundef %.041) #26 ; 3 uses
  %i.ck = call i64 @rb_str_cat(i64 noundef %i.cj, ptr noundef nonnull @.str.43, i64 noundef 2) #26 ; 0 uses
  %i.cl = call i64 @rb_str_append(i64 noundef %i.cj, i64 noundef %i.ci) #26 ; 0 uses
  %i.cm = call i64 @rb_fstring(i64 noundef %i.cj) #26
  call fastcc void @set_namespace_path(i64 noundef %2, i64 noundef %i.cm)
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %brmerge = or i1 %i.bx, %i.ch
  br i1 %brmerge, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = call fastcc i64 @build_const_path(i64 noundef %.041, i64 noundef %1)
  call fastcc void @RCLASS_SET_CLASSPATH(i64 noundef %2, i64 noundef %i.cn, i1 noundef zeroext false)
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %bb.x, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %rb_namespace_p.exit.thread

rb_namespace_p.exit.thread:                       ; preds = %rb_vm_lock_leave.exit, %bb.y, %rb_namespace_p.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_define_const(i64 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call i64 @rb_intern(ptr noundef nonnull %1) #26 ; 3 uses
  %i.c = tail call i32 @rb_is_const_id(i64 noundef %i.b) #33
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.33, ptr noundef nonnull %1) #35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp eq i64 %2, 0
  %i.e = and i64 %2, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_vm_register_global_object(i64 noundef %2) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call fastcc void @const_set(i64 noundef %0, i64 noundef %i.b, i64 noundef %2)
  %i.h = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !163
  %i.i = getelementptr i8, ptr %i.h, i64 508
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, 1
  %.not.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i, label %rb_const_set.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.l = tail call i64 @rb_id2sym(i64 noundef %i.b) #26
  store i64 %i.l, ptr %i.a, align 8, !tbaa !16
  %i.m = call i64 @rb_funcallv(i64 noundef %0, i64 noundef 2881, i32 noundef 1, ptr noundef nonnull %i.a) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %rb_const_set.exit

rb_const_set.exit:                                ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_define_global_const(ptr noundef nonnull %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cObject, align 8, !tbaa !16
  tail call void @rb_define_const(i64 noundef %i.a, ptr noundef %0, i64 noundef %1)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_deprecate_constant(i64 noundef %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28 ; 2 uses
  tail call void @rb_class_modify_check(i64 noundef %0) #26
  %i.b = tail call i64 @rb_check_id_cstr(ptr noundef nonnull %1, i64 noundef %i.a, ptr noundef null) #26 ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_fstring_new(ptr noundef nonnull %1, i64 noundef %i.a) #26
  tail call fastcc void @undefined_constant(i64 noundef %0, i64 noundef %i.c) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @rb_const_lookup(i64 noundef %0, i64 noundef %i.b) ; 3 uses
  %.not18 = icmp eq ptr %i.d, null
  br i1 %.not18, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @rb_id2sym(i64 noundef %i.b) #26
  tail call fastcc void @undefined_constant(i64 noundef %0, i64 noundef %i.e) #34
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = load i32, ptr %i.d, align 8, !tbaa !197
  %i.g = or i32 %i.f, 256
  store i32 %i.g, ptr %i.d, align 8, !tbaa !197
  ret void
}

declare void @rb_class_modify_check(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_mod_private_constant(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @set_const_visibility(i64 noundef %2, i32 noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 255)
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @set_const_visibility(i64 noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef range(i32 0, 257) %3, i32 noundef range(i32 255, 257) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  tail call void @rb_class_modify_check(i64 noundef %0) #26
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.d = xor i32 %4, -1                           ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_frame_callee() #26
  %i.f = tail call i64 @rb_id_quote_unprintable(i64 noundef %i.e) #26
  tail call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.73, i64 noundef %i.f) #26
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %autoload_const_value_for_named_constant.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %autoload_const_value_for_named_constant.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.g = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16
  store i64 %i.h, ptr %i.a, align 8, !tbaa !16
  %i.i = call i64 @rb_check_id(ptr noundef nonnull %i.a) #26 ; 5 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.a, align 8, !tbaa !16
  call fastcc void @undefined_constant(i64 noundef %0, i64 noundef %i.j) #34
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = call ptr @rb_const_lookup(i64 noundef %0, i64 noundef %i.i) ; 4 uses
  %.not31 = icmp eq ptr %i.k, null
  br i1 %.not31, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.k, align 8, !tbaa !197
  %i.m = and i32 %i.l, %i.d
  %i.n = or i32 %i.m, %3
  store i32 %i.n, ptr %i.k, align 8, !tbaa !197
  %i.o = getelementptr i8, ptr %i.k, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !165
  %i.q = icmp eq i64 %i.p, 36
  br i1 %i.q, label %bb.g, label %autoload_const_value_for_named_constant.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = call fastcc i64 @autoload_data(i64 noundef %0, i64 noundef %i.i) ; 2 uses
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %autoload_const_value_for_named_constant.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call ptr @rb_check_typeddata(i64 noundef %i.r, ptr noundef nonnull @autoload_const_type) #26 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !146
  %i.v = call ptr @rb_check_typeddata(i64 noundef %i.u, ptr noundef nonnull @autoload_data_type) #26 ; 3 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %autoload_const_value_for_named_constant.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %i.v, i64 16       ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !170
  %i.y = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !163
  %i.z = getelementptr i8, ptr %i.y, i64 496
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !172
  %.not12.i.i = icmp eq i64 %i.x, %i.aa
  %.phi.trans.insert.i = getelementptr i8, ptr %i.v, i64 8 ; 2 uses
  br i1 %.not12.i.i, label %bb.j, label %.thread.i

.thread.i:                                        ; preds = %bb.i
  store i64 4, ptr %.phi.trans.insert.i, align 8, !tbaa !16
  store i64 0, ptr %i.w, align 8, !tbaa !170
  br label %autoload_const_value_for_named_constant.exit.thread

bb.j:                                             ; preds = %bb.i
  %.val.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !189 ; 2 uses
  %.not.i12.i = icmp eq i64 %.val.pre.i, 4
  br i1 %.not.i12.i, label %autoload_const_value_for_named_constant.exit.thread, label %autoload_by_current.exit.i

autoload_by_current.exit.i:                       ; preds = %bb.j
  %i.ab = call i64 @rb_mutex_owned_p(i64 noundef %.val.pre.i) #26
  %.fr.i = freeze i64 %i.ab
  %.not15.i = icmp eq i64 %.fr.i, 0
  br i1 %.not15.i, label %autoload_const_value_for_named_constant.exit.thread, label %autoload_const_value_for_named_constant.exit

autoload_const_value_for_named_constant.exit:     ; preds = %autoload_by_current.exit.i
  %i.ac = getelementptr i8, ptr %i.s, i64 56      ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !153
  %i.ae = and i32 %i.ad, %i.d
  %i.af = or i32 %i.ae, %3
  store i32 %i.af, ptr %i.ac, align 8, !tbaa !153
  br label %autoload_const_value_for_named_constant.exit.thread

autoload_const_value_for_named_constant.exit.thread: ; preds = %.thread.i, %bb.j, %autoload_by_current.exit.i, %bb.h, %bb.g, %autoload_const_value_for_named_constant.exit, %bb.f
  call void @rb_clear_constant_cache_for_id(i64 noundef %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !214

bb.k:                                             ; preds = %bb.e
  %i.ag = call i64 @rb_id2sym(i64 noundef %i.i) #26
  call fastcc void @undefined_constant(i64 noundef %0, i64 noundef %i.ag) #34
  unreachable

.loopexit:                                        ; preds = %autoload_const_value_for_named_constant.exit.thread, %.preheader, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_mod_public_constant(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @set_const_visibility(i64 noundef %2, i32 noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 255)
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_mod_deprecate_constant(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @set_const_visibility(i64 noundef %2, i32 noundef %0, ptr noundef %1, i32 noundef 256, i32 noundef 256)
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_cvar_set(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit

rb_ractor_main_p.exit.i:                          ; preds = %bb.a
  %i.f = tail call zeroext i1 @rb_ractor_main_p_() #26
  br i1 %i.f, label %CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit, label %bb.b, !prof !69

bb.b:                                             ; preds = %rb_ractor_main_p.exit.i
  %i.g = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !16
  %i.h = tail call i64 @rb_id2str(i64 noundef %1) #26
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.g, ptr noundef nonnull @.str.74, i64 noundef %i.h, i64 noundef %0) #27
  unreachable

CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit:         ; preds = %bb.a, %rb_ractor_main_p.exit.i
  %i.i = tail call fastcc i32 @cvar_lookup_at(i64 noundef %0, i64 noundef %1, ptr noundef null)
  %.not = icmp eq i32 %i.i, 0
  %.048 = select i1 %.not, i64 0, i64 %0          ; 4 uses
  %i.j = tail call fastcc i64 @cvar_front_klass(i64 noundef %0) ; 2 uses
  %.not55100 = icmp eq i64 %i.j, 0
  br i1 %.not55100, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit, %RCLASS_EXT_READABLE.exit
  %.047103 = phi i64 [ %i.ai, %RCLASS_EXT_READABLE.exit ], [ %i.j, %CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit ] ; 4 uses
  %.1102 = phi i64 [ %.2, %RCLASS_EXT_READABLE.exit ], [ %.048, %CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit ]
  %.251101 = phi i64 [ %.453, %RCLASS_EXT_READABLE.exit ], [ %.048, %CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit ] ; 2 uses
  %i.k = call fastcc i32 @cvar_lookup_at(i64 noundef %.047103, i64 noundef %1, ptr noundef null)
  %.not60 = icmp eq i32 %i.k, 0                   ; 2 uses
  %.not61 = icmp ne i64 %.251101, 0
  %i.l = select i1 %.not60, i1 true, i1 %.not61
  %.453 = select i1 %i.l, i64 %.251101, i64 %.047103 ; 2 uses
  %.2 = select i1 %.not60, i64 %.1102, i64 %.047103 ; 2 uses
  %i.m = inttoptr i64 %.047103 to ptr             ; 7 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20
  %i.o = and i64 %i.n, 65536
  %.not.i.i64 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i64, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %.lr.ph
  %i.p = getelementptr i8, ptr %i.m, i64 160      ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.c

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %.lr.ph
  %i.s = getelementptr i8, ptr %i.m, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.t = call ptr @rb_current_box() #26           ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %.split.i, label %bb.d

.split.i:                                         ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.m, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.t, i64 128
  %i.w = load i8, ptr %i.v, align 8, !tbaa !32, !range !34, !noundef !35
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.split7.i, label %bb.g

.split7.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.y = load i64, ptr %i.m, align 8, !tbaa !20
  %i.z = and i64 %i.y, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !22  ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !36
  %i.ac = call i32 @rb_st_lookup(ptr noundef nonnull %i.aa, i64 noundef %i.ab, ptr noundef nonnull %i.c) #26
  %.not5.i.i13.i = icmp eq i32 %i.ac, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !16
  %i.ae = inttoptr i64 %i.ad to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.f, %bb.e, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.ae, %bb.f ], [ null, %bb.e ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.af = getelementptr i8, ptr %i.m, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.af, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr i8, ptr %i.m, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.g
  %.0.i65 = phi ptr [ %i.s, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.ag, %bb.g ], [ %i.u, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.ah = getelementptr i8, ptr %.0.i65, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !205 ; 2 uses
  %.not55 = icmp eq i64 %i.ai, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph, !llvm.loop !215

._crit_edge:                                      ; preds = %RCLASS_EXT_READABLE.exit, %CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit
  %.251.lcssa = phi i64 [ %.048, %CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit ], [ %.453, %RCLASS_EXT_READABLE.exit ]
  %.1.lcssa = phi i64 [ %.048, %CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit ], [ %.2, %RCLASS_EXT_READABLE.exit ] ; 3 uses
  %.not56 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not56, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  call fastcc void @cvar_overtaken(i64 noundef %.251.lcssa, i64 noundef %.1.lcssa, i64 noundef %1)
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.3 = phi i64 [ %.1.lcssa, %bb.h ], [ %0, %._crit_edge ] ; 5 uses
  %i.aj = icmp eq i64 %.3, 0
  %i.ak = and i64 %.3, 7
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = or i1 %i.aj, %i.al
  br i1 %i.am, label %rbimpl_RB_TYPE_P_fastpath.exit63.thread, label %rbimpl_RB_TYPE_P_fastpath.exit63

rbimpl_RB_TYPE_P_fastpath.exit63:                 ; preds = %bb.i
  %i.an = inttoptr i64 %.3 to ptr                 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !20
  %i.ap = and i64 %i.ao, 31
  %i.aq = icmp eq i64 %i.ap, 28
  br i1 %i.aq, label %bb.j, label %rbimpl_RB_TYPE_P_fastpath.exit63.thread

bb.j:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit63
  %i.ar = getelementptr i8, ptr %i.an, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !49
  br label %rbimpl_RB_TYPE_P_fastpath.exit63.thread

rbimpl_RB_TYPE_P_fastpath.exit63.thread:          ; preds = %bb.i, %bb.j, %rbimpl_RB_TYPE_P_fastpath.exit63
  %.4 = phi i64 [ %i.as, %bb.j ], [ %.3, %rbimpl_RB_TYPE_P_fastpath.exit63 ], [ %.3, %bb.i ] ; 14 uses
  %i.at = icmp ne i64 %.4, 0
  %i.au = and i64 %.4, 7
  %i.av = icmp eq i64 %i.au, 0
  %.not3.i.i.i = and i1 %i.at, %i.av
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !124

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit63.thread
  %i.aw = inttoptr i64 %.4 to ptr                 ; 15 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !20 ; 4 uses
  %i.ay = and i64 %i.ax, 2048
  %.not.i.i66 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i66, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !125

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit63.thread
  call void @rb_error_frozen_object(i64 noundef %.4) #27
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.az = and i64 %i.ax, 31
  %i.ba = icmp ne i64 %i.az, 5
  %i.bb = and i64 %i.ax, 49152
  %.not8.i.i = icmp eq i64 %i.bb, 0
  %or.cond.i.i = or i1 %i.ba, %.not8.i.i
  br i1 %or.cond.i.i, label %RB_OBJ_FROZEN.exit.i.i69, label %bb.k, !prof !126

bb.k:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  call void @rb_str_modify(i64 noundef %.4) #26
  %.pre = load i64, ptr %i.aw, align 8, !tbaa !20
  br label %RB_OBJ_FROZEN.exit.i.i69

RB_OBJ_FROZEN.exit.i.i69:                         ; preds = %bb.k, %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.bc = phi i64 [ %.pre, %bb.k ], [ %i.ax, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ] ; 3 uses
  %i.bd = and i64 %i.bc, 2048
  %.not.i.i70 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i70, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i71, label %RB_OBJ_FROZEN.exit.thread.i.i68, !prof !125

RB_OBJ_FROZEN.exit.thread.i.i68:                  ; preds = %RB_OBJ_FROZEN.exit.i.i69
  call void @rb_error_frozen_object(i64 noundef %.4) #27
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i71:             ; preds = %RB_OBJ_FROZEN.exit.i.i69
  %i.be = and i64 %i.bc, 31
  %i.bf = icmp ne i64 %i.be, 5
  %i.bg = and i64 %i.bc, 49152
  %.not8.i.i72 = icmp eq i64 %i.bg, 0
  %or.cond.i.i73 = or i1 %i.bf, %.not8.i.i72
  br i1 %or.cond.i.i73, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i, label %bb.l, !prof !126

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i71
  call void @rb_str_modify(i64 noundef %.4) #26
  br label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i
end_hunk_7
begin_hunk_8_@rb_cvar_set:bb.a
  %.not10.i = icmp eq i64 %i.bl, 0
  br i1 %.not10.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, label %bb.m, !prof !121

bb.m:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i
  %i.bm = getelementptr i8, ptr %i.aw, i64 24
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i
  %i.bn = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i74 = icmp eq ptr %i.bn, null
  br i1 %.not.i74, label %.split.i77, label %bb.n

.split.i77:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.bo = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %.4, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit

bb.n:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.bp = getelementptr i8, ptr %i.bn, i64 128
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !32, !range !34, !noundef !35
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %.split7.i76, label %bb.o

.split7.i76:                                      ; preds = %bb.n
  %i.bs = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %.4, ptr noundef nonnull %i.bn)
  br label %RCLASS_EXT_WRITABLE.exit

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr i8, ptr %i.aw, i64 24
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_EXT_WRITABLE.exit:                         ; preds = %bb.m, %.split.i77, %.split7.i76, %bb.o
  %.0.i75 = phi ptr [ %i.bm, %bb.m ], [ %i.bt, %bb.o ], [ %i.bo, %.split.i77 ], [ %i.bs, %.split7.i76 ]
  %i.bu = getelementptr i8, ptr %.0.i75, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !216 ; 2 uses
  %.not57 = icmp eq ptr %i.bv, null
  br i1 %.not57, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %bb.s

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %RCLASS_EXT_WRITABLE.exit
  %i.bw = call ptr @rb_id_table_create(i64 noundef 2) #26 ; 2 uses
  %i.bx = load i64, ptr %i.aw, align 8, !tbaa !20
  %i.by = and i64 %i.bx, 16384
  %.not10.i.i = icmp eq i64 %i.by, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.p, !prof !121

bb.p:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.bz = getelementptr i8, ptr %i.aw, i64 24
  br label %RCLASS_WRITE_CVC_TBL.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.ca = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i.i78 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i78, label %.split.i.i, label %bb.q

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.cb = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %.4, ptr noundef null)
  br label %RCLASS_WRITE_CVC_TBL.exit

bb.q:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.cc = getelementptr i8, ptr %i.ca, i64 128
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !32, !range !34, !noundef !35
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %.split7.i.i, label %bb.r

.split7.i.i:                                      ; preds = %bb.q
  %i.cf = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %.4, ptr noundef nonnull %i.ca)
  br label %RCLASS_WRITE_CVC_TBL.exit

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr i8, ptr %i.aw, i64 24
  br label %RCLASS_WRITE_CVC_TBL.exit

RCLASS_WRITE_CVC_TBL.exit:                        ; preds = %bb.p, %.split.i.i, %.split7.i.i, %bb.r
  %.0.i.i = phi ptr [ %i.bz, %bb.p ], [ %i.cg, %bb.r ], [ %i.cb, %.split.i.i ], [ %i.cf, %.split7.i.i ]
  %i.ch = getelementptr i8, ptr %.0.i.i, i64 56
  store ptr %i.bw, ptr %i.ch, align 8, !tbaa !216
  br label %bb.s

bb.s:                                             ; preds = %RCLASS_WRITE_CVC_TBL.exit, %RCLASS_EXT_WRITABLE.exit
  %.0 = phi ptr [ %i.bv, %RCLASS_EXT_WRITABLE.exit ], [ %i.bw, %RCLASS_WRITE_CVC_TBL.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.ci = call i32 @rb_id_table_lookup(ptr noundef %.0, i64 noundef %1, ptr noundef nonnull %i.d) #26
  %.not58 = icmp eq i32 %i.ci, 0
  br i1 %.not58, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cj = call noalias nonnull dereferenceable(32) ptr @ruby_xmalloc(i64 noundef 32) #29 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i64 %.4, ptr %i.ck, align 8, !tbaa !217
  %i.cl = load i64, ptr @ruby_vm_global_cvar_state, align 8, !tbaa !220
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !221
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr null, ptr %i.cn, align 8, !tbaa !222
  %i.co = ptrtoint ptr %i.cj to i64
  %i.cp = call i32 @rb_id_table_insert(ptr noundef %.0, i64 noundef %1, i64 noundef %i.co) #26 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cq = load i64, ptr %i.d, align 8, !tbaa !16
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = load i64, ptr @ruby_vm_global_cvar_state, align 8, !tbaa !220
  %i.ct = getelementptr i8, ptr %i.cr, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !221
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %i.bj, label %rbimpl_RB_TYPE_P_fastpath.exit, label %bb.ad

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.v
  %i.cu = load i64, ptr %i.aw, align 8, !tbaa !20 ; 2 uses
  %i.cv = and i64 %i.cu, 31
  %i.cw = icmp eq i64 %i.cv, 2
  br i1 %i.cw, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cx = and i64 %i.cu, 65536
  %.not.i.i79 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i79, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i97, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i80

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i80:        ; preds = %bb.w
  %i.cy = getelementptr i8, ptr %i.aw, i64 160    ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !22
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i97, label %bb.x

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i97: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i80, %bb.w
  %i.db = getelementptr i8, ptr %i.aw, i64 24
  br label %RCLASS_EXT_READABLE.exit98

bb.x:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i80
  %i.dc = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i81 = icmp eq ptr %i.dc, null
  br i1 %.not.i81, label %.split.i92, label %bb.y

.split.i92:                                       ; preds = %bb.x
  %i.dd = getelementptr i8, ptr %i.aw, i64 24
  br label %RCLASS_EXT_READABLE.exit98

bb.y:                                             ; preds = %bb.x
  %i.de = getelementptr i8, ptr %i.dc, i64 128
  %i.df = load i8, ptr %i.de, align 8, !tbaa !32, !range !34, !noundef !35
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %.split7.i83, label %bb.ab

.split7.i83:                                      ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.dh = load i64, ptr %i.aw, align 8, !tbaa !20
  %i.di = and i64 %i.dh, 65536
  %.not.i.i.i10.i84 = icmp eq i64 %i.di, 0
  br i1 %.not.i.i.i10.i84, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i88, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i85

RCLASS_CLASSEXT_TBL.exit.i.i11.i85:               ; preds = %.split7.i83
  %i.dj = load ptr, ptr %i.cy, align 8, !tbaa !22 ; 2 uses
  %.not.i.i12.i86 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i12.i86, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i88, label %bb.z

bb.z:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i85
  %i.dk = load i64, ptr %i.dc, align 8, !tbaa !36
  %i.dl = call i32 @rb_st_lookup(ptr noundef nonnull %i.dj, i64 noundef %i.dk, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i87 = icmp eq i32 %i.dl, 0
  br i1 %.not5.i.i13.i87, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i88, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !16
  %i.dn = inttoptr i64 %i.dm to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i88

RCLASS_EXT_READABLE_LOOKUP.exit17.i88:            ; preds = %bb.aa, %bb.z, %RCLASS_CLASSEXT_TBL.exit.i.i11.i85, %.split7.i83
  %.0.i.i14.i89 = phi ptr [ %i.dn, %bb.aa ], [ null, %bb.z ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i85 ], [ null, %.split7.i83 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i90 = icmp eq ptr %.0.i.i14.i89, null
  %i.do = getelementptr i8, ptr %i.aw, i64 24
  %.0.i16.i91 = select i1 %.not.i15.i90, ptr %i.do, ptr %.0.i.i14.i89
  br label %RCLASS_EXT_READABLE.exit98

bb.ab:                                            ; preds = %bb.y
  %i.dp = getelementptr i8, ptr %i.aw, i64 24
  br label %RCLASS_EXT_READABLE.exit98

RCLASS_EXT_READABLE.exit98:                       ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i97, %.split.i92, %RCLASS_EXT_READABLE_LOOKUP.exit17.i88, %bb.ab
  %.0.i82 = phi ptr [ %i.db, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i97 ], [ %i.dp, %bb.ab ], [ %i.dd, %.split.i92 ], [ %.0.i16.i91, %RCLASS_EXT_READABLE_LOOKUP.exit17.i88 ]
  %i.dq = getelementptr i8, ptr %.0.i82, i64 72
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !223
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !224
  %i.du = getelementptr i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !227
  %.not59 = icmp eq ptr %i.dv, null
  br i1 %.not59, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %RCLASS_EXT_READABLE.exit98
  call void @rb_class_foreach_subclass(i64 noundef %.4, ptr noundef nonnull @check_for_cvar_table, i64 noundef %1) #26
  br label %bb.ad

bb.ad:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %bb.ac, %RCLASS_EXT_READABLE.exit98, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @cvar_lookup_at(i64 noundef %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 8 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 28
  br i1 %i.i, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.j = and i64 %i.g, 65536
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.f, i64 160      ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.c

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.b
  %i.n = getelementptr i8, ptr %i.f, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.o = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.split.i, label %bb.d

.split.i:                                         ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.f, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.o, i64 128
  %i.r = load i8, ptr %i.q, align 8, !tbaa !32, !range !34, !noundef !35
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.split7.i, label %bb.g

.split7.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.t = load i64, ptr %i.f, align 8, !tbaa !20
  %i.u = and i64 %i.t, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.w = load i64, ptr %i.o, align 8, !tbaa !36
  %i.x = call i32 @rb_st_lookup(ptr noundef nonnull %i.v, i64 noundef %i.w, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i = icmp eq i32 %i.x, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.a, align 8, !tbaa !16
  %i.z = inttoptr i64 %i.y to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.f, %bb.e, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.z, %bb.f ], [ null, %bb.e ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.aa = getelementptr i8, ptr %i.f, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.aa, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.g:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.f, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.g
  %.0.i12 = phi ptr [ %i.n, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.ab, %bb.g ], [ %i.p, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.ac = getelementptr i8, ptr %.0.i12, i64 125
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = and i8 %i.ad, 8
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %RCLASS_EXT_READABLE.exit
  %i.af = getelementptr i8, ptr %i.f, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !49
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %bb.h, %rbimpl_RB_TYPE_P_fastpath.exit
  %.09 = phi i64 [ %i.ag, %bb.h ], [ %0, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %0, %bb.a ]
  %i.ah = call i64 @rb_ivar_lookup(i64 noundef %.09, i64 noundef %1, i64 noundef 36) ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 36
  br i1 %i.ai, label %bb.k, label %bb.i

bb.i:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.not11 = icmp eq ptr %2, null
  br i1 %.not11, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %i.ah, ptr %2, align 8, !tbaa !16
  br label %bb.k

bb.k:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.j, %bb.i, %RCLASS_EXT_READABLE.exit
  %.1 = phi i32 [ 0, %RCLASS_EXT_READABLE.exit ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ 1, %bb.j ], [ 1, %bb.i ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @cvar_front_klass(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  %.pre = inttoptr i64 %0 to ptr                  ; 9 uses
  br i1 %i.e, label %RCLASS_SINGLETON_P.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = load i64, ptr %.pre, align 8, !tbaa !20
  %i.g = and i64 %i.f, 8223
  %or.cond = icmp eq i64 %i.g, 8194
  br i1 %or.cond, label %bb.b, label %RCLASS_SINGLETON_P.exit.thread

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr i8, ptr %.pre, i64 136
  %i.i = load i64, ptr %i.h, align 8, !tbaa !42   ; 4 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = and i64 %i.i, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %RCLASS_SINGLETON_P.exit.thread, label %rb_namespace_p.exit

rb_namespace_p.exit:                              ; preds = %bb.b
  %i.n = inttoptr i64 %i.i to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20
  %i.p = and i64 %i.o, 30
  %switch.i.not = icmp eq i64 %i.p, 2
  br i1 %switch.i.not, label %bb.h, label %RCLASS_SINGLETON_P.exit.thread

RCLASS_SINGLETON_P.exit.thread:                   ; preds = %bb.a, %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.i, %rb_namespace_p.exit
  %i.q = load i64, ptr %.pre, align 8, !tbaa !20
  %i.r = and i64 %i.q, 65536
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %RCLASS_SINGLETON_P.exit.thread
  %i.s = getelementptr i8, ptr %.pre, i64 160     ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.c

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %RCLASS_SINGLETON_P.exit.thread
  %i.v = getelementptr i8, ptr %.pre, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.w = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %.split.i, label %bb.d

.split.i:                                         ; preds = %bb.c
  %i.x = getelementptr i8, ptr %.pre, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.w, i64 128
  %i.z = load i8, ptr %i.y, align 8, !tbaa !32, !range !34, !noundef !35
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.split7.i, label %bb.g

.split7.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ab = load i64, ptr %.pre, align 8, !tbaa !20
  %i.ac = and i64 %i.ab, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !22  ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !36
  %i.af = call i32 @rb_st_lookup(ptr noundef nonnull %i.ad, i64 noundef %i.ae, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i = icmp eq i32 %i.af, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ah = inttoptr i64 %i.ag to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.f, %bb.e, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
end_hunk_8
begin_hunk_9_@cvar_front_klass:bb.a

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @cvar_overtaken(i64 noundef %0, i64 noundef range(i64 1, 0) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %0, 0
  %.not18 = icmp eq i64 %1, %0
  %or.cond20 = or i1 %.not, %.not18
  br i1 %or.cond20, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %0, 7
  %.not24 = icmp eq i64 %i.a, 0
  br i1 %.not24, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %original_module.exit

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.b
  %i.b = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20
  %i.d = and i64 %i.c, 31
  %i.e = icmp eq i64 %i.d, 28
  br i1 %i.e, label %bb.c, label %original_module.exit

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !49
  br label %original_module.exit

original_module.exit:                             ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.c
  %.0.i = phi i64 [ %i.g, %bb.c ], [ %0, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %0, %bb.b ]
  %i.h = and i64 %1, 7
  %.not25 = icmp eq i64 %i.h, 0
  br i1 %.not25, label %rbimpl_RB_TYPE_P_fastpath.exit.i21, label %original_module.exit23

rbimpl_RB_TYPE_P_fastpath.exit.i21:               ; preds = %original_module.exit
  %i.i = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  %i.k = and i64 %i.j, 31
  %i.l = icmp eq i64 %i.k, 28
  br i1 %i.l, label %bb.d, label %original_module.exit23

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i21
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !49
  br label %original_module.exit23

original_module.exit23:                           ; preds = %original_module.exit, %rbimpl_RB_TYPE_P_fastpath.exit.i21, %bb.d
  %.0.i22 = phi i64 [ %i.n, %bb.d ], [ %1, %rbimpl_RB_TYPE_P_fastpath.exit.i21 ], [ %1, %original_module.exit ]
  %.not19 = icmp eq i64 %.0.i, %.0.i22
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %original_module.exit23
  %i.o = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !16
  %i.p = tail call i64 @rb_id2sym(i64 noundef %2) #26
  %i.q = tail call fastcc i64 @original_module(i64 noundef %0)
  %i.r = tail call i64 @rb_class_name(i64 noundef %i.q)
  %i.s = tail call fastcc i64 @original_module(i64 noundef %1)
  %i.t = tail call i64 @rb_class_name(i64 noundef %i.s)
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @.str.75, i64 noundef %i.p, i64 noundef %i.r, i64 noundef %i.t) #27
  unreachable

bb.f:                                             ; preds = %original_module.exit23
  %i.u = inttoptr i64 %0 to ptr
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20
  %i.w = and i64 %i.v, 31
  %i.x = icmp eq i64 %i.w, 2
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = tail call fastcc i64 @rb_ivar_delete(i64 noundef %0, i64 noundef %2, i64 noundef 36) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @rb_class_ivar_set(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = icmp ne i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp eq i64 %i.c, 0
  %.not3.i.i = and i1 %i.b, %i.d
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !124

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  %i.g = and i64 %i.f, 2048
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !125

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #27
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.h = and i64 %i.f, 31
  %i.i = icmp ne i64 %i.h, 5
  %i.j = and i64 %i.f, 49152
  %.not8.i = icmp eq i64 %i.j, 0
  %or.cond.i = or i1 %i.i, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.b, !prof !126

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #26
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.k = call fastcc zeroext i16 @class_ivar_set(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %i.a) ; 0 uses
  %i.l = load i8, ptr %i.a, align 1, !tbaa !18, !range !34, !noundef !35
  %i.m = trunc nuw i8 %i.l to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i1 %i.m
}

declare void @rb_class_foreach_subclass(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @check_for_cvar_table(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rb_ivar_defined.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 28
  br i1 %i.h, label %rb_ivar_defined.exit.thread, label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.i = and i64 %i.f, 30
  %switch.i = icmp eq i64 %i.i, 2
  br i1 %switch.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.i, label %rb_ivar_defined.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.i:      ; preds = %bb.b
  %i.j = and i64 %i.f, 16384
  %.not10.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not10.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.i, label %bb.c, !prof !121

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.i
  %i.k = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.i
  %i.l = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %.split.i.i.i, label %bb.d

.split.i.i.i:                                     ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.i
  %i.m = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit.i

bb.d:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.i
  %i.n = getelementptr i8, ptr %i.l, i64 128
  %i.o = load i8, ptr %i.n, align 8, !tbaa !32, !range !34, !noundef !35
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %.split7.i.i.i, label %bb.e

.split7.i.i.i:                                    ; preds = %bb.d
  %i.q = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.l)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit.i

RCLASS_WRITABLE_FIELDS_OBJ.exit.i:                ; preds = %bb.e, %.split7.i.i.i, %.split.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.r, %bb.e ], [ %i.m, %.split.i.i.i ], [ %i.q, %.split7.i.i.i ]
  %i.s = getelementptr i8, ptr %.0.i.i.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !112  ; 2 uses
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %rb_ivar_defined.exit.thread, label %rb_ivar_defined.exit

rb_ivar_defined.exit:                             ; preds = %bb.b, %RCLASS_WRITABLE_FIELDS_OBJ.exit.i
  %.sink.i = phi i64 [ %i.t, %RCLASS_WRITABLE_FIELDS_OBJ.exit.i ], [ %0, %bb.b ]
  %i.u = tail call fastcc i64 @ivar_defined0(i64 noundef %.sink.i, i64 noundef %1)
  %i.v = and i64 %i.u, 27
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %rb_ivar_defined.exit.thread, label %bb.f

bb.f:                                             ; preds = %rb_ivar_defined.exit
  %i.w = load i64, ptr @ruby_vm_global_cvar_state, align 8, !tbaa !220
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr @ruby_vm_global_cvar_state, align 8, !tbaa !220
  br label %bb.g

rb_ivar_defined.exit.thread:                      ; preds = %bb.a, %RCLASS_WRITABLE_FIELDS_OBJ.exit.i, %rb_ivar_defined.exit, %rbimpl_RB_TYPE_P_fastpath.exit
  tail call void @rb_class_foreach_subclass(i64 noundef %0, ptr noundef nonnull @check_for_cvar_table, i64 noundef %1) #26
  br label %bb.g

bb.g:                                             ; preds = %rb_ivar_defined.exit.thread, %bb.f
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_cvar_find(i64 noundef %0, i64 noundef %1, ptr noundef nonnull captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 36, ptr %i.b, align 8, !tbaa !16
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %rb_ractor_main_p.exit.i.i, label %CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit.i

rb_ractor_main_p.exit.i.i:                        ; preds = %bb.a
  %i.d = tail call zeroext i1 @rb_ractor_main_p_() #26
  br i1 %i.d, label %CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit.i, label %bb.b, !prof !69

bb.b:                                             ; preds = %rb_ractor_main_p.exit.i.i
  %i.e = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !16
  %i.f = tail call i64 @rb_id2str(i64 noundef %1) #26
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.74, i64 noundef %i.f, i64 noundef %0) #27
  unreachable

CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit.i:       ; preds = %rb_ractor_main_p.exit.i.i, %bb.a
  %i.g = call fastcc i32 @cvar_lookup_at(i64 noundef %0, i64 noundef %1, ptr noundef nonnull %i.b)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit.i
  %i.h = load i64, ptr %2, align 8, !tbaa !16
  %.not18.i = icmp eq i64 %i.h, 0
  br i1 %.not18.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %0, ptr %2, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit.i
  %.0 = phi i64 [ 0, %CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit.i ], [ %0, %bb.d ], [ %0, %bb.c ] ; 2 uses
  %i.i = call fastcc i64 @cvar_front_klass(i64 noundef %0) ; 2 uses
  %.not1923.i = icmp eq i64 %i.i, 0
  br i1 %.not1923.i, label %find_cvar.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %RCLASS_EXT_READABLE.exit.i
  %.1 = phi i64 [ %.2, %RCLASS_EXT_READABLE.exit.i ], [ %.0, %bb.e ]
  %.024.i = phi i64 [ %i.ah, %RCLASS_EXT_READABLE.exit.i ], [ %i.i, %bb.e ] ; 5 uses
  %i.j = call fastcc i32 @cvar_lookup_at(i64 noundef %.024.i, i64 noundef %1, ptr noundef nonnull %i.b)
  %.not20.i = icmp eq i32 %i.j, 0
  br i1 %.not20.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.k = load i64, ptr %2, align 8, !tbaa !16
  %.not21.i = icmp eq i64 %i.k, 0
  br i1 %.not21.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %.024.i, ptr %2, align 8, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %.lr.ph.i
  %.2 = phi i64 [ %.1, %.lr.ph.i ], [ %.024.i, %bb.g ], [ %.024.i, %bb.f ] ; 2 uses
  %i.l = inttoptr i64 %.024.i to ptr              ; 7 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20
  %i.n = and i64 %i.m, 65536
  %.not.i.i22.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i22.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i:        ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.l, i64 160      ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i, label %bb.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i, %bb.h
  %i.r = getelementptr i8, ptr %i.l, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

bb.i:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i
  %i.s = call ptr @rb_current_box() #26           ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.j

.split.i.i:                                       ; preds = %bb.i
  %i.t = getelementptr i8, ptr %i.l, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr i8, ptr %i.s, i64 128
  %i.v = load i8, ptr %i.u, align 8, !tbaa !32, !range !34, !noundef !35
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.split7.i.i, label %bb.m

.split7.i.i:                                      ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.x = load i64, ptr %i.l, align 8, !tbaa !20
  %i.y = and i64 %i.x, 65536
  %.not.i.i.i10.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i10.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i.i:               ; preds = %.split7.i.i
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !22   ; 2 uses
  %.not.i.i12.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i12.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.k

bb.k:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !36
  %i.ab = call i32 @rb_st_lookup(ptr noundef nonnull %i.z, i64 noundef %i.aa, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not5.i.i13.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ad = inttoptr i64 %i.ac to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i.i:            ; preds = %bb.l, %bb.k, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i, %.split7.i.i
  %.0.i.i14.i.i = phi ptr [ %i.ad, %bb.l ], [ null, %bb.k ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i ], [ null, %.split7.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i.i = icmp eq ptr %.0.i.i14.i.i, null
  %i.ae = getelementptr i8, ptr %i.l, i64 24
  %.0.i16.i.i = select i1 %.not.i15.i.i, ptr %i.ae, ptr %.0.i.i14.i.i
  br label %RCLASS_EXT_READABLE.exit.i

bb.m:                                             ; preds = %bb.j
  %i.af = getelementptr i8, ptr %i.l, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

RCLASS_EXT_READABLE.exit.i:                       ; preds = %bb.m, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, %.split.i.i, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i
  %.0.i.i = phi ptr [ %i.r, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i ], [ %i.af, %bb.m ], [ %i.t, %.split.i.i ], [ %.0.i16.i.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i ]
  %i.ag = getelementptr i8, ptr %.0.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !205 ; 2 uses
  %.not19.i = icmp eq i64 %i.ah, 0
  br i1 %.not19.i, label %find_cvar.exit, label %.lr.ph.i, !llvm.loop !229

find_cvar.exit:                                   ; preds = %RCLASS_EXT_READABLE.exit.i, %bb.e
  %.3 = phi i64 [ %.0, %bb.e ], [ %.2, %RCLASS_EXT_READABLE.exit.i ] ; 2 uses
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.not = icmp eq i64 %.3, 0
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %find_cvar.exit
  %i.aj = call i64 @rb_id2sym(i64 noundef %1) #26
  call fastcc void @rb_name_err_raise(ptr noundef nonnull @.str.35, i64 noundef %0, i64 noundef %i.aj) #34
  unreachable

bb.o:                                             ; preds = %find_cvar.exit
  %i.ak = load i64, ptr %2, align 8, !tbaa !16
  call fastcc void @cvar_overtaken(i64 noundef %i.ak, i64 noundef %.3, i64 noundef %1)
  ret i64 %i.ai
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_cvar_get(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !16
  %i.b = call i64 @rb_cvar_find(i64 noundef %0, i64 noundef %1, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 0, 21) i64 @rb_cvar_defined(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit

rb_ractor_main_p.exit.i:                          ; preds = %bb.b
  %i.c = tail call zeroext i1 @rb_ractor_main_p_() #26
  br i1 %i.c, label %CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit, label %bb.c, !prof !69

bb.c:                                             ; preds = %rb_ractor_main_p.exit.i
  %i.d = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !16
  %i.e = tail call i64 @rb_id2str(i64 noundef %1) #26
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.74, i64 noundef %i.e, i64 noundef %0) #27
  unreachable

CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit:         ; preds = %bb.b, %rb_ractor_main_p.exit.i
  %i.f = tail call fastcc i32 @cvar_lookup_at(i64 noundef %0, i64 noundef %1, ptr noundef null)
  %.not13 = icmp eq i32 %i.f, 0
  br i1 %.not13, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit
  %i.g = tail call fastcc i64 @cvar_front_klass(i64 noundef %0) ; 2 uses
  %.not1417 = icmp eq i64 %i.g, 0
  br i1 %.not1417, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %RCLASS_EXT_READABLE.exit
  %.01118 = phi i64 [ %i.ae, %RCLASS_EXT_READABLE.exit ], [ %i.g, %bb.d ] ; 2 uses
  %i.h = call fastcc i32 @cvar_lookup_at(i64 noundef %.01118, i64 noundef %1, ptr noundef null)
  %.not15 = icmp eq i32 %i.h, 0
  br i1 %.not15, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.i = inttoptr i64 %.01118 to ptr              ; 7 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  %i.k = and i64 %i.j, 65536
  %.not.i.i16 = icmp eq i64 %i.k, 0
  br i1 %.not.i.i16, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.i, i64 160      ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.f

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.e
  %i.o = getelementptr i8, ptr %i.i, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.f:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.p = call ptr @rb_current_box() #26           ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %.split.i, label %bb.g

.split.i:                                         ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.i, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %i.p, i64 128
  %i.s = load i8, ptr %i.r, align 8, !tbaa !32, !range !34, !noundef !35
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.split7.i, label %bb.j

.split7.i:                                        ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.u = load i64, ptr %i.i, align 8, !tbaa !20
  %i.v = and i64 %i.u, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.h

bb.h:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.x = load i64, ptr %i.p, align 8, !tbaa !36
  %i.y = call i32 @rb_st_lookup(ptr noundef nonnull %i.w, i64 noundef %i.x, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i = icmp eq i32 %i.y, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load i64, ptr %i.a, align 8, !tbaa !16
  %i.aa = inttoptr i64 %i.z to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.i, %bb.h, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.aa, %bb.i ], [ null, %bb.h ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.ab = getelementptr i8, ptr %i.i, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.ab, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.j:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.i, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.j
  %.0.i = phi ptr [ %i.o, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.ac, %bb.j ], [ %i.q, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.ad = getelementptr i8, ptr %.0.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !205 ; 2 uses
  %.not14 = icmp eq i64 %i.ae, 0
  br i1 %.not14, label %.loopexit, label %.lr.ph, !llvm.loop !230

.loopexit:                                        ; preds = %.lr.ph, %RCLASS_EXT_READABLE.exit, %bb.d, %CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ 20, %CVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit ], [ 0, %bb.d ], [ 20, %.lr.ph ], [ 0, %RCLASS_EXT_READABLE.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_cv_set(i64 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_intern(ptr noundef nonnull %1) #26 ; 2 uses
  %i.b = tail call i32 @rb_is_class_id(i64 noundef %i.a) #33
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %cv_intern.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_str_new_cstr(ptr noundef nonnull %1) #26
  tail call fastcc void @rb_name_err_raise(ptr noundef nonnull @.str.36, i64 noundef %0, i64 noundef %i.c) #34
  unreachable

cv_intern.exit:                                   ; preds = %bb.a
  tail call void @rb_cvar_set(i64 noundef %0, i64 noundef %i.a, i64 noundef %2)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_cv_get(i64 noundef %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call i64 @rb_intern(ptr noundef nonnull %1) #26 ; 2 uses
  %i.c = tail call i32 @rb_is_class_id(i64 noundef %i.b) #33
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %cv_intern.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_str_new_cstr(ptr noundef nonnull %1) #26
  tail call fastcc void @rb_name_err_raise(ptr noundef nonnull @.str.36, i64 noundef %0, i64 noundef %i.d) #34
  unreachable

cv_intern.exit:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !16
  %i.e = call i64 @rb_cvar_find(i64 noundef %0, i64 noundef %i.b, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_define_class_variable(i64 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_intern(ptr noundef nonnull %1) #26 ; 2 uses
  %i.b = tail call i32 @rb_is_class_id(i64 noundef %i.a) #33
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %rb_cv_set.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_str_new_cstr(ptr noundef nonnull %1) #26
  tail call fastcc void @rb_name_err_raise(ptr noundef nonnull @.str.36, i64 noundef %0, i64 noundef %i.c) #34
  unreachable

rb_cv_set.exit:                                   ; preds = %bb.a
  tail call void @rb_cvar_set(i64 noundef %0, i64 noundef %i.a, i64 noundef %2)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_mod_class_variables(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #27
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.b = load i64, ptr %1, align 8, !tbaa !16
  %i.c = and i64 %i.b, -5
  %.not11 = icmp eq i64 %i.c, 0
  br i1 %.not11, label %bb.n, label %.critedge

.critedge:                                        ; preds = %rb_check_arity.exit, %bb.c
  %i.d = icmp eq i64 %2, 0
  %i.e = and i64 %2, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %RCLASS_SINGLETON_P.exit.thread.i.preheader, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %.critedge
  %i.h = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20
  %i.j = and i64 %i.i, 8223
  %or.cond.i6 = icmp eq i64 %i.j, 8194
  br i1 %or.cond.i6, label %bb.d, label %RCLASS_SINGLETON_P.exit.thread.i.preheader

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.k = getelementptr i8, ptr %i.h, i64 136
  %i.l = load i64, ptr %i.k, align 8, !tbaa !42   ; 3 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = and i64 %i.l, 7
  %i.o = icmp ne i64 %i.n, 0
  %i.p = or i1 %i.m, %i.o
  br i1 %i.p, label %RCLASS_SINGLETON_P.exit.thread.i.preheader, label %rb_namespace_p.exit.i

rb_namespace_p.exit.i:                            ; preds = %bb.d
  %i.q = inttoptr i64 %i.l to ptr
  %i.r = load i64, ptr %i.q, align 8, !tbaa !20
  %i.s = and i64 %i.r, 30
  %switch.i.i = icmp eq i64 %i.s, 2
  br i1 %switch.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, label %RCLASS_SINGLETON_P.exit.thread.i.preheader

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %rb_namespace_p.exit.i
  %i.t = tail call ptr @rb_st_init_numtable() #26 ; 2 uses
  %i.u = load i64, ptr %i.h, align 8, !tbaa !20
  %i.v = and i64 %i.u, 31
  %i.w = icmp eq i64 %i.v, 28
  br i1 %i.w, label %bb.e, label %mod_cvar_at.exit.i

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.x = getelementptr i8, ptr %i.h, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !49
  br label %mod_cvar_at.exit.i

mod_cvar_at.exit.i:                               ; preds = %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %.0.i.i.i = phi i64 [ %i.y, %bb.e ], [ %2, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i ]
  %i.z = ptrtoint ptr %i.t to i64
  tail call fastcc void @rb_field_foreach(i64 noundef %.0.i.i.i, ptr noundef nonnull @cv_i, i64 noundef %i.z, i1 noundef zeroext true)
  %i.aa = tail call fastcc i64 @cvar_front_klass(i64 noundef %2)
  br label %RCLASS_SINGLETON_P.exit.thread.i.preheader

RCLASS_SINGLETON_P.exit.thread.i.preheader:       ; preds = %mod_cvar_at.exit.i, %rb_namespace_p.exit.i, %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %.critedge
  %.111.i.ph = phi ptr [ null, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ null, %.critedge ], [ null, %bb.d ], [ null, %rb_namespace_p.exit.i ], [ %i.t, %mod_cvar_at.exit.i ]
  %.1.i.ph = phi i64 [ %2, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %2, %.critedge ], [ %2, %bb.d ], [ %2, %rb_namespace_p.exit.i ], [ %i.aa, %mod_cvar_at.exit.i ]
  br label %RCLASS_SINGLETON_P.exit.thread.i

RCLASS_SINGLETON_P.exit.thread.i:                 ; preds = %RCLASS_SINGLETON_P.exit.thread.i.preheader, %RCLASS_EXT_READABLE.exit.i
  %.111.i = phi ptr [ %.0.i13.i, %RCLASS_EXT_READABLE.exit.i ], [ %.111.i.ph, %RCLASS_SINGLETON_P.exit.thread.i.preheader ] ; 2 uses
  %.1.i = phi i64 [ %i.bh, %RCLASS_EXT_READABLE.exit.i ], [ %.1.i.ph, %RCLASS_SINGLETON_P.exit.thread.i.preheader ] ; 5 uses
  %.not.i.i = icmp eq ptr %.111.i, null
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %RCLASS_SINGLETON_P.exit.thread.i
  %i.ab = call ptr @rb_st_init_numtable() #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %RCLASS_SINGLETON_P.exit.thread.i
  %.0.i13.i = phi ptr [ %.111.i, %RCLASS_SINGLETON_P.exit.thread.i ], [ %i.ab, %bb.f ] ; 3 uses
  %i.ac = icmp eq i64 %.1.i, 0
  %i.ad = and i64 %.1.i, 7
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = or i1 %i.ac, %i.ae
  %.pre.i = inttoptr i64 %.1.i to ptr             ; 9 uses
  br i1 %i.af, label %mod_cvar_at.exit16.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i14.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i14.i:           ; preds = %bb.g
  %i.ag = load i64, ptr %.pre.i, align 8, !tbaa !20
  %i.ah = and i64 %i.ag, 31
  %i.ai = icmp eq i64 %i.ah, 28
  br i1 %i.ai, label %bb.h, label %mod_cvar_at.exit16.i

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i14.i
  %i.aj = getelementptr i8, ptr %.pre.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !49
  br label %mod_cvar_at.exit16.i

mod_cvar_at.exit16.i:                             ; preds = %bb.h, %rbimpl_RB_TYPE_P_fastpath.exit.i.i14.i, %bb.g
  %.0.i.i15.i = phi i64 [ %i.ak, %bb.h ], [ %.1.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i14.i ], [ %.1.i, %bb.g ]
  %i.al = ptrtoint ptr %.0.i13.i to i64
  call fastcc void @rb_field_foreach(i64 noundef %.0.i.i15.i, ptr noundef nonnull @cv_i, i64 noundef %i.al, i1 noundef zeroext true)
  %i.am = load i64, ptr %.pre.i, align 8, !tbaa !20
  %i.an = and i64 %i.am, 65536
  %.not.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i:        ; preds = %mod_cvar_at.exit16.i
  %i.ao = getelementptr i8, ptr %.pre.i, i64 160  ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !22
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i, label %bb.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i, %mod_cvar_at.exit16.i
  %i.ar = getelementptr i8, ptr %.pre.i, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

bb.i:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i
  %i.as = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i17.i = icmp eq ptr %i.as, null
  br i1 %.not.i17.i, label %.split.i.i, label %bb.j

.split.i.i:                                       ; preds = %bb.i
  %i.at = getelementptr i8, ptr %.pre.i, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr i8, ptr %i.as, i64 128
  %i.av = load i8, ptr %i.au, align 8, !tbaa !32, !range !34, !noundef !35
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %.split7.i.i, label %bb.m

.split7.i.i:                                      ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ax = load i64, ptr %.pre.i, align 8, !tbaa !20
  %i.ay = and i64 %i.ax, 65536
  %.not.i.i.i10.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i10.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i.i:               ; preds = %.split7.i.i
  %i.az = load ptr, ptr %i.ao, align 8, !tbaa !22 ; 2 uses
  %.not.i.i12.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i12.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.k

bb.k:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i
  %i.ba = load i64, ptr %i.as, align 8, !tbaa !36
  %i.bb = call i32 @rb_st_lookup(ptr noundef nonnull %i.az, i64 noundef %i.ba, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not5.i.i13.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !16
  %i.bd = inttoptr i64 %i.bc to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i.i:            ; preds = %bb.l, %bb.k, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i, %.split7.i.i
  %.0.i.i14.i.i = phi ptr [ %i.bd, %bb.l ], [ null, %bb.k ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i ], [ null, %.split7.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i.i = icmp eq ptr %.0.i.i14.i.i, null
  %i.be = getelementptr i8, ptr %.pre.i, i64 24
  %.0.i16.i.i = select i1 %.not.i15.i.i, ptr %i.be, ptr %.0.i.i14.i.i
  br label %RCLASS_EXT_READABLE.exit.i

bb.m:                                             ; preds = %bb.j
  %i.bf = getelementptr i8, ptr %.pre.i, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

RCLASS_EXT_READABLE.exit.i:                       ; preds = %bb.m, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, %.split.i.i, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i
  %.0.i18.i = phi ptr [ %i.ar, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i ], [ %i.bf, %bb.m ], [ %i.at, %.split.i.i ], [ %.0.i16.i.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i ]
  %i.bg = getelementptr i8, ptr %.0.i18.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %mod_cvar_of.exit, label %RCLASS_SINGLETON_P.exit.thread.i

bb.n:                                             ; preds = %bb.c
  %i.bi = tail call ptr @rb_st_init_numtable() #26 ; 2 uses
  %i.bj = icmp eq i64 %2, 0
  %i.bk = and i64 %2, 7
  %i.bl = icmp ne i64 %i.bk, 0
  %i.bm = or i1 %i.bj, %i.bl
  br i1 %i.bm, label %mod_cvar_at.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i8

rbimpl_RB_TYPE_P_fastpath.exit.i.i8:              ; preds = %bb.n
  %i.bn = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !20
  %i.bp = and i64 %i.bo, 31
  %i.bq = icmp eq i64 %i.bp, 28
  br i1 %i.bq, label %bb.o, label %mod_cvar_at.exit

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i8
  %i.br = getelementptr i8, ptr %i.bn, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !49
  br label %mod_cvar_at.exit

mod_cvar_at.exit:                                 ; preds = %bb.n, %rbimpl_RB_TYPE_P_fastpath.exit.i.i8, %bb.o
  %.0.i.i = phi i64 [ %i.bs, %bb.o ], [ %2, %rbimpl_RB_TYPE_P_fastpath.exit.i.i8 ], [ %2, %bb.n ]
  %i.bt = ptrtoint ptr %i.bi to i64
  tail call fastcc void @rb_field_foreach(i64 noundef %.0.i.i, ptr noundef nonnull @cv_i, i64 noundef %i.bt, i1 noundef zeroext true)
  br label %mod_cvar_of.exit

mod_cvar_of.exit:                                 ; preds = %RCLASS_EXT_READABLE.exit.i, %mod_cvar_at.exit
  %.0 = phi ptr [ %i.bi, %mod_cvar_at.exit ], [ %.0.i13.i, %RCLASS_EXT_READABLE.exit.i ] ; 4 uses
  %.not.i9 = icmp eq ptr %.0, null
  br i1 %.not.i9, label %bb.p, label %bb.q

bb.p:                                             ; preds = %mod_cvar_of.exit
  %i.bu = call i64 @rb_ary_new_capa(i64 noundef 0) #26
  br label %cvar_list.exit

bb.q:                                             ; preds = %mod_cvar_of.exit
  %i.bv = getelementptr i8, ptr %.0, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !208
  %i.bx = call i64 @rb_ary_new_capa(i64 noundef %i.bw) #26 ; 2 uses
  call void @rb_st_foreach_safe(ptr noundef nonnull %.0, ptr noundef nonnull @cv_list_i, i64 noundef %i.bx) #26
  call void @rb_st_free_table(ptr noundef nonnull %.0) #26
  br label %cvar_list.exit

cvar_list.exit:                                   ; preds = %bb.p, %bb.q
  %.0.i10 = phi i64 [ %i.bx, %bb.q ], [ %i.bu, %bb.p ]
  ret i64 %.0.i10
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 37, 36) i64 @rb_mod_remove_cvar(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !16
  %i.b = call i64 @rb_check_id(ptr noundef nonnull %i.a) #26 ; 5 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @rb_is_class_id(i64 noundef %i.b) #26, !callees !137, !inline_history !138
  %.not12.i = icmp eq i32 %i.d, 0
  br i1 %.not12.i, label %bb.d, label %check_id_type.exit

bb.c:                                             ; preds = %bb.a
  %i.e = call i32 @rb_is_class_name(i64 noundef %i.c) #26, !callees !139, !inline_history !138
  %.not11.i = icmp eq i32 %i.e, 0
  br i1 %.not11.i, label %bb.d, label %check_id_type.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = call i64 @rb_fstring_new(ptr noundef nonnull @.str.36, i64 noundef 30) #26
  call fastcc void @rb_name_err_raise_str(i64 noundef %i.f, i64 noundef %0, i64 noundef %i.c) #34
  unreachable

check_id_type.exit:                               ; preds = %bb.b
  %i.g = icmp ne i64 %0, 0
  %i.h = and i64 %0, 7
  %i.i = icmp eq i64 %i.h, 0
  %.not3.i.i = and i1 %i.g, %i.i
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !124

RB_OBJ_FROZEN.exit.i:                             ; preds = %check_id_type.exit
  %i.j = inttoptr i64 %0 to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20   ; 3 uses
  %i.l = and i64 %i.k, 2048
  %.not.i19 = icmp eq i64 %i.l, 0
  br i1 %.not.i19, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !125

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %check_id_type.exit
  call void @rb_error_frozen_object(i64 noundef %0) #27
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.m = and i64 %i.k, 31
  %i.n = icmp ne i64 %i.m, 5
  %i.o = and i64 %i.k, 49152
  %.not8.i = icmp eq i64 %i.o, 0
  %or.cond.i = or i1 %i.n, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.e, !prof !126

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  call void @rb_str_modify(i64 noundef %0) #26
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.e
  %i.p = call fastcc i64 @rb_ivar_delete(i64 noundef %0, i64 noundef %i.b, i64 noundef 36) ; 2 uses
  %i.q = icmp eq i64 %i.p, 36
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_check_frozen_inline.exit
  ret i64 %i.p

bb.g:                                             ; preds = %rb_check_frozen_inline.exit
  %i.r = call i64 @rb_cvar_defined(i64 noundef %0, i64 noundef %i.b)
  %.not18 = icmp eq i64 %i.r, 0
  br i1 %.not18, label %check_id_type.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call i64 @rb_id2sym(i64 noundef %i.b) #26
  call fastcc void @rb_name_err_raise(ptr noundef nonnull @.str.37, i64 noundef %0, i64 noundef %i.s) #34
  unreachable

check_id_type.exit.thread:                        ; preds = %bb.c, %bb.g
  %i.t = load i64, ptr %i.a, align 8, !tbaa !16
  call fastcc void @rb_name_err_raise(ptr noundef nonnull @.str.38, i64 noundef %0, i64 noundef %i.t) #34
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_is_class_id(i64 noundef) local_unnamed_addr #14

declare i32 @rb_is_class_name(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_iv_get(i64 noundef %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.b = tail call nonnull ptr @rb_usascii_encoding() #26
  %i.c = tail call i64 @rb_check_id_cstr(ptr noundef nonnull %1, i64 noundef %i.a, ptr noundef nonnull %i.b) #26 ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_ivar_lookup(i64 noundef %0, i64 noundef %i.c, i64 noundef 4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ 4, %bb.a ]
  ret i64 %.0
}

declare nonnull ptr @rb_usascii_encoding() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_iv_set(i64 noundef %0, ptr noundef nonnull %1, i64 noundef returned %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_intern(ptr noundef nonnull %1) #26
  %i.b = icmp ne i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp eq i64 %i.c, 0
  %.not3.i.i.i = and i1 %i.b, %i.d
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !124

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  %i.g = and i64 %i.f, 2048
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !125

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #27
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.h = and i64 %i.f, 31
  %i.i = icmp ne i64 %i.h, 5
  %i.j = and i64 %i.f, 49152
  %.not8.i.i = icmp eq i64 %i.j, 0
  %or.cond.i.i = or i1 %i.i, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_ivar_set.exit, label %bb.b, !prof !126

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #26
  br label %rb_ivar_set.exit

rb_ivar_set.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.k = tail call fastcc zeroext i16 @ivar_set(i64 noundef %0, i64 noundef %i.a, i64 noundef %2) ; 0 uses
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i16 @class_ivar_set(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  tail call void @rb_class_ensure_writable(i64 noundef %0) #26
  %i.b = icmp ne i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp eq i64 %i.c, 0
  %.not5.i.i.i.i = and i1 %i.b, %i.d              ; 2 uses
  br i1 %.not5.i.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, !prof !124

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 16384
  %.not10.i.i = icmp eq i64 %i.g, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.b, !prof !121

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, %bb.a
  %i.i = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.c

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.j = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.k = getelementptr i8, ptr %i.i, i64 128
  %i.l = load i8, ptr %i.k, align 8, !tbaa !32, !range !34, !noundef !35
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.split7.i.i, label %bb.d

.split7.i.i:                                      ; preds = %bb.c
  %i.n = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.i)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.d:                                             ; preds = %bb.c
  %i.o = inttoptr i64 %0 to ptr
  %i.p = getelementptr i8, ptr %i.o, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_WRITABLE_FIELDS_OBJ.exit:                  ; preds = %bb.b, %.split.i.i, %.split7.i.i, %bb.d
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.p, %bb.d ], [ %i.j, %.split.i.i ], [ %i.n, %.split7.i.i ]
  %i.q = getelementptr i8, ptr %.0.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !112  ; 10 uses
  %i.s = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.s, null                ; 2 uses
  %.not.i10 = icmp eq i64 %i.r, 0
  br i1 %.not.i10, label %bb.e, label %bb.f

bb.e:                                             ; preds = %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %i.t = tail call i64 @rb_imemo_fields_new(i64 noundef %0, i64 noundef 1, i1 noundef zeroext true) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %i.u = phi i64 [ %i.t, %bb.e ], [ %i.r, %RCLASS_WRITABLE_FIELDS_OBJ.exit ] ; 7 uses
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load i64, ptr %i.v, align 8, !tbaa !20   ; 3 uses
  %i.x = lshr i64 %i.w, 32                        ; 4 uses
  %i.y = trunc nuw i64 %i.x to i32                ; 4 uses
  %i.z = and i32 %i.y, 134217728
  %.not76.i = icmp eq i32 %i.z, 0
  br i1 %.not76.i, label %bb.g, label %bb.t, !prof !97

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 %i.y, ptr %i.a, align 4, !tbaa !7
  %i.aa = call zeroext i1 @rb_shape_find_ivar(i32 noundef %i.y, i64 noundef %1, ptr noundef nonnull %i.a) #26 ; 3 uses
  br i1 %i.aa, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.g
  %.pre.i.i = load i32, ptr %i.a, align 4, !tbaa !7
  br label %generic_shape_ivar.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ab = and i64 %i.x, 524287
  %i.ac = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.ad = getelementptr [40 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.ad, i64 28
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !120
  %i.ag = icmp eq i16 %i.af, -1
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ah, ptr noundef nonnull @.str.48) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ai = call i32 @rb_shape_transition_add_ivar(i64 noundef %i.u, i64 noundef %1) #26
  br label %generic_shape_ivar.exit.i

generic_shape_ivar.exit.i:                        ; preds = %bb.j, %._crit_edge.i.i
  %i.aj = phi i32 [ %i.ai, %bb.j ], [ %.pre.i.i, %._crit_edge.i.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ak = and i32 %i.aj, 134217728
  %.not77.i = icmp eq i32 %i.ak, 0
  br i1 %.not77.i, label %bb.l, label %bb.k, !prof !97

bb.k:                                             ; preds = %generic_shape_ivar.exit.i
  %i.al = call fastcc i64 @imemo_fields_complex_from_obj(i64 noundef %0, i64 noundef %i.u, i32 noundef %i.aj)
  br label %bb.t

bb.l:                                             ; preds = %generic_shape_ivar.exit.i
  %i.am = and i32 %i.aj, 524287
  %i.an = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113 ; 3 uses
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = getelementptr [40 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 28
  %i.ar = load i16, ptr %i.aq, align 4, !tbaa !120
  %i.as = add i16 %i.ar, -1                       ; 4 uses
  br i1 %i.aa, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = and i64 %i.w, 126100789566373888
  %.not.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i:         ; preds = %bb.m
  %i.au = and i64 %i.x, 524287
  %i.av = getelementptr [40 x i8], ptr %i.an, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 30
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !135
  br label %RSHAPE_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.i.i:                ; preds = %bb.m
  %i.ay = lshr i64 %i.w, 54
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !136
  %i.ba = and i64 %i.ay, 7
  %i.bb = add nuw nsw i64 %i.ba, 4294967295
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = getelementptr [2 x i8], ptr %i.az, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !123
  %i.bf = and i64 %i.x, 524287
  %i.bg = getelementptr [40 x i8], ptr %i.an, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 30
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !135
  %spec.select.i.i = call i16 @llvm.umax.i16(i16 %i.be, i16 %i.bi)
  br label %RSHAPE_CAPACITY.exit.i

RSHAPE_CAPACITY.exit.i:                           ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i
  %.0.i62.i = phi i16 [ %spec.select.i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i.i ], [ %i.ax, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i ]
  %.not57.i = icmp ult i16 %i.as, %.0.i62.i
  br i1 %.not57.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %RSHAPE_CAPACITY.exit.i
  %i.bj = lshr i32 %i.aj, 22
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = and i8 %i.bk, 7                         ; 2 uses
  %.not.i.i63.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i63.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i67.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i64.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i67.i:       ; preds = %bb.n
  %i.bm = getelementptr i8, ptr %i.ap, i64 30
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !135
  br label %RSHAPE_CAPACITY.exit68.i

RSHAPE_EMBEDDED_CAPACITY.exit.i64.i:              ; preds = %bb.n
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !136
  %i.bp = zext nneg i8 %i.bl to i64
  %i.bq = add nuw nsw i64 %i.bp, 4294967295
  %i.br = and i64 %i.bq, 4294967295
  %i.bs = getelementptr [2 x i8], ptr %i.bo, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !123
  %i.bu = getelementptr i8, ptr %i.ap, i64 30
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !135
  %spec.select.i65.i = call i16 @llvm.umax.i16(i16 %i.bt, i16 %i.bv)
  br label %RSHAPE_CAPACITY.exit68.i

RSHAPE_CAPACITY.exit68.i:                         ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.i64.i, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i67.i
  %.0.i66.i = phi i16 [ %spec.select.i65.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i64.i ], [ %i.bn, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i67.i ]
  %i.bw = call fastcc i64 @imemo_fields_copy_capa(i64 noundef %0, i64 noundef %i.u, i16 noundef zeroext %.0.i66.i)
  br label %bb.o

bb.o:                                             ; preds = %RSHAPE_CAPACITY.exit68.i, %RSHAPE_CAPACITY.exit.i, %bb.l
  %.054.i = phi i64 [ %i.bw, %RSHAPE_CAPACITY.exit68.i ], [ %i.u, %RSHAPE_CAPACITY.exit.i ], [ %i.u, %bb.l ] ; 6 uses
  %.not.i69.i = icmp eq i64 %.054.i, 0
  br i1 %.not.i69.i, label %rb_imemo_fields_ptr.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = inttoptr i64 %.054.i to ptr             ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !20
  %i.bz = and i64 %i.by, 65536
  %.not5.i.i = icmp eq i64 %i.bz, 0
  %i.ca = getelementptr i8, ptr %i.bx, i64 16     ; 2 uses
  br i1 %.not5.i.i, label %rb_imemo_fields_ptr.exit.i, label %bb.q, !prof !97

bb.q:                                             ; preds = %bb.p
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit.i

rb_imemo_fields_ptr.exit.i:                       ; preds = %bb.q, %bb.p, %bb.o
  %.0.i70.i = phi ptr [ %i.cb, %bb.q ], [ null, %bb.o ], [ %i.ca, %bb.p ]
  %i.cc = icmp eq i64 %i.r, %.054.i
  %or.cond.i = and i1 %.not.i, %i.cc
  %i.cd = zext i16 %i.as to i64
  %i.ce = getelementptr [8 x i8], ptr %.0.i70.i, i64 %i.cd ; 2 uses
end_hunk_9
begin_hunk_10_@set_sub_temporary_name_foreach:bb.a
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !20 ; 2 uses
  %i.ay = and i64 %i.ax, 8192
  %.not.i16 = icmp eq i64 %i.ay, 0
  br i1 %.not.i16, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = lshr i64 %i.ax, 15
  %i.ba = and i64 %i.az, 127
  br label %rb_array_len.exit

bb.o:                                             ; preds = %bb.m
  %i.bb = getelementptr i8, ptr %i.aw, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !42
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.n, %bb.o
  %.0.i17 = phi i64 [ %i.ba, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = call i64 @rb_ary_push(i64 noundef %i.av, i64 noundef %2) #26 ; 0 uses
  call void @rb_id_table_foreach(ptr noundef nonnull %i.au, ptr noundef nonnull @set_sub_temporary_name_i, ptr noundef nonnull %1) #26
  %i.be = load i64, ptr %1, align 8, !tbaa !46
  call void @rb_ary_set_len(i64 noundef %i.be, i64 noundef %.0.i17) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %rb_array_len.exit, %RCLASS_EXT_READABLE.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @set_sub_temporary_name_i(i64 noundef %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %1 to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !165  ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %i.d, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %rb_namespace_p.exit.thread, label %rb_namespace_p.exit

rb_namespace_p.exit:                              ; preds = %bb.a
  %i.i = inttoptr i64 %i.d to ptr                 ; 7 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.k = and i64 %i.j, 30
  %switch.i = icmp eq i64 %i.k, 2
  br i1 %switch.i, label %bb.b, label %rb_namespace_p.exit.thread

bb.b:                                             ; preds = %rb_namespace_p.exit
  %i.l = and i64 %i.j, 65536
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.i, i64 160      ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.c

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.b
  %i.p = getelementptr i8, ptr %i.i, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.q = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %.split.i, label %bb.d

.split.i:                                         ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.i, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.q, i64 128
  %i.t = load i8, ptr %i.s, align 8, !tbaa !32, !range !34, !noundef !35
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.split7.i, label %bb.g

.split7.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.v = load i64, ptr %i.i, align 8, !tbaa !20
  %i.w = and i64 %i.v, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.y = load i64, ptr %i.q, align 8, !tbaa !36
  %i.z = call i32 @rb_st_lookup(ptr noundef nonnull %i.x, i64 noundef %i.y, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i = icmp eq i32 %i.z, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ab = inttoptr i64 %i.aa to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.f, %bb.e, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.ab, %bb.f ], [ null, %bb.e ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.ac = getelementptr i8, ptr %i.i, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.ac, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.g:                                             ; preds = %bb.d
  %i.ad = getelementptr i8, ptr %i.i, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.g
  %.0.i9 = phi ptr [ %i.p, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.ad, %bb.g ], [ %i.r, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.ae = getelementptr i8, ptr %.0.i9, i64 125
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = trunc i8 %i.af to i1
  br i1 %i.ag, label %rb_namespace_p.exit.thread, label %bb.h

bb.h:                                             ; preds = %RCLASS_EXT_READABLE.exit
  %i.ah = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ai = getelementptr i8, ptr %2, i64 8
  store i64 %0, ptr %i.ai, align 8, !tbaa !48
  %i.aj = call i64 @rb_exec_recursive_paired(ptr noundef nonnull @set_sub_temporary_name_recursive, i64 noundef %i.d, i64 noundef %i.ah, i64 noundef %i.ah) #26 ; 0 uses
  br label %rb_namespace_p.exit.thread

rb_namespace_p.exit.thread:                       ; preds = %bb.a, %bb.h, %RCLASS_EXT_READABLE.exit, %rb_namespace_p.exit
  ret i32 0
}

declare void @rb_ary_set_len(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @set_sub_temporary_name_recursive(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %.not10 = icmp eq i64 %i.b, 0
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @rb_ary_last(i32 noundef 0, ptr noundef null, i64 noundef %i.b) #26
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48
  %i.f = tail call i64 @rb_id2str(i64 noundef %i.e) #26
  %i.g = tail call i64 @rb_str_dup(i64 noundef %i.c) #26 ; 3 uses
  %i.h = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.43, i64 noundef 2) #26 ; 0 uses
  %i.i = tail call i64 @rb_str_append(i64 noundef %i.g, i64 noundef %i.f) #26 ; 0 uses
  %i.j = tail call i64 @rb_fstring(i64 noundef %i.g) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ]
  tail call fastcc void @set_sub_temporary_name_foreach(i64 noundef %0, ptr noundef nonnull %i.a, i64 noundef %.0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.08 = phi i64 [ 20, %bb.d ], [ 0, %bb.a ]
  ret i64 %.08
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @build_const_path(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_id2str(i64 noundef %1) #26
  %i.b = tail call i64 @rb_str_dup(i64 noundef %0) #26 ; 3 uses
  %i.c = tail call i64 @rb_str_cat(i64 noundef %i.b, ptr noundef nonnull @.str.43, i64 noundef 2) #26 ; 0 uses
  %i.d = tail call i64 @rb_str_append(i64 noundef %i.b, i64 noundef %i.a) #26 ; 0 uses
  %i.e = tail call i64 @rb_fstring(i64 noundef %i.b) #26
  ret i64 %i.e
}

declare i64 @rb_ary_last(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_vm_lock_leave_body(ptr noundef) local_unnamed_addr #1

declare i32 @rb_enc_symname_type(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_fstring(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #6

declare i64 @rb_str_quote_unprintable(i64 noundef) local_unnamed_addr #1

declare ptr @rb_id2name(i64 noundef) local_unnamed_addr #1

declare i64 @rb_id_quote_unprintable(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal void @rb_gvar_undef_compactor(ptr readnone captures(none) %0) #4 {
bb.a:
  ret void
}

declare i64 @rb_gc_location(i64 noundef) local_unnamed_addr #1

declare void @rb_free_tmp_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(1,2)
declare noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @rb_eval_cmd_call_kw(i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @rb_ensure(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @trace_ev(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %.06 = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %.not7 = icmp eq ptr %.06, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.08 = phi ptr [ %.06, %.lr.ph ], [ %.0, %bb.b ] ; 3 uses
  %i.c = getelementptr i8, ptr %.08, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.e = getelementptr i8, ptr %.08, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !79
  %i.g = load i64, ptr %i.b, align 8, !tbaa !91
  tail call void %i.d(i64 noundef %i.f, i64 noundef %i.g) #26
  %i.h = getelementptr i8, ptr %.08, i64 24
  %.0 = load ptr, ptr %i.h, align 8, !tbaa !78    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !231

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @trace_en(i64 noundef %0) #0 {
bb.a:
  %1 = alloca %struct.trace_var, align 8          ; 4 uses
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !77
  %i.c = getelementptr i8, ptr %i.a, i64 48       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !65
  %.not12.i = icmp eq ptr %i.d, null
  br i1 %.not12.i, label %remove_trace.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %i.f = phi ptr [ %i.l, %bb.c ], [ %i.d, %bb.a ] ; 4 uses
  %i.g = phi ptr [ %i.k, %bb.c ], [ %i.e, %bb.a ]
  %.013.i = phi ptr [ %.1.i, %bb.c ], [ %1, %bb.a ]
  %i.h = load i32, ptr %i.f, align 8, !tbaa !83
  %.not11.i = icmp eq i32 %i.h, 0
  br i1 %.not11.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65
  store ptr %i.j, ptr %i.g, align 8, !tbaa !65
  tail call void @ruby_xfree(ptr noundef nonnull %i.f) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.1.i = phi ptr [ %.013.i, %bb.b ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.k = getelementptr i8, ptr %.1.i, i64 24      ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !85

._crit_edge.loopexit.i:                           ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !65
  br label %remove_trace.exit

remove_trace.exit:                                ; preds = %bb.a, %._crit_edge.loopexit.i
  %i.m = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ null, %bb.a ]
  store ptr %i.m, ptr %i.c, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret i64 4
}

declare void @rb_vm_unlock_body() local_unnamed_addr #1

declare void @rb_vm_lock_body() local_unnamed_addr #1

declare zeroext i1 @rb_ractor_main_p_() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #21

declare void @rb_imemo_fields_clear(i64 noundef) local_unnamed_addr #1

declare zeroext i1 @rb_ractor_shareable_p_continue(i64 noundef) local_unnamed_addr #1

declare i32 @rb_shape_transition_complex(i64 noundef) local_unnamed_addr #1

declare i64 @rb_imemo_fields_new_complex_tbl(i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @rb_shape_transition_remove_ivar(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @rb_evict_fields_to_hash(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = lshr i64 %i.b, 32
  %i.d = and i64 %i.c, 524287
  %i.e = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.f = getelementptr [40 x i8], ptr %i.e, i64 %i.d
  %i.g = getelementptr i8, ptr %i.f, i64 28
  %i.h = load i16, ptr %i.g, align 4, !tbaa !120
  %i.i = zext i16 %i.h to i64
  %i.j = tail call ptr @rb_st_init_numtable_with_size(i64 noundef %i.i) #26 ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  tail call fastcc void @rb_field_foreach(i64 noundef %0, ptr noundef nonnull @rb_obj_copy_ivs_to_hash_table_i, i64 noundef %i.k, i1 noundef zeroext false)
  %i.l = tail call fastcc i32 @obj_transition_too_complex(i64 noundef %0, ptr noundef %i.j)
  ret i32 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @imemo_fields_complex_from_obj(i64 noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %1 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = lshr i64 %i.b, 32
  %i.d = and i64 %i.c, 524287
  %i.e = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.f = getelementptr [40 x i8], ptr %i.e, i64 %i.d
  %i.g = getelementptr i8, ptr %i.f, i64 28
  %i.h = load i16, ptr %i.g, align 4, !tbaa !120
  %i.i = zext i16 %i.h to i64
  %i.j = add nuw nsw i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %i.j, %bb.b ], [ 1, %bb.a ]
  %i.l = inttoptr i64 %0 to ptr
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20
  %i.n = and i64 %i.m, 256
  %i.o = icmp ne i64 %i.n, 0
  %i.p = tail call i64 @rb_imemo_fields_new_complex(i64 noundef %0, i64 noundef %i.k, i1 noundef zeroext %i.o) #26 ; 3 uses
  tail call fastcc void @rb_field_foreach(i64 noundef %1, ptr noundef nonnull @imemo_fields_complex_from_obj_i, i64 noundef %i.p, i1 noundef zeroext false)
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !20
  %i.s = and i64 %i.r, 4294967295
  %i.t = zext i32 %2 to i64
  %i.u = shl nuw i64 %i.t, 32
  %i.v = or disjoint i64 %i.s, %i.u
  store i64 %i.v, ptr %i.q, align 8, !tbaa !20
  ret i64 %i.p
}

declare i64 @rb_obj_embedded_size(i32 noundef) local_unnamed_addr #1

declare i64 @rb_gc_obj_slot_size(i64 noundef) local_unnamed_addr #1

declare i64 @rb_imemo_fields_new_complex(i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @imemo_fields_complex_from_obj_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %rb_imemo_fields_complex_tbl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %2 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  br label %rb_imemo_fields_complex_tbl.exit

rb_imemo_fields_complex_tbl.exit:                 ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  tail call void @rb_st_add_direct(ptr noundef %.0.i, i64 noundef %0, i64 noundef %1) #26
  %i.d = icmp eq i64 %1, 0
  %i.e = and i64 %1, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rb_obj_written.exit, label %bb.c

bb.c:                                             ; preds = %rb_imemo_fields_complex_tbl.exit
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %1) #26
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %rb_imemo_fields_complex_tbl.exit, %bb.c
  ret i32 0
}

declare void @rb_st_add_direct(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #3

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #1

declare zeroext i1 @rb_shape_find_ivar(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @rb_shape_transition_add_ivar(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

declare void @rb_set_boxed_class_shape_id(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @imemo_fields_copy_capa(i64 noundef %0, i64 noundef %1, i16 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %2 to i64
  %i.b = inttoptr i64 %0 to ptr
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20
  %i.d = and i64 %i.c, 256
  %i.e = icmp ne i64 %i.d, 0
  %i.f = tail call i64 @rb_imemo_fields_new(i64 noundef %0, i64 noundef %i.a, i1 noundef zeroext %i.e) #26 ; 6 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 3 uses
  %i.i = lshr i64 %i.h, 32
  %i.j = and i64 %i.i, 524287
  %i.k = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.l = getelementptr [40 x i8], ptr %i.k, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 28
  %i.n = load i16, ptr %i.m, align 4, !tbaa !120  ; 3 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %rb_imemo_fields_ptr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20
  %i.q = and i64 %i.p, 65536
  %.not5.i = icmp eq i64 %i.q, 0
  %i.r = getelementptr i8, ptr %i.o, i64 16       ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %bb.d, %bb.c, %bb.b
  %.0.i = phi ptr [ %i.s, %bb.d ], [ null, %bb.b ], [ %i.r, %bb.c ] ; 2 uses
  %i.t = and i64 %i.h, 65536
  %.not5.i19 = icmp eq i64 %i.t, 0
  %i.u = getelementptr i8, ptr %i.g, i64 16       ; 2 uses
  br i1 %.not5.i19, label %rbimpl_size_mul_or_raise.exit, label %bb.e, !prof !97

bb.e:                                             ; preds = %rb_imemo_fields_ptr.exit
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  br label %rbimpl_size_mul_or_raise.exit

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.e, %rb_imemo_fields_ptr.exit
  %.0.i20 = phi ptr [ %i.v, %bb.e ], [ %i.u, %rb_imemo_fields_ptr.exit ]
  %.not.i22 = icmp eq i16 %i.n, 0
  br i1 %.not.i22, label %ruby_nonempty_memcpy.exit.thread, label %.lr.ph.preheader

ruby_nonempty_memcpy.exit.thread:                 ; preds = %rbimpl_size_mul_or_raise.exit
  %i.w = and i64 %i.h, -4294967296
  %i.x = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !20
  %i.z = and i64 %i.y, 4294967295
  %i.aa = or disjoint i64 %i.z, %i.w
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !20
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %rbimpl_size_mul_or_raise.exit
  %i.ab = zext i16 %i.n to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0.i, ptr noundef nonnull readonly align 1 %.0.i20, i64 noundef range(i64 1, 0) %i.ac, i1 noundef false) #26
  %.pre = load i64, ptr %i.g, align 8, !tbaa !20
  %i.ad = and i64 %.pre, -4294967296
  %i.ae = inttoptr i64 %i.f to ptr                ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !20
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = or disjoint i64 %i.ag, %i.ad
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !20
  %wide.trip.count = zext i16 %i.n to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %rb_obj_written.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %rb_obj_written.exit ] ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !16 ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = and i64 %i.aj, 7
  %i.am = icmp ne i64 %i.al, 0
  %i.an = or i1 %i.ak, %i.am
  br i1 %i.an, label %rb_obj_written.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  tail call void @rb_gc_writebarrier(i64 noundef %i.f, i64 noundef %i.aj) #26
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %.lr.ph, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !232

.loopexit:                                        ; preds = %rb_obj_written.exit, %ruby_nonempty_memcpy.exit.thread, %bb.a
  ret i64 %i.f
}

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @each_hash_iv(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp ugt i64 %0, 171
  %i.b = and i64 %0, 14
  %i.c = icmp eq i64 %i.b, 14
  %i.d = and i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132
  %i.h = getelementptr i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !131
  %i.j = tail call i32 %i.g(i64 noundef %0, i64 noundef %1, i64 noundef %i.i) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare zeroext i1 @rb_shape_foreach_field(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @iterate_over_shapes_callback(i32 noundef %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !134, !range !34, !noundef !35
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %0, 524287
  %i.e = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr [40 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load i8, ptr %i.h, align 8, !tbaa !233
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = load i64, ptr %1, align 8, !tbaa !127    ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20   ; 3 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 31
  switch i32 %i.o, label %bb.h [
    i32 1, label %bb.d
    i32 26, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = and i64 %i.m, 65536
  %.not.i = icmp eq i64 %i.p, 0
  %i.q = getelementptr i8, ptr %i.l, i64 16       ; 2 uses
  br i1 %.not.i, label %ROBJECT_FIELDS.exit, label %bb.e, !prof !97

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  br label %ROBJECT_FIELDS.exit

bb.f:                                             ; preds = %bb.c
  %.not.i13 = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i13)
  %i.s = and i64 %i.m, 65536
  %.not5.i = icmp eq i64 %i.s, 0
  %i.t = getelementptr i8, ptr %i.l, i64 16       ; 2 uses
  br i1 %.not5.i, label %ROBJECT_FIELDS.exit, label %bb.g, !prof !97

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  br label %ROBJECT_FIELDS.exit

bb.h:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.22) #32
  unreachable

ROBJECT_FIELDS.exit:                              ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.012 = phi ptr [ %i.q, %bb.d ], [ %i.r, %bb.e ], [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  %i.v = and i32 %0, 524287
  %i.w = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.x = zext nneg i32 %i.v to i64
  %i.y = getelementptr [40 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 28
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !120
  %i.ab = add i16 %i.aa, -1
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr [8 x i8], ptr %.012, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.af = getelementptr i8, ptr %1, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !132
  %i.ah = getelementptr i8, ptr %i.y, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !118
  %i.aj = getelementptr i8, ptr %1, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !131
  %i.al = tail call i32 %i.ag(i64 noundef %i.ai, i64 noundef %i.ae, i64 noundef %i.ak) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %ROBJECT_FIELDS.exit
  %.0 = phi i32 [ %i.al, %ROBJECT_FIELDS.exit ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: inlinehint noreturn nounwind sspstrong uwtable
define internal fastcc void @rb_name_err_raise_str(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = tail call i64 @rb_name_err_new(i64 noundef %0, i64 noundef %1, i64 noundef %2) #26
  tail call void @rb_exc_raise(i64 noundef %i.a) #27
  unreachable
}

declare i64 @rb_name_err_new(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @autoload_table_mark(ptr noundef %0) #0 {
bb.a:
  tail call void @rb_mark_tbl_no_pin(ptr noundef %0) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @autoload_table_free(ptr noundef %0) #0 {
bb.a:
  tail call void @rb_st_free_table(ptr noundef %0) #26
  ret void
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
define internal i64 @autoload_table_memsize(ptr noundef readonly %0) #23 {
bb.a:
  %i.a = tail call i64 @rb_st_memsize(ptr noundef %0) #28
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @autoload_table_compact(ptr noundef %0) #0 {
bb.a:
  tail call void @rb_gc_ref_update_table_values_only(ptr noundef %0) #26
  ret void
}

declare void @rb_mark_tbl_no_pin(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_st_memsize(ptr noundef) local_unnamed_addr #6

declare void @rb_gc_ref_update_table_values_only(ptr noundef) local_unnamed_addr #1

declare i64 @rb_data_typed_object_zalloc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @autoload_const_mark_and_move(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  tail call void @rb_gc_mark_and_move(ptr noundef %i.a) #26
  %i.b = getelementptr i8, ptr %0, i64 16
  tail call void @rb_gc_mark_and_move(ptr noundef %i.b) #26
  %i.c = getelementptr i8, ptr %0, i64 48
  tail call void @rb_gc_mark_and_move(ptr noundef %i.c) #26
  %i.d = getelementptr i8, ptr %0, i64 64
  tail call void @rb_gc_mark_and_move(ptr noundef %i.d) #26
  %i.e = getelementptr i8, ptr %0, i64 24
  tail call void @rb_gc_mark_and_move(ptr noundef %i.e) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @autoload_const_free(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !154    ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !155
  store ptr %i.c, ptr %i.b, align 8, !tbaa !154
  tail call void @ruby_xfree(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @autoload_const_memsize(ptr readnone captures(none) %0) #4 {
bb.a:
  ret i64 80
}

declare void @rb_gc_mark_and_move(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @autoload_data_mark_and_move(ptr noundef %0) #0 {
bb.a:
  tail call void @rb_gc_mark_and_move(ptr noundef %0) #26
  %i.a = getelementptr i8, ptr %0, i64 8
  tail call void @rb_gc_mark_and_move(ptr noundef %i.a) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @autoload_data_free(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169  ; 2 uses
  %.not10 = icmp eq ptr %i.b, %i.a
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0911 = phi ptr [ %.0, %.lr.ph ], [ %i.b, %bb.a ] ; 5 uses
  %.0 = load ptr, ptr %.0911, align 8, !tbaa !154 ; 4 uses
  %i.c = getelementptr i8, ptr %.0911, i64 8      ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155  ; 2 uses
  %i.e = getelementptr i8, ptr %.0, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !155
  store ptr %.0, ptr %i.d, align 8, !tbaa !154
  store ptr %.0911, ptr %i.c, align 8, !tbaa !155
  store ptr %.0911, ptr %.0911, align 8, !tbaa !154
  %.not = icmp eq ptr %.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !234

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @ruby_xfree(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @autoload_data_memsize(ptr readnone captures(none) %0) #4 {
bb.a:
  ret i64 40
}

; Function Attrs: cold noreturn
declare void @rb_unexpected_type(i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @autoload_data(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr                   ; 8 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 28
  br i1 %i.j, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.k = and i64 %i.h, 65536
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.g, i64 160      ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.c

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.b
  %i.o = getelementptr i8, ptr %i.g, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.p = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %.split.i, label %bb.d

.split.i:                                         ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.g, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.p, i64 128
  %i.s = load i8, ptr %i.r, align 8, !tbaa !32, !range !34, !noundef !35
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.split7.i, label %bb.g

.split7.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.u = load i64, ptr %i.g, align 8, !tbaa !20
  %i.v = and i64 %i.u, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.x = load i64, ptr %i.p, align 8, !tbaa !36
  %i.y = call i32 @rb_st_lookup(ptr noundef nonnull %i.w, i64 noundef %i.x, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i = icmp eq i32 %i.y, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i64, ptr %i.a, align 8, !tbaa !16
  %i.aa = inttoptr i64 %i.z to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.f, %bb.e, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.aa, %bb.f ], [ null, %bb.e ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.ab = getelementptr i8, ptr %i.g, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.ab, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.g:                                             ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %i.g, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.g
  %.0.i12 = phi ptr [ %i.o, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.ac, %bb.g ], [ %i.q, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.ad = getelementptr i8, ptr %.0.i12, i64 125
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, 8
  %.not = icmp eq i8 %i.af, 0
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %RCLASS_EXT_READABLE.exit
  %i.ag = getelementptr i8, ptr %i.g, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !49
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %bb.h, %rbimpl_RB_TYPE_P_fastpath.exit
  %.08 = phi i64 [ %i.ah, %bb.h ], [ %0, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %0, %bb.a ]
  %i.ai = load i64, ptr @autoload, align 8, !tbaa !16
  %i.aj = call i64 @rb_ivar_lookup(i64 noundef %.08, i64 noundef %i.ai, i64 noundef 0) ; 2 uses
  %i.ak = and i64 %i.aj, -5
  %.not14 = icmp eq i64 %i.ak, 0
  br i1 %.not14, label %bb.k, label %bb.i

bb.i:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.al = call ptr @rb_check_typeddata(i64 noundef %i.aj, ptr noundef nonnull @autoload_table_type) #26 ; 2 uses
  %.not10 = icmp eq ptr %i.al, null
  br i1 %.not10, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = call i32 @rb_st_lookup(ptr noundef nonnull %i.al, i64 noundef %1, ptr noundef nonnull %i.b) #26
  %.not11 = icmp eq i32 %i.am, 0
  %i.an = load i64, ptr %i.b, align 8
  %spec.select = select i1 %.not11, i64 0, i64 %i.an
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread, %RCLASS_EXT_READABLE.exit
  %.1 = phi i64 [ 0, %RCLASS_EXT_READABLE.exit ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %spec.select, %bb.j ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret i64 %.1
}

declare i64 @rb_mutex_owned_p(i64 noundef) local_unnamed_addr #1

declare ptr @rb_sourcefile() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_vm_top_self() local_unnamed_addr #6

declare i64 @rb_gccct_clear_table(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @autoload_apply_constants(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 40       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !203  ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !169  ; 2 uses
  %.not10 = icmp eq ptr %i.f, %i.e
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %i.g = phi ptr [ %i.x, %bb.f ], [ %i.d, %bb.a ]
  %.0811 = phi ptr [ %.012, %bb.f ], [ %i.f, %bb.a ] ; 4 uses
  %.012 = load ptr, ptr %.0811, align 8, !tbaa !154 ; 2 uses
  %i.h = getelementptr i8, ptr %.0811, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !152
  %i.j = icmp eq i64 %i.i, 36
  br i1 %i.j, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr i8, ptr %.0811, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !151  ; 5 uses
  %i.m = icmp ne i64 %i.l, 0
  %i.n = and i64 %i.l, 7
  %i.o = icmp eq i64 %i.n, 0
  %.not3.i.i.i.i = and i1 %i.m, %i.o
  br i1 %.not3.i.i.i.i, label %RB_OBJ_FROZEN.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !124

RB_OBJ_FROZEN.exit.i.i.i:                         ; preds = %bb.b
  %i.p = inttoptr i64 %i.l to ptr
  %i.q = load i64, ptr %i.p, align 8, !tbaa !20   ; 3 uses
  %i.r = and i64 %i.q, 2048
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !125

RB_OBJ_FROZEN.exit.thread.i.i.i:                  ; preds = %RB_OBJ_FROZEN.exit.i.i.i, %bb.b
  call void @rb_error_frozen_object(i64 noundef %i.l) #27
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %RB_OBJ_FROZEN.exit.i.i.i
  %i.s = and i64 %i.q, 31
  %i.t = icmp ne i64 %i.s, 5
  %i.u = and i64 %i.q, 49152
  %.not8.i.i.i = icmp eq i64 %i.u, 0
  %or.cond.i.i.i = or i1 %i.t, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %check_before_mod_set.exit.i, label %bb.c, !prof !126

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  call void @rb_str_modify(i64 noundef %i.l) #26
  br label %check_before_mod_set.exit.i

check_before_mod_set.exit.i:                      ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.v = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i4.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i4.i, label %bb.d, label %rb_vm_lock_enter.exit.i

bb.d:                                             ; preds = %check_before_mod_set.exit.i
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #26
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.d, %check_before_mod_set.exit.i
  call fastcc void @const_tbl_update(ptr noundef nonnull readonly %.0811, i32 noundef 1)
  %i.w = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i5.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i5.i, label %bb.e, label %autoload_const_set.exit

bb.e:                                             ; preds = %rb_vm_lock_enter.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #26
  br label %autoload_const_set.exit

autoload_const_set.exit:                          ; preds = %rb_vm_lock_enter.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !203
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %autoload_const_set.exit
  %i.x = phi ptr [ %i.g, %.lr.ph ], [ %.pre, %autoload_const_set.exit ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %.not = icmp eq ptr %.012, %i.y
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !235

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret i64 20
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @const_tbl_update(ptr noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !151  ; 15 uses
  %i.e = getelementptr i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !152  ; 16 uses
  %i.g = getelementptr i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !156  ; 8 uses
  %i.i = inttoptr i64 %i.d to ptr                 ; 10 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  %i.k = and i64 %i.j, 65536
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.i, i64 160      ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.b

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.a
  %i.o = getelementptr i8, ptr %i.i, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.p = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.i, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.p, i64 128
  %i.s = load i8, ptr %i.r, align 8, !tbaa !32, !range !34, !noundef !35
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.split7.i, label %bb.f

.split7.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.u = load i64, ptr %i.i, align 8, !tbaa !20
  %i.v = and i64 %i.u, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.d

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.x = load i64, ptr %i.p, align 8, !tbaa !36
  %i.y = call i32 @rb_st_lookup(ptr noundef nonnull %i.w, i64 noundef %i.x, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i = icmp eq i32 %i.y, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.a, align 8, !tbaa !16
  %i.aa = inttoptr i64 %i.z to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.e, %bb.d, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.aa, %bb.e ], [ null, %bb.d ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.ab = getelementptr i8, ptr %i.i, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.ab, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.f:                                             ; preds = %bb.c
  %i.ac = getelementptr i8, ptr %i.i, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.f
  %.0.i = phi ptr [ %i.o, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.ac, %bb.f ], [ %i.q, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.ad = getelementptr i8, ptr %.0.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !199
  %i.af = getelementptr i8, ptr %0, i64 56
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !153 ; 2 uses
  %i.ah = call i32 @rb_id_table_lookup(ptr noundef %i.ae, i64 noundef %i.h, ptr noundef nonnull %i.b) #26
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %RCLASS_EXT_READABLE.exit
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !16
  %i.aj = inttoptr i64 %i.ai to ptr               ; 9 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8      ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !165
  %i.am = icmp eq i64 %i.al, 36
  br i1 %i.am, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr i8, ptr %0, i64 64
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !213 ; 4 uses
  %i.ap = getelementptr i8, ptr %0, i64 72
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !236
  %i.ar = call fastcc i64 @autoload_data(i64 noundef %i.d, i64 noundef %i.h) ; 4 uses
  %.not.i51 = icmp eq i64 %i.ar, 0
  br i1 %.not.i51, label %autoload_const_value_for_named_constant.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = call ptr @rb_check_typeddata(i64 noundef %i.ar, ptr noundef nonnull @autoload_const_type) #26 ; 4 uses
  %i.at = getelementptr i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !146
  %i.av = call ptr @rb_check_typeddata(i64 noundef %i.au, ptr noundef nonnull @autoload_data_type) #26 ; 3 uses
  %.not.i.i52 = icmp eq ptr %i.av, null
  br i1 %.not.i.i52, label %autoload_const_value_for_named_constant.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr i8, ptr %i.av, i64 16     ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !170
  %i.ay = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !163
  %i.az = getelementptr i8, ptr %i.ay, i64 496
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !172
  %.not12.i.i = icmp eq i64 %i.ax, %i.ba
  %.phi.trans.insert.i = getelementptr i8, ptr %i.av, i64 8 ; 2 uses
  br i1 %.not12.i.i, label %bb.k, label %.thread.i

.thread.i:                                        ; preds = %bb.j
  store i64 4, ptr %.phi.trans.insert.i, align 8, !tbaa !16
  store i64 0, ptr %i.aw, align 8, !tbaa !170
  br label %autoload_const_value_for_named_constant.exit.thread

bb.k:                                             ; preds = %bb.j
  %.val.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !189 ; 2 uses
  %.not.i12.i = icmp eq i64 %.val.pre.i, 4
  br i1 %.not.i12.i, label %autoload_const_value_for_named_constant.exit.thread, label %autoload_by_current.exit.i

autoload_by_current.exit.i:                       ; preds = %bb.k
  %i.bb = call i64 @rb_mutex_owned_p(i64 noundef %.val.pre.i) #26
  %.fr.i = freeze i64 %i.bb
  %.not15.i = icmp ne i64 %.fr.i, 0
  %i.bc = icmp eq i32 %1, 0
  %or.cond69 = and i1 %i.bc, %.not15.i
  br i1 %or.cond69, label %bb.l, label %autoload_const_value_for_named_constant.exit.thread

bb.l:                                             ; preds = %autoload_by_current.exit.i
  call void @rb_clear_constant_cache_for_id(i64 noundef %i.h) #26
  %i.bd = getelementptr i8, ptr %i.as, i64 48
  store i64 %i.f, ptr %i.bd, align 8, !tbaa !16
  %i.be = icmp eq i64 %i.f, 0
  %i.bf = and i64 %i.f, 7
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = or i1 %i.be, %i.bg
  br i1 %i.bh, label %rb_obj_write.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @rb_gc_writebarrier(i64 noundef %i.ar, i64 noundef %i.f) #26
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.l, %bb.m
  %i.bi = getelementptr i8, ptr %i.as, i64 64
  %i.bj = getelementptr i8, ptr %i.as, i64 72
  %i.bk = call i64 @rb_source_location(ptr noundef %i.bj) #26 ; 4 uses
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !16
  %i.bl = icmp eq i64 %i.bk, 0
  %i.bm = and i64 %i.bk, 7
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = or i1 %i.bl, %i.bn
  br i1 %i.bo, label %rb_obj_write.exit53, label %bb.n

bb.n:                                             ; preds = %rb_obj_write.exit
  call void @rb_gc_writebarrier(i64 noundef %i.ar, i64 noundef %i.bk) #26
  br label %rb_obj_write.exit53

autoload_const_value_for_named_constant.exit.thread: ; preds = %.thread.i, %bb.k, %autoload_by_current.exit.i, %bb.i, %bb.h
  call fastcc void @autoload_delete(i64 noundef %i.d, i64 noundef %i.h)
  store i32 %i.ag, ptr %i.aj, align 8, !tbaa !197
  store i64 %i.f, ptr %i.ak, align 8, !tbaa !16
  %i.bp = icmp eq i64 %i.f, 0
  %i.bq = and i64 %i.f, 7
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = or i1 %i.bp, %i.br
  br i1 %i.bs, label %rb_obj_write.exit54, label %bb.o

bb.o:                                             ; preds = %autoload_const_value_for_named_constant.exit.thread
  call void @rb_gc_writebarrier(i64 noundef %i.d, i64 noundef %i.f) #26
  br label %rb_obj_write.exit54

rb_obj_write.exit54:                              ; preds = %autoload_const_value_for_named_constant.exit.thread, %bb.o
  %i.bt = getelementptr i8, ptr %i.aj, i64 16
  store i64 %i.ao, ptr %i.bt, align 8, !tbaa !16
  %i.bu = icmp eq i64 %i.ao, 0
  %i.bv = and i64 %i.ao, 7
  %i.bw = icmp ne i64 %i.bv, 0
  %i.bx = or i1 %i.bu, %i.bw
  br i1 %i.bx, label %rb_obj_write.exit55, label %bb.p

bb.p:                                             ; preds = %rb_obj_write.exit54
  call void @rb_gc_writebarrier(i64 noundef %i.d, i64 noundef %i.ao) #26
  br label %rb_obj_write.exit55

rb_obj_write.exit55:                              ; preds = %rb_obj_write.exit54, %bb.p
  %i.by = getelementptr i8, ptr %i.aj, i64 4
  store i32 %i.aq, ptr %i.by, align 4, !tbaa !237
  br label %rb_obj_write.exit53

bb.q:                                             ; preds = %bb.g
  %i.bz = call i64 @rb_id_quote_unprintable(i64 noundef %i.h) #26 ; 3 uses
  %i.ca = load i32, ptr %i.aj, align 8, !tbaa !197
  %i.cb = load i64, ptr @rb_cObject, align 8, !tbaa !16
  %i.cc = icmp eq i64 %i.d, %i.cb
  br i1 %i.cc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.64, i64 noundef %i.bz) #35
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cd = call i64 @rb_class_name(i64 noundef %i.d)
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.65, i64 noundef %i.cd, i64 noundef %i.bz) #35
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ce = getelementptr i8, ptr %i.aj, i64 16     ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !238 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4
  br i1 %i.cg, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = getelementptr i8, ptr %i.aj, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !237 ; 2 uses
  %.not50 = icmp eq i32 %i.ci, 0
  br i1 %.not50, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !20
  %i.cl = and i64 %i.ck, 8192
  %.not.i56 = icmp eq i64 %i.cl, 0
  %i.cm = getelementptr i8, ptr %i.cj, i64 24     ; 2 uses
  br i1 %.not.i56, label %RSTRING_PTR.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !42
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.v, %bb.w
  %i.co = phi ptr [ %i.cn, %bb.w ], [ %i.cm, %bb.v ]
  call void (ptr, i32, ptr, ...) @rb_compile_warn(ptr noundef %i.co, i32 noundef %i.ci, ptr noundef nonnull @.str.66, i64 noundef %i.bz) #26
  br label %bb.x

bb.x:                                             ; preds = %RSTRING_PTR.exit, %bb.u, %bb.t
  call void @rb_clear_constant_cache_for_id(i64 noundef %i.h) #26
  store i32 %i.ca, ptr %i.aj, align 8, !tbaa !197
  store i64 %i.f, ptr %i.ak, align 8, !tbaa !16
  %i.cp = icmp eq i64 %i.f, 0
  %i.cq = and i64 %i.f, 7
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = or i1 %i.cp, %i.cr
  br i1 %i.cs, label %rb_obj_write.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @rb_gc_writebarrier(i64 noundef %i.d, i64 noundef %i.f) #26
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.y, %bb.x
  %i.ct = getelementptr i8, ptr %i.aj, i64 4
  %i.cu = call i64 @rb_source_location(ptr noundef %i.ct) #26 ; 4 uses
  store i64 %i.cu, ptr %i.ce, align 8, !tbaa !16
  %i.cv = icmp eq i64 %i.cu, 0
  %i.cw = and i64 %i.cu, 7
  %i.cx = icmp ne i64 %i.cw, 0
  %i.cy = or i1 %i.cv, %i.cx
  br i1 %i.cy, label %rb_obj_write.exit53, label %bb.z

bb.z:                                             ; preds = %rb_obj_write.exit.i
  call void @rb_gc_writebarrier(i64 noundef %i.d, i64 noundef %i.cu) #26
  br label %rb_obj_write.exit53

bb.aa:                                            ; preds = %RCLASS_EXT_READABLE.exit
  %i.cz = icmp ne i64 %i.d, 0
  %i.da = and i64 %i.d, 7
  %i.db = icmp eq i64 %i.da, 0
  %.not5.i.i.i = and i1 %i.cz, %i.db
  br i1 %.not5.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, !prof !124

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i:          ; preds = %bb.aa
  %i.dc = load i64, ptr %i.i, align 8, !tbaa !20
  %i.dd = and i64 %i.dc, 16384
  %.not10.i = icmp eq i64 %i.dd, 0
  br i1 %.not10.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, label %bb.ab, !prof !121

bb.ab:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i
  %i.de = getelementptr i8, ptr %i.i, i64 24
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i, %bb.aa
  %i.df = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i57 = icmp eq ptr %i.df, null
  br i1 %.not.i57, label %.split.i60, label %bb.ac

.split.i60:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.dg = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %i.d, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit

bb.ac:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.dh = getelementptr i8, ptr %i.df, i64 128
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !32, !range !34, !noundef !35
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %.split7.i59, label %bb.ad

.split7.i59:                                      ; preds = %bb.ac
  %i.dk = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %i.d, ptr noundef nonnull %i.df)
  br label %RCLASS_EXT_WRITABLE.exit

bb.ad:                                            ; preds = %bb.ac
  %i.dl = getelementptr i8, ptr %i.i, i64 24
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_EXT_WRITABLE.exit:                         ; preds = %bb.ab, %.split.i60, %.split7.i59, %bb.ad
  %.0.i58 = phi ptr [ %i.de, %bb.ab ], [ %i.dl, %bb.ad ], [ %i.dg, %.split.i60 ], [ %i.dk, %.split7.i59 ]
  %i.dm = getelementptr i8, ptr %.0.i58, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !199
  call void @rb_clear_constant_cache_for_id(i64 noundef %i.h) #26
  %i.do = call noalias nonnull dereferenceable(24) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 24) #31 ; 5 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = call i32 @rb_id_table_insert(ptr noundef %i.dn, i64 noundef %i.h, i64 noundef %i.dp) #26 ; 0 uses
  store i32 %i.ag, ptr %i.do, align 8, !tbaa !197
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i64 %i.f, ptr %i.dr, align 8, !tbaa !16
  %i.ds = icmp eq i64 %i.f, 0
  %i.dt = and i64 %i.f, 7
  %i.du = icmp ne i64 %i.dt, 0
  %i.dv = or i1 %i.ds, %i.du
  br i1 %i.dv, label %rb_obj_write.exit.i61, label %bb.ae

bb.ae:                                            ; preds = %RCLASS_EXT_WRITABLE.exit
  call void @rb_gc_writebarrier(i64 noundef %i.d, i64 noundef %i.f) #26
  br label %rb_obj_write.exit.i61

rb_obj_write.exit.i61:                            ; preds = %bb.ae, %RCLASS_EXT_WRITABLE.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dy = call i64 @rb_source_location(ptr noundef nonnull %i.dx) #26 ; 4 uses
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !16
  %i.dz = icmp eq i64 %i.dy, 0
  %i.ea = and i64 %i.dy, 7
  %i.eb = icmp ne i64 %i.ea, 0
  %i.ec = or i1 %i.dz, %i.eb
  br i1 %i.ec, label %rb_obj_write.exit53, label %bb.af

bb.af:                                            ; preds = %rb_obj_write.exit.i61
  call void @rb_gc_writebarrier(i64 noundef %i.d, i64 noundef %i.dy) #26
  br label %rb_obj_write.exit53

rb_obj_write.exit53:                              ; preds = %bb.af, %rb_obj_write.exit.i61, %bb.z, %rb_obj_write.exit.i, %bb.n, %rb_obj_write.exit, %rb_obj_write.exit55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret void
}

declare i64 @rb_source_location(ptr noundef) local_unnamed_addr #1

declare void @rb_compile_warn(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @rb_feature_provided(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_const_search_from(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4, ptr noundef writeonly captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i64, align 8                      ; 8 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = and i64 %0, -5
  %.not110115 = icmp eq i64 %i.i, 0
  br i1 %.not110115, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not52 = icmp ne i32 %4, 0                     ; 2 uses
  %.not57 = icmp eq i32 %3, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %RCLASS_EXT_READABLE.exit86
  %.042117 = phi i64 [ %0, %.lr.ph ], [ %i.ex, %RCLASS_EXT_READABLE.exit86 ] ; 3 uses
  %.046116 = phi i1 [ true, %.lr.ph ], [ false, %RCLASS_EXT_READABLE.exit86 ]
  %.pre138 = inttoptr i64 %.042117 to ptr         ; 17 uses
  br i1 %.046116, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %.pre138, align 8, !tbaa !20
  %i.k = and i64 %i.j, 65536
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.c
  %i.l = getelementptr i8, ptr %.pre138, i64 160  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.d

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.c
  %i.o = getelementptr i8, ptr %.pre138, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.d:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.p = call ptr @rb_current_box() #26           ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %.split.i, label %bb.e

.split.i:                                         ; preds = %bb.d
  %i.q = getelementptr i8, ptr %.pre138, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.p, i64 128
  %i.s = load i8, ptr %i.r, align 8, !tbaa !32, !range !34, !noundef !35
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.split7.i, label %bb.h

.split7.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %i.u = load i64, ptr %.pre138, align 8, !tbaa !20
  %i.v = and i64 %i.u, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.f

bb.f:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.x = load i64, ptr %i.p, align 8, !tbaa !36
  %i.y = call i32 @rb_st_lookup(ptr noundef nonnull %i.w, i64 noundef %i.x, ptr noundef nonnull %i.h) #26
  %.not5.i.i13.i = icmp eq i32 %i.y, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.h, align 8, !tbaa !16
  %i.aa = inttoptr i64 %i.z to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.g, %bb.f, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.aa, %bb.g ], [ null, %bb.f ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.ab = getelementptr i8, ptr %.pre138, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.ab, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.h:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %.pre138, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.h
  %.0.i = phi ptr [ %i.o, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.ac, %bb.h ], [ %i.q, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.ad = getelementptr i8, ptr %.0.i, i64 96
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !239
  %.not = icmp eq i64 %i.ae, %.042117
  br i1 %.not, label %._crit_edge, label %bb.av

._crit_edge:                                      ; preds = %bb.b, %RCLASS_EXT_READABLE.exit
  %i.af = load i64, ptr %.pre138, align 8, !tbaa !20 ; 2 uses
  %i.ag = and i64 %i.af, 31
  %i.ah = icmp eq i64 %i.ag, 28
  br i1 %i.ah, label %bb.i, label %.peel.begin

bb.i:                                             ; preds = %._crit_edge
  %i.ai = getelementptr i8, ptr %.pre138, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !49 ; 2 uses
  %.phi.trans.insert = inttoptr i64 %i.aj to ptr  ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.i, %._crit_edge
  %.pre-phi = phi ptr [ %.phi.trans.insert, %bb.i ], [ %.pre138, %._crit_edge ] ; 5 uses
  %i.ak = phi i64 [ %.pre, %bb.i ], [ %i.af, %._crit_edge ]
  %.045 = phi i64 [ %i.aj, %bb.i ], [ %.042117, %._crit_edge ] ; 11 uses
  %i.al = icmp eq i64 %.045, 0
  %i.am = getelementptr i8, ptr %.pre-phi, i64 160 ; 4 uses
  %i.an = getelementptr i8, ptr %.pre-phi, i64 24 ; 10 uses
  %i.ao = and i64 %i.ak, 65536
  %.not.i.i.i59.peel = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i59.peel, label %RCLASS_EXT_READABLE.exit.i.peel, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i.peel

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i.peel:   ; preds = %.peel.begin
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !22
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %RCLASS_EXT_READABLE.exit.i.peel, label %bb.j

bb.j:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i.peel
  %i.ar = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i.i60.peel = icmp eq ptr %i.ar, null
  br i1 %.not.i.i60.peel, label %RCLASS_EXT_READABLE.exit.i.peel, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr i8, ptr %i.ar, i64 128
  %i.at = load i8, ptr %i.as, align 8, !tbaa !32, !range !34, !noundef !35
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %.split7.i.i.peel, label %RCLASS_EXT_READABLE.exit.i.peel

.split7.i.i.peel:                                 ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.av = load i64, ptr %.pre-phi, align 8, !tbaa !20
  %i.aw = and i64 %i.av, 65536
  %.not.i.i.i10.i.i.peel = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i10.i.i.peel, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i.peel

RCLASS_CLASSEXT_TBL.exit.i.i11.i.i.peel:          ; preds = %.split7.i.i.peel
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !22 ; 2 uses
  %.not.i.i12.i.i.peel = icmp eq ptr %i.ax, null
  br i1 %.not.i.i12.i.i.peel, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel, label %bb.l

bb.l:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i.peel
  %i.ay = load i64, ptr %i.ar, align 8, !tbaa !36
  %i.az = call i32 @rb_st_lookup(ptr noundef nonnull %i.ax, i64 noundef %i.ay, ptr noundef nonnull %i.g) #26
  %.not5.i.i13.i.i.peel = icmp eq i32 %i.az, 0
  br i1 %.not5.i.i13.i.i.peel, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load i64, ptr %i.g, align 8, !tbaa !16
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel

RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel:       ; preds = %bb.m, %bb.l, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i.peel, %.split7.i.i.peel
  %.0.i.i14.i.i.peel = phi ptr [ %i.bb, %bb.m ], [ null, %bb.l ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i.peel ], [ null, %.split7.i.i.peel ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %.not.i15.i.i.peel = icmp eq ptr %.0.i.i14.i.i.peel, null
  %.0.i16.i.i.peel = select i1 %.not.i15.i.i.peel, ptr %i.an, ptr %.0.i.i14.i.i.peel
  br label %RCLASS_EXT_READABLE.exit.i.peel

RCLASS_EXT_READABLE.exit.i.peel:                  ; preds = %bb.j, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel, %bb.k, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i.peel, %.peel.begin
  %.0.i.i.peel = phi ptr [ %.0.i16.i.i.peel, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel ], [ %i.an, %bb.k ], [ %i.an, %.peel.begin ], [ %i.an, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i.peel ], [ %i.an, %bb.j ]
  %i.bc = getelementptr i8, ptr %.0.i.i.peel, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !199 ; 2 uses
  %.not.i2.i.peel = icmp eq ptr %i.bd, null
  br i1 %.not.i2.i.peel, label %rb_const_lookup.exit.thread, label %bb.n

bb.n:                                             ; preds = %RCLASS_EXT_READABLE.exit.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.be = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i.i3.i.peel = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i3.i.peel, label %bb.o, label %rb_vm_lock_enter.exit.i.i.peel

bb.o:                                             ; preds = %bb.n
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.f) #26
  br label %rb_vm_lock_enter.exit.i.i.peel

rb_vm_lock_enter.exit.i.i.peel:                   ; preds = %bb.o, %bb.n
  %i.bf = call i32 @rb_id_table_lookup(ptr noundef nonnull %i.bd, i64 noundef %1, ptr noundef nonnull %i.e) #26
  %i.bg = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i11.i.i.peel = icmp eq ptr %i.bg, null
  br i1 %.not.i.i11.i.i.peel, label %bb.p, label %rb_vm_lock_leave.exit.i.i.peel

bb.p:                                             ; preds = %rb_vm_lock_enter.exit.i.i.peel
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.f) #26
  br label %rb_vm_lock_leave.exit.i.i.peel

rb_vm_lock_leave.exit.i.i.peel:                   ; preds = %bb.p, %rb_vm_lock_enter.exit.i.i.peel
  %.not12.i.i.peel = icmp eq i32 %i.bf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.bh = load i64, ptr %i.e, align 8             ; 2 uses
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
end_hunk_10
begin_hunk_11_@rb_assoc_new
declare i64 @rb_assoc_new(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.d = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = and i64 %i.e, 65536
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread, label %RCLASS_CLASSEXT_TBL.exit.i

RCLASS_CLASSEXT_TBL.exit.i:                       ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread, label %bb.b

bb.b:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i
  %i.i = load i64, ptr %1, align 8, !tbaa !36
  %i.j = call i32 @rb_st_lookup(ptr noundef nonnull %i.h, i64 noundef %i.i, ptr noundef nonnull %i.b) #26
  %.not5.i = icmp eq i32 %i.j, 0
  br i1 %.not5.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread:     ; preds = %bb.b, %RCLASS_CLASSEXT_TBL.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.c

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit:            ; preds = %bb.b
  %i.k = load i64, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.m = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i25 = icmp eq ptr %i.m, null
  br i1 %.not.i.i25, label %bb.d, label %rb_vm_lock_enter.exit

bb.d:                                             ; preds = %bb.c
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.c) #26
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.c, %bb.d
  %i.n = getelementptr i8, ptr %i.d, i64 160      ; 6 uses
  %i.o = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  %i.p = icmp ne i64 %0, 0
  %i.q = and i64 %0, 7
  %i.r = icmp eq i64 %i.q, 0
  %.not4.i.i = and i1 %i.p, %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.s = load i64, ptr %i.d, align 8, !tbaa !20
  %i.t = and i64 %i.s, 65536
  %.not.i.i26.us = icmp eq i64 %i.t, 0            ; 2 uses
  br i1 %.not4.i.i, label %rb_vm_lock_enter.exit.split.us, label %rb_vm_lock_enter.exit.split

rb_vm_lock_enter.exit.split.us:                   ; preds = %rb_vm_lock_enter.exit
  br i1 %.not.i.i26.us, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread.us, label %RCLASS_CLASSEXT_TBL.exit.i27.us

RCLASS_CLASSEXT_TBL.exit.i27.us:                  ; preds = %rb_vm_lock_enter.exit.split.us
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !22   ; 2 uses
  %.not.i28.us = icmp eq ptr %i.u, null
  br i1 %.not.i28.us, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread.us, label %bb.e

bb.e:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i27.us
  %i.v = load i64, ptr %1, align 8, !tbaa !36
  %i.w = call i32 @rb_st_lookup(ptr noundef nonnull %i.u, i64 noundef %i.v, ptr noundef nonnull %i.a) #26
  %.not5.i29.us = icmp eq i32 %i.w, 0
  br i1 %.not5.i29.us, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread.us, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.us

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.us:       ; preds = %bb.e
  %i.x = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not23.us = icmp eq i64 %i.x, 0
  br i1 %.not23.us, label %bb.f, label %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit.us

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread.us: ; preds = %bb.e, %RCLASS_CLASSEXT_TBL.exit.i27.us, %rb_vm_lock_enter.exit.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.f

bb.f:                                             ; preds = %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread.us, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.us
  %i.z = call ptr @rb_class_duplicate_classext(ptr noundef %i.o, i64 noundef %0, ptr noundef %1) #26 ; 3 uses
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !20
  %i.ab = and i64 %i.aa, 65536
  %.not.i.i32.us = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i32.us, label %RCLASS_CLASSEXT_TBL.exit.thread.i.us, label %RCLASS_CLASSEXT_TBL.exit.i33.us

RCLASS_CLASSEXT_TBL.exit.i33.us:                  ; preds = %bb.f
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !22  ; 2 uses
  %.not.i34.us = icmp eq ptr %i.ac, null
  br i1 %.not.i34.us, label %RCLASS_CLASSEXT_TBL.exit.thread.i.us, label %RCLASS_SET_BOX_CLASSEXT.exit.us

RCLASS_CLASSEXT_TBL.exit.thread.i.us:             ; preds = %RCLASS_CLASSEXT_TBL.exit.i33.us, %bb.f
  %i.ad = call ptr @rb_st_init_numtable_with_size(i64 noundef 1) #26 ; 2 uses
  store ptr %i.ad, ptr %i.n, align 8, !tbaa !22
  br label %RCLASS_SET_BOX_CLASSEXT.exit.us

RCLASS_SET_BOX_CLASSEXT.exit.us:                  ; preds = %RCLASS_CLASSEXT_TBL.exit.thread.i.us, %RCLASS_CLASSEXT_TBL.exit.i33.us
  %.0.i35.us = phi ptr [ %i.ac, %RCLASS_CLASSEXT_TBL.exit.i33.us ], [ %i.ad, %RCLASS_CLASSEXT_TBL.exit.thread.i.us ]
  %i.ae = call i64 @rb_st_table_size(ptr noundef %.0.i35.us) #26
  %.not41.us = icmp eq i64 %i.ae, 0
  call void @rb_class_set_box_classext(i64 noundef %0, ptr noundef %1, ptr noundef %i.z) #26
  br i1 %.not41.us, label %bb.g, label %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit.us

bb.g:                                             ; preds = %RCLASS_SET_BOX_CLASSEXT.exit.us
  %i.af = load i64, ptr %i.d, align 8, !tbaa !20
  %i.ag = and i64 %i.af, -16385
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !20
  br label %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit.us

RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit.us:       ; preds = %bb.g, %RCLASS_SET_BOX_CLASSEXT.exit.us, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.us
  %.1.us = phi ptr [ %i.y, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.us ], [ %i.z, %RCLASS_SET_BOX_CLASSEXT.exit.us ], [ %i.z, %bb.g ] ; 2 uses
  %i.ah = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i36.us = icmp eq ptr %i.ah, null
  br i1 %.not.i.i36.us, label %rb_vm_lock_leave.exit.sink.split, label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit.sink.split:                 ; preds = %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit.us, %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit
  %.us-phi.ph = phi ptr [ %.1, %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit ], [ %.1.us, %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit.us ]
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.c) #26
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %rb_vm_lock_leave.exit.sink.split, %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit.us, %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit
  %.us-phi = phi ptr [ %.1.us, %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit.us ], [ %.1, %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit ], [ %.us-phi.ph, %rb_vm_lock_leave.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.j

rb_vm_lock_enter.exit.split:                      ; preds = %rb_vm_lock_enter.exit
  br i1 %.not.i.i26.us, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread, label %RCLASS_CLASSEXT_TBL.exit.i27

RCLASS_CLASSEXT_TBL.exit.i27:                     ; preds = %rb_vm_lock_enter.exit.split
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !22  ; 2 uses
  %.not.i28 = icmp eq ptr %i.ai, null
  br i1 %.not.i28, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread, label %bb.h

bb.h:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i27
  %i.aj = load i64, ptr %1, align 8, !tbaa !36
  %i.ak = call i32 @rb_st_lookup(ptr noundef nonnull %i.ai, i64 noundef %i.aj, ptr noundef nonnull %i.a) #26
  %.not5.i29 = icmp eq i32 %i.ak, 0
  br i1 %.not5.i29, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread:   ; preds = %bb.h, %RCLASS_CLASSEXT_TBL.exit.i27, %rb_vm_lock_enter.exit.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.i

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31:          ; preds = %bb.h
  %i.al = load i64, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.am = inttoptr i64 %i.al to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not23 = icmp eq i64 %i.al, 0
  br i1 %.not23, label %bb.i, label %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit

bb.i:                                             ; preds = %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31
  %i.an = call ptr @rb_class_duplicate_classext(ptr noundef %i.o, i64 noundef %0, ptr noundef %1) #26 ; 2 uses
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !20
  %i.ap = and i64 %i.ao, 65536
  %.not.i.i32 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i32, label %RCLASS_CLASSEXT_TBL.exit.thread.i, label %RCLASS_CLASSEXT_TBL.exit.i33

RCLASS_CLASSEXT_TBL.exit.i33:                     ; preds = %bb.i
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !22  ; 2 uses
  %.not.i34 = icmp eq ptr %i.aq, null
  br i1 %.not.i34, label %RCLASS_CLASSEXT_TBL.exit.thread.i, label %RCLASS_SET_BOX_CLASSEXT.exit

RCLASS_CLASSEXT_TBL.exit.thread.i:                ; preds = %RCLASS_CLASSEXT_TBL.exit.i33, %bb.i
  %i.ar = call ptr @rb_st_init_numtable_with_size(i64 noundef 1) #26 ; 2 uses
  store ptr %i.ar, ptr %i.n, align 8, !tbaa !22
  br label %RCLASS_SET_BOX_CLASSEXT.exit

RCLASS_SET_BOX_CLASSEXT.exit:                     ; preds = %RCLASS_CLASSEXT_TBL.exit.i33, %RCLASS_CLASSEXT_TBL.exit.thread.i
  %.0.i35 = phi ptr [ %i.aq, %RCLASS_CLASSEXT_TBL.exit.i33 ], [ %i.ar, %RCLASS_CLASSEXT_TBL.exit.thread.i ]
  %i.as = call i64 @rb_st_table_size(ptr noundef %.0.i35) #26 ; 0 uses
  call void @rb_class_set_box_classext(i64 noundef %0, ptr noundef %1, ptr noundef %i.an) #26
  br label %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit

RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit:          ; preds = %RCLASS_SET_BOX_CLASSEXT.exit, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31
  %.1 = phi ptr [ %i.am, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31 ], [ %i.an, %RCLASS_SET_BOX_CLASSEXT.exit ] ; 2 uses
  %i.at = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i36 = icmp eq ptr %i.at, null
  br i1 %.not.i.i36, label %rb_vm_lock_leave.exit.sink.split, label %rb_vm_lock_leave.exit

bb.j:                                             ; preds = %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit, %rb_vm_lock_leave.exit
  %.018 = phi ptr [ %.us-phi, %rb_vm_lock_leave.exit ], [ %i.l, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit ]
  ret ptr %.018
}

declare ptr @rb_class_duplicate_classext(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_class_set_box_classext(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_hash_delete(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @rb_st_update(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal range(i32 0, 2) i32 @cv_i_update(ptr readnone captures(none) %0, ptr noundef writeonly captures(none) %1, i64 noundef %2, i32 noundef %3) #8 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %2, ptr %1, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare i64 @rb_id_table_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @rb_local_constants_i(i64 noundef %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @rb_is_const_id(i64 noundef %0) #33
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr
  %i.c = load i32, ptr %i.b, align 8, !tbaa !197
  %i.d = and i32 %i.c, 255
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %2 to i64
  %i.g = tail call i64 @rb_id2sym(i64 noundef %0) #26
  %i.h = tail call i64 @rb_ary_push(i64 noundef %i.f, i64 noundef %i.g) #26 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @set_namespace_path(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !16
  %i.d = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = and i64 %i.e, 65536
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 160      ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.b

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.a
  %i.j = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.k = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.k, i64 128
  %i.n = load i8, ptr %i.m, align 8, !tbaa !32, !range !34, !noundef !35
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %.split7.i, label %bb.f

.split7.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.p = load i64, ptr %i.d, align 8, !tbaa !20
  %i.q = and i64 %i.p, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.d

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.s = load i64, ptr %i.k, align 8, !tbaa !36
  %i.t = call i32 @rb_st_lookup(ptr noundef nonnull %i.r, i64 noundef %i.s, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i = icmp eq i32 %i.t, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.a, align 8, !tbaa !16
  %i.v = inttoptr i64 %i.u to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.e, %bb.d, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.v, %bb.e ], [ null, %bb.d ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.w = getelementptr i8, ptr %i.d, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.w, ptr %.0.i.i14.i
  %.pre = load i64, ptr %i.b, align 8, !tbaa !16
  br label %RCLASS_EXT_READABLE.exit

bb.f:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.f
  %i.y = phi i64 [ %1, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %1, %bb.f ], [ %1, %.split.i ], [ %.pre, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %.0.i = phi ptr [ %i.j, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.x, %bb.f ], [ %i.l, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.z = getelementptr i8, ptr %.0.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !199
  %.fr = freeze ptr %i.aa                         ; 3 uses
  %i.ab = call i64 @rb_obj_set_shareable(i64 noundef %i.y) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.ac = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i6 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i6, label %bb.g, label %rb_vm_lock_enter.exit

bb.g:                                             ; preds = %RCLASS_EXT_READABLE.exit
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.c) #26
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %RCLASS_EXT_READABLE.exit, %bb.g
  %i.ad = icmp ne i64 %0, 0
  %i.ae = and i64 %0, 7
  %i.af = icmp eq i64 %i.ae, 0
  %.not5.i.i.i.i = and i1 %i.ad, %i.af
  %i.ag = getelementptr i8, ptr %i.d, i64 24      ; 6 uses
  %.not5 = icmp eq ptr %.fr, null                 ; 2 uses
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !16  ; 16 uses
  br i1 %.not5.i.i.i.i, label %rb_vm_lock_enter.exit.split.us, label %rb_vm_lock_enter.exit.split, !prof !124

rb_vm_lock_enter.exit.split.us:                   ; preds = %rb_vm_lock_enter.exit
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !20
  %i.aj = and i64 %i.ai, 16384
  %.not10.i.i.us.us = icmp eq i64 %i.aj, 0        ; 2 uses
  br i1 %.not5, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us.us, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us.us:  ; preds = %rb_vm_lock_enter.exit.split.us
  br i1 %.not10.i.i.us.us, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us.us, label %RCLASS_EXT_WRITABLE.exit.i.us.us, !prof !121

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us.us: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us.us
  %i.ak = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i.i7.us.us = icmp eq ptr %i.ak, null
  br i1 %.not.i.i7.us.us, label %RCLASS_EXT_WRITABLE.exit.i.us.us.sink.split, label %bb.h

bb.h:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us.us
  %i.al = getelementptr i8, ptr %i.ak, i64 128
  %i.am = load i8, ptr %i.al, align 8, !tbaa !32, !range !34, !noundef !35
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %RCLASS_EXT_WRITABLE.exit.i.us.us.sink.split, label %RCLASS_EXT_WRITABLE.exit.i.us.us

RCLASS_EXT_WRITABLE.exit.i.us.us.sink.split:      ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us.us, %bb.h
  %.sink = phi ptr [ %i.ak, %bb.h ], [ null, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us.us ]
  %i.ao = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %.sink)
  br label %RCLASS_EXT_WRITABLE.exit.i.us.us

RCLASS_EXT_WRITABLE.exit.i.us.us:                 ; preds = %RCLASS_EXT_WRITABLE.exit.i.us.us.sink.split, %bb.h, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us.us
  %.0.i.i.us.us = phi ptr [ %i.ag, %bb.h ], [ %i.ag, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us.us ], [ %i.ao, %RCLASS_EXT_WRITABLE.exit.i.us.us.sink.split ] ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.i.i.us.us, i64 128
  store i64 %i.ah, ptr %i.ap, align 8, !tbaa !16
  %i.aq = icmp eq i64 %i.ah, 0
  %i.ar = and i64 %i.ah, 7
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = or i1 %i.aq, %i.as
  br i1 %i.at, label %RCLASS_WRITE_CLASSPATH.exit.us.us, label %bb.i

bb.i:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i.us.us
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.ah) #26
  br label %RCLASS_WRITE_CLASSPATH.exit.us.us

RCLASS_WRITE_CLASSPATH.exit.us.us:                ; preds = %bb.i, %RCLASS_EXT_WRITABLE.exit.i.us.us
  %i.au = getelementptr i8, ptr %.0.i.i.us.us, i64 125 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = or i8 %i.av, 1
  store i8 %i.aw, ptr %i.au, align 1
  %i.ax = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i8.us.us = icmp eq ptr %i.ax, null
  br i1 %.not.i.i8.us.us, label %.split.us.sink.split, label %.split.us

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us:     ; preds = %rb_vm_lock_enter.exit.split.us
  br i1 %.not10.i.i.us.us, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us, label %RCLASS_EXT_WRITABLE.exit.i.us, !prof !121

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us
  %i.ay = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i.i7.us = icmp eq ptr %i.ay, null
  br i1 %.not.i.i7.us, label %RCLASS_EXT_WRITABLE.exit.i.us.sink.split, label %bb.j

bb.j:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us
  %i.az = getelementptr i8, ptr %i.ay, i64 128
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !32, !range !34, !noundef !35
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %RCLASS_EXT_WRITABLE.exit.i.us.sink.split, label %RCLASS_EXT_WRITABLE.exit.i.us

RCLASS_EXT_WRITABLE.exit.i.us.sink.split:         ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us, %bb.j
  %.sink29 = phi ptr [ %i.ay, %bb.j ], [ null, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us ]
  %i.bc = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %.sink29)
  br label %RCLASS_EXT_WRITABLE.exit.i.us

RCLASS_EXT_WRITABLE.exit.i.us:                    ; preds = %RCLASS_EXT_WRITABLE.exit.i.us.sink.split, %bb.j, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us
  %.0.i.i.us = phi ptr [ %i.ag, %bb.j ], [ %i.ag, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us ], [ %i.bc, %RCLASS_EXT_WRITABLE.exit.i.us.sink.split ] ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.i.i.us, i64 128
  store i64 %i.ah, ptr %i.bd, align 8, !tbaa !16
  %i.be = icmp eq i64 %i.ah, 0
  %i.bf = and i64 %i.ah, 7
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = or i1 %i.be, %i.bg
  br i1 %i.bh, label %RCLASS_WRITE_CLASSPATH.exit.us, label %bb.k

bb.k:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i.us
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.ah) #26
  br label %RCLASS_WRITE_CLASSPATH.exit.us

RCLASS_WRITE_CLASSPATH.exit.us:                   ; preds = %bb.k, %RCLASS_EXT_WRITABLE.exit.i.us
  %i.bi = getelementptr i8, ptr %.0.i.i.us, i64 125 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = or i8 %i.bj, 1
  store i8 %i.bk, ptr %i.bi, align 1
  call void @rb_id_table_foreach(ptr noundef nonnull %.fr, ptr noundef nonnull @set_namespace_path_i, ptr noundef nonnull %i.b) #26
  %i.bl = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i8.us = icmp eq ptr %i.bl, null
  br i1 %.not.i.i8.us, label %.split.us.sink.split, label %.split.us

rb_vm_lock_enter.exit.split:                      ; preds = %rb_vm_lock_enter.exit
  %i.bm = call ptr @rb_current_box() #26          ; 5 uses
  %.not.i.i7.us10 = icmp eq ptr %i.bm, null       ; 2 uses
  br i1 %.not5, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us9, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us9: ; preds = %rb_vm_lock_enter.exit.split
  br i1 %.not.i.i7.us10, label %RCLASS_EXT_WRITABLE.exit.i.us13.sink.split, label %bb.l

bb.l:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us9
  %i.bn = getelementptr i8, ptr %i.bm, i64 128
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !32, !range !34, !noundef !35
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %RCLASS_EXT_WRITABLE.exit.i.us13.sink.split, label %RCLASS_EXT_WRITABLE.exit.i.us13

RCLASS_EXT_WRITABLE.exit.i.us13.sink.split:       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us9, %bb.l
  %.sink30 = phi ptr [ %i.bm, %bb.l ], [ null, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us9 ]
  %i.bq = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %.sink30)
  br label %RCLASS_EXT_WRITABLE.exit.i.us13

RCLASS_EXT_WRITABLE.exit.i.us13:                  ; preds = %RCLASS_EXT_WRITABLE.exit.i.us13.sink.split, %bb.l
  %.0.i.i.us14 = phi ptr [ %i.ag, %bb.l ], [ %i.bq, %RCLASS_EXT_WRITABLE.exit.i.us13.sink.split ] ; 2 uses
  %i.br = getelementptr i8, ptr %.0.i.i.us14, i64 128
  store i64 %i.ah, ptr %i.br, align 8, !tbaa !16
  %i.bs = icmp eq i64 %i.ah, 0
  %i.bt = and i64 %i.ah, 7
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = or i1 %i.bs, %i.bu
  br i1 %i.bv, label %RCLASS_WRITE_CLASSPATH.exit.us15, label %bb.m

bb.m:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i.us13
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.ah) #26
  br label %RCLASS_WRITE_CLASSPATH.exit.us15

RCLASS_WRITE_CLASSPATH.exit.us15:                 ; preds = %bb.m, %RCLASS_EXT_WRITABLE.exit.i.us13
  %i.bw = getelementptr i8, ptr %.0.i.i.us14, i64 125 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = or i8 %i.bx, 1
  store i8 %i.by, ptr %i.bw, align 1
  %i.bz = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i8.us16 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i8.us16, label %.split.us.sink.split, label %.split.us

.split.us.sink.split:                             ; preds = %RCLASS_WRITE_CLASSPATH.exit.us15, %RCLASS_WRITE_CLASSPATH.exit.us, %RCLASS_WRITE_CLASSPATH.exit.us.us, %RCLASS_WRITE_CLASSPATH.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.c) #26
  br label %.split.us

.split.us:                                        ; preds = %.split.us.sink.split, %RCLASS_WRITE_CLASSPATH.exit, %RCLASS_WRITE_CLASSPATH.exit.us15, %RCLASS_WRITE_CLASSPATH.exit.us.us, %RCLASS_WRITE_CLASSPATH.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  ret void

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %rb_vm_lock_enter.exit.split
  br i1 %.not.i.i7.us10, label %RCLASS_EXT_WRITABLE.exit.i.sink.split, label %bb.n

bb.n:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.ca = getelementptr i8, ptr %i.bm, i64 128
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !32, !range !34, !noundef !35
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %RCLASS_EXT_WRITABLE.exit.i.sink.split, label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_EXT_WRITABLE.exit.i.sink.split:            ; preds = %bb.n, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %.sink31 = phi ptr [ null, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i ], [ %i.bm, %bb.n ]
  %i.cd = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %.sink31)
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_EXT_WRITABLE.exit.i:                       ; preds = %RCLASS_EXT_WRITABLE.exit.i.sink.split, %bb.n
  %.0.i.i = phi ptr [ %i.ag, %bb.n ], [ %i.cd, %RCLASS_EXT_WRITABLE.exit.i.sink.split ] ; 2 uses
  %i.ce = getelementptr i8, ptr %.0.i.i, i64 128
  store i64 %i.ah, ptr %i.ce, align 8, !tbaa !16
  %i.cf = icmp eq i64 %i.ah, 0
  %i.cg = and i64 %i.ah, 7
  %i.ch = icmp ne i64 %i.cg, 0
  %i.ci = or i1 %i.cf, %i.ch
  br i1 %i.ci, label %RCLASS_WRITE_CLASSPATH.exit, label %bb.o

bb.o:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.ah) #26
  br label %RCLASS_WRITE_CLASSPATH.exit

RCLASS_WRITE_CLASSPATH.exit:                      ; preds = %RCLASS_EXT_WRITABLE.exit.i, %bb.o
  %i.cj = getelementptr i8, ptr %.0.i.i, i64 125  ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = or i8 %i.ck, 1
  store i8 %i.cl, ptr %i.cj, align 1
  call void @rb_id_table_foreach(ptr noundef nonnull %.fr, ptr noundef nonnull @set_namespace_path_i, ptr noundef nonnull %i.b) #26
  %i.cm = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i8 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i8, label %.split.us.sink.split, label %.split.us
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @set_namespace_path_i(i64 noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = inttoptr i64 %1 to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !165  ; 7 uses
  %i.f = load i64, ptr %2, align 8, !tbaa !16
  %i.g = tail call i32 @rb_is_const_id(i64 noundef %0) #33
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %rb_namespace_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.e, 0
  %i.i = and i64 %i.e, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %rb_namespace_p.exit.thread, label %rb_namespace_p.exit

rb_namespace_p.exit:                              ; preds = %bb.b
  %i.l = inttoptr i64 %i.e to ptr                 ; 11 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20
  %i.n = and i64 %i.m, 30
  %switch.i = icmp eq i64 %i.n, 2
  br i1 %switch.i, label %bb.c, label %rb_namespace_p.exit.thread

bb.c:                                             ; preds = %rb_namespace_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.o = call fastcc i64 @classname(i64 noundef %i.e, ptr noundef nonnull %i.b) ; 0 uses
  %i.p = load i8, ptr %i.b, align 1, !tbaa !18, !range !34, !noundef !35
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i64 @rb_id2str(i64 noundef %0) #26
  %i.s = tail call i64 @rb_str_dup(i64 noundef %i.f) #26 ; 3 uses
  %i.t = tail call i64 @rb_str_cat(i64 noundef %i.s, ptr noundef nonnull @.str.43, i64 noundef 2) #26 ; 0 uses
  %i.u = tail call i64 @rb_str_append(i64 noundef %i.s, i64 noundef %i.r) #26 ; 0 uses
  %i.v = tail call i64 @rb_fstring(i64 noundef %i.s) #26
  tail call fastcc void @set_namespace_path(i64 noundef %i.e, i64 noundef %i.v)
  %i.w = load i64, ptr %i.l, align 8, !tbaa !20
  %i.x = and i64 %i.w, 65536
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.d
  %i.y = getelementptr i8, ptr %i.l, i64 160      ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.e

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.d
  %i.ab = getelementptr i8, ptr %i.l, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.e:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.ac = tail call ptr @rb_current_box() #26     ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %.split.i, label %bb.f

.split.i:                                         ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %i.l, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.ac, i64 128
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !32, !range !34, !noundef !35
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %.split7.i, label %bb.i

.split7.i:                                        ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ah = load i64, ptr %i.l, align 8, !tbaa !20
  %i.ai = and i64 %i.ah, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !22  ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.g

bb.g:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.ak = load i64, ptr %i.ac, align 8, !tbaa !36
  %i.al = call i32 @rb_st_lookup(ptr noundef nonnull %i.aj, i64 noundef %i.ak, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i = icmp eq i32 %i.al, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i64, ptr %i.a, align 8, !tbaa !16
  %i.an = inttoptr i64 %i.am to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.h, %bb.g, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.an, %bb.h ], [ null, %bb.g ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.ao = getelementptr i8, ptr %i.l, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.ao, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.i:                                             ; preds = %bb.f
  %i.ap = getelementptr i8, ptr %i.l, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.i
  %.0.i11 = phi ptr [ %i.ab, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.ap, %bb.i ], [ %i.ad, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.aq = getelementptr i8, ptr %.0.i11, i64 125
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = trunc i8 %i.ar to i1
  br i1 %i.as, label %bb.m, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %RCLASS_EXT_READABLE.exit
  %i.at = load i64, ptr %i.l, align 8, !tbaa !20
  %i.au = and i64 %i.at, 16384
  %.not10.i.i = icmp eq i64 %i.au, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.j, !prof !121

bb.j:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.av = getelementptr i8, ptr %i.l, i64 24
  br label %RCLASS_WRITE_CLASSPATH.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.aw = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i12, label %.split.i.i, label %bb.k

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.ax = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %i.e, ptr noundef null)
  br label %RCLASS_WRITE_CLASSPATH.exit

bb.k:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.ay = getelementptr i8, ptr %i.aw, i64 128
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !32, !range !34, !noundef !35
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %.split7.i.i, label %bb.l

.split7.i.i:                                      ; preds = %bb.k
  %i.bb = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %i.e, ptr noundef nonnull %i.aw)
  br label %RCLASS_WRITE_CLASSPATH.exit

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr i8, ptr %i.l, i64 24
  br label %RCLASS_WRITE_CLASSPATH.exit

RCLASS_WRITE_CLASSPATH.exit:                      ; preds = %bb.j, %.split.i.i, %.split7.i.i, %bb.l
  %.0.i.i = phi ptr [ %i.av, %bb.j ], [ %i.bc, %bb.l ], [ %i.ax, %.split.i.i ], [ %i.bb, %.split7.i.i ] ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.i.i, i64 128
  store i64 0, ptr %i.bd, align 8, !tbaa !16
  %i.be = getelementptr i8, ptr %.0.i.i, i64 125  ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = and i8 %i.bf, -2
  store i8 %i.bg, ptr %i.be, align 1
  br label %bb.m

bb.m:                                             ; preds = %RCLASS_EXT_READABLE.exit, %RCLASS_WRITE_CLASSPATH.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %rb_namespace_p.exit.thread

rb_namespace_p.exit.thread:                       ; preds = %bb.b, %bb.a, %rb_namespace_p.exit, %bb.m
  ret i32 0
}

declare i64 @rb_frame_callee() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @original_module(i64 noundef %0) unnamed_addr #24 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 28
  br i1 %i.h, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.i = getelementptr i8, ptr %i.e, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !49
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.b
  %.0 = phi i64 [ %i.j, %bb.b ], [ %0, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @cv_i(i64 noundef %0, i64 %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @rb_is_class_id(i64 noundef %0) #33
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %2 to ptr
  %i.c = tail call i32 @rb_st_update(ptr noundef %i.b, i64 noundef %0, ptr noundef nonnull @cv_i_update, i64 noundef 0) #26 ; 0 uses
end_hunk_11
