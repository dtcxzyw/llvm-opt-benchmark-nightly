Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.14?download=true
inline.NumInlined: 606
inline.NumDeleted: 171
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs4_NtCsgbWeKYPjk8w_3syn6bufferNtB5_6CursorNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd11partial_cmp:bb.a
  %i.h = icmp eq i32 %i.g, 5
  br i1 %i.h, label %_RNvNtCsgbWeKYPjk8w_3syn6buffer11same_buffer.exit, label %bb.c, !prof !1005

bb.c:                                             ; preds = %_RNvNtCsgbWeKYPjk8w_3syn6buffer15start_of_buffer.exit.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21
  unreachable

_RNvNtCsgbWeKYPjk8w_3syn6buffer11same_buffer.exit: ; preds = %_RNvNtCsgbWeKYPjk8w_3syn6buffer15start_of_buffer.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !5
  %i.k = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  %i.n = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.m
  %i.o = icmp eq ptr %i.k, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvNtCsgbWeKYPjk8w_3syn6buffer11same_buffer.exit
  %i.p = load ptr, ptr %0, align 8, !noundef !5   ; 2 uses
  %i.q = load ptr, ptr %1, align 8, !noundef !5   ; 2 uses
  %i.r = icmp ult ptr %i.p, %i.q
  %i.s = icmp ne ptr %i.p, %i.q
  %. = zext i1 %i.s to i8
  %.sroa.01.0 = select i1 %i.r, i8 -1, i8 %.
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCsgbWeKYPjk8w_3syn6buffer11same_buffer.exit, %bb.d
  %.sroa.0.0 = phi i8 [ %.sroa.01.0, %bb.d ], [ -2, %_RNvNtCsgbWeKYPjk8w_3syn6buffer11same_buffer.exit ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCsgbWeKYPjk8w_3syn4expr7parsingNtB7_6MemberNtNtB9_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !noundef !5
  %i.f = tail call noundef zeroext i1 @_RNvXs_NtNtCsgbWeKYPjk8w_3syn5ident7parsingNtCs6et67aoV1xO_11proc_macro25IdentNtNtB8_5token5Token4peek(ptr noundef %i.c, ptr noundef %i.e)
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !noundef !5
  %i.h = load ptr, ptr %i.d, align 8, !noundef !5
  %i.i = tail call noundef zeroext i1 @_RNvXsj_NtNtCsgbWeKYPjk8w_3syn3lit7parsingNtB7_6LitIntNtNtB9_5token5Token4peek(ptr noundef %i.g, ptr noundef %i.h)
  br i1 %i.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXNtNtCsgbWeKYPjk8w_3syn5ident7parsingNtCs6et67aoV1xO_11proc_macro25IdentNtNtB6_5parse5Parse5parse(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %1)
  %i.j = load i64, ptr %i.b, align 8, !range !461, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store i64 %i.j, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8, !noundef !5
  %i.o = load ptr, ptr %1, align 8, !noundef !5
  %i.p = load ptr, ptr %i.d, align 8, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsgbWeKYPjk8w_3syn5error6new_atReEB4_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, i32 noundef %i.n, ptr noundef %i.o, ptr noundef %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 30)
  store i64 1, ptr %0, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs5_NtNtCsgbWeKYPjk8w_3syn4expr7parsingNtB7_5IndexNtNtB9_5parse5Parse5parse(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1)
  %i.r = load i64, ptr %i.a, align 8, !range !66, !noundef !5
  %.not = icmp eq i64 %i.r, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load <2 x i32>, ptr %i.t, align 8
  store <2 x i32> %i.v, ptr %i.u, align 8
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 -1, ptr %.sroa.51.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink2 = phi i64 [ 0, %bb.g ], [ 1, %bb.f ]
  store i64 %.sink2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCsgbWeKYPjk8w_3syn4expr8printingNtB7_7ExprLitNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXsb_NtCsgbWeKYPjk8w_3syn3litNtB5_3LitNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtCsgbWeKYPjk8w_3syn4exprNtB5_6MemberNtNtCs6p3UlaoheVH_5quote14ident_fragment13IdentFragment3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !96, !noundef !5
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsE_Cs6et67aoV1xO_11proc_macro2NtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCsgbWeKYPjk8w_3syn4expr7parsingNtB7_5IndexNtNtB9_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs4_NtNtCsgbWeKYPjk8w_3syn3lit7parsingNtB7_6LitIntNtNtB9_5parse5Parse5parse(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %1)
  %i.d = load i64, ptr %i.c, align 8, !range !66, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.d, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 13 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.533.0.copyload = load i64, ptr %.sroa.533.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.d, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.533.0.copyload, ptr %.sroa.536.0..sroa_idx, align 8
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load i64, ptr %i.f, align 8, !range !66, !noundef !5
  %.not56 = icmp eq i64 %i.j, -1
  br i1 %.not56, label %bb.s, label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 2 uses
  switch i64 %i.n, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.o = load i8, ptr %i.l, align 1, !alias.scope !1071, !noundef !5 ; 2 uses
  switch i8 %i.o, label %bb.g [
    i8 43, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.e
  %.pr.i = load i8, ptr %i.l, align 1, !alias.scope !1071
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split.i, %bb.f
  %i.p = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.o, %bb.f ]
  %cond.i = icmp eq i8 %i.p, 43                   ; 2 uses
  %i.q = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.n, %i.q          ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.0.0.idx.i ; 9 uses
  %i.r = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.r, label %.preheader.i, label %.preheader60.i.preheader

