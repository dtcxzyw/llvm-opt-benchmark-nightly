Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.05?download=true
inline.NumInlined: 515
inline.NumDeleted: 183
begin_hunk_0_@_RNvXNtCsgbWeKYPjk8w_3syn3extNtCs6et67aoV1xO_11proc_macro25IdentNtB2_8IdentExt5unraw:bb.a
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.n
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.q:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCsgbWeKYPjk8w_3syn3extNtCs6et67aoV1xO_11proc_macro25IdentNtB2_8IdentExt9parse_any(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvXNtB8_3extNtCs6et67aoV1xO_11proc_macro25IdentNtBY_8IdentExt9parse_any0B17_EB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsgbWeKYPjk8w_3syn4pathNtB2_4PathINtNtCsj6eKBz9Db1c_4core7convert4FromNtCs6et67aoV1xO_11proc_macro25IdentE4fromB4_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 0, ptr %i.c, align 8
  store i64 0, ptr %i.b, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !983
  store i64 -9223372036854775808, ptr %i.a, align 8, !alias.scope !986, !noalias !987
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b) #16
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCsgbWeKYPjk8w_3syn5identNtCs6et67aoV1xO_11proc_macro25IdentINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB4_5token10UnderscoreE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsx_Cs6et67aoV1xO_11proc_macro2NtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 1, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCsgbWeKYPjk8w_3syn4path7parsingNtB4_4PathNtNtB6_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs5_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB7_4Path12parse_helper(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCsgbWeKYPjk8w_3syn5ident7parsingNtCs6et67aoV1xO_11proc_macro25IdentNtNtB6_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvXNtNtB8_5ident7parsingNtCs6et67aoV1xO_11proc_macro25IdentNtB6_5Parse5parse0B1j_EB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCsgbWeKYPjk8w_3syn3extNtNtB5_7private8IdentAnyNtNtNtB7_5token7private11CustomToken4peek(ptr noundef %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor5ident(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef %0, ptr noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !77, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %i.d = icmp eq i8 %i.c, -1
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn6buffer6CursorEEEB1B_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %i.e = icmp eq i8 %i.c, 2
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn6buffer6CursorEEEB1B_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1000, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn6buffer6CursorEEEB1B_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1000, !nonnull !5, !noundef !5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #15, !noalias !1000
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn6buffer6CursorEEEB1B_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn6buffer6CursorEEEB1B_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.h = icmp ne i8 %i.c, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCsgbWeKYPjk8w_3syn5identNtCs6et67aoV1xO_11proc_macro25IdentINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB7_5token8SelfTypeE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsx_Cs6et67aoV1xO_11proc_macro2NtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 4, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs0_NtCsgbWeKYPjk8w_3syn5tokenNtNtNtB7_3ext7private8IdentAnyNtB5_5Token4peekB7_(ptr noundef %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor5ident(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef %0, ptr noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !77, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  %i.d = icmp eq i8 %i.c, -1
  br i1 %i.d, label %_RNvXs0_NtCsgbWeKYPjk8w_3syn3extNtNtB5_7private8IdentAnyNtNtNtB7_5token7private11CustomToken4peek.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  %i.e = icmp eq i8 %i.c, 2
  br i1 %i.e, label %_RNvXs0_NtCsgbWeKYPjk8w_3syn3extNtNtB5_7private8IdentAnyNtNtNtB7_5token7private11CustomToken4peek.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1013, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.g, label %_RNvXs0_NtCsgbWeKYPjk8w_3syn3extNtNtB5_7private8IdentAnyNtNtNtB7_5token7private11CustomToken4peek.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1013, !nonnull !5, !noundef !5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #15, !noalias !1013
  br label %_RNvXs0_NtCsgbWeKYPjk8w_3syn3extNtNtB5_7private8IdentAnyNtNtNtB7_5token7private11CustomToken4peek.exit

_RNvXs0_NtCsgbWeKYPjk8w_3syn3extNtNtB5_7private8IdentAnyNtNtNtB7_5token7private11CustomToken4peek.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.h = icmp ne i8 %i.c, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path10AssocConstNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [168 x i8], align 8               ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.f = load i8, ptr %i.e, align 8, !range !26, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.f, 2                      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !1014, !noalias !1017
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.k = load i8, ptr %i.j, align 8, !range !976, !alias.scope !1014, !noalias !1017, !noundef !5
  %i.l = inttoptr i64 %.val.i to ptr
  %.sroa.02.sroa.5.0.insert.ext = zext nneg i8 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.02.sroa.0.0 = phi ptr [ %i.h, %bb.b ], [ %i.l, %bb.c ] ; 3 uses
  %.sroa.02.sroa.5.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.02.sroa.5.0.insert.ext, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = load i64, ptr %1, align 8, !range !73, !noundef !5
  %.not16 = icmp eq i64 %i.m, -1
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i32, ptr %i.n, align 8, !range !444, !alias.scope !1022, !noalias !1019, !noundef !5 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.val.i18 = load i64, ptr %i.p, align 4, !alias.scope !1022, !noalias !1019
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.val10.i = load i32, ptr %i.q, align 4, !alias.scope !1022, !noalias !1019
  invoke void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_4path15GenericArgumentNtNtB6_5token5CommaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  store i64 -1, ptr %i.c, align 8
  br label %bb.l

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit: ; preds = %bb.j, %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.y, %bb.k ], [ %i.y, %bb.j ]
  %i.r = icmp eq i64 %.sroa.02.sroa.5.0, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.r
  br i1 %or.cond, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.sroa.0.0) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.02.sroa.0.0, i64 noundef range(i64 1, 0) %.sroa.02.sroa.5.0, i64 noundef 1) #15, !noalias !1024
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit

bb.h:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit

bb.i:                                             ; preds = %bb.e
  %i.t = trunc nuw i32 %i.o to i1
  %.sroa.5.0.i = select i1 %i.t, i64 %.val.i18, i64 undef
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val11.i = load i32, ptr %i.u, align 8, !alias.scope !1022, !noalias !1019
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %i.o, ptr %i.v, align 8, !alias.scope !1019, !noalias !1022
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !1019, !noalias !1022
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %.val10.i, ptr %i.w, align 4, !alias.scope !1019, !noalias !1022
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %.val11.i, ptr %i.x, align 8, !alias.scope !1019, !noalias !1022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.j:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load i64, ptr %i.c, align 8, !range !73, !alias.scope !1029, !noundef !5
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4path15GenericArgumentNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit unwind label %bb.n, !inline_history !1032

bb.l:                                             ; preds = %bb.f, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.val = load i32, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_RNvXsf_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr4ExprNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.ac)
          to label %bb.m unwind label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %.sroa.02.sroa.0.0, ptr %i.ad, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %.sroa.02.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %i.f, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %.val, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.af, ptr noundef nonnull align 8 dereferenceable(168) %i.b, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.n:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_4PathNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path8printing10print_path(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, i8 noundef 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsgbWeKYPjk8w_3syn5identNtCs6et67aoV1xO_11proc_macro25IdentINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB7_5token5SuperE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsx_Cs6et67aoV1xO_11proc_macro2NtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 5, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path9AssocTypeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([336 x i8]) align 8 captures(none) dereferenceable(336) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(336) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [248 x i8], align 8               ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.f = load i8, ptr %i.e, align 8, !range !26, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.f, 2                      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !1033, !noalias !1036
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.k = load i8, ptr %i.j, align 8, !range !976, !alias.scope !1033, !noalias !1036, !noundef !5
  %i.l = inttoptr i64 %.val.i to ptr
  %.sroa.02.sroa.5.0.insert.ext = zext nneg i8 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.02.sroa.0.0 = phi ptr [ %i.h, %bb.b ], [ %i.l, %bb.c ] ; 3 uses
  %.sroa.02.sroa.5.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.02.sroa.5.0.insert.ext, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !73, !noundef !5
  %.not16 = icmp eq i64 %i.n, -1
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.p = load i32, ptr %i.o, align 8, !range !444, !alias.scope !1041, !noalias !1038, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 284
  %.val.i18 = load i64, ptr %i.q, align 4, !alias.scope !1041, !noalias !1038
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 292
  %.val10.i = load i32, ptr %i.r, align 4, !alias.scope !1041, !noalias !1038
  invoke void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_4path15GenericArgumentNtNtB6_5token5CommaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  store i64 -1, ptr %i.c, align 8
  br label %bb.l

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit: ; preds = %bb.j, %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.z, %bb.k ], [ %i.z, %bb.j ]
  %i.s = icmp eq i64 %.sroa.02.sroa.5.0, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.s
  br i1 %or.cond, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.sroa.0.0) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.02.sroa.0.0, i64 noundef range(i64 1, 0) %.sroa.02.sroa.5.0, i64 noundef 1) #15, !noalias !1043
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit

bb.i:                                             ; preds = %bb.e
  %i.u = trunc nuw i32 %i.p to i1
  %.sroa.5.0.i = select i1 %i.u, i64 %.val.i18, i64 undef
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 296
  %.val11.i = load i32, ptr %i.v, align 8, !alias.scope !1041, !noalias !1038
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %i.p, ptr %i.w, align 8, !alias.scope !1038, !noalias !1041
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !1038, !noalias !1041
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %.val10.i, ptr %i.x, align 4, !alias.scope !1038, !noalias !1041
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %.val11.i, ptr %i.y, align 8, !alias.scope !1038, !noalias !1041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.j:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load i64, ptr %i.c, align 8, !range !73, !alias.scope !1048, !noundef !5
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4path15GenericArgumentNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit unwind label %bb.n, !inline_history !1032

bb.l:                                             ; preds = %bb.f, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.val = load i32, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs11_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty4TypeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1)
          to label %bb.m unwind label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %.sroa.02.sroa.0.0, ptr %i.ad, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 %.sroa.02.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i8 %i.f, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 %.val, ptr %i.af, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(248) %i.b, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.n:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB7_30AngleBracketedGenericArgumentsNtNtB9_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [12 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_5token7PathSepEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %1)
  %i.c = load i64, ptr %i.b, align 8, !range !73, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.511.0.copyload = load i32, ptr %.sroa.511.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6, i64 12, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.e, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.511.0.copyload, ptr %.sroa.514.0..sroa_idx, align 4
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @_RNvMs0_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB7_30AngleBracketedGenericArguments8do_parse(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, ptr noundef nonnull align 8 %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_11PathSegmentNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path8printing18print_path_segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, i8 noundef 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCsgbWeKYPjk8w_3syn3extNtCs6et67aoV1xO_11proc_macro211TokenStreamNtB5_14TokenStreamExt6append(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvXs7_NtCs6et67aoV1xO_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCsgbWeKYPjk8w_3syn5identNtCs6et67aoV1xO_11proc_macro25IdentINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB7_5token5CrateE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsx_Cs6et67aoV1xO_11proc_macro2NtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 5, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB7_29ParenthesizedGenericArgumentsNtNtB9_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.66 = alloca [16 x i8], align 8           ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [64 x i8], align 8                ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvNtCsgbWeKYPjk8w_3syn5group12parse_parens(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull align 8 %1)
  %i.g = load i64, ptr %i.a, align 8, !range !546, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_2ty8NamedArgNtNtB4_5token5CommaE21parse_terminated_withB4_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noundef nonnull align 8 %i.f, ptr noundef nonnull @_RNvNvXs2_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB9_29ParenthesizedGenericArgumentsNtNtBb_5parse5Parse5parse17type_as_named_arg)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #16
          to label %common.resume unwind label %bb.ak

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !range !73, !noundef !5 ; 2 uses
  %i.n = icmp eq i64 %i.m, -1
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.n, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1060, !noundef !5 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load i64, ptr %i.s, align 8, !noalias !1063, !noundef !5
  %i.v = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.v, ptr %i.s, align 8, !noalias !1063
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.i, label %common.resume

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #19
          to label %common.resume unwind label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1077, !noundef !5 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load i64, ptr %i.y, align 8, !noalias !1078, !noundef !5
  %i.ab = add i64 %i.aa, -1                       ; 2 uses
  store i64 %i.ab, ptr %i.y, align 8, !noalias !1078
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit

bb.l:                                             ; preds = %bb.k
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #19
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit

bb.m:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.aa, %bb.al, %bb.ac, %bb.ad, %bb.ae, %bb.s, %bb.t, %bb.u, %bb.g, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.ac ], [ %i.q, %bb.g ], [ %i.ak, %bb.s ], [ %i.q, %bb.i ], [ %i.q, %bb.h ], [ %i.ak, %bb.u ], [ %i.ak, %bb.t ], [ %i.az, %bb.ae ], [ %i.az, %bb.ad ], [ %i.ay, %bb.aa ], [ %i.ae, %bb.al ], [ %i.l, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit: ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aj
end_hunk_0
begin_hunk_1_@_RNvXs5_NtCsgbWeKYPjk8w_3syn4spanNtCs6et67aoV1xO_11proc_macro24SpanINtB5_9IntoSpansNtNtBw_5extra9DelimSpanE10into_spans:bb.a
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCs6et67aoV1xO_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a)
  call void @_RNvMsr_Cs6et67aoV1xO_11proc_macro2NtB5_5Group3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i8 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvMsr_Cs6et67aoV1xO_11proc_macro2NtB5_5Group8set_span(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #16
          to label %common.resume unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.b, align 8, !range !444, !noundef !5 ; 2 uses
  %i.e = trunc nuw i32 %i.d to i1                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load i32, ptr %i.g, align 4, !range !949
  %i.i = load i32, ptr %i.f, align 4, !range !949
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %i.k = load i32, ptr %i.j, align 8, !range !949
  %.sroa.6.0 = select i1 %i.e, i32 undef, i32 %i.k
  %.sroa.5.0 = select i1 %i.e, i32 undef, i32 %i.i
  %.sroa.0.0 = select i1 %i.e, i32 0, i32 %i.h
  store i32 %.sroa.0.0, ptr %0, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 4
  %i.l = icmp eq i32 %i.d, 0
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !alias.scope !1162, !noundef !5
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvXs0_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.m)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit

bb.f:                                             ; preds = %bb.c
  invoke void @_RNvXs0_NtCs6et67aoV1xO_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  %i.q = load ptr, ptr %i.j, align 8, !alias.scope !1182, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noalias !1187, !noundef !5
  %i.s = add i64 %i.r, -1                         ; 2 uses
  store i64 %i.s, ptr %i.q, align 8, !noalias !1187
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.h, label %common.resume

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #19
          to label %common.resume unwind label %bb.k

bb.i:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  %i.u = load ptr, ptr %i.j, align 8, !alias.scope !1197, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noalias !1198, !noundef !5
  %i.w = add i64 %i.v, -1                         ; 2 uses
  store i64 %i.w, ptr %i.u, align 8, !noalias !1198
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit

bb.j:                                             ; preds = %bb.i
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #19
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit

bb.k:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.p, %bb.h ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.d, %bb.e, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.l:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_9AssocTypeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(336) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @_RNvXsq_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !73, !noundef !5
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path8printing39print_angle_bracketed_generic_arguments(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b, i8 noundef 2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @_RNvXs7p_NtCsgbWeKYPjk8w_3syn5tokenNtB6_2EqNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_RNvXNtCsgbWeKYPjk8w_3syn2tyNtB2_4TypeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_10AssocConstNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_RNvXsq_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = load i64, ptr %0, align 8, !range !73, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path8printing39print_angle_bracketed_generic_arguments(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, i8 noundef 2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_RNvXs7p_NtCsgbWeKYPjk8w_3syn5tokenNtB6_2EqNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn8generics8printing20print_const_argument(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_10ConstraintNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_RNvXsq_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !73, !noundef !5
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path8printing39print_angle_bracketed_generic_arguments(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b, i8 noundef 2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_RNvXs6X_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5ColonNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_RNvXNtNtCsgbWeKYPjk8w_3syn10punctuated8printingINtB4_10PunctuatedNtNtB6_8generics14TypeParamBoundNtNtB6_5token4PlusENtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokensB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_29ParenthesizedGenericArgumentsNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path8printing37print_parenthesized_generic_arguments(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, i8 noundef 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path10ConstraintNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i8, ptr %i.e, align 8, !range !26, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.f, 2                      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !1199, !noalias !1202
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = load i8, ptr %i.j, align 8, !range !976, !alias.scope !1199, !noalias !1202, !noundef !5
  %i.l = inttoptr i64 %.val.i to ptr
  %.sroa.02.sroa.5.0.insert.ext = zext nneg i8 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.02.sroa.0.0 = phi ptr [ %i.h, %bb.b ], [ %i.l, %bb.c ] ; 3 uses
  %.sroa.02.sroa.5.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.02.sroa.5.0.insert.ext, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !73, !noundef !5
  %.not16 = icmp eq i64 %i.n, -1
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = load i32, ptr %i.o, align 8, !range !444, !alias.scope !1207, !noalias !1204, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.val.i18 = load i64, ptr %i.q, align 4, !alias.scope !1207, !noalias !1204
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.val10.i = load i32, ptr %i.r, align 4, !alias.scope !1207, !noalias !1204
  invoke void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_4path15GenericArgumentNtNtB6_5token5CommaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  store i64 -1, ptr %i.c, align 8
  br label %bb.l

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit: ; preds = %bb.j, %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.z, %bb.k ], [ %i.z, %bb.j ]
  %i.s = icmp eq i64 %.sroa.02.sroa.5.0, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.s
  br i1 %or.cond, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.sroa.0.0) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.02.sroa.0.0, i64 noundef range(i64 1, 0) %.sroa.02.sroa.5.0, i64 noundef 1) #15, !noalias !1209
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit

bb.i:                                             ; preds = %bb.e
  %i.u = trunc nuw i32 %i.p to i1
  %.sroa.5.0.i = select i1 %i.u, i64 %.val.i18, i64 undef
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val11.i = load i32, ptr %i.v, align 8, !alias.scope !1207, !noalias !1204
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %i.p, ptr %i.w, align 8, !alias.scope !1204, !noalias !1207
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !1204, !noalias !1207
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %.val10.i, ptr %i.x, align 4, !alias.scope !1204, !noalias !1207
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %.val11.i, ptr %i.y, align 8, !alias.scope !1204, !noalias !1207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.j:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load i64, ptr %i.c, align 8, !range !73, !alias.scope !1214, !noundef !5
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4path15GenericArgumentNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit unwind label %bb.n, !inline_history !1032

bb.l:                                             ; preds = %bb.f, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val = load i32, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_8generics14TypeParamBoundNtNtB6_5token4PlusENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.m unwind label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.02.sroa.0.0, ptr %i.ad, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.02.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.f, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %.val, ptr %i.af, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.n:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvXs9_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_5QSelfNtNtB9_7spanned7Spanned4span(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvYRNtNvXs9_NtNtCsgbWeKYPjk8w_3syn4path8printingNtBd_5QSelfNtNtBf_7spanned7Spanned4span15QSelfDelimitersNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens17into_token_streamBf_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %i.c = call noundef i32 @_RNvNtCs6p3UlaoheVH_5quote7spanned10join_spans(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsC_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path15GenericArgumentNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([336 x i8]) align 8 captures(none) dereferenceable(336) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(336) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !187, !noundef !5 ; 3 uses
  %i.b = icmp ne i64 %i.a, 20
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -17
  %i.d = icmp samesign ugt i64 %i.a, 16
  %i.e = select i1 %i.d, i64 %i.c, i64 3
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs0_NtCsgbWeKYPjk8w_3syn8lifetimeNtB5_8LifetimeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
  store i64 17, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs11_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty4TypeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.h)
  store i64 18, ptr %0, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsf_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr4ExprNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.j)
  store i64 19, ptr %0, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path9AssocTypeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([336 x i8]) align 8 captures(none) dereferenceable(336) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %1)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs0_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path10AssocConstNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.l)
  store i64 21, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs9_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path10ConstraintNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.n)
  store i64 22, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %i.c = icmp ult i64 %i.b, 96076792050570582
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !align !4, !noundef !5 ; 2 uses
  %.not = icmp ne ptr %i.e, null                  ; 2 uses
  %.sroa.05.0 = zext i1 %.not to i64
  %i.f = add nuw nsw i64 %i.b, %.sroa.05.0
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not14 = icmp eq i64 %i.b, 0
  br i1 %.not14, label %bb.i, label %bb.h

