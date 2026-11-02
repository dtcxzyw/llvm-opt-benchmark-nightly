Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.15?download=true
inline.NumInlined: 5570
inline.NumDeleted: 2226
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 48
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone8TimeZoneECsEhZmuQNqkz_11ruff_linter:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.0.val, i64 -4    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = tail call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsEhZmuQNqkz_11ruff_linter(ptr noundef %i.e)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  store ptr %i.h, ptr %i.b, align 8
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !2966
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4repr4ReprECsEhZmuQNqkz_11ruff_linter.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %.0.val, i64 -5    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = tail call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneECsEhZmuQNqkz_11ruff_linter(ptr noundef %i.k)
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  store ptr %i.n, ptr %i.a, align 8
  %i.o = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !2967
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneE9drop_slowCs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4repr4ReprECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4repr4ReprECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5oRRSLMQMUC_4jiff3fmt7strtime7DisplayECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2980)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i64, ptr %i.c, align 8, !range !31, !alias.scope !2980, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !2980 ; 3 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone8TimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %.val1.i to i64
  %i.g = and i64 %i.f, 7
  switch i64 %i.g, label %bb.c [
    i64 1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone8TimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone8TimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i
    i64 3, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone8TimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone8TimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i
    i64 4, label %bb.d
    i64 5, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.val1.i, i64 -4   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2980
  %i.i = invoke noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsEhZmuQNqkz_11ruff_linter(ptr noundef %i.h)
          to label %.noexc.i unwind label %bb.h, !noalias !2980

.noexc.i:                                         ; preds = %bb.d
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store ptr %i.k, ptr %i.b, align 8, !noalias !2980
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !2981
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i

bb.e:                                             ; preds = %.noexc.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i unwind label %bb.h, !noalias !2980

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i: ; preds = %bb.e, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2980
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone8TimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %.val1.i, i64 -5   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2980
  %i.o = invoke noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneECsEhZmuQNqkz_11ruff_linter(ptr noundef %i.n)
          to label %.noexc3.i unwind label %bb.h, !noalias !2980

.noexc3.i:                                        ; preds = %bb.f
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 %i.p ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  store ptr %i.q, ptr %i.a, align 8, !noalias !2980
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !2982
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i

bb.g:                                             ; preds = %.noexc3.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneE9drop_slowCs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i unwind label %bb.h, !noalias !2980

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i: ; preds = %bb.g, %.noexc3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2980
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone8TimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.u) #53
          to label %common.resume.i unwind label %bb.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone8TimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, %bb.b, %bb.b, %bb.b, %bb.b, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !range !15, !alias.scope !2983, !noundef !13
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5oRRSLMQMUC_4jiff3fmt7strtime14BrokenDownTimeECsEhZmuQNqkz_11ruff_linter.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone8TimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54
  unreachable

