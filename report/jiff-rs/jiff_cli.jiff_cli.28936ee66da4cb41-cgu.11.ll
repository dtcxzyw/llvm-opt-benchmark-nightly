Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.11?download=true
inline.NumInlined: 118
inline.NumDeleted: 41
begin_hunk_0_@_RNvXs_NtCs3tZ2SXJA1qv_8jiff_cli6loggerNtB4_6LoggerNtCs609xDM2Krl3_3log3Log3log:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.o, ptr %i.ap, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs3tZ2SXJA1qv_8jiff_cli, ptr %.sroa.423.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.n, ptr %i.aq, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.427.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr %i.k, ptr %i.ar, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtB6_9ArgumentsNtB6_7Display3fmtCs3tZ2SXJA1qv_8jiff_cli, ptr %.sroa.431.0..sroa_idx, align 8
  call void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio7__eprint(ptr noundef nonnull @109, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %.sroa.6.sroa.0.0.copyload, ptr %i.i, align 8, !captures !240
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.6.sroa.5.0.copyload, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load i64, ptr %i.at, align 8, !range !239, !noundef !7
  store i64 %i.au, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !7, !noundef !7
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !7
  store ptr %i.aw, ptr %i.g, align 8, !captures !240
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.ay, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.ba, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1_Cs609xDM2Krl3_3logNtB5_5LevelNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.435.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.g, ptr %i.bb, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs3tZ2SXJA1qv_8jiff_cli, ptr %.sroa.439.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.i, ptr %i.bc, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs3tZ2SXJA1qv_8jiff_cli, ptr %.sroa.443.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.f, ptr %i.bd, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtB6_9ArgumentsNtB6_7Display3fmtCs3tZ2SXJA1qv_8jiff_cli, ptr %.sroa.447.0..sroa_idx, align 8
  call void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio7__eprint(ptr noundef nonnull @108, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCs3tZ2SXJA1qv_8jiff_cli6loggerNtB4_6LoggerNtCs609xDM2Krl3_3log3Log5flush(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs3tZ2SXJA1qv_8jiff_cli6loggerNtB4_6LoggerNtCs609xDM2Krl3_3log3Log7enabled(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  ret i1 true
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCs8WPnInWCYsb_6anyhow5errorNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtCs609xDM2Krl3_3log14SetLoggerErrorE4fromCs3tZ2SXJA1qv_8jiff_cli() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = call noundef align 8 ptr @_RNvNtCs8WPnInWCYsb_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @40)
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.b, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMs2_NtCsaL1QbXo9JQH_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = call fastcc noundef nonnull ptr @_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error9constructNtCs609xDM2Krl3_3log14SetLoggerErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCs8WPnInWCYsb_6anyhow5errorNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtCsgWT32ugvpwR_6lexopt5ErrorE4fromCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = invoke noundef align 8 ptr @_RNvNtCs8WPnInWCYsb_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @42)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.c, align 8
  br label %_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error18construct_from_stdNtCsgWT32ugvpwR_6lexopt5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs2_NtCsaL1QbXo9JQH_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error18construct_from_stdNtCsgWT32ugvpwR_6lexopt5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit

_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error18construct_from_stdNtCsgWT32ugvpwR_6lexopt5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %i.e = call fastcc noundef nonnull ptr @_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error9constructNtCsgWT32ugvpwR_6lexopt5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) #18
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCs8WPnInWCYsb_6anyhow5errorNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = invoke noundef align 8 ptr @_RNvNtCs8WPnInWCYsb_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @44)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.b, align 8
  br label %_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCsaL1QbXo9JQH_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit

_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error18construct_from_stdNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.e, %bb.c
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.f = call fastcc noundef nonnull ptr @_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error9constructNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  ret ptr %i.f

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #18
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtB7_5ErrorENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtB7_5ErrorENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @110, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs35zZu0fmp16_7walkdir5error5ErrorENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs35zZu0fmp16_7walkdir5error5ErrorENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @111, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsa9sSWSfjDbm_4jiff5error5ErrorENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsa9sSWSfjDbm_4jiff5error5ErrorENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @112, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std4path16StripPrefixErrorENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std4path16StripPrefixErrorENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @113, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorENtNtB1u_5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorENtNtB1u_5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @114, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core3num5error15TryFromIntErrorENtNtB1u_5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core3num5error15TryFromIntErrorENtNtB1u_5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @115, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error12ContextErrorReNtCsgWT32ugvpwR_6lexopt5ErrorENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error12ContextErrorReNtCsgWT32ugvpwR_6lexopt5ErrorENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @116, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error12ContextErrorReNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorENtNtBU_5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error12ContextErrorReNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorENtNtBU_5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @117, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtB7_5ErrorEENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtB7_5ErrorEENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @118, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs35zZu0fmp16_7walkdir5error5ErrorEENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs35zZu0fmp16_7walkdir5error5ErrorEENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @119, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @120, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std4path16StripPrefixErrorEENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std4path16StripPrefixErrorEENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @121, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorEENtNtB1K_5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorEENtNtB1K_5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @122, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core3num5error15TryFromIntErrorEENtNtB1K_5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core3num5error15TryFromIntErrorEENtNtB1K_5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @123, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtCsgWT32ugvpwR_6lexopt5ErrorEENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtCsgWT32ugvpwR_6lexopt5ErrorEENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @124, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorEENtNtB1a_5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorEENtNtB1a_5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @125, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtNtB7_7wrapper12DisplayErrorNtNtCs1xwejQucwHj_5alloc6string6StringEENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtNtB7_7wrapper12DisplayErrorNtNtCs1xwejQucwHj_5alloc6string6StringEENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @126, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtNtB7_7wrapper12DisplayErrorReEENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtNtB7_7wrapper12DisplayErrorReEENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @127, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCs1xwejQucwHj_5alloc6string6StringEENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCs1xwejQucwHj_5alloc6string6StringEENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @128, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @129, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplNtCs609xDM2Krl3_3log14SetLoggerErrorENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplNtCs609xDM2Krl3_3log14SetLoggerErrorENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @130, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplNtCsgWT32ugvpwR_6lexopt5ErrorENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplNtCsgWT32ugvpwR_6lexopt5ErrorENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @131, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorENtNtBO_5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow5error9ErrorImplNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorENtNtBO_5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @132, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow7wrapper12DisplayErrorNtNtCs1xwejQucwHj_5alloc6string6StringENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCs8WPnInWCYsb_6anyhow7wrapper12DisplayErrorNtNtCs1xwejQucwHj_5alloc6string6StringENtNtCs3oUPovFnLWP_4core5error5Error6sourceCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow7wrapper12DisplayErrorNtNtCs1xwejQucwHj_5alloc6string6StringENtNtCs3oUPovFnLWP_4core5error5Error7provideCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow7wrapper12DisplayErrorNtNtCs1xwejQucwHj_5alloc6string6StringENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @133, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow7wrapper12DisplayErrorReENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCs8WPnInWCYsb_6anyhow7wrapper12DisplayErrorReENtNtCs3oUPovFnLWP_4core5error5Error6sourceCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow7wrapper12DisplayErrorReENtNtCs3oUPovFnLWP_4core5error5Error7provideCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow7wrapper12DisplayErrorReENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @134, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow7wrapper12MessageErrorNtNtCs1xwejQucwHj_5alloc6string6StringENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCs8WPnInWCYsb_6anyhow7wrapper12MessageErrorNtNtCs1xwejQucwHj_5alloc6string6StringENtNtCs3oUPovFnLWP_4core5error5Error6sourceCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow7wrapper12MessageErrorNtNtCs1xwejQucwHj_5alloc6string6StringENtNtCs3oUPovFnLWP_4core5error5Error7provideCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow7wrapper12MessageErrorNtNtCs1xwejQucwHj_5alloc6string6StringENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @135, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCs8WPnInWCYsb_6anyhow7wrapper12MessageErrorReENtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCs8WPnInWCYsb_6anyhow7wrapper12MessageErrorReENtNtCs3oUPovFnLWP_4core5error5Error6sourceCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow7wrapper12MessageErrorReENtNtCs3oUPovFnLWP_4core5error5Error7provideCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs8WPnInWCYsb_6anyhow7wrapper12MessageErrorReENtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @136, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtBb_3fmt5Write10write_charCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !257
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !257
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !257
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !257
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !257
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !257
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !257
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !257
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !257
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !257
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !258, !noalias !259, !nonnull !7, !align !12, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.ad = load i64, ptr %i.ac, align 8, !range !8, !alias.scope !260, !noalias !261, !noundef !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !260, !noalias !261, !noundef !7 ; 4 uses
  %i.ag = icmp sgt i64 %i.af, -1
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = sub nsw i64 %i.ad, %i.af
  %i.ai = icmp ult i64 %.sroa.0.05.i, %i.ah
  br i1 %i.ai, label %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs3tZ2SXJA1qv_8jiff_cli.exit.thread.i, label %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs3tZ2SXJA1qv_8jiff_cli.exit.i, !prof !14