bb.c:                                             ; preds = %bb.a
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #21
  unreachable

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.h
  %.sroa.0.0 = phi ptr [ %i.k, %bb.h ], [ %i.i, %bb.e ], [ %i.e, %bb.c ]
  ret ptr %.sroa.0.0

bb.h:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  br label %bb.g

bb.i:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #21
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsj6eKBz9Db1c_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsQ_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path29ParenthesizedGenericArgumentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_2ty8NamedArgNtNtB6_5token5CommaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RNvXsY_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_2ty10ReturnTypeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_2ty8NamedArgNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #16
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %i.e, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsR_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path4PathNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !range !444, !noundef !5 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvXsT_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path11PathSegmentNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone:bb.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsX_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path5QSelfNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i32, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeE13new_uninit_inBK_() ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1238
  invoke void @_RNvXs11_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty4TypeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %.val9)
          to label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 248, i64 noundef 8) #15
  resume { ptr, i32 } %i.e

_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.d, ptr noundef nonnull align 8 dereferenceable(248) %i.a, i64 248, i1 false), !noalias !1238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1238
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  %i.h = load i32, ptr %1, align 8, !range !444, !noundef !5 ; 2 uses
  %i.i = trunc nuw i32 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val10 = load i32, ptr %i.j, align 4
  %.sroa.5.0 = select i1 %i.i, i32 %.val10, i32 undef
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val8 = load i32, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.val, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.n, align 8
  store i32 %i.h, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5.0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.val8, ptr %i.p, align 4
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1241, !noundef !5 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1241, !nonnull !5, !noundef !5
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
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1241, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !1241
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !1244
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1247, !noalias !1244, !noundef !5 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1247, !noalias !1244, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !1247, !noalias !1244
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !1247, !noalias !1244
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCsgbWeKYPjk8w_3syn5identNtCs6et67aoV1xO_11proc_macro25IdentINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB6_5token9SelfValueE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsx_Cs6et67aoV1xO_11proc_macro2NtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB8_4path30AngleBracketedGenericArgumentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !range !444, !noundef !5 ; 2 uses
  %i.c = trunc nuw i32 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.val = load i64, ptr %i.d, align 4
  %.sroa.5.0 = select i1 %i.c, i64 %.val, i64 undef
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.val10 = load i32, ptr %i.e, align 4
  tail call void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_4path15GenericArgumentNtNtB6_5token5CommaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val11 = load i32, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.b, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.val10, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.val11, ptr %i.i, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB6_15GenericArgumentNtNtB8_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([336 x i8]) align 8 captures(none) dereferenceable(336) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.594 = alloca [104 x i8], align 8         ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [120 x i8], align 8               ; 7 uses
  %.sroa.676 = alloca [24 x i8], align 8          ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.11 = alloca [7 x i8], align 1            ; 5 uses
  %.sroa.071.sroa.0 = alloca [88 x i8], align 8   ; 3 uses
  %i.f = alloca [88 x i8], align 8                ; 5 uses
  %i.g = alloca [88 x i8], align 8                ; 13 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [248 x i8], align 8               ; 7 uses
  %.sroa.646 = alloca [24 x i8], align 8          ; 6 uses
  %i.j = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.8218 = alloca [7 x i8], align 1          ; 3 uses
  %i.k = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.632 = alloca [24 x i8], align 8          ; 6 uses
  %i.l = alloca [56 x i8], align 8                ; 9 uses
  %i.m = alloca [56 x i8], align 8                ; 8 uses
  %i.n = alloca [88 x i8], align 8                ; 5 uses
  %i.o = alloca [88 x i8], align 8                ; 13 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [104 x i8], align 8               ; 9 uses
  %i.r = alloca [248 x i8], align 8               ; 7 uses
  %.sroa.64 = alloca [24 x i8], align 8           ; 6 uses
  %i.s = alloca [248 x i8], align 8               ; 20 uses
  %i.t = alloca [168 x i8], align 8               ; 6 uses
  %i.u = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [32 x i8], align 8            ; 6 uses
  %i.v = tail call noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekNvNtB8_8lifetime8LifetimeEB8_(ptr noundef nonnull align 8 %1)
  br i1 %i.v, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.w = tail call noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekNvNtB8_3lit3LitEB8_(ptr noundef nonnull align 8 %1)
  br i1 %i.w, label %bb.j, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5peek2INvNtB8_5token4PlusNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
  br i1 %i.x, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvMNtCsgbWeKYPjk8w_3syn8lifetimeNtB2_8Lifetime9parse_any(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.u, ptr noundef nonnull align 8 %1)
  %i.y = load i64, ptr %i.u, align 8, !range !546, !noundef !5
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4, i64 32, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i64 [ -1, %bb.e ], [ 17, %bb.f ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %bb.h

bb.h:                                             ; preds = %bb.dl, %bb.dd, %bb.n, %bb.g
  ret void

bb.i:                                             ; preds = %bb.b
  %i.ac = tail call noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5BraceNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path7parsing14const_argument(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.t, ptr noundef nonnull align 8 %1)
  %i.ad = load i64, ptr %i.t, align 8, !range !868, !noundef !5
  %i.ae = icmp eq i64 %i.ad, -1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.ae, label %bb.dj, label %bb.dk

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2ty4TypeEB8_(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.r, ptr noundef nonnull align 8 %1)
  %i.ag = load i64, ptr %i.r, align 8, !range !893, !noundef !5 ; 4 uses
  %i.ah = icmp eq i64 %i.ag, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.64, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.64, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64)
  br label %bb.dd

bb.m:                                             ; preds = %bb.k
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.59.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5110.0..sroa_idx, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.64, i64 24, i1 false)
  store i64 %i.ag, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64)
  %i.ak = icmp ne i64 %i.ag, 3
  call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %i.ag, 10
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.an = load i32, ptr %i.am, align 8, !range !571
  %.not = icmp eq i32 %i.an, 2
  %or.cond = select i1 %i.al, i1 %.not, i1 false
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.ap = load i32, ptr %i.ao, align 8, !range !444
  %.not152 = icmp eq i32 %i.ap, 0
  %or.cond270 = select i1 %or.cond, i1 %.not152, i1 false
  br i1 %or.cond270, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.r, %bb.p, %bb.cz, %bb.m
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.499.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(248) %i.s, i64 248, i1 false)
  store i64 18, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.h

bb.o:                                             ; preds = %bb.q, %bb.db
  %.sroa.0104.1 = phi i1 [ false, %bb.db ], [ true, %bb.q ]
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.pr = load i64, ptr %i.s, align 8              ; 2 uses
  %i.ar = icmp ne i64 %.pr, 3
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp eq i64 %.pr, 10
  br i1 %i.as, label %bb.dg, label %bb.dh

