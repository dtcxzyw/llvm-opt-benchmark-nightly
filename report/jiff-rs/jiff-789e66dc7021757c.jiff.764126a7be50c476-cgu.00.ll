Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.00?download=true
inline.NumInlined: 734
inline.NumDeleted: 227
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [31 x i8] c"value for days is out of bounds", align 1
@1 = private unnamed_addr constant [24 x i8] c"crates/jiff/src/span.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00\14\03\00\00\1D\00\00\00" }>, align 8
@3 = private unnamed_addr constant [32 x i8] c"value for weeks is out of bounds", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00\06\03\00\00\1F\00\00\00" }>, align 8
@5 = private unnamed_addr constant [32 x i8] c"value for years is out of bounds", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00\EA\02\00\00\1F\00\00\00" }>, align 8
@7 = private unnamed_addr constant [33 x i8] c"value for months is out of bounds", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00\F8\02\00\00!\00\00\00" }>, align 8
@9 = private unnamed_addr constant [25 x i8] c"crates/jiff/src/zoned.rs\00", align 1
@10 = private unnamed_addr constant [30 x i8] c"crates/jiff/src/civil/date.rs\00", align 1
@11 = private unnamed_addr constant [34 x i8] c"crates/jiff/src/civil/datetime.rs\00", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@13 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@14 = private unnamed_addr constant [37 x i8] c"overflow when adding signed durations", align 1
@15 = private unnamed_addr constant [35 x i8] c"crates/jiff/src/signed_duration.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\22\00\00\00\00\00\00\009\0A\00\00\1F\00\00\00" }>, align 8
@17 = private unnamed_addr constant [27 x i8] c"always valid Unix epoch day", align 1
@18 = private unnamed_addr constant [34 x i8] c"crates/jiff-core/src/tz/offset.rs\00", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"!\00\00\00\00\00\00\00\C7\00\00\00\14\00\00\00" }>, align 8
@20 = private unnamed_addr constant [28 x i8] c"always valid civil subsecond", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"!\00\00\00\00\00\00\00\CC\00\00\00\14\00\00\00" }>, align 8
@22 = private unnamed_addr constant [56 x i8] c"\00\00\00\00\1F\00;\00Z\00x\00\97\00\B5\00\D4\00\F3\00\11\010\01N\01m\01\00\00\00\00\1F\00<\00[\00y\00\98\00\B6\00\D5\00\F4\00\12\011\01O\01n\01", align 2
@23 = private unnamed_addr constant [35 x i8] c"crates/jiff-core/src/civil/date.rs\00", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"\22\00\00\00\00\00\00\00\DC\00\00\00\09\00\00\00" }>, align 8
@25 = private unnamed_addr constant [35 x i8] c"assertion failed: max <= Unit::Week", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00U\14\00\00\11\00\00\00" }>, align 8
@27 = private unnamed_addr constant [76 x i8] c"minutes overflowed an `i64` number of seconds in `SignedDuration::from_mins`", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\22\00\00\00\00\00\00\00\13\03\00\00\11\00\00\00" }>, align 8
@29 = private unnamed_addr constant [12 x i8] c"valid offset", align 1
@30 = private unnamed_addr constant [29 x i8] c"crates/jiff/src/tz/offset.rs\00", align 1
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @30, [16 x i8] c"\1C\00\00\00\00\00\00\00\18\04\00\00\0D\00\00\00" }>, align 8
@32 = private unnamed_addr constant [94 x i8] c"internal error: entered unreachable code: balanced span should have same sign as original span", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00\BE\16\00\00\0D\00\00\00" }>, align 8
@34 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00\83\16\00\00\12\00\00\00" }>, align 8
@36 = private unnamed_addr constant [47 x i8] c"assertion failed: increment.unit() >= Unit::Day", align 1
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00^\18\00\00\09\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00h\18\00\00\1F\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00\B0\18\00\00\17\00\00\00" }>, align 8
@40 = private unnamed_addr constant [47 x i8] c"assertion failed: increment.unit() <= Unit::Day", align 1
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00\14\18\00\00\09\00\00\00" }>, align 8
@42 = private unnamed_addr constant [42 x i8] c"overflow when subtracting signed durations", align 1
@43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\22\00\00\00\00\00\00\00J\0A\00\00\0E\00\00\00" }>, align 8
@44 = private unnamed_addr constant [38 x i8] c"value for nanoseconds is out of bounds", align 1
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00r\03\00\00\0E\00\00\00" }>, align 8
@46 = private unnamed_addr constant [43 x i8] c"difference between time always fits in span", align 1
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"\18\00\00\00\00\00\00\00f\11\00\00\0E\00\00\00" }>, align 8
@48 = private unnamed_addr constant [27 x i8] c"this should be an error too", align 1
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"\18\00\00\00\00\00\00\00]\11\00\00\11\00\00\00" }>, align 8
@50 = private unnamed_addr constant [23 x i8] c"this should be an error", align 1
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"\18\00\00\00\00\00\00\00P\11\00\00\11\00\00\00" }>, align 8
@52 = private unnamed_addr constant [41 x i8] c"assertion failed: self.unit <= Unit::Week", align 1
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00>\12\00\00\09\00\00\00" }>, align 8
@54 = private unnamed_addr constant [78 x i8] c"*internal error: entered unreachable code: \C0  has no definitive time interval\00", align 1
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00b\0F\00\00\15\00\00\00" }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"!\00\00\00\00\00\00\00\E1\0C\00\00%\00\00\00" }>, align 8
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"!\00\00\00\00\00\00\00\E3\0C\00\00$\00\00\00" }>, align 8
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"!\00\00\00\00\00\00\00\F0\0C\00\00\0A\00\00\00" }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"\1D\00\00\00\00\00\00\00\E3\0A\00\00B\00\00\00" }>, align 8
@60 = private unnamed_addr constant [58 x i8] c"adding different spans should produce different timestamps", align 1
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\17\00\00\00\00\00\00\00W\19\00\00\05\00\00\00" }>, align 8
@_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span22has_fractional_seconds9SUBSECOND = local_unnamed_addr constant [2 x i8] c"\07\00", align 2
@62 = private unnamed_addr constant [1 x i8] c"{", align 1
@63 = private unnamed_addr constant [2 x i8] c", ", align 1
@64 = private unnamed_addr constant [1 x i8] c"y", align 1
@65 = private unnamed_addr constant [2 x i8] c"mo", align 1
@66 = private unnamed_addr constant [1 x i8] c"w", align 1
@67 = private unnamed_addr constant [1 x i8] c"d", align 1
@68 = private unnamed_addr constant [1 x i8] c"h", align 1
@69 = private unnamed_addr constant [1 x i8] c"m", align 1
@70 = private unnamed_addr constant [1 x i8] c"s", align 1
@71 = private unnamed_addr constant [2 x i8] c"ms", align 1
@72 = private unnamed_addr constant [3 x i8] c"\C2\B5s", align 1
@73 = private unnamed_addr constant [2 x i8] c"ns", align 1
@74 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@75 = private unnamed_addr constant [3 x i8] c"\E2\88\85", align 1
@76 = private unnamed_addr constant [1 x i8] c"}", align 1
@77 = private unnamed_addr constant [4 x i8] c"Year", align 1
@78 = private unnamed_addr constant [5 x i8] c"Month", align 1
@79 = private unnamed_addr constant [4 x i8] c"Week", align 1
@80 = private unnamed_addr constant [3 x i8] c"Day", align 1
@81 = private unnamed_addr constant [4 x i8] c"Hour", align 1
@82 = private unnamed_addr constant [6 x i8] c"Minute", align 1
@83 = private unnamed_addr constant [6 x i8] c"Second", align 1
@84 = private unnamed_addr constant [11 x i8] c"Millisecond", align 1
@85 = private unnamed_addr constant [11 x i8] c"Microsecond", align 1
@86 = private unnamed_addr constant [10 x i8] c"Nanosecond", align 1
@switch.table._RNvMsX_NtCsa9sSWSfjDbm_4jiff4spanNtB5_9SpanTotal5total.79 = private unnamed_addr constant [8 x i64] [i64 0, i64 0, i64 0, i64 1000000000, i64 60000000000, i64 3600000000000, i64 86400000000000, i64 604800000000000], align 8
@switch.table._RNvMsX_NtCsa9sSWSfjDbm_4jiff4spanNtB5_9SpanTotal5total.80 = private unnamed_addr constant [6 x i32] [i32 1, i32 1000, i32 1000000, i32 0, i32 0, i32 0], align 4
@switch.table._RNvMsX_NtCsa9sSWSfjDbm_4jiff4spanNtB5_9SpanTotal5total.81 = private unnamed_addr constant [6 x i64] [i64 0, i64 0, i64 0, i64 1000000000, i64 60000000000, i64 3600000000000], align 8
@switch.table._RNvMsp_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Unit8duration = private unnamed_addr constant [8 x i32] [i32 1, i32 1000, i32 1000000, i32 0, i32 0, i32 0, i32 0, i32 0], align 4
@switch.table._RNvMsp_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Unit8duration.82 = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 1, i32 60, i32 3600, i32 86400, i32 604800], align 8
@switch.table._RNvNtCsa9sSWSfjDbm_4jiff4span18unit_start_and_end = private unnamed_addr constant [10 x i8] c"\22 \1F\1E\1D\1C\1B\1A\19\18", align 1
@switch.table._RNvXs1c_NtCsa9sSWSfjDbm_4jiff4spanNtB6_7UnitSetNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt = private unnamed_addr constant [10 x ptr] [ptr @73, ptr @72, ptr @71, ptr @70, ptr @69, ptr @68, ptr @67, ptr @66, ptr @65, ptr @64], align 8
@switch.table._RNvXs1c_NtCsa9sSWSfjDbm_4jiff4spanNtB6_7UnitSetNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.83 = private unnamed_addr constant [10 x i8] c"\02\03\02\01\01\01\01\01\02\01", align 8
@switch.table._RNvXs1y_NtCsa9sSWSfjDbm_4jiff4spanNtB6_4UnitNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt = private unnamed_addr constant [10 x i8] c"\0A\0B\0B\06\06\04\03\04\05\04", align 8
@switch.table._RNvXs1y_NtCsa9sSWSfjDbm_4jiff4spanNtB6_4UnitNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.85 = private unnamed_addr constant [10 x ptr] [ptr @86, ptr @85, ptr @84, ptr @83, ptr @82, ptr @81, ptr @80, ptr @79, ptr @78, ptr @77], align 8

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtCsa9sSWSfjDbm_4jiff4spanNtB3_4Span4dayslEB5_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.19 = alloca [3 x i8], align 1            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.b = add i32 %2, -7304485
  %or.cond.i = icmp ult i32 %i.b, -14608969
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i8 @_RNvXsW_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !42
  %i.d = zext nneg i8 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 8
  %i.f = or disjoint i64 %i.e, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %2 to i64
  %i.h = shl nuw i64 %i.g, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.3.0.insert.insert.i.i = phi i64 [ %i.h, %bb.c ], [ %i.f, %bb.b ] ; 5 uses
  %i.i = trunc i64 %.sroa.3.0.insert.insert.i.i to i1
  br i1 %i.i, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit.thread, label %bb.d

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit.thread: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.420.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i, 8
  %.sroa.420.0.extract.trunc.i = trunc i64 %.sroa.420.0.extract.shift.i to i8
  %i.j = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.420.0.extract.trunc.i), !noalias !42
  %i.k = ptrtoint ptr %i.j to i64
  br label %bb.g

bb.d:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.622.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i, 32
  %.sroa.622.0.extract.trunc.i = trunc nuw i64 %.sroa.622.0.extract.shift.i to i32 ; 2 uses
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.58.0.copyload.i = load i32, ptr %.sroa.58.0..sroa_idx.i, align 4, !alias.scope !41 ; 2 uses
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.511.0.copyload.i = load i16, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !41
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.sroa.714.sroa.0.0.copyload.i = load i16, ptr %.sroa.714.0..sroa_idx.i, align 2, !alias.scope !41 ; 2 uses
  %.sroa.714.sroa.4.0..sroa.714.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.714.sroa.4.0.copyload.i = load i8, ptr %.sroa.714.sroa.4.0..sroa.714.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !41 ; 3 uses
  %.sroa.714.sroa.5.0..sroa.714.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 61 ; 2 uses
  %3 = icmp slt i64 %.sroa.3.0.insert.insert.i.i, 0
  %4 = sub i32 0, %.sroa.622.0.extract.trunc.i
  %.sroa.016.0.i = select i1 %3, i32 %4, i32 %.sroa.622.0.extract.trunc.i ; 2 uses
  %i.l = icmp eq i32 %.sroa.016.0.i, 0            ; 2 uses
  %.sroa.0.0.copyload23.i = load i64, ptr %1, align 8, !alias.scope !41 ; 3 uses
  %.sroa.5.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload25.i = load i64, ptr %.sroa.5.0..sroa_idx24.i, align 8, !alias.scope !41 ; 2 uses
  %.sroa.6.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload27.i = load i64, ptr %.sroa.6.0..sroa_idx26.i, align 8, !alias.scope !41 ; 2 uses
  %.sroa.7.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0.copyload29.i = load i64, ptr %.sroa.7.0..sroa_idx28.i, align 8, !alias.scope !41 ; 2 uses
  %.sroa.8.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.8.0.copyload31.i = load i64, ptr %.sroa.8.0..sroa_idx30.i, align 8, !alias.scope !41 ; 2 uses
  %.sroa.9.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.9.0.copyload33.i = load i32, ptr %.sroa.9.0..sroa_idx32.i, align 8, !alias.scope !41 ; 2 uses
  %.sroa.10.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.10.0.copyload35.i = load i32, ptr %.sroa.10.0..sroa_idx34.i, align 4, !alias.scope !41 ; 2 uses
  %i.m = ashr i64 %.sroa.3.0.insert.insert.i.i, 32 ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit.thread14, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ne i64 %i.m, 0                      ; 2 uses
  br i1 %i.o, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp eq i16 %.sroa.714.sroa.0.0.copyload.i, 0
  %i.q = icmp eq i32 %.sroa.9.0.copyload33.i, 0
  %or.cond.i.i = select i1 %i.p, i1 %i.q, i1 false
  %i.r = icmp eq i32 %.sroa.10.0.copyload35.i, 0
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.r, i1 false
  %or.cond8.i.i = select i1 %or.cond5.i.i, i1 %i.l, i1 false
  %i.s = icmp eq i32 %.sroa.58.0.copyload.i, 0
  %or.cond11.i.i = select i1 %or.cond8.i.i, i1 %i.s, i1 false
  %i.t = icmp eq i64 %.sroa.0.0.copyload23.i, 0
  %or.cond13.i.i = select i1 %or.cond11.i.i, i1 %i.t, i1 false
  %i.u = icmp eq i64 %.sroa.5.0.copyload25.i, 0
  %or.cond16.i.i = select i1 %or.cond13.i.i, i1 %i.u, i1 false
  %i.v = icmp eq i64 %.sroa.6.0.copyload27.i, 0
  %or.cond19.i.i = select i1 %or.cond16.i.i, i1 %i.v, i1 false
  %i.w = icmp eq i64 %.sroa.7.0.copyload29.i, 0
  %or.cond22.i.i = select i1 %or.cond19.i.i, i1 %i.w, i1 false
  %i.x = icmp eq i64 %.sroa.8.0.copyload31.i, 0
  %or.cond4.i.i = select i1 %or.cond22.i.i, i1 %i.x, i1 false
  br i1 %or.cond4.i.i, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit.thread14, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.f, %bb.e
  %.sroa.027.0.in.i.i = icmp eq i8 %.sroa.714.sroa.4.0.copyload.i, 0
  %spec.select.i.i = zext i1 %i.o to i8
  br i1 %.sroa.027.0.in.i.i, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit.thread14, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit.thread14: ; preds = %bb.d, %bb.f, %.thread.i.i
  %.sroa.0.0.i.i.ph = phi i8 [ -1, %bb.d ], [ 0, %bb.f ], [ %spec.select.i.i, %.thread.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.714.sroa.5.0..sroa.714.0..sroa_idx.sroa_idx.i, i64 3, i1 false), !alias.scope !42
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit: ; preds = %.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.714.sroa.5.0..sroa.714.0..sroa_idx.sroa_idx.i, i64 3, i1 false), !alias.scope !42
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.y = icmp eq i8 %.sroa.714.sroa.4.0.copyload.i, -2
  br i1 %i.y, label %bb.g, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit, !prof !4

bb.g:                                             ; preds = %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit.thread, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit
  %.sroa.0.013 = phi i64 [ %i.k, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit.thread ], [ %.sroa.0.0.copyload23.i, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45
  %i.z = inttoptr i64 %.sroa.0.013 to ptr
  store ptr %i.z, ptr %i.a, align 8, !noalias !45
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 31, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
          to label %bb.k unwind label %bb.h, !noalias !46

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.ab = load ptr, ptr %i.a, align 8, !alias.scope !49, !noalias !45, !noundef !5 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = atomicrmw add ptr %i.ab, i64 -1 release, align 8, !noalias !50
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i unwind label %bb.l, !noalias !46

bb.k:                                             ; preds = %bb.g
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !46
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  resume { ptr, i32 } %i.aa

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit: ; preds = %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit.thread14, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit
  %.sroa.0.0.i.i16 = phi i8 [ %.sroa.0.0.i.i.ph, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit.thread14 ], [ %.sroa.714.sroa.4.0.copyload.i, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit ]
  %i.ag = and i16 %.sroa.511.0.copyload.i, -65
  %masksel.i = select i1 %i.l, i16 0, i16 64
  %.sroa.018.0.i = or disjoint i16 %i.ag, %masksel.i
  store i64 %.sroa.0.0.copyload23.i, ptr %0, align 8, !alias.scope !46
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.copyload25.i, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !46
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload27.i, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !46
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0.copyload29.i, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !46
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.8.0.copyload31.i, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !46
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.9.0.copyload33.i, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !46
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.10.0.copyload35.i, ptr %.sroa.11.0..sroa_idx, align 4, !alias.scope !46
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.016.0.i, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !46
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.58.0.copyload.i, ptr %.sroa.13.0..sroa_idx, align 4, !alias.scope !46
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %.sroa.018.0.i, ptr %.sroa.14.0..sroa_idx, align 8, !alias.scope !46
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %.sroa.714.sroa.0.0.copyload.i, ptr %.sroa.15.0..sroa_idx, align 2, !alias.scope !46
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sroa.0.0.i.i16, ptr %.sroa.16.0..sroa_idx, align 4, !alias.scope !46
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19, i64 3, i1 false), !alias.scope !46
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtCsa9sSWSfjDbm_4jiff4spanNtB3_4Span5weekslEB5_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.18 = alloca [3 x i8], align 1            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.b = add i32 %2, -1043498
  %or.cond.i = icmp ult i32 %i.b, -2086995
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i8 @_RNvXsU_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !69
  %i.d = zext nneg i8 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 8
  %i.f = or disjoint i64 %i.e, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %2 to i64
  %i.h = shl nuw i64 %i.g, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.3.0.insert.insert.i.i = phi i64 [ %i.h, %bb.c ], [ %i.f, %bb.b ] ; 5 uses
  %i.i = trunc i64 %.sroa.3.0.insert.insert.i.i to i1
  br i1 %i.i, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weekslEB7_.exit.thread, label %bb.d

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weekslEB7_.exit.thread: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.420.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i, 8
  %.sroa.420.0.extract.trunc.i = trunc i64 %.sroa.420.0.extract.shift.i to i8
  %i.j = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.420.0.extract.trunc.i), !noalias !69
  %i.k = ptrtoint ptr %i.j to i64
  br label %bb.g

bb.d:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.622.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i, 32
  %.sroa.622.0.extract.trunc.i = trunc nuw i64 %.sroa.622.0.extract.shift.i to i32 ; 2 uses
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.58.0.copyload.i = load i64, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !68 ; 2 uses
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.511.0.copyload.i = load i16, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !68
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.sroa.714.sroa.0.0.copyload.i = load i16, ptr %.sroa.714.0..sroa_idx.i, align 2, !alias.scope !68 ; 2 uses
  %.sroa.714.sroa.4.0..sroa.714.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.714.sroa.4.0.copyload.i = load i8, ptr %.sroa.714.sroa.4.0..sroa.714.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !68 ; 3 uses
  %.sroa.714.sroa.5.0..sroa.714.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 61 ; 2 uses
  %3 = icmp slt i64 %.sroa.3.0.insert.insert.i.i, 0
  %4 = sub i32 0, %.sroa.622.0.extract.trunc.i
  %.sroa.016.0.i = select i1 %3, i32 %4, i32 %.sroa.622.0.extract.trunc.i ; 2 uses
  %i.l = icmp eq i32 %.sroa.016.0.i, 0            ; 2 uses
  %.sroa.0.0.copyload23.i = load i64, ptr %1, align 8, !alias.scope !68 ; 3 uses
  %.sroa.5.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload25.i = load i64, ptr %.sroa.5.0..sroa_idx24.i, align 8, !alias.scope !68 ; 2 uses
  %.sroa.6.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload27.i = load i64, ptr %.sroa.6.0..sroa_idx26.i, align 8, !alias.scope !68 ; 2 uses
  %.sroa.7.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0.copyload29.i = load i64, ptr %.sroa.7.0..sroa_idx28.i, align 8, !alias.scope !68 ; 2 uses
  %.sroa.8.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.8.0.copyload31.i = load i64, ptr %.sroa.8.0..sroa_idx30.i, align 8, !alias.scope !68 ; 2 uses
  %.sroa.9.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.9.0.copyload33.i = load i32, ptr %.sroa.9.0..sroa_idx32.i, align 8, !alias.scope !68 ; 2 uses
  %i.m = ashr i64 %.sroa.3.0.insert.insert.i.i, 32 ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weekslEB7_.exit.thread13, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ne i64 %i.m, 0                      ; 2 uses
  br i1 %i.o, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp eq i16 %.sroa.714.sroa.0.0.copyload.i, 0
  %i.q = icmp eq i32 %.sroa.9.0.copyload33.i, 0
  %or.cond.i.i = select i1 %i.p, i1 %i.q, i1 false
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.l, i1 false
  %i.r = icmp eq i64 %.sroa.58.0.copyload.i, 0
  %or.cond11.i.i = select i1 %or.cond5.i.i, i1 %i.r, i1 false
  %i.s = icmp eq i64 %.sroa.0.0.copyload23.i, 0
  %or.cond13.i.i = select i1 %or.cond11.i.i, i1 %i.s, i1 false
  %i.t = icmp eq i64 %.sroa.5.0.copyload25.i, 0
  %or.cond16.i.i = select i1 %or.cond13.i.i, i1 %i.t, i1 false
  %i.u = icmp eq i64 %.sroa.6.0.copyload27.i, 0
  %or.cond19.i.i = select i1 %or.cond16.i.i, i1 %i.u, i1 false
  %i.v = icmp eq i64 %.sroa.7.0.copyload29.i, 0
  %or.cond22.i.i = select i1 %or.cond19.i.i, i1 %i.v, i1 false
  %i.w = icmp eq i64 %.sroa.8.0.copyload31.i, 0
  %or.cond4.i.i = select i1 %or.cond22.i.i, i1 %i.w, i1 false
  br i1 %or.cond4.i.i, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weekslEB7_.exit.thread13, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.f, %bb.e
  %.sroa.027.0.in.i.i = icmp eq i8 %.sroa.714.sroa.4.0.copyload.i, 0
  %spec.select.i.i = zext i1 %i.o to i8
  br i1 %.sroa.027.0.in.i.i, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weekslEB7_.exit.thread13, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weekslEB7_.exit

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weekslEB7_.exit.thread13: ; preds = %bb.d, %bb.f, %.thread.i.i
  %.sroa.0.0.i.i.ph = phi i8 [ -1, %bb.d ], [ 0, %bb.f ], [ %spec.select.i.i, %.thread.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.18, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.714.sroa.5.0..sroa.714.0..sroa_idx.sroa_idx.i, i64 3, i1 false), !alias.scope !69
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weekslEB7_.exit: ; preds = %.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.18, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.714.sroa.5.0..sroa.714.0..sroa_idx.sroa_idx.i, i64 3, i1 false), !alias.scope !69
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.x = icmp eq i8 %.sroa.714.sroa.4.0.copyload.i, -2
  br i1 %i.x, label %bb.g, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit, !prof !4

bb.g:                                             ; preds = %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weekslEB7_.exit.thread, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weekslEB7_.exit
  %.sroa.0.012 = phi i64 [ %i.k, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weekslEB7_.exit.thread ], [ %.sroa.0.0.copyload23.i, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weekslEB7_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !72
  %i.y = inttoptr i64 %.sroa.0.012 to ptr
  store ptr %i.y, ptr %i.a, align 8, !noalias !72
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 32, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %bb.k unwind label %bb.h, !noalias !73

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.aa = load ptr, ptr %i.a, align 8, !alias.scope !76, !noalias !72, !noundef !5 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = atomicrmw add ptr %i.aa, i64 -1 release, align 8, !noalias !77
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i unwind label %bb.l, !noalias !73

bb.k:                                             ; preds = %bb.g
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !73
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  resume { ptr, i32 } %i.z

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit: ; preds = %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weekslEB7_.exit.thread13, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weekslEB7_.exit
  %.sroa.0.0.i.i15 = phi i8 [ %.sroa.0.0.i.i.ph, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weekslEB7_.exit.thread13 ], [ %.sroa.714.sroa.4.0.copyload.i, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weekslEB7_.exit ]
  %i.af = and i16 %.sroa.511.0.copyload.i, -129
  %masksel.i = select i1 %i.l, i16 0, i16 128
  %.sroa.018.0.i = or disjoint i16 %i.af, %masksel.i
  store i64 %.sroa.0.0.copyload23.i, ptr %0, align 8, !alias.scope !73
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.copyload25.i, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !73
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload27.i, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !73
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0.copyload29.i, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !73
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.8.0.copyload31.i, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !73
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.9.0.copyload33.i, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !73
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.016.0.i, ptr %.sroa.11.0..sroa_idx, align 4, !alias.scope !73
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.58.0.copyload.i, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !73
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %.sroa.018.0.i, ptr %.sroa.13.0..sroa_idx, align 8, !alias.scope !73
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %.sroa.714.sroa.0.0.copyload.i, ptr %.sroa.14.0..sroa_idx, align 2, !alias.scope !73
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sroa.0.0.i.i15, ptr %.sroa.15.0..sroa_idx, align 4, !alias.scope !73
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.18.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.18, i64 3, i1 false), !alias.scope !73
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtCsa9sSWSfjDbm_4jiff4spanNtB3_4Span5yearssEB5_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, i16 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.b = add i16 %2, -19999
  %or.cond.i = icmp ult i16 %i.b, 25539
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i8 @_RNvXsQ_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !95
  %i.d = zext nneg i8 %i.c to i32
  %i.e = shl nuw nsw i32 %i.d, 8
  %i.f = or disjoint i32 %i.e, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = zext i16 %2 to i32
  %i.h = shl nuw i32 %i.g, 16
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.3.0.insert.insert.i.i = phi i32 [ %i.h, %bb.c ], [ %i.f, %bb.b ] ; 4 uses
  %i.i = trunc i32 %.sroa.3.0.insert.insert.i.i to i1
  br i1 %i.i, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearssEB7_.exit.thread, label %bb.d

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearssEB7_.exit.thread: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.416.0.extract.shift.i = lshr i32 %.sroa.3.0.insert.insert.i.i, 8
  %.sroa.416.0.extract.trunc.i = trunc i32 %.sroa.416.0.extract.shift.i to i8
  %i.j = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.416.0.extract.trunc.i), !noalias !95
  %i.k = ptrtoint ptr %i.j to i64
  br label %bb.g

