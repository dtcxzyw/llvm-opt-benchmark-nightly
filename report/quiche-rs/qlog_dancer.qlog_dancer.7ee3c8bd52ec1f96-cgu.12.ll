Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.12?download=true
inline.NumInlined: 1003
inline.NumDeleted: 322
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCsaTqK2fWTXJW_11qlog_dancer:bb.a
    #dbg_value(i64 8, !4621, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24624)
    #dbg_value(i64 8, !4627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24626)
    #dbg_value(i64 8, !4633, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24628)
    #dbg_value(i64 8, !4636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24630)
    #dbg_value(i64 40, !4621, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24624)
    #dbg_value(i64 40, !4627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24626)
    #dbg_value(i64 40, !4633, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24628)
    #dbg_value(i64 40, !4636, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24630)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) 40, i64 noundef 8) #31, !dbg !24699
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtBG_6string6StringRNtNtBG_5alloc6GlobalEECsaTqK2fWTXJW_11qlog_dancer.exit4, !dbg !24700

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtBG_6string6StringRNtNtBG_5alloc6GlobalEECsaTqK2fWTXJW_11qlog_dancer.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit, %bb.g, %bb.h
  ret void, !dbg !24701

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtBG_6string6StringRNtNtBG_5alloc6GlobalEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.f, %bb.e, %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !24702
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcdE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !24707 {
bb.a:
    #dbg_value(ptr %0, !24752, !DIExpression(), !24759)
  %i.a = load ptr, ptr %0, align 8, !dbg !24788, !nonnull !3068, !noundef !3068 ; 3 uses
    #dbg_value(ptr poison, !24761, !DIExpression(), !24710)
    #dbg_value(ptr poison, !24767, !DIExpression(), !24715)
    #dbg_value(ptr poison, !24771, !DIExpression(), !24719)
    #dbg_value(i64 1, !24778, !DIExpression(), !24722)
    #dbg_value(i8 1, !24780, !DIExpression(), !24722)
    #dbg_value(i64 1, !24782, !DIExpression(), !24725)
    #dbg_value(i8 1, !24784, !DIExpression(), !24725)
    #dbg_value(ptr %i.a, !24776, !DIExpression(), !24726)
    #dbg_value(ptr %i.a, !24786, !DIExpression(), !24729)
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr), !dbg !24789
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakdRNtNtBG_5alloc6GlobalEECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.b, !dbg !24790

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !24791
    #dbg_value(ptr %i.c, !24768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24730)
    #dbg_value(ptr %i.c, !24769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24731)
    #dbg_value(ptr %i.c, !24779, !DIExpression(), !24722)
    #dbg_value(ptr %i.a, !24768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24730)
    #dbg_value(ptr %i.a, !24769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24731)
    #dbg_value(ptr %i.c, !24783, !DIExpression(), !24725)
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !dbg !24792
  %i.e = icmp eq i64 %i.d, 1, !dbg !24793
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakdRNtNtBG_5alloc6GlobalEECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !24793

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !4091, !DIExpression(), !24733)
  fence acquire, !dbg !24794
    #dbg_value(ptr poison, !6624, !DIExpression(), !24735)
    #dbg_value(ptr %i.a, !6628, !DIExpression(), !24735)
    #dbg_value(i64 8, !6629, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24735)
    #dbg_value(i64 24, !6629, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24735)
    #dbg_value(ptr poison, !4616, !DIExpression(), !24737)
    #dbg_value(ptr poison, !4623, !DIExpression(), !24739)
    #dbg_value(ptr %i.a, !4620, !DIExpression(), !24737)
    #dbg_value(ptr %i.a, !4626, !DIExpression(), !24739)
    #dbg_value(ptr %i.a, !4629, !DIExpression(), !24741)
    #dbg_value(ptr %i.a, !4635, !DIExpression(), !24743)
    #dbg_value(i64 8, !4621, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24737)
    #dbg_value(i64 8, !4627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24739)
    #dbg_value(i64 8, !4633, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24741)
    #dbg_value(i64 8, !4636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24743)
    #dbg_value(i64 24, !4621, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24737)
    #dbg_value(i64 24, !4627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24739)
    #dbg_value(i64 24, !4633, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24741)
    #dbg_value(i64 24, !4636, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24743)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) 24, i64 noundef 8) #31, !dbg !24795
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakdRNtNtBG_5alloc6GlobalEECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !24796

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakdRNtNtBG_5alloc6GlobalEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void, !dbg !24797
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcxE9drop_slowCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !24802 {
bb.a:
    #dbg_value(ptr %0, !24847, !DIExpression(), !24854)
  %i.a = load ptr, ptr %0, align 8, !dbg !24883, !nonnull !3068, !noundef !3068 ; 3 uses
    #dbg_value(ptr poison, !24856, !DIExpression(), !24805)
    #dbg_value(ptr poison, !24862, !DIExpression(), !24810)
    #dbg_value(ptr poison, !24866, !DIExpression(), !24814)
    #dbg_value(i64 1, !24873, !DIExpression(), !24817)
    #dbg_value(i8 1, !24875, !DIExpression(), !24817)
    #dbg_value(i64 1, !24877, !DIExpression(), !24820)
    #dbg_value(i8 1, !24879, !DIExpression(), !24820)
    #dbg_value(ptr %i.a, !24871, !DIExpression(), !24821)
    #dbg_value(ptr %i.a, !24881, !DIExpression(), !24824)
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr), !dbg !24884
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakxRNtNtBG_5alloc6GlobalEECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.b, !dbg !24885

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !24886
    #dbg_value(ptr %i.c, !24863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24825)
    #dbg_value(ptr %i.c, !24864, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24826)
    #dbg_value(ptr %i.c, !24874, !DIExpression(), !24817)
    #dbg_value(ptr %i.a, !24863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24825)
    #dbg_value(ptr %i.a, !24864, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24826)
    #dbg_value(ptr %i.c, !24878, !DIExpression(), !24820)
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !dbg !24887
  %i.e = icmp eq i64 %i.d, 1, !dbg !24888
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakxRNtNtBG_5alloc6GlobalEECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !24888

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !4091, !DIExpression(), !24828)
  fence acquire, !dbg !24889
    #dbg_value(ptr poison, !6624, !DIExpression(), !24830)
    #dbg_value(ptr %i.a, !6628, !DIExpression(), !24830)
    #dbg_value(i64 8, !6629, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24830)
    #dbg_value(i64 24, !6629, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24830)
    #dbg_value(ptr poison, !4616, !DIExpression(), !24832)
    #dbg_value(ptr poison, !4623, !DIExpression(), !24834)
    #dbg_value(ptr %i.a, !4620, !DIExpression(), !24832)
    #dbg_value(ptr %i.a, !4626, !DIExpression(), !24834)
    #dbg_value(ptr %i.a, !4629, !DIExpression(), !24836)
    #dbg_value(ptr %i.a, !4635, !DIExpression(), !24838)
    #dbg_value(i64 8, !4621, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24832)
    #dbg_value(i64 8, !4627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24834)
    #dbg_value(i64 8, !4633, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24836)
    #dbg_value(i64 8, !4636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24838)
    #dbg_value(i64 24, !4621, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24832)
    #dbg_value(i64 24, !4627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24834)
    #dbg_value(i64 24, !4633, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24836)
    #dbg_value(i64 24, !4636, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24838)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) 24, i64 noundef 8) #31, !dbg !24890
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakxRNtNtBG_5alloc6GlobalEECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !24891

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakxRNtNtBG_5alloc6GlobalEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void, !dbg !24892
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc range(i64 0, -4294967295) i64 @_RNvMsp_NtCskKLDkoKarTP_4core3numl27from_ascii_bytes_radix_impl(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #6 !dbg !24920 {
bb.a:
    #dbg_value(ptr %0, !24964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25003)
    #dbg_value(ptr %0, !24968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25004)
    #dbg_value(i64 %1, !24964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25003)
    #dbg_value(i64 %1, !24968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25004)
    #dbg_value(i32 10, !24965, !DIExpression(), !25003)
    #dbg_value(i8 1, !24966, !DIExpression(), !25005)
    #dbg_value(i8 1, !25006, !DIExpression(), !25011)
  switch i64 %1, label %thread-pre-split [
    i64 0, label %.loopexit146
    i64 1, label %bb.b
  ], !dbg !25102

.loopexit146:                                     ; preds = %bb.g, %bb.f, %.lr.ph175, %bb.l, %bb.k, %.lr.ph184, %.lr.ph184.1, %.lr.ph184.2, %.lr.ph184.3, %.lr.ph184.4, %.lr.ph184.5, %.lr.ph184.6, %.loopexit146.sink.split, %bb.b, %bb.b, %bb.a, %.loopexit
  %.sroa.12.0.insert.insert = phi i64 [ 257, %bb.b ], [ %i.i, %.loopexit ], [ 1, %bb.a ], [ 257, %bb.b ], [ 257, %.lr.ph184 ], [ %i.y, %.loopexit146.sink.split ], [ 257, %.lr.ph175 ], [ 513, %bb.l ], [ 257, %.lr.ph184.6 ], [ 257, %.lr.ph184.5 ], [ 257, %.lr.ph184.4 ], [ 257, %.lr.ph184.3 ], [ 257, %.lr.ph184.2 ], [ 257, %.lr.ph184.1 ], [ 257, %bb.k ], [ 257, %bb.f ], [ 769, %bb.g ], !dbg !25103
  ret i64 %.sroa.12.0.insert.insert, !dbg !25103

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !dbg !25104, !noundef !3068 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %.loopexit146
    i8 45, label %.loopexit146
  ], !dbg !25104

