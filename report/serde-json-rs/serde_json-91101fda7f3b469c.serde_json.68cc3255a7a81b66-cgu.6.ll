Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/serde-json-rs/original/serde_json-91101fda7f3b469c.serde_json.68cc3255a7a81b66-cgu.6?download=true
inline.NumInlined: 76
inline.NumDeleted: 57
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [80 x i8] c"/rustc/0ed41eb4142dda2df61eb1145a312c1a9d62eb56/library/core/src/str/pattern.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00\A4\06\00\00\14\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00\93\06\00\00\14\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCs8Chj7Szqq0n_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@4 = private unnamed_addr constant [48 x i8] c"assertion failed: self.is_char_boundary(new_len)", align 1
@5 = private unnamed_addr constant [9 x i8] c" at line ", align 1
@6 = private unnamed_addr constant [13 x i8] c"src/error.rs\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"\0C\00\00\00\00\00\00\00\F7\01\00\00!\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"\0C\00\00\00\00\00\00\00\FB\01\00\00\0C\00\00\00" }>, align 8
@9 = private unnamed_addr constant [8 x i8] c" column ", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"\0C\00\00\00\00\00\00\00\02\02\00\00!\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"\0C\00\00\00\00\00\00\00\0B\02\00\00*\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"\0C\00\00\00\00\00\00\00\0F\02\00\00,\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"\0C\00\00\00\00\00\00\00\14\02\00\00\09\00\00\00" }>, align 8
@14 = private unnamed_addr constant [24 x i8] c"EOF while parsing a list", align 1
@15 = private unnamed_addr constant [27 x i8] c"EOF while parsing an object", align 1
@16 = private unnamed_addr constant [26 x i8] c"EOF while parsing a string", align 1
@17 = private unnamed_addr constant [25 x i8] c"EOF while parsing a value", align 1
@18 = private unnamed_addr constant [12 x i8] c"expected `:`", align 1
@19 = private unnamed_addr constant [19 x i8] c"expected `,` or `]`", align 1
@20 = private unnamed_addr constant [19 x i8] c"expected `,` or `}`", align 1
@21 = private unnamed_addr constant [14 x i8] c"expected ident", align 1
@22 = private unnamed_addr constant [14 x i8] c"expected value", align 1
@23 = private unnamed_addr constant [12 x i8] c"expected `\22`", align 1
@24 = private unnamed_addr constant [14 x i8] c"invalid escape", align 1
@25 = private unnamed_addr constant [14 x i8] c"invalid number", align 1
@26 = private unnamed_addr constant [19 x i8] c"number out of range", align 1
@27 = private unnamed_addr constant [26 x i8] c"invalid unicode code point", align 1
@28 = private unnamed_addr constant [62 x i8] c"control character (\\u0000-\\u001F) found while parsing a string", align 1
@29 = private unnamed_addr constant [20 x i8] c"key must be a string", align 1
@30 = private unnamed_addr constant [52 x i8] c"invalid value: expected key to be a number in quotes", align 1
@31 = private unnamed_addr constant [44 x i8] c"float key must be finite (got NaN or +/-inf)", align 1
@32 = private unnamed_addr constant [36 x i8] c"lone leading surrogate in hex escape", align 1
@33 = private unnamed_addr constant [14 x i8] c"trailing comma", align 1
@34 = private unnamed_addr constant [19 x i8] c"trailing characters", align 1
@35 = private unnamed_addr constant [28 x i8] c"unexpected end of hex escape", align 1
@36 = private unnamed_addr constant [24 x i8] c"recursion limit exceeded", align 1
@37 = private unnamed_addr constant [23 x i8] c"\C0\09 at line \C0\08 column \C0\00", align 1
@38 = private unnamed_addr constant [33 x i8] c"\06Error(\C0\08, line: \C0\0A, column: \C0\01)\00", align 1
@39 = private unnamed_addr constant [30 x i8] c"\0Einvalid type: \C0\0B, expected \C0\00", align 1
@40 = private unnamed_addr constant [31 x i8] c"\0Finvalid value: \C0\0B, expected \C0\00", align 1
@41 = private unnamed_addr constant [21 x i8] c"\10floating point `\C0\01`\00", align 1
@42 = private unnamed_addr constant [4 x i8] c"null", align 1
@43 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsbqH9stoieM8_5alloc6string6StringNtNtCs8Chj7Szqq0n_4core3fmt5Write9write_fmtCs8ZPNfZ0ciAA_10serde_json }>, align 8
@44 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@45 = private unnamed_addr constant [76 x i8] c"/rustc/0ed41eb4142dda2df61eb1145a312c1a9d62eb56/library/alloc/src/string.rs\00", align 1
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"K\00\00\00\00\00\00\00\A5\0B\00\00\0E\00\00\00" }>, align 8
@47 = private unnamed_addr constant [5 x i8] c"Error", align 1
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\000\05\00\009\00\00\00" }>, align 8
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00\F0\04\00\00$\00\00\00" }>, align 8

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0EB8_(ptr noalias noundef nonnull align 8 captures(address, ret: address, provenance) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.e = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0B9_.exit unwind label %bb.d

_RNCNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0B9_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_RNCNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0B9_.exit
  %.sroa.0.0 = phi ptr [ %i.e, %_RNCNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0B9_.exit ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #15
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %i.b = load i64, ptr %0, align 8, !range !5, !alias.scope !13, !noundef !4
  switch i64 %i.b, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !13, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !13, !nonnull !4, !noundef !4
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #15, !noalias !13
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load ptr, ptr %i.f, align 8, !alias.scope !13, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13
  %i.g = ptrtoint ptr %.val2.i to i64             ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit.i
    i64 1, label %bb.f
  ], !prof !6

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.i = icmp ult ptr %.val2.i, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit.i

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %.val2.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !14, !noalias !13
  store i8 3, ptr %i.a, align 8, !alias.scope !14, !noalias !13
  call void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m), !noalias !13
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_.exit: ; preds = %bb.a, %bb.b, %bb.c, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECs8ZPNfZ0ciAA_10serde_json.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc7raw_vec6RawVechEECs8ZPNfZ0ciAA_10serde_json.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc7raw_vec6RawVechEECs8ZPNfZ0ciAA_10serde_json.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB6_5ErrorNtNtCsdnjrqM8ey3e_10serde_core2de5Error6customNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsEB8_(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %2 = and i64 %i.c, 1
  %.not.i.i.i = icmp eq i64 %2, 0
  %i.d = lshr i64 %i.c, 1                         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.d, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !39
  %i.e = load i64, ptr %i.a, align 8, !range !40, !noalias !39, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !41, !noalias !39, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i.i.i, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !noalias !39
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #17, !noalias !39
  unreachable

_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !noalias !39, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = icmp ule i64 %i.d, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvYNvYeNtNtCsbqH9stoieM8_5alloc6borrow7ToOwned8to_ownedINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTReEE9call_onceCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !noalias !42
  br label %_RNvYNvYeNtNtCsbqH9stoieM8_5alloc6borrow7ToOwned8to_ownedINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTReEE9call_onceCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i

_RNvYNvYeNtNtCsbqH9stoieM8_5alloc6borrow7ToOwned8to_ownedINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTReEE9call_onceCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i: ; preds = %bb.d, %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i.i.i
  store i64 %i.h, ptr %i.b, align 8, !alias.scope !43, !noalias !44
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !43, !noalias !44
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !43, !noalias !44
  br label %_RNvXsB_NtCsbqH9stoieM8_5alloc6stringNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsNtB5_8ToString9to_stringCs8ZPNfZ0ciAA_10serde_json.exit

bb.e:                                             ; preds = %bb.a
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %0, ptr noundef nonnull %1), !noalias !45
  br label %_RNvXsB_NtCsbqH9stoieM8_5alloc6stringNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsNtB5_8ToString9to_stringCs8ZPNfZ0ciAA_10serde_json.exit