bb.d:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.517.0.extract.shift.i = lshr i32 %.sroa.3.0.insert.insert.i.i, 16 ; 2 uses
  %.sroa.517.0.extract.trunc.i = trunc nuw i32 %.sroa.517.0.extract.shift.i to i16 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.4.0.copyload.i = load i16, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !94
  %.sroa.79.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.79.0.copyload.i = load i32, ptr %.sroa.79.0..sroa_idx.i, align 4, !alias.scope !94 ; 3 uses
  %i.l = icmp slt i32 %.sroa.3.0.insert.insert.i.i, 0 ; 2 uses
  %3 = sub i16 0, %.sroa.517.0.extract.trunc.i
  %.sroa.012.0.i = select i1 %i.l, i16 %3, i16 %.sroa.517.0.extract.trunc.i ; 2 uses
  %4 = icmp eq i16 %.sroa.012.0.i, 0              ; 2 uses
  %.sroa.0.0.copyload18.i = load i64, ptr %1, align 8, !alias.scope !94 ; 3 uses
  %.sroa.5.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload20.i = load i64, ptr %.sroa.5.0..sroa_idx19.i, align 8, !alias.scope !94 ; 2 uses
  %.sroa.6.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload22.i = load i64, ptr %.sroa.6.0..sroa_idx21.i, align 8, !alias.scope !94 ; 2 uses
  %.sroa.7.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0.copyload24.i = load i64, ptr %.sroa.7.0..sroa_idx23.i, align 8, !alias.scope !94 ; 2 uses
  %.sroa.8.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.8.0.copyload26.i = load i64, ptr %.sroa.8.0..sroa_idx25.i, align 8, !alias.scope !94 ; 2 uses
  %.sroa.9.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.9.0.copyload28.i = load i32, ptr %.sroa.9.0..sroa_idx27.i, align 8, !alias.scope !94 ; 2 uses
  %.sroa.10.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.10.0.copyload30.i = load i32, ptr %.sroa.10.0..sroa_idx29.i, align 4, !alias.scope !94 ; 2 uses
  %.sroa.11.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.11.0.copyload32.i = load i32, ptr %.sroa.11.0..sroa_idx31.i, align 8, !alias.scope !94 ; 2 uses
  %.sroa.12.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.12.0.copyload34.i = load i32, ptr %.sroa.12.0..sroa_idx33.i, align 4, !alias.scope !94 ; 2 uses
  br i1 %i.l, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %5 = icmp ne i32 %.sroa.517.0.extract.shift.i, 0 ; 2 uses
  br i1 %5, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearssEB7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = icmp eq i32 %.sroa.9.0.copyload28.i, 0
  %or.cond.i.i = select i1 %4, i1 %i.m, i1 false
  %i.n = icmp eq i32 %.sroa.10.0.copyload30.i, 0
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.n, i1 false
  %i.o = icmp eq i32 %.sroa.11.0.copyload32.i, 0
  %or.cond8.i.i = select i1 %or.cond5.i.i, i1 %i.o, i1 false
  %i.p = icmp eq i32 %.sroa.12.0.copyload34.i, 0
  %or.cond11.i.i = select i1 %or.cond8.i.i, i1 %i.p, i1 false
  %i.q = icmp eq i64 %.sroa.0.0.copyload18.i, 0
  %or.cond13.i.i = select i1 %or.cond11.i.i, i1 %i.q, i1 false
  %i.r = icmp eq i64 %.sroa.5.0.copyload20.i, 0
  %or.cond16.i.i = select i1 %or.cond13.i.i, i1 %i.r, i1 false
  %i.s = icmp eq i64 %.sroa.6.0.copyload22.i, 0
  %or.cond19.i.i = select i1 %or.cond16.i.i, i1 %i.s, i1 false
  %i.t = icmp eq i64 %.sroa.7.0.copyload24.i, 0
  %or.cond22.i.i = select i1 %or.cond19.i.i, i1 %i.t, i1 false
  %i.u = icmp eq i64 %.sroa.8.0.copyload26.i, 0
  %or.cond4.i.i = select i1 %or.cond22.i.i, i1 %i.u, i1 false
  br i1 %or.cond4.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearssEB7_.exit

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearssEB7_.exit: ; preds = %bb.e, %bb.f
  %i.v = and i32 %.sroa.79.0.copyload.i, 255
  %.sroa.027.0.in.i.i = icmp eq i32 %i.v, 0
  %spec.select.i.i = zext i1 %5 to i32
  %spec.select.i = select i1 %.sroa.027.0.in.i.i, i32 %spec.select.i.i, i32 %.sroa.79.0.copyload.i
  %i.w = and i32 %spec.select.i, 255              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.x = icmp eq i32 %i.w, 254
  br i1 %i.x, label %bb.g, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit, !prof !4

bb.g:                                             ; preds = %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearssEB7_.exit.thread, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearssEB7_.exit
  %.sroa.0.014 = phi i64 [ %i.k, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearssEB7_.exit.thread ], [ %.sroa.0.0.copyload18.i, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearssEB7_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98
  %i.y = inttoptr i64 %.sroa.0.014 to ptr
  store ptr %i.y, ptr %i.a, align 8, !noalias !98
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 32, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.k unwind label %bb.h, !noalias !99

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.aa = load ptr, ptr %i.a, align 8, !alias.scope !102, !noalias !98, !noundef !5 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = atomicrmw add ptr %i.aa, i64 -1 release, align 8, !noalias !103
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i unwind label %bb.l, !noalias !99

bb.k:                                             ; preds = %bb.g
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !99
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  resume { ptr, i32 } %i.z

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit: ; preds = %bb.f, %bb.d, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearssEB7_.exit
  %.sroa.0.0.i.i17 = phi i32 [ %i.w, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearssEB7_.exit ], [ 0, %bb.f ], [ 255, %bb.d ]
  %.sroa.16.60.insert.mask.i = and i32 %.sroa.79.0.copyload.i, -256
  %.sroa.16.60.insert.insert.i = or disjoint i32 %.sroa.0.0.i.i17, %.sroa.16.60.insert.mask.i
  %i.af = and i16 %.sroa.4.0.copyload.i, -513
  %masksel.i = select i1 %4, i16 0, i16 512
  %.sroa.014.0.i = or disjoint i16 %i.af, %masksel.i
  store i64 %.sroa.0.0.copyload18.i, ptr %0, align 8, !alias.scope !99
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.copyload20.i, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !99
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload22.i, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !99
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0.copyload24.i, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !99
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.8.0.copyload26.i, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !99
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.9.0.copyload28.i, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !99
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.10.0.copyload30.i, ptr %.sroa.11.0..sroa_idx, align 4, !alias.scope !99
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.11.0.copyload32.i, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !99
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.12.0.copyload34.i, ptr %.sroa.13.0..sroa_idx, align 4, !alias.scope !99
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %.sroa.014.0.i, ptr %.sroa.14.0..sroa_idx, align 8, !alias.scope !99
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %.sroa.012.0.i, ptr %.sroa.15.0..sroa_idx, align 2, !alias.scope !99
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.sroa.16.60.insert.insert.i, ptr %.sroa.16.0..sroa_idx, align 4, !alias.scope !99
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtCsa9sSWSfjDbm_4jiff4spanNtB3_4Span6monthslEB5_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.19 = alloca [3 x i8], align 1            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.b = add i32 %2, -239977
  %or.cond.i = icmp ult i32 %i.b, -479953
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i8 @_RNvXsS_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !122
  %i.d = zext nneg i8 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 8
  %i.f = or disjoint i64 %i.e, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %2 to i64
  %i.h = shl nuw i64 %i.g, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.3.0.insert.insert.i.i = phi i64 [ %i.h, %bb.c ], [ %i.f, %bb.b ] ; 5 uses
  %i.i = trunc i64 %.sroa.3.0.insert.insert.i.i to i1
  br i1 %i.i, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthslEB7_.exit.thread, label %bb.d

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthslEB7_.exit.thread: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.419.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i, 8
  %.sroa.419.0.extract.trunc.i = trunc i64 %.sroa.419.0.extract.shift.i to i8
  %i.j = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.419.0.extract.trunc.i), !noalias !122
  %i.k = ptrtoint ptr %i.j to i64
  br label %bb.g

bb.d:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.621.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i, 32
  %.sroa.621.0.extract.trunc.i = trunc nuw i64 %.sroa.621.0.extract.shift.i to i32 ; 2 uses
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.58.sroa.0.0.copyload.i = load i32, ptr %.sroa.58.0..sroa_idx.i, align 4, !alias.scope !121 ; 2 uses
  %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.58.sroa.4.0.copyload.i = load i32, ptr %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !121 ; 2 uses
  %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.58.sroa.5.0.copyload.i = load i32, ptr %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !121 ; 2 uses
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.510.0.copyload.i = load i16, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !121
  %.sroa.713.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.sroa.713.sroa.0.0.copyload.i = load i16, ptr %.sroa.713.0..sroa_idx.i, align 2, !alias.scope !121 ; 2 uses
  %.sroa.713.sroa.4.0..sroa.713.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.713.sroa.4.0.copyload.i = load i8, ptr %.sroa.713.sroa.4.0..sroa.713.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !121 ; 3 uses
  %.sroa.713.sroa.5.0..sroa.713.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 61 ; 2 uses
  %3 = icmp slt i64 %.sroa.3.0.insert.insert.i.i, 0
  %4 = sub i32 0, %.sroa.621.0.extract.trunc.i
  %.sroa.015.0.i = select i1 %3, i32 %4, i32 %.sroa.621.0.extract.trunc.i ; 2 uses
  %i.l = icmp eq i32 %.sroa.015.0.i, 0            ; 2 uses
  %.sroa.0.0.copyload22.i = load i64, ptr %1, align 8, !alias.scope !121 ; 3 uses
  %.sroa.5.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload24.i = load i64, ptr %.sroa.5.0..sroa_idx23.i, align 8, !alias.scope !121 ; 2 uses
  %.sroa.6.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload26.i = load i64, ptr %.sroa.6.0..sroa_idx25.i, align 8, !alias.scope !121 ; 2 uses
  %.sroa.7.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0.copyload28.i = load i64, ptr %.sroa.7.0..sroa_idx27.i, align 8, !alias.scope !121 ; 2 uses
  %.sroa.8.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.8.0.copyload30.i = load i64, ptr %.sroa.8.0..sroa_idx29.i, align 8, !alias.scope !121 ; 2 uses
  %i.m = ashr i64 %.sroa.3.0.insert.insert.i.i, 32 ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthslEB7_.exit.thread14, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ne i64 %i.m, 0                      ; 2 uses
  br i1 %i.o, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp eq i16 %.sroa.713.sroa.0.0.copyload.i, 0
  %or.cond.i.i = select i1 %i.p, i1 %i.l, i1 false
  %i.q = icmp eq i32 %.sroa.58.sroa.0.0.copyload.i, 0
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.q, i1 false
  %i.r = icmp eq i32 %.sroa.58.sroa.4.0.copyload.i, 0
  %or.cond8.i.i = select i1 %or.cond5.i.i, i1 %i.r, i1 false
  %i.s = icmp eq i32 %.sroa.58.sroa.5.0.copyload.i, 0
  %or.cond11.i.i = select i1 %or.cond8.i.i, i1 %i.s, i1 false
  %i.t = icmp eq i64 %.sroa.0.0.copyload22.i, 0
  %or.cond13.i.i = select i1 %or.cond11.i.i, i1 %i.t, i1 false
  %i.u = icmp eq i64 %.sroa.5.0.copyload24.i, 0
  %or.cond16.i.i = select i1 %or.cond13.i.i, i1 %i.u, i1 false
  %i.v = icmp eq i64 %.sroa.6.0.copyload26.i, 0
  %or.cond19.i.i = select i1 %or.cond16.i.i, i1 %i.v, i1 false
  %i.w = icmp eq i64 %.sroa.7.0.copyload28.i, 0
  %or.cond22.i.i = select i1 %or.cond19.i.i, i1 %i.w, i1 false
  %i.x = icmp eq i64 %.sroa.8.0.copyload30.i, 0
  %or.cond4.i.i = select i1 %or.cond22.i.i, i1 %i.x, i1 false
  br i1 %or.cond4.i.i, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthslEB7_.exit.thread14, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.f, %bb.e
  %.sroa.027.0.in.i.i = icmp eq i8 %.sroa.713.sroa.4.0.copyload.i, 0
  %spec.select.i.i = zext i1 %i.o to i8
  br i1 %.sroa.027.0.in.i.i, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthslEB7_.exit.thread14, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthslEB7_.exit

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthslEB7_.exit.thread14: ; preds = %bb.d, %bb.f, %.thread.i.i
  %.sroa.0.0.i.i.ph = phi i8 [ -1, %bb.d ], [ 0, %bb.f ], [ %spec.select.i.i, %.thread.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.713.sroa.5.0..sroa.713.0..sroa_idx.sroa_idx.i, i64 3, i1 false), !alias.scope !122
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthslEB7_.exit: ; preds = %.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.713.sroa.5.0..sroa.713.0..sroa_idx.sroa_idx.i, i64 3, i1 false), !alias.scope !122
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.y = icmp eq i8 %.sroa.713.sroa.4.0.copyload.i, -2
  br i1 %i.y, label %bb.g, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit, !prof !4

bb.g:                                             ; preds = %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthslEB7_.exit.thread, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthslEB7_.exit
  %.sroa.0.013 = phi i64 [ %i.k, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthslEB7_.exit.thread ], [ %.sroa.0.0.copyload22.i, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthslEB7_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !125
  %i.z = inttoptr i64 %.sroa.0.013 to ptr
  store ptr %i.z, ptr %i.a, align 8, !noalias !125
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 33, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
          to label %bb.k unwind label %bb.h, !noalias !126

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.ab = load ptr, ptr %i.a, align 8, !alias.scope !129, !noalias !125, !noundef !5 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = atomicrmw add ptr %i.ab, i64 -1 release, align 8, !noalias !130
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i unwind label %bb.l, !noalias !126

bb.k:                                             ; preds = %bb.g
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !126
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  resume { ptr, i32 } %i.aa

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit: ; preds = %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthslEB7_.exit.thread14, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthslEB7_.exit
  %.sroa.0.0.i.i16 = phi i8 [ %.sroa.0.0.i.i.ph, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthslEB7_.exit.thread14 ], [ %.sroa.713.sroa.4.0.copyload.i, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthslEB7_.exit ]
  %i.ag = and i16 %.sroa.510.0.copyload.i, -257
  %masksel.i = select i1 %i.l, i16 0, i16 256
  %.sroa.017.0.i = or disjoint i16 %i.ag, %masksel.i
  store i64 %.sroa.0.0.copyload22.i, ptr %0, align 8, !alias.scope !126
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.copyload24.i, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !126
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload26.i, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !126
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0.copyload28.i, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !126
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.8.0.copyload30.i, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !126
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.015.0.i, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !126
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.58.sroa.0.0.copyload.i, ptr %.sroa.11.0..sroa_idx, align 4, !alias.scope !126
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.58.sroa.4.0.copyload.i, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !126
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.58.sroa.5.0.copyload.i, ptr %.sroa.13.0..sroa_idx, align 4, !alias.scope !126
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %.sroa.017.0.i, ptr %.sroa.14.0..sroa_idx, align 8, !alias.scope !126
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %.sroa.713.sroa.0.0.copyload.i, ptr %.sroa.15.0..sroa_idx, align 2, !alias.scope !126
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sroa.0.0.i.i16, ptr %.sroa.16.0..sroa_idx, align 4, !alias.scope !126
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19, i64 3, i1 false), !alias.scope !126
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtCsa9sSWSfjDbm_4jiff5zonedNtB3_5Zoned5untilTNtNtB5_4span4UnitRBu_EEB5_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i8 noundef range(i8 0, 10) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 6 uses
  %i.l = alloca [64 x i8], align 8                ; 4 uses
  %i.m = alloca [64 x i8], align 8                ; 4 uses
  %i.n = alloca [64 x i8], align 8                ; 4 uses
  %i.o = alloca [64 x i8], align 8                ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 7 uses
  %i.q = alloca [64 x i8], align 8                ; 10 uses
  %i.r = alloca [12 x i8], align 8                ; 5 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [64 x i8], align 8                ; 4 uses
  %i.u = alloca [64 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [12 x i8], align 8                ; 5 uses
  %i.x = alloca [48 x i8], align 8                ; 8 uses
  %i.y = alloca [64 x i8], align 8                ; 4 uses
  %i.z = alloca [64 x i8], align 8                ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %.sroa.15 = alloca [52 x i8], align 8           ; 6 uses
  %.sroa.24 = alloca [3 x i8], align 1            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %.val.i.i49 = load i64, ptr %3, align 8, !alias.scope !229, !noalias !231, !noundef !5 ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val1.i.i50 = load i32, ptr %i.ab, align 8, !alias.scope !229, !noalias !231 ; 5 uses
  %.val2.i.i51 = load i64, ptr %1, align 8, !alias.scope !230, !noalias !231, !noundef !5 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i.i52 = load i32, ptr %i.ac, align 8, !alias.scope !230, !noalias !231 ; 2 uses
  %i.ad = tail call i8 @llvm.scmp.i8.i64(i64 %.val.i.i49, i64 %.val2.i.i51)
  %i.ae = icmp eq i64 %.val.i.i49, %.val2.i.i51
  %i.af = tail call i8 @llvm.scmp.i8.i32(i32 %.val1.i.i50, i32 %.val3.i.i52)
  %.sroa.0.0.i.i.i53 = select i1 %i.ae, i8 %i.af, i8 %i.ad ; 3 uses
  %i.ag = icmp eq i8 %.sroa.0.0.i.i.i53, 0
  br i1 %i.ag, label %_RNvMsH_NtCsa9sSWSfjDbm_4jiff5zonedNtB5_15ZonedDifference23until_with_largest_unit.exit.thread217, label %bb.b

_RNvMsH_NtCsa9sSWSfjDbm_4jiff5zonedNtB5_15ZonedDifference23until_with_largest_unit.exit.thread217: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.15, i8 0, i64 52, i1 false), !noalias !232
  br label %bb.dk

bb.b:                                             ; preds = %bb.a
  %i.ah = icmp samesign ult i8 %2, 6
  br i1 %i.ah, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = tail call noundef zeroext i1 @_RNvXs5_NtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj)
  br i1 %i.ak, label %bb.s, label %bb.w

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !233
  %i.al = icmp eq i64 %.val2.i.i51, -9223372036854775808
  br i1 %i.al, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i.i, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  %i.am = sub nsw i64 0, %.val2.i.i51
  %i.an = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.val.i.i49, i64 %i.am) ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 0       ; 4 uses
  %i.ap = extractvalue { i64, i1 } %i.an, 1
  br i1 %i.ap, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i.i, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  %i.aq = sub i32 %.val1.i.i50, %.val3.i.i52      ; 6 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_RNvMsC_NtCsa9sSWSfjDbm_4jiff9timestampNtB5_19TimestampDifference23until_with_largest_unit.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = icmp sgt i32 %i.aq, 999999999
  br i1 %i.as, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = icmp slt i32 %i.aq, -999999999
  br i1 %i.at, label %bb.j, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.au = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ao, i64 1) ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 1
  br i1 %i.av, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i.i, label %bb.m, !prof !6

bb.j:                                             ; preds = %bb.h
  %i.aw = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ao, i64 -1) ; 2 uses
  %i.ax = extractvalue { i64, i1 } %i.aw, 1
  br i1 %i.ax, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i.i, label %bb.k, !prof !6

bb.k:                                             ; preds = %bb.j
  %i.ay = extractvalue { i64, i1 } %i.aw, 0
  %i.az = add nsw i32 %i.aq, 1000000000
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k, %bb.h
  %.sroa.016.1.i.i.i = phi i64 [ %i.bc, %bb.m ], [ %i.ay, %bb.k ], [ %i.ao, %bb.h ] ; 7 uses
  %.sroa.02.1.i.i.i = phi i32 [ %i.bd, %bb.m ], [ %i.az, %bb.k ], [ %i.aq, %bb.h ] ; 6 uses
  %i.ba = icmp eq i64 %.sroa.016.1.i.i.i, 0
  %i.bb = icmp eq i32 %.sroa.02.1.i.i.i, 0
  %or.cond.i.i.i = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %or.cond.i.i.i, label %_RNvMsC_NtCsa9sSWSfjDbm_4jiff9timestampNtB5_19TimestampDifference23until_with_largest_unit.exit.i, label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.bc = extractvalue { i64, i1 } %i.au, 0
  %i.bd = add nsw i32 %i.aq, -1000000000
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.be = tail call i64 @llvm.scmp.i64.i64(i64 %.sroa.016.1.i.i.i, i64 0)
  %i.bf = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.02.1.i.i.i, i32 0)
  %.not.i.i.i = icmp eq i64 %i.be, %i.bf
  br i1 %.not.i.i.i, label %_RNvMsC_NtCsa9sSWSfjDbm_4jiff9timestampNtB5_19TimestampDifference23until_with_largest_unit.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = icmp slt i64 %.sroa.016.1.i.i.i, 0
  br i1 %i.bg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = add nsw i64 %.sroa.016.1.i.i.i, -1
  %i.bi = add nsw i32 %.sroa.02.1.i.i.i, 1000000000
  br label %_RNvMsC_NtCsa9sSWSfjDbm_4jiff9timestampNtB5_19TimestampDifference23until_with_largest_unit.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bj = add nsw i64 %.sroa.016.1.i.i.i, 1
  %i.bk = add nsw i32 %.sroa.02.1.i.i.i, -1000000000
  br label %_RNvMsC_NtCsa9sSWSfjDbm_4jiff9timestampNtB5_19TimestampDifference23until_with_largest_unit.exit.i

_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i.i: ; preds = %bb.j, %bb.i, %bb.e, %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #24, !noalias !234, !inline_history !144
  unreachable

_RNvMsC_NtCsa9sSWSfjDbm_4jiff9timestampNtB5_19TimestampDifference23until_with_largest_unit.exit.i: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.f
  %.sroa.6.0.ph.i.i = phi i32 [ %.sroa.02.1.i.i.i, %bb.n ], [ %i.bi, %bb.p ], [ %i.bk, %bb.q ], [ %.sroa.02.1.i.i.i, %bb.l ], [ 0, %bb.f ]
  %.sroa.4.0.ph.i.i = phi i64 [ %.sroa.016.1.i.i.i, %bb.n ], [ %i.bh, %bb.p ], [ %i.bj, %bb.q ], [ %.sroa.016.1.i.i.i, %bb.l ], [ %i.ao, %bb.f ]
  call void @_RNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span23from_invariant_duration(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, i8 noundef %2, i64 noundef %.sroa.4.0.ph.i.i, i32 noundef %.sroa.6.0.ph.i.i), !noalias !235, !inline_history !144
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.bm = load i8, ptr %i.bl, align 4, !range !7, !noalias !233, !noundef !5 ; 2 uses
  %i.bn = icmp eq i8 %i.bm, -2
  %i.bo = load ptr, ptr %i.a, align 8, !noalias !233
  br i1 %i.bn, label %_RINvMNtCsa9sSWSfjDbm_4jiff9timestampNtB3_9Timestamp5untilTNtNtB5_4span4UnitBy_EEB5_.exit, label %bb.r

bb.r:                                             ; preds = %_RNvMsC_NtCsa9sSWSfjDbm_4jiff9timestampNtB5_19TimestampDifference23until_with_largest_unit.exit.i
  %.sroa.4.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(52) %.sroa.4.0..sroa_idx.i45, i64 52, i1 false), !noalias !236
  %.sroa.6.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.a, i64 61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.24, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx.i46, i64 3, i1 false), !noalias !236
  br label %_RINvMNtCsa9sSWSfjDbm_4jiff9timestampNtB3_9Timestamp5untilTNtNtB5_4span4UnitBy_EEB5_.exit

_RINvMNtCsa9sSWSfjDbm_4jiff9timestampNtB3_9Timestamp5untilTNtNtB5_4span4UnitBy_EEB5_.exit: ; preds = %_RNvMsC_NtCsa9sSWSfjDbm_4jiff9timestampNtB5_19TimestampDifference23until_with_largest_unit.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !233
  br label %_RNvMsH_NtCsa9sSWSfjDbm_4jiff5zonedNtB5_15ZonedDifference23until_with_largest_unit.exit

bb.s:                                             ; preds = %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.075.0.copyload78 = load i64, ptr %i.bp, align 8, !alias.scope !237, !noalias !231 ; 6 uses
  %.sroa.679.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.679.0.copyload85 = load i32, ptr %.sroa.679.0..sroa_idx84, align 8, !alias.scope !237, !noalias !231
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.086.0.copyload89 = load i64, ptr %i.bq, align 8, !alias.scope !238, !noalias !231 ; 4 uses
  %.sroa.690.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.690.0.copyload96 = load i32, ptr %.sroa.690.0..sroa_idx95, align 8, !alias.scope !238, !noalias !231 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.075.0.copyload78 to i32
end_hunk_0
begin_hunk_1_@_RINvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB3_4Date5untilTNtNtB7_4span4UnitBB_EEB7_:bb.a
  %i.bu = ashr i32 %.sroa.513.0.extract.shift43.i.i, 24
  br label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date5since.exit.i

_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date5since.exit.i: ; preds = %bb.l, %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date11day_of_year.exit52.i.i, %bb.g
  %.sroa.030.0.i.i = phi i32 [ %i.bu, %bb.l ], [ %i.bt, %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date11day_of_year.exit52.i.i ], [ %i.ba, %bb.g ] ; 2 uses
  %i.bv = sub nsw i32 0, %.sroa.030.0.i.i         ; 2 uses
  %i.bw = icmp eq i8 %.sroa.01.0.extract.trunc.i.i, 7
  br i1 %i.bw, label %bb.aq, label %.thread504.i

bb.m:                                             ; preds = %bb.ad, %switch.lookup574.i
  %.sroa.035.0.i = phi i16 [ %i.dv, %bb.ad ], [ %.sroa.035.1.i, %switch.lookup574.i ] ; 4 uses
  %.sroa.079.0.i = phi i32 [ %i.dw, %bb.ad ], [ %i.dr, %switch.lookup574.i ] ; 3 uses
  %i.bx = icmp ne i8 %.sroa.01.0.extract.trunc.i.i, 8
  %i.by = icmp eq i16 %.sroa.035.0.i, 0
  %or.cond3.i = or i1 %i.bx, %i.by
  br i1 %or.cond3.i, label %bb.ae, label %bb.ao

