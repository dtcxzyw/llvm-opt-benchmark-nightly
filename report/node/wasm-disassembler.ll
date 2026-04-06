begin_hunk_0
inline.NumInlined: 6524
inline.NumDeleted: 2441
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
$_ZN2v88internal4wasm22MultiLineStringBuilder7WriteToERSobPSt6vectorIjSaIjEE = comdat any

$_ZN2v88internal4wasm24FunctionBodyDisassemblerD2Ev = comdat any

$_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE12DecodeLocalsEPKh = comdat any

end_hunk_1
begin_hunk_2
@.str.1216 = private unnamed_addr constant [28 x i8] c"invalid br_on_cast flags %u\00", align 1
@.str.1218 = private unnamed_addr constant [4 x i8] c"\E2\80\A6\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @_ZN2v88internal4wasmL26kCompilationPriorityStringE], section "llvm.metadata"
@switch.table._ZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEv.2 = private unnamed_addr constant [5 x ptr] [ptr @.str.951, ptr @.str.943, ptr @.str.946, ptr @.str.952, ptr @.str.953], align 8
@switch.table._ZN2v88internal4wasm17ModuleDecoderImpl28consume_base_type_definitionEbb = private unnamed_addr constant [4 x ptr] [ptr @.str.869, ptr @.str.868, ptr @.str.867, ptr @.str.866], align 8
@switch.table._ZN2v88internal4wasm17ImmediatesPrinterINS1_7Decoder17FullValidationTagEE8TryTableERNS1_20BranchTableImmediateE = private unnamed_addr constant [4 x ptr] [ptr @.str.83, ptr @.str.1183, ptr @.str.93, ptr @.str.1184], align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm19DisassembleFunctionEPKNS1_10WasmModuleEiNS_4base6VectorIKhEES8_jRSoPSt6vectorIjSaIjEE:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 5) i32 @_ZN2v88internal4wasm19GetDefaultAlignmentENS1_10WasmOpcodeE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.f [
    i32 64768, label %bb.g
    i32 64779, label %bb.g
    i32 64769, label %bb.b
    i32 64770, label %bb.b
    i32 64771, label %bb.b
    i32 64772, label %bb.b
    i32 64773, label %bb.b
    i32 64774, label %bb.b
    i32 64778, label %bb.b
    i32 64861, label %bb.b
    i32 64855, label %bb.b
    i32 64859, label %bb.b
    i32 64777, label %bb.c
    i32 64860, label %bb.c
    i32 64854, label %bb.c
    i32 64858, label %bb.c
    i32 64776, label %bb.d
    i32 64853, label %bb.d
    i32 64857, label %bb.d
    i32 64775, label %bb.e
    i32 64852, label %bb.e
    i32 64856, label %bb.e
    i32 40, label %bb.c
    i32 41, label %bb.b
    i32 42, label %bb.c
    i32 43, label %bb.b
    i32 44, label %bb.e
    i32 45, label %bb.e
    i32 46, label %bb.d
    i32 47, label %bb.d
    i32 48, label %bb.e
    i32 49, label %bb.e
    i32 50, label %bb.d
    i32 51, label %bb.d
    i32 52, label %bb.c
    i32 53, label %bb.c
    i32 65053, label %bb.c
    i32 54, label %bb.c
    i32 55, label %bb.b
    i32 56, label %bb.c
    i32 57, label %bb.b
    i32 58, label %bb.e
    i32 59, label %bb.d
    i32 60, label %bb.e
    i32 61, label %bb.d
    i32 62, label %bb.c
    i32 65052, label %bb.d
    i32 65024, label %bb.c
    i32 65025, label %bb.c
    i32 65026, label %bb.b
    i32 65040, label %bb.c
    i32 65041, label %bb.b
    i32 65042, label %bb.e
    i32 65043, label %bb.d
    i32 65044, label %bb.e
    i32 65045, label %bb.d
    i32 65046, label %bb.c
    i32 65054, label %bb.c
    i32 65056, label %bb.e
    i32 65057, label %bb.d
    i32 65055, label %bb.b
    i32 65058, label %bb.e
    i32 65059, label %bb.d
    i32 65060, label %bb.c
    i32 65061, label %bb.c
    i32 65062, label %bb.b
    i32 65063, label %bb.e
    i32 65064, label %bb.d
    i32 65065, label %bb.e
    i32 65066, label %bb.d
    i32 65067, label %bb.c
    i32 65068, label %bb.c
    i32 65069, label %bb.b
    i32 65070, label %bb.e
    i32 65071, label %bb.d
    i32 65072, label %bb.e
    i32 65073, label %bb.d
    i32 65074, label %bb.c
    i32 65075, label %bb.c
    i32 65076, label %bb.b
    i32 65077, label %bb.e
    i32 65078, label %bb.d
    i32 65079, label %bb.e
    i32 65080, label %bb.d
    i32 65081, label %bb.c
    i32 65082, label %bb.c
    i32 65083, label %bb.b
    i32 65084, label %bb.e
    i32 65085, label %bb.d
    i32 65086, label %bb.e
    i32 65087, label %bb.d
    i32 65088, label %bb.c
    i32 65089, label %bb.c
    i32 65090, label %bb.b
    i32 65091, label %bb.e
    i32 65092, label %bb.d
    i32 65093, label %bb.e
    i32 65094, label %bb.d
    i32 65095, label %bb.c
    i32 65096, label %bb.c
    i32 65097, label %bb.b
    i32 65098, label %bb.e
    i32 65099, label %bb.d
    i32 65100, label %bb.e
    i32 65101, label %bb.d
    i32 65102, label %bb.c
    i32 65047, label %bb.c
    i32 65048, label %bb.b
    i32 65049, label %bb.e
    i32 65050, label %bb.d
    i32 65051, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #24
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 4, %bb.a ], [ 3, %bb.b ], [ 2, %bb.c ], [ 1, %bb.d ], [ 0, %bb.e ], [ 4, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noreturn
end_hunk_3
