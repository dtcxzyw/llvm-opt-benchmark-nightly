Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_iostream?download=true
inline.NumInlined: 65
inline.NumDeleted: 4
begin_hunk_0_@SDL_IOFromConstMem_REAL:bb.a
bb.c:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(32) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 32) #15 ; 7 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %i.g, align 8
  %i.h = tail call noalias dereferenceable_or_null(72) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 72) #15 ; 13 uses
  %.not11.i = icmp eq ptr %i.h, null
  br i1 %.not11.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.d) #16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 56, ptr %i.h, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @mem_size, ptr %.sroa.629.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr @mem_seek, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @mem_read, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr @mem_close, ptr %.sroa.930.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %i.d, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 68 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %SDL_GetIOProperties_REAL.exit, label %SDL_GetIOProperties_REAL.exit.thread

SDL_GetIOProperties_REAL.exit:                    ; preds = %bb.f
  %i.m = tail call i32 @SDL_CreateProperties_REAL() #16 ; 3 uses
  store i32 %i.m, ptr %i.j, align 4
  %.not27 = icmp eq i32 %i.m, 0
  br i1 %.not27, label %bb.g, label %SDL_GetIOProperties_REAL.exit.thread

SDL_GetIOProperties_REAL.exit.thread:             ; preds = %bb.f, %SDL_GetIOProperties_REAL.exit
  %.0.i2838 = phi i32 [ %i.m, %SDL_GetIOProperties_REAL.exit ], [ %i.k, %bb.f ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %.0.i2838, ptr %i.n, align 8
  %i.o = tail call zeroext i1 @SDL_SetPointerProperty_REAL(i32 noundef %.0.i2838, ptr noundef nonnull @.str.8, ptr noundef %0) #16 ; 0 uses
  %i.p = tail call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %.0.i2838, ptr noundef nonnull @.str.9, i64 noundef %1) #16 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %SDL_GetIOProperties_REAL.exit.thread, %SDL_GetIOProperties_REAL.exit, %bb.c, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.h, %SDL_GetIOProperties_REAL.exit ], [ %i.h, %SDL_GetIOProperties_REAL.exit.thread ], [ %i.h, %bb.e ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_IOFromDynamicMem_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 48) #15 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(72) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 72) #15 ; 12 uses
  %.not11.i = icmp eq ptr %i.b, null
  br i1 %.not11.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 56, ptr %i.b, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @dynamic_mem_size, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @dynamic_mem_seek, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @dynamic_mem_read, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @dynamic_mem_write, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.1012.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr @dynamic_mem_close, ptr %.sroa.1012.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.a, ptr %i.c, align 8
  store ptr %i.b, ptr %i.a, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.a) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.b, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @dynamic_mem_size(ptr nofree noundef readonly captures(none) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  ret i64 %i.g
}

; Function Attrs: nounwind uwtable
define internal i64 @dynamic_mem_seek(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  switch i32 %2, label %bb.d [
    i32 0, label %bb.e
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.18) #16 ; 0 uses
  br label %mem_seek.exit

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink.in.i = phi ptr [ %i.c, %bb.c ], [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8
  %i.e = getelementptr inbounds i8, ptr %.sink.i, i64 %1 ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.g = icmp ult ptr %i.e, %i.f
  %spec.select.i = select i1 %i.g, ptr %i.f, ptr %i.e ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp ugt ptr %spec.select.i, %i.i
  %.2.i = select i1 %i.j, ptr %i.i, ptr %spec.select.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.2.i, ptr %i.k, align 8
  %i.l = ptrtoint ptr %.2.i to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m
  br label %mem_seek.exit

mem_seek.exit:                                    ; preds = %bb.d, %bb.e
  %.018.i = phi i64 [ -1, %bb.d ], [ %i.n, %bb.e ]
  ret i64 %.018.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @dynamic_mem_read(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.g) ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr readonly align 1 %i.b, i64 %spec.select.i, i1 false)
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %spec.select.i ; 2 uses
  store ptr %i.i, ptr %i.a, align 8
  %i.j = icmp ult i64 %i.g, %2
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = icmp eq ptr %i.k, %i.i
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %3, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i64 %spec.select.i
}

; Function Attrs: nounwind uwtable
define internal i64 @dynamic_mem_write(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = icmp ugt i64 %2, %i.h
  br i1 %i.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.g
  %i.n = icmp ugt i64 %2, %i.m
  br i1 %i.n, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10) #16 ; 0 uses
  br label %SDL_GetIOProperties_REAL.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 68 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %SDL_GetIOProperties_REAL.exit.i

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i32 @SDL_CreateProperties_REAL() #16 ; 2 uses
  store i32 %i.t, ptr %i.q, align 4
  br label %SDL_GetIOProperties_REAL.exit.i

