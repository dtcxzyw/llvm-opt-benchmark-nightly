Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/dyldcachedump.dyldcachedump.1215264e1f4e5699-cgu.1?download=true
inline.NumInlined: 155
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions3mapRNtNtCsG258MDvU3F_3std2fs4FileECs1yfHPQhS7hZ_13dyldcachedump:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noundef !6 ; 2 uses
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !6
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aj, ptr %i.ak, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsG258MDvU3F_3std2fs4FileECs1yfHPQhS7hZ_13dyldcachedump.exit
  %.sink = phi ptr [ %i.t, %_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsG258MDvU3F_3std2fs4FileECs1yfHPQhS7hZ_13dyldcachedump.exit ], [ %i.ah, %bb.i ], [ %i.ah, %bb.j ]
  %storemerge.sink = phi i64 [ 1, %_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsG258MDvU3F_3std2fs4FileECs1yfHPQhS7hZ_13dyldcachedump.exit ], [ 1, %bb.i ], [ 0, %bb.j ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.al, align 8
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
  %.val.i = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !noundef !6
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !12, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !12, !noundef !6 ; 4 uses
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
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i unwind label %bb.b, !noalias !12

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
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
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i unwind label %bb.c, !noalias !12

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !12
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15
  %i.b = load ptr, ptr %0, align 8, !alias.scope !15, !nonnull !6, !noundef !6 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !15, !noundef !6
  store i64 %i.d, ptr %i.a, align 8, !noalias !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8, !noalias !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !15, !noundef !6 ; 4 uses
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
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i unwind label %bb.b, !noalias !15

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i: ; preds = %.lr.ph3
  %i.l = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
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
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i unwind label %bb.c, !noalias !15

bb.c:                                             ; preds = %.lr.ph3
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !15
  unreachable

.body.i:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i, %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs1yfHPQhS7hZ_13dyldcachedump.exit.i unwind label %bb.d, !noalias !15

bb.d:                                             ; preds = %.body.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs1yfHPQhS7hZ_13dyldcachedump.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.n

_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtB9_6string6StringNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i, %bb.a
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs1yfHPQhS7hZ_13dyldcachedump(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  tail call void %0(), !inline_history !18
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !29, !noalias !33
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx6, align 8, !alias.scope !29, !noalias !33
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !44, !noalias !45, !noundef !6 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !44, !noalias !45, !nonnull !6, !noundef !6 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !44, !noalias !45, !noundef !6
  %i.m = mul i64 %i.i, 24                         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46
  store ptr %i.l, ptr %i.c, align 8, !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.c, ptr %i.a, align 8, !noalias !52
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.o, align 8, !noalias !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.p, align 8, !noalias !52
  invoke void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtCsgQ7e0lqRvgo_7memmap24MmapENCINvNtNtB1p_8adapters3map12map_try_foldBX_INtNtB1r_6result6ResultB2X_uEB2n_INtNtNtB1r_3ops12control_flow11ControlFlowIB49_B2n_zEB2n_ENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0NCINvXB3y_INtB3y_12GenericShuntINtB3w_3MapBI_B5B_EIB49_zuEEB1j_8try_foldB2n_NCINvNtB8_16in_place_collect24write_in_place_with_dropB2X_E0B5l_E0E0B4F_EB5F_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull %i.j, ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !noalias !45

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.q, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %common.resume unwind label %bb.l, !noalias !45

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !49 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 4                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58
  store ptr %i.j, ptr %i.d, align 8, !noalias !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.w, ptr %i.x, align 8, !noalias !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.i, ptr %i.y, align 8, !noalias !58
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE32forget_allocation_drop_remainingCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %bb.f unwind label %bb.e, !noalias !45

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBI_6string6StringNtCsgQ7e0lqRvgo_7memmap24MmapEECs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #17
          to label %bb.b unwind label %bb.l, !noalias !45

bb.f:                                             ; preds = %bb.d
  %i.aa = and i64 %i.m, 8
  %.not.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i, label %_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB1X_8adapters3map3MapINtNtBQ_9into_iter8IntoIterNtNtBS_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EE0B4e_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = and i64 %i.m, -16                       ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.m, i64 noundef 8) #16, !noalias !45
  br label %_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB1X_8adapters3map3MapINtNtBQ_9into_iter8IntoIterNtNtBS_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EE0B4e_.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.j, i64 noundef %i.m, i64 noundef 8, i64 noundef range(i64 0, -15) %i.ab) #16, !noalias !45 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB1X_8adapters3map3MapINtNtBQ_9into_iter8IntoIterNtNtBS_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EE0B4e_.exit, !prof !59

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ab) #18
          to label %bb.k unwind label %bb.e, !noalias !45

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.e, %bb.b
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !45
  unreachable