bb.n:                                             ; preds = %bb.e
  br i1 %i.r, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  br i1 %i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = icmp slt i8 %i.o, 1                     ; 2 uses
  %.117.i = select i1 %i.bz, i8 -1, i8 1
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.p, %bb.o
  %i.ca = phi i1 [ %i.ck, %bb.t ], [ false, %bb.o ], [ %i.bz, %bb.p ]
  %.sroa.044.0.i = phi i8 [ %.119.i, %bb.t ], [ 0, %bb.o ], [ %.117.i, %bb.p ] ; 2 uses
  %i.cb = icmp eq i8 %.sroa.1324.34.extract.trunc, 2
  br i1 %i.cb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cc = srem i16 %.sroa.1324.32.extract.trunc, 25
  %i.cd = icmp eq i16 %i.cc, 0
  %..i.i = select i1 %i.cd, i16 15, i16 3
  %i.ce = and i16 %..i.i, %.sroa.1324.32.extract.trunc
  %i.cf = icmp eq i16 %i.ce, 0
  %spec.select.i.i = select i1 %i.cf, i8 29, i8 28
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i

bb.s:                                             ; preds = %bb.q
  %i.cg = ashr i8 %.sroa.1324.34.extract.trunc, 3
  %i.ch = xor i8 %i.cg, %.sroa.1324.34.extract.trunc
  %i.ci = or i8 %i.ch, 30
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i: ; preds = %bb.s, %bb.r
  %.sroa.0.0.i.i = phi i8 [ %spec.select.i.i, %bb.r ], [ %i.ci, %bb.s ] ; 2 uses
  %.inv.i = icmp slt i8 %i.p, 1
  %.120.i = select i1 %.inv.i, i8 -1, i8 1
  %.sroa.050.0.i = select i1 %i.j, i8 0, i8 %.120.i ; 2 uses
  %switch.offset.i = sub nsw i8 0, %.sroa.044.0.i ; 3 uses
  %i.cj = icmp eq i8 %.sroa.050.0.i, %switch.offset.i
  br i1 %i.cj, label %switch.lookup.i, label %bb.u

bb.t:                                             ; preds = %bb.n
  %i.ck = icmp slt i16 %i.n, 1                    ; 2 uses
  %.119.i = select i1 %i.ck, i8 -1, i8 1
  br label %bb.q

switch.lookup.i:                                  ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !334
  call void @_RNvNtNtCsa9sSWSfjDbm_4jiff5civil4date13month_add_one(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, i16 noundef %.sroa.1324.32.extract.trunc, i8 noundef %.sroa.1324.34.extract.trunc, i8 noundef %.sroa.050.0.i), !noalias !334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.cl = load i16, ptr %i.e, align 8, !range !8, !alias.scope !335, !noalias !334, !noundef !5
  %i.cm = trunc nuw i16 %i.cl to i1
  br i1 %i.cm, label %bb.v, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultTsaENtNtCsa9sSWSfjDbm_4jiff5error5ErrorE6unwrapBP_.exit.i, !prof !6

bb.u:                                             ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i
  %.sroa.035.1.i = phi i16 [ %i.de, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i ], [ %i.n, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i ] ; 2 uses
  %.sroa.052.0.i = phi i16 [ %i.db, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i ], [ %.sroa.1324.32.extract.trunc, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i ]
  %.sroa.058.0.i = phi i8 [ %i.dd, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i ], [ %.sroa.1324.34.extract.trunc, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i ] ; 2 uses
  %.sroa.065.0.i = phi i8 [ %.sroa.0.0.i124.i, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i ], [ %.sroa.0.0.i.i, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i ]
  %.sroa.068.0.i = phi i32 [ %i.dp, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i ], [ 0, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i ]
  %.sroa.079.1.in.i = phi i8 [ %i.df, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i ], [ %i.o, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i ]
  %.sroa.079.1.i = sext i8 %.sroa.079.1.in.i to i32
  %..i123.i = tail call noundef i8 @llvm.smin.i8(i8 range(i8 28, 0) %.sroa.065.0.i, i8 %.sroa.512.0.extract.trunc.i)
  %i.cn = sext i8 %..i123.i to i32
  %i.co = sext i8 %.sroa.1324.35.extract.trunc to i32
  %i.cp = sub nsw i32 %i.co, %i.cn
  %i.cq = add nsw i32 %i.cp, %.sroa.068.0.i       ; 4 uses
  %i.cr = icmp eq i16 %.sroa.035.1.i, 0
  br i1 %i.cr, label %.thread434.i, label %switch.lookup574.i

bb.v:                                             ; preds = %switch.lookup.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !336
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !335, !noalias !334, !noundef !5
  store ptr %i.ct, ptr %i.d, align 8, !noalias !336
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #22
          to label %bb.z unwind label %bb.w, !noalias !336

bb.w:                                             ; preds = %bb.v
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  call void @llvm.experimental.noalias.scope.decl(metadata !338), !noalias !335
  %i.cv = load ptr, ptr %i.d, align 8, !alias.scope !339, !noalias !336, !noundef !5 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %common.resume.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = atomicrmw add ptr %i.cv, i64 -1 release, align 8, !noalias !340
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.y, label %common.resume.i

bb.y:                                             ; preds = %bb.x
  fence acquire, !noalias !335
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %common.resume.i unwind label %bb.aa, !noalias !334

bb.z:                                             ; preds = %bb.v
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !336
  unreachable

common.resume.i:                                  ; preds = %bb.bf, %bb.be, %bb.bd, %bb.av, %bb.au, %bb.at, %bb.aj, %bb.ai, %bb.ah, %bb.y, %bb.x, %bb.w
  %common.resume.op.i = phi { ptr, i32 } [ %i.fm, %bb.at ], [ %i.cu, %bb.y ], [ %i.eg, %bb.ah ], [ %i.gg, %bb.be ], [ %i.gg, %bb.bd ], [ %i.cu, %bb.x ], [ %i.cu, %bb.w ], [ %i.eg, %bb.aj ], [ %i.eg, %bb.ai ], [ %i.fm, %bb.av ], [ %i.fm, %bb.au ], [ %i.gg, %bb.bf ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultTsaENtNtCsa9sSWSfjDbm_4jiff5error5ErrorE6unwrapBP_.exit.i: ; preds = %switch.lookup.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.db = load i16, ptr %i.da, align 2, !alias.scope !335, !noalias !334, !noundef !5 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.dd = load i8, ptr %i.dc, align 4, !alias.scope !335, !noalias !334, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !334
  %i.de = sub i16 %i.db, %.sroa.011.0.extract.trunc.i
  %i.df = sub i8 %i.dd, %.sroa.4.0.extract.trunc.i
  %i.dg = icmp eq i8 %i.dd, 2
  br i1 %i.dg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultTsaENtNtCsa9sSWSfjDbm_4jiff5error5ErrorE6unwrapBP_.exit.i
  %i.dh = srem i16 %i.db, 25
  %i.di = icmp eq i16 %i.dh, 0
  %..i125.i = select i1 %i.di, i16 15, i16 3
  %i.dj = and i16 %..i125.i, %i.db
  %i.dk = icmp eq i16 %i.dj, 0
  %spec.select.i126.i = select i1 %i.dk, i8 29, i8 28
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i

bb.ac:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultTsaENtNtCsa9sSWSfjDbm_4jiff5error5ErrorE6unwrapBP_.exit.i
  %i.dl = ashr i8 %i.dd, 3
  %i.dm = xor i8 %i.dl, %i.dd
  %i.dn = or i8 %i.dm, 30
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit127.i: ; preds = %bb.ac, %bb.ab
  %.sroa.0.0.i124.i = phi i8 [ %spec.select.i126.i, %bb.ab ], [ %i.dn, %bb.ac ] ; 2 uses
  %i.do = sub nsw i8 0, %.sroa.0.0.i.i
  %spec.select122.i = select i1 %i.ca, i8 %i.do, i8 %.sroa.0.0.i124.i
  %i.dp = sext i8 %spec.select122.i to i32
  br label %bb.u

switch.lookup574.i:                               ; preds = %bb.u
  %i.dq = sub i8 %.sroa.058.0.i, %.sroa.4.0.extract.trunc.i ; 2 uses
  %i.dr = sext i8 %i.dq to i32                    ; 2 uses
  %i.ds = icmp eq i8 %.sroa.058.0.i, %.sroa.4.0.extract.trunc.i
  %.inv528.i = icmp slt i8 %i.dq, 1
  %.121.i = select i1 %.inv528.i, i8 -1, i8 1
  %.sroa.069.0.i = select i1 %i.ds, i8 0, i8 %.121.i
  %i.dt = icmp eq i8 %.sroa.069.0.i, %switch.offset.i
  br i1 %i.dt, label %bb.ad, label %bb.m

bb.ad:                                            ; preds = %switch.lookup574.i
  %narrow.i = mul nsw i8 %.sroa.044.0.i, 12
  %i.du = sext i8 %narrow.i to i32
  %.neg.i = sext i8 %switch.offset.i to i16
  %.neg542.i = sub i16 %.neg.i, %.sroa.011.0.extract.trunc.i
  %i.dv = add i16 %.neg542.i, %.sroa.052.0.i
  %i.dw = add nsw i32 %i.dr, %i.du
  br label %bb.m

bb.ae:                                            ; preds = %bb.m
  %i.dx = add i16 %.sroa.035.0.i, -19999
  %or.cond.i.i = icmp ult i16 %i.dx, 25539
  br i1 %or.cond.i.i, label %bb.af, label %.thread434.i

bb.af:                                            ; preds = %bb.ae
  %i.dy = tail call noundef i8 @_RNvXsQ_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !341
  %i.dz = zext nneg i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 8
  %i.eb = or disjoint i32 %i.ea, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i

.thread434.i:                                     ; preds = %bb.ao, %bb.ae, %bb.u, %bb.e
  %.sroa.079.2443.i = phi i32 [ %.sroa.079.0.i, %bb.ae ], [ 0, %bb.e ], [ %.sroa.079.1.i, %bb.u ], [ %i.et, %bb.ao ]
  %.sroa.035.2441.i = phi i16 [ %.sroa.035.0.i, %bb.ae ], [ 0, %bb.e ], [ 0, %bb.u ], [ 0, %bb.ao ]
  %.sroa.042.0432440.i = phi i32 [ %i.cq, %bb.ae ], [ %i.q, %bb.e ], [ %i.cq, %bb.u ], [ %i.cq, %bb.ao ]
  %i.ec = zext i16 %.sroa.035.2441.i to i32
  %i.ed = shl nuw i32 %i.ec, 16
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i: ; preds = %.thread434.i, %bb.af
  %.sroa.079.2442.i = phi i32 [ %.sroa.079.2443.i, %.thread434.i ], [ %.sroa.079.0.i, %bb.af ] ; 3 uses
  %.sroa.042.0432439.i = phi i32 [ %.sroa.042.0432440.i, %.thread434.i ], [ %i.cq, %bb.af ] ; 3 uses
  %.sroa.3.0.insert.insert.i.i128.i = phi i32 [ %i.ed, %.thread434.i ], [ %i.eb, %bb.af ] ; 4 uses
  %i.ee = trunc i32 %.sroa.3.0.insert.insert.i.i128.i to i1
  br i1 %i.ee, label %bb.ag, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i

bb.ag:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %.sroa.416.0.extract.shift.i.i = lshr i32 %.sroa.3.0.insert.insert.i.i128.i, 8
  %.sroa.416.0.extract.trunc.i.i = trunc i32 %.sroa.416.0.extract.shift.i.i to i8
  %i.ef = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.416.0.extract.trunc.i.i), !noalias !341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !342
  store ptr %i.ef, ptr %i.c, align 8, !noalias !342
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 32, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.ak unwind label %bb.ah, !noalias !343

bb.ah:                                            ; preds = %bb.ag
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.eh = load ptr, ptr %i.c, align 8, !alias.scope !346, !noalias !342, !noundef !5 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %common.resume.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ej = atomicrmw add ptr %i.eh, i64 -1 release, align 8, !noalias !347
  %i.ek = icmp eq i64 %i.ej, 1
  br i1 %i.ek, label %bb.aj, label %common.resume.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #21
          to label %common.resume.i unwind label %bb.al, !noalias !343

bb.ak:                                            ; preds = %bb.ag
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !343
  unreachable

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %.sroa.517.0.extract.shift.i.i = lshr i32 %.sroa.3.0.insert.insert.i.i128.i, 16 ; 2 uses
  %.sroa.517.0.extract.trunc.i.i = trunc nuw i32 %.sroa.517.0.extract.shift.i.i to i16 ; 2 uses
  %i.em = icmp slt i32 %.sroa.3.0.insert.insert.i.i128.i, 0 ; 2 uses
  %i.en = sub i16 0, %.sroa.517.0.extract.trunc.i.i
  %.not529.i = icmp ne i32 %.sroa.517.0.extract.shift.i.i, 0 ; 2 uses
  %masksel.i.i = select i1 %.not529.i, i16 512, i16 0
  %spec.select538.i = zext i1 %.not529.i to i8
  %.sroa.26.60.extract.trunc455.i = select i1 %i.em, i8 -1, i8 %spec.select538.i ; 2 uses
  %.sroa.24382.0450.i = select i1 %i.em, i16 %i.en, i16 %.sroa.517.0.extract.trunc.i.i ; 5 uses
  %.sroa.015.0.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.079.2442.i, i1 true) ; 3 uses
  %3 = icmp eq i32 %.sroa.079.2442.i, 0           ; 4 uses
  %masksel.i133.i = select i1 %3, i16 0, i16 256
  %i.eo = icmp slt i32 %.sroa.079.2442.i, 0
  br i1 %i.eo, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i, label %bb.am

bb.am:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %4 = icmp eq i16 %.sroa.24382.0450.i, 0
  %5 = select i1 %3, i1 %4, i1 false
  br i1 %5, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i, label %.thread.i.i143.i

.thread.i.i143.i:                                 ; preds = %bb.am
  %.not = xor i1 %3, true
  %.sroa.027.0.in.i.i144.i = icmp eq i8 %.sroa.26.60.extract.trunc455.i, 0
  %spec.select.i.i145.i = zext i1 %.not to i8
  %spec.select540.i = select i1 %.sroa.027.0.in.i.i144.i, i8 %spec.select.i.i145.i, i8 %.sroa.26.60.extract.trunc455.i
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i: ; preds = %.thread.i.i143.i, %bb.am, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %.sroa.26396.0468.i = phi i8 [ %spec.select540.i, %.thread.i.i143.i ], [ -1, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i ], [ 0, %bb.am ] ; 2 uses
  %.sroa.016.0.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.042.0432439.i, i1 true) ; 3 uses
  %i.ep = icmp ne i32 %.sroa.042.0432439.i, 0     ; 3 uses
  %masksel.i155.i = select i1 %i.ep, i16 64, i16 0
  %.sroa.017.0.i.i = or disjoint i16 %masksel.i155.i, %masksel.i133.i
  %.sroa.018.0.i.i = or disjoint i16 %.sroa.017.0.i.i, %masksel.i.i ; 3 uses
  %i.eq = icmp slt i32 %.sroa.042.0432439.i, 0
  br i1 %i.eq, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit174.i, label %bb.an

bb.an:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %.not577.i = xor i1 %i.ep, true
  %6 = icmp eq i16 %.sroa.24382.0450.i, 0
  %7 = select i1 %.not577.i, i1 %6, i1 false
  %or.cond578.i = select i1 %7, i1 %3, i1 false
  br i1 %or.cond578.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit174.i, label %.thread.i.i165.i

.thread.i.i165.i:                                 ; preds = %bb.an
  %.sroa.027.0.in.i.i166.i = icmp eq i8 %.sroa.26396.0468.i, 0
  %spec.select.i.i167.i = zext i1 %i.ep to i8
  %spec.select541.i = select i1 %.sroa.027.0.in.i.i166.i, i8 %spec.select.i.i167.i, i8 %.sroa.26396.0468.i
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit174.i

bb.ao:                                            ; preds = %bb.m
  %i.er = sext i16 %.sroa.035.0.i to i32
  %i.es = mul nsw i32 %i.er, 12
  %i.et = add nsw i32 %i.es, %.sroa.079.0.i       ; 2 uses
  %i.eu = add nsw i32 %i.et, -239977
  %or.cond535.i = icmp ult i32 %i.eu, -479953
  br i1 %or.cond535.i, label %bb.ap, label %.thread434.i

bb.ap:                                            ; preds = %bb.ao
  %i.ev = tail call noundef i8 @_RNvXsS_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !334
  %i.ew = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.ev), !noalias !334
  br label %_RNvMsv_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_14DateDifference23since_with_largest_unit.exit

bb.aq:                                            ; preds = %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date5since.exit.i
  %i.ex = sdiv i32 %.sroa.030.0.i.i, -7           ; 2 uses
  %i.ey = srem i32 %i.bv, 7                       ; 2 uses
  %i.ez = add nsw i32 %i.ex, -1043498
  %or.cond.i175.i = icmp ult i32 %i.ez, -2086995
  br i1 %or.cond.i175.i, label %bb.ar, label %.thread504.i

bb.ar:                                            ; preds = %bb.aq
  %i.fa = tail call noundef i8 @_RNvXsU_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !348
  %i.fb = zext nneg i8 %i.fa to i64
  %i.fc = shl nuw nsw i64 %i.fb, 8
  %i.fd = or disjoint i64 %i.fc, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i

.thread504.i:                                     ; preds = %bb.aq, %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date5since.exit.i
  %.sroa.032.0510.i = phi i32 [ %i.ey, %bb.aq ], [ %i.bv, %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date5since.exit.i ]
  %.sroa.031.0508.i = phi i32 [ %i.ex, %bb.aq ], [ 0, %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date5since.exit.i ]
  %i.fe = zext i32 %.sroa.031.0508.i to i64
  %i.ff = shl nuw i64 %i.fe, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i: ; preds = %.thread504.i, %bb.ar
  %.sroa.032.0509.i = phi i32 [ %.sroa.032.0510.i, %.thread504.i ], [ %i.ey, %bb.ar ] ; 2 uses
  %.sroa.3.0.insert.insert.i.i176.i = phi i64 [ %i.ff, %.thread504.i ], [ %i.fd, %bb.ar ] ; 5 uses
  %i.fg = trunc i64 %.sroa.3.0.insert.insert.i.i176.i to i1
  br i1 %i.fg, label %bb.as, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit221.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit221.i: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %.sroa.622.0.extract.shift.i177.i = lshr i64 %.sroa.3.0.insert.insert.i.i176.i, 32 ; 2 uses
  %.sroa.622.0.extract.trunc.i178.i = trunc nuw i64 %.sroa.622.0.extract.shift.i177.i to i32 ; 2 uses
  %i.fh = icmp slt i64 %.sroa.3.0.insert.insert.i.i176.i, 0
  %i.fi = sub i32 0, %.sroa.622.0.extract.trunc.i178.i
  %.sroa.016.0.i188.i = select i1 %i.fh, i32 %i.fi, i32 %.sroa.622.0.extract.trunc.i178.i ; 3 uses
  %.not532.i = icmp eq i64 %.sroa.622.0.extract.shift.i177.i, 0
  %masksel.i189.i = select i1 %.not532.i, i16 0, i16 128
  %i.fj = ashr i64 %.sroa.3.0.insert.insert.i.i176.i, 32 ; 2 uses
  %.sroa.0.0.i.i215.i = tail call i8 @llvm.scmp.i8.i64(i64 %i.fj, i64 0)
  %i.fk = add nsw i32 %.sroa.032.0509.i, -7304485
  %or.cond.i222.i = icmp ult i32 %i.fk, -14608969
  br i1 %or.cond.i222.i, label %bb.ay, label %bb.az

bb.as:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i
  %.sroa.420.0.extract.shift.i218.i = lshr i64 %.sroa.3.0.insert.insert.i.i176.i, 8
  %.sroa.420.0.extract.trunc.i219.i = trunc i64 %.sroa.420.0.extract.shift.i218.i to i8
  %i.fl = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.420.0.extract.trunc.i219.i), !noalias !348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !349
  store ptr %i.fl, ptr %i.b, align 8, !noalias !349
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 32, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %bb.aw unwind label %bb.at, !noalias !350

bb.at:                                            ; preds = %bb.as
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.fn = load ptr, ptr %i.b, align 8, !alias.scope !353, !noalias !349, !noundef !5 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %common.resume.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fp = atomicrmw add ptr %i.fn, i64 -1 release, align 8, !noalias !354
  %i.fq = icmp eq i64 %i.fp, 1
  br i1 %i.fq, label %bb.av, label %common.resume.i

bb.av:                                            ; preds = %bb.au
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %common.resume.i unwind label %bb.ax, !noalias !350

bb.aw:                                            ; preds = %bb.as
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !350
  unreachable

bb.ay:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit221.i
  %i.fs = tail call noundef i8 @_RNvXsW_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !355
  %i.ft = zext nneg i8 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 8
  %i.fv = or disjoint i64 %i.fu, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i223.i

bb.az:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit221.i
  %i.fw = zext i32 %.sroa.032.0509.i to i64
  %i.fx = shl nuw i64 %i.fw, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i223.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i223.i: ; preds = %bb.az, %bb.ay
  %.sroa.3.0.insert.insert.i.i224.i = phi i64 [ %i.fx, %bb.az ], [ %i.fv, %bb.ay ] ; 5 uses
  %i.fy = trunc i64 %.sroa.3.0.insert.insert.i.i224.i to i1
  br i1 %i.fy, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i223.i
  %.sroa.622.0.extract.shift.i225.i = lshr i64 %.sroa.3.0.insert.insert.i.i224.i, 32
  %.sroa.622.0.extract.trunc.i226.i = trunc nuw i64 %.sroa.622.0.extract.shift.i225.i to i32 ; 2 uses
  %i.fz = icmp slt i64 %.sroa.3.0.insert.insert.i.i224.i, 0
  %i.ga = sub i32 0, %.sroa.622.0.extract.trunc.i226.i
  %.sroa.016.0.i236.i = select i1 %i.fz, i32 %i.ga, i32 %.sroa.622.0.extract.trunc.i226.i ; 4 uses
  %i.gb = icmp eq i32 %.sroa.016.0.i236.i, 0      ; 2 uses
  %masksel.i237.i = select i1 %i.gb, i16 0, i16 64
  %.sroa.018.0.i238.i = or disjoint i16 %masksel.i237.i, %masksel.i189.i ; 3 uses
  %i.gc = ashr i64 %.sroa.3.0.insert.insert.i.i224.i, 32 ; 2 uses
  %i.gd = icmp slt i64 %i.gc, 0
  br i1 %i.gd, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit174.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %8 = icmp ne i64 %i.gc, 0                       ; 2 uses
  %.not536.i = xor i1 %8, true
  %i.ge = icmp eq i32 %.sroa.016.0.i188.i, 0
  %9 = select i1 %.not536.i, i1 %i.ge, i1 false
  %or.cond537.i = select i1 %9, i1 %i.gb, i1 false
  br i1 %or.cond537.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit174.i, label %.thread.i.i261.i

.thread.i.i261.i:                                 ; preds = %bb.bb
  %.sroa.027.0.in.i.i262.i = icmp eq i64 %i.fj, 0
  %spec.select.i.i263.i = zext i1 %8 to i8
  %spec.select.i264.i = select i1 %.sroa.027.0.in.i.i262.i, i8 %spec.select.i.i263.i, i8 %.sroa.0.0.i.i215.i
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit174.i

bb.bc:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i223.i
  %.sroa.420.0.extract.shift.i279.i = lshr i64 %.sroa.3.0.insert.insert.i.i224.i, 8
  %.sroa.420.0.extract.trunc.i280.i = trunc i64 %.sroa.420.0.extract.shift.i279.i to i8
  %i.gf = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.420.0.extract.trunc.i280.i), !noalias !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !356
  store ptr %i.gf, ptr %i.a, align 8, !noalias !356
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 31, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
          to label %bb.bg unwind label %bb.bd, !noalias !357

bb.bd:                                            ; preds = %bb.bc
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.gh = load ptr, ptr %i.a, align 8, !alias.scope !360, !noalias !356, !noundef !5 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %common.resume.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gj = atomicrmw add ptr %i.gh, i64 -1 release, align 8, !noalias !361
  %i.gk = icmp eq i64 %i.gj, 1
  br i1 %i.gk, label %bb.bf, label %common.resume.i

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %common.resume.i unwind label %bb.bh, !noalias !357

bb.bg:                                            ; preds = %bb.bc
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !357
  unreachable

_RNvMsv_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_14DateDifference23since_with_largest_unit.exit: ; preds = %bb.ap, %bb.c
  %.sroa.025.0 = phi ptr [ %i.ew, %bb.ap ], [ %i.l, %bb.c ]
  store ptr %.sroa.025.0, ptr %0, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.gm, align 4
  br label %bb.bi

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit174.i: ; preds = %bb.ba, %bb.bb, %.thread.i.i261.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i, %bb.an, %.thread.i.i165.i, %bb.b
  %.sroa.12.0.ph = phi i32 [ 0, %bb.b ], [ %.sroa.015.0.i.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i ], [ %.sroa.015.0.i.i, %.thread.i.i165.i ], [ %.sroa.015.0.i.i, %bb.an ], [ 0, %.thread.i.i261.i ], [ 0, %bb.bb ], [ 0, %bb.ba ]
  %.sroa.1327.0.ph = phi i32 [ 0, %bb.b ], [ 0, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i ], [ 0, %.thread.i.i165.i ], [ 0, %bb.an ], [ %.sroa.016.0.i188.i, %.thread.i.i261.i ], [ 0, %bb.bb ], [ %.sroa.016.0.i188.i, %bb.ba ]
  %.sroa.15.0.ph = phi i32 [ 0, %bb.b ], [ %.sroa.016.0.i.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i ], [ %.sroa.016.0.i.i, %.thread.i.i165.i ], [ %.sroa.016.0.i.i, %bb.an ], [ %.sroa.016.0.i236.i, %.thread.i.i261.i ], [ %.sroa.016.0.i236.i, %bb.bb ], [ %.sroa.016.0.i236.i, %bb.ba ]
  %.sroa.19.0.ph = phi i16 [ 0, %bb.b ], [ %.sroa.018.0.i.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i ], [ %.sroa.018.0.i.i, %.thread.i.i165.i ], [ %.sroa.018.0.i.i, %bb.an ], [ %.sroa.018.0.i238.i, %.thread.i.i261.i ], [ %.sroa.018.0.i238.i, %bb.bb ], [ %.sroa.018.0.i238.i, %bb.ba ]
  %.sroa.21.0.ph = phi i16 [ 0, %bb.b ], [ %.sroa.24382.0450.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i ], [ %.sroa.24382.0450.i, %.thread.i.i165.i ], [ %.sroa.24382.0450.i, %bb.an ], [ 0, %.thread.i.i261.i ], [ 0, %bb.bb ], [ 0, %bb.ba ]
  %.sroa.23.0.ph = phi i8 [ 0, %bb.b ], [ -1, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.i ], [ %spec.select541.i, %.thread.i.i165.i ], [ 0, %bb.an ], [ %spec.select.i264.i, %.thread.i.i261.i ], [ 0, %bb.bb ], [ -1, %bb.ba ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1126, i8 0, i64 32, i1 false)
  store ptr null, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1126, i64 32, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.12.0.ph, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.1327.0.ph, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.15.0.ph, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %.sroa.19.0.ph, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %.sroa.21.0.ph, ptr %.sroa.8.0..sroa_idx, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sroa.23.0.ph, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i24 0, ptr %.sroa.10.0..sroa_idx, align 1
  br label %bb.bi

