Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/stats?download=true
inline.NumInlined: 273
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@mi_process_info_print_out:bb.a
  %i.f = sub i64 %i.c, %i.e
  store i64 %i.f, ptr %2, align 8, !tbaa !19
  %i.g = tail call ptr @_mi_subproc_main() #9     ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %mi_process_info.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1616
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1608
  %i.k = load atomic i64, ptr %i.j monotonic, align 8
  %i.l = tail call i64 @llvm.smax.i64(i64 %i.i, i64 0) ; 2 uses
  store i64 %i.l, ptr %i.a, align 8, !tbaa !20
  %i.m = tail call i64 @llvm.smax.i64(i64 %i.k, i64 0) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.m, ptr %i.n, align 8, !tbaa !21
  br label %mi_process_info.exit

mi_process_info.exit:                             ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ]
  %i.p = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.p, ptr %i.q, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i64 %i.o, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store i64 0, ptr %i.v, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  call void @_mi_prim_process_info(ptr noundef nonnull %2) #9
  %i.w = load i64, ptr %2, align 8, !tbaa !19
  %i.x = call i64 @llvm.smax.i64(i64 %i.w, i64 0) ; 2 uses
  %i.y = load i64, ptr %i.t, align 8, !tbaa !25
  %i.z = call i64 @llvm.smax.i64(i64 %i.y, i64 0) ; 2 uses
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !26
  %i.ab = call i64 @llvm.smax.i64(i64 %i.aa, i64 0) ; 2 uses
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !23
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !21  ; 2 uses
  %i.ae = load i64, ptr %i.v, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.af = udiv i64 %i.x, 1000
  %i.ag = urem i64 %i.x, 1000
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef %i.af, i64 noundef %i.ag) #9
  %i.ah = udiv i64 %i.z, 1000
  %i.ai = urem i64 %i.z, 1000
  %i.aj = udiv i64 %i.ab, 1000
  %i.ak = urem i64 %i.ab, 1000
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i64 noundef %i.ah, i64 noundef %i.ai, i64 noundef %i.aj, i64 noundef %i.ak, i64 noundef %i.ae) #9
  call fastcc void @mi_printf_amount(i64 noundef %i.ac, i64 noundef 1, ptr noundef %0, ptr noundef %1, i1 noundef zeroext false) #10
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %mi_process_info.exit
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.4) #9
  call fastcc void @mi_printf_amount(i64 noundef %i.ad, i64 noundef 1, ptr noundef %0, ptr noundef %1, i1 noundef zeroext false) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %mi_process_info.exit
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.5) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nooutline nounwind uwtable
define hidden void @mi_process_info(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7) local_unnamed_addr #2 {
bb.a:
  %8 = alloca %struct.mi_process_info_s, align 8  ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load i64, ptr @mi_process_start, align 8, !tbaa !17
  %i.c = tail call i64 @_mi_prim_clock_now() #9
  %i.d = load i64, ptr @mi_clock_diff, align 8, !tbaa !17
  %i.e = add i64 %i.b, %i.d
  %i.f = sub i64 %i.c, %i.e
  store i64 %i.f, ptr %8, align 8, !tbaa !19
  %i.g = tail call ptr @_mi_subproc_main() #9     ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1616
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1608
  %i.k = load atomic i64, ptr %i.j monotonic, align 8
  %i.l = tail call i64 @llvm.smax.i64(i64 %i.i, i64 0) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %i.l, ptr %i.m, align 8, !tbaa !20
  %i.n = tail call i64 @llvm.smax.i64(i64 %i.k, i64 0) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 %i.n, ptr %i.o, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]
  %i.q = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store i64 %i.q, ptr %i.s, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i64 %i.p, ptr %i.u, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  call void @_mi_prim_process_info(ptr noundef nonnull %8) #9
  %.not34 = icmp eq ptr %0, null
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i64, ptr %8, align 8, !tbaa !19
  %i.z = call i64 @llvm.smax.i64(i64 %i.y, i64 0)
  store i64 %i.z, ptr %0, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not35 = icmp eq ptr %1, null
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !25
  %i.ab = call i64 @llvm.smax.i64(i64 %i.aa, i64 0)
  store i64 %i.ab, ptr %1, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not36 = icmp eq ptr %2, null
  br i1 %.not36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !26
  %i.ad = call i64 @llvm.smax.i64(i64 %i.ac, i64 0)
  store i64 %i.ad, ptr %2, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not37 = icmp eq ptr %3, null
  br i1 %.not37, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !22
  store i64 %i.ae, ptr %3, align 8, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not38 = icmp eq ptr %4, null
  br i1 %.not38, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load i64, ptr %i.u, align 8, !tbaa !23
  store i64 %i.af, ptr %4, align 8, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not39 = icmp eq ptr %5, null
  br i1 %.not39, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load i64, ptr %i.r, align 8, !tbaa !20
  store i64 %i.ag, ptr %5, align 8, !tbaa !17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not40 = icmp eq ptr %6, null
  br i1 %.not40, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = load i64, ptr %i.t, align 8, !tbaa !21
  store i64 %i.ah, ptr %6, align 8, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not41 = icmp eq ptr %7, null
  br i1 %.not41, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = load i64, ptr %i.x, align 8, !tbaa !24
  store i64 %i.ai, ptr %7, align 8, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  ret void
}