_RNvXsB_NtCsbqH9stoieM8_5alloc6stringNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsNtB5_8ToString9to_stringCs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %_RNvYNvYeNtNtCsbqH9stoieM8_5alloc6borrow7ToOwned8to_ownedINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTReEE9call_onceCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, %bb.e
  %i.m = call noundef nonnull align 8 ptr @_RNvNtCs8ZPNfZ0ciAA_10serde_json5error10make_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.m
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 44) i8 @_RNvMNtCs8ZPNfZ0ciAA_10serde_json5errorNtB2_5Error13io_error_kind(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !5, !noundef !4
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error4kind.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.e = ptrtoint ptr %.val to i64                ; 3 uses
  %i.f = and i64 %i.e, 3
  switch i64 %i.f, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 0, label %bb.e
    i64 1, label %bb.f
  ], !prof !6

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.e, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = tail call noundef nonnull align 8 ptr @_RNvNtNtNtCs8Chj7Szqq0n_4core2io5error12os_functions16get_os_functions()
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.l = tail call noundef i8 %i.k(i32 noundef %i.h), !inline_history !46
  br label %_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error4kind.exit

bb.d:                                             ; preds = %bb.b
  %i.m = lshr i64 %i.e, 32
  %i.n = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.m to i8   ; 2 uses
  %i.o = icmp ne i8 %switch.idx.cast.i.i.i, -1
  tail call void @llvm.assume(i1 %i.n)
  tail call void @llvm.assume(i1 %i.o)
  br label %_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error4kind.exit

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !47, !noundef !4
  br label %_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error4kind.exit

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %.val, i64 31
  %i.s = load i8, ptr %i.r, align 8, !range !47, !noundef !4
  br label %_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error4kind.exit

