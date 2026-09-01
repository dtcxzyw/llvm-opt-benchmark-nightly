Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/stats?download=true
inline.NumInlined: 445
inline.NumDeleted: 36
begin_hunk_0
@.str.513 = private unnamed_addr constant [16 x i8] c"npageslabs_huge\00", align 1
@.str.514 = private unnamed_addr constant [13 x i8] c"nactive_huge\00", align 1
@.str.515 = private unnamed_addr constant [12 x i8] c"ndirty_huge\00", align 1
@.str.516 = private unnamed_addr constant [52 x i8] c"stats.arenas.0.hpa_shard.full_slabs.npageslabs_huge\00", align 1
@.str.517 = private unnamed_addr constant [49 x i8] c"stats.arenas.0.hpa_shard.full_slabs.nactive_huge\00", align 1
@.str.518 = private unnamed_addr constant [48 x i8] c"stats.arenas.0.hpa_shard.full_slabs.ndirty_huge\00", align 1
@.str.519 = private unnamed_addr constant [55 x i8] c"stats.arenas.0.hpa_shard.full_slabs.npageslabs_nonhuge\00", align 1
@.str.520 = private unnamed_addr constant [52 x i8] c"stats.arenas.0.hpa_shard.full_slabs.nactive_nonhuge\00", align 1
@.str.521 = private unnamed_addr constant [51 x i8] c"stats.arenas.0.hpa_shard.full_slabs.ndirty_nonhuge\00", align 1
@.str.522 = private unnamed_addr constant [171 x i8] c"  In full slabs:\0A      npageslabs: %zu huge, %zu nonhuge\0A      nactive: %zu huge, %zu nonhuge \0A      ndirty: %zu huge, %zu nonhuge \0A      nretained: 0 huge, %zu nonhuge \0A\00", align 1
@.str.523 = private unnamed_addr constant [11 x i8] c"full_slabs\00", align 1
@.str.524 = private unnamed_addr constant [53 x i8] c"stats.arenas.0.hpa_shard.empty_slabs.npageslabs_huge\00", align 1
@.str.525 = private unnamed_addr constant [50 x i8] c"stats.arenas.0.hpa_shard.empty_slabs.nactive_huge\00", align 1
@.str.526 = private unnamed_addr constant [49 x i8] c"stats.arenas.0.hpa_shard.empty_slabs.ndirty_huge\00", align 1
@.str.527 = private unnamed_addr constant [56 x i8] c"stats.arenas.0.hpa_shard.empty_slabs.npageslabs_nonhuge\00", align 1
@.str.528 = private unnamed_addr constant [53 x i8] c"stats.arenas.0.hpa_shard.empty_slabs.nactive_nonhuge\00", align 1
@.str.529 = private unnamed_addr constant [52 x i8] c"stats.arenas.0.hpa_shard.empty_slabs.ndirty_nonhuge\00", align 1
@.str.530 = private unnamed_addr constant [172 x i8] c"  In empty slabs:\0A      npageslabs: %zu huge, %zu nonhuge\0A      nactive: %zu huge, %zu nonhuge \0A      ndirty: %zu huge, %zu nonhuge \0A      nretained: 0 huge, %zu nonhuge \0A\00", align 1
@.str.531 = private unnamed_addr constant [12 x i8] c"empty_slabs\00", align 1
@.str.532 = private unnamed_addr constant [24 x i8] c"hpa_shard.nonfull_slabs\00", align 1
@.str.533 = private unnamed_addr constant [21 x i8] c"  In nonfull slabs:\0A\00", align 1
@.str.534 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.535 = private unnamed_addr constant [4 x i8] c"\0A}\0A\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @je_stats_print(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.emitter_s, align 8          ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 1, ptr %i.a, align 8, !tbaa !12
  store i64 8, ptr %i.b, align 8, !tbaa !12
  %i.c = call i32 @mallctl(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 8) #14
  switch i32 %i.c, label %bb.c [
    i32 0, label %bb.d
    i32 11, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  call void @je_malloc_write(ptr noundef nonnull @.str.1) #14
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  call void @je_malloc_write(ptr noundef nonnull @.str.2) #14
  call void @abort() #15
  unreachable

bb.d:                                             ; preds = %bb.a
  %.not50 = icmp eq ptr %2, null
  br i1 %.not50, label %select.unfold, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.p
  %.044 = phi i1 [ %.145, %bb.p ], [ false, %bb.d ] ; 11 uses
  %.041 = phi i1 [ %.142, %bb.p ], [ true, %bb.d ] ; 11 uses
  %.038 = phi i1 [ %.139, %bb.p ], [ true, %bb.d ] ; 11 uses
  %.035 = phi i1 [ %.136, %bb.p ], [ true, %bb.d ] ; 11 uses
  %.032 = phi i1 [ %.133, %bb.p ], [ true, %bb.d ] ; 11 uses
  %.029 = phi i1 [ %.130, %bb.p ], [ true, %bb.d ] ; 11 uses
  %.026 = phi i1 [ %.127, %bb.p ], [ true, %bb.d ] ; 11 uses
  %.023 = phi i1 [ %.124, %bb.p ], [ true, %bb.d ] ; 11 uses
  %.020 = phi i1 [ %.121, %bb.p ], [ true, %bb.d ] ; 11 uses
  %.019 = phi i1 [ %.1, %bb.p ], [ true, %bb.d ]  ; 11 uses
  %.0 = phi i32 [ %i.g, %bb.p ], [ 0, %bb.d ]     ; 2 uses
  %i.d = zext i32 %.0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  switch i8 %i.f, label %bb.p [
    i8 0, label %bb.e
    i8 74, label %bb.f
    i8 103, label %bb.g
    i8 109, label %bb.h
    i8 100, label %bb.i
    i8 97, label %bb.j
    i8 98, label %bb.k
    i8 108, label %bb.l
    i8 120, label %bb.m
    i8 101, label %bb.n
    i8 104, label %bb.o
  ]

bb.e:                                             ; preds = %.preheader
  %spec.select = select i1 %.044, i32 1, i32 2
  br label %select.unfold

bb.f:                                             ; preds = %.preheader
  br label %bb.p

bb.g:                                             ; preds = %.preheader
  br label %bb.p

bb.h:                                             ; preds = %.preheader
  br label %bb.p

bb.i:                                             ; preds = %.preheader
  br label %bb.p

bb.j:                                             ; preds = %.preheader
  br label %bb.p

bb.k:                                             ; preds = %.preheader
  br label %bb.p

bb.l:                                             ; preds = %.preheader
  br label %bb.p

bb.m:                                             ; preds = %.preheader
  br label %bb.p

bb.n:                                             ; preds = %.preheader
  br label %bb.p

bb.o:                                             ; preds = %.preheader
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.145 = phi i1 [ %.044, %.preheader ], [ true, %bb.f ], [ %.044, %bb.g ], [ %.044, %bb.h ], [ %.044, %bb.i ], [ %.044, %bb.j ], [ %.044, %bb.k ], [ %.044, %bb.l ], [ %.044, %bb.m ], [ %.044, %bb.n ], [ %.044, %bb.o ]
  %.142 = phi i1 [ %.041, %.preheader ], [ %.041, %bb.f ], [ false, %bb.g ], [ %.041, %bb.h ], [ %.041, %bb.i ], [ %.041, %bb.j ], [ %.041, %bb.k ], [ %.041, %bb.l ], [ %.041, %bb.m ], [ %.041, %bb.n ], [ %.041, %bb.o ]
  %.139 = phi i1 [ %.038, %.preheader ], [ %.038, %bb.f ], [ %.038, %bb.g ], [ false, %bb.h ], [ %.038, %bb.i ], [ %.038, %bb.j ], [ %.038, %bb.k ], [ %.038, %bb.l ], [ %.038, %bb.m ], [ %.038, %bb.n ], [ %.038, %bb.o ]
  %.136 = phi i1 [ %.035, %.preheader ], [ %.035, %bb.f ], [ %.035, %bb.g ], [ %.035, %bb.h ], [ false, %bb.i ], [ %.035, %bb.j ], [ %.035, %bb.k ], [ %.035, %bb.l ], [ %.035, %bb.m ], [ %.035, %bb.n ], [ %.035, %bb.o ]
  %.133 = phi i1 [ %.032, %.preheader ], [ %.032, %bb.f ], [ %.032, %bb.g ], [ %.032, %bb.h ], [ %.032, %bb.i ], [ false, %bb.j ], [ %.032, %bb.k ], [ %.032, %bb.l ], [ %.032, %bb.m ], [ %.032, %bb.n ], [ %.032, %bb.o ]
  %.130 = phi i1 [ %.029, %.preheader ], [ %.029, %bb.f ], [ %.029, %bb.g ], [ %.029, %bb.h ], [ %.029, %bb.i ], [ %.029, %bb.j ], [ false, %bb.k ], [ %.029, %bb.l ], [ %.029, %bb.m ], [ %.029, %bb.n ], [ %.029, %bb.o ]
  %.127 = phi i1 [ %.026, %.preheader ], [ %.026, %bb.f ], [ %.026, %bb.g ], [ %.026, %bb.h ], [ %.026, %bb.i ], [ %.026, %bb.j ], [ %.026, %bb.k ], [ false, %bb.l ], [ %.026, %bb.m ], [ %.026, %bb.n ], [ %.026, %bb.o ]
  %.124 = phi i1 [ %.023, %.preheader ], [ %.023, %bb.f ], [ %.023, %bb.g ], [ %.023, %bb.h ], [ %.023, %bb.i ], [ %.023, %bb.j ], [ %.023, %bb.k ], [ %.023, %bb.l ], [ false, %bb.m ], [ %.023, %bb.n ], [ %.023, %bb.o ]
  %.121 = phi i1 [ %.020, %.preheader ], [ %.020, %bb.f ], [ %.020, %bb.g ], [ %.020, %bb.h ], [ %.020, %bb.i ], [ %.020, %bb.j ], [ %.020, %bb.k ], [ %.020, %bb.l ], [ %.020, %bb.m ], [ false, %bb.n ], [ %.020, %bb.o ]
  %.1 = phi i1 [ %.019, %.preheader ], [ %.019, %bb.f ], [ %.019, %bb.g ], [ %.019, %bb.h ], [ %.019, %bb.i ], [ %.019, %bb.j ], [ %.019, %bb.k ], [ %.019, %bb.l ], [ %.019, %bb.m ], [ %.019, %bb.n ], [ false, %bb.o ]
  %i.g = add i32 %.0, 1
  br label %.preheader, !llvm.loop !15

select.unfold:                                    ; preds = %bb.e, %bb.d
  %.246 = phi i32 [ %spec.select, %bb.e ], [ 2, %bb.d ] ; 2 uses
  %.243 = phi i1 [ %.041, %bb.e ], [ true, %bb.d ]
  %.240 = phi i1 [ %.038, %bb.e ], [ true, %bb.d ]
  %.237 = phi i1 [ %.035, %bb.e ], [ true, %bb.d ]
  %.234 = phi i1 [ %.032, %bb.e ], [ true, %bb.d ]
  %.231 = phi i1 [ %.029, %bb.e ], [ true, %bb.d ]
  %.228 = phi i1 [ %.026, %bb.e ], [ true, %bb.d ]
  %.225 = phi i1 [ %.023, %bb.e ], [ true, %bb.d ]
  %.222 = phi i1 [ %.020, %bb.e ], [ true, %bb.d ]
  %.2 = phi i1 [ %.019, %bb.e ], [ true, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i32 %.246, ptr %3, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.i, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 4 uses
  store i8 0, ptr %i.j, align 4, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 0, ptr %i.k, align 1, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  store i32 0, ptr %i.l, align 8, !tbaa !25
  %spec.select.i.i = icmp samesign ult i32 %.246, 2
  br i1 %spec.select.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %select.unfold
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.6)
  store i32 1, ptr %i.l, align 8, !tbaa !25
  store i8 0, ptr %i.j, align 4, !tbaa !23
  br label %emitter_begin.exit

bb.r:                                             ; preds = %select.unfold
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
  br label %emitter_begin.exit

emitter_begin.exit:                               ; preds = %bb.q, %bb.r
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %3, ptr noundef nonnull @.str.3)
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %3, ptr noundef nonnull @.str.4)
  br i1 %.243, label %bb.s, label %bb.t

bb.s:                                             ; preds = %emitter_begin.exit
  call fastcc void @stats_general_print(ptr noundef %3) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %emitter_begin.exit
  call fastcc void @stats_print_helper(ptr noundef %3, i1 noundef zeroext %.240, i1 noundef zeroext %.237, i1 noundef zeroext %.234, i1 noundef zeroext %.231, i1 noundef zeroext %.228, i1 noundef zeroext %.225, i1 noundef zeroext %.222, i1 noundef zeroext %.2) #16
  %.val.i52 = load i32, ptr %3, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i53 = icmp ult i32 %.val.i52, 2
  br i1 %spec.select.i.i53, label %bb.u, label %emitter_json_object_end.exit

bb.u:                                             ; preds = %bb.t
  %i.m = load i32, ptr %i.l, align 8, !tbaa !25
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !25
  store i8 1, ptr %i.j, align 4, !tbaa !23
  %.not.i = icmp eq i32 %.val.i52, 1
  br i1 %.not.i, label %emitter_indent.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.12)
  %i.o = load i32, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %i.p = load i32, ptr %3, align 8, !tbaa !17
  %i.q = icmp ne i32 %i.p, 0                      ; 2 uses
  %.07.i.i = select i1 %i.q, ptr @.str.10, ptr @.str.13
  %i.r = icmp sgt i32 %i.o, 0
  br i1 %i.r, label %.lr.ph.preheader.i.i, label %emitter_indent.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.v
  %i.s = zext i1 %i.q to i32
  %.08.i.i = shl nuw nsw i32 %i.o, %i.s
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi i32 [ %i.t, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %3, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i)
  %i.t = add nuw nsw i32 %.09.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.t, %.08.i.i
  br i1 %exitcond.not.i.i, label %emitter_indent.exit.i, label %.lr.ph.i.i, !llvm.loop !26

emitter_indent.exit.i:                            ; preds = %.lr.ph.i.i, %bb.v, %bb.u
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit

emitter_json_object_end.exit:                     ; preds = %bb.t, %emitter_indent.exit.i
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %3, ptr noundef nonnull @.str.5)
  %.val.i54 = load i32, ptr %3, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i55 = icmp ult i32 %.val.i54, 2
  br i1 %spec.select.i.i55, label %bb.w, label %emitter_end.exit

bb.w:                                             ; preds = %emitter_json_object_end.exit
  %i.u = load i32, ptr %i.l, align 8, !tbaa !25
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.l, align 8, !tbaa !25
  store i8 1, ptr %i.j, align 4, !tbaa !23
  %i.w = icmp eq i32 %.val.i54, 1
  %i.x = select i1 %i.w, ptr @.str.534, ptr @.str.535
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.x)
  br label %emitter_end.exit

emitter_end.exit:                                 ; preds = %emitter_json_object_end.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.x

bb.x:                                             ; preds = %emitter_end.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @mallctl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @je_malloc_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @emitter_table_printf(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ...) unnamed_addr #5 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !17
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  call void @je_malloc_vcprintf(ptr noundef %i.d, ptr noundef %i.f, ptr noundef %1, ptr noundef nonnull %2) #14
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emitter_json_object_kv_begin(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %.val.i = load i32, ptr %0, align 8, !tbaa !17  ; 3 uses
  %spec.select.i.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i.i, label %bb.b, label %emitter_json_object_begin.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !24, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 1, !tbaa !24
  br label %emitter_json_key_prefix.exit.i

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i8, ptr %i.d, align 4, !tbaa !23, !range !27, !noundef !28
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11)
  %.pre.i = load i32, ptr %0, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = phi i32 [ %.pre.i, %bb.e ], [ %.val.i, %bb.d ]
  %.not.i.i = icmp eq i32 %i.g, 1
  br i1 %.not.i.i, label %emitter_json_key_prefix.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.k = icmp ne i32 %i.j, 0                      ; 2 uses
  %.07.i.i.i = select i1 %i.k, ptr @.str.10, ptr @.str.13
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph.preheader.i.i.i, label %emitter_json_key_prefix.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  %i.m = zext i1 %i.k to i32
  %.08.i.i.i = shl nuw nsw i32 %i.i, %i.m
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.n, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i.i)
  %i.n = add nuw nsw i32 %.09.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.n, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_json_key_prefix.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !26

emitter_json_key_prefix.exit.loopexit.i:          ; preds = %.lr.ph.i.i.i
  %.pre6.i = load i32, ptr %0, align 8, !tbaa !17
  br label %emitter_json_key_prefix.exit.i

emitter_json_key_prefix.exit.i:                   ; preds = %emitter_json_key_prefix.exit.loopexit.i, %bb.g, %bb.c
  %i.o = phi i32 [ %.pre6.i, %emitter_json_key_prefix.exit.loopexit.i ], [ %.val.i, %bb.c ], [ %i.j, %bb.g ]
  %.fr.i = freeze i32 %i.o
  %i.p = icmp eq i32 %.fr.i, 1
  br i1 %i.p, label %emitter_json_key_prefix.exit.thread.i, label %emitter_json_key.exit

emitter_json_key_prefix.exit.thread.i:            ; preds = %emitter_json_key_prefix.exit.i, %bb.f
  br label %emitter_json_key.exit

emitter_json_key.exit:                            ; preds = %emitter_json_key_prefix.exit.i, %emitter_json_key_prefix.exit.thread.i
  %i.q = phi ptr [ @.str.8, %emitter_json_key_prefix.exit.thread.i ], [ @.str.10, %emitter_json_key_prefix.exit.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, ptr noundef %1, ptr noundef nonnull %i.q)
  store i8 1, ptr %i.a, align 1, !tbaa !24
  %.val.i3.pr = load i32, ptr %0, align 8, !tbaa !17
  %spec.select.i.i4 = icmp ult i32 %.val.i3.pr, 2
  br i1 %spec.select.i.i4, label %emitter_json_key_prefix.exit.i7, label %emitter_json_object_begin.exit

emitter_json_key_prefix.exit.i7:                  ; preds = %emitter_json_key.exit
  store i8 0, ptr %i.a, align 1, !tbaa !24
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !25
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.u, align 4, !tbaa !23
  br label %emitter_json_object_begin.exit

emitter_json_object_begin.exit:                   ; preds = %bb.a, %emitter_json_key.exit, %emitter_json_key_prefix.exit.i7
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @stats_general_print(ptr nofree noundef nonnull %0) unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 37 uses
  %i.b = alloca i8, align 1                       ; 82 uses
  %i.c = alloca i8, align 1                       ; 8 uses
  %i.d = alloca i32, align 4                      ; 20 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i64, align 8                      ; 8 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 18 uses
  %i.i = alloca i64, align 8                      ; 8 uses
  %i.j = alloca i64, align 8                      ; 42 uses
  %i.k = alloca i64, align 8                      ; 34 uses
  %i.l = alloca i64, align 8                      ; 11 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %i.n = alloca i64, align 8                      ; 6 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 17 uses
  %i.q = alloca i64, align 8                      ; 12 uses
  %i.r = alloca i64, align 8                      ; 18 uses
  %i.s = alloca i64, align 8                      ; 4 uses
  %i.t = alloca i64, align 8                      ; 4 uses
  %i.u = alloca i64, align 8                      ; 4 uses
  %i.v = alloca i64, align 8                      ; 4 uses
  %i.w = alloca i64, align 8                      ; 4 uses
  %i.x = alloca i64, align 8                      ; 4 uses
  %i.y = alloca i64, align 8                      ; 4 uses
  %i.z = alloca i64, align 8                      ; 4 uses
  %i.aa = alloca i64, align 8                     ; 4 uses
  %i.ab = alloca i64, align 8                     ; 4 uses
  %i.ac = alloca i64, align 8                     ; 4 uses
  %i.ad = alloca i64, align 8                     ; 4 uses
  %i.ae = alloca i64, align 8                     ; 4 uses
  %i.af = alloca ptr, align 8                     ; 4 uses
  %i.ag = alloca ptr, align 8                     ; 4 uses
  %i.ah = alloca [21 x i8], align 16              ; 4 uses
  %i.ai = alloca ptr, align 8                     ; 4 uses
  %i.aj = alloca i64, align 8                     ; 4 uses
  %i.ak = alloca i64, align 8                     ; 4 uses
  %i.al = alloca i64, align 8                     ; 4 uses
  %i.am = alloca i64, align 8                     ; 4 uses
  %i.an = alloca i64, align 8                     ; 4 uses
  %i.ao = alloca i64, align 8                     ; 4 uses
  %i.ap = alloca i32, align 4                     ; 6 uses
  %i.aq = alloca i64, align 8                     ; 4 uses
  %i.ar = alloca i32, align 4                     ; 4 uses
  %i.as = alloca i64, align 8                     ; 4 uses
  %i.at = alloca [7 x i64], align 16              ; 8 uses
  %i.au = alloca i64, align 8                     ; 4 uses
  %i.av = alloca i64, align 8                     ; 4 uses
  %i.aw = alloca i64, align 8                     ; 4 uses
  %i.ax = alloca i64, align 8                     ; 4 uses
  %i.ay = alloca i64, align 8                     ; 4 uses
  %i.az = alloca i64, align 8                     ; 4 uses
  %i.ba = alloca i64, align 8                     ; 4 uses
  %i.bb = alloca i64, align 8                     ; 4 uses
  %i.bc = alloca i64, align 8                     ; 4 uses
  %i.bd = alloca i32, align 4                     ; 6 uses
  %i.be = alloca i64, align 8                     ; 4 uses
  %i.bf = alloca [7 x i64], align 16              ; 6 uses
  %i.bg = alloca i64, align 8                     ; 4 uses
  %i.bh = alloca i64, align 8                     ; 4 uses
  %i.bi = alloca i64, align 8                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #14
  store i64 1, ptr %i.k, align 8, !tbaa !12
  store i64 4, ptr %i.l, align 8, !tbaa !12
  store i64 8, ptr %i.p, align 8, !tbaa !12
  store i64 8, ptr %i.q, align 8, !tbaa !12
  store i64 8, ptr %i.r, align 8, !tbaa !12
  store i64 4, ptr %i.m, align 8, !tbaa !12
  store i64 8, ptr %i.o, align 8, !tbaa !12
  store i64 8, ptr %i.n, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #14
  store i64 8, ptr %i.s, align 8, !tbaa !12
  %i.bj = call i32 @mallctl(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.a, ptr noundef nonnull %i.s, ptr noundef null, i64 noundef 0) #14
  %.not = icmp eq i32 %i.bj, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14) #14
  call void @abort() #15
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 8, ptr noundef nonnull readonly %i.a, ptr noundef null, i32 noundef 0, ptr noundef null)
  call fastcc void @emitter_dict_begin(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #14
  store i64 1, ptr %i.t, align 8, !tbaa !12
  %i.bk = call i32 @mallctl(ptr noundef nonnull @.str.19, ptr noundef nonnull %i.b, ptr noundef nonnull %i.t, ptr noundef null, i64 noundef 0) #14
  %.not131 = icmp eq i32 %i.bk, 0
  br i1 %.not131, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.19) #14
  call void @abort() #15
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #14
  store i64 1, ptr %i.u, align 8, !tbaa !12
  %i.bl = call i32 @mallctl(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.b, ptr noundef nonnull %i.u, ptr noundef null, i64 noundef 0) #14
  %.not132 = icmp eq i32 %i.bl, 0
  br i1 %.not132, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.21) #14
  call void @abort() #15
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #14
  store i64 1, ptr %i.v, align 8, !tbaa !12
  %i.bm = call i32 @mallctl(ptr noundef nonnull @.str.23, ptr noundef nonnull %i.b, ptr noundef nonnull %i.v, ptr noundef null, i64 noundef 0) #14
  %.not133 = icmp eq i32 %i.bm, 0
  br i1 %.not133, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.23) #14
  call void @abort() #15
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #14
  store i64 1, ptr %i.w, align 8, !tbaa !12
  %i.bn = call i32 @mallctl(ptr noundef nonnull @.str.25, ptr noundef nonnull %i.b, ptr noundef nonnull %i.w, ptr noundef null, i64 noundef 0) #14
  %.not134 = icmp eq i32 %i.bn, 0
  br i1 %.not134, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.25) #14
  call void @abort() #15
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 8, ptr noundef nonnull @config_malloc_conf, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #14
  store i64 1, ptr %i.x, align 8, !tbaa !12
  %i.bo = call i32 @mallctl(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.b, ptr noundef nonnull %i.x, ptr noundef null, i64 noundef 0) #14
  %.not135 = icmp eq i32 %i.bo, 0
  br i1 %.not135, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.29) #14
  call void @abort() #15
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #14
  store i64 1, ptr %i.y, align 8, !tbaa !12
  %i.bp = call i32 @mallctl(ptr noundef nonnull @.str.31, ptr noundef nonnull %i.b, ptr noundef nonnull %i.y, ptr noundef null, i64 noundef 0) #14
  %.not136 = icmp eq i32 %i.bp, 0
  br i1 %.not136, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.31) #14
  call void @abort() #15
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #14
  store i64 1, ptr %i.z, align 8, !tbaa !12
  %i.bq = call i32 @mallctl(ptr noundef nonnull @.str.33, ptr noundef nonnull %i.b, ptr noundef nonnull %i.z, ptr noundef null, i64 noundef 0) #14
  %.not137 = icmp eq i32 %i.bq, 0
  br i1 %.not137, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.33) #14
  call void @abort() #15
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #14
  store i64 1, ptr %i.aa, align 8, !tbaa !12
  %i.br = call i32 @mallctl(ptr noundef nonnull @.str.35, ptr noundef nonnull %i.b, ptr noundef nonnull %i.aa, ptr noundef null, i64 noundef 0) #14
  %.not138 = icmp eq i32 %i.br, 0
  br i1 %.not138, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.35) #14
  call void @abort() #15
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #14
  store i64 1, ptr %i.ab, align 8, !tbaa !12
  %i.bs = call i32 @mallctl(ptr noundef nonnull @.str.37, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ab, ptr noundef null, i64 noundef 0) #14
  %.not139 = icmp eq i32 %i.bs, 0
  br i1 %.not139, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.37) #14
  call void @abort() #15
  unreachable

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #14
  store i64 1, ptr %i.ac, align 8, !tbaa !12
  %i.bt = call i32 @mallctl(ptr noundef nonnull @.str.39, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ac, ptr noundef null, i64 noundef 0) #14
  %.not140 = icmp eq i32 %i.bt, 0
  br i1 %.not140, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.39) #14
  call void @abort() #15
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #14
  store i64 1, ptr %i.ad, align 8, !tbaa !12
  %i.bu = call i32 @mallctl(ptr noundef nonnull @.str.41, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ad, ptr noundef null, i64 noundef 0) #14
  %.not141 = icmp eq i32 %i.bu, 0
  br i1 %.not141, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.41) #14
  call void @abort() #15
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #14
  store i64 1, ptr %i.ae, align 8, !tbaa !12
  %i.bv = call i32 @mallctl(ptr noundef nonnull @.str.43, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ae, ptr noundef null, i64 noundef 0) #14
  %.not142 = icmp eq i32 %i.bv, 0
  br i1 %.not142, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.43) #14
  call void @abort() #15
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  %.val.i = load i32, ptr %0, align 8, !tbaa !17  ; 3 uses
  %spec.select.i.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !25
  %i.by = add nsw i32 %i.bx, -1
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !25
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.bz, align 4, !tbaa !23
  %.not.i.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i.i, label %emitter_json_object_end.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.ca = load i32, ptr %i.bw, align 8, !tbaa !25 ; 2 uses
  %i.cb = load i32, ptr %0, align 8, !tbaa !17
  %i.cc = icmp ne i32 %i.cb, 0                    ; 2 uses
  %.07.i.i.i = select i1 %i.cc, ptr @.str.10, ptr @.str.13
  %i.cd = icmp sgt i32 %i.ca, 0
  br i1 %i.cd, label %.lr.ph.preheader.i.i.i, label %emitter_json_object_end.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ac
  %i.ce = zext i1 %i.cc to i32
  %.08.i.i.i = shl nuw nsw i32 %i.ca, %i.ce
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.cf, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i.i)
  %i.cf = add nuw nsw i32 %.09.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.cf, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_json_object_end.exit.i, label %.lr.ph.i.i.i, !llvm.loop !26

emitter_json_object_end.exit.i:                   ; preds = %.lr.ph.i.i.i, %bb.ac, %bb.ab
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_dict_end.exit

bb.ad:                                            ; preds = %bb.aa
  %i.cg = icmp eq i32 %.val.i, 2
  br i1 %i.cg, label %bb.ae, label %emitter_dict_end.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !25
  %i.cj = add nsw i32 %i.ci, -1
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !25
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.ck, align 4, !tbaa !23
  br label %emitter_dict_end.exit

emitter_dict_end.exit:                            ; preds = %emitter_json_object_end.exit.i, %bb.ad, %bb.ae
  call fastcc void @emitter_dict_begin(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #14
  %i.cl = load i32, ptr @je_init_system_thp_mode, align 4, !tbaa !29
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr @je_system_thp_mode_names, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !30
  store ptr %i.co, ptr %i.af, align 8, !tbaa !30
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 8, ptr noundef nonnull readonly %i.af, ptr noundef null, i32 noundef 0, ptr noundef null)
  %.val.i181 = load i32, ptr %0, align 8, !tbaa !17 ; 3 uses
  %spec.select.i.i182 = icmp ult i32 %.val.i181, 2
  br i1 %spec.select.i.i182, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %emitter_dict_end.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !25
  %i.cr = add nsw i32 %i.cq, -1
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !25
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.cs, align 4, !tbaa !23
  %.not.i.i183 = icmp eq i32 %.val.i181, 1
  br i1 %.not.i.i183, label %emitter_json_object_end.exit.i185, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.ct = load i32, ptr %i.cp, align 8, !tbaa !25 ; 2 uses
  %i.cu = load i32, ptr %0, align 8, !tbaa !17
  %i.cv = icmp ne i32 %i.cu, 0                    ; 2 uses
  %.07.i.i.i184 = select i1 %i.cv, ptr @.str.10, ptr @.str.13
  %i.cw = icmp sgt i32 %i.ct, 0
  br i1 %i.cw, label %.lr.ph.preheader.i.i.i186, label %emitter_json_object_end.exit.i185

.lr.ph.preheader.i.i.i186:                        ; preds = %bb.ag
  %i.cx = zext i1 %i.cv to i32
  %.08.i.i.i187 = shl nuw nsw i32 %i.ct, %i.cx
  br label %.lr.ph.i.i.i188

.lr.ph.i.i.i188:                                  ; preds = %.lr.ph.i.i.i188, %.lr.ph.preheader.i.i.i186
  %.09.i.i.i189 = phi i32 [ %i.cy, %.lr.ph.i.i.i188 ], [ 0, %.lr.ph.preheader.i.i.i186 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i.i184)
  %i.cy = add nuw nsw i32 %.09.i.i.i189, 1        ; 2 uses
  %exitcond.not.i.i.i190 = icmp eq i32 %i.cy, %.08.i.i.i187
  br i1 %exitcond.not.i.i.i190, label %emitter_json_object_end.exit.i185, label %.lr.ph.i.i.i188, !llvm.loop !26

emitter_json_object_end.exit.i185:                ; preds = %.lr.ph.i.i.i188, %bb.ag, %bb.af
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_dict_end.exit191

bb.ah:                                            ; preds = %emitter_dict_end.exit
  %i.cz = icmp eq i32 %.val.i181, 2
  br i1 %i.cz, label %bb.ai, label %emitter_dict_end.exit191

bb.ai:                                            ; preds = %bb.ah
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !25
  %i.dc = add nsw i32 %i.db, -1
  store i32 %i.dc, ptr %i.da, align 8, !tbaa !25
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.dd, align 4, !tbaa !23
  br label %emitter_dict_end.exit191

emitter_dict_end.exit191:                         ; preds = %emitter_json_object_end.exit.i185, %bb.ah, %bb.ai
  call fastcc void @emitter_dict_begin(ptr noundef %0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50)
  %i.de = call i32 @mallctl(ptr noundef nonnull @.str.51, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r, ptr noundef null, i64 noundef 0) #14
  %.not143 = icmp eq i32 %i.de, 0
  br i1 %.not143, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %emitter_dict_end.exit191
  store ptr @.str.8, ptr %i.a, align 8, !tbaa !30
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %emitter_dict_end.exit191
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 8, ptr noundef nonnull readonly %i.a, ptr noundef null, i32 noundef 0, ptr noundef null)
  %i.df = call i32 @mallctl(ptr noundef nonnull @.str.54, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r, ptr noundef null, i64 noundef 0) #14
  %.not144 = icmp eq i32 %i.df, 0
  br i1 %.not144, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr @.str.8, ptr %i.a, align 8, !tbaa !30
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 8, ptr noundef nonnull readonly %i.a, ptr noundef null, i32 noundef 0, ptr noundef null)
  %i.dg = call i32 @mallctl(ptr noundef nonnull @.str.57, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r, ptr noundef null, i64 noundef 0) #14
  %.not145 = icmp eq i32 %i.dg, 0
  br i1 %.not145, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr @.str.8, ptr %i.a, align 8, !tbaa !30
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 8, ptr noundef nonnull readonly %i.a, ptr noundef null, i32 noundef 0, ptr noundef null)
  %i.dh = call i32 @mallctl(ptr noundef nonnull @.str.60, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r, ptr noundef null, i64 noundef 0) #14
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 8, ptr noundef nonnull readonly %i.a, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dj = call i32 @mallctl(ptr noundef nonnull @.str.63, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.dl = call i32 @mallctl(ptr noundef nonnull @.str.65, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dn = call i32 @mallctl(ptr noundef nonnull @.str.67, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.67, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.dp = call i32 @mallctl(ptr noundef nonnull @.str.68, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.68, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.dr = call i32 @mallctl(ptr noundef nonnull @.str.70, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.70, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.dt = call i32 @mallctl(ptr noundef nonnull @.str.72, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.dv = call i32 @mallctl(ptr noundef nonnull @.str.74, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.dx = call i32 @mallctl(ptr noundef nonnull @.str.76, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r, ptr noundef null, i64 noundef 0) #14
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.76, i32 noundef 8, ptr noundef nonnull readonly %i.a, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.dz = call i32 @mallctl(ptr noundef nonnull @.str.78, ptr noundef nonnull %i.d, ptr noundef nonnull %i.l, ptr noundef null, i64 noundef 0) #14
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.78, i32 noundef 3, ptr noundef nonnull readonly %i.d, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.eb = call i32 @mallctl(ptr noundef nonnull @.str.80, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r, ptr noundef null, i64 noundef 0) #14
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i32 noundef 8, ptr noundef nonnull readonly %i.a, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ed = call i32 @mallctl(ptr noundef nonnull @.str.82, ptr noundef nonnull %i.j, ptr noundef nonnull %i.p, ptr noundef null, i64 noundef 0) #14
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82, i32 noundef 6, ptr noundef nonnull readonly %i.j, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ef = call i32 @mallctl(ptr noundef nonnull @.str.84, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.eh = call i32 @mallctl(ptr noundef nonnull @.str.86, ptr noundef nonnull %i.j, ptr noundef nonnull %i.p, ptr noundef null, i64 noundef 0) #14
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.86, i32 noundef 6, ptr noundef nonnull readonly %i.j, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ej = call i32 @mallctl(ptr noundef nonnull @.str.88, ptr noundef nonnull %i.j, ptr noundef nonnull %i.p, ptr noundef null, i64 noundef 0) #14
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88, i32 noundef 6, ptr noundef nonnull readonly %i.j, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.el = call i32 @mallctl(ptr noundef nonnull @.str.90, ptr noundef nonnull %i.f, ptr noundef nonnull %i.n, ptr noundef null, i64 noundef 0) #14
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.90, i32 noundef 5, ptr noundef nonnull readonly %i.f, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.en = call i32 @mallctl(ptr noundef nonnull @.str.92, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
end_hunk_0
begin_hunk_1_@stats_general_print:bb.a
  br i1 %i.hw, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  %i.hx = call i32 @mallctl(ptr noundef nonnull @.str.171, ptr noundef nonnull %i.c, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  call fastcc void @emitter_kv_note(ptr noundef %0, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.170, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.171, i32 noundef 0, ptr noundef nonnull %i.c)
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %bb.ez
  %i.hz = call i32 @mallctl(ptr noundef nonnull @.str.173, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  %i.ib = call i32 @mallctl(ptr noundef nonnull @.str.174, ptr noundef nonnull %i.c, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  call fastcc void @emitter_kv_note(ptr noundef %0, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.173, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.174, i32 noundef 0, ptr noundef nonnull %i.c)
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd, %bb.fc
  %i.id = call i32 @mallctl(ptr noundef nonnull @.str.176, ptr noundef nonnull %i.h, ptr noundef nonnull %i.q, ptr noundef null, i64 noundef 0) #14
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  %i.if = call i32 @mallctl(ptr noundef nonnull @.str.177, ptr noundef nonnull %i.i, ptr noundef nonnull %i.q, ptr noundef null, i64 noundef 0) #14
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  call fastcc void @emitter_kv_note(ptr noundef %0, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.176, i32 noundef 7, ptr noundef nonnull %i.h, ptr noundef nonnull @.str.177, i32 noundef 7, ptr noundef nonnull %i.i)
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %bb.ff
  %i.ih = call i32 @mallctl(ptr noundef nonnull @.str.179, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.179, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.ij = call i32 @mallctl(ptr noundef nonnull @.str.181, ptr noundef nonnull %i.h, ptr noundef nonnull %i.q, ptr noundef null, i64 noundef 0) #14
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.181, i32 noundef 7, ptr noundef nonnull readonly %i.h, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.il = call i32 @mallctl(ptr noundef nonnull @.str.183, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.183, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %i.in = call i32 @mallctl(ptr noundef nonnull @.str.185, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.185, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.ip = call i32 @mallctl(ptr noundef nonnull @.str.187, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.187, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.ir = call i32 @mallctl(ptr noundef nonnull @.str.189, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.189, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %i.it = call i32 @mallctl(ptr noundef nonnull @.str.191, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.191, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.iv = call i32 @mallctl(ptr noundef nonnull @.str.193, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r, ptr noundef null, i64 noundef 0) #14
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.193, i32 noundef 8, ptr noundef nonnull readonly %i.a, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.ix = call i32 @mallctl(ptr noundef nonnull @.str.191, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.191, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %i.iz = call i32 @mallctl(ptr noundef nonnull @.str.193, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r, ptr noundef null, i64 noundef 0) #14
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.193, i32 noundef 8, ptr noundef nonnull readonly %i.a, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.jb = call i32 @mallctl(ptr noundef nonnull @.str.195, ptr noundef nonnull %i.g, ptr noundef nonnull %i.o, ptr noundef null, i64 noundef 0) #14
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.195, i32 noundef 2, ptr noundef nonnull readonly %i.g, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.jd = call i32 @mallctl(ptr noundef nonnull @.str.197, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r, ptr noundef null, i64 noundef 0) #14
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.197, i32 noundef 8, ptr noundef nonnull readonly %i.a, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.jf = call i32 @mallctl(ptr noundef nonnull @.str.199, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r, ptr noundef null, i64 noundef 0) #14
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.199, i32 noundef 8, ptr noundef nonnull readonly %i.a, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %i.jh = call i32 @mallctl(ptr noundef nonnull @.str.201, ptr noundef nonnull %i.j, ptr noundef nonnull %i.p, ptr noundef null, i64 noundef 0) #14
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.201, i32 noundef 6, ptr noundef nonnull readonly %i.j, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.jj = call i32 @mallctl(ptr noundef nonnull @.str.203, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.203, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.val.i192 = load i32, ptr %0, align 8, !tbaa !17 ; 3 uses
  %spec.select.i.i193 = icmp ult i32 %.val.i192, 2
  br i1 %spec.select.i.i193, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %bb.gm
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !25
  %i.jn = add nsw i32 %i.jm, -1
  store i32 %i.jn, ptr %i.jl, align 8, !tbaa !25
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.jo, align 4, !tbaa !23
  %.not.i.i194 = icmp eq i32 %.val.i192, 1
  br i1 %.not.i.i194, label %emitter_json_object_end.exit.i196, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.jp = load i32, ptr %i.jl, align 8, !tbaa !25 ; 2 uses
  %i.jq = load i32, ptr %0, align 8, !tbaa !17
  %i.jr = icmp ne i32 %i.jq, 0                    ; 2 uses
  %.07.i.i.i195 = select i1 %i.jr, ptr @.str.10, ptr @.str.13
  %i.js = icmp sgt i32 %i.jp, 0
  br i1 %i.js, label %.lr.ph.preheader.i.i.i197, label %emitter_json_object_end.exit.i196

.lr.ph.preheader.i.i.i197:                        ; preds = %bb.go
  %i.jt = zext i1 %i.jr to i32
  %.08.i.i.i198 = shl nuw nsw i32 %i.jp, %i.jt
  br label %.lr.ph.i.i.i199

.lr.ph.i.i.i199:                                  ; preds = %.lr.ph.i.i.i199, %.lr.ph.preheader.i.i.i197
  %.09.i.i.i200 = phi i32 [ %i.ju, %.lr.ph.i.i.i199 ], [ 0, %.lr.ph.preheader.i.i.i197 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i.i195)
  %i.ju = add nuw nsw i32 %.09.i.i.i200, 1        ; 2 uses
  %exitcond.not.i.i.i201 = icmp eq i32 %i.ju, %.08.i.i.i198
  br i1 %exitcond.not.i.i.i201, label %emitter_json_object_end.exit.i196, label %.lr.ph.i.i.i199, !llvm.loop !26

emitter_json_object_end.exit.i196:                ; preds = %.lr.ph.i.i.i199, %bb.go, %bb.gn
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_dict_end.exit202

bb.gp:                                            ; preds = %bb.gm
  %i.jv = icmp eq i32 %.val.i192, 2
  br i1 %i.jv, label %bb.gq, label %emitter_dict_end.exit202

bb.gq:                                            ; preds = %bb.gp
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !25
  %i.jy = add nsw i32 %i.jx, -1
  store i32 %i.jy, ptr %i.jw, align 8, !tbaa !25
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.jz, align 4, !tbaa !23
  br label %emitter_dict_end.exit202

emitter_dict_end.exit202:                         ; preds = %emitter_json_object_end.exit.i196, %bb.gp, %bb.gq
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.205)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #14
  store i64 4, ptr %i.aj, align 8, !tbaa !12
  %i.ka = call i32 @mallctl(ptr noundef nonnull @.str.206, ptr noundef nonnull %i.d, ptr noundef nonnull %i.aj, ptr noundef null, i64 noundef 0) #14
  %.not146 = icmp eq i32 %i.ka, 0
  br i1 %.not146, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %emitter_dict_end.exit202
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.206) #14
  call void @abort() #15
  unreachable

bb.gs:                                            ; preds = %emitter_dict_end.exit202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.207, i32 noundef 3, ptr noundef nonnull readonly %i.d, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #14
  store i64 8, ptr %i.ak, align 8, !tbaa !12
  %i.kb = call i32 @mallctl(ptr noundef nonnull @.str.124, ptr noundef nonnull %i.h, ptr noundef nonnull %i.ak, ptr noundef null, i64 noundef 0) #14
  %.not147 = icmp eq i32 %i.kb, 0
  br i1 %.not147, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.124) #14
  call void @abort() #15
  unreachable

bb.gu:                                            ; preds = %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.125, i32 noundef 7, ptr noundef %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #14
  store i64 8, ptr %i.al, align 8, !tbaa !12
  %i.kc = call i32 @mallctl(ptr noundef nonnull @.str.127, ptr noundef nonnull %i.h, ptr noundef nonnull %i.al, ptr noundef null, i64 noundef 0) #14
  %.not148 = icmp eq i32 %i.kc, 0
  br i1 %.not148, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.127) #14
  call void @abort() #15
  unreachable

bb.gw:                                            ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.128, i32 noundef 7, ptr noundef %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #14
  store i64 8, ptr %i.am, align 8, !tbaa !12
  %i.kd = call i32 @mallctl(ptr noundef nonnull @.str.208, ptr noundef nonnull %i.j, ptr noundef nonnull %i.am, ptr noundef null, i64 noundef 0) #14
  %.not149 = icmp eq i32 %i.kd, 0
  br i1 %.not149, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.208) #14
  call void @abort() #15
  unreachable

bb.gy:                                            ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210, i32 noundef 6, ptr noundef nonnull readonly %i.j, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #14
  store i64 8, ptr %i.an, align 8, !tbaa !12
  %i.ke = call i32 @mallctl(ptr noundef nonnull @.str.211, ptr noundef nonnull %i.j, ptr noundef nonnull %i.an, ptr noundef null, i64 noundef 0) #14
  %.not150 = icmp eq i32 %i.ke, 0
  br i1 %.not150, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.211) #14
  call void @abort() #15
  unreachable

bb.ha:                                            ; preds = %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.213, i32 noundef 6, ptr noundef nonnull readonly %i.j, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #14
  store i64 8, ptr %i.ao, align 8, !tbaa !12
  %i.kf = call i32 @mallctl(ptr noundef nonnull @.str.214, ptr noundef nonnull %i.j, ptr noundef nonnull %i.ao, ptr noundef null, i64 noundef 0) #14
  %.not151 = icmp eq i32 %i.kf, 0
  br i1 %.not151, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.214) #14
  call void @abort() #15
  unreachable

bb.hc:                                            ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.216, i32 noundef 6, ptr noundef nonnull readonly %i.j, ptr noundef null, i32 noundef 0, ptr noundef null)
  %i.kg = call i32 @mallctl(ptr noundef nonnull @.str.217, ptr noundef nonnull %i.j, ptr noundef nonnull %i.p, ptr noundef null, i64 noundef 0) #14
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.218, i32 noundef 6, ptr noundef nonnull readonly %i.j, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #14
  store i64 4, ptr %i.aq, align 8, !tbaa !12
  %i.ki = call i32 @mallctl(ptr noundef nonnull @.str.219, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, ptr noundef null, i64 noundef 0) #14
  %.not152 = icmp eq i32 %i.ki, 0
  br i1 %.not152, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.219) #14
  call void @abort() #15
  unreachable

bb.hg:                                            ; preds = %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.221, i32 noundef 3, ptr noundef nonnull readonly %i.ap, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as) #14
  store i64 4, ptr %i.as, align 8, !tbaa !12
  %i.kj = call i32 @mallctl(ptr noundef nonnull @.str.222, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noundef null, i64 noundef 0) #14
  %.not153 = icmp eq i32 %i.kj, 0
  br i1 %.not153, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.222) #14
  call void @abort() #15
  unreachable

bb.hi:                                            ; preds = %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.224, i32 noundef 3, ptr noundef nonnull readonly %i.ar, ptr noundef null, i32 noundef 0, ptr noundef null)
  %.val180 = load i32, ptr %0, align 8, !tbaa !17
  %spec.select.i = icmp ult i32 %.val180, 2
  br i1 %spec.select.i, label %bb.hj, label %bb.ik

bb.hj:                                            ; preds = %bb.hi
  call fastcc void @emitter_json_array_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.225)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #14
  store i64 7, ptr %i.au, align 8, !tbaa !12
  %i.kk = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 11 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 920 ; 5 uses
  %i.km = load i8, ptr %i.kl, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.km, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.hk, !prof !32

bb.hk:                                            ; preds = %bb.hj
  %i.kn = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.kk, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.hj, %bb.hk
  %.0.i = phi ptr [ %i.kn, %bb.hk ], [ %i.kk, %bb.hj ]
  %i.ko = call i32 @je_ctl_mibnametomib(ptr noundef %.0.i, ptr noundef nonnull %i.at, i64 noundef 0, ptr noundef nonnull @.str.226, ptr noundef nonnull %i.au) #14
  %.not154 = icmp eq i32 %i.ko, 0
  br i1 %.not154, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %tsd_fetch_impl.exit
  call void @je_malloc_write(ptr noundef nonnull @.str.227) #14
  call void @abort() #15
  unreachable

bb.hm:                                            ; preds = %tsd_fetch_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #14
  %i.kp = load i32, ptr %i.ap, align 4, !tbaa !29
  %.not281 = icmp eq i32 %i.kp, 0
  br i1 %.not281, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.hm
  %i.kq = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  br label %bb.hp

._crit_edge:                                      ; preds = %emitter_json_object_end.exit, %bb.hm
  %.val.i203 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i204 = icmp ult i32 %.val.i203, 2
  br i1 %spec.select.i.i204, label %bb.hn, label %emitter_json_array_end.exit

bb.hn:                                            ; preds = %._crit_edge
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !25
  %i.kw = add nsw i32 %i.kv, -1
  store i32 %i.kw, ptr %i.ku, align 8, !tbaa !25
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.kx, align 4, !tbaa !23
  %.not.i205 = icmp eq i32 %.val.i203, 1
  br i1 %.not.i205, label %emitter_indent.exit.i, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.ky = load i32, ptr %i.ku, align 8, !tbaa !25 ; 2 uses
  %i.kz = load i32, ptr %0, align 8, !tbaa !17
  %i.la = icmp ne i32 %i.kz, 0                    ; 2 uses
  %.07.i.i = select i1 %i.la, ptr @.str.10, ptr @.str.13
  %i.lb = icmp sgt i32 %i.ky, 0
  br i1 %i.lb, label %.lr.ph.preheader.i.i, label %emitter_indent.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ho
  %i.lc = zext i1 %i.la to i32
  %.08.i.i = shl nuw nsw i32 %i.ky, %i.lc
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi i32 [ %i.ld, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i)
  %i.ld = add nuw nsw i32 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ld, %.08.i.i
  br i1 %exitcond.not.i.i, label %emitter_indent.exit.i, label %.lr.ph.i.i, !llvm.loop !26

emitter_indent.exit.i:                            ; preds = %.lr.ph.i.i, %bb.ho, %bb.hn
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.256)
  br label %emitter_json_array_end.exit

emitter_json_array_end.exit:                      ; preds = %._crit_edge, %emitter_indent.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #14
  br label %bb.ik

bb.hp:                                            ; preds = %.lr.ph, %emitter_json_object_end.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %emitter_json_object_end.exit ] ; 2 uses
  store i64 %indvars.iv, ptr %i.kq, align 16, !tbaa !12
  %.val.i206 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i207 = icmp ult i32 %.val.i206, 2
  br i1 %spec.select.i.i207, label %bb.hq, label %emitter_json_object_begin.exit

bb.hq:                                            ; preds = %bb.hp
  %i.le = load i8, ptr %i.kr, align 1, !tbaa !24, !range !27, !noundef !28
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  store i8 0, ptr %i.kr, align 1, !tbaa !24
  br label %emitter_json_key_prefix.exit.i

bb.hs:                                            ; preds = %bb.hq
  %i.lg = load i8, ptr %i.ks, align 4, !tbaa !23, !range !27, !noundef !28
  %i.lh = trunc nuw i8 %i.lg to i1
  br i1 %i.lh, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11)
  %.pre.i = load i32, ptr %0, align 8, !tbaa !17
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %i.li = phi i32 [ %.pre.i, %bb.ht ], [ %.val.i206, %bb.hs ]
  %.not.i.i208 = icmp eq i32 %i.li, 1
  br i1 %.not.i.i208, label %emitter_json_key_prefix.exit.i, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.lj = load i32, ptr %i.kt, align 8, !tbaa !25 ; 2 uses
  %i.lk = load i32, ptr %0, align 8, !tbaa !17
  %i.ll = icmp ne i32 %i.lk, 0                    ; 2 uses
  %.07.i.i.i209 = select i1 %i.ll, ptr @.str.10, ptr @.str.13
  %i.lm = icmp sgt i32 %i.lj, 0
  br i1 %i.lm, label %.lr.ph.preheader.i.i.i210, label %emitter_json_key_prefix.exit.i

.lr.ph.preheader.i.i.i210:                        ; preds = %bb.hv
  %i.ln = zext i1 %i.ll to i32
  %.08.i.i.i211 = shl nuw nsw i32 %i.lj, %i.ln
  br label %.lr.ph.i.i.i212

.lr.ph.i.i.i212:                                  ; preds = %.lr.ph.i.i.i212, %.lr.ph.preheader.i.i.i210
  %.09.i.i.i213 = phi i32 [ %i.lo, %.lr.ph.i.i.i212 ], [ 0, %.lr.ph.preheader.i.i.i210 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i.i209)
  %i.lo = add nuw nsw i32 %.09.i.i.i213, 1        ; 2 uses
  %exitcond.not.i.i.i214 = icmp eq i32 %i.lo, %.08.i.i.i211
  br i1 %exitcond.not.i.i.i214, label %emitter_json_key_prefix.exit.i, label %.lr.ph.i.i.i212, !llvm.loop !26

emitter_json_key_prefix.exit.i:                   ; preds = %.lr.ph.i.i.i212, %bb.hv, %bb.hu, %bb.hr
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6)
  %i.lp = load i32, ptr %i.kt, align 8, !tbaa !25
  %i.lq = add nsw i32 %i.lp, 1
  store i32 %i.lq, ptr %i.kt, align 8, !tbaa !25
  store i8 0, ptr %i.ks, align 4, !tbaa !23
  br label %emitter_json_object_begin.exit

emitter_json_object_begin.exit:                   ; preds = %bb.hp, %emitter_json_key_prefix.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #14
  store i64 7, ptr %i.av, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #14
  store i64 8, ptr %i.aw, align 8, !tbaa !12
  %i.lr = load i8, ptr %i.kl, align 8, !tbaa !14
  %.not.i162 = icmp eq i8 %i.lr, 0
  br i1 %.not.i162, label %tsd_fetch_impl.exit164, label %bb.hw, !prof !32

bb.hw:                                            ; preds = %emitter_json_object_begin.exit
  %i.ls = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.kk, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit164

tsd_fetch_impl.exit164:                           ; preds = %emitter_json_object_begin.exit, %bb.hw
  %.0.i163 = phi ptr [ %i.ls, %bb.hw ], [ %i.kk, %emitter_json_object_begin.exit ]
  %i.lt = call i32 @je_ctl_bymibname(ptr noundef %.0.i163, ptr noundef nonnull %i.at, i64 noundef 3, ptr noundef nonnull @.str.228, ptr noundef nonnull %i.av, ptr noundef nonnull %i.j, ptr noundef nonnull %i.aw, ptr noundef null, i64 noundef 0) #14
  %.not158 = icmp eq i32 %i.lt, 0
  br i1 %.not158, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %tsd_fetch_impl.exit164
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.hy:                                            ; preds = %tsd_fetch_impl.exit164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.228, i32 noundef 6, ptr noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #14
  store i64 7, ptr %i.ax, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #14
  store i64 4, ptr %i.ay, align 8, !tbaa !12
  %i.lu = load i8, ptr %i.kl, align 8, !tbaa !14
  %.not.i165 = icmp eq i8 %i.lu, 0
  br i1 %.not.i165, label %tsd_fetch_impl.exit167, label %bb.hz, !prof !32

bb.hz:                                            ; preds = %bb.hy
  %i.lv = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.kk, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit167

tsd_fetch_impl.exit167:                           ; preds = %bb.hy, %bb.hz
  %.0.i166 = phi ptr [ %i.lv, %bb.hz ], [ %i.kk, %bb.hy ]
  %i.lw = call i32 @je_ctl_bymibname(ptr noundef %.0.i166, ptr noundef nonnull %i.at, i64 noundef 3, ptr noundef nonnull @.str.230, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ay, ptr noundef null, i64 noundef 0) #14
  %.not159 = icmp eq i32 %i.lw, 0
  br i1 %.not159, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %tsd_fetch_impl.exit167
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.ib:                                            ; preds = %tsd_fetch_impl.exit167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.230, i32 noundef 4, ptr noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #14
  store i64 7, ptr %i.az, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #14
  store i64 8, ptr %i.ba, align 8, !tbaa !12
  %i.lx = load i8, ptr %i.kl, align 8, !tbaa !14
  %.not.i168 = icmp eq i8 %i.lx, 0
  br i1 %.not.i168, label %tsd_fetch_impl.exit170, label %bb.ic, !prof !32

bb.ic:                                            ; preds = %bb.ib
  %i.ly = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.kk, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit170

tsd_fetch_impl.exit170:                           ; preds = %bb.ib, %bb.ic
  %.0.i169 = phi ptr [ %i.ly, %bb.ic ], [ %i.kk, %bb.ib ]
  %i.lz = call i32 @je_ctl_bymibname(ptr noundef %.0.i169, ptr noundef nonnull %i.at, i64 noundef 3, ptr noundef nonnull @.str.231, ptr noundef nonnull %i.az, ptr noundef nonnull %i.j, ptr noundef nonnull %i.ba, ptr noundef null, i64 noundef 0) #14
  %.not160 = icmp eq i32 %i.lz, 0
  br i1 %.not160, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %tsd_fetch_impl.exit170
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.ie:                                            ; preds = %tsd_fetch_impl.exit170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.231, i32 noundef 6, ptr noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb) #14
  store i64 7, ptr %i.bb, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc) #14
  store i64 4, ptr %i.bc, align 8, !tbaa !12
  %i.ma = load i8, ptr %i.kl, align 8, !tbaa !14
  %.not.i171 = icmp eq i8 %i.ma, 0
  br i1 %.not.i171, label %tsd_fetch_impl.exit173, label %bb.if, !prof !32

bb.if:                                            ; preds = %bb.ie
  %i.mb = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.kk, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit173

tsd_fetch_impl.exit173:                           ; preds = %bb.ie, %bb.if
  %.0.i172 = phi ptr [ %i.mb, %bb.if ], [ %i.kk, %bb.ie ]
  %i.mc = call i32 @je_ctl_bymibname(ptr noundef %.0.i172, ptr noundef nonnull %i.at, i64 noundef 3, ptr noundef nonnull @.str.232, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.e, ptr noundef nonnull %i.bc, ptr noundef null, i64 noundef 0) #14
  %.not161 = icmp eq i32 %i.mc, 0
  br i1 %.not161, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %tsd_fetch_impl.exit173
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.ih:                                            ; preds = %tsd_fetch_impl.exit173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.232, i32 noundef 4, ptr noundef %i.e)
  %.val.i215 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i216 = icmp ult i32 %.val.i215, 2
  br i1 %spec.select.i.i216, label %bb.ii, label %emitter_json_object_end.exit

bb.ii:                                            ; preds = %bb.ih
  %i.md = load i32, ptr %i.kt, align 8, !tbaa !25
  %i.me = add nsw i32 %i.md, -1
  store i32 %i.me, ptr %i.kt, align 8, !tbaa !25
  store i8 1, ptr %i.ks, align 4, !tbaa !23
  %.not.i217 = icmp eq i32 %.val.i215, 1
  br i1 %.not.i217, label %emitter_indent.exit.i219, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.mf = load i32, ptr %i.kt, align 8, !tbaa !25 ; 2 uses
  %i.mg = load i32, ptr %0, align 8, !tbaa !17
  %i.mh = icmp ne i32 %i.mg, 0                    ; 2 uses
  %.07.i.i218 = select i1 %i.mh, ptr @.str.10, ptr @.str.13
  %i.mi = icmp sgt i32 %i.mf, 0
  br i1 %i.mi, label %.lr.ph.preheader.i.i220, label %emitter_indent.exit.i219

.lr.ph.preheader.i.i220:                          ; preds = %bb.ij
  %i.mj = zext i1 %i.mh to i32
  %.08.i.i221 = shl nuw nsw i32 %i.mf, %i.mj
  br label %.lr.ph.i.i222

.lr.ph.i.i222:                                    ; preds = %.lr.ph.i.i222, %.lr.ph.preheader.i.i220
  %.09.i.i223 = phi i32 [ %i.mk, %.lr.ph.i.i222 ], [ 0, %.lr.ph.preheader.i.i220 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i218)
  %i.mk = add nuw nsw i32 %.09.i.i223, 1          ; 2 uses
  %exitcond.not.i.i224 = icmp eq i32 %i.mk, %.08.i.i221
  br i1 %exitcond.not.i.i224, label %emitter_indent.exit.i219, label %.lr.ph.i.i222, !llvm.loop !26

emitter_indent.exit.i219:                         ; preds = %.lr.ph.i.i222, %bb.ij, %bb.ii
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit

emitter_json_object_end.exit:                     ; preds = %bb.ih, %emitter_indent.exit.i219
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ml = load i32, ptr %i.ap, align 4, !tbaa !29
  %i.mm = zext i32 %i.ml to i64
  %i.mn = icmp samesign ult i64 %indvars.iv.next, %i.mm
  br i1 %i.mn, label %bb.hp, label %._crit_edge, !llvm.loop !33

bb.ik:                                            ; preds = %emitter_json_array_end.exit, %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be) #14
  store i64 4, ptr %i.be, align 8, !tbaa !12
  %i.mo = call i32 @mallctl(ptr noundef nonnull @.str.233, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be, ptr noundef null, i64 noundef 0) #14
  %.not155 = icmp eq i32 %i.mo, 0
  br i1 %.not155, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.233) #14
  call void @abort() #15
  unreachable

bb.im:                                            ; preds = %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.235, i32 noundef 3, ptr noundef nonnull readonly %i.bd, ptr noundef null, i32 noundef 0, ptr noundef null)
  %.val = load i32, ptr %0, align 8, !tbaa !17
  %spec.select.i225 = icmp ult i32 %.val, 2
  br i1 %spec.select.i225, label %bb.in, label %emitter_json_object_end.exit270

bb.in:                                            ; preds = %bb.im
  call fastcc void @emitter_json_array_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.236)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg) #14
  store i64 7, ptr %i.bg, align 8, !tbaa !12
  %i.mp = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 5 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 920 ; 2 uses
  %i.mr = load i8, ptr %i.mq, align 8, !tbaa !14
  %.not.i174 = icmp eq i8 %i.mr, 0
  br i1 %.not.i174, label %tsd_fetch_impl.exit176, label %bb.io, !prof !32

bb.io:                                            ; preds = %bb.in
  %i.ms = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.mp, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit176

tsd_fetch_impl.exit176:                           ; preds = %bb.in, %bb.io
  %.0.i175 = phi ptr [ %i.ms, %bb.io ], [ %i.mp, %bb.in ]
  %i.mt = call i32 @je_ctl_mibnametomib(ptr noundef %.0.i175, ptr noundef nonnull %i.bf, i64 noundef 0, ptr noundef nonnull @.str.237, ptr noundef nonnull %i.bg) #14
  %.not156 = icmp eq i32 %i.mt, 0
  br i1 %.not156, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %tsd_fetch_impl.exit176
  call void @je_malloc_write(ptr noundef nonnull @.str.227) #14
  call void @abort() #15
  unreachable

bb.iq:                                            ; preds = %tsd_fetch_impl.exit176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg) #14
  %i.mu = load i32, ptr %i.bd, align 4, !tbaa !29
  %.not282 = icmp eq i32 %i.mu, 0
  br i1 %.not282, label %._crit_edge280, label %.lr.ph279

.lr.ph279:                                        ; preds = %bb.iq
  %i.mv = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  br label %bb.it

._crit_edge280:                                   ; preds = %emitter_json_object_end.exit259, %bb.iq
  %.val.i226 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i227 = icmp ult i32 %.val.i226, 2
  br i1 %spec.select.i.i227, label %bb.ir, label %.thread273

.thread273:                                       ; preds = %._crit_edge280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf) #14
  br label %emitter_json_object_end.exit270

bb.ir:                                            ; preds = %._crit_edge280
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !25
  %i.nb = add nsw i32 %i.na, -1
  store i32 %i.nb, ptr %i.mz, align 8, !tbaa !25
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i8 1, ptr %i.nc, align 4, !tbaa !23
  %.not.i228 = icmp eq i32 %.val.i226, 1
  br i1 %.not.i228, label %.loopexit, label %bb.is

bb.is:                                            ; preds = %bb.ir
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.nd = load i32, ptr %i.mz, align 8, !tbaa !25 ; 2 uses
  %i.ne = load i32, ptr %0, align 8, !tbaa !17
  %i.nf = icmp ne i32 %i.ne, 0                    ; 2 uses
  %.07.i.i229 = select i1 %i.nf, ptr @.str.10, ptr @.str.13
  %i.ng = icmp sgt i32 %i.nd, 0
  br i1 %i.ng, label %.lr.ph.preheader.i.i231, label %.loopexit

.lr.ph.preheader.i.i231:                          ; preds = %bb.is
  %i.nh = zext i1 %i.nf to i32
  %.08.i.i232 = shl nuw nsw i32 %i.nd, %i.nh
  br label %.lr.ph.i.i233

.lr.ph.i.i233:                                    ; preds = %.lr.ph.i.i233, %.lr.ph.preheader.i.i231
  %.09.i.i234 = phi i32 [ %i.ni, %.lr.ph.i.i233 ], [ 0, %.lr.ph.preheader.i.i231 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i229)
  %i.ni = add nuw nsw i32 %.09.i.i234, 1          ; 2 uses
  %exitcond.not.i.i235 = icmp eq i32 %i.ni, %.08.i.i232
  br i1 %exitcond.not.i.i235, label %.loopexit, label %.lr.ph.i.i233, !llvm.loop !26

bb.it:                                            ; preds = %.lr.ph279, %emitter_json_object_end.exit259
  %indvars.iv284 = phi i64 [ 0, %.lr.ph279 ], [ %indvars.iv.next285, %emitter_json_object_end.exit259 ] ; 2 uses
  store i64 %indvars.iv284, ptr %i.mv, align 16, !tbaa !12
  %.val.i237 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i238 = icmp ult i32 %.val.i237, 2
  br i1 %spec.select.i.i238, label %bb.iu, label %emitter_json_object_begin.exit248

bb.iu:                                            ; preds = %bb.it
  %i.nj = load i8, ptr %i.mw, align 1, !tbaa !24, !range !27, !noundef !28
  %i.nk = trunc nuw i8 %i.nj to i1
  br i1 %i.nk, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  store i8 0, ptr %i.mw, align 1, !tbaa !24
  br label %emitter_json_key_prefix.exit.i241

bb.iw:                                            ; preds = %bb.iu
  %i.nl = load i8, ptr %i.mx, align 4, !tbaa !23, !range !27, !noundef !28
  %i.nm = trunc nuw i8 %i.nl to i1
  br i1 %i.nm, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11)
  %.pre.i247 = load i32, ptr %0, align 8, !tbaa !17
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  %i.nn = phi i32 [ %.pre.i247, %bb.ix ], [ %.val.i237, %bb.iw ]
  %.not.i.i239 = icmp eq i32 %i.nn, 1
  br i1 %.not.i.i239, label %emitter_json_key_prefix.exit.i241, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.no = load i32, ptr %i.my, align 8, !tbaa !25 ; 2 uses
  %i.np = load i32, ptr %0, align 8, !tbaa !17
  %i.nq = icmp ne i32 %i.np, 0                    ; 2 uses
  %.07.i.i.i240 = select i1 %i.nq, ptr @.str.10, ptr @.str.13
  %i.nr = icmp sgt i32 %i.no, 0
  br i1 %i.nr, label %.lr.ph.preheader.i.i.i242, label %emitter_json_key_prefix.exit.i241

.lr.ph.preheader.i.i.i242:                        ; preds = %bb.iz
  %i.ns = zext i1 %i.nq to i32
  %.08.i.i.i243 = shl nuw nsw i32 %i.no, %i.ns
  br label %.lr.ph.i.i.i244

.lr.ph.i.i.i244:                                  ; preds = %.lr.ph.i.i.i244, %.lr.ph.preheader.i.i.i242
  %.09.i.i.i245 = phi i32 [ %i.nt, %.lr.ph.i.i.i244 ], [ 0, %.lr.ph.preheader.i.i.i242 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i.i240)
  %i.nt = add nuw nsw i32 %.09.i.i.i245, 1        ; 2 uses
  %exitcond.not.i.i.i246 = icmp eq i32 %i.nt, %.08.i.i.i243
  br i1 %exitcond.not.i.i.i246, label %emitter_json_key_prefix.exit.i241, label %.lr.ph.i.i.i244, !llvm.loop !26

emitter_json_key_prefix.exit.i241:                ; preds = %.lr.ph.i.i.i244, %bb.iz, %bb.iy, %bb.iv
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6)
  %i.nu = load i32, ptr %i.my, align 8, !tbaa !25
  %i.nv = add nsw i32 %i.nu, 1
  store i32 %i.nv, ptr %i.my, align 8, !tbaa !25
  store i8 0, ptr %i.mx, align 4, !tbaa !23
  br label %emitter_json_object_begin.exit248

emitter_json_object_begin.exit248:                ; preds = %bb.it, %emitter_json_key_prefix.exit.i241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh) #14
  store i64 7, ptr %i.bh, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi) #14
  store i64 8, ptr %i.bi, align 8, !tbaa !12
  %i.nw = load i8, ptr %i.mq, align 8, !tbaa !14
  %.not.i177 = icmp eq i8 %i.nw, 0
  br i1 %.not.i177, label %tsd_fetch_impl.exit179, label %bb.ja, !prof !32

bb.ja:                                            ; preds = %emitter_json_object_begin.exit248
  %i.nx = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.mp, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit179

tsd_fetch_impl.exit179:                           ; preds = %emitter_json_object_begin.exit248, %bb.ja
  %.0.i178 = phi ptr [ %i.nx, %bb.ja ], [ %i.mp, %emitter_json_object_begin.exit248 ]
  %i.ny = call i32 @je_ctl_bymibname(ptr noundef %.0.i178, ptr noundef nonnull %i.bf, i64 noundef 3, ptr noundef nonnull @.str.228, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.j, ptr noundef nonnull %i.bi, ptr noundef null, i64 noundef 0) #14
  %.not157 = icmp eq i32 %i.ny, 0
  br i1 %.not157, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %tsd_fetch_impl.exit179
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.jc:                                            ; preds = %tsd_fetch_impl.exit179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.228, i32 noundef 6, ptr noundef %i.j)
  %.val.i249 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i250 = icmp ult i32 %.val.i249, 2
  br i1 %spec.select.i.i250, label %bb.jd, label %emitter_json_object_end.exit259

bb.jd:                                            ; preds = %bb.jc
  %i.nz = load i32, ptr %i.my, align 8, !tbaa !25
  %i.oa = add nsw i32 %i.nz, -1
  store i32 %i.oa, ptr %i.my, align 8, !tbaa !25
  store i8 1, ptr %i.mx, align 4, !tbaa !23
  %.not.i251 = icmp eq i32 %.val.i249, 1
  br i1 %.not.i251, label %emitter_indent.exit.i253, label %bb.je

bb.je:                                            ; preds = %bb.jd
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.ob = load i32, ptr %i.my, align 8, !tbaa !25 ; 2 uses
  %i.oc = load i32, ptr %0, align 8, !tbaa !17
  %i.od = icmp ne i32 %i.oc, 0                    ; 2 uses
  %.07.i.i252 = select i1 %i.od, ptr @.str.10, ptr @.str.13
  %i.oe = icmp sgt i32 %i.ob, 0
  br i1 %i.oe, label %.lr.ph.preheader.i.i254, label %emitter_indent.exit.i253

.lr.ph.preheader.i.i254:                          ; preds = %bb.je
  %i.of = zext i1 %i.od to i32
  %.08.i.i255 = shl nuw nsw i32 %i.ob, %i.of
  br label %.lr.ph.i.i256

.lr.ph.i.i256:                                    ; preds = %.lr.ph.i.i256, %.lr.ph.preheader.i.i254
  %.09.i.i257 = phi i32 [ %i.og, %.lr.ph.i.i256 ], [ 0, %.lr.ph.preheader.i.i254 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i252)
  %i.og = add nuw nsw i32 %.09.i.i257, 1          ; 2 uses
  %exitcond.not.i.i258 = icmp eq i32 %i.og, %.08.i.i255
  br i1 %exitcond.not.i.i258, label %emitter_indent.exit.i253, label %.lr.ph.i.i256, !llvm.loop !26

emitter_indent.exit.i253:                         ; preds = %.lr.ph.i.i256, %bb.je, %bb.jd
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit259

emitter_json_object_end.exit259:                  ; preds = %bb.jc, %emitter_indent.exit.i253
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %i.oh = load i32, ptr %i.bd, align 4, !tbaa !29
  %i.oi = zext i32 %i.oh to i64
  %i.oj = icmp samesign ult i64 %indvars.iv.next285, %i.oi
  br i1 %i.oj, label %bb.it, label %._crit_edge280, !llvm.loop !34

.loopexit:                                        ; preds = %.lr.ph.i.i233, %bb.ir, %bb.is
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.256)
  %.val.i260.pr.pr = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf) #14
  %spec.select.i.i261 = icmp ult i32 %.val.i260.pr.pr, 2
  br i1 %spec.select.i.i261, label %bb.jf, label %emitter_json_object_end.exit270

bb.jf:                                            ; preds = %.loopexit
  %i.ok = load i32, ptr %i.mz, align 8, !tbaa !25
  %i.ol = add nsw i32 %i.ok, -1
  store i32 %i.ol, ptr %i.mz, align 8, !tbaa !25
  store i8 1, ptr %i.nc, align 4, !tbaa !23
  %.not.i262 = icmp eq i32 %.val.i260.pr.pr, 1
  br i1 %.not.i262, label %emitter_indent.exit.i264, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.om = load i32, ptr %i.mz, align 8, !tbaa !25 ; 2 uses
  %i.on = load i32, ptr %0, align 8, !tbaa !17
  %i.oo = icmp ne i32 %i.on, 0                    ; 2 uses
  %.07.i.i263 = select i1 %i.oo, ptr @.str.10, ptr @.str.13
  %i.op = icmp sgt i32 %i.om, 0
  br i1 %i.op, label %.lr.ph.preheader.i.i265, label %emitter_indent.exit.i264

.lr.ph.preheader.i.i265:                          ; preds = %bb.jg
  %i.oq = zext i1 %i.oo to i32
  %.08.i.i266 = shl nuw nsw i32 %i.om, %i.oq
  br label %.lr.ph.i.i267

.lr.ph.i.i267:                                    ; preds = %.lr.ph.i.i267, %.lr.ph.preheader.i.i265
  %.09.i.i268 = phi i32 [ %i.or, %.lr.ph.i.i267 ], [ 0, %.lr.ph.preheader.i.i265 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i263)
  %i.or = add nuw nsw i32 %.09.i.i268, 1          ; 2 uses
  %exitcond.not.i.i269 = icmp eq i32 %i.or, %.08.i.i266
  br i1 %exitcond.not.i.i269, label %emitter_indent.exit.i264, label %.lr.ph.i.i267, !llvm.loop !26

emitter_indent.exit.i264:                         ; preds = %.lr.ph.i.i267, %bb.jg, %bb.jf
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit270

emitter_json_object_end.exit270:                  ; preds = %bb.im, %.thread273, %.loopexit, %emitter_indent.exit.i264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @stats_print_helper(ptr noundef nonnull %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8) unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %i.o = alloca i64, align 8                      ; 4 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %i.x = alloca i64, align 8                      ; 5 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  %i.aa = alloca i64, align 8                     ; 5 uses
  %i.ab = alloca i64, align 8                     ; 5 uses
  %i.ac = alloca i64, align 8                     ; 4 uses
  %i.ad = alloca i64, align 8                     ; 4 uses
  %i.ae = alloca i64, align 8                     ; 4 uses
  %i.af = alloca i64, align 8                     ; 4 uses
  %i.ag = alloca i64, align 8                     ; 4 uses
  %i.ah = alloca i64, align 8                     ; 4 uses
  %i.ai = alloca i64, align 8                     ; 4 uses
  %i.aj = alloca i64, align 8                     ; 4 uses
  %i.ak = alloca i64, align 8                     ; 4 uses
  %i.al = alloca i64, align 8                     ; 4 uses
  %i.am = alloca i64, align 8                     ; 4 uses
  %i.an = alloca i64, align 8                     ; 4 uses
  %i.ao = alloca i64, align 8                     ; 4 uses
  %9 = alloca %struct.emitter_row_s, align 8      ; 6 uses
  %10 = alloca %struct.emitter_col_s, align 8     ; 4 uses
  %11 = alloca [11 x %struct.emitter_col_s], align 16 ; 26 uses
  %12 = alloca [1 x %struct.emitter_col_s], align 16 ; 6 uses
  %i.ap = alloca i64, align 8                     ; 4 uses
  %i.aq = alloca [7 x i64], align 16              ; 5 uses
  %i.ar = alloca i64, align 8                     ; 5 uses
  %i.as = alloca i64, align 8                     ; 4 uses
  %i.at = alloca [7 x i64], align 16              ; 11 uses
  %i.au = alloca i64, align 8                     ; 4 uses
  %i.av = alloca i32, align 4                     ; 8 uses
  %i.aw = alloca i64, align 8                     ; 4 uses
  %i.ax = alloca [3 x i64], align 16              ; 7 uses
  %i.ay = alloca i64, align 8                     ; 6 uses
  %i.az = alloca i64, align 8                     ; 6 uses
  %i.ba = alloca i8, align 1                      ; 4 uses
  %i.bb = alloca [20 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #14
  store i64 8, ptr %i.ac, align 8, !tbaa !12
  %i.bc = call i32 @mallctl(ptr noundef nonnull @.str.257, ptr noundef nonnull %i.p, ptr noundef nonnull %i.ac, ptr noundef null, i64 noundef 0) #14
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #14
  store i64 8, ptr %i.ad, align 8, !tbaa !12
  %i.bd = call i32 @mallctl(ptr noundef nonnull @.str.258, ptr noundef nonnull %i.q, ptr noundef nonnull %i.ad, ptr noundef null, i64 noundef 0) #14
  %.not89 = icmp eq i32 %i.bd, 0
  br i1 %.not89, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.258) #14
  call void @abort() #15
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #14
  store i64 8, ptr %i.ae, align 8, !tbaa !12
  %i.be = call i32 @mallctl(ptr noundef nonnull @.str.259, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, ptr noundef null, i64 noundef 0) #14
  %.not90 = icmp eq i32 %i.be, 0
  br i1 %.not90, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.259) #14
  call void @abort() #15
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #14
  store i64 8, ptr %i.af, align 8, !tbaa !12
  %i.bf = call i32 @mallctl(ptr noundef nonnull @.str.260, ptr noundef nonnull %i.s, ptr noundef nonnull %i.af, ptr noundef null, i64 noundef 0) #14
  %.not91 = icmp eq i32 %i.bf, 0
  br i1 %.not91, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.260) #14
  call void @abort() #15
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #14
  store i64 8, ptr %i.ag, align 8, !tbaa !12
  %i.bg = call i32 @mallctl(ptr noundef nonnull @.str.261, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ag, ptr noundef null, i64 noundef 0) #14
  %.not92 = icmp eq i32 %i.bg, 0
  br i1 %.not92, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.261) #14
  call void @abort() #15
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #14
  store i64 8, ptr %i.ah, align 8, !tbaa !12
  %i.bh = call i32 @mallctl(ptr noundef nonnull @.str.262, ptr noundef nonnull %i.u, ptr noundef nonnull %i.ah, ptr noundef null, i64 noundef 0) #14
  %.not93 = icmp eq i32 %i.bh, 0
  br i1 %.not93, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.262) #14
  call void @abort() #15
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #14
  store i64 8, ptr %i.ai, align 8, !tbaa !12
  %i.bi = call i32 @mallctl(ptr noundef nonnull @.str.263, ptr noundef nonnull %i.v, ptr noundef nonnull %i.ai, ptr noundef null, i64 noundef 0) #14
  %.not94 = icmp eq i32 %i.bi, 0
  br i1 %.not94, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.263) #14
  call void @abort() #15
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #14
  store i64 8, ptr %i.aj, align 8, !tbaa !12
  %i.bj = call i32 @mallctl(ptr noundef nonnull @.str.264, ptr noundef nonnull %i.w, ptr noundef nonnull %i.aj, ptr noundef null, i64 noundef 0) #14
  %.not95 = icmp eq i32 %i.bj, 0
  br i1 %.not95, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.264) #14
  call void @abort() #15
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #14
  store i64 8, ptr %i.ak, align 8, !tbaa !12
  %i.bk = call i32 @mallctl(ptr noundef nonnull @.str.265, ptr noundef nonnull %i.x, ptr noundef nonnull %i.ak, ptr noundef null, i64 noundef 0) #14
  %.not96 = icmp eq i32 %i.bk, 0
  br i1 %.not96, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.265) #14
  call void @abort() #15
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #14
  store i64 8, ptr %i.al, align 8, !tbaa !12
  %i.bl = call i32 @mallctl(ptr noundef nonnull @.str.266, ptr noundef nonnull %i.z, ptr noundef nonnull %i.al, ptr noundef null, i64 noundef 0) #14
  %.not97 = icmp eq i32 %i.bl, 0
  br i1 %.not97, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.266) #14
  call void @abort() #15
  unreachable

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #14
  store i64 8, ptr %i.am, align 8, !tbaa !12
  %i.bm = call i32 @mallctl(ptr noundef nonnull @.str.267, ptr noundef nonnull %i.y, ptr noundef nonnull %i.am, ptr noundef null, i64 noundef 0) #14
  %.not98 = icmp eq i32 %i.bm, 0
  br i1 %.not98, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.267) #14
  call void @abort() #15
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #14
  store i64 8, ptr %i.an, align 8, !tbaa !12
  %i.bn = call i32 @mallctl(ptr noundef nonnull @.str.268, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.an, ptr noundef null, i64 noundef 0) #14
  %.not99 = icmp eq i32 %i.bn, 0
  br i1 %.not99, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.268) #14
  call void @abort() #15
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #14
  store i64 8, ptr %i.ao, align 8, !tbaa !12
  %i.bo = call i32 @mallctl(ptr noundef nonnull @.str.269, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ao, ptr noundef null, i64 noundef 0) #14
  %.not100 = icmp eq i32 %i.bo, 0
  br i1 %.not100, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.269) #14
  call void @abort() #15
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #14
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.40)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.270, i32 noundef 6, ptr noundef %i.p)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.271, i32 noundef 6, ptr noundef %i.q)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.272, i32 noundef 6, ptr noundef %i.r)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.273, i32 noundef 6, ptr noundef %i.s)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.274, i32 noundef 6, ptr noundef %i.t)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.118, i32 noundef 6, ptr noundef %i.u)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.275, i32 noundef 6, ptr noundef %i.v)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.276, i32 noundef 6, ptr noundef %i.w)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.277, i32 noundef 6, ptr noundef %i.x)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.278, i32 noundef 6, ptr noundef %i.z)
  %i.bp = load i64, ptr %i.p, align 8, !tbaa !12
  %i.bq = load i64, ptr %i.q, align 8, !tbaa !12
  %i.br = load i64, ptr %i.r, align 8, !tbaa !12
  %i.bs = load i64, ptr %i.u, align 8, !tbaa !12
  %i.bt = load i64, ptr %i.s, align 8, !tbaa !12
  %i.bu = load i64, ptr %i.t, align 8, !tbaa !12
  %i.bv = load i64, ptr %i.v, align 8, !tbaa !12
  %i.bw = load i64, ptr %i.w, align 8, !tbaa !12
  %i.bx = load i64, ptr %i.x, align 8, !tbaa !12
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.279, i64 noundef %i.bp, i64 noundef %i.bq, i64 noundef %i.br, i64 noundef %i.bs, i64 noundef %i.bt, i64 noundef %i.bu, i64 noundef %i.bv, i64 noundef %i.bw, i64 noundef %i.bx)
  %i.by = load i64, ptr %i.z, align 8, !tbaa !12
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.280, i64 noundef %i.by)
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.122)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.281, i32 noundef 6, ptr noundef %i.y)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.282, i32 noundef 5, ptr noundef %i.aa)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.283, i32 noundef 5, ptr noundef %i.ab)
  %.val.i = load i32, ptr %0, align 8, !tbaa !17  ; 2 uses
  %spec.select.i.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i.i, label %bb.ab, label %emitter_json_object_end.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !25
  %i.cb = add nsw i32 %i.ca, -1
  store i32 %i.cb, ptr %i.bz, align 8, !tbaa !25
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.cc, align 4, !tbaa !23
  %.not.i110 = icmp eq i32 %.val.i, 1
  br i1 %.not.i110, label %emitter_indent.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.cd = load i32, ptr %i.bz, align 8, !tbaa !25 ; 2 uses
  %i.ce = load i32, ptr %0, align 8, !tbaa !17
  %i.cf = icmp ne i32 %i.ce, 0                    ; 2 uses
  %.07.i.i = select i1 %i.cf, ptr @.str.10, ptr @.str.13
  %i.cg = icmp sgt i32 %i.cd, 0
  br i1 %i.cg, label %.lr.ph.preheader.i.i, label %emitter_indent.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ac
  %i.ch = zext i1 %i.cf to i32
  %.08.i.i = shl nuw nsw i32 %i.cd, %i.ch
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi i32 [ %i.ci, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i)
  %i.ci = add nuw nsw i32 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ci, %.08.i.i
  br i1 %exitcond.not.i.i, label %emitter_indent.exit.i, label %.lr.ph.i.i, !llvm.loop !26

emitter_indent.exit.i:                            ; preds = %.lr.ph.i.i, %bb.ac, %bb.ab
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit

emitter_json_object_end.exit:                     ; preds = %bb.aa, %emitter_indent.exit.i
  %i.cj = load i64, ptr %i.y, align 8, !tbaa !12
  %i.ck = load i64, ptr %i.aa, align 8, !tbaa !12
  %i.cl = load i64, ptr %i.ab, align 8, !tbaa !12
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.284, i64 noundef %i.cj, i64 noundef %i.ck, i64 noundef %i.cl)
  br i1 %6, label %bb.ad, label %bb.bz

bb.ad:                                            ; preds = %emitter_json_object_end.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #14
  store ptr null, ptr %9, align 8, !tbaa !35
  call fastcc void @mutex_stats_init_cols(ptr noundef %9, ptr noundef nonnull @.str.8, ptr noundef nonnull %10, ptr noundef %11, ptr noundef %12)
  %i.cm = load i32, ptr %0, align 8, !tbaa !17
  %.not.i111 = icmp eq i32 %i.cm, 2
  br i1 %.not.i111, label %bb.ae, label %emitter_table_row.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cn = load ptr, ptr %9, align 8, !tbaa !35    ; 3 uses
  %.not1315.i = icmp eq ptr %i.cn, null
  br i1 %.not1315.i, label %select.unfold._crit_edge.i, label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.ae, %select.unfold.i
  %.016.i = phi ptr [ %i.cv, %select.unfold.i ], [ %i.cn, %bb.ae ] ; 5 uses
  %i.co = load i32, ptr %.016.i, align 8, !tbaa !39
  %i.cp = getelementptr inbounds nuw i8, ptr %.016.i, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !42
  %i.cr = getelementptr inbounds nuw i8, ptr %.016.i, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !43
  %i.ct = getelementptr inbounds nuw i8, ptr %.016.i, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.co, i32 noundef %i.cq, i32 noundef %i.cs, ptr noundef nonnull %i.ct)
  %i.cu = getelementptr inbounds nuw i8, ptr %.016.i, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !44 ; 3 uses
  %.not14.i = icmp eq ptr %i.cv, %i.cn
  %.not1317.i = icmp eq ptr %i.cv, null
  %.not13.i = or i1 %.not14.i, %.not1317.i
  br i1 %.not13.i, label %select.unfold._crit_edge.i, label %select.unfold.i

select.unfold._crit_edge.i:                       ; preds = %select.unfold.i, %bb.ae
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.12)
  br label %emitter_table_row.exit

emitter_table_row.exit:                           ; preds = %bb.ad, %select.unfold._crit_edge.i
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.285)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #14
  store i64 7, ptr %i.ar, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as) #14
  store i64 8, ptr %i.as, align 8, !tbaa !12
  %i.cw = call i32 @mallctlnametomib(ptr noundef nonnull @.str.286, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar) #14
  %.not101 = icmp eq i32 %i.cw, 0
  br i1 %.not101, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %emitter_table_row.exit
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.286) #14
  call void @abort() #15
  unreachable

bb.ag:                                            ; preds = %emitter_table_row.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 0, ptr %i.cx, align 16, !tbaa !12
  %i.cy = load i64, ptr %i.ar, align 8, !tbaa !12
  %i.cz = call i32 @mallctlbymib(ptr noundef nonnull %i.aq, i64 noundef %i.cy, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.as, ptr noundef null, i64 noundef 0) #14
  %.not102 = icmp eq i32 %i.cz, 0
  br i1 %.not102, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #14
  store i64 7, ptr %i.au, align 8, !tbaa !12
  %i.da = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 19 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 920 ; 9 uses
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.dc, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.aj, !prof !32

bb.aj:                                            ; preds = %bb.ai
  %i.dd = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.da, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.ai, %bb.aj
  %.0.i = phi ptr [ %i.dd, %bb.aj ], [ %i.da, %bb.ai ]
  %i.de = call i32 @je_ctl_mibnametomib(ptr noundef %.0.i, ptr noundef nonnull %i.at, i64 noundef 0, ptr noundef nonnull @.str.289, ptr noundef nonnull %i.au) #14
  %.not103 = icmp eq i32 %i.de, 0
  br i1 %.not103, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %tsd_fetch_impl.exit
  call void @je_malloc_write(ptr noundef nonnull @.str.227) #14
  call void @abort() #15
  unreachable

bb.al:                                            ; preds = %tsd_fetch_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #14
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 136
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 168
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 176 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 208
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 216
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 248
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 256 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 288
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 296
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 328
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 336 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 368
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 376
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 408
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 416
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br label %bb.ap

bb.am:                                            ; preds = %emitter_json_object_end.exit134
  %.val.i112 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i113 = icmp ult i32 %.val.i112, 2
  br i1 %spec.select.i.i113, label %bb.an, label %emitter_json_object_end.exit122

bb.an:                                            ; preds = %bb.am
  %i.eg = load i32, ptr %i.ee, align 8, !tbaa !25
  %i.eh = add nsw i32 %i.eg, -1
  store i32 %i.eh, ptr %i.ee, align 8, !tbaa !25
  store i8 1, ptr %i.ef, align 4, !tbaa !23
  %.not.i114 = icmp eq i32 %.val.i112, 1
  br i1 %.not.i114, label %emitter_indent.exit.i116, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.ei = load i32, ptr %i.ee, align 8, !tbaa !25 ; 2 uses
  %i.ej = load i32, ptr %0, align 8, !tbaa !17
  %i.ek = icmp ne i32 %i.ej, 0                    ; 2 uses
  %.07.i.i115 = select i1 %i.ek, ptr @.str.10, ptr @.str.13
  %i.el = icmp sgt i32 %i.ei, 0
  br i1 %i.el, label %.lr.ph.preheader.i.i117, label %emitter_indent.exit.i116

.lr.ph.preheader.i.i117:                          ; preds = %bb.ao
  %i.em = zext i1 %i.ek to i32
  %.08.i.i118 = shl nuw nsw i32 %i.ei, %i.em
  br label %.lr.ph.i.i119

.lr.ph.i.i119:                                    ; preds = %.lr.ph.i.i119, %.lr.ph.preheader.i.i117
  %.09.i.i120 = phi i32 [ %i.en, %.lr.ph.i.i119 ], [ 0, %.lr.ph.preheader.i.i117 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i115)
  %i.en = add nuw nsw i32 %.09.i.i120, 1          ; 2 uses
  %exitcond.not.i.i121 = icmp eq i32 %i.en, %.08.i.i118
  br i1 %exitcond.not.i.i121, label %emitter_indent.exit.i116, label %.lr.ph.i.i119, !llvm.loop !26

emitter_indent.exit.i116:                         ; preds = %.lr.ph.i.i119, %bb.ao, %bb.an
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit122

emitter_json_object_end.exit122:                  ; preds = %bb.am, %emitter_indent.exit.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.bz

bb.ap:                                            ; preds = %bb.al, %emitter_json_object_end.exit134
  %indvars.iv = phi i64 [ 0, %bb.al ], [ %indvars.iv.next, %emitter_json_object_end.exit134 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr @global_mutex_names, i64 %indvars.iv
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !30 ; 3 uses
  %i.eq = load i64, ptr %i.ap, align 8, !tbaa !12 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 7, ptr %i.a, align 8, !tbaa !12
  %i.er = load i8, ptr %i.db, align 8, !tbaa !14
  %.not.i.i = icmp eq i8 %i.er, 0
  br i1 %.not.i.i, label %tsd_fetch_impl.exit.i, label %bb.aq, !prof !32

bb.aq:                                            ; preds = %bb.ap
  %i.es = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.da, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit.i

tsd_fetch_impl.exit.i:                            ; preds = %bb.aq, %bb.ap
  %.0.i.i = phi ptr [ %i.es, %bb.aq ], [ %i.da, %bb.ap ]
  %i.et = call i32 @je_ctl_mibnametomib(ptr noundef %.0.i.i, ptr noundef nonnull %i.at, i64 noundef 2, ptr noundef %i.ep, ptr noundef nonnull %i.a) #14
  %.not.i123 = icmp eq i32 %i.et, 0
  br i1 %.not.i123, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %tsd_fetch_impl.exit.i
  call void @je_malloc_write(ptr noundef nonnull @.str.227) #14
  call void @abort() #15
  unreachable

bb.as:                                            ; preds = %tsd_fetch_impl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  store ptr %i.ep, ptr %i.df, align 8, !tbaa !14
  store i32 5, ptr %i.dg, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 7, ptr %i.b, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i64 8, ptr %i.c, align 8, !tbaa !12
  %i.eu = load i8, ptr %i.db, align 8, !tbaa !14
  %.not.i77.i = icmp eq i8 %i.eu, 0
  br i1 %.not.i77.i, label %tsd_fetch_impl.exit79.i, label %bb.at, !prof !32

bb.at:                                            ; preds = %bb.as
  %i.ev = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.da, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit79.i

tsd_fetch_impl.exit79.i:                          ; preds = %bb.at, %bb.as
  %.0.i78.i = phi ptr [ %i.ev, %bb.at ], [ %i.da, %bb.as ]
  %i.ew = call i32 @je_ctl_bymibname(ptr noundef %.0.i78.i, ptr noundef nonnull %i.at, i64 noundef 3, ptr noundef nonnull @.str.305, ptr noundef nonnull %i.b, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.c, ptr noundef null, i64 noundef 0) #14
  %.not70.i = icmp eq i32 %i.ew, 0
  br i1 %.not70.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %tsd_fetch_impl.exit79.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.av:                                            ; preds = %tsd_fetch_impl.exit79.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  store i32 5, ptr %i.di, align 16, !tbaa !43
  %i.ex = load i64, ptr %i.dh, align 16, !tbaa !14 ; 3 uses
  %i.ey = icmp eq i64 %i.eq, 0                    ; 5 uses
  %i.ez = icmp eq i64 %i.ex, 0
  %or.cond.i.i = or i1 %i.ey, %i.ez
  br i1 %or.cond.i.i, label %rate_per_second.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fa = icmp ult i64 %i.eq, 1000000000
  br i1 %i.fa, label %rate_per_second.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fb = udiv i64 %i.eq, 1000000000
  %i.fc = udiv i64 %i.ex, %i.fb
  br label %rate_per_second.exit.i

rate_per_second.exit.i:                           ; preds = %bb.ax, %bb.aw, %bb.av
  %.0.i98.i = phi i64 [ %i.fc, %bb.ax ], [ 0, %bb.av ], [ %i.ex, %bb.aw ]
  store i64 %.0.i98.i, ptr %i.dj, align 8, !tbaa !14
  store i32 5, ptr %i.dk, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i64 7, ptr %i.d, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store i64 8, ptr %i.e, align 8, !tbaa !12
  %i.fd = load i8, ptr %i.db, align 8, !tbaa !14
  %.not.i80.i = icmp eq i8 %i.fd, 0
  br i1 %.not.i80.i, label %tsd_fetch_impl.exit82.i, label %bb.ay, !prof !32

bb.ay:                                            ; preds = %rate_per_second.exit.i
  %i.fe = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.da, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit82.i

tsd_fetch_impl.exit82.i:                          ; preds = %bb.ay, %rate_per_second.exit.i
  %.0.i81.i = phi ptr [ %i.fe, %bb.ay ], [ %i.da, %rate_per_second.exit.i ]
  %i.ff = call i32 @je_ctl_bymibname(ptr noundef %.0.i81.i, ptr noundef nonnull %i.at, i64 noundef 3, ptr noundef nonnull @.str.306, ptr noundef nonnull %i.d, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.e, ptr noundef null, i64 noundef 0) #14
  %.not71.i = icmp eq i32 %i.ff, 0
  br i1 %.not71.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %tsd_fetch_impl.exit82.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.ba:                                            ; preds = %tsd_fetch_impl.exit82.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  store i32 5, ptr %i.dm, align 16, !tbaa !43
  %i.fg = load i64, ptr %i.dl, align 16, !tbaa !14 ; 3 uses
  %i.fh = icmp eq i64 %i.fg, 0
  %or.cond.i99.i = or i1 %i.ey, %i.fh
  br i1 %or.cond.i99.i, label %rate_per_second.exit101.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fi = icmp ult i64 %i.eq, 1000000000
  br i1 %i.fi, label %rate_per_second.exit101.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fj = udiv i64 %i.eq, 1000000000
  %i.fk = udiv i64 %i.fg, %i.fj
  br label %rate_per_second.exit101.i

rate_per_second.exit101.i:                        ; preds = %bb.bc, %bb.bb, %bb.ba
  %.0.i100.i = phi i64 [ %i.fk, %bb.bc ], [ 0, %bb.ba ], [ %i.fg, %bb.bb ]
  store i64 %.0.i100.i, ptr %i.dn, align 8, !tbaa !14
  store i32 5, ptr %i.do, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i64 7, ptr %i.f, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store i64 8, ptr %i.g, align 8, !tbaa !12
  %i.fl = load i8, ptr %i.db, align 8, !tbaa !14
  %.not.i83.i = icmp eq i8 %i.fl, 0
  br i1 %.not.i83.i, label %tsd_fetch_impl.exit85.i, label %bb.bd, !prof !32

bb.bd:                                            ; preds = %rate_per_second.exit101.i
  %i.fm = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.da, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit85.i

tsd_fetch_impl.exit85.i:                          ; preds = %bb.bd, %rate_per_second.exit101.i
  %.0.i84.i = phi ptr [ %i.fm, %bb.bd ], [ %i.da, %rate_per_second.exit101.i ]
  %i.fn = call i32 @je_ctl_bymibname(ptr noundef %.0.i84.i, ptr noundef nonnull %i.at, i64 noundef 3, ptr noundef nonnull @.str.307, ptr noundef nonnull %i.f, ptr noundef nonnull %i.dp, ptr noundef nonnull %i.g, ptr noundef null, i64 noundef 0) #14
  %.not72.i = icmp eq i32 %i.fn, 0
  br i1 %.not72.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %tsd_fetch_impl.exit85.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.bf:                                            ; preds = %tsd_fetch_impl.exit85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  store i32 5, ptr %i.dq, align 16, !tbaa !43
  %i.fo = load i64, ptr %i.dp, align 16, !tbaa !14 ; 3 uses
  %i.fp = icmp eq i64 %i.fo, 0
  %or.cond.i102.i = or i1 %i.ey, %i.fp
  br i1 %or.cond.i102.i, label %rate_per_second.exit104.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fq = icmp ult i64 %i.eq, 1000000000
  br i1 %i.fq, label %rate_per_second.exit104.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fr = udiv i64 %i.eq, 1000000000
  %i.fs = udiv i64 %i.fo, %i.fr
  br label %rate_per_second.exit104.i

rate_per_second.exit104.i:                        ; preds = %bb.bh, %bb.bg, %bb.bf
  %.0.i103.i = phi i64 [ %i.fs, %bb.bh ], [ 0, %bb.bf ], [ %i.fo, %bb.bg ]
  store i64 %.0.i103.i, ptr %i.dr, align 8, !tbaa !14
  store i32 5, ptr %i.ds, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store i64 7, ptr %i.h, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store i64 8, ptr %i.i, align 8, !tbaa !12
  %i.ft = load i8, ptr %i.db, align 8, !tbaa !14
  %.not.i86.i = icmp eq i8 %i.ft, 0
  br i1 %.not.i86.i, label %tsd_fetch_impl.exit88.i, label %bb.bi, !prof !32

bb.bi:                                            ; preds = %rate_per_second.exit104.i
  %i.fu = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.da, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit88.i

tsd_fetch_impl.exit88.i:                          ; preds = %bb.bi, %rate_per_second.exit104.i
  %.0.i87.i = phi ptr [ %i.fu, %bb.bi ], [ %i.da, %rate_per_second.exit104.i ]
  %i.fv = call i32 @je_ctl_bymibname(ptr noundef %.0.i87.i, ptr noundef nonnull %i.at, i64 noundef 3, ptr noundef nonnull @.str.308, ptr noundef nonnull %i.h, ptr noundef nonnull %i.dt, ptr noundef nonnull %i.i, ptr noundef null, i64 noundef 0) #14
  %.not73.i = icmp eq i32 %i.fv, 0
  br i1 %.not73.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %tsd_fetch_impl.exit88.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.bk:                                            ; preds = %tsd_fetch_impl.exit88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  store i32 5, ptr %i.du, align 16, !tbaa !43
  %i.fw = load i64, ptr %i.dt, align 16, !tbaa !14 ; 3 uses
  %i.fx = icmp eq i64 %i.fw, 0
  %or.cond.i105.i = or i1 %i.ey, %i.fx
  br i1 %or.cond.i105.i, label %rate_per_second.exit107.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fy = icmp ult i64 %i.eq, 1000000000
  br i1 %i.fy, label %rate_per_second.exit107.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fz = udiv i64 %i.eq, 1000000000
  %i.ga = udiv i64 %i.fw, %i.fz
  br label %rate_per_second.exit107.i

rate_per_second.exit107.i:                        ; preds = %bb.bm, %bb.bl, %bb.bk
  %.0.i106.i = phi i64 [ %i.ga, %bb.bm ], [ 0, %bb.bk ], [ %i.fw, %bb.bl ]
  store i64 %.0.i106.i, ptr %i.dv, align 8, !tbaa !14
  store i32 5, ptr %i.dw, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  store i64 7, ptr %i.j, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  store i64 8, ptr %i.k, align 8, !tbaa !12
  %i.gb = load i8, ptr %i.db, align 8, !tbaa !14
  %.not.i89.i = icmp eq i8 %i.gb, 0
  br i1 %.not.i89.i, label %tsd_fetch_impl.exit91.i, label %bb.bn, !prof !32

bb.bn:                                            ; preds = %rate_per_second.exit107.i
  %i.gc = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.da, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit91.i

tsd_fetch_impl.exit91.i:                          ; preds = %bb.bn, %rate_per_second.exit107.i
  %.0.i90.i = phi ptr [ %i.gc, %bb.bn ], [ %i.da, %rate_per_second.exit107.i ]
  %i.gd = call i32 @je_ctl_bymibname(ptr noundef %.0.i90.i, ptr noundef nonnull %i.at, i64 noundef 3, ptr noundef nonnull @.str.309, ptr noundef nonnull %i.j, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %.not74.i = icmp eq i32 %i.gd, 0
  br i1 %.not74.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %tsd_fetch_impl.exit91.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.bp:                                            ; preds = %tsd_fetch_impl.exit91.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  store i32 5, ptr %i.dy, align 16, !tbaa !43
  %i.ge = load i64, ptr %i.dx, align 16, !tbaa !14 ; 3 uses
  %i.gf = icmp eq i64 %i.ge, 0
  %or.cond.i108.i = or i1 %i.ey, %i.gf
  br i1 %or.cond.i108.i, label %rate_per_second.exit110.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gg = icmp ult i64 %i.eq, 1000000000
  br i1 %i.gg, label %rate_per_second.exit110.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gh = udiv i64 %i.eq, 1000000000
  %i.gi = udiv i64 %i.ge, %i.gh
  br label %rate_per_second.exit110.i

rate_per_second.exit110.i:                        ; preds = %bb.br, %bb.bq, %bb.bp
  %.0.i109.i = phi i64 [ %i.gi, %bb.br ], [ 0, %bb.bp ], [ %i.ge, %bb.bq ]
  store i64 %.0.i109.i, ptr %i.dz, align 8, !tbaa !14
  store i32 5, ptr %i.ea, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  store i64 7, ptr %i.l, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  store i64 8, ptr %i.m, align 8, !tbaa !12
  %i.gj = load i8, ptr %i.db, align 8, !tbaa !14
  %.not.i92.i = icmp eq i8 %i.gj, 0
  br i1 %.not.i92.i, label %tsd_fetch_impl.exit94.i, label %bb.bs, !prof !32

bb.bs:                                            ; preds = %rate_per_second.exit110.i
  %i.gk = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.da, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit94.i

tsd_fetch_impl.exit94.i:                          ; preds = %bb.bs, %rate_per_second.exit110.i
  %.0.i93.i = phi ptr [ %i.gk, %bb.bs ], [ %i.da, %rate_per_second.exit110.i ]
  %i.gl = call i32 @je_ctl_bymibname(ptr noundef %.0.i93.i, ptr noundef nonnull %i.at, i64 noundef 3, ptr noundef nonnull @.str.310, ptr noundef nonnull %i.l, ptr noundef nonnull %i.eb, ptr noundef nonnull %i.m, ptr noundef null, i64 noundef 0) #14
  %.not75.i = icmp eq i32 %i.gl, 0
  br i1 %.not75.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %tsd_fetch_impl.exit94.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.bu:                                            ; preds = %tsd_fetch_impl.exit94.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  store i32 4, ptr %i.ec, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  store i64 7, ptr %i.n, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  store i64 4, ptr %i.o, align 8, !tbaa !12
  %i.gm = load i8, ptr %i.db, align 8, !tbaa !14
  %.not.i95.i = icmp eq i8 %i.gm, 0
  br i1 %.not.i95.i, label %tsd_fetch_impl.exit97.i, label %bb.bv, !prof !32

bb.bv:                                            ; preds = %bb.bu
  %i.gn = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.da, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit97.i

tsd_fetch_impl.exit97.i:                          ; preds = %bb.bv, %bb.bu
  %.0.i96.i = phi ptr [ %i.gn, %bb.bv ], [ %i.da, %bb.bu ]
  %i.go = call i32 @je_ctl_bymibname(ptr noundef %.0.i96.i, ptr noundef nonnull %i.at, i64 noundef 3, ptr noundef nonnull @.str.311, ptr noundef nonnull %i.n, ptr noundef nonnull %i.ed, ptr noundef nonnull %i.o, ptr noundef null, i64 noundef 0) #14
  %.not76.i = icmp eq i32 %i.go, 0
  br i1 %.not76.i, label %mutex_stats_read_global.exit, label %bb.bw

bb.bw:                                            ; preds = %tsd_fetch_impl.exit97.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

mutex_stats_read_global.exit:                     ; preds = %tsd_fetch_impl.exit97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef %i.ep)
  call fastcc void @mutex_stats_emit(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %11, ptr noundef %12)
  %.val.i124 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i125 = icmp ult i32 %.val.i124, 2
  br i1 %spec.select.i.i125, label %bb.bx, label %emitter_json_object_end.exit134

bb.bx:                                            ; preds = %mutex_stats_read_global.exit
  %i.gp = load i32, ptr %i.ee, align 8, !tbaa !25
  %i.gq = add nsw i32 %i.gp, -1
  store i32 %i.gq, ptr %i.ee, align 8, !tbaa !25
  store i8 1, ptr %i.ef, align 4, !tbaa !23
  %.not.i126 = icmp eq i32 %.val.i124, 1
  br i1 %.not.i126, label %emitter_indent.exit.i128, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.gr = load i32, ptr %i.ee, align 8, !tbaa !25 ; 2 uses
  %i.gs = load i32, ptr %0, align 8, !tbaa !17
  %i.gt = icmp ne i32 %i.gs, 0                    ; 2 uses
  %.07.i.i127 = select i1 %i.gt, ptr @.str.10, ptr @.str.13
  %i.gu = icmp sgt i32 %i.gr, 0
  br i1 %i.gu, label %.lr.ph.preheader.i.i129, label %emitter_indent.exit.i128

.lr.ph.preheader.i.i129:                          ; preds = %bb.by
  %i.gv = zext i1 %i.gt to i32
  %.08.i.i130 = shl nuw nsw i32 %i.gr, %i.gv
  br label %.lr.ph.i.i131

.lr.ph.i.i131:                                    ; preds = %.lr.ph.i.i131, %.lr.ph.preheader.i.i129
  %.09.i.i132 = phi i32 [ %i.gw, %.lr.ph.i.i131 ], [ 0, %.lr.ph.preheader.i.i129 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i127)
  %i.gw = add nuw nsw i32 %.09.i.i132, 1          ; 2 uses
  %exitcond.not.i.i133 = icmp eq i32 %i.gw, %.08.i.i130
  br i1 %exitcond.not.i.i133, label %emitter_indent.exit.i128, label %.lr.ph.i.i131, !llvm.loop !26

emitter_indent.exit.i128:                         ; preds = %.lr.ph.i.i131, %bb.by, %bb.bx
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit134

emitter_json_object_end.exit134:                  ; preds = %mutex_stats_read_global.exit, %emitter_indent.exit.i128
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %bb.am, label %bb.ap, !llvm.loop !45

bb.bz:                                            ; preds = %emitter_json_object_end.exit122, %emitter_json_object_end.exit
  %.val.i135 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i136 = icmp ult i32 %.val.i135, 2
  br i1 %spec.select.i.i136, label %bb.ca, label %emitter_json_object_end.exit145

bb.ca:                                            ; preds = %bb.bz
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !25
  %i.gz = add nsw i32 %i.gy, -1
  store i32 %i.gz, ptr %i.gx, align 8, !tbaa !25
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.ha, align 4, !tbaa !23
  %.not.i137 = icmp eq i32 %.val.i135, 1
  br i1 %.not.i137, label %emitter_indent.exit.i139, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.hb = load i32, ptr %i.gx, align 8, !tbaa !25 ; 2 uses
  %i.hc = load i32, ptr %0, align 8, !tbaa !17
  %i.hd = icmp ne i32 %i.hc, 0                    ; 2 uses
  %.07.i.i138 = select i1 %i.hd, ptr @.str.10, ptr @.str.13
  %i.he = icmp sgt i32 %i.hb, 0
  br i1 %i.he, label %.lr.ph.preheader.i.i140, label %emitter_indent.exit.i139

.lr.ph.preheader.i.i140:                          ; preds = %bb.cb
  %i.hf = zext i1 %i.hd to i32
  %.08.i.i141 = shl nuw nsw i32 %i.hb, %i.hf
  br label %.lr.ph.i.i142

.lr.ph.i.i142:                                    ; preds = %.lr.ph.i.i142, %.lr.ph.preheader.i.i140
  %.09.i.i143 = phi i32 [ %i.hg, %.lr.ph.i.i142 ], [ 0, %.lr.ph.preheader.i.i140 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i138)
  %i.hg = add nuw nsw i32 %.09.i.i143, 1          ; 2 uses
  %exitcond.not.i.i144 = icmp eq i32 %i.hg, %.08.i.i141
  br i1 %exitcond.not.i.i144, label %emitter_indent.exit.i139, label %.lr.ph.i.i142, !llvm.loop !26

emitter_indent.exit.i139:                         ; preds = %.lr.ph.i.i142, %bb.cb, %bb.ca
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit145

emitter_json_object_end.exit145:                  ; preds = %bb.bz, %emitter_indent.exit.i139
  %or.cond = or i1 %1, %2
  %or.cond3 = or i1 %or.cond, %3
  br i1 %or.cond3, label %bb.cc, label %bb.cy

bb.cc:                                            ; preds = %emitter_json_object_end.exit145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #14
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.290)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #14
  store i64 4, ptr %i.aw, align 8, !tbaa !12
  %i.hh = call i32 @mallctl(ptr noundef nonnull @.str.206, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, ptr noundef null, i64 noundef 0) #14
  %.not104 = icmp eq i32 %i.hh, 0
  br i1 %.not104, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.206) #14
  call void @abort() #15
  unreachable

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #14
  store i64 3, ptr %i.ay, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #14
  %i.hi = load i32, ptr %i.av, align 4, !tbaa !29
  %i.hj = zext i32 %i.hi to i64
  %i.hk = call ptr @llvm.stacksave.p0()
  %i.hl = alloca i8, i64 %i.hj, align 16          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #14
  %i.hm = call i32 @mallctlnametomib(ptr noundef nonnull @.str.291, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay) #14
  %.not105 = icmp eq i32 %i.hm, 0
  br i1 %.not105, label %.preheader190, label %bb.cf

.preheader190:                                    ; preds = %bb.ce
  %i.hn = load i32, ptr %i.av, align 4, !tbaa !29
  %.not199 = icmp eq i32 %i.hn, 0
  br i1 %.not199, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader190
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.291) #14
  call void @abort() #15
  unreachable

bb.cg:                                            ; preds = %.lr.ph, %bb.ci
  %indvars.iv201 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next202, %bb.ci ] ; 3 uses
  %.0194 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.ci ]
  store i64 %indvars.iv201, ptr %i.ho, align 8, !tbaa !12
  store i64 1, ptr %i.az, align 8, !tbaa !12
  %i.hp = load i64, ptr %i.ay, align 8, !tbaa !12
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv201 ; 2 uses
  %i.hr = call i32 @mallctlbymib(ptr noundef nonnull %i.ax, i64 noundef %i.hp, ptr noundef nonnull %i.hq, ptr noundef nonnull %i.az, ptr noundef null, i64 noundef 0) #14
  %.not107 = icmp eq i32 %i.hr, 0
  br i1 %.not107, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.hs = load i8, ptr %i.hq, align 1, !tbaa !46, !range !27, !noundef !28
  %i.ht = zext nneg i8 %i.hs to i32
  %spec.select = add i32 %.0194, %i.ht            ; 2 uses
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %i.hu = load i32, ptr %i.av, align 4, !tbaa !29
  %i.hv = zext i32 %i.hu to i64
  %i.hw = icmp samesign ult i64 %indvars.iv.next202, %i.hv
  br i1 %i.hw, label %bb.cg, label %._crit_edge.loopexit, !llvm.loop !47

._crit_edge.loopexit:                             ; preds = %bb.ci
  %i.hx = icmp ult i32 %spec.select, 2
  %i.hy = and i1 %3, %i.hx
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader190
  %.0.lcssa = phi i1 [ %3, %.preheader190 ], [ %i.hy, %._crit_edge.loopexit ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 4097, ptr %i.hz, align 8, !tbaa !12
  store i64 1, ptr %i.az, align 8, !tbaa !12
  %i.ia = load i64, ptr %i.ay, align 8, !tbaa !12
  %i.ib = call i32 @mallctlbymib(ptr noundef nonnull %i.ax, i64 noundef %i.ia, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.az, ptr noundef null, i64 noundef 0) #14
  %.not106 = icmp eq i32 %i.ib, 0
  br i1 %.not106, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %._crit_edge
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.ck:                                            ; preds = %._crit_edge
  %.not108 = xor i1 %1, true
  %or.cond109 = select i1 %.not108, i1 true, i1 %.0.lcssa
  br i1 %or.cond109, label %emitter_json_object_end.exit156, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.292)
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.293)
  call fastcc void @stats_arena_print(ptr noundef %0, i32 noundef 4096, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8) #16
  %.val.i146 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i147 = icmp ult i32 %.val.i146, 2
  br i1 %spec.select.i.i147, label %bb.cm, label %emitter_json_object_end.exit156

bb.cm:                                            ; preds = %bb.cl
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !25
  %i.ie = add nsw i32 %i.id, -1
  store i32 %i.ie, ptr %i.ic, align 8, !tbaa !25
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.if, align 4, !tbaa !23
  %.not.i148 = icmp eq i32 %.val.i146, 1
  br i1 %.not.i148, label %emitter_indent.exit.i150, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.ig = load i32, ptr %i.ic, align 8, !tbaa !25 ; 2 uses
  %i.ih = load i32, ptr %0, align 8, !tbaa !17
  %i.ii = icmp ne i32 %i.ih, 0                    ; 2 uses
  %.07.i.i149 = select i1 %i.ii, ptr @.str.10, ptr @.str.13
  %i.ij = icmp sgt i32 %i.ig, 0
  br i1 %i.ij, label %.lr.ph.preheader.i.i151, label %emitter_indent.exit.i150

.lr.ph.preheader.i.i151:                          ; preds = %bb.cn
  %i.ik = zext i1 %i.ii to i32
  %.08.i.i152 = shl nuw nsw i32 %i.ig, %i.ik
  br label %.lr.ph.i.i153

.lr.ph.i.i153:                                    ; preds = %.lr.ph.i.i153, %.lr.ph.preheader.i.i151
  %.09.i.i154 = phi i32 [ %i.il, %.lr.ph.i.i153 ], [ 0, %.lr.ph.preheader.i.i151 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i149)
  %i.il = add nuw nsw i32 %.09.i.i154, 1          ; 2 uses
  %exitcond.not.i.i155 = icmp eq i32 %i.il, %.08.i.i152
  br i1 %exitcond.not.i.i155, label %emitter_indent.exit.i150, label %.lr.ph.i.i153, !llvm.loop !26

emitter_indent.exit.i150:                         ; preds = %.lr.ph.i.i153, %bb.cn, %bb.cm
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit156

emitter_json_object_end.exit156:                  ; preds = %emitter_indent.exit.i150, %bb.cl, %bb.ck
  %i.im = load i8, ptr %i.ba, align 1, !tbaa !46, !range !27, !noundef !28
  %i.in = trunc nuw i8 %i.im to i1
  %or.cond7 = and i1 %2, %i.in
  br i1 %or.cond7, label %bb.co, label %emitter_json_object_end.exit167

bb.co:                                            ; preds = %emitter_json_object_end.exit156
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.294)
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.295)
  call fastcc void @stats_arena_print(ptr noundef %0, i32 noundef 4097, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8) #16
  %.val.i157 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i158 = icmp ult i32 %.val.i157, 2
  br i1 %spec.select.i.i158, label %bb.cp, label %emitter_json_object_end.exit167

bb.cp:                                            ; preds = %bb.co
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !25
  %i.iq = add nsw i32 %i.ip, -1
  store i32 %i.iq, ptr %i.io, align 8, !tbaa !25
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.ir, align 4, !tbaa !23
  %.not.i159 = icmp eq i32 %.val.i157, 1
  br i1 %.not.i159, label %emitter_indent.exit.i161, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.is = load i32, ptr %i.io, align 8, !tbaa !25 ; 2 uses
  %i.it = load i32, ptr %0, align 8, !tbaa !17
  %i.iu = icmp ne i32 %i.it, 0                    ; 2 uses
  %.07.i.i160 = select i1 %i.iu, ptr @.str.10, ptr @.str.13
  %i.iv = icmp sgt i32 %i.is, 0
  br i1 %i.iv, label %.lr.ph.preheader.i.i162, label %emitter_indent.exit.i161

.lr.ph.preheader.i.i162:                          ; preds = %bb.cq
  %i.iw = zext i1 %i.iu to i32
  %.08.i.i163 = shl nuw nsw i32 %i.is, %i.iw
  br label %.lr.ph.i.i164

.lr.ph.i.i164:                                    ; preds = %.lr.ph.i.i164, %.lr.ph.preheader.i.i162
  %.09.i.i165 = phi i32 [ %i.ix, %.lr.ph.i.i164 ], [ 0, %.lr.ph.preheader.i.i162 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i160)
  %i.ix = add nuw nsw i32 %.09.i.i165, 1          ; 2 uses
  %exitcond.not.i.i166 = icmp eq i32 %i.ix, %.08.i.i163
  br i1 %exitcond.not.i.i166, label %emitter_indent.exit.i161, label %.lr.ph.i.i164, !llvm.loop !26

emitter_indent.exit.i161:                         ; preds = %.lr.ph.i.i164, %bb.cq, %bb.cp
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit167

emitter_json_object_end.exit167:                  ; preds = %emitter_indent.exit.i161, %bb.co, %emitter_json_object_end.exit156
  %i.iy = load i32, ptr %i.av, align 4            ; 2 uses
  %i.iz = icmp ne i32 %i.iy, 0
  %or.cond198 = select i1 %3, i1 %i.iz, i1 false
  br i1 %or.cond198, label %.lr.ph196, label %.loopexit

.lr.ph196:                                        ; preds = %emitter_json_object_end.exit167
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.cr

bb.cr:                                            ; preds = %.lr.ph196, %bb.cv
  %i.jc = phi i32 [ %i.iy, %.lr.ph196 ], [ %i.jq, %bb.cv ]
  %indvars.iv204 = phi i64 [ 0, %.lr.ph196 ], [ %indvars.iv.next205, %bb.cv ] ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv204
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !46, !range !27, !noundef !28
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb) #14
  %i.jg = trunc nuw i64 %indvars.iv204 to i32     ; 2 uses
  %i.jh = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.bb, i64 noundef 20, ptr noundef nonnull @.str.243, i32 noundef %i.jg) #14 ; 0 uses
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull %i.bb)
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.296, ptr noundef nonnull %i.bb)
  call fastcc void @stats_arena_print(ptr noundef %0, i32 noundef %i.jg, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8) #16
  %.val.i168 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i169 = icmp ult i32 %.val.i168, 2
  br i1 %spec.select.i.i169, label %bb.ct, label %emitter_json_object_end.exit178

bb.ct:                                            ; preds = %bb.cs
  %i.ji = load i32, ptr %i.ja, align 8, !tbaa !25
  %i.jj = add nsw i32 %i.ji, -1
  store i32 %i.jj, ptr %i.ja, align 8, !tbaa !25
  store i8 1, ptr %i.jb, align 4, !tbaa !23
  %.not.i170 = icmp eq i32 %.val.i168, 1
  br i1 %.not.i170, label %emitter_indent.exit.i172, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.jk = load i32, ptr %i.ja, align 8, !tbaa !25 ; 2 uses
  %i.jl = load i32, ptr %0, align 8, !tbaa !17
  %i.jm = icmp ne i32 %i.jl, 0                    ; 2 uses
  %.07.i.i171 = select i1 %i.jm, ptr @.str.10, ptr @.str.13
  %i.jn = icmp sgt i32 %i.jk, 0
  br i1 %i.jn, label %.lr.ph.preheader.i.i173, label %emitter_indent.exit.i172

.lr.ph.preheader.i.i173:                          ; preds = %bb.cu
  %i.jo = zext i1 %i.jm to i32
  %.08.i.i174 = shl nuw nsw i32 %i.jk, %i.jo
  br label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175, %.lr.ph.preheader.i.i173
  %.09.i.i176 = phi i32 [ %i.jp, %.lr.ph.i.i175 ], [ 0, %.lr.ph.preheader.i.i173 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i171)
  %i.jp = add nuw nsw i32 %.09.i.i176, 1          ; 2 uses
  %exitcond.not.i.i177 = icmp eq i32 %i.jp, %.08.i.i174
  br i1 %exitcond.not.i.i177, label %emitter_indent.exit.i172, label %.lr.ph.i.i175, !llvm.loop !26

emitter_indent.exit.i172:                         ; preds = %.lr.ph.i.i175, %bb.cu, %bb.ct
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit178

emitter_json_object_end.exit178:                  ; preds = %bb.cs, %emitter_indent.exit.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #14
  %.pre = load i32, ptr %i.av, align 4, !tbaa !29
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cr, %emitter_json_object_end.exit178
  %i.jq = phi i32 [ %i.jc, %bb.cr ], [ %.pre, %emitter_json_object_end.exit178 ] ; 2 uses
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %i.jr = zext i32 %i.jq to i64
  %i.js = icmp samesign ult i64 %indvars.iv.next205, %i.jr
  br i1 %i.js, label %bb.cr, label %.loopexit, !llvm.loop !48

.loopexit:                                        ; preds = %bb.cv, %emitter_json_object_end.exit167
  %.val.i179 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i180 = icmp ult i32 %.val.i179, 2
  br i1 %spec.select.i.i180, label %bb.cw, label %emitter_json_object_end.exit189

bb.cw:                                            ; preds = %.loopexit
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !25
  %i.jv = add nsw i32 %i.ju, -1
  store i32 %i.jv, ptr %i.jt, align 8, !tbaa !25
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.jw, align 4, !tbaa !23
  %.not.i181 = icmp eq i32 %.val.i179, 1
  br i1 %.not.i181, label %emitter_indent.exit.i183, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.jx = load i32, ptr %i.jt, align 8, !tbaa !25 ; 2 uses
  %i.jy = load i32, ptr %0, align 8, !tbaa !17
  %i.jz = icmp ne i32 %i.jy, 0                    ; 2 uses
  %.07.i.i182 = select i1 %i.jz, ptr @.str.10, ptr @.str.13
  %i.ka = icmp sgt i32 %i.jx, 0
  br i1 %i.ka, label %.lr.ph.preheader.i.i184, label %emitter_indent.exit.i183

.lr.ph.preheader.i.i184:                          ; preds = %bb.cx
  %i.kb = zext i1 %i.jz to i32
  %.08.i.i185 = shl nuw nsw i32 %i.jx, %i.kb
  br label %.lr.ph.i.i186

.lr.ph.i.i186:                                    ; preds = %.lr.ph.i.i186, %.lr.ph.preheader.i.i184
  %.09.i.i187 = phi i32 [ %i.kc, %.lr.ph.i.i186 ], [ 0, %.lr.ph.preheader.i.i184 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i182)
  %i.kc = add nuw nsw i32 %.09.i.i187, 1          ; 2 uses
  %exitcond.not.i.i188 = icmp eq i32 %i.kc, %.08.i.i185
  br i1 %exitcond.not.i.i188, label %emitter_indent.exit.i183, label %.lr.ph.i.i186, !llvm.loop !26

emitter_indent.exit.i183:                         ; preds = %.lr.ph.i.i186, %bb.cx, %bb.cw
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit189

emitter_json_object_end.exit189:                  ; preds = %.loopexit, %emitter_indent.exit.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #14
  call void @llvm.stackrestore.p0(ptr %i.hk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #14
  br label %bb.cy

bb.cy:                                            ; preds = %emitter_json_object_end.exit145, %emitter_json_object_end.exit189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @je_stats_interval_new_event_wait(ptr nofree readnone captures(none) %0) #7 {
bb.a:
  %i.a = load i64, ptr @je_stats_interval_accum_batch, align 8, !tbaa !12
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @je_stats_interval_postponed_event_wait(ptr nofree readnone captures(none) %0) #8 {
bb.a:
  ret i64 1
}

; Function Attrs: nounwind uwtable
define hidden void @je_stats_interval_event_handler(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12
  store i64 %i.b, ptr %i.c, align 8, !tbaa !12
  %i.e = sub i64 %i.b, %i.d
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats_interval_accumulated, i64 8), align 8, !tbaa !49 ; 2 uses
  %i.g = load atomic i64, ptr @stats_interval_accumulated monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %atomic_compare_exchange_weak_u64.exit.i, %bb.a
  %.02.i = phi i64 [ %i.g, %bb.a ], [ %i.o, %atomic_compare_exchange_weak_u64.exit.i ] ; 3 uses
  %i.h = add i64 %.02.i, %i.e                     ; 3 uses
  %.not = icmp ult i64 %i.h, %i.f
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = urem i64 %i.h, %i.f
  %i.j = cmpxchg weak ptr @stats_interval_accumulated, i64 %.02.i, i64 %i.i monotonic monotonic, align 8 ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %locked_inc_mod_u64.exit, label %atomic_compare_exchange_weak_u64.exit.i

.thread:                                          ; preds = %bb.b
  %i.l = cmpxchg weak ptr @stats_interval_accumulated, i64 %.02.i, i64 %i.h monotonic monotonic, align 8 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %locked_inc_mod_u64.exit.thread, label %atomic_compare_exchange_weak_u64.exit.i

atomic_compare_exchange_weak_u64.exit.i:          ; preds = %.thread, %bb.c
  %i.n = phi { i64, i1 } [ %i.l, %.thread ], [ %i.j, %bb.c ]
  %i.o = extractvalue { i64, i1 } %i.n, 0
  br label %bb.b

locked_inc_mod_u64.exit:                          ; preds = %bb.c
  tail call void @malloc_stats_print(ptr noundef null, ptr noundef null, ptr noundef nonnull @je_opt_stats_interval_opts) #14
  br label %locked_inc_mod_u64.exit.thread

locked_inc_mod_u64.exit.thread:                   ; preds = %.thread, %locked_inc_mod_u64.exit
  ret void
}

; Function Attrs: nounwind
declare void @malloc_stats_print(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 1, 3) i32 @stats_interval_enabled() #7 {
bb.a:
  %i.a = load i64, ptr @je_opt_stats_interval, align 8, !tbaa !12
  %i.b = icmp sgt i64 %i.a, -1
  %i.c = select i1 %i.b, i32 1, i32 2
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_stats_boot() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @je_opt_stats_interval, align 8, !tbaa !12 ; 3 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 1) ; 2 uses
  %i.d = icmp samesign ugt i64 %i.a, 268435519
  %i.e = lshr i64 %i.c, 6
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %i.e, i64 1)
  %.0 = select i1 %i.d, i64 4194304, i64 %spec.store.select
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ %.0, %bb.b ], [ 0, %bb.a ]
  %.05 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  store i64 %storemerge, ptr @je_stats_interval_accum_batch, align 8, !tbaa !12
  %i.f = tail call zeroext i1 @je_counter_accum_init(ptr noundef nonnull @stats_interval_accumulated, i64 noundef %.05) #14
  ret i1 %i.f
}

declare zeroext i1 @je_counter_accum_init(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_stats_prefork(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @je_counter_prefork(ptr noundef %0, ptr noundef nonnull @stats_interval_accumulated) #14
  ret void
}

declare void @je_counter_prefork(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_stats_postfork_parent(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @je_counter_postfork_parent(ptr noundef %0, ptr noundef nonnull @stats_interval_accumulated) #14
  ret void
}

declare void @je_counter_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_stats_postfork_child(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @je_counter_postfork_child(ptr noundef %0, ptr noundef nonnull @stats_interval_accumulated) #14
  ret void
}

declare void @je_counter_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @emitter_printf(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ...) unnamed_addr #5 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  call void @je_malloc_vcprintf(ptr noundef %i.b, ptr noundef %i.d, ptr noundef %1, ptr noundef nonnull %2) #14
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

declare void @je_malloc_vcprintf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

declare void @je_malloc_printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emitter_dict_begin(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 {
bb.a:
  %.val = load i32, ptr %0, align 8, !tbaa !17    ; 4 uses
  %spec.select.i = icmp ult i32 %.val, 2
  br i1 %spec.select.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !24, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 1, !tbaa !24
  br label %emitter_json_key_prefix.exit.i

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i8, ptr %i.d, align 4, !tbaa !23, !range !27, !noundef !28
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11)
  %.pre.i = load i32, ptr %0, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = phi i32 [ %.pre.i, %bb.e ], [ %.val, %bb.d ]
  %.not.i.i = icmp eq i32 %i.g, 1
  br i1 %.not.i.i, label %emitter_json_key_prefix.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.k = icmp ne i32 %i.j, 0                      ; 2 uses
  %.07.i.i.i = select i1 %i.k, ptr @.str.10, ptr @.str.13
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph.preheader.i.i.i, label %emitter_json_key_prefix.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  %i.m = zext i1 %i.k to i32
  %.08.i.i.i = shl nuw nsw i32 %i.i, %i.m
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.n, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i.i)
  %i.n = add nuw nsw i32 %.09.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.n, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_json_key_prefix.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !26

emitter_json_key_prefix.exit.loopexit.i:          ; preds = %.lr.ph.i.i.i
  %.pre6.i = load i32, ptr %0, align 8, !tbaa !17
  br label %emitter_json_key_prefix.exit.i

emitter_json_key_prefix.exit.i:                   ; preds = %emitter_json_key_prefix.exit.loopexit.i, %bb.g, %bb.c
  %i.o = phi i32 [ %.pre6.i, %emitter_json_key_prefix.exit.loopexit.i ], [ %.val, %bb.c ], [ %i.j, %bb.g ]
  %.fr.i = freeze i32 %i.o
  %i.p = icmp eq i32 %.fr.i, 1
  br i1 %i.p, label %emitter_json_key_prefix.exit.thread.i, label %emitter_json_key.exit

emitter_json_key_prefix.exit.thread.i:            ; preds = %emitter_json_key_prefix.exit.i, %bb.f
  br label %emitter_json_key.exit

emitter_json_key.exit:                            ; preds = %emitter_json_key_prefix.exit.i, %emitter_json_key_prefix.exit.thread.i
  %i.q = phi ptr [ @.str.8, %emitter_json_key_prefix.exit.thread.i ], [ @.str.10, %emitter_json_key_prefix.exit.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, ptr noundef %1, ptr noundef nonnull %i.q)
  store i8 1, ptr %i.a, align 1, !tbaa !24
  %.val.i6 = load i32, ptr %0, align 8, !tbaa !17
  %spec.select.i.i7 = icmp ult i32 %.val.i6, 2
  br i1 %spec.select.i.i7, label %emitter_json_key_prefix.exit.i10, label %emitter_json_object_begin.exit

emitter_json_key_prefix.exit.i10:                 ; preds = %emitter_json_key.exit
  store i8 0, ptr %i.a, align 1, !tbaa !24
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !25
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !25
  br label %emitter_json_object_begin.exit.sink.split

bb.h:                                             ; preds = %bb.a
  %i.u = icmp eq i32 %.val, 2
  br i1 %i.u, label %bb.i, label %emitter_json_object_begin.exit

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !25   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.preheader.i.i, label %emitter_indent.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %.08.i.i = shl nuw nsw i32 %i.w, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi i32 [ %i.y, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10)
  %i.y = add nuw nsw i32 %.09.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.y, %.08.i.i
  br i1 %exitcond.not.i.i, label %emitter_indent.exit.i, label %.lr.ph.i.i, !llvm.loop !26

emitter_indent.exit.i:                            ; preds = %.lr.ph.i.i, %bb.i
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.238, ptr noundef %2)
  %i.z = load i32, ptr %i.v, align 8, !tbaa !25
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.v, align 8, !tbaa !25
  br label %emitter_json_object_begin.exit.sink.split

emitter_json_object_begin.exit.sink.split:        ; preds = %emitter_json_key_prefix.exit.i10, %emitter_indent.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.ab, align 4, !tbaa !23
  br label %emitter_json_object_begin.exit

emitter_json_object_begin.exit:                   ; preds = %emitter_json_object_begin.exit.sink.split, %bb.h, %emitter_json_key.exit
  ret void
}

declare void @je_fxp_print(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emitter_kv_note(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 9) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i32 noundef range(i32 0, 8) %6, ptr nofree noundef readonly captures(none) %7) unnamed_addr #5 {
bb.a:
  %.val = load i32, ptr %0, align 8, !tbaa !17    ; 4 uses
  %spec.select.i = icmp ult i32 %.val, 2
  br i1 %spec.select.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !24, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 1, !tbaa !24
  br label %emitter_json_key_prefix.exit.i

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i8, ptr %i.d, align 4, !tbaa !23, !range !27, !noundef !28
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11)
  %.pre.i = load i32, ptr %0, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = phi i32 [ %.pre.i, %bb.e ], [ %.val, %bb.d ]
  %.not.i.i = icmp eq i32 %i.g, 1
  br i1 %.not.i.i, label %emitter_json_key_prefix.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.k = icmp ne i32 %i.j, 0                      ; 2 uses
  %.07.i.i.i = select i1 %i.k, ptr @.str.10, ptr @.str.13
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph.preheader.i.i.i, label %emitter_json_key_prefix.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  %i.m = zext i1 %i.k to i32
  %.08.i.i.i = shl nuw nsw i32 %i.i, %i.m
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.n, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i.i)
  %i.n = add nuw nsw i32 %.09.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.n, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_json_key_prefix.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !26

emitter_json_key_prefix.exit.loopexit.i:          ; preds = %.lr.ph.i.i.i
  %.pre6.i = load i32, ptr %0, align 8, !tbaa !17
  br label %emitter_json_key_prefix.exit.i

emitter_json_key_prefix.exit.i:                   ; preds = %emitter_json_key_prefix.exit.loopexit.i, %bb.g, %bb.c
  %i.o = phi i32 [ %.pre6.i, %emitter_json_key_prefix.exit.loopexit.i ], [ %.val, %bb.c ], [ %i.j, %bb.g ]
  %.fr.i = freeze i32 %i.o
  %i.p = icmp eq i32 %.fr.i, 1
  br i1 %i.p, label %emitter_json_key_prefix.exit.thread.i, label %emitter_json_key.exit

emitter_json_key_prefix.exit.thread.i:            ; preds = %emitter_json_key_prefix.exit.i, %bb.f
  br label %emitter_json_key.exit

emitter_json_key.exit:                            ; preds = %emitter_json_key_prefix.exit.i, %emitter_json_key_prefix.exit.thread.i
  %i.q = phi ptr [ @.str.8, %emitter_json_key_prefix.exit.thread.i ], [ @.str.10, %emitter_json_key_prefix.exit.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, ptr noundef %1, ptr noundef nonnull %i.q)
  store i8 1, ptr %i.a, align 1, !tbaa !24
  %.val.i13 = load i32, ptr %0, align 8, !tbaa !17
  %spec.select.i.i14 = icmp ult i32 %.val.i13, 2
  br i1 %spec.select.i.i14, label %emitter_json_key_prefix.exit.i17, label %emitter_json_value.exit

emitter_json_key_prefix.exit.i17:                 ; preds = %emitter_json_key.exit
  store i8 0, ptr %i.a, align 1, !tbaa !24
  tail call fastcc void @emitter_print_value(ptr noundef nonnull %0, i32 noundef 2, i32 noundef -1, i32 noundef range(i32 0, 9) %3, ptr noundef readonly %4)
  br label %emitter_json_value.exit

bb.h:                                             ; preds = %bb.a
  %i.r = icmp eq i32 %.val, 2
  br i1 %i.r, label %bb.i, label %emitter_json_value.exit

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.preheader.i.i, label %emitter_indent.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %.08.i.i = shl nuw nsw i32 %i.t, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi i32 [ %i.v, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10)
  %i.v = add nuw nsw i32 %.09.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.v, %.08.i.i
  br i1 %exitcond.not.i.i, label %emitter_indent.exit.i, label %.lr.ph.i.i, !llvm.loop !26

emitter_indent.exit.i:                            ; preds = %.lr.ph.i.i, %bb.i
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.252, ptr noundef %2)
  tail call fastcc void @emitter_print_value(ptr noundef nonnull %0, i32 noundef 2, i32 noundef -1, i32 noundef range(i32 0, 9) %3, ptr noundef readonly %4)
  %.not.i = icmp eq ptr %5, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %emitter_indent.exit.i
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.253, ptr noundef nonnull %5)
  tail call fastcc void @emitter_print_value(ptr noundef nonnull %0, i32 noundef 2, i32 noundef -1, i32 noundef range(i32 0, 8) %6, ptr noundef readonly %7)
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.254)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %emitter_indent.exit.i
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  br label %emitter_json_value.exit

emitter_json_value.exit:                          ; preds = %bb.k, %bb.h, %emitter_json_key_prefix.exit.i17, %emitter_json_key.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.w, align 4, !tbaa !23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emitter_json_kv(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i32 noundef range(i32 4, 8) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #5 {
bb.a:
  %.val.i = load i32, ptr %0, align 8, !tbaa !17  ; 3 uses
  %spec.select.i.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i.i, label %bb.b, label %emitter_json_value.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !24, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 1, !tbaa !24
  br label %emitter_json_key_prefix.exit.i

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i8, ptr %i.d, align 4, !tbaa !23, !range !27, !noundef !28
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11)
  %.pre.i = load i32, ptr %0, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = phi i32 [ %.pre.i, %bb.e ], [ %.val.i, %bb.d ]
  %.not.i.i = icmp eq i32 %i.g, 1
  br i1 %.not.i.i, label %emitter_json_key_prefix.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.k = icmp ne i32 %i.j, 0                      ; 2 uses
  %.07.i.i.i = select i1 %i.k, ptr @.str.10, ptr @.str.13
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph.preheader.i.i.i, label %emitter_json_key_prefix.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  %i.m = zext i1 %i.k to i32
  %.08.i.i.i = shl nuw nsw i32 %i.i, %i.m
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.n, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i.i)
  %i.n = add nuw nsw i32 %.09.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.n, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_json_key_prefix.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !26

emitter_json_key_prefix.exit.loopexit.i:          ; preds = %.lr.ph.i.i.i
  %.pre6.i = load i32, ptr %0, align 8, !tbaa !17
  br label %emitter_json_key_prefix.exit.i

emitter_json_key_prefix.exit.i:                   ; preds = %emitter_json_key_prefix.exit.loopexit.i, %bb.g, %bb.c
  %i.o = phi i32 [ %.pre6.i, %emitter_json_key_prefix.exit.loopexit.i ], [ %.val.i, %bb.c ], [ %i.j, %bb.g ]
  %.fr.i = freeze i32 %i.o
  %i.p = icmp eq i32 %.fr.i, 1
  br i1 %i.p, label %emitter_json_key_prefix.exit.thread.i, label %emitter_json_key.exit

emitter_json_key_prefix.exit.thread.i:            ; preds = %emitter_json_key_prefix.exit.i, %bb.f
  br label %emitter_json_key.exit

emitter_json_key.exit:                            ; preds = %emitter_json_key_prefix.exit.i, %emitter_json_key_prefix.exit.thread.i
  %i.q = phi ptr [ @.str.8, %emitter_json_key_prefix.exit.thread.i ], [ @.str.10, %emitter_json_key_prefix.exit.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, ptr noundef %1, ptr noundef nonnull %i.q)
  store i8 1, ptr %i.a, align 1, !tbaa !24
  %.val.i4.pr = load i32, ptr %0, align 8, !tbaa !17
  %spec.select.i.i5 = icmp ult i32 %.val.i4.pr, 2
  br i1 %spec.select.i.i5, label %emitter_json_key_prefix.exit.i8, label %emitter_json_value.exit

emitter_json_key_prefix.exit.i8:                  ; preds = %emitter_json_key.exit
  store i8 0, ptr %i.a, align 1, !tbaa !24
  tail call fastcc void @emitter_print_value(ptr noundef nonnull %0, i32 noundef 2, i32 noundef -1, i32 noundef range(i32 0, 9) %2, ptr noundef nonnull readonly %3)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.r, align 4, !tbaa !23
  br label %emitter_json_value.exit

emitter_json_value.exit:                          ; preds = %bb.a, %emitter_json_key.exit, %emitter_json_key_prefix.exit.i8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emitter_json_array_kv_begin(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %.val.i = load i32, ptr %0, align 8, !tbaa !17  ; 3 uses
  %spec.select.i.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i.i, label %bb.b, label %emitter_json_array_begin.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !24, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 1, !tbaa !24
  br label %emitter_json_key_prefix.exit.i

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i8, ptr %i.d, align 4, !tbaa !23, !range !27, !noundef !28
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11)
  %.pre.i = load i32, ptr %0, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = phi i32 [ %.pre.i, %bb.e ], [ %.val.i, %bb.d ]
  %.not.i.i = icmp eq i32 %i.g, 1
  br i1 %.not.i.i, label %emitter_json_key_prefix.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.k = icmp ne i32 %i.j, 0                      ; 2 uses
  %.07.i.i.i = select i1 %i.k, ptr @.str.10, ptr @.str.13
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph.preheader.i.i.i, label %emitter_json_key_prefix.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  %i.m = zext i1 %i.k to i32
  %.08.i.i.i = shl nuw nsw i32 %i.i, %i.m
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.n, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i.i)
  %i.n = add nuw nsw i32 %.09.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.n, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_json_key_prefix.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !26

emitter_json_key_prefix.exit.loopexit.i:          ; preds = %.lr.ph.i.i.i
  %.pre6.i = load i32, ptr %0, align 8, !tbaa !17
  br label %emitter_json_key_prefix.exit.i

emitter_json_key_prefix.exit.i:                   ; preds = %emitter_json_key_prefix.exit.loopexit.i, %bb.g, %bb.c
  %i.o = phi i32 [ %.pre6.i, %emitter_json_key_prefix.exit.loopexit.i ], [ %.val.i, %bb.c ], [ %i.j, %bb.g ]
  %.fr.i = freeze i32 %i.o
  %i.p = icmp eq i32 %.fr.i, 1
  br i1 %i.p, label %emitter_json_key_prefix.exit.thread.i, label %emitter_json_key.exit

emitter_json_key_prefix.exit.thread.i:            ; preds = %emitter_json_key_prefix.exit.i, %bb.f
  br label %emitter_json_key.exit

emitter_json_key.exit:                            ; preds = %emitter_json_key_prefix.exit.i, %emitter_json_key_prefix.exit.thread.i
  %i.q = phi ptr [ @.str.8, %emitter_json_key_prefix.exit.thread.i ], [ @.str.10, %emitter_json_key_prefix.exit.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, ptr noundef %1, ptr noundef nonnull %i.q)
  store i8 1, ptr %i.a, align 1, !tbaa !24
  %.val.i3.pr = load i32, ptr %0, align 8, !tbaa !17
  %spec.select.i.i4 = icmp ult i32 %.val.i3.pr, 2
  br i1 %spec.select.i.i4, label %emitter_json_key_prefix.exit.i7, label %emitter_json_array_begin.exit

emitter_json_key_prefix.exit.i7:                  ; preds = %emitter_json_key.exit
  store i8 0, ptr %i.a, align 1, !tbaa !24
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.255)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !25
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.u, align 4, !tbaa !23
  br label %emitter_json_array_begin.exit

emitter_json_array_begin.exit:                    ; preds = %bb.a, %emitter_json_key.exit, %emitter_json_key_prefix.exit.i7
  ret void
}

declare i32 @je_ctl_mibnametomib(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @je_ctl_bymibname(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emitter_print_value(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 10 uses
  %i.b = alloca [10 x i8], align 1                ; 48 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  switch i32 %3, label %bb.aq [
    i32 0, label %bb.b
    i32 1, label %bb.f
    i32 2, label %bb.j
    i32 3, label %bb.n
    i32 7, label %bb.r
    i32 6, label %bb.v
    i32 8, label %bb.z
    i32 4, label %bb.ae
    i32 5, label %bb.ai
    i32 9, label %bb.am
  ]

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.e [
    i32 2, label %bb.c
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.b, i64 noundef 10, ptr noundef nonnull @.str.247, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.7, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.d = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.b, i64 noundef 10, ptr noundef nonnull @.str.248, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.7, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.e = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.b, i64 noundef 10, ptr noundef nonnull @.str.249, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.7, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit

emitter_gen_fmt.exit:                             ; preds = %bb.c, %bb.d, %bb.e
  %i.f = load i8, ptr %4, align 1, !tbaa !46, !range !27, !noundef !28
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.g, ptr @.str.239, ptr @.str.240
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h)
  br label %bb.ar

bb.f:                                             ; preds = %bb.a
  switch i32 %1, label %bb.i [
    i32 2, label %bb.g
    i32 0, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.i = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.b, i64 noundef 10, ptr noundef nonnull @.str.247, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.241, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit40

bb.h:                                             ; preds = %bb.f
  %i.j = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.b, i64 noundef 10, ptr noundef nonnull @.str.248, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.241, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit40

bb.i:                                             ; preds = %bb.f
  %i.k = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.b, i64 noundef 10, ptr noundef nonnull @.str.249, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.241, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit40

emitter_gen_fmt.exit40:                           ; preds = %bb.g, %bb.h, %bb.i
  %i.l = load i32, ptr %4, align 4, !tbaa !29
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %i.l)
  br label %bb.ar

bb.j:                                             ; preds = %bb.a
  switch i32 %1, label %bb.m [
    i32 2, label %bb.k
    i32 0, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.m = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.b, i64 noundef 10, ptr noundef nonnull @.str.247, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.242, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit41

bb.l:                                             ; preds = %bb.j
  %i.n = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.b, i64 noundef 10, ptr noundef nonnull @.str.248, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.242, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit41

bb.m:                                             ; preds = %bb.j
  %i.o = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.b, i64 noundef 10, ptr noundef nonnull @.str.249, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.242, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit41

emitter_gen_fmt.exit41:                           ; preds = %bb.k, %bb.l, %bb.m
  %i.p = load i64, ptr %4, align 8, !tbaa !12
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %i.p)
  br label %bb.ar

bb.n:                                             ; preds = %bb.a
  switch i32 %1, label %bb.q [
    i32 2, label %bb.o
    i32 0, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.q = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.b, i64 noundef 10, ptr noundef nonnull @.str.247, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.243, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit42

bb.p:                                             ; preds = %bb.n
  %i.r = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.b, i64 noundef 10, ptr noundef nonnull @.str.248, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.243, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit42

bb.q:                                             ; preds = %bb.n
  %i.s = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.b, i64 noundef 10, ptr noundef nonnull @.str.249, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.243, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit42

emitter_gen_fmt.exit42:                           ; preds = %bb.o, %bb.p, %bb.q
  %i.t = load i32, ptr %4, align 4, !tbaa !29
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %i.t)
  br label %bb.ar

bb.r:                                             ; preds = %bb.a
  switch i32 %1, label %bb.u [
    i32 2, label %bb.s
    i32 0, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.u = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.b, i64 noundef 10, ptr noundef nonnull @.str.247, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.244, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit43

bb.t:                                             ; preds = %bb.r
  %i.v = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.b, i64 noundef 10, ptr noundef nonnull @.str.248, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.244, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit43

bb.u:                                             ; preds = %bb.r
  %i.w = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.b, i64 noundef 10, ptr noundef nonnull @.str.249, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.244, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit43

emitter_gen_fmt.exit43:                           ; preds = %bb.s, %bb.t, %bb.u
  %i.x = load i64, ptr %4, align 8, !tbaa !12
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %i.x)
  br label %bb.ar

bb.v:                                             ; preds = %bb.a
  switch i32 %1, label %bb.y [
    i32 2, label %bb.w
    i32 0, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.y = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.b, i64 noundef 10, ptr noundef nonnull @.str.247, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.245, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit44

bb.x:                                             ; preds = %bb.v
  %i.z = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.b, i64 noundef 10, ptr noundef nonnull @.str.248, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.245, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit44

bb.y:                                             ; preds = %bb.v
  %i.aa = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.b, i64 noundef 10, ptr noundef nonnull @.str.249, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.245, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit44

emitter_gen_fmt.exit44:                           ; preds = %bb.w, %bb.x, %bb.y
  %i.ab = load i64, ptr %4, align 8, !tbaa !12
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %i.ab)
  br label %bb.ar
end_hunk_1
begin_hunk_2_@stats_arena_print:bb.a
bb.cn:                                            ; preds = %rate_per_second.exit263
  %i.qr = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i64 %i.gd, ptr %i.qr, align 16, !tbaa !12
  %i.qs = load i64, ptr %i.dl, align 8, !tbaa !12
  %i.qt = call i32 @mallctlbymib(ptr noundef nonnull %i.dk, i64 noundef %i.qs, ptr noundef nonnull %i.au, ptr noundef nonnull %i.dm, ptr noundef null, i64 noundef 0) #14
  %.not159 = icmp eq i32 %i.qt, 0
  br i1 %.not159, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.359, i32 noundef 5, ptr noundef %i.au)
  store i32 5, ptr %i.mm, align 8, !tbaa !43
  %i.qu = load i64, ptr %i.au, align 8, !tbaa !12 ; 4 uses
  store i64 %i.qu, ptr %i.mn, align 8, !tbaa !14
  %i.qv = load i64, ptr %i.bg, align 8, !tbaa !12 ; 3 uses
  %i.qw = icmp eq i64 %i.qv, 0
  %i.qx = icmp eq i64 %i.qu, 0
  %or.cond.i264 = or i1 %i.qx, %i.qw
  br i1 %or.cond.i264, label %rate_per_second.exit266, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.qy = icmp ult i64 %i.qv, 1000000000
  br i1 %i.qy, label %rate_per_second.exit266, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qz = udiv i64 %i.qv, 1000000000
  %i.ra = udiv i64 %i.qu, %i.qz
  br label %rate_per_second.exit266

rate_per_second.exit266:                          ; preds = %bb.cp, %bb.cq, %bb.cr
  %.0.i265 = phi i64 [ %i.ra, %bb.cr ], [ 0, %bb.cp ], [ %i.qu, %bb.cq ]
  store i64 %.0.i265, ptr %i.nb, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do) #14
  store i64 7, ptr %i.do, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp) #14
  store i64 8, ptr %i.dp, align 8, !tbaa !12
  %i.rb = call i32 @mallctlnametomib(ptr noundef nonnull @.str.368, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.do) #14
  %.not160 = icmp eq i32 %i.rb, 0
  br i1 %.not160, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %rate_per_second.exit266
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.368) #14
  call void @abort() #15
  unreachable

bb.ct:                                            ; preds = %rate_per_second.exit266
  %i.rc = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i64 %i.gd, ptr %i.rc, align 16, !tbaa !12
  %i.rd = load i64, ptr %i.do, align 8, !tbaa !12
  %i.re = call i32 @mallctlbymib(ptr noundef nonnull %i.dn, i64 noundef %i.rd, ptr noundef nonnull %i.av, ptr noundef nonnull %i.dp, ptr noundef null, i64 noundef 0) #14
  %.not161 = icmp eq i32 %i.re, 0
  br i1 %.not161, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.369, i32 noundef 5, ptr noundef %i.av)
  store i32 5, ptr %i.no, align 8, !tbaa !43
  %i.rf = load i64, ptr %i.av, align 8, !tbaa !12 ; 4 uses
  store i64 %i.rf, ptr %i.np, align 8, !tbaa !14
  %i.rg = load i64, ptr %i.bg, align 8, !tbaa !12 ; 3 uses
  %i.rh = icmp eq i64 %i.rg, 0
  %i.ri = icmp eq i64 %i.rf, 0
  %or.cond.i267 = or i1 %i.ri, %i.rh
  br i1 %or.cond.i267, label %rate_per_second.exit269, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.rj = icmp ult i64 %i.rg, 1000000000
  br i1 %i.rj, label %rate_per_second.exit269, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.rk = udiv i64 %i.rg, 1000000000
  %i.rl = udiv i64 %i.rf, %i.rk
  br label %rate_per_second.exit269

rate_per_second.exit269:                          ; preds = %bb.cv, %bb.cw, %bb.cx
  %.0.i268 = phi i64 [ %i.rl, %bb.cx ], [ 0, %bb.cv ], [ %i.rf, %bb.cw ]
  store i64 %.0.i268, ptr %i.od, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr) #14
  store i64 7, ptr %i.dr, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds) #14
  store i64 8, ptr %i.ds, align 8, !tbaa !12
  %i.rm = call i32 @mallctlnametomib(ptr noundef nonnull @.str.370, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dr) #14
  %.not162 = icmp eq i32 %i.rm, 0
  br i1 %.not162, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %rate_per_second.exit269
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.370) #14
  call void @abort() #15
  unreachable

bb.cz:                                            ; preds = %rate_per_second.exit269
  %i.rn = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store i64 %i.gd, ptr %i.rn, align 16, !tbaa !12
  %i.ro = load i64, ptr %i.dr, align 8, !tbaa !12
  %i.rp = call i32 @mallctlbymib(ptr noundef nonnull %i.dq, i64 noundef %i.ro, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ds, ptr noundef null, i64 noundef 0) #14
  %.not163 = icmp eq i32 %i.rp, 0
  br i1 %.not163, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.db:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.371, i32 noundef 5, ptr noundef %i.aw)
  store i32 5, ptr %i.oq, align 8, !tbaa !43
  %i.rq = load i64, ptr %i.aw, align 8, !tbaa !12 ; 4 uses
  store i64 %i.rq, ptr %i.or, align 8, !tbaa !14
  %i.rr = load i64, ptr %i.bg, align 8, !tbaa !12 ; 3 uses
  %i.rs = icmp eq i64 %i.rr, 0
  %i.rt = icmp eq i64 %i.rq, 0
  %or.cond.i270 = or i1 %i.rt, %i.rs
  br i1 %or.cond.i270, label %rate_per_second.exit272, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ru = icmp ult i64 %i.rr, 1000000000
  br i1 %i.ru, label %rate_per_second.exit272, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.rv = udiv i64 %i.rr, 1000000000
  %i.rw = udiv i64 %i.rq, %i.rv
  br label %rate_per_second.exit272

rate_per_second.exit272:                          ; preds = %bb.db, %bb.dc, %bb.dd
  %.0.i271 = phi i64 [ %i.rw, %bb.dd ], [ 0, %bb.db ], [ %i.rq, %bb.dc ]
  store i64 %.0.i271, ptr %i.pf, align 8, !tbaa !14
  %i.rx = load i32, ptr %0, align 8, !tbaa !17    ; 2 uses
  %.not.i273 = icmp eq i32 %i.rx, 2
  br i1 %.not.i273, label %bb.de, label %emitter_table_row.exit281

bb.de:                                            ; preds = %rate_per_second.exit272
  %.not1315.i274 = icmp eq ptr %i.pd, null
  br i1 %.not1315.i274, label %select.unfold._crit_edge.i280, label %select.unfold.i275

select.unfold.i275:                               ; preds = %bb.de, %select.unfold.i275
  %.016.i276 = phi ptr [ %i.sf, %select.unfold.i275 ], [ %i.pd, %bb.de ] ; 5 uses
  %i.ry = load i32, ptr %.016.i276, align 8, !tbaa !39
  %i.rz = getelementptr inbounds nuw i8, ptr %.016.i276, i64 4
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !42
  %i.sb = getelementptr inbounds nuw i8, ptr %.016.i276, i64 8
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !43
  %i.sd = getelementptr inbounds nuw i8, ptr %.016.i276, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.ry, i32 noundef %i.sa, i32 noundef %i.sc, ptr noundef nonnull %i.sd)
  %i.se = getelementptr inbounds nuw i8, ptr %.016.i276, i64 24
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !44 ; 3 uses
  %.not14.i277 = icmp eq ptr %i.sf, %i.pd
  %.not1317.i278 = icmp eq ptr %i.sf, null
  %.not13.i279 = or i1 %.not14.i277, %.not1317.i278
  br i1 %.not13.i279, label %select.unfold._crit_edge.i280, label %select.unfold.i275

select.unfold._crit_edge.i280:                    ; preds = %select.unfold.i275, %bb.de
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.12)
  %.val.i.pr = load i32, ptr %0, align 8, !tbaa !17
  br label %emitter_table_row.exit281

emitter_table_row.exit281:                        ; preds = %rate_per_second.exit272, %select.unfold._crit_edge.i280
  %.val.i = phi i32 [ %i.rx, %rate_per_second.exit272 ], [ %.val.i.pr, %select.unfold._crit_edge.i280 ] ; 2 uses
  %spec.select.i.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i.i, label %bb.df, label %emitter_json_object_end.exit

bb.df:                                            ; preds = %emitter_table_row.exit281
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.sh = load i32, ptr %i.sg, align 8, !tbaa !25
  %i.si = add nsw i32 %i.sh, -1
  store i32 %i.si, ptr %i.sg, align 8, !tbaa !25
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.sj, align 4, !tbaa !23
  %.not.i282 = icmp eq i32 %.val.i, 1
  br i1 %.not.i282, label %emitter_indent.exit.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.sk = load i32, ptr %i.sg, align 8, !tbaa !25 ; 2 uses
  %i.sl = load i32, ptr %0, align 8, !tbaa !17
  %i.sm = icmp ne i32 %i.sl, 0                    ; 2 uses
  %.07.i.i = select i1 %i.sm, ptr @.str.10, ptr @.str.13
  %i.sn = icmp sgt i32 %i.sk, 0
  br i1 %i.sn, label %.lr.ph.preheader.i.i, label %emitter_indent.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.dg
  %i.so = zext i1 %i.sm to i32
  %.08.i.i = shl nuw nsw i32 %i.sk, %i.so
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi i32 [ %i.sp, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i)
  %i.sp = add nuw nsw i32 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.sp, %.08.i.i
  br i1 %exitcond.not.i.i, label %emitter_indent.exit.i, label %.lr.ph.i.i, !llvm.loop !26

emitter_indent.exit.i:                            ; preds = %.lr.ph.i.i, %bb.dg, %bb.df
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit

emitter_json_object_end.exit:                     ; preds = %emitter_table_row.exit281, %emitter_indent.exit.i
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.372)
  store ptr @.str.373, ptr %i.lb, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du) #14
  store i64 7, ptr %i.du, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv) #14
  store i64 8, ptr %i.dv, align 8, !tbaa !12
  %i.sq = call i32 @mallctlnametomib(ptr noundef nonnull @.str.374, ptr noundef nonnull %i.dt, ptr noundef nonnull %i.du) #14
  %.not164 = icmp eq i32 %i.sq, 0
  br i1 %.not164, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %emitter_json_object_end.exit
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.374) #14
  call void @abort() #15
  unreachable

bb.di:                                            ; preds = %emitter_json_object_end.exit
  %i.sr = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 %i.gd, ptr %i.sr, align 16, !tbaa !12
  %i.ss = load i64, ptr %i.du, align 8, !tbaa !12
  %i.st = call i32 @mallctlbymib(ptr noundef nonnull %i.dt, i64 noundef %i.ss, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.dv, ptr noundef null, i64 noundef 0) #14
  %.not165 = icmp eq i32 %i.st, 0
  br i1 %.not165, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.dk:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.270, i32 noundef 6, ptr noundef %i.ax)
  store i32 6, ptr %i.le, align 8, !tbaa !43
  %i.su = load i64, ptr %i.ax, align 8, !tbaa !12
  store i64 %i.su, ptr %i.lf, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx) #14
  store i64 7, ptr %i.dx, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy) #14
  store i64 8, ptr %i.dy, align 8, !tbaa !12
  %i.sv = call i32 @mallctlnametomib(ptr noundef nonnull @.str.375, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dx) #14
  %.not166 = icmp eq i32 %i.sv, 0
  br i1 %.not166, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.375) #14
  call void @abort() #15
  unreachable

bb.dm:                                            ; preds = %bb.dk
  %i.sw = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i64 %i.gd, ptr %i.sw, align 16, !tbaa !12
  %i.sx = load i64, ptr %i.dx, align 8, !tbaa !12
  %i.sy = call i32 @mallctlbymib(ptr noundef nonnull %i.dw, i64 noundef %i.sx, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.dy, ptr noundef null, i64 noundef 0) #14
  %.not167 = icmp eq i32 %i.sy, 0
  br i1 %.not167, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.do:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.357, i32 noundef 5, ptr noundef %i.ay)
  store i32 5, ptr %i.lh, align 8, !tbaa !43
  %i.sz = load i64, ptr %i.ay, align 8, !tbaa !12 ; 4 uses
  store i64 %i.sz, ptr %i.li, align 8, !tbaa !14
  %i.ta = load i64, ptr %i.bg, align 8, !tbaa !12 ; 3 uses
  %i.tb = icmp eq i64 %i.ta, 0
  %i.tc = icmp eq i64 %i.sz, 0
  %or.cond.i283 = or i1 %i.tc, %i.tb
  br i1 %or.cond.i283, label %rate_per_second.exit285, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.td = icmp ult i64 %i.ta, 1000000000
  br i1 %i.td, label %rate_per_second.exit285, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.te = udiv i64 %i.ta, 1000000000
  %i.tf = udiv i64 %i.sz, %i.te
  br label %rate_per_second.exit285

rate_per_second.exit285:                          ; preds = %bb.do, %bb.dp, %bb.dq
  %.0.i284 = phi i64 [ %i.tf, %bb.dq ], [ 0, %bb.do ], [ %i.sz, %bb.dp ]
  store i64 %.0.i284, ptr %i.lm, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea) #14
  store i64 7, ptr %i.ea, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb) #14
  store i64 8, ptr %i.eb, align 8, !tbaa !12
  %i.tg = call i32 @mallctlnametomib(ptr noundef nonnull @.str.376, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.ea) #14
  %.not168 = icmp eq i32 %i.tg, 0
  br i1 %.not168, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %rate_per_second.exit285
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.376) #14
  call void @abort() #15
  unreachable

bb.ds:                                            ; preds = %rate_per_second.exit285
  %i.th = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store i64 %i.gd, ptr %i.th, align 16, !tbaa !12
  %i.ti = load i64, ptr %i.ea, align 8, !tbaa !12
  %i.tj = call i32 @mallctlbymib(ptr noundef nonnull %i.dz, i64 noundef %i.ti, ptr noundef nonnull %i.az, ptr noundef nonnull %i.eb, ptr noundef null, i64 noundef 0) #14
  %.not169 = icmp eq i32 %i.tj, 0
  br i1 %.not169, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.du:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.358, i32 noundef 5, ptr noundef %i.az)
  store i32 5, ptr %i.lq, align 8, !tbaa !43
  %i.tk = load i64, ptr %i.az, align 8, !tbaa !12 ; 4 uses
  store i64 %i.tk, ptr %i.lr, align 8, !tbaa !14
  %i.tl = load i64, ptr %i.bg, align 8, !tbaa !12 ; 3 uses
  %i.tm = icmp eq i64 %i.tl, 0
  %i.tn = icmp eq i64 %i.tk, 0
  %or.cond.i286 = or i1 %i.tn, %i.tm
  br i1 %or.cond.i286, label %rate_per_second.exit288, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.to = icmp ult i64 %i.tl, 1000000000
  br i1 %i.to, label %rate_per_second.exit288, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.tp = udiv i64 %i.tl, 1000000000
  %i.tq = udiv i64 %i.tk, %i.tp
  br label %rate_per_second.exit288

rate_per_second.exit288:                          ; preds = %bb.du, %bb.dv, %bb.dw
  %.0.i287 = phi i64 [ %i.tq, %bb.dw ], [ 0, %bb.du ], [ %i.tk, %bb.dv ]
  store i64 %.0.i287, ptr %i.lz, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed) #14
  store i64 7, ptr %i.ed, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee) #14
  store i64 8, ptr %i.ee, align 8, !tbaa !12
  %i.tr = call i32 @mallctlnametomib(ptr noundef nonnull @.str.377, ptr noundef nonnull %i.ec, ptr noundef nonnull %i.ed) #14
  %.not170 = icmp eq i32 %i.tr, 0
  br i1 %.not170, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %rate_per_second.exit288
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.377) #14
  call void @abort() #15
  unreachable

bb.dy:                                            ; preds = %rate_per_second.exit288
  %i.ts = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i64 %i.gd, ptr %i.ts, align 16, !tbaa !12
  %i.tt = load i64, ptr %i.ed, align 8, !tbaa !12
  %i.tu = call i32 @mallctlbymib(ptr noundef nonnull %i.ec, i64 noundef %i.tt, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.ee, ptr noundef null, i64 noundef 0) #14
  %.not171 = icmp eq i32 %i.tu, 0
  br i1 %.not171, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.359, i32 noundef 5, ptr noundef %i.ba)
  store i32 5, ptr %i.mm, align 8, !tbaa !43
  %i.tv = load i64, ptr %i.ba, align 8, !tbaa !12 ; 4 uses
  store i64 %i.tv, ptr %i.mn, align 8, !tbaa !14
  %i.tw = load i64, ptr %i.bg, align 8, !tbaa !12 ; 3 uses
  %i.tx = icmp eq i64 %i.tw, 0
  %i.ty = icmp eq i64 %i.tv, 0
  %or.cond.i289 = or i1 %i.ty, %i.tx
  br i1 %or.cond.i289, label %rate_per_second.exit291, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.tz = icmp ult i64 %i.tw, 1000000000
  br i1 %i.tz, label %rate_per_second.exit291, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ua = udiv i64 %i.tw, 1000000000
  %i.ub = udiv i64 %i.tv, %i.ua
  br label %rate_per_second.exit291

rate_per_second.exit291:                          ; preds = %bb.ea, %bb.eb, %bb.ec
  %.0.i290 = phi i64 [ %i.ub, %bb.ec ], [ 0, %bb.ea ], [ %i.tv, %bb.eb ]
  store i64 %.0.i290, ptr %i.nb, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg) #14
  store i64 7, ptr %i.eg, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh) #14
  store i64 8, ptr %i.eh, align 8, !tbaa !12
  %i.uc = call i32 @mallctlnametomib(ptr noundef nonnull @.str.378, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.eg) #14
  %.not172 = icmp eq i32 %i.uc, 0
  br i1 %.not172, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %rate_per_second.exit291
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.378) #14
  call void @abort() #15
  unreachable

bb.ee:                                            ; preds = %rate_per_second.exit291
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i64 %i.gd, ptr %i.ud, align 16, !tbaa !12
  %i.ue = load i64, ptr %i.eg, align 8, !tbaa !12
  %i.uf = call i32 @mallctlbymib(ptr noundef nonnull %i.ef, i64 noundef %i.ue, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.eh, ptr noundef null, i64 noundef 0) #14
  %.not173 = icmp eq i32 %i.uf, 0
  br i1 %.not173, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.369, i32 noundef 5, ptr noundef %i.bb)
  store i32 5, ptr %i.no, align 8, !tbaa !43
  %i.ug = load i64, ptr %i.bb, align 8, !tbaa !12 ; 4 uses
  store i64 %i.ug, ptr %i.np, align 8, !tbaa !14
  %i.uh = load i64, ptr %i.bg, align 8, !tbaa !12 ; 3 uses
  %i.ui = icmp eq i64 %i.uh, 0
  %i.uj = icmp eq i64 %i.ug, 0
  %or.cond.i292 = or i1 %i.uj, %i.ui
  br i1 %or.cond.i292, label %rate_per_second.exit294, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.uk = icmp ult i64 %i.uh, 1000000000
  br i1 %i.uk, label %rate_per_second.exit294, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ul = udiv i64 %i.uh, 1000000000
  %i.um = udiv i64 %i.ug, %i.ul
  br label %rate_per_second.exit294

rate_per_second.exit294:                          ; preds = %bb.eg, %bb.eh, %bb.ei
  %.0.i293 = phi i64 [ %i.um, %bb.ei ], [ 0, %bb.eg ], [ %i.ug, %bb.eh ]
  store i64 %.0.i293, ptr %i.od, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej) #14
  store i64 7, ptr %i.ej, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek) #14
  store i64 8, ptr %i.ek, align 8, !tbaa !12
  %i.un = call i32 @mallctlnametomib(ptr noundef nonnull @.str.379, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ej) #14
  %.not174 = icmp eq i32 %i.un, 0
  br i1 %.not174, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %rate_per_second.exit294
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.379) #14
  call void @abort() #15
  unreachable

bb.ek:                                            ; preds = %rate_per_second.exit294
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %i.gd, ptr %i.uo, align 16, !tbaa !12
  %i.up = load i64, ptr %i.ej, align 8, !tbaa !12
  %i.uq = call i32 @mallctlbymib(ptr noundef nonnull %i.ei, i64 noundef %i.up, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.ek, ptr noundef null, i64 noundef 0) #14
  %.not175 = icmp eq i32 %i.uq, 0
  br i1 %.not175, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.em:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.371, i32 noundef 5, ptr noundef %i.bc)
  store i32 5, ptr %i.oq, align 8, !tbaa !43
  %i.ur = load i64, ptr %i.bc, align 8, !tbaa !12 ; 4 uses
  store i64 %i.ur, ptr %i.or, align 8, !tbaa !14
  %i.us = load i64, ptr %i.bg, align 8, !tbaa !12 ; 3 uses
  %i.ut = icmp eq i64 %i.us, 0
  %i.uu = icmp eq i64 %i.ur, 0
  %or.cond.i295 = or i1 %i.uu, %i.ut
  br i1 %or.cond.i295, label %rate_per_second.exit297, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.uv = icmp ult i64 %i.us, 1000000000
  br i1 %i.uv, label %rate_per_second.exit297, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.uw = udiv i64 %i.us, 1000000000
  %i.ux = udiv i64 %i.ur, %i.uw
  br label %rate_per_second.exit297

rate_per_second.exit297:                          ; preds = %bb.em, %bb.en, %bb.eo
  %.0.i296 = phi i64 [ %i.ux, %bb.eo ], [ 0, %bb.em ], [ %i.ur, %bb.en ]
  store i64 %.0.i296, ptr %i.pf, align 8, !tbaa !14
  %i.uy = load i32, ptr %0, align 8, !tbaa !17    ; 2 uses
  %.not.i298 = icmp eq i32 %i.uy, 2
  br i1 %.not.i298, label %bb.ep, label %emitter_table_row.exit306

bb.ep:                                            ; preds = %rate_per_second.exit297
  %.not1315.i299 = icmp eq ptr %i.pd, null
  br i1 %.not1315.i299, label %select.unfold._crit_edge.i305, label %select.unfold.i300

select.unfold.i300:                               ; preds = %bb.ep, %select.unfold.i300
  %.016.i301 = phi ptr [ %i.vg, %select.unfold.i300 ], [ %i.pd, %bb.ep ] ; 5 uses
  %i.uz = load i32, ptr %.016.i301, align 8, !tbaa !39
  %i.va = getelementptr inbounds nuw i8, ptr %.016.i301, i64 4
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !42
  %i.vc = getelementptr inbounds nuw i8, ptr %.016.i301, i64 8
  %i.vd = load i32, ptr %i.vc, align 8, !tbaa !43
  %i.ve = getelementptr inbounds nuw i8, ptr %.016.i301, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.uz, i32 noundef %i.vb, i32 noundef %i.vd, ptr noundef nonnull %i.ve)
  %i.vf = getelementptr inbounds nuw i8, ptr %.016.i301, i64 24
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !44 ; 3 uses
  %.not14.i302 = icmp eq ptr %i.vg, %i.pd
  %.not1317.i303 = icmp eq ptr %i.vg, null
  %.not13.i304 = or i1 %.not14.i302, %.not1317.i303
  br i1 %.not13.i304, label %select.unfold._crit_edge.i305, label %select.unfold.i300

select.unfold._crit_edge.i305:                    ; preds = %select.unfold.i300, %bb.ep
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.12)
  %.val.i307.pr = load i32, ptr %0, align 8, !tbaa !17
  br label %emitter_table_row.exit306

emitter_table_row.exit306:                        ; preds = %rate_per_second.exit297, %select.unfold._crit_edge.i305
  %.val.i307 = phi i32 [ %i.uy, %rate_per_second.exit297 ], [ %.val.i307.pr, %select.unfold._crit_edge.i305 ] ; 2 uses
  %spec.select.i.i308 = icmp ult i32 %.val.i307, 2
  br i1 %spec.select.i.i308, label %bb.eq, label %emitter_json_object_end.exit317

bb.eq:                                            ; preds = %emitter_table_row.exit306
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.vi = load i32, ptr %i.vh, align 8, !tbaa !25
  %i.vj = add nsw i32 %i.vi, -1
  store i32 %i.vj, ptr %i.vh, align 8, !tbaa !25
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.vk, align 4, !tbaa !23
  %.not.i309 = icmp eq i32 %.val.i307, 1
  br i1 %.not.i309, label %emitter_indent.exit.i311, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.vl = load i32, ptr %i.vh, align 8, !tbaa !25 ; 2 uses
  %i.vm = load i32, ptr %0, align 8, !tbaa !17
  %i.vn = icmp ne i32 %i.vm, 0                    ; 2 uses
  %.07.i.i310 = select i1 %i.vn, ptr @.str.10, ptr @.str.13
  %i.vo = icmp sgt i32 %i.vl, 0
  br i1 %i.vo, label %.lr.ph.preheader.i.i312, label %emitter_indent.exit.i311

.lr.ph.preheader.i.i312:                          ; preds = %bb.er
  %i.vp = zext i1 %i.vn to i32
  %.08.i.i313 = shl nuw nsw i32 %i.vl, %i.vp
  br label %.lr.ph.i.i314

.lr.ph.i.i314:                                    ; preds = %.lr.ph.i.i314, %.lr.ph.preheader.i.i312
  %.09.i.i315 = phi i32 [ %i.vq, %.lr.ph.i.i314 ], [ 0, %.lr.ph.preheader.i.i312 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i310)
  %i.vq = add nuw nsw i32 %.09.i.i315, 1          ; 2 uses
  %exitcond.not.i.i316 = icmp eq i32 %i.vq, %.08.i.i313
  br i1 %exitcond.not.i.i316, label %emitter_indent.exit.i311, label %.lr.ph.i.i314, !llvm.loop !26

emitter_indent.exit.i311:                         ; preds = %.lr.ph.i.i314, %bb.er, %bb.eq
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit317

emitter_json_object_end.exit317:                  ; preds = %emitter_table_row.exit306, %emitter_indent.exit.i311
  store ptr @.str.380, ptr %i.lb, align 8, !tbaa !14
  %i.vr = load i64, ptr %i.ar, align 8, !tbaa !12
  %i.vs = load i64, ptr %i.ax, align 8, !tbaa !12
  %i.vt = add i64 %i.vs, %i.vr
  store i64 %i.vt, ptr %i.lf, align 8, !tbaa !14
  %i.vu = load i64, ptr %i.as, align 8, !tbaa !12
  %i.vv = load i64, ptr %i.ay, align 8, !tbaa !12
  %i.vw = add i64 %i.vv, %i.vu                    ; 4 uses
  store i64 %i.vw, ptr %i.li, align 8, !tbaa !14
  %i.vx = load i64, ptr %i.at, align 8, !tbaa !12
  %i.vy = load i64, ptr %i.az, align 8, !tbaa !12
  %i.vz = add i64 %i.vy, %i.vx                    ; 4 uses
  store i64 %i.vz, ptr %i.lr, align 8, !tbaa !14
  %i.wa = load i64, ptr %i.au, align 8, !tbaa !12
  %i.wb = load i64, ptr %i.ba, align 8, !tbaa !12
  %i.wc = add i64 %i.wb, %i.wa                    ; 4 uses
  store i64 %i.wc, ptr %i.mn, align 8, !tbaa !14
  %i.wd = load i64, ptr %i.av, align 8, !tbaa !12
  %i.we = load i64, ptr %i.bb, align 8, !tbaa !12
  %i.wf = add i64 %i.we, %i.wd                    ; 4 uses
  store i64 %i.wf, ptr %i.np, align 8, !tbaa !14
  %i.wg = load i64, ptr %i.aw, align 8, !tbaa !12
  %i.wh = load i64, ptr %i.bc, align 8, !tbaa !12
  %i.wi = add i64 %i.wh, %i.wg                    ; 4 uses
  store i64 %i.wi, ptr %i.or, align 8, !tbaa !14
  %i.wj = load i64, ptr %i.bg, align 8, !tbaa !12 ; 11 uses
  %i.wk = icmp eq i64 %i.wj, 0                    ; 5 uses
  %i.wl = icmp eq i64 %i.vw, 0
  %or.cond.i318 = or i1 %i.wl, %i.wk
  br i1 %or.cond.i318, label %rate_per_second.exit320, label %bb.es

bb.es:                                            ; preds = %emitter_json_object_end.exit317
  %i.wm = icmp ult i64 %i.wj, 1000000000
  br i1 %i.wm, label %rate_per_second.exit320, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.wn = udiv i64 %i.wj, 1000000000
  %i.wo = udiv i64 %i.vw, %i.wn
  br label %rate_per_second.exit320

rate_per_second.exit320:                          ; preds = %emitter_json_object_end.exit317, %bb.es, %bb.et
  %.0.i319 = phi i64 [ %i.wo, %bb.et ], [ 0, %emitter_json_object_end.exit317 ], [ %i.vw, %bb.es ]
  store i64 %.0.i319, ptr %i.lm, align 8, !tbaa !14
  %i.wp = icmp eq i64 %i.vz, 0
  %or.cond.i321 = or i1 %i.wp, %i.wk
  br i1 %or.cond.i321, label %rate_per_second.exit323, label %bb.eu

bb.eu:                                            ; preds = %rate_per_second.exit320
  %i.wq = icmp ult i64 %i.wj, 1000000000
  br i1 %i.wq, label %rate_per_second.exit323, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.wr = udiv i64 %i.wj, 1000000000
  %i.ws = udiv i64 %i.vz, %i.wr
  br label %rate_per_second.exit323

rate_per_second.exit323:                          ; preds = %rate_per_second.exit320, %bb.eu, %bb.ev
  %.0.i322 = phi i64 [ %i.ws, %bb.ev ], [ 0, %rate_per_second.exit320 ], [ %i.vz, %bb.eu ]
  store i64 %.0.i322, ptr %i.lz, align 8, !tbaa !14
  %i.wt = icmp eq i64 %i.wc, 0
  %or.cond.i324 = or i1 %i.wt, %i.wk
  br i1 %or.cond.i324, label %rate_per_second.exit326, label %bb.ew

bb.ew:                                            ; preds = %rate_per_second.exit323
  %i.wu = icmp ult i64 %i.wj, 1000000000
  br i1 %i.wu, label %rate_per_second.exit326, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.wv = udiv i64 %i.wj, 1000000000
  %i.ww = udiv i64 %i.wc, %i.wv
  br label %rate_per_second.exit326

rate_per_second.exit326:                          ; preds = %rate_per_second.exit323, %bb.ew, %bb.ex
  %.0.i325 = phi i64 [ %i.ww, %bb.ex ], [ 0, %rate_per_second.exit323 ], [ %i.wc, %bb.ew ]
  store i64 %.0.i325, ptr %i.nb, align 8, !tbaa !14
  %i.wx = icmp eq i64 %i.wf, 0
  %or.cond.i327 = or i1 %i.wx, %i.wk
  br i1 %or.cond.i327, label %rate_per_second.exit329, label %bb.ey

bb.ey:                                            ; preds = %rate_per_second.exit326
  %i.wy = icmp ult i64 %i.wj, 1000000000
  br i1 %i.wy, label %rate_per_second.exit329, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.wz = udiv i64 %i.wj, 1000000000
  %i.xa = udiv i64 %i.wf, %i.wz
  br label %rate_per_second.exit329

rate_per_second.exit329:                          ; preds = %rate_per_second.exit326, %bb.ey, %bb.ez
  %.0.i328 = phi i64 [ %i.xa, %bb.ez ], [ 0, %rate_per_second.exit326 ], [ %i.wf, %bb.ey ]
  store i64 %.0.i328, ptr %i.od, align 8, !tbaa !14
  %i.xb = icmp eq i64 %i.wi, 0
  %or.cond.i330 = or i1 %i.xb, %i.wk
  br i1 %or.cond.i330, label %rate_per_second.exit332, label %bb.fa

bb.fa:                                            ; preds = %rate_per_second.exit329
  %i.xc = icmp ult i64 %i.wj, 1000000000
  br i1 %i.xc, label %rate_per_second.exit332, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.xd = udiv i64 %i.wj, 1000000000
  %i.xe = udiv i64 %i.wi, %i.xd
  br label %rate_per_second.exit332

rate_per_second.exit332:                          ; preds = %rate_per_second.exit329, %bb.fa, %bb.fb
  %.0.i331 = phi i64 [ %i.xe, %bb.fb ], [ 0, %rate_per_second.exit329 ], [ %i.wi, %bb.fa ]
  store i64 %.0.i331, ptr %i.pf, align 8, !tbaa !14
  %i.xf = load i32, ptr %0, align 8, !tbaa !17
  %.not.i333 = icmp eq i32 %i.xf, 2
  br i1 %.not.i333, label %bb.fc, label %emitter_col_init.exit345

bb.fc:                                            ; preds = %rate_per_second.exit332
  %.not1315.i334 = icmp eq ptr %i.pd, null
  br i1 %.not1315.i334, label %select.unfold._crit_edge.i340, label %select.unfold.i335

select.unfold.i335:                               ; preds = %bb.fc, %select.unfold.i335
  %.016.i336 = phi ptr [ %i.xn, %select.unfold.i335 ], [ %i.pd, %bb.fc ] ; 5 uses
  %i.xg = load i32, ptr %.016.i336, align 8, !tbaa !39
  %i.xh = getelementptr inbounds nuw i8, ptr %.016.i336, i64 4
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !42
  %i.xj = getelementptr inbounds nuw i8, ptr %.016.i336, i64 8
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !43
  %i.xl = getelementptr inbounds nuw i8, ptr %.016.i336, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.xg, i32 noundef %i.xi, i32 noundef %i.xk, ptr noundef nonnull %i.xl)
  %i.xm = getelementptr inbounds nuw i8, ptr %.016.i336, i64 24
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !44 ; 3 uses
  %.not14.i337 = icmp eq ptr %i.xn, %i.pd
  %.not1317.i338 = icmp eq ptr %i.xn, null
  %.not13.i339 = or i1 %.not14.i337, %.not1317.i338
  br i1 %.not13.i339, label %select.unfold._crit_edge.i340, label %select.unfold.i335

select.unfold._crit_edge.i340:                    ; preds = %select.unfold.i335, %bb.fc
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.12)
  %.pre = load i32, ptr %0, align 8, !tbaa !17
  %i.xo = icmp eq i32 %.pre, 2
  br label %emitter_col_init.exit345

emitter_col_init.exit345:                         ; preds = %select.unfold._crit_edge.i340, %rate_per_second.exit332
  %.not.i346 = phi i1 [ %i.xo, %select.unfold._crit_edge.i340 ], [ false, %rate_per_second.exit332 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #14
  %i.xp = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.xq = getelementptr inbounds nuw i8, ptr %29, i64 32
  store <2 x i32> <i32 0, i32 21>, ptr %29, align 8, !tbaa !29
  %i.xr = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i32 9, ptr %i.xr, align 8, !tbaa !43
  %i.xs = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 15 uses
  store ptr @.str.8, ptr %i.xs, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #14
  %i.xt = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.xu = getelementptr inbounds nuw i8, ptr %30, i64 32
  store ptr %30, ptr %i.xq, align 8, !tbaa !54
  store ptr %29, ptr %i.xu, align 8, !tbaa !54
  store ptr %29, ptr %i.xt, align 8, !tbaa !44
  store ptr %30, ptr %i.xp, align 8, !tbaa !44
  store <2 x i32> <i32 1, i32 16>, ptr %30, align 8, !tbaa !29
  %i.xv = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  store i32 9, ptr %i.xv, align 8, !tbaa !43
  %i.xw = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 15 uses
  store ptr @.str.8, ptr %i.xw, align 8, !tbaa !14
  br i1 %.not.i346, label %select.unfold.i348, label %emitter_table_row.exit363.critedge

select.unfold.i348:                               ; preds = %emitter_col_init.exit345, %select.unfold.i348
  %.016.i349 = phi ptr [ %i.ye, %select.unfold.i348 ], [ %29, %emitter_col_init.exit345 ] ; 5 uses
  %i.xx = load i32, ptr %.016.i349, align 8, !tbaa !39
  %i.xy = getelementptr inbounds nuw i8, ptr %.016.i349, i64 4
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !42
  %i.ya = getelementptr inbounds nuw i8, ptr %.016.i349, i64 8
  %i.yb = load i32, ptr %i.ya, align 8, !tbaa !43
  %i.yc = getelementptr inbounds nuw i8, ptr %.016.i349, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.xx, i32 noundef %i.xz, i32 noundef %i.yb, ptr noundef nonnull %i.yc)
  %i.yd = getelementptr inbounds nuw i8, ptr %.016.i349, i64 24
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !44 ; 3 uses
  %.not14.i350 = icmp eq ptr %i.ye, %29
  %.not1317.i351 = icmp eq ptr %i.ye, null
  %.not13.i352 = or i1 %.not14.i350, %.not1317.i351
  br i1 %.not13.i352, label %select.unfold._crit_edge.i353, label %select.unfold.i348

select.unfold._crit_edge.i353:                    ; preds = %select.unfold.i348
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.12)
  %.pr = load i32, ptr %0, align 8, !tbaa !17
  %i.yf = icmp eq i32 %.pr, 2
  store i32 6, ptr %i.xv, align 8, !tbaa !43
  store ptr @.str.381, ptr %i.xs, align 8, !tbaa !14
  %i.yg = load i64, ptr %i.z, align 8, !tbaa !12
  %i.yh = load i64, ptr %i.y, align 8, !tbaa !12
  %i.yi = mul i64 %i.yh, %i.yg
  store i64 %i.yi, ptr %i.xw, align 8, !tbaa !14
  br i1 %i.yf, label %select.unfold.i357, label %emitter_table_row.exit363

select.unfold.i357:                               ; preds = %select.unfold._crit_edge.i353, %select.unfold.i357
  %.016.i358 = phi ptr [ %i.yq, %select.unfold.i357 ], [ %29, %select.unfold._crit_edge.i353 ] ; 5 uses
  %i.yj = load i32, ptr %.016.i358, align 8, !tbaa !39
  %i.yk = getelementptr inbounds nuw i8, ptr %.016.i358, i64 4
end_hunk_2
begin_hunk_3_@stats_arena_print:bb.a

bb.gv:                                            ; preds = %emitter_table_row.exit462
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.409) #14
  call void @abort() #15
  unreachable

bb.gw:                                            ; preds = %emitter_table_row.exit462
  %i.aet = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store i64 %i.gd, ptr %i.aet, align 16, !tbaa !12
  %i.aeu = load i64, ptr %i.ft, align 8, !tbaa !12
  %i.aev = call i32 @mallctlbymib(ptr noundef nonnull %i.fs, i64 noundef %i.aeu, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.fu, ptr noundef null, i64 noundef 0) #14
  %.not199 = icmp eq i32 %i.aev, 0
  br i1 %.not199, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.gy:                                            ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.410, i32 noundef 6, ptr noundef %i.ak)
  store ptr @.str.411, ptr %i.xs, align 8, !tbaa !14
  %i.aew = load i64, ptr %i.ak, align 8, !tbaa !12
  store i64 %i.aew, ptr %i.xw, align 8, !tbaa !14
  %i.aex = load i32, ptr %0, align 8, !tbaa !17
  %.not.i463 = icmp eq i32 %i.aex, 2
  br i1 %.not.i463, label %select.unfold.i465, label %emitter_table_row.exit471

select.unfold.i465:                               ; preds = %bb.gy, %select.unfold.i465
  %.016.i466 = phi ptr [ %i.aff, %select.unfold.i465 ], [ %29, %bb.gy ] ; 5 uses
  %i.aey = load i32, ptr %.016.i466, align 8, !tbaa !39
  %i.aez = getelementptr inbounds nuw i8, ptr %.016.i466, i64 4
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !42
  %i.afb = getelementptr inbounds nuw i8, ptr %.016.i466, i64 8
  %i.afc = load i32, ptr %i.afb, align 8, !tbaa !43
  %i.afd = getelementptr inbounds nuw i8, ptr %.016.i466, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.aey, i32 noundef %i.afa, i32 noundef %i.afc, ptr noundef nonnull %i.afd)
  %i.afe = getelementptr inbounds nuw i8, ptr %.016.i466, i64 24
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !44 ; 3 uses
  %.not14.i467 = icmp eq ptr %i.aff, %29
  %.not1317.i468 = icmp eq ptr %i.aff, null
  %.not13.i469 = or i1 %.not14.i467, %.not1317.i468
  br i1 %.not13.i469, label %select.unfold._crit_edge.i470, label %select.unfold.i465

select.unfold._crit_edge.i470:                    ; preds = %select.unfold.i465
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.12)
  br label %emitter_table_row.exit471

emitter_table_row.exit471:                        ; preds = %bb.gy, %select.unfold._crit_edge.i470
  br i1 %4, label %bb.gz, label %bb.ip

bb.gz:                                            ; preds = %emitter_table_row.exit471
  %i.afg = load i64, ptr %i.bg, align 8, !tbaa !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store ptr null, ptr %7, align 8, !tbaa !35
  call fastcc void @mutex_stats_init_cols(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull %8, ptr noundef %9, ptr noundef %10)
  call fastcc void @emitter_json_object_kv_begin(ptr noundef nonnull %0, ptr noundef nonnull @.str.285)
  %i.afh = load i32, ptr %0, align 8, !tbaa !17
  %.not.i16.i = icmp eq i32 %i.afh, 2
  br i1 %.not.i16.i, label %bb.ha, label %emitter_table_row.exit.i

bb.ha:                                            ; preds = %bb.gz
  %i.afi = load ptr, ptr %7, align 8, !tbaa !35   ; 3 uses
  %.not1315.i.i = icmp eq ptr %i.afi, null
  br i1 %.not1315.i.i, label %select.unfold._crit_edge.i.i, label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %bb.ha, %select.unfold.i.i
  %.016.i.i = phi ptr [ %i.afq, %select.unfold.i.i ], [ %i.afi, %bb.ha ] ; 5 uses
  %i.afj = load i32, ptr %.016.i.i, align 8, !tbaa !39
  %i.afk = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 4
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !42
  %i.afm = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 8
  %i.afn = load i32, ptr %i.afm, align 8, !tbaa !43
  %i.afo = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.afj, i32 noundef %i.afl, i32 noundef %i.afn, ptr noundef nonnull %i.afo)
  %i.afp = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 24
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !44 ; 3 uses
  %.not14.i.i = icmp eq ptr %i.afq, %i.afi
  %.not1317.i.i = icmp eq ptr %i.afq, null
  %.not13.i.i = or i1 %.not14.i.i, %.not1317.i.i
  br i1 %.not13.i.i, label %select.unfold._crit_edge.i.i, label %select.unfold.i.i

select.unfold._crit_edge.i.i:                     ; preds = %select.unfold.i.i, %bb.ha
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.12)
  br label %emitter_table_row.exit.i

emitter_table_row.exit.i:                         ; preds = %select.unfold._crit_edge.i.i, %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  store i64 7, ptr %i.q, align 8, !tbaa !12
  %i.afr = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 21 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 920 ; 10 uses
  %i.aft = load i8, ptr %i.afs, align 8, !tbaa !14
  %.not.i.i = icmp eq i8 %i.aft, 0
  br i1 %.not.i.i, label %tsd_fetch_impl.exit.i, label %bb.hb, !prof !32

bb.hb:                                            ; preds = %emitter_table_row.exit.i
  %i.afu = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.afr, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit.i

tsd_fetch_impl.exit.i:                            ; preds = %bb.hb, %emitter_table_row.exit.i
  %.0.i.i = phi ptr [ %i.afu, %bb.hb ], [ %i.afr, %emitter_table_row.exit.i ]
  %i.afv = call i32 @je_ctl_mibnametomib(ptr noundef %.0.i.i, ptr noundef nonnull %i.p, i64 noundef 0, ptr noundef nonnull @.str.290, ptr noundef nonnull %i.q) #14
  %.not.i472 = icmp eq i32 %i.afv, 0
  br i1 %.not.i472, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %tsd_fetch_impl.exit.i
  call void @je_malloc_write(ptr noundef nonnull @.str.227) #14
  call void @abort() #15
  unreachable

bb.hd:                                            ; preds = %tsd_fetch_impl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  %i.afw = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.gd, ptr %i.afw, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #14
  store i64 7, ptr %i.r, align 8, !tbaa !12
  %i.afx = load i8, ptr %i.afs, align 8, !tbaa !14
  %.not.i13.i = icmp eq i8 %i.afx, 0
  br i1 %.not.i13.i, label %tsd_fetch_impl.exit15.i, label %bb.he, !prof !32

bb.he:                                            ; preds = %bb.hd
  %i.afy = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.afr, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit15.i

tsd_fetch_impl.exit15.i:                          ; preds = %bb.he, %bb.hd
  %.0.i14.i = phi ptr [ %i.afy, %bb.he ], [ %i.afr, %bb.hd ]
  %i.afz = call i32 @je_ctl_mibnametomib(ptr noundef %.0.i14.i, ptr noundef nonnull %i.p, i64 noundef 3, ptr noundef nonnull @.str.285, ptr noundef nonnull %i.r) #14
  %.not12.i = icmp eq i32 %i.afz, 0
  br i1 %.not12.i, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %tsd_fetch_impl.exit15.i
  call void @je_malloc_write(ptr noundef nonnull @.str.227) #14
  call void @abort() #15
  unreachable

bb.hg:                                            ; preds = %tsd_fetch_impl.exit15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  %i.aga = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.agb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.agc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.age = icmp eq i64 %i.afg, 0                  ; 5 uses
  %i.agf = icmp ult i64 %i.afg, 1000000000        ; 5 uses
  %i.agg = udiv i64 %i.afg, 1000000000            ; 5 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.agi = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.agj = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.agl = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.agm = getelementptr inbounds nuw i8, ptr %9, i64 168
  %i.agn = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %9, i64 208
  %i.agp = getelementptr inbounds nuw i8, ptr %9, i64 216
  %i.agq = getelementptr inbounds nuw i8, ptr %9, i64 248
  %i.agr = getelementptr inbounds nuw i8, ptr %9, i64 256 ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %9, i64 288
  %i.agt = getelementptr inbounds nuw i8, ptr %9, i64 296
  %i.agu = getelementptr inbounds nuw i8, ptr %9, i64 328
  %i.agv = getelementptr inbounds nuw i8, ptr %9, i64 336 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %9, i64 368
  %i.agx = getelementptr inbounds nuw i8, ptr %9, i64 376
  %i.agy = getelementptr inbounds nuw i8, ptr %9, i64 408
  %i.agz = getelementptr inbounds nuw i8, ptr %9, i64 416
  %i.aha = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ahb = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ahc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br label %bb.hk

bb.hh:                                            ; preds = %emitter_json_object_end.exit29.i
  %.val.i.i = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i.i = icmp ult i32 %.val.i.i, 2
  br i1 %spec.select.i.i.i, label %bb.hi, label %stats_arena_mutexes_print.exit

bb.hi:                                            ; preds = %bb.hh
  %i.ahe = load i32, ptr %i.ahc, align 8, !tbaa !25
  %i.ahf = add nsw i32 %i.ahe, -1
  store i32 %i.ahf, ptr %i.ahc, align 8, !tbaa !25
  store i8 1, ptr %i.ahd, align 4, !tbaa !23
  %.not.i17.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i17.i, label %emitter_indent.exit.i.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.ahg = load i32, ptr %i.ahc, align 8, !tbaa !25 ; 2 uses
  %i.ahh = load i32, ptr %0, align 8, !tbaa !17
  %i.ahi = icmp ne i32 %i.ahh, 0                  ; 2 uses
  %.07.i.i.i = select i1 %i.ahi, ptr @.str.10, ptr @.str.13
  %i.ahj = icmp sgt i32 %i.ahg, 0
  br i1 %i.ahj, label %.lr.ph.preheader.i.i.i, label %emitter_indent.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.hj
  %i.ahk = zext i1 %i.ahi to i32
  %.08.i.i.i = shl nuw nsw i32 %i.ahg, %i.ahk
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.ahl, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i.i)
  %i.ahl = add nuw nsw i32 %.09.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.ahl, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_indent.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !26

emitter_indent.exit.i.i:                          ; preds = %.lr.ph.i.i.i, %bb.hj, %bb.hi
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %stats_arena_mutexes_print.exit

bb.hk:                                            ; preds = %emitter_json_object_end.exit29.i, %bb.hg
  %indvars.iv.i = phi i64 [ 0, %bb.hg ], [ %indvars.iv.next.i, %emitter_json_object_end.exit29.i ] ; 2 uses
  %i.ahm = getelementptr inbounds nuw [8 x i8], ptr @arena_mutex_names, i64 %indvars.iv.i
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !30 ; 3 uses
  call fastcc void @emitter_json_object_kv_begin(ptr noundef nonnull %0, ptr noundef %i.ahn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 7, ptr %i.a, align 8, !tbaa !12
  %i.aho = load i8, ptr %i.afs, align 8, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.aho, 0
  br i1 %.not.i.i.i, label %tsd_fetch_impl.exit.i.i, label %bb.hl, !prof !32

bb.hl:                                            ; preds = %bb.hk
  %i.ahp = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.afr, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit.i.i

tsd_fetch_impl.exit.i.i:                          ; preds = %bb.hl, %bb.hk
  %.0.i.i.i = phi ptr [ %i.ahp, %bb.hl ], [ %i.afr, %bb.hk ]
  %i.ahq = call i32 @je_ctl_mibnametomib(ptr noundef %.0.i.i.i, ptr noundef nonnull %i.p, i64 noundef 4, ptr noundef %i.ahn, ptr noundef nonnull %i.a) #14
  %.not.i18.i = icmp eq i32 %i.ahq, 0
  br i1 %.not.i18.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %tsd_fetch_impl.exit.i.i
  call void @je_malloc_write(ptr noundef nonnull @.str.227) #14
  call void @abort() #15
  unreachable

bb.hn:                                            ; preds = %tsd_fetch_impl.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  store ptr %i.ahn, ptr %i.aga, align 8, !tbaa !14
  store i32 5, ptr %i.agb, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 7, ptr %i.b, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i64 8, ptr %i.c, align 8, !tbaa !12
  %i.ahr = load i8, ptr %i.afs, align 8, !tbaa !14
  %.not.i77.i.i = icmp eq i8 %i.ahr, 0
  br i1 %.not.i77.i.i, label %tsd_fetch_impl.exit79.i.i, label %bb.ho, !prof !32

bb.ho:                                            ; preds = %bb.hn
  %i.ahs = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.afr, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit79.i.i

tsd_fetch_impl.exit79.i.i:                        ; preds = %bb.ho, %bb.hn
  %.0.i78.i.i = phi ptr [ %i.ahs, %bb.ho ], [ %i.afr, %bb.hn ]
  %i.aht = call i32 @je_ctl_bymibname(ptr noundef %.0.i78.i.i, ptr noundef nonnull %i.p, i64 noundef 5, ptr noundef nonnull @.str.305, ptr noundef nonnull %i.b, ptr noundef nonnull %i.agc, ptr noundef nonnull %i.c, ptr noundef null, i64 noundef 0) #14
  %.not70.i.i = icmp eq i32 %i.aht, 0
  br i1 %.not70.i.i, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %tsd_fetch_impl.exit79.i.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.hq:                                            ; preds = %tsd_fetch_impl.exit79.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  store i32 5, ptr %i.agd, align 16, !tbaa !43
  %i.ahu = load i64, ptr %i.agc, align 16, !tbaa !14 ; 3 uses
  %i.ahv = icmp eq i64 %i.ahu, 0
  %brmerge.i = or i1 %i.agf, %i.ahv
  %.mux.i = select i1 %i.age, i64 0, i64 %i.ahu
  br i1 %brmerge.i, label %rate_per_second.exit.i.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.ahw = udiv i64 %i.ahu, %i.agg
  br label %rate_per_second.exit.i.i

rate_per_second.exit.i.i:                         ; preds = %bb.hr, %bb.hq
  %.0.i98.i.i = phi i64 [ %i.ahw, %bb.hr ], [ %.mux.i, %bb.hq ]
  store i64 %.0.i98.i.i, ptr %i.agh, align 8, !tbaa !14
  store i32 5, ptr %i.agi, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i64 7, ptr %i.d, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store i64 8, ptr %i.e, align 8, !tbaa !12
  %i.ahx = load i8, ptr %i.afs, align 8, !tbaa !14
  %.not.i80.i.i = icmp eq i8 %i.ahx, 0
  br i1 %.not.i80.i.i, label %tsd_fetch_impl.exit82.i.i, label %bb.hs, !prof !32

bb.hs:                                            ; preds = %rate_per_second.exit.i.i
  %i.ahy = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.afr, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit82.i.i

tsd_fetch_impl.exit82.i.i:                        ; preds = %bb.hs, %rate_per_second.exit.i.i
  %.0.i81.i.i = phi ptr [ %i.ahy, %bb.hs ], [ %i.afr, %rate_per_second.exit.i.i ]
  %i.ahz = call i32 @je_ctl_bymibname(ptr noundef %.0.i81.i.i, ptr noundef nonnull %i.p, i64 noundef 5, ptr noundef nonnull @.str.306, ptr noundef nonnull %i.d, ptr noundef nonnull %i.agj, ptr noundef nonnull %i.e, ptr noundef null, i64 noundef 0) #14
  %.not71.i.i = icmp eq i32 %i.ahz, 0
  br i1 %.not71.i.i, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %tsd_fetch_impl.exit82.i.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.hu:                                            ; preds = %tsd_fetch_impl.exit82.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  store i32 5, ptr %i.agk, align 16, !tbaa !43
  %i.aia = load i64, ptr %i.agj, align 16, !tbaa !14 ; 3 uses
  %i.aib = icmp eq i64 %i.aia, 0
  %brmerge31.i = or i1 %i.agf, %i.aib
  %.mux32.i = select i1 %i.age, i64 0, i64 %i.aia
  br i1 %brmerge31.i, label %rate_per_second.exit101.i.i, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.aic = udiv i64 %i.aia, %i.agg
  br label %rate_per_second.exit101.i.i

rate_per_second.exit101.i.i:                      ; preds = %bb.hv, %bb.hu
  %.0.i100.i.i = phi i64 [ %i.aic, %bb.hv ], [ %.mux32.i, %bb.hu ]
  store i64 %.0.i100.i.i, ptr %i.agl, align 8, !tbaa !14
  store i32 5, ptr %i.agm, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i64 7, ptr %i.f, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store i64 8, ptr %i.g, align 8, !tbaa !12
  %i.aid = load i8, ptr %i.afs, align 8, !tbaa !14
  %.not.i83.i.i = icmp eq i8 %i.aid, 0
  br i1 %.not.i83.i.i, label %tsd_fetch_impl.exit85.i.i, label %bb.hw, !prof !32

bb.hw:                                            ; preds = %rate_per_second.exit101.i.i
  %i.aie = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.afr, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit85.i.i

tsd_fetch_impl.exit85.i.i:                        ; preds = %bb.hw, %rate_per_second.exit101.i.i
  %.0.i84.i.i = phi ptr [ %i.aie, %bb.hw ], [ %i.afr, %rate_per_second.exit101.i.i ]
  %i.aif = call i32 @je_ctl_bymibname(ptr noundef %.0.i84.i.i, ptr noundef nonnull %i.p, i64 noundef 5, ptr noundef nonnull @.str.307, ptr noundef nonnull %i.f, ptr noundef nonnull %i.agn, ptr noundef nonnull %i.g, ptr noundef null, i64 noundef 0) #14
  %.not72.i.i = icmp eq i32 %i.aif, 0
  br i1 %.not72.i.i, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %tsd_fetch_impl.exit85.i.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.hy:                                            ; preds = %tsd_fetch_impl.exit85.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  store i32 5, ptr %i.ago, align 16, !tbaa !43
  %i.aig = load i64, ptr %i.agn, align 16, !tbaa !14 ; 3 uses
  %i.aih = icmp eq i64 %i.aig, 0
  %brmerge33.i = or i1 %i.agf, %i.aih
  %.mux34.i = select i1 %i.age, i64 0, i64 %i.aig
  br i1 %brmerge33.i, label %rate_per_second.exit104.i.i, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.aii = udiv i64 %i.aig, %i.agg
  br label %rate_per_second.exit104.i.i

rate_per_second.exit104.i.i:                      ; preds = %bb.hz, %bb.hy
  %.0.i103.i.i = phi i64 [ %i.aii, %bb.hz ], [ %.mux34.i, %bb.hy ]
  store i64 %.0.i103.i.i, ptr %i.agp, align 8, !tbaa !14
  store i32 5, ptr %i.agq, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store i64 7, ptr %i.h, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store i64 8, ptr %i.i, align 8, !tbaa !12
  %i.aij = load i8, ptr %i.afs, align 8, !tbaa !14
  %.not.i86.i.i = icmp eq i8 %i.aij, 0
  br i1 %.not.i86.i.i, label %tsd_fetch_impl.exit88.i.i, label %bb.ia, !prof !32

bb.ia:                                            ; preds = %rate_per_second.exit104.i.i
  %i.aik = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.afr, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit88.i.i

tsd_fetch_impl.exit88.i.i:                        ; preds = %bb.ia, %rate_per_second.exit104.i.i
  %.0.i87.i.i = phi ptr [ %i.aik, %bb.ia ], [ %i.afr, %rate_per_second.exit104.i.i ]
  %i.ail = call i32 @je_ctl_bymibname(ptr noundef %.0.i87.i.i, ptr noundef nonnull %i.p, i64 noundef 5, ptr noundef nonnull @.str.308, ptr noundef nonnull %i.h, ptr noundef nonnull %i.agr, ptr noundef nonnull %i.i, ptr noundef null, i64 noundef 0) #14
  %.not73.i.i = icmp eq i32 %i.ail, 0
  br i1 %.not73.i.i, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %tsd_fetch_impl.exit88.i.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.ic:                                            ; preds = %tsd_fetch_impl.exit88.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  store i32 5, ptr %i.ags, align 16, !tbaa !43
  %i.aim = load i64, ptr %i.agr, align 16, !tbaa !14 ; 3 uses
  %i.ain = icmp eq i64 %i.aim, 0
  %brmerge35.i = or i1 %i.agf, %i.ain
  %.mux36.i = select i1 %i.age, i64 0, i64 %i.aim
  br i1 %brmerge35.i, label %rate_per_second.exit107.i.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.aio = udiv i64 %i.aim, %i.agg
  br label %rate_per_second.exit107.i.i

rate_per_second.exit107.i.i:                      ; preds = %bb.id, %bb.ic
  %.0.i106.i.i = phi i64 [ %i.aio, %bb.id ], [ %.mux36.i, %bb.ic ]
  store i64 %.0.i106.i.i, ptr %i.agt, align 8, !tbaa !14
  store i32 5, ptr %i.agu, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  store i64 7, ptr %i.j, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  store i64 8, ptr %i.k, align 8, !tbaa !12
  %i.aip = load i8, ptr %i.afs, align 8, !tbaa !14
  %.not.i89.i.i = icmp eq i8 %i.aip, 0
  br i1 %.not.i89.i.i, label %tsd_fetch_impl.exit91.i.i, label %bb.ie, !prof !32

bb.ie:                                            ; preds = %rate_per_second.exit107.i.i
  %i.aiq = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.afr, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit91.i.i

tsd_fetch_impl.exit91.i.i:                        ; preds = %bb.ie, %rate_per_second.exit107.i.i
  %.0.i90.i.i = phi ptr [ %i.aiq, %bb.ie ], [ %i.afr, %rate_per_second.exit107.i.i ]
  %i.air = call i32 @je_ctl_bymibname(ptr noundef %.0.i90.i.i, ptr noundef nonnull %i.p, i64 noundef 5, ptr noundef nonnull @.str.309, ptr noundef nonnull %i.j, ptr noundef nonnull %i.agv, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %.not74.i.i = icmp eq i32 %i.air, 0
  br i1 %.not74.i.i, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %tsd_fetch_impl.exit91.i.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.ig:                                            ; preds = %tsd_fetch_impl.exit91.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  store i32 5, ptr %i.agw, align 16, !tbaa !43
  %i.ais = load i64, ptr %i.agv, align 16, !tbaa !14 ; 3 uses
  %i.ait = icmp eq i64 %i.ais, 0
  %brmerge37.i = or i1 %i.agf, %i.ait
  %.mux38.i = select i1 %i.age, i64 0, i64 %i.ais
  br i1 %brmerge37.i, label %rate_per_second.exit110.i.i, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.aiu = udiv i64 %i.ais, %i.agg
  br label %rate_per_second.exit110.i.i

rate_per_second.exit110.i.i:                      ; preds = %bb.ih, %bb.ig
  %.0.i109.i.i = phi i64 [ %i.aiu, %bb.ih ], [ %.mux38.i, %bb.ig ]
  store i64 %.0.i109.i.i, ptr %i.agx, align 8, !tbaa !14
  store i32 5, ptr %i.agy, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  store i64 7, ptr %i.l, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  store i64 8, ptr %i.m, align 8, !tbaa !12
  %i.aiv = load i8, ptr %i.afs, align 8, !tbaa !14
  %.not.i92.i.i = icmp eq i8 %i.aiv, 0
  br i1 %.not.i92.i.i, label %tsd_fetch_impl.exit94.i.i, label %bb.ii, !prof !32

bb.ii:                                            ; preds = %rate_per_second.exit110.i.i
  %i.aiw = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.afr, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit94.i.i

tsd_fetch_impl.exit94.i.i:                        ; preds = %bb.ii, %rate_per_second.exit110.i.i
  %.0.i93.i.i = phi ptr [ %i.aiw, %bb.ii ], [ %i.afr, %rate_per_second.exit110.i.i ]
  %i.aix = call i32 @je_ctl_bymibname(ptr noundef %.0.i93.i.i, ptr noundef nonnull %i.p, i64 noundef 5, ptr noundef nonnull @.str.310, ptr noundef nonnull %i.l, ptr noundef nonnull %i.agz, ptr noundef nonnull %i.m, ptr noundef null, i64 noundef 0) #14
  %.not75.i.i = icmp eq i32 %i.aix, 0
  br i1 %.not75.i.i, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %tsd_fetch_impl.exit94.i.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.ik:                                            ; preds = %tsd_fetch_impl.exit94.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  store i32 4, ptr %i.aha, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  store i64 7, ptr %i.n, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  store i64 4, ptr %i.o, align 8, !tbaa !12
  %i.aiy = load i8, ptr %i.afs, align 8, !tbaa !14
  %.not.i95.i.i = icmp eq i8 %i.aiy, 0
  br i1 %.not.i95.i.i, label %tsd_fetch_impl.exit97.i.i, label %bb.il, !prof !32

bb.il:                                            ; preds = %bb.ik
  %i.aiz = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.afr, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit97.i.i

tsd_fetch_impl.exit97.i.i:                        ; preds = %bb.il, %bb.ik
  %.0.i96.i.i = phi ptr [ %i.aiz, %bb.il ], [ %i.afr, %bb.ik ]
  %i.aja = call i32 @je_ctl_bymibname(ptr noundef %.0.i96.i.i, ptr noundef nonnull %i.p, i64 noundef 5, ptr noundef nonnull @.str.311, ptr noundef nonnull %i.n, ptr noundef nonnull %i.ahb, ptr noundef nonnull %i.o, ptr noundef null, i64 noundef 0) #14
  %.not76.i.i = icmp eq i32 %i.aja, 0
  br i1 %.not76.i.i, label %mutex_stats_read_arena.exit.i, label %bb.im

bb.im:                                            ; preds = %tsd_fetch_impl.exit97.i.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

mutex_stats_read_arena.exit.i:                    ; preds = %tsd_fetch_impl.exit97.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call fastcc void @mutex_stats_emit(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef %9, ptr noundef %10)
  %.val.i19.i = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i20.i = icmp ult i32 %.val.i19.i, 2
  br i1 %spec.select.i.i20.i, label %bb.in, label %emitter_json_object_end.exit29.i

bb.in:                                            ; preds = %mutex_stats_read_arena.exit.i
  %i.ajb = load i32, ptr %i.ahc, align 8, !tbaa !25
  %i.ajc = add nsw i32 %i.ajb, -1
  store i32 %i.ajc, ptr %i.ahc, align 8, !tbaa !25
  store i8 1, ptr %i.ahd, align 4, !tbaa !23
  %.not.i21.i = icmp eq i32 %.val.i19.i, 1
  br i1 %.not.i21.i, label %emitter_indent.exit.i23.i, label %bb.io

bb.io:                                            ; preds = %bb.in
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.ajd = load i32, ptr %i.ahc, align 8, !tbaa !25 ; 2 uses
  %i.aje = load i32, ptr %0, align 8, !tbaa !17
  %i.ajf = icmp ne i32 %i.aje, 0                  ; 2 uses
  %.07.i.i22.i = select i1 %i.ajf, ptr @.str.10, ptr @.str.13
  %i.ajg = icmp sgt i32 %i.ajd, 0
  br i1 %i.ajg, label %.lr.ph.preheader.i.i24.i, label %emitter_indent.exit.i23.i

.lr.ph.preheader.i.i24.i:                         ; preds = %bb.io
  %i.ajh = zext i1 %i.ajf to i32
  %.08.i.i25.i = shl nuw nsw i32 %i.ajd, %i.ajh
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i, %.lr.ph.preheader.i.i24.i
  %.09.i.i27.i = phi i32 [ %i.aji, %.lr.ph.i.i26.i ], [ 0, %.lr.ph.preheader.i.i24.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i22.i)
  %i.aji = add nuw nsw i32 %.09.i.i27.i, 1        ; 2 uses
  %exitcond.not.i.i28.i = icmp eq i32 %i.aji, %.08.i.i25.i
  br i1 %exitcond.not.i.i28.i, label %emitter_indent.exit.i23.i, label %.lr.ph.i.i26.i, !llvm.loop !26

emitter_indent.exit.i23.i:                        ; preds = %.lr.ph.i.i26.i, %bb.io, %bb.in
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit29.i

emitter_json_object_end.exit29.i:                 ; preds = %emitter_indent.exit.i23.i, %mutex_stats_read_arena.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 12
  br i1 %exitcond.not.i, label %bb.hh, label %bb.hk, !llvm.loop !55

stats_arena_mutexes_print.exit:                   ; preds = %bb.hh, %emitter_indent.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.ip

bb.ip:                                            ; preds = %stats_arena_mutexes_print.exit, %emitter_table_row.exit471
  br i1 %2, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.ajj = load i64, ptr %i.bg, align 8, !tbaa !12
  call fastcc void @stats_arena_bins_print(ptr noundef %0, i1 noundef zeroext %4, i32 noundef %1, i64 noundef %i.ajj) #16
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  br i1 %3, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  %i.ajk = load i64, ptr %i.bg, align 8, !tbaa !12
  call fastcc void @stats_arena_lextents_print(ptr noundef %0, i32 noundef %1, i64 noundef %i.ajk) #16
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir
  br i1 %5, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  call fastcc void @stats_arena_extents_print(ptr noundef %0, i32 noundef %1) #16
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.it
  br i1 %6, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.ajl = load i64, ptr %i.bg, align 8, !tbaa !12
  call fastcc void @stats_arena_hpa_shard_print(ptr noundef %0, i32 noundef %1, i64 noundef %i.ajl)
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #9

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @stats_arena_bins_print(ptr nofree noundef nonnull captures(none) %0, i1 noundef zeroext %1, i32 noundef %2, i64 noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %i.o = alloca i64, align 8                      ; 4 uses
  %i.p = alloca i64, align 8                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %i.r = alloca i64, align 8                      ; 4 uses
  %i.s = alloca i64, align 8                      ; 4 uses
  %4 = alloca %struct.emitter_row_s, align 8      ; 23 uses
  %5 = alloca %struct.emitter_row_s, align 8      ; 23 uses
  %6 = alloca %struct.emitter_col_s, align 8      ; 11 uses
  %7 = alloca %struct.emitter_col_s, align 8      ; 12 uses
  %8 = alloca %struct.emitter_col_s, align 8      ; 9 uses
  %9 = alloca %struct.emitter_col_s, align 8      ; 9 uses
  %10 = alloca %struct.emitter_col_s, align 8     ; 9 uses
  %11 = alloca %struct.emitter_col_s, align 8     ; 9 uses
  %12 = alloca %struct.emitter_col_s, align 8     ; 9 uses
  %13 = alloca %struct.emitter_col_s, align 8     ; 9 uses
  %14 = alloca %struct.emitter_col_s, align 8     ; 9 uses
  %15 = alloca %struct.emitter_col_s, align 8     ; 9 uses
  %16 = alloca %struct.emitter_col_s, align 8     ; 11 uses
  %17 = alloca %struct.emitter_col_s, align 8     ; 11 uses
  %18 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %19 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %20 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %21 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %22 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %23 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %24 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %25 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %26 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %27 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %28 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %29 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %30 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %31 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %32 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %33 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %34 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %35 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %36 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %37 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %38 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %39 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %40 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %41 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %42 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %43 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %44 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %45 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %46 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %47 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %48 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %49 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %50 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %51 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %52 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %53 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %54 = alloca [11 x %struct.emitter_col_s], align 16 ; 26 uses
  %55 = alloca [1 x %struct.emitter_col_s], align 16 ; 6 uses
  %56 = alloca [11 x %struct.emitter_col_s], align 16 ; 3 uses
  %57 = alloca [1 x %struct.emitter_col_s], align 16 ; 3 uses
  %i.t = alloca [7 x i64], align 16               ; 24 uses
  %i.u = alloca i64, align 8                      ; 4 uses
  %i.v = alloca i64, align 8                      ; 4 uses
  %i.w = alloca [7 x i64], align 16               ; 8 uses
  %i.x = alloca i64, align 8                      ; 4 uses
  %i.y = alloca i64, align 8                      ; 5 uses
end_hunk_3
begin_hunk_4_@stats_arena_bins_print:bb.a
  %.not69.i = icmp eq i32 %i.abv, 0
  br i1 %.not69.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %tsd_fetch_impl.exit82.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.di:                                            ; preds = %tsd_fetch_impl.exit82.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  store i32 5, ptr %i.yb, align 16, !tbaa !43
  %i.abw = load i64, ptr %i.ya, align 16, !tbaa !14 ; 3 uses
  %i.abx = icmp eq i64 %i.abw, 0
  %brmerge314 = or i1 %i.xs, %i.abx
  %.mux315 = select i1 %i.xr, i64 0, i64 %i.abw
  br i1 %brmerge314, label %rate_per_second.exit101.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aby = udiv i64 %i.abw, %i.xt
  br label %rate_per_second.exit101.i

rate_per_second.exit101.i:                        ; preds = %bb.di, %bb.dj
  %.0.i100.i = phi i64 [ %i.aby, %bb.dj ], [ %.mux315, %bb.di ]
  store i64 %.0.i100.i, ptr %i.yc, align 8, !tbaa !14
  store i32 5, ptr %i.yd, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store i64 7, ptr %i.h, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store i64 8, ptr %i.i, align 8, !tbaa !12
  %i.abz = load i8, ptr %i.ww, align 8, !tbaa !14
  %.not.i83.i = icmp eq i8 %i.abz, 0
  br i1 %.not.i83.i, label %tsd_fetch_impl.exit85.i, label %bb.dk, !prof !32

bb.dk:                                            ; preds = %rate_per_second.exit101.i
  %i.aca = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.wv, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit85.i

tsd_fetch_impl.exit85.i:                          ; preds = %bb.dk, %rate_per_second.exit101.i
  %.0.i84.i = phi ptr [ %i.aca, %bb.dk ], [ %i.wv, %rate_per_second.exit101.i ]
  %i.acb = call i32 @je_ctl_bymibname(ptr noundef %.0.i84.i, ptr noundef nonnull %i.t, i64 noundef 6, ptr noundef nonnull @.str.308, ptr noundef nonnull %i.h, ptr noundef nonnull %i.ye, ptr noundef nonnull %i.i, ptr noundef null, i64 noundef 0) #14
  %.not70.i = icmp eq i32 %i.acb, 0
  br i1 %.not70.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %tsd_fetch_impl.exit85.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.dm:                                            ; preds = %tsd_fetch_impl.exit85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  store i32 5, ptr %i.yf, align 16, !tbaa !43
  %i.acc = load i64, ptr %i.ye, align 16, !tbaa !14 ; 3 uses
  %i.acd = icmp eq i64 %i.acc, 0
  %brmerge316 = or i1 %i.xs, %i.acd
  %.mux317 = select i1 %i.xr, i64 0, i64 %i.acc
  br i1 %brmerge316, label %rate_per_second.exit104.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ace = udiv i64 %i.acc, %i.xt
  br label %rate_per_second.exit104.i

rate_per_second.exit104.i:                        ; preds = %bb.dm, %bb.dn
  %.0.i103.i = phi i64 [ %i.ace, %bb.dn ], [ %.mux317, %bb.dm ]
  store i64 %.0.i103.i, ptr %i.yg, align 8, !tbaa !14
  store i32 5, ptr %i.yh, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  store i64 7, ptr %i.j, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  store i64 8, ptr %i.k, align 8, !tbaa !12
  %i.acf = load i8, ptr %i.ww, align 8, !tbaa !14
  %.not.i86.i = icmp eq i8 %i.acf, 0
  br i1 %.not.i86.i, label %tsd_fetch_impl.exit88.i, label %bb.do, !prof !32

bb.do:                                            ; preds = %rate_per_second.exit104.i
  %i.acg = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.wv, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit88.i

tsd_fetch_impl.exit88.i:                          ; preds = %bb.do, %rate_per_second.exit104.i
  %.0.i87.i = phi ptr [ %i.acg, %bb.do ], [ %i.wv, %rate_per_second.exit104.i ]
  %i.ach = call i32 @je_ctl_bymibname(ptr noundef %.0.i87.i, ptr noundef nonnull %i.t, i64 noundef 6, ptr noundef nonnull @.str.309, ptr noundef nonnull %i.j, ptr noundef nonnull %i.yi, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %.not71.i = icmp eq i32 %i.ach, 0
  br i1 %.not71.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %tsd_fetch_impl.exit88.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.dq:                                            ; preds = %tsd_fetch_impl.exit88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  store i32 5, ptr %i.yj, align 16, !tbaa !43
  %i.aci = load i64, ptr %i.yi, align 16, !tbaa !14 ; 3 uses
  %i.acj = icmp eq i64 %i.aci, 0
  %brmerge318 = or i1 %i.xs, %i.acj
  %.mux319 = select i1 %i.xr, i64 0, i64 %i.aci
  br i1 %brmerge318, label %rate_per_second.exit107.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ack = udiv i64 %i.aci, %i.xt
  br label %rate_per_second.exit107.i

rate_per_second.exit107.i:                        ; preds = %bb.dq, %bb.dr
  %.0.i106.i = phi i64 [ %i.ack, %bb.dr ], [ %.mux319, %bb.dq ]
  store i64 %.0.i106.i, ptr %i.yk, align 8, !tbaa !14
  store i32 5, ptr %i.yl, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  store i64 7, ptr %i.l, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  store i64 8, ptr %i.m, align 8, !tbaa !12
  %i.acl = load i8, ptr %i.ww, align 8, !tbaa !14
  %.not.i89.i = icmp eq i8 %i.acl, 0
  br i1 %.not.i89.i, label %tsd_fetch_impl.exit91.i, label %bb.ds, !prof !32

bb.ds:                                            ; preds = %rate_per_second.exit107.i
  %i.acm = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.wv, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit91.i

tsd_fetch_impl.exit91.i:                          ; preds = %bb.ds, %rate_per_second.exit107.i
  %.0.i90.i = phi ptr [ %i.acm, %bb.ds ], [ %i.wv, %rate_per_second.exit107.i ]
  %i.acn = call i32 @je_ctl_bymibname(ptr noundef %.0.i90.i, ptr noundef nonnull %i.t, i64 noundef 6, ptr noundef nonnull @.str.310, ptr noundef nonnull %i.l, ptr noundef nonnull %i.ym, ptr noundef nonnull %i.m, ptr noundef null, i64 noundef 0) #14
  %.not72.i = icmp eq i32 %i.acn, 0
  br i1 %.not72.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %tsd_fetch_impl.exit91.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.du:                                            ; preds = %tsd_fetch_impl.exit91.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  store i32 4, ptr %i.yn, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  store i64 7, ptr %i.n, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  store i64 4, ptr %i.o, align 8, !tbaa !12
  %i.aco = load i8, ptr %i.ww, align 8, !tbaa !14
  %.not.i92.i = icmp eq i8 %i.aco, 0
  br i1 %.not.i92.i, label %tsd_fetch_impl.exit94.i, label %bb.dv, !prof !32

bb.dv:                                            ; preds = %bb.du
  %i.acp = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.wv, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit94.i

tsd_fetch_impl.exit94.i:                          ; preds = %bb.dv, %bb.du
  %.0.i93.i = phi ptr [ %i.acp, %bb.dv ], [ %i.wv, %bb.du ]
  %i.acq = call i32 @je_ctl_bymibname(ptr noundef %.0.i93.i, ptr noundef nonnull %i.t, i64 noundef 6, ptr noundef nonnull @.str.311, ptr noundef nonnull %i.n, ptr noundef nonnull %i.yo, ptr noundef nonnull %i.o, ptr noundef null, i64 noundef 0) #14
  %.not73.i = icmp eq i32 %i.acq, 0
  br i1 %.not73.i, label %mutex_stats_read_arena_bin.exit, label %bb.dw

bb.dw:                                            ; preds = %tsd_fetch_impl.exit94.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

mutex_stats_read_arena_bin.exit:                  ; preds = %tsd_fetch_impl.exit94.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  %.val.i = load i32, ptr %0, align 8, !tbaa !17  ; 2 uses
  %spec.select.i.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i.i, label %bb.dx, label %emitter_json_object_begin.exit

bb.dx:                                            ; preds = %mutex_stats_read_arena_bin.exit
  %i.acr = load i8, ptr %i.xl, align 1, !tbaa !24, !range !27, !noundef !28
  %i.acs = trunc nuw i8 %i.acr to i1
  br i1 %i.acs, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  store i8 0, ptr %i.xl, align 1, !tbaa !24
  br label %emitter_json_key_prefix.exit.i

bb.dz:                                            ; preds = %bb.dx
  %i.act = load i8, ptr %i.xm, align 4, !tbaa !23, !range !27, !noundef !28
  %i.acu = trunc nuw i8 %i.act to i1
  br i1 %i.acu, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11)
  %.pre.i223 = load i32, ptr %0, align 8, !tbaa !17
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.acv = phi i32 [ %.pre.i223, %bb.ea ], [ %.val.i, %bb.dz ]
  %.not.i.i222 = icmp eq i32 %i.acv, 1
  br i1 %.not.i.i222, label %emitter_json_key_prefix.exit.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.acw = load i32, ptr %i.xn, align 8, !tbaa !25 ; 2 uses
  %i.acx = load i32, ptr %0, align 8, !tbaa !17
  %i.acy = icmp ne i32 %i.acx, 0                  ; 2 uses
  %.07.i.i.i = select i1 %i.acy, ptr @.str.10, ptr @.str.13
  %i.acz = icmp sgt i32 %i.acw, 0
  br i1 %i.acz, label %.lr.ph.preheader.i.i.i, label %emitter_json_key_prefix.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ec
  %i.ada = zext i1 %i.acy to i32
  %.08.i.i.i = shl nuw nsw i32 %i.acw, %i.ada
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.adb, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i.i)
  %i.adb = add nuw nsw i32 %.09.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.adb, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_json_key_prefix.exit.i, label %.lr.ph.i.i.i, !llvm.loop !26

emitter_json_key_prefix.exit.i:                   ; preds = %.lr.ph.i.i.i, %bb.ec, %bb.eb, %bb.dy
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6)
  %i.adc = load i32, ptr %i.xn, align 8, !tbaa !25
  %i.add = add nsw i32 %i.adc, 1
  store i32 %i.add, ptr %i.xn, align 8, !tbaa !25
  store i8 0, ptr %i.xm, align 4, !tbaa !23
  br label %emitter_json_object_begin.exit

emitter_json_object_begin.exit:                   ; preds = %mutex_stats_read_arena_bin.exit, %emitter_json_key_prefix.exit.i
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.357, i32 noundef 5, ptr noundef %i.ag)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.358, i32 noundef 5, ptr noundef %i.ah)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.429, i32 noundef 6, ptr noundef %i.ab)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.359, i32 noundef 5, ptr noundef %i.ai)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.369, i32 noundef 5, ptr noundef %i.aj)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.371, i32 noundef 5, ptr noundef %i.ak)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.439, i32 noundef 5, ptr noundef %i.al)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.430, i32 noundef 6, ptr noundef %i.ac)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.431, i32 noundef 6, ptr noundef %i.ad)
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.447)
  call fastcc void @mutex_stats_emit(ptr noundef %0, ptr noundef null, ptr noundef %54, ptr noundef %55)
  %.val.i224 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i225 = icmp ult i32 %.val.i224, 2
  br i1 %spec.select.i.i225, label %bb.ed, label %emitter_json_object_end.exit249

bb.ed:                                            ; preds = %emitter_json_object_begin.exit
  %i.ade = load i32, ptr %i.xn, align 8, !tbaa !25
  %i.adf = add nsw i32 %i.ade, -1
  store i32 %i.adf, ptr %i.xn, align 8, !tbaa !25
  store i8 1, ptr %i.xm, align 4, !tbaa !23
  %.not.i226 = icmp eq i32 %.val.i224, 1
  br i1 %.not.i226, label %emitter_indent.exit.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.adg = load i32, ptr %i.xn, align 8, !tbaa !25 ; 2 uses
  %i.adh = load i32, ptr %0, align 8, !tbaa !17
  %i.adi = icmp ne i32 %i.adh, 0                  ; 2 uses
  %.07.i.i = select i1 %i.adi, ptr @.str.10, ptr @.str.13
  %i.adj = icmp sgt i32 %i.adg, 0
  br i1 %i.adj, label %.lr.ph.preheader.i.i, label %emitter_indent.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ee
  %i.adk = zext i1 %i.adi to i32
  %.08.i.i = shl nuw nsw i32 %i.adg, %i.adk
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi i32 [ %i.adl, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i)
  %i.adl = add nuw nsw i32 %.09.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.adl, %.08.i.i
  br i1 %exitcond.not.i.i, label %emitter_indent.exit.i, label %.lr.ph.i.i, !llvm.loop !26

emitter_indent.exit.i:                            ; preds = %.lr.ph.i.i, %bb.ee, %bb.ed
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit

.critedge:                                        ; preds = %bb.ct
  %.val.i227 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i228 = icmp ult i32 %.val.i227, 2
  br i1 %spec.select.i.i228, label %bb.ef, label %emitter_json_object_begin.exit238

bb.ef:                                            ; preds = %.critedge
  %i.adm = load i8, ptr %i.xl, align 1, !tbaa !24, !range !27, !noundef !28
  %i.adn = trunc nuw i8 %i.adm to i1
  br i1 %i.adn, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store i8 0, ptr %i.xl, align 1, !tbaa !24
  br label %emitter_json_key_prefix.exit.i231

bb.eh:                                            ; preds = %bb.ef
  %i.ado = load i8, ptr %i.xm, align 4, !tbaa !23, !range !27, !noundef !28
  %i.adp = trunc nuw i8 %i.ado to i1
  br i1 %i.adp, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11)
  %.pre.i237 = load i32, ptr %0, align 8, !tbaa !17
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.adq = phi i32 [ %.pre.i237, %bb.ei ], [ %.val.i227, %bb.eh ]
  %.not.i.i229 = icmp eq i32 %i.adq, 1
  br i1 %.not.i.i229, label %emitter_json_key_prefix.exit.i231, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.adr = load i32, ptr %i.xn, align 8, !tbaa !25 ; 2 uses
  %i.ads = load i32, ptr %0, align 8, !tbaa !17
  %i.adt = icmp ne i32 %i.ads, 0                  ; 2 uses
  %.07.i.i.i230 = select i1 %i.adt, ptr @.str.10, ptr @.str.13
  %i.adu = icmp sgt i32 %i.adr, 0
  br i1 %i.adu, label %.lr.ph.preheader.i.i.i232, label %emitter_json_key_prefix.exit.i231

.lr.ph.preheader.i.i.i232:                        ; preds = %bb.ek
  %i.adv = zext i1 %i.adt to i32
  %.08.i.i.i233 = shl nuw nsw i32 %i.adr, %i.adv
  br label %.lr.ph.i.i.i234

.lr.ph.i.i.i234:                                  ; preds = %.lr.ph.i.i.i234, %.lr.ph.preheader.i.i.i232
  %.09.i.i.i235 = phi i32 [ %i.adw, %.lr.ph.i.i.i234 ], [ 0, %.lr.ph.preheader.i.i.i232 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i.i230)
  %i.adw = add nuw nsw i32 %.09.i.i.i235, 1       ; 2 uses
  %exitcond.not.i.i.i236 = icmp eq i32 %i.adw, %.08.i.i.i233
  br i1 %exitcond.not.i.i.i236, label %emitter_json_key_prefix.exit.i231, label %.lr.ph.i.i.i234, !llvm.loop !26

emitter_json_key_prefix.exit.i231:                ; preds = %.lr.ph.i.i.i234, %bb.ek, %bb.ej, %bb.eg
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6)
  %i.adx = load i32, ptr %i.xn, align 8, !tbaa !25
  %i.ady = add nsw i32 %i.adx, 1
  store i32 %i.ady, ptr %i.xn, align 8, !tbaa !25
  store i8 0, ptr %i.xm, align 4, !tbaa !23
  br label %emitter_json_object_begin.exit238

emitter_json_object_begin.exit238:                ; preds = %.critedge, %emitter_json_key_prefix.exit.i231
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.357, i32 noundef 5, ptr noundef %i.ag)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.358, i32 noundef 5, ptr noundef %i.ah)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.429, i32 noundef 6, ptr noundef %i.ab)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.359, i32 noundef 5, ptr noundef %i.ai)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.369, i32 noundef 5, ptr noundef %i.aj)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.371, i32 noundef 5, ptr noundef %i.ak)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.439, i32 noundef 5, ptr noundef %i.al)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.430, i32 noundef 6, ptr noundef %i.ac)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.431, i32 noundef 6, ptr noundef %i.ad)
  br label %emitter_json_object_end.exit

emitter_json_object_end.exit:                     ; preds = %emitter_indent.exit.i, %emitter_json_object_begin.exit238
  %.val.i239.pr = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i240 = icmp ult i32 %.val.i239.pr, 2
  br i1 %spec.select.i.i240, label %bb.el, label %emitter_json_object_end.exit249

bb.el:                                            ; preds = %emitter_json_object_end.exit
  %i.adz = load i32, ptr %i.xn, align 8, !tbaa !25
  %i.aea = add nsw i32 %i.adz, -1
  store i32 %i.aea, ptr %i.xn, align 8, !tbaa !25
  store i8 1, ptr %i.xm, align 4, !tbaa !23
  %.not.i241 = icmp eq i32 %.val.i239.pr, 1
  br i1 %.not.i241, label %emitter_indent.exit.i243, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.aeb = load i32, ptr %i.xn, align 8, !tbaa !25 ; 2 uses
  %i.aec = load i32, ptr %0, align 8, !tbaa !17
  %i.aed = icmp ne i32 %i.aec, 0                  ; 2 uses
  %.07.i.i242 = select i1 %i.aed, ptr @.str.10, ptr @.str.13
  %i.aee = icmp sgt i32 %i.aeb, 0
  br i1 %i.aee, label %.lr.ph.preheader.i.i244, label %emitter_indent.exit.i243

.lr.ph.preheader.i.i244:                          ; preds = %bb.em
  %i.aef = zext i1 %i.aed to i32
  %.08.i.i245 = shl nuw nsw i32 %i.aeb, %i.aef
  br label %.lr.ph.i.i246

.lr.ph.i.i246:                                    ; preds = %.lr.ph.i.i246, %.lr.ph.preheader.i.i244
  %.09.i.i247 = phi i32 [ %i.aeg, %.lr.ph.i.i246 ], [ 0, %.lr.ph.preheader.i.i244 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i242)
  %i.aeg = add nuw nsw i32 %.09.i.i247, 1         ; 2 uses
  %exitcond.not.i.i248 = icmp eq i32 %i.aeg, %.08.i.i245
  br i1 %exitcond.not.i.i248, label %emitter_indent.exit.i243, label %.lr.ph.i.i246, !llvm.loop !26

emitter_indent.exit.i243:                         ; preds = %.lr.ph.i.i246, %bb.em, %bb.el
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit249

emitter_json_object_end.exit249:                  ; preds = %emitter_json_object_begin.exit, %emitter_json_object_end.exit, %emitter_indent.exit.i243
  %i.aeh = load i32, ptr %i.ae, align 4, !tbaa !29
  %i.aei = zext i32 %i.aeh to i64
  %i.aej = load i64, ptr %i.ac, align 8, !tbaa !12
  %i.aek = mul i64 %i.aej, %i.aei                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo) #14
  %i.ael = load i64, ptr %i.ab, align 8, !tbaa !12 ; 2 uses
  %i.aem = icmp eq i64 %i.aek, 0                  ; 2 uses
  %i.aen = icmp ugt i64 %i.ael, %i.aek            ; 2 uses
  %or.cond.i = or i1 %i.aem, %i.aen
  br i1 %or.cond.i, label %get_rate_str.exit, label %bb.en

bb.en:                                            ; preds = %emitter_json_object_end.exit249
  %i.aeo = mul i64 %i.ael, 1000
  %i.aep = udiv i64 %i.aeo, %i.aek
  %i.aeq = trunc i64 %i.aep to i32                ; 6 uses
  %i.aer = icmp ult i32 %i.aeq, 10
  br i1 %i.aer, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.aes = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.bo, i64 noundef 6, ptr noundef nonnull @.str.450, i32 noundef %i.aeq) #14 ; 0 uses
  br label %get_rate_str.exit.thread

bb.ep:                                            ; preds = %bb.en
  %i.aet = icmp ult i32 %i.aeq, 100
  br i1 %i.aet, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.aeu = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.bo, i64 noundef 6, ptr noundef nonnull @.str.451, i32 noundef %i.aeq) #14 ; 0 uses
  br label %get_rate_str.exit.thread

bb.er:                                            ; preds = %bb.ep
  %i.aev = icmp ult i32 %i.aeq, 1000
  br i1 %i.aev, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.aew = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.bo, i64 noundef 6, ptr noundef nonnull @.str.452, i32 noundef %i.aeq) #14 ; 0 uses
  br label %get_rate_str.exit.thread

bb.et:                                            ; preds = %bb.er
  %i.aex = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.bo, i64 noundef 6, ptr noundef nonnull @.str.448) #14 ; 0 uses
  br label %get_rate_str.exit.thread

get_rate_str.exit:                                ; preds = %emitter_json_object_end.exit249
  br i1 %i.aem, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %get_rate_str.exit
  %i.aey = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.bo, i64 noundef 6, ptr noundef nonnull @.str.448) #14 ; 0 uses
  br label %get_rate_str.exit.thread

bb.ev:                                            ; preds = %get_rate_str.exit
  call void @llvm.assume(i1 %i.aen)
  %i.aez = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.bo, i64 noundef 6, ptr noundef nonnull @.str.449) #14 ; 0 uses
  br label %get_rate_str.exit.thread

get_rate_str.exit.thread:                         ; preds = %bb.et, %bb.es, %bb.eq, %bb.eo, %bb.eu, %bb.ev
  %i.afa = load i64, ptr %i.z, align 8, !tbaa !12 ; 2 uses
  store i64 %i.afa, ptr %i.yp, align 8, !tbaa !14
  %i.afb = trunc nuw i64 %indvars.iv to i32
  store i32 %i.afb, ptr %i.yq, align 8, !tbaa !14
  %i.afc = load i64, ptr %i.ab, align 8, !tbaa !12 ; 2 uses
  %i.afd = mul i64 %i.afc, %i.afa
  store i64 %i.afd, ptr %i.yr, align 8, !tbaa !14
  %i.afe = load i64, ptr %i.ag, align 8, !tbaa !12 ; 4 uses
  store i64 %i.afe, ptr %i.ys, align 8, !tbaa !14
  %i.aff = icmp eq i64 %i.afe, 0
  %brmerge320 = or i1 %i.xs, %i.aff
  %.mux321 = select i1 %i.xr, i64 0, i64 %i.afe
  br i1 %brmerge320, label %rate_per_second.exit, label %bb.ew

bb.ew:                                            ; preds = %get_rate_str.exit.thread
  %i.afg = udiv i64 %i.afe, %i.xt
  br label %rate_per_second.exit

rate_per_second.exit:                             ; preds = %get_rate_str.exit.thread, %bb.ew
  %.0.i251 = phi i64 [ %i.afg, %bb.ew ], [ %.mux321, %get_rate_str.exit.thread ]
  store i64 %.0.i251, ptr %i.yt, align 8, !tbaa !14
  %i.afh = load i64, ptr %i.ah, align 8, !tbaa !12 ; 4 uses
  store i64 %i.afh, ptr %i.yu, align 8, !tbaa !14
  %i.afi = icmp eq i64 %i.afh, 0
  %brmerge322 = or i1 %i.xs, %i.afi
  %.mux323 = select i1 %i.xr, i64 0, i64 %i.afh
  br i1 %brmerge322, label %rate_per_second.exit254, label %bb.ex

bb.ex:                                            ; preds = %rate_per_second.exit
  %i.afj = udiv i64 %i.afh, %i.xt
  br label %rate_per_second.exit254

rate_per_second.exit254:                          ; preds = %rate_per_second.exit, %bb.ex
  %.0.i253 = phi i64 [ %i.afj, %bb.ex ], [ %.mux323, %rate_per_second.exit ]
  store i64 %.0.i253, ptr %i.yv, align 8, !tbaa !14
  %i.afk = load i64, ptr %i.ai, align 8, !tbaa !12 ; 4 uses
  store i64 %i.afk, ptr %i.yw, align 8, !tbaa !14
  %i.afl = icmp eq i64 %i.afk, 0
  %brmerge324 = or i1 %i.xs, %i.afl
  %.mux325 = select i1 %i.xr, i64 0, i64 %i.afk
  br i1 %brmerge324, label %rate_per_second.exit257, label %bb.ey

bb.ey:                                            ; preds = %rate_per_second.exit254
  %i.afm = udiv i64 %i.afk, %i.xt
  br label %rate_per_second.exit257

rate_per_second.exit257:                          ; preds = %rate_per_second.exit254, %bb.ey
  %.0.i256 = phi i64 [ %i.afm, %bb.ey ], [ %.mux325, %rate_per_second.exit254 ]
  store i64 %.0.i256, ptr %i.yx, align 8, !tbaa !14
  %i.afn = load i32, ptr %i.af, align 4, !tbaa !29
  store i32 %i.afn, ptr %i.yy, align 8, !tbaa !14
  store i64 %i.afc, ptr %i.yz, align 8, !tbaa !14
  %i.afo = load i64, ptr %i.ac, align 8, !tbaa !12
  store i64 %i.afo, ptr %i.za, align 8, !tbaa !14
  %i.afp = load i64, ptr %i.ad, align 8, !tbaa !12
  store i64 %i.afp, ptr %i.zb, align 8, !tbaa !14
  %i.afq = load i32, ptr %i.ae, align 4, !tbaa !29
  store i32 %i.afq, ptr %i.zc, align 8, !tbaa !14
  %i.afr = load i64, ptr %i.aa, align 8, !tbaa !12
  %i.afs = load i64, ptr %i.p, align 8, !tbaa !12
  %i.aft = udiv i64 %i.afr, %i.afs
  store i64 %i.aft, ptr %i.zd, align 8, !tbaa !14
  store ptr %i.bo, ptr %i.ze, align 8, !tbaa !14
  %i.afu = load i64, ptr %i.aj, align 8, !tbaa !12 ; 4 uses
  store i64 %i.afu, ptr %i.zf, align 8, !tbaa !14
  %i.afv = icmp eq i64 %i.afu, 0
  %brmerge326 = or i1 %i.xs, %i.afv
  %.mux327 = select i1 %i.xr, i64 0, i64 %i.afu
  br i1 %brmerge326, label %rate_per_second.exit260, label %bb.ez

bb.ez:                                            ; preds = %rate_per_second.exit257
  %i.afw = udiv i64 %i.afu, %i.xt
  br label %rate_per_second.exit260

rate_per_second.exit260:                          ; preds = %rate_per_second.exit257, %bb.ez
  %.0.i259 = phi i64 [ %i.afw, %bb.ez ], [ %.mux327, %rate_per_second.exit257 ]
  store i64 %.0.i259, ptr %i.zg, align 8, !tbaa !14
  %i.afx = load i64, ptr %i.ak, align 8, !tbaa !12 ; 4 uses
  store i64 %i.afx, ptr %i.zh, align 8, !tbaa !14
  %i.afy = icmp eq i64 %i.afx, 0
  %brmerge328 = or i1 %i.xs, %i.afy
  %.mux329 = select i1 %i.xr, i64 0, i64 %i.afx
  br i1 %brmerge328, label %rate_per_second.exit263, label %bb.fa

bb.fa:                                            ; preds = %rate_per_second.exit260
  %i.afz = udiv i64 %i.afx, %i.xt
  br label %rate_per_second.exit263

rate_per_second.exit263:                          ; preds = %rate_per_second.exit260, %bb.fa
  %.0.i262 = phi i64 [ %i.afz, %bb.fa ], [ %.mux329, %rate_per_second.exit260 ]
  store i64 %.0.i262, ptr %i.zi, align 8, !tbaa !14
  %i.aga = load i64, ptr %i.y, align 8, !tbaa !12
  store i64 %i.aga, ptr %i.zj, align 8, !tbaa !14
  %i.agb = load i64, ptr %i.al, align 8, !tbaa !12 ; 4 uses
  store i64 %i.agb, ptr %i.zk, align 8, !tbaa !14
  %i.agc = icmp eq i64 %i.agb, 0
  %brmerge330 = or i1 %i.xs, %i.agc
  %.mux331 = select i1 %i.xr, i64 0, i64 %i.agb
  br i1 %brmerge330, label %rate_per_second.exit266, label %bb.fb

bb.fb:                                            ; preds = %rate_per_second.exit263
  %i.agd = udiv i64 %i.agb, %i.xt
  br label %rate_per_second.exit266

rate_per_second.exit266:                          ; preds = %rate_per_second.exit263, %bb.fb
  %.0.i265 = phi i64 [ %i.agd, %bb.fb ], [ %.mux331, %rate_per_second.exit263 ]
  store i64 %.0.i265, ptr %i.zl, align 8, !tbaa !14
  %i.age = load i32, ptr %0, align 8, !tbaa !17
  %.not.i267 = icmp eq i32 %i.age, 2
  br i1 %.not.i267, label %bb.fc, label %emitter_table_row.exit275

bb.fc:                                            ; preds = %rate_per_second.exit266
  %i.agf = load ptr, ptr %5, align 8, !tbaa !35   ; 3 uses
  %.not1315.i268 = icmp eq ptr %i.agf, null
  br i1 %.not1315.i268, label %select.unfold._crit_edge.i274, label %select.unfold.i269

select.unfold.i269:                               ; preds = %bb.fc, %select.unfold.i269
  %.016.i270 = phi ptr [ %i.agn, %select.unfold.i269 ], [ %i.agf, %bb.fc ] ; 5 uses
  %i.agg = load i32, ptr %.016.i270, align 8, !tbaa !39
  %i.agh = getelementptr inbounds nuw i8, ptr %.016.i270, i64 4
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !42
  %i.agj = getelementptr inbounds nuw i8, ptr %.016.i270, i64 8
  %i.agk = load i32, ptr %i.agj, align 8, !tbaa !43
  %i.agl = getelementptr inbounds nuw i8, ptr %.016.i270, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.agg, i32 noundef %i.agi, i32 noundef %i.agk, ptr noundef nonnull %i.agl)
  %i.agm = getelementptr inbounds nuw i8, ptr %.016.i270, i64 24
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !44 ; 3 uses
  %.not14.i271 = icmp eq ptr %i.agn, %i.agf
  %.not1317.i272 = icmp eq ptr %i.agn, null
  %.not13.i273 = or i1 %.not14.i271, %.not1317.i272
  br i1 %.not13.i273, label %select.unfold._crit_edge.i274, label %select.unfold.i269

select.unfold._crit_edge.i274:                    ; preds = %select.unfold.i269, %bb.fc
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.12)
  br label %emitter_table_row.exit275

emitter_table_row.exit275:                        ; preds = %rate_per_second.exit266, %select.unfold._crit_edge.i274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo) #14
  br label %bb.fd

bb.fd:                                            ; preds = %bb.bf, %emitter_table_row.exit275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ago = load i32, ptr %i.q, align 4, !tbaa !29
  %i.agp = zext i32 %i.ago to i64
  %i.agq = icmp samesign ult i64 %indvars.iv.next, %i.agp
  br i1 %i.agq, label %bb.ba, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %bb.fd, %bb.az
  %.057.lcssa = phi i1 [ false, %bb.az ], [ %i.zq, %bb.fd ]
  %.val.i276 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i277 = icmp ult i32 %.val.i276, 2
  br i1 %spec.select.i.i277, label %bb.fe, label %emitter_json_array_end.exit

bb.fe:                                            ; preds = %._crit_edge
  %i.agr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ags = load i32, ptr %i.agr, align 8, !tbaa !25
  %i.agt = add nsw i32 %i.ags, -1
  store i32 %i.agt, ptr %i.agr, align 8, !tbaa !25
  %i.agu = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.agu, align 4, !tbaa !23
  %.not.i278 = icmp eq i32 %.val.i276, 1
  br i1 %.not.i278, label %emitter_indent.exit.i280, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.agv = load i32, ptr %i.agr, align 8, !tbaa !25 ; 2 uses
  %i.agw = load i32, ptr %0, align 8, !tbaa !17
  %i.agx = icmp ne i32 %i.agw, 0                  ; 2 uses
  %.07.i.i279 = select i1 %i.agx, ptr @.str.10, ptr @.str.13
  %i.agy = icmp sgt i32 %i.agv, 0
  br i1 %i.agy, label %.lr.ph.preheader.i.i281, label %emitter_indent.exit.i280

.lr.ph.preheader.i.i281:                          ; preds = %bb.ff
  %i.agz = zext i1 %i.agx to i32
  %.08.i.i282 = shl nuw nsw i32 %i.agv, %i.agz
  br label %.lr.ph.i.i283

.lr.ph.i.i283:                                    ; preds = %.lr.ph.i.i283, %.lr.ph.preheader.i.i281
  %.09.i.i284 = phi i32 [ %i.aha, %.lr.ph.i.i283 ], [ 0, %.lr.ph.preheader.i.i281 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i279)
  %i.aha = add nuw nsw i32 %.09.i.i284, 1         ; 2 uses
  %exitcond.not.i.i285 = icmp eq i32 %i.aha, %.08.i.i282
  br i1 %exitcond.not.i.i285, label %emitter_indent.exit.i280, label %.lr.ph.i.i283, !llvm.loop !26

emitter_indent.exit.i280:                         ; preds = %.lr.ph.i.i283, %bb.ff, %bb.fe
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.256)
  br label %emitter_json_array_end.exit

emitter_json_array_end.exit:                      ; preds = %._crit_edge, %emitter_indent.exit.i280
  br i1 %.057.lcssa, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %emitter_json_array_end.exit
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.446)
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %emitter_json_array_end.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @stats_arena_lextents_print(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.emitter_col_s, align 8      ; 11 uses
  %4 = alloca %struct.emitter_col_s, align 8      ; 12 uses
  %5 = alloca %struct.emitter_col_s, align 8      ; 9 uses
  %6 = alloca %struct.emitter_col_s, align 8      ; 9 uses
  %7 = alloca %struct.emitter_col_s, align 8      ; 9 uses
  %8 = alloca %struct.emitter_col_s, align 8      ; 9 uses
  %9 = alloca %struct.emitter_col_s, align 8      ; 9 uses
  %10 = alloca %struct.emitter_col_s, align 8     ; 9 uses
  %11 = alloca %struct.emitter_col_s, align 8     ; 9 uses
  %12 = alloca %struct.emitter_col_s, align 8     ; 9 uses
  %13 = alloca %struct.emitter_col_s, align 8     ; 11 uses
  %14 = alloca %struct.emitter_col_s, align 8     ; 11 uses
  %15 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %16 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %17 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %18 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %19 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %20 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %21 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %22 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %i.e = alloca [7 x i64], align 16               ; 10 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca [7 x i64], align 16               ; 5 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 4 uses
  %i.p = alloca i64, align 8                      ; 4 uses
  %i.q = alloca i64, align 8                      ; 4 uses
  %i.r = alloca i64, align 8                      ; 4 uses
  %i.s = alloca i64, align 8                      ; 4 uses
  %i.t = alloca i64, align 8                      ; 4 uses
  %i.u = alloca i64, align 8                      ; 4 uses
  %i.v = alloca i64, align 8                      ; 4 uses
  %i.w = alloca i64, align 8                      ; 4 uses
  %i.x = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i64 4, ptr %i.c, align 8, !tbaa !12
  %i.y = call i32 @mallctl(ptr noundef nonnull @.str.219, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef null, i64 noundef 0) #14
  %.not35 = icmp eq i32 %i.y, 0
  br i1 %.not35, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.219) #14
  call void @abort() #15
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i64 4, ptr %i.d, align 8, !tbaa !12
  %i.z = call i32 @mallctl(ptr noundef nonnull @.str.233, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef null, i64 noundef 0) #14
  %.not36 = icmp eq i32 %i.z, 0
  br i1 %.not36, label %emitter_col_init.exit87, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.233) #14
  call void @abort() #15
  unreachable

emitter_col_init.exit87:                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <2 x i32> <i32 1, i32 20>, ptr %3, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 6, ptr %i.ac, align 8, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 4
  store <2 x i32> <i32 1, i32 20>, ptr %4, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 9, ptr %i.ag, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.228, ptr %i.ah, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %3, ptr %i.aj, align 8, !tbaa !54
  store ptr %5, ptr %i.aa, align 8, !tbaa !44
  store <2 x i32> <i32 1, i32 4>, ptr %5, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.ak, align 8, !tbaa !43
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %4, ptr %i.am, align 8, !tbaa !54
  store ptr %6, ptr %i.ad, align 8, !tbaa !44
  store <2 x i32> <i32 1, i32 4>, ptr %6, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 9, ptr %i.an, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.421, ptr %i.ao, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %5, ptr %i.ap, align 8, !tbaa !54
  store ptr %7, ptr %i.ai, align 8, !tbaa !44
  store <2 x i32> <i32 1, i32 13>, ptr %7, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 6, ptr %i.aq, align 8, !tbaa !43
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %6, ptr %i.ar, align 8, !tbaa !54
  store ptr %8, ptr %i.al, align 8, !tbaa !44
  store <2 x i32> <i32 1, i32 13>, ptr %8, align 8, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 9, ptr %i.as, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.270, ptr %i.at, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
end_hunk_4
begin_hunk_5_@stats_arena_lextents_print:bb.a
  %i.hl = udiv i64 %2, 1000000000                 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.hn = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.not1315.i117 = icmp eq ptr %i.fn, null
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %emitter_table_row.exit124
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %emitter_table_row.exit124 ] ; 4 uses
  %.0164 = phi i1 [ false, %.lr.ph ], [ %i.ic, %emitter_table_row.exit124 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  store i64 %indvars.iv, ptr %i.ha, align 16, !tbaa !12
  store i64 %indvars.iv, ptr %i.hb, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  store i64 7, ptr %i.o, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  store i64 8, ptr %i.p, align 8, !tbaa !12
  %i.hs = load i8, ptr %i.gn, align 8, !tbaa !14
  %.not.i51 = icmp eq i8 %i.hs, 0
  br i1 %.not.i51, label %tsd_fetch_impl.exit53, label %bb.x, !prof !32

bb.x:                                             ; preds = %bb.w
  %i.ht = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gm, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit53

tsd_fetch_impl.exit53:                            ; preds = %bb.w, %bb.x
  %.0.i52 = phi ptr [ %i.ht, %bb.x ], [ %i.gm, %bb.w ]
  %i.hu = call i32 @je_ctl_bymibname(ptr noundef %.0.i52, ptr noundef nonnull %i.e, i64 noundef 5, ptr noundef nonnull @.str.357, ptr noundef nonnull %i.o, ptr noundef nonnull %i.j, ptr noundef nonnull %i.p, ptr noundef null, i64 noundef 0) #14
  %.not40 = icmp eq i32 %i.hu, 0
  br i1 %.not40, label %bb.z, label %bb.y

bb.y:                                             ; preds = %tsd_fetch_impl.exit53
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.z:                                             ; preds = %tsd_fetch_impl.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  store i64 7, ptr %i.q, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #14
  store i64 8, ptr %i.r, align 8, !tbaa !12
  %i.hv = load i8, ptr %i.gn, align 8, !tbaa !14
  %.not.i54 = icmp eq i8 %i.hv, 0
  br i1 %.not.i54, label %tsd_fetch_impl.exit56, label %bb.aa, !prof !32

bb.aa:                                            ; preds = %bb.z
  %i.hw = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gm, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit56

tsd_fetch_impl.exit56:                            ; preds = %bb.z, %bb.aa
  %.0.i55 = phi ptr [ %i.hw, %bb.aa ], [ %i.gm, %bb.z ]
  %i.hx = call i32 @je_ctl_bymibname(ptr noundef %.0.i55, ptr noundef nonnull %i.e, i64 noundef 5, ptr noundef nonnull @.str.358, ptr noundef nonnull %i.q, ptr noundef nonnull %i.k, ptr noundef nonnull %i.r, ptr noundef null, i64 noundef 0) #14
  %.not41 = icmp eq i32 %i.hx, 0
  br i1 %.not41, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %tsd_fetch_impl.exit56
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.ac:                                            ; preds = %tsd_fetch_impl.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #14
  store i64 7, ptr %i.s, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #14
  store i64 8, ptr %i.t, align 8, !tbaa !12
  %i.hy = load i8, ptr %i.gn, align 8, !tbaa !14
  %.not.i57 = icmp eq i8 %i.hy, 0
  br i1 %.not.i57, label %tsd_fetch_impl.exit59, label %bb.ad, !prof !32

bb.ad:                                            ; preds = %bb.ac
  %i.hz = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gm, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit59

tsd_fetch_impl.exit59:                            ; preds = %bb.ac, %bb.ad
  %.0.i58 = phi ptr [ %i.hz, %bb.ad ], [ %i.gm, %bb.ac ]
  %i.ia = call i32 @je_ctl_bymibname(ptr noundef %.0.i58, ptr noundef nonnull %i.e, i64 noundef 5, ptr noundef nonnull @.str.359, ptr noundef nonnull %i.s, ptr noundef nonnull %i.l, ptr noundef nonnull %i.t, ptr noundef null, i64 noundef 0) #14
  %.not42 = icmp eq i32 %i.ia, 0
  br i1 %.not42, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %tsd_fetch_impl.exit59
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.af:                                            ; preds = %tsd_fetch_impl.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  %i.ib = load i64, ptr %i.l, align 8, !tbaa !12
  %i.ic = icmp eq i64 %i.ib, 0                    ; 4 uses
  %.not = xor i1 %.0164, true
  %or.cond = select i1 %.not, i1 true, i1 %i.ic
  br i1 %or.cond, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.446)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #14
  store i64 7, ptr %i.u, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #14
  store i64 8, ptr %i.v, align 8, !tbaa !12
  %i.id = load i8, ptr %i.gn, align 8, !tbaa !14
  %.not.i60 = icmp eq i8 %i.id, 0
  br i1 %.not.i60, label %tsd_fetch_impl.exit62, label %bb.ai, !prof !32

bb.ai:                                            ; preds = %bb.ah
  %i.ie = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gm, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit62

tsd_fetch_impl.exit62:                            ; preds = %bb.ah, %bb.ai
  %.0.i61 = phi ptr [ %i.ie, %bb.ai ], [ %i.gm, %bb.ah ]
  %i.if = call i32 @je_ctl_bymibname(ptr noundef %.0.i61, ptr noundef nonnull %i.h, i64 noundef 3, ptr noundef nonnull @.str.228, ptr noundef nonnull %i.u, ptr noundef nonnull %i.m, ptr noundef nonnull %i.v, ptr noundef null, i64 noundef 0) #14
  %.not43 = icmp eq i32 %i.if, 0
  br i1 %.not43, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %tsd_fetch_impl.exit62
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.ak:                                            ; preds = %tsd_fetch_impl.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #14
  store i64 7, ptr %i.w, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #14
  store i64 8, ptr %i.x, align 8, !tbaa !12
  %i.ig = load i8, ptr %i.gn, align 8, !tbaa !14
  %.not.i63 = icmp eq i8 %i.ig, 0
  br i1 %.not.i63, label %tsd_fetch_impl.exit65, label %bb.al, !prof !32

bb.al:                                            ; preds = %bb.ak
  %i.ih = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gm, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit65

tsd_fetch_impl.exit65:                            ; preds = %bb.ak, %bb.al
  %.0.i64 = phi ptr [ %i.ih, %bb.al ], [ %i.gm, %bb.ak ]
  %i.ii = call i32 @je_ctl_bymibname(ptr noundef %.0.i64, ptr noundef nonnull %i.e, i64 noundef 5, ptr noundef nonnull @.str.453, ptr noundef nonnull %i.w, ptr noundef nonnull %i.n, ptr noundef nonnull %i.x, ptr noundef null, i64 noundef 0) #14
  %.not44 = icmp eq i32 %i.ii, 0
  br i1 %.not44, label %bb.an, label %bb.am

bb.am:                                            ; preds = %tsd_fetch_impl.exit65
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.an:                                            ; preds = %tsd_fetch_impl.exit65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  %.val.i = load i32, ptr %0, align 8, !tbaa !17  ; 2 uses
  %spec.select.i.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i.i, label %bb.ao, label %emitter_json_object_begin.exit

bb.ao:                                            ; preds = %bb.an
  %i.ij = load i8, ptr %i.hc, align 1, !tbaa !24, !range !27, !noundef !28
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i8 0, ptr %i.hc, align 1, !tbaa !24
  br label %emitter_json_key_prefix.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.il = load i8, ptr %i.hd, align 4, !tbaa !23, !range !27, !noundef !28
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11)
  %.pre.i105 = load i32, ptr %0, align 8, !tbaa !17
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.in = phi i32 [ %.pre.i105, %bb.ar ], [ %.val.i, %bb.aq ]
  %.not.i.i = icmp eq i32 %i.in, 1
  br i1 %.not.i.i, label %emitter_json_key_prefix.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.io = load i32, ptr %i.he, align 8, !tbaa !25 ; 2 uses
  %i.ip = load i32, ptr %0, align 8, !tbaa !17
  %i.iq = icmp ne i32 %i.ip, 0                    ; 2 uses
  %.07.i.i.i = select i1 %i.iq, ptr @.str.10, ptr @.str.13
  %i.ir = icmp sgt i32 %i.io, 0
  br i1 %i.ir, label %.lr.ph.preheader.i.i.i, label %emitter_json_key_prefix.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.at
  %i.is = zext i1 %i.iq to i32
  %.08.i.i.i = shl nuw nsw i32 %i.io, %i.is
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.it, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i.i)
  %i.it = add nuw nsw i32 %.09.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.it, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_json_key_prefix.exit.i, label %.lr.ph.i.i.i, !llvm.loop !26

emitter_json_key_prefix.exit.i:                   ; preds = %.lr.ph.i.i.i, %bb.at, %bb.as, %bb.ap
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6)
  %i.iu = load i32, ptr %i.he, align 8, !tbaa !25
  %i.iv = add nsw i32 %i.iu, 1
  store i32 %i.iv, ptr %i.he, align 8, !tbaa !25
  store i8 0, ptr %i.hd, align 4, !tbaa !23
  br label %emitter_json_object_begin.exit

emitter_json_object_begin.exit:                   ; preds = %bb.an, %emitter_json_key_prefix.exit.i
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.453, i32 noundef 6, ptr noundef %i.n)
  %.val.i106 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i107 = icmp ult i32 %.val.i106, 2
  br i1 %spec.select.i.i107, label %bb.au, label %emitter_json_object_end.exit

bb.au:                                            ; preds = %emitter_json_object_begin.exit
  %i.iw = load i32, ptr %i.he, align 8, !tbaa !25
  %i.ix = add nsw i32 %i.iw, -1
  store i32 %i.ix, ptr %i.he, align 8, !tbaa !25
  store i8 1, ptr %i.hd, align 4, !tbaa !23
  %.not.i108 = icmp eq i32 %.val.i106, 1
  br i1 %.not.i108, label %emitter_indent.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.iy = load i32, ptr %i.he, align 8, !tbaa !25 ; 2 uses
  %i.iz = load i32, ptr %0, align 8, !tbaa !17
  %i.ja = icmp ne i32 %i.iz, 0                    ; 2 uses
  %.07.i.i = select i1 %i.ja, ptr @.str.10, ptr @.str.13
  %i.jb = icmp sgt i32 %i.iy, 0
  br i1 %i.jb, label %.lr.ph.preheader.i.i, label %emitter_indent.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.av
  %i.jc = zext i1 %i.ja to i32
  %.08.i.i = shl nuw nsw i32 %i.iy, %i.jc
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi i32 [ %i.jd, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i)
  %i.jd = add nuw nsw i32 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.jd, %.08.i.i
  br i1 %exitcond.not.i.i, label %emitter_indent.exit.i, label %.lr.ph.i.i, !llvm.loop !26

emitter_indent.exit.i:                            ; preds = %.lr.ph.i.i, %bb.av, %bb.au
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit

emitter_json_object_end.exit:                     ; preds = %emitter_json_object_begin.exit, %emitter_indent.exit.i
  %i.je = load i64, ptr %i.m, align 8, !tbaa !12  ; 2 uses
  store i64 %i.je, ptr %i.hf, align 8, !tbaa !14
  %i.jf = load i32, ptr %i.a, align 4, !tbaa !29
  %i.jg = trunc nuw i64 %indvars.iv to i32
  %i.jh = add i32 %i.jf, %i.jg
  store i32 %i.jh, ptr %i.hg, align 8, !tbaa !14
  %i.ji = load i64, ptr %i.n, align 8, !tbaa !12  ; 2 uses
  %i.jj = mul i64 %i.ji, %i.je
  store i64 %i.jj, ptr %i.hh, align 8, !tbaa !14
  %i.jk = load i64, ptr %i.j, align 8, !tbaa !12  ; 4 uses
  store i64 %i.jk, ptr %i.hi, align 8, !tbaa !14
  %i.jl = icmp eq i64 %i.jk, 0
  %brmerge = or i1 %i.hk, %i.jl
  %.mux = select i1 %i.hj, i64 0, i64 %i.jk
  br i1 %brmerge, label %rate_per_second.exit, label %bb.aw

bb.aw:                                            ; preds = %emitter_json_object_end.exit
  %i.jm = udiv i64 %i.jk, %i.hl
  br label %rate_per_second.exit

rate_per_second.exit:                             ; preds = %emitter_json_object_end.exit, %bb.aw
  %.0.i109 = phi i64 [ %i.jm, %bb.aw ], [ %.mux, %emitter_json_object_end.exit ]
  store i64 %.0.i109, ptr %i.hm, align 8, !tbaa !14
  %i.jn = load i64, ptr %i.k, align 8, !tbaa !12  ; 4 uses
  store i64 %i.jn, ptr %i.hn, align 8, !tbaa !14
  %i.jo = icmp eq i64 %i.jn, 0
  %brmerge165 = or i1 %i.hk, %i.jo
  %.mux166 = select i1 %i.hj, i64 0, i64 %i.jn
  br i1 %brmerge165, label %rate_per_second.exit112, label %bb.ax

bb.ax:                                            ; preds = %rate_per_second.exit
  %i.jp = udiv i64 %i.jn, %i.hl
  br label %rate_per_second.exit112

rate_per_second.exit112:                          ; preds = %rate_per_second.exit, %bb.ax
  %.0.i111 = phi i64 [ %i.jp, %bb.ax ], [ %.mux166, %rate_per_second.exit ]
  store i64 %.0.i111, ptr %i.ho, align 8, !tbaa !14
  %i.jq = load i64, ptr %i.l, align 8, !tbaa !12  ; 4 uses
  store i64 %i.jq, ptr %i.hp, align 8, !tbaa !14
  %i.jr = icmp eq i64 %i.jq, 0
  %brmerge167 = or i1 %i.hk, %i.jr
  %.mux168 = select i1 %i.hj, i64 0, i64 %i.jq
  br i1 %brmerge167, label %rate_per_second.exit115, label %bb.ay

bb.ay:                                            ; preds = %rate_per_second.exit112
  %i.js = udiv i64 %i.jq, %i.hl
  br label %rate_per_second.exit115

rate_per_second.exit115:                          ; preds = %rate_per_second.exit112, %bb.ay
  %.0.i114 = phi i64 [ %i.js, %bb.ay ], [ %.mux168, %rate_per_second.exit112 ]
  store i64 %.0.i114, ptr %i.hq, align 8, !tbaa !14
  store i64 %i.ji, ptr %i.hr, align 8, !tbaa !14
  br i1 %i.ic, label %emitter_table_row.exit124, label %bb.az

bb.az:                                            ; preds = %rate_per_second.exit115
  %i.jt = load i32, ptr %0, align 8, !tbaa !17
  %.not.i116 = icmp eq i32 %i.jt, 2
  br i1 %.not.i116, label %bb.ba, label %emitter_table_row.exit124

bb.ba:                                            ; preds = %bb.az
  br i1 %.not1315.i117, label %select.unfold._crit_edge.i123, label %select.unfold.i118

select.unfold.i118:                               ; preds = %bb.ba, %select.unfold.i118
  %.016.i119 = phi ptr [ %i.kb, %select.unfold.i118 ], [ %i.fn, %bb.ba ] ; 5 uses
  %i.ju = load i32, ptr %.016.i119, align 8, !tbaa !39
  %i.jv = getelementptr inbounds nuw i8, ptr %.016.i119, i64 4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !42
  %i.jx = getelementptr inbounds nuw i8, ptr %.016.i119, i64 8
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !43
  %i.jz = getelementptr inbounds nuw i8, ptr %.016.i119, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.ju, i32 noundef %i.jw, i32 noundef %i.jy, ptr noundef nonnull %i.jz)
  %i.ka = getelementptr inbounds nuw i8, ptr %.016.i119, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !44 ; 3 uses
  %.not14.i120 = icmp eq ptr %i.kb, %i.fn
  %.not1317.i121 = icmp eq ptr %i.kb, null
  %.not13.i122 = or i1 %.not14.i120, %.not1317.i121
  br i1 %.not13.i122, label %select.unfold._crit_edge.i123, label %select.unfold.i118

select.unfold._crit_edge.i123:                    ; preds = %select.unfold.i118, %bb.ba
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.12)
  br label %emitter_table_row.exit124

emitter_table_row.exit124:                        ; preds = %select.unfold._crit_edge.i123, %bb.az, %rate_per_second.exit115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kc = load i32, ptr %i.b, align 4, !tbaa !29
  %i.kd = zext i32 %i.kc to i64
  %i.ke = icmp samesign ult i64 %indvars.iv.next, %i.kd
  br i1 %i.ke, label %bb.w, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %emitter_table_row.exit124, %bb.v
  %.0.lcssa = phi i1 [ false, %bb.v ], [ %i.ic, %emitter_table_row.exit124 ]
  %.val.i125 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i126 = icmp ult i32 %.val.i125, 2
  br i1 %spec.select.i.i126, label %bb.bb, label %emitter_json_array_end.exit

bb.bb:                                            ; preds = %._crit_edge
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !25
  %i.kh = add nsw i32 %i.kg, -1
  store i32 %i.kh, ptr %i.kf, align 8, !tbaa !25
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.ki, align 4, !tbaa !23
  %.not.i127 = icmp eq i32 %.val.i125, 1
  br i1 %.not.i127, label %emitter_indent.exit.i129, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.kj = load i32, ptr %i.kf, align 8, !tbaa !25 ; 2 uses
  %i.kk = load i32, ptr %0, align 8, !tbaa !17
  %i.kl = icmp ne i32 %i.kk, 0                    ; 2 uses
  %.07.i.i128 = select i1 %i.kl, ptr @.str.10, ptr @.str.13
  %i.km = icmp sgt i32 %i.kj, 0
  br i1 %i.km, label %.lr.ph.preheader.i.i130, label %emitter_indent.exit.i129

.lr.ph.preheader.i.i130:                          ; preds = %bb.bc
  %i.kn = zext i1 %i.kl to i32
  %.08.i.i131 = shl nuw nsw i32 %i.kj, %i.kn
  br label %.lr.ph.i.i132

.lr.ph.i.i132:                                    ; preds = %.lr.ph.i.i132, %.lr.ph.preheader.i.i130
  %.09.i.i133 = phi i32 [ %i.ko, %.lr.ph.i.i132 ], [ 0, %.lr.ph.preheader.i.i130 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i128)
  %i.ko = add nuw nsw i32 %.09.i.i133, 1          ; 2 uses
  %exitcond.not.i.i134 = icmp eq i32 %i.ko, %.08.i.i131
  br i1 %exitcond.not.i.i134, label %emitter_indent.exit.i129, label %.lr.ph.i.i132, !llvm.loop !26

emitter_indent.exit.i129:                         ; preds = %.lr.ph.i.i132, %bb.bc, %bb.bb
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.256)
  br label %emitter_json_array_end.exit

emitter_json_array_end.exit:                      ; preds = %._crit_edge, %emitter_indent.exit.i129
  br i1 %.0.lcssa, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %emitter_json_array_end.exit
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.446)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %emitter_json_array_end.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @stats_arena_extents_print(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #6 {
emitter_col_init.exit81:
  %2 = alloca %struct.emitter_col_s, align 8      ; 11 uses
  %3 = alloca %struct.emitter_col_s, align 8      ; 12 uses
  %4 = alloca %struct.emitter_col_s, align 8      ; 9 uses
  %5 = alloca %struct.emitter_col_s, align 8      ; 9 uses
  %6 = alloca %struct.emitter_col_s, align 8      ; 9 uses
  %7 = alloca %struct.emitter_col_s, align 8      ; 9 uses
  %8 = alloca %struct.emitter_col_s, align 8      ; 9 uses
  %9 = alloca %struct.emitter_col_s, align 8      ; 9 uses
  %10 = alloca %struct.emitter_col_s, align 8     ; 9 uses
  %11 = alloca %struct.emitter_col_s, align 8     ; 9 uses
  %12 = alloca %struct.emitter_col_s, align 8     ; 11 uses
  %13 = alloca %struct.emitter_col_s, align 8     ; 11 uses
  %14 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %15 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %16 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %17 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %18 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %19 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %20 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %21 = alloca %struct.emitter_col_s, align 8     ; 12 uses
  %i.a = alloca [7 x i64], align 16               ; 12 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %i.o = alloca i64, align 8                      ; 4 uses
  %i.p = alloca i64, align 8                      ; 4 uses
  %i.q = alloca i64, align 8                      ; 4 uses
  %i.r = alloca i64, align 8                      ; 4 uses
  %i.s = alloca i64, align 8                      ; 4 uses
  %i.t = alloca i64, align 8                      ; 4 uses
  %i.u = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <2 x i32> <i32 1, i32 20>, ptr %2, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 6, ptr %i.x, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  store <2 x i32> <i32 1, i32 20>, ptr %3, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 9, ptr %i.ab, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.228, ptr %i.ac, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %2, ptr %i.ae, align 8, !tbaa !54
  store ptr %4, ptr %i.v, align 8, !tbaa !44
  store <2 x i32> <i32 1, i32 4>, ptr %4, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.af, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %3, ptr %i.ah, align 8, !tbaa !54
  store ptr %5, ptr %i.y, align 8, !tbaa !44
  store <2 x i32> <i32 1, i32 4>, ptr %5, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 9, ptr %i.ai, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.421, ptr %i.aj, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %4, ptr %i.ak, align 8, !tbaa !54
  store ptr %6, ptr %i.ad, align 8, !tbaa !44
  store <2 x i32> <i32 1, i32 13>, ptr %6, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 6, ptr %i.al, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %5, ptr %i.am, align 8, !tbaa !54
  store ptr %7, ptr %i.ag, align 8, !tbaa !44
  store <2 x i32> <i32 1, i32 13>, ptr %7, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 9, ptr %i.an, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @.str.456, ptr %i.ao, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %6, ptr %i.ap, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %8, ptr %i.aq, align 8, !tbaa !44
  store <2 x i32> <i32 1, i32 13>, ptr %8, align 8, !tbaa !29
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 6, ptr %i.ar, align 8, !tbaa !43
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %7, ptr %i.as, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %9, ptr %i.at, align 8, !tbaa !44
  store <2 x i32> <i32 1, i32 13>, ptr %9, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 9, ptr %i.au, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.457, ptr %i.av, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %10, ptr %i.w, align 8, !tbaa !54
  store ptr %8, ptr %i.ax, align 8, !tbaa !54
  store ptr %2, ptr %i.aw, align 8, !tbaa !44
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %10, ptr %i.ay, align 8, !tbaa !44
  store <2 x i32> <i32 1, i32 13>, ptr %10, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 6, ptr %i.az, align 8, !tbaa !43
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %11, ptr %i.z, align 8, !tbaa !54
  store ptr %9, ptr %i.bb, align 8, !tbaa !54
  store ptr %3, ptr %i.ba, align 8, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %11, ptr %i.bc, align 8, !tbaa !44
  store <2 x i32> <i32 1, i32 13>, ptr %11, align 8, !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 9, ptr %i.bd, align 8, !tbaa !43
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.458, ptr %i.be, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr %12, ptr %i.bg, align 8, !tbaa !54
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !54 ; 3 uses
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !44
  store ptr %12, ptr %i.bh, align 8, !tbaa !54
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !54
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %2, ptr %i.bj, align 8, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %12, ptr %i.bk, align 8, !tbaa !44
  %.pre.i78 = load ptr, ptr %i.bf, align 8, !tbaa !44 ; 3 uses
  store <2 x i32> <i32 1, i32 13>, ptr %12, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 6, ptr %i.bl, align 8, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  store ptr %13, ptr %i.bn, align 8, !tbaa !54
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !54 ; 3 uses
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !44
end_hunk_5
begin_hunk_6_@stats_arena_extents_print:emitter_col_init.exit81
  %.not33 = icmp eq i32 %i.hh, 0
  br i1 %.not33, label %bb.s, label %bb.r

bb.r:                                             ; preds = %tsd_fetch_impl.exit44
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.s:                                             ; preds = %tsd_fetch_impl.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  store i64 7, ptr %i.l, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  store i64 8, ptr %i.m, align 8, !tbaa !12
  %i.hi = load i8, ptr %i.gi, align 8, !tbaa !14
  %.not.i45 = icmp eq i8 %i.hi, 0
  br i1 %.not.i45, label %tsd_fetch_impl.exit47, label %bb.t, !prof !32

bb.t:                                             ; preds = %bb.s
  %i.hj = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gh, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit47

tsd_fetch_impl.exit47:                            ; preds = %bb.s, %bb.t
  %.0.i46 = phi ptr [ %i.hj, %bb.t ], [ %i.gh, %bb.s ]
  %i.hk = call i32 @je_ctl_bymibname(ptr noundef %.0.i46, ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.458, ptr noundef nonnull %i.l, ptr noundef nonnull %i.e, ptr noundef nonnull %i.m, ptr noundef null, i64 noundef 0) #14
  %.not34 = icmp eq i32 %i.hk, 0
  br i1 %.not34, label %bb.v, label %bb.u

bb.u:                                             ; preds = %tsd_fetch_impl.exit47
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.v:                                             ; preds = %tsd_fetch_impl.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  store i64 7, ptr %i.n, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  store i64 8, ptr %i.o, align 8, !tbaa !12
  %i.hl = load i8, ptr %i.gi, align 8, !tbaa !14
  %.not.i48 = icmp eq i8 %i.hl, 0
  br i1 %.not.i48, label %tsd_fetch_impl.exit50, label %bb.w, !prof !32

bb.w:                                             ; preds = %bb.v
  %i.hm = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gh, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit50

tsd_fetch_impl.exit50:                            ; preds = %bb.v, %bb.w
  %.0.i49 = phi ptr [ %i.hm, %bb.w ], [ %i.gh, %bb.v ]
  %i.hn = call i32 @je_ctl_bymibname(ptr noundef %.0.i49, ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.460, ptr noundef nonnull %i.n, ptr noundef nonnull %i.f, ptr noundef nonnull %i.o, ptr noundef null, i64 noundef 0) #14
  %.not35 = icmp eq i32 %i.hn, 0
  br i1 %.not35, label %bb.y, label %bb.x

bb.x:                                             ; preds = %tsd_fetch_impl.exit50
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.y:                                             ; preds = %tsd_fetch_impl.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  store i64 7, ptr %i.p, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  store i64 8, ptr %i.q, align 8, !tbaa !12
  %i.ho = load i8, ptr %i.gi, align 8, !tbaa !14
  %.not.i51 = icmp eq i8 %i.ho, 0
  br i1 %.not.i51, label %tsd_fetch_impl.exit53, label %bb.z, !prof !32

bb.z:                                             ; preds = %bb.y
  %i.hp = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gh, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit53

tsd_fetch_impl.exit53:                            ; preds = %bb.y, %bb.z
  %.0.i52 = phi ptr [ %i.hp, %bb.z ], [ %i.gh, %bb.y ]
  %i.hq = call i32 @je_ctl_bymibname(ptr noundef %.0.i52, ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.465, ptr noundef nonnull %i.p, ptr noundef nonnull %i.g, ptr noundef nonnull %i.q, ptr noundef null, i64 noundef 0) #14
  %.not36 = icmp eq i32 %i.hq, 0
  br i1 %.not36, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %tsd_fetch_impl.exit53
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.ab:                                            ; preds = %tsd_fetch_impl.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #14
  store i64 7, ptr %i.r, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #14
  store i64 8, ptr %i.s, align 8, !tbaa !12
  %i.hr = load i8, ptr %i.gi, align 8, !tbaa !14
  %.not.i54 = icmp eq i8 %i.hr, 0
  br i1 %.not.i54, label %tsd_fetch_impl.exit56, label %bb.ac, !prof !32

bb.ac:                                            ; preds = %bb.ab
  %i.hs = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gh, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit56

tsd_fetch_impl.exit56:                            ; preds = %bb.ab, %bb.ac
  %.0.i55 = phi ptr [ %i.hs, %bb.ac ], [ %i.gh, %bb.ab ]
  %i.ht = call i32 @je_ctl_bymibname(ptr noundef %.0.i55, ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.466, ptr noundef nonnull %i.r, ptr noundef nonnull %i.h, ptr noundef nonnull %i.s, ptr noundef null, i64 noundef 0) #14
  %.not37 = icmp eq i32 %i.ht, 0
  br i1 %.not37, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %tsd_fetch_impl.exit56
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.ae:                                            ; preds = %tsd_fetch_impl.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #14
  store i64 7, ptr %i.t, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #14
  store i64 8, ptr %i.u, align 8, !tbaa !12
  %i.hu = load i8, ptr %i.gi, align 8, !tbaa !14
  %.not.i57 = icmp eq i8 %i.hu, 0
  br i1 %.not.i57, label %tsd_fetch_impl.exit59, label %bb.af, !prof !32

bb.af:                                            ; preds = %bb.ae
  %i.hv = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gh, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit59

tsd_fetch_impl.exit59:                            ; preds = %bb.ae, %bb.af
  %.0.i58 = phi ptr [ %i.hv, %bb.af ], [ %i.gh, %bb.ae ]
  %i.hw = call i32 @je_ctl_bymibname(ptr noundef %.0.i58, ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.467, ptr noundef nonnull %i.t, ptr noundef nonnull %i.i, ptr noundef nonnull %i.u, ptr noundef null, i64 noundef 0) #14
  %.not38 = icmp eq i32 %i.hw, 0
  br i1 %.not38, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %tsd_fetch_impl.exit59
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.ah:                                            ; preds = %tsd_fetch_impl.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  %i.hx = load i64, ptr %i.d, align 8, !tbaa !12
  %i.hy = load i64, ptr %i.e, align 8, !tbaa !12
  %i.hz = add i64 %i.hy, %i.hx
  %i.ia = load i64, ptr %i.f, align 8, !tbaa !12
  %i.ib = add i64 %i.hz, %i.ia                    ; 2 uses
  %i.ic = load i64, ptr %i.g, align 8, !tbaa !12
  %i.id = load i64, ptr %i.h, align 8, !tbaa !12
  %i.ie = add i64 %i.id, %i.ic
  %i.if = load i64, ptr %i.i, align 8, !tbaa !12
  %i.ig = add i64 %i.ie, %i.if
  %i.ih = icmp eq i64 %i.ib, 0                    ; 4 uses
  %.not = xor i1 %.0152, true
  %or.cond = select i1 %.not, i1 true, i1 %i.ih
  br i1 %or.cond, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.446)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.val.i = load i32, ptr %0, align 8, !tbaa !17  ; 2 uses
  %spec.select.i.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i.i, label %bb.ak, label %emitter_json_object_begin.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ii = load i8, ptr %i.gs, align 1, !tbaa !24, !range !27, !noundef !28
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i8 0, ptr %i.gs, align 1, !tbaa !24
  br label %emitter_json_key_prefix.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.ik = load i8, ptr %i.gt, align 4, !tbaa !23, !range !27, !noundef !28
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11)
  %.pre.i99 = load i32, ptr %0, align 8, !tbaa !17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.im = phi i32 [ %.pre.i99, %bb.an ], [ %.val.i, %bb.am ]
  %.not.i.i = icmp eq i32 %i.im, 1
  br i1 %.not.i.i, label %emitter_json_key_prefix.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.in = load i32, ptr %i.gu, align 8, !tbaa !25 ; 2 uses
  %i.io = load i32, ptr %0, align 8, !tbaa !17
  %i.ip = icmp ne i32 %i.io, 0                    ; 2 uses
  %.07.i.i.i = select i1 %i.ip, ptr @.str.10, ptr @.str.13
  %i.iq = icmp sgt i32 %i.in, 0
  br i1 %i.iq, label %.lr.ph.preheader.i.i.i, label %emitter_json_key_prefix.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ap
  %i.ir = zext i1 %i.ip to i32
  %.08.i.i.i = shl nuw nsw i32 %i.in, %i.ir
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.is, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i.i)
  %i.is = add nuw nsw i32 %.09.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.is, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_json_key_prefix.exit.i, label %.lr.ph.i.i.i, !llvm.loop !26

emitter_json_key_prefix.exit.i:                   ; preds = %.lr.ph.i.i.i, %bb.ap, %bb.ao, %bb.al
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6)
  %i.it = load i32, ptr %i.gu, align 8, !tbaa !25
  %i.iu = add nsw i32 %i.it, 1
  store i32 %i.iu, ptr %i.gu, align 8, !tbaa !25
  store i8 0, ptr %i.gt, align 4, !tbaa !23
  br label %emitter_json_object_begin.exit

emitter_json_object_begin.exit:                   ; preds = %bb.aj, %emitter_json_key_prefix.exit.i
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.456, i32 noundef 6, ptr noundef %i.d)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.458, i32 noundef 6, ptr noundef %i.e)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.460, i32 noundef 6, ptr noundef %i.f)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.465, i32 noundef 6, ptr noundef %i.g)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.466, i32 noundef 6, ptr noundef %i.h)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.467, i32 noundef 6, ptr noundef %i.i)
  %.val.i100 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i101 = icmp ult i32 %.val.i100, 2
  br i1 %spec.select.i.i101, label %bb.aq, label %emitter_json_object_end.exit

bb.aq:                                            ; preds = %emitter_json_object_begin.exit
  %i.iv = load i32, ptr %i.gu, align 8, !tbaa !25
  %i.iw = add nsw i32 %i.iv, -1
  store i32 %i.iw, ptr %i.gu, align 8, !tbaa !25
  store i8 1, ptr %i.gt, align 4, !tbaa !23
  %.not.i102 = icmp eq i32 %.val.i100, 1
  br i1 %.not.i102, label %emitter_indent.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.ix = load i32, ptr %i.gu, align 8, !tbaa !25 ; 2 uses
  %i.iy = load i32, ptr %0, align 8, !tbaa !17
  %i.iz = icmp ne i32 %i.iy, 0                    ; 2 uses
  %.07.i.i = select i1 %i.iz, ptr @.str.10, ptr @.str.13
  %i.ja = icmp sgt i32 %i.ix, 0
  br i1 %i.ja, label %.lr.ph.preheader.i.i, label %emitter_indent.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ar
  %i.jb = zext i1 %i.iz to i32
  %.08.i.i = shl nuw nsw i32 %i.ix, %i.jb
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi i32 [ %i.jc, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i)
  %i.jc = add nuw nsw i32 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.jc, %.08.i.i
  br i1 %exitcond.not.i.i, label %emitter_indent.exit.i, label %.lr.ph.i.i, !llvm.loop !26

emitter_indent.exit.i:                            ; preds = %.lr.ph.i.i, %bb.ar, %bb.aq
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit

emitter_json_object_end.exit:                     ; preds = %emitter_json_object_begin.exit, %emitter_indent.exit.i
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr @je_sz_pind2sz_tab, i64 %indvars.iv
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !12
  store i64 %i.je, ptr %i.gv, align 8, !tbaa !14
  store i64 %indvars.iv, ptr %i.gw, align 8, !tbaa !14
  %i.jf = load i64, ptr %i.d, align 8, !tbaa !12
  store i64 %i.jf, ptr %i.gx, align 8, !tbaa !14
  %i.jg = load i64, ptr %i.g, align 8, !tbaa !12
  store i64 %i.jg, ptr %i.gy, align 8, !tbaa !14
  %i.jh = load i64, ptr %i.e, align 8, !tbaa !12
  store i64 %i.jh, ptr %i.gz, align 8, !tbaa !14
  %i.ji = load i64, ptr %i.h, align 8, !tbaa !12
  store i64 %i.ji, ptr %i.ha, align 8, !tbaa !14
  %i.jj = load i64, ptr %i.f, align 8, !tbaa !12
  store i64 %i.jj, ptr %i.hb, align 8, !tbaa !14
  %i.jk = load i64, ptr %i.i, align 8, !tbaa !12
  store i64 %i.jk, ptr %i.hc, align 8, !tbaa !14
  store i64 %i.ib, ptr %i.hd, align 8, !tbaa !14
  store i64 %i.ig, ptr %i.he, align 8, !tbaa !14
  br i1 %i.ih, label %emitter_table_row.exit111, label %bb.as

bb.as:                                            ; preds = %emitter_json_object_end.exit
  %i.jl = load i32, ptr %0, align 8, !tbaa !17
  %.not.i103 = icmp eq i32 %i.jl, 2
  br i1 %.not.i103, label %bb.at, label %emitter_table_row.exit111

bb.at:                                            ; preds = %bb.as
  br i1 %.not1315.i104, label %select.unfold._crit_edge.i110, label %select.unfold.i105

select.unfold.i105:                               ; preds = %bb.at, %select.unfold.i105
  %.016.i106 = phi ptr [ %i.jt, %select.unfold.i105 ], [ %i.fi, %bb.at ] ; 5 uses
  %i.jm = load i32, ptr %.016.i106, align 8, !tbaa !39
  %i.jn = getelementptr inbounds nuw i8, ptr %.016.i106, i64 4
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !42
  %i.jp = getelementptr inbounds nuw i8, ptr %.016.i106, i64 8
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !43
  %i.jr = getelementptr inbounds nuw i8, ptr %.016.i106, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.jm, i32 noundef %i.jo, i32 noundef %i.jq, ptr noundef nonnull %i.jr)
  %i.js = getelementptr inbounds nuw i8, ptr %.016.i106, i64 24
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !44 ; 3 uses
  %.not14.i107 = icmp eq ptr %i.jt, %i.fi
  %.not1317.i108 = icmp eq ptr %i.jt, null
  %.not13.i109 = or i1 %.not14.i107, %.not1317.i108
  br i1 %.not13.i109, label %select.unfold._crit_edge.i110, label %select.unfold.i105

select.unfold._crit_edge.i110:                    ; preds = %select.unfold.i105, %bb.at
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.12)
  br label %emitter_table_row.exit111

emitter_table_row.exit111:                        ; preds = %select.unfold._crit_edge.i110, %bb.as, %emitter_json_object_end.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 199
  br i1 %exitcond.not, label %bb.au, label %bb.p, !llvm.loop !58

bb.au:                                            ; preds = %emitter_table_row.exit111
  %.val.i112 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i113 = icmp ult i32 %.val.i112, 2
  br i1 %spec.select.i.i113, label %bb.av, label %emitter_json_array_end.exit

bb.av:                                            ; preds = %bb.au
  %i.ju = load i32, ptr %i.gu, align 8, !tbaa !25
  %i.jv = add nsw i32 %i.ju, -1
  store i32 %i.jv, ptr %i.gu, align 8, !tbaa !25
  store i8 1, ptr %i.gt, align 4, !tbaa !23
  %.not.i114 = icmp eq i32 %.val.i112, 1
  br i1 %.not.i114, label %emitter_indent.exit.i116, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.jw = load i32, ptr %i.gu, align 8, !tbaa !25 ; 2 uses
  %i.jx = load i32, ptr %0, align 8, !tbaa !17
  %i.jy = icmp ne i32 %i.jx, 0                    ; 2 uses
  %.07.i.i115 = select i1 %i.jy, ptr @.str.10, ptr @.str.13
  %i.jz = icmp sgt i32 %i.jw, 0
  br i1 %i.jz, label %.lr.ph.preheader.i.i117, label %emitter_indent.exit.i116

.lr.ph.preheader.i.i117:                          ; preds = %bb.aw
  %i.ka = zext i1 %i.jy to i32
  %.08.i.i118 = shl nuw nsw i32 %i.jw, %i.ka
  br label %.lr.ph.i.i119

.lr.ph.i.i119:                                    ; preds = %.lr.ph.i.i119, %.lr.ph.preheader.i.i117
  %.09.i.i120 = phi i32 [ %i.kb, %.lr.ph.i.i119 ], [ 0, %.lr.ph.preheader.i.i117 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i115)
  %i.kb = add nuw nsw i32 %.09.i.i120, 1          ; 2 uses
  %exitcond.not.i.i121 = icmp eq i32 %i.kb, %.08.i.i118
  br i1 %exitcond.not.i.i121, label %emitter_indent.exit.i116, label %.lr.ph.i.i119, !llvm.loop !26

emitter_indent.exit.i116:                         ; preds = %.lr.ph.i.i119, %bb.aw, %bb.av
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.256)
  br label %emitter_json_array_end.exit

emitter_json_array_end.exit:                      ; preds = %bb.au, %emitter_indent.exit.i116
  br i1 %i.ih, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %emitter_json_array_end.exit
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.446)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %emitter_json_array_end.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stats_arena_hpa_shard_print(ptr nofree noundef nonnull %0, i32 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %i.b = alloca i64, align 8                      ; 11 uses
  %i.c = alloca i64, align 8                      ; 11 uses
  %i.d = alloca i64, align 8                      ; 12 uses
  %i.e = alloca i64, align 8                      ; 12 uses
  %i.f = alloca i64, align 8                      ; 12 uses
  %i.g = alloca i64, align 8                      ; 8 uses
  %i.h = alloca [7 x i64], align 16               ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca [7 x i64], align 16               ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %i.n = alloca [7 x i64], align 16               ; 5 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 4 uses
  %i.q = alloca [7 x i64], align 16               ; 5 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca i64, align 8                      ; 4 uses
  %i.t = alloca [7 x i64], align 16               ; 5 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %i.v = alloca i64, align 8                      ; 4 uses
  %i.w = alloca [7 x i64], align 16               ; 5 uses
  %i.x = alloca i64, align 8                      ; 5 uses
  %i.y = alloca i64, align 8                      ; 4 uses
  %i.z = alloca [7 x i64], align 16               ; 5 uses
  %i.aa = alloca i64, align 8                     ; 5 uses
  %i.ab = alloca i64, align 8                     ; 4 uses
  %i.ac = alloca [7 x i64], align 16              ; 5 uses
  %i.ad = alloca i64, align 8                     ; 5 uses
  %i.ae = alloca i64, align 8                     ; 4 uses
  %i.af = alloca [7 x i64], align 16              ; 5 uses
  %i.ag = alloca i64, align 8                     ; 5 uses
  %i.ah = alloca i64, align 8                     ; 4 uses
  %i.ai = alloca [7 x i64], align 16              ; 5 uses
  %i.aj = alloca i64, align 8                     ; 5 uses
  %i.ak = alloca i64, align 8                     ; 4 uses
  %i.al = alloca [7 x i64], align 16              ; 5 uses
  %i.am = alloca i64, align 8                     ; 5 uses
  %i.an = alloca i64, align 8                     ; 4 uses
  %i.ao = alloca [7 x i64], align 16              ; 5 uses
  %i.ap = alloca i64, align 8                     ; 5 uses
  %i.aq = alloca i64, align 8                     ; 4 uses
  %3 = alloca %struct.emitter_col_s, align 8      ; 12 uses
  %4 = alloca %struct.emitter_col_s, align 8      ; 12 uses
  %5 = alloca %struct.emitter_col_s, align 8      ; 10 uses
  %6 = alloca %struct.emitter_col_s, align 8      ; 10 uses
  %7 = alloca %struct.emitter_col_s, align 8      ; 10 uses
  %8 = alloca %struct.emitter_col_s, align 8      ; 10 uses
  %9 = alloca %struct.emitter_col_s, align 8      ; 10 uses
  %10 = alloca %struct.emitter_col_s, align 8     ; 10 uses
  %11 = alloca %struct.emitter_col_s, align 8     ; 10 uses
  %12 = alloca %struct.emitter_col_s, align 8     ; 10 uses
  %13 = alloca %struct.emitter_col_s, align 8     ; 10 uses
  %14 = alloca %struct.emitter_col_s, align 8     ; 10 uses
  %15 = alloca %struct.emitter_col_s, align 8     ; 10 uses
  %16 = alloca %struct.emitter_col_s, align 8     ; 10 uses
  %17 = alloca %struct.emitter_col_s, align 8     ; 10 uses
  %18 = alloca %struct.emitter_col_s, align 8     ; 10 uses
  %19 = alloca %struct.emitter_col_s, align 8     ; 10 uses
  %20 = alloca %struct.emitter_col_s, align 8     ; 10 uses
  %i.ar = alloca [7 x i64], align 16              ; 12 uses
  %i.as = alloca i64, align 8                     ; 4 uses
  %i.at = alloca i64, align 8                     ; 4 uses
  %i.au = alloca i64, align 8                     ; 4 uses
  %i.av = alloca i64, align 8                     ; 4 uses
  %i.aw = alloca i64, align 8                     ; 4 uses
  %i.ax = alloca i64, align 8                     ; 4 uses
  %i.ay = alloca i64, align 8                     ; 4 uses
  %i.az = alloca i64, align 8                     ; 4 uses
  %i.ba = alloca i64, align 8                     ; 4 uses
  %i.bb = alloca i64, align 8                     ; 4 uses
  %i.bc = alloca i64, align 8                     ; 4 uses
  %i.bd = alloca i64, align 8                     ; 4 uses
  %i.be = alloca i64, align 8                     ; 4 uses
  %i.bf = alloca i64, align 8                     ; 4 uses
  %i.bg = alloca i64, align 8                     ; 5 uses
  %i.bh = alloca i64, align 8                     ; 5 uses
  %i.bi = alloca i64, align 8                     ; 5 uses
  %i.bj = alloca i64, align 8                     ; 6 uses
  %i.bk = alloca i64, align 8                     ; 6 uses
  %i.bl = alloca i64, align 8                     ; 6 uses
  %i.bm = alloca i64, align 8                     ; 4 uses
  %i.bn = alloca i64, align 8                     ; 5 uses
  %i.bo = alloca i64, align 8                     ; 5 uses
  %i.bp = alloca i64, align 8                     ; 5 uses
  %i.bq = alloca i64, align 8                     ; 5 uses
  %i.br = alloca i64, align 8                     ; 5 uses
  %i.bs = alloca i64, align 8                     ; 5 uses
  %i.bt = alloca i64, align 8                     ; 5 uses
  %i.bu = alloca i64, align 8                     ; 5 uses
  %i.bv = alloca [7 x i64], align 16              ; 5 uses
  %i.bw = alloca i64, align 8                     ; 5 uses
  %i.bx = alloca i64, align 8                     ; 4 uses
  %i.by = alloca [7 x i64], align 16              ; 5 uses
  %i.bz = alloca i64, align 8                     ; 5 uses
  %i.ca = alloca i64, align 8                     ; 4 uses
  %i.cb = alloca [7 x i64], align 16              ; 5 uses
  %i.cc = alloca i64, align 8                     ; 5 uses
  %i.cd = alloca i64, align 8                     ; 4 uses
  %i.ce = alloca [7 x i64], align 16              ; 5 uses
  %i.cf = alloca i64, align 8                     ; 5 uses
  %i.cg = alloca i64, align 8                     ; 4 uses
  %i.ch = alloca [7 x i64], align 16              ; 5 uses
  %i.ci = alloca i64, align 8                     ; 5 uses
  %i.cj = alloca i64, align 8                     ; 4 uses
  %i.ck = alloca [7 x i64], align 16              ; 5 uses
  %i.cl = alloca i64, align 8                     ; 5 uses
  %i.cm = alloca i64, align 8                     ; 4 uses
  %i.cn = alloca [7 x i64], align 16              ; 5 uses
  %i.co = alloca i64, align 8                     ; 5 uses
  %i.cp = alloca i64, align 8                     ; 4 uses
  %i.cq = alloca [7 x i64], align 16              ; 5 uses
  %i.cr = alloca i64, align 8                     ; 5 uses
  %i.cs = alloca i64, align 8                     ; 4 uses
  %i.ct = alloca [7 x i64], align 16              ; 5 uses
  %i.cu = alloca i64, align 8                     ; 5 uses
  %i.cv = alloca i64, align 8                     ; 4 uses
  %i.cw = alloca [7 x i64], align 16              ; 5 uses
  %i.cx = alloca i64, align 8                     ; 5 uses
  %i.cy = alloca i64, align 8                     ; 4 uses
  %i.cz = alloca [7 x i64], align 16              ; 5 uses
  %i.da = alloca i64, align 8                     ; 5 uses
  %i.db = alloca i64, align 8                     ; 4 uses
  %i.dc = alloca [7 x i64], align 16              ; 5 uses
  %i.dd = alloca i64, align 8                     ; 5 uses
  %i.de = alloca i64, align 8                     ; 4 uses
  %i.df = alloca [7 x i64], align 16              ; 5 uses
  %i.dg = alloca i64, align 8                     ; 5 uses
  %i.dh = alloca i64, align 8                     ; 4 uses
  %i.di = alloca [7 x i64], align 16              ; 5 uses
  %i.dj = alloca i64, align 8                     ; 5 uses
  %i.dk = alloca i64, align 8                     ; 4 uses
  %i.dl = alloca i64, align 8                     ; 4 uses
  %i.dm = alloca i64, align 8                     ; 4 uses
  %i.dn = alloca i64, align 8                     ; 4 uses
  %i.do = alloca i64, align 8                     ; 4 uses
  %i.dp = alloca i64, align 8                     ; 4 uses
  %i.dq = alloca i64, align 8                     ; 4 uses
  %i.dr = alloca [7 x i64], align 16              ; 5 uses
  %i.ds = alloca i64, align 8                     ; 5 uses
  %i.dt = alloca i64, align 8                     ; 4 uses
  %i.du = alloca [7 x i64], align 16              ; 5 uses
  %i.dv = alloca i64, align 8                     ; 5 uses
  %i.dw = alloca i64, align 8                     ; 4 uses
  %i.dx = alloca [7 x i64], align 16              ; 5 uses
  %i.dy = alloca i64, align 8                     ; 5 uses
  %i.dz = alloca i64, align 8                     ; 4 uses
  %i.ea = alloca [7 x i64], align 16              ; 5 uses
  %i.eb = alloca i64, align 8                     ; 5 uses
  %i.ec = alloca i64, align 8                     ; 4 uses
  %i.ed = alloca [7 x i64], align 16              ; 5 uses
  %i.ee = alloca i64, align 8                     ; 5 uses
  %i.ef = alloca i64, align 8                     ; 4 uses
  %i.eg = alloca [7 x i64], align 16              ; 5 uses
  %i.eh = alloca i64, align 8                     ; 5 uses
  %i.ei = alloca i64, align 8                     ; 4 uses
  tail call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.418)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl) #14
end_hunk_6
begin_hunk_7_@stats_arena_hpa_shard_print:bb.a
  unreachable

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg) #14
  store i64 7, ptr %i.dg, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh) #14
  store i64 8, ptr %i.dh, align 8, !tbaa !12
  %i.hk = call i32 @mallctlnametomib(ptr noundef nonnull @.str.498, ptr noundef nonnull %i.df, ptr noundef nonnull %i.dg) #14
  %.not59.i = icmp eq i32 %i.hk, 0
  br i1 %.not59.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.498) #14
  call void @abort() #15
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.hl = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store i64 %i.ek, ptr %i.hl, align 16, !tbaa !12
  %i.hm = load i64, ptr %i.dg, align 8, !tbaa !12
  %i.hn = call i32 @mallctlbymib(ptr noundef nonnull %i.df, i64 noundef %i.hm, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.dh, ptr noundef null, i64 noundef 0) #14
  %.not60.i = icmp eq i32 %i.hn, 0
  br i1 %.not60.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj) #14
  store i64 7, ptr %i.dj, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk) #14
  store i64 8, ptr %i.dk, align 8, !tbaa !12
  %i.ho = call i32 @mallctlnametomib(ptr noundef nonnull @.str.499, ptr noundef nonnull %i.di, ptr noundef nonnull %i.dj) #14
  %.not61.i = icmp eq i32 %i.ho, 0
  br i1 %.not61.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.499) #14
  call void @abort() #15
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.hp = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i64 %i.ek, ptr %i.hp, align 16, !tbaa !12
  %i.hq = load i64, ptr %i.dj, align 8, !tbaa !12
  %i.hr = call i32 @mallctlbymib(ptr noundef nonnull %i.di, i64 noundef %i.hq, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.dk, ptr noundef null, i64 noundef 0) #14
  %.not62.i = icmp eq i32 %i.hr, 0
  br i1 %.not62.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di) #14
  %i.hs = load i64, ptr %i.bg, align 8, !tbaa !12
  %i.ht = load i64, ptr %i.bn, align 8, !tbaa !12
  %i.hu = load i64, ptr %i.bj, align 8, !tbaa !12
  %i.hv = load i64, ptr %i.bh, align 8, !tbaa !12
  %i.hw = load i64, ptr %i.bo, align 8, !tbaa !12
  %i.hx = load i64, ptr %i.bk, align 8, !tbaa !12
  %i.hy = load i64, ptr %i.bi, align 8, !tbaa !12
  %i.hz = load i64, ptr %i.bp, align 8, !tbaa !12
  %i.ia = load i64, ptr %i.bl, align 8, !tbaa !12
  %i.ib = load i64, ptr %i.bq, align 8, !tbaa !12 ; 4 uses
  %i.ic = icmp eq i64 %2, 0                       ; 5 uses
  %i.id = icmp eq i64 %i.ib, 0
  %or.cond.i.i = or i1 %i.ic, %i.id
  br i1 %or.cond.i.i, label %rate_per_second.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ie = icmp ult i64 %2, 1000000000
  br i1 %i.ie, label %rate_per_second.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.if = udiv i64 %2, 1000000000
  %i.ig = udiv i64 %i.ib, %i.if
  br label %rate_per_second.exit.i

rate_per_second.exit.i:                           ; preds = %bb.cd, %bb.cc, %bb.cb
  %.0.i.i = phi i64 [ %i.ig, %bb.cd ], [ 0, %bb.cb ], [ %i.ib, %bb.cc ]
  %i.ih = load i64, ptr %i.br, align 8, !tbaa !12 ; 4 uses
  %i.ii = icmp eq i64 %i.ih, 0
  %or.cond.i63.i = or i1 %i.ic, %i.ii
  br i1 %or.cond.i63.i, label %rate_per_second.exit65.i, label %bb.ce

bb.ce:                                            ; preds = %rate_per_second.exit.i
  %i.ij = icmp ult i64 %2, 1000000000
  br i1 %i.ij, label %rate_per_second.exit65.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ik = udiv i64 %2, 1000000000
  %i.il = udiv i64 %i.ih, %i.ik
  br label %rate_per_second.exit65.i

rate_per_second.exit65.i:                         ; preds = %bb.cf, %bb.ce, %rate_per_second.exit.i
  %.0.i64.i = phi i64 [ %i.il, %bb.cf ], [ 0, %rate_per_second.exit.i ], [ %i.ih, %bb.ce ]
  %i.im = load i64, ptr %i.bs, align 8, !tbaa !12 ; 4 uses
  %i.in = icmp eq i64 %i.im, 0
  %or.cond.i66.i = or i1 %i.ic, %i.in
  br i1 %or.cond.i66.i, label %rate_per_second.exit68.i, label %bb.cg

bb.cg:                                            ; preds = %rate_per_second.exit65.i
  %i.io = icmp ult i64 %2, 1000000000
  br i1 %i.io, label %rate_per_second.exit68.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ip = udiv i64 %2, 1000000000
  %i.iq = udiv i64 %i.im, %i.ip
  br label %rate_per_second.exit68.i

rate_per_second.exit68.i:                         ; preds = %bb.ch, %bb.cg, %rate_per_second.exit65.i
  %.0.i67.i = phi i64 [ %i.iq, %bb.ch ], [ 0, %rate_per_second.exit65.i ], [ %i.im, %bb.cg ]
  %i.ir = load i64, ptr %i.bt, align 8, !tbaa !12 ; 4 uses
  %i.is = icmp eq i64 %i.ir, 0
  %or.cond.i69.i = or i1 %i.ic, %i.is
  br i1 %or.cond.i69.i, label %rate_per_second.exit71.i, label %bb.ci

bb.ci:                                            ; preds = %rate_per_second.exit68.i
  %i.it = icmp ult i64 %2, 1000000000
  br i1 %i.it, label %rate_per_second.exit71.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.iu = udiv i64 %2, 1000000000
  %i.iv = udiv i64 %i.ir, %i.iu
  br label %rate_per_second.exit71.i

rate_per_second.exit71.i:                         ; preds = %bb.cj, %bb.ci, %rate_per_second.exit68.i
  %.0.i70.i = phi i64 [ %i.iv, %bb.cj ], [ 0, %rate_per_second.exit68.i ], [ %i.ir, %bb.ci ]
  %i.iw = load i64, ptr %i.bu, align 8, !tbaa !12 ; 4 uses
  %i.ix = icmp eq i64 %i.iw, 0
  %or.cond.i72.i = or i1 %i.ic, %i.ix
  br i1 %or.cond.i72.i, label %rate_per_second.exit74.i, label %bb.ck

bb.ck:                                            ; preds = %rate_per_second.exit71.i
  %i.iy = icmp ult i64 %2, 1000000000
  br i1 %i.iy, label %rate_per_second.exit74.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.iz = udiv i64 %2, 1000000000
  %i.ja = udiv i64 %i.iw, %i.iz
  br label %rate_per_second.exit74.i

rate_per_second.exit74.i:                         ; preds = %bb.cl, %bb.ck, %rate_per_second.exit71.i
  %.0.i73.i = phi i64 [ %i.ja, %bb.cl ], [ 0, %rate_per_second.exit71.i ], [ %i.iw, %bb.ck ]
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.500, i64 noundef %i.hs, i64 noundef %i.ht, i64 noundef %i.hu, i64 noundef %i.hv, i64 noundef %i.hw, i64 noundef %i.hx, i64 noundef %i.hy, i64 noundef %i.hz, i64 noundef %i.ia, i64 noundef %i.gl, i64 noundef %i.ib, i64 noundef %.0.i.i, i64 noundef %i.ih, i64 noundef %.0.i64.i, i64 noundef %i.im, i64 noundef %.0.i67.i, i64 noundef %i.ir, i64 noundef %.0.i70.i, i64 noundef %i.iw, i64 noundef %.0.i73.i)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.501, i32 noundef 6, ptr noundef %i.bg)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.502, i32 noundef 6, ptr noundef %i.bh)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.456, i32 noundef 6, ptr noundef %i.bi)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.503, i32 noundef 5, ptr noundef %i.bq)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.504, i32 noundef 5, ptr noundef %i.br)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.505, i32 noundef 5, ptr noundef %i.bs)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.506, i32 noundef 5, ptr noundef %i.bt)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.507, i32 noundef 5, ptr noundef %i.bu)
  call fastcc void @emitter_json_object_kv_begin(ptr noundef nonnull %0, ptr noundef nonnull @.str.508)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.509, i32 noundef 6, ptr noundef %i.bj)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.510, i32 noundef 6, ptr noundef %i.bk)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.511, i32 noundef 6, ptr noundef %i.bl)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.512, i32 noundef 6, ptr noundef %i.bm)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.513, i32 noundef 6, ptr noundef %i.bn)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.514, i32 noundef 6, ptr noundef %i.bo)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.515, i32 noundef 6, ptr noundef %i.bp)
  %.val.i.i = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i.i = icmp ult i32 %.val.i.i, 2
  br i1 %spec.select.i.i.i, label %bb.cm, label %stats_arena_hpa_shard_counters_print.exit

bb.cm:                                            ; preds = %rate_per_second.exit74.i
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !25
  %i.jd = add nsw i32 %i.jc, -1
  store i32 %i.jd, ptr %i.jb, align 8, !tbaa !25
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.je, align 4, !tbaa !23
  %.not.i.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i, label %emitter_indent.exit.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.jf = load i32, ptr %i.jb, align 8, !tbaa !25 ; 2 uses
  %i.jg = load i32, ptr %0, align 8, !tbaa !17
  %i.jh = icmp ne i32 %i.jg, 0                    ; 2 uses
  %.07.i.i.i = select i1 %i.jh, ptr @.str.10, ptr @.str.13
  %i.ji = icmp sgt i32 %i.jf, 0
  br i1 %i.ji, label %.lr.ph.preheader.i.i.i, label %emitter_indent.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.cn
  %i.jj = zext i1 %i.jh to i32
  %.08.i.i.i = shl nuw nsw i32 %i.jf, %i.jj
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.jk, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i.i)
  %i.jk = add nuw nsw i32 %.09.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.jk, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_indent.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !26

emitter_indent.exit.i.i:                          ; preds = %.lr.ph.i.i.i, %bb.cn, %bb.cm
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %stats_arena_hpa_shard_counters_print.exit

stats_arena_hpa_shard_counters_print.exit:        ; preds = %rate_per_second.exit74.i, %emitter_indent.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store i64 7, ptr %i.i, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  store i64 8, ptr %i.j, align 8, !tbaa !12
  %i.jl = call i32 @mallctlnametomib(ptr noundef nonnull @.str.516, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #14
  %.not62.i9 = icmp eq i32 %i.jl, 0
  br i1 %.not62.i9, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %stats_arena_hpa_shard_counters_print.exit
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.516) #14
  call void @abort() #15
  unreachable

bb.cp:                                            ; preds = %stats_arena_hpa_shard_counters_print.exit
  %i.jm = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.ek, ptr %i.jm, align 16, !tbaa !12
  %i.jn = load i64, ptr %i.i, align 8, !tbaa !12
  %i.jo = call i32 @mallctlbymib(ptr noundef nonnull %i.h, i64 noundef %i.jn, ptr noundef nonnull %i.a, ptr noundef nonnull %i.j, ptr noundef null, i64 noundef 0) #14
  %.not63.i = icmp eq i32 %i.jo, 0
  br i1 %.not63.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  store i64 7, ptr %i.l, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  store i64 8, ptr %i.m, align 8, !tbaa !12
  %i.jp = call i32 @mallctlnametomib(ptr noundef nonnull @.str.517, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #14
  %.not64.i = icmp eq i32 %i.jp, 0
  br i1 %.not64.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.517) #14
  call void @abort() #15
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %i.jq = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.ek, ptr %i.jq, align 16, !tbaa !12
  %i.jr = load i64, ptr %i.l, align 8, !tbaa !12
  %i.js = call i32 @mallctlbymib(ptr noundef nonnull %i.k, i64 noundef %i.jr, ptr noundef nonnull %i.b, ptr noundef nonnull %i.m, ptr noundef null, i64 noundef 0) #14
  %.not65.i = icmp eq i32 %i.js, 0
  br i1 %.not65.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  store i64 7, ptr %i.o, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  store i64 8, ptr %i.p, align 8, !tbaa !12
  %i.jt = call i32 @mallctlnametomib(ptr noundef nonnull @.str.518, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #14
  %.not66.i = icmp eq i32 %i.jt, 0
  br i1 %.not66.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.518) #14
  call void @abort() #15
  unreachable

bb.cx:                                            ; preds = %bb.cv
  %i.ju = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.ek, ptr %i.ju, align 16, !tbaa !12
  %i.jv = load i64, ptr %i.o, align 8, !tbaa !12
  %i.jw = call i32 @mallctlbymib(ptr noundef nonnull %i.n, i64 noundef %i.jv, ptr noundef nonnull %i.c, ptr noundef nonnull %i.p, ptr noundef null, i64 noundef 0) #14
  %.not67.i = icmp eq i32 %i.jw, 0
  br i1 %.not67.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #14
  store i64 7, ptr %i.r, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #14
  store i64 8, ptr %i.s, align 8, !tbaa !12
  %i.jx = call i32 @mallctlnametomib(ptr noundef nonnull @.str.519, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r) #14
  %.not68.i = icmp eq i32 %i.jx, 0
  br i1 %.not68.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.519) #14
  call void @abort() #15
  unreachable

bb.db:                                            ; preds = %bb.cz
  %i.jy = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ek, ptr %i.jy, align 16, !tbaa !12
  %i.jz = load i64, ptr %i.r, align 8, !tbaa !12
  %i.ka = call i32 @mallctlbymib(ptr noundef nonnull %i.q, i64 noundef %i.jz, ptr noundef nonnull %i.d, ptr noundef nonnull %i.s, ptr noundef null, i64 noundef 0) #14
  %.not69.i = icmp eq i32 %i.ka, 0
  br i1 %.not69.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.dd:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #14
  store i64 7, ptr %i.u, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #14
  store i64 8, ptr %i.v, align 8, !tbaa !12
  %i.kb = call i32 @mallctlnametomib(ptr noundef nonnull @.str.520, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u) #14
  %.not70.i = icmp eq i32 %i.kb, 0
  br i1 %.not70.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.520) #14
  call void @abort() #15
  unreachable

bb.df:                                            ; preds = %bb.dd
  %i.kc = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.ek, ptr %i.kc, align 16, !tbaa !12
  %i.kd = load i64, ptr %i.u, align 8, !tbaa !12
  %i.ke = call i32 @mallctlbymib(ptr noundef nonnull %i.t, i64 noundef %i.kd, ptr noundef nonnull %i.e, ptr noundef nonnull %i.v, ptr noundef null, i64 noundef 0) #14
  %.not71.i = icmp eq i32 %i.ke, 0
  br i1 %.not71.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.dh:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #14
  store i64 7, ptr %i.x, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #14
  store i64 8, ptr %i.y, align 8, !tbaa !12
  %i.kf = call i32 @mallctlnametomib(ptr noundef nonnull @.str.521, ptr noundef nonnull %i.w, ptr noundef nonnull %i.x) #14
  %.not72.i = icmp eq i32 %i.kf, 0
  br i1 %.not72.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.521) #14
  call void @abort() #15
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.kg = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.ek, ptr %i.kg, align 16, !tbaa !12
  %i.kh = load i64, ptr %i.x, align 8, !tbaa !12
  %i.ki = call i32 @mallctlbymib(ptr noundef nonnull %i.w, i64 noundef %i.kh, ptr noundef nonnull %i.f, ptr noundef nonnull %i.y, ptr noundef null, i64 noundef 0) #14
  %.not73.i = icmp eq i32 %i.ki, 0
  br i1 %.not73.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  %i.kj = load i64, ptr %i.d, align 8, !tbaa !12  ; 2 uses
  %i.kk = shl i64 %i.kj, 9
  %i.kl = load i64, ptr %i.e, align 8, !tbaa !12  ; 2 uses
  %i.km = load i64, ptr %i.f, align 8, !tbaa !12  ; 2 uses
  %i.kn = add i64 %i.kl, %i.km
  %i.ko = sub i64 %i.kk, %i.kn                    ; 2 uses
  store i64 %i.ko, ptr %i.g, align 8, !tbaa !12
  %i.kp = load i64, ptr %i.a, align 8, !tbaa !12
  %i.kq = load i64, ptr %i.b, align 8, !tbaa !12
  %i.kr = load i64, ptr %i.c, align 8, !tbaa !12
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.522, i64 noundef %i.kp, i64 noundef %i.kj, i64 noundef %i.kq, i64 noundef %i.kl, i64 noundef %i.kr, i64 noundef %i.km, i64 noundef %i.ko)
  call fastcc void @emitter_json_object_kv_begin(ptr noundef nonnull %0, ptr noundef nonnull @.str.523)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.513, i32 noundef 6, ptr noundef %i.a)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.514, i32 noundef 6, ptr noundef %i.b)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.515, i32 noundef 6, ptr noundef %i.c)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.509, i32 noundef 6, ptr noundef %i.d)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.510, i32 noundef 6, ptr noundef %i.e)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.511, i32 noundef 6, ptr noundef %i.f)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.512, i32 noundef 6, ptr noundef %i.g)
  %.val.i.i10 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i.i11 = icmp ult i32 %.val.i.i10, 2
  br i1 %spec.select.i.i.i11, label %bb.dm, label %emitter_json_object_end.exit.i

bb.dm:                                            ; preds = %bb.dl
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !25
  %i.ku = add nsw i32 %i.kt, -1
  store i32 %i.ku, ptr %i.ks, align 8, !tbaa !25
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.kv, align 4, !tbaa !23
  %.not.i115.i = icmp eq i32 %.val.i.i10, 1
  br i1 %.not.i115.i, label %emitter_indent.exit.i.i16, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.kw = load i32, ptr %i.ks, align 8, !tbaa !25 ; 2 uses
  %i.kx = load i32, ptr %0, align 8, !tbaa !17
  %i.ky = icmp ne i32 %i.kx, 0                    ; 2 uses
  %.07.i.i.i15 = select i1 %i.ky, ptr @.str.10, ptr @.str.13
  %i.kz = icmp sgt i32 %i.kw, 0
  br i1 %i.kz, label %.lr.ph.preheader.i.i.i17, label %emitter_indent.exit.i.i16

.lr.ph.preheader.i.i.i17:                         ; preds = %bb.dn
  %i.la = zext i1 %i.ky to i32
  %.08.i.i.i18 = shl nuw nsw i32 %i.kw, %i.la
  br label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %.lr.ph.i.i.i19, %.lr.ph.preheader.i.i.i17
  %.09.i.i.i20 = phi i32 [ %i.lb, %.lr.ph.i.i.i19 ], [ 0, %.lr.ph.preheader.i.i.i17 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i.i15)
  %i.lb = add nuw nsw i32 %.09.i.i.i20, 1         ; 2 uses
  %exitcond.not.i.i.i21 = icmp eq i32 %i.lb, %.08.i.i.i18
  br i1 %exitcond.not.i.i.i21, label %emitter_indent.exit.i.i16, label %.lr.ph.i.i.i19, !llvm.loop !26

emitter_indent.exit.i.i16:                        ; preds = %.lr.ph.i.i.i19, %bb.dn, %bb.dm
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit.i

emitter_json_object_end.exit.i:                   ; preds = %emitter_indent.exit.i.i16, %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #14
  store i64 7, ptr %i.aa, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #14
  store i64 8, ptr %i.ab, align 8, !tbaa !12
  %i.lc = call i32 @mallctlnametomib(ptr noundef nonnull @.str.524, ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa) #14
  %.not74.i = icmp eq i32 %i.lc, 0
  br i1 %.not74.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %emitter_json_object_end.exit.i
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.524) #14
  call void @abort() #15
  unreachable

bb.dp:                                            ; preds = %emitter_json_object_end.exit.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.ek, ptr %i.ld, align 16, !tbaa !12
  %i.le = load i64, ptr %i.aa, align 8, !tbaa !12
  %i.lf = call i32 @mallctlbymib(ptr noundef nonnull %i.z, i64 noundef %i.le, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ab, ptr noundef null, i64 noundef 0) #14
  %.not75.i = icmp eq i32 %i.lf, 0
  br i1 %.not75.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.dr:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #14
  store i64 7, ptr %i.ad, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #14
  store i64 8, ptr %i.ae, align 8, !tbaa !12
  %i.lg = call i32 @mallctlnametomib(ptr noundef nonnull @.str.525, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad) #14
  %.not76.i = icmp eq i32 %i.lg, 0
  br i1 %.not76.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.525) #14
  call void @abort() #15
  unreachable

bb.dt:                                            ; preds = %bb.dr
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.ek, ptr %i.lh, align 16, !tbaa !12
  %i.li = load i64, ptr %i.ad, align 8, !tbaa !12
  %i.lj = call i32 @mallctlbymib(ptr noundef nonnull %i.ac, i64 noundef %i.li, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ae, ptr noundef null, i64 noundef 0) #14
  %.not77.i = icmp eq i32 %i.lj, 0
  br i1 %.not77.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #14
  store i64 7, ptr %i.ag, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #14
  store i64 8, ptr %i.ah, align 8, !tbaa !12
  %i.lk = call i32 @mallctlnametomib(ptr noundef nonnull @.str.526, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag) #14
  %.not78.i = icmp eq i32 %i.lk, 0
  br i1 %.not78.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.526) #14
  call void @abort() #15
  unreachable

bb.dx:                                            ; preds = %bb.dv
  %i.ll = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.ek, ptr %i.ll, align 16, !tbaa !12
  %i.lm = load i64, ptr %i.ag, align 8, !tbaa !12
  %i.ln = call i32 @mallctlbymib(ptr noundef nonnull %i.af, i64 noundef %i.lm, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ah, ptr noundef null, i64 noundef 0) #14
  %.not79.i = icmp eq i32 %i.ln, 0
  br i1 %.not79.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.dz:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #14
  store i64 7, ptr %i.aj, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #14
  store i64 8, ptr %i.ak, align 8, !tbaa !12
  %i.lo = call i32 @mallctlnametomib(ptr noundef nonnull @.str.527, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj) #14
  %.not80.i = icmp eq i32 %i.lo, 0
  br i1 %.not80.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.527) #14
  call void @abort() #15
  unreachable

bb.eb:                                            ; preds = %bb.dz
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %i.ek, ptr %i.lp, align 16, !tbaa !12
  %i.lq = load i64, ptr %i.aj, align 8, !tbaa !12
  %i.lr = call i32 @mallctlbymib(ptr noundef nonnull %i.ai, i64 noundef %i.lq, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ak, ptr noundef null, i64 noundef 0) #14
  %.not81.i = icmp eq i32 %i.lr, 0
  br i1 %.not81.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.ed:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #14
  store i64 7, ptr %i.am, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #14
  store i64 8, ptr %i.an, align 8, !tbaa !12
  %i.ls = call i32 @mallctlnametomib(ptr noundef nonnull @.str.528, ptr noundef nonnull %i.al, ptr noundef nonnull %i.am) #14
  %.not82.i = icmp eq i32 %i.ls, 0
  br i1 %.not82.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.528) #14
  call void @abort() #15
  unreachable

bb.ef:                                            ; preds = %bb.ed
  %i.lt = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.ek, ptr %i.lt, align 16, !tbaa !12
  %i.lu = load i64, ptr %i.am, align 8, !tbaa !12
  %i.lv = call i32 @mallctlbymib(ptr noundef nonnull %i.al, i64 noundef %i.lu, ptr noundef nonnull %i.e, ptr noundef nonnull %i.an, ptr noundef null, i64 noundef 0) #14
  %.not83.i = icmp eq i32 %i.lv, 0
  br i1 %.not83.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.eh:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #14
  store i64 7, ptr %i.ap, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #14
  store i64 8, ptr %i.aq, align 8, !tbaa !12
  %i.lw = call i32 @mallctlnametomib(ptr noundef nonnull @.str.529, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap) #14
  %.not84.i = icmp eq i32 %i.lw, 0
  br i1 %.not84.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.529) #14
  call void @abort() #15
  unreachable

bb.ej:                                            ; preds = %bb.eh
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %i.ek, ptr %i.lx, align 16, !tbaa !12
  %i.ly = load i64, ptr %i.ap, align 8, !tbaa !12
  %i.lz = call i32 @mallctlbymib(ptr noundef nonnull %i.ao, i64 noundef %i.ly, ptr noundef nonnull %i.f, ptr noundef nonnull %i.aq, ptr noundef null, i64 noundef 0) #14
  %.not85.i = icmp eq i32 %i.lz, 0
  br i1 %.not85.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @je_malloc_write(ptr noundef nonnull @.str.288) #14
  call void @abort() #15
  unreachable

bb.el:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #14
  %i.ma = load i64, ptr %i.d, align 8, !tbaa !12  ; 2 uses
  %i.mb = shl i64 %i.ma, 9
  %i.mc = load i64, ptr %i.e, align 8, !tbaa !12  ; 2 uses
  %i.md = load i64, ptr %i.f, align 8, !tbaa !12  ; 2 uses
  %i.me = add i64 %i.mc, %i.md
  %i.mf = sub i64 %i.mb, %i.me                    ; 2 uses
  store i64 %i.mf, ptr %i.g, align 8, !tbaa !12
  %i.mg = load i64, ptr %i.a, align 8, !tbaa !12
  %i.mh = load i64, ptr %i.b, align 8, !tbaa !12
  %i.mi = load i64, ptr %i.c, align 8, !tbaa !12
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.530, i64 noundef %i.mg, i64 noundef %i.ma, i64 noundef %i.mh, i64 noundef %i.mc, i64 noundef %i.mi, i64 noundef %i.md, i64 noundef %i.mf)
  call fastcc void @emitter_json_object_kv_begin(ptr noundef nonnull %0, ptr noundef nonnull @.str.531)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.513, i32 noundef 6, ptr noundef %i.a)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.514, i32 noundef 6, ptr noundef %i.b)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.515, i32 noundef 6, ptr noundef %i.c)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.509, i32 noundef 6, ptr noundef %i.d)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.510, i32 noundef 6, ptr noundef %i.e)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.511, i32 noundef 6, ptr noundef %i.f)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.512, i32 noundef 6, ptr noundef %i.g)
  %.val.i116.i = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i117.i = icmp ult i32 %.val.i116.i, 2
  br i1 %spec.select.i.i117.i, label %bb.em, label %emitter_col_init.exit160.i

bb.em:                                            ; preds = %bb.el
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !25
  %i.ml = add nsw i32 %i.mk, -1
  store i32 %i.ml, ptr %i.mj, align 8, !tbaa !25
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.mm, align 4, !tbaa !23
  %.not.i118.i = icmp eq i32 %.val.i116.i, 1
  br i1 %.not.i118.i, label %emitter_indent.exit.i120.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.mn = load i32, ptr %i.mj, align 8, !tbaa !25 ; 2 uses
  %i.mo = load i32, ptr %0, align 8, !tbaa !17
  %i.mp = icmp ne i32 %i.mo, 0                    ; 2 uses
  %.07.i.i119.i = select i1 %i.mp, ptr @.str.10, ptr @.str.13
  %i.mq = icmp sgt i32 %i.mn, 0
  br i1 %i.mq, label %.lr.ph.preheader.i.i121.i, label %emitter_indent.exit.i120.i

.lr.ph.preheader.i.i121.i:                        ; preds = %bb.en
  %i.mr = zext i1 %i.mp to i32
  %.08.i.i122.i = shl nuw nsw i32 %i.mn, %i.mr
  br label %.lr.ph.i.i123.i

.lr.ph.i.i123.i:                                  ; preds = %.lr.ph.i.i123.i, %.lr.ph.preheader.i.i121.i
  %.09.i.i124.i = phi i32 [ %i.ms, %.lr.ph.i.i123.i ], [ 0, %.lr.ph.preheader.i.i121.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i119.i)
  %i.ms = add nuw nsw i32 %.09.i.i124.i, 1        ; 2 uses
  %exitcond.not.i.i125.i = icmp eq i32 %i.ms, %.08.i.i122.i
  br i1 %exitcond.not.i.i125.i, label %emitter_indent.exit.i120.i, label %.lr.ph.i.i123.i, !llvm.loop !26

emitter_indent.exit.i120.i:                       ; preds = %.lr.ph.i.i123.i, %bb.en, %bb.em
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_col_init.exit160.i

emitter_col_init.exit160.i:                       ; preds = %emitter_indent.exit.i120.i, %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.mt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.mu = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %3, align 8, !tbaa !39
  %i.mv = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 20, ptr %i.mv, align 4, !tbaa !42
  %i.mw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 6, ptr %i.mw, align 8, !tbaa !43
  %i.mx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.my = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 1, ptr %4, align 8, !tbaa !39
  %i.mz = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 20, ptr %i.mz, align 4, !tbaa !42
  %i.na = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 9, ptr %i.na, align 8, !tbaa !43
  %i.nb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.228, ptr %i.nb, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.nc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.nd = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %3, ptr %i.nd, align 8, !tbaa !54
  store ptr %5, ptr %i.mt, align 8, !tbaa !44
  store i32 1, ptr %5, align 8, !tbaa !39
  %i.ne = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 4, ptr %i.ne, align 4, !tbaa !42
  %i.nf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.nf, align 8, !tbaa !43
  %i.ng = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.nh = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %4, ptr %i.nh, align 8, !tbaa !54
  store ptr %6, ptr %i.mx, align 8, !tbaa !44
  store i32 1, ptr %6, align 8, !tbaa !39
  %i.ni = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 4, ptr %i.ni, align 4, !tbaa !42
  %i.nj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 9, ptr %i.nj, align 8, !tbaa !43
  %i.nk = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.421, ptr %i.nk, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.nl = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %5, ptr %i.nl, align 8, !tbaa !54
  store ptr %7, ptr %i.nc, align 8, !tbaa !44
  store i32 1, ptr %7, align 8, !tbaa !39
  %i.nm = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 16, ptr %i.nm, align 4, !tbaa !42
  %i.nn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 6, ptr %i.nn, align 8, !tbaa !43
  %i.no = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %6, ptr %i.no, align 8, !tbaa !54
  store ptr %8, ptr %i.ng, align 8, !tbaa !44
  store i32 1, ptr %8, align 8, !tbaa !39
  %i.np = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 16, ptr %i.np, align 4, !tbaa !42
  %i.nq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 9, ptr %i.nq, align 8, !tbaa !43
  %i.nr = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.513, ptr %i.nr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.ns = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %7, ptr %i.ns, align 8, !tbaa !54
  %i.nt = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %9, ptr %i.nt, align 8, !tbaa !44
  store i32 1, ptr %9, align 8, !tbaa !39
  %i.nu = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 16, ptr %i.nu, align 4, !tbaa !42
  %i.nv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 6, ptr %i.nv, align 8, !tbaa !43
  %i.nw = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %8, ptr %i.nw, align 8, !tbaa !54
  %i.nx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %10, ptr %i.nx, align 8, !tbaa !44
  store i32 1, ptr %10, align 8, !tbaa !39
  %i.ny = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 16, ptr %i.ny, align 4, !tbaa !42
  %i.nz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 9, ptr %i.nz, align 8, !tbaa !43
  %i.oa = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr @.str.514, ptr %i.oa, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.ob = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.oc = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %9, ptr %i.oc, align 8, !tbaa !54
  %i.od = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %11, ptr %i.od, align 8, !tbaa !44
  store i32 1, ptr %11, align 8, !tbaa !39
  %i.oe = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 16, ptr %i.oe, align 4, !tbaa !42
  %i.of = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 6, ptr %i.of, align 8, !tbaa !43
  %i.og = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.oh = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %10, ptr %i.oh, align 8, !tbaa !54
  %i.oi = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %12, ptr %i.oi, align 8, !tbaa !44
  store i32 1, ptr %12, align 8, !tbaa !39
  %i.oj = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 16, ptr %i.oj, align 4, !tbaa !42
  %i.ok = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 9, ptr %i.ok, align 8, !tbaa !43
  %i.ol = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr @.str.515, ptr %i.ol, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.om = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.on = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %11, ptr %i.on, align 8, !tbaa !54
  store ptr %13, ptr %i.ob, align 8, !tbaa !44
  store i32 1, ptr %13, align 8, !tbaa !39
  %i.oo = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 20, ptr %i.oo, align 4, !tbaa !42
  %i.op = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 6, ptr %i.op, align 8, !tbaa !43
  %i.oq = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.or = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %12, ptr %i.or, align 8, !tbaa !54
  store ptr %14, ptr %i.og, align 8, !tbaa !44
  store i32 1, ptr %14, align 8, !tbaa !39
  %i.os = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 20, ptr %i.os, align 4, !tbaa !42
  %i.ot = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 9, ptr %i.ot, align 8, !tbaa !43
  %i.ou = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr @.str.509, ptr %i.ou, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %i.ov = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ow = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %13, ptr %i.ow, align 8, !tbaa !54
  store ptr %15, ptr %i.om, align 8, !tbaa !44
  store i32 1, ptr %15, align 8, !tbaa !39
  %i.ox = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 20, ptr %i.ox, align 4, !tbaa !42
  %i.oy = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 6, ptr %i.oy, align 8, !tbaa !43
  %i.oz = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.pa = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %14, ptr %i.pa, align 8, !tbaa !54
  store ptr %16, ptr %i.oq, align 8, !tbaa !44
  store i32 1, ptr %16, align 8, !tbaa !39
  %i.pb = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 20, ptr %i.pb, align 4, !tbaa !42
  %i.pc = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 9, ptr %i.pc, align 8, !tbaa !43
  %i.pd = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr @.str.510, ptr %i.pd, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  %i.pe = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.pf = getelementptr inbounds nuw i8, ptr %17, i64 32
  store ptr %15, ptr %i.pf, align 8, !tbaa !54
  store ptr %17, ptr %i.ov, align 8, !tbaa !44
  store i32 1, ptr %17, align 8, !tbaa !39
  %i.pg = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 20, ptr %i.pg, align 4, !tbaa !42
  %i.ph = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 6, ptr %i.ph, align 8, !tbaa !43
  %i.pi = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.pj = getelementptr inbounds nuw i8, ptr %18, i64 32
  store ptr %16, ptr %i.pj, align 8, !tbaa !54
  store ptr %18, ptr %i.oz, align 8, !tbaa !44
  store i32 1, ptr %18, align 8, !tbaa !39
  %i.pk = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 20, ptr %i.pk, align 4, !tbaa !42
  %i.pl = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 9, ptr %i.pl, align 8, !tbaa !43
  %i.pm = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr @.str.511, ptr %i.pm, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14
  %i.pn = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.po = getelementptr inbounds nuw i8, ptr %19, i64 32
  store ptr %19, ptr %i.mu, align 8, !tbaa !54
  store ptr %17, ptr %i.po, align 8, !tbaa !54
  store ptr %3, ptr %i.pn, align 8, !tbaa !44
  store ptr %19, ptr %i.pe, align 8, !tbaa !44
  store i32 1, ptr %19, align 8, !tbaa !39
  %i.pp = getelementptr inbounds nuw i8, ptr %19, i64 4
  store i32 20, ptr %i.pp, align 4, !tbaa !42
  %i.pq = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 6, ptr %i.pq, align 8, !tbaa !43
  %i.pr = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.ps = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr %20, ptr %i.my, align 8, !tbaa !54
  store ptr %18, ptr %i.ps, align 8, !tbaa !54
  store ptr %4, ptr %i.pr, align 8, !tbaa !44
  store ptr %20, ptr %i.pi, align 8, !tbaa !44
  store i32 1, ptr %20, align 8, !tbaa !39
  %i.pt = getelementptr inbounds nuw i8, ptr %20, i64 4
  store i32 20, ptr %i.pt, align 4, !tbaa !42
  %i.pu = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 9, ptr %i.pu, align 8, !tbaa !43
  %i.pv = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr @.str.512, ptr %i.pv, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as) #14
  store i64 7, ptr %i.as, align 8, !tbaa !12
  %i.pw = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 17 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 920 ; 8 uses
  %i.py = load i8, ptr %i.px, align 8, !tbaa !14
  %.not.i.i12 = icmp eq i8 %i.py, 0
  br i1 %.not.i.i12, label %tsd_fetch_impl.exit.i, label %bb.eo, !prof !32

bb.eo:                                            ; preds = %emitter_col_init.exit160.i
  %i.pz = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.pw, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit.i

tsd_fetch_impl.exit.i:                            ; preds = %bb.eo, %emitter_col_init.exit160.i
  %.0.i.i13 = phi ptr [ %i.pz, %bb.eo ], [ %i.pw, %emitter_col_init.exit160.i ]
  %i.qa = call i32 @je_ctl_mibnametomib(ptr noundef %.0.i.i13, ptr noundef nonnull %i.ar, i64 noundef 0, ptr noundef nonnull @.str.290, ptr noundef nonnull %i.as) #14
  %.not86.i = icmp eq i32 %i.qa, 0
  br i1 %.not86.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %tsd_fetch_impl.exit.i
  call void @je_malloc_write(ptr noundef nonnull @.str.227) #14
  call void @abort() #15
  unreachable

bb.eq:                                            ; preds = %tsd_fetch_impl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #14
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %i.ek, ptr %i.qb, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #14
  store i64 7, ptr %i.at, align 8, !tbaa !12
  %i.qc = load i8, ptr %i.px, align 8, !tbaa !14
  %.not.i94.i = icmp eq i8 %i.qc, 0
  br i1 %.not.i94.i, label %tsd_fetch_impl.exit96.i, label %bb.er, !prof !32

bb.er:                                            ; preds = %bb.eq
  %i.qd = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.pw, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit96.i

tsd_fetch_impl.exit96.i:                          ; preds = %bb.er, %bb.eq
  %.0.i95.i = phi ptr [ %i.qd, %bb.er ], [ %i.pw, %bb.eq ]
  %i.qe = call i32 @je_ctl_mibnametomib(ptr noundef %.0.i95.i, ptr noundef nonnull %i.ar, i64 noundef 3, ptr noundef nonnull @.str.532, ptr noundef nonnull %i.at) #14
  %.not87.i = icmp eq i32 %i.qe, 0
  br i1 %.not87.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %tsd_fetch_impl.exit96.i
  call void @je_malloc_write(ptr noundef nonnull @.str.227) #14
  call void @abort() #15
  unreachable

bb.et:                                            ; preds = %tsd_fetch_impl.exit96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #14
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.533)
  %i.qf = load i32, ptr %0, align 8, !tbaa !17
  %.not.i161.i = icmp eq i32 %i.qf, 2
  br i1 %.not.i161.i, label %select.unfold.i.i, label %emitter_table_row.exit.i

select.unfold.i.i:                                ; preds = %bb.et, %select.unfold.i.i
  %.016.i.i = phi ptr [ %i.qn, %select.unfold.i.i ], [ %4, %bb.et ] ; 5 uses
  %i.qg = load i32, ptr %.016.i.i, align 8, !tbaa !39
  %i.qh = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 4
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !42
  %i.qj = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 8
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !43
  %i.ql = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.qg, i32 noundef %i.qi, i32 noundef %i.qk, ptr noundef nonnull %i.ql)
  %i.qm = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 24
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !44 ; 3 uses
  %.not14.i.i = icmp eq ptr %i.qn, %4
  %.not1317.i.i = icmp eq ptr %i.qn, null
  %.not13.i.i = or i1 %.not14.i.i, %.not1317.i.i
  br i1 %.not13.i.i, label %select.unfold._crit_edge.i.i, label %select.unfold.i.i

select.unfold._crit_edge.i.i:                     ; preds = %select.unfold.i.i
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.12)
  br label %emitter_table_row.exit.i

emitter_table_row.exit.i:                         ; preds = %select.unfold._crit_edge.i.i, %bb.et
  call fastcc void @emitter_json_array_kv_begin(ptr noundef nonnull %0, ptr noundef nonnull @.str.431)
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.qp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.qq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.qr = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.qs = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.qt = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.qu = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.qv = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.qw = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.qx = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  br label %bb.ex

bb.eu:                                            ; preds = %emitter_json_object_end.exit194.i
  %.val.i162.i = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i163.i = icmp ult i32 %.val.i162.i, 2
  br i1 %spec.select.i.i163.i, label %bb.ev, label %emitter_json_array_end.exit.i

bb.ev:                                            ; preds = %bb.eu
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !25
  %i.rc = add nsw i32 %i.rb, -1
  store i32 %i.rc, ptr %i.ra, align 8, !tbaa !25
  store i8 1, ptr %i.qz, align 4, !tbaa !23
  %.not.i164.i = icmp eq i32 %.val.i162.i, 1
  br i1 %.not.i164.i, label %emitter_indent.exit.i166.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.rd = load i32, ptr %i.ra, align 8, !tbaa !25 ; 2 uses
  %i.re = load i32, ptr %0, align 8, !tbaa !17
  %i.rf = icmp ne i32 %i.re, 0                    ; 2 uses
  %.07.i.i165.i = select i1 %i.rf, ptr @.str.10, ptr @.str.13
  %i.rg = icmp sgt i32 %i.rd, 0
  br i1 %i.rg, label %.lr.ph.preheader.i.i167.i, label %emitter_indent.exit.i166.i

.lr.ph.preheader.i.i167.i:                        ; preds = %bb.ew
  %i.rh = zext i1 %i.rf to i32
  %.08.i.i168.i = shl nuw nsw i32 %i.rd, %i.rh
  br label %.lr.ph.i.i169.i

.lr.ph.i.i169.i:                                  ; preds = %.lr.ph.i.i169.i, %.lr.ph.preheader.i.i167.i
  %.09.i.i170.i = phi i32 [ %i.ri, %.lr.ph.i.i169.i ], [ 0, %.lr.ph.preheader.i.i167.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i165.i)
  %i.ri = add nuw nsw i32 %.09.i.i170.i, 1        ; 2 uses
  %exitcond.not.i.i171.i = icmp eq i32 %i.ri, %.08.i.i168.i
  br i1 %exitcond.not.i.i171.i, label %emitter_indent.exit.i166.i, label %.lr.ph.i.i169.i, !llvm.loop !26

emitter_indent.exit.i166.i:                       ; preds = %.lr.ph.i.i169.i, %bb.ew, %bb.ev
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.256)
  br label %emitter_json_array_end.exit.i

emitter_json_array_end.exit.i:                    ; preds = %emitter_indent.exit.i166.i, %bb.eu
  br i1 %i.sk, label %bb.gb, label %stats_arena_hpa_shard_slabs_print.exit

bb.ex:                                            ; preds = %emitter_json_object_end.exit194.i, %emitter_table_row.exit.i
  %indvars.iv.i = phi i64 [ 0, %emitter_table_row.exit.i ], [ %indvars.iv.next.i, %emitter_json_object_end.exit194.i ] ; 4 uses
  %.060230.i = phi i1 [ false, %emitter_table_row.exit.i ], [ %i.sk, %emitter_json_object_end.exit194.i ]
  store i64 %indvars.iv.i, ptr %i.qo, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #14
  store i64 7, ptr %i.au, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #14
  store i64 8, ptr %i.av, align 8, !tbaa !12
  %i.rj = load i8, ptr %i.px, align 8, !tbaa !14
  %.not.i97.i = icmp eq i8 %i.rj, 0
  br i1 %.not.i97.i, label %tsd_fetch_impl.exit99.i, label %bb.ey, !prof !32

bb.ey:                                            ; preds = %bb.ex
  %i.rk = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.pw, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit99.i

tsd_fetch_impl.exit99.i:                          ; preds = %bb.ey, %bb.ex
  %.0.i98.i = phi ptr [ %i.rk, %bb.ey ], [ %i.pw, %bb.ex ]
  %i.rl = call i32 @je_ctl_bymibname(ptr noundef %.0.i98.i, ptr noundef nonnull %i.ar, i64 noundef 6, ptr noundef nonnull @.str.513, ptr noundef nonnull %i.au, ptr noundef nonnull %i.a, ptr noundef nonnull %i.av, ptr noundef null, i64 noundef 0) #14
  %.not88.i = icmp eq i32 %i.rl, 0
  br i1 %.not88.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %tsd_fetch_impl.exit99.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.fa:                                            ; preds = %tsd_fetch_impl.exit99.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #14
  store i64 7, ptr %i.aw, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #14
  store i64 8, ptr %i.ax, align 8, !tbaa !12
  %i.rm = load i8, ptr %i.px, align 8, !tbaa !14
  %.not.i100.i = icmp eq i8 %i.rm, 0
  br i1 %.not.i100.i, label %tsd_fetch_impl.exit102.i, label %bb.fb, !prof !32

bb.fb:                                            ; preds = %bb.fa
  %i.rn = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.pw, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit102.i

tsd_fetch_impl.exit102.i:                         ; preds = %bb.fb, %bb.fa
  %.0.i101.i = phi ptr [ %i.rn, %bb.fb ], [ %i.pw, %bb.fa ]
  %i.ro = call i32 @je_ctl_bymibname(ptr noundef %.0.i101.i, ptr noundef nonnull %i.ar, i64 noundef 6, ptr noundef nonnull @.str.514, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ax, ptr noundef null, i64 noundef 0) #14
  %.not89.i = icmp eq i32 %i.ro, 0
  br i1 %.not89.i, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %tsd_fetch_impl.exit102.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.fd:                                            ; preds = %tsd_fetch_impl.exit102.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #14
  store i64 7, ptr %i.ay, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #14
  store i64 8, ptr %i.az, align 8, !tbaa !12
  %i.rp = load i8, ptr %i.px, align 8, !tbaa !14
  %.not.i103.i = icmp eq i8 %i.rp, 0
  br i1 %.not.i103.i, label %tsd_fetch_impl.exit105.i, label %bb.fe, !prof !32

bb.fe:                                            ; preds = %bb.fd
  %i.rq = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.pw, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit105.i

tsd_fetch_impl.exit105.i:                         ; preds = %bb.fe, %bb.fd
  %.0.i104.i = phi ptr [ %i.rq, %bb.fe ], [ %i.pw, %bb.fd ]
  %i.rr = call i32 @je_ctl_bymibname(ptr noundef %.0.i104.i, ptr noundef nonnull %i.ar, i64 noundef 6, ptr noundef nonnull @.str.515, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.c, ptr noundef nonnull %i.az, ptr noundef null, i64 noundef 0) #14
  %.not90.i = icmp eq i32 %i.rr, 0
  br i1 %.not90.i, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %tsd_fetch_impl.exit105.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.fg:                                            ; preds = %tsd_fetch_impl.exit105.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #14
  store i64 7, ptr %i.ba, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb) #14
  store i64 8, ptr %i.bb, align 8, !tbaa !12
  %i.rs = load i8, ptr %i.px, align 8, !tbaa !14
  %.not.i106.i = icmp eq i8 %i.rs, 0
  br i1 %.not.i106.i, label %tsd_fetch_impl.exit108.i, label %bb.fh, !prof !32

bb.fh:                                            ; preds = %bb.fg
  %i.rt = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.pw, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit108.i

tsd_fetch_impl.exit108.i:                         ; preds = %bb.fh, %bb.fg
  %.0.i107.i = phi ptr [ %i.rt, %bb.fh ], [ %i.pw, %bb.fg ]
  %i.ru = call i32 @je_ctl_bymibname(ptr noundef %.0.i107.i, ptr noundef nonnull %i.ar, i64 noundef 6, ptr noundef nonnull @.str.509, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.d, ptr noundef nonnull %i.bb, ptr noundef null, i64 noundef 0) #14
  %.not91.i = icmp eq i32 %i.ru, 0
  br i1 %.not91.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %tsd_fetch_impl.exit108.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.fj:                                            ; preds = %tsd_fetch_impl.exit108.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc) #14
  store i64 7, ptr %i.bc, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd) #14
  store i64 8, ptr %i.bd, align 8, !tbaa !12
  %i.rv = load i8, ptr %i.px, align 8, !tbaa !14
  %.not.i109.i = icmp eq i8 %i.rv, 0
  br i1 %.not.i109.i, label %tsd_fetch_impl.exit111.i, label %bb.fk, !prof !32

bb.fk:                                            ; preds = %bb.fj
  %i.rw = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.pw, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit111.i

tsd_fetch_impl.exit111.i:                         ; preds = %bb.fk, %bb.fj
  %.0.i110.i = phi ptr [ %i.rw, %bb.fk ], [ %i.pw, %bb.fj ]
  %i.rx = call i32 @je_ctl_bymibname(ptr noundef %.0.i110.i, ptr noundef nonnull %i.ar, i64 noundef 6, ptr noundef nonnull @.str.510, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.e, ptr noundef nonnull %i.bd, ptr noundef null, i64 noundef 0) #14
  %.not92.i = icmp eq i32 %i.rx, 0
  br i1 %.not92.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %tsd_fetch_impl.exit111.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.fm:                                            ; preds = %tsd_fetch_impl.exit111.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be) #14
  store i64 7, ptr %i.be, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf) #14
  store i64 8, ptr %i.bf, align 8, !tbaa !12
  %i.ry = load i8, ptr %i.px, align 8, !tbaa !14
  %.not.i112.i = icmp eq i8 %i.ry, 0
  br i1 %.not.i112.i, label %tsd_fetch_impl.exit114.i, label %bb.fn, !prof !32

bb.fn:                                            ; preds = %bb.fm
  %i.rz = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.pw, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit114.i

tsd_fetch_impl.exit114.i:                         ; preds = %bb.fn, %bb.fm
  %.0.i113.i = phi ptr [ %i.rz, %bb.fn ], [ %i.pw, %bb.fm ]
  %i.sa = call i32 @je_ctl_bymibname(ptr noundef %.0.i113.i, ptr noundef nonnull %i.ar, i64 noundef 6, ptr noundef nonnull @.str.511, ptr noundef nonnull %i.be, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bf, ptr noundef null, i64 noundef 0) #14
  %.not93.i = icmp eq i32 %i.sa, 0
  br i1 %.not93.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %tsd_fetch_impl.exit114.i
  call void @je_malloc_write(ptr noundef nonnull @.str.229) #14
  call void @abort() #15
  unreachable

bb.fp:                                            ; preds = %tsd_fetch_impl.exit114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #14
  %i.sb = load i64, ptr %i.d, align 8, !tbaa !12  ; 3 uses
  %i.sc = shl i64 %i.sb, 9
  %i.sd = load i64, ptr %i.e, align 8, !tbaa !12  ; 2 uses
  %i.se = load i64, ptr %i.f, align 8, !tbaa !12  ; 2 uses
  %i.sf = add i64 %i.sd, %i.se
  %i.sg = sub i64 %i.sc, %i.sf                    ; 2 uses
  store i64 %i.sg, ptr %i.g, align 8, !tbaa !12
  %i.sh = load i64, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %i.si = icmp eq i64 %i.sh, 0
  %i.sj = icmp eq i64 %i.sb, 0
  %i.sk = select i1 %i.si, i1 %i.sj, i1 false     ; 4 uses
  %.not.i14 = xor i1 %.060230.i, true
  %or.cond.i = select i1 %.not.i14, i1 true, i1 %i.sk
  br i1 %or.cond.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.446)
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !12
  %.pre232.i = load i64, ptr %i.d, align 8, !tbaa !12
  %.pre233.i = load i64, ptr %i.e, align 8, !tbaa !12
  %.pre234.i = load i64, ptr %i.f, align 8, !tbaa !12
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.sl = phi i64 [ %.pre234.i, %bb.fq ], [ %i.se, %bb.fp ]
  %i.sm = phi i64 [ %.pre233.i, %bb.fq ], [ %i.sd, %bb.fp ]
  %i.sn = phi i64 [ %.pre232.i, %bb.fq ], [ %i.sb, %bb.fp ]
  %i.so = phi i64 [ %.pre.i, %bb.fq ], [ %i.sh, %bb.fp ]
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr @je_sz_pind2sz_tab, i64 %indvars.iv.i
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !12
  store i64 %i.sq, ptr %i.qp, align 8, !tbaa !14
  store i64 %indvars.iv.i, ptr %i.qq, align 8, !tbaa !14
  store i64 %i.so, ptr %i.qr, align 8, !tbaa !14
  %i.sr = load i64, ptr %i.b, align 8, !tbaa !12
  store i64 %i.sr, ptr %i.qs, align 8, !tbaa !14
  %i.ss = load i64, ptr %i.c, align 8, !tbaa !12
  store i64 %i.ss, ptr %i.qt, align 8, !tbaa !14
  store i64 %i.sn, ptr %i.qu, align 8, !tbaa !14
  store i64 %i.sm, ptr %i.qv, align 8, !tbaa !14
  store i64 %i.sl, ptr %i.qw, align 8, !tbaa !14
  store i64 %i.sg, ptr %i.qx, align 8, !tbaa !14
  br i1 %i.sk, label %emitter_table_row.exit180thread-pre-split.i, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.st = load i32, ptr %0, align 8, !tbaa !17    ; 2 uses
  %.not.i172.i = icmp eq i32 %i.st, 2
  br i1 %.not.i172.i, label %select.unfold.i174.i, label %emitter_table_row.exit180.i

select.unfold.i174.i:                             ; preds = %bb.fs, %select.unfold.i174.i
  %.016.i175.i = phi ptr [ %i.tb, %select.unfold.i174.i ], [ %3, %bb.fs ] ; 5 uses
  %i.su = load i32, ptr %.016.i175.i, align 8, !tbaa !39
  %i.sv = getelementptr inbounds nuw i8, ptr %.016.i175.i, i64 4
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !42
  %i.sx = getelementptr inbounds nuw i8, ptr %.016.i175.i, i64 8
  %i.sy = load i32, ptr %i.sx, align 8, !tbaa !43
  %i.sz = getelementptr inbounds nuw i8, ptr %.016.i175.i, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.su, i32 noundef %i.sw, i32 noundef %i.sy, ptr noundef nonnull %i.sz)
  %i.ta = getelementptr inbounds nuw i8, ptr %.016.i175.i, i64 24
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !44 ; 3 uses
  %.not14.i176.i = icmp eq ptr %i.tb, %3
  %.not1317.i177.i = icmp eq ptr %i.tb, null
  %.not13.i178.i = or i1 %.not14.i176.i, %.not1317.i177.i
  br i1 %.not13.i178.i, label %select.unfold._crit_edge.i179.i, label %select.unfold.i174.i

select.unfold._crit_edge.i179.i:                  ; preds = %select.unfold.i174.i
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.12)
  br label %emitter_table_row.exit180thread-pre-split.i

emitter_table_row.exit180thread-pre-split.i:      ; preds = %select.unfold._crit_edge.i179.i, %bb.fr
  %.val.i181.pr.i = load i32, ptr %0, align 8, !tbaa !17
  br label %emitter_table_row.exit180.i

emitter_table_row.exit180.i:                      ; preds = %emitter_table_row.exit180thread-pre-split.i, %bb.fs
  %.val.i181.i = phi i32 [ %.val.i181.pr.i, %emitter_table_row.exit180thread-pre-split.i ], [ %i.st, %bb.fs ] ; 2 uses
  %spec.select.i.i182.i = icmp ult i32 %.val.i181.i, 2
  br i1 %spec.select.i.i182.i, label %bb.ft, label %emitter_json_object_begin.exit.i

bb.ft:                                            ; preds = %emitter_table_row.exit180.i
  %i.tc = load i8, ptr %i.qy, align 1, !tbaa !24, !range !27, !noundef !28
  %i.td = trunc nuw i8 %i.tc to i1
  br i1 %i.td, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  store i8 0, ptr %i.qy, align 1, !tbaa !24
  br label %emitter_json_key_prefix.exit.i.i

bb.fv:                                            ; preds = %bb.ft
  %i.te = load i8, ptr %i.qz, align 4, !tbaa !23, !range !27, !noundef !28
  %i.tf = trunc nuw i8 %i.te to i1
  br i1 %i.tf, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11)
  %.pre.i183.i = load i32, ptr %0, align 8, !tbaa !17
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.tg = phi i32 [ %.pre.i183.i, %bb.fw ], [ %.val.i181.i, %bb.fv ]
  %.not.i.i.i = icmp eq i32 %i.tg, 1
  br i1 %.not.i.i.i, label %emitter_json_key_prefix.exit.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.th = load i32, ptr %i.ra, align 8, !tbaa !25 ; 2 uses
  %i.ti = load i32, ptr %0, align 8, !tbaa !17
  %i.tj = icmp ne i32 %i.ti, 0                    ; 2 uses
  %.07.i.i.i.i = select i1 %i.tj, ptr @.str.10, ptr @.str.13
  %i.tk = icmp sgt i32 %i.th, 0
  br i1 %i.tk, label %.lr.ph.preheader.i.i.i.i, label %emitter_json_key_prefix.exit.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.fy
  %i.tl = zext i1 %i.tj to i32
  %.08.i.i.i.i = shl nuw nsw i32 %i.th, %i.tl
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.09.i.i.i.i = phi i32 [ %i.tm, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i.i.i)
  %i.tm = add nuw nsw i32 %.09.i.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.tm, %.08.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %emitter_json_key_prefix.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !26

emitter_json_key_prefix.exit.i.i:                 ; preds = %.lr.ph.i.i.i.i, %bb.fy, %bb.fx, %bb.fu
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6)
  %i.tn = load i32, ptr %i.ra, align 8, !tbaa !25
  %i.to = add nsw i32 %i.tn, 1
  store i32 %i.to, ptr %i.ra, align 8, !tbaa !25
  store i8 0, ptr %i.qz, align 4, !tbaa !23
  br label %emitter_json_object_begin.exit.i

emitter_json_object_begin.exit.i:                 ; preds = %emitter_json_key_prefix.exit.i.i, %emitter_table_row.exit180.i
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.513, i32 noundef 6, ptr noundef %i.a)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.514, i32 noundef 6, ptr noundef %i.b)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.515, i32 noundef 6, ptr noundef %i.c)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.509, i32 noundef 6, ptr noundef %i.d)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.510, i32 noundef 6, ptr noundef %i.e)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.511, i32 noundef 6, ptr noundef %i.f)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.512, i32 noundef 6, ptr noundef %i.g)
  %.val.i184.i = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %spec.select.i.i185.i = icmp ult i32 %.val.i184.i, 2
  br i1 %spec.select.i.i185.i, label %bb.fz, label %emitter_json_object_end.exit194.i

bb.fz:                                            ; preds = %emitter_json_object_begin.exit.i
  %i.tp = load i32, ptr %i.ra, align 8, !tbaa !25
  %i.tq = add nsw i32 %i.tp, -1
  store i32 %i.tq, ptr %i.ra, align 8, !tbaa !25
  store i8 1, ptr %i.qz, align 4, !tbaa !23
  %.not.i186.i = icmp eq i32 %.val.i184.i, 1
  br i1 %.not.i186.i, label %emitter_indent.exit.i188.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.tr = load i32, ptr %i.ra, align 8, !tbaa !25 ; 2 uses
  %i.ts = load i32, ptr %0, align 8, !tbaa !17
  %i.tt = icmp ne i32 %i.ts, 0                    ; 2 uses
  %.07.i.i187.i = select i1 %i.tt, ptr @.str.10, ptr @.str.13
  %i.tu = icmp sgt i32 %i.tr, 0
  br i1 %i.tu, label %.lr.ph.preheader.i.i189.i, label %emitter_indent.exit.i188.i

.lr.ph.preheader.i.i189.i:                        ; preds = %bb.ga
  %i.tv = zext i1 %i.tt to i32
  %.08.i.i190.i = shl nuw nsw i32 %i.tr, %i.tv
  br label %.lr.ph.i.i191.i

.lr.ph.i.i191.i:                                  ; preds = %.lr.ph.i.i191.i, %.lr.ph.preheader.i.i189.i
  %.09.i.i192.i = phi i32 [ %i.tw, %.lr.ph.i.i191.i ], [ 0, %.lr.ph.preheader.i.i189.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i187.i)
  %i.tw = add nuw nsw i32 %.09.i.i192.i, 1        ; 2 uses
  %exitcond.not.i.i193.i = icmp eq i32 %i.tw, %.08.i.i190.i
  br i1 %exitcond.not.i.i193.i, label %emitter_indent.exit.i188.i, label %.lr.ph.i.i191.i, !llvm.loop !26

emitter_indent.exit.i188.i:                       ; preds = %.lr.ph.i.i191.i, %bb.ga, %bb.fz
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit194.i

emitter_json_object_end.exit194.i:                ; preds = %emitter_indent.exit.i188.i, %emitter_json_object_begin.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %bb.eu, label %bb.ex, !llvm.loop !59

bb.gb:                                            ; preds = %emitter_json_array_end.exit.i
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.446)
  br label %stats_arena_hpa_shard_slabs_print.exit

stats_arena_hpa_shard_slabs_print.exit:           ; preds = %emitter_json_array_end.exit.i, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.val.i = load i32, ptr %0, align 8, !tbaa !17  ; 2 uses
  %spec.select.i.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i.i, label %bb.gc, label %emitter_json_object_end.exit

bb.gc:                                            ; preds = %stats_arena_hpa_shard_slabs_print.exit
  %i.tx = load i32, ptr %i.ra, align 8, !tbaa !25
  %i.ty = add nsw i32 %i.tx, -1
  store i32 %i.ty, ptr %i.ra, align 8, !tbaa !25
  store i8 1, ptr %i.qz, align 4, !tbaa !23
  %.not.i22 = icmp eq i32 %.val.i, 1
  br i1 %.not.i22, label %emitter_indent.exit.i, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.tz = load i32, ptr %i.ra, align 8, !tbaa !25 ; 2 uses
  %i.ua = load i32, ptr %0, align 8, !tbaa !17
  %i.ub = icmp ne i32 %i.ua, 0                    ; 2 uses
  %.07.i.i = select i1 %i.ub, ptr @.str.10, ptr @.str.13
  %i.uc = icmp sgt i32 %i.tz, 0
  br i1 %i.uc, label %.lr.ph.preheader.i.i, label %emitter_indent.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.gd
  %i.ud = zext i1 %i.ub to i32
  %.08.i.i = shl nuw nsw i32 %i.tz, %i.ud
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi i32 [ %i.ue, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %.07.i.i)
  %i.ue = add nuw nsw i32 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ue, %.08.i.i
  br i1 %exitcond.not.i.i, label %emitter_indent.exit.i, label %.lr.ph.i.i, !llvm.loop !26

emitter_indent.exit.i:                            ; preds = %.lr.ph.i.i, %bb.gd, %bb.gc
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.534)
  br label %emitter_json_object_end.exit

emitter_json_object_end.exit:                     ; preds = %stats_arena_hpa_shard_slabs_print.exit, %emitter_indent.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !10, i64 0}
!14 = !{!10, !10, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !9, i64 0}
!18 = !{!"emitter_s", !9, i64 0, !19, i64 8, !19, i64 16, !9, i64 24, !20, i64 28, !20, i64 29}
!19 = !{!"any pointer", !10, i64 0}
!20 = !{!"_Bool", !10, i64 0}
!21 = !{!18, !19, i64 8}
!22 = !{!18, !19, i64 16}
!23 = !{!18, !20, i64 28}
!24 = !{!18, !20, i64 29}
!25 = !{!18, !9, i64 24}
!26 = distinct !{!26, !16}
!27 = !{i8 0, i8 2}
!28 = !{}
!29 = !{!9, !9, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 omnipotent char", !19, i64 0}
!32 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = !{!36, !38, i64 0}
!36 = !{!"emitter_row_s", !37, i64 0}
!37 = !{!"", !38, i64 0}
!38 = !{!"p1 _ZTS13emitter_col_s", !19, i64 0}
!39 = !{!40, !9, i64 0}
!40 = !{!"emitter_col_s", !9, i64 0, !9, i64 4, !9, i64 8, !10, i64 16, !41, i64 24}
!41 = !{!"", !38, i64 0, !38, i64 8}
!42 = !{!40, !9, i64 4}
!43 = !{!40, !9, i64 8}
!44 = !{!40, !38, i64 24}
!45 = distinct !{!45, !16}
!46 = !{!20, !20, i64 0}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = !{!50, !13, i64 8}
!50 = !{!"counter_accum_s", !51, i64 0, !13, i64 8}
!51 = !{!"locked_u64_s", !52, i64 0}
!52 = !{!"", !13, i64 0}
!53 = distinct !{!53, !16}
!54 = !{!40, !38, i64 32}
!55 = distinct !{!55, !16}
!56 = distinct !{!56, !16}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !16}
!59 = distinct !{!59, !16}
end_hunk_7
