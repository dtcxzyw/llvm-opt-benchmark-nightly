Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.15?download=true
inline.NumInlined: 554
inline.NumDeleted: 211
begin_hunk_0_@_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit:bb.a
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %0, i64 noundef 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !1112

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %0) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsgbWeKYPjk8w_3syn5group11parse_group(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 32)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 3, ptr %i.a, align 1, !noalias !1113
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvNtB8_5group15parse_delimited0TNtNtCs6et67aoV1xO_11proc_macro25extra9DelimSpanBw_EEB8_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = load i64, ptr %i.b, align 8, !range !538, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.copyload = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.02.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsgbWeKYPjk8w_3syn5group12parse_braces(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 32)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 1, ptr %i.a, align 1, !noalias !1116
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvNtB8_5group15parse_delimited0TNtNtCs6et67aoV1xO_11proc_macro25extra9DelimSpanBw_EEB8_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = load i64, ptr %i.c, align 8, !range !538, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.f, i64 12, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsgbWeKYPjk8w_3syn5group12parse_parens(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 32)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1, !noalias !1119
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvNtB8_5group15parse_delimited0TNtNtCs6et67aoV1xO_11proc_macro25extra9DelimSpanBw_EEB8_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = load i64, ptr %i.c, align 8, !range !538, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.f, i64 12, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsgbWeKYPjk8w_3syn5group14parse_brackets(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 32)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1, !noalias !1122
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvNtB8_5group15parse_delimited0TNtNtCs6et67aoV1xO_11proc_macro25extra9DelimSpanBw_EEB8_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = load i64, ptr %i.c, align 8, !range !538, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.f, i64 12, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn4path7parsing14const_argument(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %.sroa.0 = alloca [32 x i8], align 8            ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.614 = alloca [24 x i8], align 8          ; 6 uses
  %i.f = alloca [168 x i8], align 8               ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.044 = alloca [72 x i8], align 8          ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.58 = alloca [24 x i8], align 8           ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.m = alloca [56 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !noalias !1125, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i32 %i.o, ptr %i.q, align 8, !alias.scope !1125
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.s = load <2 x ptr>, ptr %1, align 8, !noalias !1125
  store <2 x ptr> %i.s, ptr %i.r, align 8, !alias.scope !1125
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, i8 0, i64 16, i1 false), !alias.scope !1125
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1125
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1125
  %i.t = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekNvNtB8_3lit3LitEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.b unwind label %.thread58

.thread58:                                        ; preds = %bb.d, %bb.g, %bb.z, %bb.a, %bb.f, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread54

bb.b:                                             ; preds = %bb.a
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekNvNtB8_5ident5IdentEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %.thread58

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr7ExprLitEB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.l, ptr noundef nonnull align 8 %1)
          to label %bb.am unwind label %.thread58

bb.e:                                             ; preds = %bb.c
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5BraceNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.h unwind label %.thread58

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtCs6et67aoV1xO_11proc_macro25IdentEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noundef nonnull align 8 %1)
          to label %bb.ag unwind label %.thread58

bb.h:                                             ; preds = %bb.f
  br i1 %i.v, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB2_10Lookahead15error(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.k:                                             ; preds = %bb.h
  %.val36 = load ptr, ptr %1, align 8, !noundef !5
  %.val37 = load ptr, ptr %i.p, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1128
  store i8 1, ptr %i.a, align 1, !noalias !1131
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvNtB8_5group15parse_delimited0TNtNtCs6et67aoV1xO_11proc_macro25extra9DelimSpanBw_EEB8_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1128
  %i.x = load i64, ptr %i.b, align 8, !range !538, !noalias !1128, !noundef !5
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.k
  %lpad.thr_comm.split-lp64 = landingpad { ptr, i32 }
          cleanup
  br label %.thread54

bb.m:                                             ; preds = %.noexc
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1128
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit

bb.n:                                             ; preds = %.noexc
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr4ExprEB8_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.e, ptr noundef nonnull align 8 %i.g)
          to label %bb.o unwind label %bb.ae

bb.o:                                             ; preds = %bb.n
  %i.ac = load i64, ptr %i.e, align 8, !range !973, !noundef !5 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.614, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  br i1 %i.ad, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.614, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.520.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.531.0..sroa_idx, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.614, i64 24, i1 false)
  store i64 %i.ac, ptr %i.f, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.f)
          to label %bb.r unwind label %bb.ae

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.val = load ptr, ptr %1, align 8, !noundef !5
  %.val35 = load ptr, ptr %i.p, align 8, !noundef !5
  invoke void @_RNvNtCsgbWeKYPjk8w_3syn8verbatim7between(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noundef %.val36, ptr noundef %.val37, ptr noundef %.val, ptr noundef %.val35)
          to label %bb.s unwind label %bb.ae

bb.s:                                             ; preds = %bb.r
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  store i64 -9223372036854775771, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.x unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !1143, !noundef !5 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.thread54, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = load i64, ptr %i.ai, align 8, !noalias !1146, !noundef !5
  %i.al = add i64 %i.ak, -1                       ; 2 uses
  store i64 %i.al, ptr %i.ai, align 8, !noalias !1146
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.w, label %.thread54

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ah) #21
          to label %.thread54 unwind label %bb.aa

bb.x:                                             ; preds = %bb.t
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !1160, !noundef !5 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aq = load i64, ptr %i.ao, align 8, !noalias !1161, !noundef !5
  %i.ar = add i64 %i.aq, -1                       ; 2 uses
  store i64 %i.ar, ptr %i.ao, align 8, !noalias !1161
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.z, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.an) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit unwind label %.thread58

bb.aa:                                            ; preds = %bb.w
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit: ; preds = %bb.y, %bb.x, %bb.z, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.an, %bb.ao, %bb.ah, %bb.ak, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.av = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RNvNtNtCsgbWeKYPjk8w_3syn4path7parsing5qpath:bb.a

bb.e:                                             ; preds = %bb.b
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.6129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6129.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5195.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5128.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6119, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6119)
  store i32 2, ptr %0, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.t, ptr %.sroa.4127.0..sroa_idx, align 8
  br label %bb.as