bb.bi:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit174.i, %_RNvMsv_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_14DateDifference23since_with_largest_unit.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB3_8DateTime5untilTNtNtB7_4span4UnitBF_EEB7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, i64 %.0.val, i32 %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 6 uses
  %i.h = alloca [64 x i8], align 8                ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 10 uses
  %i.j = alloca [64 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.k = load i8, ptr %1, align 4, !range !10, !alias.scope !414, !noundef !5 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.13.sroa.4.5.copyload = load i64, ptr %i.l, align 4, !alias.scope !415 ; 8 uses
  %.sroa.13.sroa.6.5..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.13.sroa.6.5.copyload = load i32, ptr %.sroa.13.sroa.6.5..sroa_idx, align 4, !alias.scope !415 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.m = icmp samesign ult i8 %i.k, 7
  br i1 %i.m, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.13.sroa.6.5.copyload to i16 ; 8 uses
  %.sroa.3.0.extract.shift.i = lshr i32 %.sroa.13.sroa.6.5.copyload, 24
  %.sroa.3.0.extract.trunc.i = trunc nuw i32 %.sroa.3.0.extract.shift.i to i8 ; 4 uses
  %.sroa.03.0.extract.trunc.i = trunc i32 %.8.val to i16 ; 2 uses
  %.sroa.35.0.extract.shift.i = lshr i32 %.8.val, 24
  %.sroa.35.0.extract.trunc.i = trunc nuw i32 %.sroa.35.0.extract.shift.i to i8
  %i.n = tail call i8 @llvm.scmp.i8.i16(i16 %.sroa.0.0.extract.trunc.i, i16 %.sroa.03.0.extract.trunc.i)
  %i.o = icmp eq i16 %.sroa.0.0.extract.trunc.i, %.sroa.03.0.extract.trunc.i
  br i1 %i.o, label %bb.c, label %_RINvMsb_NtCsb09rMIQFAXO_9jiff_core6boundsNtB6_4Sign13from_ordinalsNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateEB18_.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.24.0.extract.shift.i = lshr i32 %.8.val, 16
  %.sroa.24.0.extract.trunc.i = trunc i32 %.sroa.24.0.extract.shift.i to i8 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i32 %.sroa.13.sroa.6.5.copyload, 16
  %.sroa.2.0.extract.trunc.i = trunc i32 %.sroa.2.0.extract.shift.i to i8 ; 2 uses
  %i.p = tail call i8 @llvm.scmp.i8.i8(i8 %.sroa.2.0.extract.trunc.i, i8 %.sroa.24.0.extract.trunc.i)
  %i.q = icmp eq i8 %.sroa.2.0.extract.trunc.i, %.sroa.24.0.extract.trunc.i
  br i1 %i.q, label %bb.d, label %_RINvMsb_NtCsb09rMIQFAXO_9jiff_core6boundsNtB6_4Sign13from_ordinalsNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateEB18_.exit

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i8 @llvm.scmp.i8.i8(i8 %.sroa.3.0.extract.trunc.i, i8 %.sroa.35.0.extract.trunc.i)
  br label %_RINvMsb_NtCsb09rMIQFAXO_9jiff_core6boundsNtB6_4Sign13from_ordinalsNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateEB18_.exit

_RINvMsb_NtCsb09rMIQFAXO_9jiff_core6boundsNtB6_4Sign13from_ordinalsNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateEB18_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.i.i28 = phi i8 [ %i.r, %bb.d ], [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.s = shl i64 %.sroa.13.sroa.4.5.copyload, 24
  %i.t = ashr i64 %i.s, 56
  %i.u = shl i64 %.sroa.13.sroa.4.5.copyload, 16
  %i.v = ashr i64 %i.u, 56
  %i.w = shl i64 %.sroa.13.sroa.4.5.copyload, 8
  %i.x = ashr i64 %i.w, 56
  %i.y = shl i64 %.sroa.13.sroa.4.5.copyload, 32
  %i.z = ashr exact i64 %i.y, 32
  %i.aa = shl i64 %.0.val, 24
  %i.ab = ashr i64 %i.aa, 56
  %i.ac = shl i64 %.0.val, 16
  %i.ad = ashr i64 %i.ac, 56
  %i.ae = shl i64 %.0.val, 8
  %i.af = ashr i64 %i.ae, 56
  %i.ag = shl i64 %.0.val, 32
  %i.ah = ashr exact i64 %i.ag, 32
  %reass.add.i = sub nsw i64 %i.x, %i.af
  %reass.mul.i = mul nsw i64 %reass.add.i, 1000000000
  %reass.add39.i = sub nsw i64 %i.t, %i.ab
  %reass.mul40.i = mul nsw i64 %reass.add39.i, 3600000000000
  %reass.add42.i = sub nsw i64 %i.v, %i.ad
  %reass.mul43.i = mul nsw i64 %reass.add42.i, 60000000000
  %i.ai = sub nsw i64 %i.z, %i.ah
  %i.aj = add nsw i64 %i.ai, %reass.mul.i
  %i.ak = add nsw i64 %i.aj, %reass.mul40.i
  %i.al = add nsw i64 %i.ak, %reass.mul43.i       ; 7 uses
  switch i8 %.sroa.0.0.i.i.i28, label %default.unreachable.i [
    i8 0, label %bb.z
    i8 1, label %bb.aa
    i8 -1, label %bb.ab
  ]

bb.e:                                             ; preds = %bb.a
  %i.am = shl i32 %.sroa.13.sroa.6.5.copyload, 8
  %i.an = ashr i32 %i.am, 24                      ; 3 uses
  %i.ao = icmp ult i32 %i.an, 3                   ; 2 uses
  %i.ap = or disjoint i32 %i.an, 12
  %.sroa.02.0.i.i22 = select i1 %i.ao, i32 %i.ap, i32 %i.an
  %i.aq = shl i32 %.sroa.13.sroa.6.5.copyload, 16
  %i.ar = ashr exact i32 %i.aq, 16
  %i.as = add nsw i32 %i.ar, 32800
  %.neg.i.i23 = sext i1 %i.ao to i32
  %i.at = add nsw i32 %i.as, %.neg.i.i23          ; 3 uses
  %i.au = ashr i32 %.sroa.13.sroa.6.5.copyload, 24
  %i.av = udiv i32 %i.at, 100
  %i.aw = mul nuw nsw i32 %i.at, 1461
  %i.ax = lshr i32 %i.aw, 2
  %i.ay = udiv i32 %i.at, 400
  %i.az = mul nsw i32 %.sroa.02.0.i.i22, 979
  %i.ba = add nsw i32 %i.az, -2919
  %i.bb = lshr i32 %i.ba, 5
  %i.bc = add nsw i32 %i.au, -12699423
  %i.bd = sub nuw nsw i32 %i.bc, %i.av
  %i.be = add nuw nsw i32 %i.bd, %i.ay
  %i.bf = add nsw i32 %i.be, %i.ax
  %i.bg = add nsw i32 %i.bf, %i.bb
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i64 %i.bh, 86400
  %i.bj = shl i64 %.sroa.13.sroa.4.5.copyload, 24
  %i.bk = ashr i64 %i.bj, 56
  %i.bl = mul nsw i64 %i.bk, 3600000000000
  %i.bm = shl i64 %.sroa.13.sroa.4.5.copyload, 16
  %i.bn = ashr i64 %i.bm, 56
  %i.bo = mul nsw i64 %i.bn, 60000000000
  %i.bp = shl i64 %.sroa.13.sroa.4.5.copyload, 8
  %i.bq = ashr i64 %i.bp, 56
  %i.br = mul nsw i64 %i.bq, 1000000000
  %i.bs = shl i64 %.sroa.13.sroa.4.5.copyload, 32
  %i.bt = ashr exact i64 %i.bs, 32
  %i.bu = add nsw i64 %i.bl, %i.bt
  %i.bv = add nsw i64 %i.bu, %i.bo
  %i.bw = add nsw i64 %i.bv, %i.br                ; 2 uses
  %i.bx = sdiv i64 %i.bw, 1000000000
  %i.by = srem i64 %i.bw, 1000000000              ; 2 uses
  %i.bz = trunc nsw i64 %i.by to i32              ; 5 uses
  %i.ca = add nsw i64 %i.bi, %i.bx                ; 7 uses
  %i.cb = icmp eq i64 %i.by, 0
  br i1 %i.cb, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime11to_duration.exit27, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cc = icmp eq i64 %i.ca, 0
  br i1 %i.cc, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime11to_duration.exit27, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = tail call i64 @llvm.scmp.i64.i64(i64 %i.ca, i64 0)
  %i.ce = tail call i64 @llvm.scmp.i64.i32(i32 %i.bz, i32 0)
  %.not.i.i24 = icmp eq i64 %i.cd, %i.ce
  br i1 %.not.i.i24, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime11to_duration.exit27, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = icmp slt i64 %i.ca, 0
  br i1 %i.cf, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = add nsw i64 %i.ca, -1
  %i.ch = add nsw i32 %i.bz, 1000000000
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime11to_duration.exit27

bb.j:                                             ; preds = %bb.h
  %i.ci = add nsw i64 %i.ca, 1
  %i.cj = add nsw i32 %i.bz, -1000000000
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime11to_duration.exit27

_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime11to_duration.exit27: ; preds = %bb.e, %bb.f, %bb.g, %bb.i, %bb.j
  %.sroa.6.0.ph.i25 = phi i32 [ %i.bz, %bb.g ], [ %i.ch, %bb.i ], [ %i.cj, %bb.j ], [ %i.bz, %bb.f ], [ 0, %bb.e ]
  %.sroa.4.0.ph.i26 = phi i64 [ %i.ca, %bb.g ], [ %i.cg, %bb.i ], [ %i.ci, %bb.j ], [ 0, %bb.f ], [ %i.ca, %bb.e ]
  %i.ck = shl i32 %.8.val, 8
  %i.cl = ashr i32 %i.ck, 24                      ; 3 uses
  %i.cm = icmp ult i32 %i.cl, 3                   ; 2 uses
  %i.cn = or disjoint i32 %i.cl, 12
  %.sroa.02.0.i.i = select i1 %i.cm, i32 %i.cn, i32 %i.cl
  %i.co = shl i32 %.8.val, 16
  %i.cp = ashr exact i32 %i.co, 16
  %i.cq = add nsw i32 %i.cp, 32800
  %.neg.i.i = sext i1 %i.cm to i32
  %i.cr = add nsw i32 %i.cq, %.neg.i.i            ; 3 uses
  %i.cs = ashr i32 %.8.val, 24
  %i.ct = udiv i32 %i.cr, 100
  %i.cu = mul nuw nsw i32 %i.cr, 1461
  %i.cv = lshr i32 %i.cu, 2
  %i.cw = udiv i32 %i.cr, 400
  %i.cx = mul nsw i32 %.sroa.02.0.i.i, 979
end_hunk_1
begin_hunk_2_@_RNvMs1h_NtCsa9sSWSfjDbm_4jiff4spanNtB6_5Nudge17relative_calendar:bb.a
  %.sroa.4.0.ph.i259 = phi i64 [ %.sroa.016.1.i.i254, %bb.bd ], [ %i.ep, %bb.bf ], [ %i.er, %bb.bg ], [ %.sroa.016.1.i.i254, %bb.bb ], [ %i.dw, %bb.av ] ; 2 uses
  %i.et = icmp eq i64 %.sroa.4.0.ph.i259, 0
  %i.eu = icmp eq i32 %.sroa.6.0.ph.i258, 0
  %or.cond.i = and i1 %i.eu, %i.et
  %i.ev = icmp sgt i64 %.sroa.4.0.ph.i259, 0
  %i.ew = icmp sgt i32 %.sroa.6.0.ph.i258, 0
  %or.cond1.i = or i1 %i.ew, %i.ev
  %..i = select i1 %or.cond1.i, i8 1, i8 -1
  %.sroa.0.0.i262 = select i1 %or.cond.i, i8 0, i8 %..i
  %i.ex = icmp eq i8 %.val55, %.sroa.0.0.i262     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ey = icmp eq i64 %.sroa.4.0.ph.i249, 0
  br i1 %i.ey, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit261
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #24
  unreachable

bb.bi:                                            ; preds = %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit261
  %i.ez = sdiv i64 %i.dq, %.sroa.0.0.i252
  %i.fa = mul i64 %i.ez, %i.h
  %i.fb = add i64 %i.fa, %i.af
  call fastcc void @_RNvMs2_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_unit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.a, i8 noundef %.4.val, i64 noundef %i.fb) #25
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.fd = load i8, ptr %i.fc, align 4, !range !7, !noundef !5 ; 2 uses
  %i.fe = icmp eq i8 %i.fd, -2
  %i.ff = load ptr, ptr %i.b, align 8             ; 2 uses
  br i1 %i.fe, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.ff, ptr %0, align 8
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(52) %.sroa.445.0..sroa_idx, i64 52, i1 false)
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 61
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.647.0..sroa_idx, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %spec.select = select i1 %i.ex, i64 %.sroa.641.0.copyload, i64 %.sroa.038.0.copyload
  %spec.select53 = select i1 %i.ex, i32 %.sroa.742.0.copyload, i32 %.sroa.439.0.copyload
  %i.fg = zext i1 %i.ex to i8
  store ptr %i.ff, ptr %0, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.fd, ptr %.sroa.526.0..sroa_idx, align 4
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %spec.select, ptr %.sroa.727.0..sroa_idx, align 8
  %.sroa.828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %spec.select53, ptr %.sroa.828.0..sroa_idx, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.as, %bb.bj, %bb.l, %bb.n, %bb.bk
  %.sink = phi i8 [ 2, %bb.as ], [ 2, %bb.bj ], [ 2, %bb.l ], [ 2, %bb.n ], [ %i.fg, %bb.bk ]
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.sink, ptr %i.fh, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1h_NtCsa9sSWSfjDbm_4jiff4spanNtB6_5Nudge18relative_invariant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, i64 noundef %2, i32 noundef %3, i8 noundef range(i8 0, 10) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %5, i8 noundef range(i8 0, 9) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 12 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.h = load i8, ptr %i.g, align 4, !range !10, !noundef !5
  %i.i = icmp samesign ult i8 %i.h, 7
  br i1 %i.i, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.k = load i8, ptr %i.j, align 4, !range !18, !noundef !5 ; 3 uses
  %i.l = tail call fastcc { i64, i32 } @_RNvMs1_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span21to_invariant_duration(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) #25 ; 2 uses
  %i.m = extractvalue { i64, i32 } %i.l, 0        ; 4 uses
  %i.n = extractvalue { i64, i32 } %i.l, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %5, i8 noundef %6, i64 noundef %i.m, i32 noundef %i.n)
  %i.o = load i64, ptr %i.f, align 8, !range !9, !noundef !5
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.q, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %i.r, ptr %0, align 8
  br label %bb.bt

bb.e:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.q, align 8, !noundef !5 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = load i32, ptr %i.t, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span23from_invariant_duration(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, i8 noundef %4, i64 noundef %i.s, i32 noundef %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.w = load i8, ptr %i.v, align 4, !range !7, !noundef !5 ; 3 uses
  %i.x = icmp eq i8 %i.w, -2
  %i.y = load ptr, ptr %i.e, align 8              ; 7 uses
  br i1 %i.x, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.y, ptr %i.d, align 8
  %i.z = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4spanNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef 1, i8 range(i8 0, 10) %4)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_4span4SpanNtB8_5ErrorEINtB8_12ErrorContextB1b_B1s_E7contextNtNtB8_4span5ErrorE0Ba_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ab = icmp eq ptr %i.y, null
  br i1 %i.ab, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = atomicrmw add ptr %i.y, i64 -1 release, align 8, !noalias !931
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.i, label %common.resume

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.an, %bb.ao, %bb.ap, %bb.ac, %bb.ad, %bb.ae, %bb.r, %bb.s, %bb.t, %bb.g, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ct, %bb.ac ], [ %i.aa, %bb.g ], [ %i.bl, %bb.r ], [ %i.aa, %bb.i ], [ %i.aa, %bb.h ], [ %i.bl, %bb.t ], [ %i.bl, %bb.s ], [ %i.ct, %bb.ae ], [ %i.ct, %bb.ad ], [ %i.dx, %bb.ap ], [ %i.dx, %bb.ao ], [ %i.dx, %bb.an ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_4span4SpanNtB8_5ErrorEINtB8_12ErrorContextB1b_B1s_E7contextNtNtB8_4span5ErrorE0Ba_.exit: ; preds = %bb.f
  %i.af = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.y, ptr noundef %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.af, ptr %0, align 8
  br label %bb.bt

bb.k:                                             ; preds = %bb.e
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.414.sroa.0.0.copyload = load i64, ptr %.sroa.414.0..sroa_idx, align 8 ; 4 uses
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.414.sroa.4.0.copyload = load i64, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.414.sroa.5.0.copyload = load i64, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.414.sroa.6.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.414.sroa.6.0.copyload = load i64, ptr %.sroa.414.sroa.6.0..sroa.414.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.414.sroa.7.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.414.sroa.7.0.copyload = load i32, ptr %.sroa.414.sroa.7.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.8.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %.sroa.414.sroa.8.0.copyload = load i32, ptr %.sroa.414.sroa.8.0..sroa.414.0..sroa_idx.sroa_idx, align 4 ; 2 uses
  %.sroa.414.sroa.9.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.414.sroa.9.0.copyload = load i64, ptr %.sroa.414.sroa.9.0..sroa.414.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %i.ag = trunc i64 %.sroa.414.sroa.9.0.copyload to i32 ; 2 uses
  %i.ah = lshr i64 %.sroa.414.sroa.9.0.copyload, 32 ; 2 uses
  %.sroa.414.sroa.11.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.414.sroa.11.0.copyload = load i16, ptr %.sroa.414.sroa.11.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 61
  %.sroa.616.sroa.0.0.copyload = load i24, ptr %.sroa.616.0..sroa_idx, align 1
  %i.ai = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.ak = load i16, ptr %i.aj, align 2, !noundef !5
  %i.al = sext i8 %i.k to i16
  %i.am = mul i16 %i.ak, %i.al                    ; 2 uses
  %i.an = add i16 %i.am, -19999
  %or.cond.i = icmp ult i16 %i.an, 25539
  br i1 %or.cond.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = call noundef i8 @_RNvXsQ_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !932
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 8
  %i.ar = or disjoint i32 %i.aq, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.as = zext i16 %i.am to i32
  %i.at = shl nuw i32 %i.as, 16
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.m, %bb.l
  %.sroa.3.0.insert.insert.i.i = phi i32 [ %i.at, %bb.m ], [ %i.ar, %bb.l ] ; 4 uses
  %i.au = trunc i32 %.sroa.3.0.insert.insert.i.i to i1
  br i1 %i.au, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.517.0.extract.shift.i = lshr i32 %.sroa.3.0.insert.insert.i.i, 16 ; 2 uses
  %.sroa.517.0.extract.trunc.i = trunc nuw i32 %.sroa.517.0.extract.shift.i to i16 ; 2 uses
  %i.av = icmp slt i32 %.sroa.3.0.insert.insert.i.i, 0 ; 2 uses
  %i.aw = sub i16 0, %.sroa.517.0.extract.trunc.i
  %.sroa.012.0.i = select i1 %i.av, i16 %i.aw, i16 %.sroa.517.0.extract.trunc.i ; 2 uses
  %7 = icmp eq i16 %.sroa.012.0.i, 0              ; 4 uses
  %i.ax = and i16 %.sroa.414.sroa.11.0.copyload, -897
  %masksel.i = select i1 %7, i16 0, i16 512
  %.sroa.014.0.i = or disjoint i16 %masksel.i, %i.ax
  br i1 %i.av, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %8 = icmp ne i32 %.sroa.517.0.extract.shift.i, 0 ; 2 uses
  br i1 %8, label %.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = icmp eq i32 %.sroa.414.sroa.7.0.copyload, 0
  %or.cond.i.i = select i1 %7, i1 %i.ay, i1 false
  %i.az = icmp eq i32 %.sroa.414.sroa.8.0.copyload, 0
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.az, i1 false
  %i.ba = icmp eq i32 %i.ag, 0
  %i.bb = icmp eq i64 %i.ah, 0
  %i.bc = and i1 %i.ba, %i.bb
  %or.cond11.i.i = select i1 %or.cond5.i.i, i1 %i.bc, i1 false
  %i.bd = icmp eq ptr %i.y, null
  %or.cond13.i.i = select i1 %or.cond11.i.i, i1 %i.bd, i1 false
  %i.be = icmp eq i64 %.sroa.414.sroa.0.0.copyload, 0
  %or.cond16.i.i = select i1 %or.cond13.i.i, i1 %i.be, i1 false
  %i.bf = icmp eq i64 %.sroa.414.sroa.4.0.copyload, 0
  %or.cond19.i.i = select i1 %or.cond16.i.i, i1 %i.bf, i1 false
  %i.bg = icmp eq i64 %.sroa.414.sroa.5.0.copyload, 0
  %or.cond22.i.i = select i1 %or.cond19.i.i, i1 %i.bg, i1 false
  %i.bh = icmp eq i64 %.sroa.414.sroa.6.0.copyload, 0
  %or.cond4.i.i = select i1 %or.cond22.i.i, i1 %i.bh, i1 false
  br i1 %or.cond4.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.p, %bb.o
  %.sroa.027.0.in.i.i = icmp eq i8 %i.w, 0
  %i.bi = zext i1 %8 to i8
  %i.bj = select i1 %.sroa.027.0.in.i.i, i8 %i.bi, i8 %i.w
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit

bb.q:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.416.0.extract.shift.i = lshr i32 %.sroa.3.0.insert.insert.i.i, 8
  %.sroa.416.0.extract.trunc.i = trunc i32 %.sroa.416.0.extract.shift.i to i8
  %i.bk = call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.416.0.extract.trunc.i), !noalias !932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !933
  store ptr %i.bk, ptr %i.c, align 8, !noalias !933
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 32, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.u unwind label %bb.r, !noalias !934

bb.r:                                             ; preds = %bb.q
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  call void @llvm.experimental.noalias.scope.decl(metadata !936)
  %i.bm = load ptr, ptr %i.c, align 8, !alias.scope !937, !noalias !933, !noundef !5 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %common.resume, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = atomicrmw add ptr %i.bm, i64 -1 release, align 8, !noalias !938
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.t, label %common.resume

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #21
          to label %common.resume unwind label %bb.v, !noalias !934

bb.u:                                             ; preds = %bb.q
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !934
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit: ; preds = %.thread.i.i, %bb.p, %bb.n
  %.sroa.0.0.i.i = phi i8 [ %i.bj, %.thread.i.i ], [ -1, %bb.n ], [ 0, %bb.p ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bs = load i32, ptr %i.br, align 8, !noundef !5
  %i.bt = sext i8 %i.k to i32                     ; 2 uses
  %i.bu = mul i32 %i.bs, %i.bt                    ; 2 uses
  %i.bv = add i32 %i.bu, -239977
  %or.cond.i19 = icmp ult i32 %i.bv, -479953
  br i1 %or.cond.i19, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit
  %i.bw = call noundef i8 @_RNvXsS_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !939
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 8
  %i.bz = or disjoint i64 %i.by, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.x:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit
  %i.ca = zext i32 %i.bu to i64
  %i.cb = shl nuw i64 %i.ca, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.x, %bb.w
  %.sroa.3.0.insert.insert.i.i20 = phi i64 [ %i.cb, %bb.x ], [ %i.bz, %bb.w ] ; 5 uses
  %i.cc = trunc i64 %.sroa.3.0.insert.insert.i.i20 to i1
  br i1 %i.cc, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.621.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i20, 32
  %.sroa.621.0.extract.trunc.i = trunc nuw i64 %.sroa.621.0.extract.shift.i to i32 ; 2 uses
  %i.cd = icmp slt i64 %.sroa.3.0.insert.insert.i.i20, 0
  %i.ce = sub i32 0, %.sroa.621.0.extract.trunc.i
  %.sroa.015.0.i = select i1 %i.cd, i32 %i.ce, i32 %.sroa.621.0.extract.trunc.i ; 2 uses
  %i.cf = icmp eq i32 %.sroa.015.0.i, 0           ; 3 uses
  %masksel.i21 = select i1 %i.cf, i16 0, i16 256
  %.sroa.017.0.i = or disjoint i16 %.sroa.014.0.i, %masksel.i21
  %i.cg = ashr i64 %.sroa.3.0.insert.insert.i.i20, 32 ; 2 uses
  %i.ch = icmp slt i64 %i.cg, 0
  br i1 %i.ch, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit39, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = icmp ne i64 %i.cg, 0                    ; 2 uses
  br i1 %i.ci, label %.thread.i.i31, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %or.cond.i.i22 = select i1 %7, i1 %i.cf, i1 false
  %i.cj = icmp eq i32 %.sroa.414.sroa.8.0.copyload, 0
  %or.cond5.i.i23 = select i1 %or.cond.i.i22, i1 %i.cj, i1 false
  %i.ck = icmp eq i32 %i.ag, 0
  %i.cl = icmp eq i64 %i.ah, 0
  %i.cm = and i1 %i.ck, %i.cl
  %or.cond11.i.i25 = select i1 %or.cond5.i.i23, i1 %i.cm, i1 false
  %i.cn = icmp eq ptr %i.y, null
  %or.cond13.i.i26 = select i1 %or.cond11.i.i25, i1 %i.cn, i1 false
  %i.co = icmp eq i64 %.sroa.414.sroa.0.0.copyload, 0
  %or.cond16.i.i27 = select i1 %or.cond13.i.i26, i1 %i.co, i1 false
  %i.cp = icmp eq i64 %.sroa.414.sroa.4.0.copyload, 0
  %or.cond19.i.i28 = select i1 %or.cond16.i.i27, i1 %i.cp, i1 false
  %i.cq = icmp eq i64 %.sroa.414.sroa.5.0.copyload, 0
  %or.cond22.i.i29 = select i1 %or.cond19.i.i28, i1 %i.cq, i1 false
  %i.cr = icmp eq i64 %.sroa.414.sroa.6.0.copyload, 0
  %or.cond4.i.i30 = select i1 %or.cond22.i.i29, i1 %i.cr, i1 false
  br i1 %or.cond4.i.i30, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit39, label %.thread.i.i31

.thread.i.i31:                                    ; preds = %bb.aa, %bb.z
  %.sroa.027.0.in.i.i32 = icmp eq i8 %.sroa.0.0.i.i, 0
  %spec.select.i.i33 = zext i1 %i.ci to i8
  %spec.select.i34 = select i1 %.sroa.027.0.in.i.i32, i8 %spec.select.i.i33, i8 %.sroa.0.0.i.i
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit39

bb.ab:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.419.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i20, 8
  %.sroa.419.0.extract.trunc.i = trunc i64 %.sroa.419.0.extract.shift.i to i8
  %i.cs = call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.419.0.extract.trunc.i), !noalias !939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !940
  store ptr %i.cs, ptr %i.b, align 8, !noalias !940
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 33, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
          to label %bb.af unwind label %bb.ac, !noalias !941

