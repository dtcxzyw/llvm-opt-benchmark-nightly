inline.NumInlined: 295
inline.NumDeleted: 97
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rb_data_type_struct = type { ptr, %struct.anon.18, ptr, ptr, i64 }
%struct.anon.18 = type { ptr, ptr, ptr, ptr, [1 x ptr] }
%struct.rb_debug_inspector_struct = type { ptr, ptr, i64, i64 }
%struct.rb_vm_tag = type { i64, i64, [5 x ptr], ptr, i32, i32 }

@location_data_type = internal constant %struct.rb_data_type_struct { ptr @.str.20, %struct.anon.18 { ptr @location_mark, ptr inttoptr (i64 -1 to ptr), ptr null, ptr @location_ref_update, [1 x ptr] zeroinitializer }, ptr null, ptr null, i64 35 }, align 8
@.str = private unnamed_addr constant [10 x i8] c"%li\0B.%li\0B\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%li\0B#%li\0B\00", align 1
@backtrace_data_type = internal constant %struct.rb_data_type_struct { ptr @.str.21, %struct.anon.18 { ptr @backtrace_mark, ptr inttoptr (i64 -1 to ptr), ptr null, ptr @backtrace_update, [1 x ptr] zeroinitializer }, ptr null, ptr null, i64 33 }, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@rb_cThread = external local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"Backtrace\00", align 1
@rb_cObject = external local_unnamed_addr global i64, align 8
@rb_cBacktrace = internal unnamed_addr global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@rb_cArray = external local_unnamed_addr global i64, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@rb_cBacktraceLocation = internal unnamed_addr global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"lineno\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"base_label\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"absolute_path\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"to_s\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"inspect\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"caller\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"caller_locations\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"each_caller_location\00", align 1
@rb_profile_frame_absolute_path.cfunc_str = internal unnamed_addr global i64 0, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"<cfunc>\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"#<%s:%p>\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"%.*s%li\0B\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"frame_info\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"backtrace\00", align 1
@is_internal_location.prefix = internal constant [11 x i8] c"<internal:\00", align 1
@ruby_current_vm_ptr = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [14 x i8] c"block in %li\0B\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"block (%d levels) in %li\0B\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"calculate_iseq_label: unreachable\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c":%d\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c":in \00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"unknown method\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"ruby\00", align 1
@.str.31 = private unnamed_addr constant [78 x i8] c"-- Ruby level backtrace information ----------------------------------------\0A\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"%s:%d:in unknown method\0A\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"%s:%d:in '%s'\0A\00", align 1
@ruby_current_ec = external thread_local local_unnamed_addr global ptr, align 8
@.str.34 = private unnamed_addr constant [31 x i8] c"\09from %s:%d:in unknown method\0A\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"\09from %s:%d:in '%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"\09from %li\0B:%d:in \00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"unknown method\0A\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c" '%li\0B'\0A\00", align 1
@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str.40 = private unnamed_addr constant [21 x i8] c"negative level (%ld)\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"negative size (%ld)\00", align 1
@rb_cFalseClass = external local_unnamed_addr global i64, align 8
@rb_cNilClass = external local_unnamed_addr global i64, align 8
@rb_cTrueClass = external local_unnamed_addr global i64, align 8
@rb_cInteger = external local_unnamed_addr global i64, align 8
@rb_cSymbol = external local_unnamed_addr global i64, align 8
@rb_cFloat = external local_unnamed_addr global i64, align 8
@rb_backtrace_length_limit = external local_unnamed_addr global i64, align 8
@.str.42 = private unnamed_addr constant [14 x i8] c"no such frame\00", align 1
@ruby_threadptr_data_type = external constant %struct.rb_data_type_struct, align 8
@.str.43 = private unnamed_addr constant [24 x i8] c"frame2iseq: unreachable\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"%li\0B%s%li\0B\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"#\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_vm_get_sourceline(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11
  %.val.val = load i64, ptr %.val, align 8, !tbaa !17
  %i.b = and i64 %.val.val, 128
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr i8, ptr %i.d, i64 16       ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 4 uses
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.h, align 8, !tbaa !23
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %calc_lineno.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.h, i64 88
  %i.l = load i32, ptr %i.k, align 8, !tbaa !41
  br label %calc_lineno.exit

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42   ; 2 uses
  %i.o = ptrtoint ptr %i.e to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  tail call void @llvm.assume(i1 %i.s)
  %.not.i.i = icmp eq ptr %i.e, %i.n
  %i.t = add nsw i64 %i.r, -1
  %spec.select.i.i = select i1 %.not.i.i, i64 0, i64 %i.t, !prof !43
  %i.u = tail call i32 @rb_iseq_line_no(ptr noundef nonnull %i.d, i64 noundef %spec.select.i.i) #7
  br label %calc_lineno.exit

calc_lineno.exit:                                 ; preds = %bb.e, %bb.f
  %i.v = phi i32 [ %i.l, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %.not11 = icmp eq i32 %i.v, 0
  br i1 %.not11, label %calc_lineno.exit.calc_lineno.exit.thread_crit_edge, label %bb.g

calc_lineno.exit.calc_lineno.exit.thread_crit_edge: ; preds = %calc_lineno.exit
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !20
  br label %calc_lineno.exit.thread

calc_lineno.exit.thread:                          ; preds = %calc_lineno.exit.calc_lineno.exit.thread_crit_edge, %bb.d
  %i.w = phi ptr [ %.pre, %calc_lineno.exit.calc_lineno.exit.thread_crit_edge ], [ %i.h, %bb.d ]
  %i.x = getelementptr i8, ptr %i.w, i64 88
  %i.y = load i32, ptr %i.x, align 8, !tbaa !41
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %calc_lineno.exit.thread, %calc_lineno.exit
  %.1 = phi i32 [ %i.v, %calc_lineno.exit ], [ %i.y, %calc_lineno.exit.thread ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_frame_info_p(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rb_typeddata_is_kind_of(i64 noundef %0, ptr noundef nonnull @location_data_type) #7
  ret i32 %i.a
}

declare i32 @rb_typeddata_is_kind_of(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_gen_method_name(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit21.thread, label %rbimpl_RB_TYPE_P_fastpath.exit23

rbimpl_RB_TYPE_P_fastpath.exit23:                 ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.h = and i64 %i.g, 30
  %switch = icmp eq i64 %i.h, 2
  br i1 %switch, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit21.thread

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit23
  %i.i = and i64 %i.g, 8195
  %or.cond = icmp eq i64 %i.i, 8194
  br i1 %or.cond, label %bb.b, label %RCLASS_SINGLETON_P.exit.thread

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.j = getelementptr i8, ptr %i.f, i64 136
  %i.k = load i64, ptr %i.j, align 8, !tbaa !46   ; 4 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = and i64 %i.k, 7
  %i.n = icmp ne i64 %i.m, 0
  %i.o = or i1 %i.l, %i.n
  br i1 %i.o, label %rbimpl_RB_TYPE_P_fastpath.exit21.thread, label %rbimpl_RB_TYPE_P_fastpath.exit19

rbimpl_RB_TYPE_P_fastpath.exit19:                 ; preds = %bb.b
  %i.p = inttoptr i64 %i.k to ptr
  %i.q = load i64, ptr %i.p, align 8, !tbaa !44
  %i.r = and i64 %i.q, 30
  %switch44 = icmp eq i64 %i.r, 2
  br i1 %switch44, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit21.thread

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit19
  %i.s = call i64 @rb_mod_name0(i64 noundef %i.k, ptr noundef nonnull %i.a) #7 ; 2 uses
  %i.t = load i8, ptr %i.a, align 1, !tbaa !47, !range !48, !noundef !49
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = icmp ne i64 %i.s, 4
  %or.cond33.not = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond33.not, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit21.thread

bb.d:                                             ; preds = %bb.c
  %i.w = call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str, i64 noundef %i.s, i64 noundef %1) #7
  br label %rbimpl_RB_TYPE_P_fastpath.exit21.thread

RCLASS_SINGLETON_P.exit.thread:                   ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.x = call i64 @rb_mod_name0(i64 noundef %0, ptr noundef nonnull %i.a) #7 ; 2 uses
  %i.y = load i8, ptr %i.a, align 1, !tbaa !47, !range !48, !noundef !49
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = icmp ne i64 %i.x, 4
  %or.cond35.not = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond35.not, label %bb.e, label %rbimpl_RB_TYPE_P_fastpath.exit21.thread

bb.e:                                             ; preds = %RCLASS_SINGLETON_P.exit.thread
  %i.ab = call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.1, i64 noundef %i.x, i64 noundef %1) #7
  br label %rbimpl_RB_TYPE_P_fastpath.exit21.thread

rbimpl_RB_TYPE_P_fastpath.exit21.thread:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit19, %rbimpl_RB_TYPE_P_fastpath.exit23, %bb.b, %bb.c, %bb.a, %RCLASS_SINGLETON_P.exit.thread, %bb.d, %bb.e
  %.1 = phi i64 [ %i.ab, %bb.e ], [ %i.w, %bb.d ], [ %1, %bb.a ], [ %1, %rbimpl_RB_TYPE_P_fastpath.exit23 ], [ %1, %rbimpl_RB_TYPE_P_fastpath.exit19 ], [ %1, %RCLASS_SINGLETON_P.exit.thread ], [ %1, %bb.c ], [ %1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.1
}

declare i64 @rb_mod_name0(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_get_node_id_from_frame_info(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !50

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !51

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @location_data_type to i64)
  br i1 %i.p, label %location_ptr.exit, label %.preheader.i.i, !prof !55

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56   ; 2 uses
  %i.s = icmp eq ptr %i.r, @location_data_type
  br i1 %i.s, label %location_ptr.exit, label %.preheader.i.i, !llvm.loop !61

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @location_data_type) #7
  br label %location_ptr.exit

location_ptr.exit:                                ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = load ptr, ptr %.1.i.i, align 8, !tbaa !63 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !66   ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %location_node_id.exit, label %bb.e

bb.e:                                             ; preds = %location_ptr.exit
  %i.x = getelementptr i8, ptr %i.u, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !69   ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  %i.aa = getelementptr i8, ptr %i.w, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20 ; 3 uses
  br i1 %i.z, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %location_node_id.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %i.ab, i64 92
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !70
  br label %location_node_id.exit

bb.h:                                             ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %i.ab, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !42 ; 2 uses
  %i.ai = ptrtoint ptr %i.y to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3                 ; 2 uses
  %i.am = icmp sgt i64 %i.al, -1
  tail call void @llvm.assume(i1 %i.am)
  %.not.i.i.i = icmp eq ptr %i.y, %i.ah
  %i.an = add nsw i64 %i.al, -1
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.an, !prof !43
  %i.ao = tail call i32 @rb_iseq_node_id(ptr noundef nonnull %i.w, i64 noundef %spec.select.i.i.i) #7
  br label %location_node_id.exit

location_node_id.exit:                            ; preds = %location_ptr.exit, %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ -1, %location_ptr.exit ], [ -1, %bb.f ], [ %i.af, %bb.g ], [ %i.ao, %bb.h ]
  ret i32 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_get_iseq_from_frame_info(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !50

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !51

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @location_data_type to i64)
  br i1 %i.p, label %location_ptr.exit, label %.preheader.i.i, !prof !55

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56   ; 2 uses
  %i.s = icmp eq ptr %i.r, @location_data_type
  br i1 %i.s, label %location_ptr.exit, label %.preheader.i.i, !llvm.loop !61

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @location_data_type) #7
  br label %location_ptr.exit

