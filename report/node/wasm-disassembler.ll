begin_hunk_0
inline.NumInlined: 6458
inline.NumDeleted: 2440
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
$_ZN2v88internal4wasm22MultiLineStringBuilder7WriteToERSobPSt6vectorIjSaIjEE = comdat any

$_ZN2v88internal4wasm24FunctionBodyDisassemblerD2Ev = comdat any

$_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE = comdat any

$_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE12DecodeLocalsEPKh = comdat any

end_hunk_1
begin_hunk_2
@.str.1216 = private unnamed_addr constant [28 x i8] c"invalid br_on_cast flags %u\00", align 1
@.str.1218 = private unnamed_addr constant [4 x i8] c"\E2\80\A6\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @_ZN2v88internal4wasmL26kCompilationPriorityStringE], section "llvm.metadata"
@switch.table._ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE = private unnamed_addr constant [20 x i32] [i32 0, i32 0, i32 1, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 2, i32 3, i32 poison, i32 1, i32 2, i32 3, i32 4, i32 5], align 4
@switch.table._ZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEv.2 = private unnamed_addr constant [5 x ptr] [ptr @.str.951, ptr @.str.943, ptr @.str.946, ptr @.str.952, ptr @.str.953], align 8
@switch.table._ZN2v88internal4wasm17ModuleDecoderImpl28consume_base_type_definitionEbb = private unnamed_addr constant [4 x ptr] [ptr @.str.869, ptr @.str.868, ptr @.str.867, ptr @.str.866], align 8
@switch.table._ZN2v88internal4wasm17ImmediatesPrinterINS1_7Decoder17FullValidationTagEE8TryTableERNS1_20BranchTableImmediateE = private unnamed_addr constant [4 x ptr] [ptr @.str.83, ptr @.str.1183, ptr @.str.93, ptr @.str.1184], align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm19DisassembleFunctionEPKNS1_10WasmModuleEiNS_4base6VectorIKhEES8_jRSoPSt6vectorIjSaIjEE:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal4wasm19GetDefaultAlignmentENS1_10WasmOpcodeE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.f [
    i32 64768, label %bb.g
    i32 64779, label %bb.g
    i32 64769, label %1
    i32 64770, label %1
    i32 64771, label %1
    i32 64772, label %1
    i32 64773, label %1
    i32 64774, label %1
    i32 64778, label %1
    i32 64861, label %1
    i32 64855, label %1
    i32 64859, label %1
    i32 64777, label %2
    i32 64860, label %2
    i32 64854, label %2
    i32 64858, label %2
    i32 64776, label %3
    i32 64853, label %3
    i32 64857, label %3
    i32 64775, label %4
    i32 64852, label %4
    i32 64856, label %4
    i32 40, label %2
    i32 41, label %1
    i32 42, label %2
    i32 43, label %1
    i32 44, label %4
    i32 45, label %4
    i32 46, label %3
    i32 47, label %3
    i32 48, label %4
    i32 49, label %4
    i32 50, label %3
    i32 51, label %3
    i32 52, label %2
    i32 53, label %2
    i32 65053, label %bb.e
    i32 54, label %2
    i32 55, label %1
    i32 56, label %2
    i32 57, label %1
    i32 58, label %4
    i32 59, label %3
    i32 60, label %4
    i32 61, label %3
    i32 62, label %2
    i32 65052, label %bb.d
    i32 65024, label %5
    i32 65025, label %7
    i32 65026, label %9
    i32 65040, label %11
    i32 65041, label %13
    i32 65042, label %15
    i32 65043, label %17
    i32 65044, label %19
    i32 65045, label %21
    i32 65046, label %23
    i32 65054, label %25
    i32 65056, label %27
    i32 65057, label %29
    i32 65055, label %31
    i32 65058, label %33
    i32 65059, label %35
    i32 65060, label %37
    i32 65061, label %39
    i32 65062, label %41
    i32 65063, label %43
    i32 65064, label %45
    i32 65065, label %47
    i32 65066, label %49
    i32 65067, label %51
    i32 65068, label %53
    i32 65069, label %55
    i32 65070, label %57
    i32 65071, label %59
    i32 65072, label %61
    i32 65073, label %63
    i32 65074, label %65
    i32 65075, label %67
    i32 65076, label %69
    i32 65077, label %71
    i32 65078, label %73
    i32 65079, label %75
    i32 65080, label %77
    i32 65081, label %79
    i32 65082, label %81
    i32 65083, label %83
    i32 65084, label %85
    i32 65085, label %87
    i32 65086, label %89
    i32 65087, label %91
    i32 65088, label %93
    i32 65089, label %95
    i32 65090, label %97
    i32 65091, label %99
    i32 65092, label %101
    i32 65093, label %103
    i32 65094, label %105
    i32 65095, label %107
    i32 65096, label %109
    i32 65097, label %111
    i32 65098, label %113
    i32 65099, label %115
    i32 65100, label %117
    i32 65101, label %119
    i32 65102, label %121
    i32 65047, label %123
    i32 65048, label %125
    i32 65049, label %127
    i32 65050, label %bb.b
    i32 65051, label %bb.c
  ]