.preheader.i:                                     ; preds = %bb.g
  %.not5668.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5668.i, label %bb.x, label %.lr.ph.i

.preheader60.i:                                   ; preds = %bb.j
  %.not55.i = icmp eq i64 %i.t, 0
  br i1 %.not55.i, label %bb.x, label %.preheader60.i.preheader

.preheader60.i.preheader:                         ; preds = %bb.g, %.preheader60.i
  %.sroa.0.1.i100 = phi ptr [ %i.s, %.preheader60.i ], [ %.sroa.0.0.i, %bb.g ] ; 2 uses
  %.sroa.15.1.i99 = phi i64 [ %i.t, %.preheader60.i ], [ %.sroa.15.0.i, %bb.g ]
  %.sroa.045.0.i98 = phi i32 [ %i.ad, %.preheader60.i ], [ 0, %bb.g ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i100, i64 1
  %i.t = add nsw i64 %.sroa.15.1.i99, -1          ; 2 uses
  %i.u = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i98, i32 10) ; 2 uses
  %i.v = extractvalue { i32, i1 } %i.u, 0         ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.u, 1
  %i.x = load i8, ptr %.sroa.0.1.i100, align 1, !alias.scope !1071, !noundef !5 ; 2 uses
  br i1 %i.w, label %bb.i, label %bb.h, !prof !963

bb.h:                                             ; preds = %.preheader60.i.preheader
  %i.y = zext i8 %i.x to i32
  %i.z = add nsw i32 %i.y, -48                    ; 2 uses
  %i.aa = icmp ult i32 %i.z, 10
  br i1 %i.aa, label %bb.j, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.i:                                             ; preds = %.preheader60.i.preheader
  %i.ab = add i8 %i.x, -48
  %i.ac = icmp ult i8 %i.ab, 10
  br i1 %i.ac, label %2, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.ad = add i32 %i.z, %i.v                      ; 3 uses
  %i.ae = icmp ult i32 %i.ad, %i.v
  br i1 %i.ae, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %.preheader60.i, !prof !963