SDL_GetIOProperties_REAL.exit.i:                  ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.i = phi i32 [ 0, %bb.d ], [ %i.t, %bb.f ], [ %i.r, %bb.e ]
  %i.u = tail call i64 @SDL_GetNumberProperty_REAL(i32 noundef %.0.i.i, ptr noundef nonnull @.str.27, i64 noundef 0) #16 ; 2 uses
  %.not.i = icmp eq i64 %i.u, 0
  %spec.store.select.i = select i1 %.not.i, i64 1024, i64 %i.u ; 2 uses
  %i.v = load ptr, ptr %i.j, align 8
  %i.w = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = add i64 %2, %i.x
  %i.aa = sub i64 %i.z, %i.y
  %i.ab = udiv i64 %i.aa, %spec.store.select.i
  %i.ac = add i64 %i.ab, 1
  %i.ad = mul i64 %i.ac, %spec.store.select.i     ; 2 uses
  %i.ae = tail call ptr @SDL_realloc_REAL(ptr noundef %i.w, i64 noundef %i.ad) #18 ; 6 uses
  %.not29.i = icmp eq ptr %i.ae, null
  br i1 %.not29.i, label %dynamic_mem_realloc.exit.thread, label %bb.g

bb.g:                                             ; preds = %SDL_GetIOProperties_REAL.exit.i
  %i.af = load ptr, ptr %i.d, align 8
  %i.ag = load ptr, ptr %i.a, align 8
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = load ptr, ptr %i.b, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.ai
  store ptr %i.ae, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  store ptr %i.an, ptr %i.d, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.am
  store ptr %i.ao, ptr %i.b, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  store ptr %i.ap, ptr %i.j, align 8
  %i.aq = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i30.i = icmp eq ptr %i.aq, null
  br i1 %.not.i30.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10) #16 ; 0 uses
  br label %dynamic_mem_realloc.exit

bb.i:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 68 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4            ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.j, label %dynamic_mem_realloc.exit

bb.j:                                             ; preds = %bb.i
  %i.av = tail call i32 @SDL_CreateProperties_REAL() #16 ; 2 uses
  store i32 %i.av, ptr %i.as, align 4
  br label %dynamic_mem_realloc.exit

dynamic_mem_realloc.exit:                         ; preds = %bb.h, %bb.i, %bb.j
  %.0.i31.i = phi i32 [ 0, %bb.h ], [ %i.av, %bb.j ], [ %i.at, %bb.i ]
  %i.aw = tail call zeroext i1 @SDL_SetPointerProperty_REAL(i32 noundef %.0.i31.i, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.ae) #16
  br i1 %i.aw, label %dynamic_mem_realloc.exit._crit_edge, label %dynamic_mem_realloc.exit.thread

dynamic_mem_realloc.exit._crit_edge:              ; preds = %dynamic_mem_realloc.exit
  %.pre = load ptr, ptr %i.d, align 8
  br label %bb.k

dynamic_mem_realloc.exit.thread:                  ; preds = %SDL_GetIOProperties_REAL.exit.i, %dynamic_mem_realloc.exit
  store i32 1, ptr %3, align 4
  br label %bb.m

bb.k:                                             ; preds = %dynamic_mem_realloc.exit._crit_edge, %bb.b
  %i.ax = phi ptr [ %.pre, %dynamic_mem_realloc.exit._crit_edge ], [ %i.e, %bb.b ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %2
  store ptr %i.ay, ptr %i.b, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %.pre-phi24 = phi i64 [ %2, %bb.k ], [ %i.h, %bb.a ]
  %i.az = phi ptr [ %i.ax, %bb.k ], [ %i.e, %bb.a ]
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %.pre-phi24) ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr readonly align 1 %1, i64 %spec.select.i, i1 false)
  %i.ba = load ptr, ptr %i.d, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %spec.select.i
  store ptr %i.bb, ptr %i.d, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %dynamic_mem_realloc.exit.thread
  %.0 = phi i64 [ %spec.select.i, %bb.l ], [ 0, %dynamic_mem_realloc.exit.thread ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @dynamic_mem_close(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10) #16 ; 0 uses
  br label %SDL_GetIOProperties_REAL.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 68 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %SDL_GetIOProperties_REAL.exit

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @SDL_CreateProperties_REAL() #16 ; 2 uses
  store i32 %i.f, ptr %i.c, align 4
  br label %SDL_GetIOProperties_REAL.exit

SDL_GetIOProperties_REAL.exit:                    ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.b ], [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  %i.g = tail call ptr @SDL_GetPointerProperty_REAL(i32 noundef %.0.i, ptr noundef nonnull @.str.28, ptr noundef null) #16
  tail call void @SDL_free_REAL(ptr noundef %i.g) #16
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #16
  ret i1 true
}

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_GetIOStatus_REAL(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10) #16 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i32, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_CloseIO_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call zeroext i1 %i.b(ptr noundef %i.d) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.e, %bb.c ], [ true, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.g = load i32, ptr %i.f, align 4
  tail call void @SDL_DestroyProperties_REAL(i32 noundef %i.g) #16
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.1 = phi i1 [ %.0, %bb.d ], [ true, %bb.a ]
  ret i1 %.1
}

