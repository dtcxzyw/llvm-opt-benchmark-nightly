Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.11?download=true
inline.NumInlined: 364
inline.NumDeleted: 140
begin_hunk_0_@_RNvXsa_NtCsgbWeKYPjk8w_3syn5errorNtB5_8IntoIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1126, !noalias !1129, !nonnull !9, !noundef !9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1126, !noalias !1129, !nonnull !9, !noundef !9 ; 4 uses
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit: ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.h, ptr %i.e, align 8, !alias.scope !1126, !noalias !1129
  %.sroa.07.0.copyload8 = load i64, ptr %i.f, align 8, !noalias !1126 ; 2 uses
  %.not = icmp eq i64 %.sroa.07.0.copyload8, -1
  br i1 %.not, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit
  %.sroa.7.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa.0.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx9, i64 32, i1 false)
  store i64 %.sroa.07.0.copyload8, ptr %i.a, align 8
  store i64 1, ptr %0, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.63.0..sroa_idx, align 8
  br label %bb.d

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread: ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit
  store i64 -1, ptr %0, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #19
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NtCsgbWeKYPjk8w_3syn3litNtB5_3LitNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !316, !noundef !9
  %i.c = xor i64 %i.b, -9223372036854775808
  switch i64 %i.c, label %bb.j [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1131, !noalias !1134, !nonnull !9, !noundef !9
  tail call void @_RNvXss_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !noalias !1131
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1136, !noalias !1139, !nonnull !9, !noundef !9
  tail call void @_RNvXss_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !noalias !1136
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1141, !noalias !1144, !nonnull !9, !noundef !9
  tail call void @_RNvXss_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !noalias !1141
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1146, !noalias !1149, !nonnull !9, !noundef !9
  tail call void @_RNvXss_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !noalias !1146
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1151, !noalias !1154, !nonnull !9, !noundef !9
  tail call void @_RNvXss_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !noalias !1151
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1156, !noalias !1159, !nonnull !9, !noundef !9
  tail call void @_RNvXss_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !noalias !1156
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1161, !noalias !1164, !nonnull !9, !noundef !9
  tail call void @_RNvXss_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !noalias !1161
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1169
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i8, ptr %i.s, align 4, !range !517, !alias.scope !1174, !noalias !1175, !noundef !9
  %i.u = trunc nuw i8 %i.t to i1                  ; 2 uses
  %..i.i = select i1 %i.u, i64 4, i64 5
  %.1.i.i = select i1 %i.u, ptr @10, ptr @11
  %i.v = load i32, ptr %i.r, align 8, !alias.scope !1174, !noalias !1175, !noundef !9
  call void @_RNvMsx_Cs6et67aoV1xO_11proc_macro2NtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1.i.i, i64 noundef %..i.i, i32 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17), !noalias !1177
  call void @_RINvXNtCs6p3UlaoheVH_5quote3extNtCs6et67aoV1xO_11proc_macro211TokenStreamNtB3_14TokenStreamExt6appendNtBv_5IdentECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1169
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvXss_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro27LiteralNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsb_NtNtCsgbWeKYPjk8w_3syn3lit7parsingNtB7_10LitByteStrNtNtB9_5token5Token4peek(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvNtNtCsgbWeKYPjk8w_3syn3lit7parsing9peek_impl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @_RNvNvXsb_NtNtCsgbWeKYPjk8w_3syn3lit7parsingNtB9_10LitByteStrNtNtBb_5token5Token4peek4peek)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXsc_NtCsgbWeKYPjk8w_3syn3litNtB5_6LitStrNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = tail call fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_(ptr %.val) #20
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsc_NtCsgbWeKYPjk8w_3syn5errorNtB5_4IterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.b = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 32, 57) 40, i64 noundef 8) #19 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #17
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !noundef !9
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.h, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.i, i64 16, i1 false), !alias.scope !1178
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
          to label %_RNvXs4_NtCsgbWeKYPjk8w_3syn5errorNtB5_12ErrorMessageNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit unwind label %bb.f

bb.d:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 40, i64 noundef 8) #19
  br label %bb.e