2:                                                ; preds = %bb.i
  br label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.af = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !1071, !noundef !5
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -48                  ; 3 uses
  %i.ai = icmp ult i32 %i.ah, 10
  br i1 %i.ai, label %bb.k, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.k:                                             ; preds = %.lr.ph.i
  %.not56.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not56.i, label %bb.x, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !1071, !noundef !5
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.l, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.l:                                             ; preds = %.lr.ph.i.1
  %i.ao = mul nuw nsw i32 %i.ah, 10
  %i.ap = add nuw nsw i32 %i.am, %i.ao            ; 2 uses
  %.not56.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not56.i.1, label %bb.x, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !1071, !noundef !5
  %i.as = zext i8 %i.ar to i32
  %i.at = add nsw i32 %i.as, -48                  ; 2 uses
  %i.au = icmp ult i32 %i.at, 10
  br i1 %i.au, label %bb.m, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.m:                                             ; preds = %.lr.ph.i.2
  %i.av = mul nuw nsw i32 %i.ap, 10
  %i.aw = add nuw nsw i32 %i.at, %i.av            ; 2 uses
  %.not56.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not56.i.2, label %bb.x, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !1071, !noundef !5
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nsw i32 %i.az, -48                  ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 10
  br i1 %i.bb, label %bb.n, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.n:                                             ; preds = %.lr.ph.i.3
  %i.bc = mul nuw nsw i32 %i.aw, 10
  %i.bd = add nuw nsw i32 %i.ba, %i.bc            ; 2 uses
  %.not56.i.3 = icmp eq i64 %.sroa.15.0.i, 4
  br i1 %.not56.i.3, label %bb.x, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !1071, !noundef !5
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -48                  ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 10
  br i1 %i.bi, label %bb.o, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.o:                                             ; preds = %.lr.ph.i.4
  %i.bj = mul i32 %i.bd, 10
  %i.bk = add i32 %i.bh, %i.bj                    ; 2 uses
  %.not56.i.4 = icmp eq i64 %.sroa.15.0.i, 5
  br i1 %.not56.i.4, label %bb.x, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 5
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !1071, !noundef !5
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nsw i32 %i.bn, -48                  ; 2 uses
  %i.bp = icmp ult i32 %i.bo, 10
  br i1 %i.bp, label %bb.p, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.p:                                             ; preds = %.lr.ph.i.5
  %i.bq = mul i32 %i.bk, 10
  %i.br = add i32 %i.bo, %i.bq                    ; 2 uses
  %.not56.i.5 = icmp eq i64 %.sroa.15.0.i, 6
  br i1 %.not56.i.5, label %bb.x, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 6
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !1071, !noundef !5
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nsw i32 %i.bu, -48                  ; 2 uses
  %i.bw = icmp ult i32 %i.bv, 10
  br i1 %i.bw, label %bb.q, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.q:                                             ; preds = %.lr.ph.i.6
  %i.bx = mul i32 %i.br, 10
  %i.by = add i32 %i.bv, %i.bx                    ; 2 uses
  %.not56.i.6 = icmp eq i64 %.sroa.15.0.i, 7
  br i1 %.not56.i.6, label %bb.x, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 7
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !1071, !noundef !5
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -48                  ; 2 uses
  %i.cd = icmp ult i32 %i.cc, 10
  br i1 %i.cd, label %bb.r, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.r:                                             ; preds = %.lr.ph.i.7
  %i.ce = mul i32 %i.by, 10
  %i.cf = add i32 %i.cc, %i.ce
  br label %bb.x

bb.s:                                             ; preds = %bb.d
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !range !969, !noundef !5
  br label %bb.t

bb.t:                                             ; preds = %bb.d, %bb.s
  %.sroa.048.0 = phi i32 [ %i.ch, %bb.s ], [ 0, %bb.d ]
  invoke void @_RINvMNtCsgbWeKYPjk8w_3syn5errorNtB3_5Error3newReEB5_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %.sroa.048.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 27)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.ac, %bb.t
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn3lit6LitIntEBF_(ptr nonnull %i.f) #18
          to label %bb.af unwind label %bb.ae

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %bb.v
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn3lit6LitIntEBF_(ptr nonnull %i.f)
  br label %bb.aa