bb.f:                                             ; preds = %bb.c
  %.sroa.5141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.sroa.5144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5144.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5141.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 %i.w, ptr %0, align 8
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0135.0.copyload, ptr %.sroa.4143.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.z, align 8
  br label %bb.as

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.611)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2ty4TypeEB8_(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.p, ptr noundef nonnull align 8 %1)
  %i.aa = load i64, ptr %i.p, align 8, !range !1022, !noundef !5 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611)
  br label %bb.bd

bb.i:                                             ; preds = %bb.g
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5147.0..sroa_idx, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611, i64 24, i1 false)
  store i64 %i.aa, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ae = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token2AsNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.j unwind label %.thread

.thread222.thread:                                ; preds = %bb.bc, %.thread222
  br i1 %.sroa.0134.1, label %.thread222.thread.thread, label %bb.be

.thread:                                          ; preds = %bb.i, %bb.k, %bb.o, %bb.bb
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.thread222.thread.thread

bb.j:                                             ; preds = %bb.i
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token2AsEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 8 %1)
          to label %bb.m unwind label %.thread

bb.l:                                             ; preds = %bb.j, %bb.r
  %.sink = phi i64 [ %i.ak, %bb.r ], [ -1, %bb.j ]
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.sink, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token2GtEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull align 8 %1)
          to label %bb.t unwind label %bb.s

bb.m:                                             ; preds = %bb.k
  %i.ag = load i64, ptr %i.n, align 8, !range !52, !noundef !5 ; 2 uses
  %.not199 = icmp eq i64 %i.ag, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  br i1 %.not199, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5156.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5153.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 %i.ag, ptr %0, align 8
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ai, ptr %.sroa.4155.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.aj, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2AsNtNtB12_4path4PathEEEB12_.exit

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4path4PathEB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.m, ptr noundef nonnull align 8 %1)
          to label %bb.p unwind label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ak = load i64, ptr %i.m, align 8, !range !52, !noundef !5 ; 2 uses
  %i.al = icmp eq i64 %i.ak, -1
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.630, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  br i1 %i.al, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.630, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.630)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2AsNtNtB12_4path4PathEEEB12_.exit

bb.r:                                             ; preds = %bb.p
  %.sroa.5159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.639.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5159.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.538.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.630, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.630)
  store i32 %i.ai, ptr %i.o, align 8
  br label %bb.l

.thread222:                                       ; preds = %.body, %bb.az, %bb.s
  %.sroa.0133.1 = phi i1 [ true, %bb.s ], [ %.sroa.0133.2219, %bb.az ], [ %.not202, %.body ]
  %.sroa.0134.1 = phi i1 [ true, %bb.s ], [ true, %bb.az ], [ false, %.body ]
  %.pn205 = phi { ptr, i32 } [ %i.ar, %bb.s ], [ %.pn221, %bb.az ], [ %i.bh, %.body ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !52, !noundef !5
  %i.aq = icmp ne i64 %i.ap, -1
  %or.cond = and i1 %.sroa.0133.1, %i.aq
  br i1 %or.cond, label %bb.bc, label %.thread222.thread

bb.s:                                             ; preds = %bb.ax, %bb.v, %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.thread222

bb.t:                                             ; preds = %bb.l
  %i.as = load i64, ptr %i.l, align 8, !range !52, !noundef !5 ; 2 uses
  %.not200 = icmp eq i64 %i.as, -1
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0160.0.copyload = load i32, ptr %i.at, align 8 ; 2 uses
  br i1 %.not200, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.sroa.5169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5169.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5166.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.as, ptr %0, align 8
  %.sroa.4168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0160.0.copyload, ptr %.sroa.4168.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.au, align 8
  br label %bb.ba

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token7PathSepEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull align 8 %1)
          to label %bb.w unwind label %bb.s

bb.w:                                             ; preds = %bb.v
  %i.av = load i64, ptr %i.k, align 8, !range !52, !noundef !5 ; 2 uses
  %.not201 = icmp eq i64 %i.av, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0170.0.copyload = load i64, ptr %i.aw, align 8 ; 3 uses
  br i1 %.not201, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5176.0.copyload = load i64, ptr %.sroa.5176.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.av, ptr %0, align 8
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0170.0.copyload, ptr %.sroa.4178.0..sroa_idx, align 8
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5176.0.copyload, ptr %.sroa.5179.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.ax, align 8
  br label %bb.ba

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8, !alias.scope !1166
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1166
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1166
  %.sroa.4181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.668.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.870.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.668)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs4_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB7_11PathSegment12parse_helper(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.i, ptr noundef nonnull align 8 %1, i1 noundef zeroext %2)
          to label %bb.ab unwind label %.thread214

bb.aa:                                            ; preds = %bb.am
  br i1 %.sroa.0132.2, label %bb.az, label %.thread222.thread.thread

.thread214:                                       ; preds = %bb.z, %bb.ad, %bb.ae, %bb.ah, %bb.aw
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ab:                                            ; preds = %bb.z
  %i.ba = load i64, ptr %i.i, align 8, !range !1169, !noundef !5 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.668, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4181.0..sroa_idx, i64 24, i1 false)
  br i1 %i.bb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.668, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.bc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.668)
  br label %bb.ax

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.870.0..sroa_idx71, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5182.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.ba, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.668.0..sroa_idx69, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.668, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.668)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.h)
          to label %bb.ae unwind label %.thread214

bb.ae:                                            ; preds = %bb.ad
  %i.bd = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token7PathSepNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.af unwind label %.thread214

