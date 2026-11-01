Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.05?download=true
inline.NumInlined: 515
inline.NumDeleted: 183
begin_hunk_0_@_RNvXsQ_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path29ParenthesizedGenericArgumentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone:bb.a
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
  %i.b = load i32, ptr %i.a, align 8, !range !16, !noundef !6 ; 2 uses
  %i.c = trunc nuw i32 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.val = load i64, ptr %i.d, align 4
  %.sroa.5.0 = select i1 %i.c, i64 %.val, i64 undef
  tail call void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_4path11PathSegmentNtNtB6_5token7PathSepENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.b, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsS_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path13PathArgumentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = load i64, ptr %1, align 8, !range !8, !noundef !6 ; 2 uses
  %i.f = xor i64 %i.e, -9223372036854775808
  %i.g = icmp slt i64 %i.e, 0
  %i.h = select i1 %i.g, i64 %i.f, i64 2
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i32, ptr %i.j, align 8, !range !16, !alias.scope !1203, !noundef !6 ; 2 uses
  %i.l = trunc nuw i32 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.val.i = load i64, ptr %i.m, align 4, !alias.scope !1203
  %.sroa.5.0.i = select i1 %i.l, i64 %.val.i, i64 undef
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.val10.i = load i32, ptr %i.n, align 4, !alias.scope !1203
  call void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_4path15GenericArgumentNtNtB6_5token5CommaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val11.i = load i32, ptr %i.o, align 8, !alias.scope !1203
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.k, ptr %i.p, align 8, !alias.scope !1202
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !1202
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %.val10.i, ptr %i.q, align 4, !alias.scope !1202
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %.val11.i, ptr %i.r, align 8, !alias.scope !1202
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1206
  call void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_2ty8NamedArgNtNtB6_5token5CommaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !1204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1206
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RNvXsY_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_2ty10ReturnTypeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t)
          to label %_RNvXsQ_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path29ParenthesizedGenericArgumentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit unwind label %bb.f, !noalias !1204

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_2ty8NamedArgNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #16
          to label %bb.h unwind label %bb.g, !noalias !1204

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !1204
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.u

_RNvXsQ_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path29ParenthesizedGenericArgumentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.w, i64 12, i1 false), !alias.scope !1206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1205
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !1205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.i:                                             ; preds = %_RNvXsQ_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path29ParenthesizedGenericArgumentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsT_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path11PathSegmentNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load i8, ptr %i.c, align 8, !range !7, !noundef !6 ; 2 uses
  %.not = icmp eq i8 %i.d, 2                      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !1213
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i8, ptr %i.h, align 8, !range !27, !alias.scope !1213, !noundef !6
  %i.j = inttoptr i64 %.val.i to ptr
  %.sroa.0.sroa.5.0.insert.ext = zext nneg i8 %i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ %i.j, %bb.c ] ; 3 uses
  %.sroa.0.sroa.5.0 = phi i64 [ %i.g, %bb.b ], [ %.sroa.0.sroa.5.0.insert.ext, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsS_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path13PathArgumentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %.sroa.0.sroa.5.0, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.l
  br i1 %or.cond, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.sroa.0.0, i64 noundef range(i64 1, 0) %.sroa.0.sroa.5.0, i64 noundef 1) #15, !noalias !1214
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.0.sroa.0.0, ptr %i.m, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.0.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.d, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsX_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path5QSelfNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.b, align 8            ; 2 uses
  %i.c = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeE13new_uninit_inBK_() ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1217
  invoke void @_RNvXs11_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty4TypeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %.val9)
          to label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 248, i64 noundef 8) #15
  resume { ptr, i32 } %i.d

_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit: ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.c, ptr noundef nonnull align 8 dereferenceable(248) %i.a, i64 248, i1 false), !noalias !1217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1217
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6
  %i.g = load i32, ptr %1, align 8, !range !16, !noundef !6 ; 2 uses
  %i.h = trunc nuw i32 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val10 = load i32, ptr %i.i, align 4
  %.sroa.5.0 = select i1 %i.h, i32 %.val10, i32 undef
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.l, align 8
  store i32 %i.g, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5.0, ptr %i.m, align 4
  %3 = load <2 x i32>, ptr %2, align 8
  store <2 x i32> %3, ptr %i.j, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1220, !noundef !6 ; 4 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1220, !nonnull !6, !noundef !6
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
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1220, !nonnull !6, !noundef !6
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
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !1220
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !1226
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1227, !noundef !6 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1227, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !1227
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !1227
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
  %i.b = load i32, ptr %i.a, align 8, !range !16, !noundef !6 ; 2 uses
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
  %i.y = load i64, ptr %i.u, align 8, !range !18, !noundef !6
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  br label %bb.g
end_hunk_0