common.resume.i:                                  ; preds = %bb.j, %bb.h
  %common.resume.op.i = phi { ptr, i32 } [ %i.y, %bb.j ], [ %i.t, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5oRRSLMQMUC_4jiff3fmt7strtime14BrokenDownTimeECsEhZmuQNqkz_11ruff_linter.exit

bb.l:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5oRRSLMQMUC_4jiff3fmt7strtime14BrokenDownTimeECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone8TimeZoneEECsEhZmuQNqkz_11ruff_linter.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter3fix7snippet17SourceCodeSnippetEBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif11SarifOutputEBH_(ptr noalias noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif9SarifRuleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif9SarifRuleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(96) %0)
          to label %.body.i.i.i.i.i unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif9SarifRuleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif9SarifRuleEEB1d_.exit.i.i.i.i.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #53
          to label %common.resume.i.i.i.i.i unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif9SarifRuleEEB1d_.exit.i.i.i.i.i: ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif8SarifRunj1_EBI_.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif9SarifRuleEEB1d_.exit.i.i.i.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume.i.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54
  unreachable

common.resume.i.i.i.i.i:                          ; preds = %bb.f, %.body.i.i.i.i.i
  %common.resume.op.i.i.i.i.i = phi { ptr, i32 } [ %i.d, %bb.f ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i.i

bb.h:                                             ; preds = %.body.i.i.i.i.i
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif8SarifRunj1_EBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif9SarifRuleEEB1d_.exit.i.i.i.i.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif12SarifMessageEBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !alias.scope !2986, !noundef !13
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast11LintContextEBH_(ptr noalias noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3015)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3018)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3019, !noundef !13 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast14LazySourceFileEBH_.exit, label %bb.e

bb.e:                                             ; preds = %.body
  %i.h = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !3020
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast14LazySourceFileEBH_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs9BeaGo73rC4_16ruff_source_file15SourceFileInnerE9drop_slowCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast14LazySourceFileEBH_.exit unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEECsEhZmuQNqkz_11ruff_linter.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3021)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3024)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3025, !noundef !13 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast14LazySourceFileEBH_.exit1, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEECsEhZmuQNqkz_11ruff_linter.exit
  %i.m = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !3026
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast14LazySourceFileEBH_.exit1

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs9BeaGo73rC4_16ruff_source_file15SourceFileInnerE9drop_slowCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast14LazySourceFileEBH_.exit1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast14LazySourceFileEBH_.exit1: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEECsEhZmuQNqkz_11ruff_linter.exit, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast14LazySourceFileEBH_.exit: ; preds = %bb.e, %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXse_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3043)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3043, !noundef !13 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !3044
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3045)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !3045, !noundef !13 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit3, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !3046
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit3

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit3 unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c, %bb.b, %bb.d, %bb.h
  %.pn = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.a, %bb.d ], [ %i.a, %bb.b ], [ %i.a, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_Ej1_ENtNtB1o_4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_Ej1_EECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit3: ; preds = %bb.f, %bb.e, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_Ej1_ENtNtB1o_4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
  ret void

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit, %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecAINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_Ej1_EECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.c

end_hunk_0
begin_hunk_1_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules22redundant_none_literal22redundant_none_literal:bb.a
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54, !noalias !8117
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %bb.cb
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvXsq_NtCsj8vhLppEnlJ_8char_str8char_strNtB5_7CharStrINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from.exit.i.i.i unwind label %.body94.thread185.i.i.i, !noalias !8096

.body94.thread185.i.i.i:                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %.body94.thread.i.i.i

bb.ce:                                            ; preds = %.loopexit53
  unreachable

bb.cf:                                            ; preds = %.loopexit.split-lp49.loopexit.split-lp
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54, !noalias !8117
  unreachable

.body94.i.i.i:                                    ; preds = %_RNvXsq_NtCsj8vhLppEnlJ_8char_str8char_strNtB5_7CharStrINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from.exit.i.i.i
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.thread188.i.i.i

_RNvXsq_NtCsj8vhLppEnlJ_8char_str8char_strNtB5_7CharStrINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i
  store ptr %.sroa.0.0.i92.i.i.i, ptr %i.v, align 8, !noalias !8096
  store i64 %.sroa.6.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx138.i.i.i, align 8, !noalias !8096
  invoke void @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers15typing_optional(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.w, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.v)
          to label %bb.cg unwind label %.body94.i.i.i, !noalias !8096

bb.cg:                                            ; preds = %_RNvXsq_NtCsj8vhLppEnlJ_8char_str8char_strNtB5_7CharStrINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !8096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !8096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !8096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !8096
  invoke void @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker9generator(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.t, ptr noundef nonnull align 8 %0)
          to label %bb.cj unwind label %bb.ci, !noalias !8096

bb.ch:                                            ; preds = %bb.ck, %bb.ci
  %.sroa.038.0.i.i.i = phi i1 [ %.sroa.038.1.i.i.i, %bb.ci ], [ true, %bb.ck ]
  %.pn.i.i.i = phi { ptr, i32 } [ %i.is, %bb.ci ], [ %i.iy, %bb.ck ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.x) #53
          to label %bb.cn unwind label %bb.az, !noalias !8096

bb.ci:                                            ; preds = %bb.cl, %bb.cj, %bb.cg
  %.sroa.038.1.i.i.i = phi i1 [ false, %bb.cl ], [ true, %bb.cj ], [ true, %bb.cg ]
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cj:                                            ; preds = %bb.cg
  invoke void @_RNvMs0_NtCsjSXNr8pNfhj_19ruff_python_codegen9generatorNtB5_9Generator4expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.t, ptr noundef nonnull align 8 %i.x)
          to label %switch.lookup335 unwind label %bb.ci, !noalias !8096

switch.lookup335:                                 ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !8096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !8096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !8096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !8096
  %i.it = load i32, ptr %1, align 8, !range !18, !noalias !8096, !noundef !13 ; 2 uses
  %i.iu = zext nneg i32 %i.it to i64
  %switch.gep336 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib5rules12builtin_open12builtin_opens0_0s_0INtB7_5FnMutTTjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordEEE8call_mutB12_.844, i64 %i.iu
  %switch.load337 = load i8, ptr %switch.gep336, align 1
  %switch.ext338 = zext i8 %switch.load337 to i64
  %i.iv = zext nneg i32 %i.it to i64
  %switch.gep339 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib5rules12builtin_open12builtin_opens0_0s_0INtB7_5FnMutTTjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordEEE8call_mutB12_.845, i64 %i.iv
  %switch.load340 = load i8, ptr %switch.gep339, align 1
  %switch.ext341 = zext i8 %switch.load340 to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext338
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext341
  %.sroa.0.0.i99.i.i.i = load i32, ptr %i.iw, align 4, !noalias !8096, !noundef !13
  %.sroa.34.0.i100.i.i.i = load i32, ptr %i.ix, align 4, !noalias !8096, !noundef !13
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r, i32 noundef %.sroa.0.0.i99.i.i.i, i32 noundef %.sroa.34.0.i100.i.i.i)
          to label %bb.cl unwind label %bb.ck, !noalias !8096

bb.ck:                                            ; preds = %switch.lookup335
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cl:                                            ; preds = %switch.lookup335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !8096
  store ptr %.sroa.0155.0.copyload.i.i.i, ptr %i.q, align 8, !noalias !8096
  store i64 %.sroa.4156.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx131.i.i.i, align 8, !noalias !8096
  store i64 %.sroa.5157.0.copyload.i.i.i, ptr %.sroa.6.0..sroa_idx134.i.i.i, align 8, !noalias !8096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !8096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !8096
  invoke void @_RINvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB3_3Fix16applicable_editsANtNtB5_4edit4Editj1_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p, i8 noundef %.sroa.05.0.i.i.i)
          to label %bb.cm unwind label %bb.ci, !noalias !8096

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !8096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !8096
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.x)
          to label %bb.co unwind label %.thread192.i.i.i, !noalias !8096

bb.cn:                                            ; preds = %bb.ch
  br i1 %.sroa.038.0.i.i.i, label %.thread188.i.i.i, label %.body65.i.i.i

.thread192.i.i.i:                                 ; preds = %bb.di, %bb.cm
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %.body65.i.i.i

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !8096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !8096
  br label %bb.cp