bb.af:                                            ; preds = %bb.ae
  br i1 %i.bd, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !range !52, !noundef !5
  %.not202 = icmp eq i64 %i.bf, -1                ; 2 uses
  br i1 %.not202, label %bb.ai, label %bb.an

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token7PathSepEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %1)
          to label %bb.au unwind label %.thread214

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.090, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aq, %bb.ai
  %.sroa.085.0 = phi i64 [ %i.bo, %bb.aq ], [ 0, %bb.ai ]
  %.sroa.086.0 = phi i32 [ 1, %bb.aq ], [ 0, %bb.ai ]
  %.sroa.387.0 = phi i32 [ %i.bk, %bb.aq ], [ undef, %bb.ai ]
  %.sroa.391.0 = phi i32 [ %.sroa.391.0.copyload93, %bb.aq ], [ 1, %bb.ai ]
  %.sroa.494.0 = phi i64 [ %.sroa.494.0.copyload96, %bb.aq ], [ %.sroa.0170.0.copyload, %bb.ai ]
  %.sroa.597.0 = phi i32 [ %.sroa.597.0.copyload99, %bb.aq ], [ undef, %bb.ai ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.090, i64 32, i1 false)
  %.sroa.391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %.sroa.391.0, ptr %.sroa.391.0..sroa_idx, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i64 %.sroa.494.0, ptr %.sroa.494.0..sroa_idx, align 4
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i32 %.sroa.597.0, ptr %.sroa.597.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.b, ptr noundef nonnull align 8 dereferenceable(248) %i.q, i64 248, i1 false)
  %i.bg = invoke fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 248)
          to label %bb.ar unwind label %bb.ak     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.b) #18
          to label %.body unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.am:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %.sroa.0132.2 = phi i1 [ false, %bb.ap ], [ false, %bb.ao ], [ true, %bb.an ]
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #18
          to label %bb.aa unwind label %bb.at

bb.an:                                            ; preds = %bb.ag
  %i.bk = load i32, ptr %i.o, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.be, i64 48, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val = load i64, ptr %i.bl, align 8, !noundef !5 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val209 = load ptr, ptr %i.bm, align 8, !align !4, !noundef !5
  %i.bn = icmp ult i64 %.val, 96076792050570582
  call void @llvm.assume(i1 %i.bn)
  %.not.i = icmp ne ptr %.val209, null
  %..i = zext i1 %.not.i to i64
  %i.bo = add nuw nsw i64 %.val, %..i
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE10push_punctB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %.sroa.0170.0.copyload)
          to label %bb.ao unwind label %bb.am

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE10into_pairsB4_(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c)
          to label %bb.ap unwind label %bb.am

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvXs3_NtCsgbWeKYPjk8w_3syn10punctuatedINtB6_10PunctuatedNtNtB8_4path11PathSegmentNtNtB8_5token7PathSepEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendINtB6_4PairBU_B1j_EE6extendINtB6_9IntoPairsBU_B1j_EEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.d)
          to label %bb.aq unwind label %bb.am

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.090, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %.sroa.391.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.391.0.copyload93 = load i32, ptr %.sroa.391.0..sroa_idx92, align 8
  %.sroa.494.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %.sroa.494.0.copyload96 = load i64, ptr %.sroa.494.0..sroa_idx95, align 4
  %.sroa.597.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %.sroa.597.0.copyload99 = load i32, ptr %.sroa.597.0..sroa_idx98, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aj

.body:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #18
          to label %.thread222 unwind label %bb.at

bb.ar:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.bg, ptr noundef nonnull align 8 dereferenceable(248) %i.b, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  store i32 %.sroa.086.0, ptr %0, align 8
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.387.0, ptr %.sroa.4112.0..sroa_idx, align 4
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %.sroa.5113.0..sroa_idx, align 8
  %.sroa.6114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.085.0, ptr %.sroa.6114.0..sroa_idx, align 8
  %.sroa.7115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0135.0.copyload, ptr %.sroa.7115.0..sroa_idx, align 8
  %.sroa.8116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.0160.0.copyload, ptr %.sroa.8116.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.as

bb.as:                                            ; preds = %bb.f, %bb.bd, %bb.d, %bb.e, %bb.ar
  ret void

bb.at:                                            ; preds = %.thread222.thread.thread, %bb.bc, %bb.az, %.body, %bb.am
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.au:                                            ; preds = %bb.ah
  %i.bq = load i64, ptr %i.g, align 8, !range !52, !noundef !5 ; 2 uses
  %.not203 = icmp eq i64 %i.bq, -1
  %.sroa.0183.0.copyload = load i64, ptr %i.ay, align 8 ; 2 uses
  br i1 %.not203, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.sroa.5189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5189.0.copyload = load i64, ptr %.sroa.5189.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %i.bq, ptr %0, align 8
  %.sroa.4191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0183.0.copyload, ptr %.sroa.4191.0..sroa_idx, align 8
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5189.0.copyload, ptr %.sroa.5192.0..sroa_idx, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.br, align 8
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE10push_punctB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %.sroa.0183.0.copyload)
          to label %bb.z unwind label %.thread214

bb.ax:                                            ; preds = %bb.av, %bb.ac
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4path11PathSegmentNtNtBG_5token7PathSepEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j)
          to label %bb.ay unwind label %bb.s

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ba

bb.az:                                            ; preds = %.thread214, %bb.aa
  %.pn221 = phi { ptr, i32 } [ %i.az, %.thread214 ], [ %i.bj, %bb.aa ]
  %.sroa.0133.2219 = phi i1 [ true, %.thread214 ], [ false, %bb.aa ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4path11PathSegmentNtNtBG_5token7PathSepEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j) #18
          to label %.thread222 unwind label %bb.at

bb.ba:                                            ; preds = %bb.x, %bb.ay, %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !range !52, !alias.scope !1170, !noundef !5
  %i.bu = icmp eq i64 %i.bt, -1
  br i1 %i.bu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2AsNtNtB12_4path4PathEEEB12_.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bs)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2AsNtNtB12_4path4PathEEEB12_.exit unwind label %.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2AsNtNtB12_4path4PathEEEB12_.exit: ; preds = %bb.ba, %bb.bb, %bb.n, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.q)
  br label %bb.bd

bb.bc:                                            ; preds = %.thread222
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ao) #18
          to label %.thread222.thread unwind label %bb.at

bb.bd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2AsNtNtB12_4path4PathEEEB12_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.as

bb.be:                                            ; preds = %.thread222.thread.thread, %.thread222.thread
  %.pn207212 = phi { ptr, i32 } [ %.pn207213, %.thread222.thread.thread ], [ %.pn205, %.thread222.thread ]
  resume { ptr, i32 } %.pn207212

