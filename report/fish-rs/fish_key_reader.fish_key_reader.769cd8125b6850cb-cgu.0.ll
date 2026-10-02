Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_key_reader.fish_key_reader.769cd8125b6850cb-cgu.0?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startuE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_once6vtableCsabn5LYsHvcZ_15fish_key_reader, ptr @_RNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startuE0Csabn5LYsHvcZ_15fish_key_reader, ptr @_RNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startuE0Csabn5LYsHvcZ_15fish_key_reader }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsaL1QbXo9JQH_3std2rt10lang_startuECsabn5LYsHvcZ_15fish_key_reader(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_RNvNtCsaL1QbXo9JQH_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, i64 noundef %1, ptr noundef %2, i8 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsabn5LYsHvcZ_15fish_key_reader(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  tail call void %0(), !inline_history !6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !7
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startuE0Csabn5LYsHvcZ_15fish_key_reader(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsabn5LYsHvcZ_15fish_key_reader(ptr noundef nonnull %i.a) #7
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startuE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_once6vtableCsabn5LYsHvcZ_15fish_key_reader(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsabn5LYsHvcZ_15fish_key_reader(ptr noundef nonnull readonly %i.a) #7, !noalias !13
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCsabn5LYsHvcZ_15fish_key_reader4main() unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader4main()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtCsaL1QbXo9JQH_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader4main() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCsabn5LYsHvcZ_15fish_key_reader4main, ptr %i.a, align 8
  %i.c = call noundef i64 @_RNvNtCsaL1QbXo9JQH_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, i64 noundef %i.b, ptr noundef %1, i8 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind }
attributes #7 = { noinline }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!5 = !{}
!6 = distinct !{null}
!7 = !{i64 3286478910893286}
!11 = distinct !{!11, i1 false, !"_RNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startuE0Csabn5LYsHvcZ_15fish_key_reader"}
!12 = distinct !{!12, !11, !"_RNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startuE0Csabn5LYsHvcZ_15fish_key_reader: argument 0"}
!13 = !{!12}
end_hunk_0