bb.ac:                                            ; preds = %bb.ab
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  call void @llvm.experimental.noalias.scope.decl(metadata !943)
  %i.cu = load ptr, ptr %i.b, align 8, !alias.scope !944, !noalias !940, !noundef !5 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %common.resume, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cw = atomicrmw add ptr %i.cu, i64 -1 release, align 8, !noalias !945
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.ae, label %common.resume

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %common.resume unwind label %bb.ag, !noalias !941

bb.af:                                            ; preds = %bb.ab
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !941
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit39: ; preds = %.thread.i.i31, %bb.aa, %bb.y
  %.sroa.097.0160 = phi i64 [ %i.ai, %.thread.i.i31 ], [ %i.ai, %bb.y ], [ 0, %bb.aa ] ; 2 uses
  %.sroa.698.0158 = phi i64 [ %.sroa.414.sroa.0.0.copyload, %.thread.i.i31 ], [ %.sroa.414.sroa.0.0.copyload, %bb.y ], [ 0, %bb.aa ] ; 2 uses
  %.sroa.8.0157 = phi i64 [ %.sroa.414.sroa.4.0.copyload, %.thread.i.i31 ], [ %.sroa.414.sroa.4.0.copyload, %bb.y ], [ 0, %bb.aa ] ; 2 uses
  %.sroa.1099.0156 = phi i64 [ %.sroa.414.sroa.5.0.copyload, %.thread.i.i31 ], [ %.sroa.414.sroa.5.0.copyload, %bb.y ], [ 0, %bb.aa ] ; 2 uses
  %.sroa.12100.0155 = phi i64 [ %.sroa.414.sroa.6.0.copyload, %.thread.i.i31 ], [ %.sroa.414.sroa.6.0.copyload, %bb.y ], [ 0, %bb.aa ] ; 2 uses
  %.sroa.0.0.i.i36 = phi i8 [ %spec.select.i34, %.thread.i.i31 ], [ -1, %bb.y ], [ 0, %bb.aa ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.da = load i32, ptr %i.cz, align 4, !noundef !5
  %i.db = mul i32 %i.da, %i.bt                    ; 2 uses
  %i.dc = add i32 %i.db, -1043498
  %or.cond.i40 = icmp ult i32 %i.dc, -2086995
  br i1 %or.cond.i40, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit39
  %i.dd = call noundef i8 @_RNvXsU_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !946
  %i.de = zext nneg i8 %i.dd to i64
  %i.df = shl nuw nsw i64 %i.de, 8
  %i.dg = or disjoint i64 %i.df, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.ai:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit39
  %i.dh = zext i32 %i.db to i64
  %i.di = shl nuw i64 %i.dh, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.ai, %bb.ah
  %.sroa.3.0.insert.insert.i.i41 = phi i64 [ %i.di, %bb.ai ], [ %i.dg, %bb.ah ] ; 5 uses
  %i.dj = trunc i64 %.sroa.3.0.insert.insert.i.i41 to i1
  br i1 %i.dj, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.622.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i41, 32
  %.sroa.622.0.extract.trunc.i = trunc nuw i64 %.sroa.622.0.extract.shift.i to i32 ; 2 uses
  %i.dk = icmp slt i64 %.sroa.3.0.insert.insert.i.i41, 0
  %i.dl = sub i32 0, %.sroa.622.0.extract.trunc.i
  %.sroa.016.0.i = select i1 %i.dk, i32 %i.dl, i32 %.sroa.622.0.extract.trunc.i ; 2 uses
  %i.dm = icmp eq i32 %.sroa.016.0.i, 0           ; 2 uses
  %masksel.i43 = select i1 %i.dm, i16 0, i16 128
  %.sroa.018.0.i = or disjoint i16 %.sroa.017.0.i, %masksel.i43
  %i.dn = ashr i64 %.sroa.3.0.insert.insert.i.i41, 32 ; 2 uses
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit60, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dp = icmp ne i64 %i.dn, 0                    ; 2 uses
  br i1 %i.dp, label %.thread.i.i52, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %or.cond.i.i44 = select i1 %7, i1 %i.cf, i1 false
  %or.cond5.i.i45 = select i1 %or.cond.i.i44, i1 %i.dm, i1 false
  %i.dq = icmp eq i64 %.sroa.414.sroa.9.0.copyload, 0
  %or.cond11.i.i46 = select i1 %or.cond5.i.i45, i1 %i.dq, i1 false
  %i.dr = icmp eq i64 %.sroa.097.0160, 0
  %or.cond13.i.i47 = select i1 %or.cond11.i.i46, i1 %i.dr, i1 false
  %i.ds = icmp eq i64 %.sroa.698.0158, 0
  %or.cond16.i.i48 = select i1 %or.cond13.i.i47, i1 %i.ds, i1 false
  %i.dt = icmp eq i64 %.sroa.8.0157, 0
  %or.cond19.i.i49 = select i1 %or.cond16.i.i48, i1 %i.dt, i1 false
  %i.du = icmp eq i64 %.sroa.1099.0156, 0
  %or.cond22.i.i50 = select i1 %or.cond19.i.i49, i1 %i.du, i1 false
  %i.dv = icmp eq i64 %.sroa.12100.0155, 0
  %or.cond4.i.i51 = select i1 %or.cond22.i.i50, i1 %i.dv, i1 false
  br i1 %or.cond4.i.i51, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit60, label %.thread.i.i52

.thread.i.i52:                                    ; preds = %bb.al, %bb.ak
  %.sroa.027.0.in.i.i53 = icmp eq i8 %.sroa.0.0.i.i36, 0
  %spec.select.i.i54 = zext i1 %i.dp to i8
  %spec.select.i55 = select i1 %.sroa.027.0.in.i.i53, i8 %spec.select.i.i54, i8 %.sroa.0.0.i.i36
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit60

bb.am:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.420.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i41, 8
  %.sroa.420.0.extract.trunc.i = trunc i64 %.sroa.420.0.extract.shift.i to i8
  %i.dw = call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.420.0.extract.trunc.i), !noalias !946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !947
  store ptr %i.dw, ptr %i.a, align 8, !noalias !947
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 32, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %bb.aq unwind label %bb.an, !noalias !948

bb.an:                                            ; preds = %bb.am
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  call void @llvm.experimental.noalias.scope.decl(metadata !950)
  %i.dy = load ptr, ptr %i.a, align 8, !alias.scope !951, !noalias !947, !noundef !5 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %common.resume, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ea = atomicrmw add ptr %i.dy, i64 -1 release, align 8, !noalias !952
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.ap, label %common.resume

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %common.resume unwind label %bb.ar, !noalias !948

bb.aq:                                            ; preds = %bb.am
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !948
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit60: ; preds = %.thread.i.i52, %bb.aj, %bb.al
  %.sroa.15.0.ph = phi i8 [ 0, %bb.al ], [ -1, %bb.aj ], [ %spec.select.i55, %.thread.i.i52 ]
  %i.ed = icmp eq i64 %i.m, -9223372036854775808
  br i1 %i.ed, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit, label %bb.as, !prof !6

bb.as:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit60
  %i.ee = sub nsw i64 0, %i.m
  %i.ef = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.s, i64 %i.ee) ; 2 uses
  %i.eg = extractvalue { i64, i1 } %i.ef, 0       ; 4 uses
  %i.eh = extractvalue { i64, i1 } %i.ef, 1
  br i1 %i.eh, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit, label %bb.at, !prof !6

bb.at:                                            ; preds = %bb.as
  %i.ei = sub i32 %i.u, %i.n                      ; 6 uses
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.bf, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ek = icmp sgt i32 %i.ei, 999999999
  br i1 %i.ek, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.el = icmp slt i32 %i.ei, -999999999
  br i1 %i.el, label %bb.ax, label %bb.az

bb.aw:                                            ; preds = %bb.au
  %i.em = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.eg, i64 1) ; 2 uses
  %i.en = extractvalue { i64, i1 } %i.em, 1
  br i1 %i.en, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit, label %bb.ba, !prof !6

bb.ax:                                            ; preds = %bb.av
  %i.eo = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.eg, i64 -1) ; 2 uses
  %i.ep = extractvalue { i64, i1 } %i.eo, 1
  br i1 %i.ep, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit, label %bb.ay, !prof !6

bb.ay:                                            ; preds = %bb.ax
  %i.eq = extractvalue { i64, i1 } %i.eo, 0
  %i.er = add nsw i32 %i.ei, 1000000000
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %bb.ay, %bb.av
  %.sroa.016.1.i = phi i64 [ %i.eu, %bb.ba ], [ %i.eq, %bb.ay ], [ %i.eg, %bb.av ] ; 7 uses
  %.sroa.02.1.i = phi i32 [ %i.ev, %bb.ba ], [ %i.er, %bb.ay ], [ %i.ei, %bb.av ] ; 6 uses
  %i.es = icmp eq i64 %.sroa.016.1.i, 0
  %i.et = icmp eq i32 %.sroa.02.1.i, 0
  %or.cond.i61 = select i1 %i.es, i1 true, i1 %i.et
  br i1 %or.cond.i61, label %bb.bf, label %bb.bb

bb.ba:                                            ; preds = %bb.aw
  %i.eu = extractvalue { i64, i1 } %i.em, 0
  %i.ev = add nsw i32 %i.ei, -1000000000
  br label %bb.az

bb.bb:                                            ; preds = %bb.az
  %i.ew = call i64 @llvm.scmp.i64.i64(i64 %.sroa.016.1.i, i64 0)
  %i.ex = call i64 @llvm.scmp.i64.i32(i32 %.sroa.02.1.i, i32 0)
  %.not.i = icmp eq i64 %i.ew, %i.ex
  br i1 %.not.i, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ey = icmp slt i64 %.sroa.016.1.i, 0
  br i1 %i.ey, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ez = add nsw i64 %.sroa.016.1.i, -1
  %i.fa = add nsw i32 %.sroa.02.1.i, 1000000000
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.fb = add nsw i64 %.sroa.016.1.i, 1
  %i.fc = add nsw i32 %.sroa.02.1.i, -1000000000
  br label %bb.bf

_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit: ; preds = %bb.ax, %bb.aw, %bb.as, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit60
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #24
  unreachable

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bb, %bb.az, %bb.at
  %.sroa.4135.0.ph = phi i64 [ %.sroa.016.1.i, %bb.bb ], [ %i.ez, %bb.bd ], [ %i.fb, %bb.be ], [ %.sroa.016.1.i, %bb.az ], [ %i.eg, %bb.at ]
  %.sroa.6136.0.ph = phi i32 [ %.sroa.02.1.i, %bb.bb ], [ %i.fa, %bb.bd ], [ %i.fc, %bb.be ], [ %.sroa.02.1.i, %bb.az ], [ 0, %bb.at ]
  %i.fd = sdiv i64 %i.s, 86400
  %.neg = sdiv i64 %i.m, -86400
  %i.fe = add nsw i64 %i.fd, %.neg
  %.sroa.08.0 = call i8 @llvm.scmp.i8.i64(i64 %i.fe, i64 0)
  %i.ff = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %2, i64 %.sroa.4135.0.ph) ; 2 uses
  %i.fg = extractvalue { i64, i1 } %i.ff, 0       ; 4 uses
  %i.fh = extractvalue { i64, i1 } %i.ff, 1
  br i1 %i.fh, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit70, label %bb.bg, !prof !6

bb.bg:                                            ; preds = %bb.bf
  %i.fi = add i32 %.sroa.6136.0.ph, %3            ; 6 uses
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.bs, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fk = icmp sgt i32 %i.fi, 999999999
  br i1 %i.fk, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fl = icmp slt i32 %i.fi, -999999999
  br i1 %i.fl, label %bb.bk, label %bb.bm

bb.bj:                                            ; preds = %bb.bh
  %i.fm = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.fg, i64 1) ; 2 uses
  %i.fn = extractvalue { i64, i1 } %i.fm, 1
  br i1 %i.fn, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit70, label %bb.bn, !prof !6

bb.bk:                                            ; preds = %bb.bi
  %i.fo = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.fg, i64 -1) ; 2 uses
  %i.fp = extractvalue { i64, i1 } %i.fo, 1
  br i1 %i.fp, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit70, label %bb.bl, !prof !6

bb.bl:                                            ; preds = %bb.bk
  %i.fq = extractvalue { i64, i1 } %i.fo, 0
  %i.fr = add nsw i32 %i.fi, 1000000000
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bn, %bb.bl, %bb.bi
  %.sroa.016.1.i63 = phi i64 [ %i.fu, %bb.bn ], [ %i.fq, %bb.bl ], [ %i.fg, %bb.bi ] ; 7 uses
  %.sroa.02.1.i64 = phi i32 [ %i.fv, %bb.bn ], [ %i.fr, %bb.bl ], [ %i.fi, %bb.bi ] ; 6 uses
  %i.fs = icmp eq i64 %.sroa.016.1.i63, 0
  %i.ft = icmp eq i32 %.sroa.02.1.i64, 0
  %or.cond.i65 = select i1 %i.fs, i1 true, i1 %i.ft
  br i1 %or.cond.i65, label %bb.bs, label %bb.bo

bb.bn:                                            ; preds = %bb.bj
  %i.fu = extractvalue { i64, i1 } %i.fm, 0
  %i.fv = add nsw i32 %i.fi, -1000000000
  br label %bb.bm

bb.bo:                                            ; preds = %bb.bm
  %i.fw = call i64 @llvm.scmp.i64.i64(i64 %.sroa.016.1.i63, i64 0)
  %i.fx = call i64 @llvm.scmp.i64.i32(i32 %.sroa.02.1.i64, i32 0)
  %.not.i66 = icmp eq i64 %i.fw, %i.fx
  br i1 %.not.i66, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fy = icmp slt i64 %.sroa.016.1.i63, 0
  br i1 %i.fy, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fz = add nsw i64 %.sroa.016.1.i63, -1
  %i.ga = add nsw i32 %.sroa.02.1.i64, 1000000000
  br label %bb.bs

end_hunk_2
begin_hunk_3_@_RNvMs1h_NtCsa9sSWSfjDbm_4jiff4spanNtB6_5Nudge6bubble:bb.a
bb.ag:                                            ; preds = %bb.ac
  %i.de = extractvalue { i64, i1 } %i.cw, 0
  %i.df = add nsw i32 %i.cs, -1000000000
  br label %bb.af

bb.ah:                                            ; preds = %bb.af
  %i.dg = call i64 @llvm.scmp.i64.i64(i64 %.sroa.016.1.i.i, i64 0)
  %i.dh = call i64 @llvm.scmp.i64.i32(i32 %.sroa.02.1.i.i, i32 0)
  %.not.i.i = icmp eq i64 %i.dg, %i.dh
  br i1 %.not.i.i, label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.di = icmp slt i64 %.sroa.016.1.i.i, 0
  br i1 %i.di, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dj = add nsw i64 %.sroa.016.1.i.i, -1
  %i.dk = add nsw i32 %.sroa.02.1.i.i, 1000000000
  br label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit

bb.ak:                                            ; preds = %bb.ai
  %i.dl = add nsw i64 %.sroa.016.1.i.i, 1
  %i.dm = add nsw i32 %.sroa.02.1.i.i, -1000000000
  br label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit

_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i: ; preds = %bb.ad, %bb.ac, %bb.y, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_.exit
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #24
  unreachable

_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit: ; preds = %bb.z, %bb.af, %bb.aj, %bb.ak
  %.sroa.6.0.ph.i = phi i32 [ 0, %bb.z ], [ %i.dk, %bb.aj ], [ %i.dm, %bb.ak ], [ %.sroa.02.1.i.i, %bb.af ] ; 2 uses
  %.sroa.4.0.ph.i = phi i64 [ %i.cq, %bb.z ], [ %i.dj, %bb.aj ], [ %i.dl, %bb.ak ], [ %.sroa.016.1.i.i, %bb.af ] ; 2 uses
  %i.dn = icmp eq i64 %.sroa.4.0.ph.i, 0          ; 2 uses
  %i.do = icmp eq i32 %.sroa.6.0.ph.i, 0          ; 2 uses
  %.sroa.0.0.i273 = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %.sroa.0.0.i273, label %bb.at, label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit.thread

bb.al:                                            ; preds = %_RINvMNtCsa9sSWSfjDbm_4jiff5zonedNtB3_5Zoned11checked_addNtNtB5_4span4SpanEB5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.au

bb.am:                                            ; preds = %_RINvMNtCsa9sSWSfjDbm_4jiff5zonedNtB3_5Zoned11checked_addNtNtB5_4span4SpanEB5_.exit.i
  %.sroa.9585.sroa.0.0.copyload = load i32, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1065 ; 6 uses
  %.sroa.9585.sroa.6.0.copyload = load ptr, ptr %.sroa.9585.sroa.6.0..sroa.410.0..sroa_idx.i.sroa_idx, align 8, !noalias !1065 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dp = ptrtoint ptr %i.cj to i64               ; 6 uses
  %i.dq = ptrtoint ptr %.sroa.9585.sroa.6.0.copyload to i64
  %i.dr = and i64 %i.dq, 7
  switch i64 %i.dr, label %bb.an [
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_.exit
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_.exit
    i64 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_.exit
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_.exit
    i64 4, label %bb.ao
    i64 5, label %bb.aq
  ]

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ds = getelementptr i8, ptr %.sroa.9585.sroa.6.0.copyload, i64 -4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.dt = call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.ds)
  %i.du = sub nsw i64 0, %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.ds, i64 %i.du ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  store ptr %i.dv, ptr %i.b, align 8
  %i.dw = atomicrmw add ptr %i.dv, i64 -1 release, align 8, !noalias !1066
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i: ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_.exit

bb.aq:                                            ; preds = %bb.am
  %i.dy = getelementptr i8, ptr %.sroa.9585.sroa.6.0.copyload, i64 -5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.dz = call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.dy)
  %i.ea = sub nsw i64 0, %i.dz
  %i.eb = getelementptr inbounds i8, ptr %i.dy, i64 %i.ea ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dy) ]
  store ptr %i.eb, ptr %i.a, align 8
  %i.ec = atomicrmw add ptr %i.eb, i64 -1 release, align 8, !noalias !1067
  %i.ed = icmp eq i64 %i.ec, 1
  br i1 %i.ed, label %bb.ar, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span13RelativeZonedEBF_.exit

_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit.thread: ; preds = %bb.ah, %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit
  %i.ee = phi i1 [ %i.do, %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit ], [ false, %bb.ah ]
  %i.ef = phi i1 [ %i.dn, %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit ], [ false, %bb.ah ]
  %.sroa.4.0.ph.i954 = phi i64 [ %.sroa.4.0.ph.i, %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit ], [ %.sroa.016.1.i.i, %bb.ah ]
  %.sroa.6.0.ph.i953 = phi i32 [ %.sroa.6.0.ph.i, %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit ], [ %.sroa.02.1.i.i, %bb.ah ]
  %or.cond.i = and i1 %i.ee, %i.ef
  %i.eg = icmp sgt i64 %.sroa.4.0.ph.i954, 0
  %i.eh = icmp sgt i32 %.sroa.6.0.ph.i953, 0
  %or.cond1.i = or i1 %i.eg, %i.eh
  %..i275 = select i1 %or.cond1.i, i8 1, i8 -1
  %.sroa.0.0.i276 = select i1 %or.cond.i, i8 0, i8 %..i275
  %i.ei = icmp eq i8 %.sroa.0.0.i276, %.sroa.8284.0.copyload
  br i1 %i.ei, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  br label %_RNvMsp_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Unit4next.exit

bb.at:                                            ; preds = %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit.thread, %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  br label %.outer

bb.au:                                            ; preds = %bb.n, %bb.al, %bb.w
  %.sink = phi ptr [ %i.bp, %bb.n ], [ %i.cj, %bb.al ], [ %i.cm, %bb.w ]
  store ptr %.sink, ptr %0, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.ej, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_RNvMsp_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Unit4next.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_unit(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(64) %1, i8 noundef range(i8 0, 10) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  switch i8 %2, label %default.unreachable263 [
    i8 9, label %bb.b
    i8 8, label %bb.i
    i8 7, label %bb.p
    i8 6, label %bb.w
    i8 5, label %bb.ad
    i8 4, label %bb.ak
    i8 3, label %bb.ao
    i8 2, label %bb.as
    i8 1, label %bb.aw
    i8 0, label %bb.ba
  ]

default.unreachable263:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %i.a = add i64 %3, -19999
  %or.cond.i = icmp ult i64 %i.a, -39997
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef i8 @_RNvXsQ_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !1110
  %i.c = zext nneg i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 8
  %i.e = or disjoint i32 %i.d, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.f = trunc nsw i64 %3 to i32
  %i.g = shl nsw i32 %i.f, 16
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.3.0.insert.insert.i.i = phi i32 [ %i.g, %bb.d ], [ %i.e, %bb.c ] ; 4 uses
  %i.h = trunc i32 %.sroa.3.0.insert.insert.i.i to i1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.416.0.extract.shift.i = lshr i32 %.sroa.3.0.insert.insert.i.i, 8
  %.sroa.416.0.extract.trunc.i = trunc i32 %.sroa.416.0.extract.shift.i to i8
  %i.i = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.416.0.extract.trunc.i), !noalias !1110
  store ptr %i.i, ptr %0, align 8, !alias.scope !1108
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.j, align 4, !alias.scope !1108
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit

bb.f:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.517.0.extract.shift.i = lshr i32 %.sroa.3.0.insert.insert.i.i, 16 ; 2 uses
  %.sroa.517.0.extract.trunc.i = trunc nuw i32 %.sroa.517.0.extract.shift.i to i16 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.4.0.copyload.i = load i16, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1109
  %.sroa.79.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.79.0.copyload.i = load i32, ptr %.sroa.79.0..sroa_idx.i, align 4, !alias.scope !1109 ; 3 uses
  %i.k = icmp slt i32 %.sroa.3.0.insert.insert.i.i, 0 ; 2 uses
  %i.l = sub i16 0, %.sroa.517.0.extract.trunc.i
  %.sroa.012.0.i = select i1 %i.k, i16 %i.l, i16 %.sroa.517.0.extract.trunc.i ; 2 uses
  %4 = icmp eq i16 %.sroa.012.0.i, 0              ; 2 uses
  %i.m = and i16 %.sroa.4.0.copyload.i, -513
  %masksel.i = select i1 %4, i16 0, i16 512
  %.sroa.014.0.i = or disjoint i16 %i.m, %masksel.i
  %.sroa.0.0.copyload18.i = load i64, ptr %1, align 8, !alias.scope !1109 ; 2 uses
  %.sroa.5.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload20.i = load i64, ptr %.sroa.5.0..sroa_idx19.i, align 8, !alias.scope !1109 ; 2 uses
  %.sroa.6.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload22.i = load i64, ptr %.sroa.6.0..sroa_idx21.i, align 8, !alias.scope !1109 ; 2 uses
  %.sroa.7.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0.copyload24.i = load i64, ptr %.sroa.7.0..sroa_idx23.i, align 8, !alias.scope !1109 ; 2 uses
  %.sroa.8.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.8.0.copyload26.i = load i64, ptr %.sroa.8.0..sroa_idx25.i, align 8, !alias.scope !1109 ; 2 uses
  %.sroa.9.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.9.0.copyload28.i = load i32, ptr %.sroa.9.0..sroa_idx27.i, align 8, !alias.scope !1109 ; 2 uses
  %.sroa.10.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.10.0.copyload30.i = load i32, ptr %.sroa.10.0..sroa_idx29.i, align 4, !alias.scope !1109 ; 2 uses
  %.sroa.11.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.11.0.copyload32.i = load i32, ptr %.sroa.11.0..sroa_idx31.i, align 8, !alias.scope !1109 ; 2 uses
  %.sroa.12.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.12.0.copyload34.i = load i32, ptr %.sroa.12.0..sroa_idx33.i, align 4, !alias.scope !1109 ; 2 uses
  br i1 %i.k, label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %5 = icmp ne i32 %.sroa.517.0.extract.shift.i, 0 ; 2 uses
  br i1 %5, label %.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = icmp eq i32 %.sroa.9.0.copyload28.i, 0
  %or.cond.i.i = select i1 %4, i1 %i.n, i1 false
  %i.o = icmp eq i32 %.sroa.10.0.copyload30.i, 0
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.o, i1 false
  %i.p = icmp eq i32 %.sroa.11.0.copyload32.i, 0
  %or.cond8.i.i = select i1 %or.cond5.i.i, i1 %i.p, i1 false
  %i.q = icmp eq i32 %.sroa.12.0.copyload34.i, 0
  %or.cond11.i.i = select i1 %or.cond8.i.i, i1 %i.q, i1 false
  %i.r = icmp eq i64 %.sroa.0.0.copyload18.i, 0
  %or.cond13.i.i = select i1 %or.cond11.i.i, i1 %i.r, i1 false
  %i.s = icmp eq i64 %.sroa.5.0.copyload20.i, 0
  %or.cond16.i.i = select i1 %or.cond13.i.i, i1 %i.s, i1 false
  %i.t = icmp eq i64 %.sroa.6.0.copyload22.i, 0
  %or.cond19.i.i = select i1 %or.cond16.i.i, i1 %i.t, i1 false
  %i.u = icmp eq i64 %.sroa.7.0.copyload24.i, 0
  %or.cond22.i.i = select i1 %or.cond19.i.i, i1 %i.u, i1 false
  %i.v = icmp eq i64 %.sroa.8.0.copyload26.i, 0
  %or.cond4.i.i = select i1 %or.cond22.i.i, i1 %i.v, i1 false
  br i1 %or.cond4.i.i, label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.h, %bb.g
  %i.w = and i32 %.sroa.79.0.copyload.i, 255
  %.sroa.027.0.in.i.i = icmp eq i32 %i.w, 0
  %spec.select.i.i = zext i1 %5 to i32
  %spec.select.i = select i1 %.sroa.027.0.in.i.i, i32 %spec.select.i.i, i32 %.sroa.79.0.copyload.i
  %i.x = and i32 %spec.select.i, 255
  br label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i