thread-pre-split:                                 ; preds = %bb.a
  %.pr = load i8, ptr %0, align 1, !dbg !25104
  br label %bb.c, !dbg !25104

bb.c:                                             ; preds = %thread-pre-split, %bb.b
  %i.b = phi i8 [ %.pr, %thread-pre-split ], [ %i.a, %bb.b ], !dbg !25104
  switch i8 %i.b, label %bb.j [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ], !dbg !25104

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !25105
  %i.d = add nsw i64 %1, -1, !dbg !25105
    #dbg_value(i8 1, !24967, !DIExpression(), !25004)
    #dbg_value(ptr %i.c, !24964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25003)
    #dbg_value(ptr %i.c, !24968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25004)
    #dbg_value(i64 %i.d, !24964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25003)
    #dbg_value(i64 %i.d, !24968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25004)
  br label %bb.j, !dbg !25106

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !25107 ; 2 uses
  %i.f = add nsw i64 %1, -1, !dbg !25107          ; 3 uses
    #dbg_value(i8 0, !24967, !DIExpression(), !25004)
    #dbg_value(ptr %i.e, !24964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25003)
    #dbg_value(ptr %i.e, !24968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25004)
    #dbg_value(i64 %i.f, !24964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25003)
    #dbg_value(i64 %i.f, !24968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25004)
    #dbg_value(i32 0, !24972, !DIExpression(), !25012)
    #dbg_value(i32 0, !25014, !DIExpression(), !25025)
    #dbg_value(i32 0, !25026, !DIExpression(), !25035)
    #dbg_value(i32 0, !25036, !DIExpression(), !25042)
    #dbg_value(i32 0, !25043, !DIExpression(), !25047)
    #dbg_value(i32 0, !25014, !DIExpression(), !25050)
    #dbg_value(i32 0, !25026, !DIExpression(), !25053)
    #dbg_value(i32 0, !25054, !DIExpression(), !25061)
    #dbg_value(i32 0, !25062, !DIExpression(), !25066)
    #dbg_value(i32 10, !25007, !DIExpression(), !25011)
    #dbg_value(ptr %i.e, !25008, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25011)
    #dbg_value(i64 %i.f, !25008, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25011)
  %i.g = icmp samesign ult i64 %1, 9, !dbg !25108
    #dbg_value(ptr %i.e, !24968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25004)
    #dbg_value(ptr %i.e, !24968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25004)
    #dbg_value(ptr %i.e, !24964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25003)
    #dbg_value(ptr %i.e, !24964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25003)
    #dbg_value(i64 %i.f, !24968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25004)
    #dbg_value(i64 %i.f, !24968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25004)
    #dbg_value(i64 %i.f, !24964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25003)
    #dbg_value(i64 %i.f, !24964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25003)
    #dbg_value(i32 0, !25062, !DIExpression(), !25066)
    #dbg_value(i32 0, !25062, !DIExpression(), !25066)
    #dbg_value(i32 0, !25054, !DIExpression(), !25061)
    #dbg_value(i32 0, !25054, !DIExpression(), !25061)
    #dbg_value(i32 0, !25043, !DIExpression(), !25047)
    #dbg_value(i32 0, !25043, !DIExpression(), !25047)
    #dbg_value(i32 0, !25036, !DIExpression(), !25042)
    #dbg_value(i32 0, !25036, !DIExpression(), !25042)
    #dbg_value(i32 0, !25026, !DIExpression(), !25035)
    #dbg_value(i32 0, !25026, !DIExpression(), !25035)
    #dbg_value(i32 0, !25014, !DIExpression(), !25025)
    #dbg_value(i32 0, !25014, !DIExpression(), !25025)
    #dbg_value(i32 0, !24972, !DIExpression(), !25012)
    #dbg_value(i32 0, !24972, !DIExpression(), !25012)
  br i1 %i.g, label %.preheader150, label %.lr.ph.a, !dbg !25010