bb.cp:                                            ; preds = %bb.dj, %bb.co
  %.sroa.0.0.copyload12.i = load i64, ptr %i.aa, align 8, !noalias !8106 ; 2 uses
  %.sroa.11.0.copyload15.i = load ptr, ptr %.sroa.11.0..sroa_idx14.i, align 8, !noalias !8106 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx19.i, i64 24, i1 false), !noalias !8106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !8096
  %i.ja = trunc nuw i8 %.sroa.032.3.i.i.i to i1
  br i1 %i.ja, label %bb.dk, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules22redundant_none_literal10create_fix.exit.i.i

.body94.thread.i.i.i:                             ; preds = %.body94.thread185.i.i.i, %bb.cc, %.loopexit.split-lp49.loopexit.split-lp
  %eh.lpad-body95184.i.i.i = phi { ptr, i32 } [ %i.ip, %.body94.thread185.i.i.i ], [ %lpad.loopexit.split-lp354, %.loopexit.split-lp49.loopexit.split-lp ], [ %i.in, %bb.cc ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.w) #53
          to label %.thread188.i.i.i unwind label %bb.az, !noalias !8096

.thread188.i.i.i:                                 ; preds = %.body94.thread.i.i.i, %bb.cn, %.body94.i.i.i
  %.pn57191.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.cn ], [ %i.ir, %.body94.i.i.i ], [ %eh.lpad-body95184.i.i.i, %.body94.thread.i.i.i ] ; 2 uses
  %i.jb = icmp eq ptr %.sroa.0155.0.copyload.i.i.i, null
  %i.jc = icmp eq i64 %.sroa.4156.0.copyload.i.i.i, 0
  %or.cond.i.i.i.i.i = select i1 %i.jb, i1 true, i1 %i.jc
  br i1 %or.cond.i.i.i.i.i, label %.body65.i.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %.thread188.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0155.0.copyload.i.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0155.0.copyload.i.i.i, i64 noundef %.sroa.4156.0.copyload.i.i.i, i64 noundef 1) #55, !noalias !8096
  br label %.body65.i.i.i

bb.cq:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !8096
  br label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker15typing_importer.exit.i.i.i

_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker15typing_importer.exit.i.i.i: ; preds = %bb.cq, %bb.bs
  %.sroa.11.2.i = phi ptr [ %i.ic, %bb.cq ], [ undef, %bb.bs ] ; 2 uses
  %.sroa.0.2.i = phi i64 [ -2, %bb.cq ], [ -1, %bb.bs ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.ag)
          to label %bb.cr unwind label %.loopexit, !noalias !8096

bb.cr:                                            ; preds = %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker15typing_importer.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !8096
  %i.jd = trunc nuw i8 %.sroa.032.3.i.i.i to i1
  br i1 %i.jd, label %bb.aw, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules22redundant_none_literal10create_fix.exit.i.i

.sink.split.i.i.i:                                ; preds = %bb.dk, %bb.aw
  %.sroa.11.1.i = phi ptr [ %.sroa.11.3.i, %bb.aw ], [ %.sroa.11.0.copyload15.i, %bb.dk ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.3.i, %bb.aw ], [ %.sroa.0.0.copyload12.i, %bb.dk ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules22redundant_none_literal10create_fix.exit.i.i unwind label %bb.eo

bb.cs:                                            ; preds = %bb.bt
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCskLngH8kgpZI_15ruff_python_ast9generated4Exprj2_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(144) %i.n) #53
          to label %.body65.i.i.i unwind label %bb.az, !noalias !8096

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.dq)
          to label %.preheader.i.i.i.1 unwind label %.peel.begin.i.i.i, !noalias !8096, !inline_history !0

.preheader.i.i.i.1:                               ; preds = %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8096
  %i.jf = load ptr, ptr %i.de, align 8, !noalias !8096, !align !27, !noundef !13 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i.i, label %bb.cv, label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker6tokens.exit.i.i.i

.preheader.i.i.i.preheader:                       ; preds = %bb.bt
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.n)
          to label %.preheader.i.i.i unwind label %.peel.begin.i.i.i, !noalias !8096, !inline_history !0

.peel.begin.i.i.i:                                ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader
  %i.jg = phi i1 [ false, %.preheader.i.i.i.preheader ], [ true, %.preheader.i.i.i ]
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.jg, label %.body104.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %.peel.begin.i.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.dd) #53
          to label %.body104.i.i.i unwind label %bb.cu, !noalias !8096, !inline_history !0

bb.cu:                                            ; preds = %bb.ct
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54, !noalias !8096, !inline_history !0
  unreachable

.body104.i.i.i:                                   ; preds = %bb.dg, %bb.de, %bb.dd, %bb.ct, %.peel.begin.i.i.i
  %.pn59.i.i.i = phi { ptr, i32 } [ %i.jy, %bb.dd ], [ %i.jz, %bb.de ], [ %i.kb, %bb.dg ], [ %i.jh, %bb.ct ], [ %i.jh, %.peel.begin.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.o) #53
          to label %.body65.i.i.i unwind label %bb.az, !noalias !8096

bb.cv:                                            ; preds = %.preheader.i.i.i.1
  %i.ji = load ptr, ptr %i.df, align 8, !noalias !8096, !nonnull !13, !align !27, !noundef !13
  br label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker6tokens.exit.i.i.i

_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker6tokens.exit.i.i.i: ; preds = %bb.cv, %.preheader.i.i.i.1
  %.sroa.0.0.i106.i.i.i = phi ptr [ %i.ji, %bb.cv ], [ %i.jf, %.preheader.i.i.i.1 ]
  %i.jj = invoke noundef align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel25current_expression_parent(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.bb)
          to label %.noexc109.i.i.i.a unwind label %bb.dg, !noalias !8096 ; 3 uses