common.resume:                                    ; preds = %.body.i, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.b ], [ %i.as, %.body.i ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB1X_8adapters3map3MapINtNtBQ_9into_iter8IntoIterNtNtBS_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EE0B4e_.exit: ; preds = %bb.f, %bb.h, %bb.i
  %i.ag = phi ptr [ %i.j, %bb.f ], [ %i.ad, %bb.i ], [ inttoptr (i64 8 to ptr), %bb.h ] ; 3 uses
  %i.ah = lshr i64 %i.m, 4
  store i64 %i.ah, ptr %i.f, align 8, !alias.scope !60, !noalias !61
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ag, ptr %i.ai, align 8, !alias.scope !60, !noalias !61
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.w, ptr %i.aj, align 8, !alias.scope !60, !noalias !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !58
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e), !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26
  %i.ak = load i8, ptr %i.g, align 1, !range !11, !noundef !6
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB1X_8adapters3map3MapINtNtBQ_9into_iter8IntoIterNtNtBS_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EE0B4e_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEECs1yfHPQhS7hZ_13dyldcachedump.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.o:                                             ; preds = %_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB1X_8adapters3map3MapINtNtBQ_9into_iter8IntoIterNtNtBS_6string6StringENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0EE0B4e_.exit
  store i64 -1, ptr %0, align 8, !alias.scope !62
  %i.am = icmp eq ptr %i.s, %i.j
  br i1 %i.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i: ; preds = %.lr.ph
  %i.an = icmp eq i64 %i.ap, %i.w
  br i1 %i.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i
  %.sroa.0.0.i.i.i9 = phi i64 [ %i.ap, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i ], [ 0, %bb.o ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.sroa.0.0.i.i.i9
  %i.ap = add nuw nsw i64 %.sroa.0.0.i.i.i9, 1    ; 4 uses
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i unwind label %bb.p, !noalias !65

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i.i: ; preds = %.lr.ph11
  %i.aq = add i64 %.sroa.0.1.i.i.i10, 1           ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.w
  br i1 %i.ar, label %.body.i, label %.lr.ph11

bb.p:                                             ; preds = %.lr.ph
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = icmp eq i64 %i.ap, %i.w
  br i1 %i.at, label %.body.i, label %.lr.ph11

.lr.ph11:                                         ; preds = %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i.i
  %.sroa.0.1.i.i.i10 = phi i64 [ %i.aq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i.i ], [ %i.ap, %bb.p ] ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.sroa.0.1.i.i.i10
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i.i unwind label %bb.q, !noalias !65

bb.q:                                             ; preds = %.lr.ph11
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !65
  unreachable

.body.i:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i.i.i, %bb.p
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %.body.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEECs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i, %bb.o
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho18DyldCacheImageInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i64 %3, 576460752303423487
  br i1 %i.a, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho18DyldCacheImageInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho18DyldCacheImageInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = shl nuw i64 %3, 5
  %i.d = icmp ult i64 %1, %2
  %i.e = sub nuw nsw i64 %1, %2
  %.not.i.i.i = icmp ugt i64 %i.c, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %or.cond.i.i = select i1 %i.d, i1 true, i1 %.not.i.i.i
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %i.f
  br label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho18DyldCacheImageInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit

_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho18DyldCacheImageInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %3, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho19DyldSubCacheEntryV1NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 24) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho19DyldSubCacheEntryV1NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho19DyldSubCacheEntryV1NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i64 %1, %2
  %i.f = sub nuw nsw i64 %1, %2
  %.not.i.i.i = icmp ugt i64 %i.c, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %or.cond.i.i = select i1 %i.e, i1 true, i1 %.not.i.i.i
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %i.g
  br label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho19DyldSubCacheEntryV1NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit

_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho19DyldSubCacheEntryV1NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %3, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho19DyldSubCacheEntryV2NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 56) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho19DyldSubCacheEntryV2NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho19DyldSubCacheEntryV2NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i64 %1, %2
  %i.f = sub nuw nsw i64 %1, %2
  %.not.i.i.i = icmp ugt i64 %i.c, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %or.cond.i.i = select i1 %i.e, i1 true, i1 %.not.i.i.i
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %i.g
  br label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho19DyldSubCacheEntryV2NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit

_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho19DyldSubCacheEntryV2NtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %3, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho20DyldCacheMappingInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i64 %3, 576460752303423487
  br i1 %i.a, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho20DyldCacheMappingInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho20DyldCacheMappingInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = shl nuw i64 %3, 5
  %i.d = icmp ult i64 %1, %2
  %i.e = sub nuw nsw i64 %1, %2
  %.not.i.i.i = icmp ugt i64 %i.c, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %or.cond.i.i = select i1 %i.d, i1 true, i1 %.not.i.i.i
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %i.f
  br label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho20DyldCacheMappingInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit

_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho20DyldCacheMappingInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %3, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef13read_slice_atINtNtBc_5macho28DyldCacheMappingAndSlideInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 56) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho28DyldCacheMappingAndSlideInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho28DyldCacheMappingAndSlideInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i64 %1, %2
  %i.f = sub nuw nsw i64 %1, %2
  %.not.i.i.i = icmp ugt i64 %i.c, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %or.cond.i.i = select i1 %i.e, i1 true, i1 %.not.i.i.i
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %i.g
  br label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho28DyldCacheMappingAndSlideInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit

_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceINtNtBc_5macho28DyldCacheMappingAndSlideInfoNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %3, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef7read_atINtNtBc_5macho15DyldCacheHeaderNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull readonly captures(ret: address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #2 {
_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readINtNtBc_5macho15DyldCacheHeaderNtNtBc_6endian10EndiannessEECs1yfHPQhS7hZ_13dyldcachedump.exit:
  %i.a = icmp ult i64 %1, %2
  %i.b = sub nuw nsw i64 %1, %2
  %.not.i.i.i = icmp samesign ult i64 %i.b, 552
  %or.cond.i.i = select i1 %i.a, i1 true, i1 %.not.i.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %i.c
  ret ptr %spec.select
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs1yfHPQhS7hZ_13dyldcachedump(ptr noundef nonnull %i.a) #14
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCs1yfHPQhS7hZ_13dyldcachedump(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs1yfHPQhS7hZ_13dyldcachedump(ptr noundef nonnull readonly %i.a) #14, !noalias !71
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 1152921504606846976) i64 @_RNvMNtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtCsgQ7e0lqRvgo_7memmap24MmapE3lenCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !6
  %i.c = load ptr, ptr %0, align 8, !noundef !6
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4
  ret i64 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB2Z_9DyldCache17subcache_suffixes0EE9from_iterCs1yfHPQhS7hZ_13dyldcachedump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !74
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !74
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !74
  %i.f = load i64, ptr %i.d, align 8, !range !10, !noalias !74, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !77, !noalias !74, !noundef !6 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !74
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #18, !noalias !74
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !74, !nonnull !6, !noundef !6 ; 2 uses
  %i.m = icmp ule i64 %spec.select.i.i.i, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !74
  store i64 %i.i, ptr %i.e, align 8, !noalias !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.l, ptr %i.n, align 8, !noalias !74
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.p = icmp ult i64 %1, %2
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB3f_9DyldCache17subcache_suffixes0EE9from_iterCs1yfHPQhS7hZ_13dyldcachedump.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1D_9DyldCache17subcache_suffixes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0Cs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.s, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1D_9DyldCache17subcache_suffixes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0Cs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.010.i.i.i.i.i.i = phi i64 [ %1, %.lr.ph.i.i.i.i.i.i ], [ %i.q, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1D_9DyldCache17subcache_suffixes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0Cs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !84
  store i64 %.sroa.0.010.i.i.i.i.i.i, ptr %i.b, align 8, !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93
  store ptr %i.b, ptr %i.a, align 8, !noalias !93
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !93
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @2, ptr noundef nonnull %i.a)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1D_9DyldCache17subcache_suffixes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0Cs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i.i.i.i unwind label %.body.i, !noalias !96

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1D_9DyldCache17subcache_suffixes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0Cs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.q = add i64 %.sroa.0.010.i.i.i.i.i.i, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !84
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.val4.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !97
  %i.s = add nuw i64 %.val4.i.i.i.i.i.i, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !84
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.q, %2
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB3f_9DyldCache17subcache_suffixes0EE9from_iterCs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.c

.body.i:                                          ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  store i64 %.val4.i.i.i.i.i.i, ptr %i.o, align 8, !alias.scope !102, !noalias !96
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #17
          to label %bb.e unwind label %bb.d, !noalias !74

bb.d:                                             ; preds = %.body.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !74
  unreachable

bb.e:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.t

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_3ops5range5RangejENCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB3f_9DyldCache17subcache_suffixes0EE9from_iterCs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1D_9DyldCache17subcache_suffixes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0Cs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i.i.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i
  %.val6.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i ], [ %i.s, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1D_9DyldCache17subcache_suffixes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtBZ_3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0Cs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i.i.i.i ]
  store i64 %.val6.i.i.i.i.i.i, ptr %i.o, align 8, !alias.scope !102, !noalias !96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !74
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB2X_6endian10EndiannessEENCNvMNtNtNtB2X_4read5macho10dyld_cacheNtB4h_9DyldCache17subcache_suffixess_0EE9from_iterCs1yfHPQhS7hZ_13dyldcachedump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 1                ; 36 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !103
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.f = ptrtoint ptr %2 to i64
  %i.g = ptrtoint ptr %1 to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 56                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !103
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !103
  %i.j = load i64, ptr %i.d, align 8, !range !10, !noalias !103, !noundef !6
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !77, !noalias !103, !noundef !6 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8, !noalias !103
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #18, !noalias !103
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !noalias !103, !nonnull !6, !noundef !6 ; 2 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !103
  store i64 %i.m, ptr %i.e, align 8, !noalias !103
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.p, ptr %i.r, align 8, !noalias !103
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.t = icmp eq ptr %1, %2
  br i1 %i.t, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB3d_6endian10EndiannessEENCNvMNtNtNtB3d_4read5macho10dyld_cacheNtB4x_9DyldCache17subcache_suffixess_0EE9from_iterCs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i
  %.ptr.1.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.ptr.2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.ptr.3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %.ptr.4.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.ptr.5.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %.ptr.6.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %.ptr.7.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %.ptr.8.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.ptr.9.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %.ptr.10.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %.ptr.11.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %.ptr.12.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.ptr.13.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %.ptr.14.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %.ptr.15.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %.ptr.16.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.ptr.17.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.ptr.18.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %.ptr.19.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  %.ptr.20.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.ptr.21.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  %.ptr.22.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  %.ptr.23.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  %.ptr.24.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.ptr.25.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  %.ptr.26.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %.ptr.27.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 27
  %.ptr.28.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.ptr.29.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 29
  %.ptr.30.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 30
  %.ptr.31.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 31
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.l, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.e:                                             ; preds = %bb.p, %bb.c
  %.val10.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.bv, %bb.p ] ; 4 uses
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %.val10.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !112
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.aa, i64 32, i1 false), !noalias !125
  %.val.i.i.i.i.i.i.i.i.i = load i8, ptr %i.c, align 1, !noalias !126, !noundef !6
  %i.ab = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.1.i.i.i.i.i.i.i.i