_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i8 [ -1, %bb.a ], [ %i.l, %bb.c ], [ %switch.idx.cast.i.i.i, %bb.d ], [ %i.q, %bb.e ], [ %i.s, %bb.f ]
  ret i8 %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !50
  %i.c = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #15, !noalias !50 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCsbqH9stoieM8_5alloc5boxedINtB2_3BoxNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplE3newBI_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #17
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #18
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCsbqH9stoieM8_5alloc5boxedINtB2_3BoxNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplE3newBI_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %2, ptr %i.c, align 8
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !53
  %i.d = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #15, !noalias !53 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsbqH9stoieM8_5alloc5boxedINtB2_3BoxNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplE3newBI_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #17
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #18
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCsbqH9stoieM8_5alloc5boxedINtB2_3BoxNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplE3newBI_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @_RNvNtCs8ZPNfZ0ciAA_10serde_json5error10make_error(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 29 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !100, !noalias !101, !nonnull !4, !noundef !4 ; 23 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_RNvNtCs8ZPNfZ0ciAA_10serde_json5error10make_error:bb.a
  br i1 %i.t, label %bb.c, label %.split114.us.i.i.i.invoke

bb.b:                                             ; preds = %.lr.ph41.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %.promoted104.i.i.i
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !107, !noalias !108, !noundef !4
  %i.w = icmp sgt i8 %i.v, -65
  br i1 %i.w, label %bb.c, label %.split114.us.i.i.i.invoke

bb.c:                                             ; preds = %bb.b, %.split.i.i.us.i.peel.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 %.promoted104.i.i.i ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !noalias !109, !noundef !4 ; 3 uses
  %i.aa = icmp sgt i8 %i.z, -1
  br i1 %i.aa, label %bb.f, label %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.peel.i.i

_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.peel.i.i: ; preds = %bb.c
  %i.ab = icmp ne i64 %.promoted104.i.i.i, 1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 -2
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !109, !noundef !4 ; 3 uses
  %i.ae = and i8 %i.ad, 31
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = icmp slt i8 %i.ad, -64
  br i1 %i.ag, label %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.peel.i.i, label %bb.e

_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.peel.i.i: ; preds = %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.peel.i.i
  %i.ah = icmp ne i64 %.promoted104.i.i.i, 2
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds i8, ptr %i.x, i64 -3
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !109, !noundef !4 ; 3 uses
  %i.ak = and i8 %i.aj, 15
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = icmp slt i8 %i.aj, -64
  br i1 %i.am, label %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.peel.i.i, label %bb.d

_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.peel.i.i: ; preds = %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.peel.i.i
  %i.an = icmp ne i64 %.promoted104.i.i.i, 3
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !109, !noundef !4
  %i.aq = and i8 %i.ap, 7
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 6
  %i.at = and i8 %i.aj, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.peel.i.i, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.peel.i.i
  %.sroa.010.1.i.i.us.i.peel.i.i = phi i32 [ %i.av, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.peel.i.i ], [ %i.al, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.peel.i.i ]
  %i.aw = shl nuw nsw i32 %.sroa.010.1.i.i.us.i.peel.i.i, 6
  %i.ax = and i8 %i.ad, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.peel.i.i
  %.sroa.010.0.i.i.us.i.peel.i.i = phi i32 [ %i.az, %bb.d ], [ %i.af, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.peel.i.i ]
  %i.ba = shl nuw nsw i32 %.sroa.010.0.i.i.us.i.peel.i.i, 6
  %i.bb = and i8 %i.z, 63
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.be = zext nneg i8 %i.z to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.1.i.ph.i.us.i.peel.i.i = phi i32 [ %i.be, %bb.f ], [ %i.bd, %bb.e ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  br i1 %i.r, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel.i.i, 128
  br i1 %i.bg, label %_RNvXsw_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel.i.i, 2048
  br i1 %i.bh, label %_RNvXsw_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel.i.i, 65536
  %..i.us.i.peel.i.i = select i1 %i.bi, i64 -3, i64 -4
  br label %_RNvXsw_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i

_RNvXsw_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.neg.i.us.i.peel.i.i = phi i64 [ -2, %bb.i ], [ %..i.us.i.peel.i.i, %bb.j ], [ -1, %bb.h ]
  %i.bj = add i64 %.sroa.01.0.neg.i.us.i.peel.i.i, %.promoted104.i.i.i ; 14 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %_RNvXsw_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i
  %.not.i.i.us.i.i.i = icmp ult i64 %i.bj, %i.o
  br i1 %.not.i.i.us.i.i.i, label %bb.k, label %.split.i.i.us.i.i.i

.split.i.i.us.i.i.i:                              ; preds = %.peel.next.i.i
  %i.bl = icmp eq i64 %i.bj, %i.o
  br i1 %i.bl, label %bb.l, label %.split114.us.i.i.i.invoke

bb.k:                                             ; preds = %.peel.next.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bj
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !107, !noalias !110, !noundef !4
  %i.bo = icmp sgt i8 %i.bn, -65
  br i1 %i.bo, label %bb.l, label %.split114.us.i.i.i.invoke

bb.l:                                             ; preds = %bb.k, %.split.i.i.us.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bj ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -1
  %i.br = load i8, ptr %i.bq, align 1, !noalias !111, !noundef !4
  %i.bs = icmp sgt i8 %i.br, -1
  br i1 %i.bs, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, label %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.i.i

_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.i.i: ; preds = %bb.l
  %i.bt = icmp ne i64 %i.bj, 1
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 -2
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !111, !noundef !4
  %i.bw = icmp slt i8 %i.bv, -64
  br i1 %i.bw, label %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i

_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.i.i: ; preds = %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.i.i
  %i.bx = icmp ne i64 %i.bj, 2
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds i8, ptr %i.bp, i64 -3
  %i.bz = load i8, ptr %i.by, align 1, !noalias !111, !noundef !4
  %i.ca = icmp slt i8 %i.bz, -64
  br i1 %i.ca, label %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i

_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.i.i: ; preds = %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.i.i
  %i.cb = icmp ne i64 %i.bj, 3
  tail call void @llvm.assume(i1 %i.cb)
  br label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i

.split.us.i.i.i:                                  ; preds = %.lr.ph.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  br i1 %i.r, label %bb.ae, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit

.split114.us.i.i.i.invoke:                        ; preds = %.split.i.i, %bb.ah, %.split.i45.i, %bb.as, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i, %bb.bh, %bb.ax, %bb.bb, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i, %.split.i40.i, %bb.am, %.split.i.i.us.i.peel.i.i, %bb.b, %.split.i.i.us.i.i.i, %bb.k
  %i.cc = phi ptr [ %i.e, %bb.ax ], [ %i.m, %.split.i.i.us.i.peel.i.i ], [ %i.e, %bb.bb ], [ %i.e, %.split.i40.i ], [ %i.e, %bb.bh ], [ %i.m, %bb.k ], [ %i.m, %.split.i.i.us.i.i.i ], [ %i.m, %bb.b ], [ %i.e, %.split.i45.i ], [ %i.e, %bb.am ], [ %i.e, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %i.e, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i ], [ %i.e, %bb.as ], [ %i.e, %bb.ah ], [ %i.e, %.split.i.i ]
  %i.cd = phi i64 [ %i.g, %bb.ax ], [ %i.o, %.split.i.i.us.i.peel.i.i ], [ %i.g, %bb.bb ], [ %i.g, %.split.i40.i ], [ %i.g, %bb.bh ], [ %i.o, %bb.k ], [ %i.o, %.split.i.i.us.i.i.i ], [ %i.o, %bb.b ], [ %i.g, %.split.i45.i ], [ %i.g, %bb.am ], [ %i.g, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %i.g, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i ], [ %i.g, %bb.as ], [ %i.g, %bb.ah ], [ %i.g, %.split.i.i ]
  %i.ce = phi i64 [ %i.gw, %bb.ax ], [ 0, %.split.i.i.us.i.peel.i.i ], [ %i.gw, %bb.bb ], [ %.sroa.03.0.lcssa168.i, %.split.i40.i ], [ %i.hn, %bb.bh ], [ 0, %bb.k ], [ 0, %.split.i.i.us.i.i.i ], [ 0, %bb.b ], [ %.sroa.010.0.i, %.split.i45.i ], [ %.sroa.03.0.lcssa168.i, %bb.am ], [ %i.hn, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %i.gw, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i ], [ %.sroa.010.0.i, %bb.as ], [ %.sroa.03.0.i, %bb.ah ], [ %.sroa.03.0.i, %.split.i.i ]
  %i.cf = phi i64 [ %.sroa.03.0.lcssa168.i, %bb.ax ], [ %.promoted104.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.sroa.03.0.lcssa168.i, %bb.bb ], [ %i.g, %.split.i40.i ], [ %.sroa.010.0.lcssa165214.i, %bb.bh ], [ %i.bj, %bb.k ], [ %i.bj, %.split.i.i.us.i.i.i ], [ %.promoted104.i.i.i, %bb.b ], [ %i.g, %.split.i45.i ], [ %i.g, %bb.am ], [ %.sroa.010.0.lcssa165214.i, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %.sroa.03.0.lcssa168.i, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i ], [ %i.g, %bb.as ], [ %i.g, %bb.ah ], [ %i.g, %.split.i.i ]
  %i.cg = phi ptr [ @11, %bb.ax ], [ @49, %.split.i.i.us.i.peel.i.i ], [ @11, %bb.bb ], [ @8, %.split.i40.i ], [ @12, %bb.bh ], [ @49, %bb.k ], [ @49, %.split.i.i.us.i.i.i ], [ @49, %bb.b ], [ @10, %.split.i45.i ], [ @8, %bb.am ], [ @12, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ @11, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i ], [ @10, %bb.as ], [ @7, %bb.ah ], [ @7, %.split.i.i ]
  invoke void @_RNvNtCs8Chj7Szqq0n_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cc, i64 noundef %i.cd, i64 noundef %i.ce, i64 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg) #19
          to label %.split114.us.i.i.i.cont unwind label %bb.bt

.split114.us.i.i.i.cont:                          ; preds = %.split114.us.i.i.i.invoke
  unreachable

default.unreachable:                              ; preds = %.noexc
  unreachable

bb.m:                                             ; preds = %.noexc
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !103, !noalias !105, !noundef !4 ; 4 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i, label %bb.o

bb.n:                                             ; preds = %.noexc
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !103, !noalias !105, !noundef !4
  %i.cm = icmp eq i64 %i.cl, -1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !103, !noalias !105, !nonnull !4, !noundef !4 ; 10 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !103, !noalias !105, !noundef !4 ; 11 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !103, !noalias !105, !nonnull !4, !noundef !4 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !103, !noalias !105, !noundef !4 ; 14 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  br i1 %i.cm, label %bb.z, label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !103, !noalias !105, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.ci, %i.cx
  br i1 %.not.i.i.i, label %bb.p, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.i, !prof !112

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ci, i64 noundef %i.cx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #19
          to label %.noexc7 unwind label %bb.bt

.noexc7:                                          ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %.promoted.i.i.i.i = load i64, ptr %i.cv, align 8, !alias.scope !116, !noalias !117 ; 2 uses
  %i.cy = sub i64 %.promoted.i.i.i.i, %i.cu       ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cq
  br i1 %i.cz, label %.lr.ph.i.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !116, !noalias !117, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %1 = load i64, ptr %i.dc, align 8, !alias.scope !116, !noalias !117 ; 6 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !116, !noalias !117 ; 2 uses
  %umax71.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %1, i64 range(i64 0, -9223372036854775808) %i.cu) ; 2 uses
  %.promoted36.i.i.i.i = load i64, ptr %2, align 8, !alias.scope !116, !noalias !117
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.sink99.i.i24.i.i = phi i64 [ %.sink99.i.i.i.i, %bb.s ], [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.df = phi i64 [ %.sink98.i.i.i.i, %bb.s ], [ %.promoted36.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.dg = phi i64 [ %i.dm, %bb.s ], [ %i.cy, %.lr.ph.i.i.i.i ] ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !alias.scope !114, !noalias !118, !noundef !4
  %i.dj = and i8 %i.di, 63
  %i.dk = zext nneg i8 %i.dj to i64
  %3 = shl nuw i64 1, %i.dk
  %4 = and i64 %3, %i.db
  %.not.i.i.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.dl = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.df) ; 2 uses
  %.not19.i.i.i.i191 = icmp eq i64 %i.dl, 0
  br i1 %.not19.i.i.i.i191, label %.preheader46.i.i.i.i, label %.lr.ph

bb.s:                                             ; preds = %bb.y, %bb.w, %.lr.ph.split.i.i.i.i
  %.sink99.i.i.i.i = phi i64 [ %i.eg, %bb.y ], [ %i.dz, %bb.w ], [ %i.dg, %.lr.ph.split.i.i.i.i ] ; 2 uses
  %.sink98.i.i.i.i = phi i64 [ %i.cu, %bb.y ], [ %i.de, %bb.w ], [ %i.cu, %.lr.ph.split.i.i.i.i ]
  %i.dm = sub i64 %.sink99.i.i.i.i, %i.cu         ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.cq
  br i1 %i.dn, label %.lr.ph.split.i.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i

bb.t:                                             ; preds = %bb.x
  %.not19.i.i.i.i = icmp eq i64 %i.do, 0
  br i1 %.not19.i.i.i.i, label %.preheader46.i.i.i.i, label %.lr.ph

.preheader46.i.i.i.i:                             ; preds = %bb.t, %bb.r
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.df, i64 %1)
  %exitcond.not.i.i.i.i193.not = icmp ult i64 %1, %i.df
  br i1 %exitcond.not.i.i.i.i193.not, label %.lr.ph195, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i