.preheader150:                                    ; preds = %bb.e
  %.not137171 = icmp eq i64 %i.f, 0, !dbg !25109
  br i1 %.not137171, label %.loopexit, label %.lr.ph175, !dbg !25109

.loopexit:                                        ; preds = %bb.h, %bb.i, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %.preheader150, %.preheader
  %.sroa.086.1 = phi i32 [ %i.ag, %bb.i ], [ %i.cn, %bb.t ], [ %i.at, %bb.m ], [ 0, %.preheader ], [ 0, %.preheader150 ], [ %i.aw, %bb.n ], [ %i.be, %bb.o ], [ %i.bl, %bb.p ], [ %i.bs, %bb.q ], [ %i.bz, %bb.r ], [ %i.cg, %bb.s ], [ %i.u, %bb.h ], !dbg !25110
    #dbg_value(i32 %.sroa.086.1, !25062, !DIExpression(), !25066)
    #dbg_value(i32 %.sroa.086.1, !25054, !DIExpression(), !25061)
    #dbg_value(i32 %.sroa.086.1, !25043, !DIExpression(), !25047)
    #dbg_value(i32 %.sroa.086.1, !25036, !DIExpression(), !25042)
    #dbg_value(i32 %.sroa.086.1, !25026, !DIExpression(), !25035)
    #dbg_value(i32 %.sroa.086.1, !25014, !DIExpression(), !25025)
    #dbg_value(i32 %.sroa.086.1, !24972, !DIExpression(), !25012)
  %i.h = zext i32 %.sroa.086.1 to i64, !dbg !25103
  %i.i = shl nuw i64 %i.h, 32, !dbg !25103
  br label %.loopexit146, !dbg !25103

