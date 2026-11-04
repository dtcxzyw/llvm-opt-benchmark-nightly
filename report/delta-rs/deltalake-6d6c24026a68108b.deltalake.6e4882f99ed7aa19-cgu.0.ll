Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake-6d6c24026a68108b.deltalake.6e4882f99ed7aa19-cgu.0?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNvNtCs9t2b5OKaLX1_9deltalake28___deltalake_auto_register_s38register1f = constant ptr @_RNvNvNvNtCs9t2b5OKaLX1_9deltalake28___deltalake_auto_register_s38register1f1f, section ".init_array", align 8
@_RNvNvNtCs9t2b5OKaLX1_9deltalake29___deltalake_auto_register_gcs8register1f = constant ptr @_RNvNvNvNtCs9t2b5OKaLX1_9deltalake29___deltalake_auto_register_gcs8register1f1f, section ".init_array", align 8
@_RNvNvNtCs9t2b5OKaLX1_9deltalake30___deltalake_auto_register_hdfs8register1f = constant ptr @_RNvNvNvNtCs9t2b5OKaLX1_9deltalake30___deltalake_auto_register_hdfs8register1f1f, section ".init_array", align 8
@_RNvNvNtCs9t2b5OKaLX1_9deltalake31___deltalake_auto_register_azure8register1f = constant ptr @_RNvNvNvNtCs9t2b5OKaLX1_9deltalake31___deltalake_auto_register_azure8register1f1f, section ".init_array", align 8
@_RNvNvNtCs9t2b5OKaLX1_9deltalake31___deltalake_auto_register_unity8register1f = constant ptr @_RNvNvNvNtCs9t2b5OKaLX1_9deltalake31___deltalake_auto_register_unity8register1f1f, section ".init_array", align 8
@_RNvNvNtCs9t2b5OKaLX1_9deltalake32___deltalake_auto_register_lakefs8register1f = constant ptr @_RNvNvNvNtCs9t2b5OKaLX1_9deltalake32___deltalake_auto_register_lakefs8register1f1f, section ".init_array", align 8
@llvm.used = appending global [6 x ptr] [ptr @_RNvNvNtCs9t2b5OKaLX1_9deltalake28___deltalake_auto_register_s38register1f, ptr @_RNvNvNtCs9t2b5OKaLX1_9deltalake29___deltalake_auto_register_gcs8register1f, ptr @_RNvNvNtCs9t2b5OKaLX1_9deltalake30___deltalake_auto_register_hdfs8register1f, ptr @_RNvNvNtCs9t2b5OKaLX1_9deltalake31___deltalake_auto_register_azure8register1f, ptr @_RNvNvNtCs9t2b5OKaLX1_9deltalake31___deltalake_auto_register_unity8register1f, ptr @_RNvNvNtCs9t2b5OKaLX1_9deltalake32___deltalake_auto_register_lakefs8register1f], section "llvm.metadata"

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNvNtCs9t2b5OKaLX1_9deltalake28___deltalake_auto_register_s38register1f1f() unnamed_addr #0 section ".text.startup" personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775808, ptr %i.a, align 8
  invoke void @_RNvCs9rVkZwOUgsI_13deltalake_aws17register_handlers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #4
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNvNtCs9t2b5OKaLX1_9deltalake29___deltalake_auto_register_gcs8register1f1f() unnamed_addr #0 section ".text.startup" personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775808, ptr %i.a, align 8
  invoke void @_RNvCs62u4JVtZyFF_13deltalake_gcp17register_handlers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #4
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNvNtCs9t2b5OKaLX1_9deltalake30___deltalake_auto_register_hdfs8register1f1f() unnamed_addr #0 section ".text.startup" personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775808, ptr %i.a, align 8
  invoke void @_RNvCs6KaIMXx2hZw_14deltalake_hdfs17register_handlers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #4
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNvNtCs9t2b5OKaLX1_9deltalake31___deltalake_auto_register_azure8register1f1f() unnamed_addr #0 section ".text.startup" personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775808, ptr %i.a, align 8
  invoke void @_RNvCsa5Qem16B4JI_15deltalake_azure17register_handlers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #4
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNvNtCs9t2b5OKaLX1_9deltalake31___deltalake_auto_register_unity8register1f1f() unnamed_addr #0 section ".text.startup" personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775808, ptr %i.a, align 8
  invoke void @_RNvCsgO8S5jLFugx_23deltalake_catalog_unity17register_handlers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #4
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNvNtCs9t2b5OKaLX1_9deltalake32___deltalake_auto_register_lakefs8register1f1f() unnamed_addr #0 section ".text.startup" personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775808, ptr %i.a, align 8
  invoke void @_RNvCsj34PGqTgg0L_16deltalake_lakefs17register_handlers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #4
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs9rVkZwOUgsI_13deltalake_aws17register_handlers(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs62u4JVtZyFF_13deltalake_gcp17register_handlers(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs6KaIMXx2hZw_14deltalake_hdfs17register_handlers(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvCsa5Qem16B4JI_15deltalake_azure17register_handlers(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvCsgO8S5jLFugx_23deltalake_catalog_unity17register_handlers(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvCsj34PGqTgg0L_16deltalake_lakefs17register_handlers(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() unnamed_addr #3

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.96.0-nightly (1d8897a4e 2026-03-13)"}
end_hunk_0
