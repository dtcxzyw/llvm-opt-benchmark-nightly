Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/stats?download=true
inline.NumInlined: 411
inline.NumDeleted: 33
begin_hunk_0
@.str.427 = private unnamed_addr constant [55 x i8] c"stats.arenas.0.hpa_shard.full_slabs.npageslabs_nonhuge\00", align 1
@.str.428 = private unnamed_addr constant [52 x i8] c"stats.arenas.0.hpa_shard.full_slabs.nactive_nonhuge\00", align 1
@.str.429 = private unnamed_addr constant [51 x i8] c"stats.arenas.0.hpa_shard.full_slabs.ndirty_nonhuge\00", align 1
@.str.430 = private unnamed_addr constant [171 x i8] c"  In full slabs:\0A      npageslabs: %zu huge, %zu nonhuge\0A      nactive: %zu huge, %zu nonhuge \0A      ndirty: %zu huge, %zu nonhuge \0A      nretained: 0 huge, %zu nonhuge \0A\00", align 1
@.str.431 = private unnamed_addr constant [11 x i8] c"full_slabs\00", align 1
@.str.432 = private unnamed_addr constant [16 x i8] c"npageslabs_huge\00", align 1
@.str.433 = private unnamed_addr constant [13 x i8] c"nactive_huge\00", align 1
@.str.434 = private unnamed_addr constant [19 x i8] c"npageslabs_nonhuge\00", align 1
@.str.435 = private unnamed_addr constant [16 x i8] c"nactive_nonhuge\00", align 1
@.str.436 = private unnamed_addr constant [15 x i8] c"ndirty_nonhuge\00", align 1
@.str.437 = private unnamed_addr constant [53 x i8] c"stats.arenas.0.hpa_shard.empty_slabs.npageslabs_huge\00", align 1
@.str.438 = private unnamed_addr constant [50 x i8] c"stats.arenas.0.hpa_shard.empty_slabs.nactive_huge\00", align 1
@.str.439 = private unnamed_addr constant [49 x i8] c"stats.arenas.0.hpa_shard.empty_slabs.ndirty_huge\00", align 1
@.str.440 = private unnamed_addr constant [56 x i8] c"stats.arenas.0.hpa_shard.empty_slabs.npageslabs_nonhuge\00", align 1
@.str.441 = private unnamed_addr constant [53 x i8] c"stats.arenas.0.hpa_shard.empty_slabs.nactive_nonhuge\00", align 1
@.str.442 = private unnamed_addr constant [52 x i8] c"stats.arenas.0.hpa_shard.empty_slabs.ndirty_nonhuge\00", align 1
@.str.443 = private unnamed_addr constant [173 x i8] c"  In empty slabs:\0A      npageslabs: %zu huge, %zu nonhuge\0A      nactive: %zu huge, %zu nonhuge \0A      ndirty: %zu huge, %zu nonhuge \0A      nretained: 0 huge, %zu nonhuge \0A\0A\00", align 1
@.str.444 = private unnamed_addr constant [12 x i8] c"empty_slabs\00", align 1
@.str.445 = private unnamed_addr constant [12 x i8] c"ndirty_huge\00", align 1
@.str.446 = private unnamed_addr constant [18 x i8] c"nretained_nonhuge\00", align 1
@.str.447 = private unnamed_addr constant [24 x i8] c"hpa_shard.nonfull_slabs\00", align 1
@.str.448 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.449 = private unnamed_addr constant [4 x i8] c"\0A}\0A\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @je_stats_print(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.emitter_s, align 8          ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 1, ptr %i.a, align 8, !tbaa !11
  store i64 8, ptr %i.b, align 8, !tbaa !11
  %i.c = call i32 @je_mallctl(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 8) #14
  switch i32 %i.c, label %bb.c [
    i32 0, label %bb.d
    i32 11, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  call void @je_malloc_write(ptr noundef nonnull @.str.22) #14
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  call void @je_malloc_write(ptr noundef nonnull @.str.23) #14
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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
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
  br label %.preheader, !llvm.loop !14

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
  store i32 %.246, ptr %3, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.h, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 4 uses
  store i8 0, ptr %i.j, align 4, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 0, ptr %i.k, align 1, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  store i32 0, ptr %i.l, align 8, !tbaa !24
  %spec.select.i.i = icmp samesign ult i32 %.246, 2
  br i1 %spec.select.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %select.unfold
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.27)
  store i32 1, ptr %i.l, align 8, !tbaa !24
  store i8 0, ptr %i.j, align 4, !tbaa !22
  br label %emitter_begin.exit

bb.r:                                             ; preds = %select.unfold
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29)
  br label %emitter_begin.exit

emitter_begin.exit:                               ; preds = %bb.q, %bb.r
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %3, ptr noundef nonnull @.str.24)
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %3, ptr noundef nonnull @.str.25)
  br i1 %.243, label %bb.s, label %bb.t

bb.s:                                             ; preds = %emitter_begin.exit
  call fastcc void @stats_general_print(ptr noundef %3) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %emitter_begin.exit
  call fastcc void @stats_print_helper(ptr noundef %3, i1 noundef zeroext %.240, i1 noundef zeroext %.237, i1 noundef zeroext %.234, i1 noundef zeroext %.231, i1 noundef zeroext %.228, i1 noundef zeroext %.225, i1 noundef zeroext %.222, i1 noundef zeroext %.2) #16
  %.val.i52 = load i32, ptr %3, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i53 = icmp ult i32 %.val.i52, 2
  br i1 %spec.select.i.i53, label %bb.u, label %emitter_json_object_end.exit

bb.u:                                             ; preds = %bb.t
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !24
  store i8 1, ptr %i.j, align 4, !tbaa !22
  %.not.i = icmp eq i32 %.val.i52, 1
  br i1 %.not.i, label %emitter_indent.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.33)
  %i.o = load i32, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %i.p = load i32, ptr %3, align 8, !tbaa !16
  %i.q = icmp ne i32 %i.p, 0                      ; 2 uses
  %.07.i.i = select i1 %i.q, ptr @.str.31, ptr @.str.34
  %i.r = icmp sgt i32 %i.o, 0
  br i1 %i.r, label %.lr.ph.preheader.i.i, label %emitter_indent.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.v
  %i.s = zext i1 %i.q to i32
  %.08.i.i = shl nuw nsw i32 %i.o, %i.s
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi i32 [ %i.t, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %3, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i)
  %i.t = add nuw nsw i32 %.09.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.t, %.08.i.i
  br i1 %exitcond.not.i.i, label %emitter_indent.exit.i, label %.lr.ph.i.i, !llvm.loop !25

emitter_indent.exit.i:                            ; preds = %.lr.ph.i.i, %bb.v, %bb.u
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit

emitter_json_object_end.exit:                     ; preds = %bb.t, %emitter_indent.exit.i
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %3, ptr noundef nonnull @.str.26)
  %.val.i54 = load i32, ptr %3, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i55 = icmp ult i32 %.val.i54, 2
  br i1 %spec.select.i.i55, label %bb.w, label %emitter_end.exit

bb.w:                                             ; preds = %emitter_json_object_end.exit
  %i.u = load i32, ptr %i.l, align 8, !tbaa !24
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.l, align 8, !tbaa !24
  store i8 1, ptr %i.j, align 4, !tbaa !22
  %i.w = icmp eq i32 %.val.i54, 1
  %i.x = select i1 %i.w, ptr @.str.448, ptr @.str.449
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.x)
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
declare i32 @je_mallctl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @je_malloc_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @emitter_table_printf(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ...) unnamed_addr #5 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !16
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
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
  %.val.i = load i32, ptr %0, align 8, !tbaa !16  ; 3 uses
  %spec.select.i.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i.i, label %bb.b, label %emitter_json_object_begin.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !23, !range !26, !noundef !27
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 1, !tbaa !23
  br label %emitter_json_key_prefix.exit.i

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i8, ptr %i.d, align 4, !tbaa !22, !range !26, !noundef !27
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.32)
  %.pre.i = load i32, ptr %0, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = phi i32 [ %.pre.i, %bb.e ], [ %.val.i, %bb.d ]
  %.not.i.i = icmp eq i32 %i.g, 1
  br i1 %.not.i.i, label %emitter_json_key_prefix.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.k = icmp ne i32 %i.j, 0                      ; 2 uses
  %.07.i.i.i = select i1 %i.k, ptr @.str.31, ptr @.str.34
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph.preheader.i.i.i, label %emitter_json_key_prefix.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  %i.m = zext i1 %i.k to i32
  %.08.i.i.i = shl nuw nsw i32 %i.i, %i.m
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.n, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i.i)
  %i.n = add nuw nsw i32 %.09.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.n, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_json_key_prefix.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !25

emitter_json_key_prefix.exit.loopexit.i:          ; preds = %.lr.ph.i.i.i
  %.pre6.i = load i32, ptr %0, align 8, !tbaa !16
  br label %emitter_json_key_prefix.exit.i

emitter_json_key_prefix.exit.i:                   ; preds = %emitter_json_key_prefix.exit.loopexit.i, %bb.g, %bb.c
  %i.o = phi i32 [ %.pre6.i, %emitter_json_key_prefix.exit.loopexit.i ], [ %.val.i, %bb.c ], [ %i.j, %bb.g ]
  %.fr.i = freeze i32 %i.o
  %i.p = icmp eq i32 %.fr.i, 1
  br i1 %i.p, label %emitter_json_key_prefix.exit.thread.i, label %emitter_json_key.exit

emitter_json_key_prefix.exit.thread.i:            ; preds = %emitter_json_key_prefix.exit.i, %bb.f
  br label %emitter_json_key.exit

emitter_json_key.exit:                            ; preds = %emitter_json_key_prefix.exit.i, %emitter_json_key_prefix.exit.thread.i
  %i.q = phi ptr [ @.str.29, %emitter_json_key_prefix.exit.thread.i ], [ @.str.31, %emitter_json_key_prefix.exit.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef %1, ptr noundef nonnull %i.q)
  store i8 1, ptr %i.a, align 1, !tbaa !23
  %.val.i3.pr = load i32, ptr %0, align 8, !tbaa !16
  %spec.select.i.i4 = icmp ult i32 %.val.i3.pr, 2
  br i1 %spec.select.i.i4, label %emitter_json_key_prefix.exit.i7, label %emitter_json_object_begin.exit

emitter_json_key_prefix.exit.i7:                  ; preds = %emitter_json_key.exit
  store i8 0, ptr %i.a, align 1, !tbaa !23
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.27)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !24
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.u, align 4, !tbaa !22
  br label %emitter_json_object_begin.exit

emitter_json_object_begin.exit:                   ; preds = %bb.a, %emitter_json_key.exit, %emitter_json_key_prefix.exit.i7
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @stats_general_print(ptr nofree noundef nonnull %0) unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 24 uses
  %i.b = alloca i8, align 1                       ; 68 uses
  %i.c = alloca i8, align 1                       ; 8 uses
  %i.d = alloca i32, align 4                      ; 16 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 16 uses
  %i.i = alloca i64, align 8                      ; 8 uses
  %i.j = alloca i64, align 8                      ; 38 uses
  %i.k = alloca i64, align 8                      ; 28 uses
  %i.l = alloca i64, align 8                      ; 9 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 16 uses
  %i.q = alloca i64, align 8                      ; 11 uses
  %i.r = alloca i64, align 8                      ; 13 uses
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
  %i.ae = alloca ptr, align 8                     ; 4 uses
  %i.af = alloca [21 x i8], align 16              ; 4 uses
  %i.ag = alloca ptr, align 8                     ; 4 uses
  %i.ah = alloca i64, align 8                     ; 4 uses
  %i.ai = alloca i64, align 8                     ; 4 uses
  %i.aj = alloca i64, align 8                     ; 4 uses
  %i.ak = alloca i64, align 8                     ; 4 uses
  %i.al = alloca i64, align 8                     ; 4 uses
  %i.am = alloca i32, align 4                     ; 6 uses
  %i.an = alloca i64, align 8                     ; 4 uses
  %i.ao = alloca i32, align 4                     ; 4 uses
  %i.ap = alloca i64, align 8                     ; 4 uses
  %i.aq = alloca [7 x i64], align 16              ; 8 uses
  %i.ar = alloca i64, align 8                     ; 4 uses
  %i.as = alloca i64, align 8                     ; 4 uses
  %i.at = alloca i64, align 8                     ; 4 uses
  %i.au = alloca i64, align 8                     ; 4 uses
  %i.av = alloca i64, align 8                     ; 4 uses
  %i.aw = alloca i64, align 8                     ; 4 uses
  %i.ax = alloca i64, align 8                     ; 4 uses
  %i.ay = alloca i64, align 8                     ; 4 uses
  %i.az = alloca i64, align 8                     ; 4 uses
  %i.ba = alloca i32, align 4                     ; 6 uses
  %i.bb = alloca i64, align 8                     ; 4 uses
  %i.bc = alloca [7 x i64], align 16              ; 6 uses
  %i.bd = alloca i64, align 8                     ; 4 uses
  %i.be = alloca i64, align 8                     ; 4 uses
  %i.bf = alloca i64, align 8                     ; 4 uses
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
  store i64 1, ptr %i.k, align 8, !tbaa !11
  store i64 4, ptr %i.l, align 8, !tbaa !11
  store i64 8, ptr %i.p, align 8, !tbaa !11
  store i64 8, ptr %i.q, align 8, !tbaa !11
  store i64 8, ptr %i.r, align 8, !tbaa !11
  store i64 4, ptr %i.m, align 8, !tbaa !11
  store i64 8, ptr %i.o, align 8, !tbaa !11
  store i64 8, ptr %i.n, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #14
  store i64 8, ptr %i.s, align 8, !tbaa !11
  %i.bg = call i32 @je_mallctl(ptr noundef nonnull @.str.35, ptr noundef nonnull %i.a, ptr noundef nonnull %i.s, ptr noundef null, i64 noundef 0) #14
  %.not = icmp eq i32 %i.bg, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35) #14
  call void @abort() #15
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.37, i32 noundef 8, ptr noundef nonnull readonly %i.a, ptr noundef null, i32 noundef 0, ptr noundef null)
  call fastcc void @emitter_dict_begin(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #14
  store i64 1, ptr %i.t, align 8, !tbaa !11
  %i.bh = call i32 @je_mallctl(ptr noundef nonnull @.str.40, ptr noundef nonnull %i.b, ptr noundef nonnull %i.t, ptr noundef null, i64 noundef 0) #14
  %.not110 = icmp eq i32 %i.bh, 0
  br i1 %.not110, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.40) #14
  call void @abort() #15
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #14
  store i64 1, ptr %i.u, align 8, !tbaa !11
  %i.bi = call i32 @je_mallctl(ptr noundef nonnull @.str.42, ptr noundef nonnull %i.b, ptr noundef nonnull %i.u, ptr noundef null, i64 noundef 0) #14
  %.not111 = icmp eq i32 %i.bi, 0
  br i1 %.not111, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.42) #14
  call void @abort() #15
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #14
  store i64 1, ptr %i.v, align 8, !tbaa !11
  %i.bj = call i32 @je_mallctl(ptr noundef nonnull @.str.44, ptr noundef nonnull %i.b, ptr noundef nonnull %i.v, ptr noundef null, i64 noundef 0) #14
  %.not112 = icmp eq i32 %i.bj, 0
  br i1 %.not112, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.44) #14
  call void @abort() #15
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #14
  store i64 1, ptr %i.w, align 8, !tbaa !11
  %i.bk = call i32 @je_mallctl(ptr noundef nonnull @.str.46, ptr noundef nonnull %i.b, ptr noundef nonnull %i.w, ptr noundef null, i64 noundef 0) #14
  %.not113 = icmp eq i32 %i.bk, 0
  br i1 %.not113, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.46) #14
  call void @abort() #15
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef 8, ptr noundef nonnull @config_malloc_conf, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #14
  store i64 1, ptr %i.x, align 8, !tbaa !11
  %i.bl = call i32 @je_mallctl(ptr noundef nonnull @.str.50, ptr noundef nonnull %i.b, ptr noundef nonnull %i.x, ptr noundef null, i64 noundef 0) #14
  %.not114 = icmp eq i32 %i.bl, 0
  br i1 %.not114, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.50) #14
  call void @abort() #15
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #14
  store i64 1, ptr %i.y, align 8, !tbaa !11
  %i.bm = call i32 @je_mallctl(ptr noundef nonnull @.str.52, ptr noundef nonnull %i.b, ptr noundef nonnull %i.y, ptr noundef null, i64 noundef 0) #14
  %.not115 = icmp eq i32 %i.bm, 0
  br i1 %.not115, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.52) #14
  call void @abort() #15
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #14
  store i64 1, ptr %i.z, align 8, !tbaa !11
  %i.bn = call i32 @je_mallctl(ptr noundef nonnull @.str.53, ptr noundef nonnull %i.b, ptr noundef nonnull %i.z, ptr noundef null, i64 noundef 0) #14
  %.not116 = icmp eq i32 %i.bn, 0
  br i1 %.not116, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.53) #14
  call void @abort() #15
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #14
  store i64 1, ptr %i.aa, align 8, !tbaa !11
  %i.bo = call i32 @je_mallctl(ptr noundef nonnull @.str.55, ptr noundef nonnull %i.b, ptr noundef nonnull %i.aa, ptr noundef null, i64 noundef 0) #14
  %.not117 = icmp eq i32 %i.bo, 0
  br i1 %.not117, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.55) #14
  call void @abort() #15
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #14
  store i64 1, ptr %i.ab, align 8, !tbaa !11
  %i.bp = call i32 @je_mallctl(ptr noundef nonnull @.str.57, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ab, ptr noundef null, i64 noundef 0) #14
  %.not118 = icmp eq i32 %i.bp, 0
  br i1 %.not118, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.57) #14
  call void @abort() #15
  unreachable

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.57, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #14
  store i64 1, ptr %i.ac, align 8, !tbaa !11
  %i.bq = call i32 @je_mallctl(ptr noundef nonnull @.str.59, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ac, ptr noundef null, i64 noundef 0) #14
  %.not119 = icmp eq i32 %i.bq, 0
  br i1 %.not119, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.59) #14
  call void @abort() #15
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #14
  store i64 1, ptr %i.ad, align 8, !tbaa !11
  %i.br = call i32 @je_mallctl(ptr noundef nonnull @.str.61, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ad, ptr noundef null, i64 noundef 0) #14
  %.not120 = icmp eq i32 %i.br, 0
  br i1 %.not120, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.61) #14
  call void @abort() #15
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  %.val.i = load i32, ptr %0, align 8, !tbaa !16  ; 3 uses
  %spec.select.i.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i.i, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !24
  %i.bu = add nsw i32 %i.bt, -1
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.bv, align 4, !tbaa !22
  %.not.i.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i.i, label %emitter_json_object_end.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.bw = load i32, ptr %i.bs, align 8, !tbaa !24 ; 2 uses
  %i.bx = load i32, ptr %0, align 8, !tbaa !16
  %i.by = icmp ne i32 %i.bx, 0                    ; 2 uses
  %.07.i.i.i = select i1 %i.by, ptr @.str.31, ptr @.str.34
  %i.bz = icmp sgt i32 %i.bw, 0
  br i1 %i.bz, label %.lr.ph.preheader.i.i.i, label %emitter_json_object_end.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.aa
  %i.ca = zext i1 %i.by to i32
  %.08.i.i.i = shl nuw nsw i32 %i.bw, %i.ca
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.cb, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i.i)
  %i.cb = add nuw nsw i32 %.09.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.cb, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_json_object_end.exit.i, label %.lr.ph.i.i.i, !llvm.loop !25

emitter_json_object_end.exit.i:                   ; preds = %.lr.ph.i.i.i, %bb.aa, %bb.z
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_dict_end.exit

bb.ab:                                            ; preds = %bb.y
  %i.cc = icmp eq i32 %.val.i, 2
  br i1 %i.cc, label %bb.ac, label %emitter_dict_end.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !24
  %i.cf = add nsw i32 %i.ce, -1
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.cg, align 4, !tbaa !22
  br label %emitter_dict_end.exit

emitter_dict_end.exit:                            ; preds = %emitter_json_object_end.exit.i, %bb.ab, %bb.ac
  call fastcc void @emitter_dict_begin(ptr noundef %0, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64)
  %i.ch = call i32 @je_mallctl(ptr noundef nonnull @.str.65, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %emitter_dict_end.exit
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %emitter_dict_end.exit
  %i.cj = call i32 @je_mallctl(ptr noundef nonnull @.str.67, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cl = call i32 @je_mallctl(ptr noundef nonnull @.str.69, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.69, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cn = call i32 @je_mallctl(ptr noundef nonnull @.str.70, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.70, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cp = call i32 @je_mallctl(ptr noundef nonnull @.str.72, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.cr = call i32 @je_mallctl(ptr noundef nonnull @.str.74, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r, ptr noundef null, i64 noundef 0) #14
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74, i32 noundef 8, ptr noundef nonnull readonly %i.a, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ct = call i32 @je_mallctl(ptr noundef nonnull @.str.76, ptr noundef nonnull %i.d, ptr noundef nonnull %i.l, ptr noundef null, i64 noundef 0) #14
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.76, i32 noundef 3, ptr noundef nonnull readonly %i.d, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.cv = call i32 @je_mallctl(ptr noundef nonnull @.str.78, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r, ptr noundef null, i64 noundef 0) #14
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.78, i32 noundef 8, ptr noundef nonnull readonly %i.a, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.cx = call i32 @je_mallctl(ptr noundef nonnull @.str.80, ptr noundef nonnull %i.j, ptr noundef nonnull %i.p, ptr noundef null, i64 noundef 0) #14
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i32 noundef 6, ptr noundef nonnull readonly %i.j, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.cz = call i32 @je_mallctl(ptr noundef nonnull @.str.82, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.db = call i32 @je_mallctl(ptr noundef nonnull @.str.84, ptr noundef nonnull %i.j, ptr noundef nonnull %i.p, ptr noundef null, i64 noundef 0) #14
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84, i32 noundef 6, ptr noundef nonnull readonly %i.j, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.dd = call i32 @je_mallctl(ptr noundef nonnull @.str.86, ptr noundef nonnull %i.j, ptr noundef nonnull %i.p, ptr noundef null, i64 noundef 0) #14
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.86, i32 noundef 6, ptr noundef nonnull readonly %i.j, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.df = call i32 @je_mallctl(ptr noundef nonnull @.str.88, ptr noundef nonnull %i.f, ptr noundef nonnull %i.n, ptr noundef null, i64 noundef 0) #14
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88, i32 noundef 5, ptr noundef nonnull readonly %i.f, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.dh = call i32 @je_mallctl(ptr noundef nonnull @.str.90, ptr noundef nonnull %i.f, ptr noundef nonnull %i.n, ptr noundef null, i64 noundef 0) #14
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.90, i32 noundef 5, ptr noundef nonnull readonly %i.f, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.dj = call i32 @je_mallctl(ptr noundef nonnull @.str.92, ptr noundef nonnull %i.e, ptr noundef nonnull %i.m, ptr noundef null, i64 noundef 0) #14
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.dl = load i32, ptr %i.e, align 4, !tbaa !7   ; 2 uses
  %i.dm = icmp eq i32 %i.dl, -1
  br i1 %i.dm, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #14
  store ptr @.str.93, ptr %i.ae, align 8, !tbaa !28
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.92, i32 noundef 8, ptr noundef nonnull readonly %i.ae, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #14
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #14
  call void @je_fxp_print(i32 noundef %i.dl, ptr noundef nonnull %i.af) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #14
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !28
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.92, i32 noundef 8, ptr noundef nonnull readonly %i.ag, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #14
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %bb.be
  %i.dn = call i32 @je_mallctl(ptr noundef nonnull @.str.95, ptr noundef nonnull %i.j, ptr noundef nonnull %i.p, ptr noundef null, i64 noundef 0) #14
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.95, i32 noundef 6, ptr noundef nonnull readonly %i.j, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.dp = call i32 @je_mallctl(ptr noundef nonnull @.str.97, ptr noundef nonnull %i.j, ptr noundef nonnull %i.p, ptr noundef null, i64 noundef 0) #14
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.97, i32 noundef 6, ptr noundef nonnull readonly %i.j, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.dr = call i32 @je_mallctl(ptr noundef nonnull @.str.99, ptr noundef nonnull %i.j, ptr noundef nonnull %i.p, ptr noundef null, i64 noundef 0) #14
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.99, i32 noundef 6, ptr noundef nonnull readonly %i.j, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.bo

end_hunk_0
begin_hunk_1_@stats_general_print:bb.a
  br i1 %i.fw, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.148, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.fx = call i32 @je_mallctl(ptr noundef nonnull @.str.149, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r, ptr noundef null, i64 noundef 0) #14
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.149, i32 noundef 8, ptr noundef nonnull readonly %i.a, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.fz = call i32 @je_mallctl(ptr noundef nonnull @.str.151, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.ds, label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %i.gb = call i32 @je_mallctl(ptr noundef nonnull @.str.152, ptr noundef nonnull %i.c, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  call fastcc void @emitter_kv_note(ptr noundef %0, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.151, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.152, i32 noundef 0, ptr noundef nonnull %i.c)
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds, %bb.dr
  %i.gd = call i32 @je_mallctl(ptr noundef nonnull @.str.154, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.dv, label %bb.dx

bb.dv:                                            ; preds = %bb.du
  %i.gf = call i32 @je_mallctl(ptr noundef nonnull @.str.155, ptr noundef nonnull %i.c, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  call fastcc void @emitter_kv_note(ptr noundef %0, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.154, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.155, i32 noundef 0, ptr noundef nonnull %i.c)
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du
  %i.gh = call i32 @je_mallctl(ptr noundef nonnull @.str.157, ptr noundef nonnull %i.h, ptr noundef nonnull %i.q, ptr noundef null, i64 noundef 0) #14
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.dy, label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  %i.gj = call i32 @je_mallctl(ptr noundef nonnull @.str.158, ptr noundef nonnull %i.i, ptr noundef nonnull %i.q, ptr noundef null, i64 noundef 0) #14
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  call fastcc void @emitter_kv_note(ptr noundef %0, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.157, i32 noundef 7, ptr noundef nonnull %i.h, ptr noundef nonnull @.str.158, i32 noundef 7, ptr noundef nonnull %i.i)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy, %bb.dx
  %i.gl = call i32 @je_mallctl(ptr noundef nonnull @.str.160, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.160, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.gn = call i32 @je_mallctl(ptr noundef nonnull @.str.162, ptr noundef nonnull %i.h, ptr noundef nonnull %i.q, ptr noundef null, i64 noundef 0) #14
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.162, i32 noundef 7, ptr noundef nonnull readonly %i.h, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.gp = call i32 @je_mallctl(ptr noundef nonnull @.str.164, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.164, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.gr = call i32 @je_mallctl(ptr noundef nonnull @.str.166, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.166, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.gt = call i32 @je_mallctl(ptr noundef nonnull @.str.168, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.168, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.gv = call i32 @je_mallctl(ptr noundef nonnull @.str.170, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.170, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.gx = call i32 @je_mallctl(ptr noundef nonnull @.str.172, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.172, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.gz = call i32 @je_mallctl(ptr noundef nonnull @.str.174, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r, ptr noundef null, i64 noundef 0) #14
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.174, i32 noundef 8, ptr noundef nonnull readonly %i.a, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.hb = call i32 @je_mallctl(ptr noundef nonnull @.str.172, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.172, i32 noundef 0, ptr noundef nonnull readonly %i.b, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.hd = call i32 @je_mallctl(ptr noundef nonnull @.str.174, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r, ptr noundef null, i64 noundef 0) #14
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.174, i32 noundef 8, ptr noundef nonnull readonly %i.a, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.hf = call i32 @je_mallctl(ptr noundef nonnull @.str.176, ptr noundef nonnull %i.g, ptr noundef nonnull %i.o, ptr noundef null, i64 noundef 0) #14
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.176, i32 noundef 2, ptr noundef nonnull readonly %i.g, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.hh = call i32 @je_mallctl(ptr noundef nonnull @.str.178, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r, ptr noundef null, i64 noundef 0) #14
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.178, i32 noundef 8, ptr noundef nonnull readonly %i.a, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.hj = call i32 @je_mallctl(ptr noundef nonnull @.str.180, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r, ptr noundef null, i64 noundef 0) #14
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.180, i32 noundef 8, ptr noundef nonnull readonly %i.a, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.val.i155 = load i32, ptr %0, align 8, !tbaa !16 ; 3 uses
  %spec.select.i.i156 = icmp ult i32 %.val.i155, 2
  br i1 %spec.select.i.i156, label %bb.fb, label %bb.fd

bb.fb:                                            ; preds = %bb.fa
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !24
  %i.hn = add nsw i32 %i.hm, -1
  store i32 %i.hn, ptr %i.hl, align 8, !tbaa !24
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.ho, align 4, !tbaa !22
  %.not.i.i157 = icmp eq i32 %.val.i155, 1
  br i1 %.not.i.i157, label %emitter_json_object_end.exit.i159, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.hp = load i32, ptr %i.hl, align 8, !tbaa !24 ; 2 uses
  %i.hq = load i32, ptr %0, align 8, !tbaa !16
  %i.hr = icmp ne i32 %i.hq, 0                    ; 2 uses
  %.07.i.i.i158 = select i1 %i.hr, ptr @.str.31, ptr @.str.34
  %i.hs = icmp sgt i32 %i.hp, 0
  br i1 %i.hs, label %.lr.ph.preheader.i.i.i160, label %emitter_json_object_end.exit.i159

.lr.ph.preheader.i.i.i160:                        ; preds = %bb.fc
  %i.ht = zext i1 %i.hr to i32
  %.08.i.i.i161 = shl nuw nsw i32 %i.hp, %i.ht
  br label %.lr.ph.i.i.i162

.lr.ph.i.i.i162:                                  ; preds = %.lr.ph.i.i.i162, %.lr.ph.preheader.i.i.i160
  %.09.i.i.i163 = phi i32 [ %i.hu, %.lr.ph.i.i.i162 ], [ 0, %.lr.ph.preheader.i.i.i160 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i.i158)
  %i.hu = add nuw nsw i32 %.09.i.i.i163, 1        ; 2 uses
  %exitcond.not.i.i.i164 = icmp eq i32 %i.hu, %.08.i.i.i161
  br i1 %exitcond.not.i.i.i164, label %emitter_json_object_end.exit.i159, label %.lr.ph.i.i.i162, !llvm.loop !25

emitter_json_object_end.exit.i159:                ; preds = %.lr.ph.i.i.i162, %bb.fc, %bb.fb
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_dict_end.exit165

bb.fd:                                            ; preds = %bb.fa
  %i.hv = icmp eq i32 %.val.i155, 2
  br i1 %i.hv, label %bb.fe, label %emitter_dict_end.exit165

bb.fe:                                            ; preds = %bb.fd
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !24
  %i.hy = add nsw i32 %i.hx, -1
  store i32 %i.hy, ptr %i.hw, align 8, !tbaa !24
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.hz, align 4, !tbaa !22
  br label %emitter_dict_end.exit165

emitter_dict_end.exit165:                         ; preds = %emitter_json_object_end.exit.i159, %bb.fd, %bb.fe
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.182)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #14
  store i64 4, ptr %i.ah, align 8, !tbaa !11
  %i.ia = call i32 @je_mallctl(ptr noundef nonnull @.str.183, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ah, ptr noundef null, i64 noundef 0) #14
  %.not121 = icmp eq i32 %i.ia, 0
  br i1 %.not121, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %emitter_dict_end.exit165
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.183) #14
  call void @abort() #15
  unreachable

bb.fg:                                            ; preds = %emitter_dict_end.exit165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.184, i32 noundef 3, ptr noundef nonnull readonly %i.d, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #14
  store i64 8, ptr %i.ai, align 8, !tbaa !11
  %i.ib = call i32 @je_mallctl(ptr noundef nonnull @.str.111, ptr noundef nonnull %i.h, ptr noundef nonnull %i.ai, ptr noundef null, i64 noundef 0) #14
  %.not122 = icmp eq i32 %i.ib, 0
  br i1 %.not122, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.111) #14
  call void @abort() #15
  unreachable

bb.fi:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.112, i32 noundef 7, ptr noundef %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #14
  store i64 8, ptr %i.aj, align 8, !tbaa !11
  %i.ic = call i32 @je_mallctl(ptr noundef nonnull @.str.114, ptr noundef nonnull %i.h, ptr noundef nonnull %i.aj, ptr noundef null, i64 noundef 0) #14
  %.not123 = icmp eq i32 %i.ic, 0
  br i1 %.not123, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.114) #14
  call void @abort() #15
  unreachable

bb.fk:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.115, i32 noundef 7, ptr noundef %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #14
  store i64 8, ptr %i.ak, align 8, !tbaa !11
  %i.id = call i32 @je_mallctl(ptr noundef nonnull @.str.185, ptr noundef nonnull %i.j, ptr noundef nonnull %i.ak, ptr noundef null, i64 noundef 0) #14
  %.not124 = icmp eq i32 %i.id, 0
  br i1 %.not124, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.185) #14
  call void @abort() #15
  unreachable

bb.fm:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187, i32 noundef 6, ptr noundef nonnull readonly %i.j, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #14
  store i64 8, ptr %i.al, align 8, !tbaa !11
  %i.ie = call i32 @je_mallctl(ptr noundef nonnull @.str.188, ptr noundef nonnull %i.j, ptr noundef nonnull %i.al, ptr noundef null, i64 noundef 0) #14
  %.not125 = icmp eq i32 %i.ie, 0
  br i1 %.not125, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.188) #14
  call void @abort() #15
  unreachable

bb.fo:                                            ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190, i32 noundef 6, ptr noundef nonnull readonly %i.j, ptr noundef null, i32 noundef 0, ptr noundef null)
  %i.if = call i32 @je_mallctl(ptr noundef nonnull @.str.191, ptr noundef nonnull %i.j, ptr noundef nonnull %i.p, ptr noundef null, i64 noundef 0) #14
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.192, i32 noundef 6, ptr noundef nonnull readonly %i.j, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #14
  store i64 4, ptr %i.an, align 8, !tbaa !11
  %i.ih = call i32 @je_mallctl(ptr noundef nonnull @.str.193, ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, ptr noundef null, i64 noundef 0) #14
  %.not126 = icmp eq i32 %i.ih, 0
  br i1 %.not126, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.193) #14
  call void @abort() #15
  unreachable

bb.fs:                                            ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.195, i32 noundef 3, ptr noundef nonnull readonly %i.am, ptr noundef null, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #14
  store i64 4, ptr %i.ap, align 8, !tbaa !11
  %i.ii = call i32 @je_mallctl(ptr noundef nonnull @.str.196, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, ptr noundef null, i64 noundef 0) #14
  %.not127 = icmp eq i32 %i.ii, 0
  br i1 %.not127, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.196) #14
  call void @abort() #15
  unreachable

bb.fu:                                            ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.198, i32 noundef 3, ptr noundef nonnull readonly %i.ao, ptr noundef null, i32 noundef 0, ptr noundef null)
  %.val154 = load i32, ptr %0, align 8, !tbaa !16
  %spec.select.i = icmp ult i32 %.val154, 2
  br i1 %spec.select.i, label %bb.fv, label %bb.gw

bb.fv:                                            ; preds = %bb.fu
  call fastcc void @emitter_json_array_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.199)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #14
  store i64 7, ptr %i.ar, align 8, !tbaa !11
  %i.ij = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 11 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 832 ; 5 uses
  %i.il = load i8, ptr %i.ik, align 8, !tbaa !13
  %.not.i = icmp eq i8 %i.il, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.fw, !prof !30

bb.fw:                                            ; preds = %bb.fv
  %i.im = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ij, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.fv, %bb.fw
  %.0.i = phi ptr [ %i.im, %bb.fw ], [ %i.ij, %bb.fv ]
  %i.in = call i32 @je_ctl_mibnametomib(ptr noundef %.0.i, ptr noundef nonnull %i.aq, i64 noundef 0, ptr noundef nonnull @.str.200, ptr noundef nonnull %i.ar) #14
  %.not128 = icmp eq i32 %i.in, 0
  br i1 %.not128, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %tsd_fetch_impl.exit
  call void @je_malloc_write(ptr noundef nonnull @.str.201) #14
  call void @abort() #15
  unreachable

bb.fy:                                            ; preds = %tsd_fetch_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #14
  %i.io = load i32, ptr %i.am, align 4, !tbaa !7
  %.not244 = icmp eq i32 %i.io, 0
  br i1 %.not244, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.fy
  %i.ip = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  br label %bb.gb

._crit_edge:                                      ; preds = %emitter_json_object_end.exit, %bb.fy
  %.val.i166 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i167 = icmp ult i32 %.val.i166, 2
  br i1 %spec.select.i.i167, label %bb.fz, label %emitter_json_array_end.exit

bb.fz:                                            ; preds = %._crit_edge
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !24
  %i.iv = add nsw i32 %i.iu, -1
  store i32 %i.iv, ptr %i.it, align 8, !tbaa !24
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.iw, align 4, !tbaa !22
  %.not.i168 = icmp eq i32 %.val.i166, 1
  br i1 %.not.i168, label %emitter_indent.exit.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.ix = load i32, ptr %i.it, align 8, !tbaa !24 ; 2 uses
  %i.iy = load i32, ptr %0, align 8, !tbaa !16
  %i.iz = icmp ne i32 %i.iy, 0                    ; 2 uses
  %.07.i.i = select i1 %i.iz, ptr @.str.31, ptr @.str.34
  %i.ja = icmp sgt i32 %i.ix, 0
  br i1 %i.ja, label %.lr.ph.preheader.i.i, label %emitter_indent.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ga
  %i.jb = zext i1 %i.iz to i32
  %.08.i.i = shl nuw nsw i32 %i.ix, %i.jb
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi i32 [ %i.jc, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i)
  %i.jc = add nuw nsw i32 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.jc, %.08.i.i
  br i1 %exitcond.not.i.i, label %emitter_indent.exit.i, label %.lr.ph.i.i, !llvm.loop !25

emitter_indent.exit.i:                            ; preds = %.lr.ph.i.i, %bb.ga, %bb.fz
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.229)
  br label %emitter_json_array_end.exit

emitter_json_array_end.exit:                      ; preds = %._crit_edge, %emitter_indent.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #14
  br label %bb.gw

bb.gb:                                            ; preds = %.lr.ph, %emitter_json_object_end.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %emitter_json_object_end.exit ] ; 2 uses
  store i64 %indvars.iv, ptr %i.ip, align 16, !tbaa !11
  %.val.i169 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i170 = icmp ult i32 %.val.i169, 2
  br i1 %spec.select.i.i170, label %bb.gc, label %emitter_json_object_begin.exit

bb.gc:                                            ; preds = %bb.gb
  %i.jd = load i8, ptr %i.iq, align 1, !tbaa !23, !range !26, !noundef !27
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  store i8 0, ptr %i.iq, align 1, !tbaa !23
  br label %emitter_json_key_prefix.exit.i

bb.ge:                                            ; preds = %bb.gc
  %i.jf = load i8, ptr %i.ir, align 4, !tbaa !22, !range !26, !noundef !27
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.32)
  %.pre.i = load i32, ptr %0, align 8, !tbaa !16
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.jh = phi i32 [ %.pre.i, %bb.gf ], [ %.val.i169, %bb.ge ]
  %.not.i.i171 = icmp eq i32 %i.jh, 1
  br i1 %.not.i.i171, label %emitter_json_key_prefix.exit.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.ji = load i32, ptr %i.is, align 8, !tbaa !24 ; 2 uses
  %i.jj = load i32, ptr %0, align 8, !tbaa !16
  %i.jk = icmp ne i32 %i.jj, 0                    ; 2 uses
  %.07.i.i.i172 = select i1 %i.jk, ptr @.str.31, ptr @.str.34
  %i.jl = icmp sgt i32 %i.ji, 0
  br i1 %i.jl, label %.lr.ph.preheader.i.i.i173, label %emitter_json_key_prefix.exit.i

.lr.ph.preheader.i.i.i173:                        ; preds = %bb.gh
  %i.jm = zext i1 %i.jk to i32
  %.08.i.i.i174 = shl nuw nsw i32 %i.ji, %i.jm
  br label %.lr.ph.i.i.i175

.lr.ph.i.i.i175:                                  ; preds = %.lr.ph.i.i.i175, %.lr.ph.preheader.i.i.i173
  %.09.i.i.i176 = phi i32 [ %i.jn, %.lr.ph.i.i.i175 ], [ 0, %.lr.ph.preheader.i.i.i173 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i.i172)
  %i.jn = add nuw nsw i32 %.09.i.i.i176, 1        ; 2 uses
  %exitcond.not.i.i.i177 = icmp eq i32 %i.jn, %.08.i.i.i174
  br i1 %exitcond.not.i.i.i177, label %emitter_json_key_prefix.exit.i, label %.lr.ph.i.i.i175, !llvm.loop !25

emitter_json_key_prefix.exit.i:                   ; preds = %.lr.ph.i.i.i175, %bb.gh, %bb.gg, %bb.gd
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.27)
  %i.jo = load i32, ptr %i.is, align 8, !tbaa !24
  %i.jp = add nsw i32 %i.jo, 1
  store i32 %i.jp, ptr %i.is, align 8, !tbaa !24
  store i8 0, ptr %i.ir, align 4, !tbaa !22
  br label %emitter_json_object_begin.exit

emitter_json_object_begin.exit:                   ; preds = %bb.gb, %emitter_json_key_prefix.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as) #14
  store i64 7, ptr %i.as, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #14
  store i64 8, ptr %i.at, align 8, !tbaa !11
  %i.jq = load i8, ptr %i.ik, align 8, !tbaa !13
  %.not.i136 = icmp eq i8 %i.jq, 0
  br i1 %.not.i136, label %tsd_fetch_impl.exit138, label %bb.gi, !prof !30

bb.gi:                                            ; preds = %emitter_json_object_begin.exit
  %i.jr = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ij, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit138

tsd_fetch_impl.exit138:                           ; preds = %emitter_json_object_begin.exit, %bb.gi
  %.0.i137 = phi ptr [ %i.jr, %bb.gi ], [ %i.ij, %emitter_json_object_begin.exit ]
  %i.js = call i32 @je_ctl_bymibname(ptr noundef %.0.i137, ptr noundef nonnull %i.aq, i64 noundef 3, ptr noundef nonnull @.str.202, ptr noundef nonnull %i.as, ptr noundef nonnull %i.j, ptr noundef nonnull %i.at, ptr noundef null, i64 noundef 0) #14
  %.not132 = icmp eq i32 %i.js, 0
  br i1 %.not132, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %tsd_fetch_impl.exit138
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.gk:                                            ; preds = %tsd_fetch_impl.exit138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.202, i32 noundef 6, ptr noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #14
  store i64 7, ptr %i.au, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #14
  store i64 4, ptr %i.av, align 8, !tbaa !11
  %i.jt = load i8, ptr %i.ik, align 8, !tbaa !13
  %.not.i139 = icmp eq i8 %i.jt, 0
  br i1 %.not.i139, label %tsd_fetch_impl.exit141, label %bb.gl, !prof !30

bb.gl:                                            ; preds = %bb.gk
  %i.ju = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ij, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit141

tsd_fetch_impl.exit141:                           ; preds = %bb.gk, %bb.gl
  %.0.i140 = phi ptr [ %i.ju, %bb.gl ], [ %i.ij, %bb.gk ]
  %i.jv = call i32 @je_ctl_bymibname(ptr noundef %.0.i140, ptr noundef nonnull %i.aq, i64 noundef 3, ptr noundef nonnull @.str.204, ptr noundef nonnull %i.au, ptr noundef nonnull %i.e, ptr noundef nonnull %i.av, ptr noundef null, i64 noundef 0) #14
  %.not133 = icmp eq i32 %i.jv, 0
  br i1 %.not133, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %tsd_fetch_impl.exit141
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.gn:                                            ; preds = %tsd_fetch_impl.exit141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.204, i32 noundef 4, ptr noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #14
  store i64 7, ptr %i.aw, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #14
  store i64 8, ptr %i.ax, align 8, !tbaa !11
  %i.jw = load i8, ptr %i.ik, align 8, !tbaa !13
  %.not.i142 = icmp eq i8 %i.jw, 0
  br i1 %.not.i142, label %tsd_fetch_impl.exit144, label %bb.go, !prof !30

bb.go:                                            ; preds = %bb.gn
  %i.jx = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ij, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit144

tsd_fetch_impl.exit144:                           ; preds = %bb.gn, %bb.go
  %.0.i143 = phi ptr [ %i.jx, %bb.go ], [ %i.ij, %bb.gn ]
  %i.jy = call i32 @je_ctl_bymibname(ptr noundef %.0.i143, ptr noundef nonnull %i.aq, i64 noundef 3, ptr noundef nonnull @.str.205, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.j, ptr noundef nonnull %i.ax, ptr noundef null, i64 noundef 0) #14
  %.not134 = icmp eq i32 %i.jy, 0
  br i1 %.not134, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %tsd_fetch_impl.exit144
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.gq:                                            ; preds = %tsd_fetch_impl.exit144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.205, i32 noundef 6, ptr noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #14
  store i64 7, ptr %i.ay, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #14
  store i64 4, ptr %i.az, align 8, !tbaa !11
  %i.jz = load i8, ptr %i.ik, align 8, !tbaa !13
  %.not.i145 = icmp eq i8 %i.jz, 0
  br i1 %.not.i145, label %tsd_fetch_impl.exit147, label %bb.gr, !prof !30

bb.gr:                                            ; preds = %bb.gq
  %i.ka = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ij, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit147

tsd_fetch_impl.exit147:                           ; preds = %bb.gq, %bb.gr
  %.0.i146 = phi ptr [ %i.ka, %bb.gr ], [ %i.ij, %bb.gq ]
  %i.kb = call i32 @je_ctl_bymibname(ptr noundef %.0.i146, ptr noundef nonnull %i.aq, i64 noundef 3, ptr noundef nonnull @.str.206, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.e, ptr noundef nonnull %i.az, ptr noundef null, i64 noundef 0) #14
  %.not135 = icmp eq i32 %i.kb, 0
  br i1 %.not135, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %tsd_fetch_impl.exit147
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.gt:                                            ; preds = %tsd_fetch_impl.exit147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.206, i32 noundef 4, ptr noundef %i.e)
  %.val.i178 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i179 = icmp ult i32 %.val.i178, 2
  br i1 %spec.select.i.i179, label %bb.gu, label %emitter_json_object_end.exit

bb.gu:                                            ; preds = %bb.gt
  %i.kc = load i32, ptr %i.is, align 8, !tbaa !24
  %i.kd = add nsw i32 %i.kc, -1
  store i32 %i.kd, ptr %i.is, align 8, !tbaa !24
  store i8 1, ptr %i.ir, align 4, !tbaa !22
  %.not.i180 = icmp eq i32 %.val.i178, 1
  br i1 %.not.i180, label %emitter_indent.exit.i182, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.ke = load i32, ptr %i.is, align 8, !tbaa !24 ; 2 uses
  %i.kf = load i32, ptr %0, align 8, !tbaa !16
  %i.kg = icmp ne i32 %i.kf, 0                    ; 2 uses
  %.07.i.i181 = select i1 %i.kg, ptr @.str.31, ptr @.str.34
  %i.kh = icmp sgt i32 %i.ke, 0
  br i1 %i.kh, label %.lr.ph.preheader.i.i183, label %emitter_indent.exit.i182

.lr.ph.preheader.i.i183:                          ; preds = %bb.gv
  %i.ki = zext i1 %i.kg to i32
  %.08.i.i184 = shl nuw nsw i32 %i.ke, %i.ki
  br label %.lr.ph.i.i185

.lr.ph.i.i185:                                    ; preds = %.lr.ph.i.i185, %.lr.ph.preheader.i.i183
  %.09.i.i186 = phi i32 [ %i.kj, %.lr.ph.i.i185 ], [ 0, %.lr.ph.preheader.i.i183 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i181)
  %i.kj = add nuw nsw i32 %.09.i.i186, 1          ; 2 uses
  %exitcond.not.i.i187 = icmp eq i32 %i.kj, %.08.i.i184
  br i1 %exitcond.not.i.i187, label %emitter_indent.exit.i182, label %.lr.ph.i.i185, !llvm.loop !25

emitter_indent.exit.i182:                         ; preds = %.lr.ph.i.i185, %bb.gv, %bb.gu
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit

emitter_json_object_end.exit:                     ; preds = %bb.gt, %emitter_indent.exit.i182
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kk = load i32, ptr %i.am, align 4, !tbaa !7
  %i.kl = zext i32 %i.kk to i64
  %i.km = icmp samesign ult i64 %indvars.iv.next, %i.kl
  br i1 %i.km, label %bb.gb, label %._crit_edge, !llvm.loop !31

bb.gw:                                            ; preds = %emitter_json_array_end.exit, %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb) #14
  store i64 4, ptr %i.bb, align 8, !tbaa !11
  %i.kn = call i32 @je_mallctl(ptr noundef nonnull @.str.207, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, ptr noundef null, i64 noundef 0) #14
  %.not129 = icmp eq i32 %i.kn, 0
  br i1 %.not129, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.207) #14
  call void @abort() #15
  unreachable

bb.gy:                                            ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #14
  call fastcc void @emitter_kv_note(ptr noundef nonnull %0, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.209, i32 noundef 3, ptr noundef nonnull readonly %i.ba, ptr noundef null, i32 noundef 0, ptr noundef null)
  %.val = load i32, ptr %0, align 8, !tbaa !16
  %spec.select.i188 = icmp ult i32 %.val, 2
  br i1 %spec.select.i188, label %bb.gz, label %emitter_json_object_end.exit233

bb.gz:                                            ; preds = %bb.gy
  call fastcc void @emitter_json_array_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.210)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd) #14
  store i64 7, ptr %i.bd, align 8, !tbaa !11
  %i.ko = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 5 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 832 ; 2 uses
  %i.kq = load i8, ptr %i.kp, align 8, !tbaa !13
  %.not.i148 = icmp eq i8 %i.kq, 0
  br i1 %.not.i148, label %tsd_fetch_impl.exit150, label %bb.ha, !prof !30

bb.ha:                                            ; preds = %bb.gz
  %i.kr = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ko, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit150

tsd_fetch_impl.exit150:                           ; preds = %bb.gz, %bb.ha
  %.0.i149 = phi ptr [ %i.kr, %bb.ha ], [ %i.ko, %bb.gz ]
  %i.ks = call i32 @je_ctl_mibnametomib(ptr noundef %.0.i149, ptr noundef nonnull %i.bc, i64 noundef 0, ptr noundef nonnull @.str.211, ptr noundef nonnull %i.bd) #14
  %.not130 = icmp eq i32 %i.ks, 0
  br i1 %.not130, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %tsd_fetch_impl.exit150
  call void @je_malloc_write(ptr noundef nonnull @.str.201) #14
  call void @abort() #15
  unreachable

bb.hc:                                            ; preds = %tsd_fetch_impl.exit150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #14
  %i.kt = load i32, ptr %i.ba, align 4, !tbaa !7
  %.not245 = icmp eq i32 %i.kt, 0
  br i1 %.not245, label %._crit_edge243, label %.lr.ph242

.lr.ph242:                                        ; preds = %bb.hc
  %i.ku = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  br label %bb.hf

._crit_edge243:                                   ; preds = %emitter_json_object_end.exit222, %bb.hc
  %.val.i189 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i190 = icmp ult i32 %.val.i189, 2
  br i1 %spec.select.i.i190, label %bb.hd, label %.thread236

.thread236:                                       ; preds = %._crit_edge243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #14
  br label %emitter_json_object_end.exit233

bb.hd:                                            ; preds = %._crit_edge243
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !24
  %i.la = add nsw i32 %i.kz, -1
  store i32 %i.la, ptr %i.ky, align 8, !tbaa !24
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i8 1, ptr %i.lb, align 4, !tbaa !22
  %.not.i191 = icmp eq i32 %.val.i189, 1
  br i1 %.not.i191, label %.loopexit, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.lc = load i32, ptr %i.ky, align 8, !tbaa !24 ; 2 uses
  %i.ld = load i32, ptr %0, align 8, !tbaa !16
  %i.le = icmp ne i32 %i.ld, 0                    ; 2 uses
  %.07.i.i192 = select i1 %i.le, ptr @.str.31, ptr @.str.34
  %i.lf = icmp sgt i32 %i.lc, 0
  br i1 %i.lf, label %.lr.ph.preheader.i.i194, label %.loopexit

.lr.ph.preheader.i.i194:                          ; preds = %bb.he
  %i.lg = zext i1 %i.le to i32
  %.08.i.i195 = shl nuw nsw i32 %i.lc, %i.lg
  br label %.lr.ph.i.i196

.lr.ph.i.i196:                                    ; preds = %.lr.ph.i.i196, %.lr.ph.preheader.i.i194
  %.09.i.i197 = phi i32 [ %i.lh, %.lr.ph.i.i196 ], [ 0, %.lr.ph.preheader.i.i194 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i192)
  %i.lh = add nuw nsw i32 %.09.i.i197, 1          ; 2 uses
  %exitcond.not.i.i198 = icmp eq i32 %i.lh, %.08.i.i195
  br i1 %exitcond.not.i.i198, label %.loopexit, label %.lr.ph.i.i196, !llvm.loop !25

bb.hf:                                            ; preds = %.lr.ph242, %emitter_json_object_end.exit222
  %indvars.iv247 = phi i64 [ 0, %.lr.ph242 ], [ %indvars.iv.next248, %emitter_json_object_end.exit222 ] ; 2 uses
  store i64 %indvars.iv247, ptr %i.ku, align 16, !tbaa !11
  %.val.i200 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i201 = icmp ult i32 %.val.i200, 2
  br i1 %spec.select.i.i201, label %bb.hg, label %emitter_json_object_begin.exit211

bb.hg:                                            ; preds = %bb.hf
  %i.li = load i8, ptr %i.kv, align 1, !tbaa !23, !range !26, !noundef !27
  %i.lj = trunc nuw i8 %i.li to i1
  br i1 %i.lj, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  store i8 0, ptr %i.kv, align 1, !tbaa !23
  br label %emitter_json_key_prefix.exit.i204

bb.hi:                                            ; preds = %bb.hg
  %i.lk = load i8, ptr %i.kw, align 4, !tbaa !22, !range !26, !noundef !27
  %i.ll = trunc nuw i8 %i.lk to i1
  br i1 %i.ll, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.32)
  %.pre.i210 = load i32, ptr %0, align 8, !tbaa !16
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %i.lm = phi i32 [ %.pre.i210, %bb.hj ], [ %.val.i200, %bb.hi ]
  %.not.i.i202 = icmp eq i32 %i.lm, 1
  br i1 %.not.i.i202, label %emitter_json_key_prefix.exit.i204, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.ln = load i32, ptr %i.kx, align 8, !tbaa !24 ; 2 uses
  %i.lo = load i32, ptr %0, align 8, !tbaa !16
  %i.lp = icmp ne i32 %i.lo, 0                    ; 2 uses
  %.07.i.i.i203 = select i1 %i.lp, ptr @.str.31, ptr @.str.34
  %i.lq = icmp sgt i32 %i.ln, 0
  br i1 %i.lq, label %.lr.ph.preheader.i.i.i205, label %emitter_json_key_prefix.exit.i204

.lr.ph.preheader.i.i.i205:                        ; preds = %bb.hl
  %i.lr = zext i1 %i.lp to i32
  %.08.i.i.i206 = shl nuw nsw i32 %i.ln, %i.lr
  br label %.lr.ph.i.i.i207

.lr.ph.i.i.i207:                                  ; preds = %.lr.ph.i.i.i207, %.lr.ph.preheader.i.i.i205
  %.09.i.i.i208 = phi i32 [ %i.ls, %.lr.ph.i.i.i207 ], [ 0, %.lr.ph.preheader.i.i.i205 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i.i203)
  %i.ls = add nuw nsw i32 %.09.i.i.i208, 1        ; 2 uses
  %exitcond.not.i.i.i209 = icmp eq i32 %i.ls, %.08.i.i.i206
  br i1 %exitcond.not.i.i.i209, label %emitter_json_key_prefix.exit.i204, label %.lr.ph.i.i.i207, !llvm.loop !25

emitter_json_key_prefix.exit.i204:                ; preds = %.lr.ph.i.i.i207, %bb.hl, %bb.hk, %bb.hh
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.27)
  %i.lt = load i32, ptr %i.kx, align 8, !tbaa !24
  %i.lu = add nsw i32 %i.lt, 1
  store i32 %i.lu, ptr %i.kx, align 8, !tbaa !24
  store i8 0, ptr %i.kw, align 4, !tbaa !22
  br label %emitter_json_object_begin.exit211

emitter_json_object_begin.exit211:                ; preds = %bb.hf, %emitter_json_key_prefix.exit.i204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be) #14
  store i64 7, ptr %i.be, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf) #14
  store i64 8, ptr %i.bf, align 8, !tbaa !11
  %i.lv = load i8, ptr %i.kp, align 8, !tbaa !13
  %.not.i151 = icmp eq i8 %i.lv, 0
  br i1 %.not.i151, label %tsd_fetch_impl.exit153, label %bb.hm, !prof !30

bb.hm:                                            ; preds = %emitter_json_object_begin.exit211
  %i.lw = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ko, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit153

tsd_fetch_impl.exit153:                           ; preds = %emitter_json_object_begin.exit211, %bb.hm
  %.0.i152 = phi ptr [ %i.lw, %bb.hm ], [ %i.ko, %emitter_json_object_begin.exit211 ]
  %i.lx = call i32 @je_ctl_bymibname(ptr noundef %.0.i152, ptr noundef nonnull %i.bc, i64 noundef 3, ptr noundef nonnull @.str.202, ptr noundef nonnull %i.be, ptr noundef nonnull %i.j, ptr noundef nonnull %i.bf, ptr noundef null, i64 noundef 0) #14
  %.not131 = icmp eq i32 %i.lx, 0
  br i1 %.not131, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %tsd_fetch_impl.exit153
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.ho:                                            ; preds = %tsd_fetch_impl.exit153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.202, i32 noundef 6, ptr noundef %i.j)
  %.val.i212 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i213 = icmp ult i32 %.val.i212, 2
  br i1 %spec.select.i.i213, label %bb.hp, label %emitter_json_object_end.exit222

bb.hp:                                            ; preds = %bb.ho
  %i.ly = load i32, ptr %i.kx, align 8, !tbaa !24
  %i.lz = add nsw i32 %i.ly, -1
  store i32 %i.lz, ptr %i.kx, align 8, !tbaa !24
  store i8 1, ptr %i.kw, align 4, !tbaa !22
  %.not.i214 = icmp eq i32 %.val.i212, 1
  br i1 %.not.i214, label %emitter_indent.exit.i216, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.ma = load i32, ptr %i.kx, align 8, !tbaa !24 ; 2 uses
  %i.mb = load i32, ptr %0, align 8, !tbaa !16
  %i.mc = icmp ne i32 %i.mb, 0                    ; 2 uses
  %.07.i.i215 = select i1 %i.mc, ptr @.str.31, ptr @.str.34
  %i.md = icmp sgt i32 %i.ma, 0
  br i1 %i.md, label %.lr.ph.preheader.i.i217, label %emitter_indent.exit.i216

.lr.ph.preheader.i.i217:                          ; preds = %bb.hq
  %i.me = zext i1 %i.mc to i32
  %.08.i.i218 = shl nuw nsw i32 %i.ma, %i.me
  br label %.lr.ph.i.i219

.lr.ph.i.i219:                                    ; preds = %.lr.ph.i.i219, %.lr.ph.preheader.i.i217
  %.09.i.i220 = phi i32 [ %i.mf, %.lr.ph.i.i219 ], [ 0, %.lr.ph.preheader.i.i217 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i215)
  %i.mf = add nuw nsw i32 %.09.i.i220, 1          ; 2 uses
  %exitcond.not.i.i221 = icmp eq i32 %i.mf, %.08.i.i218
  br i1 %exitcond.not.i.i221, label %emitter_indent.exit.i216, label %.lr.ph.i.i219, !llvm.loop !25

emitter_indent.exit.i216:                         ; preds = %.lr.ph.i.i219, %bb.hq, %bb.hp
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit222

emitter_json_object_end.exit222:                  ; preds = %bb.ho, %emitter_indent.exit.i216
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %i.mg = load i32, ptr %i.ba, align 4, !tbaa !7
  %i.mh = zext i32 %i.mg to i64
  %i.mi = icmp samesign ult i64 %indvars.iv.next248, %i.mh
  br i1 %i.mi, label %bb.hf, label %._crit_edge243, !llvm.loop !32

.loopexit:                                        ; preds = %.lr.ph.i.i196, %bb.hd, %bb.he
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.229)
  %.val.i223.pr.pr = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #14
  %spec.select.i.i224 = icmp ult i32 %.val.i223.pr.pr, 2
  br i1 %spec.select.i.i224, label %bb.hr, label %emitter_json_object_end.exit233

bb.hr:                                            ; preds = %.loopexit
  %i.mj = load i32, ptr %i.ky, align 8, !tbaa !24
  %i.mk = add nsw i32 %i.mj, -1
  store i32 %i.mk, ptr %i.ky, align 8, !tbaa !24
  store i8 1, ptr %i.lb, align 4, !tbaa !22
  %.not.i225 = icmp eq i32 %.val.i223.pr.pr, 1
  br i1 %.not.i225, label %emitter_indent.exit.i227, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.ml = load i32, ptr %i.ky, align 8, !tbaa !24 ; 2 uses
  %i.mm = load i32, ptr %0, align 8, !tbaa !16
  %i.mn = icmp ne i32 %i.mm, 0                    ; 2 uses
  %.07.i.i226 = select i1 %i.mn, ptr @.str.31, ptr @.str.34
  %i.mo = icmp sgt i32 %i.ml, 0
  br i1 %i.mo, label %.lr.ph.preheader.i.i228, label %emitter_indent.exit.i227

.lr.ph.preheader.i.i228:                          ; preds = %bb.hs
  %i.mp = zext i1 %i.mn to i32
  %.08.i.i229 = shl nuw nsw i32 %i.ml, %i.mp
  br label %.lr.ph.i.i230

.lr.ph.i.i230:                                    ; preds = %.lr.ph.i.i230, %.lr.ph.preheader.i.i228
  %.09.i.i231 = phi i32 [ %i.mq, %.lr.ph.i.i230 ], [ 0, %.lr.ph.preheader.i.i228 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i226)
  %i.mq = add nuw nsw i32 %.09.i.i231, 1          ; 2 uses
  %exitcond.not.i.i232 = icmp eq i32 %i.mq, %.08.i.i229
  br i1 %exitcond.not.i.i232, label %emitter_indent.exit.i227, label %.lr.ph.i.i230, !llvm.loop !25

emitter_indent.exit.i227:                         ; preds = %.lr.ph.i.i230, %bb.hs, %bb.hr
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit233

emitter_json_object_end.exit233:                  ; preds = %bb.gy, %.thread236, %.loopexit, %emitter_indent.exit.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #14
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
  %i.aa = alloca i64, align 8                     ; 4 uses
  %i.ab = alloca i64, align 8                     ; 4 uses
  %i.ac = alloca i64, align 8                     ; 4 uses
  %i.ad = alloca i64, align 8                     ; 4 uses
  %i.ae = alloca i64, align 8                     ; 4 uses
  %i.af = alloca i64, align 8                     ; 4 uses
  %i.ag = alloca i64, align 8                     ; 4 uses
  %i.ah = alloca i64, align 8                     ; 4 uses
  %i.ai = alloca i64, align 8                     ; 4 uses
  %i.aj = alloca i64, align 8                     ; 4 uses
  %i.ak = alloca i64, align 8                     ; 4 uses
  %9 = alloca %struct.emitter_row_s, align 8      ; 6 uses
  %10 = alloca %struct.emitter_col_s, align 8     ; 4 uses
  %11 = alloca [11 x %struct.emitter_col_s], align 16 ; 26 uses
  %12 = alloca [1 x %struct.emitter_col_s], align 16 ; 6 uses
  %i.al = alloca i64, align 8                     ; 4 uses
  %i.am = alloca [7 x i64], align 16              ; 5 uses
  %i.an = alloca i64, align 8                     ; 5 uses
  %i.ao = alloca i64, align 8                     ; 4 uses
  %i.ap = alloca [7 x i64], align 16              ; 11 uses
  %i.aq = alloca i64, align 8                     ; 4 uses
  %i.ar = alloca i32, align 4                     ; 8 uses
  %i.as = alloca i64, align 8                     ; 4 uses
  %i.at = alloca [3 x i64], align 16              ; 7 uses
  %i.au = alloca i64, align 8                     ; 6 uses
  %i.av = alloca i64, align 8                     ; 6 uses
  %i.aw = alloca i8, align 1                      ; 4 uses
  %i.ax = alloca [20 x i8], align 16              ; 5 uses
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
  store i64 8, ptr %i.aa, align 8, !tbaa !11
  %i.ay = call i32 @je_mallctl(ptr noundef nonnull @.str.230, ptr noundef nonnull %i.p, ptr noundef nonnull %i.aa, ptr noundef null, i64 noundef 0) #14
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.230) #14
  call void @abort() #15
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #14
  store i64 8, ptr %i.ab, align 8, !tbaa !11
  %i.az = call i32 @je_mallctl(ptr noundef nonnull @.str.231, ptr noundef nonnull %i.q, ptr noundef nonnull %i.ab, ptr noundef null, i64 noundef 0) #14
  %.not87 = icmp eq i32 %i.az, 0
  br i1 %.not87, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.231) #14
  call void @abort() #15
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #14
  store i64 8, ptr %i.ac, align 8, !tbaa !11
  %i.ba = call i32 @je_mallctl(ptr noundef nonnull @.str.232, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ac, ptr noundef null, i64 noundef 0) #14
  %.not88 = icmp eq i32 %i.ba, 0
  br i1 %.not88, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.232) #14
  call void @abort() #15
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #14
  store i64 8, ptr %i.ad, align 8, !tbaa !11
  %i.bb = call i32 @je_mallctl(ptr noundef nonnull @.str.233, ptr noundef nonnull %i.s, ptr noundef nonnull %i.ad, ptr noundef null, i64 noundef 0) #14
  %.not89 = icmp eq i32 %i.bb, 0
  br i1 %.not89, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.233) #14
  call void @abort() #15
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #14
  store i64 8, ptr %i.ae, align 8, !tbaa !11
  %i.bc = call i32 @je_mallctl(ptr noundef nonnull @.str.234, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ae, ptr noundef null, i64 noundef 0) #14
  %.not90 = icmp eq i32 %i.bc, 0
  br i1 %.not90, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.234) #14
  call void @abort() #15
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #14
  store i64 8, ptr %i.af, align 8, !tbaa !11
  %i.bd = call i32 @je_mallctl(ptr noundef nonnull @.str.235, ptr noundef nonnull %i.u, ptr noundef nonnull %i.af, ptr noundef null, i64 noundef 0) #14
  %.not91 = icmp eq i32 %i.bd, 0
  br i1 %.not91, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.235) #14
  call void @abort() #15
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #14
  store i64 8, ptr %i.ag, align 8, !tbaa !11
  %i.be = call i32 @je_mallctl(ptr noundef nonnull @.str.236, ptr noundef nonnull %i.v, ptr noundef nonnull %i.ag, ptr noundef null, i64 noundef 0) #14
  %.not92 = icmp eq i32 %i.be, 0
  br i1 %.not92, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.236) #14
  call void @abort() #15
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #14
  store i64 8, ptr %i.ah, align 8, !tbaa !11
  %i.bf = call i32 @je_mallctl(ptr noundef nonnull @.str.237, ptr noundef nonnull %i.x, ptr noundef nonnull %i.ah, ptr noundef null, i64 noundef 0) #14
  %.not93 = icmp eq i32 %i.bf, 0
  br i1 %.not93, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.237) #14
  call void @abort() #15
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #14
  store i64 8, ptr %i.ai, align 8, !tbaa !11
  %i.bg = call i32 @je_mallctl(ptr noundef nonnull @.str.238, ptr noundef nonnull %i.w, ptr noundef nonnull %i.ai, ptr noundef null, i64 noundef 0) #14
  %.not94 = icmp eq i32 %i.bg, 0
  br i1 %.not94, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.238) #14
  call void @abort() #15
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #14
  store i64 8, ptr %i.aj, align 8, !tbaa !11
  %i.bh = call i32 @je_mallctl(ptr noundef nonnull @.str.239, ptr noundef nonnull %i.y, ptr noundef nonnull %i.aj, ptr noundef null, i64 noundef 0) #14
  %.not95 = icmp eq i32 %i.bh, 0
  br i1 %.not95, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.239) #14
  call void @abort() #15
  unreachable

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #14
  store i64 8, ptr %i.ak, align 8, !tbaa !11
  %i.bi = call i32 @je_mallctl(ptr noundef nonnull @.str.240, ptr noundef nonnull %i.z, ptr noundef nonnull %i.ak, ptr noundef null, i64 noundef 0) #14
  %.not96 = icmp eq i32 %i.bi, 0
  br i1 %.not96, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.240) #14
  call void @abort() #15
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #14
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.58)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.241, i32 noundef 6, ptr noundef %i.p)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.242, i32 noundef 6, ptr noundef %i.q)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.243, i32 noundef 6, ptr noundef %i.r)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.106, i32 noundef 6, ptr noundef %i.s)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.244, i32 noundef 6, ptr noundef %i.t)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.245, i32 noundef 6, ptr noundef %i.u)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.246, i32 noundef 6, ptr noundef %i.v)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.247, i32 noundef 6, ptr noundef %i.x)
  %i.bj = load i64, ptr %i.p, align 8, !tbaa !11
  %i.bk = load i64, ptr %i.q, align 8, !tbaa !11
  %i.bl = load i64, ptr %i.r, align 8, !tbaa !11
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !11
  %i.bn = load i64, ptr %i.t, align 8, !tbaa !11
  %i.bo = load i64, ptr %i.u, align 8, !tbaa !11
  %i.bp = load i64, ptr %i.v, align 8, !tbaa !11
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.248, i64 noundef %i.bj, i64 noundef %i.bk, i64 noundef %i.bl, i64 noundef %i.bm, i64 noundef %i.bn, i64 noundef %i.bo, i64 noundef %i.bp)
  %i.bq = load i64, ptr %i.x, align 8, !tbaa !11
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.249, i64 noundef %i.bq)
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull @.str)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.250, i32 noundef 6, ptr noundef %i.w)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.251, i32 noundef 5, ptr noundef %i.y)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.252, i32 noundef 5, ptr noundef %i.z)
  %.val.i = load i32, ptr %0, align 8, !tbaa !16  ; 2 uses
  %spec.select.i.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i.i, label %bb.x, label %emitter_json_object_end.exit

bb.x:                                             ; preds = %bb.w
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !24
  %i.bt = add nsw i32 %i.bs, -1
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.bu, align 4, !tbaa !22
  %.not.i106 = icmp eq i32 %.val.i, 1
  br i1 %.not.i106, label %emitter_indent.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.bv = load i32, ptr %i.br, align 8, !tbaa !24 ; 2 uses
  %i.bw = load i32, ptr %0, align 8, !tbaa !16
  %i.bx = icmp ne i32 %i.bw, 0                    ; 2 uses
  %.07.i.i = select i1 %i.bx, ptr @.str.31, ptr @.str.34
  %i.by = icmp sgt i32 %i.bv, 0
  br i1 %i.by, label %.lr.ph.preheader.i.i, label %emitter_indent.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.y
  %i.bz = zext i1 %i.bx to i32
  %.08.i.i = shl nuw nsw i32 %i.bv, %i.bz
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi i32 [ %i.ca, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i)
  %i.ca = add nuw nsw i32 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ca, %.08.i.i
  br i1 %exitcond.not.i.i, label %emitter_indent.exit.i, label %.lr.ph.i.i, !llvm.loop !25

emitter_indent.exit.i:                            ; preds = %.lr.ph.i.i, %bb.y, %bb.x
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit

emitter_json_object_end.exit:                     ; preds = %bb.w, %emitter_indent.exit.i
  %i.cb = load i64, ptr %i.w, align 8, !tbaa !11
  %i.cc = load i64, ptr %i.y, align 8, !tbaa !11
  %i.cd = load i64, ptr %i.z, align 8, !tbaa !11
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.253, i64 noundef %i.cb, i64 noundef %i.cc, i64 noundef %i.cd)
  br i1 %6, label %bb.z, label %bb.bv

bb.z:                                             ; preds = %emitter_json_object_end.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #14
  store ptr null, ptr %9, align 8, !tbaa !33
  call fastcc void @mutex_stats_init_cols(ptr noundef %9, ptr noundef nonnull @.str.29, ptr noundef nonnull %10, ptr noundef %11, ptr noundef %12)
  %i.ce = load i32, ptr %0, align 8, !tbaa !16
  %.not.i107 = icmp eq i32 %i.ce, 2
  br i1 %.not.i107, label %bb.aa, label %emitter_table_row.exit

bb.aa:                                            ; preds = %bb.z
  %i.cf = load ptr, ptr %9, align 8, !tbaa !33    ; 3 uses
  %.not1315.i = icmp eq ptr %i.cf, null
  br i1 %.not1315.i, label %select.unfold._crit_edge.i, label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.aa, %select.unfold.i
  %.016.i = phi ptr [ %i.cn, %select.unfold.i ], [ %i.cf, %bb.aa ] ; 5 uses
  %i.cg = load i32, ptr %.016.i, align 8, !tbaa !37
  %i.ch = getelementptr inbounds nuw i8, ptr %.016.i, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !40
  %i.cj = getelementptr inbounds nuw i8, ptr %.016.i, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !41
  %i.cl = getelementptr inbounds nuw i8, ptr %.016.i, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.cg, i32 noundef %i.ci, i32 noundef %i.ck, ptr noundef nonnull %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %.016.i, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 3 uses
  %.not14.i = icmp eq ptr %i.cn, %i.cf
  %.not1317.i = icmp eq ptr %i.cn, null
  %.not13.i = or i1 %.not14.i, %.not1317.i
  br i1 %.not13.i, label %select.unfold._crit_edge.i, label %select.unfold.i

select.unfold._crit_edge.i:                       ; preds = %select.unfold.i, %bb.aa
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.33)
  br label %emitter_table_row.exit

emitter_table_row.exit:                           ; preds = %bb.z, %select.unfold._crit_edge.i
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.254)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #14
  store i64 7, ptr %i.an, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #14
  store i64 8, ptr %i.ao, align 8, !tbaa !11
  %i.co = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.255, ptr noundef nonnull %i.am, ptr noundef nonnull %i.an) #14
  %.not97 = icmp eq i32 %i.co, 0
  br i1 %.not97, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %emitter_table_row.exit
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.255) #14
  call void @abort() #15
  unreachable

bb.ac:                                            ; preds = %emitter_table_row.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 0, ptr %i.cp, align 16, !tbaa !11
  %i.cq = load i64, ptr %i.an, align 8, !tbaa !11
  %i.cr = call i32 @je_mallctlbymib(ptr noundef nonnull %i.am, i64 noundef %i.cq, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ao, ptr noundef null, i64 noundef 0) #14
  %.not98 = icmp eq i32 %i.cr, 0
  br i1 %.not98, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #14
  store i64 7, ptr %i.aq, align 8, !tbaa !11
  %i.cs = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 19 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 832 ; 9 uses
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !13
  %.not.i = icmp eq i8 %i.cu, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.af, !prof !30

bb.af:                                            ; preds = %bb.ae
  %i.cv = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.cs, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.ae, %bb.af
  %.0.i = phi ptr [ %i.cv, %bb.af ], [ %i.cs, %bb.ae ]
  %i.cw = call i32 @je_ctl_mibnametomib(ptr noundef %.0.i, ptr noundef nonnull %i.ap, i64 noundef 0, ptr noundef nonnull @.str.258, ptr noundef nonnull %i.aq) #14
  %.not99 = icmp eq i32 %i.cw, 0
  br i1 %.not99, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %tsd_fetch_impl.exit
  call void @je_malloc_write(ptr noundef nonnull @.str.201) #14
  call void @abort() #15
  unreachable

bb.ah:                                            ; preds = %tsd_fetch_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #14
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 136
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 168
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 176 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 208
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 216
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 248
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 256 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 288
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 296
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 328
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 336 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 368
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 376
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 408
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 416
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br label %bb.al

bb.ai:                                            ; preds = %emitter_json_object_end.exit130
  %.val.i108 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i109 = icmp ult i32 %.val.i108, 2
  br i1 %spec.select.i.i109, label %bb.aj, label %emitter_json_object_end.exit118

bb.aj:                                            ; preds = %bb.ai
  %i.dy = load i32, ptr %i.dw, align 8, !tbaa !24
  %i.dz = add nsw i32 %i.dy, -1
  store i32 %i.dz, ptr %i.dw, align 8, !tbaa !24
  store i8 1, ptr %i.dx, align 4, !tbaa !22
  %.not.i110 = icmp eq i32 %.val.i108, 1
  br i1 %.not.i110, label %emitter_indent.exit.i112, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.ea = load i32, ptr %i.dw, align 8, !tbaa !24 ; 2 uses
  %i.eb = load i32, ptr %0, align 8, !tbaa !16
  %i.ec = icmp ne i32 %i.eb, 0                    ; 2 uses
  %.07.i.i111 = select i1 %i.ec, ptr @.str.31, ptr @.str.34
  %i.ed = icmp sgt i32 %i.ea, 0
  br i1 %i.ed, label %.lr.ph.preheader.i.i113, label %emitter_indent.exit.i112

.lr.ph.preheader.i.i113:                          ; preds = %bb.ak
  %i.ee = zext i1 %i.ec to i32
  %.08.i.i114 = shl nuw nsw i32 %i.ea, %i.ee
  br label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %.lr.ph.i.i115, %.lr.ph.preheader.i.i113
  %.09.i.i116 = phi i32 [ %i.ef, %.lr.ph.i.i115 ], [ 0, %.lr.ph.preheader.i.i113 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i111)
  %i.ef = add nuw nsw i32 %.09.i.i116, 1          ; 2 uses
  %exitcond.not.i.i117 = icmp eq i32 %i.ef, %.08.i.i114
  br i1 %exitcond.not.i.i117, label %emitter_indent.exit.i112, label %.lr.ph.i.i115, !llvm.loop !25

emitter_indent.exit.i112:                         ; preds = %.lr.ph.i.i115, %bb.ak, %bb.aj
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit118

emitter_json_object_end.exit118:                  ; preds = %bb.ai, %emitter_indent.exit.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.bv

bb.al:                                            ; preds = %bb.ah, %emitter_json_object_end.exit130
  %indvars.iv = phi i64 [ 0, %bb.ah ], [ %indvars.iv.next, %emitter_json_object_end.exit130 ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr @je_global_mutex_names, i64 %indvars.iv ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !28 ; 2 uses
  %i.ei = load i64, ptr %i.al, align 8, !tbaa !11 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 7, ptr %i.a, align 8, !tbaa !11
  %i.ej = load i8, ptr %i.ct, align 8, !tbaa !13
  %.not.i.i = icmp eq i8 %i.ej, 0
  br i1 %.not.i.i, label %tsd_fetch_impl.exit.i, label %bb.am, !prof !30

bb.am:                                            ; preds = %bb.al
  %i.ek = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.cs, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit.i

tsd_fetch_impl.exit.i:                            ; preds = %bb.am, %bb.al
  %.0.i.i = phi ptr [ %i.ek, %bb.am ], [ %i.cs, %bb.al ]
  %i.el = call i32 @je_ctl_mibnametomib(ptr noundef %.0.i.i, ptr noundef nonnull %i.ap, i64 noundef 2, ptr noundef %i.eh, ptr noundef nonnull %i.a) #14
  %.not.i119 = icmp eq i32 %i.el, 0
  br i1 %.not.i119, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %tsd_fetch_impl.exit.i
  call void @je_malloc_write(ptr noundef nonnull @.str.201) #14
  call void @abort() #15
  unreachable

bb.ao:                                            ; preds = %tsd_fetch_impl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  store ptr %i.eh, ptr %i.cx, align 8, !tbaa !13
  store i32 5, ptr %i.cy, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 7, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i64 8, ptr %i.c, align 8, !tbaa !11
  %i.em = load i8, ptr %i.ct, align 8, !tbaa !13
  %.not.i77.i = icmp eq i8 %i.em, 0
  br i1 %.not.i77.i, label %tsd_fetch_impl.exit79.i, label %bb.ap, !prof !30

bb.ap:                                            ; preds = %bb.ao
  %i.en = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.cs, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit79.i

tsd_fetch_impl.exit79.i:                          ; preds = %bb.ap, %bb.ao
  %.0.i78.i = phi ptr [ %i.en, %bb.ap ], [ %i.cs, %bb.ao ]
  %i.eo = call i32 @je_ctl_bymibname(ptr noundef %.0.i78.i, ptr noundef nonnull %i.ap, i64 noundef 3, ptr noundef nonnull @.str.274, ptr noundef nonnull %i.b, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.c, ptr noundef null, i64 noundef 0) #14
  %.not70.i = icmp eq i32 %i.eo, 0
  br i1 %.not70.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %tsd_fetch_impl.exit79.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.ar:                                            ; preds = %tsd_fetch_impl.exit79.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  store i32 5, ptr %i.da, align 16, !tbaa !41
  %i.ep = load i64, ptr %i.cz, align 16, !tbaa !13 ; 3 uses
  %i.eq = icmp eq i64 %i.ei, 0                    ; 5 uses
  %i.er = icmp eq i64 %i.ep, 0
  %or.cond.i.i = or i1 %i.eq, %i.er
  br i1 %or.cond.i.i, label %rate_per_second.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.es = icmp ult i64 %i.ei, 1000000000
  br i1 %i.es, label %rate_per_second.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.et = udiv i64 %i.ei, 1000000000
  %i.eu = udiv i64 %i.ep, %i.et
  br label %rate_per_second.exit.i

rate_per_second.exit.i:                           ; preds = %bb.at, %bb.as, %bb.ar
  %.0.i98.i = phi i64 [ %i.eu, %bb.at ], [ 0, %bb.ar ], [ %i.ep, %bb.as ]
  store i64 %.0.i98.i, ptr %i.db, align 8, !tbaa !13
  store i32 5, ptr %i.dc, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i64 7, ptr %i.d, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store i64 8, ptr %i.e, align 8, !tbaa !11
  %i.ev = load i8, ptr %i.ct, align 8, !tbaa !13
  %.not.i80.i = icmp eq i8 %i.ev, 0
  br i1 %.not.i80.i, label %tsd_fetch_impl.exit82.i, label %bb.au, !prof !30

bb.au:                                            ; preds = %rate_per_second.exit.i
  %i.ew = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.cs, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit82.i

tsd_fetch_impl.exit82.i:                          ; preds = %bb.au, %rate_per_second.exit.i
  %.0.i81.i = phi ptr [ %i.ew, %bb.au ], [ %i.cs, %rate_per_second.exit.i ]
  %i.ex = call i32 @je_ctl_bymibname(ptr noundef %.0.i81.i, ptr noundef nonnull %i.ap, i64 noundef 3, ptr noundef nonnull @.str.275, ptr noundef nonnull %i.d, ptr noundef nonnull %i.dd, ptr noundef nonnull %i.e, ptr noundef null, i64 noundef 0) #14
  %.not71.i = icmp eq i32 %i.ex, 0
  br i1 %.not71.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %tsd_fetch_impl.exit82.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.aw:                                            ; preds = %tsd_fetch_impl.exit82.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  store i32 5, ptr %i.de, align 16, !tbaa !41
  %i.ey = load i64, ptr %i.dd, align 16, !tbaa !13 ; 3 uses
  %i.ez = icmp eq i64 %i.ey, 0
  %or.cond.i99.i = or i1 %i.eq, %i.ez
  br i1 %or.cond.i99.i, label %rate_per_second.exit101.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fa = icmp ult i64 %i.ei, 1000000000
  br i1 %i.fa, label %rate_per_second.exit101.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fb = udiv i64 %i.ei, 1000000000
  %i.fc = udiv i64 %i.ey, %i.fb
  br label %rate_per_second.exit101.i

rate_per_second.exit101.i:                        ; preds = %bb.ay, %bb.ax, %bb.aw
  %.0.i100.i = phi i64 [ %i.fc, %bb.ay ], [ 0, %bb.aw ], [ %i.ey, %bb.ax ]
  store i64 %.0.i100.i, ptr %i.df, align 8, !tbaa !13
  store i32 5, ptr %i.dg, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i64 7, ptr %i.f, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store i64 8, ptr %i.g, align 8, !tbaa !11
  %i.fd = load i8, ptr %i.ct, align 8, !tbaa !13
  %.not.i83.i = icmp eq i8 %i.fd, 0
  br i1 %.not.i83.i, label %tsd_fetch_impl.exit85.i, label %bb.az, !prof !30

bb.az:                                            ; preds = %rate_per_second.exit101.i
  %i.fe = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.cs, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit85.i

tsd_fetch_impl.exit85.i:                          ; preds = %bb.az, %rate_per_second.exit101.i
  %.0.i84.i = phi ptr [ %i.fe, %bb.az ], [ %i.cs, %rate_per_second.exit101.i ]
  %i.ff = call i32 @je_ctl_bymibname(ptr noundef %.0.i84.i, ptr noundef nonnull %i.ap, i64 noundef 3, ptr noundef nonnull @.str.276, ptr noundef nonnull %i.f, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.g, ptr noundef null, i64 noundef 0) #14
  %.not72.i = icmp eq i32 %i.ff, 0
  br i1 %.not72.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %tsd_fetch_impl.exit85.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.bb:                                            ; preds = %tsd_fetch_impl.exit85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  store i32 5, ptr %i.di, align 16, !tbaa !41
  %i.fg = load i64, ptr %i.dh, align 16, !tbaa !13 ; 3 uses
  %i.fh = icmp eq i64 %i.fg, 0
  %or.cond.i102.i = or i1 %i.eq, %i.fh
  br i1 %or.cond.i102.i, label %rate_per_second.exit104.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fi = icmp ult i64 %i.ei, 1000000000
  br i1 %i.fi, label %rate_per_second.exit104.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fj = udiv i64 %i.ei, 1000000000
  %i.fk = udiv i64 %i.fg, %i.fj
  br label %rate_per_second.exit104.i

rate_per_second.exit104.i:                        ; preds = %bb.bd, %bb.bc, %bb.bb
  %.0.i103.i = phi i64 [ %i.fk, %bb.bd ], [ 0, %bb.bb ], [ %i.fg, %bb.bc ]
  store i64 %.0.i103.i, ptr %i.dj, align 8, !tbaa !13
  store i32 5, ptr %i.dk, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store i64 7, ptr %i.h, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store i64 8, ptr %i.i, align 8, !tbaa !11
  %i.fl = load i8, ptr %i.ct, align 8, !tbaa !13
  %.not.i86.i = icmp eq i8 %i.fl, 0
  br i1 %.not.i86.i, label %tsd_fetch_impl.exit88.i, label %bb.be, !prof !30

bb.be:                                            ; preds = %rate_per_second.exit104.i
  %i.fm = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.cs, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit88.i

tsd_fetch_impl.exit88.i:                          ; preds = %bb.be, %rate_per_second.exit104.i
  %.0.i87.i = phi ptr [ %i.fm, %bb.be ], [ %i.cs, %rate_per_second.exit104.i ]
  %i.fn = call i32 @je_ctl_bymibname(ptr noundef %.0.i87.i, ptr noundef nonnull %i.ap, i64 noundef 3, ptr noundef nonnull @.str.277, ptr noundef nonnull %i.h, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.i, ptr noundef null, i64 noundef 0) #14
  %.not73.i = icmp eq i32 %i.fn, 0
  br i1 %.not73.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %tsd_fetch_impl.exit88.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.bg:                                            ; preds = %tsd_fetch_impl.exit88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  store i32 5, ptr %i.dm, align 16, !tbaa !41
  %i.fo = load i64, ptr %i.dl, align 16, !tbaa !13 ; 3 uses
  %i.fp = icmp eq i64 %i.fo, 0
  %or.cond.i105.i = or i1 %i.eq, %i.fp
  br i1 %or.cond.i105.i, label %rate_per_second.exit107.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fq = icmp ult i64 %i.ei, 1000000000
  br i1 %i.fq, label %rate_per_second.exit107.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fr = udiv i64 %i.ei, 1000000000
  %i.fs = udiv i64 %i.fo, %i.fr
  br label %rate_per_second.exit107.i

rate_per_second.exit107.i:                        ; preds = %bb.bi, %bb.bh, %bb.bg
  %.0.i106.i = phi i64 [ %i.fs, %bb.bi ], [ 0, %bb.bg ], [ %i.fo, %bb.bh ]
  store i64 %.0.i106.i, ptr %i.dn, align 8, !tbaa !13
  store i32 5, ptr %i.do, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  store i64 7, ptr %i.j, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  store i64 8, ptr %i.k, align 8, !tbaa !11
  %i.ft = load i8, ptr %i.ct, align 8, !tbaa !13
  %.not.i89.i = icmp eq i8 %i.ft, 0
  br i1 %.not.i89.i, label %tsd_fetch_impl.exit91.i, label %bb.bj, !prof !30

bb.bj:                                            ; preds = %rate_per_second.exit107.i
  %i.fu = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.cs, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit91.i

tsd_fetch_impl.exit91.i:                          ; preds = %bb.bj, %rate_per_second.exit107.i
  %.0.i90.i = phi ptr [ %i.fu, %bb.bj ], [ %i.cs, %rate_per_second.exit107.i ]
  %i.fv = call i32 @je_ctl_bymibname(ptr noundef %.0.i90.i, ptr noundef nonnull %i.ap, i64 noundef 3, ptr noundef nonnull @.str.278, ptr noundef nonnull %i.j, ptr noundef nonnull %i.dp, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %.not74.i = icmp eq i32 %i.fv, 0
  br i1 %.not74.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %tsd_fetch_impl.exit91.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.bl:                                            ; preds = %tsd_fetch_impl.exit91.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  store i32 5, ptr %i.dq, align 16, !tbaa !41
  %i.fw = load i64, ptr %i.dp, align 16, !tbaa !13 ; 3 uses
  %i.fx = icmp eq i64 %i.fw, 0
  %or.cond.i108.i = or i1 %i.eq, %i.fx
  br i1 %or.cond.i108.i, label %rate_per_second.exit110.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fy = icmp ult i64 %i.ei, 1000000000
  br i1 %i.fy, label %rate_per_second.exit110.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fz = udiv i64 %i.ei, 1000000000
  %i.ga = udiv i64 %i.fw, %i.fz
  br label %rate_per_second.exit110.i

rate_per_second.exit110.i:                        ; preds = %bb.bn, %bb.bm, %bb.bl
  %.0.i109.i = phi i64 [ %i.ga, %bb.bn ], [ 0, %bb.bl ], [ %i.fw, %bb.bm ]
  store i64 %.0.i109.i, ptr %i.dr, align 8, !tbaa !13
  store i32 5, ptr %i.ds, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  store i64 7, ptr %i.l, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  store i64 8, ptr %i.m, align 8, !tbaa !11
  %i.gb = load i8, ptr %i.ct, align 8, !tbaa !13
  %.not.i92.i = icmp eq i8 %i.gb, 0
  br i1 %.not.i92.i, label %tsd_fetch_impl.exit94.i, label %bb.bo, !prof !30

bb.bo:                                            ; preds = %rate_per_second.exit110.i
  %i.gc = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.cs, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit94.i

tsd_fetch_impl.exit94.i:                          ; preds = %bb.bo, %rate_per_second.exit110.i
  %.0.i93.i = phi ptr [ %i.gc, %bb.bo ], [ %i.cs, %rate_per_second.exit110.i ]
  %i.gd = call i32 @je_ctl_bymibname(ptr noundef %.0.i93.i, ptr noundef nonnull %i.ap, i64 noundef 3, ptr noundef nonnull @.str.279, ptr noundef nonnull %i.l, ptr noundef nonnull %i.dt, ptr noundef nonnull %i.m, ptr noundef null, i64 noundef 0) #14
  %.not75.i = icmp eq i32 %i.gd, 0
  br i1 %.not75.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %tsd_fetch_impl.exit94.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.bq:                                            ; preds = %tsd_fetch_impl.exit94.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  store i32 4, ptr %i.du, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  store i64 7, ptr %i.n, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  store i64 4, ptr %i.o, align 8, !tbaa !11
  %i.ge = load i8, ptr %i.ct, align 8, !tbaa !13
  %.not.i95.i = icmp eq i8 %i.ge, 0
  br i1 %.not.i95.i, label %tsd_fetch_impl.exit97.i, label %bb.br, !prof !30

bb.br:                                            ; preds = %bb.bq
  %i.gf = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.cs, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit97.i

tsd_fetch_impl.exit97.i:                          ; preds = %bb.br, %bb.bq
  %.0.i96.i = phi ptr [ %i.gf, %bb.br ], [ %i.cs, %bb.bq ]
  %i.gg = call i32 @je_ctl_bymibname(ptr noundef %.0.i96.i, ptr noundef nonnull %i.ap, i64 noundef 3, ptr noundef nonnull @.str.280, ptr noundef nonnull %i.n, ptr noundef nonnull %i.dv, ptr noundef nonnull %i.o, ptr noundef null, i64 noundef 0) #14
  %.not76.i = icmp eq i32 %i.gg, 0
  br i1 %.not76.i, label %mutex_stats_read_global.exit, label %bb.bs

bb.bs:                                            ; preds = %tsd_fetch_impl.exit97.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

mutex_stats_read_global.exit:                     ; preds = %tsd_fetch_impl.exit97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  %i.gh = load ptr, ptr %i.eg, align 8, !tbaa !28
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef %i.gh)
  call fastcc void @mutex_stats_emit(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %11, ptr noundef %12)
  %.val.i120 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i121 = icmp ult i32 %.val.i120, 2
  br i1 %spec.select.i.i121, label %bb.bt, label %emitter_json_object_end.exit130

bb.bt:                                            ; preds = %mutex_stats_read_global.exit
  %i.gi = load i32, ptr %i.dw, align 8, !tbaa !24
  %i.gj = add nsw i32 %i.gi, -1
  store i32 %i.gj, ptr %i.dw, align 8, !tbaa !24
  store i8 1, ptr %i.dx, align 4, !tbaa !22
  %.not.i122 = icmp eq i32 %.val.i120, 1
  br i1 %.not.i122, label %emitter_indent.exit.i124, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.gk = load i32, ptr %i.dw, align 8, !tbaa !24 ; 2 uses
  %i.gl = load i32, ptr %0, align 8, !tbaa !16
  %i.gm = icmp ne i32 %i.gl, 0                    ; 2 uses
  %.07.i.i123 = select i1 %i.gm, ptr @.str.31, ptr @.str.34
  %i.gn = icmp sgt i32 %i.gk, 0
  br i1 %i.gn, label %.lr.ph.preheader.i.i125, label %emitter_indent.exit.i124

.lr.ph.preheader.i.i125:                          ; preds = %bb.bu
  %i.go = zext i1 %i.gm to i32
  %.08.i.i126 = shl nuw nsw i32 %i.gk, %i.go
  br label %.lr.ph.i.i127

.lr.ph.i.i127:                                    ; preds = %.lr.ph.i.i127, %.lr.ph.preheader.i.i125
  %.09.i.i128 = phi i32 [ %i.gp, %.lr.ph.i.i127 ], [ 0, %.lr.ph.preheader.i.i125 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i123)
  %i.gp = add nuw nsw i32 %.09.i.i128, 1          ; 2 uses
  %exitcond.not.i.i129 = icmp eq i32 %i.gp, %.08.i.i126
  br i1 %exitcond.not.i.i129, label %emitter_indent.exit.i124, label %.lr.ph.i.i127, !llvm.loop !25

emitter_indent.exit.i124:                         ; preds = %.lr.ph.i.i127, %bb.bu, %bb.bt
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit130

emitter_json_object_end.exit130:                  ; preds = %mutex_stats_read_global.exit, %emitter_indent.exit.i124
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %bb.ai, label %bb.al, !llvm.loop !43

bb.bv:                                            ; preds = %emitter_json_object_end.exit118, %emitter_json_object_end.exit
  %.val.i131 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i132 = icmp ult i32 %.val.i131, 2
  br i1 %spec.select.i.i132, label %bb.bw, label %emitter_json_object_end.exit141

bb.bw:                                            ; preds = %bb.bv
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !24
  %i.gs = add nsw i32 %i.gr, -1
  store i32 %i.gs, ptr %i.gq, align 8, !tbaa !24
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.gt, align 4, !tbaa !22
  %.not.i133 = icmp eq i32 %.val.i131, 1
  br i1 %.not.i133, label %emitter_indent.exit.i135, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.gu = load i32, ptr %i.gq, align 8, !tbaa !24 ; 2 uses
  %i.gv = load i32, ptr %0, align 8, !tbaa !16
  %i.gw = icmp ne i32 %i.gv, 0                    ; 2 uses
  %.07.i.i134 = select i1 %i.gw, ptr @.str.31, ptr @.str.34
  %i.gx = icmp sgt i32 %i.gu, 0
  br i1 %i.gx, label %.lr.ph.preheader.i.i136, label %emitter_indent.exit.i135

.lr.ph.preheader.i.i136:                          ; preds = %bb.bx
  %i.gy = zext i1 %i.gw to i32
  %.08.i.i137 = shl nuw nsw i32 %i.gu, %i.gy
  br label %.lr.ph.i.i138

.lr.ph.i.i138:                                    ; preds = %.lr.ph.i.i138, %.lr.ph.preheader.i.i136
  %.09.i.i139 = phi i32 [ %i.gz, %.lr.ph.i.i138 ], [ 0, %.lr.ph.preheader.i.i136 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i134)
  %i.gz = add nuw nsw i32 %.09.i.i139, 1          ; 2 uses
  %exitcond.not.i.i140 = icmp eq i32 %i.gz, %.08.i.i137
  br i1 %exitcond.not.i.i140, label %emitter_indent.exit.i135, label %.lr.ph.i.i138, !llvm.loop !25

emitter_indent.exit.i135:                         ; preds = %.lr.ph.i.i138, %bb.bx, %bb.bw
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit141

emitter_json_object_end.exit141:                  ; preds = %bb.bv, %emitter_indent.exit.i135
  %or.cond = or i1 %1, %2
  %or.cond3 = or i1 %or.cond, %3
  br i1 %or.cond3, label %bb.by, label %bb.cu

bb.by:                                            ; preds = %emitter_json_object_end.exit141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #14
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.259)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as) #14
  store i64 4, ptr %i.as, align 8, !tbaa !11
  %i.ha = call i32 @je_mallctl(ptr noundef nonnull @.str.183, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noundef null, i64 noundef 0) #14
  %.not100 = icmp eq i32 %i.ha, 0
  br i1 %.not100, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.183) #14
  call void @abort() #15
  unreachable

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #14
  store i64 3, ptr %i.au, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #14
  %i.hb = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.hc = zext i32 %i.hb to i64
  %i.hd = call ptr @llvm.stacksave.p0()
  %i.he = alloca i8, i64 %i.hc, align 16          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #14
  %i.hf = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.260, ptr noundef nonnull %i.at, ptr noundef nonnull %i.au) #14
  %.not101 = icmp eq i32 %i.hf, 0
  br i1 %.not101, label %.preheader186, label %bb.cb

.preheader186:                                    ; preds = %bb.ca
  %i.hg = load i32, ptr %i.ar, align 4, !tbaa !7
  %.not195 = icmp eq i32 %i.hg, 0
  br i1 %.not195, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader186
  %i.hh = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  br label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.260) #14
  call void @abort() #15
  unreachable

bb.cc:                                            ; preds = %.lr.ph, %bb.ce
  %indvars.iv197 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next198, %bb.ce ] ; 3 uses
  %.0190 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.ce ]
  store i64 %indvars.iv197, ptr %i.hh, align 8, !tbaa !11
  store i64 1, ptr %i.av, align 8, !tbaa !11
  %i.hi = load i64, ptr %i.au, align 8, !tbaa !11
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 %indvars.iv197 ; 2 uses
  %i.hk = call i32 @je_mallctlbymib(ptr noundef nonnull %i.at, i64 noundef %i.hi, ptr noundef nonnull %i.hj, ptr noundef nonnull %i.av, ptr noundef null, i64 noundef 0) #14
  %.not103 = icmp eq i32 %i.hk, 0
  br i1 %.not103, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.hl = load i8, ptr %i.hj, align 1, !tbaa !44, !range !26, !noundef !27
  %i.hm = zext nneg i8 %i.hl to i32
  %spec.select = add i32 %.0190, %i.hm            ; 2 uses
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %i.hn = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.ho = zext i32 %i.hn to i64
  %i.hp = icmp samesign ult i64 %indvars.iv.next198, %i.ho
  br i1 %i.hp, label %bb.cc, label %._crit_edge.loopexit, !llvm.loop !45

._crit_edge.loopexit:                             ; preds = %bb.ce
  %i.hq = icmp ult i32 %spec.select, 2
  %i.hr = and i1 %3, %i.hq
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader186
  %.0.lcssa = phi i1 [ %3, %.preheader186 ], [ %i.hr, %._crit_edge.loopexit ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 4097, ptr %i.hs, align 8, !tbaa !11
  store i64 1, ptr %i.av, align 8, !tbaa !11
  %i.ht = load i64, ptr %i.au, align 8, !tbaa !11
  %i.hu = call i32 @je_mallctlbymib(ptr noundef nonnull %i.at, i64 noundef %i.ht, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.av, ptr noundef null, i64 noundef 0) #14
  %.not102 = icmp eq i32 %i.hu, 0
  br i1 %.not102, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.cg:                                            ; preds = %._crit_edge
  %.not104 = xor i1 %1, true
  %or.cond105 = select i1 %.not104, i1 true, i1 %.0.lcssa
  br i1 %or.cond105, label %emitter_json_object_end.exit152, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.261)
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.262)
  call fastcc void @stats_arena_print(ptr noundef %0, i32 noundef 4096, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8) #16
  %.val.i142 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i143 = icmp ult i32 %.val.i142, 2
  br i1 %spec.select.i.i143, label %bb.ci, label %emitter_json_object_end.exit152

bb.ci:                                            ; preds = %bb.ch
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !24
  %i.hx = add nsw i32 %i.hw, -1
  store i32 %i.hx, ptr %i.hv, align 8, !tbaa !24
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.hy, align 4, !tbaa !22
  %.not.i144 = icmp eq i32 %.val.i142, 1
  br i1 %.not.i144, label %emitter_indent.exit.i146, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.hz = load i32, ptr %i.hv, align 8, !tbaa !24 ; 2 uses
  %i.ia = load i32, ptr %0, align 8, !tbaa !16
  %i.ib = icmp ne i32 %i.ia, 0                    ; 2 uses
  %.07.i.i145 = select i1 %i.ib, ptr @.str.31, ptr @.str.34
  %i.ic = icmp sgt i32 %i.hz, 0
  br i1 %i.ic, label %.lr.ph.preheader.i.i147, label %emitter_indent.exit.i146

.lr.ph.preheader.i.i147:                          ; preds = %bb.cj
  %i.id = zext i1 %i.ib to i32
  %.08.i.i148 = shl nuw nsw i32 %i.hz, %i.id
  br label %.lr.ph.i.i149

.lr.ph.i.i149:                                    ; preds = %.lr.ph.i.i149, %.lr.ph.preheader.i.i147
  %.09.i.i150 = phi i32 [ %i.ie, %.lr.ph.i.i149 ], [ 0, %.lr.ph.preheader.i.i147 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i145)
  %i.ie = add nuw nsw i32 %.09.i.i150, 1          ; 2 uses
  %exitcond.not.i.i151 = icmp eq i32 %i.ie, %.08.i.i148
  br i1 %exitcond.not.i.i151, label %emitter_indent.exit.i146, label %.lr.ph.i.i149, !llvm.loop !25

emitter_indent.exit.i146:                         ; preds = %.lr.ph.i.i149, %bb.cj, %bb.ci
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit152

emitter_json_object_end.exit152:                  ; preds = %emitter_indent.exit.i146, %bb.ch, %bb.cg
  %i.if = load i8, ptr %i.aw, align 1, !tbaa !44, !range !26, !noundef !27
  %i.ig = trunc nuw i8 %i.if to i1
  %or.cond7 = and i1 %2, %i.ig
  br i1 %or.cond7, label %bb.ck, label %emitter_json_object_end.exit163

bb.ck:                                            ; preds = %emitter_json_object_end.exit152
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.263)
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.264)
  call fastcc void @stats_arena_print(ptr noundef %0, i32 noundef 4097, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8) #16
  %.val.i153 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i154 = icmp ult i32 %.val.i153, 2
  br i1 %spec.select.i.i154, label %bb.cl, label %emitter_json_object_end.exit163

bb.cl:                                            ; preds = %bb.ck
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !24
  %i.ij = add nsw i32 %i.ii, -1
  store i32 %i.ij, ptr %i.ih, align 8, !tbaa !24
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.ik, align 4, !tbaa !22
  %.not.i155 = icmp eq i32 %.val.i153, 1
  br i1 %.not.i155, label %emitter_indent.exit.i157, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.il = load i32, ptr %i.ih, align 8, !tbaa !24 ; 2 uses
  %i.im = load i32, ptr %0, align 8, !tbaa !16
  %i.in = icmp ne i32 %i.im, 0                    ; 2 uses
  %.07.i.i156 = select i1 %i.in, ptr @.str.31, ptr @.str.34
  %i.io = icmp sgt i32 %i.il, 0
  br i1 %i.io, label %.lr.ph.preheader.i.i158, label %emitter_indent.exit.i157

.lr.ph.preheader.i.i158:                          ; preds = %bb.cm
  %i.ip = zext i1 %i.in to i32
  %.08.i.i159 = shl nuw nsw i32 %i.il, %i.ip
  br label %.lr.ph.i.i160

.lr.ph.i.i160:                                    ; preds = %.lr.ph.i.i160, %.lr.ph.preheader.i.i158
  %.09.i.i161 = phi i32 [ %i.iq, %.lr.ph.i.i160 ], [ 0, %.lr.ph.preheader.i.i158 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i156)
  %i.iq = add nuw nsw i32 %.09.i.i161, 1          ; 2 uses
  %exitcond.not.i.i162 = icmp eq i32 %i.iq, %.08.i.i159
  br i1 %exitcond.not.i.i162, label %emitter_indent.exit.i157, label %.lr.ph.i.i160, !llvm.loop !25

emitter_indent.exit.i157:                         ; preds = %.lr.ph.i.i160, %bb.cm, %bb.cl
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit163

emitter_json_object_end.exit163:                  ; preds = %emitter_indent.exit.i157, %bb.ck, %emitter_json_object_end.exit152
  %i.ir = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.is = icmp ne i32 %i.ir, 0
  %or.cond194 = select i1 %3, i1 %i.is, i1 false
  br i1 %or.cond194, label %.lr.ph192, label %.loopexit

.lr.ph192:                                        ; preds = %emitter_json_object_end.exit163
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph192, %bb.cr
  %i.iv = phi i32 [ %i.ir, %.lr.ph192 ], [ %i.jj, %bb.cr ]
  %indvars.iv200 = phi i64 [ 0, %.lr.ph192 ], [ %indvars.iv.next201, %bb.cr ] ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.he, i64 %indvars.iv200
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !44, !range !26, !noundef !27
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #14
  %i.iz = trunc nuw i64 %indvars.iv200 to i32     ; 2 uses
  %i.ja = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.ax, i64 noundef 20, ptr noundef nonnull @.str.217, i32 noundef %i.iz) #14 ; 0 uses
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull %i.ax)
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.265, ptr noundef nonnull %i.ax)
  call fastcc void @stats_arena_print(ptr noundef %0, i32 noundef %i.iz, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8) #16
  %.val.i164 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i165 = icmp ult i32 %.val.i164, 2
  br i1 %spec.select.i.i165, label %bb.cp, label %emitter_json_object_end.exit174

bb.cp:                                            ; preds = %bb.co
  %i.jb = load i32, ptr %i.it, align 8, !tbaa !24
  %i.jc = add nsw i32 %i.jb, -1
  store i32 %i.jc, ptr %i.it, align 8, !tbaa !24
  store i8 1, ptr %i.iu, align 4, !tbaa !22
  %.not.i166 = icmp eq i32 %.val.i164, 1
  br i1 %.not.i166, label %emitter_indent.exit.i168, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.jd = load i32, ptr %i.it, align 8, !tbaa !24 ; 2 uses
  %i.je = load i32, ptr %0, align 8, !tbaa !16
  %i.jf = icmp ne i32 %i.je, 0                    ; 2 uses
  %.07.i.i167 = select i1 %i.jf, ptr @.str.31, ptr @.str.34
  %i.jg = icmp sgt i32 %i.jd, 0
  br i1 %i.jg, label %.lr.ph.preheader.i.i169, label %emitter_indent.exit.i168

.lr.ph.preheader.i.i169:                          ; preds = %bb.cq
  %i.jh = zext i1 %i.jf to i32
  %.08.i.i170 = shl nuw nsw i32 %i.jd, %i.jh
  br label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171, %.lr.ph.preheader.i.i169
  %.09.i.i172 = phi i32 [ %i.ji, %.lr.ph.i.i171 ], [ 0, %.lr.ph.preheader.i.i169 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i167)
  %i.ji = add nuw nsw i32 %.09.i.i172, 1          ; 2 uses
  %exitcond.not.i.i173 = icmp eq i32 %i.ji, %.08.i.i170
  br i1 %exitcond.not.i.i173, label %emitter_indent.exit.i168, label %.lr.ph.i.i171, !llvm.loop !25

emitter_indent.exit.i168:                         ; preds = %.lr.ph.i.i171, %bb.cq, %bb.cp
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit174

emitter_json_object_end.exit174:                  ; preds = %bb.co, %emitter_indent.exit.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #14
  %.pre = load i32, ptr %i.ar, align 4, !tbaa !7
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cn, %emitter_json_object_end.exit174
  %i.jj = phi i32 [ %i.iv, %bb.cn ], [ %.pre, %emitter_json_object_end.exit174 ] ; 2 uses
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %i.jk = zext i32 %i.jj to i64
  %i.jl = icmp samesign ult i64 %indvars.iv.next201, %i.jk
  br i1 %i.jl, label %bb.cn, label %.loopexit, !llvm.loop !46

.loopexit:                                        ; preds = %bb.cr, %emitter_json_object_end.exit163
  %.val.i175 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i176 = icmp ult i32 %.val.i175, 2
  br i1 %spec.select.i.i176, label %bb.cs, label %emitter_json_object_end.exit185

bb.cs:                                            ; preds = %.loopexit
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !24
  %i.jo = add nsw i32 %i.jn, -1
  store i32 %i.jo, ptr %i.jm, align 8, !tbaa !24
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.jp, align 4, !tbaa !22
  %.not.i177 = icmp eq i32 %.val.i175, 1
  br i1 %.not.i177, label %emitter_indent.exit.i179, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.jq = load i32, ptr %i.jm, align 8, !tbaa !24 ; 2 uses
  %i.jr = load i32, ptr %0, align 8, !tbaa !16
  %i.js = icmp ne i32 %i.jr, 0                    ; 2 uses
  %.07.i.i178 = select i1 %i.js, ptr @.str.31, ptr @.str.34
  %i.jt = icmp sgt i32 %i.jq, 0
  br i1 %i.jt, label %.lr.ph.preheader.i.i180, label %emitter_indent.exit.i179

.lr.ph.preheader.i.i180:                          ; preds = %bb.ct
  %i.ju = zext i1 %i.js to i32
  %.08.i.i181 = shl nuw nsw i32 %i.jq, %i.ju
  br label %.lr.ph.i.i182

.lr.ph.i.i182:                                    ; preds = %.lr.ph.i.i182, %.lr.ph.preheader.i.i180
  %.09.i.i183 = phi i32 [ %i.jv, %.lr.ph.i.i182 ], [ 0, %.lr.ph.preheader.i.i180 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i178)
  %i.jv = add nuw nsw i32 %.09.i.i183, 1          ; 2 uses
  %exitcond.not.i.i184 = icmp eq i32 %i.jv, %.08.i.i181
  br i1 %exitcond.not.i.i184, label %emitter_indent.exit.i179, label %.lr.ph.i.i182, !llvm.loop !25

emitter_indent.exit.i179:                         ; preds = %.lr.ph.i.i182, %bb.ct, %bb.cs
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit185

emitter_json_object_end.exit185:                  ; preds = %.loopexit, %emitter_indent.exit.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #14
  call void @llvm.stackrestore.p0(ptr %i.hd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #14
  br label %bb.cu

bb.cu:                                            ; preds = %emitter_json_object_end.exit141, %emitter_json_object_end.exit185
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
define hidden range(i64 0, 4194305) i64 @je_stats_interval_new_event_wait(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr @stats_interval_accum_batch, align 8, !tbaa !11
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @je_stats_interval_postponed_event_wait(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #8 {
bb.a:
  ret i64 1
}

; Function Attrs: nounwind uwtable
define hidden void @je_stats_interval_event_handler(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats_interval_accumulated, i64 8), align 8, !tbaa !47 ; 2 uses
  %i.b = load atomic i64, ptr @stats_interval_accumulated monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %atomic_compare_exchange_weak_u64.exit.i, %bb.a
  %.02.i = phi i64 [ %i.b, %bb.a ], [ %i.j, %atomic_compare_exchange_weak_u64.exit.i ] ; 3 uses
  %i.c = add i64 %.02.i, %1                       ; 3 uses
  %.not = icmp ult i64 %i.c, %i.a
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = urem i64 %i.c, %i.a
  %i.e = cmpxchg weak ptr @stats_interval_accumulated, i64 %.02.i, i64 %i.d monotonic monotonic, align 8 ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %locked_inc_mod_u64.exit, label %atomic_compare_exchange_weak_u64.exit.i

.thread:                                          ; preds = %bb.b
  %i.g = cmpxchg weak ptr @stats_interval_accumulated, i64 %.02.i, i64 %i.c monotonic monotonic, align 8 ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %locked_inc_mod_u64.exit.thread, label %atomic_compare_exchange_weak_u64.exit.i

atomic_compare_exchange_weak_u64.exit.i:          ; preds = %.thread, %bb.c
  %i.i = phi { i64, i1 } [ %i.g, %.thread ], [ %i.e, %bb.c ]
  %i.j = extractvalue { i64, i1 } %i.i, 0
  br label %bb.b

locked_inc_mod_u64.exit:                          ; preds = %bb.c
  tail call void @je_malloc_stats_print(ptr noundef null, ptr noundef null, ptr noundef nonnull @je_opt_stats_interval_opts) #14
  br label %locked_inc_mod_u64.exit.thread

locked_inc_mod_u64.exit.thread:                   ; preds = %.thread, %locked_inc_mod_u64.exit
  ret void
}

; Function Attrs: nounwind
declare void @je_malloc_stats_print(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_stats_boot() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @je_opt_stats_interval, align 8, !tbaa !11 ; 3 uses
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
  store i64 %storemerge, ptr @stats_interval_accum_batch, align 8, !tbaa !11
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
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
  %.val = load i32, ptr %0, align 8, !tbaa !16    ; 4 uses
  %spec.select.i = icmp ult i32 %.val, 2
  br i1 %spec.select.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !23, !range !26, !noundef !27
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 1, !tbaa !23
  br label %emitter_json_key_prefix.exit.i

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i8, ptr %i.d, align 4, !tbaa !22, !range !26, !noundef !27
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.32)
  %.pre.i = load i32, ptr %0, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = phi i32 [ %.pre.i, %bb.e ], [ %.val, %bb.d ]
  %.not.i.i = icmp eq i32 %i.g, 1
  br i1 %.not.i.i, label %emitter_json_key_prefix.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.k = icmp ne i32 %i.j, 0                      ; 2 uses
  %.07.i.i.i = select i1 %i.k, ptr @.str.31, ptr @.str.34
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph.preheader.i.i.i, label %emitter_json_key_prefix.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  %i.m = zext i1 %i.k to i32
  %.08.i.i.i = shl nuw nsw i32 %i.i, %i.m
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.n, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i.i)
  %i.n = add nuw nsw i32 %.09.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.n, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_json_key_prefix.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !25

emitter_json_key_prefix.exit.loopexit.i:          ; preds = %.lr.ph.i.i.i
  %.pre6.i = load i32, ptr %0, align 8, !tbaa !16
  br label %emitter_json_key_prefix.exit.i

emitter_json_key_prefix.exit.i:                   ; preds = %emitter_json_key_prefix.exit.loopexit.i, %bb.g, %bb.c
  %i.o = phi i32 [ %.pre6.i, %emitter_json_key_prefix.exit.loopexit.i ], [ %.val, %bb.c ], [ %i.j, %bb.g ]
  %.fr.i = freeze i32 %i.o
  %i.p = icmp eq i32 %.fr.i, 1
  br i1 %i.p, label %emitter_json_key_prefix.exit.thread.i, label %emitter_json_key.exit

emitter_json_key_prefix.exit.thread.i:            ; preds = %emitter_json_key_prefix.exit.i, %bb.f
  br label %emitter_json_key.exit

emitter_json_key.exit:                            ; preds = %emitter_json_key_prefix.exit.i, %emitter_json_key_prefix.exit.thread.i
  %i.q = phi ptr [ @.str.29, %emitter_json_key_prefix.exit.thread.i ], [ @.str.31, %emitter_json_key_prefix.exit.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef %1, ptr noundef nonnull %i.q)
  store i8 1, ptr %i.a, align 1, !tbaa !23
  %.val.i6 = load i32, ptr %0, align 8, !tbaa !16
  %spec.select.i.i7 = icmp ult i32 %.val.i6, 2
  br i1 %spec.select.i.i7, label %emitter_json_key_prefix.exit.i10, label %emitter_json_object_begin.exit

emitter_json_key_prefix.exit.i10:                 ; preds = %emitter_json_key.exit
  store i8 0, ptr %i.a, align 1, !tbaa !23
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.27)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !24
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !24
  br label %emitter_json_object_begin.exit.sink.split

bb.h:                                             ; preds = %bb.a
  %i.u = icmp eq i32 %.val, 2
  br i1 %i.u, label %bb.i, label %emitter_json_object_begin.exit

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !24   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.preheader.i.i, label %emitter_indent.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %.08.i.i = shl nuw nsw i32 %i.w, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi i32 [ %i.y, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.31)
  %i.y = add nuw nsw i32 %.09.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.y, %.08.i.i
  br i1 %exitcond.not.i.i, label %emitter_indent.exit.i, label %.lr.ph.i.i, !llvm.loop !25

emitter_indent.exit.i:                            ; preds = %.lr.ph.i.i, %bb.i
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.212, ptr noundef %2)
  %i.z = load i32, ptr %i.v, align 8, !tbaa !24
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.v, align 8, !tbaa !24
  br label %emitter_json_object_begin.exit.sink.split

emitter_json_object_begin.exit.sink.split:        ; preds = %emitter_json_key_prefix.exit.i10, %emitter_indent.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.ab, align 4, !tbaa !22
  br label %emitter_json_object_begin.exit

emitter_json_object_begin.exit:                   ; preds = %emitter_json_object_begin.exit.sink.split, %bb.h, %emitter_json_key.exit
  ret void
}

declare void @je_fxp_print(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emitter_kv_note(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 9) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i32 noundef range(i32 0, 8) %6, ptr nofree noundef readonly captures(none) %7) unnamed_addr #5 {
bb.a:
  %.val = load i32, ptr %0, align 8, !tbaa !16    ; 4 uses
  %spec.select.i = icmp ult i32 %.val, 2
  br i1 %spec.select.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !23, !range !26, !noundef !27
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 1, !tbaa !23
  br label %emitter_json_key_prefix.exit.i

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i8, ptr %i.d, align 4, !tbaa !22, !range !26, !noundef !27
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.32)
  %.pre.i = load i32, ptr %0, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = phi i32 [ %.pre.i, %bb.e ], [ %.val, %bb.d ]
  %.not.i.i = icmp eq i32 %i.g, 1
  br i1 %.not.i.i, label %emitter_json_key_prefix.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.k = icmp ne i32 %i.j, 0                      ; 2 uses
  %.07.i.i.i = select i1 %i.k, ptr @.str.31, ptr @.str.34
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph.preheader.i.i.i, label %emitter_json_key_prefix.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  %i.m = zext i1 %i.k to i32
  %.08.i.i.i = shl nuw nsw i32 %i.i, %i.m
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.n, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i.i)
  %i.n = add nuw nsw i32 %.09.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.n, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_json_key_prefix.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !25

emitter_json_key_prefix.exit.loopexit.i:          ; preds = %.lr.ph.i.i.i
  %.pre6.i = load i32, ptr %0, align 8, !tbaa !16
  br label %emitter_json_key_prefix.exit.i

emitter_json_key_prefix.exit.i:                   ; preds = %emitter_json_key_prefix.exit.loopexit.i, %bb.g, %bb.c
  %i.o = phi i32 [ %.pre6.i, %emitter_json_key_prefix.exit.loopexit.i ], [ %.val, %bb.c ], [ %i.j, %bb.g ]
  %.fr.i = freeze i32 %i.o
  %i.p = icmp eq i32 %.fr.i, 1
  br i1 %i.p, label %emitter_json_key_prefix.exit.thread.i, label %emitter_json_key.exit

emitter_json_key_prefix.exit.thread.i:            ; preds = %emitter_json_key_prefix.exit.i, %bb.f
  br label %emitter_json_key.exit

emitter_json_key.exit:                            ; preds = %emitter_json_key_prefix.exit.i, %emitter_json_key_prefix.exit.thread.i
  %i.q = phi ptr [ @.str.29, %emitter_json_key_prefix.exit.thread.i ], [ @.str.31, %emitter_json_key_prefix.exit.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef %1, ptr noundef nonnull %i.q)
  store i8 1, ptr %i.a, align 1, !tbaa !23
  %.val.i13 = load i32, ptr %0, align 8, !tbaa !16
  %spec.select.i.i14 = icmp ult i32 %.val.i13, 2
  br i1 %spec.select.i.i14, label %emitter_json_key_prefix.exit.i17, label %emitter_json_value.exit

emitter_json_key_prefix.exit.i17:                 ; preds = %emitter_json_key.exit
  store i8 0, ptr %i.a, align 1, !tbaa !23
  tail call fastcc void @emitter_print_value(ptr noundef nonnull %0, i32 noundef 2, i32 noundef -1, i32 noundef range(i32 0, 9) %3, ptr noundef readonly %4)
  br label %emitter_json_value.exit

bb.h:                                             ; preds = %bb.a
  %i.r = icmp eq i32 %.val, 2
  br i1 %i.r, label %bb.i, label %emitter_json_value.exit

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !24   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.preheader.i.i, label %emitter_indent.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %.08.i.i = shl nuw nsw i32 %i.t, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi i32 [ %i.v, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.31)
  %i.v = add nuw nsw i32 %.09.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.v, %.08.i.i
  br i1 %exitcond.not.i.i, label %emitter_indent.exit.i, label %.lr.ph.i.i, !llvm.loop !25

emitter_indent.exit.i:                            ; preds = %.lr.ph.i.i, %bb.i
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.225, ptr noundef %2)
  tail call fastcc void @emitter_print_value(ptr noundef nonnull %0, i32 noundef 2, i32 noundef -1, i32 noundef range(i32 0, 9) %3, ptr noundef readonly %4)
  %.not.i = icmp eq ptr %5, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %emitter_indent.exit.i
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.226, ptr noundef nonnull %5)
  tail call fastcc void @emitter_print_value(ptr noundef nonnull %0, i32 noundef 2, i32 noundef -1, i32 noundef range(i32 0, 8) %6, ptr noundef readonly %7)
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.227)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %emitter_indent.exit.i
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  br label %emitter_json_value.exit

emitter_json_value.exit:                          ; preds = %bb.k, %bb.h, %emitter_json_key_prefix.exit.i17, %emitter_json_key.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.w, align 4, !tbaa !22
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emitter_json_kv(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i32 noundef range(i32 4, 8) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #5 {
bb.a:
  %.val.i = load i32, ptr %0, align 8, !tbaa !16  ; 3 uses
  %spec.select.i.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i.i, label %bb.b, label %emitter_json_value.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !23, !range !26, !noundef !27
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 1, !tbaa !23
  br label %emitter_json_key_prefix.exit.i

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i8, ptr %i.d, align 4, !tbaa !22, !range !26, !noundef !27
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.32)
  %.pre.i = load i32, ptr %0, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = phi i32 [ %.pre.i, %bb.e ], [ %.val.i, %bb.d ]
  %.not.i.i = icmp eq i32 %i.g, 1
  br i1 %.not.i.i, label %emitter_json_key_prefix.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.k = icmp ne i32 %i.j, 0                      ; 2 uses
  %.07.i.i.i = select i1 %i.k, ptr @.str.31, ptr @.str.34
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph.preheader.i.i.i, label %emitter_json_key_prefix.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  %i.m = zext i1 %i.k to i32
  %.08.i.i.i = shl nuw nsw i32 %i.i, %i.m
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.n, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i.i)
  %i.n = add nuw nsw i32 %.09.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.n, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_json_key_prefix.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !25

emitter_json_key_prefix.exit.loopexit.i:          ; preds = %.lr.ph.i.i.i
  %.pre6.i = load i32, ptr %0, align 8, !tbaa !16
  br label %emitter_json_key_prefix.exit.i

emitter_json_key_prefix.exit.i:                   ; preds = %emitter_json_key_prefix.exit.loopexit.i, %bb.g, %bb.c
  %i.o = phi i32 [ %.pre6.i, %emitter_json_key_prefix.exit.loopexit.i ], [ %.val.i, %bb.c ], [ %i.j, %bb.g ]
  %.fr.i = freeze i32 %i.o
  %i.p = icmp eq i32 %.fr.i, 1
  br i1 %i.p, label %emitter_json_key_prefix.exit.thread.i, label %emitter_json_key.exit

emitter_json_key_prefix.exit.thread.i:            ; preds = %emitter_json_key_prefix.exit.i, %bb.f
  br label %emitter_json_key.exit

emitter_json_key.exit:                            ; preds = %emitter_json_key_prefix.exit.i, %emitter_json_key_prefix.exit.thread.i
  %i.q = phi ptr [ @.str.29, %emitter_json_key_prefix.exit.thread.i ], [ @.str.31, %emitter_json_key_prefix.exit.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef %1, ptr noundef nonnull %i.q)
  store i8 1, ptr %i.a, align 1, !tbaa !23
  %.val.i4.pr = load i32, ptr %0, align 8, !tbaa !16
  %spec.select.i.i5 = icmp ult i32 %.val.i4.pr, 2
  br i1 %spec.select.i.i5, label %emitter_json_key_prefix.exit.i8, label %emitter_json_value.exit

emitter_json_key_prefix.exit.i8:                  ; preds = %emitter_json_key.exit
  store i8 0, ptr %i.a, align 1, !tbaa !23
  tail call fastcc void @emitter_print_value(ptr noundef nonnull %0, i32 noundef 2, i32 noundef -1, i32 noundef range(i32 0, 9) %2, ptr noundef nonnull readonly %3)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.r, align 4, !tbaa !22
  br label %emitter_json_value.exit

emitter_json_value.exit:                          ; preds = %bb.a, %emitter_json_key.exit, %emitter_json_key_prefix.exit.i8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emitter_json_array_kv_begin(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %.val.i = load i32, ptr %0, align 8, !tbaa !16  ; 3 uses
  %spec.select.i.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i.i, label %bb.b, label %emitter_json_array_begin.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !23, !range !26, !noundef !27
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 1, !tbaa !23
  br label %emitter_json_key_prefix.exit.i

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i8, ptr %i.d, align 4, !tbaa !22, !range !26, !noundef !27
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.32)
  %.pre.i = load i32, ptr %0, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = phi i32 [ %.pre.i, %bb.e ], [ %.val.i, %bb.d ]
  %.not.i.i = icmp eq i32 %i.g, 1
  br i1 %.not.i.i, label %emitter_json_key_prefix.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.k = icmp ne i32 %i.j, 0                      ; 2 uses
  %.07.i.i.i = select i1 %i.k, ptr @.str.31, ptr @.str.34
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph.preheader.i.i.i, label %emitter_json_key_prefix.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  %i.m = zext i1 %i.k to i32
  %.08.i.i.i = shl nuw nsw i32 %i.i, %i.m
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.n, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i.i)
  %i.n = add nuw nsw i32 %.09.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.n, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_json_key_prefix.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !25

emitter_json_key_prefix.exit.loopexit.i:          ; preds = %.lr.ph.i.i.i
  %.pre6.i = load i32, ptr %0, align 8, !tbaa !16
  br label %emitter_json_key_prefix.exit.i

emitter_json_key_prefix.exit.i:                   ; preds = %emitter_json_key_prefix.exit.loopexit.i, %bb.g, %bb.c
  %i.o = phi i32 [ %.pre6.i, %emitter_json_key_prefix.exit.loopexit.i ], [ %.val.i, %bb.c ], [ %i.j, %bb.g ]
  %.fr.i = freeze i32 %i.o
  %i.p = icmp eq i32 %.fr.i, 1
  br i1 %i.p, label %emitter_json_key_prefix.exit.thread.i, label %emitter_json_key.exit

emitter_json_key_prefix.exit.thread.i:            ; preds = %emitter_json_key_prefix.exit.i, %bb.f
  br label %emitter_json_key.exit

emitter_json_key.exit:                            ; preds = %emitter_json_key_prefix.exit.i, %emitter_json_key_prefix.exit.thread.i
  %i.q = phi ptr [ @.str.29, %emitter_json_key_prefix.exit.thread.i ], [ @.str.31, %emitter_json_key_prefix.exit.i ]
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef %1, ptr noundef nonnull %i.q)
  store i8 1, ptr %i.a, align 1, !tbaa !23
  %.val.i3.pr = load i32, ptr %0, align 8, !tbaa !16
  %spec.select.i.i4 = icmp ult i32 %.val.i3.pr, 2
  br i1 %spec.select.i.i4, label %emitter_json_key_prefix.exit.i7, label %emitter_json_array_begin.exit

emitter_json_key_prefix.exit.i7:                  ; preds = %emitter_json_key.exit
  store i8 0, ptr %i.a, align 1, !tbaa !23
  tail call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.228)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !24
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.u, align 4, !tbaa !22
  br label %emitter_json_array_begin.exit

emitter_json_array_begin.exit:                    ; preds = %bb.a, %emitter_json_key.exit, %emitter_json_key_prefix.exit.i7
  ret void
}

declare i32 @je_ctl_mibnametomib(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @je_ctl_bymibname(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emitter_print_value(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 42 uses
  %i.b = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  switch i32 %3, label %bb.ap [
    i32 0, label %bb.b
    i32 1, label %bb.f
    i32 2, label %bb.j
    i32 3, label %bb.n
    i32 7, label %bb.r
    i32 6, label %bb.v
    i32 8, label %bb.z
    i32 4, label %bb.ad
    i32 5, label %bb.ah
    i32 9, label %bb.al
  ]

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.e [
    i32 2, label %bb.c
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull @.str.222, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.28, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.d = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull @.str.223, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.28, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.e = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull @.str.224, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.28, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit

emitter_gen_fmt.exit:                             ; preds = %bb.c, %bb.d, %bb.e
  %i.f = load i8, ptr %4, align 1, !tbaa !44, !range !26, !noundef !27
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.g, ptr @.str.213, ptr @.str.214
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h)
  br label %bb.aq

bb.f:                                             ; preds = %bb.a
  switch i32 %1, label %bb.i [
    i32 2, label %bb.g
    i32 0, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.i = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull @.str.222, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.215, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit40

bb.h:                                             ; preds = %bb.f
  %i.j = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull @.str.223, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.215, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit40

bb.i:                                             ; preds = %bb.f
  %i.k = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull @.str.224, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.215, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit40

emitter_gen_fmt.exit40:                           ; preds = %bb.g, %bb.h, %bb.i
  %i.l = load i32, ptr %4, align 4, !tbaa !7
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.l)
  br label %bb.aq

bb.j:                                             ; preds = %bb.a
  switch i32 %1, label %bb.m [
    i32 2, label %bb.k
    i32 0, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.m = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull @.str.222, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.216, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit41

bb.l:                                             ; preds = %bb.j
  %i.n = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull @.str.223, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.216, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit41

bb.m:                                             ; preds = %bb.j
  %i.o = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull @.str.224, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.216, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit41

emitter_gen_fmt.exit41:                           ; preds = %bb.k, %bb.l, %bb.m
  %i.p = load i64, ptr %4, align 8, !tbaa !11
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.p)
  br label %bb.aq

bb.n:                                             ; preds = %bb.a
  switch i32 %1, label %bb.q [
    i32 2, label %bb.o
    i32 0, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.q = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull @.str.222, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.217, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit42

bb.p:                                             ; preds = %bb.n
  %i.r = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull @.str.223, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.217, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit42

bb.q:                                             ; preds = %bb.n
  %i.s = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull @.str.224, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.217, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit42

emitter_gen_fmt.exit42:                           ; preds = %bb.o, %bb.p, %bb.q
  %i.t = load i32, ptr %4, align 4, !tbaa !7
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.t)
  br label %bb.aq

bb.r:                                             ; preds = %bb.a
  switch i32 %1, label %bb.u [
    i32 2, label %bb.s
    i32 0, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.u = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull @.str.222, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.218, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit43

bb.t:                                             ; preds = %bb.r
  %i.v = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull @.str.223, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.218, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit43

bb.u:                                             ; preds = %bb.r
  %i.w = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull @.str.224, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.218, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit43

emitter_gen_fmt.exit43:                           ; preds = %bb.s, %bb.t, %bb.u
  %i.x = load i64, ptr %4, align 8, !tbaa !11
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.x)
  br label %bb.aq

bb.v:                                             ; preds = %bb.a
  switch i32 %1, label %bb.y [
    i32 2, label %bb.w
    i32 0, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.y = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull @.str.222, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.219, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit44

bb.x:                                             ; preds = %bb.v
  %i.z = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull @.str.223, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.219, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit44

bb.y:                                             ; preds = %bb.v
  %i.aa = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull @.str.224, i32 noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.219, i64 1)) #14 ; 0 uses
  br label %emitter_gen_fmt.exit44

emitter_gen_fmt.exit44:                           ; preds = %bb.w, %bb.x, %bb.y
  %i.ab = load i64, ptr %4, align 8, !tbaa !11
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.ab)
end_hunk_1
begin_hunk_2_@stats_arena_print:bb.a
bb.ch:                                            ; preds = %rate_per_second.exit246
  %i.sx = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i64 %i.ij, ptr %i.sx, align 16, !tbaa !11
  %i.sy = load i64, ptr %i.gd, align 8, !tbaa !11
  %i.sz = call i32 @je_mallctlbymib(ptr noundef nonnull %i.gc, i64 noundef %i.sy, ptr noundef nonnull %i.dp, ptr noundef nonnull %i.ge, ptr noundef null, i64 noundef 0) #14
  %.not146 = icmp eq i32 %i.sz, 0
  br i1 %.not146, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.319, i32 noundef 5, ptr noundef %i.dp)
  store i32 5, ptr %i.os, align 8, !tbaa !41
  %i.ta = load i64, ptr %i.dp, align 8, !tbaa !11 ; 4 uses
  store i64 %i.ta, ptr %i.ot, align 8, !tbaa !13
  %i.tb = load i64, ptr %i.eb, align 8, !tbaa !11 ; 3 uses
  %i.tc = icmp eq i64 %i.tb, 0
  %i.td = icmp eq i64 %i.ta, 0
  %or.cond.i247 = or i1 %i.td, %i.tc
  br i1 %or.cond.i247, label %rate_per_second.exit249, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.te = icmp ult i64 %i.tb, 1000000000
  br i1 %i.te, label %rate_per_second.exit249, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.tf = udiv i64 %i.tb, 1000000000
  %i.tg = udiv i64 %i.ta, %i.tf
  br label %rate_per_second.exit249

rate_per_second.exit249:                          ; preds = %bb.cj, %bb.ck, %bb.cl
  %.0.i248 = phi i64 [ %i.tg, %bb.cl ], [ 0, %bb.cj ], [ %i.ta, %bb.ck ]
  store i64 %.0.i248, ptr %i.ph, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gf) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gg) #14
  store i64 7, ptr %i.gg, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gh) #14
  store i64 8, ptr %i.gh, align 8, !tbaa !11
  %i.th = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.328, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.gg) #14
  %.not147 = icmp eq i32 %i.th, 0
  br i1 %.not147, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %rate_per_second.exit249
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.328) #14
  call void @abort() #15
  unreachable

bb.cn:                                            ; preds = %rate_per_second.exit249
  %i.ti = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store i64 %i.ij, ptr %i.ti, align 16, !tbaa !11
  %i.tj = load i64, ptr %i.gg, align 8, !tbaa !11
  %i.tk = call i32 @je_mallctlbymib(ptr noundef nonnull %i.gf, i64 noundef %i.tj, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.gh, ptr noundef null, i64 noundef 0) #14
  %.not148 = icmp eq i32 %i.tk, 0
  br i1 %.not148, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gh) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gg) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.329, i32 noundef 5, ptr noundef %i.dq)
  store i32 5, ptr %i.pu, align 8, !tbaa !41
  %i.tl = load i64, ptr %i.dq, align 8, !tbaa !11 ; 4 uses
  store i64 %i.tl, ptr %i.pv, align 8, !tbaa !13
  %i.tm = load i64, ptr %i.eb, align 8, !tbaa !11 ; 3 uses
  %i.tn = icmp eq i64 %i.tm, 0
  %i.to = icmp eq i64 %i.tl, 0
  %or.cond.i250 = or i1 %i.to, %i.tn
  br i1 %or.cond.i250, label %rate_per_second.exit252, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.tp = icmp ult i64 %i.tm, 1000000000
  br i1 %i.tp, label %rate_per_second.exit252, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.tq = udiv i64 %i.tm, 1000000000
  %i.tr = udiv i64 %i.tl, %i.tq
  br label %rate_per_second.exit252

rate_per_second.exit252:                          ; preds = %bb.cp, %bb.cq, %bb.cr
  %.0.i251 = phi i64 [ %i.tr, %bb.cr ], [ 0, %bb.cp ], [ %i.tl, %bb.cq ]
  store i64 %.0.i251, ptr %i.qj, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gi) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gj) #14
  store i64 7, ptr %i.gj, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gk) #14
  store i64 8, ptr %i.gk, align 8, !tbaa !11
  %i.ts = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.330, ptr noundef nonnull %i.gi, ptr noundef nonnull %i.gj) #14
  %.not149 = icmp eq i32 %i.ts, 0
  br i1 %.not149, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %rate_per_second.exit252
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.330) #14
  call void @abort() #15
  unreachable

bb.ct:                                            ; preds = %rate_per_second.exit252
  %i.tt = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store i64 %i.ij, ptr %i.tt, align 16, !tbaa !11
  %i.tu = load i64, ptr %i.gj, align 8, !tbaa !11
  %i.tv = call i32 @je_mallctlbymib(ptr noundef nonnull %i.gi, i64 noundef %i.tu, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.gk, ptr noundef null, i64 noundef 0) #14
  %.not150 = icmp eq i32 %i.tv, 0
  br i1 %.not150, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gk) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gi) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.331, i32 noundef 5, ptr noundef %i.dr)
  store i32 5, ptr %i.qw, align 8, !tbaa !41
  %i.tw = load i64, ptr %i.dr, align 8, !tbaa !11 ; 4 uses
  store i64 %i.tw, ptr %i.qx, align 8, !tbaa !13
  %i.tx = load i64, ptr %i.eb, align 8, !tbaa !11 ; 3 uses
  %i.ty = icmp eq i64 %i.tx, 0
  %i.tz = icmp eq i64 %i.tw, 0
  %or.cond.i253 = or i1 %i.tz, %i.ty
  br i1 %or.cond.i253, label %rate_per_second.exit255, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ua = icmp ult i64 %i.tx, 1000000000
  br i1 %i.ua, label %rate_per_second.exit255, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ub = udiv i64 %i.tx, 1000000000
  %i.uc = udiv i64 %i.tw, %i.ub
  br label %rate_per_second.exit255

rate_per_second.exit255:                          ; preds = %bb.cv, %bb.cw, %bb.cx
  %.0.i254 = phi i64 [ %i.uc, %bb.cx ], [ 0, %bb.cv ], [ %i.tw, %bb.cw ]
  store i64 %.0.i254, ptr %i.rl, align 8, !tbaa !13
  %i.ud = load i32, ptr %0, align 8, !tbaa !16    ; 2 uses
  %.not.i256 = icmp eq i32 %i.ud, 2
  br i1 %.not.i256, label %bb.cy, label %emitter_table_row.exit264

bb.cy:                                            ; preds = %rate_per_second.exit255
  %.not1315.i257 = icmp eq ptr %i.rj, null
  br i1 %.not1315.i257, label %select.unfold._crit_edge.i263, label %select.unfold.i258

select.unfold.i258:                               ; preds = %bb.cy, %select.unfold.i258
  %.016.i259 = phi ptr [ %i.ul, %select.unfold.i258 ], [ %i.rj, %bb.cy ] ; 5 uses
  %i.ue = load i32, ptr %.016.i259, align 8, !tbaa !37
  %i.uf = getelementptr inbounds nuw i8, ptr %.016.i259, i64 4
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !40
  %i.uh = getelementptr inbounds nuw i8, ptr %.016.i259, i64 8
  %i.ui = load i32, ptr %i.uh, align 8, !tbaa !41
  %i.uj = getelementptr inbounds nuw i8, ptr %.016.i259, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.ue, i32 noundef %i.ug, i32 noundef %i.ui, ptr noundef nonnull %i.uj)
  %i.uk = getelementptr inbounds nuw i8, ptr %.016.i259, i64 24
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !42 ; 3 uses
  %.not14.i260 = icmp eq ptr %i.ul, %i.rj
  %.not1317.i261 = icmp eq ptr %i.ul, null
  %.not13.i262 = or i1 %.not14.i260, %.not1317.i261
  br i1 %.not13.i262, label %select.unfold._crit_edge.i263, label %select.unfold.i258

select.unfold._crit_edge.i263:                    ; preds = %select.unfold.i258, %bb.cy
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.33)
  %.val.i.pr = load i32, ptr %0, align 8, !tbaa !16
  br label %emitter_table_row.exit264

emitter_table_row.exit264:                        ; preds = %rate_per_second.exit255, %select.unfold._crit_edge.i263
  %.val.i = phi i32 [ %i.ud, %rate_per_second.exit255 ], [ %.val.i.pr, %select.unfold._crit_edge.i263 ] ; 2 uses
  %spec.select.i.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i.i, label %bb.cz, label %emitter_json_object_end.exit

bb.cz:                                            ; preds = %emitter_table_row.exit264
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.un = load i32, ptr %i.um, align 8, !tbaa !24
  %i.uo = add nsw i32 %i.un, -1
  store i32 %i.uo, ptr %i.um, align 8, !tbaa !24
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.up, align 4, !tbaa !22
  %.not.i265 = icmp eq i32 %.val.i, 1
  br i1 %.not.i265, label %emitter_indent.exit.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.uq = load i32, ptr %i.um, align 8, !tbaa !24 ; 2 uses
  %i.ur = load i32, ptr %0, align 8, !tbaa !16
  %i.us = icmp ne i32 %i.ur, 0                    ; 2 uses
  %.07.i.i = select i1 %i.us, ptr @.str.31, ptr @.str.34
  %i.ut = icmp sgt i32 %i.uq, 0
  br i1 %i.ut, label %.lr.ph.preheader.i.i, label %emitter_indent.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.da
  %i.uu = zext i1 %i.us to i32
  %.08.i.i = shl nuw nsw i32 %i.uq, %i.uu
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi i32 [ %i.uv, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i)
  %i.uv = add nuw nsw i32 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.uv, %.08.i.i
  br i1 %exitcond.not.i.i, label %emitter_indent.exit.i, label %.lr.ph.i.i, !llvm.loop !25

emitter_indent.exit.i:                            ; preds = %.lr.ph.i.i, %bb.da, %bb.cz
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit

emitter_json_object_end.exit:                     ; preds = %emitter_table_row.exit264, %emitter_indent.exit.i
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.9)
  store ptr @.str.332, ptr %i.nh, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gl) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gm) #14
  store i64 7, ptr %i.gm, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gn) #14
  store i64 8, ptr %i.gn, align 8, !tbaa !11
  %i.uw = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.333, ptr noundef nonnull %i.gl, ptr noundef nonnull %i.gm) #14
  %.not151 = icmp eq i32 %i.uw, 0
  br i1 %.not151, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %emitter_json_object_end.exit
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.333) #14
  call void @abort() #15
  unreachable

bb.dc:                                            ; preds = %emitter_json_object_end.exit
  %i.ux = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store i64 %i.ij, ptr %i.ux, align 16, !tbaa !11
  %i.uy = load i64, ptr %i.gm, align 8, !tbaa !11
  %i.uz = call i32 @je_mallctlbymib(ptr noundef nonnull %i.gl, i64 noundef %i.uy, ptr noundef nonnull %i.ds, ptr noundef nonnull %i.gn, ptr noundef null, i64 noundef 0) #14
  %.not152 = icmp eq i32 %i.uz, 0
  br i1 %.not152, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.de:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gn) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gl) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.241, i32 noundef 6, ptr noundef %i.ds)
  store i32 6, ptr %i.nk, align 8, !tbaa !41
  %i.va = load i64, ptr %i.ds, align 8, !tbaa !11
  store i64 %i.va, ptr %i.nl, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.go) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gp) #14
  store i64 7, ptr %i.gp, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gq) #14
  store i64 8, ptr %i.gq, align 8, !tbaa !11
  %i.vb = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.334, ptr noundef nonnull %i.go, ptr noundef nonnull %i.gp) #14
  %.not153 = icmp eq i32 %i.vb, 0
  br i1 %.not153, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.334) #14
  call void @abort() #15
  unreachable

bb.dg:                                            ; preds = %bb.de
  %i.vc = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store i64 %i.ij, ptr %i.vc, align 16, !tbaa !11
  %i.vd = load i64, ptr %i.gp, align 8, !tbaa !11
  %i.ve = call i32 @je_mallctlbymib(ptr noundef nonnull %i.go, i64 noundef %i.vd, ptr noundef nonnull %i.dt, ptr noundef nonnull %i.gq, ptr noundef null, i64 noundef 0) #14
  %.not154 = icmp eq i32 %i.ve, 0
  br i1 %.not154, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.go) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.317, i32 noundef 5, ptr noundef %i.dt)
  store i32 5, ptr %i.nn, align 8, !tbaa !41
  %i.vf = load i64, ptr %i.dt, align 8, !tbaa !11 ; 4 uses
  store i64 %i.vf, ptr %i.no, align 8, !tbaa !13
  %i.vg = load i64, ptr %i.eb, align 8, !tbaa !11 ; 3 uses
  %i.vh = icmp eq i64 %i.vg, 0
  %i.vi = icmp eq i64 %i.vf, 0
  %or.cond.i266 = or i1 %i.vi, %i.vh
  br i1 %or.cond.i266, label %rate_per_second.exit268, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.vj = icmp ult i64 %i.vg, 1000000000
  br i1 %i.vj, label %rate_per_second.exit268, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.vk = udiv i64 %i.vg, 1000000000
  %i.vl = udiv i64 %i.vf, %i.vk
  br label %rate_per_second.exit268

rate_per_second.exit268:                          ; preds = %bb.di, %bb.dj, %bb.dk
  %.0.i267 = phi i64 [ %i.vl, %bb.dk ], [ 0, %bb.di ], [ %i.vf, %bb.dj ]
  store i64 %.0.i267, ptr %i.ns, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gr) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gs) #14
  store i64 7, ptr %i.gs, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gt) #14
  store i64 8, ptr %i.gt, align 8, !tbaa !11
  %i.vm = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.335, ptr noundef nonnull %i.gr, ptr noundef nonnull %i.gs) #14
  %.not155 = icmp eq i32 %i.vm, 0
  br i1 %.not155, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %rate_per_second.exit268
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.335) #14
  call void @abort() #15
  unreachable

bb.dm:                                            ; preds = %rate_per_second.exit268
  %i.vn = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store i64 %i.ij, ptr %i.vn, align 16, !tbaa !11
  %i.vo = load i64, ptr %i.gs, align 8, !tbaa !11
  %i.vp = call i32 @je_mallctlbymib(ptr noundef nonnull %i.gr, i64 noundef %i.vo, ptr noundef nonnull %i.du, ptr noundef nonnull %i.gt, ptr noundef null, i64 noundef 0) #14
  %.not156 = icmp eq i32 %i.vp, 0
  br i1 %.not156, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.do:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gt) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gs) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gr) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.318, i32 noundef 5, ptr noundef %i.du)
  store i32 5, ptr %i.nw, align 8, !tbaa !41
  %i.vq = load i64, ptr %i.du, align 8, !tbaa !11 ; 4 uses
  store i64 %i.vq, ptr %i.nx, align 8, !tbaa !13
  %i.vr = load i64, ptr %i.eb, align 8, !tbaa !11 ; 3 uses
  %i.vs = icmp eq i64 %i.vr, 0
  %i.vt = icmp eq i64 %i.vq, 0
  %or.cond.i269 = or i1 %i.vt, %i.vs
  br i1 %or.cond.i269, label %rate_per_second.exit271, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.vu = icmp ult i64 %i.vr, 1000000000
  br i1 %i.vu, label %rate_per_second.exit271, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.vv = udiv i64 %i.vr, 1000000000
  %i.vw = udiv i64 %i.vq, %i.vv
  br label %rate_per_second.exit271

rate_per_second.exit271:                          ; preds = %bb.do, %bb.dp, %bb.dq
  %.0.i270 = phi i64 [ %i.vw, %bb.dq ], [ 0, %bb.do ], [ %i.vq, %bb.dp ]
  store i64 %.0.i270, ptr %i.of, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gu) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gv) #14
  store i64 7, ptr %i.gv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gw) #14
  store i64 8, ptr %i.gw, align 8, !tbaa !11
  %i.vx = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.336, ptr noundef nonnull %i.gu, ptr noundef nonnull %i.gv) #14
  %.not157 = icmp eq i32 %i.vx, 0
  br i1 %.not157, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %rate_per_second.exit271
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.336) #14
  call void @abort() #15
  unreachable

bb.ds:                                            ; preds = %rate_per_second.exit271
  %i.vy = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store i64 %i.ij, ptr %i.vy, align 16, !tbaa !11
  %i.vz = load i64, ptr %i.gv, align 8, !tbaa !11
  %i.wa = call i32 @je_mallctlbymib(ptr noundef nonnull %i.gu, i64 noundef %i.vz, ptr noundef nonnull %i.dv, ptr noundef nonnull %i.gw, ptr noundef null, i64 noundef 0) #14
  %.not158 = icmp eq i32 %i.wa, 0
  br i1 %.not158, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.du:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gu) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.319, i32 noundef 5, ptr noundef %i.dv)
  store i32 5, ptr %i.os, align 8, !tbaa !41
  %i.wb = load i64, ptr %i.dv, align 8, !tbaa !11 ; 4 uses
  store i64 %i.wb, ptr %i.ot, align 8, !tbaa !13
  %i.wc = load i64, ptr %i.eb, align 8, !tbaa !11 ; 3 uses
  %i.wd = icmp eq i64 %i.wc, 0
  %i.we = icmp eq i64 %i.wb, 0
  %or.cond.i272 = or i1 %i.we, %i.wd
  br i1 %or.cond.i272, label %rate_per_second.exit274, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.wf = icmp ult i64 %i.wc, 1000000000
  br i1 %i.wf, label %rate_per_second.exit274, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.wg = udiv i64 %i.wc, 1000000000
  %i.wh = udiv i64 %i.wb, %i.wg
  br label %rate_per_second.exit274

rate_per_second.exit274:                          ; preds = %bb.du, %bb.dv, %bb.dw
  %.0.i273 = phi i64 [ %i.wh, %bb.dw ], [ 0, %bb.du ], [ %i.wb, %bb.dv ]
  store i64 %.0.i273, ptr %i.ph, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gx) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gy) #14
  store i64 7, ptr %i.gy, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gz) #14
  store i64 8, ptr %i.gz, align 8, !tbaa !11
  %i.wi = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.337, ptr noundef nonnull %i.gx, ptr noundef nonnull %i.gy) #14
  %.not159 = icmp eq i32 %i.wi, 0
  br i1 %.not159, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %rate_per_second.exit274
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.337) #14
  call void @abort() #15
  unreachable

bb.dy:                                            ; preds = %rate_per_second.exit274
  %i.wj = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store i64 %i.ij, ptr %i.wj, align 16, !tbaa !11
  %i.wk = load i64, ptr %i.gy, align 8, !tbaa !11
  %i.wl = call i32 @je_mallctlbymib(ptr noundef nonnull %i.gx, i64 noundef %i.wk, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.gz, ptr noundef null, i64 noundef 0) #14
  %.not160 = icmp eq i32 %i.wl, 0
  br i1 %.not160, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gy) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.329, i32 noundef 5, ptr noundef %i.dw)
  store i32 5, ptr %i.pu, align 8, !tbaa !41
  %i.wm = load i64, ptr %i.dw, align 8, !tbaa !11 ; 4 uses
  store i64 %i.wm, ptr %i.pv, align 8, !tbaa !13
  %i.wn = load i64, ptr %i.eb, align 8, !tbaa !11 ; 3 uses
  %i.wo = icmp eq i64 %i.wn, 0
  %i.wp = icmp eq i64 %i.wm, 0
  %or.cond.i275 = or i1 %i.wp, %i.wo
  br i1 %or.cond.i275, label %rate_per_second.exit277, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.wq = icmp ult i64 %i.wn, 1000000000
  br i1 %i.wq, label %rate_per_second.exit277, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.wr = udiv i64 %i.wn, 1000000000
  %i.ws = udiv i64 %i.wm, %i.wr
  br label %rate_per_second.exit277

rate_per_second.exit277:                          ; preds = %bb.ea, %bb.eb, %bb.ec
  %.0.i276 = phi i64 [ %i.ws, %bb.ec ], [ 0, %bb.ea ], [ %i.wm, %bb.eb ]
  store i64 %.0.i276, ptr %i.qj, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb) #14
  store i64 7, ptr %i.hb, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc) #14
  store i64 8, ptr %i.hc, align 8, !tbaa !11
  %i.wt = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.338, ptr noundef nonnull %i.ha, ptr noundef nonnull %i.hb) #14
  %.not161 = icmp eq i32 %i.wt, 0
  br i1 %.not161, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %rate_per_second.exit277
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.338) #14
  call void @abort() #15
  unreachable

bb.ee:                                            ; preds = %rate_per_second.exit277
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store i64 %i.ij, ptr %i.wu, align 16, !tbaa !11
  %i.wv = load i64, ptr %i.hb, align 8, !tbaa !11
  %i.ww = call i32 @je_mallctlbymib(ptr noundef nonnull %i.ha, i64 noundef %i.wv, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.hc, ptr noundef null, i64 noundef 0) #14
  %.not162 = icmp eq i32 %i.ww, 0
  br i1 %.not162, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.331, i32 noundef 5, ptr noundef %i.dx)
  store i32 5, ptr %i.qw, align 8, !tbaa !41
  %i.wx = load i64, ptr %i.dx, align 8, !tbaa !11 ; 4 uses
  store i64 %i.wx, ptr %i.qx, align 8, !tbaa !13
  %i.wy = load i64, ptr %i.eb, align 8, !tbaa !11 ; 3 uses
  %i.wz = icmp eq i64 %i.wy, 0
  %i.xa = icmp eq i64 %i.wx, 0
  %or.cond.i278 = or i1 %i.xa, %i.wz
  br i1 %or.cond.i278, label %rate_per_second.exit280, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.xb = icmp ult i64 %i.wy, 1000000000
  br i1 %i.xb, label %rate_per_second.exit280, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.xc = udiv i64 %i.wy, 1000000000
  %i.xd = udiv i64 %i.wx, %i.xc
  br label %rate_per_second.exit280

rate_per_second.exit280:                          ; preds = %bb.eg, %bb.eh, %bb.ei
  %.0.i279 = phi i64 [ %i.xd, %bb.ei ], [ 0, %bb.eg ], [ %i.wx, %bb.eh ]
  store i64 %.0.i279, ptr %i.rl, align 8, !tbaa !13
  %i.xe = load i32, ptr %0, align 8, !tbaa !16    ; 2 uses
  %.not.i281 = icmp eq i32 %i.xe, 2
  br i1 %.not.i281, label %bb.ej, label %emitter_table_row.exit289

bb.ej:                                            ; preds = %rate_per_second.exit280
  %.not1315.i282 = icmp eq ptr %i.rj, null
  br i1 %.not1315.i282, label %select.unfold._crit_edge.i288, label %select.unfold.i283

select.unfold.i283:                               ; preds = %bb.ej, %select.unfold.i283
  %.016.i284 = phi ptr [ %i.xm, %select.unfold.i283 ], [ %i.rj, %bb.ej ] ; 5 uses
  %i.xf = load i32, ptr %.016.i284, align 8, !tbaa !37
  %i.xg = getelementptr inbounds nuw i8, ptr %.016.i284, i64 4
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !40
  %i.xi = getelementptr inbounds nuw i8, ptr %.016.i284, i64 8
  %i.xj = load i32, ptr %i.xi, align 8, !tbaa !41
  %i.xk = getelementptr inbounds nuw i8, ptr %.016.i284, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.xf, i32 noundef %i.xh, i32 noundef %i.xj, ptr noundef nonnull %i.xk)
  %i.xl = getelementptr inbounds nuw i8, ptr %.016.i284, i64 24
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !42 ; 3 uses
  %.not14.i285 = icmp eq ptr %i.xm, %i.rj
  %.not1317.i286 = icmp eq ptr %i.xm, null
  %.not13.i287 = or i1 %.not14.i285, %.not1317.i286
  br i1 %.not13.i287, label %select.unfold._crit_edge.i288, label %select.unfold.i283

select.unfold._crit_edge.i288:                    ; preds = %select.unfold.i283, %bb.ej
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.33)
  %.val.i290.pr = load i32, ptr %0, align 8, !tbaa !16
  br label %emitter_table_row.exit289

emitter_table_row.exit289:                        ; preds = %rate_per_second.exit280, %select.unfold._crit_edge.i288
  %.val.i290 = phi i32 [ %i.xe, %rate_per_second.exit280 ], [ %.val.i290.pr, %select.unfold._crit_edge.i288 ] ; 2 uses
  %spec.select.i.i291 = icmp ult i32 %.val.i290, 2
  br i1 %spec.select.i.i291, label %bb.ek, label %emitter_json_object_end.exit300

bb.ek:                                            ; preds = %emitter_table_row.exit289
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.xo = load i32, ptr %i.xn, align 8, !tbaa !24
  %i.xp = add nsw i32 %i.xo, -1
  store i32 %i.xp, ptr %i.xn, align 8, !tbaa !24
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.xq, align 4, !tbaa !22
  %.not.i292 = icmp eq i32 %.val.i290, 1
  br i1 %.not.i292, label %emitter_indent.exit.i294, label %bb.el

bb.el:                                            ; preds = %bb.ek
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.xr = load i32, ptr %i.xn, align 8, !tbaa !24 ; 2 uses
  %i.xs = load i32, ptr %0, align 8, !tbaa !16
  %i.xt = icmp ne i32 %i.xs, 0                    ; 2 uses
  %.07.i.i293 = select i1 %i.xt, ptr @.str.31, ptr @.str.34
  %i.xu = icmp sgt i32 %i.xr, 0
  br i1 %i.xu, label %.lr.ph.preheader.i.i295, label %emitter_indent.exit.i294

.lr.ph.preheader.i.i295:                          ; preds = %bb.el
  %i.xv = zext i1 %i.xt to i32
  %.08.i.i296 = shl nuw nsw i32 %i.xr, %i.xv
  br label %.lr.ph.i.i297

.lr.ph.i.i297:                                    ; preds = %.lr.ph.i.i297, %.lr.ph.preheader.i.i295
  %.09.i.i298 = phi i32 [ %i.xw, %.lr.ph.i.i297 ], [ 0, %.lr.ph.preheader.i.i295 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i293)
  %i.xw = add nuw nsw i32 %.09.i.i298, 1          ; 2 uses
  %exitcond.not.i.i299 = icmp eq i32 %i.xw, %.08.i.i296
  br i1 %exitcond.not.i.i299, label %emitter_indent.exit.i294, label %.lr.ph.i.i297, !llvm.loop !25

emitter_indent.exit.i294:                         ; preds = %.lr.ph.i.i297, %bb.el, %bb.ek
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit300

emitter_json_object_end.exit300:                  ; preds = %emitter_table_row.exit289, %emitter_indent.exit.i294
  store ptr @.str.339, ptr %i.nh, align 8, !tbaa !13
  %i.xx = load i64, ptr %i.dm, align 8, !tbaa !11
  %i.xy = load i64, ptr %i.ds, align 8, !tbaa !11
  %i.xz = add i64 %i.xy, %i.xx
  store i64 %i.xz, ptr %i.nl, align 8, !tbaa !13
  %i.ya = load i64, ptr %i.dn, align 8, !tbaa !11
  %i.yb = load i64, ptr %i.dt, align 8, !tbaa !11
  %i.yc = add i64 %i.yb, %i.ya                    ; 4 uses
  store i64 %i.yc, ptr %i.no, align 8, !tbaa !13
  %i.yd = load i64, ptr %i.do, align 8, !tbaa !11
  %i.ye = load i64, ptr %i.du, align 8, !tbaa !11
  %i.yf = add i64 %i.ye, %i.yd                    ; 4 uses
  store i64 %i.yf, ptr %i.nx, align 8, !tbaa !13
  %i.yg = load i64, ptr %i.dp, align 8, !tbaa !11
  %i.yh = load i64, ptr %i.dv, align 8, !tbaa !11
  %i.yi = add i64 %i.yh, %i.yg                    ; 4 uses
  store i64 %i.yi, ptr %i.ot, align 8, !tbaa !13
  %i.yj = load i64, ptr %i.dq, align 8, !tbaa !11
  %i.yk = load i64, ptr %i.dw, align 8, !tbaa !11
  %i.yl = add i64 %i.yk, %i.yj                    ; 4 uses
  store i64 %i.yl, ptr %i.pv, align 8, !tbaa !13
  %i.ym = load i64, ptr %i.dr, align 8, !tbaa !11
  %i.yn = load i64, ptr %i.dx, align 8, !tbaa !11
  %i.yo = add i64 %i.yn, %i.ym                    ; 4 uses
  store i64 %i.yo, ptr %i.qx, align 8, !tbaa !13
  %i.yp = load i64, ptr %i.eb, align 8, !tbaa !11 ; 11 uses
  %i.yq = icmp eq i64 %i.yp, 0                    ; 5 uses
  %i.yr = icmp eq i64 %i.yc, 0
  %or.cond.i301 = or i1 %i.yr, %i.yq
  br i1 %or.cond.i301, label %rate_per_second.exit303, label %bb.em

bb.em:                                            ; preds = %emitter_json_object_end.exit300
  %i.ys = icmp ult i64 %i.yp, 1000000000
  br i1 %i.ys, label %rate_per_second.exit303, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.yt = udiv i64 %i.yp, 1000000000
  %i.yu = udiv i64 %i.yc, %i.yt
  br label %rate_per_second.exit303

rate_per_second.exit303:                          ; preds = %emitter_json_object_end.exit300, %bb.em, %bb.en
  %.0.i302 = phi i64 [ %i.yu, %bb.en ], [ 0, %emitter_json_object_end.exit300 ], [ %i.yc, %bb.em ]
  store i64 %.0.i302, ptr %i.ns, align 8, !tbaa !13
  %i.yv = icmp eq i64 %i.yf, 0
  %or.cond.i304 = or i1 %i.yv, %i.yq
  br i1 %or.cond.i304, label %rate_per_second.exit306, label %bb.eo

bb.eo:                                            ; preds = %rate_per_second.exit303
  %i.yw = icmp ult i64 %i.yp, 1000000000
  br i1 %i.yw, label %rate_per_second.exit306, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.yx = udiv i64 %i.yp, 1000000000
  %i.yy = udiv i64 %i.yf, %i.yx
  br label %rate_per_second.exit306

rate_per_second.exit306:                          ; preds = %rate_per_second.exit303, %bb.eo, %bb.ep
  %.0.i305 = phi i64 [ %i.yy, %bb.ep ], [ 0, %rate_per_second.exit303 ], [ %i.yf, %bb.eo ]
  store i64 %.0.i305, ptr %i.of, align 8, !tbaa !13
  %i.yz = icmp eq i64 %i.yi, 0
  %or.cond.i307 = or i1 %i.yz, %i.yq
  br i1 %or.cond.i307, label %rate_per_second.exit309, label %bb.eq

bb.eq:                                            ; preds = %rate_per_second.exit306
  %i.za = icmp ult i64 %i.yp, 1000000000
  br i1 %i.za, label %rate_per_second.exit309, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.zb = udiv i64 %i.yp, 1000000000
  %i.zc = udiv i64 %i.yi, %i.zb
  br label %rate_per_second.exit309

rate_per_second.exit309:                          ; preds = %rate_per_second.exit306, %bb.eq, %bb.er
  %.0.i308 = phi i64 [ %i.zc, %bb.er ], [ 0, %rate_per_second.exit306 ], [ %i.yi, %bb.eq ]
  store i64 %.0.i308, ptr %i.ph, align 8, !tbaa !13
  %i.zd = icmp eq i64 %i.yl, 0
  %or.cond.i310 = or i1 %i.zd, %i.yq
  br i1 %or.cond.i310, label %rate_per_second.exit312, label %bb.es

bb.es:                                            ; preds = %rate_per_second.exit309
  %i.ze = icmp ult i64 %i.yp, 1000000000
  br i1 %i.ze, label %rate_per_second.exit312, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.zf = udiv i64 %i.yp, 1000000000
  %i.zg = udiv i64 %i.yl, %i.zf
  br label %rate_per_second.exit312

rate_per_second.exit312:                          ; preds = %rate_per_second.exit309, %bb.es, %bb.et
  %.0.i311 = phi i64 [ %i.zg, %bb.et ], [ 0, %rate_per_second.exit309 ], [ %i.yl, %bb.es ]
  store i64 %.0.i311, ptr %i.qj, align 8, !tbaa !13
  %i.zh = icmp eq i64 %i.yo, 0
  %or.cond.i313 = or i1 %i.zh, %i.yq
  br i1 %or.cond.i313, label %rate_per_second.exit315, label %bb.eu

bb.eu:                                            ; preds = %rate_per_second.exit312
  %i.zi = icmp ult i64 %i.yp, 1000000000
  br i1 %i.zi, label %rate_per_second.exit315, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.zj = udiv i64 %i.yp, 1000000000
  %i.zk = udiv i64 %i.yo, %i.zj
  br label %rate_per_second.exit315

rate_per_second.exit315:                          ; preds = %rate_per_second.exit312, %bb.eu, %bb.ev
  %.0.i314 = phi i64 [ %i.zk, %bb.ev ], [ 0, %rate_per_second.exit312 ], [ %i.yo, %bb.eu ]
  store i64 %.0.i314, ptr %i.rl, align 8, !tbaa !13
  %i.zl = load i32, ptr %0, align 8, !tbaa !16
  %.not.i316 = icmp eq i32 %i.zl, 2
  br i1 %.not.i316, label %bb.ew, label %emitter_col_init.exit328

bb.ew:                                            ; preds = %rate_per_second.exit315
  %.not1315.i317 = icmp eq ptr %i.rj, null
  br i1 %.not1315.i317, label %select.unfold._crit_edge.i323, label %select.unfold.i318

select.unfold.i318:                               ; preds = %bb.ew, %select.unfold.i318
  %.016.i319 = phi ptr [ %i.zt, %select.unfold.i318 ], [ %i.rj, %bb.ew ] ; 5 uses
  %i.zm = load i32, ptr %.016.i319, align 8, !tbaa !37
  %i.zn = getelementptr inbounds nuw i8, ptr %.016.i319, i64 4
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !40
  %i.zp = getelementptr inbounds nuw i8, ptr %.016.i319, i64 8
  %i.zq = load i32, ptr %i.zp, align 8, !tbaa !41
  %i.zr = getelementptr inbounds nuw i8, ptr %.016.i319, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.zm, i32 noundef %i.zo, i32 noundef %i.zq, ptr noundef nonnull %i.zr)
  %i.zs = getelementptr inbounds nuw i8, ptr %.016.i319, i64 24
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !42 ; 3 uses
  %.not14.i320 = icmp eq ptr %i.zt, %i.rj
  %.not1317.i321 = icmp eq ptr %i.zt, null
  %.not13.i322 = or i1 %.not14.i320, %.not1317.i321
  br i1 %.not13.i322, label %select.unfold._crit_edge.i323, label %select.unfold.i318

select.unfold._crit_edge.i323:                    ; preds = %select.unfold.i318, %bb.ew
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.33)
  %.pre = load i32, ptr %0, align 8, !tbaa !16
  %i.zu = icmp eq i32 %.pre, 2
  br label %emitter_col_init.exit328

emitter_col_init.exit328:                         ; preds = %select.unfold._crit_edge.i323, %rate_per_second.exit315
  %.not.i329 = phi i1 [ %i.zu, %select.unfold._crit_edge.i323 ], [ false, %rate_per_second.exit315 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #14
  %i.zv = getelementptr inbounds nuw i8, ptr %47, i64 24
  %i.zw = getelementptr inbounds nuw i8, ptr %47, i64 32
  store <2 x i32> <i32 0, i32 21>, ptr %47, align 8, !tbaa !7
  %i.zx = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i32 9, ptr %i.zx, align 8, !tbaa !41
  %i.zy = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 13 uses
  store ptr @.str.29, ptr %i.zy, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #14
  %i.zz = getelementptr inbounds nuw i8, ptr %48, i64 24
  %i.aaa = getelementptr inbounds nuw i8, ptr %48, i64 32
  store ptr %48, ptr %i.zw, align 8, !tbaa !51
  store ptr %47, ptr %i.aaa, align 8, !tbaa !51
  store ptr %47, ptr %i.zz, align 8, !tbaa !42
  store ptr %48, ptr %i.zv, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 16>, ptr %48, align 8, !tbaa !7
  %i.aab = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 3 uses
  store i32 9, ptr %i.aab, align 8, !tbaa !41
  %i.aac = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 13 uses
  store ptr @.str.29, ptr %i.aac, align 8, !tbaa !13
  br i1 %.not.i329, label %select.unfold.i331, label %emitter_table_row.exit346.critedge

select.unfold.i331:                               ; preds = %emitter_col_init.exit328, %select.unfold.i331
  %.016.i332 = phi ptr [ %i.aak, %select.unfold.i331 ], [ %47, %emitter_col_init.exit328 ] ; 5 uses
  %i.aad = load i32, ptr %.016.i332, align 8, !tbaa !37
  %i.aae = getelementptr inbounds nuw i8, ptr %.016.i332, i64 4
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !40
  %i.aag = getelementptr inbounds nuw i8, ptr %.016.i332, i64 8
  %i.aah = load i32, ptr %i.aag, align 8, !tbaa !41
  %i.aai = getelementptr inbounds nuw i8, ptr %.016.i332, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.aad, i32 noundef %i.aaf, i32 noundef %i.aah, ptr noundef nonnull %i.aai)
  %i.aaj = getelementptr inbounds nuw i8, ptr %.016.i332, i64 24
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !42 ; 3 uses
  %.not14.i333 = icmp eq ptr %i.aak, %47
  %.not1317.i334 = icmp eq ptr %i.aak, null
  %.not13.i335 = or i1 %.not14.i333, %.not1317.i334
  br i1 %.not13.i335, label %select.unfold._crit_edge.i336, label %select.unfold.i331

select.unfold._crit_edge.i336:                    ; preds = %select.unfold.i331
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.33)
  %.pr = load i32, ptr %0, align 8, !tbaa !16
  %i.aal = icmp eq i32 %.pr, 2
  store i32 6, ptr %i.aab, align 8, !tbaa !41
  store ptr @.str.340, ptr %i.zy, align 8, !tbaa !13
  %i.aam = load i64, ptr %i.cw, align 8, !tbaa !11
  %i.aan = load i64, ptr %i.cv, align 8, !tbaa !11
  %i.aao = mul i64 %i.aan, %i.aam
  store i64 %i.aao, ptr %i.aac, align 8, !tbaa !13
  br i1 %i.aal, label %select.unfold.i340, label %emitter_table_row.exit346

select.unfold.i340:                               ; preds = %select.unfold._crit_edge.i336, %select.unfold.i340
  %.016.i341 = phi ptr [ %i.aaw, %select.unfold.i340 ], [ %47, %select.unfold._crit_edge.i336 ] ; 5 uses
  %i.aap = load i32, ptr %.016.i341, align 8, !tbaa !37
  %i.aaq = getelementptr inbounds nuw i8, ptr %.016.i341, i64 4
end_hunk_2
begin_hunk_3_@stats_arena_print:bb.a

bb.gh:                                            ; preds = %emitter_table_row.exit427
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.363) #14
  call void @abort() #15
  unreachable

bb.gi:                                            ; preds = %emitter_table_row.exit427
  %i.afx = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store i64 %i.ij, ptr %i.afx, align 16, !tbaa !11
  %i.afy = load i64, ptr %i.if, align 8, !tbaa !11
  %i.afz = call i32 @je_mallctlbymib(ptr noundef nonnull %i.ie, i64 noundef %i.afy, ptr noundef nonnull %i.df, ptr noundef nonnull %i.ig, ptr noundef null, i64 noundef 0) #14
  %.not182 = icmp eq i32 %i.afz, 0
  br i1 %.not182, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.gk:                                            ; preds = %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ig) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.if) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ie) #14
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef 6, ptr noundef %i.df)
  store ptr @.str.364, ptr %i.zy, align 8, !tbaa !13
  %i.aga = load i64, ptr %i.df, align 8, !tbaa !11
  store i64 %i.aga, ptr %i.aac, align 8, !tbaa !13
  %i.agb = load i32, ptr %0, align 8, !tbaa !16
  %.not.i428 = icmp eq i32 %i.agb, 2
  br i1 %.not.i428, label %select.unfold.i430, label %emitter_table_row.exit436

select.unfold.i430:                               ; preds = %bb.gk, %select.unfold.i430
  %.016.i431 = phi ptr [ %i.agj, %select.unfold.i430 ], [ %47, %bb.gk ] ; 5 uses
  %i.agc = load i32, ptr %.016.i431, align 8, !tbaa !37
  %i.agd = getelementptr inbounds nuw i8, ptr %.016.i431, i64 4
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !40
  %i.agf = getelementptr inbounds nuw i8, ptr %.016.i431, i64 8
  %i.agg = load i32, ptr %i.agf, align 8, !tbaa !41
  %i.agh = getelementptr inbounds nuw i8, ptr %.016.i431, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.agc, i32 noundef %i.age, i32 noundef %i.agg, ptr noundef nonnull %i.agh)
  %i.agi = getelementptr inbounds nuw i8, ptr %.016.i431, i64 24
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !42 ; 3 uses
  %.not14.i432 = icmp eq ptr %i.agj, %47
  %.not1317.i433 = icmp eq ptr %i.agj, null
  %.not13.i434 = or i1 %.not14.i432, %.not1317.i433
  br i1 %.not13.i434, label %select.unfold._crit_edge.i435, label %select.unfold.i430

select.unfold._crit_edge.i435:                    ; preds = %select.unfold.i430
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.33)
  br label %emitter_table_row.exit436

emitter_table_row.exit436:                        ; preds = %bb.gk, %select.unfold._crit_edge.i435
  br i1 %4, label %bb.gl, label %bb.ib

bb.gl:                                            ; preds = %emitter_table_row.exit436
  %i.agk = load i64, ptr %i.eb, align 8, !tbaa !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #14
  store ptr null, ptr %25, align 8, !tbaa !33
  call fastcc void @mutex_stats_init_cols(ptr noundef %25, ptr noundef nonnull @.str.29, ptr noundef nonnull %26, ptr noundef %27, ptr noundef %28)
  call fastcc void @emitter_json_object_kv_begin(ptr noundef nonnull %0, ptr noundef nonnull @.str.254)
  %i.agl = load i32, ptr %0, align 8, !tbaa !16
  %.not.i16.i = icmp eq i32 %i.agl, 2
  br i1 %.not.i16.i, label %bb.gm, label %emitter_table_row.exit.i

bb.gm:                                            ; preds = %bb.gl
  %i.agm = load ptr, ptr %25, align 8, !tbaa !33  ; 3 uses
  %.not1315.i.i = icmp eq ptr %i.agm, null
  br i1 %.not1315.i.i, label %select.unfold._crit_edge.i.i, label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %bb.gm, %select.unfold.i.i
  %.016.i.i = phi ptr [ %i.agu, %select.unfold.i.i ], [ %i.agm, %bb.gm ] ; 5 uses
  %i.agn = load i32, ptr %.016.i.i, align 8, !tbaa !37
  %i.ago = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 4
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !40
  %i.agq = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 8
  %i.agr = load i32, ptr %i.agq, align 8, !tbaa !41
  %i.ags = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.agn, i32 noundef %i.agp, i32 noundef %i.agr, ptr noundef nonnull %i.ags)
  %i.agt = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 24
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !42 ; 3 uses
  %.not14.i.i = icmp eq ptr %i.agu, %i.agm
  %.not1317.i.i = icmp eq ptr %i.agu, null
  %.not13.i.i = or i1 %.not14.i.i, %.not1317.i.i
  br i1 %.not13.i.i, label %select.unfold._crit_edge.i.i, label %select.unfold.i.i

select.unfold._crit_edge.i.i:                     ; preds = %select.unfold.i.i, %bb.gm
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.33)
  br label %emitter_table_row.exit.i

emitter_table_row.exit.i:                         ; preds = %select.unfold._crit_edge.i.i, %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp) #14
  store i64 7, ptr %i.cp, align 8, !tbaa !11
  %i.agv = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 21 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 832 ; 10 uses
  %i.agx = load i8, ptr %i.agw, align 8, !tbaa !13
  %.not.i.i = icmp eq i8 %i.agx, 0
  br i1 %.not.i.i, label %tsd_fetch_impl.exit.i, label %bb.gn, !prof !30

bb.gn:                                            ; preds = %emitter_table_row.exit.i
  %i.agy = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.agv, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit.i

tsd_fetch_impl.exit.i:                            ; preds = %bb.gn, %emitter_table_row.exit.i
  %.0.i.i = phi ptr [ %i.agy, %bb.gn ], [ %i.agv, %emitter_table_row.exit.i ]
  %i.agz = call i32 @je_ctl_mibnametomib(ptr noundef %.0.i.i, ptr noundef nonnull %i.co, i64 noundef 0, ptr noundef nonnull @.str.259, ptr noundef nonnull %i.cp) #14
  %.not.i437 = icmp eq i32 %i.agz, 0
  br i1 %.not.i437, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %tsd_fetch_impl.exit.i
  call void @je_malloc_write(ptr noundef nonnull @.str.201) #14
  call void @abort() #15
  unreachable

bb.gp:                                            ; preds = %tsd_fetch_impl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp) #14
  %i.aha = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 %i.ij, ptr %i.aha, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq) #14
  store i64 7, ptr %i.cq, align 8, !tbaa !11
  %i.ahb = load i8, ptr %i.agw, align 8, !tbaa !13
  %.not.i13.i = icmp eq i8 %i.ahb, 0
  br i1 %.not.i13.i, label %tsd_fetch_impl.exit15.i, label %bb.gq, !prof !30

bb.gq:                                            ; preds = %bb.gp
  %i.ahc = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.agv, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit15.i

tsd_fetch_impl.exit15.i:                          ; preds = %bb.gq, %bb.gp
  %.0.i14.i = phi ptr [ %i.ahc, %bb.gq ], [ %i.agv, %bb.gp ]
  %i.ahd = call i32 @je_ctl_mibnametomib(ptr noundef %.0.i14.i, ptr noundef nonnull %i.co, i64 noundef 3, ptr noundef nonnull @.str.254, ptr noundef nonnull %i.cq) #14
  %.not12.i = icmp eq i32 %i.ahd, 0
  br i1 %.not12.i, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %tsd_fetch_impl.exit15.i
  call void @je_malloc_write(ptr noundef nonnull @.str.201) #14
  call void @abort() #15
  unreachable

bb.gs:                                            ; preds = %tsd_fetch_impl.exit15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq) #14
  %i.ahe = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ahf = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ahg = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %27, i64 48
  %i.ahi = icmp eq i64 %i.agk, 0                  ; 5 uses
  %i.ahj = icmp ult i64 %i.agk, 1000000000        ; 5 uses
  %i.ahk = udiv i64 %i.agk, 1000000000            ; 5 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %27, i64 56
  %i.ahm = getelementptr inbounds nuw i8, ptr %27, i64 88
  %i.ahn = getelementptr inbounds nuw i8, ptr %27, i64 96 ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %27, i64 128
  %i.ahp = getelementptr inbounds nuw i8, ptr %27, i64 136
  %i.ahq = getelementptr inbounds nuw i8, ptr %27, i64 168
  %i.ahr = getelementptr inbounds nuw i8, ptr %27, i64 176 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %27, i64 208
  %i.aht = getelementptr inbounds nuw i8, ptr %27, i64 216
  %i.ahu = getelementptr inbounds nuw i8, ptr %27, i64 248
  %i.ahv = getelementptr inbounds nuw i8, ptr %27, i64 256 ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %27, i64 288
  %i.ahx = getelementptr inbounds nuw i8, ptr %27, i64 296
  %i.ahy = getelementptr inbounds nuw i8, ptr %27, i64 328
  %i.ahz = getelementptr inbounds nuw i8, ptr %27, i64 336 ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %27, i64 368
  %i.aib = getelementptr inbounds nuw i8, ptr %27, i64 376
  %i.aic = getelementptr inbounds nuw i8, ptr %27, i64 408
  %i.aid = getelementptr inbounds nuw i8, ptr %27, i64 416
  %i.aie = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.aif = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.aig = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br label %bb.gw

bb.gt:                                            ; preds = %emitter_json_object_end.exit29.i
  %.val.i.i = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i.i = icmp ult i32 %.val.i.i, 2
  br i1 %spec.select.i.i.i, label %bb.gu, label %stats_arena_mutexes_print.exit

bb.gu:                                            ; preds = %bb.gt
  %i.aii = load i32, ptr %i.aig, align 8, !tbaa !24
  %i.aij = add nsw i32 %i.aii, -1
  store i32 %i.aij, ptr %i.aig, align 8, !tbaa !24
  store i8 1, ptr %i.aih, align 4, !tbaa !22
  %.not.i17.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i17.i, label %emitter_indent.exit.i.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.aik = load i32, ptr %i.aig, align 8, !tbaa !24 ; 2 uses
  %i.ail = load i32, ptr %0, align 8, !tbaa !16
  %i.aim = icmp ne i32 %i.ail, 0                  ; 2 uses
  %.07.i.i.i = select i1 %i.aim, ptr @.str.31, ptr @.str.34
  %i.ain = icmp sgt i32 %i.aik, 0
  br i1 %i.ain, label %.lr.ph.preheader.i.i.i, label %emitter_indent.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.gv
  %i.aio = zext i1 %i.aim to i32
  %.08.i.i.i = shl nuw nsw i32 %i.aik, %i.aio
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.aip, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i.i)
  %i.aip = add nuw nsw i32 %.09.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.aip, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_indent.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !25

emitter_indent.exit.i.i:                          ; preds = %.lr.ph.i.i.i, %bb.gv, %bb.gu
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %stats_arena_mutexes_print.exit

bb.gw:                                            ; preds = %emitter_json_object_end.exit29.i, %bb.gs
  %indvars.iv.i = phi i64 [ 0, %bb.gs ], [ %indvars.iv.next.i, %emitter_json_object_end.exit29.i ] ; 2 uses
  %i.aiq = getelementptr inbounds nuw [8 x i8], ptr @je_arena_mutex_names, i64 %indvars.iv.i
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !28 ; 3 uses
  call fastcc void @emitter_json_object_kv_begin(ptr noundef nonnull %0, ptr noundef %i.air)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz) #14
  store i64 7, ptr %i.bz, align 8, !tbaa !11
  %i.ais = load i8, ptr %i.agw, align 8, !tbaa !13
  %.not.i.i.i = icmp eq i8 %i.ais, 0
  br i1 %.not.i.i.i, label %tsd_fetch_impl.exit.i.i, label %bb.gx, !prof !30

bb.gx:                                            ; preds = %bb.gw
  %i.ait = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.agv, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit.i.i

tsd_fetch_impl.exit.i.i:                          ; preds = %bb.gx, %bb.gw
  %.0.i.i.i = phi ptr [ %i.ait, %bb.gx ], [ %i.agv, %bb.gw ]
  %i.aiu = call i32 @je_ctl_mibnametomib(ptr noundef %.0.i.i.i, ptr noundef nonnull %i.co, i64 noundef 4, ptr noundef %i.air, ptr noundef nonnull %i.bz) #14
  %.not.i18.i = icmp eq i32 %i.aiu, 0
  br i1 %.not.i18.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %tsd_fetch_impl.exit.i.i
  call void @je_malloc_write(ptr noundef nonnull @.str.201) #14
  call void @abort() #15
  unreachable

bb.gz:                                            ; preds = %tsd_fetch_impl.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz) #14
  store ptr %i.air, ptr %i.ahe, align 8, !tbaa !13
  store i32 5, ptr %i.ahf, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca) #14
  store i64 7, ptr %i.ca, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb) #14
  store i64 8, ptr %i.cb, align 8, !tbaa !11
  %i.aiv = load i8, ptr %i.agw, align 8, !tbaa !13
  %.not.i77.i.i = icmp eq i8 %i.aiv, 0
  br i1 %.not.i77.i.i, label %tsd_fetch_impl.exit79.i.i, label %bb.ha, !prof !30

bb.ha:                                            ; preds = %bb.gz
  %i.aiw = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.agv, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit79.i.i

tsd_fetch_impl.exit79.i.i:                        ; preds = %bb.ha, %bb.gz
  %.0.i78.i.i = phi ptr [ %i.aiw, %bb.ha ], [ %i.agv, %bb.gz ]
  %i.aix = call i32 @je_ctl_bymibname(ptr noundef %.0.i78.i.i, ptr noundef nonnull %i.co, i64 noundef 5, ptr noundef nonnull @.str.274, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.ahg, ptr noundef nonnull %i.cb, ptr noundef null, i64 noundef 0) #14
  %.not70.i.i = icmp eq i32 %i.aix, 0
  br i1 %.not70.i.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %tsd_fetch_impl.exit79.i.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.hc:                                            ; preds = %tsd_fetch_impl.exit79.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca) #14
  store i32 5, ptr %i.ahh, align 16, !tbaa !41
  %i.aiy = load i64, ptr %i.ahg, align 16, !tbaa !13 ; 3 uses
  %i.aiz = icmp eq i64 %i.aiy, 0
  %brmerge.i = or i1 %i.ahj, %i.aiz
  %.mux.i = select i1 %i.ahi, i64 0, i64 %i.aiy
  br i1 %brmerge.i, label %rate_per_second.exit.i.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.aja = udiv i64 %i.aiy, %i.ahk
  br label %rate_per_second.exit.i.i

rate_per_second.exit.i.i:                         ; preds = %bb.hd, %bb.hc
  %.0.i98.i.i = phi i64 [ %i.aja, %bb.hd ], [ %.mux.i, %bb.hc ]
  store i64 %.0.i98.i.i, ptr %i.ahl, align 8, !tbaa !13
  store i32 5, ptr %i.ahm, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc) #14
  store i64 7, ptr %i.cc, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd) #14
  store i64 8, ptr %i.cd, align 8, !tbaa !11
  %i.ajb = load i8, ptr %i.agw, align 8, !tbaa !13
  %.not.i80.i.i = icmp eq i8 %i.ajb, 0
  br i1 %.not.i80.i.i, label %tsd_fetch_impl.exit82.i.i, label %bb.he, !prof !30

bb.he:                                            ; preds = %rate_per_second.exit.i.i
  %i.ajc = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.agv, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit82.i.i

tsd_fetch_impl.exit82.i.i:                        ; preds = %bb.he, %rate_per_second.exit.i.i
  %.0.i81.i.i = phi ptr [ %i.ajc, %bb.he ], [ %i.agv, %rate_per_second.exit.i.i ]
  %i.ajd = call i32 @je_ctl_bymibname(ptr noundef %.0.i81.i.i, ptr noundef nonnull %i.co, i64 noundef 5, ptr noundef nonnull @.str.275, ptr noundef nonnull %i.cc, ptr noundef nonnull %i.ahn, ptr noundef nonnull %i.cd, ptr noundef null, i64 noundef 0) #14
  %.not71.i.i = icmp eq i32 %i.ajd, 0
  br i1 %.not71.i.i, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %tsd_fetch_impl.exit82.i.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.hg:                                            ; preds = %tsd_fetch_impl.exit82.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc) #14
  store i32 5, ptr %i.aho, align 16, !tbaa !41
  %i.aje = load i64, ptr %i.ahn, align 16, !tbaa !13 ; 3 uses
  %i.ajf = icmp eq i64 %i.aje, 0
  %brmerge31.i = or i1 %i.ahj, %i.ajf
  %.mux32.i = select i1 %i.ahi, i64 0, i64 %i.aje
  br i1 %brmerge31.i, label %rate_per_second.exit101.i.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.ajg = udiv i64 %i.aje, %i.ahk
  br label %rate_per_second.exit101.i.i

rate_per_second.exit101.i.i:                      ; preds = %bb.hh, %bb.hg
  %.0.i100.i.i = phi i64 [ %i.ajg, %bb.hh ], [ %.mux32.i, %bb.hg ]
  store i64 %.0.i100.i.i, ptr %i.ahp, align 8, !tbaa !13
  store i32 5, ptr %i.ahq, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce) #14
  store i64 7, ptr %i.ce, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf) #14
  store i64 8, ptr %i.cf, align 8, !tbaa !11
  %i.ajh = load i8, ptr %i.agw, align 8, !tbaa !13
  %.not.i83.i.i = icmp eq i8 %i.ajh, 0
  br i1 %.not.i83.i.i, label %tsd_fetch_impl.exit85.i.i, label %bb.hi, !prof !30

bb.hi:                                            ; preds = %rate_per_second.exit101.i.i
  %i.aji = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.agv, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit85.i.i

tsd_fetch_impl.exit85.i.i:                        ; preds = %bb.hi, %rate_per_second.exit101.i.i
  %.0.i84.i.i = phi ptr [ %i.aji, %bb.hi ], [ %i.agv, %rate_per_second.exit101.i.i ]
  %i.ajj = call i32 @je_ctl_bymibname(ptr noundef %.0.i84.i.i, ptr noundef nonnull %i.co, i64 noundef 5, ptr noundef nonnull @.str.276, ptr noundef nonnull %i.ce, ptr noundef nonnull %i.ahr, ptr noundef nonnull %i.cf, ptr noundef null, i64 noundef 0) #14
  %.not72.i.i = icmp eq i32 %i.ajj, 0
  br i1 %.not72.i.i, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %tsd_fetch_impl.exit85.i.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.hk:                                            ; preds = %tsd_fetch_impl.exit85.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce) #14
  store i32 5, ptr %i.ahs, align 16, !tbaa !41
  %i.ajk = load i64, ptr %i.ahr, align 16, !tbaa !13 ; 3 uses
  %i.ajl = icmp eq i64 %i.ajk, 0
  %brmerge33.i = or i1 %i.ahj, %i.ajl
  %.mux34.i = select i1 %i.ahi, i64 0, i64 %i.ajk
  br i1 %brmerge33.i, label %rate_per_second.exit104.i.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.ajm = udiv i64 %i.ajk, %i.ahk
  br label %rate_per_second.exit104.i.i

rate_per_second.exit104.i.i:                      ; preds = %bb.hl, %bb.hk
  %.0.i103.i.i = phi i64 [ %i.ajm, %bb.hl ], [ %.mux34.i, %bb.hk ]
  store i64 %.0.i103.i.i, ptr %i.aht, align 8, !tbaa !13
  store i32 5, ptr %i.ahu, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg) #14
  store i64 7, ptr %i.cg, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch) #14
  store i64 8, ptr %i.ch, align 8, !tbaa !11
  %i.ajn = load i8, ptr %i.agw, align 8, !tbaa !13
  %.not.i86.i.i = icmp eq i8 %i.ajn, 0
  br i1 %.not.i86.i.i, label %tsd_fetch_impl.exit88.i.i, label %bb.hm, !prof !30

bb.hm:                                            ; preds = %rate_per_second.exit104.i.i
  %i.ajo = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.agv, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit88.i.i

tsd_fetch_impl.exit88.i.i:                        ; preds = %bb.hm, %rate_per_second.exit104.i.i
  %.0.i87.i.i = phi ptr [ %i.ajo, %bb.hm ], [ %i.agv, %rate_per_second.exit104.i.i ]
  %i.ajp = call i32 @je_ctl_bymibname(ptr noundef %.0.i87.i.i, ptr noundef nonnull %i.co, i64 noundef 5, ptr noundef nonnull @.str.277, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ahv, ptr noundef nonnull %i.ch, ptr noundef null, i64 noundef 0) #14
  %.not73.i.i = icmp eq i32 %i.ajp, 0
  br i1 %.not73.i.i, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %tsd_fetch_impl.exit88.i.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.ho:                                            ; preds = %tsd_fetch_impl.exit88.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg) #14
  store i32 5, ptr %i.ahw, align 16, !tbaa !41
  %i.ajq = load i64, ptr %i.ahv, align 16, !tbaa !13 ; 3 uses
  %i.ajr = icmp eq i64 %i.ajq, 0
  %brmerge35.i = or i1 %i.ahj, %i.ajr
  %.mux36.i = select i1 %i.ahi, i64 0, i64 %i.ajq
  br i1 %brmerge35.i, label %rate_per_second.exit107.i.i, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.ajs = udiv i64 %i.ajq, %i.ahk
  br label %rate_per_second.exit107.i.i

rate_per_second.exit107.i.i:                      ; preds = %bb.hp, %bb.ho
  %.0.i106.i.i = phi i64 [ %i.ajs, %bb.hp ], [ %.mux36.i, %bb.ho ]
  store i64 %.0.i106.i.i, ptr %i.ahx, align 8, !tbaa !13
  store i32 5, ptr %i.ahy, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci) #14
  store i64 7, ptr %i.ci, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj) #14
  store i64 8, ptr %i.cj, align 8, !tbaa !11
  %i.ajt = load i8, ptr %i.agw, align 8, !tbaa !13
  %.not.i89.i.i = icmp eq i8 %i.ajt, 0
  br i1 %.not.i89.i.i, label %tsd_fetch_impl.exit91.i.i, label %bb.hq, !prof !30

bb.hq:                                            ; preds = %rate_per_second.exit107.i.i
  %i.aju = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.agv, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit91.i.i

tsd_fetch_impl.exit91.i.i:                        ; preds = %bb.hq, %rate_per_second.exit107.i.i
  %.0.i90.i.i = phi ptr [ %i.aju, %bb.hq ], [ %i.agv, %rate_per_second.exit107.i.i ]
  %i.ajv = call i32 @je_ctl_bymibname(ptr noundef %.0.i90.i.i, ptr noundef nonnull %i.co, i64 noundef 5, ptr noundef nonnull @.str.278, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.ahz, ptr noundef nonnull %i.cj, ptr noundef null, i64 noundef 0) #14
  %.not74.i.i = icmp eq i32 %i.ajv, 0
  br i1 %.not74.i.i, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %tsd_fetch_impl.exit91.i.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.hs:                                            ; preds = %tsd_fetch_impl.exit91.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci) #14
  store i32 5, ptr %i.aia, align 16, !tbaa !41
  %i.ajw = load i64, ptr %i.ahz, align 16, !tbaa !13 ; 3 uses
  %i.ajx = icmp eq i64 %i.ajw, 0
  %brmerge37.i = or i1 %i.ahj, %i.ajx
  %.mux38.i = select i1 %i.ahi, i64 0, i64 %i.ajw
  br i1 %brmerge37.i, label %rate_per_second.exit110.i.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.ajy = udiv i64 %i.ajw, %i.ahk
  br label %rate_per_second.exit110.i.i

rate_per_second.exit110.i.i:                      ; preds = %bb.ht, %bb.hs
  %.0.i109.i.i = phi i64 [ %i.ajy, %bb.ht ], [ %.mux38.i, %bb.hs ]
  store i64 %.0.i109.i.i, ptr %i.aib, align 8, !tbaa !13
  store i32 5, ptr %i.aic, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck) #14
  store i64 7, ptr %i.ck, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl) #14
  store i64 8, ptr %i.cl, align 8, !tbaa !11
  %i.ajz = load i8, ptr %i.agw, align 8, !tbaa !13
  %.not.i92.i.i = icmp eq i8 %i.ajz, 0
  br i1 %.not.i92.i.i, label %tsd_fetch_impl.exit94.i.i, label %bb.hu, !prof !30

bb.hu:                                            ; preds = %rate_per_second.exit110.i.i
  %i.aka = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.agv, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit94.i.i

tsd_fetch_impl.exit94.i.i:                        ; preds = %bb.hu, %rate_per_second.exit110.i.i
  %.0.i93.i.i = phi ptr [ %i.aka, %bb.hu ], [ %i.agv, %rate_per_second.exit110.i.i ]
  %i.akb = call i32 @je_ctl_bymibname(ptr noundef %.0.i93.i.i, ptr noundef nonnull %i.co, i64 noundef 5, ptr noundef nonnull @.str.279, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.aid, ptr noundef nonnull %i.cl, ptr noundef null, i64 noundef 0) #14
  %.not75.i.i = icmp eq i32 %i.akb, 0
  br i1 %.not75.i.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %tsd_fetch_impl.exit94.i.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.hw:                                            ; preds = %tsd_fetch_impl.exit94.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck) #14
  store i32 4, ptr %i.aie, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm) #14
  store i64 7, ptr %i.cm, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn) #14
  store i64 4, ptr %i.cn, align 8, !tbaa !11
  %i.akc = load i8, ptr %i.agw, align 8, !tbaa !13
  %.not.i95.i.i = icmp eq i8 %i.akc, 0
  br i1 %.not.i95.i.i, label %tsd_fetch_impl.exit97.i.i, label %bb.hx, !prof !30

bb.hx:                                            ; preds = %bb.hw
  %i.akd = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.agv, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit97.i.i

tsd_fetch_impl.exit97.i.i:                        ; preds = %bb.hx, %bb.hw
  %.0.i96.i.i = phi ptr [ %i.akd, %bb.hx ], [ %i.agv, %bb.hw ]
  %i.ake = call i32 @je_ctl_bymibname(ptr noundef %.0.i96.i.i, ptr noundef nonnull %i.co, i64 noundef 5, ptr noundef nonnull @.str.280, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.aif, ptr noundef nonnull %i.cn, ptr noundef null, i64 noundef 0) #14
  %.not76.i.i = icmp eq i32 %i.ake, 0
  br i1 %.not76.i.i, label %mutex_stats_read_arena.exit.i, label %bb.hy

bb.hy:                                            ; preds = %tsd_fetch_impl.exit97.i.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

mutex_stats_read_arena.exit.i:                    ; preds = %tsd_fetch_impl.exit97.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm) #14
  call fastcc void @mutex_stats_emit(ptr noundef nonnull %0, ptr noundef nonnull %25, ptr noundef %27, ptr noundef %28)
  %.val.i19.i = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i20.i = icmp ult i32 %.val.i19.i, 2
  br i1 %spec.select.i.i20.i, label %bb.hz, label %emitter_json_object_end.exit29.i

bb.hz:                                            ; preds = %mutex_stats_read_arena.exit.i
  %i.akf = load i32, ptr %i.aig, align 8, !tbaa !24
  %i.akg = add nsw i32 %i.akf, -1
  store i32 %i.akg, ptr %i.aig, align 8, !tbaa !24
  store i8 1, ptr %i.aih, align 4, !tbaa !22
  %.not.i21.i = icmp eq i32 %.val.i19.i, 1
  br i1 %.not.i21.i, label %emitter_indent.exit.i23.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.akh = load i32, ptr %i.aig, align 8, !tbaa !24 ; 2 uses
  %i.aki = load i32, ptr %0, align 8, !tbaa !16
  %i.akj = icmp ne i32 %i.aki, 0                  ; 2 uses
  %.07.i.i22.i = select i1 %i.akj, ptr @.str.31, ptr @.str.34
  %i.akk = icmp sgt i32 %i.akh, 0
  br i1 %i.akk, label %.lr.ph.preheader.i.i24.i, label %emitter_indent.exit.i23.i

.lr.ph.preheader.i.i24.i:                         ; preds = %bb.ia
  %i.akl = zext i1 %i.akj to i32
  %.08.i.i25.i = shl nuw nsw i32 %i.akh, %i.akl
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i, %.lr.ph.preheader.i.i24.i
  %.09.i.i27.i = phi i32 [ %i.akm, %.lr.ph.i.i26.i ], [ 0, %.lr.ph.preheader.i.i24.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i22.i)
  %i.akm = add nuw nsw i32 %.09.i.i27.i, 1        ; 2 uses
  %exitcond.not.i.i28.i = icmp eq i32 %i.akm, %.08.i.i25.i
  br i1 %exitcond.not.i.i28.i, label %emitter_indent.exit.i23.i, label %.lr.ph.i.i26.i, !llvm.loop !25

emitter_indent.exit.i23.i:                        ; preds = %.lr.ph.i.i26.i, %bb.ia, %bb.hz
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit29.i

emitter_json_object_end.exit29.i:                 ; preds = %emitter_indent.exit.i23.i, %mutex_stats_read_arena.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 12
  br i1 %exitcond.not.i, label %bb.gt, label %bb.gw, !llvm.loop !52

stats_arena_mutexes_print.exit:                   ; preds = %bb.gt, %emitter_indent.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  br label %bb.ib

bb.ib:                                            ; preds = %stats_arena_mutexes_print.exit, %emitter_table_row.exit436
  br i1 %2, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.akn = load i64, ptr %i.eb, align 8, !tbaa !11
  call fastcc void @stats_arena_bins_print(ptr noundef %0, i1 noundef zeroext %4, i32 noundef %1, i64 noundef %i.akn) #16
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  br i1 %3, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.ako = load i64, ptr %i.eb, align 8, !tbaa !11
  call fastcc void @stats_arena_lextents_print(ptr noundef %0, i32 noundef %1, i64 noundef %i.ako) #16
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  br i1 %5, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  call fastcc void @stats_arena_extents_print(ptr noundef %0, i32 noundef %1) #16
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  br i1 %6, label %bb.ii, label %bb.nb

bb.ii:                                            ; preds = %bb.ih
  %i.akp = load i64, ptr %i.eb, align 8, !tbaa !11 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i64 7, ptr %i.f, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store i64 8, ptr %i.g, align 8, !tbaa !11
  %i.akq = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.412, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #14
  %.not78.i = icmp eq i32 %i.akq, 0
  br i1 %.not78.i, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.412) #14
  call void @abort() #15
  unreachable

bb.ik:                                            ; preds = %bb.ii
  %i.akr = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.ij, ptr %i.akr, align 16, !tbaa !11
  %i.aks = load i64, ptr %i.f, align 8, !tbaa !11
  %i.akt = call i32 @je_mallctlbymib(ptr noundef nonnull %i.e, i64 noundef %i.aks, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, ptr noundef null, i64 noundef 0) #14
  %.not79.i = icmp eq i32 %i.akt, 0
  br i1 %.not79.i, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.im:                                            ; preds = %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store i64 7, ptr %i.i, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  store i64 8, ptr %i.j, align 8, !tbaa !11
  %i.aku = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.413, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #14
  %.not80.i = icmp eq i32 %i.aku, 0
  br i1 %.not80.i, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.413) #14
  call void @abort() #15
  unreachable

bb.io:                                            ; preds = %bb.im
  %i.akv = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.ij, ptr %i.akv, align 16, !tbaa !11
  %i.akw = load i64, ptr %i.i, align 8, !tbaa !11
  %i.akx = call i32 @je_mallctlbymib(ptr noundef nonnull %i.h, i64 noundef %i.akw, ptr noundef nonnull %i.b, ptr noundef nonnull %i.j, ptr noundef null, i64 noundef 0) #14
  %.not81.i = icmp eq i32 %i.akx, 0
  br i1 %.not81.i, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.iq:                                            ; preds = %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  store i64 7, ptr %i.l, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  store i64 8, ptr %i.m, align 8, !tbaa !11
  %i.aky = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.414, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #14
  %.not82.i = icmp eq i32 %i.aky, 0
  br i1 %.not82.i, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.414) #14
  call void @abort() #15
  unreachable

bb.is:                                            ; preds = %bb.iq
  %i.akz = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.ij, ptr %i.akz, align 16, !tbaa !11
  %i.ala = load i64, ptr %i.l, align 8, !tbaa !11
  %i.alb = call i32 @je_mallctlbymib(ptr noundef nonnull %i.k, i64 noundef %i.ala, ptr noundef nonnull %i.c, ptr noundef nonnull %i.m, ptr noundef null, i64 noundef 0) #14
  %.not83.i = icmp eq i32 %i.alb, 0
  br i1 %.not83.i, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.iu:                                            ; preds = %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  store i64 7, ptr %i.o, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  store i64 8, ptr %i.p, align 8, !tbaa !11
  %i.alc = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.415, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #14
  %.not84.i = icmp eq i32 %i.alc, 0
  br i1 %.not84.i, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.415) #14
  call void @abort() #15
  unreachable

bb.iw:                                            ; preds = %bb.iu
  %i.ald = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.ij, ptr %i.ald, align 16, !tbaa !11
  %i.ale = load i64, ptr %i.o, align 8, !tbaa !11
  %i.alf = call i32 @je_mallctlbymib(ptr noundef nonnull %i.n, i64 noundef %i.ale, ptr noundef nonnull %i.d, ptr noundef nonnull %i.p, ptr noundef null, i64 noundef 0) #14
  %.not85.i = icmp eq i32 %i.alf, 0
  br i1 %.not85.i, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.iy:                                            ; preds = %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #14
  store i64 7, ptr %i.y, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #14
  store i64 8, ptr %i.z, align 8, !tbaa !11
  %i.alg = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.416, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y) #14
  %.not86.i = icmp eq i32 %i.alg, 0
  br i1 %.not86.i, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.416) #14
  call void @abort() #15
  unreachable

bb.ja:                                            ; preds = %bb.iy
  %i.alh = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.ij, ptr %i.alh, align 16, !tbaa !11
  %i.ali = load i64, ptr %i.y, align 8, !tbaa !11
end_hunk_3
begin_hunk_4_@stats_arena_print:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #14
  store i64 7, ptr %i.ae, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #14
  store i64 8, ptr %i.af, align 8, !tbaa !11
  %i.amj = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.425, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae) #14
  %.not90.i = icmp eq i32 %i.amj, 0
  br i1 %.not90.i, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.425) #14
  call void @abort() #15
  unreachable

bb.jq:                                            ; preds = %bb.jo
  %i.amk = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.ij, ptr %i.amk, align 16, !tbaa !11
  %i.aml = load i64, ptr %i.ae, align 8, !tbaa !11
  %i.amm = call i32 @je_mallctlbymib(ptr noundef nonnull %i.ad, i64 noundef %i.aml, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, ptr noundef null, i64 noundef 0) #14
  %.not91.i = icmp eq i32 %i.amm, 0
  br i1 %.not91.i, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.js:                                            ; preds = %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #14
  store i64 7, ptr %i.ah, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #14
  store i64 8, ptr %i.ai, align 8, !tbaa !11
  %i.amn = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.426, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ah) #14
  %.not92.i = icmp eq i32 %i.amn, 0
  br i1 %.not92.i, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.426) #14
  call void @abort() #15
  unreachable

bb.ju:                                            ; preds = %bb.js
  %i.amo = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.ij, ptr %i.amo, align 16, !tbaa !11
  %i.amp = load i64, ptr %i.ah, align 8, !tbaa !11
  %i.amq = call i32 @je_mallctlbymib(ptr noundef nonnull %i.ag, i64 noundef %i.amp, ptr noundef nonnull %i.s, ptr noundef nonnull %i.ai, ptr noundef null, i64 noundef 0) #14
  %.not93.i = icmp eq i32 %i.amq, 0
  br i1 %.not93.i, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.jw:                                            ; preds = %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #14
  store i64 7, ptr %i.ak, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #14
  store i64 8, ptr %i.al, align 8, !tbaa !11
  %i.amr = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.427, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak) #14
  %.not94.i = icmp eq i32 %i.amr, 0
  br i1 %.not94.i, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.427) #14
  call void @abort() #15
  unreachable

bb.jy:                                            ; preds = %bb.jw
  %i.ams = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %i.ij, ptr %i.ams, align 16, !tbaa !11
  %i.amt = load i64, ptr %i.ak, align 8, !tbaa !11
  %i.amu = call i32 @je_mallctlbymib(ptr noundef nonnull %i.aj, i64 noundef %i.amt, ptr noundef nonnull %i.t, ptr noundef nonnull %i.al, ptr noundef null, i64 noundef 0) #14
  %.not95.i = icmp eq i32 %i.amu, 0
  br i1 %.not95.i, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.ka:                                            ; preds = %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #14
  store i64 7, ptr %i.an, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #14
  store i64 8, ptr %i.ao, align 8, !tbaa !11
  %i.amv = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.428, ptr noundef nonnull %i.am, ptr noundef nonnull %i.an) #14
  %.not96.i = icmp eq i32 %i.amv, 0
  br i1 %.not96.i, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.428) #14
  call void @abort() #15
  unreachable

bb.kc:                                            ; preds = %bb.ka
  %i.amw = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.ij, ptr %i.amw, align 16, !tbaa !11
  %i.amx = load i64, ptr %i.an, align 8, !tbaa !11
  %i.amy = call i32 @je_mallctlbymib(ptr noundef nonnull %i.am, i64 noundef %i.amx, ptr noundef nonnull %i.u, ptr noundef nonnull %i.ao, ptr noundef null, i64 noundef 0) #14
  %.not97.i = icmp eq i32 %i.amy, 0
  br i1 %.not97.i, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.ke:                                            ; preds = %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #14
  store i64 7, ptr %i.aq, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #14
  store i64 8, ptr %i.ar, align 8, !tbaa !11
  %i.amz = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.429, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq) #14
  %.not98.i = icmp eq i32 %i.amz, 0
  br i1 %.not98.i, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.429) #14
  call void @abort() #15
  unreachable

bb.kg:                                            ; preds = %bb.ke
  %i.ana = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.ij, ptr %i.ana, align 16, !tbaa !11
  %i.anb = load i64, ptr %i.aq, align 8, !tbaa !11
  %i.anc = call i32 @je_mallctlbymib(ptr noundef nonnull %i.ap, i64 noundef %i.anb, ptr noundef nonnull %i.v, ptr noundef nonnull %i.ar, ptr noundef null, i64 noundef 0) #14
  %.not99.i = icmp eq i32 %i.anc, 0
  br i1 %.not99.i, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.ki:                                            ; preds = %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #14
  %i.and = load i64, ptr %i.t, align 8, !tbaa !11 ; 2 uses
  %i.ane = shl i64 %i.and, 9
  %i.anf = load i64, ptr %i.u, align 8, !tbaa !11 ; 2 uses
  %i.ang = load i64, ptr %i.v, align 8, !tbaa !11 ; 2 uses
  %i.anh = add i64 %i.anf, %i.ang
  %i.ani = sub i64 %i.ane, %i.anh
  %i.anj = load i64, ptr %i.q, align 8, !tbaa !11
  %i.ank = load i64, ptr %i.r, align 8, !tbaa !11
  %i.anl = load i64, ptr %i.s, align 8, !tbaa !11
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.430, i64 noundef %i.anj, i64 noundef %i.and, i64 noundef %i.ank, i64 noundef %i.anf, i64 noundef %i.anl, i64 noundef %i.ang, i64 noundef %i.ani)
  call fastcc void @emitter_json_object_kv_begin(ptr noundef nonnull %0, ptr noundef nonnull @.str.431)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.432, i32 noundef 6, ptr noundef %i.q)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.433, i32 noundef 6, ptr noundef %i.r)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.433, i32 noundef 6, ptr noundef %i.r)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.434, i32 noundef 6, ptr noundef %i.t)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.435, i32 noundef 6, ptr noundef %i.u)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.436, i32 noundef 6, ptr noundef %i.v)
  %.val.i.i438 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i.i439 = icmp ult i32 %.val.i.i438, 2
  br i1 %spec.select.i.i.i439, label %bb.kj, label %emitter_json_object_end.exit.i

bb.kj:                                            ; preds = %bb.ki
  %i.anm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ann = load i32, ptr %i.anm, align 8, !tbaa !24
  %i.ano = add nsw i32 %i.ann, -1
  store i32 %i.ano, ptr %i.anm, align 8, !tbaa !24
  %i.anp = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.anp, align 4, !tbaa !22
  %.not.i151.i = icmp eq i32 %.val.i.i438, 1
  br i1 %.not.i151.i, label %emitter_indent.exit.i.i459, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.anq = load i32, ptr %i.anm, align 8, !tbaa !24 ; 2 uses
  %i.anr = load i32, ptr %0, align 8, !tbaa !16
  %i.ans = icmp ne i32 %i.anr, 0                  ; 2 uses
  %.07.i.i.i458 = select i1 %i.ans, ptr @.str.31, ptr @.str.34
  %i.ant = icmp sgt i32 %i.anq, 0
  br i1 %i.ant, label %.lr.ph.preheader.i.i.i460, label %emitter_indent.exit.i.i459

.lr.ph.preheader.i.i.i460:                        ; preds = %bb.kk
  %i.anu = zext i1 %i.ans to i32
  %.08.i.i.i461 = shl nuw nsw i32 %i.anq, %i.anu
  br label %.lr.ph.i.i.i462

.lr.ph.i.i.i462:                                  ; preds = %.lr.ph.i.i.i462, %.lr.ph.preheader.i.i.i460
  %.09.i.i.i463 = phi i32 [ %i.anv, %.lr.ph.i.i.i462 ], [ 0, %.lr.ph.preheader.i.i.i460 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i.i458)
  %i.anv = add nuw nsw i32 %.09.i.i.i463, 1       ; 2 uses
  %exitcond.not.i.i.i464 = icmp eq i32 %i.anv, %.08.i.i.i461
  br i1 %exitcond.not.i.i.i464, label %emitter_indent.exit.i.i459, label %.lr.ph.i.i.i462, !llvm.loop !25

emitter_indent.exit.i.i459:                       ; preds = %.lr.ph.i.i.i462, %bb.kk, %bb.kj
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit.i

emitter_json_object_end.exit.i:                   ; preds = %emitter_indent.exit.i.i459, %bb.ki
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #14
  store i64 7, ptr %i.at, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #14
  store i64 8, ptr %i.au, align 8, !tbaa !11
  %i.anw = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.437, ptr noundef nonnull %i.as, ptr noundef nonnull %i.at) #14
  %.not100.i = icmp eq i32 %i.anw, 0
  br i1 %.not100.i, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %emitter_json_object_end.exit.i
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.437) #14
  call void @abort() #15
  unreachable

bb.km:                                            ; preds = %emitter_json_object_end.exit.i
  %i.anx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %i.ij, ptr %i.anx, align 16, !tbaa !11
  %i.any = load i64, ptr %i.at, align 8, !tbaa !11
  %i.anz = call i32 @je_mallctlbymib(ptr noundef nonnull %i.as, i64 noundef %i.any, ptr noundef nonnull %i.q, ptr noundef nonnull %i.au, ptr noundef null, i64 noundef 0) #14
  %.not101.i = icmp eq i32 %i.anz, 0
  br i1 %.not101.i, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.ko:                                            ; preds = %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #14
  store i64 7, ptr %i.aw, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #14
  store i64 8, ptr %i.ax, align 8, !tbaa !11
  %i.aoa = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.438, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw) #14
  %.not102.i = icmp eq i32 %i.aoa, 0
  br i1 %.not102.i, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.438) #14
  call void @abort() #15
  unreachable

bb.kq:                                            ; preds = %bb.ko
  %i.aob = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %i.ij, ptr %i.aob, align 16, !tbaa !11
  %i.aoc = load i64, ptr %i.aw, align 8, !tbaa !11
  %i.aod = call i32 @je_mallctlbymib(ptr noundef nonnull %i.av, i64 noundef %i.aoc, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ax, ptr noundef null, i64 noundef 0) #14
  %.not103.i = icmp eq i32 %i.aod, 0
  br i1 %.not103.i, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.ks:                                            ; preds = %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #14
  store i64 7, ptr %i.az, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #14
  store i64 8, ptr %i.ba, align 8, !tbaa !11
  %i.aoe = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.439, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az) #14
  %.not104.i = icmp eq i32 %i.aoe, 0
  br i1 %.not104.i, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.439) #14
  call void @abort() #15
  unreachable

bb.ku:                                            ; preds = %bb.ks
  %i.aof = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %i.ij, ptr %i.aof, align 16, !tbaa !11
  %i.aog = load i64, ptr %i.az, align 8, !tbaa !11
  %i.aoh = call i32 @je_mallctlbymib(ptr noundef nonnull %i.ay, i64 noundef %i.aog, ptr noundef nonnull %i.s, ptr noundef nonnull %i.ba, ptr noundef null, i64 noundef 0) #14
  %.not105.i = icmp eq i32 %i.aoh, 0
  br i1 %.not105.i, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.kw:                                            ; preds = %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc) #14
  store i64 7, ptr %i.bc, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd) #14
  store i64 8, ptr %i.bd, align 8, !tbaa !11
  %i.aoi = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.440, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc) #14
  %.not106.i = icmp eq i32 %i.aoi, 0
  br i1 %.not106.i, label %bb.ky, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.440) #14
  call void @abort() #15
  unreachable

bb.ky:                                            ; preds = %bb.kw
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %i.ij, ptr %i.aoj, align 16, !tbaa !11
  %i.aok = load i64, ptr %i.bc, align 8, !tbaa !11
  %i.aol = call i32 @je_mallctlbymib(ptr noundef nonnull %i.bb, i64 noundef %i.aok, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bd, ptr noundef null, i64 noundef 0) #14
  %.not107.i = icmp eq i32 %i.aol, 0
  br i1 %.not107.i, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.la:                                            ; preds = %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf) #14
  store i64 7, ptr %i.bf, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg) #14
  store i64 8, ptr %i.bg, align 8, !tbaa !11
  %i.aom = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.441, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf) #14
  %.not108.i = icmp eq i32 %i.aom, 0
  br i1 %.not108.i, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.441) #14
  call void @abort() #15
  unreachable

bb.lc:                                            ; preds = %bb.la
  %i.aon = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %i.ij, ptr %i.aon, align 16, !tbaa !11
  %i.aoo = load i64, ptr %i.bf, align 8, !tbaa !11
  %i.aop = call i32 @je_mallctlbymib(ptr noundef nonnull %i.be, i64 noundef %i.aoo, ptr noundef nonnull %i.u, ptr noundef nonnull %i.bg, ptr noundef null, i64 noundef 0) #14
  %.not109.i = icmp eq i32 %i.aop, 0
  br i1 %.not109.i, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.le:                                            ; preds = %bb.lc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi) #14
  store i64 7, ptr %i.bi, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj) #14
  store i64 8, ptr %i.bj, align 8, !tbaa !11
  %i.aoq = call i32 @je_mallctlnametomib(ptr noundef nonnull @.str.442, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bi) #14
  %.not110.i = icmp eq i32 %i.aoq, 0
  br i1 %.not110.i, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.442) #14
  call void @abort() #15
  unreachable

bb.lg:                                            ; preds = %bb.le
  %i.aor = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.ij, ptr %i.aor, align 16, !tbaa !11
  %i.aos = load i64, ptr %i.bi, align 8, !tbaa !11
  %i.aot = call i32 @je_mallctlbymib(ptr noundef nonnull %i.bh, i64 noundef %i.aos, ptr noundef nonnull %i.v, ptr noundef nonnull %i.bj, ptr noundef null, i64 noundef 0) #14
  %.not111.i = icmp eq i32 %i.aot, 0
  br i1 %.not111.i, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  call void @je_malloc_write(ptr noundef nonnull @.str.257) #14
  call void @abort() #15
  unreachable

bb.li:                                            ; preds = %bb.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh) #14
  %i.aou = load i64, ptr %i.t, align 8, !tbaa !11 ; 2 uses
  %i.aov = shl i64 %i.aou, 9
  %i.aow = load i64, ptr %i.u, align 8, !tbaa !11 ; 2 uses
  %i.aox = load i64, ptr %i.v, align 8, !tbaa !11 ; 2 uses
  %i.aoy = add i64 %i.aow, %i.aox
  %i.aoz = sub i64 %i.aov, %i.aoy
  %i.apa = load i64, ptr %i.q, align 8, !tbaa !11
  %i.apb = load i64, ptr %i.r, align 8, !tbaa !11
  %i.apc = load i64, ptr %i.s, align 8, !tbaa !11
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.443, i64 noundef %i.apa, i64 noundef %i.aou, i64 noundef %i.apb, i64 noundef %i.aow, i64 noundef %i.apc, i64 noundef %i.aox, i64 noundef %i.aoz)
  call fastcc void @emitter_json_object_kv_begin(ptr noundef nonnull %0, ptr noundef nonnull @.str.444)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.432, i32 noundef 6, ptr noundef %i.q)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.433, i32 noundef 6, ptr noundef %i.r)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.433, i32 noundef 6, ptr noundef %i.r)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.434, i32 noundef 6, ptr noundef %i.t)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.435, i32 noundef 6, ptr noundef %i.u)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.436, i32 noundef 6, ptr noundef %i.v)
  %.val.i152.i = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i153.i = icmp ult i32 %.val.i152.i, 2
  br i1 %spec.select.i.i153.i, label %bb.lj, label %emitter_col_init.exit196.i

bb.lj:                                            ; preds = %bb.li
  %i.apd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ape = load i32, ptr %i.apd, align 8, !tbaa !24
  %i.apf = add nsw i32 %i.ape, -1
  store i32 %i.apf, ptr %i.apd, align 8, !tbaa !24
  %i.apg = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.apg, align 4, !tbaa !22
  %.not.i154.i = icmp eq i32 %.val.i152.i, 1
  br i1 %.not.i154.i, label %emitter_indent.exit.i156.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.aph = load i32, ptr %i.apd, align 8, !tbaa !24 ; 2 uses
  %i.api = load i32, ptr %0, align 8, !tbaa !16
  %i.apj = icmp ne i32 %i.api, 0                  ; 2 uses
  %.07.i.i155.i = select i1 %i.apj, ptr @.str.31, ptr @.str.34
  %i.apk = icmp sgt i32 %i.aph, 0
  br i1 %i.apk, label %.lr.ph.preheader.i.i157.i, label %emitter_indent.exit.i156.i

.lr.ph.preheader.i.i157.i:                        ; preds = %bb.lk
  %i.apl = zext i1 %i.apj to i32
  %.08.i.i158.i = shl nuw nsw i32 %i.aph, %i.apl
  br label %.lr.ph.i.i159.i

.lr.ph.i.i159.i:                                  ; preds = %.lr.ph.i.i159.i, %.lr.ph.preheader.i.i157.i
  %.09.i.i160.i = phi i32 [ %i.apm, %.lr.ph.i.i159.i ], [ 0, %.lr.ph.preheader.i.i157.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i155.i)
  %i.apm = add nuw nsw i32 %.09.i.i160.i, 1       ; 2 uses
  %exitcond.not.i.i161.i = icmp eq i32 %i.apm, %.08.i.i158.i
  br i1 %exitcond.not.i.i161.i, label %emitter_indent.exit.i156.i, label %.lr.ph.i.i159.i, !llvm.loop !25

emitter_indent.exit.i156.i:                       ; preds = %.lr.ph.i.i159.i, %bb.lk, %bb.lj
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_col_init.exit196.i

emitter_col_init.exit196.i:                       ; preds = %emitter_indent.exit.i156.i, %bb.li
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.apn = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.apo = getelementptr inbounds nuw i8, ptr %7, i64 32
  store <2 x i32> <i32 1, i32 20>, ptr %7, align 8, !tbaa !7
  %i.app = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 6, ptr %i.app, align 8, !tbaa !41
  %i.apq = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.apr = getelementptr inbounds nuw i8, ptr %8, i64 32
  store <2 x i32> <i32 1, i32 20>, ptr %8, align 8, !tbaa !7
  %i.aps = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 9, ptr %i.aps, align 8, !tbaa !41
  %i.apt = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.202, ptr %i.apt, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.apu = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.apv = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %7, ptr %i.apv, align 8, !tbaa !51
  store ptr %9, ptr %i.apn, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 4>, ptr %9, align 8, !tbaa !7
  %i.apw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 3, ptr %i.apw, align 8, !tbaa !41
  %i.apx = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.apy = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %8, ptr %i.apy, align 8, !tbaa !51
  store ptr %10, ptr %i.apq, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 4>, ptr %10, align 8, !tbaa !7
  %i.apz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 9, ptr %i.apz, align 8, !tbaa !41
  %i.aqa = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr @.str.365, ptr %i.aqa, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.aqb = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %9, ptr %i.aqb, align 8, !tbaa !51
  store ptr %11, ptr %i.apu, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 16>, ptr %11, align 8, !tbaa !7
  %i.aqc = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 6, ptr %i.aqc, align 8, !tbaa !41
  %i.aqd = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %10, ptr %i.aqd, align 8, !tbaa !51
  store ptr %12, ptr %i.apx, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 16>, ptr %12, align 8, !tbaa !7
  %i.aqe = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 9, ptr %i.aqe, align 8, !tbaa !41
  %i.aqf = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr @.str.432, ptr %i.aqf, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.aqg = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %11, ptr %i.aqg, align 8, !tbaa !51
  %i.aqh = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %13, ptr %i.aqh, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 16>, ptr %13, align 8, !tbaa !7
  %i.aqi = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 6, ptr %i.aqi, align 8, !tbaa !41
  %i.aqj = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %12, ptr %i.aqj, align 8, !tbaa !51
  %i.aqk = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %14, ptr %i.aqk, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 16>, ptr %14, align 8, !tbaa !7
  %i.aql = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 9, ptr %i.aql, align 8, !tbaa !41
  %i.aqm = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr @.str.433, ptr %i.aqm, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %i.aqn = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.aqo = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %13, ptr %i.aqo, align 8, !tbaa !51
  %i.aqp = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %15, ptr %i.aqp, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 16>, ptr %15, align 8, !tbaa !7
  %i.aqq = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 6, ptr %i.aqq, align 8, !tbaa !41
  %i.aqr = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.aqs = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %14, ptr %i.aqs, align 8, !tbaa !51
  %i.aqt = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %16, ptr %i.aqt, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 16>, ptr %16, align 8, !tbaa !7
  %i.aqu = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 9, ptr %i.aqu, align 8, !tbaa !41
  %i.aqv = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr @.str.445, ptr %i.aqv, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  %i.aqw = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.aqx = getelementptr inbounds nuw i8, ptr %17, i64 32
  store ptr %15, ptr %i.aqx, align 8, !tbaa !51
  store ptr %17, ptr %i.aqn, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 20>, ptr %17, align 8, !tbaa !7
  %i.aqy = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 6, ptr %i.aqy, align 8, !tbaa !41
  %i.aqz = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.ara = getelementptr inbounds nuw i8, ptr %18, i64 32
  store ptr %16, ptr %i.ara, align 8, !tbaa !51
  store ptr %18, ptr %i.aqr, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 20>, ptr %18, align 8, !tbaa !7
  %i.arb = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 9, ptr %i.arb, align 8, !tbaa !41
  %i.arc = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr @.str.434, ptr %i.arc, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14
  %i.ard = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.are = getelementptr inbounds nuw i8, ptr %19, i64 32
  store ptr %17, ptr %i.are, align 8, !tbaa !51
  store ptr %19, ptr %i.aqw, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 20>, ptr %19, align 8, !tbaa !7
  %i.arf = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 6, ptr %i.arf, align 8, !tbaa !41
  %i.arg = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.arh = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr %18, ptr %i.arh, align 8, !tbaa !51
  store ptr %20, ptr %i.aqz, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 20>, ptr %20, align 8, !tbaa !7
  %i.ari = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 9, ptr %i.ari, align 8, !tbaa !41
  %i.arj = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr @.str.435, ptr %i.arj, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14
  %i.ark = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.arl = getelementptr inbounds nuw i8, ptr %21, i64 32
  store ptr %19, ptr %i.arl, align 8, !tbaa !51
  store ptr %21, ptr %i.ard, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 20>, ptr %21, align 8, !tbaa !7
  %i.arm = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 6, ptr %i.arm, align 8, !tbaa !41
  %i.arn = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.aro = getelementptr inbounds nuw i8, ptr %22, i64 32
  store ptr %20, ptr %i.aro, align 8, !tbaa !51
  store ptr %22, ptr %i.arg, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 20>, ptr %22, align 8, !tbaa !7
  %i.arp = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 9, ptr %i.arp, align 8, !tbaa !41
  %i.arq = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr @.str.436, ptr %i.arq, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #14
  %i.arr = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.ars = getelementptr inbounds nuw i8, ptr %23, i64 32
  store ptr %23, ptr %i.apo, align 8, !tbaa !51
  store ptr %21, ptr %i.ars, align 8, !tbaa !51
  store ptr %7, ptr %i.arr, align 8, !tbaa !42
  store ptr %23, ptr %i.ark, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 20>, ptr %23, align 8, !tbaa !7
  %i.art = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 6, ptr %i.art, align 8, !tbaa !41
  %i.aru = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.arv = getelementptr inbounds nuw i8, ptr %24, i64 32
  store ptr %24, ptr %i.apr, align 8, !tbaa !51
  store ptr %22, ptr %i.arv, align 8, !tbaa !51
  store ptr %8, ptr %i.aru, align 8, !tbaa !42
  store ptr %24, ptr %i.arn, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 20>, ptr %24, align 8, !tbaa !7
  %i.arw = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 9, ptr %i.arw, align 8, !tbaa !41
  %i.arx = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr @.str.446, ptr %i.arx, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl) #14
  store i64 7, ptr %i.bl, align 8, !tbaa !11
  %i.ary = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 17 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 832 ; 8 uses
  %i.asa = load i8, ptr %i.arz, align 8, !tbaa !13
  %.not.i.i440 = icmp eq i8 %i.asa, 0
  br i1 %.not.i.i440, label %tsd_fetch_impl.exit.i441, label %bb.ll, !prof !30

bb.ll:                                            ; preds = %emitter_col_init.exit196.i
  %i.asb = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ary, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit.i441

tsd_fetch_impl.exit.i441:                         ; preds = %bb.ll, %emitter_col_init.exit196.i
  %.0.i.i442 = phi ptr [ %i.asb, %bb.ll ], [ %i.ary, %emitter_col_init.exit196.i ]
  %i.asc = call i32 @je_ctl_mibnametomib(ptr noundef %.0.i.i442, ptr noundef nonnull %i.bk, i64 noundef 0, ptr noundef nonnull @.str.259, ptr noundef nonnull %i.bl) #14
  %.not112.i = icmp eq i32 %i.asc, 0
  br i1 %.not112.i, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %tsd_fetch_impl.exit.i441
  call void @je_malloc_write(ptr noundef nonnull @.str.201) #14
  call void @abort() #15
  unreachable

bb.ln:                                            ; preds = %tsd_fetch_impl.exit.i441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl) #14
  %i.asd = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 %i.ij, ptr %i.asd, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm) #14
  store i64 7, ptr %i.bm, align 8, !tbaa !11
  %i.ase = load i8, ptr %i.arz, align 8, !tbaa !13
  %.not.i120.i = icmp eq i8 %i.ase, 0
  br i1 %.not.i120.i, label %tsd_fetch_impl.exit122.i, label %bb.lo, !prof !30

bb.lo:                                            ; preds = %bb.ln
  %i.asf = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ary, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit122.i

tsd_fetch_impl.exit122.i:                         ; preds = %bb.lo, %bb.ln
  %.0.i121.i = phi ptr [ %i.asf, %bb.lo ], [ %i.ary, %bb.ln ]
  %i.asg = call i32 @je_ctl_mibnametomib(ptr noundef %.0.i121.i, ptr noundef nonnull %i.bk, i64 noundef 3, ptr noundef nonnull @.str.447, ptr noundef nonnull %i.bm) #14
  %.not113.i = icmp eq i32 %i.asg, 0
  br i1 %.not113.i, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %tsd_fetch_impl.exit122.i
  call void @je_malloc_write(ptr noundef nonnull @.str.201) #14
  call void @abort() #15
  unreachable

bb.lq:                                            ; preds = %tsd_fetch_impl.exit122.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm) #14
  %i.ash = load i32, ptr %0, align 8, !tbaa !16
  %.not.i197.i = icmp eq i32 %i.ash, 2
  br i1 %.not.i197.i, label %select.unfold.i.i452, label %emitter_table_row.exit.i443

select.unfold.i.i452:                             ; preds = %bb.lq, %select.unfold.i.i452
  %.016.i.i453 = phi ptr [ %i.asp, %select.unfold.i.i452 ], [ %8, %bb.lq ] ; 5 uses
  %i.asi = load i32, ptr %.016.i.i453, align 8, !tbaa !37
  %i.asj = getelementptr inbounds nuw i8, ptr %.016.i.i453, i64 4
  %i.ask = load i32, ptr %i.asj, align 4, !tbaa !40
  %i.asl = getelementptr inbounds nuw i8, ptr %.016.i.i453, i64 8
  %i.asm = load i32, ptr %i.asl, align 8, !tbaa !41
  %i.asn = getelementptr inbounds nuw i8, ptr %.016.i.i453, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.asi, i32 noundef %i.ask, i32 noundef %i.asm, ptr noundef nonnull %i.asn)
  %i.aso = getelementptr inbounds nuw i8, ptr %.016.i.i453, i64 24
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !42 ; 3 uses
  %.not14.i.i454 = icmp eq ptr %i.asp, %8
  %.not1317.i.i455 = icmp eq ptr %i.asp, null
  %.not13.i.i456 = or i1 %.not14.i.i454, %.not1317.i.i455
  br i1 %.not13.i.i456, label %select.unfold._crit_edge.i.i457, label %select.unfold.i.i452

select.unfold._crit_edge.i.i457:                  ; preds = %select.unfold.i.i452
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.33)
  br label %emitter_table_row.exit.i443

emitter_table_row.exit.i443:                      ; preds = %select.unfold._crit_edge.i.i457, %bb.lq
  call fastcc void @emitter_json_array_kv_begin(ptr noundef nonnull %0, ptr noundef nonnull @.str.375)
  %i.asq = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.asr = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ass = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ast = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.asu = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.asv = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.asw = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.asx = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.asy = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.asz = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ata = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 2 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  br label %bb.lw

bb.lr:                                            ; preds = %emitter_json_object_end.exit241.i
  %.val.i198.i = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i199.i = icmp ult i32 %.val.i198.i, 2
  br i1 %spec.select.i.i199.i, label %bb.ls, label %emitter_json_object_end.exit218.i

bb.ls:                                            ; preds = %bb.lr
  %i.atd = load i32, ptr %i.atc, align 8, !tbaa !24
  %i.ate = add nsw i32 %i.atd, -1
  store i32 %i.ate, ptr %i.atc, align 8, !tbaa !24
  store i8 1, ptr %i.atb, align 4, !tbaa !22
  %.not.i200.i = icmp eq i32 %.val.i198.i, 1
  br i1 %.not.i200.i, label %emitter_json_array_end.exit.i, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.atf = load i32, ptr %i.atc, align 8, !tbaa !24 ; 2 uses
  %i.atg = load i32, ptr %0, align 8, !tbaa !16
  %i.ath = icmp ne i32 %i.atg, 0                  ; 2 uses
  %.07.i.i201.i = select i1 %i.ath, ptr @.str.31, ptr @.str.34
  %i.ati = icmp sgt i32 %i.atf, 0
  br i1 %i.ati, label %.lr.ph.preheader.i.i203.i, label %emitter_json_array_end.exit.i

.lr.ph.preheader.i.i203.i:                        ; preds = %bb.lt
  %i.atj = zext i1 %i.ath to i32
  %.08.i.i204.i = shl nuw nsw i32 %i.atf, %i.atj
  br label %.lr.ph.i.i205.i

.lr.ph.i.i205.i:                                  ; preds = %.lr.ph.i.i205.i, %.lr.ph.preheader.i.i203.i
  %.09.i.i206.i = phi i32 [ %i.atk, %.lr.ph.i.i205.i ], [ 0, %.lr.ph.preheader.i.i203.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i201.i)
  %i.atk = add nuw nsw i32 %.09.i.i206.i, 1       ; 2 uses
  %exitcond.not.i.i207.i = icmp eq i32 %i.atk, %.08.i.i204.i
  br i1 %exitcond.not.i.i207.i, label %emitter_json_array_end.exit.i, label %.lr.ph.i.i205.i, !llvm.loop !25

emitter_json_array_end.exit.i:                    ; preds = %.lr.ph.i.i205.i, %bb.lt, %bb.ls
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.229)
  %.val.i208.pr.i = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i209.i = icmp ult i32 %.val.i208.pr.i, 2
  br i1 %spec.select.i.i209.i, label %bb.lu, label %emitter_json_object_end.exit218.i

bb.lu:                                            ; preds = %emitter_json_array_end.exit.i
  %i.atl = load i32, ptr %i.atc, align 8, !tbaa !24
  %i.atm = add nsw i32 %i.atl, -1
  store i32 %i.atm, ptr %i.atc, align 8, !tbaa !24
  store i8 1, ptr %i.atb, align 4, !tbaa !22
  %.not.i210.i = icmp eq i32 %.val.i208.pr.i, 1
  br i1 %.not.i210.i, label %emitter_indent.exit.i212.i, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.atn = load i32, ptr %i.atc, align 8, !tbaa !24 ; 2 uses
  %i.ato = load i32, ptr %0, align 8, !tbaa !16
  %i.atp = icmp ne i32 %i.ato, 0                  ; 2 uses
  %.07.i.i211.i = select i1 %i.atp, ptr @.str.31, ptr @.str.34
  %i.atq = icmp sgt i32 %i.atn, 0
  br i1 %i.atq, label %.lr.ph.preheader.i.i213.i, label %emitter_indent.exit.i212.i

.lr.ph.preheader.i.i213.i:                        ; preds = %bb.lv
  %i.atr = zext i1 %i.atp to i32
  %.08.i.i214.i = shl nuw nsw i32 %i.atn, %i.atr
  br label %.lr.ph.i.i215.i

.lr.ph.i.i215.i:                                  ; preds = %.lr.ph.i.i215.i, %.lr.ph.preheader.i.i213.i
  %.09.i.i216.i = phi i32 [ %i.ats, %.lr.ph.i.i215.i ], [ 0, %.lr.ph.preheader.i.i213.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i211.i)
  %i.ats = add nuw nsw i32 %.09.i.i216.i, 1       ; 2 uses
  %exitcond.not.i.i217.i = icmp eq i32 %i.ats, %.08.i.i214.i
  br i1 %exitcond.not.i.i217.i, label %emitter_indent.exit.i212.i, label %.lr.ph.i.i215.i, !llvm.loop !25

emitter_indent.exit.i212.i:                       ; preds = %.lr.ph.i.i215.i, %bb.lv, %bb.lu
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit218.i

emitter_json_object_end.exit218.i:                ; preds = %emitter_indent.exit.i212.i, %emitter_json_array_end.exit.i, %bb.lr
  br i1 %i.auu, label %bb.na, label %stats_arena_hpa_shard_print.exit

bb.lw:                                            ; preds = %emitter_json_object_end.exit241.i, %emitter_table_row.exit.i443
  %indvars.iv.i444 = phi i64 [ 0, %emitter_table_row.exit.i443 ], [ %indvars.iv.next.i448, %emitter_json_object_end.exit241.i ] ; 4 uses
  %.076279.i = phi i1 [ false, %emitter_table_row.exit.i443 ], [ %i.auu, %emitter_json_object_end.exit241.i ]
  store i64 %indvars.iv.i444, ptr %i.asq, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn) #14
  store i64 7, ptr %i.bn, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo) #14
  store i64 8, ptr %i.bo, align 8, !tbaa !11
  %i.att = load i8, ptr %i.arz, align 8, !tbaa !13
  %.not.i123.i = icmp eq i8 %i.att, 0
  br i1 %.not.i123.i, label %tsd_fetch_impl.exit125.i, label %bb.lx, !prof !30

bb.lx:                                            ; preds = %bb.lw
  %i.atu = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ary, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit125.i

tsd_fetch_impl.exit125.i:                         ; preds = %bb.lx, %bb.lw
  %.0.i124.i = phi ptr [ %i.atu, %bb.lx ], [ %i.ary, %bb.lw ]
  %i.atv = call i32 @je_ctl_bymibname(ptr noundef %.0.i124.i, ptr noundef nonnull %i.bk, i64 noundef 6, ptr noundef nonnull @.str.432, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.q, ptr noundef nonnull %i.bo, ptr noundef null, i64 noundef 0) #14
  %.not114.i = icmp eq i32 %i.atv, 0
  br i1 %.not114.i, label %bb.lz, label %bb.ly

bb.ly:                                            ; preds = %tsd_fetch_impl.exit125.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.lz:                                            ; preds = %tsd_fetch_impl.exit125.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp) #14
  store i64 7, ptr %i.bp, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq) #14
  store i64 8, ptr %i.bq, align 8, !tbaa !11
  %i.atw = load i8, ptr %i.arz, align 8, !tbaa !13
  %.not.i126.i = icmp eq i8 %i.atw, 0
  br i1 %.not.i126.i, label %tsd_fetch_impl.exit128.i, label %bb.ma, !prof !30

bb.ma:                                            ; preds = %bb.lz
  %i.atx = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ary, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit128.i

tsd_fetch_impl.exit128.i:                         ; preds = %bb.ma, %bb.lz
  %.0.i127.i = phi ptr [ %i.atx, %bb.ma ], [ %i.ary, %bb.lz ]
  %i.aty = call i32 @je_ctl_bymibname(ptr noundef %.0.i127.i, ptr noundef nonnull %i.bk, i64 noundef 6, ptr noundef nonnull @.str.433, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.r, ptr noundef nonnull %i.bq, ptr noundef null, i64 noundef 0) #14
  %.not115.i = icmp eq i32 %i.aty, 0
  br i1 %.not115.i, label %bb.mc, label %bb.mb

bb.mb:                                            ; preds = %tsd_fetch_impl.exit128.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.mc:                                            ; preds = %tsd_fetch_impl.exit128.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br) #14
  store i64 7, ptr %i.br, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs) #14
  store i64 8, ptr %i.bs, align 8, !tbaa !11
  %i.atz = load i8, ptr %i.arz, align 8, !tbaa !13
  %.not.i129.i = icmp eq i8 %i.atz, 0
  br i1 %.not.i129.i, label %tsd_fetch_impl.exit131.i, label %bb.md, !prof !30

bb.md:                                            ; preds = %bb.mc
  %i.aua = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ary, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit131.i

tsd_fetch_impl.exit131.i:                         ; preds = %bb.md, %bb.mc
  %.0.i130.i = phi ptr [ %i.aua, %bb.md ], [ %i.ary, %bb.mc ]
  %i.aub = call i32 @je_ctl_bymibname(ptr noundef %.0.i130.i, ptr noundef nonnull %i.bk, i64 noundef 6, ptr noundef nonnull @.str.445, ptr noundef nonnull %i.br, ptr noundef nonnull %i.s, ptr noundef nonnull %i.bs, ptr noundef null, i64 noundef 0) #14
  %.not116.i = icmp eq i32 %i.aub, 0
  br i1 %.not116.i, label %bb.mf, label %bb.me

bb.me:                                            ; preds = %tsd_fetch_impl.exit131.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.mf:                                            ; preds = %tsd_fetch_impl.exit131.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt) #14
  store i64 7, ptr %i.bt, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu) #14
  store i64 8, ptr %i.bu, align 8, !tbaa !11
  %i.auc = load i8, ptr %i.arz, align 8, !tbaa !13
  %.not.i132.i = icmp eq i8 %i.auc, 0
  br i1 %.not.i132.i, label %tsd_fetch_impl.exit134.i, label %bb.mg, !prof !30

bb.mg:                                            ; preds = %bb.mf
  %i.aud = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ary, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit134.i

tsd_fetch_impl.exit134.i:                         ; preds = %bb.mg, %bb.mf
  %.0.i133.i = phi ptr [ %i.aud, %bb.mg ], [ %i.ary, %bb.mf ]
  %i.aue = call i32 @je_ctl_bymibname(ptr noundef %.0.i133.i, ptr noundef nonnull %i.bk, i64 noundef 6, ptr noundef nonnull @.str.434, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bu, ptr noundef null, i64 noundef 0) #14
  %.not117.i = icmp eq i32 %i.aue, 0
  br i1 %.not117.i, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %tsd_fetch_impl.exit134.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.mi:                                            ; preds = %tsd_fetch_impl.exit134.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv) #14
  store i64 7, ptr %i.bv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw) #14
  store i64 8, ptr %i.bw, align 8, !tbaa !11
  %i.auf = load i8, ptr %i.arz, align 8, !tbaa !13
  %.not.i135.i = icmp eq i8 %i.auf, 0
  br i1 %.not.i135.i, label %tsd_fetch_impl.exit137.i, label %bb.mj, !prof !30

bb.mj:                                            ; preds = %bb.mi
  %i.aug = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ary, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit137.i

tsd_fetch_impl.exit137.i:                         ; preds = %bb.mj, %bb.mi
  %.0.i136.i = phi ptr [ %i.aug, %bb.mj ], [ %i.ary, %bb.mi ]
  %i.auh = call i32 @je_ctl_bymibname(ptr noundef %.0.i136.i, ptr noundef nonnull %i.bk, i64 noundef 6, ptr noundef nonnull @.str.435, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.u, ptr noundef nonnull %i.bw, ptr noundef null, i64 noundef 0) #14
  %.not118.i = icmp eq i32 %i.auh, 0
  br i1 %.not118.i, label %bb.ml, label %bb.mk

bb.mk:                                            ; preds = %tsd_fetch_impl.exit137.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.ml:                                            ; preds = %tsd_fetch_impl.exit137.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx) #14
  store i64 7, ptr %i.bx, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by) #14
  store i64 8, ptr %i.by, align 8, !tbaa !11
  %i.aui = load i8, ptr %i.arz, align 8, !tbaa !13
  %.not.i138.i = icmp eq i8 %i.aui, 0
  br i1 %.not.i138.i, label %tsd_fetch_impl.exit140.i, label %bb.mm, !prof !30

bb.mm:                                            ; preds = %bb.ml
  %i.auj = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ary, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit140.i

tsd_fetch_impl.exit140.i:                         ; preds = %bb.mm, %bb.ml
  %.0.i139.i = phi ptr [ %i.auj, %bb.mm ], [ %i.ary, %bb.ml ]
  %i.auk = call i32 @je_ctl_bymibname(ptr noundef %.0.i139.i, ptr noundef nonnull %i.bk, i64 noundef 6, ptr noundef nonnull @.str.436, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.v, ptr noundef nonnull %i.by, ptr noundef null, i64 noundef 0) #14
  %.not119.i = icmp eq i32 %i.auk, 0
  br i1 %.not119.i, label %bb.mo, label %bb.mn

bb.mn:                                            ; preds = %tsd_fetch_impl.exit140.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.mo:                                            ; preds = %tsd_fetch_impl.exit140.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx) #14
  %i.aul = load i64, ptr %i.t, align 8, !tbaa !11 ; 3 uses
  %i.aum = shl i64 %i.aul, 9
  %i.aun = load i64, ptr %i.u, align 8, !tbaa !11 ; 2 uses
  %i.auo = load i64, ptr %i.v, align 8, !tbaa !11 ; 2 uses
  %i.aup = add i64 %i.aun, %i.auo
  %i.auq = sub i64 %i.aum, %i.aup
  %i.aur = load i64, ptr %i.q, align 8, !tbaa !11 ; 2 uses
  %i.aus = icmp eq i64 %i.aur, 0
  %i.aut = icmp eq i64 %i.aul, 0
  %i.auu = select i1 %i.aus, i1 %i.aut, i1 false  ; 4 uses
  %.not.i445 = xor i1 %.076279.i, true
  %or.cond.i446 = select i1 %.not.i445, i1 true, i1 %i.auu
  br i1 %or.cond.i446, label %bb.mq, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.390)
  %.pre.i447 = load i64, ptr %i.q, align 8, !tbaa !11
  %.pre281.i = load i64, ptr %i.t, align 8, !tbaa !11
  %.pre282.i = load i64, ptr %i.u, align 8, !tbaa !11
  %.pre283.i = load i64, ptr %i.v, align 8, !tbaa !11
  br label %bb.mq

bb.mq:                                            ; preds = %bb.mp, %bb.mo
  %i.auv = phi i64 [ %.pre283.i, %bb.mp ], [ %i.auo, %bb.mo ]
  %i.auw = phi i64 [ %.pre282.i, %bb.mp ], [ %i.aun, %bb.mo ]
  %i.aux = phi i64 [ %.pre281.i, %bb.mp ], [ %i.aul, %bb.mo ]
  %i.auy = phi i64 [ %.pre.i447, %bb.mp ], [ %i.aur, %bb.mo ]
  %i.auz = getelementptr inbounds nuw [8 x i8], ptr @je_sz_pind2sz_tab, i64 %indvars.iv.i444
  %i.ava = load i64, ptr %i.auz, align 8, !tbaa !11
  store i64 %i.ava, ptr %i.asr, align 8, !tbaa !13
  store i64 %indvars.iv.i444, ptr %i.ass, align 8, !tbaa !13
  store i64 %i.auy, ptr %i.ast, align 8, !tbaa !13
  %i.avb = load i64, ptr %i.r, align 8, !tbaa !11
  store i64 %i.avb, ptr %i.asu, align 8, !tbaa !13
  %i.avc = load i64, ptr %i.s, align 8, !tbaa !11
  store i64 %i.avc, ptr %i.asv, align 8, !tbaa !13
  store i64 %i.aux, ptr %i.asw, align 8, !tbaa !13
  store i64 %i.auw, ptr %i.asx, align 8, !tbaa !13
  store i64 %i.auv, ptr %i.asy, align 8, !tbaa !13
  store i64 %i.auq, ptr %i.asz, align 8, !tbaa !13
  br i1 %i.auu, label %emitter_table_row.exit227thread-pre-split.i, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.avd = load i32, ptr %0, align 8, !tbaa !16   ; 2 uses
  %.not.i219.i = icmp eq i32 %i.avd, 2
  br i1 %.not.i219.i, label %select.unfold.i221.i, label %emitter_table_row.exit227.i

select.unfold.i221.i:                             ; preds = %bb.mr, %select.unfold.i221.i
  %.016.i222.i = phi ptr [ %i.avl, %select.unfold.i221.i ], [ %7, %bb.mr ] ; 5 uses
  %i.ave = load i32, ptr %.016.i222.i, align 8, !tbaa !37
  %i.avf = getelementptr inbounds nuw i8, ptr %.016.i222.i, i64 4
  %i.avg = load i32, ptr %i.avf, align 4, !tbaa !40
  %i.avh = getelementptr inbounds nuw i8, ptr %.016.i222.i, i64 8
  %i.avi = load i32, ptr %i.avh, align 8, !tbaa !41
  %i.avj = getelementptr inbounds nuw i8, ptr %.016.i222.i, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.ave, i32 noundef %i.avg, i32 noundef %i.avi, ptr noundef nonnull %i.avj)
  %i.avk = getelementptr inbounds nuw i8, ptr %.016.i222.i, i64 24
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !42 ; 3 uses
  %.not14.i223.i = icmp eq ptr %i.avl, %7
  %.not1317.i224.i = icmp eq ptr %i.avl, null
  %.not13.i225.i = or i1 %.not14.i223.i, %.not1317.i224.i
  br i1 %.not13.i225.i, label %select.unfold._crit_edge.i226.i, label %select.unfold.i221.i

select.unfold._crit_edge.i226.i:                  ; preds = %select.unfold.i221.i
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.33)
  br label %emitter_table_row.exit227thread-pre-split.i

emitter_table_row.exit227thread-pre-split.i:      ; preds = %select.unfold._crit_edge.i226.i, %bb.mq
  %.val.i228.pr.i = load i32, ptr %0, align 8, !tbaa !16
  br label %emitter_table_row.exit227.i

emitter_table_row.exit227.i:                      ; preds = %emitter_table_row.exit227thread-pre-split.i, %bb.mr
  %.val.i228.i = phi i32 [ %.val.i228.pr.i, %emitter_table_row.exit227thread-pre-split.i ], [ %i.avd, %bb.mr ] ; 2 uses
  %spec.select.i.i229.i = icmp ult i32 %.val.i228.i, 2
  br i1 %spec.select.i.i229.i, label %bb.ms, label %emitter_json_object_begin.exit.i

bb.ms:                                            ; preds = %emitter_table_row.exit227.i
  %i.avm = load i8, ptr %i.ata, align 1, !tbaa !23, !range !26, !noundef !27
  %i.avn = trunc nuw i8 %i.avm to i1
  br i1 %i.avn, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %bb.ms
  store i8 0, ptr %i.ata, align 1, !tbaa !23
  br label %emitter_json_key_prefix.exit.i.i

bb.mu:                                            ; preds = %bb.ms
  %i.avo = load i8, ptr %i.atb, align 4, !tbaa !22, !range !26, !noundef !27
  %i.avp = trunc nuw i8 %i.avo to i1
  br i1 %i.avp, label %bb.mv, label %bb.mw

bb.mv:                                            ; preds = %bb.mu
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.32)
  %.pre.i230.i = load i32, ptr %0, align 8, !tbaa !16
  br label %bb.mw

bb.mw:                                            ; preds = %bb.mv, %bb.mu
  %i.avq = phi i32 [ %.pre.i230.i, %bb.mv ], [ %.val.i228.i, %bb.mu ]
  %.not.i.i.i450 = icmp eq i32 %i.avq, 1
  br i1 %.not.i.i.i450, label %emitter_json_key_prefix.exit.i.i, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.avr = load i32, ptr %i.atc, align 8, !tbaa !24 ; 2 uses
  %i.avs = load i32, ptr %0, align 8, !tbaa !16
  %i.avt = icmp ne i32 %i.avs, 0                  ; 2 uses
  %.07.i.i.i.i = select i1 %i.avt, ptr @.str.31, ptr @.str.34
  %i.avu = icmp sgt i32 %i.avr, 0
  br i1 %i.avu, label %.lr.ph.preheader.i.i.i.i, label %emitter_json_key_prefix.exit.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.mx
  %i.avv = zext i1 %i.avt to i32
  %.08.i.i.i.i = shl nuw nsw i32 %i.avr, %i.avv
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.09.i.i.i.i = phi i32 [ %i.avw, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i.i.i)
  %i.avw = add nuw nsw i32 %.09.i.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.avw, %.08.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %emitter_json_key_prefix.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !25

emitter_json_key_prefix.exit.i.i:                 ; preds = %.lr.ph.i.i.i.i, %bb.mx, %bb.mw, %bb.mt
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.27)
  %i.avx = load i32, ptr %i.atc, align 8, !tbaa !24
  %i.avy = add nsw i32 %i.avx, 1
  store i32 %i.avy, ptr %i.atc, align 8, !tbaa !24
  store i8 0, ptr %i.atb, align 4, !tbaa !22
  br label %emitter_json_object_begin.exit.i

emitter_json_object_begin.exit.i:                 ; preds = %emitter_json_key_prefix.exit.i.i, %emitter_table_row.exit227.i
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.432, i32 noundef 6, ptr noundef %i.q)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.433, i32 noundef 6, ptr noundef %i.r)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.445, i32 noundef 6, ptr noundef %i.s)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.434, i32 noundef 6, ptr noundef %i.t)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.435, i32 noundef 6, ptr noundef %i.u)
  call fastcc void @emitter_json_kv(ptr noundef nonnull %0, ptr noundef nonnull @.str.436, i32 noundef 6, ptr noundef %i.v)
  %.val.i231.i = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i232.i = icmp ult i32 %.val.i231.i, 2
  br i1 %spec.select.i.i232.i, label %bb.my, label %emitter_json_object_end.exit241.i

bb.my:                                            ; preds = %emitter_json_object_begin.exit.i
  %i.avz = load i32, ptr %i.atc, align 8, !tbaa !24
  %i.awa = add nsw i32 %i.avz, -1
  store i32 %i.awa, ptr %i.atc, align 8, !tbaa !24
  store i8 1, ptr %i.atb, align 4, !tbaa !22
  %.not.i233.i = icmp eq i32 %.val.i231.i, 1
  br i1 %.not.i233.i, label %emitter_indent.exit.i235.i, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.awb = load i32, ptr %i.atc, align 8, !tbaa !24 ; 2 uses
  %i.awc = load i32, ptr %0, align 8, !tbaa !16
  %i.awd = icmp ne i32 %i.awc, 0                  ; 2 uses
  %.07.i.i234.i = select i1 %i.awd, ptr @.str.31, ptr @.str.34
  %i.awe = icmp sgt i32 %i.awb, 0
  br i1 %i.awe, label %.lr.ph.preheader.i.i236.i, label %emitter_indent.exit.i235.i

.lr.ph.preheader.i.i236.i:                        ; preds = %bb.mz
  %i.awf = zext i1 %i.awd to i32
  %.08.i.i237.i = shl nuw nsw i32 %i.awb, %i.awf
  br label %.lr.ph.i.i238.i

.lr.ph.i.i238.i:                                  ; preds = %.lr.ph.i.i238.i, %.lr.ph.preheader.i.i236.i
  %.09.i.i239.i = phi i32 [ %i.awg, %.lr.ph.i.i238.i ], [ 0, %.lr.ph.preheader.i.i236.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i234.i)
  %i.awg = add nuw nsw i32 %.09.i.i239.i, 1       ; 2 uses
  %exitcond.not.i.i240.i = icmp eq i32 %i.awg, %.08.i.i237.i
  br i1 %exitcond.not.i.i240.i, label %emitter_indent.exit.i235.i, label %.lr.ph.i.i238.i, !llvm.loop !25

emitter_indent.exit.i235.i:                       ; preds = %.lr.ph.i.i238.i, %bb.mz, %bb.my
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit241.i

emitter_json_object_end.exit241.i:                ; preds = %emitter_indent.exit.i235.i, %emitter_json_object_begin.exit.i
  %indvars.iv.next.i448 = add nuw nsw i64 %indvars.iv.i444, 1 ; 2 uses
  %exitcond.not.i449 = icmp eq i64 %indvars.iv.next.i448, 64
  br i1 %exitcond.not.i449, label %bb.lr, label %bb.lw, !llvm.loop !53

bb.na:                                            ; preds = %emitter_json_object_end.exit218.i
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.390)
  br label %stats_arena_hpa_shard_print.exit

stats_arena_hpa_shard_print.exit:                 ; preds = %emitter_json_object_end.exit218.i, %bb.na
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk) #14
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.nb

bb.nb:                                            ; preds = %stats_arena_hpa_shard_print.exit, %bb.ih
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr) #14
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
  %i.z = alloca i64, align 8                      ; 4 uses
  %i.aa = alloca i64, align 8                     ; 4 uses
  %i.ab = alloca i64, align 8                     ; 7 uses
  %i.ac = alloca i64, align 8                     ; 7 uses
  %i.ad = alloca i64, align 8                     ; 6 uses
  %i.ae = alloca i32, align 4                     ; 5 uses
end_hunk_4
begin_hunk_5_@stats_arena_bins_print:bb.a
  %.not69.i = icmp eq i32 %i.abv, 0
  br i1 %.not69.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %tsd_fetch_impl.exit82.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.di:                                            ; preds = %tsd_fetch_impl.exit82.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  store i32 5, ptr %i.yb, align 16, !tbaa !41
  %i.abw = load i64, ptr %i.ya, align 16, !tbaa !13 ; 3 uses
  %i.abx = icmp eq i64 %i.abw, 0
  %brmerge314 = or i1 %i.xs, %i.abx
  %.mux315 = select i1 %i.xr, i64 0, i64 %i.abw
  br i1 %brmerge314, label %rate_per_second.exit101.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aby = udiv i64 %i.abw, %i.xt
  br label %rate_per_second.exit101.i

rate_per_second.exit101.i:                        ; preds = %bb.di, %bb.dj
  %.0.i100.i = phi i64 [ %i.aby, %bb.dj ], [ %.mux315, %bb.di ]
  store i64 %.0.i100.i, ptr %i.yc, align 8, !tbaa !13
  store i32 5, ptr %i.yd, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store i64 7, ptr %i.h, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store i64 8, ptr %i.i, align 8, !tbaa !11
  %i.abz = load i8, ptr %i.ww, align 8, !tbaa !13
  %.not.i83.i = icmp eq i8 %i.abz, 0
  br i1 %.not.i83.i, label %tsd_fetch_impl.exit85.i, label %bb.dk, !prof !30

bb.dk:                                            ; preds = %rate_per_second.exit101.i
  %i.aca = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.wv, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit85.i

tsd_fetch_impl.exit85.i:                          ; preds = %bb.dk, %rate_per_second.exit101.i
  %.0.i84.i = phi ptr [ %i.aca, %bb.dk ], [ %i.wv, %rate_per_second.exit101.i ]
  %i.acb = call i32 @je_ctl_bymibname(ptr noundef %.0.i84.i, ptr noundef nonnull %i.t, i64 noundef 6, ptr noundef nonnull @.str.277, ptr noundef nonnull %i.h, ptr noundef nonnull %i.ye, ptr noundef nonnull %i.i, ptr noundef null, i64 noundef 0) #14
  %.not70.i = icmp eq i32 %i.acb, 0
  br i1 %.not70.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %tsd_fetch_impl.exit85.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.dm:                                            ; preds = %tsd_fetch_impl.exit85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  store i32 5, ptr %i.yf, align 16, !tbaa !41
  %i.acc = load i64, ptr %i.ye, align 16, !tbaa !13 ; 3 uses
  %i.acd = icmp eq i64 %i.acc, 0
  %brmerge316 = or i1 %i.xs, %i.acd
  %.mux317 = select i1 %i.xr, i64 0, i64 %i.acc
  br i1 %brmerge316, label %rate_per_second.exit104.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ace = udiv i64 %i.acc, %i.xt
  br label %rate_per_second.exit104.i

rate_per_second.exit104.i:                        ; preds = %bb.dm, %bb.dn
  %.0.i103.i = phi i64 [ %i.ace, %bb.dn ], [ %.mux317, %bb.dm ]
  store i64 %.0.i103.i, ptr %i.yg, align 8, !tbaa !13
  store i32 5, ptr %i.yh, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  store i64 7, ptr %i.j, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  store i64 8, ptr %i.k, align 8, !tbaa !11
  %i.acf = load i8, ptr %i.ww, align 8, !tbaa !13
  %.not.i86.i = icmp eq i8 %i.acf, 0
  br i1 %.not.i86.i, label %tsd_fetch_impl.exit88.i, label %bb.do, !prof !30

bb.do:                                            ; preds = %rate_per_second.exit104.i
  %i.acg = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.wv, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit88.i

tsd_fetch_impl.exit88.i:                          ; preds = %bb.do, %rate_per_second.exit104.i
  %.0.i87.i = phi ptr [ %i.acg, %bb.do ], [ %i.wv, %rate_per_second.exit104.i ]
  %i.ach = call i32 @je_ctl_bymibname(ptr noundef %.0.i87.i, ptr noundef nonnull %i.t, i64 noundef 6, ptr noundef nonnull @.str.278, ptr noundef nonnull %i.j, ptr noundef nonnull %i.yi, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0) #14
  %.not71.i = icmp eq i32 %i.ach, 0
  br i1 %.not71.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %tsd_fetch_impl.exit88.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.dq:                                            ; preds = %tsd_fetch_impl.exit88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  store i32 5, ptr %i.yj, align 16, !tbaa !41
  %i.aci = load i64, ptr %i.yi, align 16, !tbaa !13 ; 3 uses
  %i.acj = icmp eq i64 %i.aci, 0
  %brmerge318 = or i1 %i.xs, %i.acj
  %.mux319 = select i1 %i.xr, i64 0, i64 %i.aci
  br i1 %brmerge318, label %rate_per_second.exit107.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ack = udiv i64 %i.aci, %i.xt
  br label %rate_per_second.exit107.i

rate_per_second.exit107.i:                        ; preds = %bb.dq, %bb.dr
  %.0.i106.i = phi i64 [ %i.ack, %bb.dr ], [ %.mux319, %bb.dq ]
  store i64 %.0.i106.i, ptr %i.yk, align 8, !tbaa !13
  store i32 5, ptr %i.yl, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  store i64 7, ptr %i.l, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  store i64 8, ptr %i.m, align 8, !tbaa !11
  %i.acl = load i8, ptr %i.ww, align 8, !tbaa !13
  %.not.i89.i = icmp eq i8 %i.acl, 0
  br i1 %.not.i89.i, label %tsd_fetch_impl.exit91.i, label %bb.ds, !prof !30

bb.ds:                                            ; preds = %rate_per_second.exit107.i
  %i.acm = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.wv, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit91.i

tsd_fetch_impl.exit91.i:                          ; preds = %bb.ds, %rate_per_second.exit107.i
  %.0.i90.i = phi ptr [ %i.acm, %bb.ds ], [ %i.wv, %rate_per_second.exit107.i ]
  %i.acn = call i32 @je_ctl_bymibname(ptr noundef %.0.i90.i, ptr noundef nonnull %i.t, i64 noundef 6, ptr noundef nonnull @.str.279, ptr noundef nonnull %i.l, ptr noundef nonnull %i.ym, ptr noundef nonnull %i.m, ptr noundef null, i64 noundef 0) #14
  %.not72.i = icmp eq i32 %i.acn, 0
  br i1 %.not72.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %tsd_fetch_impl.exit91.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.du:                                            ; preds = %tsd_fetch_impl.exit91.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  store i32 4, ptr %i.yn, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  store i64 7, ptr %i.n, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  store i64 4, ptr %i.o, align 8, !tbaa !11
  %i.aco = load i8, ptr %i.ww, align 8, !tbaa !13
  %.not.i92.i = icmp eq i8 %i.aco, 0
  br i1 %.not.i92.i, label %tsd_fetch_impl.exit94.i, label %bb.dv, !prof !30

bb.dv:                                            ; preds = %bb.du
  %i.acp = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.wv, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit94.i

tsd_fetch_impl.exit94.i:                          ; preds = %bb.dv, %bb.du
  %.0.i93.i = phi ptr [ %i.acp, %bb.dv ], [ %i.wv, %bb.du ]
  %i.acq = call i32 @je_ctl_bymibname(ptr noundef %.0.i93.i, ptr noundef nonnull %i.t, i64 noundef 6, ptr noundef nonnull @.str.280, ptr noundef nonnull %i.n, ptr noundef nonnull %i.yo, ptr noundef nonnull %i.o, ptr noundef null, i64 noundef 0) #14
  %.not73.i = icmp eq i32 %i.acq, 0
  br i1 %.not73.i, label %mutex_stats_read_arena_bin.exit, label %bb.dw

bb.dw:                                            ; preds = %tsd_fetch_impl.exit94.i
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

mutex_stats_read_arena_bin.exit:                  ; preds = %tsd_fetch_impl.exit94.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  %.val.i = load i32, ptr %0, align 8, !tbaa !16  ; 2 uses
  %spec.select.i.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i.i, label %bb.dx, label %emitter_json_object_begin.exit

bb.dx:                                            ; preds = %mutex_stats_read_arena_bin.exit
  %i.acr = load i8, ptr %i.xl, align 1, !tbaa !23, !range !26, !noundef !27
  %i.acs = trunc nuw i8 %i.acr to i1
  br i1 %i.acs, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  store i8 0, ptr %i.xl, align 1, !tbaa !23
  br label %emitter_json_key_prefix.exit.i

bb.dz:                                            ; preds = %bb.dx
  %i.act = load i8, ptr %i.xm, align 4, !tbaa !22, !range !26, !noundef !27
  %i.acu = trunc nuw i8 %i.act to i1
  br i1 %i.acu, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.32)
  %.pre.i223 = load i32, ptr %0, align 8, !tbaa !16
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.acv = phi i32 [ %.pre.i223, %bb.ea ], [ %.val.i, %bb.dz ]
  %.not.i.i222 = icmp eq i32 %i.acv, 1
  br i1 %.not.i.i222, label %emitter_json_key_prefix.exit.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.acw = load i32, ptr %i.xn, align 8, !tbaa !24 ; 2 uses
  %i.acx = load i32, ptr %0, align 8, !tbaa !16
  %i.acy = icmp ne i32 %i.acx, 0                  ; 2 uses
  %.07.i.i.i = select i1 %i.acy, ptr @.str.31, ptr @.str.34
  %i.acz = icmp sgt i32 %i.acw, 0
  br i1 %i.acz, label %.lr.ph.preheader.i.i.i, label %emitter_json_key_prefix.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ec
  %i.ada = zext i1 %i.acy to i32
  %.08.i.i.i = shl nuw nsw i32 %i.acw, %i.ada
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.adb, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i.i)
  %i.adb = add nuw nsw i32 %.09.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.adb, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_json_key_prefix.exit.i, label %.lr.ph.i.i.i, !llvm.loop !25

emitter_json_key_prefix.exit.i:                   ; preds = %.lr.ph.i.i.i, %bb.ec, %bb.eb, %bb.dy
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.27)
  %i.adc = load i32, ptr %i.xn, align 8, !tbaa !24
  %i.add = add nsw i32 %i.adc, 1
  store i32 %i.add, ptr %i.xn, align 8, !tbaa !24
  store i8 0, ptr %i.xm, align 4, !tbaa !22
  br label %emitter_json_object_begin.exit

emitter_json_object_begin.exit:                   ; preds = %mutex_stats_read_arena_bin.exit, %emitter_json_key_prefix.exit.i
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.317, i32 noundef 5, ptr noundef %i.ag)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.318, i32 noundef 5, ptr noundef %i.ah)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.373, i32 noundef 6, ptr noundef %i.ab)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.319, i32 noundef 5, ptr noundef %i.ai)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.329, i32 noundef 5, ptr noundef %i.aj)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.331, i32 noundef 5, ptr noundef %i.ak)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.383, i32 noundef 5, ptr noundef %i.al)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.374, i32 noundef 6, ptr noundef %i.ac)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.375, i32 noundef 6, ptr noundef %i.ad)
  call fastcc void @emitter_json_object_kv_begin(ptr noundef %0, ptr noundef nonnull @.str.391)
  call fastcc void @mutex_stats_emit(ptr noundef %0, ptr noundef null, ptr noundef %54, ptr noundef %55)
  %.val.i224 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i225 = icmp ult i32 %.val.i224, 2
  br i1 %spec.select.i.i225, label %bb.ed, label %emitter_json_object_end.exit249

bb.ed:                                            ; preds = %emitter_json_object_begin.exit
  %i.ade = load i32, ptr %i.xn, align 8, !tbaa !24
  %i.adf = add nsw i32 %i.ade, -1
  store i32 %i.adf, ptr %i.xn, align 8, !tbaa !24
  store i8 1, ptr %i.xm, align 4, !tbaa !22
  %.not.i226 = icmp eq i32 %.val.i224, 1
  br i1 %.not.i226, label %emitter_indent.exit.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.adg = load i32, ptr %i.xn, align 8, !tbaa !24 ; 2 uses
  %i.adh = load i32, ptr %0, align 8, !tbaa !16
  %i.adi = icmp ne i32 %i.adh, 0                  ; 2 uses
  %.07.i.i = select i1 %i.adi, ptr @.str.31, ptr @.str.34
  %i.adj = icmp sgt i32 %i.adg, 0
  br i1 %i.adj, label %.lr.ph.preheader.i.i, label %emitter_indent.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ee
  %i.adk = zext i1 %i.adi to i32
  %.08.i.i = shl nuw nsw i32 %i.adg, %i.adk
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi i32 [ %i.adl, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i)
  %i.adl = add nuw nsw i32 %.09.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.adl, %.08.i.i
  br i1 %exitcond.not.i.i, label %emitter_indent.exit.i, label %.lr.ph.i.i, !llvm.loop !25

emitter_indent.exit.i:                            ; preds = %.lr.ph.i.i, %bb.ee, %bb.ed
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit

.critedge:                                        ; preds = %bb.ct
  %.val.i227 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i228 = icmp ult i32 %.val.i227, 2
  br i1 %spec.select.i.i228, label %bb.ef, label %emitter_json_object_begin.exit238

bb.ef:                                            ; preds = %.critedge
  %i.adm = load i8, ptr %i.xl, align 1, !tbaa !23, !range !26, !noundef !27
  %i.adn = trunc nuw i8 %i.adm to i1
  br i1 %i.adn, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store i8 0, ptr %i.xl, align 1, !tbaa !23
  br label %emitter_json_key_prefix.exit.i231

bb.eh:                                            ; preds = %bb.ef
  %i.ado = load i8, ptr %i.xm, align 4, !tbaa !22, !range !26, !noundef !27
  %i.adp = trunc nuw i8 %i.ado to i1
  br i1 %i.adp, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.32)
  %.pre.i237 = load i32, ptr %0, align 8, !tbaa !16
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.adq = phi i32 [ %.pre.i237, %bb.ei ], [ %.val.i227, %bb.eh ]
  %.not.i.i229 = icmp eq i32 %i.adq, 1
  br i1 %.not.i.i229, label %emitter_json_key_prefix.exit.i231, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.adr = load i32, ptr %i.xn, align 8, !tbaa !24 ; 2 uses
  %i.ads = load i32, ptr %0, align 8, !tbaa !16
  %i.adt = icmp ne i32 %i.ads, 0                  ; 2 uses
  %.07.i.i.i230 = select i1 %i.adt, ptr @.str.31, ptr @.str.34
  %i.adu = icmp sgt i32 %i.adr, 0
  br i1 %i.adu, label %.lr.ph.preheader.i.i.i232, label %emitter_json_key_prefix.exit.i231

.lr.ph.preheader.i.i.i232:                        ; preds = %bb.ek
  %i.adv = zext i1 %i.adt to i32
  %.08.i.i.i233 = shl nuw nsw i32 %i.adr, %i.adv
  br label %.lr.ph.i.i.i234

.lr.ph.i.i.i234:                                  ; preds = %.lr.ph.i.i.i234, %.lr.ph.preheader.i.i.i232
  %.09.i.i.i235 = phi i32 [ %i.adw, %.lr.ph.i.i.i234 ], [ 0, %.lr.ph.preheader.i.i.i232 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i.i230)
  %i.adw = add nuw nsw i32 %.09.i.i.i235, 1       ; 2 uses
  %exitcond.not.i.i.i236 = icmp eq i32 %i.adw, %.08.i.i.i233
  br i1 %exitcond.not.i.i.i236, label %emitter_json_key_prefix.exit.i231, label %.lr.ph.i.i.i234, !llvm.loop !25

emitter_json_key_prefix.exit.i231:                ; preds = %.lr.ph.i.i.i234, %bb.ek, %bb.ej, %bb.eg
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.27)
  %i.adx = load i32, ptr %i.xn, align 8, !tbaa !24
  %i.ady = add nsw i32 %i.adx, 1
  store i32 %i.ady, ptr %i.xn, align 8, !tbaa !24
  store i8 0, ptr %i.xm, align 4, !tbaa !22
  br label %emitter_json_object_begin.exit238

emitter_json_object_begin.exit238:                ; preds = %.critedge, %emitter_json_key_prefix.exit.i231
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.317, i32 noundef 5, ptr noundef %i.ag)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.318, i32 noundef 5, ptr noundef %i.ah)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.373, i32 noundef 6, ptr noundef %i.ab)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.319, i32 noundef 5, ptr noundef %i.ai)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.329, i32 noundef 5, ptr noundef %i.aj)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.331, i32 noundef 5, ptr noundef %i.ak)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.383, i32 noundef 5, ptr noundef %i.al)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.374, i32 noundef 6, ptr noundef %i.ac)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.375, i32 noundef 6, ptr noundef %i.ad)
  br label %emitter_json_object_end.exit

emitter_json_object_end.exit:                     ; preds = %emitter_indent.exit.i, %emitter_json_object_begin.exit238
  %.val.i239.pr = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i240 = icmp ult i32 %.val.i239.pr, 2
  br i1 %spec.select.i.i240, label %bb.el, label %emitter_json_object_end.exit249

bb.el:                                            ; preds = %emitter_json_object_end.exit
  %i.adz = load i32, ptr %i.xn, align 8, !tbaa !24
  %i.aea = add nsw i32 %i.adz, -1
  store i32 %i.aea, ptr %i.xn, align 8, !tbaa !24
  store i8 1, ptr %i.xm, align 4, !tbaa !22
  %.not.i241 = icmp eq i32 %.val.i239.pr, 1
  br i1 %.not.i241, label %emitter_indent.exit.i243, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.aeb = load i32, ptr %i.xn, align 8, !tbaa !24 ; 2 uses
  %i.aec = load i32, ptr %0, align 8, !tbaa !16
  %i.aed = icmp ne i32 %i.aec, 0                  ; 2 uses
  %.07.i.i242 = select i1 %i.aed, ptr @.str.31, ptr @.str.34
  %i.aee = icmp sgt i32 %i.aeb, 0
  br i1 %i.aee, label %.lr.ph.preheader.i.i244, label %emitter_indent.exit.i243

.lr.ph.preheader.i.i244:                          ; preds = %bb.em
  %i.aef = zext i1 %i.aed to i32
  %.08.i.i245 = shl nuw nsw i32 %i.aeb, %i.aef
  br label %.lr.ph.i.i246

.lr.ph.i.i246:                                    ; preds = %.lr.ph.i.i246, %.lr.ph.preheader.i.i244
  %.09.i.i247 = phi i32 [ %i.aeg, %.lr.ph.i.i246 ], [ 0, %.lr.ph.preheader.i.i244 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i242)
  %i.aeg = add nuw nsw i32 %.09.i.i247, 1         ; 2 uses
  %exitcond.not.i.i248 = icmp eq i32 %i.aeg, %.08.i.i245
  br i1 %exitcond.not.i.i248, label %emitter_indent.exit.i243, label %.lr.ph.i.i246, !llvm.loop !25

emitter_indent.exit.i243:                         ; preds = %.lr.ph.i.i246, %bb.em, %bb.el
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit249

emitter_json_object_end.exit249:                  ; preds = %emitter_json_object_begin.exit, %emitter_json_object_end.exit, %emitter_indent.exit.i243
  %i.aeh = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.aei = zext i32 %i.aeh to i64
  %i.aej = load i64, ptr %i.ac, align 8, !tbaa !11
  %i.aek = mul i64 %i.aej, %i.aei                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo) #14
  %i.ael = load i64, ptr %i.ab, align 8, !tbaa !11 ; 2 uses
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
  %i.aes = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.bo, i64 noundef 6, ptr noundef nonnull @.str.394, i32 noundef %i.aeq) #14 ; 0 uses
  br label %get_rate_str.exit.thread

bb.ep:                                            ; preds = %bb.en
  %i.aet = icmp ult i32 %i.aeq, 100
  br i1 %i.aet, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.aeu = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.bo, i64 noundef 6, ptr noundef nonnull @.str.395, i32 noundef %i.aeq) #14 ; 0 uses
  br label %get_rate_str.exit.thread

bb.er:                                            ; preds = %bb.ep
  %i.aev = icmp ult i32 %i.aeq, 1000
  br i1 %i.aev, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.aew = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.bo, i64 noundef 6, ptr noundef nonnull @.str.396, i32 noundef %i.aeq) #14 ; 0 uses
  br label %get_rate_str.exit.thread

bb.et:                                            ; preds = %bb.er
  %i.aex = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.bo, i64 noundef 6, ptr noundef nonnull @.str.392) #14 ; 0 uses
  br label %get_rate_str.exit.thread

get_rate_str.exit:                                ; preds = %emitter_json_object_end.exit249
  br i1 %i.aem, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %get_rate_str.exit
  %i.aey = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.bo, i64 noundef 6, ptr noundef nonnull @.str.392) #14 ; 0 uses
  br label %get_rate_str.exit.thread

bb.ev:                                            ; preds = %get_rate_str.exit
  call void @llvm.assume(i1 %i.aen)
  %i.aez = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.bo, i64 noundef 6, ptr noundef nonnull @.str.393) #14 ; 0 uses
  br label %get_rate_str.exit.thread

get_rate_str.exit.thread:                         ; preds = %bb.et, %bb.es, %bb.eq, %bb.eo, %bb.eu, %bb.ev
  %i.afa = load i64, ptr %i.z, align 8, !tbaa !11 ; 2 uses
  store i64 %i.afa, ptr %i.yp, align 8, !tbaa !13
  %i.afb = trunc nuw i64 %indvars.iv to i32
  store i32 %i.afb, ptr %i.yq, align 8, !tbaa !13
  %i.afc = load i64, ptr %i.ab, align 8, !tbaa !11 ; 2 uses
  %i.afd = mul i64 %i.afc, %i.afa
  store i64 %i.afd, ptr %i.yr, align 8, !tbaa !13
  %i.afe = load i64, ptr %i.ag, align 8, !tbaa !11 ; 4 uses
  store i64 %i.afe, ptr %i.ys, align 8, !tbaa !13
  %i.aff = icmp eq i64 %i.afe, 0
  %brmerge320 = or i1 %i.xs, %i.aff
  %.mux321 = select i1 %i.xr, i64 0, i64 %i.afe
  br i1 %brmerge320, label %rate_per_second.exit, label %bb.ew

bb.ew:                                            ; preds = %get_rate_str.exit.thread
  %i.afg = udiv i64 %i.afe, %i.xt
  br label %rate_per_second.exit

rate_per_second.exit:                             ; preds = %get_rate_str.exit.thread, %bb.ew
  %.0.i251 = phi i64 [ %i.afg, %bb.ew ], [ %.mux321, %get_rate_str.exit.thread ]
  store i64 %.0.i251, ptr %i.yt, align 8, !tbaa !13
  %i.afh = load i64, ptr %i.ah, align 8, !tbaa !11 ; 4 uses
  store i64 %i.afh, ptr %i.yu, align 8, !tbaa !13
  %i.afi = icmp eq i64 %i.afh, 0
  %brmerge322 = or i1 %i.xs, %i.afi
  %.mux323 = select i1 %i.xr, i64 0, i64 %i.afh
  br i1 %brmerge322, label %rate_per_second.exit254, label %bb.ex

bb.ex:                                            ; preds = %rate_per_second.exit
  %i.afj = udiv i64 %i.afh, %i.xt
  br label %rate_per_second.exit254

rate_per_second.exit254:                          ; preds = %rate_per_second.exit, %bb.ex
  %.0.i253 = phi i64 [ %i.afj, %bb.ex ], [ %.mux323, %rate_per_second.exit ]
  store i64 %.0.i253, ptr %i.yv, align 8, !tbaa !13
  %i.afk = load i64, ptr %i.ai, align 8, !tbaa !11 ; 4 uses
  store i64 %i.afk, ptr %i.yw, align 8, !tbaa !13
  %i.afl = icmp eq i64 %i.afk, 0
  %brmerge324 = or i1 %i.xs, %i.afl
  %.mux325 = select i1 %i.xr, i64 0, i64 %i.afk
  br i1 %brmerge324, label %rate_per_second.exit257, label %bb.ey

bb.ey:                                            ; preds = %rate_per_second.exit254
  %i.afm = udiv i64 %i.afk, %i.xt
  br label %rate_per_second.exit257

rate_per_second.exit257:                          ; preds = %rate_per_second.exit254, %bb.ey
  %.0.i256 = phi i64 [ %i.afm, %bb.ey ], [ %.mux325, %rate_per_second.exit254 ]
  store i64 %.0.i256, ptr %i.yx, align 8, !tbaa !13
  %i.afn = load i32, ptr %i.af, align 4, !tbaa !7
  store i32 %i.afn, ptr %i.yy, align 8, !tbaa !13
  store i64 %i.afc, ptr %i.yz, align 8, !tbaa !13
  %i.afo = load i64, ptr %i.ac, align 8, !tbaa !11
  store i64 %i.afo, ptr %i.za, align 8, !tbaa !13
  %i.afp = load i64, ptr %i.ad, align 8, !tbaa !11
  store i64 %i.afp, ptr %i.zb, align 8, !tbaa !13
  %i.afq = load i32, ptr %i.ae, align 4, !tbaa !7
  store i32 %i.afq, ptr %i.zc, align 8, !tbaa !13
  %i.afr = load i64, ptr %i.aa, align 8, !tbaa !11
  %i.afs = load i64, ptr %i.p, align 8, !tbaa !11
  %i.aft = udiv i64 %i.afr, %i.afs
  store i64 %i.aft, ptr %i.zd, align 8, !tbaa !13
  store ptr %i.bo, ptr %i.ze, align 8, !tbaa !13
  %i.afu = load i64, ptr %i.aj, align 8, !tbaa !11 ; 4 uses
  store i64 %i.afu, ptr %i.zf, align 8, !tbaa !13
  %i.afv = icmp eq i64 %i.afu, 0
  %brmerge326 = or i1 %i.xs, %i.afv
  %.mux327 = select i1 %i.xr, i64 0, i64 %i.afu
  br i1 %brmerge326, label %rate_per_second.exit260, label %bb.ez

bb.ez:                                            ; preds = %rate_per_second.exit257
  %i.afw = udiv i64 %i.afu, %i.xt
  br label %rate_per_second.exit260

rate_per_second.exit260:                          ; preds = %rate_per_second.exit257, %bb.ez
  %.0.i259 = phi i64 [ %i.afw, %bb.ez ], [ %.mux327, %rate_per_second.exit257 ]
  store i64 %.0.i259, ptr %i.zg, align 8, !tbaa !13
  %i.afx = load i64, ptr %i.ak, align 8, !tbaa !11 ; 4 uses
  store i64 %i.afx, ptr %i.zh, align 8, !tbaa !13
  %i.afy = icmp eq i64 %i.afx, 0
  %brmerge328 = or i1 %i.xs, %i.afy
  %.mux329 = select i1 %i.xr, i64 0, i64 %i.afx
  br i1 %brmerge328, label %rate_per_second.exit263, label %bb.fa

bb.fa:                                            ; preds = %rate_per_second.exit260
  %i.afz = udiv i64 %i.afx, %i.xt
  br label %rate_per_second.exit263

rate_per_second.exit263:                          ; preds = %rate_per_second.exit260, %bb.fa
  %.0.i262 = phi i64 [ %i.afz, %bb.fa ], [ %.mux329, %rate_per_second.exit260 ]
  store i64 %.0.i262, ptr %i.zi, align 8, !tbaa !13
  %i.aga = load i64, ptr %i.y, align 8, !tbaa !11
  store i64 %i.aga, ptr %i.zj, align 8, !tbaa !13
  %i.agb = load i64, ptr %i.al, align 8, !tbaa !11 ; 4 uses
  store i64 %i.agb, ptr %i.zk, align 8, !tbaa !13
  %i.agc = icmp eq i64 %i.agb, 0
  %brmerge330 = or i1 %i.xs, %i.agc
  %.mux331 = select i1 %i.xr, i64 0, i64 %i.agb
  br i1 %brmerge330, label %rate_per_second.exit266, label %bb.fb

bb.fb:                                            ; preds = %rate_per_second.exit263
  %i.agd = udiv i64 %i.agb, %i.xt
  br label %rate_per_second.exit266

rate_per_second.exit266:                          ; preds = %rate_per_second.exit263, %bb.fb
  %.0.i265 = phi i64 [ %i.agd, %bb.fb ], [ %.mux331, %rate_per_second.exit263 ]
  store i64 %.0.i265, ptr %i.zl, align 8, !tbaa !13
  %i.age = load i32, ptr %0, align 8, !tbaa !16
  %.not.i267 = icmp eq i32 %i.age, 2
  br i1 %.not.i267, label %bb.fc, label %emitter_table_row.exit275

bb.fc:                                            ; preds = %rate_per_second.exit266
  %i.agf = load ptr, ptr %5, align 8, !tbaa !33   ; 3 uses
  %.not1315.i268 = icmp eq ptr %i.agf, null
  br i1 %.not1315.i268, label %select.unfold._crit_edge.i274, label %select.unfold.i269

select.unfold.i269:                               ; preds = %bb.fc, %select.unfold.i269
  %.016.i270 = phi ptr [ %i.agn, %select.unfold.i269 ], [ %i.agf, %bb.fc ] ; 5 uses
  %i.agg = load i32, ptr %.016.i270, align 8, !tbaa !37
  %i.agh = getelementptr inbounds nuw i8, ptr %.016.i270, i64 4
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !40
  %i.agj = getelementptr inbounds nuw i8, ptr %.016.i270, i64 8
  %i.agk = load i32, ptr %i.agj, align 8, !tbaa !41
  %i.agl = getelementptr inbounds nuw i8, ptr %.016.i270, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.agg, i32 noundef %i.agi, i32 noundef %i.agk, ptr noundef nonnull %i.agl)
  %i.agm = getelementptr inbounds nuw i8, ptr %.016.i270, i64 24
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !42 ; 3 uses
  %.not14.i271 = icmp eq ptr %i.agn, %i.agf
  %.not1317.i272 = icmp eq ptr %i.agn, null
  %.not13.i273 = or i1 %.not14.i271, %.not1317.i272
  br i1 %.not13.i273, label %select.unfold._crit_edge.i274, label %select.unfold.i269

select.unfold._crit_edge.i274:                    ; preds = %select.unfold.i269, %bb.fc
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.33)
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
  %i.ago = load i32, ptr %i.q, align 4, !tbaa !7
  %i.agp = zext i32 %i.ago to i64
  %i.agq = icmp samesign ult i64 %indvars.iv.next, %i.agp
  br i1 %i.agq, label %bb.ba, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.fd, %bb.az
  %.057.lcssa = phi i1 [ false, %bb.az ], [ %i.zq, %bb.fd ]
  %.val.i276 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i277 = icmp ult i32 %.val.i276, 2
  br i1 %spec.select.i.i277, label %bb.fe, label %emitter_json_array_end.exit

bb.fe:                                            ; preds = %._crit_edge
  %i.agr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ags = load i32, ptr %i.agr, align 8, !tbaa !24
  %i.agt = add nsw i32 %i.ags, -1
  store i32 %i.agt, ptr %i.agr, align 8, !tbaa !24
  %i.agu = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.agu, align 4, !tbaa !22
  %.not.i278 = icmp eq i32 %.val.i276, 1
  br i1 %.not.i278, label %emitter_indent.exit.i280, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.agv = load i32, ptr %i.agr, align 8, !tbaa !24 ; 2 uses
  %i.agw = load i32, ptr %0, align 8, !tbaa !16
  %i.agx = icmp ne i32 %i.agw, 0                  ; 2 uses
  %.07.i.i279 = select i1 %i.agx, ptr @.str.31, ptr @.str.34
  %i.agy = icmp sgt i32 %i.agv, 0
  br i1 %i.agy, label %.lr.ph.preheader.i.i281, label %emitter_indent.exit.i280

.lr.ph.preheader.i.i281:                          ; preds = %bb.ff
  %i.agz = zext i1 %i.agx to i32
  %.08.i.i282 = shl nuw nsw i32 %i.agv, %i.agz
  br label %.lr.ph.i.i283

.lr.ph.i.i283:                                    ; preds = %.lr.ph.i.i283, %.lr.ph.preheader.i.i281
  %.09.i.i284 = phi i32 [ %i.aha, %.lr.ph.i.i283 ], [ 0, %.lr.ph.preheader.i.i281 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i279)
  %i.aha = add nuw nsw i32 %.09.i.i284, 1         ; 2 uses
  %exitcond.not.i.i285 = icmp eq i32 %i.aha, %.08.i.i282
  br i1 %exitcond.not.i.i285, label %emitter_indent.exit.i280, label %.lr.ph.i.i283, !llvm.loop !25

emitter_indent.exit.i280:                         ; preds = %.lr.ph.i.i283, %bb.ff, %bb.fe
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.229)
  br label %emitter_json_array_end.exit

emitter_json_array_end.exit:                      ; preds = %._crit_edge, %emitter_indent.exit.i280
  br i1 %.057.lcssa, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %emitter_json_array_end.exit
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.390)
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
  store i64 4, ptr %i.c, align 8, !tbaa !11
  %i.y = call i32 @je_mallctl(ptr noundef nonnull @.str.193, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef null, i64 noundef 0) #14
  %.not35 = icmp eq i32 %i.y, 0
  br i1 %.not35, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.193) #14
  call void @abort() #15
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i64 4, ptr %i.d, align 8, !tbaa !11
  %i.z = call i32 @je_mallctl(ptr noundef nonnull @.str.207, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef null, i64 noundef 0) #14
  %.not36 = icmp eq i32 %i.z, 0
  br i1 %.not36, label %emitter_col_init.exit87, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.207) #14
  call void @abort() #15
  unreachable

emitter_col_init.exit87:                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <2 x i32> <i32 1, i32 20>, ptr %3, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 6, ptr %i.ac, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 4
  store <2 x i32> <i32 1, i32 20>, ptr %4, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 9, ptr %i.ag, align 8, !tbaa !41
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.202, ptr %i.ah, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %3, ptr %i.aj, align 8, !tbaa !51
  store ptr %5, ptr %i.aa, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 4>, ptr %5, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.ak, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %4, ptr %i.am, align 8, !tbaa !51
  store ptr %6, ptr %i.ad, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 4>, ptr %6, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 9, ptr %i.an, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.365, ptr %i.ao, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %5, ptr %i.ap, align 8, !tbaa !51
  store ptr %7, ptr %i.ai, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 13>, ptr %7, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 6, ptr %i.aq, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %6, ptr %i.ar, align 8, !tbaa !51
  store ptr %8, ptr %i.al, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 13>, ptr %8, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 9, ptr %i.as, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.241, ptr %i.at, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
end_hunk_5
begin_hunk_6_@stats_arena_lextents_print:bb.a
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
  store i64 %indvars.iv, ptr %i.ha, align 16, !tbaa !11
  store i64 %indvars.iv, ptr %i.hb, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  store i64 7, ptr %i.o, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  store i64 8, ptr %i.p, align 8, !tbaa !11
  %i.hs = load i8, ptr %i.gn, align 8, !tbaa !13
  %.not.i51 = icmp eq i8 %i.hs, 0
  br i1 %.not.i51, label %tsd_fetch_impl.exit53, label %bb.x, !prof !30

bb.x:                                             ; preds = %bb.w
  %i.ht = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gm, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit53

tsd_fetch_impl.exit53:                            ; preds = %bb.w, %bb.x
  %.0.i52 = phi ptr [ %i.ht, %bb.x ], [ %i.gm, %bb.w ]
  %i.hu = call i32 @je_ctl_bymibname(ptr noundef %.0.i52, ptr noundef nonnull %i.e, i64 noundef 5, ptr noundef nonnull @.str.317, ptr noundef nonnull %i.o, ptr noundef nonnull %i.j, ptr noundef nonnull %i.p, ptr noundef null, i64 noundef 0) #14
  %.not40 = icmp eq i32 %i.hu, 0
  br i1 %.not40, label %bb.z, label %bb.y

bb.y:                                             ; preds = %tsd_fetch_impl.exit53
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.z:                                             ; preds = %tsd_fetch_impl.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  store i64 7, ptr %i.q, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #14
  store i64 8, ptr %i.r, align 8, !tbaa !11
  %i.hv = load i8, ptr %i.gn, align 8, !tbaa !13
  %.not.i54 = icmp eq i8 %i.hv, 0
  br i1 %.not.i54, label %tsd_fetch_impl.exit56, label %bb.aa, !prof !30

bb.aa:                                            ; preds = %bb.z
  %i.hw = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gm, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit56

tsd_fetch_impl.exit56:                            ; preds = %bb.z, %bb.aa
  %.0.i55 = phi ptr [ %i.hw, %bb.aa ], [ %i.gm, %bb.z ]
  %i.hx = call i32 @je_ctl_bymibname(ptr noundef %.0.i55, ptr noundef nonnull %i.e, i64 noundef 5, ptr noundef nonnull @.str.318, ptr noundef nonnull %i.q, ptr noundef nonnull %i.k, ptr noundef nonnull %i.r, ptr noundef null, i64 noundef 0) #14
  %.not41 = icmp eq i32 %i.hx, 0
  br i1 %.not41, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %tsd_fetch_impl.exit56
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.ac:                                            ; preds = %tsd_fetch_impl.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #14
  store i64 7, ptr %i.s, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #14
  store i64 8, ptr %i.t, align 8, !tbaa !11
  %i.hy = load i8, ptr %i.gn, align 8, !tbaa !13
  %.not.i57 = icmp eq i8 %i.hy, 0
  br i1 %.not.i57, label %tsd_fetch_impl.exit59, label %bb.ad, !prof !30

bb.ad:                                            ; preds = %bb.ac
  %i.hz = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gm, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit59

tsd_fetch_impl.exit59:                            ; preds = %bb.ac, %bb.ad
  %.0.i58 = phi ptr [ %i.hz, %bb.ad ], [ %i.gm, %bb.ac ]
  %i.ia = call i32 @je_ctl_bymibname(ptr noundef %.0.i58, ptr noundef nonnull %i.e, i64 noundef 5, ptr noundef nonnull @.str.319, ptr noundef nonnull %i.s, ptr noundef nonnull %i.l, ptr noundef nonnull %i.t, ptr noundef null, i64 noundef 0) #14
  %.not42 = icmp eq i32 %i.ia, 0
  br i1 %.not42, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %tsd_fetch_impl.exit59
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.af:                                            ; preds = %tsd_fetch_impl.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  %i.ib = load i64, ptr %i.l, align 8, !tbaa !11
  %i.ic = icmp eq i64 %i.ib, 0                    ; 4 uses
  %.not = xor i1 %.0164, true
  %or.cond = select i1 %.not, i1 true, i1 %i.ic
  br i1 %or.cond, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.390)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #14
  store i64 7, ptr %i.u, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #14
  store i64 8, ptr %i.v, align 8, !tbaa !11
  %i.id = load i8, ptr %i.gn, align 8, !tbaa !13
  %.not.i60 = icmp eq i8 %i.id, 0
  br i1 %.not.i60, label %tsd_fetch_impl.exit62, label %bb.ai, !prof !30

bb.ai:                                            ; preds = %bb.ah
  %i.ie = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gm, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit62

tsd_fetch_impl.exit62:                            ; preds = %bb.ah, %bb.ai
  %.0.i61 = phi ptr [ %i.ie, %bb.ai ], [ %i.gm, %bb.ah ]
  %i.if = call i32 @je_ctl_bymibname(ptr noundef %.0.i61, ptr noundef nonnull %i.h, i64 noundef 3, ptr noundef nonnull @.str.202, ptr noundef nonnull %i.u, ptr noundef nonnull %i.m, ptr noundef nonnull %i.v, ptr noundef null, i64 noundef 0) #14
  %.not43 = icmp eq i32 %i.if, 0
  br i1 %.not43, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %tsd_fetch_impl.exit62
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.ak:                                            ; preds = %tsd_fetch_impl.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #14
  store i64 7, ptr %i.w, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #14
  store i64 8, ptr %i.x, align 8, !tbaa !11
  %i.ig = load i8, ptr %i.gn, align 8, !tbaa !13
  %.not.i63 = icmp eq i8 %i.ig, 0
  br i1 %.not.i63, label %tsd_fetch_impl.exit65, label %bb.al, !prof !30

bb.al:                                            ; preds = %bb.ak
  %i.ih = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gm, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit65

tsd_fetch_impl.exit65:                            ; preds = %bb.ak, %bb.al
  %.0.i64 = phi ptr [ %i.ih, %bb.al ], [ %i.gm, %bb.ak ]
  %i.ii = call i32 @je_ctl_bymibname(ptr noundef %.0.i64, ptr noundef nonnull %i.e, i64 noundef 5, ptr noundef nonnull @.str.397, ptr noundef nonnull %i.w, ptr noundef nonnull %i.n, ptr noundef nonnull %i.x, ptr noundef null, i64 noundef 0) #14
  %.not44 = icmp eq i32 %i.ii, 0
  br i1 %.not44, label %bb.an, label %bb.am

bb.am:                                            ; preds = %tsd_fetch_impl.exit65
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.an:                                            ; preds = %tsd_fetch_impl.exit65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  %.val.i = load i32, ptr %0, align 8, !tbaa !16  ; 2 uses
  %spec.select.i.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i.i, label %bb.ao, label %emitter_json_object_begin.exit

bb.ao:                                            ; preds = %bb.an
  %i.ij = load i8, ptr %i.hc, align 1, !tbaa !23, !range !26, !noundef !27
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i8 0, ptr %i.hc, align 1, !tbaa !23
  br label %emitter_json_key_prefix.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.il = load i8, ptr %i.hd, align 4, !tbaa !22, !range !26, !noundef !27
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.32)
  %.pre.i105 = load i32, ptr %0, align 8, !tbaa !16
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.in = phi i32 [ %.pre.i105, %bb.ar ], [ %.val.i, %bb.aq ]
  %.not.i.i = icmp eq i32 %i.in, 1
  br i1 %.not.i.i, label %emitter_json_key_prefix.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.io = load i32, ptr %i.he, align 8, !tbaa !24 ; 2 uses
  %i.ip = load i32, ptr %0, align 8, !tbaa !16
  %i.iq = icmp ne i32 %i.ip, 0                    ; 2 uses
  %.07.i.i.i = select i1 %i.iq, ptr @.str.31, ptr @.str.34
  %i.ir = icmp sgt i32 %i.io, 0
  br i1 %i.ir, label %.lr.ph.preheader.i.i.i, label %emitter_json_key_prefix.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.at
  %i.is = zext i1 %i.iq to i32
  %.08.i.i.i = shl nuw nsw i32 %i.io, %i.is
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.it, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i.i)
  %i.it = add nuw nsw i32 %.09.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.it, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_json_key_prefix.exit.i, label %.lr.ph.i.i.i, !llvm.loop !25

emitter_json_key_prefix.exit.i:                   ; preds = %.lr.ph.i.i.i, %bb.at, %bb.as, %bb.ap
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.27)
  %i.iu = load i32, ptr %i.he, align 8, !tbaa !24
  %i.iv = add nsw i32 %i.iu, 1
  store i32 %i.iv, ptr %i.he, align 8, !tbaa !24
  store i8 0, ptr %i.hd, align 4, !tbaa !22
  br label %emitter_json_object_begin.exit

emitter_json_object_begin.exit:                   ; preds = %bb.an, %emitter_json_key_prefix.exit.i
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.397, i32 noundef 6, ptr noundef %i.n)
  %.val.i106 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i107 = icmp ult i32 %.val.i106, 2
  br i1 %spec.select.i.i107, label %bb.au, label %emitter_json_object_end.exit

bb.au:                                            ; preds = %emitter_json_object_begin.exit
  %i.iw = load i32, ptr %i.he, align 8, !tbaa !24
  %i.ix = add nsw i32 %i.iw, -1
  store i32 %i.ix, ptr %i.he, align 8, !tbaa !24
  store i8 1, ptr %i.hd, align 4, !tbaa !22
  %.not.i108 = icmp eq i32 %.val.i106, 1
  br i1 %.not.i108, label %emitter_indent.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.iy = load i32, ptr %i.he, align 8, !tbaa !24 ; 2 uses
  %i.iz = load i32, ptr %0, align 8, !tbaa !16
  %i.ja = icmp ne i32 %i.iz, 0                    ; 2 uses
  %.07.i.i = select i1 %i.ja, ptr @.str.31, ptr @.str.34
  %i.jb = icmp sgt i32 %i.iy, 0
  br i1 %i.jb, label %.lr.ph.preheader.i.i, label %emitter_indent.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.av
  %i.jc = zext i1 %i.ja to i32
  %.08.i.i = shl nuw nsw i32 %i.iy, %i.jc
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi i32 [ %i.jd, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i)
  %i.jd = add nuw nsw i32 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.jd, %.08.i.i
  br i1 %exitcond.not.i.i, label %emitter_indent.exit.i, label %.lr.ph.i.i, !llvm.loop !25

emitter_indent.exit.i:                            ; preds = %.lr.ph.i.i, %bb.av, %bb.au
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit

emitter_json_object_end.exit:                     ; preds = %emitter_json_object_begin.exit, %emitter_indent.exit.i
  %i.je = load i64, ptr %i.m, align 8, !tbaa !11  ; 2 uses
  store i64 %i.je, ptr %i.hf, align 8, !tbaa !13
  %i.jf = load i32, ptr %i.a, align 4, !tbaa !7
  %i.jg = trunc nuw i64 %indvars.iv to i32
  %i.jh = add i32 %i.jf, %i.jg
  store i32 %i.jh, ptr %i.hg, align 8, !tbaa !13
  %i.ji = load i64, ptr %i.n, align 8, !tbaa !11  ; 2 uses
  %i.jj = mul i64 %i.ji, %i.je
  store i64 %i.jj, ptr %i.hh, align 8, !tbaa !13
  %i.jk = load i64, ptr %i.j, align 8, !tbaa !11  ; 4 uses
  store i64 %i.jk, ptr %i.hi, align 8, !tbaa !13
  %i.jl = icmp eq i64 %i.jk, 0
  %brmerge = or i1 %i.hk, %i.jl
  %.mux = select i1 %i.hj, i64 0, i64 %i.jk
  br i1 %brmerge, label %rate_per_second.exit, label %bb.aw

bb.aw:                                            ; preds = %emitter_json_object_end.exit
  %i.jm = udiv i64 %i.jk, %i.hl
  br label %rate_per_second.exit

rate_per_second.exit:                             ; preds = %emitter_json_object_end.exit, %bb.aw
  %.0.i109 = phi i64 [ %i.jm, %bb.aw ], [ %.mux, %emitter_json_object_end.exit ]
  store i64 %.0.i109, ptr %i.hm, align 8, !tbaa !13
  %i.jn = load i64, ptr %i.k, align 8, !tbaa !11  ; 4 uses
  store i64 %i.jn, ptr %i.hn, align 8, !tbaa !13
  %i.jo = icmp eq i64 %i.jn, 0
  %brmerge165 = or i1 %i.hk, %i.jo
  %.mux166 = select i1 %i.hj, i64 0, i64 %i.jn
  br i1 %brmerge165, label %rate_per_second.exit112, label %bb.ax

bb.ax:                                            ; preds = %rate_per_second.exit
  %i.jp = udiv i64 %i.jn, %i.hl
  br label %rate_per_second.exit112

rate_per_second.exit112:                          ; preds = %rate_per_second.exit, %bb.ax
  %.0.i111 = phi i64 [ %i.jp, %bb.ax ], [ %.mux166, %rate_per_second.exit ]
  store i64 %.0.i111, ptr %i.ho, align 8, !tbaa !13
  %i.jq = load i64, ptr %i.l, align 8, !tbaa !11  ; 4 uses
  store i64 %i.jq, ptr %i.hp, align 8, !tbaa !13
  %i.jr = icmp eq i64 %i.jq, 0
  %brmerge167 = or i1 %i.hk, %i.jr
  %.mux168 = select i1 %i.hj, i64 0, i64 %i.jq
  br i1 %brmerge167, label %rate_per_second.exit115, label %bb.ay

bb.ay:                                            ; preds = %rate_per_second.exit112
  %i.js = udiv i64 %i.jq, %i.hl
  br label %rate_per_second.exit115

rate_per_second.exit115:                          ; preds = %rate_per_second.exit112, %bb.ay
  %.0.i114 = phi i64 [ %i.js, %bb.ay ], [ %.mux168, %rate_per_second.exit112 ]
  store i64 %.0.i114, ptr %i.hq, align 8, !tbaa !13
  store i64 %i.ji, ptr %i.hr, align 8, !tbaa !13
  br i1 %i.ic, label %emitter_table_row.exit124, label %bb.az

bb.az:                                            ; preds = %rate_per_second.exit115
  %i.jt = load i32, ptr %0, align 8, !tbaa !16
  %.not.i116 = icmp eq i32 %i.jt, 2
  br i1 %.not.i116, label %bb.ba, label %emitter_table_row.exit124

bb.ba:                                            ; preds = %bb.az
  br i1 %.not1315.i117, label %select.unfold._crit_edge.i123, label %select.unfold.i118

select.unfold.i118:                               ; preds = %bb.ba, %select.unfold.i118
  %.016.i119 = phi ptr [ %i.kb, %select.unfold.i118 ], [ %i.fn, %bb.ba ] ; 5 uses
  %i.ju = load i32, ptr %.016.i119, align 8, !tbaa !37
  %i.jv = getelementptr inbounds nuw i8, ptr %.016.i119, i64 4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !40
  %i.jx = getelementptr inbounds nuw i8, ptr %.016.i119, i64 8
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !41
  %i.jz = getelementptr inbounds nuw i8, ptr %.016.i119, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.ju, i32 noundef %i.jw, i32 noundef %i.jy, ptr noundef nonnull %i.jz)
  %i.ka = getelementptr inbounds nuw i8, ptr %.016.i119, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !42 ; 3 uses
  %.not14.i120 = icmp eq ptr %i.kb, %i.fn
  %.not1317.i121 = icmp eq ptr %i.kb, null
  %.not13.i122 = or i1 %.not14.i120, %.not1317.i121
  br i1 %.not13.i122, label %select.unfold._crit_edge.i123, label %select.unfold.i118

select.unfold._crit_edge.i123:                    ; preds = %select.unfold.i118, %bb.ba
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.33)
  br label %emitter_table_row.exit124

emitter_table_row.exit124:                        ; preds = %select.unfold._crit_edge.i123, %bb.az, %rate_per_second.exit115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kc = load i32, ptr %i.b, align 4, !tbaa !7
  %i.kd = zext i32 %i.kc to i64
  %i.ke = icmp samesign ult i64 %indvars.iv.next, %i.kd
  br i1 %i.ke, label %bb.w, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %emitter_table_row.exit124, %bb.v
  %.0.lcssa = phi i1 [ false, %bb.v ], [ %i.ic, %emitter_table_row.exit124 ]
  %.val.i125 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i126 = icmp ult i32 %.val.i125, 2
  br i1 %spec.select.i.i126, label %bb.bb, label %emitter_json_array_end.exit

bb.bb:                                            ; preds = %._crit_edge
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !24
  %i.kh = add nsw i32 %i.kg, -1
  store i32 %i.kh, ptr %i.kf, align 8, !tbaa !24
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.ki, align 4, !tbaa !22
  %.not.i127 = icmp eq i32 %.val.i125, 1
  br i1 %.not.i127, label %emitter_indent.exit.i129, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.kj = load i32, ptr %i.kf, align 8, !tbaa !24 ; 2 uses
  %i.kk = load i32, ptr %0, align 8, !tbaa !16
  %i.kl = icmp ne i32 %i.kk, 0                    ; 2 uses
  %.07.i.i128 = select i1 %i.kl, ptr @.str.31, ptr @.str.34
  %i.km = icmp sgt i32 %i.kj, 0
  br i1 %i.km, label %.lr.ph.preheader.i.i130, label %emitter_indent.exit.i129

.lr.ph.preheader.i.i130:                          ; preds = %bb.bc
  %i.kn = zext i1 %i.kl to i32
  %.08.i.i131 = shl nuw nsw i32 %i.kj, %i.kn
  br label %.lr.ph.i.i132

.lr.ph.i.i132:                                    ; preds = %.lr.ph.i.i132, %.lr.ph.preheader.i.i130
  %.09.i.i133 = phi i32 [ %i.ko, %.lr.ph.i.i132 ], [ 0, %.lr.ph.preheader.i.i130 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i128)
  %i.ko = add nuw nsw i32 %.09.i.i133, 1          ; 2 uses
  %exitcond.not.i.i134 = icmp eq i32 %i.ko, %.08.i.i131
  br i1 %exitcond.not.i.i134, label %emitter_indent.exit.i129, label %.lr.ph.i.i132, !llvm.loop !25

emitter_indent.exit.i129:                         ; preds = %.lr.ph.i.i132, %bb.bc, %bb.bb
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.229)
  br label %emitter_json_array_end.exit

emitter_json_array_end.exit:                      ; preds = %._crit_edge, %emitter_indent.exit.i129
  br i1 %.0.lcssa, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %emitter_json_array_end.exit
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.390)
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
  store <2 x i32> <i32 1, i32 20>, ptr %2, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 6, ptr %i.x, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  store <2 x i32> <i32 1, i32 20>, ptr %3, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 9, ptr %i.ab, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.202, ptr %i.ac, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %2, ptr %i.ae, align 8, !tbaa !51
  store ptr %4, ptr %i.v, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 4>, ptr %4, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.af, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %3, ptr %i.ah, align 8, !tbaa !51
  store ptr %5, ptr %i.y, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 4>, ptr %5, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 9, ptr %i.ai, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.365, ptr %i.aj, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %4, ptr %i.ak, align 8, !tbaa !51
  store ptr %6, ptr %i.ad, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 13>, ptr %6, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 6, ptr %i.al, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %5, ptr %i.am, align 8, !tbaa !51
  store ptr %7, ptr %i.ag, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 13>, ptr %7, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 9, ptr %i.an, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @.str.400, ptr %i.ao, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %6, ptr %i.ap, align 8, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %8, ptr %i.aq, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 13>, ptr %8, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 6, ptr %i.ar, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %7, ptr %i.as, align 8, !tbaa !51
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %9, ptr %i.at, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 13>, ptr %9, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 9, ptr %i.au, align 8, !tbaa !41
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.401, ptr %i.av, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %10, ptr %i.w, align 8, !tbaa !51
  store ptr %8, ptr %i.ax, align 8, !tbaa !51
  store ptr %2, ptr %i.aw, align 8, !tbaa !42
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %10, ptr %i.ay, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 13>, ptr %10, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 6, ptr %i.az, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %11, ptr %i.z, align 8, !tbaa !51
  store ptr %9, ptr %i.bb, align 8, !tbaa !51
  store ptr %3, ptr %i.ba, align 8, !tbaa !42
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %11, ptr %i.bc, align 8, !tbaa !42
  store <2 x i32> <i32 1, i32 13>, ptr %11, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 9, ptr %i.bd, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.402, ptr %i.be, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr %12, ptr %i.bg, align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !51 ; 3 uses
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !42
  store ptr %12, ptr %i.bh, align 8, !tbaa !51
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %2, ptr %i.bj, align 8, !tbaa !42
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %12, ptr %i.bk, align 8, !tbaa !42
  %.pre.i78 = load ptr, ptr %i.bf, align 8, !tbaa !42 ; 3 uses
  store <2 x i32> <i32 1, i32 13>, ptr %12, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 6, ptr %i.bl, align 8, !tbaa !41
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  store ptr %13, ptr %i.bn, align 8, !tbaa !51
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !51 ; 3 uses
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !42
end_hunk_6
begin_hunk_7_@stats_arena_extents_print:emitter_col_init.exit81
  %.not33 = icmp eq i32 %i.hh, 0
  br i1 %.not33, label %bb.s, label %bb.r

bb.r:                                             ; preds = %tsd_fetch_impl.exit44
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.s:                                             ; preds = %tsd_fetch_impl.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  store i64 7, ptr %i.l, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  store i64 8, ptr %i.m, align 8, !tbaa !11
  %i.hi = load i8, ptr %i.gi, align 8, !tbaa !13
  %.not.i45 = icmp eq i8 %i.hi, 0
  br i1 %.not.i45, label %tsd_fetch_impl.exit47, label %bb.t, !prof !30

bb.t:                                             ; preds = %bb.s
  %i.hj = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gh, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit47

tsd_fetch_impl.exit47:                            ; preds = %bb.s, %bb.t
  %.0.i46 = phi ptr [ %i.hj, %bb.t ], [ %i.gh, %bb.s ]
  %i.hk = call i32 @je_ctl_bymibname(ptr noundef %.0.i46, ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.402, ptr noundef nonnull %i.l, ptr noundef nonnull %i.e, ptr noundef nonnull %i.m, ptr noundef null, i64 noundef 0) #14
  %.not34 = icmp eq i32 %i.hk, 0
  br i1 %.not34, label %bb.v, label %bb.u

bb.u:                                             ; preds = %tsd_fetch_impl.exit47
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.v:                                             ; preds = %tsd_fetch_impl.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  store i64 7, ptr %i.n, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  store i64 8, ptr %i.o, align 8, !tbaa !11
  %i.hl = load i8, ptr %i.gi, align 8, !tbaa !13
  %.not.i48 = icmp eq i8 %i.hl, 0
  br i1 %.not.i48, label %tsd_fetch_impl.exit50, label %bb.w, !prof !30

bb.w:                                             ; preds = %bb.v
  %i.hm = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gh, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit50

tsd_fetch_impl.exit50:                            ; preds = %bb.v, %bb.w
  %.0.i49 = phi ptr [ %i.hm, %bb.w ], [ %i.gh, %bb.v ]
  %i.hn = call i32 @je_ctl_bymibname(ptr noundef %.0.i49, ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.404, ptr noundef nonnull %i.n, ptr noundef nonnull %i.f, ptr noundef nonnull %i.o, ptr noundef null, i64 noundef 0) #14
  %.not35 = icmp eq i32 %i.hn, 0
  br i1 %.not35, label %bb.y, label %bb.x

bb.x:                                             ; preds = %tsd_fetch_impl.exit50
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.y:                                             ; preds = %tsd_fetch_impl.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  store i64 7, ptr %i.p, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  store i64 8, ptr %i.q, align 8, !tbaa !11
  %i.ho = load i8, ptr %i.gi, align 8, !tbaa !13
  %.not.i51 = icmp eq i8 %i.ho, 0
  br i1 %.not.i51, label %tsd_fetch_impl.exit53, label %bb.z, !prof !30

bb.z:                                             ; preds = %bb.y
  %i.hp = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gh, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit53

tsd_fetch_impl.exit53:                            ; preds = %bb.y, %bb.z
  %.0.i52 = phi ptr [ %i.hp, %bb.z ], [ %i.gh, %bb.y ]
  %i.hq = call i32 @je_ctl_bymibname(ptr noundef %.0.i52, ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.409, ptr noundef nonnull %i.p, ptr noundef nonnull %i.g, ptr noundef nonnull %i.q, ptr noundef null, i64 noundef 0) #14
  %.not36 = icmp eq i32 %i.hq, 0
  br i1 %.not36, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %tsd_fetch_impl.exit53
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.ab:                                            ; preds = %tsd_fetch_impl.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #14
  store i64 7, ptr %i.r, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #14
  store i64 8, ptr %i.s, align 8, !tbaa !11
  %i.hr = load i8, ptr %i.gi, align 8, !tbaa !13
  %.not.i54 = icmp eq i8 %i.hr, 0
  br i1 %.not.i54, label %tsd_fetch_impl.exit56, label %bb.ac, !prof !30

bb.ac:                                            ; preds = %bb.ab
  %i.hs = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gh, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit56

tsd_fetch_impl.exit56:                            ; preds = %bb.ab, %bb.ac
  %.0.i55 = phi ptr [ %i.hs, %bb.ac ], [ %i.gh, %bb.ab ]
  %i.ht = call i32 @je_ctl_bymibname(ptr noundef %.0.i55, ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.410, ptr noundef nonnull %i.r, ptr noundef nonnull %i.h, ptr noundef nonnull %i.s, ptr noundef null, i64 noundef 0) #14
  %.not37 = icmp eq i32 %i.ht, 0
  br i1 %.not37, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %tsd_fetch_impl.exit56
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.ae:                                            ; preds = %tsd_fetch_impl.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #14
  store i64 7, ptr %i.t, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #14
  store i64 8, ptr %i.u, align 8, !tbaa !11
  %i.hu = load i8, ptr %i.gi, align 8, !tbaa !13
  %.not.i57 = icmp eq i8 %i.hu, 0
  br i1 %.not.i57, label %tsd_fetch_impl.exit59, label %bb.af, !prof !30

bb.af:                                            ; preds = %bb.ae
  %i.hv = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.gh, i1 noundef zeroext false) #14
  br label %tsd_fetch_impl.exit59

tsd_fetch_impl.exit59:                            ; preds = %bb.ae, %bb.af
  %.0.i58 = phi ptr [ %i.hv, %bb.af ], [ %i.gh, %bb.ae ]
  %i.hw = call i32 @je_ctl_bymibname(ptr noundef %.0.i58, ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.411, ptr noundef nonnull %i.t, ptr noundef nonnull %i.i, ptr noundef nonnull %i.u, ptr noundef null, i64 noundef 0) #14
  %.not38 = icmp eq i32 %i.hw, 0
  br i1 %.not38, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %tsd_fetch_impl.exit59
  call void @je_malloc_write(ptr noundef nonnull @.str.203) #14
  call void @abort() #15
  unreachable

bb.ah:                                            ; preds = %tsd_fetch_impl.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  %i.hx = load i64, ptr %i.d, align 8, !tbaa !11
  %i.hy = load i64, ptr %i.e, align 8, !tbaa !11
  %i.hz = add i64 %i.hy, %i.hx
  %i.ia = load i64, ptr %i.f, align 8, !tbaa !11
  %i.ib = add i64 %i.hz, %i.ia                    ; 2 uses
  %i.ic = load i64, ptr %i.g, align 8, !tbaa !11
  %i.id = load i64, ptr %i.h, align 8, !tbaa !11
  %i.ie = add i64 %i.id, %i.ic
  %i.if = load i64, ptr %i.i, align 8, !tbaa !11
  %i.ig = add i64 %i.ie, %i.if
  %i.ih = icmp eq i64 %i.ib, 0                    ; 4 uses
  %.not = xor i1 %.0152, true
  %or.cond = select i1 %.not, i1 true, i1 %i.ih
  br i1 %or.cond, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.390)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.val.i = load i32, ptr %0, align 8, !tbaa !16  ; 2 uses
  %spec.select.i.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i.i, label %bb.ak, label %emitter_json_object_begin.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ii = load i8, ptr %i.gs, align 1, !tbaa !23, !range !26, !noundef !27
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i8 0, ptr %i.gs, align 1, !tbaa !23
  br label %emitter_json_key_prefix.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.ik = load i8, ptr %i.gt, align 4, !tbaa !22, !range !26, !noundef !27
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.32)
  %.pre.i99 = load i32, ptr %0, align 8, !tbaa !16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.im = phi i32 [ %.pre.i99, %bb.an ], [ %.val.i, %bb.am ]
  %.not.i.i = icmp eq i32 %i.im, 1
  br i1 %.not.i.i, label %emitter_json_key_prefix.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.in = load i32, ptr %i.gu, align 8, !tbaa !24 ; 2 uses
  %i.io = load i32, ptr %0, align 8, !tbaa !16
  %i.ip = icmp ne i32 %i.io, 0                    ; 2 uses
  %.07.i.i.i = select i1 %i.ip, ptr @.str.31, ptr @.str.34
  %i.iq = icmp sgt i32 %i.in, 0
  br i1 %i.iq, label %.lr.ph.preheader.i.i.i, label %emitter_json_key_prefix.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ap
  %i.ir = zext i1 %i.ip to i32
  %.08.i.i.i = shl nuw nsw i32 %i.in, %i.ir
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.is, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i.i)
  %i.is = add nuw nsw i32 %.09.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.is, %.08.i.i.i
  br i1 %exitcond.not.i.i.i, label %emitter_json_key_prefix.exit.i, label %.lr.ph.i.i.i, !llvm.loop !25

emitter_json_key_prefix.exit.i:                   ; preds = %.lr.ph.i.i.i, %bb.ap, %bb.ao, %bb.al
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.27)
  %i.it = load i32, ptr %i.gu, align 8, !tbaa !24
  %i.iu = add nsw i32 %i.it, 1
  store i32 %i.iu, ptr %i.gu, align 8, !tbaa !24
  store i8 0, ptr %i.gt, align 4, !tbaa !22
  br label %emitter_json_object_begin.exit

emitter_json_object_begin.exit:                   ; preds = %bb.aj, %emitter_json_key_prefix.exit.i
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.400, i32 noundef 6, ptr noundef %i.d)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.402, i32 noundef 6, ptr noundef %i.e)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.404, i32 noundef 6, ptr noundef %i.f)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.409, i32 noundef 6, ptr noundef %i.g)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.410, i32 noundef 6, ptr noundef %i.h)
  call fastcc void @emitter_json_kv(ptr noundef %0, ptr noundef nonnull @.str.411, i32 noundef 6, ptr noundef %i.i)
  %.val.i100 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i101 = icmp ult i32 %.val.i100, 2
  br i1 %spec.select.i.i101, label %bb.aq, label %emitter_json_object_end.exit

bb.aq:                                            ; preds = %emitter_json_object_begin.exit
  %i.iv = load i32, ptr %i.gu, align 8, !tbaa !24
  %i.iw = add nsw i32 %i.iv, -1
  store i32 %i.iw, ptr %i.gu, align 8, !tbaa !24
  store i8 1, ptr %i.gt, align 4, !tbaa !22
  %.not.i102 = icmp eq i32 %.val.i100, 1
  br i1 %.not.i102, label %emitter_indent.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.ix = load i32, ptr %i.gu, align 8, !tbaa !24 ; 2 uses
  %i.iy = load i32, ptr %0, align 8, !tbaa !16
  %i.iz = icmp ne i32 %i.iy, 0                    ; 2 uses
  %.07.i.i = select i1 %i.iz, ptr @.str.31, ptr @.str.34
  %i.ja = icmp sgt i32 %i.ix, 0
  br i1 %i.ja, label %.lr.ph.preheader.i.i, label %emitter_indent.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ar
  %i.jb = zext i1 %i.iz to i32
  %.08.i.i = shl nuw nsw i32 %i.ix, %i.jb
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi i32 [ %i.jc, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i)
  %i.jc = add nuw nsw i32 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.jc, %.08.i.i
  br i1 %exitcond.not.i.i, label %emitter_indent.exit.i, label %.lr.ph.i.i, !llvm.loop !25

emitter_indent.exit.i:                            ; preds = %.lr.ph.i.i, %bb.ar, %bb.aq
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.448)
  br label %emitter_json_object_end.exit

emitter_json_object_end.exit:                     ; preds = %emitter_json_object_begin.exit, %emitter_indent.exit.i
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr @je_sz_pind2sz_tab, i64 %indvars.iv
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !11
  store i64 %i.je, ptr %i.gv, align 8, !tbaa !13
  store i64 %indvars.iv, ptr %i.gw, align 8, !tbaa !13
  %i.jf = load i64, ptr %i.d, align 8, !tbaa !11
  store i64 %i.jf, ptr %i.gx, align 8, !tbaa !13
  %i.jg = load i64, ptr %i.g, align 8, !tbaa !11
  store i64 %i.jg, ptr %i.gy, align 8, !tbaa !13
  %i.jh = load i64, ptr %i.e, align 8, !tbaa !11
  store i64 %i.jh, ptr %i.gz, align 8, !tbaa !13
  %i.ji = load i64, ptr %i.h, align 8, !tbaa !11
  store i64 %i.ji, ptr %i.ha, align 8, !tbaa !13
  %i.jj = load i64, ptr %i.f, align 8, !tbaa !11
  store i64 %i.jj, ptr %i.hb, align 8, !tbaa !13
  %i.jk = load i64, ptr %i.i, align 8, !tbaa !11
  store i64 %i.jk, ptr %i.hc, align 8, !tbaa !13
  store i64 %i.ib, ptr %i.hd, align 8, !tbaa !13
  store i64 %i.ig, ptr %i.he, align 8, !tbaa !13
  br i1 %i.ih, label %emitter_table_row.exit111, label %bb.as

bb.as:                                            ; preds = %emitter_json_object_end.exit
  %i.jl = load i32, ptr %0, align 8, !tbaa !16
  %.not.i103 = icmp eq i32 %i.jl, 2
  br i1 %.not.i103, label %bb.at, label %emitter_table_row.exit111

bb.at:                                            ; preds = %bb.as
  br i1 %.not1315.i104, label %select.unfold._crit_edge.i110, label %select.unfold.i105

select.unfold.i105:                               ; preds = %bb.at, %select.unfold.i105
  %.016.i106 = phi ptr [ %i.jt, %select.unfold.i105 ], [ %i.fi, %bb.at ] ; 5 uses
  %i.jm = load i32, ptr %.016.i106, align 8, !tbaa !37
  %i.jn = getelementptr inbounds nuw i8, ptr %.016.i106, i64 4
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !40
  %i.jp = getelementptr inbounds nuw i8, ptr %.016.i106, i64 8
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !41
  %i.jr = getelementptr inbounds nuw i8, ptr %.016.i106, i64 16
  call fastcc void @emitter_print_value(ptr noundef nonnull readonly %0, i32 noundef %i.jm, i32 noundef %i.jo, i32 noundef %i.jq, ptr noundef nonnull %i.jr)
  %i.js = getelementptr inbounds nuw i8, ptr %.016.i106, i64 24
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !42 ; 3 uses
  %.not14.i107 = icmp eq ptr %i.jt, %i.fi
  %.not1317.i108 = icmp eq ptr %i.jt, null
  %.not13.i109 = or i1 %.not14.i107, %.not1317.i108
  br i1 %.not13.i109, label %select.unfold._crit_edge.i110, label %select.unfold.i105

select.unfold._crit_edge.i110:                    ; preds = %select.unfold.i105, %bb.at
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.33)
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
  br i1 %exitcond.not, label %bb.au, label %bb.p, !llvm.loop !56

bb.au:                                            ; preds = %emitter_table_row.exit111
  %.val.i112 = load i32, ptr %0, align 8, !tbaa !16 ; 2 uses
  %spec.select.i.i113 = icmp ult i32 %.val.i112, 2
  br i1 %spec.select.i.i113, label %bb.av, label %emitter_json_array_end.exit

bb.av:                                            ; preds = %bb.au
  %i.ju = load i32, ptr %i.gu, align 8, !tbaa !24
  %i.jv = add nsw i32 %i.ju, -1
  store i32 %i.jv, ptr %i.gu, align 8, !tbaa !24
  store i8 1, ptr %i.gt, align 4, !tbaa !22
  %.not.i114 = icmp eq i32 %.val.i112, 1
  br i1 %.not.i114, label %emitter_indent.exit.i116, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  %i.jw = load i32, ptr %i.gu, align 8, !tbaa !24 ; 2 uses
  %i.jx = load i32, ptr %0, align 8, !tbaa !16
  %i.jy = icmp ne i32 %i.jx, 0                    ; 2 uses
  %.07.i.i115 = select i1 %i.jy, ptr @.str.31, ptr @.str.34
  %i.jz = icmp sgt i32 %i.jw, 0
  br i1 %i.jz, label %.lr.ph.preheader.i.i117, label %emitter_indent.exit.i116

.lr.ph.preheader.i.i117:                          ; preds = %bb.aw
  %i.ka = zext i1 %i.jy to i32
  %.08.i.i118 = shl nuw nsw i32 %i.jw, %i.ka
  br label %.lr.ph.i.i119

.lr.ph.i.i119:                                    ; preds = %.lr.ph.i.i119, %.lr.ph.preheader.i.i117
  %.09.i.i120 = phi i32 [ %i.kb, %.lr.ph.i.i119 ], [ 0, %.lr.ph.preheader.i.i117 ]
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %.07.i.i115)
  %i.kb = add nuw nsw i32 %.09.i.i120, 1          ; 2 uses
  %exitcond.not.i.i121 = icmp eq i32 %i.kb, %.08.i.i118
  br i1 %exitcond.not.i.i121, label %emitter_indent.exit.i116, label %.lr.ph.i.i119, !llvm.loop !25

emitter_indent.exit.i116:                         ; preds = %.lr.ph.i.i119, %bb.aw, %bb.av
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.229)
  br label %emitter_json_array_end.exit

emitter_json_array_end.exit:                      ; preds = %bb.au, %emitter_indent.exit.i116
  br i1 %i.ih, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %emitter_json_array_end.exit
  call void (ptr, ptr, ...) @emitter_table_printf(ptr noundef %0, ptr noundef nonnull @.str.390)
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
!6 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !8, i64 0}
!17 = !{!"emitter_s", !8, i64 0, !18, i64 8, !18, i64 16, !8, i64 24, !19, i64 28, !19, i64 29}
!18 = !{!"any pointer", !9, i64 0}
!19 = !{!"_Bool", !9, i64 0}
!20 = !{!17, !18, i64 8}
!21 = !{!17, !18, i64 16}
!22 = !{!17, !19, i64 28}
!23 = !{!17, !19, i64 29}
!24 = !{!17, !8, i64 24}
!25 = distinct !{!25, !15}
!26 = !{i8 0, i8 2}
!27 = !{}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 omnipotent char", !18, i64 0}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = !{!34, !36, i64 0}
!34 = !{!"emitter_row_s", !35, i64 0}
!35 = !{!"", !36, i64 0}
!36 = !{!"p1 _ZTS13emitter_col_s", !18, i64 0}
!37 = !{!38, !8, i64 0}
!38 = !{!"emitter_col_s", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 16, !39, i64 24}
!39 = !{!"", !36, i64 0, !36, i64 8}
!40 = !{!38, !8, i64 4}
!41 = !{!38, !8, i64 8}
!42 = !{!38, !36, i64 24}
!43 = distinct !{!43, !15}
!44 = !{!19, !19, i64 0}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
!47 = !{!48, !12, i64 8}
!48 = !{!"counter_accum_s", !49, i64 0, !12, i64 8}
!49 = !{!"locked_u64_s", !50, i64 0}
!50 = !{!"", !12, i64 0}
!51 = !{!38, !36, i64 32}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !15}
end_hunk_7