location_ptr.exit:                                ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = load ptr, ptr %.1.i.i, align 8, !tbaa !63
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val = load ptr, ptr %i.v, align 8, !tbaa !66
  ret ptr %.val
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_backtrace_p(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rb_typeddata_is_kind_of(i64 noundef %0, ptr noundef nonnull @backtrace_data_type) #7
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_ec_backtrace_object(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @rb_ec_partial_backtrace_object(ptr noundef %0, i64 noundef 0, i64 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_ec_partial_backtrace_object(ptr noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly captures(address_is_null) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 3 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !81
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val125 = load i64, ptr %i.c, align 8, !tbaa !82
  %i.d = getelementptr [8 x i8], ptr %.val, i64 %.val125 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.d, i64 -56      ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp slt i64 %i.i, -56
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = sdiv exact i64 %i.i, 56
  %i.l = add nsw i64 %i.k, 1                      ; 2 uses
  %i.m = icmp slt i64 %2, 0
  %i.n = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.l)
  %spec.select = select i1 %i.m, i64 %i.l, i64 %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0107 = phi ptr [ %i.f, %bb.c ], [ null, %bb.a ], [ %i.f, %bb.b ] ; 5 uses
  %.095 = phi i64 [ %spec.select, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 3 uses
  %i.o = mul i64 %.095, 24
  %i.p = add i64 %i.o, 24
  %i.q = load i64, ptr @rb_cBacktrace, align 8, !tbaa !17
  %i.r = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.q, i64 noundef %i.p, ptr noundef nonnull @backtrace_data_type) #7 ; 12 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = and i64 %i.r, 7
  %i.u = icmp ne i64 %i.t, 0
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !50

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.d
  %i.w = inttoptr i64 %i.r to ptr                 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !44
  %i.y = and i64 %i.x, 95
  %or.cond.not.i.i = icmp eq i64 %i.y, 76
  br i1 %or.cond.not.i.i, label %bb.e, label %.critedge.i.i, !prof !51

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.z = getelementptr i8, ptr %i.w, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !52  ; 2 uses
  %i.ab = and i64 %i.aa, -2                       ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = trunc i64 %i.aa to i1
  %i.ae = getelementptr i8, ptr %i.w, i64 32      ; 2 uses
  br i1 %i.ad, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.f, %bb.e
  %i.ag = phi ptr [ %i.af, %bb.f ], [ %i.ae, %bb.e ] ; 2 uses
  %i.ah = icmp eq i64 %i.ab, ptrtoint (ptr @backtrace_data_type to i64)
  br i1 %i.ah, label %backtrace_alloc_capa.exit, label %.preheader.i.i, !prof !55

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.g
  %.016.i.i = phi ptr [ %i.aj, %bb.g ], [ %i.ac, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i.i
  %i.ai = getelementptr i8, ptr %.016.i.i, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !56 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, @backtrace_data_type
  br i1 %i.ak, label %backtrace_alloc_capa.exit, label %.preheader.i.i, !llvm.loop !61

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.d
  %i.al = tail call ptr @rb_check_typeddata(i64 noundef %i.r, ptr noundef nonnull @backtrace_data_type) #7
  br label %backtrace_alloc_capa.exit

backtrace_alloc_capa.exit:                        ; preds = %bb.g, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.al, %.critedge.i.i ], [ %i.ag, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.ag, %bb.g ] ; 6 uses
  store i32 0, ptr %.1.i.i, align 8, !tbaa !83
  %i.am = icmp eq i64 %.095, 0
  br i1 %i.am, label %bb.h, label %.preheader142

.preheader142:                                    ; preds = %backtrace_alloc_capa.exit
  %.not144 = icmp eq ptr %i.b, %.0107
  br i1 %.not144, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader142
  %i.an = getelementptr i8, ptr %.1.i.i, i64 24   ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %backtrace_alloc_capa.exit
  %.not123 = icmp eq ptr %3, null
  br i1 %.not123, label %bb.am, label %.sink.split

bb.i:                                             ; preds = %.lr.ph, %bb.ac
  %.094150 = phi i64 [ %1, %.lr.ph ], [ %.1, %bb.ac ] ; 9 uses
  %.096149 = phi i1 [ false, %.lr.ph ], [ %.2, %bb.ac ] ; 6 uses
  %.098148 = phi i64 [ 0, %.lr.ph ], [ %.5, %bb.ac ] ; 9 uses
  %.0101147 = phi ptr [ null, %.lr.ph ], [ %.3104, %bb.ac ] ; 6 uses
  %.0105145 = phi ptr [ %i.b, %.lr.ph ], [ %i.ds, %bb.ac ] ; 8 uses
  %i.ao = load i32, ptr %.1.i.i, align 8, !tbaa !83 ; 2 uses
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = icmp sgt i64 %.095, %i.ap
  br i1 %i.aq, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr i8, ptr %.0105145, i64 16 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !18 ; 2 uses
  %.not121 = icmp eq ptr %i.as, null
  br i1 %.not121, label %bb.y, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %.0105145, align 8, !tbaa !19
  %.not122 = icmp eq ptr %i.at, null
  br i1 %.not122, label %bb.ac, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = icmp sgt i64 %.094150, 0
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = add nsw i64 %.094150, -1
  br label %bb.ac

bb.n:                                             ; preds = %bb.l
  %i.aw = tail call i64 @rb_iseq_path(ptr noundef nonnull %i.as) #7
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !44
  %i.az = and i64 %i.ay, 8192
  %.not.i.i127 = icmp eq i64 %i.az, 0
  %i.ba = getelementptr i8, ptr %i.ax, i64 24     ; 2 uses
  br i1 %.not.i.i127, label %is_internal_location.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !46
  br label %is_internal_location.exit

is_internal_location.exit:                        ; preds = %bb.n, %bb.o
  %i.bc = phi ptr [ %i.bb, %bb.o ], [ %i.ba, %bb.n ]
  %i.bd = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @is_internal_location.prefix, ptr noundef nonnull dereferenceable(1) %i.bc, i64 noundef 10) #19
  %i.be = icmp eq i32 %i.bd, 0                    ; 4 uses
  %or.cond = select i1 %4, i1 %i.be, i1 false
  br i1 %or.cond, label %bb.ac, label %bb.p

bb.p:                                             ; preds = %is_internal_location.exit
  br i1 %.096149, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = load ptr, ptr %i.ar, align 8, !tbaa !18 ; 11 uses
  %i.bg = load ptr, ptr %.0105145, align 8, !tbaa !19 ; 11 uses
  %.pre = load i32, ptr %.1.i.i, align 8, !tbaa !83
  %i.bh = trunc i64 %.098148 to i32
  %i.bi = select i1 %i.be, i32 %i.bh, i32 0
  %i.bj = sub i32 %.pre, %i.bi                    ; 2 uses
  %.199 = select i1 %i.be, i64 0, i64 %.098148    ; 8 uses
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %.1.i.i, align 8, !tbaa !83
  %i.bl = sext i32 %i.bj to i64
  %i.bm = getelementptr [24 x i8], ptr %i.an, i64 %i.bl ; 10 uses
  %i.bn = tail call ptr @rb_vm_frame_method_entry(ptr noundef nonnull %.0105145) #7 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64               ; 3 uses
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !17
  %i.bp = icmp eq ptr %i.bn, null
  %i.bq = and i64 %i.bo, 7
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = or i1 %i.bp, %i.br
  br i1 %i.bs, label %rb_obj_write.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @rb_gc_writebarrier(i64 noundef %i.r, i64 noundef %i.bo) #7
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.q, %bb.r
  %i.bt = getelementptr i8, ptr %i.bm, i64 8
  %i.bu = ptrtoint ptr %i.bf to i64               ; 4 uses
  store i64 %i.bu, ptr %i.bt, align 8, !tbaa !17
  %i.bv = icmp eq ptr %i.bf, null
  %i.bw = and i64 %i.bu, 7
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = or i1 %i.bv, %i.bx                      ; 2 uses
  br i1 %i.be, label %bb.s, label %bb.u

bb.s:                                             ; preds = %rb_obj_write.exit
  br i1 %i.by, label %rb_obj_write.exit128, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @rb_gc_writebarrier(i64 noundef %i.r, i64 noundef %i.bu) #7
  br label %rb_obj_write.exit128

rb_obj_write.exit128:                             ; preds = %bb.s, %bb.t
  %i.bz = getelementptr i8, ptr %i.bm, i64 16
  store ptr %i.bg, ptr %i.bz, align 8, !tbaa !69
  %i.ca = add i64 %.199, 1
  br label %bb.x

bb.u:                                             ; preds = %rb_obj_write.exit
  br i1 %i.by, label %rb_obj_write.exit129, label %bb.v
end_hunk_0
begin_hunk_1_@rb_location_ary_to_backtrace:bb.a
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = or i1 %i.af, %i.ah
  br i1 %i.ai, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !50

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %rb_array_len.exit32
  %i.aj = inttoptr i64 %i.ae to ptr               ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !44
  %i.al = and i64 %i.ak, 95
  %or.cond.not.i.i = icmp eq i64 %i.al, 76
  br i1 %or.cond.not.i.i, label %bb.g, label %.critedge.i.i, !prof !51

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.am = getelementptr i8, ptr %i.aj, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !52 ; 2 uses
  %i.ao = and i64 %i.an, -2                       ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = trunc i64 %i.an to i1
  %i.ar = getelementptr i8, ptr %i.aj, i64 32     ; 2 uses
  br i1 %i.aq, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.h, %bb.g
  %i.at = phi ptr [ %i.as, %bb.h ], [ %i.ar, %bb.g ] ; 2 uses
  %i.au = icmp eq i64 %i.ao, ptrtoint (ptr @backtrace_data_type to i64)
  br i1 %i.au, label %backtrace_alloc_capa.exit, label %.preheader.i.i, !prof !55

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.i
  %.016.i.i = phi ptr [ %i.aw, %bb.i ], [ %i.ap, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i33 = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i33, label %.critedge.i.i, label %bb.i

bb.i:                                             ; preds = %.preheader.i.i
  %i.av = getelementptr i8, ptr %.016.i.i, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !56 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, @backtrace_data_type
  br i1 %i.ax, label %backtrace_alloc_capa.exit, label %.preheader.i.i, !llvm.loop !61

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rb_array_len.exit32
  %i.ay = tail call ptr @rb_check_typeddata(i64 noundef %i.ae, ptr noundef nonnull @backtrace_data_type) #7
  br label %backtrace_alloc_capa.exit

backtrace_alloc_capa.exit:                        ; preds = %bb.i, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.ay, %.critedge.i.i ], [ %i.at, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.at, %bb.i ] ; 3 uses
  %i.az = getelementptr i8, ptr %i.g, i64 16      ; 2 uses
  %i.ba = getelementptr i8, ptr %i.g, i64 32
  %i.bb = getelementptr i8, ptr %.1.i.i, i64 24
  br label %bb.j

bb.j:                                             ; preds = %rb_obj_write.exit41, %backtrace_alloc_capa.exit
  %.024 = phi i64 [ 0, %backtrace_alloc_capa.exit ], [ %i.df, %rb_obj_write.exit41 ] ; 5 uses
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !44  ; 2 uses
  %i.bd = and i64 %i.bc, 8192
  %.not.i34 = icmp eq i64 %i.bd, 0
  br i1 %.not.i34, label %rb_array_len.exit36, label %rb_array_len.exit36.thread

rb_array_len.exit36:                              ; preds = %bb.j
  %i.be = load i64, ptr %i.az, align 8, !tbaa !46
  %.not28 = icmp slt i64 %.024, %i.be
  br i1 %.not28, label %bb.k, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rb_array_len.exit36.thread:                       ; preds = %bb.j
  %i.bf = lshr i64 %i.bc, 15
  %i.bg = and i64 %i.bf, 127
  %.not2851 = icmp slt i64 %.024, %i.bg
  br i1 %.not2851, label %.thread52, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

.thread52:                                        ; preds = %rb_array_len.exit36.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  br label %RARRAY_AREF.exit39

bb.k:                                             ; preds = %rb_array_len.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !46
  br label %RARRAY_AREF.exit39

RARRAY_AREF.exit39:                               ; preds = %.thread52, %bb.k
  %.0.i.i38 = phi ptr [ %i.bh, %bb.k ], [ %i.az, %.thread52 ]
  %i.bi = getelementptr [8 x i8], ptr %.0.i.i38, i64 %.024
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !17 ; 2 uses
  store i64 %i.bj, ptr %i.a, align 8, !tbaa !17
  %i.bk = call i32 @rb_typeddata_is_kind_of(i64 noundef %i.bj, ptr noundef nonnull @location_data_type) #7
  %.not27.not = icmp eq i32 %i.bk, 0
  br i1 %.not27.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %RARRAY_AREF.exit39
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !17  ; 4 uses
  %i.bm = icmp eq i64 %i.bl, 0
  %i.bn = and i64 %i.bl, 7
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = or i1 %i.bm, %i.bo
  br i1 %i.bp, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !50

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.l
  %i.bq = inttoptr i64 %i.bl to ptr               ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !44
  %i.bs = and i64 %i.br, 95
  %or.cond.not.i = icmp eq i64 %i.bs, 76
  br i1 %or.cond.not.i, label %bb.m, label %.critedge.i, !prof !51

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.bt = getelementptr i8, ptr %i.bq, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !52 ; 2 uses
  %i.bv = and i64 %i.bu, -2                       ; 2 uses
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = trunc i64 %i.bu to i1
  %i.by = getelementptr i8, ptr %i.bq, i64 32     ; 2 uses
  br i1 %i.bx, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.n, %bb.m
  %i.ca = phi ptr [ %i.bz, %bb.n ], [ %i.by, %bb.m ] ; 2 uses
  %i.cb = icmp eq i64 %i.bv, ptrtoint (ptr @location_data_type to i64)
  br i1 %i.cb, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !55

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.o
  %.016.i = phi ptr [ %i.cd, %bb.o ], [ %i.bw, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i40 = icmp eq ptr %.016.i, null
  br i1 %.not.i40, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %.preheader.i
  %i.cc = getelementptr i8, ptr %.016.i, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !56 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, @location_data_type
  br i1 %i.ce, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !61

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.l
  %i.cf = call ptr @rb_check_typeddata(i64 noundef %i.bl, ptr noundef nonnull @location_data_type) #7
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.o, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.cf, %.critedge.i ], [ %i.ca, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.ca, %bb.o ] ; 3 uses
  %i.cg = getelementptr [24 x i8], ptr %i.bb, i64 %.024 ; 3 uses
  %i.ch = load ptr, ptr %.1.i, align 8, !tbaa !63 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !97 ; 2 uses
  %i.cj = ptrtoint ptr %i.ci to i64               ; 3 uses
  store i64 %i.cj, ptr %i.cg, align 8, !tbaa !17
  %i.ck = icmp eq ptr %i.ci, null
  %i.cl = and i64 %i.cj, 7
  %i.cm = icmp ne i64 %i.cl, 0
  %i.cn = or i1 %i.ck, %i.cm
  br i1 %i.cn, label %rb_obj_write.exit, label %bb.p

bb.p:                                             ; preds = %rbimpl_check_typeddata.exit
  call void @rb_gc_writebarrier(i64 noundef %i.ae, i64 noundef %i.cj) #7
  %.pre = load ptr, ptr %.1.i, align 8, !tbaa !63
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %rbimpl_check_typeddata.exit, %bb.p
  %i.co = phi ptr [ %i.ch, %rbimpl_check_typeddata.exit ], [ %.pre, %bb.p ] ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cg, i64 8
  %i.cq = getelementptr i8, ptr %i.co, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !66 ; 2 uses
  %i.cs = ptrtoint ptr %i.cr to i64               ; 3 uses
  store i64 %i.cs, ptr %i.cp, align 8, !tbaa !17
  %i.ct = icmp eq ptr %i.cr, null
  %i.cu = and i64 %i.cs, 7
  %i.cv = icmp ne i64 %i.cu, 0
  %i.cw = or i1 %i.ct, %i.cv
  br i1 %i.cw, label %rb_obj_write.exit41, label %bb.q

bb.q:                                             ; preds = %rb_obj_write.exit
  call void @rb_gc_writebarrier(i64 noundef %i.ae, i64 noundef %i.cs) #7
  %.pre45 = load ptr, ptr %.1.i, align 8, !tbaa !63
  br label %rb_obj_write.exit41

rb_obj_write.exit41:                              ; preds = %rb_obj_write.exit, %bb.q
  %i.cx = phi ptr [ %i.co, %rb_obj_write.exit ], [ %.pre45, %bb.q ]
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !69
  %i.da = getelementptr i8, ptr %i.cg, i64 16
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !69
  %i.db = load i32, ptr %.1.i.i, align 8, !tbaa !83
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %.1.i.i, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr %i.a, ptr %i.b, align 8, !tbaa !93
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #7, !srcloc !98
  %i.dd = load ptr, ptr %i.b, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.de = load volatile i64, ptr %i.dd, align 8, !tbaa !17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.df = add nuw i64 %.024, 1
  br label %bb.j, !llvm.loop !99

.critedge:                                        ; preds = %RARRAY_AREF.exit39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %rb_array_len.exit36, %rb_array_len.exit36.thread, %.critedge, %bb.a, %rb_array_len.exit.thread, %rbimpl_RB_TYPE_P_fastpath.exit, %rb_array_len.exit, %RARRAY_AREF.exit
  %.4 = phi i64 [ 0, %bb.a ], [ 0, %RARRAY_AREF.exit ], [ 0, %rb_array_len.exit ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit ], [ 0, %rb_array_len.exit.thread ], [ 0, %.critedge ], [ %i.ae, %rb_array_len.exit36.thread ], [ %i.ae, %rb_array_len.exit36 ]
  ret i64 %.4
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_ec_backtrace_str_ary(ptr noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @rb_ec_partial_backtrace_object(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) ; 6 uses
  %i.b = icmp eq i64 %i.a, 0
  %i.c = and i64 %i.a, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !50

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !51

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !52   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @backtrace_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !55

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr i8, ptr %.016.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 2 uses
  %i.t = icmp eq ptr %i.s, @backtrace_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !61

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %i.a, ptr noundef nonnull @backtrace_data_type) #7
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.p, %bb.d ]
  %i.v = getelementptr i8, ptr %.1.i.i, i64 8     ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !91   ; 2 uses
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %bb.e, label %rb_backtrace_to_str_ary.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = tail call fastcc i64 @backtrace_to_str_ary(i64 noundef %i.a) ; 5 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !17
  %i.y = icmp eq i64 %i.x, 0
  %i.z = and i64 %i.x, 7
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = or i1 %i.y, %i.aa
  br i1 %i.ab, label %rb_backtrace_to_str_ary.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @rb_gc_writebarrier(i64 noundef %i.a, i64 noundef %i.x) #7
  %.pre.i = load i64, ptr %i.v, align 8, !tbaa !91
  br label %rb_backtrace_to_str_ary.exit

rb_backtrace_to_str_ary.exit:                     ; preds = %rbimpl_check_typeddata.exit.i, %bb.e, %bb.f
  %i.ac = phi i64 [ %.pre.i, %bb.f ], [ %i.x, %bb.e ], [ %i.w, %rbimpl_check_typeddata.exit.i ]
  ret i64 %i.ac
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_ec_backtrace_location_ary(ptr noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @rb_ec_partial_backtrace_object(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef null, i1 noundef zeroext %3, i1 noundef zeroext false) ; 6 uses
  %i.b = icmp eq i64 %i.a, 0
  %i.c = and i64 %i.a, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !50

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !51

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !52   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @backtrace_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !55

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr i8, ptr %.016.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 2 uses
  %i.t = icmp eq ptr %i.s, @backtrace_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !61

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %i.a, ptr noundef nonnull @backtrace_data_type) #7
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.p, %bb.d ]
  %i.v = getelementptr i8, ptr %.1.i.i, i64 16    ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !95   ; 2 uses
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %bb.e, label %rb_backtrace_to_location_ary.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = tail call fastcc i64 @backtrace_to_location_ary(i64 noundef %i.a) ; 5 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !17
  %i.y = icmp eq i64 %i.x, 0
  %i.z = and i64 %i.x, 7
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = or i1 %i.y, %i.aa
  br i1 %i.ab, label %rb_backtrace_to_location_ary.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @rb_gc_writebarrier(i64 noundef %i.a, i64 noundef %i.x) #7
  %.pre.i = load i64, ptr %i.v, align 8, !tbaa !95
  br label %rb_backtrace_to_location_ary.exit

rb_backtrace_to_location_ary.exit:                ; preds = %rbimpl_check_typeddata.exit.i, %bb.e, %bb.f
  %i.ac = phi i64 [ %.pre.i, %bb.f ], [ %i.x, %bb.e ], [ %i.w, %rbimpl_check_typeddata.exit.i ]
  ret i64 %i.ac
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_backtrace_print_as_bugreport(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !100
  %.0..0..0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !100 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71   ; 2 uses
  %.val.i = load ptr, ptr %.0..0..0..0..0..0..0..0..i, align 8, !tbaa !81
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i, i64 8
  %.val34.i = load i64, ptr %i.f, align 8, !tbaa !82
  %i.g = getelementptr [8 x i8], ptr %.val.i, i64 %.val34.i ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %backtrace_each.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.g, i64 -112     ; 3 uses
  %i.j = icmp ult ptr %i.i, %i.e
  br i1 %i.j, label %backtrace_each.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = sdiv exact i64 %i.m, 56
  %i.o = icmp sgt i64 %i.m, -56
  br i1 %i.o, label %.lr.ph.i.preheader, label %backtrace_each.exit

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.p = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !102
  %i.q = getelementptr i8, ptr %i.p, i64 1216
  %i.r = load i64, ptr %i.q, align 8, !tbaa !104
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %oldbt_bugreport.exit
  %.sroa.5.0 = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.sroa.5.1, %oldbt_bugreport.exit ] ; 3 uses
  %.sroa.6.0 = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.sroa.6.1, %oldbt_bugreport.exit ] ; 5 uses
  %.sroa.0.0 = phi i64 [ %i.r, %.lr.ph.i.preheader ], [ %.sroa.0.1, %oldbt_bugreport.exit ] ; 5 uses
  %.036.i = phi ptr [ %i.i, %.lr.ph.i.preheader ], [ %i.by, %oldbt_bugreport.exit ] ; 4 uses
  %.02835.i = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bx, %oldbt_bugreport.exit ] ; 2 uses
  %i.s = getelementptr i8, ptr %.036.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18   ; 4 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.l, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = load ptr, ptr %.036.i, align 8, !tbaa !19 ; 3 uses
  %.not33.i = icmp eq ptr %i.u, null
  br i1 %.not33.i, label %oldbt_bugreport.exit, label %oldbt_iter_iseq.exit

oldbt_iter_iseq.exit:                             ; preds = %bb.d
  %i.v = tail call i64 @rb_iseq_path(ptr noundef nonnull %i.t) #7 ; 4 uses
  %i.w = getelementptr i8, ptr %i.t, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20   ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !127  ; 2 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42 ; 2 uses
  %i.ac = ptrtoint ptr %i.u to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, -1
  tail call void @llvm.assume(i1 %i.ag)
  %.not.i.i.i = icmp eq ptr %i.u, %i.ab
  %i.ah = add nsw i64 %i.af, -1
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.ah, !prof !43
  %i.ai = tail call i32 @rb_iseq_line_no(ptr noundef nonnull %i.t, i64 noundef %spec.select.i.i.i) #7 ; 4 uses
  %i.aj = icmp eq i64 %i.v, 4
  br i1 %i.aj, label %RSTRING_PTR.exit.i, label %bb.e

bb.e:                                             ; preds = %oldbt_iter_iseq.exit
  %i.ak = inttoptr i64 %i.v to ptr                ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !44
  %i.am = and i64 %i.al, 8192
  %.not.i.i8 = icmp eq i64 %i.am, 0
  %i.an = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  br i1 %.not.i.i8, label %RSTRING_PTR.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.f, %bb.e, %oldbt_iter_iseq.exit
  %i.ap = phi ptr [ @.str.30, %oldbt_iter_iseq.exit ], [ %i.ao, %bb.f ], [ %i.an, %bb.e ] ; 2 uses
  %.not.i9 = icmp eq i32 %.sroa.5.0, 0
  br i1 %.not.i9, label %bb.g, label %bb.h

bb.g:                                             ; preds = %RSTRING_PTR.exit.i
  %i.aq = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.31) #7 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %RSTRING_PTR.exit.i
  %i.ar = icmp eq i64 %i.z, 4
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef %i.ap, i32 noundef %i.ai) #7 ; 0 uses
  br label %oldbt_bugreport.exit

bb.j:                                             ; preds = %bb.h
  %i.at = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !44
  %i.av = and i64 %i.au, 8192
  %.not.i14.i = icmp eq i64 %i.av, 0
  %i.aw = getelementptr i8, ptr %i.at, i64 24     ; 2 uses
  br i1 %.not.i14.i, label %RSTRING_PTR.exit15.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !46
  br label %RSTRING_PTR.exit15.i

RSTRING_PTR.exit15.i:                             ; preds = %bb.k, %bb.j
  %i.ay = phi ptr [ %i.ax, %bb.k ], [ %i.aw, %bb.j ]
  %i.az = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef %i.ap, i32 noundef %i.ai, ptr noundef %i.ay) #7 ; 0 uses
  br label %oldbt_bugreport.exit

bb.l:                                             ; preds = %.lr.ph.i
  %i.ba = tail call ptr @rb_vm_frame_method_entry(ptr noundef nonnull %.036.i) #7
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !128
  %i.bd = getelementptr i8, ptr %i.bc, i64 32
end_hunk_1
begin_hunk_2_@rb_backtrace_print_as_bugreport:bb.a

