Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/unsafe_libyaml-c83d027d29d4f62c.unsafe_libyaml.d8757c7f39422774-cgu.0?download=true
inline.NumInlined: 729
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@"_ZN53_$LT$i32$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h1e4244e2435ea463E":bb.a
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !3

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i32, i1 } %i.a, 0
  ret i32 %i.c

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h74e3088bddfd46d3E()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E"(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !3

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i1 } %i.a, 0
  ret i64 %i.c

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E"(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, %0                           ; 2 uses
  %i.b = icmp ult i32 %i.a, %0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !3

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE"(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, %0                           ; 2 uses
  %i.b = icmp ult i64 %i.a, %0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !3

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h2b0fe3050e347818E"(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !3

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i1 } %i.a, 0
  ret i64 %i.c

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17hc4dd84d397823d12E()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E"(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, %0                           ; 2 uses
  %i.b = icmp ult i64 %i.a, %0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !3

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$unsafe_libyaml..fmt..WriteToPtr$u20$as$u20$core..fmt..Write$GT$9write_str17h823ed6ac062738fdE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !5   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr nonnull align 1 %1, i64 %2, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  store ptr %i.b, ptr %0, align 8
  ret i1 false
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @"_ZN78_$LT$unsafe_libyaml..ops..die..PanicAgain$u20$as$u20$core..ops..drop..Drop$GT$4drop17h477fabff473d15ceE"(ptr noalias nofree noundef nonnull readnone align 1 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @31, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #20
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @"_ZN87_$LT$unsafe_libyaml..externs..__assert_fail..Abort$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d06f22617d570ebE"(ptr noalias nofree noundef nonnull readnone align 1 captures(none) %0) unnamed_addr #2 {
bb.a:
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @191, i64 noundef 14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #20
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nonlazybind
declare i32 @rust_eh_personality(...) unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h304ef928d833cc67E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #13

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #14

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nonlazybind "target-cpu"="x86-64" }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #11 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { noreturn }
attributes #21 = { nounwind }
attributes #22 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!3 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!4 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!5 = !{}
!6 = !{i32 0, i32 11}
!7 = !{i32 0, i32 22}
!8 = !{i32 0, i32 4}
!9 = !{i8 0, i8 2}
!10 = !{!11, !13, !14, !16}
!11 = distinct !{!11, !12, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hde831491e87fd175E: argument 0"}
!12 = distinct !{!12, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hde831491e87fd175E"}
!13 = distinct !{!13, !12, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hde831491e87fd175E: argument 1"}
!14 = distinct !{!14, !15, !"_ZN14unsafe_libyaml3fmt10WriteToPtr9write_fmt17h5c53879d4f6985d2E: argument 0"}
!15 = distinct !{!15, !"_ZN14unsafe_libyaml3fmt10WriteToPtr9write_fmt17h5c53879d4f6985d2E"}
!16 = distinct !{!16, !15, !"_ZN14unsafe_libyaml3fmt10WriteToPtr9write_fmt17h5c53879d4f6985d2E: argument 1"}
!17 = !{!11, !14}
!18 = !{!13, !16}
!19 = distinct !{null}
!20 = !{i32 0, i32 6}
!21 = !{i32 0, i32 3}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = !{i32 0, i32 8}
!25 = !{i32 0, i32 24}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!28 = distinct !{!28, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!31 = distinct !{!31, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!34 = distinct !{!34, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!37 = distinct !{!37, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!40 = distinct !{!40, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!43 = distinct !{!43, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!46 = distinct !{!46, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!49 = distinct !{!49, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!52 = distinct !{!52, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!55 = distinct !{!55, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!58 = distinct !{!58, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{i32 0, i32 18}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN14unsafe_libyaml7scanner28yaml_parser_scan_uri_escapes17hd766e041e3b7f25dE: argument 0"}
!64 = distinct !{!64, !"_ZN14unsafe_libyaml7scanner28yaml_parser_scan_uri_escapes17hd766e041e3b7f25dE"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN14unsafe_libyaml7scanner31yaml_parser_scan_directive_name17hc85103571f9a2e89E: argument 0"}
!67 = distinct !{!67, !"_ZN14unsafe_libyaml7scanner31yaml_parser_scan_directive_name17hc85103571f9a2e89E"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZN14unsafe_libyaml7scanner40yaml_parser_scan_version_directive_value17h58cfe3db9dd1fea3E: argument 0"}
!70 = distinct !{!70, !"_ZN14unsafe_libyaml7scanner40yaml_parser_scan_version_directive_value17h58cfe3db9dd1fea3E"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN14unsafe_libyaml7scanner36yaml_parser_scan_tag_directive_value17h0c4076d3ff5a7a26E: argument 0"}
!73 = distinct !{!73, !"_ZN14unsafe_libyaml7scanner36yaml_parser_scan_tag_directive_value17h0c4076d3ff5a7a26E"}
!74 = !{i64 1}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!77 = distinct !{!77, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZN68_$LT$unsafe_libyaml..fmt..WriteToPtr$u20$as$u20$core..fmt..Write$GT$9write_str17h823ed6ac062738fdE: argument 0"}
!80 = distinct !{!80, !"_ZN68_$LT$unsafe_libyaml..fmt..WriteToPtr$u20$as$u20$core..fmt..Write$GT$9write_str17h823ed6ac062738fdE"}
!81 = !{!82}
!82 = distinct !{!82, !80, !"_ZN68_$LT$unsafe_libyaml..fmt..WriteToPtr$u20$as$u20$core..fmt..Write$GT$9write_str17h823ed6ac062738fdE: argument 1"}
!83 = !{!84, !86}
!84 = distinct !{!84, !85, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hde831491e87fd175E: argument 0"}
!85 = distinct !{!85, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hde831491e87fd175E"}
!86 = distinct !{!86, !85, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hde831491e87fd175E: argument 1"}
!87 = !{!84}
!88 = !{!86}
end_hunk_0