.noexc109.i.i.i.a:                                ; preds = %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker6tokens.exit.i.i.i
  %.not.i107.i.i.i = icmp eq ptr %i.jj, null
  br i1 %.not.i107.i.i.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules22redundant_none_literal32needs_parentheses_for_precedence.exit.thread.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %.noexc109.i.i.i.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8118
  %i.jk = invoke { i64, ptr } @_RNvXs5b_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %1)
          to label %.noexc110.i.i.i.a unwind label %bb.dg, !noalias !8096 ; 2 uses

.noexc110.i.i.i.a:                                ; preds = %bb.cw
  %i.jl = invoke { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.jj)
          to label %.noexc111.i.i.i.a unwind label %bb.dg, !noalias !8096 ; 2 uses

.noexc111.i.i.i.a:                                ; preds = %.noexc110.i.i.i.a
  %i.jm = extractvalue { i64, ptr } %i.jk, 1
  %i.jn = extractvalue { i64, ptr } %i.jk, 0
  %i.jo = extractvalue { i64, ptr } %i.jl, 0
  %i.jp = extractvalue { i64, ptr } %i.jl, 1
  invoke void @_RNvNtNtCskLngH8kgpZI_15ruff_python_ast5token11parentheses19parenthesized_range(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i64 noundef %i.jn, ptr noundef %i.jm, i64 noundef %i.jo, ptr noundef %i.jp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.i106.i.i.i)
          to label %.noexc112.i.i.i unwind label %bb.dg, !noalias !8096

.noexc112.i.i.i:                                  ; preds = %.noexc111.i.i.i.a
  %i.jq = load i32, ptr %i.b, align 4, !range !65, !noalias !8118, !noundef !13
  %.not3.i.i.i.i = icmp eq i32 %i.jq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8118
  br i1 %.not3.i.i.i.i, label %bb.cx, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules22redundant_none_literal32needs_parentheses_for_precedence.exit.thread.i.i.i

bb.cx:                                            ; preds = %.noexc112.i.i.i
  %i.jr = invoke noundef i8 @_RNvXs_NtCskLngH8kgpZI_15ruff_python_ast19operator_precedenceNtB4_18OperatorPrecedenceINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtB6_9generated4ExprE4from(ptr noundef nonnull align 8 %i.jj)
          to label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules22redundant_none_literal32needs_parentheses_for_precedence.exit.i.i.i unwind label %bb.dg, !noalias !8096

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules22redundant_none_literal32needs_parentheses_for_precedence.exit.i.i.i: ; preds = %bb.cx
  %i.js = icmp samesign ugt i8 %i.jr, 10
  br i1 %i.js, label %bb.cy, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules22redundant_none_literal32needs_parentheses_for_precedence.exit.thread.i.i.i

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules22redundant_none_literal32needs_parentheses_for_precedence.exit.thread.i.i.i: ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules22redundant_none_literal32needs_parentheses_for_precedence.exit.i.i.i, %.noexc112.i.i.i, %.noexc109.i.i.i.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8096
  invoke void @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker9generator(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.i, ptr noundef nonnull align 8 %0)
          to label %bb.cz unwind label %bb.dg, !noalias !8096

bb.cy:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules22redundant_none_literal32needs_parentheses_for_precedence.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8096
  invoke void @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker9generator(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.k, ptr noundef nonnull align 8 %0)
          to label %bb.db unwind label %bb.dg, !noalias !8096

bb.cz:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules22redundant_none_literal32needs_parentheses_for_precedence.exit.thread.i.i.i
  invoke void @_RNvMs0_NtCsjSXNr8pNfhj_19ruff_python_codegen9generatorNtB5_9Generator4expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.i, ptr noundef nonnull align 8 %i.o)
          to label %bb.da unwind label %bb.dg, !noalias !8096

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8096
  br label %switch.lookup342

switch.lookup342:                                 ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i, %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !8096
  %i.jt = load i32, ptr %1, align 8, !range !18, !noalias !8096, !noundef !13 ; 2 uses
  %i.ju = zext nneg i32 %i.jt to i64
  %switch.gep343 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib5rules12builtin_open12builtin_opens0_0s_0INtB7_5FnMutTTjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordEEE8call_mutB12_.844, i64 %i.ju
  %switch.load344 = load i8, ptr %switch.gep343, align 1
  %switch.ext345 = zext i8 %switch.load344 to i64
  %i.jv = zext nneg i32 %i.jt to i64
  %switch.gep346 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib5rules12builtin_open12builtin_opens0_0s_0INtB7_5FnMutTTjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordEEE8call_mutB12_.845, i64 %i.jv
  %switch.load347 = load i8, ptr %switch.gep346, align 1
  %switch.ext348 = zext i8 %switch.load347 to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext345
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext348
  %.sroa.0.0.i116.i.i.i = load i32, ptr %i.jw, align 4, !noalias !8096, !noundef !13
  %.sroa.34.0.i117.i.i.i = load i32, ptr %i.jx, align 4, !noalias !8096, !noundef !13
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i32 noundef %.sroa.0.0.i116.i.i.i, i32 noundef %.sroa.34.0.i117.i.i.i)
          to label %bb.dh unwind label %bb.dg, !noalias !8096

bb.db:                                            ; preds = %bb.cy
  invoke void @_RNvMs0_NtCsjSXNr8pNfhj_19ruff_python_codegen9generatorNtB5_9Generator4expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.k, ptr noundef nonnull align 8 %i.o)
          to label %bb.dc unwind label %bb.dg, !noalias !8096

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8096
  store ptr %i.l, ptr %i.j, align 8, !noalias !8096
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.450.0..sroa_idx.i.i.i, align 8, !noalias !8096
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @302, ptr noundef nonnull %i.j)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.dd, !noalias !8096

