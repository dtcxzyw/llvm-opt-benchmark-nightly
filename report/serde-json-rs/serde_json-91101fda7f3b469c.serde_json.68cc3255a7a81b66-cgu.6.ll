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
define internal fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB6_5ErrorNtNtCsdnjrqM8ey3e_10serde_core2de5Error6customNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsEB8_(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not.i.i.i = icmp eq i64 %i.d, 0
  %i.e = lshr i64 %i.c, 1                         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !39
  %i.f = load i64, ptr %i.a, align 8, !range !40, !noalias !39, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !41, !noalias !39, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.c, label %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i.i.i, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !noalias !39
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #17, !noalias !39
  unreachable

_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.j, align 8, !noalias !39, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvYNvYeNtNtCsbqH9stoieM8_5alloc6borrow7ToOwned8to_ownedINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTReEE9call_onceCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !42
  br label %_RNvYNvYeNtNtCsbqH9stoieM8_5alloc6borrow7ToOwned8to_ownedINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTReEE9call_onceCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i

_RNvYNvYeNtNtCsbqH9stoieM8_5alloc6borrow7ToOwned8to_ownedINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTReEE9call_onceCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i: ; preds = %bb.d, %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i.i.i
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !43, !noalias !44
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !43, !noalias !44
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !43, !noalias !44
  br label %_RNvXsB_NtCsbqH9stoieM8_5alloc6stringNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsNtB5_8ToString9to_stringCs8ZPNfZ0ciAA_10serde_json.exit

bb.e:                                             ; preds = %bb.a
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %0, ptr noundef nonnull %1), !noalias !45
  br label %_RNvXsB_NtCsbqH9stoieM8_5alloc6stringNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsNtB5_8ToString9to_stringCs8ZPNfZ0ciAA_10serde_json.exit

_RNvXsB_NtCsbqH9stoieM8_5alloc6stringNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsNtB5_8ToString9to_stringCs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %_RNvYNvYeNtNtCsbqH9stoieM8_5alloc6borrow7ToOwned8to_ownedINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTReEE9call_onceCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, %bb.e
  %i.n = call noundef nonnull align 8 ptr @_RNvNtCs8ZPNfZ0ciAA_10serde_json5error10make_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.n
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
define noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
define noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
define noundef nonnull align 8 ptr @_RNvNtCs8ZPNfZ0ciAA_10serde_json5error10make_error(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 29 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !100, !noalias !101, !nonnull !4, !noundef !4 ; 23 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !100, !noalias !101, !noundef !4 ; 39 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !102
  invoke void @_RNvMsu_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 9)
          to label %.noexc unwind label %bb.bt

.noexc:                                           ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.h = load i64, ptr %i.a, align 8, !range !104, !alias.scope !103, !noalias !105, !noundef !4
  switch i64 %i.h, label %default.unreachable [
    i64 0, label %.preheader.i.i.i
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

.preheader.i.i.i:                                 ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.j = load i8, ptr %i.i, align 2, !range !106, !alias.scope !103, !noalias !105
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !103, !noalias !105, !nonnull !4 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !103, !noalias !105 ; 8 uses
  br i1 %i.k, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.promoted152.i.i.i = load i8, ptr %i.p, align 1, !alias.scope !103, !noalias !105
  %.promoted104.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !103, !noalias !105 ; 12 uses
  %i.r = trunc i8 %.promoted152.i.i.i to i1       ; 2 uses
  %i.s = icmp eq i64 %.promoted104.i.i.i, 0
  br i1 %i.s, label %.split.us.i.i.i, label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %.lr.ph.preheader.i.i.i
  %.not.i.i.us.i.peel.i.i = icmp ult i64 %.promoted104.i.i.i, %i.o
  br i1 %.not.i.i.us.i.peel.i.i, label %bb.b, label %.split.i.i.us.i.peel.i.i

.split.i.i.us.i.peel.i.i:                         ; preds = %.lr.ph41.i.i
  %i.t = icmp eq i64 %.promoted104.i.i.i, %i.o
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
  %i.ce = phi i64 [ %i.hi, %bb.ax ], [ 0, %.split.i.i.us.i.peel.i.i ], [ %i.hi, %bb.bb ], [ %.sroa.03.0.lcssa168.i, %.split.i40.i ], [ %i.hz, %bb.bh ], [ 0, %bb.k ], [ 0, %.split.i.i.us.i.i.i ], [ 0, %bb.b ], [ %.sroa.010.0.i, %.split.i45.i ], [ %.sroa.03.0.lcssa168.i, %bb.am ], [ %i.hz, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %i.hi, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i ], [ %.sroa.010.0.i, %bb.as ], [ %.sroa.03.0.i, %bb.ah ], [ %.sroa.03.0.i, %.split.i.i ]
  %i.cf = phi i64 [ %.sroa.03.0.lcssa168.i, %bb.ax ], [ %.promoted104.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.sroa.03.0.lcssa168.i, %bb.bb ], [ %i.g, %.split.i40.i ], [ %.sroa.010.0.lcssa165214.i, %bb.bh ], [ %i.bj, %bb.k ], [ %i.bj, %.split.i.i.us.i.i.i ], [ %.promoted104.i.i.i, %bb.b ], [ %i.g, %.split.i45.i ], [ %i.g, %bb.am ], [ %.sroa.010.0.lcssa165214.i, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %.sroa.03.0.lcssa168.i, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i ], [ %i.g, %bb.as ], [ %i.g, %bb.ah ], [ %i.g, %.split.i.i ]
  %i.cg = phi ptr [ @11, %bb.ax ], [ @49, %.split.i.i.us.i.peel.i.i ], [ @11, %bb.bb ], [ @8, %.split.i40.i ], [ @12, %bb.bh ], [ @49, %bb.k ], [ @49, %.split.i.i.us.i.i.i ], [ @49, %bb.b ], [ @10, %.split.i45.i ], [ @8, %bb.am ], [ @12, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ @11, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i ], [ @10, %bb.as ], [ @7, %bb.ah ], [ @7, %.split.i.i ]
  invoke void @_RNvNtCs8Chj7Szqq0n_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cc, i64 noundef %i.cd, i64 noundef %i.ce, i64 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg) #19
          to label %.split114.us.i.i.i.cont unwind label %bb.bt