.lr.ph.a:                                         ; preds = %bb.e, %bb.h
  %.sroa.0.1170 = phi ptr [ %i.j, %bb.h ], [ %i.e, %bb.e ] ; 3 uses
  %.sroa.26.1169 = phi i64 [ %i.k, %bb.h ], [ %i.f, %bb.e ]
  %.sroa.086.0168 = phi i32 [ %i.u, %bb.h ], [ 0, %bb.e ]
    #dbg_value(i32 %.sroa.086.0168, !25062, !DIExpression(), !25066)
    #dbg_value(ptr %.sroa.0.1170, !24988, !DIExpression(), !25067)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.1170, i64 1, !dbg !25111
  %i.k = add nsw i64 %.sroa.26.1169, -1, !dbg !25111 ; 2 uses
    #dbg_value(ptr %i.j, !24989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25067)
    #dbg_value(i64 %i.k, !24989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25067)
    #dbg_value(i32 10, !25018, !DIExpression(), !25050)
    #dbg_value(i32 10, !25032, !DIExpression(), !25053)
  %i.l = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.0168, i32 10), !dbg !25112 ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 0, !dbg !25112
  %i.n = extractvalue { i32, i1 } %i.l, 1, !dbg !25112
    #dbg_value(i32 %i.m, !25021, !DIExpression(), !25068)
    #dbg_value(i1 %i.n, !25022, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !25068)
    #dbg_value(i1 %i.n, !25069, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !25073)
  br i1 %i.n, label %.loopexit146.sink.split, label %bb.f, !dbg !25113, !prof !4285