.thread222.thread.thread:                         ; preds = %bb.aa, %.thread, %.thread222.thread
  %.pn207213 = phi { ptr, i32 } [ %i.af, %.thread ], [ %.pn205, %.thread222.thread ], [ %i.bj, %bb.aa ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.q) #18
          to label %bb.be unwind label %bb.at
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsgbWeKYPjk8w_3syn5token8printing5delim(i8 noundef range(i8 0, 4) %0, i32 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsr_Cs6et67aoV1xO_11proc_macro2NtB5_5Group3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i8 noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3)
  invoke void @_RNvMsr_Cs6et67aoV1xO_11proc_macro2NtB5_5Group8set_span(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @_RINvXNtCs6p3UlaoheVH_5quote3extNtCs6et67aoV1xO_11proc_macro211TokenStreamNtB3_14TokenStreamExt6appendNtBv_5GroupECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #18
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsgbWeKYPjk8w_3syn5token8printing5punct(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef align 8 dereferenceable(32) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.d, align 8
  store i64 %3, ptr %i.c, align 8
  %i.e = icmp eq i64 %1, %3
  br i1 %i.e, label %bb.c, label %bb.b, !prof !108

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %.idx = shl nuw nsw i64 %1, 2
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.h = icmp samesign eq i64 %1, 0
  br i1 %i.h, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 -1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !noalias !1173, !noundef !5 ; 3 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.e, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgbWeKYPjk8w_3syn.exit17.i

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgbWeKYPjk8w_3syn.exit17.i: ; preds = %bb.d
  %i.l = icmp ne i64 %1, 1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -2 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !1173, !noundef !5 ; 3 uses
  %i.o = and i8 %i.n, 31
  %i.p = zext nneg i8 %i.o to i32
  %i.q = icmp slt i8 %i.n, -64
  br i1 %i.q, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgbWeKYPjk8w_3syn.exit19.i, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = zext nneg i8 %i.j to i32
  br label %bb.h

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgbWeKYPjk8w_3syn.exit19.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgbWeKYPjk8w_3syn.exit17.i
  %i.s = icmp ne i64 %1, 2
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds i8, ptr %i.f, i64 -3 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !noalias !1173, !noundef !5 ; 3 uses
  %i.v = and i8 %i.u, 15
  %i.w = zext nneg i8 %i.v to i32
  %i.x = icmp slt i8 %i.u, -64
  br i1 %i.x, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgbWeKYPjk8w_3syn.exit21.i, label %bb.g

bb.f:                                             ; preds = %bb.g, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgbWeKYPjk8w_3syn.exit17.i
  %.sroa.5.0 = phi ptr [ %.sroa.5.1, %bb.g ], [ %i.m, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgbWeKYPjk8w_3syn.exit17.i ]
  %.sroa.010.0.i = phi i32 [ %i.ao, %bb.g ], [ %i.p, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgbWeKYPjk8w_3syn.exit17.i ]
  %i.y = shl nuw nsw i32 %.sroa.010.0.i, 6
  %i.z = and i8 %i.j, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = or disjoint i32 %i.y, %i.aa
  br label %bb.h

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgbWeKYPjk8w_3syn.exit21.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgbWeKYPjk8w_3syn.exit19.i
  %i.ac = icmp ne i64 %1, 3
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !1173, !noundef !5
  %i.af = and i8 %i.ae, 7
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 6
  %i.ai = and i8 %i.u, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj
  br label %bb.g
end_hunk_1
begin_hunk_2_@_RNvXNtNtCsgbWeKYPjk8w_3syn11restriction7parsingNtB4_10VisibilityNtNtB6_5parse5Parse5parse:bb.a
bb.ac:                                            ; preds = %bb.ab
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body82.i

bb.ad:                                            ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.597.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !noalias !1255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1258
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.597.i, i64 24, i1 false)
  store i32 -1, ptr %0, align 8, !alias.scope !1255
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit88.i

bb.ae:                                            ; preds = %.noexc.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bw, ptr noundef nonnull align 8 dereferenceable(12) %i.bu, i64 12, i1 false), !noalias !1258
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 32, i1 false), !noalias !1258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.597.i, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !1255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.597.i, i64 32, i1 false), !noalias !1255
  %i.by = load ptr, ptr %i.k, align 8, !noalias !1255, !noundef !5
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !1255, !noundef !5
  %i.cb = invoke noundef zeroext i1 @_RNvXs1G_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5CrateNtB6_5Token4peek(ptr noundef %i.by, ptr noundef %i.ca)
          to label %bb.af unwind label %.thread145.i, !noalias !1255

bb.af:                                            ; preds = %bb.ae
  br i1 %i.cb, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cc = load ptr, ptr %i.k, align 8, !noalias !1255, !noundef !5
  %i.cd = load ptr, ptr %i.bz, align 8, !noalias !1255, !noundef !5
  %i.ce = invoke noundef zeroext i1 @_RNvXs4Q_NtCsgbWeKYPjk8w_3syn5tokenNtB6_9SelfValueNtB6_5Token4peek(ptr noundef %i.cc, ptr noundef %i.cd)
          to label %bb.ai unwind label %.thread145.i, !noalias !1255

bb.ah:                                            ; preds = %bb.ak, %bb.ai, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1255
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn3extNtCs6et67aoV1xO_11proc_macro25IdentNtB2_8IdentExt9parse_any(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noundef nonnull align 8 %i.k)
          to label %bb.br unwind label %.thread145.i, !noalias !1255

bb.ai:                                            ; preds = %bb.ag
  br i1 %i.ce, label %bb.ah, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cf = load ptr, ptr %i.k, align 8, !noalias !1255, !noundef !5
  %i.cg = load ptr, ptr %i.bz, align 8, !noalias !1255, !noundef !5
  %i.ch = invoke noundef zeroext i1 @_RNvXs5b_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5SuperNtB6_5Token4peek(ptr noundef %i.cf, ptr noundef %i.cg)
          to label %bb.ak unwind label %.thread145.i, !noalias !1255

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ch, label %bb.ah, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ci = load ptr, ptr %i.k, align 8, !noalias !1255, !noundef !5
  %i.cj = load ptr, ptr %i.bz, align 8, !noalias !1255, !noundef !5
  %i.ck = invoke noundef zeroext i1 @_RNvXs32_NtCsgbWeKYPjk8w_3syn5tokenNtB6_2InNtB6_5Token4peek(ptr noundef %i.ci, ptr noundef %i.cj)
          to label %bb.am unwind label %.thread145.i, !noalias !1255

