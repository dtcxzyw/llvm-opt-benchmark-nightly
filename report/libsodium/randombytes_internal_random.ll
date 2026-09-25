Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/randombytes_internal_random?download=true
inline.NumInlined: 12
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@randombytes_internal_random_stir:bb.a
  %1 = alloca %struct.stat, align 8               ; 5 uses
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #8
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %sodium_hrtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @sodium_misuse() #13
  unreachable

sodium_hrtime.exit:                               ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8
  %i.d = mul i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.d, %i.f                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stream) ; 5 uses
  %i.i = getelementptr i8, ptr %i.h, i64 560
  store i64 %i.g, ptr %i.i, align 8
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %sodium_hrtime.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 408, ptr noundef nonnull @__PRETTY_FUNCTION__.randombytes_internal_random_stir) #13
  unreachable

bb.d:                                             ; preds = %sodium_hrtime.exit
  %i.j = getelementptr i8, ptr %i.h, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.j, i8 noundef 0, i64 noundef 512, i1 noundef false) #8
  %i.k = getelementptr i8, ptr %i.h, i64 8
  store i64 0, ptr %i.k, align 8
  %.b = load i1, ptr @global.0, align 4
  br i1 %.b, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @__errno_location() #14    ; 7 uses
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = tail call i32 @sodium_runtime_has_rdrand() #8
  store i32 %i.n, ptr @global.4, align 4
  store i1 false, ptr @global.2, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.o = call i32 @getentropy(ptr noundef nonnull %i.a, i64 noundef 16) #8
  %.not.i.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.not.i.i, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  store i1 true, ptr @global.2, align 4
  store i32 %i.m, ptr %i.l, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %randombytes_internal_random_init.exit

.critedge.i:                                      ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.b.i = load i1, ptr @global.2, align 4
  br i1 %.b.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge.i
  call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 384, ptr noundef nonnull @__PRETTY_FUNCTION__.randombytes_internal_random_init) #13
  unreachable

bb.h:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #8
  %i.p = call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.7, i32 noundef 0) #8 ; 4 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %.critedge.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.p, ptr %0, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 1, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 0, ptr %i.s, align 2
  %i.t = call i32 @poll(ptr noundef nonnull %0, i64 noundef 1, i32 noundef -1) #8 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i.i, label %.critedge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.critedge2.backedge.i.i.i
  %i.v = load i32, ptr %i.l, align 4
  switch i32 %i.v, label %randombytes_block_on_dev_random.exit.thread.i.i [
    i32 4, label %.critedge2.backedge.i.i.i
    i32 11, label %.critedge2.backedge.i.i.i
  ]

.critedge2.backedge.i.i.i:                        ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.w = call i32 @poll(ptr noundef nonnull %0, i64 noundef 1, i32 noundef -1) #8 ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge2.backedge.i.i.i, %bb.i
  %.lcssa.i.i.i = phi i32 [ %i.t, %bb.i ], [ %i.w, %.critedge2.backedge.i.i.i ]
  %.not.i.i.i = icmp eq i32 %.lcssa.i.i.i, 1
  br i1 %.not.i.i.i, label %randombytes_block_on_dev_random.exit.i.i, label %randombytes_block_on_dev_random.exit.thread.i.i

randombytes_block_on_dev_random.exit.thread.i.i:  ; preds = %.lr.ph.i.i.i, %.critedge.i.i.i
  %i.y = call i32 @close(i32 noundef %i.p) #8     ; 0 uses
  store i32 5, ptr %i.l, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  br label %bb.r

randombytes_block_on_dev_random.exit.i.i:         ; preds = %.critedge.i.i.i
  %i.z = call i32 @close(i32 noundef %i.p) #8
  %i.aa = icmp eq i32 %i.z, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  br i1 %i.aa, label %.preheader.i.i, label %bb.r

