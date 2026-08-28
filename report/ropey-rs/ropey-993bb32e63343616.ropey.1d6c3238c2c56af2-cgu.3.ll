Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.3?download=true
inline.NumInlined: 125
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [21 x i8] c"dest is out of bounds", align 1
@1 = private unnamed_addr constant [26 x i8] c"src/tree/node_children.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\008\01\00\00 \00\00\00" }>, align 8
@3 = private unnamed_addr constant [2 x i8] c"..", align 1
@4 = private unnamed_addr constant [5 x i8] c"\02..\C0\00", align 1
@5 = private unnamed_addr constant [5 x i8] c"\C0\02..\00", align 1
@6 = private unnamed_addr constant [6 x i8] c"\C0\02..\C0\00", align 1
@7 = private unnamed_addr constant [29 x i8] c"assertion failed: idx1 < idx2", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\09\01\00\00\09\00\00\00" }>, align 8
@9 = private unnamed_addr constant [35 x i8] c"assertion failed: idx2 < self.len()", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\0A\01\00\00\09\00\00\00" }>, align 8
@11 = private unnamed_addr constant [32 x i8] c"assertion failed: self.len() > 0", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\DA\00\00\00\09\00\00\00" }>, align 8
@13 = private unnamed_addr constant [35 x i8] c"assertion failed: idx <= self.len()", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\DB\00\00\00\09\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\A0\00\00\00\0D\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\A6\00\00\00\11\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\A6\00\00\009\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\B1\00\00\00\17\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\B8\00\00\00,\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00^\00\00\00\09\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00_\00\00\00\09\00\00\00" }>, align 8
@22 = private unnamed_addr constant [34 x i8] c"Siblings have different node types", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00p\00\00\00\19\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\80\00\00\00\19\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00?\00\00\00\15\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\008\02\00\00/\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00(\02\00\000\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00@\02\00\003\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\000\02\00\004\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\F2\00\00\00\09\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00_\02\00\00\0D\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00c\02\00\00\17\00\00\00" }>, align 8
@33 = private unnamed_addr constant [38 x i8] c"assertion failed: self.len() < MAX_LEN", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00S\02\00\00\0D\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00U\02\00\00\0D\00\00\00" }>, align 8
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00n\02\00\00\0D\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00o\02\00\00\0D\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00{\02\00\00\17\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\89\02\00\00\0D\00\00\00" }>, align 8
@40 = private unnamed_addr constant [34 x i8] c"assertion failed: idx < self.len()", align 1
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\8A\02\00\00\0D\00\00\00" }>, align 8
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\8E\02\00\00\22\00\00\00" }>, align 8
@43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00\9C\02\00\00\17\00\00\00" }>, align 8
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\19\00\00\00\00\00\00\00I\02\00\007\00\00\00" }>, align 8
@45 = private unnamed_addr constant [74 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/sync.rs\00", align 1
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"I\00\00\00\00\00\00\00-\11\00\00'\00\00\00" }>, align 8
@47 = private unnamed_addr constant [12 x i8] c"src/crlf.rs\00", align 1
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @47, [16 x i8] c"\0B\00\00\00\00\00\00\00\0C\00\00\00\0A\00\00\00" }>, align 8
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"I\00\00\00\00\00\00\00;\11\00\00\1F\00\00\00" }>, align 8
@50 = private unnamed_addr constant [71 x i8] c"%Byte index out of bounds: byte index \C0\1D, Rope/RopeSlice byte length \C0\00", align 1
@51 = private unnamed_addr constant [71 x i8] c"%Char index out of bounds: char index \C0\1D, Rope/RopeSlice char length \C0\00", align 1
@52 = private unnamed_addr constant [70 x i8] c"%Line index out of bounds: line index \C0\1C, Rope/RopeSlice line count \C0\00", align 1
@53 = private unnamed_addr constant [84 x i8] c"1Utf16 code-unit index out of bounds: utf16 index \C0\1E, Rope/RopeSlice utf16 length \C0\00", align 1
@54 = private unnamed_addr constant [55 x i8] c"4Byte index is not a valid char boundary: byte index \C0\00", align 1
@55 = private unnamed_addr constant [54 x i8] c"Byte range does not align with char boundaries: range ", align 1
@56 = private unnamed_addr constant [49 x i8] c"\13Invalid byte range \C0\02..\C0\16: start must be <= end\00", align 1
@57 = private unnamed_addr constant [49 x i8] c"\13Invalid char range \C0\02..\C0\16: start must be <= end\00", align 1
@58 = private unnamed_addr constant [37 x i8] c"Byte range out of bounds: byte range ", align 1
@59 = private unnamed_addr constant [32 x i8] c"\1D, Rope/RopeSlice byte length \C0\00", align 1
@60 = private unnamed_addr constant [37 x i8] c"Char range out of bounds: char range ", align 1
@61 = private unnamed_addr constant [32 x i8] c"\1D, Rope/RopeSlice char length \C0\00", align 1
@62 = private unnamed_addr constant [12 x i8] c"NodeChildren", align 1
@63 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@64 = private unnamed_addr constant [3 x i8] c"len", align 1
@65 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRRSNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoNtB6_5Debug3fmtBE_ }>, align 8
@66 = private unnamed_addr constant [4 x i8] c"info", align 1
@67 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRRSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtB6_5Debug3fmtB1c_ }>, align 8
@68 = private unnamed_addr constant [5 x i8] c"nodes", align 1
@69 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text8NodeTextNtB6_5Debug3fmtBC_ }>, align 8
@70 = private unnamed_addr constant [4 x i8] c"Leaf", align 1
@71 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenNtB6_5Debug3fmtBC_ }>, align 8
@72 = private unnamed_addr constant [8 x i8] c"Internal", align 1

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtBG_5alloc6GlobalEEB1s_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !7, !alias.scope !4, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !alias.scope !4
  br i1 %i.c, label %bb.b, label %bb.d, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !4, !nonnull !8, !noundef !8
  %i.f = load i64, ptr %0, align 8, !range !10, !alias.scope !4, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !4, !noundef !8
  %i.i = tail call { i64, i64 } @_RNvNtCsexYYUdYSQU6_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef %i.f, i64 noundef %i.h), !noalias !4 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 1        ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs1n_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB10_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { i64, i64 } %i.i, 0
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.l) #19, !noalias !4
  br label %_RNvXs1n_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB10_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #20, !noalias !4
  unreachable