_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.j, %bb.h, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %2, %bb.e, %bb.f, %bb.f, %bb.i
  %.sroa.8.0.insert.insert.i.ph = phi i8 [ 1, %bb.f ], [ 1, %.lr.ph.i ], [ 1, %bb.i ], [ 2, %2 ], [ 1, %bb.f ], [ 0, %bb.e ], [ 1, %.lr.ph.i.7 ], [ 1, %.lr.ph.i.6 ], [ 1, %.lr.ph.i.5 ], [ 1, %.lr.ph.i.4 ], [ 1, %.lr.ph.i.3 ], [ 1, %.lr.ph.i.2 ], [ 1, %.lr.ph.i.1 ], [ 1, %bb.h ], [ 2, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cj = load i64, ptr %i.f, align 8, !range !66, !noundef !5
  %.not58 = icmp eq i64 %i.cj, -1
  br i1 %.not58, label %bb.ab, label %bb.ac

bb.x:                                             ; preds = %.preheader60.i, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %.preheader.i
  %.sroa.655.0.extract.trunc76 = phi i32 [ 0, %.preheader.i ], [ %i.cf, %bb.r ], [ %i.ah, %bb.k ], [ %i.ap, %bb.l ], [ %i.aw, %bb.m ], [ %i.bd, %bb.n ], [ %i.bk, %bb.o ], [ %i.br, %bb.p ], [ %i.by, %bb.q ], [ %i.ad, %.preheader60.i ]
  %i.ck = load i64, ptr %i.f, align 8, !range !66, !noundef !5
  %.not57 = icmp eq i64 %i.ck, -1
  br i1 %.not57, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !range !969, !noundef !5
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.sroa.044.0 = phi i32 [ %i.cm, %bb.y ], [ 0, %bb.x ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.655.0.extract.trunc76, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.044.0, ptr %i.co, align 4
  store i64 -1, ptr %0, align 8
  br label %bb.w

bb.aa:                                            ; preds = %bb.b, %bb.ad, %bb.w
  ret void

bb.ab:                                            ; preds = %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !range !969, !noundef !5
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, %bb.ab
  %.sroa.037.0 = phi i32 [ %i.cq, %bb.ab ], [ 0, %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread ]
  invoke void @_RINvMNtCsgbWeKYPjk8w_3syn5errorNtB3_5Error3newNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorEB5_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %.sroa.037.0, i8 noundef %.sroa.8.0.insert.insert.i.ph)
          to label %bb.ad unwind label %bb.u

bb.ad:                                            ; preds = %bb.ac
  %.sroa.014.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.616.0.copyload = load i32, ptr %.sroa.616.0..sroa_idx, align 8
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.547.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.819.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.014.0.copyload, ptr %0, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.616.0.copyload, ptr %.sroa.446.0..sroa_idx, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn3lit6LitIntEBF_(ptr nonnull %i.f)
  br label %bb.aa

bb.ae:                                            ; preds = %bb.u
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.af:                                            ; preds = %bb.u
  resume { ptr, i32 } %i.ci
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCsgbWeKYPjk8w_3syn4expr8printingNtB7_9ExprMacroNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXs_NtNtCsgbWeKYPjk8w_3syn3mac8printingNtB6_5MacroNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsgbWeKYPjk8w_3syn4expr8printingNtB7_14ExprMethodCallNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing22print_expr_method_call(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvXs7_NtCsgbWeKYPjk8w_3syn4exprNtB5_5IndexINtNtCsj6eKBz9Db1c_4core7convert4FromjE4from(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %0, 4294967295
  br i1 %i.a, label %bb.c, label %bb.b, !prof !1005

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = trunc nuw i64 %0 to i32
  %i.c = tail call noundef i32 @_RNvMsi_Cs6et67aoV1xO_11proc_macro2NtB5_4Span9call_site()
  %i.d = insertvalue { i32, i32 } poison, i32 %i.b, 0
  %i.e = insertvalue { i32, i32 } %i.d, i32 %i.c, 1
  ret { i32, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCsgbWeKYPjk8w_3syn4expr8printingNtB7_9ExprParenNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvXs7_NtNtB9_4expr8printingNtB11_9ExprParenNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtNtCsgbWeKYPjk8w_3syn4expr8printingNtB7_8ExprPathNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path8printing11print_qpath(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, i8 noundef 0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtNtCsgbWeKYPjk8w_3syn4expr8printingNtB7_13ExprReferenceNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4expr8printing20print_expr_reference(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXsA_NtCsgbWeKYPjk8w_3syn4exprNtB5_9ExprYieldNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1) unnamed_addr #4 {
bb.a:
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsJ_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_3mac5MacroNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXsK_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_3mac14MacroDelimiterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.6 = alloca [12 x i8], align 4            ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXsR_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path4PathNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val = load i32, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  %i.f = load i32, ptr %i.e, align 8, !range !508, !alias.scope !1077, !noalias !1074, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false), !alias.scope !1079
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  %i.i = load i64, ptr %i.h, align 8, !range !66, !alias.scope !1080, !noalias !1083, !noundef !5
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.b, label %bb.c

bb.a:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f, %bb.a
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.a ], [ %i.v, %bb.f ], [ %i.v, %bb.e ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #18
          to label %bb.j unwind label %bb.i

bb.b:                                             ; preds = %_RNvXsK_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_3mac14MacroDelimiterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1080, !noalias !1083, !nonnull !5, !noundef !5 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !1085, !noundef !5 ; 2 uses
  %i.o = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add i64 %i.n, 1                          ; 2 uses
  store i64 %i.p, ptr %i.m, align 8, !noalias !1085
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.h, label %_RNvXsz_NtCs6et67aoV1xO_11proc_macro23impNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, !prof !963

bb.c:                                             ; preds = %_RNvXsK_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_3mac14MacroDelimiterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1089
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !alias.scope !1091, !noalias !1092, !noundef !5
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %.noexc, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = invoke noundef i32 @_RNvXsa_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.r)
          to label %.noexc unwind label %bb.a

.noexc:                                           ; preds = %bb.d, %bb.c
  %i.u = phi i32 [ 0, %bb.c ], [ %i.t, %bb.d ]    ; 3 uses
  store i32 %i.u, ptr %i.b, align 4, !noalias !1089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1089
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i unwind label %bb.e, !noalias !1092

bb.e:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = icmp eq i32 %i.u, 0
  br i1 %i.w, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs0_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.body unwind label %bb.g, !noalias !1092

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !1092
  unreachable

_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i: ; preds = %.noexc
  %.sroa.04.0.copyload5 = load i64, ptr %i.a, align 8, !noalias !1080
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0.copyload7 = load ptr, ptr %.sroa.5.0..sroa_idx6, align 8, !noalias !1080
  %.sroa.68.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.68.0.copyload10 = load i64, ptr %.sroa.68.0..sroa_idx9, align 8, !noalias !1080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1089
  br label %_RNvXsz_NtCs6et67aoV1xO_11proc_macro23impNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNvXsz_NtCs6et67aoV1xO_11proc_macro23impNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %bb.b
  %.sroa.611.0 = phi i32 [ %i.u, %_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ], [ undef, %bb.b ]
  %.sroa.68.0 = phi i64 [ %.sroa.68.0.copyload10, %_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ], [ undef, %bb.b ]
  %.sroa.5.0 = phi ptr [ %.sroa.5.0.copyload7, %_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ], [ %i.m, %bb.b ]
  %.sroa.04.0 = phi i64 [ %.sroa.04.0.copyload5, %_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ], [ -1, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %.val, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.f, ptr %i.z, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6, i64 12, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.04.0, ptr %i.aa, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_0