bb.f:                                             ; preds = %.lr.ph.a
    #dbg_value(i32 %i.m, !24990, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25074)
    #dbg_value(i32 1, !24990, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25074)
  %i.o = load i8, ptr %.sroa.0.1170, align 1, !dbg !25114, !noundef !3068
  %i.p = zext i8 %i.o to i32, !dbg !25115
    #dbg_value(i32 %i.p, !6675, !DIExpression(), !24935)
    #dbg_value(i32 10, !6678, !DIExpression(), !24935)
    #dbg_value(i32 65, !6681, !DIExpression(), !24937)
    #dbg_value(i32 48, !6681, !DIExpression(), !24939)
    #dbg_value(i32 %i.p, !6685, !DIExpression(), !24939)
  %i.q = add nsw i32 %i.p, -48, !dbg !25116       ; 2 uses
    #dbg_value(i32 %i.q, !6679, !DIExpression(), !24940)
  %i.r = icmp ult i32 %i.q, 10, !dbg !25117
  br i1 %i.r, label %bb.g, label %.loopexit146, !dbg !25118

bb.g:                                             ; preds = %bb.f
    #dbg_value(i32 %i.q, !24991, !DIExpression(), !25075)
    #dbg_value(i32 %i.m, !24972, !DIExpression(), !25012)
    #dbg_value(i32 %i.m, !25014, !DIExpression(), !25025)
    #dbg_value(i32 %i.m, !25026, !DIExpression(), !25035)
    #dbg_value(i32 %i.m, !25036, !DIExpression(), !25042)
    #dbg_value(i32 %i.m, !25043, !DIExpression(), !25047)
    #dbg_value(i32 %i.m, !25014, !DIExpression(), !25050)
    #dbg_value(i32 %i.m, !25026, !DIExpression(), !25053)
    #dbg_value(i32 %i.m, !25054, !DIExpression(), !25061)
    #dbg_value(i32 %i.m, !25062, !DIExpression(), !25066)
    #dbg_value(i32 %i.q, !25055, !DIExpression(), !25061)
    #dbg_value(i32 %i.q, !25063, !DIExpression(), !25066)
  %i.s = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.m, i32 %i.q), !dbg !25119 ; 2 uses
  %i.t = extractvalue { i32, i1 } %i.s, 1, !dbg !25119
    #dbg_value(i32 poison, !25056, !DIExpression(), !25076)
    #dbg_value(i1 %i.t, !25057, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !25076)
    #dbg_value(i1 %i.t, !25069, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !25078)
  br i1 %i.t, label %.loopexit146, label %bb.h, !dbg !25120, !prof !4285

bb.h:                                             ; preds = %bb.g
  %i.u = extractvalue { i32, i1 } %i.s, 0, !dbg !25119 ; 2 uses
    #dbg_value(i32 %i.u, !25056, !DIExpression(), !25076)
    #dbg_value(i32 %i.u, !25014, !DIExpression(), !25050)
    #dbg_value(i32 %i.u, !25026, !DIExpression(), !25053)
    #dbg_value(ptr %i.j, !24968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25004)
    #dbg_value(ptr %i.j, !24964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25003)
    #dbg_value(i64 %i.k, !24968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25004)
    #dbg_value(i64 %i.k, !24964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25003)
    #dbg_value(i32 %i.u, !25062, !DIExpression(), !25066)
    #dbg_value(i32 %i.u, !25054, !DIExpression(), !25061)
    #dbg_value(i32 %i.u, !25043, !DIExpression(), !25047)
    #dbg_value(i32 %i.u, !25036, !DIExpression(), !25042)
    #dbg_value(i32 %i.u, !25026, !DIExpression(), !25035)
    #dbg_value(i32 %i.u, !25014, !DIExpression(), !25025)
    #dbg_value(i32 %i.u, !24972, !DIExpression(), !25012)
  %.not136 = icmp eq i64 %i.k, 0, !dbg !25121
  br i1 %.not136, label %.loopexit, label %.lr.ph.a, !dbg !25121