bb.am:                                            ; preds = %bb.al
  br i1 %i.ck, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1255
  invoke void @_RNvXs31_NtCsgbWeKYPjk8w_3syn5tokenNtB6_2InNtNtB8_5parse5Parse5parse(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.k)
          to label %bb.aw unwind label %.thread145.i, !noalias !1255

bb.ao:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit.i, %bb.am
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.as unwind label %bb.ap, !noalias !1255

bb.ap:                                            ; preds = %bb.ao
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !1273, !noalias !1255, !noundef !5 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %.body82.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cp = load i64, ptr %i.cn, align 8, !noalias !1276, !noundef !5
  %i.cq = add i64 %i.cp, -1                       ; 2 uses
  store i64 %i.cq, ptr %i.cn, align 8, !noalias !1276
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.ar, label %.body82.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.cm) #21
          to label %.body82.i unwind label %bb.av, !noalias !1255

bb.as:                                            ; preds = %bb.ao
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !1290, !noalias !1255, !noundef !5 ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cv = load i64, ptr %i.ct, align 8, !noalias !1291, !noundef !5
  %i.cw = add i64 %i.cv, -1                       ; 2 uses
  store i64 %i.cw, ptr %i.ct, align 8, !noalias !1291
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.au, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit.i

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.cs) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit.i unwind label %bb.bw, !noalias !1255

bb.av:                                            ; preds = %bb.ar
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !1255
  unreachable

bb.aw:                                            ; preds = %bb.an
  %i.cz = load i64, ptr %i.g, align 8, !range !52, !noalias !1255, !noundef !5 ; 2 uses
  %.not74.i = icmp eq i64 %i.cz, -1
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.db = load i32, ptr %i.da, align 8, !noalias !1255 ; 2 uses
  br i1 %.not74.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.sroa.566.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.569.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.569.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.566.0..sroa_idx.i, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1255
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cz, ptr %i.dc, align 8, !alias.scope !1255
  %.sroa.468.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.db, ptr %.sroa.468.0..sroa_idx.i, align 8, !alias.scope !1255
  store i32 -1, ptr %0, align 8, !alias.scope !1255
  br label %bb.bj

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1255
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.629.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1255
  invoke void @_RNvMs5_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB7_4Path15parse_mod_style(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noundef nonnull align 8 %i.k)
          to label %bb.az unwind label %.thread145.i, !noalias !1255

bb.az:                                            ; preds = %bb.ay
  %i.dd = load i64, ptr %i.e, align 8, !range !52, !noalias !1255, !noundef !5 ; 2 uses
  %i.de = icmp eq i64 %i.dd, -1
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629.i, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false), !noalias !1255
  br i1 %i.de, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1255
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629.i, i64 24, i1 false)
  store i32 -1, ptr %0, align 8, !alias.scope !1255
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.629.i)
  br label %bb.bg

bb.bb:                                            ; preds = %bb.az
  %.sroa.572.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.535.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.572.0..sroa_idx.i, i64 16, i1 false), !noalias !1255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1255
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.434.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629.i, i64 24, i1 false), !noalias !1255
  store i64 %i.dd, ptr %i.f, align 8, !noalias !1255
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.629.i)
  invoke void @_RNvXNtNtCsgbWeKYPjk8w_3syn5parse11discouragedNtB4_11ParseBufferNtB2_11Speculative10advance_to(ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %i.l)
          to label %bb.bc unwind label %bb.bh, !noalias !1255

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !1255
  %i.dh = invoke fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.bf unwind label %bb.bd     ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d) #18
          to label %.thread.i unwind label %bb.be, !noalias !1255

bb.be:                                            ; preds = %bb.bd
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !1255
  unreachable

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dh, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !1255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1255
  %.sroa.745.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.745.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %i.bk, i64 12, i1 false)
  store i32 1, ptr %0, align 8, !alias.scope !1255
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.db, ptr %.sroa.442.0..sroa_idx.i, align 4, !alias.scope !1255
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %.sroa.543.0..sroa_idx.i, align 8, !alias.scope !1255
  %.sroa.644.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bn, ptr %.sroa.644.0..sroa_idx.i, align 8, !alias.scope !1255
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1255
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bb
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #18
          to label %.thread.i unwind label %bb.bi, !noalias !1255

bb.bi:                                            ; preds = %.thread.i, %.body82.i, %bb.bh
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !1255
  unreachable

bb.bj:                                            ; preds = %bb.cj, %bb.bg, %bb.ax
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.bn unwind label %bb.bk, !noalias !1255

bb.bk:                                            ; preds = %bb.bj
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !1305, !noalias !1255, !noundef !5 ; 3 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %.body82.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dq = load i64, ptr %i.do, align 8, !noalias !1308, !noundef !5
  %i.dr = add i64 %i.dq, -1                       ; 2 uses
  store i64 %i.dr, ptr %i.do, align 8, !noalias !1308
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.bm, label %.body82.i

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.dn) #21
          to label %.body82.i unwind label %bb.bq, !noalias !1255

bb.bn:                                            ; preds = %bb.bj
  %i.dt = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !1322, !noalias !1255, !noundef !5 ; 3 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit88.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.dw = load i64, ptr %i.du, align 8, !noalias !1323, !noundef !5
  %i.dx = add i64 %i.dw, -1                       ; 2 uses
  store i64 %i.dx, ptr %i.du, align 8, !noalias !1323
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %bb.bp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit88.i

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.dt) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit88.i unwind label %bb.bw, !noalias !1255

bb.bq:                                            ; preds = %bb.bm
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !1255
  unreachable