_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i: ; preds = %.thread.i.i, %bb.h, %bb.f
  %.sroa.0.0.i.i = phi i32 [ %i.x, %.thread.i.i ], [ 255, %bb.f ], [ 0, %bb.h ]
  %.sroa.16.60.insert.mask.i = and i32 %.sroa.79.0.copyload.i, -256
  %.sroa.16.60.insert.insert.i = or disjoint i32 %.sroa.0.0.i.i, %.sroa.16.60.insert.mask.i
  store i64 %.sroa.0.0.copyload18.i, ptr %0, align 8, !alias.scope !1108
  %.sroa.4.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.copyload20.i, ptr %.sroa.4.0..sroa_idx36.i, align 8, !alias.scope !1108
  %.sroa.538.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload22.i, ptr %.sroa.538.0..sroa_idx.i, align 8, !alias.scope !1108
  %.sroa.639.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0.copyload24.i, ptr %.sroa.639.0..sroa_idx.i, align 8, !alias.scope !1108
  %.sroa.740.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.8.0.copyload26.i, ptr %.sroa.740.0..sroa_idx.i, align 8, !alias.scope !1108
  %.sroa.841.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.9.0.copyload28.i, ptr %.sroa.841.0..sroa_idx.i, align 8, !alias.scope !1108
  %.sroa.942.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.10.0.copyload30.i, ptr %.sroa.942.0..sroa_idx.i, align 4, !alias.scope !1108
  %.sroa.1043.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.11.0.copyload32.i, ptr %.sroa.1043.0..sroa_idx.i, align 8, !alias.scope !1108
  %.sroa.1144.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.12.0.copyload34.i, ptr %.sroa.1144.0..sroa_idx.i, align 4, !alias.scope !1108
  %.sroa.1245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %.sroa.014.0.i, ptr %.sroa.1245.0..sroa_idx.i, align 8, !alias.scope !1108
  %.sroa.1346.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %.sroa.012.0.i, ptr %.sroa.1346.0..sroa_idx.i, align 2, !alias.scope !1108
  %.sroa.1447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.sroa.16.60.insert.insert.i, ptr %.sroa.1447.0..sroa_idx.i, align 4, !alias.scope !1108
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  %i.y = add i64 %3, -239977
  %or.cond.i1 = icmp ult i64 %i.y, -479953
  br i1 %or.cond.i1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = tail call noundef i8 @_RNvXsS_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !1113
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 8
  %i.ac = or disjoint i64 %i.ab, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ad = shl nsw i64 %3, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.k, %bb.j
  %.sroa.3.0.insert.insert.i.i2 = phi i64 [ %i.ad, %bb.k ], [ %i.ac, %bb.j ] ; 5 uses
  %i.ae = trunc i64 %.sroa.3.0.insert.insert.i.i2 to i1
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.419.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i2, 8
  %.sroa.419.0.extract.trunc.i = trunc i64 %.sroa.419.0.extract.shift.i to i8
  %i.af = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.419.0.extract.trunc.i), !noalias !1113
  store ptr %i.af, ptr %0, align 8, !alias.scope !1111
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.ag, align 4, !alias.scope !1111
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit

bb.m:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.621.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i2, 32
  %.sroa.621.0.extract.trunc.i = trunc nuw i64 %.sroa.621.0.extract.shift.i to i32 ; 2 uses
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.58.sroa.0.0.copyload.i = load i32, ptr %.sroa.58.0..sroa_idx.i, align 4, !alias.scope !1112 ; 2 uses
  %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.58.sroa.4.0.copyload.i = load i32, ptr %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1112 ; 2 uses
  %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.58.sroa.5.0.copyload.i = load i32, ptr %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !1112 ; 2 uses
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.510.0.copyload.i = load i16, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !1112
  %.sroa.713.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.sroa.713.sroa.0.0.copyload.i = load i16, ptr %.sroa.713.0..sroa_idx.i, align 2, !alias.scope !1112 ; 2 uses
  %.sroa.713.sroa.4.0..sroa.713.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.713.sroa.4.0.copyload.i = load i8, ptr %.sroa.713.sroa.4.0..sroa.713.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !1112 ; 2 uses
  %.sroa.713.sroa.5.0..sroa.713.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.ah = icmp slt i64 %.sroa.3.0.insert.insert.i.i2, 0
  %i.ai = sub i32 0, %.sroa.621.0.extract.trunc.i
  %.sroa.015.0.i = select i1 %i.ah, i32 %i.ai, i32 %.sroa.621.0.extract.trunc.i ; 2 uses
  %i.aj = icmp eq i32 %.sroa.015.0.i, 0           ; 2 uses
  %i.ak = and i16 %.sroa.510.0.copyload.i, -257
  %masksel.i3 = select i1 %i.aj, i16 0, i16 256
  %.sroa.017.0.i = or disjoint i16 %i.ak, %masksel.i3
  %.sroa.0.0.copyload22.i = load i64, ptr %1, align 8, !alias.scope !1112 ; 2 uses
  %.sroa.5.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload24.i = load i64, ptr %.sroa.5.0..sroa_idx23.i, align 8, !alias.scope !1112 ; 2 uses
  %.sroa.6.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload26.i = load i64, ptr %.sroa.6.0..sroa_idx25.i, align 8, !alias.scope !1112 ; 2 uses
  %.sroa.7.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0.copyload28.i = load i64, ptr %.sroa.7.0..sroa_idx27.i, align 8, !alias.scope !1112 ; 2 uses
  %.sroa.8.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.8.0.copyload30.i = load i64, ptr %.sroa.8.0..sroa_idx29.i, align 8, !alias.scope !1112 ; 2 uses
  %i.al = ashr i64 %.sroa.3.0.insert.insert.i.i2, 32 ; 2 uses
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i17, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = icmp ne i64 %i.al, 0                    ; 2 uses
  br i1 %i.an, label %.thread.i.i13, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = icmp eq i16 %.sroa.713.sroa.0.0.copyload.i, 0
  %or.cond.i.i4 = select i1 %i.ao, i1 %i.aj, i1 false
  %i.ap = icmp eq i32 %.sroa.58.sroa.0.0.copyload.i, 0
  %or.cond5.i.i5 = select i1 %or.cond.i.i4, i1 %i.ap, i1 false
  %i.aq = icmp eq i32 %.sroa.58.sroa.4.0.copyload.i, 0
  %or.cond8.i.i6 = select i1 %or.cond5.i.i5, i1 %i.aq, i1 false
  %i.ar = icmp eq i32 %.sroa.58.sroa.5.0.copyload.i, 0
  %or.cond11.i.i7 = select i1 %or.cond8.i.i6, i1 %i.ar, i1 false
  %i.as = icmp eq i64 %.sroa.0.0.copyload22.i, 0
  %or.cond13.i.i8 = select i1 %or.cond11.i.i7, i1 %i.as, i1 false
  %i.at = icmp eq i64 %.sroa.5.0.copyload24.i, 0
  %or.cond16.i.i9 = select i1 %or.cond13.i.i8, i1 %i.at, i1 false
  %i.au = icmp eq i64 %.sroa.6.0.copyload26.i, 0
  %or.cond19.i.i10 = select i1 %or.cond16.i.i9, i1 %i.au, i1 false
  %i.av = icmp eq i64 %.sroa.7.0.copyload28.i, 0
  %or.cond22.i.i11 = select i1 %or.cond19.i.i10, i1 %i.av, i1 false
  %i.aw = icmp eq i64 %.sroa.8.0.copyload30.i, 0
  %or.cond4.i.i12 = select i1 %or.cond22.i.i11, i1 %i.aw, i1 false
  br i1 %or.cond4.i.i12, label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i17, label %.thread.i.i13

.thread.i.i13:                                    ; preds = %bb.o, %bb.n
  %.sroa.027.0.in.i.i14 = icmp eq i8 %.sroa.713.sroa.4.0.copyload.i, 0
  %spec.select.i.i15 = zext i1 %i.an to i8
  %spec.select.i16 = select i1 %.sroa.027.0.in.i.i14, i8 %spec.select.i.i15, i8 %.sroa.713.sroa.4.0.copyload.i
  br label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i17

_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i17: ; preds = %.thread.i.i13, %bb.o, %bb.m
  %.sroa.0.0.i.i18 = phi i8 [ %spec.select.i16, %.thread.i.i13 ], [ -1, %bb.m ], [ 0, %bb.o ]
  %.sroa.1540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.1540.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.713.sroa.5.0..sroa.713.0..sroa_idx.sroa_idx.i, i64 3, i1 false), !alias.scope !1113
  store i64 %.sroa.0.0.copyload22.i, ptr %0, align 8, !alias.scope !1111
  %.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.copyload24.i, ptr %.sroa.4.0..sroa_idx.i19, align 8, !alias.scope !1111
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload26.i, ptr %.sroa.532.0..sroa_idx.i, align 8, !alias.scope !1111
  %.sroa.633.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0.copyload28.i, ptr %.sroa.633.0..sroa_idx.i, align 8, !alias.scope !1111
  %.sroa.734.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.8.0.copyload30.i, ptr %.sroa.734.0..sroa_idx.i, align 8, !alias.scope !1111
  %.sroa.835.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.015.0.i, ptr %.sroa.835.0..sroa_idx.i, align 8, !alias.scope !1111
  %.sroa.936.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.58.sroa.0.0.copyload.i, ptr %.sroa.936.0..sroa_idx.i, align 4, !alias.scope !1111
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.58.sroa.4.0.copyload.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !1111
  %.sroa.1137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.58.sroa.5.0.copyload.i, ptr %.sroa.1137.0..sroa_idx.i, align 4, !alias.scope !1111
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %.sroa.017.0.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !1111
  %.sroa.1338.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %.sroa.713.sroa.0.0.copyload.i, ptr %.sroa.1338.0..sroa_idx.i, align 2, !alias.scope !1111
  %.sroa.1439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sroa.0.0.i.i18, ptr %.sroa.1439.0..sroa_idx.i, align 4, !alias.scope !1111
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %i.ax = add i64 %3, -1043498
  %or.cond.i20 = icmp ult i64 %i.ax, -2086995
  br i1 %or.cond.i20, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = tail call noundef i8 @_RNvXsU_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !1116
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 8
  %i.bb = or disjoint i64 %i.ba, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bc = shl nsw i64 %3, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.r, %bb.q
  %.sroa.3.0.insert.insert.i.i21 = phi i64 [ %i.bc, %bb.r ], [ %i.bb, %bb.q ] ; 5 uses
  %i.bd = trunc i64 %.sroa.3.0.insert.insert.i.i21 to i1
  br i1 %i.bd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.420.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i21, 8
  %.sroa.420.0.extract.trunc.i = trunc i64 %.sroa.420.0.extract.shift.i to i8
  %i.be = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.420.0.extract.trunc.i), !noalias !1116
  store ptr %i.be, ptr %0, align 8, !alias.scope !1114
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.bf, align 4, !alias.scope !1114
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit

bb.t:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.622.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i21, 32
  %.sroa.622.0.extract.trunc.i = trunc nuw i64 %.sroa.622.0.extract.shift.i to i32 ; 2 uses
  %.sroa.58.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.58.0.copyload.i = load i64, ptr %.sroa.58.0..sroa_idx.i22, align 8, !alias.scope !1115 ; 2 uses
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.511.0.copyload.i = load i16, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !1115
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.sroa.714.sroa.0.0.copyload.i = load i16, ptr %.sroa.714.0..sroa_idx.i, align 2, !alias.scope !1115 ; 2 uses
  %.sroa.714.sroa.4.0..sroa.714.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.714.sroa.4.0.copyload.i = load i8, ptr %.sroa.714.sroa.4.0..sroa.714.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !1115 ; 2 uses
  %.sroa.714.sroa.5.0..sroa.714.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.bg = icmp slt i64 %.sroa.3.0.insert.insert.i.i21, 0
  %i.bh = sub i32 0, %.sroa.622.0.extract.trunc.i
  %.sroa.016.0.i = select i1 %i.bg, i32 %i.bh, i32 %.sroa.622.0.extract.trunc.i ; 2 uses
  %i.bi = icmp eq i32 %.sroa.016.0.i, 0           ; 2 uses
  %i.bj = and i16 %.sroa.511.0.copyload.i, -129
  %masksel.i23 = select i1 %i.bi, i16 0, i16 128
  %.sroa.018.0.i = or disjoint i16 %i.bj, %masksel.i23
  %.sroa.0.0.copyload23.i = load i64, ptr %1, align 8, !alias.scope !1115 ; 2 uses
  %.sroa.5.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload25.i = load i64, ptr %.sroa.5.0..sroa_idx24.i, align 8, !alias.scope !1115 ; 2 uses
  %.sroa.6.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload27.i = load i64, ptr %.sroa.6.0..sroa_idx26.i, align 8, !alias.scope !1115 ; 2 uses
  %.sroa.7.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0.copyload29.i = load i64, ptr %.sroa.7.0..sroa_idx28.i, align 8, !alias.scope !1115 ; 2 uses
  %.sroa.8.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.8.0.copyload31.i = load i64, ptr %.sroa.8.0..sroa_idx30.i, align 8, !alias.scope !1115 ; 2 uses
  %.sroa.9.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.9.0.copyload33.i = load i32, ptr %.sroa.9.0..sroa_idx32.i, align 8, !alias.scope !1115 ; 2 uses
  %i.bk = ashr i64 %.sroa.3.0.insert.insert.i.i21, 32 ; 2 uses
  %i.bl = icmp slt i64 %i.bk, 0
  br i1 %i.bl, label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i36, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = icmp ne i64 %i.bk, 0                    ; 2 uses
  br i1 %i.bm, label %.thread.i.i32, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = icmp eq i16 %.sroa.714.sroa.0.0.copyload.i, 0
  %i.bo = icmp eq i32 %.sroa.9.0.copyload33.i, 0
  %or.cond.i.i24 = select i1 %i.bn, i1 %i.bo, i1 false
  %or.cond5.i.i25 = select i1 %or.cond.i.i24, i1 %i.bi, i1 false
  %i.bp = icmp eq i64 %.sroa.58.0.copyload.i, 0
  %or.cond11.i.i26 = select i1 %or.cond5.i.i25, i1 %i.bp, i1 false
  %i.bq = icmp eq i64 %.sroa.0.0.copyload23.i, 0
  %or.cond13.i.i27 = select i1 %or.cond11.i.i26, i1 %i.bq, i1 false
  %i.br = icmp eq i64 %.sroa.5.0.copyload25.i, 0
  %or.cond16.i.i28 = select i1 %or.cond13.i.i27, i1 %i.br, i1 false
  %i.bs = icmp eq i64 %.sroa.6.0.copyload27.i, 0
  %or.cond19.i.i29 = select i1 %or.cond16.i.i28, i1 %i.bs, i1 false
  %i.bt = icmp eq i64 %.sroa.7.0.copyload29.i, 0
  %or.cond22.i.i30 = select i1 %or.cond19.i.i29, i1 %i.bt, i1 false
  %i.bu = icmp eq i64 %.sroa.8.0.copyload31.i, 0
  %or.cond4.i.i31 = select i1 %or.cond22.i.i30, i1 %i.bu, i1 false
  br i1 %or.cond4.i.i31, label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i36, label %.thread.i.i32

.thread.i.i32:                                    ; preds = %bb.v, %bb.u
  %.sroa.027.0.in.i.i33 = icmp eq i8 %.sroa.714.sroa.4.0.copyload.i, 0
  %spec.select.i.i34 = zext i1 %i.bm to i8
  %spec.select.i35 = select i1 %.sroa.027.0.in.i.i33, i8 %spec.select.i.i34, i8 %.sroa.714.sroa.4.0.copyload.i
  br label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i36

_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i36: ; preds = %.thread.i.i32, %bb.v, %bb.t
  %.sroa.0.0.i.i37 = phi i8 [ %spec.select.i35, %.thread.i.i32 ], [ -1, %bb.t ], [ 0, %bb.v ]
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.714.sroa.5.0..sroa.714.0..sroa_idx.sroa_idx.i, i64 3, i1 false), !alias.scope !1116
  store i64 %.sroa.0.0.copyload23.i, ptr %0, align 8, !alias.scope !1114
  %.sroa.4.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.copyload25.i, ptr %.sroa.4.0..sroa_idx.i38, align 8, !alias.scope !1114
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload27.i, ptr %.sroa.535.0..sroa_idx.i, align 8, !alias.scope !1114
  %.sroa.636.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0.copyload29.i, ptr %.sroa.636.0..sroa_idx.i, align 8, !alias.scope !1114
  %.sroa.737.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.8.0.copyload31.i, ptr %.sroa.737.0..sroa_idx.i, align 8, !alias.scope !1114
  %.sroa.838.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.9.0.copyload33.i, ptr %.sroa.838.0..sroa_idx.i, align 8, !alias.scope !1114
  %.sroa.939.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.016.0.i, ptr %.sroa.939.0..sroa_idx.i, align 4, !alias.scope !1114
  %.sroa.1040.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.58.0.copyload.i, ptr %.sroa.1040.0..sroa_idx.i, align 8, !alias.scope !1114
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %.sroa.018.0.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !1114
  %.sroa.12.0..sroa_idx41.i = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %.sroa.714.sroa.0.0.copyload.i, ptr %.sroa.12.0..sroa_idx41.i, align 2, !alias.scope !1114
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sroa.0.0.i.i37, ptr %.sroa.13.0..sroa_idx.i, align 4, !alias.scope !1114
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit

bb.w:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  %i.bv = add i64 %3, -7304485
  %or.cond.i39 = icmp ult i64 %i.bv, -14608969
  br i1 %or.cond.i39, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bw = tail call noundef i8 @_RNvXsW_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !1119
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 8
  %i.bz = or disjoint i64 %i.by, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.y:                                             ; preds = %bb.w
  %i.ca = shl nsw i64 %3, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.y, %bb.x
  %.sroa.3.0.insert.insert.i.i40 = phi i64 [ %i.ca, %bb.y ], [ %i.bz, %bb.x ] ; 5 uses
  %i.cb = trunc i64 %.sroa.3.0.insert.insert.i.i40 to i1
  br i1 %i.cb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.420.0.extract.shift.i84 = lshr i64 %.sroa.3.0.insert.insert.i.i40, 8
  %.sroa.420.0.extract.trunc.i85 = trunc i64 %.sroa.420.0.extract.shift.i84 to i8
  %i.cc = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.420.0.extract.trunc.i85), !noalias !1119
  store ptr %i.cc, ptr %0, align 8, !alias.scope !1117
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.cd, align 4, !alias.scope !1117
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit

bb.aa:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.622.0.extract.shift.i41 = lshr i64 %.sroa.3.0.insert.insert.i.i40, 32
  %.sroa.622.0.extract.trunc.i42 = trunc nuw i64 %.sroa.622.0.extract.shift.i41 to i32 ; 2 uses
  %.sroa.58.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.58.0.copyload.i44 = load i32, ptr %.sroa.58.0..sroa_idx.i43, align 4, !alias.scope !1118 ; 2 uses
  %.sroa.511.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.511.0.copyload.i46 = load i16, ptr %.sroa.511.0..sroa_idx.i45, align 8, !alias.scope !1118
  %.sroa.714.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.sroa.714.sroa.0.0.copyload.i48 = load i16, ptr %.sroa.714.0..sroa_idx.i47, align 2, !alias.scope !1118 ; 2 uses
  %.sroa.714.sroa.4.0..sroa.714.0..sroa_idx.sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.714.sroa.4.0.copyload.i50 = load i8, ptr %.sroa.714.sroa.4.0..sroa.714.0..sroa_idx.sroa_idx.i49, align 4, !alias.scope !1118 ; 2 uses
  %.sroa.714.sroa.5.0..sroa.714.0..sroa_idx.sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.ce = icmp slt i64 %.sroa.3.0.insert.insert.i.i40, 0
  %i.cf = sub i32 0, %.sroa.622.0.extract.trunc.i42
  %.sroa.016.0.i52 = select i1 %i.ce, i32 %i.cf, i32 %.sroa.622.0.extract.trunc.i42 ; 2 uses
  %i.cg = icmp eq i32 %.sroa.016.0.i52, 0         ; 2 uses
  %i.ch = and i16 %.sroa.511.0.copyload.i46, -65
  %masksel.i53 = select i1 %i.cg, i16 0, i16 64
  %.sroa.018.0.i54 = or disjoint i16 %i.ch, %masksel.i53
  %.sroa.0.0.copyload23.i55 = load i64, ptr %1, align 8, !alias.scope !1118 ; 2 uses
  %.sroa.5.0..sroa_idx24.i56 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload25.i57 = load i64, ptr %.sroa.5.0..sroa_idx24.i56, align 8, !alias.scope !1118 ; 2 uses
  %.sroa.6.0..sroa_idx26.i58 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload27.i59 = load i64, ptr %.sroa.6.0..sroa_idx26.i58, align 8, !alias.scope !1118 ; 2 uses
  %.sroa.7.0..sroa_idx28.i60 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0.copyload29.i61 = load i64, ptr %.sroa.7.0..sroa_idx28.i60, align 8, !alias.scope !1118 ; 2 uses
  %.sroa.8.0..sroa_idx30.i62 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.8.0.copyload31.i63 = load i64, ptr %.sroa.8.0..sroa_idx30.i62, align 8, !alias.scope !1118 ; 2 uses
  %.sroa.9.0..sroa_idx32.i64 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.9.0.copyload33.i65 = load i32, ptr %.sroa.9.0..sroa_idx32.i64, align 8, !alias.scope !1118 ; 2 uses
  %.sroa.10.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.10.0.copyload35.i = load i32, ptr %.sroa.10.0..sroa_idx34.i, align 4, !alias.scope !1118 ; 2 uses
  %i.ci = ashr i64 %.sroa.3.0.insert.insert.i.i40, 32 ; 2 uses
  %i.cj = icmp slt i64 %i.ci, 0
  br i1 %i.cj, label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i79, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ck = icmp ne i64 %i.ci, 0                    ; 2 uses
  br i1 %i.ck, label %.thread.i.i75, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = icmp eq i16 %.sroa.714.sroa.0.0.copyload.i48, 0
  %i.cm = icmp eq i32 %.sroa.9.0.copyload33.i65, 0
  %or.cond.i.i66 = select i1 %i.cl, i1 %i.cm, i1 false
  %i.cn = icmp eq i32 %.sroa.10.0.copyload35.i, 0
  %or.cond5.i.i67 = select i1 %or.cond.i.i66, i1 %i.cn, i1 false
  %or.cond8.i.i68 = select i1 %or.cond5.i.i67, i1 %i.cg, i1 false
  %i.co = icmp eq i32 %.sroa.58.0.copyload.i44, 0
  %or.cond11.i.i69 = select i1 %or.cond8.i.i68, i1 %i.co, i1 false
  %i.cp = icmp eq i64 %.sroa.0.0.copyload23.i55, 0
  %or.cond13.i.i70 = select i1 %or.cond11.i.i69, i1 %i.cp, i1 false
  %i.cq = icmp eq i64 %.sroa.5.0.copyload25.i57, 0
  %or.cond16.i.i71 = select i1 %or.cond13.i.i70, i1 %i.cq, i1 false
  %i.cr = icmp eq i64 %.sroa.6.0.copyload27.i59, 0
  %or.cond19.i.i72 = select i1 %or.cond16.i.i71, i1 %i.cr, i1 false
  %i.cs = icmp eq i64 %.sroa.7.0.copyload29.i61, 0
  %or.cond22.i.i73 = select i1 %or.cond19.i.i72, i1 %i.cs, i1 false
  %i.ct = icmp eq i64 %.sroa.8.0.copyload31.i63, 0
  %or.cond4.i.i74 = select i1 %or.cond22.i.i73, i1 %i.ct, i1 false
  br i1 %or.cond4.i.i74, label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i79, label %.thread.i.i75

.thread.i.i75:                                    ; preds = %bb.ac, %bb.ab
  %.sroa.027.0.in.i.i76 = icmp eq i8 %.sroa.714.sroa.4.0.copyload.i50, 0
  %spec.select.i.i77 = zext i1 %i.ck to i8
  %spec.select.i78 = select i1 %.sroa.027.0.in.i.i76, i8 %spec.select.i.i77, i8 %.sroa.714.sroa.4.0.copyload.i50
  br label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i79

_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i79: ; preds = %.thread.i.i75, %bb.ac, %bb.aa
  %.sroa.0.0.i.i80 = phi i8 [ %spec.select.i78, %.thread.i.i75 ], [ -1, %bb.aa ], [ 0, %bb.ac ]
  %.sroa.1545.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.1545.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.714.sroa.5.0..sroa.714.0..sroa_idx.sroa_idx.i51, i64 3, i1 false), !alias.scope !1119
  store i64 %.sroa.0.0.copyload23.i55, ptr %0, align 8, !alias.scope !1117
  %.sroa.4.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.copyload25.i57, ptr %.sroa.4.0..sroa_idx.i81, align 8, !alias.scope !1117
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload27.i59, ptr %.sroa.537.0..sroa_idx.i, align 8, !alias.scope !1117
  %.sroa.638.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0.copyload29.i61, ptr %.sroa.638.0..sroa_idx.i, align 8, !alias.scope !1117
  %.sroa.739.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.8.0.copyload31.i63, ptr %.sroa.739.0..sroa_idx.i, align 8, !alias.scope !1117
  %.sroa.840.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.9.0.copyload33.i65, ptr %.sroa.840.0..sroa_idx.i, align 8, !alias.scope !1117
  %.sroa.941.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.10.0.copyload35.i, ptr %.sroa.941.0..sroa_idx.i, align 4, !alias.scope !1117
  %.sroa.1042.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.016.0.i52, ptr %.sroa.1042.0..sroa_idx.i, align 8, !alias.scope !1117
  %.sroa.1143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.58.0.copyload.i44, ptr %.sroa.1143.0..sroa_idx.i, align 4, !alias.scope !1117
  %.sroa.12.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %.sroa.018.0.i54, ptr %.sroa.12.0..sroa_idx.i82, align 8, !alias.scope !1117
  %.sroa.1344.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %.sroa.714.sroa.0.0.copyload.i48, ptr %.sroa.1344.0..sroa_idx.i, align 2, !alias.scope !1117
  %.sroa.14.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sroa.0.0.i.i80, ptr %.sroa.14.0..sroa_idx.i83, align 4, !alias.scope !1117
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit

bb.ad:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.cu = add i64 %3, -175307617
  %or.cond.i86 = icmp ult i64 %i.cu, -350615233
  br i1 %or.cond.i86, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cv = tail call noundef i8 @_RNvXsY_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !1122
  %i.cw = zext nneg i8 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 8
  %i.cy = or disjoint i64 %i.cx, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.cz = shl nsw i64 %3, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.af, %bb.ae
  %.sroa.3.0.insert.insert.i.i87 = phi i64 [ %i.cz, %bb.af ], [ %i.cy, %bb.ae ] ; 5 uses
  %i.da = trunc i64 %.sroa.3.0.insert.insert.i.i87 to i1
  br i1 %i.da, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.417.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i87, 8
  %.sroa.417.0.extract.trunc.i = trunc i64 %.sroa.417.0.extract.shift.i to i8
  %i.db = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.417.0.extract.trunc.i), !noalias !1122
  store ptr %i.db, ptr %0, align 8, !alias.scope !1120
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.dc, align 4, !alias.scope !1120
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit

bb.ah:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.619.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i87, 32
  %.sroa.619.0.extract.trunc.i = trunc nuw i64 %.sroa.619.0.extract.shift.i to i32 ; 2 uses
  %.sroa.58.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.58.0.copyload.i89 = load i16, ptr %.sroa.58.0..sroa_idx.i88, align 8, !alias.scope !1121
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.sroa.711.sroa.0.0.copyload.i = load i16, ptr %.sroa.711.0..sroa_idx.i, align 2, !alias.scope !1121 ; 2 uses
  %.sroa.711.sroa.4.0..sroa.711.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.711.sroa.4.0.copyload.i = load i8, ptr %.sroa.711.sroa.4.0..sroa.711.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !1121 ; 2 uses
  %.sroa.711.sroa.5.0..sroa.711.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.dd = icmp slt i64 %.sroa.3.0.insert.insert.i.i87, 0
  %i.de = sub i32 0, %.sroa.619.0.extract.trunc.i
  %.sroa.013.0.i = select i1 %i.dd, i32 %i.de, i32 %.sroa.619.0.extract.trunc.i ; 2 uses
  %i.df = icmp eq i32 %.sroa.013.0.i, 0           ; 2 uses
  %i.dg = and i16 %.sroa.58.0.copyload.i89, -33
  %masksel.i90 = select i1 %i.df, i16 0, i16 32
  %.sroa.015.0.i91 = or disjoint i16 %i.dg, %masksel.i90
  %.sroa.0.0.copyload20.i = load i64, ptr %1, align 8, !alias.scope !1121 ; 2 uses
  %.sroa.5.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload22.i = load i64, ptr %.sroa.5.0..sroa_idx21.i, align 8, !alias.scope !1121 ; 2 uses
  %.sroa.6.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload24.i = load i64, ptr %.sroa.6.0..sroa_idx23.i, align 8, !alias.scope !1121 ; 2 uses
  %.sroa.7.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0.copyload26.i = load i64, ptr %.sroa.7.0..sroa_idx25.i, align 8, !alias.scope !1121 ; 2 uses
  %.sroa.8.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.8.0.copyload28.i = load i64, ptr %.sroa.8.0..sroa_idx27.i, align 8, !alias.scope !1121 ; 2 uses
  %.sroa.9.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.9.0.copyload30.i = load i32, ptr %.sroa.9.0..sroa_idx29.i, align 8, !alias.scope !1121 ; 2 uses
  %.sroa.10.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.10.0.copyload32.i = load i32, ptr %.sroa.10.0..sroa_idx31.i, align 4, !alias.scope !1121 ; 2 uses
  %.sroa.11.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.11.0.copyload34.i = load i32, ptr %.sroa.11.0..sroa_idx33.i, align 8, !alias.scope !1121 ; 2 uses
  %i.dh = ashr i64 %.sroa.3.0.insert.insert.i.i87, 32 ; 2 uses
  %i.di = icmp slt i64 %i.dh, 0
  br i1 %i.di, label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i105, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dj = icmp ne i64 %i.dh, 0                    ; 2 uses
  br i1 %i.dj, label %.thread.i.i101, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dk = icmp eq i16 %.sroa.711.sroa.0.0.copyload.i, 0
  %i.dl = icmp eq i32 %.sroa.9.0.copyload30.i, 0
  %or.cond.i.i92 = select i1 %i.dk, i1 %i.dl, i1 false
  %i.dm = icmp eq i32 %.sroa.10.0.copyload32.i, 0
  %or.cond5.i.i93 = select i1 %or.cond.i.i92, i1 %i.dm, i1 false
  %i.dn = icmp eq i32 %.sroa.11.0.copyload34.i, 0
  %or.cond8.i.i94 = select i1 %or.cond5.i.i93, i1 %i.dn, i1 false
  %or.cond11.i.i95 = select i1 %or.cond8.i.i94, i1 %i.df, i1 false
  %i.do = icmp eq i64 %.sroa.0.0.copyload20.i, 0
  %or.cond13.i.i96 = select i1 %or.cond11.i.i95, i1 %i.do, i1 false
  %i.dp = icmp eq i64 %.sroa.5.0.copyload22.i, 0
  %or.cond16.i.i97 = select i1 %or.cond13.i.i96, i1 %i.dp, i1 false
  %i.dq = icmp eq i64 %.sroa.6.0.copyload24.i, 0
  %or.cond19.i.i98 = select i1 %or.cond16.i.i97, i1 %i.dq, i1 false
  %i.dr = icmp eq i64 %.sroa.7.0.copyload26.i, 0
  %or.cond22.i.i99 = select i1 %or.cond19.i.i98, i1 %i.dr, i1 false
  %i.ds = icmp eq i64 %.sroa.8.0.copyload28.i, 0
  %or.cond4.i.i100 = select i1 %or.cond22.i.i99, i1 %i.ds, i1 false
  br i1 %or.cond4.i.i100, label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i105, label %.thread.i.i101

.thread.i.i101:                                   ; preds = %bb.aj, %bb.ai
  %.sroa.027.0.in.i.i102 = icmp eq i8 %.sroa.711.sroa.4.0.copyload.i, 0
  %spec.select.i.i103 = zext i1 %i.dj to i8
  %spec.select.i104 = select i1 %.sroa.027.0.in.i.i102, i8 %spec.select.i.i103, i8 %.sroa.711.sroa.4.0.copyload.i
  br label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i105

_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i105: ; preds = %.thread.i.i101, %bb.aj, %bb.ah
  %.sroa.0.0.i.i106 = phi i8 [ %spec.select.i104, %.thread.i.i101 ], [ -1, %bb.ah ], [ 0, %bb.aj ]
  %.sroa.1545.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %0, i64 61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.1545.0..sroa_idx.i107, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.711.sroa.5.0..sroa.711.0..sroa_idx.sroa_idx.i, i64 3, i1 false), !alias.scope !1122
  store i64 %.sroa.0.0.copyload20.i, ptr %0, align 8, !alias.scope !1120
  %.sroa.4.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.copyload22.i, ptr %.sroa.4.0..sroa_idx.i108, align 8, !alias.scope !1120
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload24.i, ptr %.sroa.536.0..sroa_idx.i, align 8, !alias.scope !1120
  %.sroa.637.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0.copyload26.i, ptr %.sroa.637.0..sroa_idx.i, align 8, !alias.scope !1120
  %.sroa.738.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.8.0.copyload28.i, ptr %.sroa.738.0..sroa_idx.i, align 8, !alias.scope !1120
  %.sroa.839.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.9.0.copyload30.i, ptr %.sroa.839.0..sroa_idx.i, align 8, !alias.scope !1120
  %.sroa.940.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.10.0.copyload32.i, ptr %.sroa.940.0..sroa_idx.i, align 4, !alias.scope !1120
  %.sroa.1041.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.11.0.copyload34.i, ptr %.sroa.1041.0..sroa_idx.i, align 8, !alias.scope !1120
  %.sroa.1142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.013.0.i, ptr %.sroa.1142.0..sroa_idx.i, align 4, !alias.scope !1120
  %.sroa.1243.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %.sroa.015.0.i91, ptr %.sroa.1243.0..sroa_idx.i, align 8, !alias.scope !1120
  %.sroa.13.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %.sroa.711.sroa.0.0.copyload.i, ptr %.sroa.13.0..sroa_idx.i109, align 2, !alias.scope !1120
  %.sroa.1444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sroa.0.0.i.i106, ptr %.sroa.1444.0..sroa_idx.i, align 4, !alias.scope !1120
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit

bb.ak:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  %i.dt = add i64 %3, -10518456961
  %or.cond.i110 = icmp ult i64 %i.dt, -21036913921
  br i1 %or.cond.i110, label %bb.al, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.du = tail call noundef i8 @_RNvXs10_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !1125
  %i.dv = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.du), !noalias !1126
  store ptr %i.dv, ptr %0, align 8, !alias.scope !1123
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.dw, align 4, !alias.scope !1123
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.ak
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.54.sroa.0.0.copyload.i = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !1124 ; 2 uses
  %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.54.sroa.4.0.copyload.i = load i64, ptr %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1124 ; 2 uses
  %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.54.sroa.5.0.copyload.i = load i64, ptr %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1124 ; 2 uses
  %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.54.sroa.6.0.copyload.i = load i64, ptr %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1124 ; 2 uses
  %.sroa.54.sroa.7.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.54.sroa.7.0.copyload.i = load i32, ptr %.sroa.54.sroa.7.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1124 ; 2 uses
  %.sroa.54.sroa.8.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.54.sroa.8.0.copyload.i = load i32, ptr %.sroa.54.sroa.8.0..sroa.54.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !1124 ; 2 uses
  %.sroa.54.sroa.9.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.54.sroa.9.0.copyload.i = load i32, ptr %.sroa.54.sroa.9.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1124 ; 2 uses
  %.sroa.54.sroa.10.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.54.sroa.10.0.copyload.i = load i32, ptr %.sroa.54.sroa.10.0..sroa.54.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !1124 ; 2 uses
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.56.0.copyload.i = load i16, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !1124
  %.sroa.79.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.sroa.79.sroa.0.0.copyload.i = load i16, ptr %.sroa.79.0..sroa_idx.i111, align 2, !alias.scope !1124 ; 2 uses
  %.sroa.79.sroa.4.0..sroa.79.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.79.sroa.4.0.copyload.i = load i8, ptr %.sroa.79.sroa.4.0..sroa.79.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !1124 ; 2 uses
  %.sroa.79.sroa.5.0..sroa.79.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.dx = icmp slt i64 %3, 0
  %.sroa.011.0.i = tail call i64 @llvm.abs.i64(i64 %3, i1 true)
  %i.dy = icmp ne i64 %3, 0                       ; 3 uses
  %i.dz = and i16 %.sroa.56.0.copyload.i, -17
  %masksel.i112 = select i1 %i.dy, i16 16, i16 0
  %.sroa.013.0.i113 = or disjoint i16 %i.dz, %masksel.i112
  br i1 %i.dx, label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i126, label %bb.am

bb.am:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br i1 %i.dy, label %.thread.i.i122, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = icmp eq i16 %.sroa.79.sroa.0.0.copyload.i, 0
  %i.eb = icmp eq i32 %.sroa.54.sroa.7.0.copyload.i, 0
  %or.cond.i.i114 = select i1 %i.ea, i1 %i.eb, i1 false
  %i.ec = icmp eq i32 %.sroa.54.sroa.8.0.copyload.i, 0
  %or.cond5.i.i115 = select i1 %or.cond.i.i114, i1 %i.ec, i1 false
  %i.ed = icmp eq i32 %.sroa.54.sroa.9.0.copyload.i, 0
  %or.cond8.i.i116 = select i1 %or.cond5.i.i115, i1 %i.ed, i1 false
  %i.ee = icmp eq i32 %.sroa.54.sroa.10.0.copyload.i, 0
  %or.cond11.i.i117 = select i1 %or.cond8.i.i116, i1 %i.ee, i1 false
  %i.ef = icmp eq i64 %.sroa.54.sroa.0.0.copyload.i, 0
  %or.cond16.i.i118 = select i1 %or.cond11.i.i117, i1 %i.ef, i1 false
  %i.eg = icmp eq i64 %.sroa.54.sroa.4.0.copyload.i, 0
  %or.cond19.i.i119 = select i1 %or.cond16.i.i118, i1 %i.eg, i1 false
  %i.eh = icmp eq i64 %.sroa.54.sroa.5.0.copyload.i, 0
  %or.cond22.i.i120 = select i1 %or.cond19.i.i119, i1 %i.eh, i1 false
  %i.ei = icmp eq i64 %.sroa.54.sroa.6.0.copyload.i, 0
  %or.cond4.i.i121 = select i1 %or.cond22.i.i120, i1 %i.ei, i1 false
  br i1 %or.cond4.i.i121, label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i126, label %.thread.i.i122

.thread.i.i122:                                   ; preds = %bb.an, %bb.am
  %.sroa.027.0.in.i.i123 = icmp eq i8 %.sroa.79.sroa.4.0.copyload.i, 0
  %spec.select.i.i124 = zext i1 %i.dy to i8
  %spec.select.i125 = select i1 %.sroa.027.0.in.i.i123, i8 %spec.select.i.i124, i8 %.sroa.79.sroa.4.0.copyload.i
  br label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i126

_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i126: ; preds = %.thread.i.i122, %bb.an, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.0.0.i.i127 = phi i8 [ %spec.select.i125, %.thread.i.i122 ], [ -1, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 0, %bb.an ]
  %.sroa.1528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.1528.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.79.sroa.5.0..sroa.79.0..sroa_idx.sroa_idx.i, i64 3, i1 false), !alias.scope !1126
  store i64 %.sroa.011.0.i, ptr %0, align 8, !alias.scope !1123
  %.sroa.4.0..sroa_idx.i128 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.54.sroa.0.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i128, align 8, !alias.scope !1123
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.54.sroa.4.0.copyload.i, ptr %.sroa.519.0..sroa_idx.i, align 8, !alias.scope !1123
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.54.sroa.5.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1123
  %.sroa.720.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.54.sroa.6.0.copyload.i, ptr %.sroa.720.0..sroa_idx.i, align 8, !alias.scope !1123
  %.sroa.821.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.54.sroa.7.0.copyload.i, ptr %.sroa.821.0..sroa_idx.i, align 8, !alias.scope !1123
  %.sroa.922.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.54.sroa.8.0.copyload.i, ptr %.sroa.922.0..sroa_idx.i, align 4, !alias.scope !1123
  %.sroa.1023.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.54.sroa.9.0.copyload.i, ptr %.sroa.1023.0..sroa_idx.i, align 8, !alias.scope !1123
  %.sroa.1124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.54.sroa.10.0.copyload.i, ptr %.sroa.1124.0..sroa_idx.i, align 4, !alias.scope !1123
  %.sroa.1225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %.sroa.013.0.i113, ptr %.sroa.1225.0..sroa_idx.i, align 8, !alias.scope !1123
  %.sroa.1326.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %.sroa.79.sroa.0.0.copyload.i, ptr %.sroa.1326.0..sroa_idx.i, align 2, !alias.scope !1123
  %.sroa.1427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sroa.0.0.i.i127, ptr %.sroa.1427.0..sroa_idx.i, align 4, !alias.scope !1123
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit

bb.ao:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.ej = add i64 %3, -631107417601
  %or.cond.i129 = icmp ult i64 %i.ej, -1262214835201
  br i1 %or.cond.i129, label %bb.ap, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.ek = tail call noundef i8 @_RNvXs12_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !1129
  %i.el = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.ek), !noalias !1130
  store ptr %i.el, ptr %0, align 8, !alias.scope !1127
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.em, align 4, !alias.scope !1127
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.ao
  %.sroa.02.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !1128 ; 2 uses
  %.sroa.56.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.56.sroa.0.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i130, align 8, !alias.scope !1128 ; 2 uses
  %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.56.sroa.4.0.copyload.i = load i64, ptr %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1128 ; 2 uses
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.56.sroa.5.0.copyload.i = load i64, ptr %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1128 ; 2 uses
  %.sroa.56.sroa.6.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.56.sroa.6.0.copyload.i = load i32, ptr %.sroa.56.sroa.6.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1128 ; 2 uses
  %.sroa.56.sroa.7.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.56.sroa.7.0.copyload.i = load i32, ptr %.sroa.56.sroa.7.0..sroa.56.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !1128 ; 2 uses
  %.sroa.56.sroa.8.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.56.sroa.8.0.copyload.i = load i32, ptr %.sroa.56.sroa.8.0..sroa.56.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1128 ; 2 uses
  %.sroa.56.sroa.9.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.56.sroa.9.0.copyload.i = load i32, ptr %.sroa.56.sroa.9.0..sroa.56.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !1128 ; 2 uses
  %.sroa.58.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.58.0.copyload.i132 = load i16, ptr %.sroa.58.0..sroa_idx.i131, align 8, !alias.scope !1128
  %.sroa.711.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.sroa.711.sroa.0.0.copyload.i134 = load i16, ptr %.sroa.711.0..sroa_idx.i133, align 2, !alias.scope !1128 ; 2 uses
  %.sroa.711.sroa.4.0..sroa.711.0..sroa_idx.sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.711.sroa.4.0.copyload.i136 = load i8, ptr %.sroa.711.sroa.4.0..sroa.711.0..sroa_idx.sroa_idx.i135, align 4, !alias.scope !1128 ; 2 uses
  %.sroa.711.sroa.5.0..sroa.711.0..sroa_idx.sroa_idx.i137 = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.en = icmp slt i64 %3, 0
  %.sroa.013.0.i138 = tail call i64 @llvm.abs.i64(i64 %3, i1 true)
  %i.eo = icmp ne i64 %3, 0                       ; 3 uses
  %i.ep = and i16 %.sroa.58.0.copyload.i132, -9
  %masksel.i139 = select i1 %i.eo, i16 8, i16 0
  %.sroa.015.0.i140 = or disjoint i16 %i.ep, %masksel.i139
  br i1 %i.en, label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i153, label %bb.aq

bb.aq:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br i1 %i.eo, label %.thread.i.i149, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
end_hunk_3
begin_hunk_4_@_RNvMs2_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_unit:bb.a
  br label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i214

_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i214: ; preds = %.thread.i.i210, %bb.az, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b16SpanMicrosecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.0.0.i.i215 = phi i8 [ %spec.select.i213, %.thread.i.i210 ], [ -1, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b16SpanMicrosecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 0, %bb.az ]
  %.sroa.1533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.1533.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.710.sroa.5.0..sroa.710.0..sroa_idx.sroa_idx.i193, i64 3, i1 false), !alias.scope !1138
  store i64 %.sroa.016.0.copyload17.i197, ptr %0, align 8, !alias.scope !1135
  %.sroa.4.0..sroa_idx.i216 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.518.0.copyload20.i199, ptr %.sroa.4.0..sroa_idx.i216, align 8, !alias.scope !1135
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload22.i201, ptr %.sroa.525.0..sroa_idx.i, align 8, !alias.scope !1135
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.012.0.i194, ptr %.sroa.626.0..sroa_idx.i, align 8, !alias.scope !1135
  %.sroa.727.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.55.sroa.0.0.copyload.i178, ptr %.sroa.727.0..sroa_idx.i, align 8, !alias.scope !1135
  %.sroa.8.0..sroa_idx.i217 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.55.sroa.4.0.copyload.i180, ptr %.sroa.8.0..sroa_idx.i217, align 8, !alias.scope !1135
  %.sroa.928.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.55.sroa.5.0.copyload.i182, ptr %.sroa.928.0..sroa_idx.i, align 4, !alias.scope !1135
  %.sroa.10.0..sroa_idx.i218 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.55.sroa.6.0.copyload.i184, ptr %.sroa.10.0..sroa_idx.i218, align 8, !alias.scope !1135
  %.sroa.1129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.55.sroa.7.0.copyload.i186, ptr %.sroa.1129.0..sroa_idx.i, align 4, !alias.scope !1135
  %.sroa.1230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %.sroa.014.0.i196, ptr %.sroa.1230.0..sroa_idx.i, align 8, !alias.scope !1135
  %.sroa.1331.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %.sroa.710.sroa.0.0.copyload.i190, ptr %.sroa.1331.0..sroa_idx.i, align 2, !alias.scope !1135
  %.sroa.1432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sroa.0.0.i.i215, ptr %.sroa.1432.0..sroa_idx.i, align 4, !alias.scope !1135
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit

bb.ba:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  %.not.i.i = icmp eq i64 %3, -9223372036854775808
  br i1 %.not.i.i, label %bb.bb, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b15SpanNanosecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.bb:                                            ; preds = %bb.ba
  %i.gf = tail call noundef i8 @_RNvXs1a_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_15SpanNanosecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !1141
  %i.gg = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.gf), !noalias !1142
  store ptr %i.gg, ptr %0, align 8, !alias.scope !1139
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.gh, align 4, !alias.scope !1139
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b15SpanNanosecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.ba
  %.sroa.55.0..sroa_idx.i219 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.55.sroa.0.0.copyload.i220 = load i32, ptr %.sroa.55.0..sroa_idx.i219, align 8, !alias.scope !1140 ; 2 uses
  %.sroa.55.sroa.4.0..sroa.55.0..sroa_idx.sroa_idx.i221 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.55.sroa.4.0.copyload.i222 = load i32, ptr %.sroa.55.sroa.4.0..sroa.55.0..sroa_idx.sroa_idx.i221, align 4, !alias.scope !1140 ; 2 uses
  %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx.i223 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.55.sroa.5.0.copyload.i224 = load i32, ptr %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx.i223, align 8, !alias.scope !1140 ; 2 uses
  %.sroa.55.sroa.6.0..sroa.55.0..sroa_idx.sroa_idx.i225 = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.55.sroa.6.0.copyload.i226 = load i32, ptr %.sroa.55.sroa.6.0..sroa.55.0..sroa_idx.sroa_idx.i225, align 4, !alias.scope !1140 ; 2 uses
  %.sroa.57.0..sroa_idx.i227 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.57.0.copyload.i228 = load i16, ptr %.sroa.57.0..sroa_idx.i227, align 8, !alias.scope !1140
  %.sroa.710.0..sroa_idx.i229 = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.sroa.710.sroa.0.0.copyload.i230 = load i16, ptr %.sroa.710.0..sroa_idx.i229, align 2, !alias.scope !1140 ; 2 uses
  %.sroa.710.sroa.4.0..sroa.710.0..sroa_idx.sroa_idx.i231 = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.710.sroa.4.0.copyload.i232 = load i8, ptr %.sroa.710.sroa.4.0..sroa.710.0..sroa_idx.sroa_idx.i231, align 4, !alias.scope !1140 ; 2 uses
  %.sroa.710.sroa.5.0..sroa.710.0..sroa_idx.sroa_idx.i233 = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.gi = icmp slt i64 %3, 0
  %.sroa.012.0.i234 = tail call i64 @llvm.abs.i64(i64 %3, i1 true)
  %i.gj = icmp ne i64 %3, 0                       ; 3 uses
  %i.gk = and i16 %.sroa.57.0.copyload.i228, -2
  %masksel.i235 = zext i1 %i.gj to i16
  %.sroa.014.0.i236 = or disjoint i16 %i.gk, %masksel.i235
  %.sroa.016.0.copyload17.i237 = load i64, ptr %1, align 8, !alias.scope !1140 ; 2 uses
  %.sroa.518.0..sroa_idx19.i238 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.518.0.copyload20.i239 = load i64, ptr %.sroa.518.0..sroa_idx19.i238, align 8, !alias.scope !1140 ; 2 uses
  %.sroa.6.0..sroa_idx21.i240 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload22.i241 = load i64, ptr %.sroa.6.0..sroa_idx21.i240, align 8, !alias.scope !1140 ; 2 uses
  %.sroa.723.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.723.0.copyload25.i = load i64, ptr %.sroa.723.0..sroa_idx24.i, align 8, !alias.scope !1140 ; 2 uses
  br i1 %i.gi, label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i254, label %bb.bc

bb.bc:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b15SpanNanosecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br i1 %i.gj, label %.thread.i.i250, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gl = icmp eq i16 %.sroa.710.sroa.0.0.copyload.i230, 0
  %i.gm = icmp eq i32 %.sroa.55.sroa.0.0.copyload.i220, 0
  %or.cond.i.i242 = select i1 %i.gl, i1 %i.gm, i1 false
  %i.gn = icmp eq i32 %.sroa.55.sroa.4.0.copyload.i222, 0
  %or.cond5.i.i243 = select i1 %or.cond.i.i242, i1 %i.gn, i1 false
  %i.go = icmp eq i32 %.sroa.55.sroa.5.0.copyload.i224, 0
  %or.cond8.i.i244 = select i1 %or.cond5.i.i243, i1 %i.go, i1 false
  %i.gp = icmp eq i32 %.sroa.55.sroa.6.0.copyload.i226, 0
  %or.cond11.i.i245 = select i1 %or.cond8.i.i244, i1 %i.gp, i1 false
  %i.gq = icmp eq i64 %.sroa.016.0.copyload17.i237, 0
  %or.cond13.i.i246 = select i1 %or.cond11.i.i245, i1 %i.gq, i1 false
  %i.gr = icmp eq i64 %.sroa.518.0.copyload20.i239, 0
  %or.cond16.i.i247 = select i1 %or.cond13.i.i246, i1 %i.gr, i1 false
  %i.gs = icmp eq i64 %.sroa.6.0.copyload22.i241, 0
  %or.cond19.i.i248 = select i1 %or.cond16.i.i247, i1 %i.gs, i1 false
  %i.gt = icmp eq i64 %.sroa.723.0.copyload25.i, 0
  %or.cond4.i.i249 = select i1 %or.cond19.i.i248, i1 %i.gt, i1 false
  br i1 %or.cond4.i.i249, label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i254, label %.thread.i.i250

.thread.i.i250:                                   ; preds = %bb.bd, %bb.bc
  %.sroa.027.0.in.i.i251 = icmp eq i8 %.sroa.710.sroa.4.0.copyload.i232, 0
  %spec.select.i.i252 = zext i1 %i.gj to i8
  %spec.select.i253 = select i1 %.sroa.027.0.in.i.i251, i8 %spec.select.i.i252, i8 %.sroa.710.sroa.4.0.copyload.i232
  br label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i254

_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i254: ; preds = %.thread.i.i250, %bb.bd, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b15SpanNanosecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.0.0.i.i255 = phi i8 [ %spec.select.i253, %.thread.i.i250 ], [ -1, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b15SpanNanosecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 0, %bb.bd ]
  %.sroa.1535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.1535.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.710.sroa.5.0..sroa.710.0..sroa_idx.sroa_idx.i233, i64 3, i1 false), !alias.scope !1142
  store i64 %.sroa.016.0.copyload17.i237, ptr %0, align 8, !alias.scope !1139
  %.sroa.4.0..sroa_idx.i256 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.518.0.copyload20.i239, ptr %.sroa.4.0..sroa_idx.i256, align 8, !alias.scope !1139
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload22.i241, ptr %.sroa.527.0..sroa_idx.i, align 8, !alias.scope !1139
  %.sroa.628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.723.0.copyload25.i, ptr %.sroa.628.0..sroa_idx.i, align 8, !alias.scope !1139
  %.sroa.729.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.012.0.i234, ptr %.sroa.729.0..sroa_idx.i, align 8, !alias.scope !1139
  %.sroa.830.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.55.sroa.0.0.copyload.i220, ptr %.sroa.830.0..sroa_idx.i, align 8, !alias.scope !1139
  %.sroa.9.0..sroa_idx.i257 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.55.sroa.4.0.copyload.i222, ptr %.sroa.9.0..sroa_idx.i257, align 4, !alias.scope !1139
  %.sroa.1031.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.55.sroa.5.0.copyload.i224, ptr %.sroa.1031.0..sroa_idx.i, align 8, !alias.scope !1139
  %.sroa.11.0..sroa_idx.i258 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.55.sroa.6.0.copyload.i226, ptr %.sroa.11.0..sroa_idx.i258, align 4, !alias.scope !1139
  %.sroa.1232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %.sroa.014.0.i236, ptr %.sroa.1232.0..sroa_idx.i, align 8, !alias.scope !1139
  %.sroa.1333.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %.sroa.710.sroa.0.0.copyload.i230, ptr %.sroa.1333.0..sroa_idx.i, align 2, !alias.scope !1139
  %.sroa.1434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sroa.0.0.i.i255, ptr %.sroa.1434.0..sroa_idx.i, align 4, !alias.scope !1139
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit: ; preds = %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i254, %bb.bb, %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i214, %bb.ax, %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i173, %bb.at, %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i153, %bb.ap, %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i126, %bb.al, %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i105, %bb.ag, %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i79, %bb.z, %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i36, %bb.s, %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i17, %bb.l, %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span23from_invariant_duration(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 8), (60, 61)) %0, i8 noundef range(i8 0, 10) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i8 %1, 7
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i8 %1, 5
  br i1 %i.b, label %bb.h, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = sdiv i64 %2, 604800                      ; 2 uses
  %i.d = srem i64 %2, 604800
  %i.e = add nsw i64 %i.c, -1043498
  %or.cond.i = icmp ult i64 %i.e, -2086995
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef i8 @_RNvXsU_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !1177
  %i.g = zext nneg i8 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 8
  %i.i = or disjoint i64 %i.h, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = shl nsw i64 %i.c, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.3.0.insert.insert.i.i = phi i64 [ %i.j, %bb.e ], [ %i.i, %bb.d ] ; 5 uses
  %i.k = trunc i64 %.sroa.3.0.insert.insert.i.i to i1
  br i1 %i.k, label %bb.f, label %.thread