.loopexit146.sink.split:                          ; preds = %.lr.ph.a, %.preheader147
  %.sroa.0.3179.lcssa.sink = phi ptr [ %.sroa.0.3179, %.preheader147 ], [ %.sroa.0.1170, %.lr.ph.a ]
  %.sink222 = phi i64 [ 513, %.preheader147 ], [ 769, %.lr.ph.a ]
  %i.v = load i8, ptr %.sroa.0.3179.lcssa.sink, align 1, !dbg !25122, !noundef !3068
  %i.w = add i8 %i.v, -48, !dbg !25123
  %i.x = icmp ult i8 %i.w, 10, !dbg !25123
  %i.y = select i1 %i.x, i64 %.sink222, i64 257, !dbg !25124
  br label %.loopexit146, !dbg !25103

.lr.ph175:                                        ; preds = %.preheader150, %bb.i
  %.sroa.0.2174 = phi ptr [ %i.af, %bb.i ], [ %i.e, %.preheader150 ] ; 2 uses
  %.sroa.26.2173 = phi i64 [ %i.ae, %bb.i ], [ %i.f, %.preheader150 ]
  %.sroa.086.2172 = phi i32 [ %i.ag, %bb.i ], [ 0, %.preheader150 ]
    #dbg_value(ptr %.sroa.0.2174, !24977, !DIExpression(), !25080)
    #dbg_value(ptr %.sroa.0.2174, !24978, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !25080)
    #dbg_value(i64 %.sroa.26.2173, !24978, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !25080)
    #dbg_value(i32 %.sroa.086.2172, !24972, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !25012)
    #dbg_value(i32 %.sroa.086.2172, !25014, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !25025)
    #dbg_value(i32 %.sroa.086.2172, !25026, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !25035)
    #dbg_value(i32 %.sroa.086.2172, !25036, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !25042)
    #dbg_value(i32 %.sroa.086.2172, !25043, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !25047)
    #dbg_value(i32 %.sroa.086.2172, !25014, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !25050)
    #dbg_value(i32 %.sroa.086.2172, !25026, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !25053)
    #dbg_value(i32 %.sroa.086.2172, !25054, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !25061)
    #dbg_value(i32 %.sroa.086.2172, !25062, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !25066)
  %i.z = load i8, ptr %.sroa.0.2174, align 1, !dbg !25125, !noundef !3068
  %i.aa = zext i8 %i.z to i32, !dbg !25126
    #dbg_value(i32 %i.aa, !6675, !DIExpression(), !24942)
    #dbg_value(i32 10, !6678, !DIExpression(), !24942)
    #dbg_value(i32 65, !6681, !DIExpression(), !24944)
    #dbg_value(i32 48, !6681, !DIExpression(), !24946)
    #dbg_value(i32 %i.aa, !6685, !DIExpression(), !24946)
  %i.ab = add nsw i32 %i.aa, -48, !dbg !25127     ; 2 uses
    #dbg_value(i32 %i.ab, !6679, !DIExpression(), !24947)
  %i.ac = icmp ult i32 %i.ab, 10, !dbg !25128
  br i1 %i.ac, label %bb.i, label %.loopexit146, !dbg !25129

bb.i:                                             ; preds = %.lr.ph175
  %i.ad = mul i32 %.sroa.086.2172, 10, !dbg !25130
    #dbg_value(i32 %i.ad, !24972, !DIExpression(), !25012)
    #dbg_value(i32 %i.ad, !25014, !DIExpression(), !25025)
    #dbg_value(i32 %i.ad, !25026, !DIExpression(), !25035)
    #dbg_value(i32 %i.ad, !25036, !DIExpression(), !25042)
    #dbg_value(i32 %i.ad, !25043, !DIExpression(), !25047)
    #dbg_value(i32 %i.ad, !25014, !DIExpression(), !25050)
    #dbg_value(i32 %i.ad, !25026, !DIExpression(), !25053)
    #dbg_value(i32 %i.ad, !25054, !DIExpression(), !25061)
    #dbg_value(i32 %i.ad, !25062, !DIExpression(), !25066)
  %i.ae = add nsw i64 %.sroa.26.2173, -1, !dbg !25131 ; 2 uses
    #dbg_value(i64 %i.ae, !24978, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25080)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.2174, i64 1, !dbg !25131
    #dbg_value(ptr %i.af, !24978, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25080)
    #dbg_value(i32 %i.ab, !24979, !DIExpression(), !25081)
  %i.ag = sub i32 %i.ad, %i.ab, !dbg !25132       ; 2 uses
    #dbg_value(i32 %i.ag, !25014, !DIExpression(), !25050)
    #dbg_value(i32 %i.ag, !25026, !DIExpression(), !25053)
    #dbg_value(ptr %i.af, !24968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25004)
    #dbg_value(ptr %i.af, !24964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25003)
    #dbg_value(i64 %i.ae, !24968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25004)
    #dbg_value(i64 %i.ae, !24964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25003)
    #dbg_value(i32 %i.ag, !25062, !DIExpression(), !25066)
    #dbg_value(i32 %i.ag, !25054, !DIExpression(), !25061)
    #dbg_value(i32 %i.ag, !25043, !DIExpression(), !25047)
    #dbg_value(i32 %i.ag, !25036, !DIExpression(), !25042)
    #dbg_value(i32 %i.ag, !25026, !DIExpression(), !25035)
    #dbg_value(i32 %i.ag, !25014, !DIExpression(), !25025)
    #dbg_value(i32 %i.ag, !24972, !DIExpression(), !25012)
  %.not137 = icmp eq i64 %i.ae, 0, !dbg !25109
  br i1 %.not137, label %.loopexit, label %.lr.ph175, !dbg !25109