.split114.us.i.i.i.cont:                          ; preds = %.split114.us.i.i.i.invoke
  unreachable

default.unreachable:                              ; preds = %.noexc
  unreachable
end_hunk_0
begin_hunk_1_@_RNvXs2_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error6source:bb.a
bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.g, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5ErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !147, !noalias !148, !noundef !4
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_9ErrorCodeNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs4_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_9ErrorImplNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !149
  store ptr %i.b, ptr %i.a, align 8, !noalias !149
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_9ErrorCodeNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !149
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.h, align 8, !noalias !149
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !149
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.g, ptr %i.i, align 8, !noalias !149
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !149
  %i.j = load ptr, ptr %1, align 8, !alias.scope !148, !noalias !147, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !148, !noalias !147, !nonnull !4, !align !8, !noundef !4
  %i.m = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noundef nonnull @37, ptr noundef nonnull %i.a), !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !149
  br label %_RNvXs4_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_9ErrorImplNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt.exit

_RNvXs4_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_9ErrorImplNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.m, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_9ErrorImplNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_9ErrorCodeNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_9ErrorCodeNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.g, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.f, ptr %i.h, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.i = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !align !8, !noundef !4
  %i.l = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @37, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.l, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5ErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !153
  store i64 0, ptr %i.c, align 8, !noalias !153
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !153
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !153
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.g, align 8, !noalias !153
  store ptr %i.c, ptr %i.b, align 8, !noalias !153
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @43, ptr %i.h, align 8, !noalias !153
  %i.i = invoke noundef zeroext i1 @_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_9ErrorCodeNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !154

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #18
          to label %common.resume unwind label %bb.e, !noalias !154

bb.c:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.d, label %_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeNtB5_12SpecToString14spec_to_stringBC_.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #19
          to label %.noexc.i unwind label %bb.b, !noalias !154

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16, !noalias !154
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.h, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.j, %bb.b ], [ %i.t, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeNtB5_12SpecToString14spec_to_stringBC_.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !153
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsr_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.l, ptr %i.n, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.m, ptr %i.o, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.p = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !align !8, !noundef !4
  %i.s = invoke noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, ptr noundef nonnull @38, ptr noundef nonnull %i.d)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeNtB5_12SpecToString14spec_to_stringBC_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #18
          to label %common.resume unwind label %bb.j

bb.g:                                             ; preds = %_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeNtB5_12SpecToString14spec_to_stringBC_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %i.s

bb.j:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5ErrorNtNtCsdnjrqM8ey3e_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_14JsonUnexpectedNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtRDNtNtCsdnjrqM8ey3e_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCs8ZPNfZ0ciAA_10serde_json, ptr %.sroa.46.0..sroa_idx, align 8
  %i.f = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB6_5ErrorNtNtCsdnjrqM8ey3e_10serde_core2de5Error6customNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsEB8_(ptr noundef nonnull @39, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.f
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5ErrorNtNtCsdnjrqM8ey3e_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_14JsonUnexpectedNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtRDNtNtCsdnjrqM8ey3e_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCs8ZPNfZ0ciAA_10serde_json, ptr %.sroa.46.0..sroa_idx, align 8
  %i.f = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB6_5ErrorNtNtCsdnjrqM8ey3e_10serde_core2de5Error6customNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsEB8_(ptr noundef nonnull @40, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_14JsonUnexpectedNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 1                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = load i8, ptr %0, align 8, !range !156, !noundef !4
  switch i8 %i.e, label %bb.b [
    i8 3, label %bb.c
    i8 7, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.f = call noundef zeroext i1 @_RNvXNtCsdnjrqM8ey3e_10serde_core2deNtB2_10UnexpectedNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load double, ptr %i.g, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = call { ptr, i64 } @_RINvMs6_CshejLTejVTJS_4zmijNtB6_6Buffer6formatdECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull dereferenceable(24) %i.c, double noundef %i.h) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  store ptr %i.j, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.k, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8ZPNfZ0ciAA_10serde_json, ptr %.sroa.43.0..sroa_idx, align 8
  %i.m = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !align !8, !noundef !4
  %i.p = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noundef nonnull @41, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.0.1.in = phi i1 [ %i.f, %bb.b ], [ %i.p, %bb.c ], [ %i.q, %bb.d ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs8Chj7Szqq0n_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !159, !noundef !4 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !159, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !159, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !159
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !165
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !166, !noalias !165, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !166, !noalias !165, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !166, !noalias !165
  br label %_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !166, !noalias !165
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCs8Chj7Szqq0n_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

end_hunk_1
