Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/pa?download=true
inline.NumInlined: 32
inline.NumDeleted: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_pa_central_init(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 @je_hpa_central_init(ptr noundef %0, ptr noundef %1, ptr noundef %3) #4
  br i1 %i.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.b ]
  ret i1 %.0
}

declare zeroext i1 @je_hpa_central_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_pa_shard_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 68160 ; 2 uses
  %i.b = tail call zeroext i1 @je_edata_cache_init(ptr noundef nonnull %i.a, ptr noundef %4) #4
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = tail call zeroext i1 @je_pac_init(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef %4, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, ptr noundef nonnull %i.d, ptr noundef %7) #4
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68304
  store i32 %5, ptr %i.f, align 16, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %i.g, align 1, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store atomic i8 0, ptr %i.h monotonic, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store atomic i64 0, ptr %i.i monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 68312
  store ptr %7, ptr %i.j, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 68320
  store ptr %6, ptr %i.k, align 32, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %6, i8 0, i64 80, i1 false)
  store ptr %2, ptr %1, align 64, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 68328
  store ptr %3, ptr %i.l, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 68336
  store ptr %4, ptr %i.m, align 16, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

declare zeroext i1 @je_edata_cache_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @je_pac_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_pa_shard_enable_hpa(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 62272
  %i.b = load ptr, ptr %1, align 64, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 68328
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 68336
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 68160
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 68304
  %i.i = load i32, ptr %i.h, align 16, !tbaa !53
  %i.j = tail call zeroext i1 @je_hpa_shard_init(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f, ptr noundef nonnull %i.g, i32 noundef %i.i, ptr noundef %2, ptr noundef %3) #4 ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 1, ptr %i.k, align 1, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store atomic i8 1, ptr %i.l monotonic, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.j
}