.lr.ph:                                           ; preds = %bb.r, %bb.t
  %.sroa.2.0.i.i.i.i192 = phi i64 [ %i.do, %bb.t ], [ %i.dl, %bb.r ]
  %i.do = add i64 %.sroa.2.0.i.i.i.i192, -1       ; 7 uses
  %i.dp = icmp ult i64 %i.do, %i.cu
  br i1 %i.dp, label %bb.x, label %.split43.i.i.i.i.invoke

bb.u:                                             ; preds = %bb.v
  %i.dq = add i64 %.sroa.09.0.i.i.i.i194, 1       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dq, %umax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, label %.lr.ph195

.lr.ph195:                                        ; preds = %.preheader46.i.i.i.i, %bb.u
  %.sroa.09.0.i.i.i.i194 = phi i64 [ %i.dq, %bb.u ], [ %1, %.preheader46.i.i.i.i ] ; 4 uses
  %exitcond70.not.i.i.i.i = icmp eq i64 %.sroa.09.0.i.i.i.i194, %umax71.i.i.i.i
  br i1 %exitcond70.not.i.i.i.i, label %.split43.i.i.i.i.invoke, label %bb.v

bb.v:                                             ; preds = %.lr.ph195
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.09.0.i.i.i.i194
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !115, !noalias !119, !noundef !4
  %i.dt = add i64 %.sroa.09.0.i.i.i.i194, %i.dg   ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.cq
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dt
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !114, !noalias !118, !noundef !4
  %.not20.i.i.i.i = icmp eq i8 %i.ds, %i.dw
  br i1 %.not20.i.i.i.i, label %bb.u, label %bb.w