1:                                                ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.g

2:                                                ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.g

3:                                                ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.g

4:                                                ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.g

5:                                                ; preds = %bb.a
  %6 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

7:                                                ; preds = %bb.a
  %8 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

9:                                                ; preds = %bb.a
  %10 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 5)
  br label %bb.g

11:                                               ; preds = %bb.a
  %12 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

13:                                               ; preds = %bb.a
  %14 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 5)
  br label %bb.g

15:                                               ; preds = %bb.a
  %16 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 2)
  br label %bb.g

17:                                               ; preds = %bb.a
  %18 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 3)
  br label %bb.g

19:                                               ; preds = %bb.a
  %20 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 2)
  br label %bb.g

21:                                               ; preds = %bb.a
  %22 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 3)
  br label %bb.g

23:                                               ; preds = %bb.a
  %24 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

25:                                               ; preds = %bb.a
  %26 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

27:                                               ; preds = %bb.a
  %28 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 2)
  br label %bb.g

29:                                               ; preds = %bb.a
  %30 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 3)
  br label %bb.g

31:                                               ; preds = %bb.a
  %32 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 5)
  br label %bb.g

33:                                               ; preds = %bb.a
  %34 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 2)
  br label %bb.g

35:                                               ; preds = %bb.a
  %36 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 3)
  br label %bb.g

37:                                               ; preds = %bb.a
  %38 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

39:                                               ; preds = %bb.a
  %40 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

41:                                               ; preds = %bb.a
  %42 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 5)
  br label %bb.g

43:                                               ; preds = %bb.a
  %44 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 2)
  br label %bb.g

45:                                               ; preds = %bb.a
  %46 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 3)
  br label %bb.g

47:                                               ; preds = %bb.a
  %48 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 2)
  br label %bb.g

49:                                               ; preds = %bb.a
  %50 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 3)
  br label %bb.g

51:                                               ; preds = %bb.a
  %52 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

53:                                               ; preds = %bb.a
  %54 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

55:                                               ; preds = %bb.a
  %56 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 5)
  br label %bb.g

57:                                               ; preds = %bb.a
  %58 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 2)
  br label %bb.g

59:                                               ; preds = %bb.a
  %60 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 3)
  br label %bb.g

61:                                               ; preds = %bb.a
  %62 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 2)
  br label %bb.g

63:                                               ; preds = %bb.a
  %64 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 3)
  br label %bb.g

65:                                               ; preds = %bb.a
  %66 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

67:                                               ; preds = %bb.a
  %68 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

69:                                               ; preds = %bb.a
  %70 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 5)
  br label %bb.g

71:                                               ; preds = %bb.a
  %72 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 2)
  br label %bb.g

73:                                               ; preds = %bb.a
  %74 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 3)
  br label %bb.g

75:                                               ; preds = %bb.a
  %76 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 2)
  br label %bb.g

77:                                               ; preds = %bb.a
  %78 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 3)
  br label %bb.g

79:                                               ; preds = %bb.a
  %80 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

81:                                               ; preds = %bb.a
  %82 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

83:                                               ; preds = %bb.a
  %84 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 5)
  br label %bb.g

85:                                               ; preds = %bb.a
  %86 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 2)
  br label %bb.g

87:                                               ; preds = %bb.a
  %88 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 3)
  br label %bb.g

89:                                               ; preds = %bb.a
  %90 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 2)
  br label %bb.g