.thread252:                                       ; preds = %bb.df
  %i.at = load i64, ptr %i.s, align 8, !range !539, !noundef !5 ; 2 uses
  %i.au = icmp ne i64 %i.at, 3
  call void @llvm.assume(i1 %i.au)
  %i.av = icmp eq i64 %i.at, 10
  br i1 %i.av, label %.thread259, label %bb.dh

bb.p:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.val = load i64, ptr %i.aw, align 8, !noundef !5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.val171 = load ptr, ptr %i.ax, align 8, !align !4, !noundef !5
  %i.ay = icmp ult i64 %.val, 96076792050570582
  call void @llvm.assume(i1 %i.ay)
  %.not.i = icmp ne ptr %.val171, null
  %..i = zext i1 %.not.i to i64
  %i.az = add nuw nsw i64 %.val, %..i
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.q, label %bb.n

bb.q:                                             ; preds = %bb.p
  %i.bb = invoke fastcc noundef nonnull align 8 ptr @_RNvXsJ_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.59.0..sroa_idx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %bb.q
  %i.bc = load i64, ptr %i.bb, align 8, !range !30, !noundef !5
  %i.bd = icmp sgt i64 %i.bc, -1
  br i1 %i.bd, label %bb.n, label %bb.t

bb.s:                                             ; preds = %bb.br, %bb.ab
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.q, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.48.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_5token2EqEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull align 8 %1)
          to label %bb.v unwind label %bb.u

.thread265:                                       ; preds = %bb.da
  %i.be = landingpad { ptr, i32 }
          cleanup
  store i64 10, ptr %i.s, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.594, i64 104, i1 false)
  br label %bb.di

bb.u:                                             ; preds = %.invoke, %bb.cx, %bb.bo, %bb.bf, %bb.z, %bb.y, %bb.t
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.v:                                             ; preds = %bb.t
  %i.bg = load i64, ptr %i.p, align 8, !range !73, !noundef !5 ; 2 uses
  %.not153 = icmp eq i64 %i.bg, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.0111.0.copyload = load i64, ptr %i.bh, align 8 ; 3 uses
  br i1 %.not153, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5117.0.copyload = load i64, ptr %.sroa.5117.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bg, ptr %i.bi, align 8
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0111.0.copyload, ptr %.sroa.4119.0..sroa_idx, align 8
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5117.0.copyload, ptr %.sroa.5120.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.db

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.sroa.2.0.extract.shift = lshr i64 %.sroa.0111.0.copyload, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32 ; 2 uses
  %i.bj = trunc i64 %.sroa.0111.0.copyload to i1
  br i1 %i.bj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE3popB4_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bk)
          to label %bb.aa unwind label %bb.u

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_5token5ColonEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %1)
          to label %bb.bl unwind label %bb.u

bb.aa:                                            ; preds = %bb.y
  %i.bl = load i64, ptr %i.n, align 8, !range !917, !noundef !5
  %.not162 = icmp eq i64 %i.bl, -1
  br i1 %.not162, label %.invoke, label %bb.ab, !prof !948

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.o, ptr noundef nonnull align 8 dereferenceable(88) %i.n, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.sroa.0.0.copyload = load ptr, ptr %i.bm, align 8 ; 8 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 12 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 8 ; 9 uses
  %.sroa.8218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8218, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8218.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bn = load i64, ptr %i.o, align 8, !range !30, !noundef !5 ; 2 uses
  %i.bo = xor i64 %i.bn, -9223372036854775808
  %i.bp = icmp slt i64 %i.bn, 0
  %i.bq = select i1 %i.bp, i64 %i.bo, i64 2
  switch i64 %i.bq, label %bb.s [
    i64 0, label %bb.ad
    i64 1, label %bb.ae
    i64 2, label %bb.af
  ], !prof !1251

bb.ac:                                            ; preds = %bb.bu, %bb.af
  unreachable

bb.ad:                                            ; preds = %bb.ab
  store i64 -1, ptr %i.m, align 8
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.br, i64 56, i1 false)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #20
          to label %bb.ac unwind label %bb.bi

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.bs = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekNvNtB8_3lit3LitEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.ah unwind label %bb.bg

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.bs, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bt = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5BraceNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.ak unwind label %bb.bg

bb.aj:                                            ; preds = %bb.ak, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.632)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvNtNtCsgbWeKYPjk8w_3syn4path7parsing14const_argument(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.k, ptr noundef nonnull align 8 %1)
          to label %bb.ax unwind label %bb.av

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.bt, label %bb.aj, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.646)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2ty4TypeEB8_(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.i, ptr noundef nonnull align 8 %1)
          to label %bb.ao unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load i64, ptr %i.j, align 8, !range !73, !alias.scope !1252, !noundef !5
  %i.bw = icmp eq i64 %i.bv, -1
  br i1 %i.bw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4path15GenericArgumentNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit unwind label %bb.au, !inline_history !1032

bb.ao:                                            ; preds = %bb.al
  %i.bx = load i64, ptr %i.i, align 8, !range !893, !noundef !5 ; 2 uses
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.646, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false)
  br i1 %i.by, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.646, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  %i.cb = load i64, ptr %i.j, align 8, !range !73, !alias.scope !1255, !noundef !5
  %i.cc = icmp eq i64 %i.cb, -1
  br i1 %i.cc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit173, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4path15GenericArgumentNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit173 unwind label %bb.as, !inline_history !1032

bb.ar:                                            ; preds = %bb.ao
  %.sroa.5126.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.041.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.041.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5126.0..sroa_idx.a, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.041.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.041.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.646, i64 24, i1 false)
  %.sroa.041.sroa.8.sroa.7.0..sroa.041.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.041.sroa.8.sroa.7.0..sroa.041.sroa.8.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8218, i64 7, i1 false)
  %.sroa.041.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.041.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.bx, ptr %0, align 8
  %.sroa.041.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %.sroa.0.0.copyload, ptr %.sroa.041.sroa.8.0..sroa_idx, align 8
  %.sroa.041.sroa.8.sroa.5.0..sroa.041.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 %.sroa.6.0.copyload, ptr %.sroa.041.sroa.8.sroa.5.0..sroa.041.sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.041.sroa.8.sroa.6.0..sroa.041.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i8 %.sroa.7.0.copyload, ptr %.sroa.041.sroa.8.sroa.6.0..sroa.041.sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 %.sroa.2.0.extract.trunc, ptr %.sroa.542.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.646)
  br label %bb.bb

bb.as:                                            ; preds = %bb.aq
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = icmp eq i8 %.sroa.7.0.copyload, 2
  %i.cf = icmp eq i64 %.sroa.6.0.copyload, 0
  %or.cond271 = select i1 %i.ce, i1 true, i1 %i.cf
  br i1 %or.cond271, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit197, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit197.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit173: ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cg = icmp eq i8 %.sroa.7.0.copyload, 2
  %i.ch = icmp eq i64 %.sroa.6.0.copyload, 0
  %or.cond272 = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond272, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit176, label %bb.at