.split43.i.i.i.i.invoke:                          ; preds = %.lr.ph, %.lr.ph195, %.lr.ph.split.us.i.i.i.i, %.lr.ph.split.us.i.i.preheader.i.i
  %i.dx = phi i64 [ %i.ep, %.lr.ph.split.us.i.i.i.i ], [ %umax71.i.i.i.i, %.lr.ph195 ], [ %i.ep, %.lr.ph.split.us.i.i.preheader.i.i ], [ %i.do, %.lr.ph ]
  %i.dy = phi ptr [ @2, %.lr.ph.split.us.i.i.i.i ], [ @1, %.lr.ph195 ], [ @2, %.lr.ph.split.us.i.i.preheader.i.i ], [ @2, %.lr.ph ]
  invoke void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.dx, i64 noundef range(i64 0, -9223372036854775808) %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dy) #19
          to label %.split43.i.i.i.i.cont unwind label %bb.bt

.split43.i.i.i.i.cont:                            ; preds = %.split43.i.i.i.i.invoke
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.dz = sub i64 %.sink99.i.i24.i.i, %i.de
  br label %bb.s

bb.x:                                             ; preds = %.lr.ph
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.do
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !115, !noalias !119, !noundef !4
  %i.ec = add nuw i64 %i.do, %i.dg                ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.cq
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ec
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !114, !noalias !118, !noundef !4
  %.not21.i.i.i.i = icmp eq i8 %i.eb, %i.ef
  br i1 %.not21.i.i.i.i, label %bb.t, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.neg.i.i.i.i = sub i64 %.sink99.i.i24.i.i, %1
  %i.eg = add i64 %.neg.i.i.i.i, %i.do
  br label %bb.s

bb.z:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %.promoted.i6.i.i.i = load i64, ptr %i.cv, align 8, !alias.scope !123, !noalias !124 ; 3 uses
  %i.eh = sub i64 %.promoted.i6.i.i.i, %i.cu      ; 5 uses
  %i.ei = icmp ult i64 %i.eh, %i.cq
  br i1 %i.ei, label %.lr.ph.i9.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i

.lr.ph.i9.i.i.i:                                  ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !123, !noalias !124, !noundef !4 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !123, !noalias !124
  %.fr159.i.i.i = freeze i64 %i.em                ; 8 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !123, !noalias !124 ; 2 uses
  %umax71.i10.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr159.i.i.i, i64 range(i64 0, -9223372036854775808) %i.cu) ; 3 uses
  %i.ep = add i64 %.fr159.i.i.i, -1               ; 3 uses
  %.first_iter.i.i.i.i = icmp ult i64 %i.ep, %i.cu
  br i1 %.first_iter.i.i.i.i, label %.lr.ph.split.us.i.us.i.i.i.preheader, label %.lr.ph.i9.split.i.i.i

.lr.ph.split.us.i.us.i.i.i.preheader:             ; preds = %.lr.ph.i9.i.i.i
  %.not19.us.i.us.us.i.i.i202 = icmp eq i64 %.fr159.i.i.i, 0
  %exitcond72.not.i.us.i.i.i205.not = icmp ult i64 %.fr159.i.i.i, %i.cu
  br label %.lr.ph.split.us.i.us.i.i.i

.lr.ph.split.us.i.us.i.i.i:                       ; preds = %.lr.ph.split.us.i.us.i.i.i.preheader, %bb.ab
  %.sink.i12.us.i36.i.i = phi i64 [ %.sink.i12.us.i.i.i, %bb.ab ], [ %.promoted.i6.i.i.i, %.lr.ph.split.us.i.us.i.i.i.preheader ] ; 2 uses
  %i.eq = phi i64 [ %i.fl, %bb.ab ], [ %i.eh, %.lr.ph.split.us.i.us.i.i.i.preheader ] ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !alias.scope !121, !noalias !125, !noundef !4
  %i.et = and i8 %i.es, 63
  %i.eu = zext nneg i8 %i.et to i64
  %5 = shl nuw i64 1, %i.eu
  %6 = and i64 %5, %i.ek
  %.not.us.i.us.i.i.i = icmp eq i64 %6, 0
  br i1 %.not.us.i.us.i.i.i, label %bb.ab, label %.preheader45.i.us.us.i.i.i.preheader

.preheader45.i.us.us.i.i.i.preheader:             ; preds = %.lr.ph.split.us.i.us.i.i.i
  br i1 %.not19.us.i.us.us.i.i.i202, label %.preheader.i.us.i.i.i.preheader, label %.lr.ph204

.preheader45.i.us.us.i.i.i:                       ; preds = %.lr.ph204
  %.not19.us.i.us.us.i.i.i = icmp eq i64 %i.ev, 0
  br i1 %.not19.us.i.us.us.i.i.i, label %.preheader.i.us.i.i.i.preheader, label %.lr.ph204

.preheader.i.us.i.i.i.preheader:                  ; preds = %.preheader45.i.us.us.i.i.i, %.preheader45.i.us.us.i.i.i.preheader
  br i1 %exitcond72.not.i.us.i.i.i205.not, label %.lr.ph207, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i

.lr.ph204:                                        ; preds = %.preheader45.i.us.us.i.i.i.preheader, %.preheader45.i.us.us.i.i.i
  %.sroa.2.0.us.i.us.us.i.i.i203 = phi i64 [ %i.ev, %.preheader45.i.us.us.i.i.i ], [ %.fr159.i.i.i, %.preheader45.i.us.us.i.i.i.preheader ]
  %i.ev = add i64 %.sroa.2.0.us.i.us.us.i.i.i203, -1 ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !122, !noalias !126, !noundef !4
  %i.ey = add i64 %i.ev, %i.eq                    ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.cq
  tail call void @llvm.assume(i1 %i.ez)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ey
  %i.fb = load i8, ptr %i.fa, align 1, !alias.scope !121, !noalias !125, !noundef !4
  %.not21.us.i.us.us.i.i.i = icmp eq i8 %i.ex, %i.fb
  br i1 %.not21.us.i.us.us.i.i.i, label %.preheader45.i.us.us.i.i.i, label %.split.us.us.i.i.i

