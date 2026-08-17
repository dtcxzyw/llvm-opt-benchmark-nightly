inline.NumInlined: 30
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/csv-core-0.1.12/src/writer.rs\00", align 1
@_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr10memchr_raw2FN = external local_unnamed_addr global { { { ptr } } }
@1 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"b\00\00\00\00\00\00\00:\00\00\00\12\00\00\00" }>, align 8
@3 = private unnamed_addr constant [37 x i8] c"assertion failed: !self.state.quoting", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"b\00\00\00\00\00\00\00y\01\00\00\0D\00\00\00" }>, align 8
@5 = private unnamed_addr constant [2 x i8] c"\0D\0A", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"b\00\00\00\00\00\00\00\8F\01\00\00\12\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"b\00\00\00\00\00\00\00\C1\01\00\00\12\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"b\00\00\00\00\00\00\00\EE\01\00\00\22\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"b\00\00\00\00\00\00\00\FF\00\00\00\0D\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"b\00\00\00\00\00\00\00h\02\00\00\1F\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"b\00\00\00\00\00\00\00e\02\00\00\10\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"b\00\00\00\00\00\00\00v\02\00\00\1F\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"b\00\00\00\00\00\00\007\02\00\00\1F\00\00\00" }>, align 8
@14 = private unnamed_addr constant [6 x i8] c"Writer", align 1
@15 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsc_NtCs49jDiRqUAct_8csv_core6writerNtB5_11WriterStateNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@16 = private unnamed_addr constant [5 x i8] c"state", align 1
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsU_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_5Debug3fmt }>, align 8
@18 = private unnamed_addr constant [9 x i8] c"delimiter", align 1
@19 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs4_Cs49jDiRqUAct_8csv_coreNtB5_10TerminatorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@20 = private unnamed_addr constant [4 x i8] c"term", align 1
@21 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs8_Cs49jDiRqUAct_8csv_coreNtB5_10QuoteStyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@22 = private unnamed_addr constant [5 x i8] c"style", align 1
@23 = private unnamed_addr constant [5 x i8] c"quote", align 1
@24 = private unnamed_addr constant [6 x i8] c"escape", align 1
@25 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsf_NtCs4NRVxsYgnAr_4core3fmtbNtB5_5Debug3fmt }>, align 8
@26 = private unnamed_addr constant [12 x i8] c"double_quote", align 1
@27 = private unnamed_addr constant [4 x i8] c"CRLF", align 1
@28 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_5Debug3fmtCs49jDiRqUAct_8csv_core }>, align 8
@29 = private unnamed_addr constant [3 x i8] c"Any", align 1
@30 = private unnamed_addr constant [15 x i8] c"__Nonexhaustive", align 1
@31 = private unnamed_addr constant [6 x i8] c"Always", align 1
@32 = private unnamed_addr constant [9 x i8] c"Necessary", align 1
@33 = private unnamed_addr constant [10 x i8] c"NonNumeric", align 1
@34 = private unnamed_addr constant [5 x i8] c"Never", align 1
@35 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRyNtB6_5Debug3fmtCs49jDiRqUAct_8csv_core }>, align 8
@36 = private unnamed_addr constant [11 x i8] c"WriterState", align 1
@37 = private unnamed_addr constant [8 x i8] c"in_field", align 1
@38 = private unnamed_addr constant [7 x i8] c"quoting", align 1
@39 = private unnamed_addr constant [12 x i8] c"record_bytes", align 1
@switch.table._RNvXs8_Cs49jDiRqUAct_8csv_coreNtB5_10QuoteStyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt = private unnamed_addr constant [5 x i8] c"\06\09\0A\05\0F", align 8
@switch.table._RNvXs8_Cs49jDiRqUAct_8csv_coreNtB5_10QuoteStyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.4 = private unnamed_addr constant [5 x ptr] [ptr @31, ptr @32, ptr @33, ptr @34, ptr @30], align 8

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs49jDiRqUAct_8csv_core6writerNtB2_13WriterBuilder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([288 x i8]) align 8 captures(none) dereferenceable(288) initializes((0, 281)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(288) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull readonly align 8 dereferenceable(288) %1, i64 256, i1 false), !alias.scope !8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, i64 16, i1 false), !alias.scope !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 274
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.e = load i8, ptr %i.d, align 8, !alias.scope !6, !noalias !3, !noundef !9 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 273
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 %i.e, ptr %i.h, align 8, !alias.scope !3, !noalias !6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.j = load <8 x i8>, ptr %i.f, align 8, !alias.scope !6, !noalias !3 ; 5 uses
  %i.k = load i8, ptr %i.c, align 2, !range !10, !alias.scope !6, !noalias !3, !noundef !9
  %i.l = load i8, ptr %i.g, align 1, !alias.scope !6, !noalias !3
  %i.m = load i8, ptr %i.f, align 8, !range !11, !alias.scope !6, !noalias !3, !noundef !9
  store <8 x i8> %i.j, ptr %i.i, align 8, !alias.scope !3, !noalias !6
  %i.n = extractelement <8 x i8> %i.j, i64 6
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  store i8 1, ptr %i.p, align 1
  %i.q = extractelement <8 x i8> %i.j, i64 7
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  store i8 1, ptr %i.s, align 1
  %i.t = bitcast <8 x i8> %i.j to <64 x i1>
  %i.u = extractelement <64 x i1> %i.t, i64 32
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  switch i8 %i.k, label %default.unreachable1 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
  ], !prof !12