.lr.ph.i.1.i.i.i.i.i.i.i.i:                       ; preds = %bb.e
  %.val.i.1.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.1.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.ac = icmp eq i8 %.val.i.1.i.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.2.i.i.i.i.i.i.i.i

.lr.ph.i.2.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.1.i.i.i.i.i.i.i.i
  %.val.i.2.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.2.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.ad = icmp eq i8 %.val.i.2.i.i.i.i.i.i.i.i, 0
  br i1 %i.ad, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.3.i.i.i.i.i.i.i.i

.lr.ph.i.3.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.2.i.i.i.i.i.i.i.i
  %.val.i.3.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.3.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.ae = icmp eq i8 %.val.i.3.i.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.4.i.i.i.i.i.i.i.i

.lr.ph.i.4.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.3.i.i.i.i.i.i.i.i
  %.val.i.4.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.4.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.af = icmp eq i8 %.val.i.4.i.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.5.i.i.i.i.i.i.i.i

.lr.ph.i.5.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.4.i.i.i.i.i.i.i.i
  %.val.i.5.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.5.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.ag = icmp eq i8 %.val.i.5.i.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.6.i.i.i.i.i.i.i.i

.lr.ph.i.6.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.5.i.i.i.i.i.i.i.i
  %.val.i.6.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.6.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.ah = icmp eq i8 %.val.i.6.i.i.i.i.i.i.i.i, 0
  br i1 %i.ah, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.7.i.i.i.i.i.i.i.i

.lr.ph.i.7.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.6.i.i.i.i.i.i.i.i
  %.val.i.7.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.7.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.ai = icmp eq i8 %.val.i.7.i.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.8.i.i.i.i.i.i.i.i

.lr.ph.i.8.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.7.i.i.i.i.i.i.i.i
  %.val.i.8.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.8.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.aj = icmp eq i8 %.val.i.8.i.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.9.i.i.i.i.i.i.i.i

.lr.ph.i.9.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.8.i.i.i.i.i.i.i.i
  %.val.i.9.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.9.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.ak = icmp eq i8 %.val.i.9.i.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.10.i.i.i.i.i.i.i.i