_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs3tZ2SXJA1qv_8jiff_cli.exit.thread.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !263, !noalias !264, !nonnull !7, !noundef !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.al, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.b, i64 range(i64 0, -9223372036854775808) %.sroa.0.05.i, i1 false), !noalias !265
  %i.am = add nuw i64 %i.af, %.sroa.0.05.i
  store i64 %i.am, ptr %i.ae, align 8, !alias.scope !263, !noalias !264
  br label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB8_3fmt5Write9write_strCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs3tZ2SXJA1qv_8jiff_cli.exit.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit
  %i.an = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.05.i) #20, !noalias !258 ; 3 uses
  %.not.not.i = icmp eq ptr %i.an, null
  br i1 %.not.not.i, label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB8_3fmt5Write9write_strCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.h

bb.h:                                             ; preds = %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs3tZ2SXJA1qv_8jiff_cli.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.ao, align 8, !alias.scope !258, !noalias !259, !noundef !7 ; 4 uses
  %i.ap = icmp eq ptr %.val.i, null
  br i1 %i.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3tZ2SXJA1qv_8jiff_cli.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !266
  %i.aq = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ar = and i64 %i.aq, 3
  switch i64 %i.ar, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit.i.i
    i64 1, label %bb.k
  ], !prof !10

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.as = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.at = and i64 %i.aq, 1095216660480
  %i.au = icmp ne i64 %i.at, 1095216660480
  call void @llvm.assume(i1 %i.as)
  call void @llvm.assume(i1 %i.au)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.av = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !alias.scope !267, !noalias !266
  store i8 3, ptr %i.a, align 8, !alias.scope !267, !noalias !266
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit.i.i unwind label %bb.l, !noalias !258

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !266
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3tZ2SXJA1qv_8jiff_cli.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup
  store ptr %i.an, ptr %i.ao, align 8, !alias.scope !258, !noalias !259
  resume { ptr, i32 } %i.ax

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3tZ2SXJA1qv_8jiff_cli.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit.i.i, %bb.h
  store ptr %i.an, ptr %i.ao, align 8, !alias.scope !258, !noalias !259
  br label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB8_3fmt5Write9write_strCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB8_3fmt5Write9write_strCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs3tZ2SXJA1qv_8jiff_cli.exit.thread.i, %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs3tZ2SXJA1qv_8jiff_cli.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3tZ2SXJA1qv_8jiff_cli.exit.i
  %.not8.i = phi i1 [ false, %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs3tZ2SXJA1qv_8jiff_cli.exit.thread.i ], [ false, %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs3tZ2SXJA1qv_8jiff_cli.exit.i ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3tZ2SXJA1qv_8jiff_cli.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not8.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtBb_3fmt5Write9write_fmtCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtB4_12SpecWriteFmt14spec_write_fmtCs3tZ2SXJA1qv_8jiff_cli.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @82, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !268
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCs609xDM2Krl3_3log14SetLoggerErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtCs609xDM2Krl3_3log14SetLoggerErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCs609xDM2Krl3_3log14SetLoggerErrorNtNtCs3oUPovFnLWP_4core5error5Error6sourceCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs609xDM2Krl3_3log14SetLoggerErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs609xDM2Krl3_3log14SetLoggerErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @75, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCsgWT32ugvpwR_6lexopt5ErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsgWT32ugvpwR_6lexopt5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCsgWT32ugvpwR_6lexopt5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @76, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs35zZu0fmp16_7walkdir5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs35zZu0fmp16_7walkdir5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @78, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsa9sSWSfjDbm_4jiff5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsa9sSWSfjDbm_4jiff5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6sourceCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsa9sSWSfjDbm_4jiff5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsa9sSWSfjDbm_4jiff5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @79, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsaL1QbXo9JQH_3std4path16StripPrefixErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsaL1QbXo9JQH_3std4path16StripPrefixErrorNtNtCs3oUPovFnLWP_4core5error5Error6sourceCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsaL1QbXo9JQH_3std4path16StripPrefixErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsaL1QbXo9JQH_3std4path16StripPrefixErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @80, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtNtB8_5error5Error7provideCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtNtB8_5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @77, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs3oUPovFnLWP_4core3num5error15TryFromIntErrorNtNtB8_5error5Error11descriptionCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs3oUPovFnLWP_4core3num5error15TryFromIntErrorNtNtB8_5error5Error6sourceCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs3oUPovFnLWP_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7provideCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs3oUPovFnLWP_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7type_idCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @81, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error11object_dropNtCs609xDM2Krl3_3log14SetLoggerErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs8WPnInWCYsb_6anyhow5error23object_reallocate_boxedNtCs609xDM2Krl3_3log14SetLoggerErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error17object_drop_frontNtCs609xDM2Krl3_3log14SetLoggerErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error11object_dropNtCsgWT32ugvpwR_6lexopt5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs8WPnInWCYsb_6anyhow5error23object_reallocate_boxedNtCsgWT32ugvpwR_6lexopt5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error17object_drop_frontNtCsgWT32ugvpwR_6lexopt5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error11object_dropNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs8WPnInWCYsb_6anyhow5error23object_reallocate_boxedNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error17object_drop_frontNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error11object_dropINtNtB4_7wrapper12MessageErrorNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs8WPnInWCYsb_6anyhow5error23object_reallocate_boxedINtNtB4_7wrapper12MessageErrorNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error17object_drop_frontNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error11object_dropINtNtB4_7wrapper12MessageErrorReEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs8WPnInWCYsb_6anyhow5error23object_reallocate_boxedINtNtB4_7wrapper12MessageErrorReEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error17object_drop_frontReECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error11object_dropINtB2_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs35zZu0fmp16_7walkdir5error5ErrorEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs8WPnInWCYsb_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs35zZu0fmp16_7walkdir5error5ErrorEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error17context_drop_restNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs35zZu0fmp16_7walkdir5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error11object_dropINtB2_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs8WPnInWCYsb_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error17context_drop_restNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsa9sSWSfjDbm_4jiff5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error11object_dropINtB2_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std4path16StripPrefixErrorEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs8WPnInWCYsb_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std4path16StripPrefixErrorEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error17context_drop_restNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std4path16StripPrefixErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error11object_dropINtB2_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs8WPnInWCYsb_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error17context_drop_restNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error11object_dropINtB2_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core3num5error15TryFromIntErrorEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs8WPnInWCYsb_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core3num5error15TryFromIntErrorEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error17context_drop_restNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtCs3oUPovFnLWP_4core3num5error15TryFromIntErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error11object_dropINtB2_12ContextErrorReNtCsgWT32ugvpwR_6lexopt5ErrorEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs8WPnInWCYsb_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtCsgWT32ugvpwR_6lexopt5ErrorEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error17context_drop_restReNtCsgWT32ugvpwR_6lexopt5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error11object_dropINtB2_12ContextErrorReNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs8WPnInWCYsb_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error17context_drop_restReNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error11object_dropINtNtB4_7wrapper12DisplayErrorNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs8WPnInWCYsb_6anyhow5error23object_reallocate_boxedINtNtB4_7wrapper12DisplayErrorNtNtCs1xwejQucwHj_5alloc6string6StringEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error11object_dropINtNtB4_7wrapper12DisplayErrorReEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs8WPnInWCYsb_6anyhow5error23object_reallocate_boxedINtNtB4_7wrapper12DisplayErrorReEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs2_NtCsaL1QbXo9JQH_3std9backtraceNtB5_9Backtrace7capture(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #9

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error11object_dropINtB2_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtB4_5ErrorEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs8WPnInWCYsb_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtB4_5ErrorEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCs8WPnInWCYsb_6anyhow5error22context_chain_downcastNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8WPnInWCYsb_6anyhow5error23context_chain_drop_restNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs8WPnInWCYsb_6anyhow5errorNtB7_5ErrorNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs0_NtCs8WPnInWCYsb_6anyhow7contextINtNtB7_5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtB7_5ErrorENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtCs8WPnInWCYsb_6anyhow7contextINtNtB7_5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtB7_5ErrorENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs3_NtCs8WPnInWCYsb_6anyhow7contextINtNtB7_5error12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringNtB7_5ErrorENtNtCs3oUPovFnLWP_4core5error5Error6sourceCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

end_hunk_0