bb.at:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit173
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef range(i64 1, 0) %.sroa.6.0.copyload, i64 noundef 1) #15, !noalias !1258
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit176

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit176: ; preds = %bb.at, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit173
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.646)
  br label %bb.bb

bb.au:                                            ; preds = %bb.bx, %bb.bh, %bb.aw, %bb.an, %bb.di, %bb.dh, %bb.df, %bb.cy, %bb.ca, %bb.bk
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit: ; preds = %bb.am, %bb.an
  %i.cj = icmp eq i8 %.sroa.7.0.copyload, 2
  %i.ck = icmp eq i64 %.sroa.6.0.copyload, 0
  %or.cond273 = select i1 %i.cj, i1 true, i1 %i.ck
  br i1 %or.cond273, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit197, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit197.sink.split

bb.av:                                            ; preds = %bb.aj
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load i64, ptr %i.l, align 8, !range !73, !alias.scope !1263, !noundef !5
  %i.cn = icmp eq i64 %i.cm, -1
  br i1 %i.cn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit181, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4path15GenericArgumentNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit181 unwind label %bb.au, !inline_history !1032

bb.ax:                                            ; preds = %bb.aj
  %i.co = load i64, ptr %i.k, align 8, !range !868, !noundef !5 ; 2 uses
  %i.cp = icmp eq i64 %i.co, -1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.632, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false)
  br i1 %i.cp, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.632, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  %i.cs = load i64, ptr %i.l, align 8, !range !73, !alias.scope !1266, !noundef !5
  %i.ct = icmp eq i64 %i.cs, -1
  br i1 %i.ct, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit183, label %bb.az

bb.az:                                            ; preds = %bb.ay
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4path15GenericArgumentNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit183 unwind label %bb.bc, !inline_history !1032

bb.ba:                                            ; preds = %bb.ax
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.526.sroa.0.sroa.7.0..sroa.526.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.526.sroa.0.sroa.7.0..sroa.526.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5123.0..sroa_idx, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.526.sroa.0.sroa.6.0..sroa.526.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.526.sroa.0.sroa.6.0..sroa.526.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.632, i64 24, i1 false)
  %.sroa.526.sroa.0.sroa.8.sroa.7.0..sroa.526.sroa.0.sroa.8.0..sroa.526.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.526.sroa.0.sroa.8.sroa.7.0..sroa.526.sroa.0.sroa.8.0..sroa.526.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8218, i64 7, i1 false)
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.526.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 21, ptr %0, align 8
  %.sroa.526.sroa.0.sroa.5.0..sroa.526.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.co, ptr %.sroa.526.sroa.0.sroa.5.0..sroa.526.0..sroa_idx.sroa_idx, align 8
  %.sroa.526.sroa.0.sroa.8.0..sroa.526.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %.sroa.0.0.copyload, ptr %.sroa.526.sroa.0.sroa.8.0..sroa.526.0..sroa_idx.sroa_idx, align 8
  %.sroa.526.sroa.0.sroa.8.sroa.5.0..sroa.526.sroa.0.sroa.8.0..sroa.526.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %.sroa.6.0.copyload, ptr %.sroa.526.sroa.0.sroa.8.sroa.5.0..sroa.526.sroa.0.sroa.8.0..sroa.526.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.526.sroa.0.sroa.8.sroa.6.0..sroa.526.sroa.0.sroa.8.0..sroa.526.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 %.sroa.7.0.copyload, ptr %.sroa.526.sroa.0.sroa.8.sroa.6.0..sroa.526.sroa.0.sroa.8.0..sroa.526.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.526.sroa.5.0..sroa.526.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 %.sroa.2.0.extract.trunc, ptr %.sroa.526.sroa.5.0..sroa.526.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.632)
  br label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit176, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit189, %bb.ar, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.cu = load i64, ptr %i.o, align 8, !range !30, !noundef !5
  %i.cv = icmp eq i64 %i.cu, -9223372036854775807
  br i1 %i.cv, label %bb.be, label %bb.bf

bb.bc:                                            ; preds = %bb.az
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = icmp eq i8 %.sroa.7.0.copyload, 2
  %i.cy = icmp eq i64 %.sroa.6.0.copyload, 0
  %or.cond274 = select i1 %i.cx, i1 true, i1 %i.cy
  br i1 %or.cond274, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit197, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit197.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit183: ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cz = icmp eq i8 %.sroa.7.0.copyload, 2
  %i.da = icmp eq i64 %.sroa.6.0.copyload, 0
  %or.cond275 = select i1 %i.cz, i1 true, i1 %i.da
  br i1 %or.cond275, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit189, label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit183
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef range(i64 1, 0) %.sroa.6.0.copyload, i64 noundef 1) #15, !noalias !1269
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit189

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit189: ; preds = %bb.bd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit183
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.632)
  br label %bb.bb

bb.be:                                            ; preds = %bb.bf, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.db

bb.bf:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path13PathArgumentsEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.o)
          to label %bb.be unwind label %bb.u

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit181: ; preds = %bb.av, %bb.aw
  %i.db = icmp eq i8 %.sroa.7.0.copyload, 2
  %i.dc = icmp eq i64 %.sroa.6.0.copyload, 0
  %or.cond276 = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %or.cond276, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit197, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit197.sink.split

bb.bg:                                            ; preds = %bb.ai, %bb.ag
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = load i64, ptr %i.m, align 8, !range !73, !alias.scope !1274, !noundef !5
  %i.df = icmp eq i64 %i.de, -1
  br i1 %i.df, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4path15GenericArgumentNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %bb.bj unwind label %bb.au, !inline_history !1032

bb.bi:                                            ; preds = %bb.af
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit197.sink.split: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit181, %bb.bc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit, %bb.as, %bb.bj
  %.pn163.pn250.ph = phi { ptr, i32 } [ %i.cw, %bb.bc ], [ %i.bu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit ], [ %i.cd, %bb.as ], [ %.pn163.pn.ph, %bb.bj ], [ %i.cl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit181 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef range(i64 1, 0) %.sroa.6.0.copyload, i64 noundef 1) #15, !noalias !5
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit197

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit197: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit197.sink.split, %bb.bj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit181, %bb.bc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit, %bb.as
  %.pn163.pn250 = phi { ptr, i32 } [ %.pn163.pn.ph, %bb.bj ], [ %i.bu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit ], [ %i.cl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit181 ], [ %i.cw, %bb.bc ], [ %i.cd, %bb.as ], [ %.pn163.pn250.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit197.sink.split ] ; 2 uses
  %i.dh = load i64, ptr %i.o, align 8, !range !30, !noundef !5
  %i.di = icmp eq i64 %i.dh, -9223372036854775807
  br i1 %i.di, label %bb.df, label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %.pn163.pn.ph = phi { ptr, i32 } [ %i.dg, %bb.bi ], [ %i.dd, %bb.bh ], [ %i.dd, %bb.bg ] ; 2 uses
  %i.dj = icmp eq i8 %.sroa.7.0.copyload, 2
  %i.dk = icmp eq i64 %.sroa.6.0.copyload, 0
  %or.cond277 = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond277, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit197, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit197.sink.split