.critedge.i.i:                                    ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i, %randombytes_block_on_dev_random.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %.preheader.i.i
  %i.ac = phi ptr [ %i.an, %bb.p ], [ @.str.6, %.preheader.i.i ] ; 2 uses
  %.0.i3.i = phi ptr [ %.1.i.i, %bb.p ], [ @randombytes_internal_random_random_dev_open.devices, %.preheader.i.i ] ; 2 uses
  %i.ad = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.ac, i32 noundef 0) #8 ; 5 uses
  %.not11.i.i = icmp eq i32 %i.ad, -1
  br i1 %.not11.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = call i32 @fstat(i32 noundef %i.ad, ptr noundef nonnull %1) #8
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = load i32, ptr %i.ab, align 8
  %i.ah = and i32 %i.ag, 61440
  %i.ai = icmp eq i32 %i.ah, 8192
  br i1 %i.ai, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aj = call i32 @close(i32 noundef %i.ad) #8   ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.ak = load i32, ptr %i.l, align 4
  %i.al = icmp eq i32 %i.ak, 4
  br i1 %i.al, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.am = getelementptr i8, ptr %.0.i3.i, i64 8   ; 2 uses
  %.pre19.i.i = load ptr, ptr %i.am, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.an = phi ptr [ %.pre19.i.i, %bb.o ], [ %i.ac, %bb.n ] ; 2 uses
  %.1.i.i = phi ptr [ %i.am, %bb.o ], [ %.0.i3.i, %bb.n ]
  %.not12.i.i = icmp eq ptr %i.an, null
  br i1 %.not12.i.i, label %bb.q, label %bb.j, !llvm.loop !4

bb.q:                                             ; preds = %bb.p
  store i32 5, ptr %i.l, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %randombytes_block_on_dev_random.exit.i.i, %randombytes_block_on_dev_random.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @sodium_misuse() #13
  unreachable

bb.s:                                             ; preds = %bb.l
  %i.ao = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.ad, i32 noundef 1) #8
  %i.ap = or i32 %i.ao, 1
  %i.aq = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.ad, i32 noundef 2, i32 noundef %i.ap) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  store i32 %i.m, ptr %i.l, align 4
  br label %randombytes_internal_random_init.exit

randombytes_internal_random_init.exit:            ; preds = %bb.f, %bb.s
  store i1 true, ptr @global.0, align 4
  br label %bb.t

bb.t:                                             ; preds = %randombytes_internal_random_init.exit, %bb.d
  %i.ar = call i32 @getpid() #8
  store i32 %i.ar, ptr @global.5, align 4
  %.b1 = load i1, ptr @global.2, align 4
  br i1 %.b1, label %_randombytes_getentropy.exit.i, label %randombytes_getentropy.exit.thread

_randombytes_getentropy.exit.i:                   ; preds = %bb.t
  %i.as = getelementptr i8, ptr %i.h, i64 16
  %i.at = call i32 @getentropy(ptr noundef %i.as, i64 noundef 32) #8
  %.not.i.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.not.i, label %randombytes_getentropy.exit.thread, label %randombytes_getentropy.exit

randombytes_getentropy.exit:                      ; preds = %_randombytes_getentropy.exit.i
  call void @sodium_misuse() #13
  unreachable

randombytes_getentropy.exit.thread:               ; preds = %_randombytes_getentropy.exit.i, %bb.t
  store i32 1, ptr %i.h, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @randombytes_internal_random_buf(ptr noundef %0, i64 noundef %1) #1 {