bb.dd:                                            ; preds = %bb.dc
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #53
          to label %.body104.i.i.i unwind label %bb.az, !noalias !8096

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8096
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i unwind label %bb.de, !noalias !8096

bb.de:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  %i.jz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body104.i.i.i unwind label %bb.df, !noalias !8096

bb.df:                                            ; preds = %bb.de
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54, !noalias !8096
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.dg, !noalias !8096

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8096
  br label %switch.lookup342

bb.dg:                                            ; preds = %bb.dh, %switch.lookup342, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, %bb.db, %bb.cz, %bb.cy, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules22redundant_none_literal32needs_parentheses_for_precedence.exit.thread.i.i.i, %bb.cx, %.noexc111.i.i.i.a, %.noexc110.i.i.i.a, %bb.cw, %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker6tokens.exit.i.i.i
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %.body104.i.i.i

bb.dh:                                            ; preds = %switch.lookup342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8096
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix15applicable_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.aa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, i8 noundef %.sroa.05.0.i.i.i)
          to label %bb.di unwind label %bb.dg, !noalias !8096

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8096
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.o)
          to label %bb.dj unwind label %.thread192.i.i.i, !noalias !8096

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !8096
  br label %bb.cp

bb.dk:                                            ; preds = %bb.cp
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %.sink.split.i.i.i unwind label %bb.dl, !noalias !8107

bb.dl:                                            ; preds = %bb.dk
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %.body16 unwind label %bb.dm, !noalias !8107

bb.dm:                                            ; preds = %bb.dl
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54, !noalias !8107
  unreachable

bb.dn:                                            ; preds = %bb.bv, %.thread5.i.i.i.i
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.ag) #53
          to label %.body65.i.i.i unwind label %bb.az, !noalias !8096

.thread.i.i.i:                                    ; preds = %bb.bd, %.loopexit.split-lp.loopexit.split-lp, %.body65.i.i.i
  %.pn63161.i.i.i = phi { ptr, i32 } [ %.pn63.i.i.i, %.body65.i.i.i ], [ %lpad.loopexit.split-lp356, %.loopexit.split-lp.loopexit.split-lp ], [ %i.gx, %bb.bd ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao) #53
          to label %.body16 unwind label %bb.az, !noalias !8107

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules22redundant_none_literal10create_fix.exit.i.i: ; preds = %.sink.split.i.i.i, %bb.cr, %bb.cp
  %.sroa.5.i.sroa.0.0.copyload.i = phi ptr [ %.sroa.11.2.i, %bb.cr ], [ %.sroa.11.0.copyload15.i, %bb.cp ], [ %.sroa.11.1.i, %.sink.split.i.i.i ] ; 4 uses
  %.sroa.0.0.i15 = phi i64 [ %.sroa.0.2.i, %bb.cr ], [ %.sroa.0.0.copyload12.i, %bb.cp ], [ %.sroa.0.1.i, %.sink.split.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !8094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !8094
  switch i64 %.sroa.0.0.i15, label %bb.do [
    i64 -2, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules22redundant_none_literal22redundant_none_literals_0Bb_.exit.thread.i
    i64 -1, label %bb.ep
  ]

bb.do:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules22redundant_none_literal10create_fix.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8119
  store i64 %.sroa.0.0.i15, ptr %i.a, align 8, !noalias !8120
  store ptr %.sroa.5.i.sroa.0.0.copyload.i, ptr %.sroa.57.0..sroa_idx8.i.i, align 8, !noalias !8121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.8..sroa.57.0..sroa_idx8.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.i, i64 24, i1 false), !noalias !8121
  %i.ke = invoke noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel20current_statement_id(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.bb)
          to label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules22redundant_none_literal22redundant_none_literals_0Bb_.exit.i unwind label %bb.dp, !noalias !8122 ; 2 uses

bb.dp:                                            ; preds = %bb.do
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %i.a) #53
          to label %.body16 unwind label %bb.dq, !noalias !8122
end_hunk_1
begin_hunk_2_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exception:bb.a

bb.s:                                             ; preds = %bb.r
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit3.i: ; preds = %bb.r, %bb.q, %bb.p
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_Ej1_ENtNtB1o_4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_.exit unwind label %bb.f

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.o
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54
  unreachable

bb.u:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef 9, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bj unwind label %.body29.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !8195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8196
  store ptr @164, ptr %i.h, align 8, !alias.scope !8197, !noalias !8196
  store i64 7, ptr %i.ag, align 8, !alias.scope !8197, !noalias !8196
  store ptr @187, ptr %i.ah, align 8, !alias.scope !8197, !noalias !8196
  store i64 9, ptr %i.ai, align 8, !alias.scope !8197, !noalias !8196
  store i8 0, ptr %i.aj, align 8, !alias.scope !8197, !noalias !8196
  %i.cx = load i32, ptr %i.cg, align 8, !noalias !8196, !noundef !13
  invoke void @_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer20get_or_import_symbol(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h, i32 noundef %i.cx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.aa)
          to label %.noexc unwind label %.body29.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.v
  %i.cy = load i64, ptr %i.ak, align 8, !range !15, !noalias !8196, !noundef !13 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, -1
  %.sroa.050.0.copyload.i.i = load ptr, ptr %i.i, align 8, !noalias !8196 ; 6 uses
  %.sroa.451.0.copyload.i.i = load i64, ptr %.sroa.451.0..sroa_idx.i.i, align 8, !noalias !8196 ; 5 uses
  %.sroa.552.0.copyload.i.i = load i64, ptr %.sroa.552.0..sroa_idx.i.i, align 8, !noalias !8196 ; 2 uses
  br i1 %i.cz, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exceptions_0Bb_.exit.thread.i, label %switch.lookup

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exceptions_0Bb_.exit.thread.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8196
  store ptr %.sroa.050.0.copyload.i.i, ptr %i.b, align 8, !noalias !8196
  store i64 %.sroa.451.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !8196
  store i64 %.sroa.552.0.copyload.i.i, ptr %.sroa.546.0..sroa_idx.i.i, align 8, !noalias !8196
  %i.da = invoke noundef nonnull ptr @_RNvXs_NtCsiXichZnxgbf_6anyhow5errorNtB6_5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCsEhZmuQNqkz_11ruff_linter8importer15ResolutionErrorE4fromB1n_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc21 unwind label %.body29.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exceptions_0Bb_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8196
  br label %bb.am