bb.bk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit197
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path13PathArgumentsEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.o) #16
          to label %bb.df unwind label %bb.au

bb.bl:                                            ; preds = %bb.z
  %i.dl = load i64, ptr %i.h, align 8, !range !73, !noundef !5 ; 2 uses
  %.not154 = icmp eq i64 %i.dl, -1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0127.0.copyload = load i64, ptr %i.dm, align 8 ; 3 uses
  br i1 %.not154, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5133.0.copyload = load i64, ptr %.sroa.5133.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dl, ptr %i.dn, align 8
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0127.0.copyload, ptr %.sroa.4135.0..sroa_idx, align 8
  %.sroa.5136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5133.0.copyload, ptr %.sroa.5136.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.db

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.266.0.extract.shift = lshr i64 %.sroa.0127.0.copyload, 32
  %.sroa.266.0.extract.trunc = trunc nuw i64 %.sroa.266.0.extract.shift to i32
  %i.do = trunc i64 %.sroa.0127.0.copyload to i1
  br i1 %i.do, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE3popB4_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dp)
          to label %bb.bq unwind label %bb.u

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.594)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.594, ptr noundef nonnull align 8 dereferenceable(104) %i.q, i64 104, i1 false)
  %i.dq = load i64, ptr %i.s, align 8, !range !539, !noundef !5 ; 2 uses
  %i.dr = icmp ne i64 %i.dq, 3
  call void @llvm.assume(i1 %i.dr)
  %i.ds = icmp eq i64 %i.dq, 10
  br i1 %i.ds, label %bb.cz, label %bb.da

bb.bq:                                            ; preds = %bb.bo
  %i.dt = load i64, ptr %i.f, align 8, !range !917, !noundef !5
  %.not155 = icmp eq i64 %i.dt, -1
  br i1 %.not155, label %.invoke, label %bb.br, !prof !948

bb.br:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.sroa.0231.0.copyload = load ptr, ptr %i.du, align 8 ; 5 uses
  %.sroa.7233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %.sroa.7233.0.copyload = load i64, ptr %.sroa.7233.0..sroa_idx, align 8 ; 5 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dv = load i64, ptr %i.g, align 8, !range !30, !noundef !5 ; 2 uses
  %i.dw = xor i64 %i.dv, -9223372036854775808
  %i.dx = icmp slt i64 %i.dv, 0
  %i.dy = select i1 %i.dx, i64 %i.dw, i64 2
  switch i64 %i.dy, label %bb.s [
    i64 0, label %bb.bs
    i64 1, label %bb.bt
    i64 2, label %bb.bu
  ], !prof !1251

.invoke:                                          ; preds = %bb.bq, %bb.aa
  %i.dz = phi ptr [ @40, %bb.aa ], [ @43, %bb.bq ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dz) #20
          to label %.cont unwind label %bb.u

.cont:                                            ; preds = %.invoke
  unreachable

bb.bs:                                            ; preds = %bb.br
  store i64 -1, ptr %i.e, align 8
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.ea, i64 56, i1 false)
  br label %bb.bv

bb.bu:                                            ; preds = %bb.br
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #20
          to label %bb.ac unwind label %bb.ct

bb.bv:                                            ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8, !alias.scope !1277
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1277
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1277
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.676.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.878.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.bz

bb.bw:                                            ; preds = %bb.ca, %bb.by
  %.pn = phi { ptr, i32 } [ %i.ee, %bb.by ], [ %i.eg, %bb.ca ] ; 2 uses
  %i.ec = load i64, ptr %i.e, align 8, !range !73, !alias.scope !1280, !noundef !5
  %i.ed = icmp eq i64 %i.ec, -1
  br i1 %i.ed, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit199, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4path15GenericArgumentNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit199 unwind label %bb.au, !inline_history !1032

bb.by:                                            ; preds = %bb.cp
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bz:                                            ; preds = %bb.bv, %bb.co
  %i.ef = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5CommaNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.cb unwind label %bb.ca

bb.ca:                                            ; preds = %bb.co, %bb.ck, %bb.ci, %bb.ch, %bb.ce, %bb.cc, %bb.bz
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #16
          to label %bb.bw unwind label %bb.au

bb.cb:                                            ; preds = %bb.bz
  br i1 %i.ef, label %bb.cl, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.eh = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token2GtNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.cd unwind label %bb.ca

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.eh, label %bb.cl, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.676)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtNtCsgbWeKYPjk8w_3syn8generics7parsingNtB7_14TypeParamBound12parse_single(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.c, ptr noundef nonnull align 8 %1, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.cf unwind label %bb.ca

bb.cf:                                            ; preds = %bb.ce
  %i.ei = load i64, ptr %i.c, align 8, !range !1283, !noundef !5 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.676, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4138.0..sroa_idx, i64 24, i1 false)
  br i1 %i.ej, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.676, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.676)
  br label %bb.cp

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.878.0..sroa_idx79, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5139.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.ei, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.676.0..sroa_idx77, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.676, i64 24, i1 false)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.b)
          to label %bb.ci unwind label %bb.ca

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.676)
  %i.el = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token4PlusNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.cj unwind label %bb.ca

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.el, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token4PlusEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1)
          to label %bb.cm unwind label %bb.ca

bb.cl:                                            ; preds = %bb.cj, %bb.cb, %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.071.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.569.sroa.0.sroa.8.0..sroa.569.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.569.sroa.0.sroa.8.0..sroa.569.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11, i64 7, i1 false)
  %.sroa.071.sroa.0.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.071.sroa.0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.071.sroa.0.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  store i64 22, ptr %0, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.569.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.071.sroa.0, i64 88, i1 false)
  %.sroa.569.sroa.0.sroa.5.0..sroa.569.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.0231.0.copyload, ptr %.sroa.569.sroa.0.sroa.5.0..sroa.569.0..sroa_idx.sroa_idx, align 8
  %.sroa.569.sroa.0.sroa.6.0..sroa.569.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.7233.0.copyload, ptr %.sroa.569.sroa.0.sroa.6.0..sroa.569.0..sroa_idx.sroa_idx, align 8
  %.sroa.569.sroa.0.sroa.7.0..sroa.569.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %.sroa.9.0.copyload, ptr %.sroa.569.sroa.0.sroa.7.0..sroa.569.0..sroa_idx.sroa_idx, align 8
  %.sroa.569.sroa.5.0..sroa.569.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %.sroa.266.0.extract.trunc, ptr %.sroa.569.sroa.5.0..sroa.569.0..sroa_idx.sroa_idx, align 8
  br label %bb.cv

