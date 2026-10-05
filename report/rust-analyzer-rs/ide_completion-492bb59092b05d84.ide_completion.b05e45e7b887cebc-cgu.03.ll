Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.03?download=true
inline.NumInlined: 1132
inline.NumDeleted: 459
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder11insert_textNtCs42xZ1oUXfIG_8smol_str7SmolStrEB8_:bb.a
  br i1 %i.ai, label %bb.q, label %_RNvXs1_NtCshzWfHUSfYae_4core7convertNtCs42xZ1oUXfIG_8smol_str7SmolStrINtB5_4IntoNtNtCsbSS6DM8SDEO_5alloc6string6StringE4intoCsf8NQSppxkmK_14ide_completion.exit

bb.q:                                             ; preds = %bb.p
  fence acquire, !noalias !195
  tail call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.af) #28, !noalias !191
  br label %_RNvXs1_NtCshzWfHUSfYae_4core7convertNtCs42xZ1oUXfIG_8smol_str7SmolStrINtB5_4IntoNtNtCsbSS6DM8SDEO_5alloc6string6StringE4intoCsf8NQSppxkmK_14ide_completion.exit

_RNvXs1_NtCshzWfHUSfYae_4core7convertNtCs42xZ1oUXfIG_8smol_str7SmolStrINtB5_4IntoNtNtCsbSS6DM8SDEO_5alloc6string6StringE4intoCsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RNvXsx_Cs42xZ1oUXfIG_8smol_strNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCshzWfHUSfYae_4core7convert4FromNtB5_7SmolStrE4from.exit.i, %bb.p, %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.ak = load i64, ptr %i.aj, align 8, !range !7, !alias.scope !208, !noundef !8
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsf8NQSppxkmK_14ide_completion.exit, label %bb.r

