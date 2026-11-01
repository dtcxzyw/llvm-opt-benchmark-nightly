Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/xen-backend?download=true
inline.NumInlined: 13
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { ptr }
%struct.ErrorPropagator = type { ptr, ptr }

@.str = private unnamed_addr constant [24 x i8] c"../hw/xen/xen-backend.c\00", align 1
@__func__.xen_backend_register = private unnamed_addr constant [21 x i8] c"xen_backend_register\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"info->type\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"attempt to register duplicate Xen backend type '%s'\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"backend type '%s' has no creator\00", align 1
@backend_list = internal global %struct.anon zeroinitializer, align 8
@error_fatal = external global ptr, align 8
@__func__.xen_backend_set_device = private unnamed_addr constant [23 x i8] c"xen_backend_set_device\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"!backend->xendev\00", align 1
@xen_backend_table_get.table = internal unnamed_addr global ptr null, align 8

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @xen_backend_register(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @g_malloc0(i64 noundef 24) #9 ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 59, ptr noundef nonnull @__func__.xen_backend_register, ptr noundef nonnull @.str.1) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @xen_backend_table_get.table, align 8 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %xen_backend_table_lookup.exit

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @g_hash_table_new(ptr noundef nonnull @g_str_hash, ptr noundef nonnull @g_str_equal) #11 ; 2 uses
  store ptr %i.e, ptr @xen_backend_table_get.table, align 8
  br label %xen_backend_table_lookup.exit

xen_backend_table_lookup.exit:                    ; preds = %bb.c, %bb.d
  %i.f = phi ptr [ %i.e, %bb.d ], [ %i.c, %bb.c ]
  %i.g = tail call ptr @g_hash_table_lookup(ptr noundef %i.f, ptr noundef nonnull %i.b) #11
  %.not27 = icmp eq ptr %i.g, null
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %xen_backend_table_lookup.exit
  %i.h = load ptr, ptr %0, align 8
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.2, ptr noundef %i.h) #11
  tail call void @abort() #10
  unreachable

bb.f:                                             ; preds = %xen_backend_table_lookup.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not28 = icmp eq ptr %i.j, null
  %i.k = load ptr, ptr %0, align 8                ; 3 uses
  br i1 %.not28, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.3, ptr noundef %i.k) #11
  tail call void @abort() #10
  unreachable

bb.h:                                             ; preds = %bb.f
  store ptr %i.k, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %1 = load <2 x ptr>, ptr %i.i, align 8
  store <2 x ptr> %1, ptr %i.l, align 8
  %i.m = load ptr, ptr @xen_backend_table_get.table, align 8 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.i, label %xen_backend_table_add.exit

bb.i:                                             ; preds = %bb.h
  %i.o = tail call ptr @g_hash_table_new(ptr noundef nonnull @g_str_hash, ptr noundef nonnull @g_str_equal) #11 ; 2 uses
  store ptr %i.o, ptr @xen_backend_table_get.table, align 8
  br label %xen_backend_table_add.exit

xen_backend_table_add.exit:                       ; preds = %bb.h, %bb.i
  %i.p = phi ptr [ %i.o, %bb.i ], [ %i.m, %bb.h ]
  %i.q = tail call i32 @g_hash_table_insert(ptr noundef %i.p, ptr noundef %i.k, ptr noundef nonnull %i.a) #11 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @error_report(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @xen_backend_get_types(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @xen_backend_table_get.table, align 8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %xen_backend_table_keys.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @g_hash_table_new(ptr noundef nonnull @g_str_hash, ptr noundef nonnull @g_str_equal) #11 ; 2 uses
  store ptr %i.c, ptr @xen_backend_table_get.table, align 8
  br label %xen_backend_table_keys.exit