oldbt_bugreport.exit:                             ; preds = %RSTRING_PTR.exit15.i14, %bb.q, %RSTRING_PTR.exit15.i, %bb.i, %bb.d
  %.sroa.5.1 = phi i32 [ 1, %RSTRING_PTR.exit15.i ], [ %.sroa.5.0, %bb.d ], [ 1, %bb.i ], [ 1, %bb.q ], [ 1, %RSTRING_PTR.exit15.i14 ]
  %.sroa.6.1 = phi i32 [ %i.ai, %RSTRING_PTR.exit15.i ], [ %.sroa.6.0, %bb.d ], [ %i.ai, %bb.i ], [ %.sroa.6.0, %bb.q ], [ %.sroa.6.0, %RSTRING_PTR.exit15.i14 ]
  %.sroa.0.1 = phi i64 [ %i.v, %RSTRING_PTR.exit15.i ], [ %.sroa.0.0, %bb.d ], [ %i.v, %bb.i ], [ %.sroa.0.0, %bb.q ], [ %.sroa.0.0, %RSTRING_PTR.exit15.i14 ]
  %i.bx = add nuw nsw i64 %.02835.i, 1
  %i.by = getelementptr i8, ptr %.036.i, i64 -56
  %exitcond.not.i = icmp eq i64 %.02835.i, %i.n
  br i1 %exitcond.not.i, label %backtrace_each.exit, label %.lr.ph.i, !llvm.loop !133

backtrace_each.exit:                              ; preds = %oldbt_bugreport.exit, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_backtrace() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !134 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !100
  %.0..0..0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !100 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 2 uses
  %.val.i.i = load ptr, ptr %.0..0..0..0..0..0..0..0..0..0..i.i, align 8, !tbaa !81
  %i.g = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i, i64 8
  %.val34.i.i = load i64, ptr %i.g, align 8, !tbaa !82
  %i.h = getelementptr [8 x i8], ptr %.val.i.i, i64 %.val34.i.i ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %vm_backtrace_print.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.h, i64 -112     ; 3 uses
  %i.k = icmp ult ptr %i.j, %i.f
  br i1 %i.k, label %vm_backtrace_print.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = sdiv exact i64 %i.n, 56
  %i.p = icmp sgt i64 %i.n, -56
  br i1 %i.p, label %.lr.ph.i.preheader.i, label %vm_backtrace_print.exit

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.q = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !102
  %i.r = getelementptr i8, ptr %i.q, i64 1216
  %i.s = load i64, ptr %i.r, align 8, !tbaa !104
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %oldbt_print.exit.i, %.lr.ph.i.preheader.i
  %.sroa.6.0.i = phi i32 [ %.sroa.6.1.i, %oldbt_print.exit.i ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i, %oldbt_print.exit.i ], [ %i.s, %.lr.ph.i.preheader.i ] ; 4 uses
  %.036.i.i = phi ptr [ %i.ca, %oldbt_print.exit.i ], [ %i.j, %.lr.ph.i.preheader.i ] ; 4 uses
  %.02835.i.i = phi i64 [ %i.bz, %oldbt_print.exit.i ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.t = getelementptr i8, ptr %.036.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18   ; 4 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.v = load ptr, ptr %.036.i.i, align 8, !tbaa !19 ; 3 uses
  %.not33.i.i = icmp eq ptr %i.v, null
  br i1 %.not33.i.i, label %oldbt_print.exit.i, label %oldbt_iter_iseq.exit.i

oldbt_iter_iseq.exit.i:                           ; preds = %bb.d
  %i.w = tail call i64 @rb_iseq_path(ptr noundef nonnull %i.u) #7 ; 3 uses
  %i.x = getelementptr i8, ptr %i.u, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20   ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 80
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !127 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.ad = ptrtoint ptr %i.v to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 3                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.ac
  %i.ai = add nsw i64 %i.ag, -1
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.ai, !prof !43
  %i.aj = tail call i32 @rb_iseq_line_no(ptr noundef nonnull %i.u, i64 noundef %spec.select.i.i.i.i) #7 ; 4 uses
  %i.ak = icmp eq i64 %i.aa, 4
  %i.al = inttoptr i64 %i.w to ptr                ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !44
  %i.an = and i64 %i.am, 8192
  %.not.i.i8.i = icmp eq i64 %i.an, 0             ; 2 uses
  %i.ao = getelementptr i8, ptr %i.al, i64 24     ; 4 uses
  br i1 %i.ak, label %bb.e, label %bb.g

bb.e:                                             ; preds = %oldbt_iter_iseq.exit.i
  br i1 %.not.i.i8.i, label %RSTRING_PTR.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46
  br label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.i.i:                             ; preds = %bb.f, %bb.e
  %i.aq = phi ptr [ %i.ap, %bb.f ], [ %i.ao, %bb.e ]
  %i.ar = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef %i.aq, i32 noundef %i.aj) #7 ; 0 uses
  br label %oldbt_print.exit.i

bb.g:                                             ; preds = %oldbt_iter_iseq.exit.i
  br i1 %.not.i.i8.i, label %RSTRING_PTR.exit9.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !46
  br label %RSTRING_PTR.exit9.i.i

RSTRING_PTR.exit9.i.i:                            ; preds = %bb.h, %bb.g
  %i.at = phi ptr [ %i.as, %bb.h ], [ %i.ao, %bb.g ]
  %i.au = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !44
  %i.aw = and i64 %i.av, 8192
  %.not.i10.i.i = icmp eq i64 %i.aw, 0
  %i.ax = getelementptr i8, ptr %i.au, i64 24     ; 2 uses
  br i1 %.not.i10.i.i, label %RSTRING_PTR.exit11.i.i, label %bb.i

bb.i:                                             ; preds = %RSTRING_PTR.exit9.i.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !46
  br label %RSTRING_PTR.exit11.i.i

RSTRING_PTR.exit11.i.i:                           ; preds = %bb.i, %RSTRING_PTR.exit9.i.i
  %i.az = phi ptr [ %i.ay, %bb.i ], [ %i.ax, %RSTRING_PTR.exit9.i.i ]
  %i.ba = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef %i.at, i32 noundef %i.aj, ptr noundef %i.az) #7 ; 0 uses
  br label %oldbt_print.exit.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.bb = tail call ptr @rb_vm_frame_method_entry(ptr noundef nonnull %.036.i.i) #7
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !128
  %i.be = getelementptr i8, ptr %i.bd, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !131
  %i.bg = tail call i64 @rb_id2str(i64 noundef %i.bf) #7 ; 2 uses
  %i.bh = and i64 %i.bg, -5
  %i.bi = icmp eq i64 %i.bh, 0
  %i.bj = inttoptr i64 %.sroa.0.0.i to ptr        ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !44
  %i.bl = and i64 %i.bk, 8192
  %.not.i.i9.i = icmp eq i64 %i.bl, 0             ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bj, i64 24     ; 4 uses
  br i1 %i.bi, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i.i9.i, label %RSTRING_PTR.exit.i13.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !46
  br label %RSTRING_PTR.exit.i13.i

RSTRING_PTR.exit.i13.i:                           ; preds = %bb.l, %bb.k
  %i.bo = phi ptr [ %i.bn, %bb.l ], [ %i.bm, %bb.k ]
  %i.bp = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef %i.bo, i32 noundef %.sroa.6.0.i) #7 ; 0 uses
  br label %oldbt_print.exit.i

bb.m:                                             ; preds = %bb.j
  br i1 %.not.i.i9.i, label %RSTRING_PTR.exit9.i10.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !46
  br label %RSTRING_PTR.exit9.i10.i

RSTRING_PTR.exit9.i10.i:                          ; preds = %bb.n, %bb.m
  %i.br = phi ptr [ %i.bq, %bb.n ], [ %i.bm, %bb.m ]
  %i.bs = inttoptr i64 %i.bg to ptr               ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !44
  %i.bu = and i64 %i.bt, 8192
  %.not.i10.i11.i = icmp eq i64 %i.bu, 0
  %i.bv = getelementptr i8, ptr %i.bs, i64 24     ; 2 uses
  br i1 %.not.i10.i11.i, label %RSTRING_PTR.exit11.i12.i, label %bb.o

bb.o:                                             ; preds = %RSTRING_PTR.exit9.i10.i
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !46
  br label %RSTRING_PTR.exit11.i12.i

RSTRING_PTR.exit11.i12.i:                         ; preds = %bb.o, %RSTRING_PTR.exit9.i10.i
  %i.bx = phi ptr [ %i.bw, %bb.o ], [ %i.bv, %RSTRING_PTR.exit9.i10.i ]
  %i.by = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef %i.br, i32 noundef %.sroa.6.0.i, ptr noundef %i.bx) #7 ; 0 uses
  br label %oldbt_print.exit.i

oldbt_print.exit.i:                               ; preds = %RSTRING_PTR.exit11.i12.i, %RSTRING_PTR.exit.i13.i, %RSTRING_PTR.exit11.i.i, %RSTRING_PTR.exit.i.i, %bb.d
  %.sroa.6.1.i = phi i32 [ %i.aj, %RSTRING_PTR.exit11.i.i ], [ %.sroa.6.0.i, %bb.d ], [ %i.aj, %RSTRING_PTR.exit.i.i ], [ %.sroa.6.0.i, %RSTRING_PTR.exit.i13.i ], [ %.sroa.6.0.i, %RSTRING_PTR.exit11.i12.i ]
  %.sroa.0.1.i = phi i64 [ %i.w, %RSTRING_PTR.exit11.i.i ], [ %.sroa.0.0.i, %bb.d ], [ %i.w, %RSTRING_PTR.exit.i.i ], [ %.sroa.0.0.i, %RSTRING_PTR.exit.i13.i ], [ %.sroa.0.0.i, %RSTRING_PTR.exit11.i12.i ]
  %i.bz = add nuw nsw i64 %.02835.i.i, 1
  %i.ca = getelementptr i8, ptr %.036.i.i, i64 -56
  %exitcond.not.i.i = icmp eq i64 %.02835.i.i, %i.o
  br i1 %exitcond.not.i.i, label %vm_backtrace_print.exit, label %.lr.ph.i.i, !llvm.loop !133

vm_backtrace_print.exit:                          ; preds = %oldbt_print.exit.i, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_backtrace_each(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !100
  %.0..0..0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !100 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71   ; 2 uses
  %.val.i = load ptr, ptr %.0..0..0..0..0..0..0..0..i, align 8, !tbaa !81
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i, i64 8
  %.val34.i = load i64, ptr %i.f, align 8, !tbaa !82
  %i.g = getelementptr [8 x i8], ptr %.val.i, i64 %.val34.i ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %backtrace_each.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.g, i64 -112     ; 3 uses
  %i.j = icmp ult ptr %i.i, %i.e
  br i1 %i.j, label %backtrace_each.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = sdiv exact i64 %i.m, 56
  %i.o = icmp sgt i64 %i.m, -56
  br i1 %i.o, label %.lr.ph.i.preheader, label %backtrace_each.exit

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.p = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !102
  %i.q = getelementptr i8, ptr %i.p, i64 1216
  %i.r = load i64, ptr %i.q, align 8, !tbaa !104
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.j
  %.sroa.6.0 = phi i32 [ %.sroa.6.1, %bb.j ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.1, %bb.j ], [ %i.r, %.lr.ph.i.preheader ] ; 4 uses
  %.036.i = phi ptr [ %i.ba, %bb.j ], [ %i.i, %.lr.ph.i.preheader ] ; 4 uses
  %.02835.i = phi i64 [ %i.az, %bb.j ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.s = getelementptr i8, ptr %.036.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18   ; 4 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = load ptr, ptr %.036.i, align 8, !tbaa !19 ; 3 uses
  %.not33.i = icmp eq ptr %i.u, null
  br i1 %.not33.i, label %bb.j, label %oldbt_iter_iseq.exit

oldbt_iter_iseq.exit:                             ; preds = %bb.d
  %i.v = tail call i64 @rb_iseq_path(ptr noundef nonnull %i.t) #7 ; 3 uses
  %i.w = getelementptr i8, ptr %i.t, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20   ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !127  ; 2 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42 ; 2 uses
  %i.ac = ptrtoint ptr %i.u to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, -1
  tail call void @llvm.assume(i1 %i.ag)
  %.not.i.i.i = icmp eq ptr %i.u, %i.ab
  %i.ah = add nsw i64 %i.af, -1
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.ah, !prof !43
  %i.ai = tail call i32 @rb_iseq_line_no(ptr noundef nonnull %i.t, i64 noundef %spec.select.i.i.i) #7 ; 3 uses
  %i.aj = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.36, i64 noundef %i.v, i32 noundef %i.ai) #7 ; 4 uses
  %i.ak = icmp eq i64 %i.z, 4
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %oldbt_iter_iseq.exit
  %i.al = tail call i64 @rb_str_cat(i64 noundef %i.aj, ptr noundef nonnull @.str.37, i64 noundef 15) #7 ; 0 uses
  br label %.sink.split

bb.f:                                             ; preds = %oldbt_iter_iseq.exit
  %i.am = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.aj, ptr noundef nonnull @.str.38, i64 noundef %i.z) #7 ; 0 uses
  br label %.sink.split

bb.g:                                             ; preds = %.lr.ph.i
  %i.an = tail call ptr @rb_vm_frame_method_entry(ptr noundef nonnull %.036.i) #7
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !128
  %i.aq = getelementptr i8, ptr %i.ap, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !131
  %i.as = tail call i64 @rb_id2str(i64 noundef %i.ar) #7 ; 2 uses
  %i.at = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.36, i64 noundef %.sroa.0.0, i32 noundef %.sroa.6.0) #7 ; 4 uses
  %i.au = and i64 %i.as, -5
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = tail call i64 @rb_str_cat(i64 noundef %i.at, ptr noundef nonnull @.str.37, i64 noundef 15) #7 ; 0 uses
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.ax = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.at, ptr noundef nonnull @.str.38, i64 noundef %i.as) #7 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %.sink = phi i64 [ %i.aj, %bb.f ], [ %i.aj, %bb.e ], [ %i.at, %bb.h ], [ %i.at, %bb.i ]
  %.sroa.6.1.ph = phi i32 [ %i.ai, %bb.f ], [ %i.ai, %bb.e ], [ %.sroa.6.0, %bb.h ], [ %.sroa.6.0, %bb.i ]
  %.sroa.0.1.ph = phi i64 [ %i.v, %bb.f ], [ %i.v, %bb.e ], [ %.sroa.0.0, %bb.h ], [ %.sroa.0.0, %bb.i ]
  %i.ay = tail call i64 %0(i64 noundef %1, i64 noundef %.sink) #7 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.d
  %.sroa.6.1 = phi i32 [ %.sroa.6.0, %bb.d ], [ %.sroa.6.1.ph, %.sink.split ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.d ], [ %.sroa.0.1.ph, %.sink.split ]
  %i.az = add nuw nsw i64 %.02835.i, 1
  %i.ba = getelementptr i8, ptr %.036.i, i64 -56
  %exitcond.not.i = icmp eq i64 %.02835.i, %i.n
  br i1 %exitcond.not.i, label %backtrace_each.exit, label %.lr.ph.i, !llvm.loop !133

backtrace_each.exit:                              ; preds = %bb.j, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_make_backtrace() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !100
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = tail call i64 @rb_ec_backtrace_str_ary(ptr noundef %.0..0..0..0..0..0..i, i64 noundef 0, i64 noundef -1)
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_thread_backtrace(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ruby_threadptr_data_type) #7 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 248
  %i.g = load i8, ptr %i.f, align 8               ; 2 uses
  %i.h = and i8 %i.g, 8
  %.not.i = icmp ne i8 %i.h, 0
  %i.i = and i8 %i.g, 3
  %i.j = icmp eq i8 %i.i, 3
  %or.cond.i = or i1 %.not.i, %i.j
  br i1 %or.cond.i, label %thread_backtrace_to_ary.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.e, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !136  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.m = call fastcc i64 @ec_backtrace_range(ptr noundef readonly %i.l, i32 noundef %0, ptr noundef readonly %1, i32 noundef 0, i32 noundef 0, ptr noundef %i.a) ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %ec_backtrace_to_ary.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i64 @rb_ary_new() #7
  br label %ec_backtrace_to_ary.exit

bb.e:                                             ; preds = %bb.c
  %i.r = call fastcc i64 @rb_ec_partial_backtrace_object(ptr noundef readonly %i.l, i64 noundef %i.m, i64 noundef %i.o, ptr noundef nonnull %i.c, i1 noundef zeroext false, i1 noundef zeroext false) ; 2 uses
  store i64 %i.r, ptr %i.b, align 8, !tbaa !17
  %i.s = load i32, ptr %i.c, align 4, !tbaa !7
  %.not.i2 = icmp eq i32 %i.s, 0
  br i1 %.not.i2, label %bb.f, label %ec_backtrace_to_ary.exit