bb.r:                                             ; preds = %_RNvXs1_NtCshzWfHUSfYae_4core7convertNtCs42xZ1oUXfIG_8smol_str7SmolStrINtB5_4IntoNtNtCsbSS6DM8SDEO_5alloc6string6StringE4intoCsf8NQSppxkmK_14ide_completion.exit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.body unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.u ], [ %i.am, %bb.s ]
  store i64 %i.y, ptr %i.aj, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ab, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.4.0.i.i, ptr %.sroa.6.0..sroa_idx, align 8
  br label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RNvXs1_NtCshzWfHUSfYae_4core7convertNtCs42xZ1oUXfIG_8smol_str7SmolStrINtB5_4IntoNtNtCsbSS6DM8SDEO_5alloc6string6StringE4intoCsf8NQSppxkmK_14ide_completion.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i
  store i64 %i.y, ptr %i.aj, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ab, ptr %.sroa.53.0..sroa_idx4, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.4.0.i.i, ptr %.sroa.6.0..sroa_idx6, align 8
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder11insert_textNtNtCsbSS6DM8SDEO_5alloc6string6StringEB8_(ptr noalias nofree noundef returned align 8 dereferenceable(360) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !range !7, !alias.scope !211, !noundef !8
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsf8NQSppxkmK_14ide_completion.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder11insert_textReEB8_(ptr noalias nofree noundef returned align 8 dereferenceable(360) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !223
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !223
  %i.b = load i64, ptr %i.a, align 8, !range !13, !noalias !223, !noundef !8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !14, !noalias !223, !noundef !8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsf8NQSppxkmK_14ide_completion.exit.i.i.i, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !223
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #30, !noalias !223
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsf8NQSppxkmK_14ide_completion.exit.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !223, !nonnull !8, !noundef !8 ; 3 uses
  %i.i = icmp samesign ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !223
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_RNvXs1_NtCshzWfHUSfYae_4core7convertReINtB5_4IntoNtNtCsbSS6DM8SDEO_5alloc6string6StringE4intoCsf8NQSppxkmK_14ide_completion.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsf8NQSppxkmK_14ide_completion.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !224
  br label %_RNvXs1_NtCshzWfHUSfYae_4core7convertReINtB5_4IntoNtNtCsbSS6DM8SDEO_5alloc6string6StringE4intoCsf8NQSppxkmK_14ide_completion.exit

_RNvXs1_NtCshzWfHUSfYae_4core7convertReINtB5_4IntoNtNtCsbSS6DM8SDEO_5alloc6string6StringE4intoCsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsf8NQSppxkmK_14ide_completion.exit.i.i.i, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.k = load i64, ptr %i.j, align 8, !range !7, !alias.scope !225, !noundef !8
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsf8NQSppxkmK_14ide_completion.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCshzWfHUSfYae_4core7convertReINtB5_4IntoNtNtCsbSS6DM8SDEO_5alloc6string6StringE4intoCsf8NQSppxkmK_14ide_completion.exit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.m, %bb.e ]
  store i64 %i.e, ptr %i.j, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RNvXs1_NtCshzWfHUSfYae_4core7convertReINtB5_4IntoNtNtCsbSS6DM8SDEO_5alloc6string6StringE4intoCsf8NQSppxkmK_14ide_completion.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i
  store i64 %i.e, ptr %i.j, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %.sroa.53.0..sroa_idx4, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %2, ptr %.sroa.6.0..sroa_idx6, align 8
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder14insert_snippetReEB8_(ptr noalias nofree noundef returned align 8 dereferenceable(360) initializes((352, 353)) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 1, ptr %i.a, align 8
  %i.b = tail call noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder11insert_textReEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder14with_relevanceNCNvNtNtB8_11completions4use_17complete_use_paths1_0EB8_(ptr noalias nofree noundef returned align 8 captures(ret: address, provenance) dereferenceable(360) initializes((131, 132)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #2 {
bb.a:
  %.sroa.16 = alloca [3 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.sroa.029.0.copyload = load i8, ptr %i.a, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 2 uses
  %.sroa.430.0.copyload = load i8, ptr %.sroa.430.0..sroa_idx, align 1
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 130 ; 2 uses
  %.sroa.531.0.copyload = load i8, ptr %.sroa.531.0..sroa_idx, align 2
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 131
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.1137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.1541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %.sroa.1541.0.copyload = load i8, ptr %.sroa.1541.0..sroa_idx, align 4
  %.sroa.1642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 141 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.16, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.1642.0..sroa_idx, i64 3, i1 false)
  %.val = load i8, ptr %1, align 1, !range !17, !noundef !8
  store i8 %.sroa.029.0.copyload, ptr %i.a, align 8
  store i8 %.sroa.430.0.copyload, ptr %.sroa.430.0..sroa_idx, align 1
  store i8 %.sroa.531.0.copyload, ptr %.sroa.531.0..sroa_idx, align 2
  %2 = load <4 x i8>, ptr %.sroa.733.0..sroa_idx, align 4
  %3 = load <4 x i8>, ptr %.sroa.1137.0..sroa_idx, align 8
  %4 = shufflevector <4 x i8> %2, <4 x i8> %3, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %5 = insertelement <8 x i8> %4, i8 %.val, i64 0
  store <8 x i8> %5, ptr %.sroa.632.0..sroa_idx, align 1
  store i8 %.sroa.1541.0.copyload, ptr %.sroa.1541.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.1642.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.16, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder5labelNtCs42xZ1oUXfIG_8smol_str7SmolStrEB8_(ptr noalias nofree noundef returned align 8 dereferenceable(360) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.b = load i8, ptr %i.a, align 8, !range !16, !alias.scope !236, !noundef !8
  %switch.i.i = icmp samesign ult i8 %i.b, 25
  br i1 %switch.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !239, !nonnull !8, !noundef !8
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !239
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #28
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  resume { ptr, i32 } %i.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.b, %bb.a, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder6detailNtNtCsbSS6DM8SDEO_5alloc6string6StringEB8_(ptr noalias nofree noundef returned align 8 dereferenceable(360) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder10set_detailNtNtCsbSS6DM8SDEO_5alloc6string6StringEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder6detailReEB8_(ptr noalias nofree noundef returned align 8 dereferenceable(360) %0, ptr noalias nofree noundef nonnull readonly captures(address_is_null) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder10set_detailReEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 %2) ; 0 uses
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder9lookup_byNtCs42xZ1oUXfIG_8smol_str7SmolStrEB8_(ptr noalias nofree noundef returned align 8 dereferenceable(360) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.b = load i8, ptr %i.a, align 8, !range !18, !alias.scope !250, !noundef !8 ; 2 uses
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %switch.i.i.i = icmp samesign ult i8 %i.b, 25
  br i1 %switch.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !255, !nonnull !8, !noundef !8
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !255
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #28
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  resume { ptr, i32 } %i.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder9lookup_byNtNtCsbSS6DM8SDEO_5alloc6string6StringEB8_(ptr noalias nofree noundef returned align 8 dereferenceable(360) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !276
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !275, !noalias !277, !nonnull !8, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.e, align 8, !alias.scope !275, !noalias !277, !noundef !8
  invoke void @_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
          to label %_RNvXss_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrINtNtCshzWfHUSfYae_4core7convert4FromNtNtCsbSS6DM8SDEO_5alloc6string6StringE4from.exit.i unwind label %bb.b, !noalias !278

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #29
          to label %common.resume unwind label %bb.c, !noalias !279

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !279
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.f, %bb.b ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RNvXss_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrINtNtCshzWfHUSfYae_4core7convert4FromNtNtCsbSS6DM8SDEO_5alloc6string6StringE4from.exit.i: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !276
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvXs1_NtCshzWfHUSfYae_4core7convertNtNtCsbSS6DM8SDEO_5alloc6string6StringINtB5_4IntoNtCs42xZ1oUXfIG_8smol_str7SmolStrE4intoCsf8NQSppxkmK_14ide_completion.exit unwind label %bb.d, !noalias !279

bb.d:                                             ; preds = %_RNvXss_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrINtNtCshzWfHUSfYae_4core7convert4FromNtNtCsbSS6DM8SDEO_5alloc6string6StringE4from.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.e, !noalias !279

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !279
  unreachable

_RNvXs1_NtCshzWfHUSfYae_4core7convertNtNtCsbSS6DM8SDEO_5alloc6string6StringINtB5_4IntoNtCs42xZ1oUXfIG_8smol_str7SmolStrE4intoCsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RNvXss_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrINtNtCshzWfHUSfYae_4core7convert4FromNtNtCsbSS6DM8SDEO_5alloc6string6StringE4from.exit.i
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.k = load i8, ptr %i.j, align 8, !range !18, !alias.scope !281, !noundef !8 ; 2 uses
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXs1_NtCshzWfHUSfYae_4core7convertNtNtCsbSS6DM8SDEO_5alloc6string6StringINtB5_4IntoNtCs42xZ1oUXfIG_8smol_str7SmolStrE4intoCsf8NQSppxkmK_14ide_completion.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %switch.i.i.i = icmp samesign ult i8 %i.k, 25
  br i1 %switch.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !286, !nonnull !8, !noundef !8
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !286
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #28
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.g, %bb.f, %_RNvXs1_NtCshzWfHUSfYae_4core7convertNtNtCsbSS6DM8SDEO_5alloc6string6StringINtB5_4IntoNtCs42xZ1oUXfIG_8smol_str7SmolStrE4intoCsf8NQSppxkmK_14ide_completion.exit, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder9lookup_byReEB8_(ptr noalias nofree noundef returned align 8 dereferenceable(360) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.c = load i8, ptr %i.b, align 8, !range !18, !alias.scope !297, !noundef !8 ; 2 uses
  %i.d = icmp eq i8 %i.c, -1
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion.exit, label %bb.b

end_hunk_0