.lr.ph.i.10.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.9.i.i.i.i.i.i.i.i
  %.val.i.10.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.10.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.al = icmp eq i8 %.val.i.10.i.i.i.i.i.i.i.i, 0
  br i1 %i.al, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.11.i.i.i.i.i.i.i.i

.lr.ph.i.11.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.10.i.i.i.i.i.i.i.i
  %.val.i.11.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.11.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.am = icmp eq i8 %.val.i.11.i.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.12.i.i.i.i.i.i.i.i

.lr.ph.i.12.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.11.i.i.i.i.i.i.i.i
  %.val.i.12.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.12.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.an = icmp eq i8 %.val.i.12.i.i.i.i.i.i.i.i, 0
  br i1 %i.an, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.13.i.i.i.i.i.i.i.i

.lr.ph.i.13.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.12.i.i.i.i.i.i.i.i
  %.val.i.13.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.13.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.ao = icmp eq i8 %.val.i.13.i.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.14.i.i.i.i.i.i.i.i

.lr.ph.i.14.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.13.i.i.i.i.i.i.i.i
  %.val.i.14.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.14.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.ap = icmp eq i8 %.val.i.14.i.i.i.i.i.i.i.i, 0
  br i1 %i.ap, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.15.i.i.i.i.i.i.i.i

.lr.ph.i.15.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.14.i.i.i.i.i.i.i.i
  %.val.i.15.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.15.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.aq = icmp eq i8 %.val.i.15.i.i.i.i.i.i.i.i, 0
  br i1 %i.aq, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.16.i.i.i.i.i.i.i.i

.lr.ph.i.16.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.15.i.i.i.i.i.i.i.i
  %.val.i.16.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.16.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.ar = icmp eq i8 %.val.i.16.i.i.i.i.i.i.i.i, 0
  br i1 %i.ar, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.17.i.i.i.i.i.i.i.i

.lr.ph.i.17.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.16.i.i.i.i.i.i.i.i
  %.val.i.17.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.17.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.as = icmp eq i8 %.val.i.17.i.i.i.i.i.i.i.i, 0
  br i1 %i.as, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.18.i.i.i.i.i.i.i.i

.lr.ph.i.18.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.17.i.i.i.i.i.i.i.i
  %.val.i.18.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.18.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.at = icmp eq i8 %.val.i.18.i.i.i.i.i.i.i.i, 0
  br i1 %i.at, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.19.i.i.i.i.i.i.i.i

.lr.ph.i.19.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.18.i.i.i.i.i.i.i.i
  %.val.i.19.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.19.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.au = icmp eq i8 %.val.i.19.i.i.i.i.i.i.i.i, 0
  br i1 %i.au, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.20.i.i.i.i.i.i.i.i

.lr.ph.i.20.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.19.i.i.i.i.i.i.i.i
  %.val.i.20.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.20.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.av = icmp eq i8 %.val.i.20.i.i.i.i.i.i.i.i, 0
  br i1 %i.av, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.21.i.i.i.i.i.i.i.i

.lr.ph.i.21.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.20.i.i.i.i.i.i.i.i
  %.val.i.21.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.21.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.aw = icmp eq i8 %.val.i.21.i.i.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.22.i.i.i.i.i.i.i.i

.lr.ph.i.22.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.21.i.i.i.i.i.i.i.i
  %.val.i.22.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.22.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.ax = icmp eq i8 %.val.i.22.i.i.i.i.i.i.i.i, 0
  br i1 %i.ax, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.23.i.i.i.i.i.i.i.i

.lr.ph.i.23.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.22.i.i.i.i.i.i.i.i
  %.val.i.23.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.23.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.ay = icmp eq i8 %.val.i.23.i.i.i.i.i.i.i.i, 0
  br i1 %i.ay, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.24.i.i.i.i.i.i.i.i

.lr.ph.i.24.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.23.i.i.i.i.i.i.i.i
  %.val.i.24.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.24.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.az = icmp eq i8 %.val.i.24.i.i.i.i.i.i.i.i, 0
  br i1 %i.az, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.25.i.i.i.i.i.i.i.i

.lr.ph.i.25.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.24.i.i.i.i.i.i.i.i
  %.val.i.25.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.25.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.ba = icmp eq i8 %.val.i.25.i.i.i.i.i.i.i.i, 0
  br i1 %i.ba, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.26.i.i.i.i.i.i.i.i

.lr.ph.i.26.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.25.i.i.i.i.i.i.i.i
  %.val.i.26.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.26.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.bb = icmp eq i8 %.val.i.26.i.i.i.i.i.i.i.i, 0
  br i1 %i.bb, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.27.i.i.i.i.i.i.i.i