declare void @_mi_fprintf(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nooutline nounwind uwtable
define internal fastcc void @mi_printf_amount(i64 noundef %0, i64 noundef range(i64 0, 2) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [8 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %.not.not = icmp eq i64 %1, 0                   ; 5 uses
  %i.c = select i1 %.not.not, ptr @.str.38, ptr @.str.39 ; 2 uses
  %i.d = select i1 %.not.not, i64 1000, i64 1024  ; 3 uses
  %i.e = tail call i64 @llvm.abs.i64(i64 %0, i1 true) ; 3 uses
  %i.f = icmp samesign ult i64 %i.e, %i.d
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not54 = icmp ne i64 %0, 1
  %brmerge = or i1 %.not54, %.not.not
  br i1 %brmerge, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %0, 0
  %i.h = select i1 %i.g, ptr @.str.9, ptr %i.c
  %i.i = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.40, i64 noundef %0, ptr noundef nonnull %i.h) #9 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = select i1 %.not.not, i64 1000000, i64 1048576 ; 2 uses
  %.not51 = icmp samesign ult i64 %i.e, %i.j      ; 2 uses
  %spec.select = select i1 %.not51, i64 %i.d, i64 %i.j ; 2 uses
  %spec.select56 = select i1 %.not51, ptr @.str.41, ptr @.str.42
  %i.k = mul nuw nsw i64 %spec.select, %i.d       ; 2 uses
  %.not52 = icmp samesign ult i64 %i.e, %i.k      ; 2 uses
  %.145 = select i1 %.not52, i64 %spec.select, i64 %i.k
  %.1 = select i1 %.not52, ptr %spec.select56, ptr @.str.43
  %.lhs.trunc = trunc nuw nsw i64 %.145 to i32
  %i.l = udiv i32 %.lhs.trunc, 10
  %.zext = zext nneg i32 %i.l to i64
  %i.m = sdiv i64 %0, %.zext                      ; 2 uses
  %i.n = sdiv i64 %i.m, 10
  %i.o = srem i64 %i.m, 10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.p = select i1 %.not.not, ptr @.str.9, ptr @.str.45
  %i.q = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.b, i64 noundef 8, ptr noundef nonnull @.str.44, ptr noundef nonnull %.1, ptr noundef nonnull %i.p, ptr noundef nonnull %i.c) #9 ; 0 uses
  %i.r = call i64 @llvm.abs.i64(i64 %i.o, i1 true)
  %i.s = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.46, i64 noundef %i.n, i64 noundef %i.r, ptr noundef nonnull %i.b) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.str.47..str.48 = select i1 %4, ptr @.str.47, ptr @.str.48
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %.str.47..str.48, ptr noundef nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_stats_print(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %5 = alloca %struct.buffered_s, align 8         ; 93 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store ptr %3, ptr %5, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.e, align 8
  store i64 255, ptr %i.d, align 8, !tbaa !32
  store ptr %i.a, ptr %i.c, align 8, !tbaa !33
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.6, ptr noundef %0, i64 noundef %1) #9
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !57
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #9
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 104
  call fastcc void @mi_stat_print_ex(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.8, i64 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.9) #10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.7) #9
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  call fastcc void @mi_printf_amount(i64 noundef %i.j, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  %i.l = load i64, ptr %i.f, align 8, !tbaa !16
  call fastcc void @mi_printf_amount(i64 noundef %i.l, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  %i.m = load i64, ptr %i.k, align 8, !tbaa !14
  call fastcc void @mi_printf_amount(i64 noundef %i.m, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.10) #9
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.p = load i64, ptr %i.o, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 144
  call fastcc void @mi_printf_amount(i64 noundef %i.p, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  %i.r = load i64, ptr %i.n, align 8, !tbaa !16
  call fastcc void @mi_printf_amount(i64 noundef %i.r, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  %i.s = load i64, ptr %i.q, align 8, !tbaa !14
  call fastcc void @mi_printf_amount(i64 noundef %i.s, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 504
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.11) #9
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11
  call fastcc void @mi_printf_amount(i64 noundef %i.u, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 512
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.12) #9
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11
  call fastcc void @mi_printf_amount(i64 noundef %i.w, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 520
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.13) #9
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11
  call fastcc void @mi_printf_amount(i64 noundef %i.y, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 528
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.14) #9
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !11
  call fastcc void @mi_printf_amount(i64 noundef %i.aa, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 328
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.15) #9
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11
  call fastcc void @mi_printf_amount(i64 noundef %i.ac, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 336
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.16) #9
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !11
  call fastcc void @mi_printf_amount(i64 noundef %i.ae, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !58 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %mi_stat_average_print.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !59
  %i.ak = mul nsw i64 %i.aj, 10
  %i.al = sdiv i64 %i.ak, %i.ag
  br label %mi_stat_average_print.exit

mi_stat_average_print.exit:                       ; preds = %bb.b, %bb.c
  %i.am = phi i64 [ %i.al, %bb.c ], [ 0, %bb.b ]  ; 2 uses
  %i.an = sdiv i64 %i.am, 10
  %i.ao = srem i64 %i.am, 10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.17, i64 noundef %i.an, i64 noundef %i.ao) #9
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  br label %bb.d

bb.d:                                             ; preds = %mi_stat_average_print.exit, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !60
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #9
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 40
  call fastcc void @mi_stat_print_ex(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.19, i64 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.9) #10
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64
  call fastcc void @mi_stat_print_ex(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.20, i64 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.9) #10
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.21) #9
  %i.av = load i64, ptr %i.au, align 8, !tbaa !11
  call fastcc void @mi_printf_amount(i64 noundef %i.av, i64 noundef 1, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.22) #9
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !11
  call fastcc void @mi_printf_amount(i64 noundef %i.ax, i64 noundef 1, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.18) #9
  %i.ay = load i64, ptr %i.ap, align 8, !tbaa !11
  call fastcc void @mi_printf_amount(i64 noundef %i.ay, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 312
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.23) #9
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !11
  call fastcc void @mi_printf_amount(i64 noundef %i.ba, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 248
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.24) #9
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11
  call fastcc void @mi_printf_amount(i64 noundef %i.bc, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 256
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.25) #9
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !11
  call fastcc void @mi_printf_amount(i64 noundef %i.be, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 264
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.26) #9
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !11
  call fastcc void @mi_printf_amount(i64 noundef %i.bg, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 272
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.27) #9
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !11
  call fastcc void @mi_printf_amount(i64 noundef %i.bi, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 304
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.28) #9
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !11
  call fastcc void @mi_printf_amount(i64 noundef %i.bk, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 480
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.29) #9
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 496
  call fastcc void @mi_printf_amount(i64 noundef %i.bn, i64 noundef 0, ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %5, i1 noundef zeroext true) #10
end_hunk_0