_RNvXs1n_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB10_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !14, !alias.scope !11, !noundef !8 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !11
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !11
  %i.j = load i64, ptr %i.a, align 8, !range !15, !noalias !11, !noundef !8
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !16, !noalias !11, !noundef !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #21
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !11, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !11
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !11
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren10push_split(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([968 x i8]) align 8 captures(none) dereferenceable(968) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(968) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [968 x i8], align 8               ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.c = load i8, ptr %i.b, align 8, !noundef !8
  %i.d = zext i8 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = sub nuw nsw i64 %i.e, %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9split_off(ptr noalias nofree noundef nonnull sret([968 x i8]) align 8 captures(none) dereferenceable(968) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %1, i64 noundef %i.g)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 960 ; 4 uses
  %i.i = load i8, ptr %i.h, align 8, !alias.scope !27, !noalias !28, !noundef !8 ; 2 uses
  %i.j = icmp ult i8 %i.i, 24
  br i1 %i.j, label %bb.e, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #21
          to label %bb.d unwind label %bb.g, !noalias !29

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = zext nneg i8 %i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(40) %2, i64 32, i1 false), !alias.scope !30, !noalias !25
  %i.n = load i8, ptr %i.h, align 8, !alias.scope !27, !noalias !28, !noundef !8 ; 2 uses
  %i.o = zext i8 %i.n to i64                      ; 2 uses
  %i.p = icmp ult i8 %i.n, 24
  br i1 %i.p, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #21
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34), !noalias !22
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !37, !noalias !27, !nonnull !8, !noundef !8
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !38
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire, !noalias !22
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.q) #22
          to label %.body unwind label %bb.i, !noalias !17

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !39
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.j ], [ %lpad.thr_comm.i, %bb.h ], [ %lpad.thr_comm.i, %bb.g ]
  invoke void @_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_.exit unwind label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !28, !noalias !27, !nonnull !8, !noundef !8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !27, !noalias !28
  %i.z = load i8, ptr %i.h, align 8, !alias.scope !27, !noalias !28, !noundef !8
  %i.aa = add i8 %i.z, 1
  store i8 %i.aa, ptr %i.h, align 8, !alias.scope !27, !noalias !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull align 8 dereferenceable(968) %i.a, i64 968, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.l:                                             ; preds = %bb.n, %.body
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_.exit: ; preds = %bb.m, %bb.n, %.body
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ac, %bb.n ], [ %i.ac, %bb.m ]
  resume { ptr, i32 } %.pn8