.lr.ph.i.27.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.26.i.i.i.i.i.i.i.i
  %.val.i.27.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.27.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.bc = icmp eq i8 %.val.i.27.i.i.i.i.i.i.i.i, 0
  br i1 %i.bc, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.28.i.i.i.i.i.i.i.i

.lr.ph.i.28.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.27.i.i.i.i.i.i.i.i
  %.val.i.28.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.28.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.bd = icmp eq i8 %.val.i.28.i.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.29.i.i.i.i.i.i.i.i

.lr.ph.i.29.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.28.i.i.i.i.i.i.i.i
  %.val.i.29.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.29.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.be = icmp eq i8 %.val.i.29.i.i.i.i.i.i.i.i, 0
  br i1 %i.be, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.30.i.i.i.i.i.i.i.i

.lr.ph.i.30.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.29.i.i.i.i.i.i.i.i
  %.val.i.30.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.30.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.bf = icmp eq i8 %.val.i.30.i.i.i.i.i.i.i.i, 0
  br i1 %i.bf, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.31.i.i.i.i.i.i.i.i

.lr.ph.i.31.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.30.i.i.i.i.i.i.i.i
  %.val.i.31.i.i.i.i.i.i.i.i = load i8, ptr %.ptr.31.i.i.i.i.i.i.i.i, align 1, !noalias !126, !noundef !6
  %i.bg = icmp eq i8 %.val.i.31.i.i.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.bg, i64 31, i64 32
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.31.i.i.i.i.i.i.i.i, %.lr.ph.i.30.i.i.i.i.i.i.i.i, %.lr.ph.i.29.i.i.i.i.i.i.i.i, %.lr.ph.i.28.i.i.i.i.i.i.i.i, %.lr.ph.i.27.i.i.i.i.i.i.i.i, %.lr.ph.i.26.i.i.i.i.i.i.i.i, %.lr.ph.i.25.i.i.i.i.i.i.i.i, %.lr.ph.i.24.i.i.i.i.i.i.i.i, %.lr.ph.i.23.i.i.i.i.i.i.i.i, %.lr.ph.i.22.i.i.i.i.i.i.i.i, %.lr.ph.i.21.i.i.i.i.i.i.i.i, %.lr.ph.i.20.i.i.i.i.i.i.i.i, %.lr.ph.i.19.i.i.i.i.i.i.i.i, %.lr.ph.i.18.i.i.i.i.i.i.i.i, %.lr.ph.i.17.i.i.i.i.i.i.i.i, %.lr.ph.i.16.i.i.i.i.i.i.i.i, %.lr.ph.i.15.i.i.i.i.i.i.i.i, %.lr.ph.i.14.i.i.i.i.i.i.i.i, %.lr.ph.i.13.i.i.i.i.i.i.i.i, %.lr.ph.i.12.i.i.i.i.i.i.i.i, %.lr.ph.i.11.i.i.i.i.i.i.i.i, %.lr.ph.i.10.i.i.i.i.i.i.i.i, %.lr.ph.i.9.i.i.i.i.i.i.i.i, %.lr.ph.i.8.i.i.i.i.i.i.i.i, %.lr.ph.i.7.i.i.i.i.i.i.i.i, %.lr.ph.i.6.i.i.i.i.i.i.i.i, %.lr.ph.i.5.i.i.i.i.i.i.i.i, %.lr.ph.i.4.i.i.i.i.i.i.i.i, %.lr.ph.i.3.i.i.i.i.i.i.i.i, %.lr.ph.i.2.i.i.i.i.i.i.i.i, %.lr.ph.i.1.i.i.i.i.i.i.i.i, %bb.e
  %.sroa.0.04.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i, %.lr.ph.i.31.i.i.i.i.i.i.i.i ], [ 0, %bb.e ], [ 1, %.lr.ph.i.1.i.i.i.i.i.i.i.i ], [ 2, %.lr.ph.i.2.i.i.i.i.i.i.i.i ], [ 3, %.lr.ph.i.3.i.i.i.i.i.i.i.i ], [ 4, %.lr.ph.i.4.i.i.i.i.i.i.i.i ], [ 5, %.lr.ph.i.5.i.i.i.i.i.i.i.i ], [ 6, %.lr.ph.i.6.i.i.i.i.i.i.i.i ], [ 7, %.lr.ph.i.7.i.i.i.i.i.i.i.i ], [ 8, %.lr.ph.i.8.i.i.i.i.i.i.i.i ], [ 9, %.lr.ph.i.9.i.i.i.i.i.i.i.i ], [ 10, %.lr.ph.i.10.i.i.i.i.i.i.i.i ], [ 11, %.lr.ph.i.11.i.i.i.i.i.i.i.i ], [ 12, %.lr.ph.i.12.i.i.i.i.i.i.i.i ], [ 13, %.lr.ph.i.13.i.i.i.i.i.i.i.i ], [ 14, %.lr.ph.i.14.i.i.i.i.i.i.i.i ], [ 15, %.lr.ph.i.15.i.i.i.i.i.i.i.i ], [ 16, %.lr.ph.i.16.i.i.i.i.i.i.i.i ], [ 17, %.lr.ph.i.17.i.i.i.i.i.i.i.i ], [ 18, %.lr.ph.i.18.i.i.i.i.i.i.i.i ], [ 19, %.lr.ph.i.19.i.i.i.i.i.i.i.i ], [ 20, %.lr.ph.i.20.i.i.i.i.i.i.i.i ], [ 21, %.lr.ph.i.21.i.i.i.i.i.i.i.i ], [ 22, %.lr.ph.i.22.i.i.i.i.i.i.i.i ], [ 23, %.lr.ph.i.23.i.i.i.i.i.i.i.i ], [ 24, %.lr.ph.i.24.i.i.i.i.i.i.i.i ], [ 25, %.lr.ph.i.25.i.i.i.i.i.i.i.i ], [ 26, %.lr.ph.i.26.i.i.i.i.i.i.i.i ], [ 27, %.lr.ph.i.27.i.i.i.i.i.i.i.i ], [ 28, %.lr.ph.i.28.i.i.i.i.i.i.i.i ], [ 29, %.lr.ph.i.29.i.i.i.i.i.i.i.i ], [ 30, %.lr.ph.i.30.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !112
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %.sroa.0.04.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.d, !noalias !129

.noexc.i.i.i.i.i.i:                               ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNCNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB1N_9DyldCache17subcache_suffixess_00ECs1yfHPQhS7hZ_13dyldcachedump.exit.thread.i.i.i.i.i.i.i.i
  %i.bh = load ptr, ptr %i.u, align 8, !noalias !112, !nonnull !6
  %i.bi = load i64, ptr %i.v, align 8, !noalias !112 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !112
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.bi, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %.loopexit.i.i.i.i.i.i, !noalias !130

.loopexit.i.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %bb.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ] ; 2 uses
  %i.bj = load i64, ptr %i.b, align 8, !range !131, !alias.scope !132, !noalias !112, !noundef !6
  %i.bk = icmp eq i64 %i.bj, -1
  br i1 %i.bk, label %.body.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.o, !noalias !130