bb.br:                                            ; preds = %bb.ah
  %i.ea = load i64, ptr %i.j, align 8, !range !538, !noalias !1255, !noundef !5
  %i.eb = trunc nuw i64 %i.ea to i1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.6136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 25
  %.sroa.0133.0.copyload.i = load ptr, ptr %i.ec, align 8, !noalias !1255 ; 6 uses
  %.sroa.4134.0.copyload.i = load i64, ptr %.sroa.4134.0..sroa_idx.i, align 8, !noalias !1255 ; 6 uses
  %.sroa.5135.0.copyload.i = load i8, ptr %.sroa.5135.0..sroa_idx.i, align 8, !noalias !1255 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.57.sroa.9.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6136.0..sroa_idx.i, i64 7, i1 false), !noalias !1255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1255
  br i1 %i.eb, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %.sroa.6140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6140.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.57.sroa.9.i, i64 7, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0133.0.copyload.i, ptr %i.ed, align 8, !alias.scope !1255
  %.sroa.4138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4134.0.copyload.i, ptr %.sroa.4138.0..sroa_idx.i, align 8, !alias.scope !1255
  %.sroa.5139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.5135.0.copyload.i, ptr %.sroa.5139.0..sroa_idx.i, align 8, !alias.scope !1255
  store i32 -1, ptr %0, align 8, !alias.scope !1255
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.sroa.9.i)
  br label %bb.cj

bb.bt:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.57.sroa.9.i, i64 7, i1 false), !noalias !1255
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.sroa.9.i)
  %i.ee = load ptr, ptr %i.k, align 8, !noalias !1255, !noundef !5
  %i.ef = load ptr, ptr %i.bz, align 8, !noalias !1255, !noundef !5
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.eh = icmp eq i8 %.sroa.5135.0.copyload.i, 2
  %i.ei = icmp eq i64 %.sroa.4134.0.copyload.i, 0
  %or.cond.i = select i1 %i.eh, i1 true, i1 %i.ei
  br i1 %or.cond.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.bu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0133.0.copyload.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0133.0.copyload.i, i64 noundef %.sroa.4134.0.copyload.i, i64 noundef 1) #16, !noalias !1328
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit.i

bb.bv:                                            ; preds = %bb.bt
  invoke void @_RNvXNtNtCsgbWeKYPjk8w_3syn5parse11discouragedNtB4_11ParseBufferNtB2_11Speculative10advance_to(ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %i.l)
          to label %bb.ce unwind label %bb.ck, !noalias !1255

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  br label %bb.ao

.body82.i:                                        ; preds = %.thread.i, %bb.bw, %bb.bm, %bb.bl, %bb.bk, %bb.ar, %bb.aq, %bb.ap, %bb.ac
  %.pn76.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.ac ], [ %.pn143.i, %.thread.i ], [ %i.cl, %bb.ap ], [ %i.cl, %bb.ar ], [ %i.cl, %bb.aq ], [ %i.ej, %bb.bw ], [ %i.dm, %bb.bm ], [ %i.dm, %bb.bl ], [ %i.dm, %bb.bk ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l) #18
          to label %common.resume unwind label %bb.bi, !noalias !1255

bb.bw:                                            ; preds = %bb.bp, %bb.au
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body82.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit.i: ; preds = %bb.au, %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1255
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.ca unwind label %bb.bx, !noalias !1255

bb.bx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit.i
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !1342, !noalias !1255, !noundef !5 ; 3 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %common.resume, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.eo = load i64, ptr %i.em, align 8, !noalias !1345, !noundef !5
  %i.ep = add i64 %i.eo, -1                       ; 2 uses
  store i64 %i.ep, ptr %i.em, align 8, !noalias !1345
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.bz, label %common.resume

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.el) #21
          to label %common.resume unwind label %bb.cd, !noalias !1255

bb.ca:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !1359, !noalias !1255, !noundef !5 ; 3 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit90.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.eu = load i64, ptr %i.es, align 8, !noalias !1360, !noundef !5
  %i.ev = add i64 %i.eu, -1                       ; 2 uses
  store i64 %i.ev, ptr %i.es, align 8, !noalias !1360
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.cc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit90.i

bb.cc:                                            ; preds = %bb.cb
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.er) #21, !noalias !1255, !inline_history !935
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit90.i

bb.cd:                                            ; preds = %bb.bz
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !1255
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit90.i: ; preds = %bb.cc, %bb.cb, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1255
  br label %bb.aa

.body.i:                                          ; preds = %bb.ce
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.ce:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1255
  store ptr %.sroa.0133.0.copyload.i, ptr %i.h, align 8, !noalias !1255
  %.sroa.7100.0..sroa_idx101.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.4134.0.copyload.i, ptr %.sroa.7100.0..sroa_idx101.i, align 8, !noalias !1255
  %.sroa.9.0..sroa_idx103.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 %.sroa.5135.0.copyload.i, ptr %.sroa.9.0..sroa_idx103.i, align 8, !noalias !1255
  %.sroa.11.0..sroa_idx106.i = getelementptr inbounds nuw i8, ptr %i.h, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11.0..sroa_idx106.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11.i, i64 7, i1 false), !noalias !1255
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn4pathNtB2_4PathINtNtCsj6eKBz9Db1c_4core7convert4FromNtCs6et67aoV1xO_11proc_macro25IdentE4fromB4_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.cf unwind label %.body.i, !noalias !1255

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1255
  %i.ez = invoke fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 48)
          to label %bb.ci unwind label %bb.cg     ; 2 uses

bb.cg:                                            ; preds = %bb.cf
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i) #18
          to label %.thread.i unwind label %bb.ch, !noalias !1255

bb.ch:                                            ; preds = %bb.cg
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !1255
  unreachable

bb.ci:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ez, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !1255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1255
  %.sroa.716.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.716.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %i.bk, i64 12, i1 false)
  store i32 0, ptr %0, align 8, !alias.scope !1255
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ez, ptr %.sroa.514.0..sroa_idx.i, align 8, !alias.scope !1255
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bn, ptr %.sroa.615.0..sroa_idx.i, align 8, !alias.scope !1255
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  br label %bb.bj