91:                                               ; preds = %bb.a
  %92 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 3)
  br label %bb.g

93:                                               ; preds = %bb.a
  %94 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

95:                                               ; preds = %bb.a
  %96 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

97:                                               ; preds = %bb.a
  %98 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 5)
  br label %bb.g

99:                                               ; preds = %bb.a
  %100 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 2)
  br label %bb.g

101:                                              ; preds = %bb.a
  %102 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 3)
  br label %bb.g

103:                                              ; preds = %bb.a
  %104 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 2)
  br label %bb.g

105:                                              ; preds = %bb.a
  %106 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 3)
  br label %bb.g

107:                                              ; preds = %bb.a
  %108 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

109:                                              ; preds = %bb.a
  %110 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

111:                                              ; preds = %bb.a
  %112 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 5)
  br label %bb.g

113:                                              ; preds = %bb.a
  %114 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 2)
  br label %bb.g

115:                                              ; preds = %bb.a
  %116 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 3)
  br label %bb.g

117:                                              ; preds = %bb.a
  %118 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 2)
  br label %bb.g

119:                                              ; preds = %bb.a
  %120 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 3)
  br label %bb.g

121:                                              ; preds = %bb.a
  %122 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

123:                                              ; preds = %bb.a
  %124 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

125:                                              ; preds = %bb.a
  %126 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 5)
  br label %bb.g

127:                                              ; preds = %bb.a
  %128 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 2)
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %129 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 3)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %130 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 2)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %131 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 3)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %132 = tail call noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext 4)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #24
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.e, %bb.d, %bb.c, %bb.b, %127, %125, %123, %121, %119, %117, %115, %113, %111, %109, %107, %105, %103, %101, %99, %97, %95, %93, %91, %89, %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5, %4, %3, %2, %1
  %.0 = phi i32 [ %132, %bb.e ], [ 3, %1 ], [ 2, %2 ], [ 1, %3 ], [ 0, %4 ], [ 4, %bb.a ], [ 4, %bb.a ], [ %131, %bb.d ], [ %130, %bb.c ], [ %129, %bb.b ], [ %128, %127 ], [ %126, %125 ], [ %124, %123 ], [ %122, %121 ], [ %120, %119 ], [ %118, %117 ], [ %116, %115 ], [ %114, %113 ], [ %112, %111 ], [ %90, %89 ], [ %110, %109 ], [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %100, %99 ], [ %98, %97 ], [ %96, %95 ], [ %94, %93 ], [ %92, %91 ], [ %6, %5 ], [ %8, %7 ], [ %10, %9 ], [ %12, %11 ], [ %14, %13 ], [ %16, %15 ], [ %18, %17 ], [ %20, %19 ], [ %22, %21 ], [ %24, %23 ], [ %26, %25 ], [ %28, %27 ], [ %30, %29 ], [ %32, %31 ], [ %34, %33 ], [ %36, %35 ], [ %38, %37 ], [ %40, %39 ], [ %42, %41 ], [ %44, %43 ], [ %46, %45 ], [ %48, %47 ], [ %50, %49 ], [ %52, %51 ], [ %54, %53 ], [ %56, %55 ], [ %58, %57 ], [ %60, %59 ], [ %62, %61 ], [ %64, %63 ], [ %66, %65 ], [ %68, %67 ], [ %70, %69 ], [ %72, %71 ], [ %74, %73 ], [ %76, %75 ], [ %78, %77 ], [ %80, %79 ], [ %82, %81 ], [ %84, %83 ], [ %86, %85 ], [ %88, %87 ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE(i8 noundef zeroext %0) local_unnamed_addr #5 comdat {
  %switch.tableidx = add i8 %0, -1                ; 3 uses
  %2 = icmp ult i8 %switch.tableidx, 20
  br i1 %2, label %switch.hole_check, label %3

3:                                                ; preds = %switch.hole_check, %1
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #24
  unreachable

switch.hole_check:                                ; preds = %1
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 1032191, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %3

switch.lookup:                                    ; preds = %switch.hole_check
  %4 = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE, i64 %4
  %switch.load = load i32, ptr %switch.gep, align 4
  ret i32 %switch.load
}

; Function Attrs: noreturn
end_hunk_3