bb.a:
  %2 = insertelement <4 x i64> poison, i64 %1, i64 0
  %3 = shufflevector <4 x i64> %2, <4 x i64> poison, <4 x i32> zeroinitializer
  %4 = lshr <4 x i64> %3, <i64 32, i64 40, i64 48, i64 56>
  %.sroa.4.0.extract.shift = lshr i64 %1, 24
  %.sroa.3.0.extract.shift = lshr i64 %1, 16
  %.sroa.2.0.extract.shift = lshr i64 %1, 8
  %5 = insertelement <2 x i64> poison, i64 %1, i64 0
  %6 = insertelement <2 x i64> %5, i64 %.sroa.2.0.extract.shift, i64 1
  %7 = trunc <2 x i64> %6 to <2 x i8>
  %.sroa.3.0.extract.trunc = trunc i64 %.sroa.3.0.extract.shift to i8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  %8 = trunc <4 x i64> %4 to <4 x i8>
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stream) ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @randombytes_internal_random_stir()
  br label %randombytes_internal_random_stir_if_needed.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr @global.5, align 4
  %i.e = tail call i32 @getpid() #8
  %.not.i = icmp eq i32 %i.d, %i.e
  br i1 %.not.i, label %randombytes_internal_random_stir_if_needed.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @sodium_misuse() #13
  unreachable

randombytes_internal_random_stir_if_needed.exit:  ; preds = %bb.b, %bb.c
  %i.f = getelementptr i8, ptr %i.a, i64 560      ; 4 uses
  %i.g = getelementptr i8, ptr %i.a, i64 16       ; 6 uses
  %i.h = tail call i32 @crypto_stream_chacha20(ptr noundef %0, i64 noundef %1, ptr noundef %i.f, ptr noundef %i.g) #8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.preheader.preheader, label %bb.e

.preheader.preheader:                             ; preds = %randombytes_internal_random_stir_if_needed.exit
  %i.j = load <8 x i8>, ptr %i.g, align 8
  %9 = shufflevector <2 x i8> %7, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %10 = insertelement <8 x i8> %9, i8 %.sroa.3.0.extract.trunc, i64 2
  %11 = insertelement <8 x i8> %10, i8 %.sroa.4.0.extract.trunc, i64 3
  %12 = shufflevector <4 x i8> %8, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = shufflevector <8 x i8> %11, <8 x i8> %12, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.k = xor <8 x i8> %i.j, %13
  store <8 x i8> %i.k, ptr %i.g, align 8
  %i.l = load i32, ptr @global.4, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %randombytes_internal_random_xorhwrand.exit, label %bb.f

bb.e:                                             ; preds = %randombytes_internal_random_stir_if_needed.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 582, ptr noundef nonnull @__PRETTY_FUNCTION__.randombytes_internal_random_buf) #13
  unreachable

bb.f:                                             ; preds = %.preheader.preheader
  %i.n = tail call { i32, i32 } @llvm.x86.rdrand.32()
  %i.o = extractvalue { i32, i32 } %i.n, 0
  %i.p = getelementptr i8, ptr %i.a, i64 44       ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = xor i32 %i.q, %i.o
  store i32 %i.r, ptr %i.p, align 4
  br label %randombytes_internal_random_xorhwrand.exit

randombytes_internal_random_xorhwrand.exit:       ; preds = %.preheader.preheader, %bb.f
  %i.s = load i64, ptr %i.f, align 8
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.f, align 8
  %i.u = tail call i32 @crypto_stream_chacha20_xor(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, i64 noundef 32, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #8 ; 0 uses
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal range(i32 -1, 1) i32 @randombytes_internal_random_close() #1 {
bb.a:
  %.b = load i1, ptr @global.2, align 4
  %not..b = xor i1 %.b, true
  %spec.store.select = sext i1 %not..b to i32
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stream)
  tail call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 568) #8
  ret i32 %spec.store.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #3

declare i32 @crypto_stream_chacha20(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @sodium_misuse() local_unnamed_addr #7

; Function Attrs: nounwind
declare { i32, i32 } @llvm.x86.rdrand.32() #8

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

declare extern_weak i32 @sodium_runtime_has_rdrand() local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #9

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #4

declare i32 @close(i32 noundef) local_unnamed_addr #4

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @getentropy(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @crypto_stream_chacha20_xor(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @sodium_memzero(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
end_hunk_0