.thread:                                          ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.622.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i, 32 ; 2 uses
  %.sroa.622.0.extract.trunc.i = trunc nuw i64 %.sroa.622.0.extract.shift.i to i32 ; 2 uses
  %i.l = icmp slt i64 %.sroa.3.0.insert.insert.i.i, 0
  %i.m = sub i32 0, %.sroa.622.0.extract.trunc.i
  %.sroa.016.0.i = select i1 %i.l, i32 %i.m, i32 %.sroa.622.0.extract.trunc.i
  %.not746 = icmp eq i64 %.sroa.622.0.extract.shift.i, 0
  %masksel.i = select i1 %.not746, i16 0, i16 128
  %i.n = ashr i64 %.sroa.3.0.insert.insert.i.i, 32
  %.sroa.0.0.i.i = tail call i8 @llvm.scmp.i8.i64(i64 %i.n, i64 0)
  br label %bb.h

bb.f:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.420.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i, 8
  %.sroa.420.0.extract.trunc.i = trunc i64 %.sroa.420.0.extract.shift.i to i8
  %i.o = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.420.0.extract.trunc.i), !noalias !1177
  store ptr %i.o, ptr %0, align 8
  br label %bb.aw

bb.g:                                             ; preds = %bb.b
  %i.p = icmp eq i8 %1, 5
  br i1 %i.p, label %.thread583.a, label %bb.n

bb.h:                                             ; preds = %.thread, %bb.b
  %.sroa.0.0576 = phi i64 [ %i.d, %.thread ], [ %2, %bb.b ] ; 2 uses
  %.sroa.66.0572 = phi i32 [ %.sroa.016.0.i, %.thread ], [ 0, %bb.b ] ; 3 uses
  %.sroa.89.0571 = phi i16 [ %masksel.i, %.thread ], [ 0, %bb.b ]
  %.sroa.107.0570 = phi i8 [ %.sroa.0.0.i.i, %.thread ], [ 0, %bb.b ] ; 2 uses
  %i.q = sdiv i64 %.sroa.0.0576, 86400            ; 2 uses
  %i.r = srem i64 %.sroa.0.0576, 86400            ; 3 uses
  %i.s = add nsw i64 %i.q, -7304485
  %or.cond.i151 = icmp ult i64 %i.s, -14608969
  br i1 %or.cond.i151, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = tail call noundef i8 @_RNvXsW_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !1178
  %i.u = zext nneg i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 8
  %i.w = or disjoint i64 %i.v, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.x = shl nsw i64 %i.q, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.j, %bb.i
  %.sroa.3.0.insert.insert.i.i152 = phi i64 [ %i.x, %bb.j ], [ %i.w, %bb.i ] ; 5 uses
  %i.y = trunc i64 %.sroa.3.0.insert.insert.i.i152 to i1
  br i1 %i.y, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.622.0.extract.shift.i153 = lshr i64 %.sroa.3.0.insert.insert.i.i152, 32
  %.sroa.622.0.extract.trunc.i154 = trunc nuw i64 %.sroa.622.0.extract.shift.i153 to i32 ; 2 uses
  %i.z = icmp slt i64 %.sroa.3.0.insert.insert.i.i152, 0
  %4 = sub i32 0, %.sroa.622.0.extract.trunc.i154
  %.sroa.016.0.i164 = select i1 %i.z, i32 %4, i32 %.sroa.622.0.extract.trunc.i154 ; 4 uses
  %i.aa = icmp eq i32 %.sroa.016.0.i164, 0        ; 2 uses
  %masksel.i165 = select i1 %i.aa, i16 0, i16 64
  %.sroa.018.0.i166 = or disjoint i16 %masksel.i165, %.sroa.89.0571 ; 3 uses
  %i.ab = ashr i64 %.sroa.3.0.insert.insert.i.i152, 32 ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %.thread583.a, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = icmp ne i64 %i.ab, 0                    ; 2 uses
  %.not747 = xor i1 %i.ad, true
  %i.ae = icmp eq i32 %.sroa.66.0572, 0
  %5 = select i1 %.not747, i1 %i.ae, i1 false
  %or.cond748 = select i1 %5, i1 %i.aa, i1 false
  br i1 %or.cond748, label %.thread583.a, label %.thread.i.i186

.thread.i.i186:                                   ; preds = %bb.l
  %.sroa.027.0.in.i.i187 = icmp eq i8 %.sroa.107.0570, 0
  %spec.select.i.i188 = zext i1 %i.ad to i8
  %spec.select.i189 = select i1 %.sroa.027.0.in.i.i187, i8 %spec.select.i.i188, i8 %.sroa.107.0570
  br label %.thread583.a

bb.m:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.420.0.extract.shift.i194 = lshr i64 %.sroa.3.0.insert.insert.i.i152, 8
  %.sroa.420.0.extract.trunc.i195 = trunc i64 %.sroa.420.0.extract.shift.i194 to i8
  %i.af = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.420.0.extract.trunc.i195), !noalias !1178
  store ptr %i.af, ptr %0, align 8
  br label %bb.aw

bb.n:                                             ; preds = %bb.g
  %i.ag = icmp samesign ugt i8 %1, 3
  br i1 %i.ag, label %bb.v, label %bb.u

.thread583.a:                                     ; preds = %.thread.i.i186, %bb.k, %bb.l, %bb.g
  %.sroa.0.1599 = phi i64 [ %2, %bb.g ], [ %i.r, %bb.l ], [ %i.r, %bb.k ], [ %i.r, %.thread.i.i186 ] ; 2 uses
  %.sroa.66.1595 = phi i32 [ 0, %bb.g ], [ %.sroa.66.0572, %.thread.i.i186 ], [ %.sroa.66.0572, %bb.k ], [ 0, %bb.l ] ; 3 uses
  %.sroa.89.1594 = phi i16 [ 0, %bb.g ], [ %.sroa.018.0.i166, %bb.l ], [ %.sroa.018.0.i166, %bb.k ], [ %.sroa.018.0.i166, %.thread.i.i186 ]
  %.sroa.107.1593 = phi i8 [ 0, %bb.g ], [ %spec.select.i189, %.thread.i.i186 ], [ -1, %bb.k ], [ 0, %bb.l ] ; 2 uses
  %.sroa.74.sroa.0.1591 = phi i32 [ 0, %bb.g ], [ %.sroa.016.0.i164, %bb.l ], [ %.sroa.016.0.i164, %bb.k ], [ %.sroa.016.0.i164, %.thread.i.i186 ] ; 3 uses
  %i.ah = sdiv i64 %.sroa.0.1599, 3600            ; 2 uses
  %i.ai = srem i64 %.sroa.0.1599, 3600
  %i.aj = add nsw i64 %i.ah, -175307617
  %or.cond.i196 = icmp ult i64 %i.aj, -350615233
  br i1 %or.cond.i196, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread583.a
  %i.ak = tail call noundef i8 @_RNvXsY_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !1179
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 8
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.p:                                             ; preds = %.thread583.a
  %i.ao = shl nsw i64 %i.ah, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.p, %bb.o
  %.sroa.3.0.insert.insert.i.i197 = phi i64 [ %i.ao, %bb.p ], [ %i.an, %bb.o ] ; 5 uses
  %i.ap = trunc i64 %.sroa.3.0.insert.insert.i.i197 to i1
  br i1 %i.ap, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.619.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i197, 32
  %.sroa.619.0.extract.trunc.i = trunc nuw i64 %.sroa.619.0.extract.shift.i to i32 ; 2 uses
  %i.aq = icmp slt i64 %.sroa.3.0.insert.insert.i.i197, 0
  %6 = sub i32 0, %.sroa.619.0.extract.trunc.i
  %.sroa.013.0.i = select i1 %i.aq, i32 %6, i32 %.sroa.619.0.extract.trunc.i ; 2 uses
  %i.ar = icmp eq i32 %.sroa.013.0.i, 0           ; 2 uses
  %masksel.i200 = select i1 %i.ar, i16 0, i16 32
  %i.as = ashr i64 %.sroa.3.0.insert.insert.i.i197, 32 ; 2 uses
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %.thread607, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = icmp ne i64 %i.as, 0                    ; 2 uses
  br i1 %i.au, label %.thread.i.i210, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = icmp eq i32 %.sroa.66.1595, 0
  %i.aw = icmp eq i32 %.sroa.74.sroa.0.1591, 0
  %or.cond8.i.i203 = select i1 %i.av, i1 %i.aw, i1 false
  %or.cond11.i.i204 = select i1 %or.cond8.i.i203, i1 %i.ar, i1 false
  br i1 %or.cond11.i.i204, label %.thread607, label %.thread.i.i210

.thread.i.i210:                                   ; preds = %bb.s, %bb.r
  %.sroa.027.0.in.i.i211 = icmp eq i8 %.sroa.107.1593, 0
  %spec.select.i.i212 = zext i1 %i.au to i8
  %spec.select.i213 = select i1 %.sroa.027.0.in.i.i211, i8 %spec.select.i.i212, i8 %.sroa.107.1593
  br label %.thread607

bb.t:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.417.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i197, 8
  %.sroa.417.0.extract.trunc.i = trunc i64 %.sroa.417.0.extract.shift.i to i8
  %i.ax = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.417.0.extract.trunc.i), !noalias !1179
  store ptr %i.ax, ptr %0, align 8
  br label %bb.aw

.thread607:                                       ; preds = %bb.q, %bb.s, %.thread.i.i210
  %.sroa.66.1596 = phi i32 [ %.sroa.66.1595, %.thread.i.i210 ], [ %.sroa.66.1595, %bb.q ], [ 0, %bb.s ]
  %.sroa.74.sroa.0.1592 = phi i32 [ %.sroa.74.sroa.0.1591, %.thread.i.i210 ], [ %.sroa.74.sroa.0.1591, %bb.q ], [ 0, %bb.s ]
  %.sroa.0.0.i.i215 = phi i8 [ %spec.select.i213, %.thread.i.i210 ], [ -1, %bb.q ], [ 0, %bb.s ]
  %i.ay = or i16 %masksel.i200, %.sroa.89.1594
  br label %bb.v

bb.u:                                             ; preds = %bb.n
  %i.az = icmp eq i8 %1, 3
  br i1 %i.az, label %bb.aa, label %bb.z

bb.v:                                             ; preds = %.thread607, %bb.n
  %.sroa.0.2623 = phi i64 [ %i.ai, %.thread607 ], [ %2, %bb.n ] ; 4 uses
  %.sroa.66.2621 = phi i32 [ %.sroa.66.1596, %.thread607 ], [ 0, %bb.n ] ; 3 uses
  %.sroa.89.2620 = phi i16 [ %i.ay, %.thread607 ], [ 0, %bb.n ]
  %.sroa.107.2619 = phi i8 [ %.sroa.0.0.i.i215, %.thread607 ], [ 0, %bb.n ] ; 2 uses
  %.sroa.74.sroa.0.2617 = phi i32 [ %.sroa.74.sroa.0.1592, %.thread607 ], [ 0, %bb.n ] ; 3 uses
  %.sroa.74.sroa.17.2615 = phi i32 [ %.sroa.013.0.i, %.thread607 ], [ 0, %bb.n ] ; 3 uses
  %i.ba = sdiv i64 %.sroa.0.2623, 60              ; 2 uses
  %i.bb = srem i64 %.sroa.0.2623, 60
  %i.bc = add nsw i64 %i.ba, -10518456961
  %or.cond.i219 = icmp ult i64 %i.bc, -21036913921
  br i1 %or.cond.i219, label %bb.y, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.v
  %i.bd = icmp slt i64 %.sroa.0.2623, -59
  %.sroa.011.0.i = tail call i64 @llvm.abs.i64(i64 %i.ba, i1 true)
  %i.be = add i64 %.sroa.0.2623, -60
  %i.bf = icmp ult i64 %i.be, -119                ; 3 uses
  %masksel.i220 = select i1 %i.bf, i16 16, i16 0
  br i1 %i.bd, label %.thread631, label %bb.w

bb.w:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br i1 %i.bf, label %.thread.i.i230, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = icmp eq i32 %.sroa.66.2621, 0
  %i.bh = icmp eq i32 %.sroa.74.sroa.0.2617, 0
  %or.cond8.i.i224 = select i1 %i.bg, i1 %i.bh, i1 false
  %i.bi = icmp eq i32 %.sroa.74.sroa.17.2615, 0
  %or.cond11.i.i225 = select i1 %or.cond8.i.i224, i1 %i.bi, i1 false
  br i1 %or.cond11.i.i225, label %.thread631, label %.thread.i.i230

.thread.i.i230:                                   ; preds = %bb.x, %bb.w
  %.sroa.027.0.in.i.i231 = icmp eq i8 %.sroa.107.2619, 0
  %spec.select.i.i232 = zext i1 %i.bf to i8
  %spec.select.i233 = select i1 %.sroa.027.0.in.i.i231, i8 %spec.select.i.i232, i8 %.sroa.107.2619
  br label %.thread631

bb.y:                                             ; preds = %bb.v
  %i.bj = tail call noundef i8 @_RNvXs10_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !1180
  %i.bk = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.bj), !noalias !1181
  store ptr %i.bk, ptr %0, align 8
  br label %bb.aw

.thread631:                                       ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %bb.x, %.thread.i.i230
  %.sroa.66.2622 = phi i32 [ %.sroa.66.2621, %.thread.i.i230 ], [ %.sroa.66.2621, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 0, %bb.x ]
  %.sroa.74.sroa.0.2618 = phi i32 [ %.sroa.74.sroa.0.2617, %.thread.i.i230 ], [ %.sroa.74.sroa.0.2617, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 0, %bb.x ]
  %.sroa.74.sroa.17.2616 = phi i32 [ %.sroa.74.sroa.17.2615, %.thread.i.i230 ], [ %.sroa.74.sroa.17.2615, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 0, %bb.x ]
  %.sroa.0.0.i.i235 = phi i8 [ %spec.select.i233, %.thread.i.i230 ], [ -1, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 0, %bb.x ]
  %i.bl = or i16 %masksel.i220, %.sroa.89.2620
  br label %bb.aa

bb.z:                                             ; preds = %bb.u
  %i.bm = icmp samesign ugt i8 %1, 1
  br i1 %i.bm, label %bb.af, label %bb.ae

bb.aa:                                            ; preds = %.thread631, %bb.u
  %.sroa.0.3649 = phi i64 [ %i.bb, %.thread631 ], [ %2, %bb.u ] ; 4 uses
  %.sroa.0460.3647 = phi i64 [ %.sroa.011.0.i, %.thread631 ], [ 0, %bb.u ] ; 3 uses
  %.sroa.66.3645 = phi i32 [ %.sroa.66.2622, %.thread631 ], [ 0, %bb.u ] ; 3 uses
  %.sroa.89.3644 = phi i16 [ %i.bl, %.thread631 ], [ 0, %bb.u ]
  %.sroa.107.3643 = phi i8 [ %.sroa.0.0.i.i235, %.thread631 ], [ 0, %bb.u ] ; 2 uses
  %.sroa.74.sroa.0.3641 = phi i32 [ %.sroa.74.sroa.0.2618, %.thread631 ], [ 0, %bb.u ] ; 3 uses
  %.sroa.74.sroa.17.3639 = phi i32 [ %.sroa.74.sroa.17.2616, %.thread631 ], [ 0, %bb.u ] ; 3 uses
  %i.bn = add i64 %.sroa.0.3649, -631107417601
  %or.cond.i237 = icmp ult i64 %i.bn, -1262214835201
  br i1 %or.cond.i237, label %bb.ad, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.aa
  %i.bo = icmp slt i64 %.sroa.0.3649, 0
  %.sroa.013.0.i246 = tail call i64 @llvm.abs.i64(i64 %.sroa.0.3649, i1 true)
  %i.bp = icmp ne i64 %.sroa.0.3649, 0            ; 3 uses
  %masksel.i247 = select i1 %i.bp, i16 8, i16 0
  br i1 %i.bo, label %.thread657, label %bb.ab

bb.ab:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br i1 %i.bp, label %.thread.i.i257, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bq = icmp eq i32 %.sroa.66.3645, 0
  %i.br = icmp eq i32 %.sroa.74.sroa.0.3641, 0
  %or.cond8.i.i251 = select i1 %i.bq, i1 %i.br, i1 false
  %i.bs = icmp eq i32 %.sroa.74.sroa.17.3639, 0
  %or.cond11.i.i252 = select i1 %or.cond8.i.i251, i1 %i.bs, i1 false
  %i.bt = icmp eq i64 %.sroa.0460.3647, 0
  %or.cond16.i.i253 = select i1 %or.cond11.i.i252, i1 %i.bt, i1 false
  br i1 %or.cond16.i.i253, label %.thread657, label %.thread.i.i257

.thread.i.i257:                                   ; preds = %bb.ac, %bb.ab
  %.sroa.027.0.in.i.i258 = icmp eq i8 %.sroa.107.3643, 0
  %spec.select.i.i259 = zext i1 %i.bp to i8
  %spec.select.i260 = select i1 %.sroa.027.0.in.i.i258, i8 %spec.select.i.i259, i8 %.sroa.107.3643
  br label %.thread657

bb.ad:                                            ; preds = %bb.aa
  %i.bu = tail call noundef i8 @_RNvXs12_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !1182
  %i.bv = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.bu), !noalias !1183
  store ptr %i.bv, ptr %0, align 8
  br label %bb.aw

.thread657:                                       ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %bb.ac, %.thread.i.i257
  %.sroa.0460.3648 = phi i64 [ %.sroa.0460.3647, %.thread.i.i257 ], [ %.sroa.0460.3647, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 0, %bb.ac ]
  %.sroa.66.3646 = phi i32 [ %.sroa.66.3645, %.thread.i.i257 ], [ %.sroa.66.3645, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 0, %bb.ac ]
  %.sroa.74.sroa.0.3642 = phi i32 [ %.sroa.74.sroa.0.3641, %.thread.i.i257 ], [ %.sroa.74.sroa.0.3641, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 0, %bb.ac ]
  %.sroa.74.sroa.17.3640 = phi i32 [ %.sroa.74.sroa.17.3639, %.thread.i.i257 ], [ %.sroa.74.sroa.17.3639, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 0, %bb.ac ]
  %.sroa.0.0.i.i262 = phi i8 [ %spec.select.i260, %.thread.i.i257 ], [ -1, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 0, %bb.ac ]
  %i.bw = or i16 %.sroa.89.3644, %masksel.i247
  br label %bb.af

bb.ae:                                            ; preds = %bb.z
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %bb.aq, label %bb.ak

bb.af:                                            ; preds = %.thread657, %bb.z
  %.sroa.0.4678 = phi i64 [ 0, %.thread657 ], [ %2, %bb.z ]
  %.sroa.0460.4676 = phi i64 [ %.sroa.0460.3648, %.thread657 ], [ 0, %bb.z ] ; 3 uses
  %.sroa.17461.4674 = phi i64 [ %.sroa.013.0.i246, %.thread657 ], [ 0, %bb.z ] ; 3 uses
  %.sroa.66.4672 = phi i32 [ %.sroa.66.3646, %.thread657 ], [ 0, %bb.z ] ; 3 uses
  %.sroa.89.4671 = phi i16 [ %i.bw, %.thread657 ], [ 0, %bb.z ]
  %.sroa.107.4670 = phi i8 [ %.sroa.0.0.i.i262, %.thread657 ], [ 0, %bb.z ] ; 2 uses
  %.sroa.74.sroa.0.4668 = phi i32 [ %.sroa.74.sroa.0.3642, %.thread657 ], [ 0, %bb.z ] ; 3 uses
  %.sroa.74.sroa.17.4666 = phi i32 [ %.sroa.74.sroa.17.3640, %.thread657 ], [ 0, %bb.z ] ; 3 uses
  %i.bx = sext i64 %.sroa.0.4678 to i128
  %i.by = mul nsw i128 %i.bx, 1000
  %i.bz = sdiv i32 %3, 1000000
  %i.ca = sext i32 %i.bz to i128
  %i.cb = add nsw i128 %i.by, %i.ca               ; 2 uses
  %i.cc = srem i32 %3, 1000000
  %i.cd = add nsw i128 %i.cb, -9223372036854775808
  %or.cond = icmp ult i128 %i.cd, -18446744073709551616
  br i1 %or.cond, label %bb.az, label %bb.ag, !prof !1184

bb.ag:                                            ; preds = %bb.af
  %i.ce = trunc nsw i128 %i.cb to i64             ; 4 uses
  %i.cf = add i64 %i.ce, -631107417600001
  %or.cond.i265 = icmp ult i64 %i.cf, -1262214835200001
  br i1 %or.cond.i265, label %bb.aj, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b16SpanMillisecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b16SpanMillisecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.ag
  %i.cg = icmp slt i64 %i.ce, 0
  %.sroa.012.0.i = tail call i64 @llvm.abs.i64(i64 %i.ce, i1 true)
  %i.ch = icmp ne i64 %i.ce, 0                    ; 3 uses
  %masksel.i266 = select i1 %i.ch, i16 4, i16 0
  br i1 %i.cg, label %.thread687, label %bb.ah

bb.ah:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b16SpanMillisecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br i1 %i.ch, label %.thread.i.i275, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ci = icmp eq i32 %.sroa.66.4672, 0
  %i.cj = icmp eq i32 %.sroa.74.sroa.0.4668, 0
  %or.cond8.i.i269 = select i1 %i.ci, i1 %i.cj, i1 false
  %i.ck = icmp eq i32 %.sroa.74.sroa.17.4666, 0
  %or.cond11.i.i270 = select i1 %or.cond8.i.i269, i1 %i.ck, i1 false
  %i.cl = icmp eq i64 %.sroa.0460.4676, 0
  %or.cond13.i.i271 = select i1 %or.cond11.i.i270, i1 %i.cl, i1 false
  %i.cm = icmp eq i64 %.sroa.17461.4674, 0
  %or.cond19.i.i272 = select i1 %or.cond13.i.i271, i1 %i.cm, i1 false
  br i1 %or.cond19.i.i272, label %.thread687, label %.thread.i.i275

.thread.i.i275:                                   ; preds = %bb.ai, %bb.ah
  %.sroa.027.0.in.i.i276 = icmp eq i8 %.sroa.107.4670, 0
  %spec.select.i.i277 = zext i1 %i.ch to i8
  %spec.select.i278 = select i1 %.sroa.027.0.in.i.i276, i8 %spec.select.i.i277, i8 %.sroa.107.4670
  br label %.thread687

bb.aj:                                            ; preds = %bb.ag
  %i.cn = tail call noundef i8 @_RNvXs14_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_16SpanMillisecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21, !noalias !1185
  %i.co = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %i.cn), !noalias !1186
  store ptr %i.co, ptr %0, align 8
  br label %bb.aw

.thread687:                                       ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b16SpanMillisecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %bb.ai, %.thread.i.i275
  %.sroa.0460.4677 = phi i64 [ %.sroa.0460.4676, %.thread.i.i275 ], [ %.sroa.0460.4676, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b16SpanMillisecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 0, %bb.ai ]
  %.sroa.17461.4675 = phi i64 [ %.sroa.17461.4674, %.thread.i.i275 ], [ %.sroa.17461.4674, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b16SpanMillisecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 0, %bb.ai ]
  %.sroa.66.4673 = phi i32 [ %.sroa.66.4672, %.thread.i.i275 ], [ %.sroa.66.4672, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b16SpanMillisecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 0, %bb.ai ]
  %.sroa.74.sroa.0.4669 = phi i32 [ %.sroa.74.sroa.0.4668, %.thread.i.i275 ], [ %.sroa.74.sroa.0.4668, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b16SpanMillisecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 0, %bb.ai ]
  %.sroa.74.sroa.17.4667 = phi i32 [ %.sroa.74.sroa.17.4666, %.thread.i.i275 ], [ %.sroa.74.sroa.17.4666, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b16SpanMillisecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 0, %bb.ai ]
  %.sroa.0.0.i.i280 = phi i8 [ %spec.select.i278, %.thread.i.i275 ], [ -1, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b16SpanMillisecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 0, %bb.ai ]
  %i.cp = or i16 %masksel.i266, %.sroa.89.4671
  br label %bb.ak

bb.ak:                                            ; preds = %.thread687, %bb.ae
  %.sroa.0.5714 = phi i64 [ 0, %.thread687 ], [ %2, %bb.ae ]
  %.sroa.16.5713 = phi i32 [ %i.cc, %.thread687 ], [ %3, %bb.ae ] ; 2 uses
  %.sroa.0460.5711 = phi i64 [ %.sroa.0460.4677, %.thread687 ], [ 0, %bb.ae ] ; 3 uses
  %.sroa.17461.5709 = phi i64 [ %.sroa.17461.4675, %.thread687 ], [ 0, %bb.ae ] ; 3 uses
  %.sroa.33.5707 = phi i64 [ %.sroa.012.0.i, %.thread687 ], [ 0, %bb.ae ] ; 3 uses
  %.sroa.66.5705 = phi i32 [ %.sroa.66.4673, %.thread687 ], [ 0, %bb.ae ] ; 3 uses
  %.sroa.89.5704 = phi i16 [ %i.cp, %.thread687 ], [ 0, %bb.ae ]
  %.sroa.107.5703 = phi i8 [ %.sroa.0.0.i.i280, %.thread687 ], [ 0, %bb.ae ] ; 2 uses
  %.sroa.74.sroa.0.5701 = phi i32 [ %.sroa.74.sroa.0.4669, %.thread687 ], [ 0, %bb.ae ] ; 3 uses
  %.sroa.74.sroa.17.5699 = phi i32 [ %.sroa.74.sroa.17.4667, %.thread687 ], [ 0, %bb.ae ] ; 3 uses
  %i.cq = sext i64 %.sroa.0.5714 to i128
  %i.cr = mul nsw i128 %i.cq, 1000000
  %i.cs = sdiv i32 %.sroa.16.5713, 1000
  %i.ct = sext i32 %i.cs to i128
  %i.cu = add nsw i128 %i.cr, %i.ct               ; 2 uses
  %i.cv = srem i32 %.sroa.16.5713, 1000
  %i.cw = add nsw i128 %i.cu, -9223372036854775808
  %or.cond1 = icmp ult i128 %i.cw, -18446744073709551616
  br i1 %or.cond1, label %bb.ay, label %bb.al, !prof !1184

bb.al:                                            ; preds = %bb.ak
  %i.cx = trunc nsw i128 %i.cu to i64             ; 4 uses
  %i.cy = add i64 %i.cx, -631107417600000001
  %or.cond.i282 = icmp ult i64 %i.cy, -1262214835200000001
end_hunk_4