declare zeroext i1 @je_hpa_shard_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @je_pa_shard_disable_hpa(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  store atomic i8 0, ptr %i.a monotonic, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.c = load i8, ptr %i.b, align 1, !tbaa !54, !range !58, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 62272
  tail call void @je_hpa_shard_disable(ptr noundef %0, ptr noundef nonnull %i.e) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @je_hpa_shard_disable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @je_pa_shard_reset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store atomic i64 0, ptr %i.a monotonic, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.c = load i8, ptr %i.b, align 1, !tbaa !54, !range !58, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %je_pa_shard_flush.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 62272
  tail call void @je_hpa_shard_flush(ptr noundef %0, ptr noundef nonnull %i.e) #4
  br label %je_pa_shard_flush.exit

je_pa_shard_flush.exit:                           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_pa_shard_flush(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.b = load i8, ptr %i.a, align 1, !tbaa !54, !range !58, !noundef !59
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 62272
  tail call void @je_hpa_shard_flush(ptr noundef %0, ptr noundef nonnull %i.d) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @je_hpa_shard_flush(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @je_pa_shard_destroy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @je_pac_destroy(ptr noundef %0, ptr noundef nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.c = load i8, ptr %i.b, align 1, !tbaa !54, !range !58, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 62272
  tail call void @je_hpa_shard_destroy(ptr noundef %0, ptr noundef nonnull %i.e) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @je_pac_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @je_hpa_shard_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noundef ptr @je_pa_alloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef %8) local_unnamed_addr #0 {
tsdn_witness_tsdp_get.exit:
  br i1 %7, label %.thread.a, label %bb.a

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load atomic i8, ptr %i.a monotonic, align 1, !range !58, !noundef !59
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.thread.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 62272 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.f = tail call ptr %i.e(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %6, i1 noundef zeroext false, i1 noundef zeroext %4, ptr noundef %8) #4, !inline_history !64 ; 2 uses
  %9 = icmp eq ptr %i.f, null
  br i1 %9, label %.thread.a, label %.thread39

.thread.a:                                        ; preds = %bb.a, %tsdn_witness_tsdp_get.exit, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.i = tail call ptr %i.h(ptr noundef %0, ptr noundef nonnull %i.g, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %4, ptr noundef %8) #4, !inline_history !64 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %.thread39

.thread39:                                        ; preds = %bb.b, %.thread.a
  %.142 = phi ptr [ %i.i, %.thread.a ], [ %i.f, %bb.b ] ; 6 uses
  %i.j = lshr i64 %2, 12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = atomicrmw add ptr %i.k, i64 %i.j monotonic, align 8 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 68328 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56
  tail call void @je_emap_remap(ptr noundef %0, ptr noundef %i.n, ptr noundef nonnull %.142, i32 noundef %5, i1 noundef zeroext %4) #4
  %i.o = load i64, ptr %.142, align 8, !tbaa !61
  %i.p = and i64 %i.o, -267390977
  %i.q = zext i32 %5 to i64
  %i.r = shl nuw nsw i64 %i.q, 20
  %i.s = select i1 %4, i64 4096, i64 0
  %i.t = or disjoint i64 %i.r, %i.s
  %i.u = or i64 %i.t, %i.p
  store i64 %i.u, ptr %.142, align 8, !tbaa !61
  %i.v = icmp ugt i64 %2, 8192
  %or.cond = and i1 %i.v, %4
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread39
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !56
  tail call void @je_emap_register_interior(ptr noundef %0, ptr noundef %i.w, ptr noundef nonnull %.142, i32 noundef %5) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread39, %.thread.a
  %.143 = phi ptr [ %.142, %bb.c ], [ %.142, %.thread39 ], [ null, %.thread.a ]
  ret ptr %.143
}

declare void @je_emap_remap(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @je_emap_register_interior(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_pa_expand(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i1 noundef zeroext %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.a = and i64 %.val, 65536
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %.val, 16384
  %i.c = icmp eq i64 %i.b, 0
  %.v.i = select i1 %i.c, i64 24, i64 62272
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.v.i ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.g = tail call zeroext i1 %i.f(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %6, ptr noundef %7) #4, !inline_history !66
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sub i64 %4, %3
  %i.i = lshr i64 %i.h, 12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = atomicrmw add ptr %i.j, i64 %i.i monotonic, align 8 ; 0 uses
  %i.l = load i64, ptr %2, align 8, !tbaa !61
  %i.m = and i64 %i.l, -267386881
  %i.n = zext i32 %5 to i64
  %i.o = shl nuw nsw i64 %i.n, 20
  %i.p = or i64 %i.m, %i.o
  store i64 %i.p, ptr %2, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 68328
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56
  tail call void @je_emap_remap(ptr noundef %0, ptr noundef %i.r, ptr noundef nonnull %2, i32 noundef %5, i1 noundef zeroext false) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_pa_shrink(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.a = and i64 %.val, 65536
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %.val, 16384
  %i.c = icmp eq i64 %i.b, 0
  %.v.i = select i1 %i.c, i64 24, i64 62272
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.v.i ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.g = tail call zeroext i1 %i.f(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef %6) #4, !inline_history !68
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sub i64 %3, %4
  %i.i = lshr i64 %i.h, 12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = atomicrmw sub ptr %i.j, i64 %i.i monotonic, align 8 ; 0 uses
  %i.l = load i64, ptr %2, align 8, !tbaa !61
  %i.m = and i64 %i.l, -267386881
  %i.n = zext i32 %5 to i64
  %i.o = shl nuw nsw i64 %i.n, 20
  %i.p = or i64 %i.m, %i.o
  store i64 %i.p, ptr %2, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 68328
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56
  tail call void @je_emap_remap(ptr noundef %0, ptr noundef %i.r, ptr noundef nonnull %2, i32 noundef %5, i1 noundef zeroext false) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define hidden void @je_pa_dalloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 68328 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  tail call void @je_emap_remap(ptr noundef %0, ptr noundef %i.b, ptr noundef %2, i32 noundef 232, i1 noundef zeroext false) #4
  %.val18 = load i64, ptr %2, align 8, !tbaa !61  ; 2 uses
  %i.c = and i64 %.val18, 4096
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56
  tail call void @je_emap_deregister_interior(ptr noundef %0, ptr noundef %i.d, ptr noundef nonnull %2) #4
  %.pre = load i64, ptr %2, align 8, !tbaa !61
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %.pre, %bb.b ], [ %.val18, %bb.a ]
  %i.f = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val19 = load ptr, ptr %i.f, align 8, !tbaa !71 ; 2 uses
  %i.g = ptrtoint ptr %.val19 to i64
  %i.h = and i64 %i.g, 4095
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds i8, ptr %.val19, i64 %i.i
  store ptr %i.j, ptr %i.f, align 8, !tbaa !71
  %i.k = and i64 %i.e, -267386881
  %i.l = or disjoint i64 %i.k, 243269632
  store i64 %i.l, ptr %2, align 8, !tbaa !61
  %i.m = getelementptr i8, ptr %2, i64 16
  %.val20 = load i64, ptr %i.m, align 8, !tbaa !72
  %i.n = lshr i64 %.val20, 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = atomicrmw sub ptr %i.o, i64 %i.n monotonic, align 8 ; 0 uses
  %.val = load i64, ptr %2, align 8, !tbaa !61
  %i.q = and i64 %.val, 16384
  %i.r = icmp eq i64 %i.q, 0
  %.v.i = select i1 %i.r, i64 24, i64 62272
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.v.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73
  tail call void %i.u(ptr noundef %0, ptr noundef nonnull %i.s, ptr noundef nonnull %2, ptr noundef %3) #4, !inline_history !70
  ret void
}

declare void @je_emap_deregister_interior(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_pa_decay_ms_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call zeroext i1 @je_pac_decay_ms_set(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %2, i64 noundef %3, i32 noundef %4) #4
  ret i1 %i.b
}

declare zeroext i1 @je_pac_decay_ms_set(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i64 @je_pa_decay_ms_get(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call i64 @je_pac_decay_ms_get(ptr noundef nonnull %i.a, i32 noundef %1) #4
  ret i64 %i.b
}

declare i64 @je_pac_decay_ms_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @je_pa_shard_set_deferral_allowed(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load atomic i8, ptr %i.a monotonic, align 1, !range !58, !noundef !59
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 62272
  tail call void @je_hpa_shard_set_deferral_allowed(ptr noundef %0, ptr noundef nonnull %i.d, i1 noundef zeroext %2) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @je_hpa_shard_set_deferral_allowed(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @je_pa_shard_do_deferred_work(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_0