bb.ck:                                            ; preds = %bb.bv
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = icmp eq i8 %.sroa.5135.0.copyload.i, 2
  %i.fe = icmp eq i64 %.sroa.4134.0.copyload.i, 0
  %or.cond157.i = select i1 %i.fd, i1 true, i1 %i.fe
  br i1 %or.cond157.i, label %.thread.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i92.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i92.i: ; preds = %bb.ck
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0133.0.copyload.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0133.0.copyload.i, i64 noundef %.sroa.4134.0.copyload.i, i64 noundef 1) #16, !noalias !1365
  br label %.thread.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit88.i: ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1255
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.co unwind label %bb.cl, !noalias !1255

bb.cl:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit88.i
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !1379, !noalias !1255, !noundef !5 ; 3 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %common.resume, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.fj = load i64, ptr %i.fh, align 8, !noalias !1382, !noundef !5
  %i.fk = add i64 %i.fj, -1                       ; 2 uses
  store i64 %i.fk, ptr %i.fh, align 8, !noalias !1382
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %bb.cn, label %common.resume

bb.cn:                                            ; preds = %bb.cm
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.fg) #21
          to label %common.resume unwind label %bb.cr, !noalias !1255

bb.co:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit88.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !1396, !noalias !1255, !noundef !5 ; 3 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit96.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.fp = load i64, ptr %i.fn, align 8, !noalias !1397, !noundef !5
  %i.fq = add i64 %i.fp, -1                       ; 2 uses
  store i64 %i.fq, ptr %i.fn, align 8, !noalias !1397
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %bb.cq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit96.i

bb.cq:                                            ; preds = %bb.cp
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.fm) #21, !noalias !1255, !inline_history !935
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit96.i

bb.cr:                                            ; preds = %bb.cn
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !1255
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit96.i: ; preds = %bb.cq, %bb.cp, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1255
  br label %_RNvMs_NtNtCsgbWeKYPjk8w_3syn11restriction7parsingNtB6_10Visibility9parse_pub.exit

.thread.i:                                        ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i92.i, %bb.ck, %bb.cg, %.body.i, %bb.bh, %bb.bd, %.thread145.i
  %.pn143.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread145.i ], [ %i.fa, %bb.cg ], [ %i.dk, %bb.bh ], [ %i.ey, %.body.i ], [ %i.di, %bb.bd ], [ %i.fc, %bb.ck ], [ %i.fc, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i92.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #18
          to label %.body82.i unwind label %bb.bi, !noalias !1255

_RNvMs_NtNtCsgbWeKYPjk8w_3syn11restriction7parsingNtB6_10Visibility9parse_pub.exit: ; preds = %bb.y, %bb.aa, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.597.i)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.w, %_RNvMs_NtNtCsgbWeKYPjk8w_3syn11restriction7parsingNtB6_10Visibility9parse_pub.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit14
  ret void

bb.ct:                                            ; preds = %bb.o
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5group5GroupEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.p) #18
          to label %.body unwind label %bb.dj

bb.cu:                                            ; preds = %bb.o
  store i32 4, ptr %0, align 8
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %bb.cy unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %i.fw = load ptr, ptr %i.fv, align 8, !alias.scope !1411, !noundef !5 ; 3 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %.body, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.fy = load i64, ptr %i.fw, align 8, !noalias !1416, !noundef !5
  %i.fz = add i64 %i.fy, -1                       ; 2 uses
  store i64 %i.fz, ptr %i.fw, align 8, !noalias !1416
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %bb.cx, label %.body

bb.cx:                                            ; preds = %bb.cw
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.fv) #21
          to label %.body unwind label %bb.db

bb.cy:                                            ; preds = %bb.cu
  %i.gb = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  %i.gc = load ptr, ptr %i.gb, align 8, !alias.scope !1430, !noundef !5 ; 3 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5group5GroupEBF_.exit12, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ge = load i64, ptr %i.gc, align 8, !noalias !1431, !noundef !5
  %i.gf = add i64 %i.ge, -1                       ; 2 uses
  store i64 %i.gf, ptr %i.gc, align 8, !noalias !1431
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %bb.da, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5group5GroupEBF_.exit12

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.gb) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5group5GroupEBF_.exit12 unwind label %bb.d

bb.db:                                            ; preds = %bb.cx
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5group5GroupEBF_.exit12: ; preds = %bb.cz, %bb.cy, %bb.da, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.df unwind label %bb.dc

bb.dc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5group5GroupEBF_.exit12
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  %i.gk = load ptr, ptr %i.gj, align 8, !alias.scope !1445, !noundef !5 ; 3 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %common.resume, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.gm = load i64, ptr %i.gk, align 8, !noalias !1448, !noundef !5
  %i.gn = add i64 %i.gm, -1                       ; 2 uses
  store i64 %i.gn, ptr %i.gk, align 8, !noalias !1448
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.de, label %common.resume

bb.de:                                            ; preds = %bb.dd
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.gj) #21
          to label %common.resume unwind label %bb.di

bb.df:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5group5GroupEBF_.exit12
  %i.gp = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !1462, !noundef !5 ; 3 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit14, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.gs = load i64, ptr %i.gq, align 8, !noalias !1463, !noundef !5
  %i.gt = add i64 %i.gs, -1                       ; 2 uses
  store i64 %i.gt, ptr %i.gq, align 8, !noalias !1463
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %bb.dh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit14

bb.dh:                                            ; preds = %bb.dg
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.gp) #21, !inline_history !935
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit14

bb.di:                                            ; preds = %bb.de
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit14: ; preds = %bb.df, %bb.dg, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.cs