xen_backend_table_keys.exit:                      ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.e = tail call ptr @g_hash_table_get_keys_as_array(ptr noundef %i.d, ptr noundef %0) #11
  ret ptr %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @xen_backend_exists(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @xen_backend_table_get.table, align 8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %xen_backend_table_lookup.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @g_hash_table_new(ptr noundef nonnull @g_str_hash, ptr noundef nonnull @g_str_equal) #11 ; 2 uses
  store ptr %i.c, ptr @xen_backend_table_get.table, align 8
  br label %xen_backend_table_lookup.exit

xen_backend_table_lookup.exit:                    ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.e = tail call ptr @g_hash_table_lookup(ptr noundef %i.d, ptr noundef %0) #11 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %.013 = load ptr, ptr @backend_list, align 8    ; 2 uses
  %.not1114 = icmp eq ptr %.013, null
  %or.cond = select i1 %.not, i1 true, i1 %.not1114
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %xen_backend_table_lookup.exit, %bb.d
  %.015 = phi ptr [ %.0, %bb.d ], [ %.013, %xen_backend_table_lookup.exit ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.015, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.015, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(1) %1) #12
  %.not12 = icmp eq i32 %i.k, 0
  br i1 %.not12, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.0 = load ptr, ptr %.015, align 8              ; 2 uses
  %.not11 = icmp eq ptr %.0, null
  br i1 %.not11, label %.loopexit, label %.lr.ph, !llvm.loop !9

.loopexit:                                        ; preds = %bb.c, %bb.d, %xen_backend_table_lookup.exit
  %.09 = phi i1 [ false, %xen_backend_table_lookup.exit ], [ true, %bb.c ], [ false, %bb.d ]
  ret i1 %.09
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @xen_backend_device_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ErrorPropagator, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %5, align 8
  store ptr %4, ptr %i.a, align 8
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq ptr %4, @error_fatal
  %or.cond = or i1 %i.b, %i.c
  %spec.select = select i1 %or.cond, ptr %5, ptr %4
  %i.d = load ptr, ptr @xen_backend_table_get.table, align 8 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %xen_backend_table_lookup.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @g_hash_table_new(ptr noundef nonnull @g_str_hash, ptr noundef nonnull @g_str_equal) #11 ; 2 uses
  store ptr %i.f, ptr @xen_backend_table_get.table, align 8
  br label %xen_backend_table_lookup.exit

xen_backend_table_lookup.exit:                    ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %i.h = tail call ptr @g_hash_table_lookup(ptr noundef %i.g, ptr noundef %1) #11 ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %xen_backend_table_lookup.exit
  %i.i = tail call noalias dereferenceable_or_null(48) ptr @g_malloc0(i64 noundef 48) #9 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %0, ptr %i.j, align 8
  %i.k = tail call noalias ptr @g_strdup(ptr noundef %2) #11
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull %i.i, ptr noundef %3, ptr noundef nonnull %spec.select) #11
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.h, ptr %i.o, align 8
  %i.p = load ptr, ptr @backend_list, align 8     ; 3 uses
  store ptr %i.p, ptr %i.i, align 8
  %.not.i32 = icmp eq ptr %i.p, null
  br i1 %.not.i32, label %xen_backend_list_add.exit, label %bb.c

bb.c:                                             ; preds = %g_strdup_inline.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.i, ptr %i.q, align 8
  br label %xen_backend_list_add.exit

xen_backend_list_add.exit:                        ; preds = %g_strdup_inline.exit, %bb.c
  store ptr %i.i, ptr @backend_list, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @backend_list, ptr %i.r, align 8
  %.val.pre = load ptr, ptr %5, align 8
  %.val31.pre = load ptr, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %xen_backend_table_lookup.exit, %xen_backend_list_add.exit
  %.val31 = phi ptr [ %4, %xen_backend_table_lookup.exit ], [ %.val31.pre, %xen_backend_list_add.exit ]
  %.val = phi ptr [ null, %xen_backend_table_lookup.exit ], [ %.val.pre, %xen_backend_list_add.exit ]
  call void @error_propagate(ptr noundef %.val31, ptr noundef %.val) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local ptr @xen_backend_get_bus(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local ptr @xen_backend_get_name(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @xen_backend_set_device(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.not = icmp eq ptr %i.b, null
  br i1 %.not.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 161, ptr noundef nonnull @__func__.xen_backend_set_device, ptr noundef nonnull @.str.4) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
end_hunk_0