bb.h:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.bl = load i64, ptr %i.a, align 8, !range !10, !noalias !112, !noundef !6
  %i.bm = trunc nuw i64 %i.bl to i1
  %i.bn = load i64, ptr %i.w, align 8, !range !77, !noalias !112, !noundef !6 ; 3 uses
  br i1 %i.bm, label %bb.i, label %bb.j, !prof !70

bb.i:                                             ; preds = %bb.h
  %i.bo = load i64, ptr %i.x, align 8, !noalias !112
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bn, i64 %i.bo) #18
          to label %bb.n unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !130

bb.j:                                             ; preds = %bb.h
  %i.bp = load ptr, ptr %i.x, align 8, !noalias !112, !nonnull !6, !noundef !6 ; 2 uses
  %i.bq = icmp ule i64 %i.bi, %i.bn
  call void @llvm.assume(i1 %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !112
  %.not13.i.i.i.i.i.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.m, %bb.j
  %i.br = load i64, ptr %i.b, align 8, !range !131, !alias.scope !135, !noalias !112, !noundef !6
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.d, !noalias !129

bb.m:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr nonnull align 1 %i.bh, i64 %i.bi, i1 false), !noalias !130
  br label %bb.k

bb.n:                                             ; preds = %bb.i
  unreachable

bb.o:                                             ; preds = %bb.g
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !130
  unreachable

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !112
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.val10.i.i.i.i.i.i ; 3 uses
  store i64 %i.bn, ptr %i.bu, align 8, !noalias !138
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bp, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !138
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %i.bi, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !138
  %i.bv = add i64 %.val10.i.i.i.i.i.i, 1          ; 2 uses
  %i.bw = icmp eq i64 %i.bv, %i.i
  br i1 %i.bw, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB3d_6endian10EndiannessEENCNvMNtNtNtB3d_4read5macho10dyld_cacheNtB4x_9DyldCache17subcache_suffixess_0EE9from_iterCs1yfHPQhS7hZ_13dyldcachedump.exit, label %bb.e