switch.lookup:                                    ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false), !noalias !8196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8196
  store i64 %i.cy, ptr %i.f, align 8, !noalias !8196
  %i.db = load ptr, ptr %i.bw, align 8, !noalias !8196, !nonnull !13, !noundef !13 ; 3 uses
  %i.dc = load i32, ptr %i.db, align 8, !range !18, !noalias !8196, !noundef !13 ; 2 uses
  %i.dd = zext nneg i32 %i.dc to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib5rules12builtin_open12builtin_opens0_0s_0INtB7_5FnMutTTjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordEEE8call_mutB12_.844, i64 %i.dd
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.de = zext nneg i32 %i.dc to i64
  %switch.gep117 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib5rules12builtin_open12builtin_opens0_0s_0INtB7_5FnMutTTjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordEEE8call_mutB12_.845, i64 %i.de
  %switch.load118 = load i8, ptr %switch.gep117, align 1
  %switch.ext119 = zext i8 %switch.load118 to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %switch.ext
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 %switch.ext119
  %.sroa.0.0.i.i.i = load i32, ptr %i.df, align 4, !noalias !8196, !noundef !13
  %.sroa.34.0.i.i.i = load i32, ptr %i.dg, align 4, !noalias !8196, !noundef !13
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, i32 noundef %.sroa.0.0.i.i.i, i32 noundef %.sroa.34.0.i.i.i)
          to label %bb.w unwind label %bb.aj, !noalias !8196

.body.thread57.i.i:                               ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, %bb.ae, %bb.w
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.w:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8196
  store ptr %.sroa.050.0.copyload.i.i, ptr %i.e, align 8, !noalias !8196
  store i64 %.sroa.451.0.copyload.i.i, ptr %.sroa.523.0..sroa_idx24.i.i, align 8, !noalias !8196
  store i64 %.sroa.552.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx26.i.i, align 8, !noalias !8196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !8196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8196
  %i.dh = load ptr, ptr %i.bw, align 8, !noalias !8196, !nonnull !13, !noundef !13
  invoke void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.aa, ptr noundef nonnull align 8 %i.dh)
          to label %bb.x unwind label %.body.thread57.i.i, !noalias !8196

bb.x:                                             ; preds = %bb.w
  %i.di = load i64, ptr %i.c, align 8, !range !19, !noalias !8196, !noundef !13
  %.not.i.i = icmp eq i64 %i.di, 2
  br i1 %.not.i.i, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exceptions_0Bb_.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false), !noalias !8196
  call void @llvm.experimental.noalias.scope.decl(metadata !8198)
  %i.dj = load i64, ptr %i.a, align 8, !range !31, !alias.scope !8198, !noalias !8196, !noundef !13 ; 2 uses
  %i.dk = trunc nuw i64 %i.dj to i1               ; 5 uses
  %i.dl = load ptr, ptr %i.al, align 8, !alias.scope !8198, !noalias !8196, !nonnull !13 ; 4 uses
  %i.dm = load i64, ptr %i.am, align 8, !alias.scope !8198, !noalias !8196
  %i.dn = load i32, ptr %i.an, align 8, !alias.scope !8198, !noalias !8196
  %i.do = zext i32 %i.dn to i64
  %.sroa.7.0.i.i.i = select i1 %i.dk, i64 %i.dm, i64 %i.do
  %.sroa.01.0.i.i.i = select i1 %i.dk, ptr %i.dl, ptr %i.al
  %i.dp = icmp eq i64 %.sroa.7.0.i.i.i, 2
  br i1 %i.dp, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.sroa.01.0.i.sroa.sel.i.i = select i1 %i.dk, ptr %.sroa.gep.i.i, ptr %i.am
  %i.dq = load i64, ptr %.sroa.01.0.i.sroa.sel.i.i, align 8, !noalias !8196, !noundef !13
  %i.dr = icmp eq i64 %i.dq, 7
  br i1 %i.dr, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.ds = load ptr, ptr %.sroa.01.0.i.i.i, align 8, !noalias !8196, !nonnull !13, !noundef !13 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 1
  %i.du = xor i32 %i.dt, 1734831980
  %i.dv = getelementptr i8, ptr %i.ds, i64 3
  %i.dw = load i32, ptr %i.dv, align 1
  %i.dx = xor i32 %i.dw, 1735289191
  %i.dy = or i32 %i.du, %i.dx
  %i.dz = icmp ne i32 %i.dy, 0
  %i.ea = zext i1 %i.dz to i32
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %.sroa.gep29.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %.sroa.01.0.i.sroa.sel31.i.i = select i1 %i.dk, ptr %.sroa.gep29.i.i, ptr %.sroa.gep30.i.i
  %i.ec = load i64, ptr %.sroa.01.0.i.sroa.sel31.i.i, align 8, !noalias !8196, !noundef !13
  %i.ed = icmp eq i64 %i.ec, 5
  br i1 %i.ed, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.sroa.gep32.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %.sroa.01.0.i.sroa.sel34.i.i = select i1 %i.dk, ptr %.sroa.gep32.i.i, ptr %.sroa.gep33.i.i
  %i.ee = load ptr, ptr %.sroa.01.0.i.sroa.sel34.i.i, align 8, !noalias !8196, !nonnull !13, !noundef !13 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 1
  %i.eg = xor i32 %i.ef, 1869771365
  %i.eh = getelementptr i8, ptr %i.ee, i64 4
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = zext i8 %i.ei to i32
  %i.ek = xor i32 %i.ej, 114
  %i.el = or i32 %i.eg, %i.ek
  %i.em = icmp ne i32 %i.el, 0
  %i.en = zext i1 %i.em to i32
  %i.eo = icmp eq i32 %i.en, 0
  %i.ep = select i1 %i.eo, i8 2, i8 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y
  %.sroa.0.0.i16.i.i = phi i8 [ 1, %bb.y ], [ 1, %bb.z ], [ 1, %bb.aa ], [ %i.ep, %bb.ac ], [ 1, %bb.ab ]
  %i.eq = icmp eq i64 %i.dj, 0
  br i1 %i.eq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.an)
          to label %_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exceptions_00Bd_.exit.i.i unwind label %.body.thread57.i.i, !noalias !8196