_RNvXs4_NtCsgbWeKYPjk8w_3syn5errorNtB5_12ErrorMessageNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 1, ptr %0, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.63.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtCsgbWeKYPjk8w_3syn5errorNtB5_12ErrorMessageNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %bb.d
  ret void

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 40, i64 noundef 8) #19
  resume { ptr, i32 } %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_(ptr captures(address, read_provenance) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %0 = alloca [24 x i8], align 8                  ; 9 uses
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprE13new_uninit_inBK_() ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1188
  %i.c = load i64, ptr %.0.val, align 8, !range !173, !alias.scope !1190, !noalias !1191, !noundef !9
  %.not.i.i = icmp eq i64 %i.c, -1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0), !noalias !1188
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.0.val)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  %.sroa.03.0.copyload.i.i = load i64, ptr %0, align 8, !noalias !1188
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1188
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1188
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.4.sroa.6.0.copyload.i.i = load i8, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !1188
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 21
  %.sroa.4.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 1, !noalias !1188
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 22
  %.sroa.4.sroa.8.0.copyload.i.i = load i16, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 2, !noalias !1188
  call void @llvm.lifetime.end.p0(ptr nonnull %0), !noalias !1188
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 20
  %i.g = load i8, ptr %i.f, align 4, !range !355, !alias.scope !1192, !noalias !1195, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 21
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !1192, !noalias !1195
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.k = load i32, ptr %i.j, align 8, !alias.scope !1192, !noalias !1195, !noundef !9
  %i.l = load <2 x i32>, ptr %i.e, align 8, !alias.scope !1192, !noalias !1195
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  %.sroa.5.sroa.6.0.i.i = phi i32 [ %i.k, %bb.c ], [ %.sroa.4.sroa.5.0.copyload.i.i, %.noexc ]
  %.sroa.5.sroa.7.0.i.i = phi i8 [ %i.g, %bb.c ], [ %.sroa.4.sroa.6.0.copyload.i.i, %.noexc ]
  %.sroa.5.sroa.8.0.i.i = phi i8 [ %i.i, %bb.c ], [ %.sroa.4.sroa.7.0.copyload.i.i, %.noexc ]
  %.sroa.5.sroa.9.0.i.i = phi i16 [ undef, %bb.c ], [ %.sroa.4.sroa.8.0.copyload.i.i, %.noexc ]
  %.sroa.0.0.i.i = phi i64 [ -1, %bb.c ], [ %.sroa.03.0.copyload.i.i, %.noexc ]
  %i.m = phi <2 x i32> [ %i.l, %bb.c ], [ %i.d, %.noexc ]
  store i64 %.sroa.0.0.i.i, ptr %i.a, align 8, !noalias !1188
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store <2 x i32> %i.m, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !1188
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %.sroa.5.sroa.6.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx.i.i, align 8, !noalias !1188
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx2.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 %.sroa.5.sroa.7.0.i.i, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx2.sroa_idx.i.i, align 4, !noalias !1188
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx2.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  store i8 %.sroa.5.sroa.8.0.i.i, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx2.sroa_idx.i.i, align 1, !noalias !1188
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx2.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i16 %.sroa.5.sroa.9.0.i.i, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx2.sroa_idx.i.i, align 2, !noalias !1188
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.o = invoke { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n)
          to label %bb.h unwind label %bb.e, !noalias !1191 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #15
          to label %bb.i unwind label %bb.f, !noalias !1191

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !1191
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.s = extractvalue { ptr, i64 } %i.o, 0
  %i.t = extractvalue { ptr, i64 } %i.o, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !noalias !1182
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1182
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.t, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1182
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  ret ptr %i.b