bb.dj:                                            ; preds = %bb.ct, %.body
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCsgbWeKYPjk8w_3syn11restriction8printingNtB4_10VisibilityNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !1468, !noundef !5 ; 3 uses
  %i.b = icmp ne i32 %i.a, 3
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i32 %i.a, -2
  %i.d = icmp samesign ugt i32 %i.a, 1
  %narrow = select i1 %i.d, i32 %i.c, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_RNvXs48_NtCsgbWeKYPjk8w_3syn5tokenNtB6_3PubNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs48_NtCsgbWeKYPjk8w_3syn5tokenNtB6_3PubNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvXs_NtNtB9_11restriction8printingNtB10_13VisRestrictedNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1l_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_11restriction13VisRestrictedNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i32, ptr %i.b, align 8, !noundef !5
  %i.c = load i32, ptr %1, align 8, !range !402, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val1 = load i32, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.e, align 8            ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.f = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #16 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn4path4PathE13new_uninit_inBK_.exit.i, !prof !1112

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #22
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn4path4PathE13new_uninit_inBK_.exit.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1469
  invoke void @_RNvXsR_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path4PathNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2)
          to label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn4path4PathENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit unwind label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn4path4PathE13new_uninit_inBK_.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 48, i64 noundef 8) #16
  resume { ptr, i32 } %i.h

_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn4path4PathENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn4path4PathE13new_uninit_inBK_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = trunc nuw i32 %i.c to i1
  %.sroa.5.0 = select i1 %i.j, i32 %.val1, i32 undef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !1469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1469
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull align 4 dereferenceable(12) %i.i, i64 12, i1 false)
  store i32 %i.c, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5.0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.n, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1m_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_11restriction10VisibilityNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = load i32, ptr %1, align 8, !range !1468, !noundef !5 ; 5 uses
  %i.c = icmp ne i32 %i.b, 3
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i32 %i.b, -2
  %i.e = icmp samesign ugt i32 %i.b, 1
  %narrow = select i1 %i.e, i32 %i.d, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val = load i32, ptr %i.f, align 4, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.val, ptr %i.g, align 4
  store i32 2, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load i32, ptr %i.h, align 8, !alias.scope !1472, !noalias !1475, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val1.i = load i32, ptr %i.i, align 4, !alias.scope !1472, !noalias !1475
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i = load ptr, ptr %i.j, align 8, !alias.scope !1472, !noalias !1475 ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !1477
  %i.k = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !1477 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn4path4PathE13new_uninit_inBK_.exit.i.i, !prof !1112

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #22, !noalias !1477
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn4path4PathE13new_uninit_inBK_.exit.i.i: ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1478
  invoke void @_RNvXsR_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path4PathNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2.i)
          to label %_RNvXs1l_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_11restriction13VisRestrictedNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit unwind label %bb.f, !noalias !1477

bb.f:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn4path4PathE13new_uninit_inBK_.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef 48, i64 noundef 8) #16, !noalias !1477
  resume { ptr, i32 } %i.m

_RNvXs1l_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_11restriction13VisRestrictedNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn4path4PathE13new_uninit_inBK_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.o = trunc nuw i32 %i.b to i1
  %.sroa.5.0.i = select i1 %i.o, i32 %.val1.i, i32 undef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1478
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.n, i64 12, i1 false)
  store i32 %i.b, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val.i, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  store i32 4, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1l_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_11restriction13VisRestrictedNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsgbWeKYPjk8w_3syn11restriction8printingNtB6_13VisRestrictedNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs48_NtCsgbWeKYPjk8w_3syn5tokenNtB6_3PubNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvXs_NtNtB9_11restriction8printingNtB10_13VisRestrictedNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgbWeKYPjk8w_3syn5parseINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtB7_2ty4TypeENtB5_5Parse5parseB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 4 uses
  %i.b = alloca [248 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXNtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB4_4TypeNtNtB6_5parse5Parse5parse(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.b, ptr noundef nonnull align 8 %1)
  %i.c = load i64, ptr %i.b, align 8, !range !1022, !noundef !5
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.a, ptr noundef nonnull align 8 dereferenceable(248) %i.b, i64 248, i1 false)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !1481
  %i.f = call noundef align 8 dereferenceable_or_null(248) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 248, i64 noundef 8) #16, !noalias !1481 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeE3newBI_.exit, !prof !1112

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 248) #22
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.a) #18
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.h

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeE3newBI_.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.f, ptr noundef nonnull align 8 dereferenceable(248) %i.b, i64 248, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.j, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeE3newBI_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgbWeKYPjk8w_3syn5parseINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtB7_4expr4ExprENtB5_5Parse5parseB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 4 uses
  %i.b = alloca [168 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXNtNtCsgbWeKYPjk8w_3syn4expr7parsingNtB4_4ExprNtNtB6_5parse5Parse5parse(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.b, ptr noundef nonnull align 8 %1)
  %i.c = load i64, ptr %i.b, align 8, !range !973, !noundef !5
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(168) %i.b, i64 168, i1 false)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !1484
  %i.f = call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef 8) #16, !noalias !1484 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprE3newBI_.exit, !prof !1112

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #22
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.a) #18
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.h

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprE3newBI_.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.f, ptr noundef nonnull align 8 dereferenceable(168) %i.b, i64 168, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.j, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprE3newBI_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 5 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMs1_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxShE17clone_from_ref_inCsgbWeKYPjk8w_3syn.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !1487
  %i.e = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !1487 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMs1_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxShE17clone_from_ref_inCsgbWeKYPjk8w_3syn.exit

bb.b:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %i.c) #22, !noalias !1492
  unreachable

_RNvMs1_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxShE17clone_from_ref_inCsgbWeKYPjk8w_3syn.exit: ; preds = %bb.a, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  %.sroa.01.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.e, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i.i, ptr nonnull readonly align 1 %i.a, i64 range(i64 0, -9223372036854775808) %i.c, i1 false)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.01.0.i.i, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.c, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsk_NtCs6et67aoV1xO_11proc_macro28fallbackNtB5_5IdentINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqeE2eqCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !107, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = icmp eq i64 %i.e, %2
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 2)
  br i1 %i.g, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.h, ptr nonnull %1, i64 %2)
  %i.i = icmp eq i32 %bcmp, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.c, %bb.b, %bb.i, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %i.u, %bb.i ], [ false, %bb.c ], [ false, %bb.b ], [ %i.i, %bb.d ], [ false, %bb.g ]
  ret i1 %.sroa.0.0.shrunk

bb.f:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %i.m = icmp ult i64 %2, 3
end_hunk_2