bb.j:                                             ; preds = %bb.d, %bb.c
  %.sroa.26.0 = phi i64 [ %i.d, %bb.d ], [ %1, %bb.c ] ; 9 uses
  %.sroa.0.0 = phi ptr [ %i.c, %bb.d ], [ %0, %bb.c ] ; 8 uses
    #dbg_value(ptr %.sroa.0.0, !24968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25004)
    #dbg_value(ptr %.sroa.0.0, !24964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25003)
    #dbg_value(i64 %.sroa.26.0, !24968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25004)
    #dbg_value(i64 %.sroa.26.0, !24964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25003)
    #dbg_value(i32 0, !24972, !DIExpression(), !25012)
    #dbg_value(i32 0, !25014, !DIExpression(), !25025)
    #dbg_value(i32 0, !25026, !DIExpression(), !25035)
    #dbg_value(i32 0, !25036, !DIExpression(), !25042)
    #dbg_value(i32 0, !25043, !DIExpression(), !25047)
    #dbg_value(i32 0, !25014, !DIExpression(), !25050)
    #dbg_value(i32 0, !25026, !DIExpression(), !25053)
    #dbg_value(i32 0, !25054, !DIExpression(), !25061)
    #dbg_value(i32 0, !25062, !DIExpression(), !25066)
    #dbg_value(i32 10, !25007, !DIExpression(), !25011)
    #dbg_value(ptr %.sroa.0.0, !25008, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25011)
    #dbg_value(i64 %.sroa.26.0, !25008, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25011)
  %i.ah = icmp samesign ult i64 %.sroa.26.0, 8, !dbg !25108
  br i1 %i.ah, label %.preheader, label %.preheader147, !dbg !25010

.preheader:                                       ; preds = %bb.j
    #dbg_value(ptr %.sroa.0.0, !24968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25004)
    #dbg_value(ptr %.sroa.0.0, !24964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25003)
    #dbg_value(i64 %.sroa.26.0, !24968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25004)
    #dbg_value(i64 %.sroa.26.0, !24964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25003)
    #dbg_value(i32 0, !25062, !DIExpression(), !25066)
    #dbg_value(i32 0, !25054, !DIExpression(), !25061)
    #dbg_value(i32 0, !25043, !DIExpression(), !25047)
    #dbg_value(i32 0, !25036, !DIExpression(), !25042)
    #dbg_value(i32 0, !25026, !DIExpression(), !25035)
    #dbg_value(i32 0, !25014, !DIExpression(), !25025)
    #dbg_value(i32 0, !24972, !DIExpression(), !25012)
  %.not139180 = icmp eq i64 %.sroa.26.0, 0, !dbg !25133
  br i1 %.not139180, label %.loopexit, label %.lr.ph184, !dbg !25133

.preheader147:                                    ; preds = %bb.j, %bb.m
  %.sroa.0.3179 = phi ptr [ %i.ai, %bb.m ], [ %.sroa.0.0, %bb.j ] ; 3 uses
  %.sroa.26.3178 = phi i64 [ %i.aj, %bb.m ], [ %.sroa.26.0, %bb.j ]
end_hunk_0