bb.cm:                                            ; preds = %bb.ck
  %i.em = load i64, ptr %i.a, align 8, !range !73, !noundef !5 ; 2 uses
  %.not156 = icmp eq i64 %i.em, -1
  %.sroa.0140.0.copyload = load i32, ptr %i.eb, align 8 ; 2 uses
  br i1 %.not156, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5149.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5146.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.em, ptr %i.en, align 8
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0140.0.copyload, ptr %.sroa.4148.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE10push_punctB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef %.sroa.0140.0.copyload)
          to label %bb.bz unwind label %bb.ca

bb.cp:                                            ; preds = %bb.cn, %bb.cg
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
          to label %bb.cq unwind label %bb.by

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.eo = load i64, ptr %i.e, align 8, !range !73, !alias.scope !1284, !noundef !5
  %i.ep = icmp eq i64 %i.eo, -1
  br i1 %i.ep, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit201, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4path15GenericArgumentNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit201 unwind label %bb.ct, !inline_history !1032

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit199: ; preds = %bb.bw, %bb.bx, %bb.ct
  %.pn158 = phi { ptr, i32 } [ %i.es, %bb.ct ], [ %.pn, %bb.bx ], [ %.pn, %bb.bw ] ; 2 uses
  %i.eq = icmp eq i8 %.sroa.9.0.copyload, 2
  %i.er = icmp eq i64 %.sroa.7233.0.copyload, 0
  %or.cond278 = select i1 %i.eq, i1 true, i1 %i.er
  br i1 %or.cond278, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit204, label %bb.cs

bb.cs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit199
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0231.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0231.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7233.0.copyload, i64 noundef 1) #15, !noalias !1287
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit204

bb.ct:                                            ; preds = %bb.cr, %bb.bu
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit199

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit201: ; preds = %bb.cq, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.et = icmp eq i8 %.sroa.9.0.copyload, 2
  %i.eu = icmp eq i64 %.sroa.7233.0.copyload, 0
  %or.cond279 = select i1 %i.et, i1 true, i1 %i.eu
  br i1 %or.cond279, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit207, label %bb.cu

bb.cu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit201
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0231.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0231.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7233.0.copyload, i64 noundef 1) #15, !noalias !1292
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit207

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit204: ; preds = %bb.cs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit199
  %i.ev = load i64, ptr %i.g, align 8, !range !30, !noundef !5
  %i.ew = icmp eq i64 %i.ev, -9223372036854775807
  br i1 %i.ew, label %bb.df, label %bb.cy

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit207: ; preds = %bb.cu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit201
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.cv

bb.cv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit207, %bb.cl
  %i.ex = load i64, ptr %i.g, align 8, !range !30, !noundef !5
  %i.ey = icmp eq i64 %i.ex, -9223372036854775807
  br i1 %i.ey, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cx, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.db

bb.cx:                                            ; preds = %bb.cv
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path13PathArgumentsEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.g)
          to label %bb.cw unwind label %bb.u

bb.cy:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit204
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path13PathArgumentsEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.g) #16
          to label %bb.df unwind label %bb.au

bb.cz:                                            ; preds = %bb.da, %bb.bp
  store i64 10, ptr %i.s, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.594, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.594)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.n

bb.da:                                            ; preds = %bb.bp
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.s)
          to label %bb.cz unwind label %.thread265

bb.db:                                            ; preds = %bb.bm, %bb.cw, %bb.w, %bb.be
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty8TypePathEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.q)
          to label %bb.dc unwind label %bb.o

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ez = load i64, ptr %i.s, align 8, !range !539, !noundef !5 ; 2 uses
  %i.fa = icmp ne i64 %i.ez, 3
  call void @llvm.assume(i1 %i.fa)
  %i.fb = icmp eq i64 %i.ez, 10
  br i1 %i.fb, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.de, %bb.dc, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.h

bb.de:                                            ; preds = %bb.dc
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.s)
  br label %bb.dd

bb.df:                                            ; preds = %bb.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit197, %bb.bk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit204, %bb.cy
  %.pn166.ph = phi { ptr, i32 } [ %.pn158, %bb.cy ], [ %.pn158, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit204 ], [ %.pn163.pn250, %bb.bk ], [ %.pn163.pn250, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit197 ], [ %i.bf, %bb.u ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty8TypePathEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.q) #16
          to label %.thread252 unwind label %bb.au

bb.dg:                                            ; preds = %bb.o
  br i1 %.sroa.0104.1, label %bb.di, label %.thread259

bb.dh:                                            ; preds = %.thread252, %bb.o
  %.pn168257 = phi { ptr, i32 } [ %.pn166.ph, %.thread252 ], [ %i.aq, %bb.o ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.s) #16
          to label %.thread259 unwind label %bb.au

.thread259:                                       ; preds = %.thread252, %bb.di, %bb.dh, %bb.dg
  %.pn168256 = phi { ptr, i32 } [ %.pn168258268, %bb.di ], [ %.pn168257, %bb.dh ], [ %i.aq, %bb.dg ], [ %.pn166.ph, %.thread252 ]
  resume { ptr, i32 } %.pn168256

bb.di:                                            ; preds = %.thread265, %bb.dg
  %.pn168258268 = phi { ptr, i32 } [ %i.be, %.thread265 ], [ %i.aq, %bb.dg ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty8TypePathEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %.sroa.48.0..sroa_idx) #16
          to label %.thread259 unwind label %bb.au

bb.dj:                                            ; preds = %bb.j
  %i.fc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.fc, i64 24, i1 false)
  br label %bb.dl

bb.dk:                                            ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.af, ptr noundef nonnull align 8 dereferenceable(168) %i.t, i64 168, i1 false)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.sink280 = phi i64 [ -1, %bb.dj ], [ 19, %bb.dk ]
  store i64 %.sink280, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCsgbWeKYPjk8w_3syn5ident7parsingNtCs6et67aoV1xO_11proc_macro25IdentNtNtB8_5token5Token4peek(ptr noundef %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor5ident(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noundef %0, ptr noundef %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !77, !noundef !5
  %.not = icmp eq i8 %i.h, -1
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1297
  store i64 0, ptr %i.c, align 8, !noalias !1297
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1297
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1297
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.i, align 8, !noalias !1297
  store ptr %i.c, ptr %i.b, align 8, !noalias !1297
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @33, ptr %i.j, align 8, !noalias !1297
  %i.k = invoke noundef zeroext i1 @_RNvXsE_Cs6et67aoV1xO_11proc_macro2NtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.c, !noalias !1301

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.l = landingpad { ptr, i32 }
end_hunk_2
