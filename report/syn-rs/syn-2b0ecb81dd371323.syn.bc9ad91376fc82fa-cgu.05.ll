Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.05?download=true
inline.NumInlined: 515
inline.NumDeleted: 183
begin_hunk_0_@_RNvXNtCsgbWeKYPjk8w_3syn3extNtCs6et67aoV1xO_11proc_macro25IdentNtB2_8IdentExt5unraw:bb.a
          to label %bb.c unwind label %bb.b, !noalias !974

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #16
          to label %common.resume unwind label %bb.e, !noalias !974

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtCs6et67aoV1xO_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCsgbWeKYPjk8w_3syn.exit, !prof !24

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #21
          to label %.noexc.i unwind label %bb.b, !noalias !974

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !974
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.o, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.o ], [ %i.h, %bb.b ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtCs6et67aoV1xO_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCsgbWeKYPjk8w_3syn.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !973
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !6 ; 2 uses
  %i.n = invoke noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.j, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtCs6et67aoV1xO_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCsgbWeKYPjk8w_3syn.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #16
          to label %common.resume unwind label %bb.q

bb.g:                                             ; preds = %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtCs6et67aoV1xO_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCsgbWeKYPjk8w_3syn.exit
  br i1 %i.n, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !7, !noundef !6 ; 2 uses
  %.not = icmp eq i8 %i.q, 2
  br i1 %.not, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = add i64 %i.m, -2
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !7, !noundef !6
  %.not17 = icmp eq i8 %i.u, 2
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4, !range !25
  %.sroa.01.0 = select i1 %.not17, i32 %i.w, i32 0
  invoke void @_RNvMsx_Cs6et67aoV1xO_11proc_macro2NtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.r, i32 noundef %.sroa.01.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %bb.n unwind label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.x = invoke { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.m unwind label %bb.f       ; 2 uses

bb.k:                                             ; preds = %bb.h
  %.val.i = load i64, ptr %1, align 8, !alias.scope !976, !noalias !977
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i8, ptr %i.y, align 8, !range !27, !alias.scope !976, !noalias !977, !noundef !6
  %i.aa = inttoptr i64 %.val.i to ptr
  %.sroa.02.sroa.5.0.insert.ext = zext nneg i8 %i.z to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.sroa.02.sroa.5.0 = phi i64 [ %i.ac, %bb.m ], [ %.sroa.02.sroa.5.0.insert.ext, %bb.k ]
  %.sroa.02.sroa.0.0 = phi ptr [ %i.ab, %bb.m ], [ %i.aa, %bb.k ]
  store ptr %.sroa.02.sroa.0.0, ptr %0, align 8
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.sroa.5.0, ptr %.sroa.02.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ab = extractvalue { ptr, i64 } %i.x, 0
  %i.ac = extractvalue { ptr, i64 } %i.x, 1
  br label %bb.l

bb.n:                                             ; preds = %bb.i, %bb.l
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !986
  store i64 -9223372036854775808, ptr %i.a, align 8, !alias.scope !987, !noalias !988
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
  %i.c = load i8, ptr %i.b, align 8, !range !12, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %2 = icmp eq i8 %i.c, -1
  br i1 %2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn6buffer6CursorEEEB1B_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %i.d = icmp eq i8 %i.c, 2
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn6buffer6CursorEEEB1B_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1001, !noundef !6 ; 2 uses
  %i.f = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn6buffer6CursorEEEB1B_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1001, !nonnull !6, !noundef !6
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #15, !noalias !1001
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn6buffer6CursorEEEB1B_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn6buffer6CursorEEEB1B_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %3 = icmp ne i8 %i.c, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %3
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
  %i.c = load i8, ptr %i.b, align 8, !range !12, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  %2 = icmp eq i8 %i.c, -1
  br i1 %2, label %_RNvXs0_NtCsgbWeKYPjk8w_3syn3extNtNtB5_7private8IdentAnyNtNtNtB7_5token7private11CustomToken4peek.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  %i.d = icmp eq i8 %i.c, 2
  br i1 %i.d, label %_RNvXs0_NtCsgbWeKYPjk8w_3syn3extNtNtB5_7private8IdentAnyNtNtNtB7_5token7private11CustomToken4peek.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1014, !noundef !6 ; 2 uses
  %i.f = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.f, label %_RNvXs0_NtCsgbWeKYPjk8w_3syn3extNtNtB5_7private8IdentAnyNtNtNtB7_5token7private11CustomToken4peek.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1014, !nonnull !6, !noundef !6
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #15, !noalias !1014
  br label %_RNvXs0_NtCsgbWeKYPjk8w_3syn3extNtNtB5_7private8IdentAnyNtNtNtB7_5token7private11CustomToken4peek.exit

_RNvXs0_NtCsgbWeKYPjk8w_3syn3extNtNtB5_7private8IdentAnyNtNtNtB7_5token7private11CustomToken4peek.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %3 = icmp ne i8 %i.c, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %3
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path10AssocConstNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [168 x i8], align 8               ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.f = load i8, ptr %i.e, align 8, !range !7, !noundef !6 ; 2 uses
  %.not = icmp eq i8 %i.f, 2                      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !1027, !noalias !1028
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.k = load i8, ptr %i.j, align 8, !range !27, !alias.scope !1027, !noalias !1028, !noundef !6
  %i.l = inttoptr i64 %.val.i to ptr
  %.sroa.02.sroa.5.0.insert.ext = zext nneg i8 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.02.sroa.0.0 = phi ptr [ %i.h, %bb.b ], [ %i.l, %bb.c ] ; 3 uses
  %.sroa.02.sroa.5.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.02.sroa.5.0.insert.ext, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = load i64, ptr %1, align 8, !range !11, !noundef !6
  %.not16 = icmp eq i64 %i.m, -1
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i32, ptr %i.n, align 8, !range !16, !alias.scope !1030, !noalias !1029, !noundef !6 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.val.i18 = load i64, ptr %i.p, align 4, !alias.scope !1030, !noalias !1029
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.val10.i = load i32, ptr %i.q, align 4, !alias.scope !1030, !noalias !1029
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
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.02.sroa.0.0, i64 noundef range(i64 1, 0) %.sroa.02.sroa.5.0, i64 noundef 1) #15, !noalias !1031
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit

bb.h:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit

bb.i:                                             ; preds = %bb.e
  %i.t = trunc nuw i32 %i.o to i1
  %.sroa.5.0.i = select i1 %i.t, i64 %.val.i18, i64 undef
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val11.i = load i32, ptr %i.u, align 8, !alias.scope !1030, !noalias !1029
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %i.o, ptr %i.v, align 8, !alias.scope !1029, !noalias !1030
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !1029, !noalias !1030
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %.val10.i, ptr %i.w, align 4, !alias.scope !1029, !noalias !1030
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %.val11.i, ptr %i.x, align 8, !alias.scope !1029, !noalias !1030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.j:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load i64, ptr %i.c, align 8, !range !11, !alias.scope !1032, !noundef !6
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4path15GenericArgumentNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit unwind label %bb.n, !inline_history !0

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
  %i.f = load i8, ptr %i.e, align 8, !range !7, !noundef !6 ; 2 uses
  %.not = icmp eq i8 %i.f, 2                      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !1045, !noalias !1046
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.k = load i8, ptr %i.j, align 8, !range !27, !alias.scope !1045, !noalias !1046, !noundef !6
  %i.l = inttoptr i64 %.val.i to ptr
  %.sroa.02.sroa.5.0.insert.ext = zext nneg i8 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.02.sroa.0.0 = phi ptr [ %i.h, %bb.b ], [ %i.l, %bb.c ] ; 3 uses
  %.sroa.02.sroa.5.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.02.sroa.5.0.insert.ext, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !11, !noundef !6
  %.not16 = icmp eq i64 %i.n, -1
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.p = load i32, ptr %i.o, align 8, !range !16, !alias.scope !1048, !noalias !1047, !noundef !6 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 284
  %.val.i18 = load i64, ptr %i.q, align 4, !alias.scope !1048, !noalias !1047
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 292
  %.val10.i = load i32, ptr %i.r, align 4, !alias.scope !1048, !noalias !1047
  invoke void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_4path15GenericArgumentNtNtB6_5token5CommaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  store i64 -1, ptr %i.c, align 8
  br label %bb.l

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEEB11_.exit: ; preds = %bb.j, %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.z, %bb.k ], [ %i.z, %bb.j ]
  %i.s = icmp eq i64 %.sroa.02.sroa.5.0, 0
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCsgbWeKYPjk8w_3syn5ident7parsingNtCs6et67aoV1xO_11proc_macro25IdentNtNtB8_5token5Token4peek:bb.a
bb.c:                                             ; preds = %bb.e, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #16
          to label %.body unwind label %bb.f, !noalias !1309