bb.c:                                             ; preds = %bb.a
  %i.v = zext i8 %i.e to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  store i8 1, ptr %i.w, align 1
  br label %bb.b

default.unreachable1:                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e, %bb.e, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 1, ptr %i.x, align 1
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.y = extractelement <8 x i8> %i.j, i64 3      ; 2 uses
  switch i8 %i.y, label %bb.h [
    i8 10, label %bb.d
    i8 13, label %bb.d
  ]

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

bb.g:                                             ; preds = %bb.h, %bb.d
  %.sink2 = phi i64 [ %i.aa, %bb.h ], [ 10, %bb.d ]
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink2
  store i8 1, ptr %2, align 1
  %i.z = trunc nuw i8 %i.m to i1
  br i1 %i.z, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.aa = zext i8 %i.y to i64
  br label %bb.g

bb.i:                                             ; preds = %bb.j, %bb.g
  ret void

bb.j:                                             ; preds = %bb.g
  %i.ab = zext i8 %i.l to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  store i8 1, ptr %i.ac, align 1
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define { i1, i64 } @_RNvMs2_NtCs49jDiRqUAct_8csv_core6writerNtB5_6Writer10terminator(ptr noalias nofree noundef align 8 captures(none) dereferenceable(288) %0, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [2 x i8], align 1                 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !9 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 265
  %i.h = load i8, ptr %i.g, align 1, !range !11
  %i.i = trunc nuw i8 %i.h to i1                  ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 279
  %i.k = load i8, ptr %i.j, align 1, !noundef !9  ; 2 uses
  store i8 %i.k, ptr %i.c, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.k, ptr %i.l, align 1
  %i.m = icmp samesign ult i64 %2, 2
  br i1 %i.m, label %_RNvMs2_NtCs49jDiRqUAct_8csv_core6writerNtB5_6Writer5write.exit.thread, label %.thread

_RNvMs2_NtCs49jDiRqUAct_8csv_core6writerNtB5_6Writer5write.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit.thread

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #12
  unreachable

.thread:                                          ; preds = %bb.c
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs49jDiRqUAct_8csv_core(ptr noalias noundef nonnull %1, i64 noundef 2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.n = add nsw i64 %2, -2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i64 2, ptr %i.d, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.p = add i64 %i.e, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 265
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.h, %bb.e
  %.sroa.018.1 = phi i64 [ 1, %bb.h ], [ 0, %bb.e ], [ 2, %.thread ] ; 3 uses
  %.sroa.11.1 = phi i64 [ %i.w, %bb.h ], [ %2, %bb.e ], [ %i.n, %.thread ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.x, %bb.h ], [ %1, %bb.e ], [ %i.o, %.thread ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 274
  %i.s = load i8, ptr %i.r, align 2, !range !10, !noundef !9
  switch i8 %i.s, label %default.unreachable41 [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
  ], !prof !12

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 279
  %i.u = load i8, ptr %i.t, align 1, !noundef !9
  store i8 %i.u, ptr %i.b, align 1
  %i.v = icmp eq i64 %2, 0
  br i1 %i.v, label %_RNvMs2_NtCs49jDiRqUAct_8csv_core6writerNtB5_6Writer5write.exit31.thread, label %bb.h

_RNvMs2_NtCs49jDiRqUAct_8csv_core6writerNtB5_6Writer5write.exit31.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit.thread

bb.h:                                             ; preds = %bb.g
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs49jDiRqUAct_8csv_core(ptr noalias noundef nonnull %1, i64 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = add nsw i64 %2, -1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i64 %i.p, ptr %i.d, align 8
  store i8 0, ptr %i.q, align 1
  br label %bb.f

default.unreachable41:                            ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.y = icmp samesign ult i64 %.sroa.11.1, 2
  br i1 %i.y, label %_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit.thread, label %_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit.thread49

_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit.thread49: ; preds = %bb.i
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs49jDiRqUAct_8csv_core(ptr noalias noundef nonnull %.sroa.0.1, i64 noundef 2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 275
  %i.aa = load i8, ptr %i.z, align 1, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.aa, ptr %i.a, align 1
  %i.ab = icmp eq i64 %.sroa.11.1, 0
  br i1 %i.ab, label %_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit.thread56, label %_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit

_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit.thread56: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit.thread

bb.k:                                             ; preds = %bb.f
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #12
  unreachable

_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit: ; preds = %bb.j
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs49jDiRqUAct_8csv_core(ptr noalias noundef nonnull %.sroa.0.1, i64 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit, %_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit.thread49
  %.pn55 = phi { i1, i64 } [ { i1 false, i64 2 }, %_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit.thread49 ], [ { i1 false, i64 1 }, %_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit ]
  %.sroa.3.0.i32.pn54 = phi i64 [ 2, %_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit.thread49 ], [ 1, %_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit ]
  %i.ac = add nuw nsw i64 %.sroa.3.0.i32.pn54, %.sroa.018.1
  store i64 0, ptr %i.d, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 0, ptr %i.ad, align 8
  br label %_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit.thread

_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit.thread: ; preds = %bb.i, %_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit.thread56, %_RNvMs2_NtCs49jDiRqUAct_8csv_core6writerNtB5_6Writer5write.exit31.thread, %_RNvMs2_NtCs49jDiRqUAct_8csv_core6writerNtB5_6Writer5write.exit.thread, %bb.l
  %.sroa.6.0 = phi i64 [ %i.ac, %bb.l ], [ 0, %_RNvMs2_NtCs49jDiRqUAct_8csv_core6writerNtB5_6Writer5write.exit31.thread ], [ 0, %_RNvMs2_NtCs49jDiRqUAct_8csv_core6writerNtB5_6Writer5write.exit.thread ], [ %.sroa.018.1, %_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit.thread56 ], [ %.sroa.018.1, %bb.i ]
  %.pn29 = phi { i1, i64 } [ %.pn55, %bb.l ], [ { i1 true, i64 0 }, %_RNvMs2_NtCs49jDiRqUAct_8csv_core6writerNtB5_6Writer5write.exit31.thread ], [ { i1 true, i64 0 }, %_RNvMs2_NtCs49jDiRqUAct_8csv_core6writerNtB5_6Writer5write.exit.thread ], [ { i1 true, i64 0 }, %_RNvNtCs49jDiRqUAct_8csv_core6writer17write_pessimistic.exit.thread56 ], [ { i1 true, i64 0 }, %bb.i ]
  %i.ae = insertvalue { i1, i64 } %.pn29, i64 %.sroa.6.0, 1
  ret { i1, i64 } %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMs2_NtCs49jDiRqUAct_8csv_core6writerNtB5_6Writer3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([288 x i8]) align 8 captures(none) dereferenceable(288) initializes((0, 266), (272, 273), (274, 281)) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 278
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(266) %0, i8 0, i64 266, i1 false)
  store i8 44, ptr %i.a, align 2, !alias.scope !14, !noalias !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 274
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 279
  store i8 34, ptr %i.c, align 1, !alias.scope !14, !noalias !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 92, ptr %i.d, align 8, !alias.scope !14, !noalias !21
  store <4 x i8> <i8 1, i8 10, i8 1, i8 1>, ptr %i.b, align 2, !alias.scope !14, !noalias !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 0, ptr %i.e, align 8, !alias.scope !14, !noalias !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.f, align 4, !alias.scope !24, !noalias !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 1, ptr %i.g, align 2, !alias.scope !24, !noalias !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 1, ptr %i.h, align 1, !alias.scope !24, !noalias !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 1, ptr %i.i, align 2, !alias.scope !24, !noalias !25
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCs49jDiRqUAct_8csv_core6writerNtB5_6Writer5field(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(288) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !11, !noundef !9
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 265
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !11
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 277
  %i.h = load i8, ptr %i.g, align 1, !range !31, !alias.scope !26, !noalias !29, !noundef !9
  switch i8 %i.h, label %default.unreachable [
    i8 0, label %_RNvMs2_NtCs49jDiRqUAct_8csv_core6writerNtB5_6Writer12should_quote.exit.thread
    i8 1, label %bb.c
    i8 2, label %_RNvMs2_NtCs49jDiRqUAct_8csv_core6writerNtB5_6Writer12should_quote.exit
    i8 3, label %_RNvMs2_NtCs49jDiRqUAct_8csv_core6writerNtB5_6Writer12should_quote.exit.thread17
    i8 4, label %bb.l
  ], !prof !32

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
end_hunk_0