bb.m:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !49, !nonnull !8, !noundef !8
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !49
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_.exit

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ad) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_.exit unwind label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren11get_two_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(968) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, %3
  br i1 %i.a, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.c = load i8, ptr %i.b, align 8, !noundef !8  ; 2 uses
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = icmp ult i64 %3, %i.d
  br i1 %i.e, label %bb.e, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp ult i8 %i.c, 25
  br i1 %i.f, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE12split_at_mutB18_.exit, label %bb.f, !prof !50

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.d, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #20, !noalias !51
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE12split_at_mutB18_.exit: ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %3
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %2
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  store ptr %i.j, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.k, ptr %i.n, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren12insert_split(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([968 x i8]) align 8 captures(none) dereferenceable(968) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(968) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 960 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !noundef !8  ; 4 uses
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %.invoke, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  %.not3 = icmp ugt i64 %2, %i.e
  br i1 %.not3, label %.invoke, label %bb.c, !prof !58

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @11, %bb.a ], [ @13, %bb.b ]
  %i.g = phi i64 [ 32, %bb.a ], [ 35, %bb.b ]
  %i.h = phi ptr [ @12, %bb.a ], [ @14, %bb.b ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h) #21
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i64 %2, %i.e
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.j = add i8 %i.d, -1                          ; 2 uses
  store i8 %i.j, ptr %i.c, align 8, !alias.scope !69, !noalias !70
  %i.k = zext i8 %i.j to i64                      ; 3 uses
  %i.l = icmp ult i8 %i.d, 25
  br i1 %i.l, label %bb.h, label %bb.f

end_hunk_0
begin_hunk_1_@_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren3pop:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #20, !noalias !290
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = add i8 %i.b, -1                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 8, !alias.scope !288, !noalias !285
  %i.d = zext i8 %i.c to i64                      ; 3 uses
  %i.e = icmp ult i8 %i.b, 25
  br i1 %i.e, label %_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal3pop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #20, !noalias !290
  unreachable