bb.f:                                             ; preds = %bb.e
  %i.t = call fastcc i64 @backtrace_to_str_ary(i64 noundef %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store ptr %i.b, ptr %i.d, align 8, !tbaa !93
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #7, !srcloc !150
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.v = load volatile i64, ptr %i.u, align 8, !tbaa !17 ; 0 uses
  br label %ec_backtrace_to_ary.exit

ec_backtrace_to_ary.exit:                         ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i3 = phi i64 [ %i.t, %bb.f ], [ %i.q, %bb.d ], [ 4, %bb.b ], [ 4, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %thread_backtrace_to_ary.exit

thread_backtrace_to_ary.exit:                     ; preds = %bb.a, %ec_backtrace_to_ary.exit
  %.0.i = phi i64 [ %.0.i3, %ec_backtrace_to_ary.exit ], [ 4, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_thread_backtrace_locations(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ruby_threadptr_data_type) #7 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 248
  %i.g = load i8, ptr %i.f, align 8               ; 2 uses
  %i.h = and i8 %i.g, 8
  %.not.i = icmp ne i8 %i.h, 0
  %i.i = and i8 %i.g, 3
  %i.j = icmp eq i8 %i.i, 3
  %or.cond.i = or i1 %.not.i, %i.j
  br i1 %or.cond.i, label %thread_backtrace_to_ary.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.e, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !136  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.m = call fastcc i64 @ec_backtrace_range(ptr noundef readonly %i.l, i32 noundef %0, ptr noundef readonly %1, i32 noundef 0, i32 noundef 0, ptr noundef %i.a) ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %ec_backtrace_to_ary.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i64 @rb_ary_new() #7
  br label %ec_backtrace_to_ary.exit

bb.e:                                             ; preds = %bb.c
  %i.r = call fastcc i64 @rb_ec_partial_backtrace_object(ptr noundef readonly %i.l, i64 noundef %i.m, i64 noundef %i.o, ptr noundef nonnull %i.c, i1 noundef zeroext false, i1 noundef zeroext false) ; 2 uses
  store i64 %i.r, ptr %i.b, align 8, !tbaa !17
  %i.s = load i32, ptr %i.c, align 4, !tbaa !7
  %.not.i2 = icmp eq i32 %i.s, 0
  br i1 %.not.i2, label %bb.f, label %ec_backtrace_to_ary.exit

bb.f:                                             ; preds = %bb.e
  %i.t = call fastcc i64 @backtrace_to_location_ary(i64 noundef %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store ptr %i.b, ptr %i.d, align 8, !tbaa !93
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #7, !srcloc !150
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.v = load volatile i64, ptr %i.u, align 8, !tbaa !17 ; 0 uses
  br label %ec_backtrace_to_ary.exit

ec_backtrace_to_ary.exit:                         ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i3 = phi i64 [ %i.t, %bb.f ], [ %i.q, %bb.d ], [ 4, %bb.b ], [ 4, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %thread_backtrace_to_ary.exit

thread_backtrace_to_ary.exit:                     ; preds = %bb.a, %ec_backtrace_to_ary.exit
  %.0.i = phi i64 [ %.0.i3, %ec_backtrace_to_ary.exit ], [ 4, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_backtrace(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.e = call fastcc i64 @ec_backtrace_range(ptr noundef readonly %2, i32 noundef %0, ptr noundef readonly %1, i32 noundef 0, i32 noundef 0, ptr noundef %i.a) ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %ec_backtrace_to_ary.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @rb_ary_new() #7
  br label %ec_backtrace_to_ary.exit

bb.d:                                             ; preds = %bb.b
  %i.j = call fastcc i64 @rb_ec_partial_backtrace_object(ptr noundef readonly %2, i64 noundef %i.e, i64 noundef %i.g, ptr noundef nonnull %i.c, i1 noundef zeroext false, i1 noundef zeroext false) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !17
  %i.k = load i32, ptr %i.c, align 4, !tbaa !7
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.e, label %ec_backtrace_to_ary.exit

bb.e:                                             ; preds = %bb.d
  %i.l = call fastcc i64 @backtrace_to_str_ary(i64 noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store ptr %i.b, ptr %i.d, align 8, !tbaa !93
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #7, !srcloc !150
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.n = load volatile i64, ptr %i.m, align 8, !tbaa !17 ; 0 uses
  br label %ec_backtrace_to_ary.exit

ec_backtrace_to_ary.exit:                         ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.l, %bb.e ], [ %i.i, %bb.c ], [ 4, %bb.a ], [ 4, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_backtrace_locations(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.e = call fastcc i64 @ec_backtrace_range(ptr noundef readonly %2, i32 noundef %0, ptr noundef readonly %1, i32 noundef 0, i32 noundef 0, ptr noundef %i.a) ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %ec_backtrace_to_ary.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @rb_ary_new() #7
  br label %ec_backtrace_to_ary.exit

bb.d:                                             ; preds = %bb.b
  %i.j = call fastcc i64 @rb_ec_partial_backtrace_object(ptr noundef readonly %2, i64 noundef %i.e, i64 noundef %i.g, ptr noundef nonnull %i.c, i1 noundef zeroext false, i1 noundef zeroext false) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !17
  %i.k = load i32, ptr %i.c, align 4, !tbaa !7
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.e, label %ec_backtrace_to_ary.exit

bb.e:                                             ; preds = %bb.d
  %i.l = call fastcc i64 @backtrace_to_location_ary(i64 noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store ptr %i.b, ptr %i.d, align 8, !tbaa !93
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #7, !srcloc !150
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.n = load volatile i64, ptr %i.m, align 8, !tbaa !17 ; 0 uses
  br label %ec_backtrace_to_ary.exit

ec_backtrace_to_ary.exit:                         ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.l, %bb.e ], [ %i.i, %bb.c ], [ 4, %bb.a ], [ 4, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_vm_backtrace() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cThread, align 8, !tbaa !17
  %i.b = load i64, ptr @rb_cObject, align 8, !tbaa !17
  %i.c = tail call i64 @rb_define_class_under(i64 noundef %i.a, ptr noundef nonnull @.str.3, i64 noundef %i.b) #7 ; 2 uses
  store i64 %i.c, ptr @rb_cBacktrace, align 8, !tbaa !17
  tail call void @rb_define_alloc_func(i64 noundef %i.c, ptr noundef nonnull @backtrace_alloc) #7
  %i.d = load i64, ptr @rb_cBacktrace, align 8, !tbaa !17 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %i.d, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.d to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 8
  br label %rb_class_of.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.f [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.e:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.f:                                             ; preds = %bb.c
  %i.k = trunc i64 %i.d to i1
  br i1 %i.k, label %rb_class_of.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = and i64 %i.d, 254
  %i.m = icmp eq i64 %i.l, 12
  %spec.select.i = select i1 %i.m, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.in.i = phi ptr [ %i.j, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select.i, %bb.g ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !17
  tail call void @rb_undef_method(i64 noundef %.0.i, ptr noundef nonnull @.str.4) #7
  %i.n = load i64, ptr @rb_cBacktrace, align 8, !tbaa !17
  %i.o = load i64, ptr @rb_cArray, align 8, !tbaa !17
  tail call void @rb_marshal_define_compat(i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @backtrace_dump_data, ptr noundef nonnull @backtrace_load_data) #7
  %i.p = load i64, ptr @rb_cBacktrace, align 8, !tbaa !17
  tail call void @rb_define_singleton_method(i64 noundef %i.p, ptr noundef nonnull @.str.5, ptr noundef nonnull @backtrace_limit, i32 noundef 0) #7
  %i.q = load i64, ptr @rb_cBacktrace, align 8, !tbaa !17
  %i.r = load i64, ptr @rb_cObject, align 8, !tbaa !17
  %i.s = tail call i64 @rb_define_class_under(i64 noundef %i.q, ptr noundef nonnull @.str.6, i64 noundef %i.r) #7 ; 2 uses
  store i64 %i.s, ptr @rb_cBacktraceLocation, align 8, !tbaa !17
  tail call void @rb_undef_alloc_func(i64 noundef %i.s) #7
  %i.t = load i64, ptr @rb_cBacktraceLocation, align 8, !tbaa !17 ; 6 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = and i64 %i.t, 7
  %i.w = icmp ne i64 %i.v, 0
  %i.x = or i1 %i.u, %i.w
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %rb_class_of.exit
  %i.y = inttoptr i64 %i.t to ptr
  %i.z = getelementptr i8, ptr %i.y, i64 8
  br label %rb_class_of.exit4

bb.i:                                             ; preds = %rb_class_of.exit
  switch i64 %i.t, label %bb.l [
    i64 0, label %rb_class_of.exit4
    i64 4, label %bb.j
    i64 20, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %rb_class_of.exit4

bb.k:                                             ; preds = %bb.i
  br label %rb_class_of.exit4

bb.l:                                             ; preds = %bb.i
  %i.aa = trunc i64 %i.t to i1
  br i1 %i.aa, label %rb_class_of.exit4, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = and i64 %i.t, 254
  %i.ac = icmp eq i64 %i.ab, 12
  %spec.select.i3 = select i1 %i.ac, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit4

rb_class_of.exit4:                                ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.in.i1 = phi ptr [ %i.z, %bb.h ], [ @rb_cNilClass, %bb.j ], [ @rb_cTrueClass, %bb.k ], [ @rb_cFalseClass, %bb.i ], [ @rb_cInteger, %bb.l ], [ %spec.select.i3, %bb.m ]
  %.0.i2 = load i64, ptr %.0.in.i1, align 8, !tbaa !17
  tail call void @rb_undef_method(i64 noundef %.0.i2, ptr noundef nonnull @.str.4) #7
  %i.ad = load i64, ptr @rb_cBacktraceLocation, align 8, !tbaa !17
  tail call void @rb_define_method(i64 noundef %i.ad, ptr noundef nonnull @.str.7, ptr noundef nonnull @location_lineno_m, i32 noundef 0) #7
  %i.ae = load i64, ptr @rb_cBacktraceLocation, align 8, !tbaa !17
  tail call void @rb_define_method(i64 noundef %i.ae, ptr noundef nonnull @.str.8, ptr noundef nonnull @location_label_m, i32 noundef 0) #7
  %i.af = load i64, ptr @rb_cBacktraceLocation, align 8, !tbaa !17
  tail call void @rb_define_method(i64 noundef %i.af, ptr noundef nonnull @.str.9, ptr noundef nonnull @location_base_label_m, i32 noundef 0) #7
  %i.ag = load i64, ptr @rb_cBacktraceLocation, align 8, !tbaa !17
  tail call void @rb_define_method(i64 noundef %i.ag, ptr noundef nonnull @.str.10, ptr noundef nonnull @location_path_m, i32 noundef 0) #7
  %i.ah = load i64, ptr @rb_cBacktraceLocation, align 8, !tbaa !17
  tail call void @rb_define_method(i64 noundef %i.ah, ptr noundef nonnull @.str.11, ptr noundef nonnull @location_absolute_path_m, i32 noundef 0) #7
  %i.ai = load i64, ptr @rb_cBacktraceLocation, align 8, !tbaa !17
  tail call void @rb_define_method(i64 noundef %i.ai, ptr noundef nonnull @.str.12, ptr noundef nonnull @location_to_str_m, i32 noundef 0) #7
  %i.aj = load i64, ptr @rb_cBacktraceLocation, align 8, !tbaa !17
  tail call void @rb_define_method(i64 noundef %i.aj, ptr noundef nonnull @.str.13, ptr noundef nonnull @location_inspect_m, i32 noundef 0) #7
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.14, ptr noundef nonnull @rb_f_caller, i32 noundef -1) #7
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.15, ptr noundef nonnull @rb_f_caller_locations, i32 noundef -1) #7
  %i.ak = load i64, ptr @rb_cThread, align 8, !tbaa !17
  tail call void @rb_define_singleton_method(i64 noundef %i.ak, ptr noundef nonnull @.str.16, ptr noundef nonnull @each_caller_location, i32 noundef -1) #7
  ret void
}

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_define_alloc_func(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @backtrace_alloc(i64 noundef %0) #0 {
RTYPEDDATA_GET_DATA.exit:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %0, i64 noundef 48, ptr noundef nonnull @backtrace_data_type) #7
  ret i64 %i.a
}

declare void @rb_undef_method(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @rb_marshal_define_compat(i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @backtrace_dump_data(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !50

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !51

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
end_hunk_2
begin_hunk_3_@location_path_m:bb.a

location_ptr.exit:                                ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = load ptr, ptr %.1.i.i, align 8, !tbaa !63
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val = load ptr, ptr %i.v, align 8, !tbaa !66  ; 2 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %location_ptr.exit
  %i.w = tail call i64 @rb_iseq_path(ptr noundef nonnull %.val) #7
  br label %bb.f

bb.f:                                             ; preds = %location_ptr.exit, %bb.e
  %i.x = phi i64 [ %i.w, %bb.e ], [ 4, %location_ptr.exit ]
  ret i64 %i.x
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @location_absolute_path_m(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !50

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !51

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @location_data_type to i64)
  br i1 %i.p, label %location_ptr.exit, label %.preheader.i.i, !prof !55

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56   ; 2 uses
  %i.s = icmp eq ptr %i.r, @location_data_type
  br i1 %i.s, label %location_ptr.exit, label %.preheader.i.i, !llvm.loop !61

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @location_data_type) #7
  br label %location_ptr.exit

location_ptr.exit:                                ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = load ptr, ptr %.1.i.i, align 8, !tbaa !63
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val = load ptr, ptr %i.v, align 8, !tbaa !66  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %location_realpath.exit, label %bb.e

bb.e:                                             ; preds = %location_ptr.exit
  %i.w = tail call i64 @rb_iseq_realpath(ptr noundef nonnull %.val) #7
  br label %location_realpath.exit

location_realpath.exit:                           ; preds = %location_ptr.exit, %bb.e
  %.0.i = phi i64 [ %i.w, %bb.e ], [ 4, %location_ptr.exit ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @location_to_str_m(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !50

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !51

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @location_data_type to i64)
  br i1 %i.p, label %location_ptr.exit, label %.preheader.i.i, !prof !55

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56   ; 2 uses
  %i.s = icmp eq ptr %i.r, @location_data_type
  br i1 %i.s, label %location_ptr.exit, label %.preheader.i.i, !llvm.loop !61

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @location_data_type) #7
  br label %location_ptr.exit

location_ptr.exit:                                ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = load ptr, ptr %.1.i.i, align 8, !tbaa !63
  %i.v = tail call fastcc i64 @location_to_str(ptr noundef %i.u)
  ret i64 %i.v
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @location_inspect_m(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !50

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !51

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @location_data_type to i64)
  br i1 %i.p, label %location_ptr.exit, label %.preheader.i.i, !prof !55

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56   ; 2 uses
  %i.s = icmp eq ptr %i.r, @location_data_type
  br i1 %i.s, label %location_ptr.exit, label %.preheader.i.i, !llvm.loop !61

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @location_data_type) #7
  br label %location_ptr.exit

location_ptr.exit:                                ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = load ptr, ptr %.1.i.i, align 8, !tbaa !63
  %i.v = tail call fastcc i64 @location_to_str(ptr noundef %i.u)
  %i.w = tail call i64 @rb_str_inspect(i64 noundef %i.v) #7
  ret i64 %i.w
}

declare extern_weak void @rb_define_global_function(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_f_caller(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100
  store volatile ptr %i.g, ptr %i.e, align 8, !tbaa !100
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.e, align 8, !tbaa !100 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.h = call fastcc i64 @ec_backtrace_range(ptr noundef readonly %.0..0..0..0..0..0..i, i32 noundef %0, ptr noundef readonly %1, i32 noundef 1, i32 noundef 1, ptr noundef %i.a) ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %ec_backtrace_to_ary.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i64 @rb_ary_new() #7
  br label %ec_backtrace_to_ary.exit

bb.d:                                             ; preds = %bb.b
  %i.m = call fastcc i64 @rb_ec_partial_backtrace_object(ptr noundef readonly %.0..0..0..0..0..0..i, i64 noundef %i.h, i64 noundef %i.j, ptr noundef nonnull %i.c, i1 noundef zeroext false, i1 noundef zeroext false) ; 2 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !17
  %i.n = load i32, ptr %i.c, align 4, !tbaa !7
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.e, label %ec_backtrace_to_ary.exit

bb.e:                                             ; preds = %bb.d
  %i.o = call fastcc i64 @backtrace_to_str_ary(i64 noundef %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store ptr %i.b, ptr %i.d, align 8, !tbaa !93
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #7, !srcloc !150
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.q = load volatile i64, ptr %i.p, align 8, !tbaa !17 ; 0 uses
  br label %ec_backtrace_to_ary.exit

ec_backtrace_to_ary.exit:                         ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.o, %bb.e ], [ %i.l, %bb.c ], [ 4, %bb.a ], [ 4, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_f_caller_locations(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100
  store volatile ptr %i.g, ptr %i.e, align 8, !tbaa !100
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.e, align 8, !tbaa !100 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.h = call fastcc i64 @ec_backtrace_range(ptr noundef readonly %.0..0..0..0..0..0..i, i32 noundef %0, ptr noundef readonly %1, i32 noundef 1, i32 noundef 1, ptr noundef %i.a) ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %ec_backtrace_to_ary.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i64 @rb_ary_new() #7
  br label %ec_backtrace_to_ary.exit

bb.d:                                             ; preds = %bb.b
  %i.m = call fastcc i64 @rb_ec_partial_backtrace_object(ptr noundef readonly %.0..0..0..0..0..0..i, i64 noundef %i.h, i64 noundef %i.j, ptr noundef nonnull %i.c, i1 noundef zeroext false, i1 noundef zeroext false) ; 2 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !17
  %i.n = load i32, ptr %i.c, align 4, !tbaa !7
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.e, label %ec_backtrace_to_ary.exit

bb.e:                                             ; preds = %bb.d
  %i.o = call fastcc i64 @backtrace_to_location_ary(i64 noundef %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store ptr %i.b, ptr %i.d, align 8, !tbaa !93
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #7, !srcloc !150
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.q = load volatile i64, ptr %i.p, align 8, !tbaa !17 ; 0 uses
  br label %ec_backtrace_to_ary.exit

ec_backtrace_to_ary.exit:                         ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.o, %bb.e ], [ %i.l, %bb.c ], [ 4, %bb.a ], [ 4, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @each_caller_location(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !100
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !100 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.e = call fastcc i64 @ec_backtrace_range(ptr noundef %.0..0..0..0..0..0..i, i32 noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 1, ptr noundef %i.b) ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1
  %i.g = load i64, ptr %i.b, align 8              ; 2 uses
  %i.h = icmp ne i64 %i.g, 0
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call fastcc i64 @rb_ec_partial_backtrace_object(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %i.e, i64 noundef %i.g, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_debug_inspector_open(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.rb_debug_inspector_struct, align 8 ; 7 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %struct.rb_vm_tag, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100
  store volatile ptr %i.g, ptr %i.c, align 8, !tbaa !100
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.c, align 8, !tbaa !100 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @rb_vm_stack_to_heap(ptr noundef %.0..0..0..0..0..0..i) #7
  store ptr %.0..0..0..0..0..0..i, ptr %2, align 8, !tbaa !153
  %i.h = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !155
  %i.k = tail call i64 @rb_ary_new() #7           ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !71   ; 2 uses
  %.val.i.i = load ptr, ptr %.0..0..0..0..0..0..i, align 8, !tbaa !81
  %i.m = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 8 ; 2 uses
  %.val34.i.i = load i64, ptr %i.m, align 8, !tbaa !82
  %i.n = getelementptr [8 x i8], ptr %.val.i.i, i64 %.val34.i.i ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.loopexit.sink.split.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %i.n, i64 -112     ; 3 uses
  %i.q = icmp ult ptr %i.p, %i.l
  br i1 %i.q, label %.loopexit.sink.split.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = sdiv exact i64 %i.t, 56                  ; 2 uses
  %i.v = mul nsw i64 %i.u, 24
  %i.w = add nsw i64 %i.v, 48
  %i.x = load i64, ptr @rb_cBacktrace, align 8, !tbaa !17
  %i.y = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.x, i64 noundef %i.w, ptr noundef nonnull @backtrace_data_type) #7 ; 11 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = and i64 %i.y, 7
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = or i1 %i.z, %i.ab                       ; 3 uses
  br i1 %i.ac, label %.critedge.i.i.i27.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i25.i, !prof !50

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i25.i:         ; preds = %bb.c
  %i.ad = inttoptr i64 %i.y to ptr                ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !44
  %i.af = and i64 %i.ae, 95
  %or.cond.not.i.i.i26.i = icmp eq i64 %i.af, 76
  br i1 %or.cond.not.i.i.i26.i, label %bb.d, label %.critedge.i.i.i27.i, !prof !51

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i25.i
  %i.ag = getelementptr i8, ptr %i.ad, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !52 ; 2 uses
  %i.ai = and i64 %i.ah, -2                       ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = trunc i64 %i.ah to i1
  %i.al = getelementptr i8, ptr %i.ad, i64 32     ; 2 uses
  br i1 %i.ak, label %RTYPEDDATA_GET_DATA.exit.i.i.i29.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i29.i

RTYPEDDATA_GET_DATA.exit.i.i.i29.i:               ; preds = %bb.e, %bb.d
  %i.an = phi ptr [ %i.am, %bb.e ], [ %i.al, %bb.d ] ; 2 uses
  %i.ao = icmp eq i64 %i.ai, ptrtoint (ptr @backtrace_data_type to i64)
  br i1 %i.ao, label %collect_caller_bindings_init.exit33.i, label %.preheader.i.i.i30.i, !prof !55

.preheader.i.i.i30.i:                             ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i29.i, %bb.f
  %.016.i.i.i31.i = phi ptr [ %i.aq, %bb.f ], [ %i.aj, %RTYPEDDATA_GET_DATA.exit.i.i.i29.i ] ; 2 uses
  %.not.i.i.i32.i = icmp eq ptr %.016.i.i.i31.i, null
  br i1 %.not.i.i.i32.i, label %.critedge.i.i.i27.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i.i30.i
  %i.ap = getelementptr i8, ptr %.016.i.i.i31.i, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !56 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, @backtrace_data_type
  br i1 %i.ar, label %collect_caller_bindings_init.exit33.i, label %.preheader.i.i.i30.i, !llvm.loop !61

.critedge.i.i.i27.i:                              ; preds = %.preheader.i.i.i30.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i25.i, %bb.c
  %i.as = tail call ptr @rb_check_typeddata(i64 noundef %i.y, ptr noundef nonnull @backtrace_data_type) #7
  br label %collect_caller_bindings_init.exit33.i

collect_caller_bindings_init.exit33.i:            ; preds = %bb.f, %.critedge.i.i.i27.i, %RTYPEDDATA_GET_DATA.exit.i.i.i29.i
  %.1.i.i.i28.i = phi ptr [ %i.as, %.critedge.i.i.i27.i ], [ %i.an, %RTYPEDDATA_GET_DATA.exit.i.i.i29.i ], [ %i.an, %bb.f ] ; 5 uses
  %i.at = icmp sgt i64 %i.t, -56
  br i1 %i.at, label %.lr.ph.i.preheader.i, label %backtrace_each.exit.i

.lr.ph.i.preheader.i:                             ; preds = %collect_caller_bindings_init.exit33.i
  %i.au = getelementptr i8, ptr %.1.i.i.i28.i, i64 24 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %.lr.ph.i.preheader.i
  %.036.i.i = phi ptr [ %i.ep, %bb.u ], [ %i.p, %.lr.ph.i.preheader.i ] ; 13 uses
  %.02835.i.i = phi i64 [ %i.eo, %bb.u ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.av = getelementptr i8, ptr %.036.i.i, i64 16 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %bb.o, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ax = load ptr, ptr %.036.i.i, align 8, !tbaa !19
  %.not33.i.i = icmp eq ptr %i.ax, null
  br i1 %.not33.i.i, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = call i64 @rb_ary_new_capa(i64 noundef 6) #7 ; 7 uses
  %i.az = getelementptr i8, ptr %.036.i.i, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !156
  call void @rb_ary_store(i64 noundef %i.ay, i64 noundef 0, i64 noundef %i.ba) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.bb = call i32 @rb_vm_control_frame_id_and_class(ptr noundef nonnull %.036.i.i, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a) #7
  %.not.i.i16.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i16.i, label %get_klass.exit.i18.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !17  ; 5 uses
  %i.bd = icmp eq i64 %i.bc, 0
  %i.be = and i64 %i.bc, 7
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = or i1 %i.bd, %i.bf
  br i1 %i.bg, label %get_klass.exit.i18.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i17.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i17.i:           ; preds = %bb.i
  %i.bh = inttoptr i64 %i.bc to ptr               ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !44
  %i.bj = and i64 %i.bi, 31
  %i.bk = icmp eq i64 %i.bj, 28
  br i1 %i.bk, label %bb.j, label %get_klass.exit.i18.i

bb.j:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i17.i
  %i.bl = getelementptr i8, ptr %i.bh, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !157
  br label %get_klass.exit.i18.i

get_klass.exit.i18.i:                             ; preds = %bb.j, %rbimpl_RB_TYPE_P_fastpath.exit.i.i17.i, %bb.i, %bb.h
  %.0.i.i19.i = phi i64 [ %i.bm, %bb.j ], [ %i.bc, %rbimpl_RB_TYPE_P_fastpath.exit.i.i17.i ], [ 4, %bb.h ], [ %i.bc, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @rb_ary_store(i64 noundef %i.ay, i64 noundef 1, i64 noundef %.0.i.i19.i) #7
  %i.bn = ptrtoint ptr %.036.i.i to i64           ; 2 uses
  %i.bo = or i64 %i.bn, 1                         ; 2 uses
  call void @rb_ary_store(i64 noundef %i.ay, i64 noundef 2, i64 noundef %i.bo) #7
  %i.bp = load ptr, ptr %i.av, align 8, !tbaa !18 ; 2 uses
  %.not.i20.i = icmp eq ptr %i.bp, null
  %i.bq = ptrtoint ptr %i.bp to i64
  %spec.select.i.i = select i1 %.not.i20.i, i64 4, i64 %i.bq
  call void @rb_ary_store(i64 noundef %i.ay, i64 noundef 3, i64 noundef %spec.select.i.i) #7
  call void @rb_ary_store(i64 noundef %i.ay, i64 noundef 4, i64 noundef %i.bo) #7
  %i.br = load i32, ptr %.1.i.i.i28.i, align 8, !tbaa !83 ; 2 uses
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %.1.i.i.i28.i, align 8, !tbaa !83
  %i.bt = sext i32 %i.br to i64
  %i.bu = getelementptr [24 x i8], ptr %i.au, i64 %i.bt ; 4 uses
  %i.bv = call ptr @rb_vm_frame_method_entry(ptr noundef nonnull %.036.i.i) #7 ; 2 uses
  %i.bw = ptrtoint ptr %i.bv to i64               ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !17
  %i.bx = icmp eq ptr %i.bv, null
  %i.by = and i64 %i.bw, 7
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = or i1 %i.bx, %i.bz
  br i1 %i.ca, label %rb_obj_write.exit.i21.i, label %bb.k

bb.k:                                             ; preds = %get_klass.exit.i18.i
  call void @rb_gc_writebarrier(i64 noundef %i.y, i64 noundef %i.bw) #7
  br label %rb_obj_write.exit.i21.i

rb_obj_write.exit.i21.i:                          ; preds = %bb.k, %get_klass.exit.i18.i
  %i.cb = getelementptr i8, ptr %i.bu, i64 8
  %i.cc = load ptr, ptr %i.av, align 8, !tbaa !18 ; 2 uses
  %i.cd = ptrtoint ptr %i.cc to i64               ; 3 uses
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !17
  %i.ce = icmp eq ptr %i.cc, null
  %i.cf = and i64 %i.cd, 7
  %i.cg = icmp ne i64 %i.cf, 0
  %i.ch = or i1 %i.ce, %i.cg
  br i1 %i.ch, label %rb_obj_write.exit31.i.i, label %bb.l

bb.l:                                             ; preds = %rb_obj_write.exit.i21.i
  call void @rb_gc_writebarrier(i64 noundef %i.y, i64 noundef %i.cd) #7
  br label %rb_obj_write.exit31.i.i

rb_obj_write.exit31.i.i:                          ; preds = %bb.l, %rb_obj_write.exit.i21.i
  %i.ci = load ptr, ptr %.036.i.i, align 8, !tbaa !19
  %i.cj = getelementptr i8, ptr %i.bu, i64 16
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !69
  %i.ck = load i64, ptr @rb_cBacktraceLocation, align 8, !tbaa !17
  %i.cl = call i64 @rb_data_typed_object_zalloc(i64 noundef %i.ck, i64 noundef 16, ptr noundef nonnull @location_data_type) #7 ; 3 uses
  %i.cm = inttoptr i64 %i.cl to ptr               ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !52
  %i.cp = trunc i64 %i.co to i1
  %i.cq = getelementptr i8, ptr %i.cm, i64 32     ; 2 uses
end_hunk_3
begin_hunk_4_@rb_debug_inspector_open:bb.a
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !17
  %i.ds = icmp eq ptr %i.dq, null
  %i.dt = and i64 %i.dr, 7
  %i.du = icmp ne i64 %i.dt, 0
  %i.dv = or i1 %i.ds, %i.du
  br i1 %i.dv, label %rb_obj_write.exit.i.i, label %bb.r

bb.r:                                             ; preds = %get_klass.exit.i.i
  call void @rb_gc_writebarrier(i64 noundef %i.y, i64 noundef %i.dr) #7
  br label %rb_obj_write.exit.i.i

rb_obj_write.exit.i.i:                            ; preds = %bb.r, %get_klass.exit.i.i
  %i.dw = getelementptr i8, ptr %i.dp, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i8 0, i64 16, i1 false)
  %i.dx = load i64, ptr @rb_cBacktraceLocation, align 8, !tbaa !17
  %i.dy = call i64 @rb_data_typed_object_zalloc(i64 noundef %i.dx, i64 noundef 16, ptr noundef nonnull @location_data_type) #7 ; 3 uses
  %i.dz = inttoptr i64 %i.dy to ptr               ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !52
  %i.ec = trunc i64 %i.eb to i1
  %i.ed = getelementptr i8, ptr %i.dz, i64 32     ; 2 uses
  br i1 %i.ec, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %rb_obj_write.exit.i.i
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.s, %rb_obj_write.exit.i.i
  %i.ef = phi ptr [ %i.ee, %bb.s ], [ %i.ed, %rb_obj_write.exit.i.i ] ; 2 uses
  store ptr %i.dp, ptr %i.ef, align 8, !tbaa !63
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  store i64 %i.y, ptr %i.eg, align 8, !tbaa !17
  br i1 %i.ac, label %collect_caller_bindings_cfunc.exit.i, label %bb.t

bb.t:                                             ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i
  call void @rb_gc_writebarrier(i64 noundef %i.dy, i64 noundef %i.y) #7
  br label %collect_caller_bindings_cfunc.exit.i

collect_caller_bindings_cfunc.exit.i:             ; preds = %bb.t, %RTYPEDDATA_GET_DATA.exit.i.i.i
  call void @rb_ary_store(i64 noundef %i.cv, i64 noundef 5, i64 noundef %i.dy) #7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %collect_caller_bindings_cfunc.exit.i, %collect_caller_bindings_iseq.exit.i
  %.sink62.i = phi i64 [ %i.dk, %collect_caller_bindings_cfunc.exit.i ], [ %i.bn, %collect_caller_bindings_iseq.exit.i ]
  %.sink56.i = phi i64 [ %i.cv, %collect_caller_bindings_cfunc.exit.i ], [ %i.ay, %collect_caller_bindings_iseq.exit.i ] ; 2 uses
  %.val.i15.i = load ptr, ptr %.0..0..0..0..0..0..i, align 8, !tbaa !81
  %.val24.i.i = load i64, ptr %i.m, align 8, !tbaa !82
  %i.eh = getelementptr [8 x i8], ptr %.val.i15.i, i64 %.val24.i.i
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %.sink62.i
  %i.ek = sdiv exact i64 %i.ej, 56
  %sext.i.i = shl i64 %i.ek, 32
  %i.el = ashr exact i64 %sext.i.i, 31
  %i.em = or disjoint i64 %i.el, 1
  call void @rb_ary_store(i64 noundef %.sink56.i, i64 noundef 6, i64 noundef %i.em) #7
  %i.en = call i64 @rb_ary_push(i64 noundef %i.k, i64 noundef %.sink56.i) #7 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %.sink.split.i, %bb.g
  %i.eo = add nuw nsw i64 %.02835.i.i, 1
  %i.ep = getelementptr i8, ptr %.036.i.i, i64 -56
  %exitcond.not.i.i = icmp eq i64 %.02835.i.i, %i.u
  br i1 %exitcond.not.i.i, label %backtrace_each.exit.i, label %.lr.ph.i.i, !llvm.loop !133

.loopexit.sink.split.i.i:                         ; preds = %bb.b, %bb.a
  %i.eq = load i64, ptr @rb_cBacktrace, align 8, !tbaa !17
  %i.er = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.eq, i64 noundef 24, ptr noundef nonnull @backtrace_data_type) #7 ; 4 uses
  %i.es = icmp eq i64 %i.er, 0
  %i.et = and i64 %i.er, 7
  %i.eu = icmp ne i64 %i.et, 0
  %i.ev = or i1 %i.es, %i.eu
  br i1 %i.ev, label %.critedge.i.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, !prof !50

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i:           ; preds = %.loopexit.sink.split.i.i
  %i.ew = inttoptr i64 %i.er to ptr               ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !44
  %i.ey = and i64 %i.ex, 95
  %or.cond.not.i.i.i.i = icmp eq i64 %i.ey, 76
  br i1 %or.cond.not.i.i.i.i, label %RTYPEDDATA_GET_DATA.exit.i.i.i.i, label %.critedge.i.i.i.i, !prof !51

RTYPEDDATA_GET_DATA.exit.i.i.i.i:                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i
  %i.ez = getelementptr i8, ptr %i.ew, i64 24
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !52
  %i.fb = and i64 %i.fa, -2                       ; 2 uses
  %i.fc = icmp eq i64 %i.fb, ptrtoint (ptr @backtrace_data_type to i64)
  br i1 %i.fc, label %backtrace_each.exit.i, label %.preheader.i.i.i.preheader.i, !prof !55

.preheader.i.i.i.preheader.i:                     ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i.i
  %i.fd = inttoptr i64 %i.fb to ptr
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.v, %.preheader.i.i.i.preheader.i
  %.016.i.i.i.i = phi ptr [ %i.ff, %bb.v ], [ %i.fd, %.preheader.i.i.i.preheader.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.016.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.preheader.i.i.i.i
  %i.fe = getelementptr i8, ptr %.016.i.i.i.i, i64 48
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !56 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, @backtrace_data_type
  br i1 %i.fg, label %backtrace_each.exit.i, label %.preheader.i.i.i.i, !llvm.loop !61

.critedge.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, %.loopexit.sink.split.i.i
  %i.fh = tail call ptr @rb_check_typeddata(i64 noundef %i.er, ptr noundef nonnull @backtrace_data_type) #7 ; 0 uses
  br label %backtrace_each.exit.i

backtrace_each.exit.i:                            ; preds = %bb.u, %bb.v, %.critedge.i.i.i.i, %RTYPEDDATA_GET_DATA.exit.i.i.i.i, %collect_caller_bindings_init.exit33.i
  %i.fi = call i64 @rb_ary_reverse(i64 noundef %i.k) #7 ; 4 uses
  %i.fj = inttoptr i64 %i.fi to ptr               ; 3 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 16     ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %backtrace_each.exit.i
  %.0.i = phi i32 [ 0, %backtrace_each.exit.i ], [ %i.fy, %bb.ab ] ; 2 uses
  %i.fl = sext i32 %.0.i to i64                   ; 2 uses
  %i.fm = load i64, ptr %i.fj, align 8, !tbaa !44 ; 2 uses
  %i.fn = and i64 %i.fm, 8192
  %.not.i14.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i14.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fo = lshr i64 %i.fm, 15
  %i.fp = and i64 %i.fo, 127
  br label %rb_array_len.exit.i

bb.y:                                             ; preds = %bb.w
  %i.fq = load i64, ptr %i.fk, align 8, !tbaa !46
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.y, %bb.x
  %.0.i.i = phi i64 [ %i.fp, %bb.x ], [ %i.fq, %bb.y ]
  %i.fr = icmp sgt i64 %.0.i.i, %i.fl
  br i1 %i.fr, label %bb.z, label %collect_caller_bindings.exit

bb.z:                                             ; preds = %rb_array_len.exit.i
  %i.fs = call i64 @rb_ary_entry(i64 noundef %i.fi, i64 noundef %i.fl) #19 ; 2 uses
  %i.ft = call i64 @rb_ary_entry(i64 noundef %i.fs, i64 noundef 2) #19 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 4
  br i1 %i.fu, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fv = and i64 %i.ft, -4
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = call i64 @rb_vm_make_binding(ptr noundef nonnull %.0..0..0..0..0..0..i, ptr noundef %i.fw) #7
  call void @rb_ary_store(i64 noundef %i.fs, i64 noundef 2, i64 noundef %i.fx) #7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fy = add i32 %.0.i, 1
  br label %bb.w, !llvm.loop !158

collect_caller_bindings.exit:                     ; preds = %rb_array_len.exit.i
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.fi, ptr %i.fz, align 8, !tbaa !159
  %i.ga = call i64 @rb_ary_new() #7               ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !160
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %collect_caller_bindings.exit
  %.0 = phi i32 [ 0, %collect_caller_bindings.exit ], [ %i.gm, %bb.af ] ; 2 uses
  %i.gc = sext i32 %.0 to i64                     ; 2 uses
  %i.gd = load i64, ptr %i.fj, align 8, !tbaa !44 ; 2 uses
  %i.ge = and i64 %i.gd, 8192
  %.not.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gf = lshr i64 %i.gd, 15
  %i.gg = and i64 %i.gf, 127
  br label %rb_array_len.exit

bb.ae:                                            ; preds = %bb.ac
  %i.gh = load i64, ptr %i.fk, align 8, !tbaa !46
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.ad, %bb.ae
  %.0.i21 = phi i64 [ %i.gg, %bb.ad ], [ %i.gh, %bb.ae ]
  %i.gi = icmp sgt i64 %.0.i21, %i.gc
  br i1 %i.gi, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %rb_array_len.exit
  %i.gj = call i64 @rb_ary_entry(i64 noundef %i.fi, i64 noundef %i.gc) #19
  %i.gk = call i64 @rb_ary_entry(i64 noundef %i.gj, i64 noundef 5) #19
  %i.gl = call i64 @rb_ary_push(i64 noundef %i.ga, i64 noundef %i.gk) #7 ; 0 uses
  %i.gm = add i32 %.0, 1
  br label %bb.ac, !llvm.loop !161

bb.ag:                                            ; preds = %rb_array_len.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.0..0..0..0..0..0..i, ptr %i.e, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %i.gn, align 8, !tbaa !162
  store i64 36, ptr %3, align 8, !tbaa !164
  %i.go = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24 ; 4 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !165
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !166
  %i.gr = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.0.1.val.a = load ptr, ptr %i.gr, align 8, !tbaa !167 ; 3 uses
  %.not.i.i22 = icmp eq ptr %.0.1.val.a, null
  br i1 %.not.i.i22, label %rb_ec_ractor_ptr.exit.i, label %4

4:                                                ; preds = %bb.ag
  %5 = getelementptr i8, ptr %.0.1.val.a, i64 32
  %6 = load ptr, ptr %5, align 8, !tbaa !168
  %7 = getelementptr i8, ptr %.0.1.val.a, i64 24
  %8 = load ptr, ptr %7, align 8, !tbaa !169
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %4, %bb.ag
  %.0.i2.i = phi ptr [ %6, %4 ], [ null, %bb.ag ] ; 2 uses
  %.0.i7.i = phi ptr [ %8, %4 ], [ null, %bb.ag ]
  %9 = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %9, align 8, !tbaa !170
  %10 = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %10, label %bb.ah, label %rb_ec_vm_lock_rec.exit

bb.ah:                                            ; preds = %rb_ec_ractor_ptr.exit.i
  %i.gs = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !171
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.ah
  %.0.i23 = phi i32 [ %i.gt, %bb.ah ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %.0.i23, ptr %i.gu, align 4, !tbaa !172
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gw = call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.gw, ptr %i.gv, align 8
  %i.gx = call ptr @llvm.stacksave.p0()
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.gx, ptr %i.gy, align 8
  %i.gz = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.gv)
  %.not = icmp eq i32 %i.gz, 0
  br i1 %.not, label %bb.aj, label %bb.ai, !prof !55

bb.ai:                                            ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.e, align 8, !tbaa !100
  %i.ha = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  %i.hb = load ptr, ptr %i.gq, align 8, !tbaa !166 ; 3 uses
  store ptr %i.hb, ptr %i.go, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.hc = getelementptr i8, ptr %i.hb, i64 64
  store i32 %i.ha, ptr %i.hc, align 8, !tbaa !162
  %i.hd = getelementptr i8, ptr %i.hb, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.hd)
  unreachable

bb.aj:                                            ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %3, ptr %i.go, align 8, !tbaa !165
  %i.he = call i64 %0(ptr noundef nonnull %2, ptr noundef %1) #7
  store volatile i64 %i.he, ptr %i.d, align 8, !tbaa !17
  %i.hf = load ptr, ptr %i.gq, align 8, !tbaa !166
  store ptr %i.hf, ptr %i.go, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.0..0..0..0.8 = load volatile i64, ptr %i.d, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i64 %.0..0..0..0.8
}

declare void @rb_vm_stack_to_heap(ptr noundef) local_unnamed_addr #2

declare i64 @rb_ary_new() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #2

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64       ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !162  ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !162
  %i.e = getelementptr i8, ptr %i.b, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !172  ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 48
  %.val.i.a = load ptr, ptr %i.g, align 8, !tbaa !167 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val.i.a, null
  br i1 %.not.i.i.i, label %rb_ec_ractor_ptr.exit.i.i, label %1

1:                                                ; preds = %bb.a
  %2 = getelementptr i8, ptr %.val.i.a, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !168
  %4 = getelementptr i8, ptr %.val.i.a, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !169
  br label %rb_ec_ractor_ptr.exit.i.i

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %1, %bb.a
  %.0.i2.i.i = phi ptr [ %3, %1 ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i.i = phi ptr [ %5, %1 ], [ null, %bb.a ]
  %6 = getelementptr i8, ptr %.0.i2.i.i, i64 88
  %.val5.i.i = load ptr, ptr %6, align 8, !tbaa !170
  %7 = icmp eq ptr %.val5.i.i, %.0.i7.i.i
  br i1 %7, label %bb.b, label %rb_ec_vm_lock_rec.exit.i

bb.b:                                             ; preds = %rb_ec_ractor_ptr.exit.i.i
  %i.h = getelementptr i8, ptr %.0.i2.i.i, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !171
  br label %rb_ec_vm_lock_rec.exit.i

rb_ec_vm_lock_rec.exit.i:                         ; preds = %bb.b, %rb_ec_ractor_ptr.exit.i.i
  %.0.i.i = phi i32 [ %i.i, %bb.b ], [ 0, %rb_ec_ractor_ptr.exit.i.i ] ; 2 uses
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
define dso_local i64 @rb_debug_inspector_frame_self_get(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.e, 15
  %i.h = and i64 %i.g, 127
  br label %rb_array_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %.not.i = icmp slt i64 %1, %.0.i.i
  br i1 %.not.i, label %frame_get.exit, label %bb.e

bb.e:                                             ; preds = %rb_array_len.exit.i, %bb.a
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.42) #17
  unreachable

frame_get.exit:                                   ; preds = %rb_array_len.exit.i
  %i.l = tail call i64 @rb_ary_entry(i64 noundef %i.c, i64 noundef %1) #19
  %i.m = tail call i64 @rb_ary_entry(i64 noundef %i.l, i64 noundef 0) #19
  ret i64 %i.m
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_debug_inspector_frame_class_get(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.e, 15
  %i.h = and i64 %i.g, 127
  br label %rb_array_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %.not.i = icmp slt i64 %1, %.0.i.i
  br i1 %.not.i, label %frame_get.exit, label %bb.e

bb.e:                                             ; preds = %rb_array_len.exit.i, %bb.a
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.42) #17
  unreachable

frame_get.exit:                                   ; preds = %rb_array_len.exit.i
  %i.l = tail call i64 @rb_ary_entry(i64 noundef %i.c, i64 noundef %1) #19
  %i.m = tail call i64 @rb_ary_entry(i64 noundef %i.l, i64 noundef 1) #19
  ret i64 %i.m
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_debug_inspector_frame_binding_get(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.e, 15
  %i.h = and i64 %i.g, 127
  br label %rb_array_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %.not.i = icmp slt i64 %1, %.0.i.i
  br i1 %.not.i, label %frame_get.exit, label %bb.e

bb.e:                                             ; preds = %rb_array_len.exit.i, %bb.a
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.42) #17
  unreachable

frame_get.exit:                                   ; preds = %rb_array_len.exit.i
  %i.l = tail call i64 @rb_ary_entry(i64 noundef %i.c, i64 noundef %1) #19
  %i.m = tail call i64 @rb_ary_entry(i64 noundef %i.l, i64 noundef 2) #19
  ret i64 %i.m
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_debug_inspector_frame_iseq_get(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.e, 15
  %i.h = and i64 %i.g, 127
  br label %rb_array_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %.not.i = icmp slt i64 %1, %.0.i.i
  br i1 %.not.i, label %frame_get.exit, label %bb.e

bb.e:                                             ; preds = %rb_array_len.exit.i, %bb.a
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.42) #17
  unreachable

frame_get.exit:                                   ; preds = %rb_array_len.exit.i
  %i.l = tail call i64 @rb_ary_entry(i64 noundef %i.c, i64 noundef %1) #19
  %i.m = tail call i64 @rb_ary_entry(i64 noundef %i.l, i64 noundef 3) #19 ; 2 uses
  %i.n = and i64 %i.m, -5
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %frame_get.exit
  %i.o = inttoptr i64 %i.m to ptr
  %i.p = tail call i64 @rb_iseqw_new(ptr noundef %i.o) #7
  br label %bb.g

bb.g:                                             ; preds = %frame_get.exit, %bb.f
  %i.q = phi i64 [ %i.p, %bb.f ], [ 4, %frame_get.exit ]
  ret i64 %i.q
}

declare i64 @rb_iseqw_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_debug_inspector_frame_depth(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.e, 15
  %i.h = and i64 %i.g, 127
  br label %rb_array_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %.not.i = icmp slt i64 %1, %.0.i.i
  br i1 %.not.i, label %frame_get.exit, label %bb.e

bb.e:                                             ; preds = %rb_array_len.exit.i, %bb.a
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.42) #17
  unreachable

frame_get.exit:                                   ; preds = %rb_array_len.exit.i
  %i.l = tail call i64 @rb_ary_entry(i64 noundef %i.c, i64 noundef %1) #19
  %i.m = tail call i64 @rb_ary_entry(i64 noundef %i.l, i64 noundef 6) #19
  ret i64 %i.m
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local range(i64 1, 0) i64 @rb_debug_inspector_current_depth() local_unnamed_addr #9 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !100
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !100 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71
  %.val = load ptr, ptr %.0..0..0..0..0..0..i, align 8, !tbaa !81
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 8
  %.val2 = load i64, ptr %i.f, align 8, !tbaa !82
  %i.g = getelementptr [8 x i8], ptr %.val, i64 %.val2
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 56
  %sext = shl i64 %i.k, 32
  %i.l = ashr exact i64 %sext, 31
  %i.m = or disjoint i64 %i.l, 1
  ret i64 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i64 @rb_debug_inspector_backtrace_locations(ptr noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !160
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rb_profile_frames(i32 noundef %0, i32 noundef %1, ptr noundef nonnull writeonly captures(none) %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !100
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !100 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %.0..0..0..0..0..0..i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @thread_profile_frames(ptr noundef nonnull %.0..0..0..0..0..0..i, i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @thread_profile_frames(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !81
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val70 = load i64, ptr %i.c, align 8, !tbaa !82
  %i.d = getelementptr [8 x i8], ptr %.val, i64 %.val70
  %i.e = getelementptr i8, ptr %i.d, i64 -56      ; 2 uses
  %i.f = icmp sgt i32 %2, 0
  %i.g = icmp ne ptr %i.b, %i.e
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %.not69 = icmp eq ptr %4, null                  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.y
  %.05474 = phi i32 [ %1, %.lr.ph ], [ %.1, %bb.y ] ; 8 uses
  %.05572 = phi i32 [ 0, %.lr.ph ], [ %.156, %bb.y ] ; 9 uses
  %.05771 = phi ptr [ %i.b, %.lr.ph ], [ %i.bo, %bb.y ] ; 9 uses
  %i.i = getelementptr i8, ptr %.05771, i64 32
  %.057.val = load ptr, ptr %i.i, align 8, !tbaa !11
  %.057.val.val = load i64, ptr %.057.val, align 8, !tbaa !17
  %i.j = and i64 %.057.val.val, 128
  %.not64.not = icmp eq i64 %i.j, 0
  br i1 %.not64.not, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %.05771, align 8, !tbaa !19
  %.not65 = icmp eq ptr %i.k, null
  br i1 %.not65, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp sgt i32 %.05474, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i32 %.05474, -1
  br label %bb.y

bb.g:                                             ; preds = %bb.e
  %i.n = tail call ptr @rb_vm_frame_method_entry_unchecked(ptr noundef nonnull %.05771) #7 ; 3 uses
  %.not68 = icmp eq ptr %i.n, null
  br i1 %.not68, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !128
  %i.q = load i8, ptr %i.p, align 8
  %i.r = and i8 %i.q, 15
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr i8, ptr %.05771, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink86 = phi ptr [ %i.u, %bb.i ], [ %i.n, %bb.h ]
  %i.v = ptrtoint ptr %.sink86 to i64
  %i.w = sext i32 %.05572 to i64
  %i.x = getelementptr [8 x i8], ptr %3, i64 %i.w
  store i64 %i.v, ptr %i.x, align 8, !tbaa !17
  br i1 %.not69, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %.05771, align 8, !tbaa !19 ; 5 uses
  %i.z = getelementptr i8, ptr %.05771, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 4 uses
  %i.af = icmp eq ptr %.05771, %i.b
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %i.ac, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !173
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr [8 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = icmp ult ptr %i.y, %i.ae
  %i.al = icmp ugt ptr %i.y, %i.aj
  %or.cond = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.am = icmp eq ptr %i.y, null
  br i1 %i.am, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.ac, align 8, !tbaa !23
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr i8, ptr %i.ac, i64 88
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !41
  br label %.sink.split

bb.p:                                             ; preds = %bb.m
  %i.ar = ptrtoint ptr %i.y to i64
  %i.as = ptrtoint ptr %i.ae to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, -1
  tail call void @llvm.assume(i1 %i.av)
  %.not.i.i = icmp eq ptr %i.y, %i.ae
  %i.aw = add nsw i64 %i.au, -1
  %spec.select.i.i = select i1 %.not.i.i, i64 0, i64 %i.aw, !prof !43
  %i.ax = tail call i32 @rb_iseq_line_no(ptr noundef nonnull %i.aa, i64 noundef %spec.select.i.i) #7
  br label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.o, %bb.n, %bb.l
  %.sink = phi i32 [ 0, %bb.l ], [ 0, %bb.n ], [ %i.ax, %bb.p ], [ %i.aq, %bb.o ]
  %i.ay = sext i32 %.05572 to i64
  %i.az = getelementptr [4 x i8], ptr %4, i64 %i.ay
  store i32 %.sink, ptr %i.az, align 4, !tbaa !7
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.j
  %i.ba = add nsw i32 %.05572, 1
  br label %bb.y

bb.r:                                             ; preds = %bb.d, %bb.c
  %i.bb = tail call ptr @rb_vm_frame_method_entry_unchecked(ptr noundef nonnull %.05771) #7 ; 3 uses
  %.not66 = icmp eq ptr %i.bb, null
  br i1 %.not66, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !128
  %i.be = load i8, ptr %i.bd, align 8
  %i.bf = and i8 %i.be, 15
  %i.bg = icmp eq i8 %i.bf, 1
  br i1 %i.bg, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.bh = icmp sgt i32 %.05474, 0
  br i1 %i.bh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bi = add nsw i32 %.05474, -1
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.bj = ptrtoint ptr %i.bb to i64
  %i.bk = sext i32 %.05572 to i64                 ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %3, i64 %i.bk
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !17
  br i1 %.not69, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = getelementptr [4 x i8], ptr %4, i64 %i.bk
  store i32 0, ptr %i.bm, align 4, !tbaa !7
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bn = add nsw i32 %.05572, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %bb.x, %bb.s, %bb.r, %bb.u, %bb.f
  %.156 = phi i32 [ %.05572, %bb.f ], [ %i.ba, %bb.q ], [ %.05572, %bb.u ], [ %i.bn, %bb.x ], [ %.05572, %bb.s ], [ %.05572, %bb.r ] ; 3 uses
  %.1 = phi i32 [ %i.m, %bb.f ], [ %.05474, %bb.q ], [ %i.bi, %bb.u ], [ %.05474, %bb.x ], [ %.05474, %bb.s ], [ %.05474, %bb.r ]
  %i.bo = getelementptr i8, ptr %.05771, i64 56   ; 2 uses
  %i.bp = icmp slt i32 %.156, %2
  %i.bq = icmp ne ptr %i.bo, %i.e
  %i.br = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %i.br, label %bb.c, label %.loopexit, !llvm.loop !174

.loopexit:                                        ; preds = %bb.y, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.156, %bb.y ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rb_profile_thread_frames(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ruby_threadptr_data_type) #7
  %i.b = getelementptr i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.d = tail call fastcc i32 @thread_profile_frames(ptr noundef %i.c, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_profile_frame_path(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %frame2iseq.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 26
  br i1 %i.i, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.j = trunc i64 %i.g to i32
  %i.k = lshr i32 %i.j, 12
  %i.l = and i32 %i.k, 15
  switch i32 %i.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i [
    i32 7, label %frame2iseq.exit.thread4
    i32 6, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.f, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128  ; 2 uses
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, 15
  %cond.i = icmp eq i8 %i.p, 0
  br i1 %cond.i, label %frame2iseq.exit, label %frame2iseq.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit:                                  ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %frame2iseq.exit.thread, label %frame2iseq.exit.thread4

frame2iseq.exit.thread4:                          ; preds = %bb.c, %frame2iseq.exit
  %.1.i7 = phi ptr [ %i.r, %frame2iseq.exit ], [ %i.f, %bb.c ]
  %i.s = tail call i64 @rb_iseq_path(ptr noundef nonnull %.1.i7) #7
  br label %frame2iseq.exit.thread

frame2iseq.exit.thread:                           ; preds = %bb.d, %bb.a, %frame2iseq.exit, %frame2iseq.exit.thread4
  %i.t = phi i64 [ %i.s, %frame2iseq.exit.thread4 ], [ 4, %frame2iseq.exit ], [ 4, %bb.a ], [ 4, %bb.d ]
  ret i64 %i.t
}

declare i64 @rb_iseq_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_profile_frame_absolute_path(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %frame2iseq.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44
  %i.h = and i64 %i.g, 61471
  %or.cond.i = icmp eq i64 %i.h, 24602
  br i1 %or.cond.i, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.i7

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !128
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 15
  %cond1.i = icmp eq i8 %i.l, 1
  br i1 %cond1.i, label %cframe.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i7

cframe.exit:                                      ; preds = %bb.c
  %i.m = load i64, ptr @rb_profile_frame_absolute_path.cfunc_str, align 8, !tbaa !17 ; 2 uses
  %.not6 = icmp eq i64 %i.m, 0
  br i1 %.not6, label %bb.d, label %frame2iseq.exit.thread

bb.d:                                             ; preds = %cframe.exit
  %i.n = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.17, i64 noundef 7) #7 ; 2 uses
  store i64 %i.n, ptr @rb_profile_frame_absolute_path.cfunc_str, align 8, !tbaa !17
  tail call void @rb_vm_register_global_object(i64 noundef %i.n) #7
  %.pre = load i64, ptr @rb_profile_frame_absolute_path.cfunc_str, align 8, !tbaa !17
  br label %frame2iseq.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.i7:                ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.o = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !44   ; 2 uses
  %i.q = and i64 %i.p, 31
  %i.r = icmp eq i64 %i.q, 26
  br i1 %i.r, label %bb.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i7
  %i.s = trunc i64 %i.p to i32
  %i.t = lshr i32 %i.s, 12
  %i.u = and i32 %i.t, 15
  switch i32 %i.u, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i [
    i32 7, label %frame2iseq.exit.thread13
    i32 6, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.o, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !128  ; 2 uses
  %i.x = load i8, ptr %i.w, align 8
  %i.y = and i8 %i.x, 15
  %cond.i = icmp eq i8 %i.y, 0
  br i1 %cond.i, label %frame2iseq.exit, label %frame2iseq.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.b, %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit.i7
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit:                                  ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46  ; 2 uses
  %.not5 = icmp eq ptr %i.aa, null
  br i1 %.not5, label %frame2iseq.exit.thread, label %frame2iseq.exit.thread13

frame2iseq.exit.thread13:                         ; preds = %bb.e, %frame2iseq.exit
  %.1.i816 = phi ptr [ %i.aa, %frame2iseq.exit ], [ %i.o, %bb.e ]
  %i.ab = tail call i64 @rb_iseq_realpath(ptr noundef nonnull %.1.i816) #7
  br label %frame2iseq.exit.thread

frame2iseq.exit.thread:                           ; preds = %cframe.exit, %bb.d, %bb.a, %bb.f, %frame2iseq.exit.thread13, %frame2iseq.exit
  %.0 = phi i64 [ 4, %bb.a ], [ %i.ab, %frame2iseq.exit.thread13 ], [ 4, %frame2iseq.exit ], [ 4, %bb.f ], [ %.pre, %bb.d ], [ %i.m, %cframe.exit ]
  ret i64 %.0
}

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_vm_register_global_object(i64 noundef) local_unnamed_addr #2

declare i64 @rb_iseq_realpath(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_profile_frame_label(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %frame2iseq.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 26
  br i1 %i.i, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.j = trunc i64 %i.g to i32
  %i.k = lshr i32 %i.j, 12
  %i.l = and i32 %i.k, 15
  switch i32 %i.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i [
    i32 7, label %frame2iseq.exit.thread4
    i32 6, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.f, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128  ; 2 uses
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, 15
  %cond.i = icmp eq i8 %i.p, 0
  br i1 %cond.i, label %frame2iseq.exit, label %frame2iseq.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit:                                  ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.n, i64 8
end_hunk_4
begin_hunk_5_@rb_profile_frame_full_label:bb.a
  %i.aa = select i1 %.not11.i.not.i, ptr @.str.46, ptr @.str.45
  br label %rb_profile_frame_singleton_method_p.exit.i

rb_profile_frame_singleton_method_p.exit.i:       ; preds = %RCLASS_SINGLETON_P.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i, %bb.d, %frame2klass.exit.i.i, %frame2klass.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.ab = phi ptr [ @.str.46, %frame2klass.exit.i.i ], [ @.str.46, %frame2klass.exit.i.i ], [ @.str.46, %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i ], [ @.str.46, %bb.d ], [ %i.aa, %RCLASS_SINGLETON_P.exit.i.i ], [ @.str.46, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i ]
  %.not11.i = icmp eq i64 %i.p, 4
  br i1 %.not11.i, label %qualified_method_name.exit, label %bb.e

bb.e:                                             ; preds = %rb_profile_frame_singleton_method_p.exit.i
  %i.ac = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.44, i64 noundef %i.p, ptr noundef nonnull %i.ab, i64 noundef %i.n) #7
  br label %qualified_method_name.exit

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ad = inttoptr i64 %0 to ptr                  ; 6 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !44 ; 4 uses
  %i.af = and i64 %i.ae, 31
  %i.ag = icmp eq i64 %i.af, 26
  br i1 %i.ag, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.ah = trunc i64 %i.ae to i32
  %i.ai = lshr i32 %i.ah, 12
  %i.aj = and i32 %i.ai, 15
  switch i32 %i.aj, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i [
    i32 7, label %frame2iseq.exit.thread4.i
    i32 6, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr i8, ptr %i.ad, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !128 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8
  %i.an = and i8 %i.am, 15
  %cond.i.i = icmp eq i8 %i.an, 0
  br i1 %cond.i.i, label %frame2iseq.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i27

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %bb.b, %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit.i:                                ; preds = %bb.g
  %i.ao = getelementptr i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 2 uses
  %.not.i26 = icmp eq ptr %i.ap, null
  br i1 %.not.i26, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i27, label %frame2iseq.exit.thread4.i

frame2iseq.exit.thread4.i:                        ; preds = %frame2iseq.exit.i, %bb.f
  %.1.i7.i = phi ptr [ %i.ap, %frame2iseq.exit.i ], [ %i.ad, %bb.f ]
  %i.aq = tail call i64 @rb_iseq_label(ptr noundef nonnull %.1.i7.i) #7
  %.pre = load i64, ptr %i.ad, align 8, !tbaa !44
  br label %rbimpl_RB_TYPE_P_fastpath.exit.i.i27

rbimpl_RB_TYPE_P_fastpath.exit.i.i27:             ; preds = %frame2iseq.exit.thread4.i, %frame2iseq.exit.i, %bb.g
  %i.ar = phi i64 [ %i.ae, %bb.g ], [ %i.ae, %frame2iseq.exit.i ], [ %.pre, %frame2iseq.exit.thread4.i ] ; 2 uses
  %.ph = phi i64 [ 4, %bb.g ], [ 4, %frame2iseq.exit.i ], [ %i.aq, %frame2iseq.exit.thread4.i ] ; 3 uses
  %i.as = and i64 %i.ar, 31
  %i.at = icmp eq i64 %i.as, 26
  br i1 %i.at, label %bb.h, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i28

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i27
  %i.au = trunc i64 %i.ar to i32
  %i.av = lshr i32 %i.au, 12
  %i.aw = and i32 %i.av, 15
  switch i32 %i.aw, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i28 [
    i32 7, label %frame2iseq.exit.thread4.i32
    i32 6, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr i8, ptr %i.ad, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !128 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8
  %i.ba = and i8 %i.az, 15
  %cond.i.i29 = icmp eq i8 %i.ba, 0
  br i1 %cond.i.i29, label %frame2iseq.exit.i30, label %rb_profile_frame_base_label.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i28:      ; preds = %bb.h, %rbimpl_RB_TYPE_P_fastpath.exit.i.i27
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit.i30:                              ; preds = %bb.i
  %i.bb = getelementptr i8, ptr %i.ay, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !46 ; 2 uses
  %.not.i31 = icmp eq ptr %i.bc, null
  br i1 %.not.i31, label %rb_profile_frame_base_label.exit, label %frame2iseq.exit.thread4.i32

frame2iseq.exit.thread4.i32:                      ; preds = %frame2iseq.exit.i30, %bb.h
  %.1.i7.i33 = phi ptr [ %i.bc, %frame2iseq.exit.i30 ], [ %i.ad, %bb.h ]
  %i.bd = tail call i64 @rb_iseq_base_label(ptr noundef nonnull %.1.i7.i33) #7
  br label %rb_profile_frame_base_label.exit

rb_profile_frame_base_label.exit:                 ; preds = %bb.a, %bb.i, %frame2iseq.exit.i30, %frame2iseq.exit.thread4.i32
  %i.be = phi i64 [ %.ph, %frame2iseq.exit.thread4.i32 ], [ %.ph, %frame2iseq.exit.i30 ], [ %.ph, %bb.i ], [ 4, %bb.a ] ; 3 uses
  %i.bf = phi i64 [ %i.bd, %frame2iseq.exit.thread4.i32 ], [ 4, %frame2iseq.exit.i30 ], [ 4, %bb.i ], [ 4, %bb.a ] ; 2 uses
  %i.bg = tail call i64 @rb_profile_frame_method_name(i64 noundef %0) ; 3 uses
  %.not.i.i34 = icmp eq i64 %i.bg, 4
  br i1 %.not.i.i34, label %qualified_method_name.exit, label %bb.j

bb.j:                                             ; preds = %rb_profile_frame_base_label.exit
  %i.bh = tail call i64 @rb_profile_frame_classpath(i64 noundef %0) ; 2 uses
  %i.bi = and i64 %0, 7
  %.not = icmp eq i64 %i.bi, 0
  br i1 %.not, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, label %rb_profile_frame_singleton_method_p.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i:           ; preds = %bb.j
  %i.bj = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !44
  %i.bl = and i64 %i.bk, 61471
  %or.cond.i.i.i.i = icmp eq i64 %i.bl, 24602
  br i1 %or.cond.i.i.i.i, label %frame2klass.exit.i.i.i, label %rb_profile_frame_singleton_method_p.exit.i.i

frame2klass.exit.i.i.i:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !175 ; 3 uses
  switch i64 %i.bn, label %bb.k [
    i64 0, label %rb_profile_frame_singleton_method_p.exit.i.i
    i64 4, label %rb_profile_frame_singleton_method_p.exit.i.i
  ]

bb.k:                                             ; preds = %frame2klass.exit.i.i.i
  %i.bo = and i64 %i.bn, 7
  %.not.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i.i, label %rb_profile_frame_singleton_method_p.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i.i:          ; preds = %bb.k
  %i.bp = inttoptr i64 %i.bn to ptr
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !44
  %.fr10.i.i.i = freeze i64 %i.bq                 ; 2 uses
  %i.br = and i64 %.fr10.i.i.i, 31
  %i.bs = icmp eq i64 %i.br, 2
  br i1 %i.bs, label %RCLASS_SINGLETON_P.exit.i.i.i, label %rb_profile_frame_singleton_method_p.exit.i.i

RCLASS_SINGLETON_P.exit.i.i.i:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i.i
  %i.bt = and i64 %.fr10.i.i.i, 8192
  %.not11.i.not.i.i = icmp eq i64 %i.bt, 0
  %i.bu = select i1 %.not11.i.not.i.i, ptr @.str.46, ptr @.str.45
  br label %rb_profile_frame_singleton_method_p.exit.i.i

rb_profile_frame_singleton_method_p.exit.i.i:     ; preds = %RCLASS_SINGLETON_P.exit.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i.i, %bb.k, %frame2klass.exit.i.i.i, %frame2klass.exit.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, %bb.j
  %i.bv = phi ptr [ @.str.46, %frame2klass.exit.i.i.i ], [ @.str.46, %frame2klass.exit.i.i.i ], [ @.str.46, %bb.j ], [ @.str.46, %bb.k ], [ %i.bu, %RCLASS_SINGLETON_P.exit.i.i.i ], [ @.str.46, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i ], [ @.str.46, %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i.i ]
  %.not11.i.i = icmp eq i64 %i.bh, 4
  br i1 %.not11.i.i, label %rb_profile_frame_qualified_method_name.exit, label %bb.l

bb.l:                                             ; preds = %rb_profile_frame_singleton_method_p.exit.i.i
  %i.bw = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.44, i64 noundef %i.bh, ptr noundef nonnull %i.bv, i64 noundef %i.bg) #7
  br label %rb_profile_frame_qualified_method_name.exit

rb_profile_frame_qualified_method_name.exit:      ; preds = %rb_profile_frame_singleton_method_p.exit.i.i, %bb.l
  %.1.i.i = phi i64 [ %i.bg, %rb_profile_frame_singleton_method_p.exit.i.i ], [ %i.bw, %bb.l ] ; 3 uses
  %i.bx = icmp eq i64 %.1.i.i, 4
  %i.by = icmp eq i64 %i.bf, %.1.i.i
  %or.cond = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %or.cond, label %qualified_method_name.exit, label %bb.m

bb.m:                                             ; preds = %rb_profile_frame_qualified_method_name.exit
  %i.bz = inttoptr i64 %i.be to ptr               ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !176
  %i.cc = inttoptr i64 %i.bf to ptr
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !176
  %i.cf = sub i64 %i.cb, %i.ce                    ; 3 uses
  %i.cg = add i64 %i.cf, 2147483648
  %.not.i35 = icmp ult i64 %i.cg, 4294967296
  br i1 %.not.i35, label %rb_long2int_inline.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @rb_out_of_int(i64 noundef %i.cf) #20
  unreachable

rb_long2int_inline.exit:                          ; preds = %bb.m
  %i.ch = trunc nsw i64 %i.cf to i32
  %i.ci = load i64, ptr %i.bz, align 8, !tbaa !44
  %i.cj = and i64 %i.ci, 8192
  %.not.i36 = icmp eq i64 %i.cj, 0
  %i.ck = getelementptr i8, ptr %i.bz, i64 24     ; 2 uses
  br i1 %.not.i36, label %RSTRING_PTR.exit, label %bb.o

bb.o:                                             ; preds = %rb_long2int_inline.exit
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !46
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %rb_long2int_inline.exit, %bb.o
  %i.cm = phi ptr [ %i.cl, %bb.o ], [ %i.ck, %rb_long2int_inline.exit ]
  %i.cn = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.19, i32 noundef %i.ch, ptr noundef %i.cm, i64 noundef %.1.i.i) #7
  br label %qualified_method_name.exit

qualified_method_name.exit:                       ; preds = %rb_profile_frame_base_label.exit, %bb.e, %rb_profile_frame_singleton_method_p.exit.i, %cframe.exit, %RSTRING_PTR.exit, %rb_profile_frame_qualified_method_name.exit
  %.1 = phi i64 [ %i.be, %rb_profile_frame_qualified_method_name.exit ], [ %i.cn, %RSTRING_PTR.exit ], [ %i.n, %rb_profile_frame_singleton_method_p.exit.i ], [ %i.ac, %bb.e ], [ 4, %cframe.exit ], [ %i.be, %rb_profile_frame_base_label.exit ]
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

declare i32 @rb_iseq_line_no(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_iseq_node_id(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @location_mark(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !178
  tail call void @rb_gc_mark_movable(i64 noundef %i.b) #7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @location_ref_update(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !178
  %i.c = tail call i64 @rb_gc_location(i64 noundef %i.b) #7
  store i64 %i.c, ptr %i.a, align 8, !tbaa !178
  ret void
}

declare void @rb_gc_mark_movable(i64 noundef) local_unnamed_addr #2

declare i64 @rb_gc_location(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @backtrace_mark(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !83     ; 2 uses
  %i.b = sext i32 %i.a to i64
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %location_mark_entry.exit
  %.08 = phi i64 [ 0, %.lr.ph ], [ %i.j, %location_mark_entry.exit ] ; 2 uses
  %i.d = getelementptr [24 x i8], ptr %i.c, i64 %.08 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.f = ptrtoint ptr %i.e to i64
  tail call void @rb_gc_mark(i64 noundef %i.f) #7
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %location_mark_entry.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.h to i64
  tail call void @rb_gc_mark_movable(i64 noundef %i.i) #7
  br label %location_mark_entry.exit

location_mark_entry.exit:                         ; preds = %bb.b, %bb.c
  %i.j = add nuw i64 %.08, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !179

._crit_edge:                                      ; preds = %location_mark_entry.exit, %bb.a
  %i.k = getelementptr i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !91
  tail call void @rb_gc_mark_movable(i64 noundef %i.l) #7
  %i.m = getelementptr i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !95
  tail call void @rb_gc_mark_movable(i64 noundef %i.n) #7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @backtrace_update(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !83     ; 2 uses
  %i.b = sext i32 %i.a to i64
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %location_update_entry.exit
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.n, %location_update_entry.exit ] ; 2 uses
  %i.d = getelementptr [24 x i8], ptr %i.c, i64 %.010 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = tail call i64 @rb_gc_location(i64 noundef %i.f) #7
  %i.h = inttoptr i64 %i.g to ptr
  store ptr %i.h, ptr %i.d, align 8, !tbaa !97
  %i.i = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %location_update_entry.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = tail call i64 @rb_gc_location(i64 noundef %i.k) #7
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.i, align 8, !tbaa !66
  br label %location_update_entry.exit

location_update_entry.exit:                       ; preds = %bb.b, %bb.c
  %i.n = add nuw i64 %.010, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !180

._crit_edge:                                      ; preds = %location_update_entry.exit, %bb.a
  %i.o = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !91
  %i.q = tail call i64 @rb_gc_location(i64 noundef %i.p) #7
  store i64 %i.q, ptr %i.o, align 8, !tbaa !91
  %i.r = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !95
  %i.t = tail call i64 @rb_gc_location(i64 noundef %i.s) #7
  store i64 %i.t, ptr %i.r, align 8, !tbaa !95
  ret void
}

declare void @rb_gc_mark(i64 noundef) local_unnamed_addr #2

declare ptr @rb_vm_frame_method_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bt_yield_loc(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  %i.c = and i64 %2, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %RTYPEDDATA_GET_DATA.exit.i.us
  %.06.us = phi ptr [ %i.r, %RTYPEDDATA_GET_DATA.exit.i.us ], [ %0, %.lr.ph ] ; 2 uses
  %.045.us = phi i64 [ %i.q, %RTYPEDDATA_GET_DATA.exit.i.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.f = load i64, ptr @rb_cBacktraceLocation, align 8, !tbaa !17
  %i.g = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.f, i64 noundef 16, ptr noundef nonnull @location_data_type) #7 ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !52
  %i.k = trunc i64 %i.j to i1
  %i.l = getelementptr i8, ptr %i.h, i64 32       ; 2 uses
  br i1 %i.k, label %RTYPEDDATA_GET_DATA.exit.i.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.us

RTYPEDDATA_GET_DATA.exit.i.us:                    ; preds = %bb.b, %.lr.ph.split.us
  %i.n = phi ptr [ %i.m, %bb.b ], [ %i.l, %.lr.ph.split.us ] ; 2 uses
  store ptr %.06.us, ptr %i.n, align 8, !tbaa !63
  %i.o = getelementptr i8, ptr %i.n, i64 8
  store i64 %2, ptr %i.o, align 8, !tbaa !17
  %i.p = tail call i64 @rb_yield(i64 noundef %i.g) #7 ; 0 uses
  %i.q = add nsw i64 %.045.us, -1
  %i.r = getelementptr i8, ptr %.06.us, i64 24
  %i.s = icmp sgt i64 %.045.us, 1
  br i1 %i.s, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !181

.lr.ph.split:                                     ; preds = %.lr.ph, %RTYPEDDATA_GET_DATA.exit.i
  %.06 = phi ptr [ %i.af, %RTYPEDDATA_GET_DATA.exit.i ], [ %0, %.lr.ph ] ; 2 uses
  %.045 = phi i64 [ %i.ae, %RTYPEDDATA_GET_DATA.exit.i ], [ %1, %.lr.ph ] ; 2 uses
  %i.t = load i64, ptr @rb_cBacktraceLocation, align 8, !tbaa !17
  %i.u = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.t, i64 noundef 16, ptr noundef nonnull @location_data_type) #7 ; 3 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !52
  %i.y = trunc i64 %i.x to i1
  %i.z = getelementptr i8, ptr %i.v, i64 32       ; 2 uses
  br i1 %i.y, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %.lr.ph.split
  %i.ab = phi ptr [ %i.aa, %bb.c ], [ %i.z, %.lr.ph.split ] ; 2 uses
  store ptr %.06, ptr %i.ab, align 8, !tbaa !63
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  store i64 %2, ptr %i.ac, align 8, !tbaa !17
  tail call void @rb_gc_writebarrier(i64 noundef %i.u, i64 noundef %2) #7
  %i.ad = tail call i64 @rb_yield(i64 noundef %i.u) #7 ; 0 uses
  %i.ae = add nsw i64 %.045, -1
  %i.af = getelementptr i8, ptr %.06, i64 24
  %i.ag = icmp sgt i64 %.045, 1
  br i1 %i.ag, label %.lr.ph.split, label %._crit_edge, !llvm.loop !181

._crit_edge:                                      ; preds = %RTYPEDDATA_GET_DATA.exit.i, %RTYPEDDATA_GET_DATA.exit.i.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

declare i64 @rb_yield(i64 noundef) local_unnamed_addr #2

declare i64 @rb_data_typed_object_zalloc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_ary_new_capa(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @location_to_str(ptr noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !97    ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %location_cfunc_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128  ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 15
  switch i8 %i.f, label %location_cfunc_p.exit.thread [
    i8 1, label %location_cfunc_p.exit.thread32
    i8 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.i = tail call i64 @rb_iseq_path(ptr noundef %i.h) #7
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !44
  %i.l = and i64 %i.k, 8192
  %.not.i.i.i = icmp eq i64 %i.l, 0
  %i.m = getelementptr i8, ptr %i.j, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %location_cfunc_p.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46
  br label %location_cfunc_p.exit

location_cfunc_p.exit:                            ; preds = %bb.c, %bb.d
  %i.o = phi ptr [ %i.n, %bb.d ], [ %i.m, %bb.c ]
  %i.p = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @is_internal_location.prefix, ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef 10) #19
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %location_cfunc_p.exit.thread32, label %location_cfunc_p.exit.thread

location_cfunc_p.exit.thread32:                   ; preds = %bb.b, %location_cfunc_p.exit
  %i.r = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !66   ; 2 uses
  %.not23 = icmp eq ptr %i.s, null
  br i1 %.not23, label %bb.j, label %bb.e

bb.e:                                             ; preds = %location_cfunc_p.exit.thread32
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !69
  %.not24 = icmp eq ptr %i.u, null
  br i1 %.not24, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call i64 @rb_iseq_path(ptr noundef nonnull %i.s) #7 ; 3 uses
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !66   ; 2 uses
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !69   ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  %i.z = getelementptr i8, ptr %i.w, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !20  ; 3 uses
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !23
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %calc_lineno.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %i.aa, i64 88
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !41
  br label %calc_lineno.exit

bb.i:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.aa, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !42 ; 2 uses
  %i.ah = ptrtoint ptr %i.x to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, -1
  tail call void @llvm.assume(i1 %i.al)
  %.not.i.i = icmp eq ptr %i.x, %i.ag
  %i.am = add nsw i64 %i.ak, -1
  %spec.select.i.i = select i1 %.not.i.i, i64 0, i64 %i.am, !prof !43
  %i.an = tail call i32 @rb_iseq_line_no(ptr noundef nonnull %i.w, i64 noundef %spec.select.i.i) #7
  br label %calc_lineno.exit

bb.j:                                             ; preds = %bb.e, %location_cfunc_p.exit.thread32
  %i.ao = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !102
  %i.ap = getelementptr i8, ptr %i.ao, i64 1216
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !104
  br label %calc_lineno.exit

calc_lineno.exit:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.j
  %.019 = phi i64 [ %i.aq, %bb.j ], [ %i.v, %bb.g ], [ %i.v, %bb.h ], [ %i.v, %bb.i ]
  %.0 = phi i32 [ 0, %bb.j ], [ 0, %bb.g ], [ %i.ae, %bb.h ], [ %i.an, %bb.i ]
  %i.ar = load ptr, ptr %0, align 8, !tbaa !97    ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !151
  %i.au = getelementptr i8, ptr %i.ar, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !128
  %i.aw = getelementptr i8, ptr %i.av, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !131
  %i.ay = tail call i64 @rb_id2str(i64 noundef %i.ax) #7 ; 2 uses
  %.not.i25 = icmp eq i64 %i.ay, 0
  %..i = select i1 %.not.i25, i64 4, i64 %i.ay
  %i.az = tail call i64 @rb_gen_method_name(i64 noundef %i.at, i64 noundef %..i)
  br label %bb.p

location_cfunc_p.exit.thread:                     ; preds = %bb.b, %bb.a, %location_cfunc_p.exit
  %i.ba = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !66
  %i.bc = tail call i64 @rb_iseq_path(ptr noundef %i.bb) #7
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !66 ; 2 uses
  %i.be = getelementptr i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !69 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  %i.bh = getelementptr i8, ptr %i.bd, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !20 ; 3 uses
  br i1 %i.bg, label %bb.k, label %bb.m

bb.k:                                             ; preds = %location_cfunc_p.exit.thread
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !23
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %calc_lineno.exit28, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr i8, ptr %i.bi, i64 88
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !41
  br label %calc_lineno.exit28

bb.m:                                             ; preds = %location_cfunc_p.exit.thread
  %i.bn = getelementptr i8, ptr %i.bi, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !42 ; 2 uses
  %i.bp = ptrtoint ptr %i.bf to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3                 ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, -1
  tail call void @llvm.assume(i1 %i.bt)
  %.not.i.i26 = icmp eq ptr %i.bf, %i.bo
  %i.bu = add nsw i64 %i.bs, -1
  %spec.select.i.i27 = select i1 %.not.i.i26, i64 0, i64 %i.bu, !prof !43
  %i.bv = tail call i32 @rb_iseq_line_no(ptr noundef nonnull %i.bd, i64 noundef %spec.select.i.i27) #7
  br label %calc_lineno.exit28

calc_lineno.exit28:                               ; preds = %bb.k, %bb.l, %bb.m
  %i.bw = phi i32 [ 0, %bb.k ], [ %i.bv, %bb.m ], [ %i.bm, %bb.l ]
  %i.bx = load ptr, ptr %0, align 8, !tbaa !97    ; 2 uses
  %.not = icmp eq ptr %i.bx, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %calc_lineno.exit28
  %i.by = getelementptr i8, ptr %i.bx, i64 32
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !151
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %calc_lineno.exit28
  %.018 = phi i64 [ %i.bz, %bb.n ], [ 4, %calc_lineno.exit28 ]
  %i.ca = load ptr, ptr %i.ba, align 8, !tbaa !66
  %i.cb = tail call fastcc i64 @calculate_iseq_label(i64 noundef %.018, ptr noundef %i.ca)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %calc_lineno.exit
  %.120 = phi i64 [ %.019, %calc_lineno.exit ], [ %i.bc, %bb.o ] ; 2 uses
  %.017 = phi i64 [ %i.az, %calc_lineno.exit ], [ %i.cb, %bb.o ] ; 4 uses
  %.1 = phi i32 [ %.0, %calc_lineno.exit ], [ %i.bw, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.017, ptr %i.a, align 8, !tbaa !17
  %i.cc = tail call ptr @rb_enc_compatible(i64 noundef %.120, i64 noundef %.017) #7
  %i.cd = inttoptr i64 %.120 to ptr               ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !44
  %i.cf = and i64 %i.ce, 8192
  %.not.i.i29 = icmp eq i64 %i.cf, 0
  %i.cg = getelementptr i8, ptr %i.cd, i64 24     ; 2 uses
  br i1 %.not.i.i29, label %RSTRING_PTR.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !46
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.q, %bb.p
  %i.ci = phi ptr [ %i.ch, %bb.q ], [ %i.cg, %bb.p ]
  %i.cj = tail call i64 (ptr, ptr, ...) @rb_enc_sprintf(ptr noundef %i.cc, ptr noundef nonnull @.str.25, ptr noundef %i.ci) #7 ; 5 uses
  %.not.i30 = icmp eq i32 %.1, 0
  br i1 %.not.i30, label %bb.s, label %bb.r

bb.r:                                             ; preds = %RSTRING_PTR.exit.i
  %i.ck = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.cj, ptr noundef nonnull @.str.26, i32 noundef %.1) #7 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %RSTRING_PTR.exit.i
  %i.cl = tail call i64 @rb_str_cat(i64 noundef %i.cj, ptr noundef nonnull @.str.27, i64 noundef 4) #7 ; 0 uses
  %i.cm = icmp eq i64 %.017, 4
  br i1 %i.cm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cn = tail call i64 @rb_str_cat(i64 noundef %i.cj, ptr noundef nonnull @.str.28, i64 noundef 14) #7 ; 0 uses
  br label %location_format.exit

bb.u:                                             ; preds = %bb.s
  %i.co = inttoptr i64 %.017 to ptr               ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !44
  %i.cq = and i64 %i.cp, 8192
  %.not.i9.i = icmp eq i64 %i.cq, 0
  %i.cr = getelementptr i8, ptr %i.co, i64 24     ; 2 uses
  br i1 %.not.i9.i, label %RSTRING_PTR.exit10.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !46
  br label %RSTRING_PTR.exit10.i

RSTRING_PTR.exit10.i:                             ; preds = %bb.v, %bb.u
  %i.ct = phi ptr [ %i.cs, %bb.v ], [ %i.cr, %bb.u ]
  %i.cu = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.cj, ptr noundef nonnull @.str.29, ptr noundef %i.ct) #7 ; 0 uses
  br label %location_format.exit

location_format.exit:                             ; preds = %bb.t, %RSTRING_PTR.exit10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr %i.a, ptr %i.b, align 8, !tbaa !93
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #7, !srcloc !182
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.cw = load volatile i64, ptr %i.cv, align 8, !tbaa !17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.cj
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @calculate_iseq_label(i64 noundef %0, ptr noundef readonly captures(address) %1) unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.020 = phi ptr [ %1, %bb.a ], [ %i.z, %bb.g ]  ; 5 uses
  %i.a = getelementptr i8, ptr %.020, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  switch i32 %i.c, label %bb.h [
    i32 0, label %bb.c
    i32 3, label %bb.c
    i32 7, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 8, label %bb.e
    i32 4, label %bb.g
    i32 5, label %bb.g
    i32 6, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.d = getelementptr i8, ptr %i.b, i64 80
  %i.e = load i64, ptr %i.d, align 8, !tbaa !127
  br label %common.ret75

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 80
  %i.g = load i64, ptr %i.f, align 8, !tbaa !127
  %i.h = tail call i64 @rb_gen_method_name(i64 noundef %0, i64 noundef %i.g)
  br label %common.ret75

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.i = getelementptr i8, ptr %i.b, i64 168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !183
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.k = getelementptr i8, ptr %i.b, i64 176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !184  ; 2 uses
  %.not2333 = icmp eq ptr %i.l, %.020
  br i1 %.not2333, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.01835 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %.preheader ]
  %.12134 = phi ptr [ %i.s, %.lr.ph ], [ %.020, %.preheader ]
  %i.m = getelementptr i8, ptr %.12134, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !23
  %i.p = icmp eq i32 %i.o, 2
  %i.q = zext i1 %i.p to i32
  %spec.select = add i32 %.01835, %i.q            ; 3 uses
  %i.r = getelementptr i8, ptr %i.n, i64 168
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !183  ; 4 uses
  %.not23 = icmp eq ptr %i.l, %i.s
  br i1 %.not23, label %._crit_edge, label %.lr.ph, !llvm.loop !185

._crit_edge:                                      ; preds = %.lr.ph
  %i.t = icmp slt i32 %spec.select, 2
  br i1 %i.t, label %.thread, label %bb.f

common.ret75:                                     ; preds = %bb.d, %bb.c, %bb.f, %.thread
  %common.ret75.op = phi i64 [ %i.x, %bb.f ], [ %i.v, %.thread ], [ %i.h, %bb.d ], [ %i.e, %bb.c ]
  ret i64 %common.ret75.op

.thread:                                          ; preds = %.preheader, %bb.e, %._crit_edge
  %.22226 = phi ptr [ %i.s, %._crit_edge ], [ %.020, %bb.e ], [ %.020, %.preheader ]
  %i.u = tail call fastcc i64 @calculate_iseq_label(i64 noundef %0, ptr noundef %.22226)
  %i.v = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.22, i64 noundef %i.u) #7
  br label %common.ret75

bb.f:                                             ; preds = %._crit_edge
  %i.w = tail call fastcc i64 @calculate_iseq_label(i64 noundef %0, ptr noundef %i.s)
  %i.x = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.23, i32 noundef %spec.select, i64 noundef %i.w) #7
  br label %common.ret75

bb.g:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.y = getelementptr i8, ptr %i.b, i64 168
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !183
  br label %bb.b

bb.h:                                             ; preds = %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.24) #20
  unreachable
}

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #14

declare i64 @rb_enc_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @rb_enc_compatible(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_catf(i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #15

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @ec_backtrace_range(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4, ptr noundef nonnull writeonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i64], align 8                ; 2 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr [8 x i8], ptr %2, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17
  %i.i = tail call i32 @rb_keyword_given_p() #7
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.preheader.preheader.thread78, label %.preheader.preheader

bb.c:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %1, 0
  br i1 %i.j, label %bb.f, label %.preheader.1

.preheader.preheader:                             ; preds = %bb.b
  %i.k = tail call i64 @rb_hash_dup(i64 noundef %i.h) #7 ; 2 uses
  %i.l = add nsw i32 %1, -1                       ; 2 uses
  %.not64 = icmp eq i32 %i.l, 0
  br i1 %.not64, label %.preheader.1, label %.preheader.preheader.thread78

.preheader.preheader.thread78:                    ; preds = %bb.b, %.preheader.preheader
  %.1.i.ph83 = phi i32 [ %i.l, %.preheader.preheader ], [ %1, %bb.b ]
  %.188.i.ph82 = phi i64 [ %i.k, %.preheader.preheader ], [ 4, %bb.b ]
  %i.m = load i64, ptr %2, align 8, !tbaa !17
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.c, %.preheader.preheader, %.preheader.preheader.thread78
  %.188.i6876 = phi i64 [ %.188.i.ph82, %.preheader.preheader.thread78 ], [ %i.k, %.preheader.preheader ], [ 4, %bb.c ] ; 2 uses
  %.1.i6974 = phi i32 [ %.1.i.ph83, %.preheader.preheader.thread78 ], [ 0, %.preheader.preheader ], [ 0, %bb.c ] ; 3 uses
  %i.n = phi i64 [ %i.m, %.preheader.preheader.thread78 ], [ 4, %.preheader.preheader ], [ 4, %bb.c ] ; 7 uses
  %.286.i = phi i32 [ 1, %.preheader.preheader.thread78 ], [ 0, %.preheader.preheader ], [ 0, %bb.c ] ; 4 uses
  %i.o = icmp samesign ult i32 %.286.i, %.1.i6974
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader.1
  %i.p = zext nneg i32 %.286.i to i64
  %i.q = getelementptr [8 x i8], ptr %2, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17
  %i.s = add nuw nsw i32 %.286.i, 1
  br label %bb.e

bb.e:                                             ; preds = %.preheader.1, %bb.d
  %i.t = phi i64 [ %i.r, %bb.d ], [ 4, %.preheader.1 ] ; 4 uses
  %.286.i.1 = phi i32 [ %i.s, %bb.d ], [ %.286.i, %.preheader.1 ]
  %i.u = icmp eq i32 %.286.i.1, %.1.i6974
  br i1 %i.u, label %rb_scan_args_set.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.1.i70 = phi i32 [ %.1.i6974, %bb.e ], [ %1, %bb.c ]
  tail call void @rb_error_arity(i32 noundef %.1.i70, i32 noundef 0, i32 noundef 2) #17
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.e
  %i.v = icmp eq i64 %.188.i6876, 4
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %rb_scan_args_set.exit
  store i64 0, ptr %i.a, align 8, !tbaa !17
  %i.w = call i32 @rb_get_kwargs(i64 noundef %.188.i6876, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 0, ptr noundef null) #7 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %rb_scan_args_set.exit
  switch i32 %1, label %bb.aa [
    i32 2, label %bb.i
    i32 0, label %bb.j
    i32 1, label %.thread
  ]

bb.i:                                             ; preds = %bb.h
  %i.x = icmp eq i64 %i.t, 4
  br i1 %i.x, label %.thread, label %.thread46

bb.j:                                             ; preds = %bb.h
  %i.y = add nuw nsw i32 %4, %3
  %i.z = zext nneg i32 %i.y to i64
  br label %bb.aa

.thread:                                          ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.aa = getelementptr i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !71 ; 2 uses
  %.val.i = load ptr, ptr %0, align 8, !tbaa !81
  %i.ac = getelementptr i8, ptr %0, i64 8
  %.val11.i = load i64, ptr %i.ac, align 8, !tbaa !82
  %i.ad = getelementptr [8 x i8], ptr %.val.i, i64 %.val11.i ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %backtrace_size.exit, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.af = getelementptr i8, ptr %i.ad, i64 -112   ; 2 uses
  %i.ag = icmp ult ptr %i.af, %i.ab
  br i1 %i.ag, label %backtrace_size.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 56
  %i.al = add nsw i64 %i.ak, 1
  br label %backtrace_size.exit

backtrace_size.exit:                              ; preds = %.thread, %bb.k, %bb.l
  %.0.i = phi i64 [ %i.al, %bb.l ], [ -1, %.thread ], [ 0, %bb.k ]
  %i.am = zext nneg i32 %4 to i64                 ; 2 uses
  %i.an = sub nsw i64 %.0.i, %i.am
  %i.ao = call i64 @rb_range_beg_len(i64 noundef %i.n, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %i.an, i32 noundef 0) #7
  switch i64 %i.ao, label %bb.q [
    i64 0, label %bb.m
    i64 4, label %.critedge
  ]

bb.m:                                             ; preds = %backtrace_size.exit
  %i.ap = trunc i64 %i.n to i1
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aq = ashr i64 %i.n, 1
  br label %rb_num2long_inline.exit

bb.o:                                             ; preds = %bb.m
  %i.ar = call i64 @rb_num2long(i64 noundef %i.n) #7
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.n, %bb.o
  %.0.i40 = phi i64 [ %i.aq, %bb.n ], [ %i.ar, %bb.o ] ; 3 uses
  %i.as = icmp slt i64 %.0.i40, 0
  br i1 %i.as, label %bb.p, label %bb.r

bb.p:                                             ; preds = %rb_num2long_inline.exit
  %i.at = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.at, ptr noundef nonnull @.str.40, i64 noundef %.0.i40) #17
  unreachable

bb.q:                                             ; preds = %backtrace_size.exit
  %i.au = load i64, ptr %i.b, align 8, !tbaa !17
  %i.av = load i64, ptr %i.c, align 8, !tbaa !17
  br label %bb.r

bb.r:                                             ; preds = %rb_num2long_inline.exit, %bb.q
  %.pn = phi i64 [ %i.au, %bb.q ], [ %.0.i40, %rb_num2long_inline.exit ]
  %.026 = phi i64 [ %i.av, %bb.q ], [ -1, %rb_num2long_inline.exit ]
  %.028 = add i64 %.pn, %i.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.aa

.thread46:                                        ; preds = %bb.i
  %i.aw = trunc i64 %i.n to i1
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread46
  %i.ax = ashr i64 %i.n, 1
  br label %rb_num2long_inline.exit42

bb.t:                                             ; preds = %.thread46
  %i.ay = call i64 @rb_num2long(i64 noundef %i.n) #7
  br label %rb_num2long_inline.exit42

rb_num2long_inline.exit42:                        ; preds = %bb.s, %bb.t
  %.0.i41 = phi i64 [ %i.ax, %bb.s ], [ %i.ay, %bb.t ] ; 3 uses
  %i.az = trunc i64 %i.t to i1
  br i1 %i.az, label %bb.u, label %bb.v

bb.u:                                             ; preds = %rb_num2long_inline.exit42
  %i.ba = ashr i64 %i.t, 1
  br label %rb_num2long_inline.exit44

bb.v:                                             ; preds = %rb_num2long_inline.exit42
  %i.bb = call i64 @rb_num2long(i64 noundef %i.t) #7
  br label %rb_num2long_inline.exit44

rb_num2long_inline.exit44:                        ; preds = %bb.u, %bb.v
  %.0.i43 = phi i64 [ %i.ba, %bb.u ], [ %i.bb, %bb.v ] ; 3 uses
  %i.bc = icmp slt i64 %.0.i41, 0
  br i1 %i.bc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %rb_num2long_inline.exit44
  %i.bd = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bd, ptr noundef nonnull @.str.40, i64 noundef %.0.i41) #17
  unreachable

bb.x:                                             ; preds = %rb_num2long_inline.exit44
  %i.be = icmp slt i64 %.0.i43, 0
  br i1 %i.be, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bf = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bf, ptr noundef nonnull @.str.41, i64 noundef %.0.i43) #17
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bg = zext nneg i32 %4 to i64
  %i.bh = add nuw i64 %.0.i41, %i.bg
end_hunk_5