.split.us.us.i.i.i:                               ; preds = %.lr.ph204
  %.neg.us.i.us.i.i.i = sub i64 %.sink.i12.us.i36.i.i, %.fr159.i.i.i
  %i.fc = add i64 %.neg.us.i.us.i.i.i, %i.ev
  br label %bb.ab

.preheader.i.us.i.i.i:                            ; preds = %.lr.ph207
  %i.fd = add i64 %.sroa.09.0.us.i.us.i.i.i206, 1 ; 2 uses
  %exitcond72.not.i.us.i.i.i = icmp eq i64 %i.fd, %umax71.i10.i.i.i
  br i1 %exitcond72.not.i.us.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, label %.lr.ph207

.lr.ph207:                                        ; preds = %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i
  %.sroa.09.0.us.i.us.i.i.i206 = phi i64 [ %i.fd, %.preheader.i.us.i.i.i ], [ %.fr159.i.i.i, %.preheader.i.us.i.i.i.preheader ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.09.0.us.i.us.i.i.i206
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !122, !noalias !126, !noundef !4
  %i.fg = add i64 %.sroa.09.0.us.i.us.i.i.i206, %i.eq ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.cq
  tail call void @llvm.assume(i1 %i.fh)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fg
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !121, !noalias !125, !noundef !4
  %.not20.us.i.us.i.i.i = icmp eq i8 %i.ff, %i.fj
  br i1 %.not20.us.i.us.i.i.i, label %.preheader.i.us.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph207
  %i.fk = sub i64 %.sink.i12.us.i36.i.i, %i.eo
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.split.us.us.i.i.i, %.lr.ph.split.us.i.us.i.i.i
  %.sink.i12.us.i.i.i = phi i64 [ %i.fc, %.split.us.us.i.i.i ], [ %i.fk, %bb.aa ], [ %i.eq, %.lr.ph.split.us.i.us.i.i.i ] ; 2 uses
  %i.fl = sub i64 %.sink.i12.us.i.i.i, %i.cu      ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.cq
  br i1 %i.fm, label %.lr.ph.split.us.i.us.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i

.lr.ph.i9.split.i.i.i:                            ; preds = %.lr.ph.i9.i.i.i
  %.not19.us.i.i.i.i = icmp eq i64 %.fr159.i.i.i, 0
  br i1 %.not19.us.i.i.i.i, label %.lr.ph.split.us.i.us92.i.i.i.preheader, label %.lr.ph.split.us.i.i.preheader.i.i

.lr.ph.split.us.i.us92.i.i.i.preheader:           ; preds = %.lr.ph.i9.split.i.i.i
  %exitcond72.not.i.us97.i.i.i197 = icmp eq i64 %umax71.i10.i.i.i, 0
  br label %.lr.ph.split.us.i.us92.i.i.i

.lr.ph.split.us.i.i.preheader.i.i:                ; preds = %.lr.ph.i9.split.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.eh
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !121, !noalias !125, !noundef !4
  %i.fp = and i8 %i.fo, 63
  %i.fq = zext nneg i8 %i.fp to i64
  %7 = shl nuw i64 1, %i.fq
  %8 = and i64 %7, %i.ek
  %.not.us.i.i34.i.i = icmp eq i64 %8, 0
  br i1 %.not.us.i.i34.i.i, label %.lr.ph.i.i, label %.split43.i.i.i.i.invoke

.lr.ph.split.us.i.us92.i.i.i:                     ; preds = %.lr.ph.split.us.i.us92.i.i.i.preheader, %bb.ad
  %i.fr = phi i64 [ %i.gf, %bb.ad ], [ %i.eh, %.lr.ph.split.us.i.us92.i.i.i.preheader ] ; 5 uses
  %i.fs = phi i64 [ %.sink.i12.us99.i.i.i, %bb.ad ], [ %.promoted.i6.i.i.i, %.lr.ph.split.us.i.us92.i.i.i.preheader ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fr
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !121, !noalias !125, !noundef !4
  %i.fv = and i8 %i.fu, 63
  %i.fw = zext nneg i8 %i.fv to i64
  %9 = shl nuw i64 1, %i.fw
  %10 = and i64 %9, %i.ek
  %.not.us.i.us93.i.i.i = icmp eq i64 %10, 0
  br i1 %.not.us.i.us93.i.i.i, label %bb.ad, label %.preheader.i.us95.i.i.i.preheader

.preheader.i.us95.i.i.i.preheader:                ; preds = %.lr.ph.split.us.i.us92.i.i.i
  br i1 %exitcond72.not.i.us97.i.i.i197, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, label %.lr.ph199

.preheader.i.us95.i.i.i:                          ; preds = %.lr.ph199
  %i.fx = add i64 %.sroa.09.0.us.i.us96.i.i.i198, 1 ; 2 uses
  %exitcond72.not.i.us97.i.i.i = icmp eq i64 %i.fx, %umax71.i10.i.i.i
  br i1 %exitcond72.not.i.us97.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, label %.lr.ph199

.lr.ph199:                                        ; preds = %.preheader.i.us95.i.i.i.preheader, %.preheader.i.us95.i.i.i
  %.sroa.09.0.us.i.us96.i.i.i198 = phi i64 [ %i.fx, %.preheader.i.us95.i.i.i ], [ 0, %.preheader.i.us95.i.i.i.preheader ] ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.09.0.us.i.us96.i.i.i198
  %i.fz = load i8, ptr %i.fy, align 1, !alias.scope !122, !noalias !126, !noundef !4
  %i.ga = add nuw i64 %.sroa.09.0.us.i.us96.i.i.i198, %i.fr ; 2 uses
  %i.gb = icmp ult i64 %i.ga, %i.cq
  tail call void @llvm.assume(i1 %i.gb)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ga
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !121, !noalias !125, !noundef !4
  %.not20.us.i.us98.i.i.i = icmp eq i8 %i.fz, %i.gd
  br i1 %.not20.us.i.us98.i.i.i, label %.preheader.i.us95.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph199
  %i.ge = sub i64 %i.fs, %i.eo
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.split.us.i.us92.i.i.i
  %.sink.i12.us99.i.i.i = phi i64 [ %i.fr, %.lr.ph.split.us.i.us92.i.i.i ], [ %i.ge, %bb.ac ] ; 2 uses
  %i.gf = sub i64 %.sink.i12.us99.i.i.i, %i.cu    ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.cq
  br i1 %i.gg, label %.lr.ph.split.us.i.us92.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.gm
  %i.gi = load i8, ptr %i.gh, align 1, !alias.scope !121, !noalias !125, !noundef !4
  %i.gj = and i8 %i.gi, 63
  %i.gk = zext nneg i8 %i.gj to i64
  %11 = shl nuw i64 1, %i.gk
  %12 = and i64 %11, %i.ek
  %.not.us.i.i.i.i = icmp eq i64 %12, 0
  br i1 %.not.us.i.i.i.i, label %.lr.ph.i.i, label %.split43.i.i.i.i.invoke

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.us.i.i.preheader.i.i, %.lr.ph.split.us.i.i.i.i
  %i.gl = phi i64 [ %i.gm, %.lr.ph.split.us.i.i.i.i ], [ %i.eh, %.lr.ph.split.us.i.i.preheader.i.i ]
  %i.gm = sub i64 %i.gl, %i.cu                    ; 3 uses
  %i.gn = icmp ult i64 %i.gm, %i.cq
  br i1 %i.gn, label %.lr.ph.split.us.i.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i

_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i: ; preds = %bb.s, %.lr.ph.i.i, %bb.ad, %bb.ab, %bb.z, %bb.q, %bb.m, %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  br label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit

_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i: ; preds = %.preheader46.i.i.i.i, %bb.u, %.preheader.i.us95.i.i.i.preheader, %.preheader.i.us95.i.i.i, %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i, %bb.l, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.i.i, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.i.i, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.i.i, %_RNvXsw_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i, %bb.g
  %.sroa.4.1.i.ph.i = phi i64 [ %i.bj, %bb.l ], [ 0, %_RNvXsw_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i ], [ %i.dg, %bb.u ], [ %.promoted104.i.i.i, %bb.g ], [ %i.eq, %.preheader.i.us.i.i.i.preheader ], [ %i.bj, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.i.i ], [ %i.bj, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.i.i ], [ %i.bj, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.i.i ], [ %i.fr, %.preheader.i.us95.i.i.i.preheader ], [ %i.eq, %.preheader.i.us.i.i.i ], [ %i.fr, %.preheader.i.us95.i.i.i ], [ %i.dg, %.preheader46.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  br label %bb.ae

_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.i: ; preds = %bb.o
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.gp = load i8, ptr %i.go, align 8, !alias.scope !103, !noalias !105, !noundef !4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !103, !noalias !105, !nonnull !4, !noundef !4
  %i.gs = invoke { i64, i64 } @_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr15memrchr_aligned(i8 noundef %i.gp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gr, i64 noundef %i.ci)
          to label %.noexc11 unwind label %bb.bt  ; 2 uses

.noexc11:                                         ; preds = %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.i
  %i.gt = extractvalue { i64, i64 } %i.gs, 0
  %i.gu = trunc nuw i64 %i.gt to i1
  %i.gv = extractvalue { i64, i64 } %i.gs, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  br i1 %i.gu, label %bb.ae, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit

bb.ae:                                            ; preds = %.noexc11, %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, %.split.us.i.i.i
  %.sroa.4.1.i88.i = phi i64 [ %.sroa.4.1.i.ph.i, %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i ], [ %i.gv, %.noexc11 ], [ 0, %.split.us.i.i.i ] ; 6 uses
  %i.gw = add i64 %.sroa.4.1.i88.i, 9             ; 10 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.an, %bb.ae
  %.sroa.03.0.i = phi i64 [ %i.gw, %bb.ae ], [ %i.hj, %bb.an ] ; 10 uses
  %i.gx = icmp eq i64 %.sroa.03.0.i, 0            ; 2 uses
  br i1 %i.gx, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not.i.i = icmp ult i64 %.sroa.03.0.i, %i.g
  br i1 %.not.i.i, label %bb.ah, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ag
  %i.gy = icmp eq i64 %.sroa.03.0.i, %i.g
  br i1 %i.gy, label %bb.ai, label %.split114.us.i.i.i.invoke

bb.ah:                                            ; preds = %bb.ag
  %i.gz = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.03.0.i
  %i.ha = load i8, ptr %i.gz, align 1, !alias.scope !127, !noalias !128, !noundef !4
  %i.hb = icmp sgt i8 %i.ha, -65
  br i1 %i.hb, label %bb.ai, label %.split114.us.i.i.i.invoke

bb.ai:                                            ; preds = %bb.ah, %.split.i.i, %bb.af
  %.not31.i = icmp eq i64 %i.g, %.sroa.03.0.i
  br i1 %.not31.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hc = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.03.0.i
  %i.hd = load i8, ptr %i.hc, align 1, !noalias !128, !noundef !4
  %i.he = add i8 %i.hd, -48
  %or.cond.i = icmp ult i8 %i.he, 10
  br i1 %or.cond.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.03.0.lcssa168.i = phi i64 [ %.sroa.03.0.i, %bb.aj ], [ %i.g, %bb.ai ] ; 15 uses
  br i1 %i.gx, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not.i39.i = icmp ult i64 %.sroa.03.0.lcssa168.i, %i.g
  br i1 %.not.i39.i, label %bb.am, label %.split.i40.i

.split.i40.i:                                     ; preds = %bb.al
  %i.hf = icmp eq i64 %.sroa.03.0.lcssa168.i, %i.g
  br i1 %i.hf, label %bb.ao, label %.split114.us.i.i.i.invoke

bb.am:                                            ; preds = %bb.al
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.03.0.lcssa168.i
  %i.hh = load i8, ptr %i.hg, align 1, !alias.scope !129, !noalias !128, !noundef !4
  %i.hi = icmp sgt i8 %i.hh, -65
  br i1 %i.hi, label %bb.ao, label %.split114.us.i.i.i.invoke

bb.an:                                            ; preds = %bb.aj
  %i.hj = add i64 %.sroa.03.0.i, 1
  br label %bb.af

bb.ao:                                            ; preds = %bb.am, %.split.i40.i, %bb.ak
  %i.hk = sub nuw i64 %i.g, %.sroa.03.0.lcssa168.i
  %i.hl = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.03.0.lcssa168.i ; 2 uses
  %i.hm = invoke noundef zeroext i1 @_RNvMNtCs8Chj7Szqq0n_4core5sliceSh11starts_withCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hl, i64 noundef %i.hk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 8)
          to label %.noexc13 unwind label %bb.bt

.noexc13:                                         ; preds = %bb.ao
  br i1 %i.hm, label %bb.ap, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit

bb.ap:                                            ; preds = %.noexc13
  %i.hn = add i64 %.sroa.03.0.lcssa168.i, 8       ; 9 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aw, %bb.ap
  %.sroa.010.0.i = phi i64 [ %i.hn, %bb.ap ], [ %i.hz, %bb.aw ] ; 11 uses
  %i.ho = icmp eq i64 %.sroa.010.0.i, 0
  br i1 %i.ho, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not.i44.i = icmp ult i64 %.sroa.010.0.i, %i.g
  br i1 %.not.i44.i, label %bb.as, label %.split.i45.i

.split.i45.i:                                     ; preds = %bb.ar
  %i.hp = icmp eq i64 %.sroa.010.0.i, %i.g
  br i1 %i.hp, label %bb.at, label %.split114.us.i.i.i.invoke

bb.as:                                            ; preds = %bb.ar
  %i.hq = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.010.0.i
  %i.hr = load i8, ptr %i.hq, align 1, !alias.scope !130, !noalias !128, !noundef !4
  %i.hs = icmp sgt i8 %i.hr, -65
  br i1 %i.hs, label %bb.at, label %.split114.us.i.i.i.invoke

bb.at:                                            ; preds = %bb.as, %.split.i45.i, %bb.aq
  %.not34.i = icmp eq i64 %i.g, %.sroa.010.0.i
  br i1 %.not34.i, label %.thread.i, label %bb.au

.thread.i:                                        ; preds = %bb.at
  %i.ht = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.ht)
  br label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.hu = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.010.0.i
  %i.hv = load i8, ptr %i.hu, align 1, !noalias !128, !noundef !4
  %i.hw = add i8 %i.hv, -48
  %or.cond1.i = icmp ult i8 %i.hw, 10
  br i1 %or.cond1.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hx = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.hx)
  %i.hy = icmp ult i64 %.sroa.010.0.i, %i.g
  br i1 %i.hy, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit, label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.hz = add i64 %.sroa.010.0.i, 1
  br label %bb.aq