.body.i:                                          ; preds = %bb.g, %bb.f, %bb.d
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.y, %bb.d ], [ %lpad.phi.i.i.i.i.i.i, %bb.g ], [ %lpad.phi.i.i.i.i.i.i, %bb.f ]
  store i64 %.val10.i.i.i.i.i.i, ptr %i.s, align 8, !alias.scope !143, !noalias !129
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #17
          to label %bb.r unwind label %bb.q, !noalias !103

bb.q:                                             ; preds = %.body.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !103
  unreachable

bb.r:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterINtNtCseHTIzroA4w0_6object5macho19DyldSubCacheEntryV2NtNtB3d_6endian10EndiannessEENCNvMNtNtNtB3d_4read5macho10dyld_cacheNtB4x_9DyldCache17subcache_suffixess_0EE9from_iterCs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %bb.p, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i.i
  store i64 %i.i, ptr %i.s, align 8, !alias.scope !143, !noalias !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !103
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecRShEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1K_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs1yfHPQhS7hZ_13dyldcachedump4mains_0EE9from_iterB3o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 4                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.f = load i64, ptr %i.a, align 8, !range !10, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !77, !noundef !6 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRShE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #18
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRShE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = icmp eq ptr %1, %2
  br i1 %i.n, label %.loopexit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRShE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i
  %i.o = icmp eq i64 %i.d, 16
  br i1 %i.o, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %i.e, 1152921504606846974
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %i.p = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.z, %.preheader.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.p ; 2 uses
  %.val15.i.i.i.i.i = load ptr, ptr %i.q, align 8, !noalias !144, !noundef !6
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val16.i.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !144, !noundef !6
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.p ; 2 uses
  store ptr %.val15.i.i.i.i.i, ptr %i.s, align 8, !noalias !155, !captures !164
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.val16.i.i.i.i.i, ptr %i.t, align 8, !noalias !165
  %i.u = or disjoint i64 %i.p, 1                  ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.u ; 2 uses
  %.val15.i.i.i.i.i.1 = load ptr, ptr %i.v, align 8, !noalias !144, !noundef !6
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val16.i.i.i.i.i.1 = load i64, ptr %i.w, align 8, !noalias !144, !noundef !6
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.u ; 2 uses
  store ptr %.val15.i.i.i.i.i.1, ptr %i.x, align 8, !noalias !155, !captures !164
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.val16.i.i.i.i.i.1, ptr %i.y, align 8, !noalias !165
  %i.z = add nuw i64 %i.p, 2                      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i.i
  %i.aa = and i64 %i.d, 16
  %lcmp.mod.not = icmp eq i64 %i.aa, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.z, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.epil.init ; 2 uses
  %.val15.i.i.i.i.i.epil = load ptr, ptr %i.ab, align 8, !noalias !144, !noundef !6
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %.val16.i.i.i.i.i.epil = load i64, ptr %i.ac, align 8, !noalias !144, !noundef !6
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.epil.init ; 2 uses
  store ptr %.val15.i.i.i.i.i.epil, ptr %i.ad, align 8, !noalias !155, !captures !164
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %.val16.i.i.i.i.i.epil, ptr %i.ae, align 8, !noalias !165
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRShE7reserveCs1yfHPQhS7hZ_13dyldcachedump.exit.i.i
  store i64 %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs1yfHPQhS7hZ_13dyldcachedump.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit.i unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1yfHPQhS7hZ_13dyldcachedump.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cache8DyldFileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRShENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsgQ7e0lqRvgo_7memmap22osNtB2_9MmapInner3map(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef, i32 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvNtCsgQ7e0lqRvgo_7memmap22os8file_len(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMs0_CsgQ7e0lqRvgo_7memmap2NtB5_11MmapOptions12validate_len(i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef range(i8 0, 44), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsj_NtCsG258MDvU3F_3std2fsNtB5_11OpenOptions5__open(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE32forget_allocation_drop_remainingCs1yfHPQhS7hZ_13dyldcachedump(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtCsgQ7e0lqRvgo_7memmap24MmapENCINvNtNtB1p_8adapters3map12map_try_foldBX_INtNtB1r_6result6ResultB2X_uEB2n_INtNtNtB1r_3ops12control_flow11ControlFlowIB49_B2n_zEB2n_ENCNvCs1yfHPQhS7hZ_13dyldcachedump4main0NCINvXB3y_INtB3y_12GenericShuntINtB3w_3MapBI_B5B_EIB49_zuEEB1j_8try_foldB2n_NCINvNtB8_16in_place_collect24write_in_place_with_dropB2X_E0B5l_E0E0B4F_EB5F_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1yfHPQhS7hZ_13dyldcachedump(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

end_hunk_0