bb.af:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i unwind label %bb.ag, !noalias !8196

bb.ag:                                            ; preds = %bb.af
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body.thread.i.i unwind label %bb.ah, !noalias !8196

bb.ah:                                            ; preds = %bb.ag
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54, !noalias !8196
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i: ; preds = %bb.af
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exceptions_00Bd_.exit.i.i unwind label %.body.thread57.i.i, !noalias !8196

_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exceptions_00Bd_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8196
  br label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exceptions_0Bb_.exit.i

.body.thread.i.i:                                 ; preds = %bb.ag, %.body.thread57.i.i
  %eh.lpad-body56.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.body.thread57.i.i ], [ %i.er, %bb.ag ] ; 2 uses
  %.val14.i.i = load ptr, ptr %i.d, align 8, !noalias !8196 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val15.i.i = load i64, ptr %i.et, align 8, !noalias !8196 ; 2 uses
  %i.eu = icmp eq ptr %.val14.i.i, null
  %i.ev = icmp eq i64 %.val15.i.i, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.eu, i1 true, i1 %i.ev
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ai, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %.body.thread.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14.i.i, i64 noundef %.val15.i.i, i64 noundef 1) #55, !noalias !8196
  br label %bb.ai

bb.ai:                                            ; preds = %.split.i.i.i.i, %.body.thread.i.i
  %i.ew = icmp eq ptr %.sroa.050.0.copyload.i.i, null
  %i.ex = icmp eq i64 %.sroa.451.0.copyload.i.i, 0
  %or.cond.i.i.i.i = select i1 %i.ew, i1 true, i1 %i.ex
  br i1 %or.cond.i.i.i.i, label %.body22, label %.critedge.sink.split.i.i

.critedge.sink.split.i.i:                         ; preds = %bb.aj, %bb.ai
  %.pn62.ph.i.i = phi { ptr, i32 } [ %i.ey, %bb.aj ], [ %eh.lpad-body56.i.i, %bb.ai ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.050.0.copyload.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.050.0.copyload.i.i, i64 noundef %.sroa.451.0.copyload.i.i, i64 noundef 1) #55, !noalias !8196
  br label %.body22

bb.aj:                                            ; preds = %switch.lookup
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ez = icmp eq ptr %.sroa.050.0.copyload.i.i, null
  %i.fa = icmp eq i64 %.sroa.451.0.copyload.i.i, 0
  %or.cond.i.i18.i.i = select i1 %i.ez, i1 true, i1 %i.fa
  br i1 %or.cond.i.i18.i.i, label %.body22, label %.critedge.sink.split.i.i

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exceptions_0Bb_.exit.i: ; preds = %_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exceptions_00Bd_.exit.i.i, %bb.x
  %.sroa.01.0.i.i = phi i8 [ %.sroa.0.0.i16.i.i, %_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exceptions_00Bd_.exit.i.i ], [ 1, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8196
  invoke void @_RINvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB3_3Fix16applicable_editsANtNtB5_4edit4Editj1_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i8 noundef %.sroa.01.0.i.i)
          to label %.noexc24 unwind label %.body29.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exceptions_0Bb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8196
  %.pr.i = load i64, ptr %i.o, align 8, !noalias !8195
  %i.fb = icmp eq i64 %.pr.i, -1
  br i1 %i.fb, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exceptions_0Bb_.exit._crit_edge.i, label %bb.ak

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exceptions_0Bb_.exit._crit_edge.i: ; preds = %.noexc24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !8195
  br label %bb.am

bb.ak:                                            ; preds = %.noexc24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !noalias !8195
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.n)
          to label %.noexc25 unwind label %.body29.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8195
  br label %_RINvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_15DiagnosticGuard11try_set_fixNCNvNtNtNtNtBa_5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exceptions_0EBa_.exit

bb.al:                                            ; preds = %bb.bg, %bb.an
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCsiXichZnxgbf_6anyhow5errorNtB7_5ErrorNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %.body22 unwind label %bb.bi

