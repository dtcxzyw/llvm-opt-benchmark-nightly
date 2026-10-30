Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/dyldcachedump.dyldcachedump.1215264e1f4e5699-cgu.1?download=true
inline.NumInlined: 155
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [39 x i8] c"memory map offset is larger than length", align 1
@1 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCs1yfHPQhS7hZ_13dyldcachedump, ptr @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs1yfHPQhS7hZ_13dyldcachedump, ptr @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs1yfHPQhS7hZ_13dyldcachedump }>, align 8
@2 = private unnamed_addr constant [4 x i8] c"\01.\C0\00", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions3mapRNtNtCsG258MDvU3F_3std2fs4FileECs1yfHPQhS7hZ_13dyldcachedump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.val.i = load i32, ptr %2, align 4, !range !12, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %i.b = load i64, ptr %1, align 8, !range !6, !alias.scope !13, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !13, !noundef !5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call { i64, ptr } @_RNvNtCsgQ7e0lqRvgo_7memmap22os8file_len(i32 noundef %.val.i), !noalias !13 ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = trunc nuw i64 %i.g to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.g, %bb.b
  %.sroa.01.0.i = phi i64 [ %i.e, %bb.b ], [ %i.p, %bb.g ]
  %i.k = tail call { i64, ptr } @_RNvMs0_CsgQ7e0lqRvgo_7memmap2NtB5_11MmapOptions12validate_len(i64 noundef %.sroa.01.0.i), !noalias !13 ; 2 uses
  %3 = extractvalue { i64, ptr } %i.k, 1
  br label %_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsG258MDvU3F_3std2fs4FileECs1yfHPQhS7hZ_13dyldcachedump.exit

bb.e:                                             ; preds = %bb.c
  %i.l = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.h, 1
  br label %_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsG258MDvU3F_3std2fs4FileECs1yfHPQhS7hZ_13dyldcachedump.exit

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !13, !noundef !5 ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.i
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = sub nuw i64 %i.i, %i.n
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 39) #14, !noalias !13 ; 2 uses
  %i.r = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.q, 1
  br label %_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsG258MDvU3F_3std2fs4FileECs1yfHPQhS7hZ_13dyldcachedump.exit

_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsG258MDvU3F_3std2fs4FileECs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %bb.d, %bb.e, %bb.h
  %.merged.i = phi ptr [ %3, %bb.d ], [ %i.h, %bb.e ], [ %i.q, %bb.h ] ; 2 uses
  %.merged.i.a = phi { i64, ptr } [ %i.k, %bb.d ], [ %i.l, %bb.e ], [ %i.r, %bb.h ]
  %i.s = extractvalue { i64, ptr } %.merged.i.a, 0
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsG258MDvU3F_3std2fs4FileECs1yfHPQhS7hZ_13dyldcachedump.exit
  %i.u = ptrtoint ptr %.merged.i to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.y = load i8, ptr %i.x, align 1, !range !7, !noundef !5
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ab = load i8, ptr %i.aa, align 4, !range !7, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1
  call void @_RNvMNtCsgQ7e0lqRvgo_7memmap22osNtB2_9MmapInner3map(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.u, i32 noundef %.val.i, i64 noundef %i.w, i1 noundef zeroext %i.z, i1 noundef zeroext %i.ac)
  %i.ad = load i64, ptr %i.a, align 8, !range !6, !noundef !5
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noundef !5 ; 2 uses
  br i1 %i.ae, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %i.aj, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsG258MDvU3F_3std2fs4FileECs1yfHPQhS7hZ_13dyldcachedump.exit
  %.sink = phi ptr [ %.merged.i, %_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsG258MDvU3F_3std2fs4FileECs1yfHPQhS7hZ_13dyldcachedump.exit ], [ %i.ag, %bb.i ], [ %i.ag, %bb.j ]
  %storemerge.sink = phi i64 [ 1, %_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsG258MDvU3F_3std2fs4FileECs1yfHPQhS7hZ_13dyldcachedump.exit ], [ 1, %bb.i ], [ 0, %bb.j ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ak, align 8
  store i64 %storemerge.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCsG258MDvU3F_3std2fsNtB6_4File4openRNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i128 18446745954905227264, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !noundef !5
  call void @_RNvMsj_NtCsG258MDvU3F_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsG258MDvU3F_3std2rt10lang_startuECs1yfHPQhS7hZ_13dyldcachedump(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1, i64 noundef %1, ptr noundef %2, i8 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !16, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !16, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i unwind label %bb.b, !noalias !16

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i: ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i.i2, 1       ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i unwind label %bb.c, !noalias !16

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !16
  unreachable

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i, %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs1yfHPQhS7hZ_13dyldcachedump.exit unwind label %bb.d

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBI_6string6StringNtCsgQ7e0lqRvgo_7memmap24MmapEECs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19
  %i.b = load ptr, ptr %0, align 8, !alias.scope !19, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !19, !noundef !5
  store i64 %i.d, ptr %i.a, align 8, !noalias !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8, !noalias !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !19, !noundef !5 ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtB9_6string6StringNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i: ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %i.g
  br i1 %i.i, label %_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtB9_6string6StringNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.k = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i unwind label %bb.b, !noalias !19

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i: ; preds = %.lr.ph3
  %i.l = add nuw nsw i64 %.sroa.0.1.i.i2, 1       ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.g
  br i1 %i.m, label %.body.i, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %i.g
  br i1 %i.o, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i unwind label %bb.c, !noalias !19

bb.c:                                             ; preds = %.lr.ph3
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !19
  unreachable

.body.i:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i, %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs1yfHPQhS7hZ_13dyldcachedump.exit.i unwind label %bb.d, !noalias !19

bb.d:                                             ; preds = %.body.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs1yfHPQhS7hZ_13dyldcachedump.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.n

_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtB9_6string6StringNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i, %bb.a
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs1yfHPQhS7hZ_13dyldcachedump(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  tail call void %0(), !inline_history !20
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1d_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0ENtCsgQ7e0lqRvgo_7memmap24MmapINtNtB6_6result6ResultzuENCINvXso_B3r_IB3p_INtB1b_3VecB2V_EuEINtNtNtB4_6traits7collect12FromIteratorIB3p_B2V_uEE9from_iterBQ_E0B45_EB2l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 12 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [1 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 0, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !55, !noalias !56
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx6, align 8, !alias.scope !55, !noalias !56
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !61, !noalias !54, !noundef !5 ; 2 uses
end_hunk_0