bb.ax:                                            ; preds = %bb.av, %.thread.i
  %.sroa.010.0.lcssa165214.i = phi i64 [ %i.g, %.thread.i ], [ %.sroa.010.0.i, %bb.av ] ; 5 uses
  %i.ia = icmp ugt i64 %i.gw, %.sroa.03.0.lcssa168.i
  %i.ib = icmp ugt i64 %.sroa.03.0.lcssa168.i, %i.g
  %or.cond.i35.i = or i1 %i.ia, %i.ib
  br i1 %or.cond.i35.i, label %.split114.us.i.i.i.invoke, label %bb.ay, !prof !131

bb.ay:                                            ; preds = %bb.ax
  %i.ic = icmp eq i64 %i.gw, %i.g
  br i1 %i.ic, label %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.id = icmp eq i64 %i.gw, 0
  br i1 %i.id, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %i.ie = icmp eq i64 %.sroa.03.0.lcssa168.i, %i.g
  br i1 %i.ie, label %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i, label %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i

bb.bb:                                            ; preds = %bb.az
  %i.if = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gw
  %i.ig = load i8, ptr %i.if, align 1, !alias.scope !132, !noalias !128, !noundef !4
  %i.ih = icmp sgt i8 %i.ig, -65
  br i1 %i.ih, label %bb.ba, label %.split114.us.i.i.i.invoke, !prof !133