bb.am:                                            ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exceptions_0Bb_.exit._crit_edge.i, %.noexc21
  %i.fd = phi ptr [ %.pre.i, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exceptions_0Bb_.exit._crit_edge.i ], [ %i.da, %.noexc21 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8195
  store ptr %i.fd, ptr %i.m, align 8, !noalias !8195
  %i.fe = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !8195 ; 2 uses
  %i.ff = icmp ult i64 %i.fe, 6
  call void @llvm.assume(i1 %i.ff)
  %i.fg = icmp samesign ugt i64 %i.fe, 3
  br i1 %i.fg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8195
  %i.fh = invoke noundef nonnull align 8 ptr @_RNvXsc_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v)
          to label %bb.ap unwind label %bb.al

bb.ao:                                            ; preds = %bb.bh, %bb.am
  invoke void @_RNvXs4_NtCsiXichZnxgbf_6anyhow5errorNtB7_5ErrorNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %.noexc26 unwind label %.body29.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8195
  br label %_RINvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_15DiagnosticGuard11try_set_fixNCNvNtNtNtNtBa_5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exceptions_0EBa_.exit

bb.ap:                                            ; preds = %bb.an
  %.val.i = load ptr, ptr %i.fh, align 8, !nonnull !13, !noundef !13 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.fi, align 8
  switch i64 %.sroa.01.0.copyload.i.i, label %bb.aq [
    i64 0, label %bb.bg
    i64 1, label %bb.ar
    i64 2, label %bb.as
    i64 3, label %bb.at
    i64 4, label %bb.au
    i64 5, label %bb.av
    i64 6, label %bb.aw
    i64 7, label %bb.ax
    i64 8, label %bb.ay
    i64 9, label %bb.az
    i64 10, label %bb.ba
    i64 11, label %bb.bb
    i64 12, label %bb.bc
    i64 13, label %bb.bd
    i64 14, label %bb.be
    i64 15, label %bb.bf
  ]

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ap
  br label %bb.bg

bb.as:                                            ; preds = %bb.ap
  br label %bb.bg

bb.at:                                            ; preds = %bb.ap
  %.sroa.5.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i10.i, align 8
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i11.i, align 8, !nonnull !13, !noundef !13
  br label %bb.bg

bb.au:                                            ; preds = %bb.ap
  br label %bb.bg

bb.av:                                            ; preds = %bb.ap
  br label %bb.bg

bb.aw:                                            ; preds = %bb.ap
  br label %bb.bg

bb.ax:                                            ; preds = %bb.ap
  br label %bb.bg

bb.ay:                                            ; preds = %bb.ap
  br label %bb.bg

bb.az:                                            ; preds = %bb.ap
  br label %bb.bg

bb.ba:                                            ; preds = %bb.ap
  br label %bb.bg

bb.bb:                                            ; preds = %bb.ap
  br label %bb.bg

bb.bc:                                            ; preds = %bb.ap
  br label %bb.bg

bb.bd:                                            ; preds = %bb.ap
  br label %bb.bg

bb.be:                                            ; preds = %bb.ap
  br label %bb.bg

bb.bf:                                            ; preds = %bb.ap
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ap
  %.sroa.17.0.i.i = phi i64 [ 14, %bb.bf ], [ 2, %bb.ar ], [ 14, %bb.as ], [ %.sroa.5.0.copyload.i.i, %bb.at ], [ 13, %bb.au ], [ 12, %bb.av ], [ 12, %bb.aw ], [ 13, %bb.ax ], [ 29, %bb.ay ], [ 25, %bb.az ], [ 18, %bb.ba ], [ 26, %bb.bb ], [ 11, %bb.bc ], [ 18, %bb.bd ], [ 15, %bb.be ], [ 5, %bb.ap ]
  %.sroa.0.0.i.i = phi ptr [ @232, %bb.bf ], [ @209, %bb.ar ], [ @220, %bb.as ], [ %.sroa.4.0.copyload.i.i, %bb.at ], [ @221, %bb.au ], [ @222, %bb.av ], [ @223, %bb.aw ], [ @224, %bb.ax ], [ @225, %bb.ay ], [ @226, %bb.az ], [ @227, %bb.ba ], [ @228, %bb.bb ], [ @229, %bb.bc ], [ @230, %bb.bd ], [ @231, %bb.be ], [ @219, %bb.ap ]
  store ptr %.sroa.0.0.i.i, ptr %i.l, align 8, !noalias !8195
  store i64 %.sroa.17.0.i.i, ptr %i.ao, align 8, !noalias !8195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8195
  store ptr %i.l, ptr %i.k, align 8, !noalias !8195
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !8195
  store ptr %i.m, ptr %i.ap, align 8, !noalias !8195
  store ptr @_RNvXs2_NtCsiXichZnxgbf_6anyhow5errorNtB7_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !8195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8195
  store ptr @22, ptr %i.j, align 8, !noalias !8195
  store i64 26, ptr %i.aq, align 8, !noalias !8195
  store ptr @22, ptr %i.ar, align 8, !noalias !8195
  store i64 26, ptr %i.as, align 8, !noalias !8195
  store ptr @21, ptr %i.at, align 8, !noalias !8195
  invoke void @_RINvNtCsdxG2AMukdbL_3log13___private_api3loguNtB2_12GlobalLoggerECsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull @19, ptr noundef nonnull %i.k, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j)
          to label %bb.bh unwind label %bb.al

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8195
  br label %bb.ao

bb.bi:                                            ; preds = %bb.al
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54
  unreachable

_RINvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_15DiagnosticGuard11try_set_fixNCNvNtNtNtNtBa_5rules11tryceratops5rules26error_instead_of_exception26error_instead_of_exceptions_0EBa_.exit: ; preds = %.noexc25, %.noexc26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !8195
  br label %bb.l

.body22:                                          ; preds = %.body29.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %.body29.thread, %bb.al, %bb.aj, %.critedge.sink.split.i.i, %bb.ai
end_hunk_2