_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal3pop.exit: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.d
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !288, !noalias !285, !nonnull !8, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !285, !noalias !288
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(968) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.b = load i8, ptr %i.a, align 8, !noundef !8  ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = icmp ult i8 %i.b, 25
  br i1 %i.d, label %bb.c, label %bb.b, !prof !50

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.c, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.c, 1
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4iter(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(968) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.b = load i8, ptr %i.a, align 8, !alias.scope !291, !noundef !8 ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %i.d = icmp ult i8 %i.b, 25
  br i1 %i.d, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes.exit, label %bb.b, !prof !50

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.c, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #20, !noalias !291
  unreachable

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.c
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  tail call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEIBX_INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtB1q_4node4NodeEEEINtB5_7ZipImplBW_B2b_E3newB1s_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %1, ptr noundef nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef align 8 captures(none) dereferenceable(968) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !alias.scope !294, !noalias !297, !noundef !8 ; 2 uses
  %i.c = icmp ult i8 %i.b, 24
  br i1 %i.c, label %bb.d, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #21
          to label %bb.c unwind label %bb.f, !noalias !299

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = zext nneg i8 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !297
  %i.g = load i8, ptr %i.a, align 8, !alias.scope !294, !noalias !297, !noundef !8 ; 2 uses
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = icmp ult i8 %i.g, 24
  br i1 %i.i, label %_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal4push.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #21, !noalias !299
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.f:                                             ; preds = %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303), !noalias !294
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !306, !noalias !294, !nonnull !8, !noundef !8
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !307
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.g:                                             ; preds = %bb.f
  fence acquire, !noalias !294
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.j) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !294
  unreachable

_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal4push.exit: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !297, !noalias !294, !nonnull !8, !noundef !8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  store ptr %i.p, ptr %i.q, align 8, !alias.scope !294, !noalias !297
  %i.r = load i8, ptr %i.a, align 8, !alias.scope !294, !noalias !297, !noundef !8
  %i.s = add i8 %i.r, 1
  store i8 %i.s, ptr %i.a, align 8, !alias.scope !294, !noalias !297
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(968) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.b = load i8, ptr %i.a, align 8, !noundef !8  ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = icmp ult i8 %i.b, 25
  br i1 %i.d, label %bb.c, label %bb.b, !prof !50

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.c, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.c, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren6insert(ptr noalias nofree noundef align 8 captures(none) dereferenceable(968) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !alias.scope !308, !noalias !311, !noundef !8 ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %.not.i = icmp ugt i64 %1, %i.c
  br i1 %.not.i, label %.invoke, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i8 %i.b, 24
  br i1 %i.d, label %bb.e, label %.invoke, !prof !9

bb.c:                                             ; preds = %.invoke, %bb.f, %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !319, !nonnull !8, !noundef !8
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !319
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.f) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit unwind label %bb.g

.invoke:                                          ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ @33, %bb.b ], [ @13, %bb.a ]
  %i.k = phi i64 [ 38, %bb.b ], [ 35, %bb.a ]
  %i.l = phi ptr [ @37, %bb.b ], [ @36, %bb.a ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l) #21
          to label %.cont unwind label %bb.c, !noalias !320