bb.i:                                             ; preds = %bb.g, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.p, %bb.e ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 40, i64 noundef 8) #19
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXsd_NtCsgbWeKYPjk8w_3syn3litNtB5_10LitByteStrNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = tail call fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_(ptr %.val) #20
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsd_NtNtCsgbWeKYPjk8w_3syn3lit7parsingNtB7_7LitCStrNtNtB9_5token5Token4peek(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvNtNtCsgbWeKYPjk8w_3syn3lit7parsing9peek_impl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @_RNvNvXsd_NtNtCsgbWeKYPjk8w_3syn3lit7parsingNtB9_7LitCStrNtNtBb_5token5Token4peek4peek)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXse_NtCsgbWeKYPjk8w_3syn3litNtB5_7LitCStrNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = tail call fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_(ptr %.val) #20
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXsf_NtCsgbWeKYPjk8w_3syn3litNtB5_7LitByteNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = tail call fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_(ptr %.val) #20
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsf_NtNtCsgbWeKYPjk8w_3syn3lit7parsingNtB7_7LitByteNtNtB9_5token5Token4peek(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvNtNtCsgbWeKYPjk8w_3syn3lit7parsing9peek_impl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @_RNvNvXsf_NtNtCsgbWeKYPjk8w_3syn3lit7parsingNtB9_7LitByteNtNtBb_5token5Token4peek4peek)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXsg_NtCsgbWeKYPjk8w_3syn3litNtB5_7LitCharNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = tail call fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_(ptr %.val) #20
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXsh_NtCsgbWeKYPjk8w_3syn3litNtB5_6LitIntNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn3lit10LitIntReprE13new_uninit_inBK_() ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1197
  invoke void @_RNvXs9_NtCsgbWeKYPjk8w_3syn3litNtB5_10LitIntReprNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val)
          to label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn3lit10LitIntReprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 56, i64 noundef 8) #19
  resume { ptr, i32 } %i.c

_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn3lit10LitIntReprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !1197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1197
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsh_NtNtCsgbWeKYPjk8w_3syn3lit7parsingNtB7_7LitCharNtNtB9_5token5Token4peek(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvNtNtCsgbWeKYPjk8w_3syn3lit7parsing9peek_impl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @_RNvNvXsh_NtNtCsgbWeKYPjk8w_3syn3lit7parsingNtB9_7LitCharNtNtBb_5token5Token4peek4peek)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXsi_NtCsgbWeKYPjk8w_3syn3litNtB5_8LitFloatNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn3lit12LitFloatReprE13new_uninit_inBK_() ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1200
  invoke void @_RNvXsa_NtCsgbWeKYPjk8w_3syn3litNtB5_12LitFloatReprNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val)
          to label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn3lit12LitFloatReprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 56, i64 noundef 8) #19
  resume { ptr, i32 } %i.c

_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn3lit12LitFloatReprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1200
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsj_NtNtCsgbWeKYPjk8w_3syn3lit7parsingNtB7_6LitIntNtNtB9_5token5Token4peek(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvNtNtCsgbWeKYPjk8w_3syn3lit7parsing9peek_impl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @_RNvNvXsj_NtNtCsgbWeKYPjk8w_3syn3lit7parsingNtB9_6LitIntNtNtBb_5token5Token4peek4peek)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsl_NtNtCsgbWeKYPjk8w_3syn3lit7parsingNtB7_8LitFloatNtNtB9_5token5Token4peek(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvNtNtCsgbWeKYPjk8w_3syn3lit7parsing9peek_impl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @_RNvNvXsl_NtNtCsgbWeKYPjk8w_3syn3lit7parsingNtB9_8LitFloatNtNtBb_5token5Token4peek4peek)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsn_NtNtCsgbWeKYPjk8w_3syn3lit7parsingNtB7_7LitBoolNtNtB9_5token5Token4peek(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvNtNtCsgbWeKYPjk8w_3syn3lit7parsing9peek_impl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @_RNvNvXsn_NtNtCsgbWeKYPjk8w_3syn3lit7parsingNtB9_7LitBoolNtNtBb_5token5Token4peek4peek)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !9
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsj6eKBz9Db1c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %.idx = mul nuw nsw i64 %1, 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageINtNtNtBa_5slice4iter4IterB14_EEB18_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.05.i = phi ptr [ %i.e, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1203
  store ptr %.sroa.0.05.i, ptr %i.a, align 8, !noalias !1203, !captures !74
  %i.f = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1203
  %i.g = icmp eq ptr %i.e, %i.c
  br i1 %i.g, label %_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageINtNtNtBa_5slice4iter4IterB14_EEB18_.exit, label %.lr.ph.i

_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageINtNtNtBa_5slice4iter4IterB14_EEB18_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.h = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.h
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_5Debug3fmtCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMsd_NtNtCsj6eKBz9Db1c_4core3ops5rangeINtB5_5BoundRjE6clonedCsgbWeKYPjk8w_3syn(i64 noundef range(i64 0, 3), ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMso_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB7_7Methods12span_subspan(i32 noundef range(i32 1, 0), i64 noundef range(i64 0, 3), i64, i64 noundef range(i64 0, 3), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtCsgbWeKYPjk8w_3syn6buffer18open_span_of_group(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

end_hunk_0