bb.d:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.e, label %bb.j, !prof !24

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #21
          to label %.noexc.i unwind label %bb.c, !noalias !1309

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !1309
  unreachable

.body:                                            ; preds = %bb.k, %bb.c, %bb.i
  %.pn = phi { ptr, i32 } [ %i.y, %bb.k ], [ %i.l, %bb.c ], [ %i.s, %bb.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !7, !alias.scope !1312, !noundef !6
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i = load i64, ptr %i.q, align 8, !alias.scope !1312, !noundef !6 ; 2 uses
  %i.r = icmp eq i64 %.val1.i.i, 0
  br i1 %i.r, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1312, !nonnull !6, !noundef !6
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #15, !noalias !1312
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1308
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !6, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !6
  %i.x = call noundef zeroext i1 @_RNvNtNtCsgbWeKYPjk8w_3syn5ident7parsing15accept_as_ident(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.w)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit unwind label %bb.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !7, !alias.scope !1316, !noundef !6
  %i.ac = icmp eq i8 %i.ab, 2
  br i1 %i.ac, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit7, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i5 = load i64, ptr %i.ad, align 8, !alias.scope !1316, !noundef !6 ; 2 uses
  %i.ae = icmp eq i64 %.val1.i.i5, 0
  br i1 %i.ae, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit7, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val.i.i6 = load ptr, ptr %i.e, align 8, !alias.scope !1316, !nonnull !6, !noundef !6
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i6, i64 noundef range(i64 1, 0) %.val1.i.i5, i64 noundef 1) #15, !noalias !1316
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit7

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit7: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit7
  %.sroa.0.0 = phi i1 [ %i.x, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit7 ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i1 %.sroa.0.0

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.h, %bb.g, %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsc_NtCsgbWeKYPjk8w_3syn5parseNtCs6et67aoV1xO_11proc_macro211TokenStreamNtB5_5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvXsc_B6_NtCs6et67aoV1xO_11proc_macro211TokenStreamNtB6_5Parse5parse0B14_EB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsd_NtCsgbWeKYPjk8w_3syn5parseNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB5_5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvXsd_B6_NtCs6et67aoV1xO_11proc_macro29TokenTreeNtB6_5Parse5parse0B14_EB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXse_NtCsgbWeKYPjk8w_3syn5parseNtCs6et67aoV1xO_11proc_macro25GroupNtB5_5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvXse_B6_NtCs6et67aoV1xO_11proc_macro25GroupNtB6_5Parse5parse0B14_EB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXse_NtCsgbWeKYPjk8w_3syn5tokenNtCs6et67aoV1xO_11proc_macro25PunctNtB5_5Token4peek(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor5punct(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef %0, ptr noundef %1)
  %i.b = load i32, ptr %i.a, align 8, !range !1317, !noundef !6
  %i.c = icmp ne i32 %i.b, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsf_NtCsgbWeKYPjk8w_3syn5parseNtCs6et67aoV1xO_11proc_macro25PunctNtB5_5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvXsf_B6_NtCs6et67aoV1xO_11proc_macro25PunctNtB6_5Parse5parse0B14_EB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsg_NtCsgbWeKYPjk8w_3syn5parseNtCs6et67aoV1xO_11proc_macro27LiteralNtB5_5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvXsg_B6_NtCs6et67aoV1xO_11proc_macro27LiteralNtB6_5Parse5parse0B14_EB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsg_NtCsgbWeKYPjk8w_3syn5tokenNtCs6et67aoV1xO_11proc_macro27LiteralNtB5_5Token4peek(ptr noundef %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor7literal(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef %0, ptr noundef %1)
  %i.b = load i64, ptr %i.a, align 8, !range !1318, !noundef !6 ; 2 uses
  %switch.i = icmp ugt i64 %i.b, -3
  br i1 %switch.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro27LiteralNtNtCsgbWeKYPjk8w_3syn6buffer6CursorEEEB1D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback7LiteralECsgbWeKYPjk8w_3syn.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsgbWeKYPjk8w_3syn.exit.i.i.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsgbWeKYPjk8w_3syn.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback7LiteralECsgbWeKYPjk8w_3syn.exit.i.i.i.i: ; preds = %bb.b
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro27LiteralNtNtCsgbWeKYPjk8w_3syn6buffer6CursorEEEB1D_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro27LiteralNtNtCsgbWeKYPjk8w_3syn6buffer6CursorEEEB1D_.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback7LiteralECsgbWeKYPjk8w_3syn.exit.i.i.i.i
  %i.e = icmp ne i64 %i.b, -2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsi_NtCsgbWeKYPjk8w_3syn5tokenNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB5_5Token4peek(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor10token_tree(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef %0, ptr noundef %1)
  %i.b = load i32, ptr %i.a, align 8, !range !26, !noundef !6 ; 2 uses
  %2 = icmp eq i32 %i.b, -1
  br i1 %2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro29TokenTreeNtNtCsgbWeKYPjk8w_3syn6buffer6CursorEEEB1F_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro29TokenTreeECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro29TokenTreeNtNtCsgbWeKYPjk8w_3syn6buffer6CursorEEEB1F_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro29TokenTreeNtNtCsgbWeKYPjk8w_3syn6buffer6CursorEEEB1F_.exit: ; preds = %bb.a, %bb.b
  %3 = icmp ne i32 %i.b, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %3
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvXsk_NtCsgbWeKYPjk8w_3syn5tokenNtCs6et67aoV1xO_11proc_macro25GroupNtB5_5Token4peek(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !1321, !noalias !1322, !noundef !6
  %i.b = icmp samesign ult i32 %i.a, 2            ; 2 uses
  br i1 %i.b, label %.preheader.i.preheader, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor9any_group.exit

.preheader.i.preheader:                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noalias !1322, !noundef !6
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.d
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.02.0.i = phi ptr [ %i.i, %.preheader.i ], [ %i.e, %.preheader.i.preheader ] ; 3 uses
  %i.f = load i32, ptr %.sroa.02.0.i, align 8, !range !1321, !noalias !1322, !noundef !6
  %i.g = icmp ne i32 %i.f, 5
  %i.h = icmp eq ptr %.sroa.02.0.i, %1
  %or.cond.i = or i1 %i.h, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 32
  br i1 %or.cond.i, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor9any_group.exit, label %.preheader.i

_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor9any_group.exit: ; preds = %.preheader.i, %bb.a
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn2ty4TypeNtNtBK_5token5CommaEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgNtNtBK_5token5CommaEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn4expr10FieldValueNtNtBK_5token5CommaEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn4expr4ExprNtNtBK_5token5CommaEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentNtNtBK_5token7PathSepEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentNtNtBK_5token5CommaEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn8generics12GenericParamNtNtBK_5token5CommaEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundNtNtBK_5token4PlusEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeNtNtBK_5token4PlusEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCsgbWeKYPjk8w_3syn2ty4TypeNtNtBR_5token5CommaEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgNtNtBR_5token5CommaEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCsgbWeKYPjk8w_3syn4expr10FieldValueNtNtBR_5token5CommaEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCsgbWeKYPjk8w_3syn4expr4ExprNtNtBR_5token5CommaEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentNtNtBR_5token7PathSepEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentNtNtBR_5token5CommaEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCsgbWeKYPjk8w_3syn8generics12GenericParamNtNtBR_5token5CommaEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundNtNtBR_5token4PlusEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeNtNtBR_5token4PlusEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs6et67aoV1xO_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 4 dereferenceable(4)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs7_NtCs6et67aoV1xO_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB12_7sources4once4OnceB1O_EECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXsp_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_4IterNtNtB7_4path11PathSegmentENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE5firstB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE4lastB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsgbWeKYPjk8w_3syn5error4new2ReEB4_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i32 noundef, i32 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsF_Cs6et67aoV1xO_11proc_macro2NtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token2LtEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token2GtNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4path15GenericArgumentEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([336 x i8]) align 8 captures(address) dereferenceable(336), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path15GenericArgumentNtNtB4_5token5CommaE10push_valueB4_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(336)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5CommaEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path15GenericArgumentNtNtB4_5token5CommaE10push_punctB4_(ptr noalias nofree noundef align 8 dereferenceable(32), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token2GtEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5SuperNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token9SelfValueNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5CrateNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token8SelfTypeNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtCs6et67aoV1xO_11proc_macro25IdentEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4callNtCs6et67aoV1xO_11proc_macro25IdentEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token2LtNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_1