.cont:                                            ; preds = %.invoke
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %i.n = add nuw nsw i64 %1, 1                    ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  %i.p = sub nuw nsw i64 %i.c, %1
  %i.q = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.m, i64 %i.q, i1 false), !alias.scope !308, !noalias !311
  %i.r = invoke { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs2wCc12Mnjqg_5ropey(i64 noundef range(i64 0, 256) %1, i64 noundef range(i64 0, 256) %i.c, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
          to label %.noexc2 unwind label %bb.c    ; 2 uses

.noexc2:                                          ; preds = %bb.e
  %i.s = extractvalue { i64, i64 } %i.r, 0        ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.r, 1
  %i.u = sub i64 %i.t, %i.s                       ; 2 uses
  %i.v = sub i64 24, %i.u
  %.not.i1.not = icmp ult i64 %1, %i.v
  br i1 %.not.i1.not, label %_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal6insert.exit, label %bb.f, !prof !9

bb.f:                                             ; preds = %.noexc2
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #20
          to label %.noexc3 unwind label %bb.c

.noexc3:                                          ; preds = %bb.f
  unreachable

_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal6insert.exit: ; preds = %.noexc2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.s
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.n
  %i.z = shl nuw nsw i64 %i.u, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr nonnull align 8 %i.x, i64 %i.z, i1 false), !alias.scope !321, !noalias !324
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !noalias !311
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !311, !noalias !308, !nonnull !8, !noundef !8
  store ptr %i.ac, ptr %i.m, align 8, !alias.scope !308, !noalias !311
  %i.ad = load i8, ptr %i.a, align 8, !alias.scope !308, !noalias !311, !noundef !8
  %i.ae = add i8 %i.ad, 1
  store i8 %i.ae, ptr %i.a, align 8, !alias.scope !308, !noalias !311
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.e

bb.g:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren6remove(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(968) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 960 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !alias.scope !326, !noalias !329, !noundef !8 ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !58

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #20, !noalias !331
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = zext i8 %i.c to i64                      ; 3 uses
  %i.e = icmp ult i64 %2, %i.d
  br i1 %i.e, label %bb.e, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #20, !noalias !331
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !331
  %i.f = icmp samesign ult i64 %2, 24
  br i1 %i.f, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %2 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !329
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !326, !noalias !329, !nonnull !8, !noundef !8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !noalias !331
  %i.l = add nuw nsw i64 %2, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l
  %i.n = xor i64 %2, -1
  %i.o = add nsw i64 %i.d, %i.n
  %i.p = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.m, i64 %i.p, i1 false), !alias.scope !326, !noalias !329
  %i.q = invoke { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs2wCc12Mnjqg_5ropey(i64 noundef range(i64 0, 256) %i.l, i64 noundef range(i64 0, 256) %i.d, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @43)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.f
  %i.r = extractvalue { i64, i64 } %i.q, 0        ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.q, 1
  %i.t = sub i64 %i.s, %i.r                       ; 2 uses
  %i.u = sub i64 24, %i.t
  %.not.i1 = icmp ugt i64 %2, %i.u
  br i1 %.not.i1, label %bb.g, label %_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal6remove.exit, !prof !58

bb.g:                                             ; preds = %.noexc
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #20
          to label %.noexc2 unwind label %bb.i

.noexc2:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #20, !noalias !331
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !332
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire, !noalias !329
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.k) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !329
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %i.v

_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal6remove.exit: ; preds = %.noexc
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.r
  %i.aa = shl nuw nsw i64 %i.t, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.z, i64 %i.aa, i1 false), !alias.scope !339, !noalias !342
  %i.ab = load i8, ptr %i.b, align 8, !alias.scope !326, !noalias !329, !noundef !8
  %i.ac = add i8 %i.ab, -1
  store i8 %i.ac, ptr %i.b, align 8, !alias.scope !326, !noalias !329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !331
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren8data_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(968) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.b = load i8, ptr %i.a, align 8, !alias.scope !347, !noalias !344, !noundef !8 ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %i.d = icmp ult i8 %i.b, 25
  br i1 %i.d, label %_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut.exit, label %bb.b, !prof !50

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.c, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #20, !noalias !349
  unreachable

_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %i.e, ptr %0, align 8, !alias.scope !344, !noalias !347
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.f, align 8, !alias.scope !344, !noalias !347
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.g, align 8, !alias.scope !344, !noalias !347
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.c, ptr %i.h, align 8, !alias.scope !344, !noalias !347
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren8info_mut(ptr noalias nofree noundef align 8 dereferenceable(968) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.b = load i8, ptr %i.a, align 8, !noundef !8  ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = icmp ult i8 %i.b, 25
  br i1 %i.d, label %bb.c, label %bb.b, !prof !50

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.c, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.c, 1
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9nodes_mut(ptr noalias nofree noundef align 8 dereferenceable(968) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.b = load i8, ptr %i.a, align 8, !noundef !8  ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = icmp ult i8 %i.b, 25
  br i1 %i.d, label %bb.c, label %bb.b, !prof !50

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE8into_arcB10_:bb.a

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE8grow_oneB19_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !373
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !373
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8), !noalias !373
  %i.f = load i64, ptr %i.a, align 8, !range !15, !noalias !373, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !16, !noalias !373, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !373
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !373, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !373
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !373
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !373
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEE8grow_oneB1b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !376
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !376
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !376
  %i.f = load i64, ptr %i.a, align 8, !range !15, !noalias !376, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !16, !noalias !376, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !376
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !376, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !376
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !376
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !376
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2wCc12Mnjqg_5ropey(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !379
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !379

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #19
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #19
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 10 uses
  %i.b = cmpxchg ptr %i.a, i64 1, i64 0 acquire monotonic, align 8
  %i.c = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load atomic i64, ptr %i.d monotonic, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = tail call noundef nonnull ptr @_RNvMsk_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE17clone_from_ref_inBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.g) ; 3 uses
  %i.i = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !380
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit unwind label %bb.o

bb.e:                                             ; preds = %bb.b
  store atomic i64 1, ptr %i.a release, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit9

bb.f:                                             ; preds = %bb.b
  %i.k = invoke { i64, i64 } @_RNvNtCsexYYUdYSQU6_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 8, i64 noundef 1008)
          to label %.noexc6 unwind label %bb.n    ; 2 uses