_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i: ; preds = %bb.ba
  %i.ii = load i8, ptr %i.hl, align 1, !alias.scope !132, !noalias !128, !noundef !4
  %i.ij = icmp sgt i8 %i.ii, -65
  br i1 %i.ij, label %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i, label %.split114.us.i.i.i.invoke, !prof !134

_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i: ; preds = %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i, %bb.ba, %bb.ay
  %i.ik = sub nuw i64 %.sroa.03.0.lcssa168.i, %i.gw ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gw ; 3 uses
  switch i64 %i.ik, label %thread-pre-split.i.i [
    i64 0, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit
    i64 1, label %bb.bc
  ]

bb.bc:                                            ; preds = %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i
  %i.im = load i8, ptr %i.il, align 1, !alias.scope !135, !noalias !136, !noundef !4 ; 2 uses
  switch i8 %i.im, label %bb.bd [
    i8 43, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit
    i8 45, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit
  ]

thread-pre-split.i.i:                             ; preds = %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i
  %.pr.i.i = load i8, ptr %i.il, align 1, !alias.scope !135, !noalias !136
  br label %bb.bd

bb.bd:                                            ; preds = %thread-pre-split.i.i, %bb.bc
  %i.in = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.im, %bb.bc ]
  %cond.i.i = icmp eq i8 %i.in, 43                ; 2 uses
  %i.io = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.ik, %i.io      ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i49.i = getelementptr inbounds nuw i8, ptr %i.il, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.ip = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.ip, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.bd
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i50.i

.preheader56.i.i:                                 ; preds = %bb.be
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i212, i64 1
  %i.ir = add nsw i64 %.sroa.15.1.i.i211, -1      ; 2 uses
  %.not52.i.i = icmp eq i64 %i.ir, 0
end_hunk_1