declare void @SDL_DestroyProperties_REAL(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_LoadFile_IO_REAL(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null                     ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13) #16 ; 0 uses
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not13.i = icmp eq ptr %i.d, null
  br i1 %.not13.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not8.i.i = icmp eq ptr %i.f, null
  br i1 %.not8.i.i, label %SDL_SeekIO_REAL.exit.thread.i, label %SDL_SeekIO_REAL.exit.i

SDL_SeekIO_REAL.exit.thread.i:                    ; preds = %bb.d
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.17) #16 ; 0 uses
  br label %SDL_GetIOSize_REAL.exit

SDL_SeekIO_REAL.exit.i:                           ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i64 %i.f(ptr noundef %i.i, i64 noundef 0, i32 noundef 1) #16, !inline_history !15 ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %SDL_GetIOSize_REAL.exit, label %bb.e

bb.e:                                             ; preds = %SDL_SeekIO_REAL.exit.i
  %i.l = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not8.i15.i = icmp eq ptr %i.l, null
  br i1 %.not8.i15.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.17) #16 ; 0 uses
  br label %SDL_SeekIO_REAL.exit17.i

bb.g:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.h, align 8
  %i.o = tail call i64 %i.l(ptr noundef %i.n, i64 noundef 0, i32 noundef 2) #16, !inline_history !15
  br label %SDL_SeekIO_REAL.exit17.i

SDL_SeekIO_REAL.exit17.i:                         ; preds = %bb.g, %bb.f
  %.0.i16.i = phi i64 [ %i.o, %bb.g ], [ -1, %bb.f ] ; 2 uses
  %i.p = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not8.i19.i = icmp eq ptr %i.p, null
  br i1 %.not8.i19.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %SDL_SeekIO_REAL.exit17.i
  %i.q = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.17) #16 ; 0 uses
  br label %SDL_GetIOSize_REAL.exit

bb.i:                                             ; preds = %SDL_SeekIO_REAL.exit17.i
  %i.r = load ptr, ptr %i.h, align 8
  %i.s = tail call i64 %i.p(ptr noundef %i.r, i64 noundef %i.j, i32 noundef 0) #16, !inline_history !15 ; 0 uses
  br label %SDL_GetIOSize_REAL.exit

bb.j:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i64 %i.d(ptr noundef %i.u) #16, !inline_history !16
  br label %SDL_GetIOSize_REAL.exit

SDL_GetIOSize_REAL.exit:                          ; preds = %SDL_SeekIO_REAL.exit.thread.i, %SDL_SeekIO_REAL.exit.i, %bb.h, %bb.i, %bb.j
  %.1.i = phi i64 [ %i.v, %bb.j ], [ %.0.i16.i, %bb.i ], [ -1, %SDL_SeekIO_REAL.exit.thread.i ], [ -1, %SDL_SeekIO_REAL.exit.i ], [ %.0.i16.i, %bb.h ] ; 2 uses
  %i.w = icmp slt i64 %.1.i, 0                    ; 2 uses
  %spec.select = select i1 %i.w, i64 1024, i64 %.1.i
  %spec.select.fr = freeze i64 %spec.select       ; 7 uses
  %i.x = add nuw nsw i64 %spec.select.fr, 1
  %i.y = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.x) #16 ; 7 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.w, label %.preheader

.preheader:                                       ; preds = %SDL_GetIOSize_REAL.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br i1 %i.w, label %.outer.us, label %.preheader.split

.outer.us:                                        ; preds = %.preheader, %.split69.us.us
  %.139.ph.us = phi i64 [ %.240.us.us, %.split69.us.us ], [ %spec.select.fr, %.preheader ]
  %.036.ph.us = phi i64 [ %i.ar, %.split69.us.us ], [ 0, %.preheader ] ; 8 uses
  %.035.ph.us = phi ptr [ %.1.us.us, %.split69.us.us ], [ %i.y, %.preheader ]
  %i.ac = add nsw i64 %.036.ph.us, 1024           ; 2 uses
  %i.ad = add nsw i64 %.036.ph.us, 1025
  br label %bb.k

bb.k:                                             ; preds = %bb.p, %.outer.us
  %.139.us.us = phi i64 [ %.240.us.us, %bb.p ], [ %.139.ph.us, %.outer.us ] ; 2 uses
  %.035.us.us = phi ptr [ %.1.us.us, %bb.p ], [ %.035.ph.us, %.outer.us ] ; 3 uses
  %i.ae = icmp sgt i64 %i.ac, %.139.us.us
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = tail call ptr @SDL_realloc_REAL(ptr noundef %.035.us.us, i64 noundef %i.ad) #18 ; 2 uses
  %.not49.us.us = icmp eq ptr %i.af, null
end_hunk_0