.noexc6:                                          ; preds = %bb.f
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 3 uses
  %i.m = extractvalue { i64, i64 } %i.k, 1        ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc6
  %i.o = inttoptr i64 %i.l to ptr
  br label %_RNCNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtBa_5alloc6GlobalE3new0B12_.exit.i.i

bb.h:                                             ; preds = %.noexc6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !385
  %i.p = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.l) #19, !noalias !385
  br label %_RNCNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtBa_5alloc6GlobalE3new0B12_.exit.i.i

_RNCNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtBa_5alloc6GlobalE3new0B12_.exit.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ] ; 8 uses
  %i.q = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  br i1 %i.q, label %bb.i, label %bb.j, !prof !58

bb.i:                                             ; preds = %_RNCNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtBa_5alloc6GlobalE3new0B12_.exit.i.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef %i.l, i64 noundef %i.m) #21
          to label %.noexc7 unwind label %bb.n

.noexc7:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_RNCNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtBa_5alloc6GlobalE3new0B12_.exit.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i, align 8, !noalias !385
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  store i64 1, ptr %i.r, align 8, !noalias !385
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1008) %i.t, ptr noundef nonnull align 8 dereferenceable(1008) %i.s, i64 1008, i1 false)
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %0, align 8
  %i.u = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit9, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !388
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit9

bb.l:                                             ; preds = %bb.k
  fence acquire
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 1024, i64 noundef 8) #19, !noalias !388
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit9: ; preds = %bb.j, %bb.k, %bb.l, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit
  %i.x = phi ptr [ %.sroa.0.0.i.i.i.i.i, %bb.j ], [ %.sroa.0.0.i.i.i.i.i, %bb.k ], [ %.sroa.0.0.i.i.i.i.i, %bb.l ], [ %i.a, %bb.e ], [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  ret ptr %i.y

bb.m:                                             ; preds = %bb.n, %bb.o
  %.pn3 = phi { ptr, i32 } [ %i.aa, %bb.o ], [ %i.z, %bb.n ]
  resume { ptr, i32 } %.pn3

bb.n:                                             ; preds = %bb.i, %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  store atomic i64 1, ptr %i.a release, align 8, !noalias !391
  br label %bb.m

bb.o:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store ptr %i.h, ptr %0, align 8
  br label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit: ; preds = %bb.c, %bb.d
  store ptr %i.h, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit9
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMsk_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE17clone_from_ref_inBM_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1000 x i8], align 8              ; 7 uses
  %i.b = alloca [1008 x i8], align 8              ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.d = tail call { i64, i64 } @_RNvNtCsexYYUdYSQU6_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 8, i64 noundef 1008), !noalias !396 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.e to ptr
  br label %_RNCNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtBa_5alloc6GlobalE3new0B12_.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !396
  %i.i = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %i.e) #19, !noalias !396
  br label %_RNCNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtBa_5alloc6GlobalE3new0B12_.exit.i.i

_RNCNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtBa_5alloc6GlobalE3new0B12_.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.i, %bb.c ] ; 6 uses
  %i.j = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  br i1 %i.j, label %bb.d, label %_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE3newB10_.exit, !prof !58

bb.d:                                             ; preds = %_RNCNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtBa_5alloc6GlobalE3new0B12_.exit.i.i
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef %i.e, i64 noundef %i.f) #21, !noalias !396
  unreachable

_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE3newB10_.exit: ; preds = %_RNCNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB8_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtBa_5alloc6GlobalE3new0B12_.exit.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i, align 8, !noalias !396
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  store i64 1, ptr %i.k, align 8, !noalias !396
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.l, align 8, !alias.scope !396
  store i64 8, ptr %i.c, align 8, !alias.scope !396
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1008, ptr %i.m, align 8, !alias.scope !396
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 1, ptr %i.n, align 8, !alias.scope !396
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !405
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.o = load i8, ptr %0, align 8, !range !7, !alias.scope !411, !noalias !406, !noundef !8
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.i.i.i.i

bb.e:                                             ; preds = %_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE3newB10_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RNvXs0_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB5_20NodeChildrenInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([968 x i8]) align 8 captures(none) dereferenceable(968) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.q)
          to label %bb.h unwind label %.body.thread7

.body.thread7:                                    ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.i.i.i.i: ; preds = %_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE3newB10_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !415, !noalias !418, !noundef !8 ; 2 uses
  %i.v = icmp ugt i64 %i.u, 984                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sink13.i.i.i.i.i = select i1 %i.v, ptr %i.x, ptr %i.aa ; 2 uses
  %.sink12.i.i.i.i.i = select i1 %i.v, i64 %i.z, i64 %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i.i.i, i64 %.sink12.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !421
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  store i64 0, ptr %i.ac, align 8, !noalias !421
  store i8 0, ptr %i.a, align 8, !noalias !421
  invoke void @_RINvXss_Cs2efQY0w7vw4_8smallvecINtB6_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendhE6extendINtNtNtB1R_8adapters6cloned6ClonedINtNtNtB1T_5slice4iter4IterhEEEBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.a, ptr noundef nonnull %.sink13.i.i.i.i.i, ptr noundef nonnull %i.ab)
          to label %_RNvXsw_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBP_.exit.i.i.i unwind label %bb.f, !noalias !424

bb.f:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.a)
          to label %.body.thread unwind label %bb.g, !noalias !424

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !424
  unreachable

_RNvXsw_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBP_.exit.i.i.i: ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayE6tripleBP_.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1000) %i.af, ptr noundef nonnull align 8 dereferenceable(1000) %i.a, i64 1000, i1 false), !noalias !411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !421
  br label %bb.h

bb.h:                                             ; preds = %_RNvXsw_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBP_.exit.i.i.i, %bb.e
  %storemerge.i.i.i = phi i8 [ 0, %_RNvXsw_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBP_.exit.i.i.i ], [ 1, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  store i8 %storemerge.i.i.i, ptr %i.b, align 8, !alias.scope !406, !noalias !411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1008) %i.ag, ptr noundef nonnull align 8 dereferenceable(1008) %i.b, i64 1008, i1 false), !noalias !405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %.sroa.0.0.i.i.i.i.i

bb.i:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body6

.body.thread:                                     ; preds = %bb.f, %.body.thread7
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.s, %.body.thread7 ], [ %i.ad, %bb.f ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtBG_5alloc6GlobalEEB1s_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #25
          to label %bb.i unwind label %bb.j

bb.j:                                             ; preds = %.body.thread
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !7, !alias.scope !425, !noundef !8
  %i.d = icmp eq i8 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEBH_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEBH_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeRNtNtBG_5alloc6GlobalEEB1g_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeRNtNtBG_5alloc6GlobalEEB1g_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 1024, i64 noundef 8) #19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeRNtNtBG_5alloc6GlobalEEB1g_.exit

end_hunk_2
